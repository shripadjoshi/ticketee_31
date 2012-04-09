Feature: Creating Projects
    In order to have projects to assign tickets to
    As a user
    I want to create projects  
    
    Background:
        Given I am on the home page
        Then I should see "New Project"
        When I follow "New Project"

    Scenario: Creating a project
        Then I fill in "Name" with "New Project"
        And I press "Create Project"
        Then I should see "Project has been created."
        And I should be on the project page for "New Project"
        And I should see "New Project - Projects - Ticketee"
    
    Scenario: Creating a project without name
        And I press "Create Project"
        Then I should see "Project has not been created."
        And I should see "Name can't be blank"
