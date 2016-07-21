#include <iostream>
#include <string>
using namespace std;

int main() {
    std::string line;
    while (getline(cin, line)) {
        int value = atoi(line.c_str());
        int result = value*value;
        cout << result << endl;
    }
}
