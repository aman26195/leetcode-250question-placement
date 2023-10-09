class Solution {
public:
    int majorityElement(vector<int>& nums){
 if(nums.size()==1)
 return nums[0];
    int n=nums.size();
    int count=1;
    int value=0;
    sort(nums.begin(),nums.end());
    int i=0;
    for(i=1;i<n;i++)
    {
        if(nums[i]==nums[i-1])
        {
            ++count;
            
        
        if(count>n/2)
        {
        value=nums[i];
        break;
        }
    }
    }
        return value;
      
    }
};