class Solution {
    func climbStairs(_ n: Int) -> Int {
        if n <= 2 { return n }
        var memo = Array(repeating: 0, count: n + 1)
        memo[1] = 1
        memo[2] = 2
        for i in 3...n {
            memo[i] = memo[i - 1] + memo[i - 2]
        }
        return memo[n]
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
