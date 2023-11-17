# frozen_string_literal: true

# Modules consist a method
module Child_1
  def a1
    'This is Child one.'
  end
end
module Child_2
  def a2
    'This is Child two.'
  end
end
module Child_3
  def a3
    'This is Child three.'
  end
end

# Creating class
class Parent
  include Child_1
  include Child_2
  include Child_3
  def info
    'Three modules have included.'
  end
end

# Creating object
# object = Parent.new

# Calling methods
# str1 = object.info
# str2 = object.a1
# str3 = object.a2
# str4 = object.a3

