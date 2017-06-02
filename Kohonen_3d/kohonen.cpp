#include "kohonen.h"

#include <QDebug>

Kohonen::Kohonen(II neurons_per_side, II n_features, inputs training_set)
{
    this->neurons_per_side = neurons_per_side;
    this->n_features = n_features;
    this->training_set = training_set;

    this->current_iteration = 0;
    this->lambda = 100;
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
    FF min;
    FF tmp;
    II coor[3];

    for(auto m : training_set)
    {
        min = 9999999;
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
                    if( tmp < min)
                    {
                        min = tmp;
                        coor[0] = i;
                        coor[1] = j;
                        coor[2] = k;
                    }
                }
            }
        }
        modify_weights(coor);
    }
}

void Kohonen::modify_weights(II coor[3])
{

}
