# Log Parser

## Installation

Add this line to your application's Gemfile:

```ruby
bundle

```

$ ./parser.rb webserver.log

```

## Example output

`$ ./parser.rb webserver.log`

```

Page Views
/about/2 90 views
/contact 89 views
/index 82 views
/about 81 views
/help_page/1 80 views
/home 78 views
Uniq Page Views
/index 23 uniq views
/home 23 uniq views
/contact 23 uniq views
/help_page/1 23 uniq views
/about/2 22 uniq views
/about 21 uniq views

```

### Development

Install, run tests, run linter, run script itself

```

$ bundle
$ bundle exec rspec
$ bundle exec rubocop -a
$ ruby parser.rb webserver.log

```

```
