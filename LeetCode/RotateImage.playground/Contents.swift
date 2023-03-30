class Solution {
    func rotate(_ matrix: inout [[Int]]) {

            var n = matrix.count
            var temp: Int
            for i in 0..<n {
                for j in 0..<i {
                    temp = matrix[j][i]
                    matrix[j][i] = matrix[i][j]
                    matrix[i][j] = temp
                }
            }
            for i in 0..<n {
                matrix[i] = matrix[i].reversed()
            }
        }
}
