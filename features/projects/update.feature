Feature: Updating Project
    In order to have projects to assign tickets to
    As a user
    I want to update project

    Scenario: Updating a project
        Given there is a project called "New Project 2"
        And I am on the home page
        When I follow "New Project 2"
        And I follow "Edit Project"
        And I fill in "Name" with "New Project latest"
        And I press "Update Project"
        Then I should see "Project has been updated."
        Then I should be on the project page for "New Project latest"
