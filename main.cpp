#include<iostream>
#include<vector>
using namespace std;


int block_size = 16;

int checkVectorization(int startNode, int frameSize) {
    int node;
    int maxDeg = 0;
    int loopCondition = 16;
    int deg[16];
    int zeta[16];
    int _neighbor[16][16];
    double _eadgWeight[16][16];
    for (int i=0; i<loopCondition; i++){
        deg[i] = i;
        zeta[i] = i;
        for (int j = 0; j < loopCondition; ++j) {
            if(i==j){
                _neighbor[i][j] = -1;
                _eadgWeight[i][j] = 0.0;
            } else {
                _neighbor[i][j] = j;
                _eadgWeight[i][j] = 1.0;
            }
        }
    }
    int tid = 5;
    int ithNode = -1;
    int nodeMap[16];
    vector<std::vector<std::vector<double> > > tempTurboAffinity(32, std::vector<std::vector<double> >(16, std::vector<double>(16)));
    vector<std::vector<std::vector<int> > > temp_neigh_comm(32, std::vector<std::vector<int> >(16, std::vector<int>(16)));
    for (int start = 0; start < loopCondition; start++) {

        int jump = start*frameSize;
        int _node = startNode + jump;
        int _deg = deg[_node];
        if (_deg > maxDeg) {
            maxDeg = _deg;
        }
        ithNode = ithNode + 1;
        nodeMap[_node] = ithNode;
        for (int v = 0; v < loopCondition; ++v) {
            int C = zeta[v];
            if(_neighbor[_node][v] != -1){
                tempTurboAffinity[tid][ithNode][C] = -1;
            }
        }
        tempTurboAffinity[tid][nodeMap[_node]][zeta[_node]] = 0;
        temp_neigh_comm[tid][nodeMap[_node]].clear();
    }
    for (int i_out = 0; i_out < maxDeg; i_out++) {
        for (int start = 0; start < loopCondition; start++) {
            int nextJump = start*frameSize;
            int xp = startNode + nextJump;

            int v = _neighbor[xp][i_out];
            double weight = _eadgWeight[xp][i_out];
            if (xp != v) {
                int C = zeta[v];
                if (tempTurboAffinity[tid][nodeMap[xp]][C] == -1) {
                    // found the neighbor for the first time, initialize to 0 and add to list of neighboring communities
                    tempTurboAffinity[tid][nodeMap[xp]][C] = 0;
                    temp_neigh_comm[tid][nodeMap[xp]].push_back(C);
                }
                tempTurboAffinity[tid][nodeMap[xp]][C] += weight;
            }
        }
    }
    return block_size;
}

int main() {
    vector<vector<int> > myVector(10, vector<int>(5));
    int count = 0;
    for (int i = 0; i < 10; ++i) {
        for (int j = 0; j < 5; ++j) {
            myVector[i][j] = ++count;
        }
    }
    int** myPointer;
    *myPointer = &myVector[0][0];
    for (int k = 0; k < 10; ++k) {
        for (int i = 0; i < 5; ++i) {
            cout<<myPointer[k][i]<<" "<<endl;
        }
        cout<<endl;
    }
    return 0;
}
