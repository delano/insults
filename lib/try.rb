# encoding: utf-8
class A < Module #:nodoc:
end
class B < A #:nodoc:
end
module New #:nodoc:
end
class C #:nodoc:
 include Insults
end
# A demonstration of the magic of Insults. 
class Try < C
  # This broken method calls a method that doesn't exist. 
  def self.broken
    ➔ "YES!"
  end
end