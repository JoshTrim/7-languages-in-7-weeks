# # Function definition
# def tell_the_truth
#   true
# end
#
# # Arrays
# animals = ['lions', 'tigers', 'bears']
# puts animals
#
# ## Array indexing
# animals[1]
# puts animals[2]
#
# puts animals[10] # -> Returns nil
#
# puts animals[0..1]
# puts (0..1).class
#
#
# [1].class # -> Array
# [1].methods.include?('[]') # -> true, [] is a method on an Array class
#
# # Hashes
# numbers = {1 => 'one', 2 => 'two'}
# puts numbers[1] # -> 'one'
#
# stuff = {:array=>[1,2,3], :string=>['Hi, mum!']}
# puts stuff[:string] # -> 'Hi, mum!'
#
# # Symbols
# # :string is a symbol - a string preceded with a colon
# # Two strings with the same content are different objects, however
# # Two symbols with the same content are the **same** object, e.g
# puts 'string'.object_id
# puts 'string'.object_id
#
# puts :string.object_id
# puts :string.object_id
#
# # Code blocks
# 3.times {puts "hiya there, kiddo"}
#
# animals = ["lions and", "tigers and", "bears", "oh my"]
# animals.each {|a| puts a}
#
# # Classes
# puts 4.class # -> Fixnum
# puts 4.class.superclass # -> Integer
# puts 4.class.superclass.superclass # -> Numeric
# puts 4.class.superclass.superclass.superclass # -> Object
# puts 4.class.superclass.superclass.superclass.superclass # -> Nil

# Simple Tree Class
# Convention: Capital letters, CamelCase
# class Tree
#   attr_accessor :children, :node_name
#
#   # constructor method
#   def initialize(name, children=[])
#     # @ symbol indicates an instance variable, @@ is a class variable
#     @children = children
#     @node_name = name
#   end
#
#   def visit_all(&block)
#     visit &block
#     children.each {|c| c.visit_all &block}
#   end
#
#   def visit(&block)
#     block.call self
#   end
#
# end
#
#
# ruby_tree = Tree.new("ruby", [Tree.new("reia"), Tree.new("macruby")])
#
# puts "Visiting a node"
# ruby_tree.visit {|node| puts node.node_name}
# puts
#
# puts "visiting entire tree"
# ruby_tree.visit_all {|node| puts node.node_name}
#
#
# # Mixins / modules
# module ToFile
#   def filename
#     "objects_#{self.object_id}.txt"
#   end
#
#   def to_f
#     File.open(filename, 'w') {|f| f.write(to_s)}
#   end
# end
#
# class Person
#   include ToFile
#   attr_accessor :name
#
#   def intialize(name)
#     @name = name
#   end
# end
#
# Person.new('matz').to_f
