1. Start an ssh session with the pi `ssh scribe@scribe.local`
2. Run `lpinfo -v` and look for a line like `direct usb://HP/LaserJet%201020?serial=…`
3. Copy the URL part starting with `usb://…`, this will be used as the connection URI in step 6 below
2. Ensure the Raspberry Pi is running and then go to http://scribe.local:631 (you can replace the scribe.local domain with the actual IP address)
2. Ensure you can see the CUPS dashboard
3. Don't do anything there and go to https://scribe.local:631/admin (notice https instead of http)
4. You will need to enter your system login credentials (username and password)
5. Click on "Add printer" and select "HP LaserJet 1020" under "Local Printers"
6. Use the connection URI you got from step 3 above
7. Use "hp1020" as Printer Name
8. Use "HP LaserJet 1020" as Description
9. Use "Sukirtan" for Location
10. Enable the "Share This Printer" checkbox
11. Make "HP"
12. Model "HP LaserJet 1020 Foomatic/foo2zjs-z1"
