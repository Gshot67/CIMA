Feature: User signs in and create a post

    Scenario: User signs as journalist in and create a post
        Given There s a signed up User on the sign in page
        When User clicks on the sign in button
        And the user enters all the credentials
        And the user submits the sign in form
        Then User should be able to access his account page

        When the user clicks on create new post 
        And the user fils all the fields
        And the user submits the form
        Then the user has his post on the feed below