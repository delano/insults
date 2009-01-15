# Copyright (c) 2009 Delano Mandelbaum
# 
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
# 
# The above copyright notice and this permission notice shall be included in
# all copies or substantial portions of the Software.
# 
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
# THE SOFTWARE.

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

def fuckup #:nodoc:
  @@text[:fuckups][rand(@@text[:fuckups].size)]; 
end
def shiton #:nodoc:
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
# <p>TODO: add more insults.</p>
module Insults
end

