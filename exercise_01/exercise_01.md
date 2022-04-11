# Hello TDD

Our organization would like to do more testing and TDD again. Today we'll lay
the ground to create a Slack chatbot and other reminder mechanisms to keep our
engineers reminded about the power of TDD.

## Exercise 1: Understand your tools first

We'll work with minitest here. Let's see real quick first, how minitest works
under the hood.

**Requirement**

> Your organization is tired by the ugly minitest syntax and the too complex
RSpec setup. They've decided to create their own testing framework 💪 Let's
start very simple with the most important test framework method to test for
equality.

**Let's try it!**

Create a test framework class and add a method to test for equality. Let's call
our test framework `Check` and the method to test for equality `is_equal?`.

_Step by step..._

1. Create a class `Check` inside of `exercise/start/check.rb`
1. Add an `is_equal?` method to it
1. Create a `check_test.rb` file to test our test framework
1. Add a class in `check_test.rb` that inherits from our `Check` framework
   (don't forget to `require_relative "check` to add your test code to
   `check_test.rb`)
1. Write a test which checks that 1 is equal 1 and `nil` is not equal to `false`
   (the former should visibly pass and the latter should visibly fail)
1. Write code to execute the test methods below your `CheckTest` class
1. Run the test file with `$ ruby check_test.rb` from the command line

**Now you**

What else can you think of that equals something else? And what not? try 1 or 2
more tests on your own.

**Dig deeper homework**

Create an autorun capability so that when you run your `check_test.rb` all the
tests are run in succession automatically. However, there should be no sign of
the autorun functionality inside of `check_test.rb` everything should happen
inside of `check.rb`.
