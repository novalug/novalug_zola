+++
title = "Matrix Chat"
weight = 4
+++

Matrix is an open source, decentralized chat protocol with an emphasis on privacy.
The [NoVaLUG matrix server](https://matrix.novalug.org) has some bots and
is bridged to the [NoVaLUG Discord server](https://links.novalug.org/discord).


<!-- more -->

## Obtaining an Account

Accounts are available to all NoVaLUG participants. When registering, use the registration
token `novalug!!novalug`. To register, go [here](https://chat.matrix.novalug.org).

## Federation

The NoVaLUG matrix server does not openly federate with other matrix servers to reduce
server load and to avoid harmful content. This may change as the controls for combatting
harmful content in Matrix become better.

If you have your own personal Matrix server, contact us, and we'll add it to the federation allow list. 

## Bot Commands

Our Matrix server has several custom bots. The commands are as follows:

- `!help` - Show this help message.
- `!meeting` - Display information about the next NoVaLUG meeting.
- `!meetings` - Get information about all upcoming NoVaLUG meetings.
- `!excuse` - Show an excuse from BOFH.
- `!ping` - Ping requests.
- `!echo <message>` - Echo the message back to you.
- `!xkcd` - Get an XKCD comic.
- `!ud <term>` - Look up a term in the Urban Dictionary.
- `!spongebob` - Put last message in alternating caps.

## Clients

There are many clients for Matrix, including desktop and mobile. Go here for [a list of Matrix clients](https://matrix.org/ecosystem/clients).
For mobile apps, [Element X](https://matrix.org/ecosystem/clients/element-x/) is the newer of the apps.

Some clients require the "homeserver" to be configured explicitly. Use `synapse.matrix.novalug.org` when this is needed.


{{ gallery(paths=["screenshots/element_desktop.png", "screenshots/fluffy_chat.png", "screenshots/iamb.gif"]) }}

{{ gallery(paths=["screenshots/element_x.PNG", "screenshots/element_x_2.PNG"]) }}
