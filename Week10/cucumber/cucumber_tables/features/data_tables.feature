Feature: data tables
  As a tester
  I want to use data tables
  So that I can access data


  Scenario: I am able to iterate through a data tables
    Given I have a data table

    | Name      |Title      |
    | Hank      |Honk King  |
    | Hank Jr.  |Decoy      |
    | Hank Sr.  |Bartender  |

    Then I am able to print out the data
