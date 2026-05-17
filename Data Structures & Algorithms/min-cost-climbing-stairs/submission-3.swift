class Solution {
    func minCostClimbingStairs(_ cost: [Int]) -> Int {
        var startFrom0Memo = Array(repeating: 0, count: cost.count)
        startFrom0Memo[0] = cost[0]
        startFrom0Memo[1] = cost[1]
        for i in 2..<cost.count {
            startFrom0Memo[i] = cost[i] + min(startFrom0Memo[i-1], startFrom0Memo[i-2])
        }
        return min(startFrom0Memo[cost.count - 1], startFrom0Memo[cost.count - 2])
    }
}
