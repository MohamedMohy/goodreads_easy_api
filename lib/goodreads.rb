require_relative 'goodreads/api/version'
require_relative 'goodreads/api/api_instance'
require_relative 'goodreads/api/handler'
module Goodreads
  if defined?(Rails)
    require 'goodreads/api/engine'
  end

  def self.new(key)
    Goodreads::ApiInstance.new(key)
  end

end
