@ajio @prod @loggedInUser
Feature: Ajio B2C Scenarios


#  CONFIG=./configs/ajio_eat_local_config.properties TAG="@validateCart" PLATFORM=web ./gradlew run
  @android @web @validateCart
  Scenario: As a guest user, I should be able to apply a coupon to a "qasics" product with size "UK 10" in my shopping bag
    Given I login to ajio as "ajioTestUser"
    And I search for for "heels" product
    When I wishlist the 7th product and move it to cart
    Then I remove the product from cart and verify cart is empty by relog