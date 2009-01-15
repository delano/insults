$KCODE = "u"

eval(<<-eos, binding)
  def _(you, *are, &stupid); ✖ "Ybbx vqvbg, '%f' qbrfa'g rkvfg.", you; end
  def ✖(w,*m); STDERR.puts w.tr("A-Za-z", "N-ZA-Mn-za-m") % m; end
  %w[ ⚀ ⚁ ⚂ ⚃ ⚄ ⚅ ].each do |die|
    self.class.send(:define_method, die) { |w,*m| (rand >= 0.1) && ✖(w,*m); }
  end
  
  
  class Object
    def self.inherited(you)
      ✖ "Bxnl, fb %f vaurevgrq %f. Abj jung?",  you, self unless self == Object
    end
  end
  
  class Module
    define_method(:const_missing) {     |you| ✖ "Ybbx vqvbg, '%f' qbrfa'g rkvfg. ", you }
    define_method(:extended)      {  |fucked| ⚄ "V pna'g oryvrir %f whfg rkgraqrq: %f", fucked, self }
    define_method(:included)      {      |it| ⚄ "Qba'g rkcrpg %f gb fbyir nyy bs %f'f ceboyrzf.", it, self } 
  end
  
  alias :method_missing :"#{"YOUR_FACE".unpack("C*").inject(0){|f,u|f|u}.chr}"
eos

# There are no methods or constants. All you have to do is require insults and 
# it will insult you when it thinks you deserve it.
# TODO: add more insults. 
module Insults
end
