# birthdays

* [Homepage](https://github.com/DamienRobert/birthdays#readme)
* [Issues](https://github.com/DamienRobert/birthdays/issues)
* [Documentation](http://rubydoc.info/gems/birthdays)
* [Email](mailto:Damien.Olivier.Robert+gems at gmail.com)

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

    birthdays 'now..in 7 days'

## Install

    $ gem install birthdays

## Synopsis

    $ birthdays time..period

## Copyright

Copyright © 2015–2016 Damien Robert

MIT License. See [LICENSE.txt](./LICENSE.txt) for details.
