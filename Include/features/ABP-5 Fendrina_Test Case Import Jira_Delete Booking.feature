@APITest

Feature: Delete Booking

As a user, I want to delete a booking via the RESTful Booker API.

Scenario: Delete a Booking

Given the RESTful Booker API is available at "https://restful-booker.herokuapp.com"
And I have a booking with ID "5944"
When I send a DELETE request to "/booking/5944"
Then the booking with ID "5944" should be deleted
And I should receive a status code 204