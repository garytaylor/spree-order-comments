begin
  require "jeweler"
  Jeweler::Tasks.new do |gem|
    gem.name = "spree-order-comments"
    gem.summary = "Gemified version of spree-order-comments"
    gem.email = "gary.taylor@rubysystems.co.uk"
    gem.authors = ["Gary Taylor"]
    gem.files = Dir["{lib}/**/*", "{app}/**/*", "{config}/**/*"]
    gem.add_dependency("acts_as_commentable")
  end
rescue
  puts "Jeweler or dependency not available."
end
Dir[File.dirname(__FILE__) + '/tasks/*.rake'].sort.each { |f| require f }
