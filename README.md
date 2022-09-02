# WS2812b or Neopixel Driver
## An implementation of NeoPxl driver 
Here I used seperate clock divider module to drive a counter process because it was causing Negative Time Slack.
![schmatics](image.png)


## Pin Layout
* Dout -> AR[0]
* enable -> SW0
* clk  -> H16 Pin from Eth PHY

Source is a writeup by [anfractuosity](https://www.anfractuosity.com/projects/lightdriver/)
