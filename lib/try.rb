

class A < Module #:nodoc:
end

class B < A #:nodoc:
end
  
module New #:nodoc:
end

class C #:nodoc:
 include Insults
end
  
class Try < C #:nodoc:
  def self.nothing
    ➔ "YES!"
  end

end