# How does TDD work?

OK, let's get real now and use our new framework for the TDD action that we were
waiting for.

TDD is a methodology for a structured coding process that consists of 3 steps:

1. Write a failing test
2. Make it pass in the **stupidest possible way**
3. Refactor to improve your program and "remove duplication"

Or even shorter:

1. Red
2. Green
3. Refactor

![image](../images/red-green-refactor.png)

Let's practice this on a real scenario. Each step is important. Don't skip
steps, especially when you just learn it. Sometimes

**Requirement:**

> In our organization we'd like to do more TDD again. Let's create a friendly
TDD bot who greets people in our Slack's #tdd-channel. 🚀

You get assigned a small first ticket to get this TDD bot going. Your code buddy
at work who created the ticket was so kind to chunk it up in tiny steps to also
get you started with TDD:

(inside `exercise_02/start/` you are starting this exercise with a ready-to-go
version of our `Check` test framework)

- [ ] Create a `HelloTddWorldTest` class that inherits from our test framework
  `Check` inside of `hello_tdd_world_test.rb`

- [ ] Create a first failing test called `def
  check_returns_default_tdd_greeting` inside
  `exercise_02/start/hello_tdd_world_test.rb` that checks that our future
  `HelloTddWorld` class returns a default "Hello, TDD World!" greeting:
  - [ ] We'll use our Check test framework's `is_equal?()` method to check
    whether the expected String is returned by our future static method `def
    self.default` set on our future `HelloTddWorld` class

- [ ] Create the file `exercise_02/start/hello_tdd_world.rb` with the class
  `HelloTddWorld` and add a method to it `self.default` that returns "Hello, TDD
  World!".

You just did TDD 👏

**One more!**

Follow the same steps above but this time there is a new requirement:

> Apart from the default greeting we want to greet anyone posting in our Slack
> #tdd-channel for the first time with a personalized message: "Hello
> FIRST_TIME_POSTER_NAME, TDD superstar!". So if Mary posts for the first time,
> the Slack bot will greet her with "Hello Mary, TDD superstar!".

Remember 🛑 - 🟢 - 🔄[refactor]

_Hints:_

* Start again with a test name like: `def check_returns_personalized_greeting`

* This time your input will be dynamic and your target method will be something
  like `self.personalized(name)`. Still, try to get the test green with the
  expected value hardcoded. Only then refactor.

---

Awesome, we did our first test-drive 🎉 Our bot is growing quickly which brings
new challenges! Let's see how we can tackle them in the next exercise.

---

**(Bonus) Just a little cooldown...**

There's a new requirement... 😱

> On one of our servers, we want to have a random greeting every time someone
> logs into the server.

In this exercise we'll just add a new method that returns 3 greetings:
```ruby
[
  "Red - Green - Refactor, baby!",
  "TDD will change your life!",
  "I came in red, I saw green, I refactored. - Julius Cesar"
]
```

Follow the same `Red - Green - Refactor` process as before. Think of a good
method name.

In one of the next Bonus tasks you will do more advanced stuff with it.
