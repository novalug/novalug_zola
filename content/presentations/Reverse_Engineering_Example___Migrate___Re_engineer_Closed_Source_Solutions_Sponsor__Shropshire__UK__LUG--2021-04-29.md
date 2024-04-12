+++
# this is an auto-converted file
title = "Reverse Engineering Example — Migrate & Re-engineer Closed Source Solutions Sponsor: Shropshire (UK) LUG"
date = "2021-04-29"
+++
Presenter(s): Heather Lomond

Materials:
* [Slides](/presentation_materials/Reverse_Engineering_Example___Migrate___Re_engineer_Closed_Source_Solutions_Sponsor__Shropshire__UK__LUG--2021-04-29/longmynd.heather.2021.04.29.pdf)

Derived from closed source Minitouner, Longmynd is an open source an application that "talks" via USB to a DVB-S/S2 demodulator. It is mainly used by the Amateur Television Community to receive Transmissions of video pictures.

The Longmynd re-write is a transmitter solution to run alongside a Portsdown,a Raspberry Pi based Transmitter solution for DVB-S/S2 pictures. This allows for both TX and RX of video pictures on one, Raspberry Pi box. Hence, the Longmynd Receiver was born. The biggest challenge was that the specification and documentation of the DVB-S/S2 hardware (the Serrit NIM) was only available on an NDA basis and the USB interface between the hardware and the Windows PC (an FTDI board) contained custom code.

The presentation will tell the tale of some reverse engineering, trial and error, lucky guesses and hours of analysis of many GBytes of data which finally led to the fully functional, Longmynd Receiver on the RPI. The implementation has been used as the software basis for three new receivers, is fully Open Source (available on GitHUB), has been widely adopted in the ATV community. Longmynd is a two, significant, awards for innovation in the Amateur radio world.
