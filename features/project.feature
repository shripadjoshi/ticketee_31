Feature: Creating Projects
    In order to have projects to assign tickets to
    As a user
    I want to create them easily

    Scenario: Creating a project
        Given I am on the home page
        When I follow "New Project"
        Then I fill in "Name" with "New Project"
        And I press "Create Project"
        Then I should see "Project has been created."
