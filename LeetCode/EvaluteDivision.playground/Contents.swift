class Solution {
    func calcEquation(_ equations: [[String]], _ values: [Double], _ queries: [[String]]) -> [Double] {
      
        var graph: [String: [String: Double]] = [:]
        var visited = Set<String>()
        var res: [Double] = []
        
        func addEdge(_ source: String, _ destination: String, _ weight: Double) {
            if graph[source] == nil {
                graph[source] = [:]
            }
            graph[source]![destination] = weight
            
            if graph[destination] == nil {
                graph[destination] = [:]
            }
            graph[destination]![source] = 1/weight
        }
        
        for (idx, item) in equations.enumerated() {
            addEdge(item[0], item[1], values[idx])
        }

        for item in graph {
            print("\(item)")
        }
        
        for item in queries {
            visited.removeAll()
            res.append(dfs(start: item[0], end: item[1], path_val: 1.0))
        }
        func dfs(start: String, end: String, path_val: Double) -> Double {
            
            var path_val = path_val

            if visited.contains(start) || !graph.keys.contains(start) {
                return -1.0
            }
            
            if start == end  {
                return 1.0
            }

            visited.insert(start)

            if let nestedDict = graph[start] {
                for (neighbor, weight) in nestedDict {
                    
                    if !visited.contains(neighbor) {
                        path_val = dfs(start: neighbor, end: end, path_val: path_val)
                        if path_val != -1.0 {
                            return path_val * weight
                        }
                    }
                }
            }
            return -1.0
        }
        return res
    }
}
