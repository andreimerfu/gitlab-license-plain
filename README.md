# Gitlab::License

gitlab-license-plain helps you generate, verify and enforce software licenses. It is used in GitLab Enterprise Edition.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'gitlab-license-plain'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install gitlab-license

## Usage

```ruby
license = Gitlab::License.import(data_license_json)
```