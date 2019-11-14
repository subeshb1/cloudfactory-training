## Challenges

1.  **CH001 :: Weird Number**

        A weird number is defined as a number, n, such that the sum of all its divisors (excluding n itself) is greater than n, but no subset of its divisors sums up to exactly n.

    Write a program that finds weird numbers between given range. Example: lower number 10, maximum number 100

2.  **CH002 :: Pythagorean Triplet**

    A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,
    `a^2 + b^2 = c^2`

    For example, `3^2 + 4^2 = 9 + 16 = 25 = 5^2`

    There exists exactly one Pythagorean triplet for which a + b + c = 1000.
    Write a program to find this special pythagorean triplet: a, b, c.

3.  **CH003 :: Number Splitter**

    Write a program that divides a given integer number(N) into specified parts(X) so that the numbers sum up to be N. The divided numbers should be integer greater than 0. All the numbers are integers. Constraint X <= N, N > 0.
    For Example: Divide number 10(N) into 4(X) pieces

    ```
    N = 10, X = 4
    => [5, 2, 2, 1]
    ```

4.  **CH004 :: Happy Number**

    Write a program that tells whether a given integer is happy. A happy number is found using the following process: Take the sum of the squares of its digits, and continue iterating this process until it yields 1, or produces an infinite loop. If it yields 1, then it is a Happy Number! else it is a sad number.

    For example the number 7 is a happy number because:

    ```
    7^2 = 49
    4^2 + 9^2 = 97
    9^2 + 7^2 = 130
    1^2 + 3^2 + 0^2 = 10
    1^2 + 0^2 = 1
    ```

5.  **CH005 :: Curious Number**

    A n-digit number is said to be curious if the last n digits of its square are the same as the original number.
    For example, `25^2 = 625` and `76^2 = 5776`.
    (Curious numbers are also known as automorphic numbers.)
    An example of 9 digit number:
    `212890625^2 = 45322418212890625`
    Write a program to find all Curious Numbers of 1 to 10 digits.

6.  **CH006 :: Weird Number**

    A weird number is defined as a number, n, such that the sum of all its divisors (excluding n itself) is greater than n, but no subset of its divisors sums up to exactly n.
    Write a program that finds weird numbers between and including 10-100. You can extend it upto 1000.
    Example: `n = 12`
    Divisors => [1, 2, 3, 4, 6]
    Sum of Divisors => 16; > 12
    Sum of Subset => [2, 4, 6] => 12 => n
    12 is not a weird number.

7.  **CH007 :: LCM of numbers**

    Write a program to take input from user to find the LCM of those numbers.

    An example:

    ```
    Input: 2 3 5
    Output: 30
    ```

**Note: Challenges Repo - https://github.com/barunthapa/coding-challenges/edit/master/CHALLENGES.md**
