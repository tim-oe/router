# router

this to document setting up a custom SOHO router and firewall

hardware
- [router (bare bones 6 port vault )](https://protectli.com/vault-6-port/)
- [ssd](https://www.kingston.com/unitedstates/en/ssd/uv500-solid-state-drive)
- [memory](https://www.crucial.com/memory/ddr4/ct32g4sfd8266)

software
- [opnsense](https://opnsense.org/)


first check which version has been [tested](https://protectli.com/kb/how-to-install-opnsense-on-the-vault/) against the vault

follow the standard [install instructions](https://opnsense.org/users/get-started/)

NOTES:

for interweb access
- make sure to add dns servers to the dhcp settings at Services: DHCPv4: \[LAN\]
- make sure under interface settings Block private networks is unchecked

for enabling additional ports for local lan
- [configure lan bridge](https://docs.opnsense.org/manual/how-tos/lan_bridge.html)
- after step 4 make sure to enable and configure the new interface.


TODOs:
- additional [services](https://docs.opnsense.org/services.html)
- [wireless access point](https://www.ui.com/unifi/unifi-ap-ac-pro/)


