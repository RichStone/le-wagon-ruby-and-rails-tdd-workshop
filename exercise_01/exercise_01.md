# Hello TDD

Our organization would like to do more testing and TDD again. Today we'll lay
the ground to create a Slack chatbot and other reminder mechanisms to keep our
engineers reminded about the power of TDD.

## Exercise 1: Understand your tools first

We'll work with minitest later. But let's see real quick first, how Minitest
works under the hood by building our own test framework 💪

**First Requirement**

> You are tired by the ugly minitest syntax and the too complex RSpec features.
You've decided to create your very own testing framework 💪 You start very
simple with the most important test framework method: One that tests if an
expected input is equal to an actual code output.

We'll create a test framework class and add a method to test for equality. Let's
call our test framework `Check` and the method to test for equality `is_equal?`.

_Step by step..._

- [ ] Create a class `Check` inside of `exercise/start/check.rb`

- [ ] Add an `is_equal?` method to it

- [ ] Create a `check_test.rb` file to test our test framework

- [ ] Add a `CheckTest` class in `check_test.rb` that inherits from our `Check`
   framework (don't forget to `require_relative "check` to add your test code to
   `check_test.rb`)

- [ ] Write a method which checks that 1 is equal 1 and `nil` is not equal to
   `false` (the former should visibly pass and the latter should visibly fail).
   To "visibly fail" let your test framework put something out to the console,
   like `"failed ❌"` and `"passed ✅"`

- [ ] Write code to execute the test methods below your `CheckTest` class. Make
  it very simple for now, just run the methods in your class

- [ ] Run the test file with `$ ruby check_test.rb` from the command line

**Now you**

What else can you think of that equals something else in Ruby? And what not? Try
1 or 2 more tests on your own.

---

Cool, now that you know how a testing framework works in its essence, it's time
to get your test-driving license 🚗

---

**(Bonus) Minitest internals**

Ever seen the `require "minitest/autorun"` module? How does it run your tests
automatically when you run the test file?

Create an autorun capability so that when you run your `check_test.rb` all the
tests are run in succession automatically. However, there should be no sign of
the autorun functionality inside of `check_test.rb` everything should happen
inside of `check.rb`.

If you cannot think of a way to implement the autorun, try to write down in
words what it would take for a Ruby program to do that.
