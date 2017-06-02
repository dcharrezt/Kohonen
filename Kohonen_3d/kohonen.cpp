#include "kohonen.h"

Kohonen::Kohonen(II neurons_per_side, II n_features)
{
    this->neurons_per_side = neurons_per_side;
    this->n_features = n_features;
}

void Kohonen::generate_map()
{
    for(size_t i = 0; i<neurons_per_side; i++)
    {
        for(size_t j = 0; j<neurons_per_side; j++)
        {
            for(size_t k = 0; k<neurons_per_side; k++)
            {
                vector<FF> features_tmp;
                for(size_t m = 0; m<n_features; m++)
                {
                    features_tmp.push_back( (double) rand() / (RAND_MAX) );
                }
            }
        }
    }
}
