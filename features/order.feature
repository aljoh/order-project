Feature: Visit Homepage

  Background:
    Given the following orders exists
      | number     | customer | area  | units | order_date | note |
      | KO02030303 | GBG Stad | VH    | 7     | 2018-02-01 | ASAP |
      | KO02020202 | GBG Stad | ÖH    | 4     | 2018-02-03 | ASAP |
      | KO02040404 | GBG Stad | AFH   | 55    | 2018-02-10 | ASAP |

  Scenario: User visits homepage
    Given I visit the landing page
    Then I should see "KO02030303"
    And I should see "KO02020202"
    And I should see "KO02040404"

  Scenario: User creates new order
    Given I visit the landing page
    And I fill in "Number" with "KO02050505"
    And I fill in "Customer" with "Varberg"
    And I fill in "Area" with "Varberg"
    And I fill in "Units" with "3"
    And I fill in "Order date" with "2018-02-05"
    And I fill in "Note" with "ASAP"
    And I click on "Create Order"
    And show me the page
    Then I should see "KO02050505"
    And I should see "Order created"
    And I should see "Arrived"
