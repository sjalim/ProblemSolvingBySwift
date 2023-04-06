class Solution {
    func maxSlidingWindow(_ nums: [Int], _ k: Int) -> [Int] {
        
        var mx = -9999999
        var mxIdx = 0
        var rsList:[Int] = []
        
        for i in 0..<k {
            if mx < nums[i] {
                mx = nums[i]
                mxIdx = i
            }
        }
        
        rsList.append(mx)
        for i in k..<nums.count {
            
            if  i - k < mxIdx && mxIdx <= i {
                if mx < nums[i] {
                    mx = nums[i]
                    mxIdx = i
                }
            } else {
                mx = -9999999
                for j in i - k + 1 ... i {
                    if mx < nums[j] {
                        mx = nums[j]
                        mxIdx = j
                    }
                }
            }
            
            rsList.append(mx)
        }
        
        return rsList
    }
}


var sol = Solution()

sol.maxSlidingWindow([7,2,4], 2)
