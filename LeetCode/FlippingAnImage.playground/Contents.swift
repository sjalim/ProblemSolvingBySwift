import Foundation
class Solution {
    func flipAndInvertImage(_ image: [[Int]]) -> [[Int]] {
        var horizontallyReversed: [[Int]] = []
        var inverted: [[Int]] = []
        var n = image.count

        for i in 0..<n {
            horizontallyReversed.append(image[i].reversed())
        }
        
        for i in 0..<n {
            var temp: [Int] = []
            for j in 0..<n {
                if horizontallyReversed[i][j] == 0 {
                    temp.append(1)
                } else {
                    temp.append(0)
                }
            }
            inverted.append(temp)
        }
        
        return inverted
    }
}

let obj = Solution()

var res = obj.flipAndInvertImage([
    [1,1,0],
    [1,0,1],
    [0,0,0]]
)

print(res)
