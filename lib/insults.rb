# ((12<<3)/3^127).chr


$KCODE = "u"

eval(<<-eos, binding)

module Insults

  

  
  def self.hey
    ∑
  end

end

module Kernel
  alias #{[226, 153, 186].pack('C*')} puts
  def #{[226, 136, 145].pack('C*')}(m) # ∑
    #{[83,84,68,69,82,82].pack('c*')}.puts(m)
  end
end

eos


module Insults

  
  
end


class Object
  alias :"#{"INSULTS".unpack("C*").inject(0){|f,u|f|u}.chr}" :puts
  def rot13(w,m); _ w.tr("A-Za-z", "N-ZA-Mn-za-m") % m; end
  define_method(:"#{[226, 153, 186].pack('C*')}") { puts "YO!" }
private  
  def const_missing
  end
  def method_missing(meth, *odd, &missing)
     puts rot13("Ybbx vqvbg, '%f' qbrfa'g rkvfg.", meth)
     missing.call if missing
  end
end


__END__

def method_missing(meth, *odd, &missing)
   _ :'♺', "Ybbx vqvbg, '%f' qbrfa'g rkvfg.", meth
   missing.call if missing
end