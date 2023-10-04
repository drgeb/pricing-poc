Feature: WesternUnion Paypall Zoom Pricing Crawler
    Background:
        * def webURL = 'https://www.xoom.com/croatia/send-money'
        * def buttonId = "#freebutton"
        * def labelText = "Show Fees"
        * def browser = "chrome"
        * def type = "chromedriver"
        * def chromeOptions = { 'args': ['--disable-notifications',             '--disable-popup-blocking', '--enable-automation', '--start-maximized'] }
        * def driverConfig = { type: #(type), showDriverLog: true, addOptions: [ "--disable-save-password-bubble" ], webDriverSession: { desiredCapabilities: { 'goog:chromeOptions': '#(chromeOptions)' } } }
        * configure driver = driverConfig

    Scenario: Login
        Given driver webURL
        * clear('#sendAmount')
        * input('//*[@id="sendAmount"]', '100.00'+ Key.ENTER, 200)
        * def inputValue = value('#receiveAmount')
        * delay(3000)
        * print('Value of the input element: ' + inputValue)

        * print('Test complete')
        * driver.quit()
