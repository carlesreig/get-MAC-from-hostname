# get-MAC-from-hostname.bat

## Author
Carles Reig, https://twitter.com/carlesreig, http://www.carlesreig.com

## Windows batch script (cmd)
Simple windows batch script to get MAC phisical address from a hostname at local network. It can also get a MAC from an IP, but maybe you don't need this script to do so...

## How it works?
- Call this script, for example `get-MAC-from-hostname.bat` then type target hostname/IP.
- You could also pass hostname when calling this script, like `get-MAC-from-hostname.bat raspi`, where "raspi" is target hostname.

## What really does?
It simply does a `ping` to our hostname, then ask for `arp` table from that hostname/ip.

## License
Released under [GNU General Public License, version 2 (GPL-2.0)](http://opensource.org/licenses/GPL-2.0).
