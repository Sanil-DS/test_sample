Feature: Checkout Orchestrator

  Scenario: Verify that User is able to login
    Given we are on the login page
    When user is giving "<phoneNumber>" and "<OTP>"
    Then User is able to login

  Background:
    Given we are on login page

  Scenario Outline: Verify that user is able to login with different mobile and OTPS

    When user is giving "<phoneNumber>" and "<OTP>"
    Then User is able to login
    Examples:
      | phoneNumber | OTP |
      | 9861234567  | 1234  |
      | 1234567890  | 0987  |
