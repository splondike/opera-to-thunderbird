This ruby gem provides a simple Opera contacts file to Thunderbird compatible .ldif converter.

Quick start
===========

Install it with:
gem install specific_install
gem specific_install splondike/opera-to-thunderbird

Uninstall it with:
gem uninstall opera-to-thunderbird

Usage: opera-to-thunderbird <input contacts file> <output-file.vcard>
e.g. opera-to-thunderbird contacts.adr contacts.vcf

Development
===========

Clone the repository, ensure you have ruby's gem command installed, as well as bundler:

gem install bundler
cd <cloned repo>
bundle install

You're good to go. You can run it using:

ruby -Ilib bin/opera-to-thunderbird
