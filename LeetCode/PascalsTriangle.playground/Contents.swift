class Solution {
    
//    var mat = [[Int]](repeating: [Int](repeating: 0, count: 60), count: 60)
//    func triangle(_ i: Int, _ j: Int) -> Int {
//        if i >= 0 && j >= 0 {
//            if mat[i][j] > 0 {
//                return mat[i][j]
//            } else {
//                mat[i][j] = triangle(i-1, j-1) + triangle(i-1, j)
//            }
//            return mat[i][j]
//        } else {
//            return 0
//        }
//    }

    func generate(_ numRows: Int) -> [[Int]] {
        
        
        var output = [[Int]](repeating: [Int](repeating: 1, count: numRows), count: numRows)
        
        for i in 1..<numRows {
            for j in 1..<i {
                output[i][j] = output[i-1][j-1] + output[i-1][j]
            }
        }
        var res: [[Int]] = []
        for i in 0..<numRows {
            
            var temp: [Int] = []
            for j in 0...i {
                temp.append(output[i][j])
            }
            res.append(temp)
        }
        return res
    }
}

let obj = Solution()

obj.generate(30)
