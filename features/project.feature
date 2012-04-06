Feature: Creating Projects
    In order to have projects to assign tickets to
    As a user
    I want to manage projects  
    
    ##This is written for avoiding duplications
    #Background:
    #    Given I am on the home page
    #    Then I should see "New Project"
    #    When I follow "New Project"
    ########################3
    
    Scenario: Displaying the project
        Given there is a project called "New Project 1"   
        And I am on the home page
        When I follow "New Project 1"
        Then I should be on the project page for "New Project 1"

    Scenario: Creating a project
        Given I am on the home page
        Then I should see "New Project"
        When I follow "New Project"
        Then I fill in "Name" with "New Project"
        And I press "Create Project"
        Then I should see "Project has been created."
        And I should be on the project page for "New Project"
        And I should see "New Project - Projects - Ticketee"
    
    Scenario: Creating a project without name
        Given I am on the home page
        Then I should see "New Project"
        When I follow "New Project"
        And I press "Create Project"
        Then I should see "Project has not been created."
        And I should see "Name can't be blank"

    Scenario: Updating a project
        Given there is a project called "New Project 2"
        And I am on the home page
        When I follow "New Project 2"
        And I follow "Edit Project"
        And I fill in "Name" with "New Project latest"
        And I press "Update Project"
        Then I should see "Project has been updated."
        Then I should be on the project page for "New Project latest"

     Scenario: Deleting a project
        Given there is a project called "New Project 3"
        And I am on the home page
        When I follow "New Project 3"
        And I follow "Delete"
        Then I should see "Project has been deleted"
        And I should not see "New Project 3"

    
