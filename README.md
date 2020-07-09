# birthdays

* [Homepage](https://github.com/DamienRobert/birthdays#readme)
* [Issues](https://github.com/DamienRobert/birthdays/issues)
* [Documentation](http://rubydoc.info/gems/birthdays)
* [Email](mailto:Damien.Olivier.Robert+gems@gmail.com)

[![Gem Version](https://img.shields.io/gem/v/birthdays.svg)](https://rubygems.org/gems/birthdays)
[![Build Status](https://travis-ci.org/DamienRobert/birthdays.svg?branch=master)](https://travis-ci.org/DamienRobert/birthdays)

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

    $ birthdays 'now..in 7 days'

By default it uses the current day. We can also specify several ranges:

    $ birthdays '2020-01-01'
    On 2020-01-01 12:00:00 +0100, the birthdays are
    - New Year (born 2021-01-01, -1y)
    - John Doe (born 1970-01-01, 50y)

    $ birthdays '2020-01-01..2020-02-01' '2020-06-01..2020-08'
    On (2020-01-01 12:00:00 +0100..2020-02-01 12:00:00 +0100), the birthdays are
    - New Year (born 2021-01-01, -1y)
    - John Doe (born 1970-01-01, 50y)
    On (2020-06-01 12:00:00 +0200..2020-08-16 12:00:00 +0200), the birthdays are
    - Father's Day (born 2021-06-20, -1y)

Or query for the age instead:

    $ birthdays --age 2020-01-01 2030-01
    On 2020-01-01 12:00:00 +0100, the ages are
    - Father's Day (born 2021-06-20, -2y) [-46177200 secs]
    - Christmas (born 2020-12-25, -1y) [-30888000 secs]
    - New Year (born 2021-01-01, -1y) [-31492800 secs]
    - John Doe (born 1970-01-01, 50y) [50 yrs 1 day]
    On 2030-01-16 12:00:00 +0100, the ages are
    - Father's Day (born 2021-06-20, 9y) [104 mos 12 days 13 hrs]
    - Christmas (born 2020-12-25, 10y) [110 mos 9 days 12 hrs]
    - New Year (born 2021-01-01, 9y) [110 mos 2 days 12 hrs]
    - John Doe (born 1970-01-01, 60y) [731 mos 12 hrs]

## Install

    ~~~ sh
    $ gem install birthdays
    ~~~

## Copyright

Copyright © 2015–2020 Damien Robert

MIT License. See [`LICENSE.txt`](LICENSE.txt) for details.
