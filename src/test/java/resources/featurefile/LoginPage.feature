@regression
Feature: Log in Test
  As user I want to Log in into Nop commerce website

  Background: I am on homepage
    And I click on Log in link

  @smoke
  Scenario: verify That User Should LogIn Successfully With Valid Credentials
    When I Enter email 'Diuesh5@gmail.com'
    And  I Enter password '123Divuesh'
    And I Click on Log in Button
    And I Verify that LogOut link is display 'Log out'
    Then Login is successfully

  @sanity
  Scenario: Verify That User Should LogOut Successfully
    When I Enter Email 'Diuesh5@gmail.com'
    And  I Enter Password '123Divuesh'
    And I Click on Log in Button
    And I Click on log out link
    And I Verify that LogIn Link Display 'Log in'
    Then Log out is successfully

