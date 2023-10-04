Feature: Login test

    This is a login test

    Scenario: Login with valid login credentials Chrome
    * configure driver = { type: 'chromedriver'}
    Given driver 'https://www.saucedemo.com/'
    And driver.dimensions = {x:0, y:0, width:600, height: 400}
    And input("//*[@id='user-name']","standard_user")
    And input("//*[@id='password']", "secret_sauce")
    When click("//*[@id='login-button']")
    Then match driver.title == 'Swag Labs'
    And match driver.url == 'https://www.saucedemo.com/inventory.html'
