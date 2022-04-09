# Hello TDD

Our organization would like to do more testing and TDD again. Today we'll lay
the ground to create a Slack chatbot and other reminder mechanisms to keep our
engineers reminded about the power of TDD.

## Exercise 1: Understand your tools first

We'll work with minitest here. Let's see real quick first, how minitest works
under the hood.

**Requirement**

> Your organization is tired by the ugly minitest syntax and the too complex RSpec
setup. They've decided to create their own testing framework 💪 Let's start very simple
with the most important test framework method to test for equality.

**Implementation**

1. Create a test framework class and add a method to test for equality. Let's call our test framework `Check` and the method to test for equality `is_equal?`.
