require 'spree_core'
require 'spree_order_comments_hooks'
require 'acts_as_commentable'

module SpreeOrderComments
  class Engine < Rails::Engine

    config.autoload_paths += %W(#{config.root}/lib)

    def self.activate
      Dir.glob(File.join(File.dirname(__FILE__), "../app/**/*_decorator*.rb")) do |c|
        Rails.env.production? ? require(c) : load(c)
      end
      Order.class_eval do
        acts_as_commentable
      end

      Admin::OrdersController.class_eval do
        def comments
          load_object
        end
      end
      
    end

    config.to_prepare &method(:activate).to_proc
  end
end
