<h1 align="center">Eye-Mail
<a href="#" target="_blank"><img src="https://api.producthunt.com/widgets/embed-image/v1/featured.svg?post_id=277987&theme=light" alt="Eye-Mail - Advanced REST API email and sms security system that protects emails and sms inbox from spam and cyber threats. Perform email &amp; sms grouping, notifications and other interesting features."></a></h1>
<div align="center">
<a href="https://t.me/+7jfbiGKhn55iODlk">Join Telegram</a>
<a href="https://twitter.com/manomitehq" ><img src="https://img.shields.io/twitter/follow/manomitehq.svg?style=social" /> </a>
<br>

<i>Advanced REST API email and sms security system that protects emails and sms inbox from spam and cyber threats. Perform email &amp; sms grouping, notifications and other interesting features.</i>

<a href="https://github.com/mitmelon/eye-mail/stargazers"><img src="https://img.shields.io/github/stars/mitmelon/eye-mail" alt="Stars Badge"/></a>
<a href="https://github.com/mitmelon/eye-mail/network/members"><img src="https://img.shields.io/github/forks/mitmelon/eye-mail" alt="Forks Badge"/></a>
<a href="https://github.com/mitmelon/eye-mail/pulls"><img src="https://img.shields.io/github/issues-pr/mitmelon/eye-mail" alt="Pull Requests Badge"/></a>
<a href="https://github.com/mitmelon/eye-mail/issues"><img src="https://img.shields.io/github/issues/mitmelon/eye-mail" alt="Issues Badge"/></a>
<a href="https://github.com/mitmelon/eye-mail/graphs/contributors"><img alt="GitHub contributors" src="https://img.shields.io/github/contributors/mitmelon/eye-mail?color=2b9348"></a>
<a href="https://github.com/mitmelon/eye-mail/blob/master/LICENSE"><img src="https://img.shields.io/github/license/mitmelon/eye-mail?color=2b9348" alt="License Badge"/></a>

<i>Loved the project? Please consider [donating](https://paypal.me/mitmelon) to help it improve!</i>

</div>

<p>Your email and sms inbox is your bank and identity. You should keep your email and mobile sms safe by all means because it could leak all your confidential informations to hackers or compromise all your accounts linked to the email or phone number.</p>
<p>Many times, your emails are filled with many junks and unwanted emails, you can now remove them and keep your emails clean automatically without stressing you.</p>
<p>Eye-mail does not read or disclose your messages to anyone as you are in charge. Your privacy is protected. If you are using the backup feature, all your messages are encrypted using your offline private key before transfering to the backup cloud </p>

[![Total Downloads](http://poser.pugx.org/mitmelon/eye-mail/downloads)](https://packagist.org/packages/mitmelon/eye-mail) [![License](http://poser.pugx.org/mitmelon/eye-mail/license)](https://packagist.org/packages/mitmelon/eye-mail) [![PHP Version Require](http://poser.pugx.org/mitmelon/compress/require/php)](https://packagist.org/packages/mitmelon/eye-mail)

### Todo Features:

  - [ ] : white_large_square: Inspects outgoing and incoming mails for cyber attacks
  - [ ] : white_large_square: Blocks vulnerable messages and quarantine them for inspections
  - [ ] : white_large_square: Inspect mail attachments and blocks vulnerable files
  - [ ] : white_large_square: Provides useful insights on total blocked, total allowed on daily, weekly and yearly bases
  - [ ] : white_large_square: Group messages based on their categories types
  - [ ] : white_large_square: Inspect spam inbox for false positive messages and send them to main inbox
  - [ ] : white_large_square: Sends incoming mail notifications and others through push, sms, whatsapp and telegram [You can also implement your own notification module]
  - [ ] : white_large_square: Blocks all phishing links and messages
  - [ ] : white_large_square: Add recaptrics (recaptcha) for blocking bots
  - [ ] : white_large_square: Add holiday days off (breaktime) - During this days messages will not be allowed entry if enabled
  - [ ] : white_large_square: Add custom filters for allowing specific types of messages only
  - [ ] : white_large_square: Clean inboxes from unwanted messages and junks
  - [ ] : white_large_square: Block illegal messages containing embeded trackings [privacy protections]
  - [ ] : white_large_square: Add encrypted vaults - [Keep highly confidential informations encrypted in your email vault and only decrypt it back with your offline keys.]
  - [ ] : white_large_square: Proactively monitor your email address and phone number for malicious use or compromise and notify you immediately via your communication module
  - [ ] : white_large_square: Add integrity check on all messages for alteration detections
  - [ ] : white_large_square: Backup all your email inboxes and sms - Default backup service is [Pangea, AWS and Digitalocean]
  - [ ] : white_large_square: Easily export all or some of your emails to spreadsheets, pdf or image


## Installing Eye-mail

- Stage One

Before you can use or install Eye-mail, make sure you must have installed this software below on your system and configure it for production use.

|    Softwares                                                 | Version | Installation                                              |
|--------------------------------------------------------------|---------|---------------------------------------------------------- |
| MongoDB                                                      | Latest  | [MongoDB ](https://www.mongodb.com/try/download/community)|
| RabbitMQ                                                     | Latest  | [RabbitMQ ](https://www.rabbitmq.com/download.html)       |
| Redis                                                        | Latest  | [Redis ](https://redis.io/download/)                      |
| Clam Antivirus                                               | Latest  | [Clamav ](https://www.clamav.net/downloads)               |


- Stage 2

You must choose a version that fits the requirements of your project. The differences between the requirements for the available versions of Eye-mail are briefly highlighted below.

|                                                              | PHP     | Support                  |
|--------------------------------------------------------------|---------|--------------------------|
| Eye-mail 1.0 and newer                                       | > 8.1.0 | heavy_check_mark: Active |

Note: Eye-mail 1.0.x works on PHP greater than 8.1.

Once you have the prerequisites installed, install Eye-mail through

    git clone https://github.com/mitmelon/eye-mail

Open the [Config](settings/config.env) and configure settings such as;

- MongoDB connection query
- Redis connection
- RabbitMQ connection
- Clamav connection
- Set environment to => production
- Security Variables
- System Variables

### Commercial Support

If your company requires support for a new feature or technical updates, [contact Manomite](https://manomite.net/contact) to inquire about commercial support options.

## Using Eye-mail in Your Project

Check out the [documentation](https://eyemail.manomite.net/docs). Eye-mail API is designed for simplicity:

Please note that Eye-mail contain the update module which automatically updates Eye-mail packages and modules when its available. You can deactivate this settings from the config file.

# Changelog

All notable changes to this project will be documented here.

## Contribute

Contributions are always welcome!

## License

MIT License
