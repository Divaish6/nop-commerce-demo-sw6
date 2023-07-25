@regression
Feature: Register page Test
  As user I want to Register into Nop commerce website

  Background: I am on homepage
    And I click on Register link

  @smoke
  Scenario: verify User Should Navigate To Register Page Successfully
    When I Should see the Register Text 'Register'

  @sanity
  Scenario: verify That FirstName LastName Email Password And ConfirmPassword Fields Are Mandatory
    When I click on Register button
    And I Should see Firstname error message 'First name is required.'
    And I Should see Lastname error message 'Last name is required.'
    And I Should see Email error message 'Email is required.'
    And I Should see Password error message 'Password is required.'
    Then I Should see Confirm Password error message 'Password is required.'

  @regression
  Scenario: Verify That User Should Create Account Successfully
    When I select Gender 'female'
    And I Enter Firstname 'Diuesh'
    And I Enter Lastname 'Roman'
    And I Select Birth of day '06'
    And I Select Birth of month 'June'
    And I Select Birth of Year '1998'
    And I Enter Email 'Diuesh5@gmail.com'
    And I Enter Password '123Divuesh'
    And I Enter Confirm Password '123Divuesh'
    And I click on Register button
    And I click on Register button
    And I Should see the register created 'Your registration completed'
    Then Register is successfully

