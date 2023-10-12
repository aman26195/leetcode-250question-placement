class Solution {
public:
    int longestConsecutive(vector<int>& nums) {
        int longest=1,cnt=0,lastsmall=INT_MIN;
       sort(nums.begin(),nums.end());
        if(nums.size()==0)
            return 0;
    for(int i=0;i<nums.size();i++)
    {
        if(nums[i]-1==lastsmall)
        {
            cnt=cnt+1;
            lastsmall=nums[i];
            
        }
        else if(nums[i]!=lastsmall)
        {
            cnt=1;
            lastsmall=nums[i];
            
        }
        longest=max(longest,cnt);
    }
        return longest;
        
    }
};