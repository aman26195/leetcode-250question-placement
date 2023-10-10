class Solution {
public:
    int maxProfit(vector<int>& prices) 
    {
        int maxprofit=0;
        int bp=INT_MAX;
        for(int i=0;i<prices.size();i++)
        {
            bp=min(bp,prices[i]);
            maxprofit=max(maxprofit,prices[i]-bp);

            }
        return maxprofit;  
    }
};