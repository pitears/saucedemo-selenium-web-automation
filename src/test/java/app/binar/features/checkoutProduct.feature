@checkout
Feature: Checkout

  @checkout
  Scenario Outline: As a user, I should be able to order and checkout multiple products
    Given user should be open "https://www.saucedemo.com/" in web browser
    When user input valid username "<username>" and valid password "<password>"
    And user click Add To Cart button on product
    And user do checkout
    Then verify checkout successfully
    And user take screenshot "user-checkout-successfully"

    Examples:
      | username                | password     |
      | standard_user           | secret_sauce |

