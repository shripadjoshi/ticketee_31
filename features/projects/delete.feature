Feature: Deleting Project
    In order to have projects to assign tickets to
    As a user
    I want to delete project 

    Scenario: Deleting a project
        Given there is a project called "New Project 3"
        And I am on the home page
        When I follow "New Project 3"
        And I follow "Delete"
        Then I should see "Project has been deleted"
        And I should not see "New Project 3"
