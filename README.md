# EasyController

EasyController is a contrller plugin which help you write less code in common controllers


## Installation

Add this line to your application's Gemfile:

```ruby
gem 'easy_controller'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install easy_controller

## Usage

```ruby

class UsersController < ApplicationController

  easy_controller model: :user, permit: [:name,:email]

end

```

