import Foundation
class MedianFinder {

    var list:[Int] = []
    init() {
        
    }
    
    func addNum(_ num: Int) {
        list.append(num)
    }
    
    func findMedian() -> Double {
        
        var len = list.count
        list = list.sorted()
        var res = 0.0
        if len % 2 == 0 {
            var idx1 = len / 2
            var idx2 = len / 2 - 1
            
            res = Double((list[idx1] + list[idx2])) / 2.0
            
        } else {
            res = Double(list[Int(list.count / 2)])
        }
        return res
        
    }
}

/**
 * Your MedianFinder object will be instantiated and called as such:
 * let obj = MedianFinder()
 * obj.addNum(num)
 * let ret_2: Double = obj.findMedian()
 */
