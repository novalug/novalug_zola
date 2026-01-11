#import "@preview/minimal-presentation:0.7.0": *

//#set text(font: "Lato")
//#show math.equation: set text(font: "Lato Math")
#show raw: set text(font: "DejaVu Sans Mono")

#show: project.with(
  title: "Northern Virginia Linux Users Group",
  sub-title: "Meeting Agenda",
  author: "NoVaLUG",
  date: "01/17/2026",
  index-title: "This Page Unintentionally Left Blank",
  logo: image("../novalug_logo2.jpeg"),
  logo-light: image("../novalug_logo2.jpeg"),
  cover: image("../meetings_logo.png"),
  main-color: rgb("#E30512"),
  lang: "en",
)

== Meeting Logistics

#columns-content()[
  #figure(
    image("../novalug_logo3.jpeg", width: 100%),
  ) 
][
  - *YOU MUST SIGN-IN* https://links.novalug.org/signin
  - Many thanks to Solution Street for hosting us and supplying bagels and coffee.
  - This meeting is being recorded and streamed.
]

== New Comers

#columns-content()[
  #set text(2em)
  Raise your hand if this is your first NoVaLUG meeting.
][
  #figure(
    image("../novalug_logo4.jpeg", width: 100%),
  ) 
]

== Meeting Notes

Please put any meeting comments or notes or links to relevant items
in the `general` room/channel of our Matrix or Discord servers (they are bridged).

- Matrix: https://links.novalug.org/matrix
- Discord: https://links.novalug.org/discord

== Future Meetings

If you want to know about our future meetings:
- https://novalug.org/meetings

Getting meeting updates over:
- RSS
- webcal
- ical
- Mobilizon
- fedimoose (e.g., Mastodon)
- or type *`!meeting`* into our Matrix or Discord server.

== Call for Presentations

- Do you have a Linux or FOSS related topic you want to share?
- Length: from 15 minutes to 1.5 hours.
- Scope: beginner to advanced, we take it all!
- Polish: any shine of your choice

See Andy or Matt after the meeting to volunteer.

== Upcoming Presentations

#table(
  columns: 2,
  fill: (x, y) => if calc.odd(y) { gray.lighten(80%) },
  [Date], [Topic],
  [21 February], [NuShell - A Different Type of Shell],
  [21 March], [InstallFest for Windows 11 Refugees],
)

We meet even if there is no keynote.

== Participate in NoVaLug Between Meetings

- Mailing List: https://links.novalug.org/list
- Fedimoose (aka Mastodon). If you don't have a fediverse account, you can create one on our server: https://links.novalug.org/fedimoose
- Matrix and Discord (they are bridged):
  - Matrix: https://links.novalug.org/matrix
  - Discord: https://links.novalug.org/discord
  - WE HAVE BOTS! type *`!help`*

== Tech News You Can Use

#columns-content()[
  #figure(
    image("../tech_news_logo.png", width: 100%),
  ) 
][
  Let's review the latest tech news at https://novalug.org/news
]

== Key Note
#columns-content()[
  #figure(
    image("../meetings_logo.png", width: 100%),
  ) 
][
  #set text(2em)
  Make Brian Lunduke Angry, Learn to Program in Rust.  
]
