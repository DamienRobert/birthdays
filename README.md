# birthdays

* [Homepage](https://github.com/DamienRobert/birthdays#readme)
* [Gems]("https://rubygems.org/gems/birthdays)
* [Issues](https://github.com/DamienRobert/birthdays/issues)
* [Documentation](http://rubydoc.info/gems/birthdays/frames)
* [Email](mailto:Damien.Olivier.Robert+gems at gmail.com)

## Description

Show the birthdays in a time period so you don't forget them!

## Features

Use a wrapper around Chronic so that the time specification is quite
powerful.

## Examples

By default use the file ~/.birthdays.yaml, that you can fill like:

    "Father's Day": "3rd Sunday in June"
    "Christmas": "25 December"
    "New Year": "01 January"
    "John Doe": 1970-01-01

Then to see the birthdays for next week just use

    birthdays 'now..in 7 days'

## Install

    $ gem install birthdays

## Synopsis

    $ birthdays time..period

## Copyright

Copyright © 2015 Damien Robert

MIT License. See {file:LICENSE.txt} for details.
