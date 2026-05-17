class Solution {
    func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
        var freq: [Int: Int] = [:]

        for n in nums {
            freq[n, default: 0] += 1
        }

        let sortedFreq = freq.sorted { $0.value > $1.value }
        return Array(sortedFreq.prefix(k).map { $0.key })
    }
}
