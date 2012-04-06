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
    
    Scenario: Listing all the projects
        Given there is a project called "New Project 1"   
        And I am on the home page
        When I follow "New Project 1"
        Then I should be on the project page for "New Project"

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

    
