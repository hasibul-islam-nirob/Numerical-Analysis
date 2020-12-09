/// Gauss-Newton's forward interpolation
/**
 ID: 182482526
 Name:  Hasibul Islam Nirob

*/
#include <bits/stdc++.h>
using namespace std;
float u_cal(float u, int n)
{
    float temp = u;
    for (int i = 1; i < n; i++)
        temp = temp * (u - i);
    return temp;
}
int fact(int n)
{
    int f = 1;
    for (int i = 2; i <= n; i++)
        f *= i;
    return f;
}
int main()
{
    int n = 6;
    float x[] = {310,320,330,340,350,360};
    float y[n][n];
    y[0][0] = 2.4914;
    y[1][0] = 2.5052;
    y[2][0] = 2.5185;
    y[3][0] = 2.5315;
    y[4][0] = 2.5441;
    y[5][0] = 2.5563;
    for (int i = 1; i < n; i++)
    {
        for (int j = 0; j < n - i; j++)y[j][i] = (y[j + 1][i - 1] - y[j][i - 1]);
    }
///Displaying the forward difference table
    for (int i = 0; i < n; i++)
    {
        cout << setw(4) << x[i]
             << "\t";
        for (int j = 0; j < n - i; j++)
            cout << setw(4) << y[i][j]
                 << "\t";
        cout << endl;
    }
    float value = 337.5;
/// initializing u and sum
    float sum = y[(n/2)][0];
    float u = (value - x[(n/2)]) / (x[1] - x[0]);
    for (int i = 1; i < n; i++)
    {
        sum = sum + (u_cal(u, i) * y[((n-i)/2)][i]) /
              fact(i);
    }
    cout << "\n Value at " << value << " is "<< (sum) << endl;

    return 0;
}

