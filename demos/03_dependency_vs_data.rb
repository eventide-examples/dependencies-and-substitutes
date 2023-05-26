require_relative 'demo_init'


class SomeClass
  include Dependency

  dependency :some_dependency

  attr_accessor :some_attribute
end

s = SomeClass.new

s.some_dependency.do_something

s.some_attribute.something
# => undefined method `something' for nil:NilClass (NoMethodError)


