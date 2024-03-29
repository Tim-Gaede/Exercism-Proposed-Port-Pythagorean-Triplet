# Pythagorean Triplet

A Pythagorean triplet is a set of three natural numbers, {a, b, c}, for
which,

```text
a² + b² = c²
```

and such that,

```text
a < b < c
```

For example,

```text
3² + 4² = 9 + 16 = 25 = 5².
```

Given an input integer N, find all Pythagorean triplets for which `a + b + c = N`.

For example, with N = 1000, there is exactly one Pythagorean triplet for which `a + b + c = 1000`: `([(200, 375, 425)])`.

## Exception messages

Sometimes it is necessary to raise an exception. When you do this, you should include a meaningful error message to
indicate what the source of the error is. This makes your code more readable and helps significantly with debugging. Not
every exercise will require you to raise an exception, but for those that do, the tests will only pass if you include
a message.

To raise a message with an exception, just write it as an argument to the exception type. For example, instead of
`throw("Error")`, you should write:

```julia
throw("Meaningful message indicating the source of the error")
```
## Version compatibility
This exercise has been tested on Julia 1.2.

## Submitting Exercises

Note that, when trying to submit an exercise, make sure the solution is in the `$EXERCISM_WORKSPACE/julia/pythagorean-triplet` directory.

You can find your Exercism workspace by running `exercism debug` and looking for the line that starts with `Workspace`.

For more detailed information about running tests, code style and linting,
please see [Running the Tests](http://exercism.io/tracks/julia/tests).

## Source

Problem 9 at Project Euler [http://projecteuler.net/problem=9](http://projecteuler.net/problem=9)

## Submitting Incomplete Solutions

It's possible to submit an incomplete solution so you can see how others have completed the exercise.
