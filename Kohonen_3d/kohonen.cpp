#include "kohonen.h"

#include <QDebug>

Kohonen::Kohonen(II neurons_per_side, II n_features, inputs training_set)
{
    this->neurons_per_side = neurons_per_side;
    this->n_features = n_features;
    this->training_set = training_set;

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
