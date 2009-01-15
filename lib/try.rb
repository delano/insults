

class A < Module
end

class B < A
end
  
module New
end

class C 
 include Insults
end
  
class Try < C
  def self.nothing
    ➔ "YES!"
  end

end