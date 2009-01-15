$KCODE = "u"
require 'yaml'

@@text = YAML.load(<<-text)
--- 
:fuckups: 
- "Ybbx vqvbg, '%f' qbrfa'g rkvfg. "
- Url fuvg svatref, gurer vf ab '%f'.
:includes: 
- "%f qbrfa'g arrq %f, jung gur uryy ner lbh guvaxvat?"
- Qb lbh ernyyl guvax lbhe %f jvyy qb nal orggre guna %f
- Bxnl, fb %f vaurevgrq %f. Abj jung?
text

def fuckup
  @@text[:fuckups][rand(@@text[:fuckups].size)]; 
end
def shiton
  @@text[:includes][rand(@@text[:includes].size)]; 
end


eval(<<-eos, binding)

  def _(you, *are, &stupid); ✖ fuckup, you; end
  def ✖(w,*m); STDERR.puts w.tr("A-Za-z", "N-ZA-Mn-za-m") % m; end
  %w[ ⚀ ⚁ ⚂ ⚃ ⚄ ⚅ ].each do |die|
    self.class.send(:define_method, die) { |*m| rand >= (die.unpack('C*')[2]-127)/10; }
  end
 
  class Object
    def self.inherited(refelection)
      ⚃ and ✖ shiton, self, refelection unless self == Object
    end
  end
#  ✖(,*m)
  class Module
    define_method(:const_missing) {     |you|       ✖ fuckup, you }
    define_method(:extended)      {  |fucked| ⚄ and ✖ shiton, self, fucked }
    define_method(:included)      {      |it| ⚄ and ✖ shiton, self, it } 
  end
  
  alias :method_missing :"#{"YOUR_FACE".unpack("C*").inject(0){|f,u|f|u}.chr}"
eos

# There are no methods or constants. All you have to do is require insults and 
# it will insult you when it thinks you deserve it.
# <p>TODO: add more insults. </p>
module Insults
end

