# wifi-analyzer-cli
Linux console wi-fi analyzer based on iw and awk

Requirements
-----

The `iw` and `awk` utils must present in your Linux.

Usage
-----

Run `./wifi-analyzer-cli.sh $IFACE`, where `$IFACE` must be replaced with your wi-fi interface (*wlan0*, *wlp3s0*, etc.).

This script asks for root permission.

To quit analyzer just hit `ctrl+C`.

TODO
-----

  + Set refresh time as a parameter.
  + Shorten the script name.