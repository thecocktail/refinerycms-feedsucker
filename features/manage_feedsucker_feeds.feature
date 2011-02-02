@feedsucker_feeds
Feature: Feedsucker Feeds
  In order to have feedsucker_feeds on my website
  As an administrator
  I want to manage feedsucker_feeds

  Background:
    Given I am a logged in refinery user
    And I have no feedsucker_feeds

  @feedsucker_feeds-list @list
  Scenario: Feedsucker Feeds List
   Given I have feedsucker_feeds titled UniqueTitleOne, UniqueTitleTwo
   When I go to the list of feedsucker_feeds
   Then I should see "UniqueTitleOne"
   And I should see "UniqueTitleTwo"

  @feedsucker_feeds-valid @valid
  Scenario: Create Valid Feedsucker Feed
    When I go to the list of feedsucker_feeds
    And I follow "Add New Feedsucker Feed"
    And I fill in "Title" with "This is a test of the first string field"
    And I press "Save"
    Then I should see "'This is a test of the first string field' was successfully added."
    And I should have 1 feedsucker_feed

  @feedsucker_feeds-invalid @invalid
  Scenario: Create Invalid Feedsucker Feed (without title)
    When I go to the list of feedsucker_feeds
    And I follow "Add New Feedsucker Feed"
    And I press "Save"
    Then I should see "Title can't be blank"
    And I should have 0 feedsucker_feeds

  @feedsucker_feeds-edit @edit
  Scenario: Edit Existing Feedsucker Feed
    Given I have feedsucker_feeds titled "A title"
    When I go to the list of feedsucker_feeds
    And I follow "Edit this feedsucker_feed" within ".actions"
    Then I fill in "Title" with "A different title"
    And I press "Save"
    Then I should see "'A different title' was successfully updated."
    And I should be on the list of feedsucker_feeds
    And I should not see "A title"

  @feedsucker_feeds-duplicate @duplicate
  Scenario: Create Duplicate Feedsucker Feed
    Given I only have feedsucker_feeds titled UniqueTitleOne, UniqueTitleTwo
    When I go to the list of feedsucker_feeds
    And I follow "Add New Feedsucker Feed"
    And I fill in "Title" with "UniqueTitleTwo"
    And I press "Save"
    Then I should see "There were problems"
    And I should have 2 feedsucker_feeds

  @feedsucker_feeds-delete @delete
  Scenario: Delete Feedsucker Feed
    Given I only have feedsucker_feeds titled UniqueTitleOne
    When I go to the list of feedsucker_feeds
    And I follow "Remove this feedsucker feed forever"
    Then I should see "'UniqueTitleOne' was successfully removed."
    And I should have 0 feedsucker_feeds
 