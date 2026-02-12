#let meeting_date = "21 February 2026"
#let background_color = black.lighten(7%)
#show link: set text(fill: yellow.darken(30%))
#show link: underline
#show raw: it => {
  if not it.block {
    // Style for single backticks
    text(
      font: "Source Code Pro", // Change to your preferred mono font
      fill: green,   // A nice reddish color
      it
    )
  } else {
    // Keep blocks looking normal (or apply different styles)
    it
  }
}

#set page(
  width: 338.67mm, height: 190.6mm,
  fill: background_color, margin: (left: 2%, right: 2%),
)

#set align(center + horizon)
#set text(fill: rgb(255, 191, 0), font: "Aldrich", size:24pt)

#image("../meetings_logo.png", height: 80%)
#linebreak()
NoVaLUG - #meeting_date
#pagebreak()
#set page(
  width: 338.67mm, height: 190.5mm,
  fill: background_color, margin: (left: 2%, right: 2%, top: 2%, bottom: 2%),
  header: [
    #set align(right + horizon)
    #set text(size: 20pt, fill: white, font: "Aldrich")
    #rect(width: 100%, stroke: background_color) 
      #stack(
        dir: ltr,
        align(left)[#meeting_date],
        align(right)[Northern Virginia Linux Users Group],
        rect(width: 16pt, stroke: background_color),
        image("../novalug_logo2.jpeg", height: 400%),
      )
  ]
)
#set align(left)
#set text(fill: rgb(255, 191, 0), font: "IBM Plex Sans", size:26pt)
#show link: it => underline(text(fill: blue)[#it])
#show heading: set text(font: "Aldrich")
#show heading: it => {
  underline(it.body) 
}

#columns(2, gutter: 15pt)[
  #image("../novalug_logo3.jpeg")
  #colbreak()
  = Meeting Logistics
  - *YOU MUST SIGN-IN*
    - #link("https://links.novalug.org/signin")[https://links.novalug.org/signin]
  - Many thanks to Solution Street for hosting us and supplying bagels and coffee.
  - This meeting is being recorded and streamed.
]

#pagebreak()

= We Represent Our Selves

We stream our meetings because there are people in NoVaLUG who cannot be physically present.
We attend NoVaLUG as individuals because we are Linux and FOSS enthusiasts.

However, this hasn't stopped certain Internet provocateurs (_cough cough Bryan Lunduke cough cough_)
from misstating that we represent our employers, governments, religion, etc...

So unless otherwise stated, *we all represent ourselves and nobody else*.

#pagebreak()

#columns(2, gutter: 15pt)[
  = New Comers

  Raise your hand if this is your first NoVaLUG meeting.
  #colbreak()
  #image("../novalug_logo4.jpeg")

]

#pagebreak()

= Meeting Notes

Please put meeting comments or notes or links to relevant items in the `general` meeting room/channel of our Matrix or Discord servers (they are bridged).

- Matrix: #link("https://links.novalug.org/matrix")[https://links.novalug.org/matrix]
- Discord: #link("https://links.novalug.org/discord")[https://links.novalug.org/discord]

#pagebreak()

= Future Meetings

If you want to know about our future meetings:
- #link("https://novalug.org/meetings")[https://novalug.org/meetings]

Get meeting updates over:
- RSS
- WebCal
- iCal
- Mobilizon
- fedimoose (aka Mastodon)
- or type `!meeting` into Matrix or Discord.

#pagebreak()

= Upcoming Meetings & Presentations

#table(
  columns: 2,
  fill: (x, y) => 
    if y == 0 { blue.darken(50%) }
    else if calc.even(y) {gray.darken(75%)},
  inset: 10pt,
  [Date], [Topic],
  [21 February], [NuShell - A Different Type of Shell],
  [21 March], [InstallFest for Windows 11 Refugees],
  [18 April], [Your Presentation Here],
)

#pagebreak()

= Call For Presentations
#linebreak()
Do you have a Linux or Free/Open Source related topic you want to share?
#linebreak()
#linebreak()
Presentations can be:
- length: from 15 minutes to 90 minutes
- scope: beginner to advanced (we take it all!)
- polish: any shine of your choice

#linebreak()
See one of the organizers after the meeting to volunteer.

#pagebreak()
= Participate in NoVaLUG Between Meetings

- Mailing List: https://links.novalug.org/list
- Fedimoose (aka Mastodon). If you don't have a fediverse account, you can create one on our server: https://links.novalug.org/fedimoose
- Matrix and Discord (they are bridged):
  - Matrix: https://links.novalug.org/matrix
  - Discord: https://links.novalug.org/discord
  - WE HAVE BOTS! type *`!help`*

#pagebreak()
= Jobs

Ghost jobs are a thing.

Help a techie out, post real jobs in `#jobs` on:
  - Matrix: https://links.novalug.org/matrix
  - Discord: https://links.novalug.org/discord

#pagebreak()

#columns(2, gutter: 15pt)[
  #image("../tech_news_logo.png")
  #colbreak()
  Let's review the latest tech news at https://novalug.org/news
]

#pagebreak()

#align(center)[
  KeyNote:

  = NuShell

  *A Different Type of Shell*
  #linebreak()
  _Presented by Cali_

  A description of the presentation here.
  The goal of this project is to take the Unix philosophy of shells,
  where pipes connect simple commands together, and bring it to the modern style of development.
  Thus, rather than being either a shell, or a programming language, Nushell connects
  both by bringing a rich programming language and a full-featured shell together into one package.

]
