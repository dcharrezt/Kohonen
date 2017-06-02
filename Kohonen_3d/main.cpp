#include "mainwindow.h"
#include <QApplication>

#include "kohonen.h"

#include "CImg.h"

#include<iostream>
#include<fstream>
#include<string>

typedef int II;
typedef float FF;

using namespace cimg_library;
using namespace std;

vector<string> read_file(string pathFile);
vector<FF> vectorize(string n);
vector<vector<float>> training_Set(vector<string> &names);


int main(int argc, char *argv[])
{
    srand(time(NULL));

    QApplication a(argc, argv);
    MainWindow w;
    w.show();

    auto names = read_file("jaffe/a_names.dat");
    auto inputs = training_Set(names);

    cout << "Size: " << inputs.size() << endl;

    Kohonen som(8,5,inputs,1000);
    som.generate_map();



//    for(auto i: inputs){
//        for(auto j=0; j<i.size(); j++){
//            if(j<i.size()-1)
//                cout << i[j] << ' ';
//            else
//                cout << i[j];
//        }
//        cout << endl;
//    }


    return a.exec();
}


vector<string> read_file(string pathFile){
    ifstream file;
    file.open( pathFile );
    vector< string > names;
    string n;
    while(getline(file,n)) {
        names.push_back(n);
    }
    while(file>>n)
    file.close();
    return names;
}

vector<FF> vectorize(string n)
{
    std::vector<FF> v;

    CImg<unsigned char> image2(("jaffe/"+n).c_str());
    auto g = image2.haar(false,4);
    auto h = image2.crop(0,0,15,15);

    v.push_back(image2.max());
    v.push_back(image2.min());
    v.push_back(image2.mean());
    v.push_back(sqrt(image2.variance()));
    v.push_back(image2.variance());

    return v;
}

vector<vector<float>> training_Set(vector<string> &names)
{
    std::vector<std::vector<float>> ts;

    for(unsigned int i = 0; i < names.size(); i++) {
        ts.push_back(vectorize(names[i]));
    }
    return ts;
}
