require 'action_controller'


module EasyController
  module Controller

    def easy_controller(**options)
      model_name = options[:model]
      model_name = model_name.to_s if model_name.is_a? Symbol

      model = model_name.camelize
      class_eval <<-RUBY, __FILE__, __LINE__+1
        

        before_action :find_#{model_name}, :only => [:show,:update,:edit,:destroy]


        def find_#{model_name}
          @#{model_name} = #{model}.find(params[:id])
        end


        def #{model_name}_params
          params.require(:#{model_name}).permit(#{options[:permit]})
        end

      RUBY
    end
  end
end
ActionController::Base.extend EasyController::Controller
