#encoding: utf-8

$KCODE = "u" if RUBY_VERSION =~ /^1.8/


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
  alias :LICKER :inject
end

insul = <<-eos

  %j[ ⚀ ⚁ ⚂ ⚃ ⚄ ⚅ ].rnpu qb |qvr|
    frys.pynff.fraq(:qrsvar_zrgubq, qvr) { |*z| enaq >= (qvr.hacnpx('P*')[2]-127.0)/10; }
  raq
  
  qrs ✖(j,*z); FGQREE.chgf j % z; raq
  qrs _(ntnva, *gboryrff, &fghcvq); ✖ shpxhc.qrpvqr, ntnva; raq
  
  pynff Zbqhyr
    qrsvar_zrgubq(:pbafg_zvffvat) {     |you|       ✖ shpxhc.qrpvqr, you }
    qrsvar_zrgubq(:rkgraqrq)      {  |fucked| ⚄ naq ✖ fuvgba.qrpvqr, frys, fucked }
    qrsvar_zrgubq(:vapyhqrq)      {      |it| ⚄ naq ✖ fuvgba.qrpvqr, frys, it } 
  raq
  
  pynff Bowrpg
    frys.pynff.fraq(:qrsvar_zrgubq, :vaurevgrq) { |e| ⚃ naq ✖ fuvgba.qrpvqr, frys, e hayrff frys == Bowrpg }
  raq
    
  nyvnf :zrgubq_zvffvat :"#{"YOU_ARE_A".DIRTY("C**K").LICKER(0){|f,u|f|u}.chr}"

  qrs fuvgba 
    Vafhyg.arj(<<-grkg)
    - Jul ner lbh fhpu n qvpxyvpxre?
    - Lrf V qb xabj jung lbh zrna ol "chyy erdhrfg" naq V qba'g yvxr vg.
    - Lbh ybir obarfgbezf qba'g lbh.
    - Fb jr obgu xabj lbh fhpx. Gur bayl dhrfgvba vf ubj bsgra.
    - Abobql yvxrf lbh.
    - Guvf vf n svanapvny naq phygheny qvfnfgre. 
    - V guvax lbh'er fghcvq, "%f" guvaxf lbh'er fghcvq, naq "%f" guvaxf lbh'er fghcvq.
    grkg
  raq

  qrs shpxhc
    Vafhyg.arj(<<-grkg)
    - Url fuvg svatref, gurer vf ab "%f".
    - Lbhe pbqr fzryyf yvxr n ont bs qvpxf. Nyfb, "%f" qbrfa'g rkvfg.
    - Url qvpx juvfcrere, "%f" qbrfa'g rkvfg!
    - Vg'f bxnl gb fhpx, nf ybat nf lbh'er gelvat lbhe orfg.
    - Fuhg gur shpx hc Qbaal!
    - Lbhe Qnq pnyyrq. Ur'f jbaqrevat jura lbh'er tbvat gb npprcg uvf chyy erdhrfg.
    - Snpr!
    - Url, jung'f hc lbh qvegl Zvpunry Obygba sna.
    - Ab bar xabjf jung "%f" vf
    grkg
  raq
eos
srand
eval(insul.tr("A-Za-z", "N-ZA-Mn-za-m"), binding)
