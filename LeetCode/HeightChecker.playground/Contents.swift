class Solution {
    func heightChecker(_ heights: [Int]) -> Int {
         
        var res: Int = 0
      
        var prevHeight = heights
        
       var h = heights.sorted()
        
        for i in 0..<heights.count{
            if prevHeight[i] != h[i] {
                res += 1
            }
        }
        print(h)
        print(prevHeight)
        return res
    }
}
