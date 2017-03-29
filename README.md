# IosAssetExtractor

A Ruby wrapper for the [iOS Asset Extractor](https://github.com/Marxon13/iOS-Asset-Extractor)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'ios_asset_extractor'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install ios_asset_extractor

## Usage

A simple exec example:

`ios_asset_extractor -i {input_file} -o {output_file}`

You can see more options [here](https://github.com/Marxon13/iOS-Asset-Extractor#usage)

## Lib Use

```ruby
require 'ios_asset_extractor'

extractor = IosAssetExtractor::Extractor.new 'filepath'

extractor.file_with_size_hash # {:name=>"videoPlayer_play_25x25_@2x.png", :size=>586}

extractor.extract_to 'dir_path'
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/ios_asset_extractor. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

