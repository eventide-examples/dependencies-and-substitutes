require_relative 'demo_init'


class SomeClass
  include Dependency

  dependency :some_dependency

  attr_accessor :some_attribute
end


