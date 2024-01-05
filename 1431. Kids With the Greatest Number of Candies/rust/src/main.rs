use std::cmp::max;

pub struct Solution;

impl Solution {
    pub fn kids_with_candies(candies: Vec<i32>, extra_candies: i32) -> Vec<bool> {
        let mut mx = 0;
        let len = candies.len();
        let mut result = Vec::new();

        for i in 0..len {
            mx = max(candies[i], mx);
        }

        mx -= extra_candies;
        for i in 0..len {
            result.push(candies[i] >= mx);
        }

        result
    }
    
}

fn main() {
    let candies = vec![2, 3, 5, 1, 3];
    let extra_candies = 3;
    let expected_output = vec![true, true, true, false, true];
    let result = Solution::kids_with_candies(candies, extra_candies);
    assert_eq!(result, expected_output);
    if result == expected_output {
        println!("Test 1 Pass");
    }

    let candies = vec![4, 2, 1, 1, 2];
    let extra_candies = 1;
    let expected_output = vec![true, false, false, false, false];
    let result = Solution::kids_with_candies(candies, extra_candies);
    assert_eq!(result, expected_output);
    if result == expected_output {
        println!("Test 2 Pass");
    }

    let candies = vec![12, 1, 12];
    let extra_candies = 10;
    let expected_output = vec![true, false, true];
    let result = Solution::kids_with_candies(candies, extra_candies);
    assert_eq!(result, expected_output);
    if result == expected_output {
        println!("Test 3 Pass");
    }
}
