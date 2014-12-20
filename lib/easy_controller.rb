require "easy_controller/version"

module EasyController

  class Railtie < Rails::Railtie
    
    initializer "easy_controller.action_controller" do
      ActiveSupport.on_load :action_controller do
        require 'easy_controller/controller'
      end
    end
  end
end



