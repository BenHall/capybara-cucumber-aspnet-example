Feature: Search Google
In order to find information
As a researcher
I want to search google
 
  Scenario:
    Given I visit "http://www.google.com/"
    When I enter a search for "asp.net"
    And I click the "Google Search" button
    Then I should see the first result "The Official Microsoft ASP.NET Site"