class Solution {
    func climbStairs(_ n: Int) -> Int {
        var memo = Array(repeating: -1, count: n + 1)
        return helper(n, &memo)
    }

    func helper(_ n: Int, _ memo: inout [Int]) -> Int {
        if n <= 1 {
            return 1
        }
        if memo[n] != -1 {
            return memo[n]
        }
        memo[n] = helper(n - 1, &memo) + helper(n - 2, &memo)
        return memo[n]
    }
}
