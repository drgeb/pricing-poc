Karate UI Demo

# Intro:

This is a POC and acts as a starting point for Dev and QA to start building UI tests.

# Requirements

The following tools and drivers are required:

* Java JDK 8 or higher
* [Chromedriver](https://chromedriver.chromium.org)
    (Here is the [Getting Started link](https://chromedriver.chromium.org/getting-started) for Chromedriver.)

Additional tools which are nice to have:

* [asdf](https://asdf-vm.com/)

## Recommendations

### * ChromeDriver

One can install Chromedriver manually and add this to the PATH but I have found easier on the MAC to just use brew.  To install chromium on mac via brew the command id:

```bash
brew install chromedriver
```

Once installed you can test it using the command:

```bash
chromedriver --version
```

If you tun into the security issue":
"chromedriver" can't be opened because Apple cannot check it for malicious software.":

Open System Preferences, then "Security & Privacy" and click on "Allow Anyway" to unblock the execution.

Attempt again to check the version, you might have to manually click on open to allow the first execution to take place.
The version I have tested with and ouput from the command above is:

```txt
ChromeDriver 104.0.5112.79 (3cf3e8c8a07d104b9e1260c910efb8f383285dc5-refs/branch-heads/5112@{#1307})
```

### * ASDF

I recommend to manually install asdf via git versus brew. Install the plugin for java and the java version. I have tested with corretto-8.332.08.1 but other versions should work.
If you also install the plugin for direnv then automatically when you cd into the project directory the .envrc or .env will be sourced and the right java version and tools defined in .tools_versions will automatically be setup in your PATH.

# How to run it

To run the test there is a helper script inside the scripts folder called rt.

To use this script some global environment variables must be set. A template for settings the vaules for these can be seen in ".envrc_template" file.
Copy the .envrc_template to .env and .envrc.

Modify the values accordingly for your environment in order to set the global variables needed for USER_TOTP_KEY, USER_EMAIL, USER_PASSWORD, and AGENT_SERVER_URL.

If you have asdf and direnv installed the activation of the values is automatically sourced for you. If not source the .envrc file with the new setiings to assign and import the variables.

run the test script by typing:

```bash
source .env
rkt
```
