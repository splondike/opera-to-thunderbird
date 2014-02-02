This ruby gem provides a simple commandline toot to convert Opera's contacts.adr to Thunderbird importable .ldif.

Quick start
===========

Install it with:

```bash
gem install specific_install
gem specific_install splondike/opera-to-thunderbird
```

Uninstall it with:
```bash
gem uninstall opera-to-thunderbird
```

```
Usage: opera-to-thunderbird <input contacts file> <output-file.vcard>
e.g. opera-to-thunderbird contacts.adr contacts.vcf
```

Development
===========

Clone the repository, ensure you have ruby's gem command installed, as well as bundler:

```bash
gem install bundler
cd <cloned repo>
bundle install
```

You're good to go. You can run it using:

```bash
ruby -Ilib bin/opera-to-thunderbird
```
