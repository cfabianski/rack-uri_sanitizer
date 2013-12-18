# Rack::UriSanitizer

[![Build Status](https://travis-ci.org/cfabianski/rack-uri_sanitizer.png)](https://travis-ci.org/cfabianski/rack-uri_sanitizer)

Rack::URISanitizer is a Rack middleware which cleans up trailing `%` characters in request URI.
It will replace them with their encoded equivalent `%25`.

## Installation

Add this line to your application's Gemfile:

    gem 'rack-uri_sanitizer'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rack-uri_sanitizer

For Rails, add this to your `application.rb`:

    config.middleware.insert_before Rack::Runtime, Rack::URISanitizer

For Rack apps, add this to config.ru:

    use Rack::URISanitizer

## Usage

Rack::URISanitizer is a Rack middleware which cleans up trailing `%` characters in request URI (`QUERY_STRING`).
It will replace them with their encoded equivalent (`%25`).

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

## Credits

- Cédric FABIANSKI ([cfabianski](https://github.com/cfabianski))
- [UTF8Sanitizer](https://github.com/whitequark/rack-utf8_sanitizer)
