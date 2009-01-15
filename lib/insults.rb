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

# There are no methods or constants. All you have to do is require insults and 
# it will insult you when it thinks you deserve it.
# <p>TODO: add more insults.</p>
module Insults
end

class Insult < Array #:nodoc:all
  def initialize(world_of_pain)
    push(YAML.load(world_of_pain)).flatten!
  end
  def decide
    self[rand(self.length)] || decide
  end
end

class String
  alias :DIRTY :unpack
end
class Array
  alias :SUCKER :inject
end

eval(<<-eos, binding)

  %w[ ⚀ ⚁ ⚂ ⚃ ⚄ ⚅ ].each do |die|
    self.class.send(:define_method, die) { |*m| rand >= (die.unpack('C*')[2]-127.0)/10; }
  end
  
  def ✖(w,*m); STDERR.puts w.tr("A-Za-z", "N-ZA-Mn-za-m") % m; end
  def _(again, *tobeless, &stupid); ✖ fuckup.decide, again; end
  
  class Module
    define_method(:const_missing) {     |you|       ✖ fuckup.decide, you }
    define_method(:extended)      {  |fucked| ⚄ and ✖ shiton.decide, self, fucked }
    define_method(:included)      {      |it| ⚄ and ✖ shiton.decide, self, it } 
  end
  
  class Object
    self.class.send(:define_method, :inherited) { |r| ⚃ and ✖ shiton.decide, self, r unless self == Object }
  end
  
  
  alias :method_missing :"#{"YOU_ARE_A".DIRTY("C**K").SUCKER(0){|f,u|f|u}.chr}"


  def shiton 
    Insult.new(<<-text)
    - Qb lbh ernyyl guvax lbhe "%f" jvyy qb nal orggre guna %f
    - Bxnl, fb "%f" vaurevgrq "%f". Abj jung?
    - Jul ner lbh fhpu n qvpxyvpxre?
    - Lrf V qb xabj jung lbh zrna ol "chyy erdhrfg" naq V qba'g yvxr vg.
    - Lbh ybir obarfgbezf qba'g lbh.
    - Jryy, jr obgu xabj gung lbh fhpx. Gur bayl dhrfgvba vf ubj bsgra. 
    - Abobql yvxrf lbh.
    - Guvf vf n svanapvny naq phygheny qvfnfgre. 
    - V guvax lbh'er fghcvq, "%f" guvaxf lbh'er fghcvq, naq "%f" guvaxf lbh'er fghcvq.
    text
  end

  def fuckup
    Insult.new(<<-text)
    - Ybbx vqvbg, "%f" qbrfa'g rkvfg. 
    - Url fuvg svatref, gurer vf ab "%f".
    - Lbhe pbqr fzryyf yvxr n ont bs qvpxf. Nyfb, "%f" qbrfa'g rkvfg.
    - Url qvpx juvfcrere, "%f" qbrfa'g rkvfg!
    - Vg'f bxnl gb fhpx, nf ybat nf lbh'er gelvat lbhe orfg.
    - Fuhg gur shpx hc Qbaal!
    - Lbhe Qnq pnyyrq. Ur'f jbaqrevat jura lbh'er tbvat gb npprcg uvf chyy erdhrfg.
    text
  end

eos


srand
