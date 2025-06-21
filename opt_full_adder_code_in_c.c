#include <stdio.h>

int main() {
    int a, b, cin;
    int sum, cout;

    printf(" A B Cin | Sum Cout\n");
    printf("-------------------\n");

    for (int i = 0; i < 8; i++) {
        a   = (i >> 2) & 1;
        b   = (i >> 1) & 1;
        cin =  i       & 1;

        sum  = a ^ b ^ cin;
        cout = (a & b) | ((a ^ b) & cin);

        printf(" %d %d  %d   |  %d    %d\n", a, b, cin, sum, cout);
    }

    return 0;
}
