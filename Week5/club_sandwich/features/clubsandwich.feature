Feature: I am able to use the Club Sandwich website

  Scenario: I want to go to the Make your own page
    Given I am on the Club Sanwich index page
    When I click Make your own
    Then I should be redirected to the Make a Sanwich page

  Scenario: I want to create a new sandwich and post it
    Given I am on the Make your own page
    When I enter a name for my sandwich
    And I enter a description for my sandwich
    And I click Save Sanwich
    Then I should be redirected and my sandich should be on the main page

  Scenario: I want to view a sandwich
    Given I am on the Club Sandwich index page
    Given There are more than zero sandwiches on the page
    When I click on a sandwich
    Then I should be redirected to that sandwich's page

  Scenario: I want to edit a sandwich
    Given I am currently viewing a sandwich that exists in the database
    When I click Edit Sandwich
    Then I should be redirected to that sandwich's edit page

  Scenario: I want to save changes to an existing sandwich
    Given I am currently viewing a sandwich's edit page that exists in the database
    When I make changes to the name of the sandwich
    And I make changes to the description of the sandwich
    And I click Edit Sandwich
    Then I should be redirected to the main page, which should display the updated sandwich
