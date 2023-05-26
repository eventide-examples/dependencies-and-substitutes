require_relative 'demo_init'


class SomeClass
  include Dependency

  dependency :some_dependency
end

s = SomeClass.new

s.some_dependency.do_something

s.some_dependency.do_something_else

s.some_dependency.jkhgsadjhagjhasgdjhasgdjahsdgasjhdgak



