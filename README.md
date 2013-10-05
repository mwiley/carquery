# Carquery

Provides DSL for a [www.carqueryapi.com](http://www.carqueryapi.com) API. Read more about CarQuery database API [here](http://www.carqueryapi.com/about/)

## Installation

Add this line to your application's Gemfile:

    gem 'carquery'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install carquery

## Usage

Get car makes

    Carquery.get_makes year: 2009

Get car model list by make

    Carquery.get_models_for 'volvo'

Get car model trim list

    Carquery.get_trims

Get car model trim by id

    Carquery.get_trim 12345

Get range of available years from the CarQuery database

    Carquery.get_years_range


## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
