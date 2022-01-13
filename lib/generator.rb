# frozen_string_literal: true

require_relative "generator/version"

module Generator
  class Error < StandardError; end
  
  def self.generate()
    return (rand(1..100))
  end

end
