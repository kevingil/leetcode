pub struct Solution;

impl Solution {
    pub fn largest_altitude(gain: Vec<i32>) -> i32 {
        gain.iter().fold((0, 0), |(mut pre_sum, mut res), &diff| {
            pre_sum += diff;
            res = res.max(pre_sum);
            (pre_sum, res)
        }).1
    }
}

fn main() {
    // Test 1
    let gain1 = vec![-5, 1, 5, 0, -7];
    let output1 = Solution::largest_altitude(gain1.clone());
    println!("Example 1 - Output: {}", output1);
    assert_eq!(output1, 1);

    // Test 2
    let gain2 = vec![-4, -3, -2, -1, 4, 3, 2];
    let output2 = Solution::largest_altitude(gain2.clone());
    println!("Example 2 - Output: {}", output2);
    assert_eq!(output2, 0);
}
