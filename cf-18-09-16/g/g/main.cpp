#include <iostream>
#include <vector>

using namespace std;

int main(int argc, const char * argv[]) {
    
    long n, k;
    cin >> n >> k;
    
    vector<long> numbers(k);
    vector<long> small_numbers;
    
    long limit = n;
    
    long some_number = 0;
    for (long i = 0; i < k; i++) {
        cin >> some_number;
        numbers[i] = some_number;
        if (some_number <= n) {
            small_numbers.push_back(some_number);
        }
    }
    
    for (size_t i = 0; i < small_numbers.size(); i++) {
        for (int j = 0; j < k; j++) {
            long a = numbers[j];
            long b = small_numbers[i];
            if (a != b && a % b == 0) {
                int index = 0;
                for (int t = 0; t < k; t++) {
                    if (numbers[t] == b) {
                        index = t;
                        break;
                    }
                }
                cout << min(j + 1, index + 1) << " " << max(index + 1, j + 1) << endl;
                break;
            }
        }
    }
    
    return 0;
}
