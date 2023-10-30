Feature: User signs in with credentials and retwitt, then he goes to the author and follow him

    Scenario: User signs in and create a post
        Given There s a signed up User on the sign in page
        When User clicks on the sign in button
        And the user enters all the credentials
        And the user submits the sign in form
        Then User should see the feed

        When the user clicks on create new post 
        And the user clicks on retwitt
        And the user goes to the author page
        And the user follows the author
        Then the user is able to unfollow