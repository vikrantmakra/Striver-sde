vector<vector<long long int>> printPascal(int n) 
{
  // Write your code here.
    vector<vector<long long int>> ma(n);
    for(int i=0;i<n;i++)
    {
        ma[i].resize(i+1);
        ma[i][0]=ma[i][i]=1;
        for(int j=1;j<i;j++)
        {
            ma[i][j]=ma[i-1][j-1]+ma[i-1][j];
        }
    }
    return ma;
}
