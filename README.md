<h1 align="center">Eye-Mail
<a href="#" target="_blank"><img src="https://github.com/mitmelon/eye-mail/assets/55149512/c4f67659-a5c6-441e-b7d6-59b6bd47a404" alt="Eye-Mail - Advanced REST API email and sms security system that protects emails and sms inbox from spam and cyber threats. Perform email &amp; sms grouping, notifications and other interesting features."></a></h1>
<div align="center">
<a href="https://t.me/+7jfbiGKhn55iODlk">Join Telegram</a>
<a href="https://twitter.com/manomitehq" ><img src="https://img.shields.io/twitter/follow/manomitehq.svg?style=social" /> </a>
<br>

<i>Intelligent email and sms security system that protects inboxes from spam and cyber threats. Perform email &amp; sms grouping, notifications and other interesting features.</i>

<a href="https://github.com/mitmelon/eye-mail/stargazers"><img src="https://img.shields.io/github/stars/mitmelon/eye-mail" alt="Stars Badge"/></a>
<a href="https://github.com/mitmelon/eye-mail/network/members"><img src="https://img.shields.io/github/forks/mitmelon/eye-mail" alt="Forks Badge"/></a>
<a href="https://github.com/mitmelon/eye-mail/pulls"><img src="https://img.shields.io/github/issues-pr/mitmelon/eye-mail" alt="Pull Requests Badge"/></a>
<a href="https://github.com/mitmelon/eye-mail/issues"><img src="https://img.shields.io/github/issues/mitmelon/eye-mail" alt="Issues Badge"/></a>
<a href="https://github.com/mitmelon/eye-mail/graphs/contributors"><img alt="GitHub contributors" src="https://img.shields.io/github/contributors/mitmelon/eye-mail?color=2b9348"></a>
<a href="https://github.com/mitmelon/eye-mail/blob/master/LICENSE"><img src="https://img.shields.io/github/license/mitmelon/eye-mail?color=2b9348" alt="License Badge"/></a> [![Total Downloads](http://poser.pugx.org/mitmelon/eye-mail/downloads)](https://packagist.org/packages/mitmelon/eye-mail)

<i>Loved the project? Please consider [donating](https://paypal.me/mitmelon) to help it improve!</i>

</div>

<p>Your email and sms inbox is your bank account and identity. You should keep your inboxes safe by all means because it could leak all your confidential informations to hackers or compromise all your accounts linked to the email or phone number.</p>

<p>Eye-mail does not read or disclose your messages to anyone as you are in charge. Your privacy is protected. If you are using the backup feature, all your messages are encrypted using your offline private key before transfering to the backup cloud </p>

### Todo Features:

  - [ ] Inspects outgoing and incoming mails for cyber attacks
  - [ ] Blocks vulnerable messages and quarantine them for inspections
  - [ ] Inspect mail attachments and blocks vulnerable files
  - [ ] Provides useful insights on total blocked, total allowed on daily, weekly and yearly bases
  - [ ] Group messages based on their categories types
  - [ ] Inspect spam inbox for false positive messages and send them to main inbox
  - [ ] Sends all mail notifications through push, sms, whatsapp and telegram [You can also implement your own notification module]
  - [ ] Blocks all phishing links and messages
  - [ ] Add recaptrics (recaptcha) for blocking bots
  - [ ] Add holiday days off (breaktime) - During this days messages will not be allowed entry if enabled
  - [ ] Add custom filters for allowing specific types of messages only
  - [ ] Clean inboxes from unwanted messages and junks
  - [ ] Block illegal mail trackings [privacy protections]
  - [ ] Add encrypted vaults - [Keep highly confidential informations encrypted in your email vault and only decrypt it back with your offline keys.]
  - [ ] Proactively monitor your email address and phone number for malicious use or compromise and notify you immediately via your communication module
  - [ ] Add integrity check on all messages for alteration detections
  - [ ] Backup all your email inboxes and sms - Default backup service is [Pangea, AWS and Digitalocean]
  - [ ] Easily export all or some of your emails to spreadsheets, pdf or image


## Installing Eye-mail

<h3>Stage 1</h3>

Before you can use or install Eye-mail, make sure you have this softwares installed on your system and configure it for production use.

|    Softwares                                                 | Version | Installation                                              |
|--------------------------------------------------------------|---------|---------------------------------------------------------- |
| MongoDB                                                      | Latest  | [MongoDB ](https://www.mongodb.com/try/download/community)|
| RabbitMQ                                                     | Latest  | [RabbitMQ ](https://www.rabbitmq.com/download.html)       |
| Redis                                                        | Latest  | [Redis ](https://redis.io/download/)                      |
| Clam Antivirus                                               | Latest  | [Clamav ](https://www.clamav.net/downloads)               |


<h3>Stage 2</h3>

You must choose a version that fits the requirements of your project. The differences between the requirements for the available versions of Eye-mail are briefly highlighted below.

|                                                              | PHP     | Support                  |
|--------------------------------------------------------------|---------|--------------------------|
| Eye-mail 1.0 and newer                                       | 8.1.0   | :heavy_check_mark: Active|

Note: Eye-mail 1.0.x works on PHP equal or greater than 8.1.

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
- Backup Variables

### Commercial Support

If your company requires support for a new feature or technical support, [Contact Manomite](https://manomite.net/contact) to inquire about commercial support options.

## Using Eye-mail in Your Project

Check out the [documentation](https://eyemail.manomite.net/docs). Eye-mail API is designed for simplicity.

Please note that Eye-mail contain the update module which automatically updates Eye-mail packages and modules when its available. You can deactivate this settings from the config or from API.

# Changelog

All notable changes to this project will be documented here.

## Contribute

Contributions are always welcome!

## License

MIT License
