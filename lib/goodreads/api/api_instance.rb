require 'net/http'
require 'active_support/core_ext/hash'
require 'openssl'
require 'json'
require_relative 'handler'
require_relative 'books'
require_relative 'author'
module Goodreads
  class ApiInstance
    include Goodreads::Author
    include Goodreads::Books
    include Goodreads::Handler
    attr_reader :key
    attr_reader :base_url
    attr_accessor :info

    def initialize(key)
      @key = key
      @base_url = 'www.goodreads.com'
      @info ={}
      @info[:key] = key
      @info[:base_url] = @base_url
    end
  end
end
