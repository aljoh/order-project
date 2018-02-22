Feature: Visit Homepage

  Background:
    Given the following orders exists
      | number     | customer | area  | units | order_date | note |
      | KO02030303 | GBG Stad | VH    | 7     | 2018-02-01 | ASAP |
      | KO02020202 | GBG Stad | ÖH    | 4     | 2018-02-03 | ASAP |
      | KO02040404 | GBG Stad | AFH   | 55    | 2018-02-10 | ASAP |

  Scenario: User visits homepage
    Given I visit the landing page
    And show me the page
