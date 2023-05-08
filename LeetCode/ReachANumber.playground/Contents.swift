import Foundation
import Swift
class Solution {
    func reachNumber(_ target: Int) -> Int {
        var newTarget = abs(target)
        var d = sqrt(Double(8 * newTarget + 1))
        var n = Int(ceil((d - 1) / 2 ))
        var sum = Int((n * (n+1)) / 2)
        n += 1
        while((newTarget-sum) % 2 != 0 ){
                    sum = sum + n ;
                    n += 1;
                }
        return n - 1
    }
}


let obj = Solution()
obj.reachNumber(1)
