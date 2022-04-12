# How does TDD work?

OK, let's get real now and use our new framework for the TDD action that we were
waiting for.

TDD is a methodology for a structured coding process that consists of 3 steps:

1. Write a failing test
2. Make it pass in the easiest possible way
3. Refactor to remove duplication

Or even shorter:

1. Red
2. Green
3. Refactor

Let's practice this on a real scenario.

**Requirement:**

> In our organization we'd like to do more TDD again. Let's create a friendly TDD bot
that greets people in our Slack's #tdd-channel. 🚀

You get assigned a small first ticket to get this TDD bot going. Your code buddy at work who
created the ticket was so kind to chunk it up in tiny steps to also get you started with TDD:

- [ ] Create a class inside of `hello_tdd_world_test.rb`

- [ ] Create a first failing test called `def check_returns_default_tdd_greeting` inside `exercise_02/start/hello_tdd_world_test.rb` that checks that our future `HelloTddWorld` class returns a default "Hello, TDD World!" greeting:
  - [ ] We'll use our Check test framework's `is_equal?()` method to check whether the expected String is returned by our future static method `def self.default_greeting` set on our future `HelloTddWorld` class

- [ ] Create the file `exercise_02/start/hello_tdd_world.rb` and the class `HelloTddWorld` and add a method to it `self.default_greeting` that returns "Hello, TDD World!".

You just did TDD 👏

**One more!**

Follow the same steps above but this time there is a new requirement:

> Apart from the default greeting we want to greet anyone posting in our Slack #tdd-channel for the first time with a personalized message: "Hello FIRST_TIME_POSTER_NAME, TDD superstar!". So if Mary posts for the first time, the Slack bot will greet her with "Hello Mary, TDD superstar!".

_Hints:_

* Start again with a test name like: `def check_returns_personalized_greeting`

* This time your input will be dynamic your target method will be something like `self.personalized`. Still, try to get the test green with the expected value hardcoded. Only then refactor.

**Dig deeper ⛏**

There's a new requirement... 😱

> On one of our servers, we want to have a random greeting every time someone logs into the server.

In this exercise we'll just add a new method that returns 3 greetings:
```ruby
[
  "Red - Green - Refactor, baby!",
  "TDD will change your life!",
  "I came in red, I saw green, I refactored. - Julius Cesar"
]
```

Follow the same `Red - Green - Refactor` process as before.

In one of the next "Dig deeper ⛏" exercises you will do more advanced stuff with it.
