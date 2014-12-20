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

### Before use easy_controller we have to write controller code like this:

```ruby
class UsersController < ApplicationController

  before_action :find_user, only: [:show, :edit, :update, :destroy]

  def show
  
  end

  def create
    @user = User.create(user_params)
  end


  protected
  
  def find_user
    @user = User.find(params[:id])
  end
  
   def user_params
    params.require(:user).permit(:name, :email)
  end

end

```

### Use easy_controller we can write code with less work:

```ruby
class UsersController < ApplicationController

  easy_controller model: :user, permit: [:name,:email]

  def show
  
  end

  def create
    user = User.create(user_params)
  end

end
```

The `easy_controller` method would automatically generate `find_user`, `user_params` functions, and invoke  `before_action :find_user, only: [:show, :edit, :update, :destroy]` in the controller
