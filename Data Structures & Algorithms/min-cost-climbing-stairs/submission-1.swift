class Solution {
    func minCostClimbingStairs(_ cost: [Int]) -> Int {
        var startFrom0Memo = Array(repeating: -1, count: cost.count)
        var startFrom1Memo = Array(repeating: -1, count: cost.count)
        let startFrom0 = helper(0, cost, &startFrom0Memo)
        let startFrom1 = helper(1, cost, &startFrom1Memo)
        return min(startFrom0, startFrom1)
    }

    func helper(_ idx: Int, _ cost: [Int], _ memo: inout [Int]) -> Int {
        if idx >= cost.count {
            return 0
        }
        if memo[idx] != -1 {
            return memo[idx]
        }
        let left = cost[idx] + helper(idx + 1, cost, &memo)
        let right = cost[idx] + helper(idx + 2, cost, &memo)
        memo[idx] = min(left, right)
        return memo[idx]
    }
}
