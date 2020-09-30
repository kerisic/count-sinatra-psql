# Description
This is a counter web app built in Ruby using Sinatra and Capybara. This app uses PostgreSQL to store the count.

# How to run the app
1. Clone this repository
2. `cd` into the cloned directory
3. Run `bundle` to install dependencies
4. Run `rackup`
5. Navigate to `http://localhost:9292/` in your browser

# How to run the tests
1. Clone this repository
2. `cd` into the cloned directory
3. Run `bundle` to install dependencies
4. Run `rspec`

# Questions to explore
* Where are each of the three components of the MVC framework found in this application?
* What parts of the code run when we run the app in our browser? You could test your assumption by adding `p` lines and checking that you see the output you expect.
* What part of the code runs when we click the "Increment" button?
* Can you add a "Decrement" button which decreases the count by 1 each time it is pressed?
* Can you update the app to display the time that the count was last updated?
* Can you add a "Reset" button which will put the count back to zero?
