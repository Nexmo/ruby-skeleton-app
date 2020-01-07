# Nexmo Ruby Skeleton Application

Sinatra application to test and debug your Nexmo credentials and environment. Utilize this application to test that your API credentials are in working order and to examine the event webhook data you receive when API requests are received by Nexmo from your account.

* [Requirements](#requirements)
* [Installation and Usage](#installation-and-usage)
  * [API Credentials](#api-credentials)
  * [Using ngrok](#using-ngrok)
* [Contributing](#contributing)
* [License](#license)

## Requirements

This application requires that you have the following installed locally:

* [Ruby](https://www.ruby-lang.org/en/)
* [Sinatra](http://sinatrarb.com/)
* [Sinatra Contrib Gem](https://rubygems.org/gems/sinatra-contrib/)
* [Nexmo Ruby Gem](https://rubygems.org/gems/nexmo)

Additionally, in order to test your Nexmo account, you must have a Nexmo account. You can create a Nexmo account for free or manage your Nexmo account details at the [Nexmo Dashboard](https://dashboard.nexmo.com).

## Installation and Usage

You can run this application by first cloning this repository locally:

```bash
git clone git@github.com:Nexmo/ruby-skeleton-app.git
```

Alternatively, you could also first fork your own copy of this repository to your GitHub profile and then clone your own forked copy.

Once you have downloaded a local copy, change into the directory of the application in your terminal. You can now set up the application for your Nexmo account.

### API Credentials

In order to test your API credentials, rename the provided `.env.sample` file to `.env` and supply the values for the following environment variable keys:

* NEXMO_API_KEY=
* NEXMO_API_SECRET=
* FROM_NUMBER=
* TO_NUMBER=

The `NEXMO_API_KEY` and `NEXMO_API_SECRET` are to be provided with your API key and secret, respectively. The `FROM_NUMBER` is the number you wish the test SMS message to originate from. For example, this could be your [Nexmo provisioned virtual phone number](https://developer.nexmo.com/numbers/overview). The `TO_NUMBER` is the number you wish to send the test SMS message to. This could be your own cell phone number.

As always, make sure to not commit your sensitive API credential data to any public version control. If you are using Git, you can add the `.env` file to your `.gitignore` file to ensure that it is not committed.

### Using ngrok

In order to test the incoming webhook data from Nexmo, the Nexmo API needs an externally accessible URL to send that data to. A commonly used service for development and testing is ngrok. The service will provide you with an externally available web address that creates a secure tunnel to your local environment. The [Nexmo Developer Platform](https://developer.nexmo.com/concepts/guides/testing-with-ngrok) has a guide to getting started with testing with ngrok. 

Once you have your ngrok URL, you can enter your [Nexmo Dashboard](https://dashboard.nexmo.com) and supply it as the `EVENT URL` for any Nexmo service that sends event data via a webhook. A good test case is creating a Voice application and providing the ngrok URL in the following format as the event url: 

`#{ngrok URL}/webhooks/event`

You can then call your Nexmo Voice application, and with your skeleton application running you can observe the webhook data be received in real time for diagnosis of any issues and testing of your Nexmo account.

## Contributing

We ❤️ contributions from everyone! [Bug reports](https://github.com/Nexmo/ruby-skeleton-app/issues), [bug fixes](https://github.com/Nexmo/ruby-skeleton-app/pulls) and feedback on the application is always appreciated. Look at the [Contributor Guidelines](https://github.com/Nexmo/ruby-skeleton-app/blob/master/CONTRIBUTING.md) for more information and please follow the [GitHub Flow](https://guides.github.com/introduction/flow/index.html).

## License

This projet is under the [MIT License](LICENSE)