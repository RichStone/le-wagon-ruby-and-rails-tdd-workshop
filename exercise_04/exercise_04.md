# Test-Drive a Rails App

You will be using what I call Behavior-Driven Design (BDD) guided by TDD.

BDD is more of a team philosophy, but you can use its essence to develop your
applications as an individual developer.

Rails apps are often designed in one of 2 ways: User-driven or business-logic-driven. In the latter approach you start your design with looking at your future DB structure and your models behavior. In the former "User-driven" approach, you imagine the UI and how the user will interact with it first. That's a good approach to get us started with BDD.

**BDD**

> We've talked to our developer friends and other potential users of our bot. A
lot of people were really excited about configuring the TDD bot for their Slack
channel inside of an UI.

- [ ] Write a System test that will illustrate the happy path of the most prominent feature of your bot...

... WIP - Let me know if you'd like exercise_04 to be finished ...

**Guided by TDD**

- [ ] Guide your implementation by creating unit and integration tests...

... WIP - Let me know if you'd like exercise_04 to be finished ...

**(Bonus) Testing randomness**

> Remember the `fun_phrases` method from earlier exercises? You decide to reuse
on your homepage to display a fun phrase for visitors.

- [ ] Create another system test for the happy path

- [ ] Test-drive the creation of a `self.random_fun_phrase` method

- [ ] You are getting into the realms of testing randomness. What would you like
to test? What forces are at play here? Which issues could arise if you have not
5 but 1000 fun phrases?

... WIP - Let me know if you'd like exercise_04 to be finished ...

**(Bonus+) Package your bot as a gem**

- [ ] Use [this resource]() to package your bot as a gem
  - [ ] How is bundler being test-driven? What can you do to make your gem more
  robust?

- [ ] Reuse your gem in a Sinatra app (You can use this `Sinatra app template`)
