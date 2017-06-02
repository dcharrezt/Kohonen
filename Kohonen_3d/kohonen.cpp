#include "kohonen.h"

#include <QDebug>

Kohonen::Kohonen(II neurons_per_side, II n_features, inputs training_set, II n_iterations)
{
    this->neurons_per_side = neurons_per_side;
    this->n_features = n_features;
    this->training_set = training_set;

    this->n_iterations = n_iterations;
    this->radius = neurons_per_side;
    this->current_iteration = 0;
    this->lambda = n_iterations / neurons_per_side;
    this->alpha = 0.5;

    qDebug()  << "Size: " << this->training_set.size();
}

void Kohonen::generate_map()
{
    for(unsigned int i = 0; i<neurons_per_side; i++)
    {
        vector<vector<vector<FF>>> tmp_i;
        for(unsigned int j = 0; j<neurons_per_side; j++)
        {
            vector<vector<FF>> tmp_j;
            for(unsigned int k = 0; k<neurons_per_side; k++)
            {
                vector<FF> features_tmp;
                for(unsigned int m = 0; m<n_features; m++)
                {
                    features_tmp.push_back( (double) rand() / (RAND_MAX) );
                }
                tmp_j.push_back(features_tmp);
            }
            tmp_i.push_back(tmp_j);
        }
        map.push_back(tmp_i);
    }

    qDebug()  << "Map0: " << map.size();
    qDebug()  << "Map1: " << map[0].size();
    qDebug()  << "Map2: " << map[0][0].size();
    qDebug()  << "Map3: " << map[0][0][0].size();
    qDebug()  << "Map4: " << map[0][0][0][0];
}

FF Kohonen::euclidean_distance(neuron n, neuron m)
{
    FF distance = 0.;

    for(unsigned int i = 0; i<n.size(); ++i){
        distance += pow((n[i] - m[i]), 2);
    }

    return sqrt(distance);
}

void Kohonen::get_BMU()
{
    FF tmp;
    II coor[3];

    for(auto m : training_set)
    {
        current_BMU_distance = 9999999;
        tmp = 0.;
        coor[0] = 0;
        coor[1] = 0;
        coor[2] = 0;

        for(unsigned int i = 0; i<neurons_per_side; i++)
        {
            for(unsigned int j = 0; j<neurons_per_side; j++)
            {
                for(unsigned int k = 0; k<neurons_per_side; k++)
                {
                    tmp = euclidean_distance(m, map[i][j][k]);
                    if( tmp < current_BMU_distance)
                    {
                        current_BMU_distance = tmp;
                        coor[0] = i;
                        coor[1] = j;
                        coor[2] = k;
                    }
                }
            }
        }
//        modify_weights(coor, current_BMU_distance);
    }
}

FF Kohonen::get_radius()
{
    return radius * exp(-current_iteration/lambda);
}

FF Kohonen::get_learning_rate()
{
    return alpha * exp(-current_iteration/lambda);
}

FF Kohonen::get_theta()
{
    return exp( -(pow( current_BMU_distance,2)) / 2*pow(current_radius,2) );
}

void Kohonen::modify_weights(II coor[3])
{
    auto r = get_radius();
    auto l = get_learning_rate();
    auto o = get_theta();



}
