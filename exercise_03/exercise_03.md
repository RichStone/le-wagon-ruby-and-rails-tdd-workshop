# Use Minitest for rapidly changing requirements

The development of this HelloTddWorld bot is thriving and it's now used in
different part of your organization. Everyone loves it so far!

However, other developers now want to build on top of it. That's not that easy,
though, cause your new test framework is not well documented, not feature-rich,
and you obviously don't have enough time among all of all your responsibilities
to keep developing it... 😬

With all that data, you make a new decision: Let's not insist on the `Check`
framework for now, you can always continue the work on it later. Let's switch to
Minitest for now instead 🤖

You first have a quick skim over what Minitest actually is:

👀 [Minitest Docs Intro][minitest homepage]

OK Minitest is baked into Ruby and seems to be good enough for our purposes. Now
you go on for the search of a replacement for your Check's `is_equal?` method:

🕵️‍♀️🔎 [Assertion Docs][assertion docs]

Got it!

**Requirement**

> Replace your Check framework with minitest.

Inside of the `exercise_03/start/hello_tdd_world_test.rb` file...

- [ ] require `"minitest/autorun"` (no need to do `require_relative` this time,
  because `"minitest/autorun"` is available globally instead of being a relative
  file)

- [ ] Your test class should now inherit from `Minitest::Test`

- [ ] Replace all `is_equal?` references by Minitest's `assert_equal`

- [ ] Replace all Check's test method name prefixes (`def check_`) by Minitest's
`test_` prefix.

- [ ] Run the tests! You should have an output like this:

```shell
$ ruby exercise_03/final/hello_tdd_world_test.rb
Run options: --seed 61536

# Running:

...

Finished in 0.000631s, 4754.3581 runs/s, 6339.1442 assertions/s.
3 runs, 4 assertions, 0 failures, 0 errors, 0 skips
```

You've successfully replaced your own test framework with the powerful Minitest!
🏎

**Leverage new requirement with Minitest**

One of your colleagues asks if you could provide some functionality to easily
output a custom TDD slogan on his Rails server

> Make your TDD class easy to use for a custom input that then can be used in
> two ways: A `puts` statement and in some places a simple return.

Imagine to implement something like `assert_output` in your `Check` framework 🙈
Good to have Minitest as a rescue now 🙏

**(Bonus) Edge cases**

TDD is particularly powerful because it gets you thinking about possible errors
and edge cases **before** you start writing the code.

Since your bot class is getting more popular it's now really time to think about
edge cases!

_==> `fun_phrases(number)`_

What do you do if someone passes some weird stuff by mistake (or on purpose) to
the `fun_phrases(number)` method? Or better, what should your method do?

Check out `assert_empty`, `assert_nil`, `assert_raises`, and whatever else you
find in the [assertion docs][assertion docs] to write tests like `def
test_fun_phrases_returns_nil_with_number_nil`.

_==> `personalized(name)`_

Same goes for your `personalized(name)` method. You have different possibilities
to decide what to do with weird inputs there and test-drive all of them ;)

---

Feel free to drop me a message with the results!

[assertion docs]:
    https://ruby-doc.org/stdlib-3.0.2/libdoc/minitest/rdoc/Minitest/Assertions.html

[minitest homepage]:
    https://ruby-doc.org/core-3.0.0/_bundle/gems/minitest-5_14_2/README_rdoc.html#label-DESCRIPTION-3A
