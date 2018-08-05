## Responsibly extends Ruby's ENV with simple and predictable utilities.

[![Gem Version](https://badge.fury.io/rb/env-tweaks.svg)](https://badge.fury.io/rb/env-tweaks)
[![Build Status](https://travis-ci.org/yivo/env-tweaks.svg?branch=master)](https://travis-ci.org/yivo/env-tweaks)

## Current features

* `ENV.true?("VARIABLE")`
* `ENV.false?("VARIABLE")`

## Installing gem

Add to your Gemfile:
```ruby
gem "env-tweaks", "~> 1.0.0"
```

## Running tests

Install bundler:
```bash
gem install bundler
```

Install dependencies:
```bash
cd env-tweaks && bundle
```

Run tests:
```bash
cd env-tweaks && bundle exec rake test
```
