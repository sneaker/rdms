Feature: See Documents
  Scenario: See own documents
    Given there is a User "a"
    And User "a" has 1 documents
    Then User "a" should see 1 document

  Scenario: See no other documents
    Given there is a User "a"
    And there is a User "b"
    And User "a" has 1 documents
    And User "b" has 0 documents
    Then User "b" should see 0 document
