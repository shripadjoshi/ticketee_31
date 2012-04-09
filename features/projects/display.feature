Feature: Displaying Project
    In order to have projects to assign tickets to
    As a user
    I want to display project

    Scenario: Displaying the project
        Given there is a project called "New Project 1"   
        And I am on the home page
        When I follow "New Project 1"
        Then I should be on the project page for "New Project 1"

