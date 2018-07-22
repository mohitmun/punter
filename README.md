# Punter

Punter allows you to quickly inspect, manipulate your data using raw SQL as well as ORM. It uses ActiveRecord as ORM engine

![demo.svg](termtosvg_afdv3y8o.svg)

## Installation


    $ gem install punter

## Usage

* for sqlite3

    $punter path_to_your_db
This will start new irb console with required methods.  

## How it works

* uses activerecord ORM
* irb console
## TODOs

[ ] Multiple connections

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/mohitmun/punter.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

