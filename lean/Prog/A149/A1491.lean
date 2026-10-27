import SequenceMachineLib.Basic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C040
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B005.C001
import Seq.B006.C000
import Seq.B009.C000
import Seq.B011.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C004
import Seq.Opaque.C005
import Seq.Opaque.C006
import Seq.Opaque.C007
import Seq.Opaque.C008
import Seq.Opaque.C009
import Seq.Opaque.C010
import Seq.Opaque.C011
import Seq.Opaque.C012
import Seq.Opaque.C013
import Seq.Opaque.C014
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024

/-!
# A149100: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, -1), (0, 0, -1), (0, 1, -1), (1, 0, 1)}.

The programs for A149100, there is no canonical definition to state claims against.
-/

/-! ## A149100.P11351094077302815174

`A149101(A073789(n))`
-/

namespace A149100.P11351094077302815174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149101 (A073789 n).toNat

end

end A149100.P11351094077302815174

/-! ## A149100.P5757916692968576884

`A154470(A149101(n))`
-/

namespace A149100.P5757916692968576884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154470 (A149101 n).toNat

end

end A149100.P5757916692968576884

/-! ## A149100.P7415326135841999450

`A149101(A171644(n))`
-/

namespace A149100.P7415326135841999450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149101 (A171644 n).toNat

end

end A149100.P7415326135841999450

/-! ## A149100.P16387634171939553405

`A149101(A004869(n+1))`
-/

namespace A149100.P16387634171939553405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149101 (A004869 (n + 1)).toNat

end

end A149100.P16387634171939553405

/-!
# A149102: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, -1), (0, 0, -1), (1, 0, 1), (1, 1, -1)}.

The programs for A149102, there is no canonical definition to state claims against.
-/

/-! ## A149102.P7279614683566136451

`A149103(A073789(n))`
-/

namespace A149102.P7279614683566136451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149103 (A073789 n).toNat

end

end A149102.P7279614683566136451

/-! ## A149102.P2181551208636196360

`A154470(A149103(n))`
-/

namespace A149102.P2181551208636196360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154470 (A149103 n).toNat

end

end A149102.P2181551208636196360

/-! ## A149102.P12719975062959384051

`A149103(A171644(n))`
-/

namespace A149102.P12719975062959384051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149103 (A171644 n).toNat

end

end A149102.P12719975062959384051

/-! ## A149102.P8364033708391396276

`A149103(A004869(n+1))`
-/

namespace A149102.P8364033708391396276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149103 (A004869 (n + 1)).toNat

end

end A149102.P8364033708391396276

/-!
# A149104: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (0, 0, -1), (0, 1, -1), (0, 1, 1), (1, 0, -1)}.

The programs for A149104, there is no canonical definition to state claims against.
-/

/-! ## A149104.P7635123943499462621

`A149105(n)-A089311(A149092(n))`
-/

namespace A149104.P7635123943499462621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149105 n - A089311 (A149092 n).toNat

end

end A149104.P7635123943499462621

/-!
# A149105: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, -1, 1), (-1, 0, 0), (1, 1, -1), (1, 1, 0)}.

The programs for A149105, there is no canonical definition to state claims against.
-/

/-! ## A149105.P12686486372412388170

`A149104(n)+A089311(A149092(n))`
-/

namespace A149105.P12686486372412388170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149104 n + A089311 (A149092 n).toNat

end

end A149105.P12686486372412388170

/-! ## A149105.P12325584907782039875

`or(A033989(A052722(n)), A149104(n))`
-/

namespace A149105.P12325584907782039875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A033989 (A052722 n).toNat) (A149104 n)

end

end A149105.P12325584907782039875

/-!
# A149106: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, -1, 1), (-1, 0, 1), (1, -1, -1), (1, 1, 0)}.

The programs for A149106, there is no canonical definition to state claims against.
-/

/-! ## A149106.P6647134367156508569

`A008617(4*(n*A077442(n)-A211923(n)))`
-/

namespace A149106.P6647134367156508569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008617 (4 * ((n : ℤ) * A077442 n - A211923 n)).toNat

end

end A149106.P6647134367156508569

/-!
# A149108: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 0), (-1, 0, 1), (1, -1, -1), (1, 1, 0)}.

The programs for A149108, there is no canonical definition to state claims against.
-/

/-! ## A149108.P17131297612382143676

`A149109(n)-A297243(A007841(n))`
-/

namespace A149108.P17131297612382143676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149109 n - A297243 (A007841 n).toNat

end

end A149108.P17131297612382143676

/-! ## A149108.P8723417176974321201

`xor(A123545(A149085(n)), A149109(n))`
-/

namespace A149108.P8723417176974321201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A123545 (A149085 n).toNat) (A149109 n)

end

end A149108.P8723417176974321201

/-! ## A149108.P15287702630795797867

`A349151(A336103(n+1))-A297243(A007841(n))`
-/

namespace A149108.P15287702630795797867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349151 (A336103 (n + 1)).toNat - A297243 (A007841 n).toNat

end

end A149108.P15287702630795797867

/-!
# A149109: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 1), (-1, 1, 0), (1, -1, -1), (1, 1, 0)}.

The programs for A149109, there is no canonical definition to state claims against.
-/

/-! ## A149109.P1316099990359289546

`A349151(A336103(n+1))`
-/

namespace A149109.P1316099990359289546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349151 (A336103 (n + 1)).toNat

end

end A149109.P1316099990359289546

/-! ## A149109.P12244476205500144988

`A297243(A007841(n))+A149108(n)`
-/

namespace A149109.P12244476205500144988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297243 (A007841 n).toNat + A149108 n

end

end A149109.P12244476205500144988

/-! ## A149109.P14127739314443521733

`xor(A123545(A149085(n)), A149108(n))`
-/

namespace A149109.P14127739314443521733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A123545 (A149085 n).toNat) (A149108 n)

end

end A149109.P14127739314443521733

/-!
# A149110: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, -1, 1), (-1, 1, -1), (1, -1, 1), (1, 1, 0)}.

The programs for A149110, there is no canonical definition to state claims against.
-/

/-! ## A149110.P9893146874021217373

`A003963(A357182(3*n+1)+A226642(n+1))`
-/

namespace A149110.P9893146874021217373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (A357182 (3 * n + 1) + A226642 (n + 1)).toNat

end

end A149110.P9893146874021217373

/-!
# A149111: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 0), (-1, 1, 1), (1, -1, -1), (1, 1, 0)}.

The programs for A149111, there is no canonical definition to state claims against.
-/

/-! ## A149111.P6480952564666519661

`A149112(n)-A051765(A056470(n+1))`
-/

namespace A149111.P6480952564666519661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149112 n - A051765 (A056470 (n + 1)).toNat

end

end A149111.P6480952564666519661

/-! ## A149111.P17427124481236761121

`A149112(n)-A051765(A056471(n+1))`
-/

namespace A149111.P17427124481236761121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149112 n - A051765 (A056471 (n + 1)).toNat

end

end A149111.P17427124481236761121

/-! ## A149111.P5864361755307093755

`A149112(n)-A051765(A082095(n+1))`
-/

namespace A149111.P5864361755307093755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149112 n - A051765 (A082095 (n + 1)).toNat

end

end A149111.P5864361755307093755

/-!
# A149112: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, -1), (1, -1, 0), (1, -1, 1), (1, 1, 0)}.

The programs for A149112, there is no canonical definition to state claims against.
-/

/-! ## A149112.P6412748716601649561

`A149111(n)+A051765(A056470(n+1))`
-/

namespace A149112.P6412748716601649561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149111 n + A051765 (A056470 (n + 1)).toNat

end

end A149112.P6412748716601649561

/-! ## A149112.P5601029479991828361

`A149111(n)+A051765(A056471(n+1))`
-/

namespace A149112.P5601029479991828361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149111 n + A051765 (A056471 (n + 1)).toNat

end

end A149112.P5601029479991828361

/-! ## A149112.P5499004337020570146

`A149111(n)+A051765(A082095(n+1))`
-/

namespace A149112.P5499004337020570146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149111 n + A051765 (A082095 (n + 1)).toNat

end

end A149112.P5499004337020570146

/-!
# A149113: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, -1), (1, -1, 0), (1, 1, 1)}.

The programs for A149113, there is no canonical definition to state claims against.
-/

/-! ## A149113.P329468797015625138

`A149114(A002998(n))`
-/

namespace A149113.P329468797015625138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149114 (A002998 n).toNat

end

end A149113.P329468797015625138

/-! ## A149113.P7985456385342504458

`A004182(A149114(n))`
-/

namespace A149113.P7985456385342504458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004182 (A149114 n).toNat

end

end A149113.P7985456385342504458

/-! ## A149113.P6917814768085756772

`A149114(A039723(n))`
-/

namespace A149113.P6917814768085756772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149114 (A039723 n).toNat

end

end A149113.P6917814768085756772

/-! ## A149113.P5631824696713241141

`A149114(A046469(n))`
-/

namespace A149113.P5631824696713241141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149114 (A046469 n).toNat

end

end A149113.P5631824696713241141

/-! ## A149113.P8879377436807663610

`A149114(A051022(n))`
-/

namespace A149113.P8879377436807663610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149114 (A051022 n).toNat

end

end A149113.P8879377436807663610

/-!
# A149115: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, -1, 1), (-1, 0, 0), (0, -1, 0), (1, 1, 0)}.

The programs for A149115, there is no canonical definition to state claims against.
-/

/-! ## A149115.P13983187728761452931

`A302594(A000219(n))+A000217(A001629(n))`
-/

namespace A149115.P13983187728761452931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302594 (A000219 n).toNat + A000217 (A001629 n).toNat

end

end A149115.P13983187728761452931

/-!
# A149116: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 0), (-1, 1, -1), (0, 0, -1), (1, 0, 1)}.

The programs for A149116, there is no canonical definition to state claims against.
-/

/-! ## A149116.P1595828514858580544

`A368812(A148086(n))`
-/

namespace A149116.P1595828514858580544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368812 (A148086 n).toNat

end

end A149116.P1595828514858580544

/-! ## A149116.P13774837910089786185

`A368812(A205499(n))`
-/

namespace A149116.P13774837910089786185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368812 (A205499 n).toNat

end

end A149116.P13774837910089786185

/-! ## A149116.P8785217877614113999

`A111439(A092684(n)^3)`
-/

namespace A149116.P8785217877614113999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111439 (A092684 n ^ 3).toNat

end

end A149116.P8785217877614113999

/-!
# A149117: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 0), (-1, 1, -1), (0, -1, 0), (1, 1, 0)}.

The programs for A149117, there is no canonical definition to state claims against.
-/

/-! ## A149117.P2626305126335420680

`A324345(A209923(n+1)-A095133(n+1))`
-/

namespace A149117.P2626305126335420680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324345 (A209923 (n + 1) - A095133 (n + 1)).toNat

end

end A149117.P2626305126335420680

/-! ## A149117.P15266503525030649671

`xor(A227837(A073984(n+1)), A303832(n+1))`
-/

namespace A149117.P15266503525030649671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A227837 (A073984 (n + 1)).toNat) (A303832 (n + 1))

end

end A149117.P15266503525030649671

/-!
# A149118: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, -1, 0), (-1, 0, 0), (0, -1, 1), (1, 1, 0)}.

The programs for A149118, there is no canonical definition to state claims against.
-/

/-! ## A149118.P2294701405603465382

`A234363(A391600(n))`
-/

namespace A149118.P2294701405603465382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234363 (A391600 n).toNat

end

end A149118.P2294701405603465382

/-! ## A149118.P16160903281928168770

`A234363(A168655(n+1))`
-/

namespace A149118.P16160903281928168770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234363 (A168655 (n + 1)).toNat

end

end A149118.P16160903281928168770

/-! ## A149118.P14682245022303981006

`A277193(A187255(n+1))`
-/

namespace A149118.P14682245022303981006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277193 (A187255 (n + 1)).toNat

end

end A149118.P14682245022303981006

/-!
# A149119: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, -1), (-1, 0, 1), (0, -1, 0), (1, 1, 0)}.

The programs for A149119, there is no canonical definition to state claims against.
-/

/-! ## A149119.P9353330183180193011

`A149120(A073788(n))`
-/

namespace A149119.P9353330183180193011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149120 (A073788 n).toNat

end

end A149119.P9353330183180193011

/-! ## A149119.P14501049764121059271

`A149120(A171596(n))`
-/

namespace A149119.P14501049764121059271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149120 (A171596 n).toNat

end

end A149119.P14501049764121059271

/-! ## A149119.P18176848562765086508

`A149120(A004868(n+1))`
-/

namespace A149119.P18176848562765086508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149120 (A004868 (n + 1)).toNat

end

end A149119.P18176848562765086508

/-!
# A149121: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, -1), (1, -1, 0), (1, 1, 1)}.

The programs for A149121, there is no canonical definition to state claims against.
-/

/-! ## A149121.P5535165426171200291

`A149122(A073789(n))`
-/

namespace A149121.P5535165426171200291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149122 (A073789 n).toNat

end

end A149121.P5535165426171200291

/-! ## A149121.P10948769882293907074

`A130371(A149122(n))`
-/

namespace A149121.P10948769882293907074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130371 (A149122 n).toNat

end

end A149121.P10948769882293907074

/-! ## A149121.P14336616842428197262

`A149122(A171644(n))`
-/

namespace A149121.P14336616842428197262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149122 (A171644 n).toNat

end

end A149121.P14336616842428197262

/-! ## A149121.P5412096612402358738

`A149122(A004869(n+1))`
-/

namespace A149121.P5412096612402358738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149122 (A004869 (n + 1)).toNat

end

end A149121.P5412096612402358738

/-!
# A149123: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, -1, 1), (-1, 0, 0), (1, -1, 0), (1, 1, 0)}.

The programs for A149123, there is no canonical definition to state claims against.
-/

/-! ## A149123.P13680115130497202023

`A191851(A298344(n+1)+1)`
-/

namespace A149123.P13680115130497202023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191851 (A298344 (n + 1) + 1).toNat

end

end A149123.P13680115130497202023

/-! ## A149123.P5109951445296065181

`A191851(A164216(n)+A109450(n))`
-/

namespace A149123.P5109951445296065181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191851 (A164216 n + A109450 n).toNat

end

end A149123.P5109951445296065181

/-! ## A149123.P1912536347442694479

`A295515(A276742(n))+A149098(n)`
-/

namespace A149123.P1912536347442694479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295515 (A276742 n).toNat + A149098 n

end

end A149123.P1912536347442694479

/-!
# A149124: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 1), (-1, 1, -1), (0, 0, -1), (1, 0, 1)}.

The programs for A149124, there is no canonical definition to state claims against.
-/

/-! ## A149124.P2406126544722573056

`ceil(Δ[A068937(A123045(n+1))]/8)`
-/

namespace A149124.P2406126544722573056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068937 (A123045 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (n + 1) - f1 n : ℚ) / 8⌉

end

end A149124.P2406126544722573056

/-! ## A149124.P4240483730922514011

`A149130(n)-A118759(A086855(n))`
-/

namespace A149124.P4240483730922514011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149130 n - A118759 (A086855 n).toNat

end

end A149124.P4240483730922514011

/-! ## A149124.P13103825057737995537

`A149126(n)-A277275(A263989(n+1))`
-/

namespace A149124.P13103825057737995537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149126 n - A277275 (A263989 (n + 1)).toNat

end

end A149124.P13103825057737995537

/-!
# A149125: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 0), (1, -1, -1), (1, -1, 0), (1, 1, 0)}.

The programs for A149125, there is no canonical definition to state claims against.
-/

/-! ## A149125.P6022305751820455640

`A148767(n)+A086520(A149123(n))`
-/

namespace A149125.P6022305751820455640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148767 n + A086520 (A149123 n).toNat

end

end A149125.P6022305751820455640

/-! ## A149125.P11828100904911925917

`A148767(n)+A086520(A149124(n))`
-/

namespace A149125.P11828100904911925917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148767 n + A086520 (A149124 n).toNat

end

end A149125.P11828100904911925917

/-!
# A149126: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 0), (-1, 1, -1), (1, 0, -1), (1, 0, 1)}.

The programs for A149126, there is no canonical definition to state claims against.
-/

/-! ## A149126.P2808449287971140941

`A149130(n)-A062977(A208676(n))`
-/

namespace A149126.P2808449287971140941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149130 n - A062977 (A208676 n).toNat

end

end A149126.P2808449287971140941

/-! ## A149126.P4807897716259458534

`A149132(n)-A062977(A208676(n))`
-/

namespace A149126.P4807897716259458534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149132 n - A062977 (A208676 n).toNat

end

end A149126.P4807897716259458534

/-! ## A149126.P15573364121055443999

`A149130(n)-A062977(A262234(n))`
-/

namespace A149126.P15573364121055443999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149130 n - A062977 (A262234 n).toNat

end

end A149126.P15573364121055443999

/-!
# A149127: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 0), (-1, 1, -1), (1, -1, 0), (1, 1, 0)}.

The programs for A149127, there is no canonical definition to state claims against.
-/

/-! ## A149127.P13055505968411509620

`A064918(n+2)+A023816(A196192(n))`
-/

namespace A149127.P13055505968411509620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064918 (n + 2) + A023816 (A196192 n).toNat

end

end A149127.P13055505968411509620

/-! ## A149127.P12577844936583728346

`xor(A149126(n), A277275(A263989(n+1)))`
-/

namespace A149127.P12577844936583728346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A149126 n) (A277275 (A263989 (n + 1)).toNat)

end

end A149127.P12577844936583728346

/-! ## A149127.P8333270045577475203

`xor(A149126(n), A277275(A348755(n+1)))`
-/

namespace A149127.P8333270045577475203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A149126 n) (A277275 (A348755 (n + 1)).toNat)

end

end A149127.P8333270045577475203

/-!
# A149128: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, -1, 1), (-1, 0, 1), (0, 0, -1), (1, 1, 0)}.

The programs for A149128, there is no canonical definition to state claims against.
-/

/-! ## A149128.P3444333510482881977

`A224782(A122082(n))+A149124(n)`
-/

namespace A149128.P3444333510482881977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224782 (A122082 n).toNat + A149124 n

end

end A149128.P3444333510482881977

/-! ## A149128.P4339348880864176014

`A219185(A279159(n))+A148960(n)`
-/

namespace A149128.P4339348880864176014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219185 (A279159 n).toNat + A148960 n

end

end A149128.P4339348880864176014

/-! ## A149128.P17132535655645321654

`A089610(A110154(n)-A004086(2*n))`
-/

namespace A149128.P17132535655645321654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089610 (A110154 n - A004086 (2 * n)).toNat

end

end A149128.P17132535655645321654

/-!
# A149129: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, -1, 0), (-1, 0, 0), (1, -1, 1), (1, 1, 0)}.

The programs for A149129, there is no canonical definition to state claims against.
-/

/-! ## A149129.P16548796123073651521

`A149130(A073789(n))`
-/

namespace A149129.P16548796123073651521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149130 (A073789 n).toNat

end

end A149129.P16548796123073651521

/-! ## A149129.P9044908781994845737

`A127287(A149130(n))`
-/

namespace A149129.P9044908781994845737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127287 (A149130 n).toNat

end

end A149129.P9044908781994845737

/-! ## A149129.P15672692411006165475

`A149130(A171644(n))`
-/

namespace A149129.P15672692411006165475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149130 (A171644 n).toNat

end

end A149129.P15672692411006165475

/-! ## A149129.P589303278167092203

`A149130(A004869(n+1))`
-/

namespace A149129.P589303278167092203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149130 (A004869 (n + 1)).toNat

end

end A149129.P589303278167092203

/-!
# A149131: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, -1), (-1, 1, 1), (0, -1, 0), (1, 1, 0)}.

The programs for A149131, there is no canonical definition to state claims against.
-/

/-! ## A149131.P16310589216862759597

`A149132(A073789(n))`
-/

namespace A149131.P16310589216862759597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149132 (A073789 n).toNat

end

end A149131.P16310589216862759597

/-! ## A149131.P16363197355724162977

`A127287(A149132(n))`
-/

namespace A149131.P16363197355724162977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127287 (A149132 n).toNat

end

end A149131.P16363197355724162977

/-! ## A149131.P13336608585565317857

`A149132(A171644(n))`
-/

namespace A149131.P13336608585565317857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149132 (A171644 n).toNat

end

end A149131.P13336608585565317857

/-! ## A149131.P16422518784889633175

`A149132(A004869(n+1))`
-/

namespace A149131.P16422518784889633175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149132 (A004869 (n + 1)).toNat

end

end A149131.P16422518784889633175

/-!
# A149133: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, -1, 1), (-1, 0, 0), (0, -1, 1), (1, 1, 0)}.

The programs for A149133, there is no canonical definition to state claims against.
-/

/-! ## A149133.P10667937285171759454

`A397801(A346375(n))`
-/

namespace A149133.P10667937285171759454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397801 (A346375 n).toNat

end

end A149133.P10667937285171759454

/-! ## A149133.P4216032364014907275

`A191001(A027154(n))`
-/

namespace A149133.P4216032364014907275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191001 (A027154 n).toNat

end

end A149133.P4216032364014907275

/-!
# A149134: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, -1, 0), (-1, 0, 1), (0, -1, 1), (1, 1, 0)}.

The programs for A149134, there is no canonical definition to state claims against.
-/

/-! ## A149134.P10965926728991472351

`A318395(n)+A138471(A173314(n))`
-/

namespace A149134.P10965926728991472351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318395 n + A138471 (A173314 n).toNat

end

end A149134.P10965926728991472351

/-! ## A149134.P17265270955699193258

`A124790(∑[4*n])+n`
-/

namespace A149134.P17265270955699193258
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124790 (∑ j ∈ Finset.range (n + 1), f1 j) + (n : ℤ)

end

end A149134.P17265270955699193258

/-!
# A149135: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, -1), (-1, 1, 0), (0, 0, -1), (1, 0, 1)}.

The programs for A149135, there is no canonical definition to state claims against.
-/

/-! ## A149135.P11239644957682198034

`A187187(or(A001196(n), A274104(n)))`
-/

namespace A149135.P11239644957682198034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187187 (Int.lor (A001196 n) (A274104 n)).toNat

end

end A149135.P11239644957682198034

/-! ## A149135.P2272435368922437883

`A082514(A385024(n+3))-A022839(n+1)`
-/

namespace A149135.P2272435368922437883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082514 (A385024 (n + 3)).toNat - A022839 (n + 1)

end

end A149135.P2272435368922437883

/-!
# A149136: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 0), (0, -1, 1), (1, -1, -1), (1, 1, 0)}.

The programs for A149136, there is no canonical definition to state claims against.
-/

/-! ## A149136.P5601227820807991841

`A149173(n)-A276204(A302117(n))`
-/

namespace A149136.P5601227820807991841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149173 n - A276204 (A302117 n).toNat

end

end A149136.P5601227820807991841

/-! ## A149136.P13051785828317946422

`A004396(A244895(n)+A091218(n+1))`
-/

namespace A149136.P13051785828317946422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A244895 n + A091218 (n + 1)).toNat

end

end A149136.P13051785828317946422

/-! ## A149136.P3736332489222625898

`A149143(n)-A064692(A155304(n+4))`
-/

namespace A149136.P3736332489222625898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149143 n - A064692 (A155304 (n + 4)).toNat

end

end A149136.P3736332489222625898

/-!
# A149137: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, -1), (-1, 0, 1), (1, -1, 0), (1, 1, 0)}.

The programs for A149137, there is no canonical definition to state claims against.
-/

/-! ## A149137.P11227160263014664402

`A149138(n)-A343953(A006758(n))`
-/

namespace A149137.P11227160263014664402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149138 n - A343953 (A006758 n).toNat

end

end A149137.P11227160263014664402

/-! ## A149137.P14675238024212856468

`A255408(or(A149139(n), A149143(n)))`
-/

namespace A149137.P14675238024212856468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255408 (Int.lor (A149139 n) (A149143 n)).toNat

end

end A149137.P14675238024212856468

/-! ## A149137.P14605800179184117673

`A255408(or(A149140(n), A149143(n)))`
-/

namespace A149137.P14605800179184117673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255408 (Int.lor (A149140 n) (A149143 n)).toNat

end

end A149137.P14605800179184117673

/-!
# A149138: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 1), (-1, 1, -1), (1, -1, 0), (1, 1, 0)}.

The programs for A149138, there is no canonical definition to state claims against.
-/

/-! ## A149138.P9302439436101159941

`A343953(A006758(n))+A149137(n)`
-/

namespace A149138.P9302439436101159941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343953 (A006758 n).toNat + A149137 n

end

end A149138.P9302439436101159941

/-! ## A149138.P10497035085148709068

`A156878(A320738(n+2))+A081705(n+1)`
-/

namespace A149138.P10497035085148709068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156878 (A320738 (n + 2)).toNat + A081705 (n + 1)

end

end A149138.P10497035085148709068

/-!
# A149139: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, -1, 1), (-1, 0, 0), (1, -1, 1), (1, 1, 0)}.

The programs for A149139, there is no canonical definition to state claims against.
-/

/-! ## A149139.P11206715194932865310

`A149140(A073789(n))`
-/

namespace A149139.P11206715194932865310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149140 (A073789 n).toNat

end

end A149139.P11206715194932865310

/-! ## A149139.P11143639146294689052

`A149140(A171644(n))`
-/

namespace A149139.P11143639146294689052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149140 (A171644 n).toNat

end

end A149139.P11143639146294689052

/-! ## A149139.P8488194932437883566

`A149140(A004869(n+1))`
-/

namespace A149139.P8488194932437883566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149140 (A004869 (n + 1)).toNat

end

end A149139.P8488194932437883566

/-! ## A149139.P16798814726565962787

`A149140(A004880(n+1))`
-/

namespace A149139.P16798814726565962787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149140 (A004880 (n + 1)).toNat

end

end A149139.P16798814726565962787

/-!
# A149141: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, -1, 0), (-1, 0, 1), (1, -1, 1), (1, 1, 0)}.

The programs for A149141, there is no canonical definition to state claims against.
-/

/-! ## A149141.P17116070776361692786

`A126257(A149147(n)+A149136(n))`
-/

namespace A149141.P17116070776361692786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126257 (A149147 n + A149136 n).toNat

end

end A149141.P17116070776361692786

/-! ## A149141.P1987470900594457870

`A277193(A148869(n)+A017980(n))`
-/

namespace A149141.P1987470900594457870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277193 (A148869 n + A017980 n).toNat

end

end A149141.P1987470900594457870

/-! ## A149141.P17130906952572871552

`A277193(A350969(n+1)+A148869(n))`
-/

namespace A149141.P17130906952572871552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277193 (A350969 (n + 1) + A148869 n).toNat

end

end A149141.P17130906952572871552

/-!
# A149142: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, -1), (0, 1, -1), (1, 0, 1), (1, 1, -1)}.

The programs for A149142, there is no canonical definition to state claims against.
-/

/-! ## A149142.P11498838459523327949

`A240301(A017961(n)+A000123(n))`
-/

namespace A149142.P11498838459523327949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240301 (A017961 n + A000123 n).toNat

end

end A149142.P11498838459523327949

/-! ## A149142.P7307145046590234161

`A129830(A006840(n))`
-/

namespace A149142.P7307145046590234161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129830 (A006840 n).toNat

end

end A149142.P7307145046590234161

/-!
# A149143: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, -1, 1), (-1, 0, 1), (0, -1, 1), (1, 1, 0)}.

The programs for A149143, there is no canonical definition to state claims against.
-/

/-! ## A149143.P16668841960917376746

`A274282(A027423(n))+A079207(n)`
-/

namespace A149143.P16668841960917376746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274282 (A027423 n).toNat + A079207 n

end

end A149143.P16668841960917376746

/-! ## A149143.P11619239491893999073

`A149136(n)+A064692(A155304(n+4))`
-/

namespace A149143.P11619239491893999073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149136 n + A064692 (A155304 (n + 4)).toNat

end

end A149143.P11619239491893999073

/-! ## A149143.P16109896474119601895

`A004396(A318052(n+1)+A091218(n+1))`
-/

namespace A149143.P16109896474119601895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A318052 (n + 1) + A091218 (n + 1)).toNat

end

end A149143.P16109896474119601895

/-!
# A149144: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, -1), (-1, 1, 1), (0, 0, -1), (1, 0, 1)}.

The programs for A149144, there is no canonical definition to state claims against.
-/

/-! ## A149144.P6330898657833989152

`A025237(n)-A319453(A128773(n+1))`
-/

namespace A149144.P6330898657833989152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025237 n - A319453 (A128773 (n + 1)).toNat

end

end A149144.P6330898657833989152

/-! ## A149144.P8876985950839122380

`A277193(A000071(n+1))+A142727(A148869(n))`
-/

namespace A149144.P8876985950839122380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277193 (A000071 (n + 1)).toNat + A142727 (A148869 n).toNat

end

end A149144.P8876985950839122380

/-! ## A149144.P5639162034313296683

`A277193(A000071(n+1))+A277193(A148874(n))`
-/

namespace A149144.P5639162034313296683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277193 (A000071 (n + 1)).toNat + A277193 (A148874 n).toNat

end

end A149144.P5639162034313296683

/-!
# A149145: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 0), (1, -1, -1), (1, -1, 1), (1, 1, 0)}.

The programs for A149145, there is no canonical definition to state claims against.
-/

/-! ## A149145.P11852500522235448676

`A194640(A188312(n)+A173118(n))+A061398(A149136(n))`
-/

namespace A149145.P11852500522235448676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194640 (A188312 n + A173118 n).toNat + A061398 (A149136 n).toNat

end

end A149145.P11852500522235448676

/-! ## A149145.P11735120393665412933

`A194640(A256452(n+1)+A188312(n))+A061398(A149136(n))`
-/

namespace A149145.P11735120393665412933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194640 (A256452 (n + 1) + A188312 n).toNat + A061398 (A149136 n).toNat

end

end A149145.P11735120393665412933

/-!
# A149146: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, -1, 1), (-1, 1, 0), (1, -1, 0), (1, 1, 0)}.

The programs for A149146, there is no canonical definition to state claims against.
-/

/-! ## A149146.P8498466174664593215

`A121178(abs(2-3*n)+n)+A000005(A295110(n+1))`
-/

namespace A149146.P8498466174664593215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121178 (|2 - (3 * n : ℤ)| + (n : ℤ)).toNat + A000005 (A295110 (n + 1)).toNat

end

end A149146.P8498466174664593215

/-! ## A149146.P10524430287106729341

`A120684(n*a(n-2))` with `a(0)=1, a(1)=1, a(2)=4`
-/

namespace A149146.P10524430287106729341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 4] fun n a =>
  A120684 ((n : ℤ) * a (n - 2)).toNat

end

end A149146.P10524430287106729341

/-!
# A149147: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 1), (-1, 1, -1), (1, 0, -1), (1, 0, 1)}.

The programs for A149147, there is no canonical definition to state claims against.
-/

/-! ## A149147.P6314397995442287239

`A149148(n)-A010894(A123655(n+1))`
-/

namespace A149147.P6314397995442287239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149148 n - A010894 ((A123655 (n + 1)).toNat + 21)

end

end A149147.P6314397995442287239

/-! ## A149147.P9938690756547690366

`A149148(A001096(n))`
-/

namespace A149147.P9938690756547690366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149148 (A001096 n).toNat

end

end A149147.P9938690756547690366

/-!
# A149148: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, -1, 1), (-1, 0, 1), (1, 0, -1), (1, 1, 0)}.

The programs for A149148, there is no canonical definition to state claims against.
-/

/-! ## A149148.P588199977370392955

`A149150(n)-A350673(A350649(n))`
-/

namespace A149148.P588199977370392955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149150 n - A350673 (A350649 n).toNat

end

end A149148.P588199977370392955

/-!
# A149149: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 1), (-1, 1, -1), (1, 0, -1), (1, 0, 1)}.

The programs for A149149, there is no canonical definition to state claims against.
-/

/-! ## A149149.P10796189952881476973

`A321017(A303634(n+2))`
-/

namespace A149149.P10796189952881476973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321017 (A303634 (n + 2)).toNat

end

end A149149.P10796189952881476973

/-! ## A149149.P2211136590861260316

`xor(A149148(n), A185284(n²))`
-/

namespace A149149.P2211136590861260316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A149148 n) (A185284 (n ^ 2))

end

end A149149.P2211136590861260316

/-! ## A149149.P12685005599641897992

`A126257(A149150(n)+A149148(n))`
-/

namespace A149149.P12685005599641897992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126257 (A149150 n + A149148 n).toNat

end

end A149149.P12685005599641897992

/-!
# A149150: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, -1, 1), (-1, 1, 1), (1, 0, -1), (1, 1, 0)}.

The programs for A149150, there is no canonical definition to state claims against.
-/

/-! ## A149150.P16081564520878329548

`A096457(A149148(n))`
-/

namespace A149150.P16081564520878329548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096457 (A149148 n).toNat

end

end A149150.P16081564520878329548

/-!
# A149151: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, -1, 1), (-1, 0, 1), (1, -1, 1), (1, 1, 0)}.

The programs for A149151, there is no canonical definition to state claims against.
-/

/-! ## A149151.P4865903686184217728

`floor(sqrt(A194507((10^n+17)/9)))-char[5]`
-/

namespace A149151.P4865903686184217728
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A194507 (SequenceMachineLib.roundAway ((10 ^ n + 17 : ℚ) / 9)).toNat) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A149151.P4865903686184217728

/-! ## A149151.P1484571530584815267

`A087947(A116404(n))`
-/

namespace A149151.P1484571530584815267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087947 (A116404 n).toNat

end

end A149151.P1484571530584815267

/-!
# A149152: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, -1), (-1, 1, 0), (1, 0, -1), (1, 0, 1)}.

The programs for A149152, there is no canonical definition to state claims against.
-/

/-! ## A149152.P9933947512350638918

`A366318(n*a(n-2))` with `a(0)=1, a(1)=1, a(2)=4`
-/

namespace A149152.P9933947512350638918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 4] fun n a =>
  A366318 ((n : ℤ) * a (n - 2)).toNat

end

end A149152.P9933947512350638918

/-! ## A149152.P10515373206368601451

`floor(sqrt(A194507((10^n+17)/9)))`
-/

namespace A149152.P10515373206368601451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A194507 (SequenceMachineLib.roundAway ((10 ^ n + 17 : ℚ) / 9)).toNat)

end

end A149152.P10515373206368601451

/-!
# A149153: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 1), (-1, 1, -1), (1, -1, 0), (1, 1, 0)}.

The programs for A149153, there is no canonical definition to state claims against.
-/

/-! ## A149153.P17284986441028482079

`A110262(A148630(n))`
-/

namespace A149153.P17284986441028482079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110262 (A148630 n).toNat

end

end A149153.P17284986441028482079

/-! ## A149153.P14064718285257356928

`A269388(A358446(n)+1)`
-/

namespace A149153.P14064718285257356928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269388 (A358446 n + 1).toNat

end

end A149153.P14064718285257356928

/-!
# A149154: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 1), (-1, 1, 1), (1, -1, -1), (1, 1, 0)}.

The programs for A149154, there is no canonical definition to state claims against.
-/

/-! ## A149154.P6229314280909230441

`A149156(A073789(n))-A129607(A241702(n+1))`
-/

namespace A149154.P6229314280909230441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149156 (A073789 n).toNat - A129607 (A241702 (n + 1)).toNat

end

end A149154.P6229314280909230441

/-! ## A149154.P2732724504245486100

`A129607(A149156(n))-A129607(A241702(n+1))`
-/

namespace A149154.P2732724504245486100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129607 (A149156 n).toNat - A129607 (A241702 (n + 1)).toNat

end

end A149154.P2732724504245486100

/-! ## A149154.P11271467677888427364

`A289435(2*A149156(n))-A359005(A241702(n+1))`
-/

namespace A149154.P11271467677888427364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289435 (2 * A149156 n).toNat - A359005 (A241702 (n + 1)).toNat

end

end A149154.P11271467677888427364

/-!
# A149155: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 0), (-1, 0, 1), (1, 0, -1), (1, 1, 0)}.

The programs for A149155, there is no canonical definition to state claims against.
-/

/-! ## A149155.P14808048574484920838

`A149156(n)-A025436(A149156(n))`
-/

namespace A149155.P14808048574484920838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149156 n - A025436 (A149156 n).toNat

end

end A149155.P14808048574484920838

/-! ## A149155.P3949872804671461246

`A149156(A073789(n))`
-/

namespace A149155.P3949872804671461246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149156 (A073789 n).toNat

end

end A149155.P3949872804671461246

/-! ## A149155.P11769975133151642185

`A129607(A149156(n))`
-/

namespace A149155.P11769975133151642185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129607 (A149156 n).toNat

end

end A149155.P11769975133151642185

/-! ## A149155.P15434670487041975181

`A149156(A171644(n))`
-/

namespace A149155.P15434670487041975181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149156 (A171644 n).toNat

end

end A149155.P15434670487041975181

/-!
# A149157: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 0), (-1, 1, 1), (1, 0, -1), (1, 1, 0)}.

The programs for A149157, there is no canonical definition to state claims against.
-/

/-! ## A149157.P10521956926774379149

`A149158(A073789(n))`
-/

namespace A149157.P10521956926774379149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149158 (A073789 n).toNat

end

end A149157.P10521956926774379149

/-! ## A149157.P12283737706094583102

`A154470(A149158(n))`
-/

namespace A149157.P12283737706094583102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154470 (A149158 n).toNat

end

end A149157.P12283737706094583102

/-! ## A149157.P14840443330211492708

`A149158(A171644(n))`
-/

namespace A149157.P14840443330211492708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149158 (A171644 n).toNat

end

end A149157.P14840443330211492708

/-! ## A149157.P10940084299862802103

`A149158(A004869(n+1))`
-/

namespace A149157.P10940084299862802103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149158 (A004869 (n + 1)).toNat

end

end A149157.P10940084299862802103

/-!
# A149159: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (0, 0, -1), (0, 1, -1), (1, 0, 1), (1, 1, -1)}.

The programs for A149159, there is no canonical definition to state claims against.
-/

/-! ## A149159.P14595005365048611219

`∏{e}[2*5^n, A149160(#)]`
-/

namespace A149159.P14595005365048611219
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * 5 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A149160 (Nat.factorization (f1 n) p)

end

end A149159.P14595005365048611219

/-! ## A149159.P322019663482109519

`A004182(A149160(n))`
-/

namespace A149159.P322019663482109519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004182 (A149160 n).toNat

end

end A149159.P322019663482109519

/-! ## A149159.P7222670973129720395

`A149160(A073790(n))`
-/

namespace A149159.P7222670973129720395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149160 (A073790 n).toNat

end

end A149159.P7222670973129720395

/-! ## A149159.P12570373303568039527

`A149160(A171717(n))`
-/

namespace A149159.P12570373303568039527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149160 (A171717 n).toNat

end

end A149159.P12570373303568039527

/-! ## A149159.P2422578520092483415

`A149160(A004870(n+1))`
-/

namespace A149159.P2422578520092483415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149160 (A004870 (n + 1)).toNat

end

end A149159.P2422578520092483415

/-!
# A149161: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, -1, 1), (-1, 0, 1), (1, 1, -1), (1, 1, 0)}.

The programs for A149161, there is no canonical definition to state claims against.
-/

/-! ## A149161.P1465710825197311703

`A036465(A151473(n)+A022792(n+1))`
-/

namespace A149161.P1465710825197311703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036465 (A151473 n + A022792 (n + 1)).toNat

end

end A149161.P1465710825197311703

/-! ## A149161.P14764248942752221726

`A100417(A148646(n))`
-/

namespace A149161.P14764248942752221726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100417 (A148646 n).toNat

end

end A149161.P14764248942752221726

/-!
# A149162: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, -1, 0), (-1, 1, 0), (1, -1, 1), (1, 1, 0)}.

The programs for A149162, there is no canonical definition to state claims against.
-/

/-! ## A149162.P678811830417832471

`A002260(∏[n+3]/3-C(n², 2)/6)`
-/

namespace A149162.P678811830417832471
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (SequenceMachineLib.roundAway (((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 3 - (Nat.choose (n ^ 2) 2 : ℚ) / 6)).toNat

end

end A149162.P678811830417832471

/-! ## A149162.P13647522825676882093

`A173999(A148624(n))`
-/

namespace A149162.P13647522825676882093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173999 (A148624 n).toNat

end

end A149162.P13647522825676882093

/-!
# A149163: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, -1), (-1, 1, 1), (1, -1, 0), (1, 1, 0)}.

The programs for A149163, there is no canonical definition to state claims against.
-/

/-! ## A149163.P3099959487834447208

`A149164(n)-A261424(A061700(n))`
-/

namespace A149163.P3099959487834447208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149164 n - A261424 (A061700 n).toNat

end

end A149163.P3099959487834447208

/-! ## A149163.P2796535075456687840

`A000041(n)*A095162(A000041(n))`
-/

namespace A149163.P2796535075456687840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n * A095162 (A000041 n).toNat

end

end A149163.P2796535075456687840

/-! ## A149163.P1337772951021382092

`A001402(n)*A095162(A001402(n))`
-/

namespace A149163.P1337772951021382092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001402 n * A095162 (A001402 n).toNat

end

end A149163.P1337772951021382092

/-!
# A149164: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, -1), (-1, 1, 1), (1, -1, 0), (1, 1, 0)}.

The programs for A149164, there is no canonical definition to state claims against.
-/

/-! ## A149164.P2684956771846051005

`A228894(A148753(n)+A080844(n))`
-/

namespace A149164.P2684956771846051005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228894 (A148753 n + A080844 n).toNat

end

end A149164.P2684956771846051005

/-! ## A149164.P4792078394888501331

`A261424(A061700(n))+A149163(n)`
-/

namespace A149164.P4792078394888501331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261424 (A061700 n).toNat + A149163 n

end

end A149164.P4792078394888501331

/-!
# A149165: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 1), (-1, 1, 1), (1, -1, -1), (1, 1, 0)}.

The programs for A149165, there is no canonical definition to state claims against.
-/

/-! ## A149165.P17531099078331688171

`A132270(8*A302179(n))-A330054(A004278(n+1))`
-/

namespace A149165.P17531099078331688171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132270 (8 * A302179 n).toNat - A330054 (A004278 (n + 1)).toNat

end

end A149165.P17531099078331688171

/-! ## A149165.P11498531276940867221

`A112480(A041037(n))`
-/

namespace A149165.P11498531276940867221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112480 (A041037 n).toNat

end

end A149165.P11498531276940867221

/-!
# A149166: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, -1, 1), (-1, 1, 0), (1, -1, 1), (1, 1, 0)}.

The programs for A149166, there is no canonical definition to state claims against.
-/

/-! ## A149166.P7475738056187833634

`A275677(ceil(2^(n-1)))*A305751(n)`
-/

namespace A149166.P7475738056187833634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275677 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat * A305751 n

end

end A149166.P7475738056187833634

/-! ## A149166.P8906977321570801201

`A302179(n)+A090225(A176627(n))`
-/

namespace A149166.P8906977321570801201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302179 n + A090225 (A176627 n).toNat

end

end A149166.P8906977321570801201

/-! ## A149166.P16067266362845308002

`A308702(A302179(n)+A174410(n))`
-/

namespace A149166.P16067266362845308002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308702 (A302179 n + A174410 n).toNat

end

end A149166.P16067266362845308002

/-!
# A149167: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, -1, 0), (-1, 1, 1), (1, -1, 1), (1, 1, 0)}.

The programs for A149167, there is no canonical definition to state claims against.
-/

/-! ## A149167.P18236649009659623498

`A136149(2^n)-∏{e}[n+1, #+1]`
-/

namespace A149167.P18236649009659623498
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136149 (2 ^ n) - ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ)

end

end A149167.P18236649009659623498

/-! ## A149167.P4355057212537617528

`A318469(C(2*n, n)/(n+1)*n!)+floor(n/2)`
-/

namespace A149167.P4355057212537617528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318469 (SequenceMachineLib.roundAway ((Nat.choose (2 * n) n : ℚ) / (n + 1 : ℚ) * (Nat.factorial n : ℚ))).toNat + ⌊(n : ℚ) / 2⌋

end

end A149167.P4355057212537617528

/-!
# A149168: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, -1), (-1, 1, 1), (1, 0, -1), (1, 0, 1)}.

The programs for A149168, there is no canonical definition to state claims against.
-/

/-! ## A149168.P15270874429408972768

`A335236(a(n-1))` with `a(0)=1, a(1)=1, a(2)=4, a(3)=9`
-/

namespace A149168.P15270874429408972768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 4, 9] fun n a =>
  A335236 (a (n - 1)).toNat

end

end A149168.P15270874429408972768

/-! ## A149168.P8427493544396771521

`A149169(A001096(n))`
-/

namespace A149168.P8427493544396771521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149169 (A001096 n).toNat

end

end A149168.P8427493544396771521

/-!
# A149170: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, -1, 1), (-1, 1, 1), (1, -1, 1), (1, 1, 0)}.

The programs for A149170, there is no canonical definition to state claims against.
-/

/-! ## A149170.P785596332691857535

`A166378(A328170(2*n))+A022563(n+2)`
-/

namespace A149170.P785596332691857535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166378 (A328170 (2 * n)).toNat + A022563 (n + 2)

end

end A149170.P785596332691857535

/-! ## A149170.P14355510626954131120

`A007306(A091059(n))`
-/

namespace A149170.P14355510626954131120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007306 (A091059 n).toNat

end

end A149170.P14355510626954131120

/-!
# A149171: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 0), (0, -1, 0), (0, 0, -1), (1, 1, 0)}.

The programs for A149171, there is no canonical definition to state claims against.
-/

/-! ## A149171.P17549098416581004210

`A149238(n)-A008676(A149223(n))`
-/

namespace A149171.P17549098416581004210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149238 n - A008676 (A149223 n).toNat

end

end A149171.P17549098416581004210

/-! ## A149171.P13979031546857208619

`A259361(n)+A141206(A294768(n))`
-/

namespace A149171.P13979031546857208619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 n + A141206 (A294768 n).toNat

end

end A149171.P13979031546857208619

/-!
# A149172: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, -1), (-1, 0, 0), (0, -1, 1), (1, 1, 0)}.

The programs for A149172, there is no canonical definition to state claims against.
-/

/-! ## A149172.P894361248098923291

`A065382(A290658(n)+A000045(3*n+2))`
-/

namespace A149172.P894361248098923291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065382 (A290658 n + A000045 (3 * n + 2)).toNat

end

end A149172.P894361248098923291

/-! ## A149172.P15693687609110732141

`A066888(A339971(n)+A000045(3*n+2))`
-/

namespace A149172.P15693687609110732141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066888 (A339971 n + A000045 (3 * n + 2)).toNat

end

end A149172.P15693687609110732141

/-!
# A149173: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 0), (0, -1, 0), (0, 1, -1), (1, 1, 0)}.

The programs for A149173, there is no canonical definition to state claims against.
-/

/-! ## A149173.P1176521041168959884

`A120305(n)+A000195(A042283(n))`
-/

namespace A149173.P1176521041168959884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120305 n + A000195 (A042283 n).toNat

end

end A149173.P1176521041168959884

/-! ## A149173.P12569177877015345697

`A024417(A383974(n+1))`
-/

namespace A149173.P12569177877015345697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024417 (A383974 (n + 1)).toNat

end

end A149173.P12569177877015345697

/-! ## A149173.P6847451706810069130

`A100196(2*A166516(n)²)`
-/

namespace A149173.P6847451706810069130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (2 * A166516 n ^ 2).toNat

end

end A149173.P6847451706810069130

/-!
# A149174: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 0), (-1, 1, -1), (0, -1, 1), (1, 1, 0)}.

The programs for A149174, there is no canonical definition to state claims against.
-/

/-! ## A149174.P7683461619195882937

`A108954(A256142(n)-A001590(2*n))`
-/

namespace A149174.P7683461619195882937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108954 (A256142 n - A001590 (2 * n)).toNat

end

end A149174.P7683461619195882937

/-! ## A149174.P1625564934153767036

`A248180(A150000(n))+A046992(A106369(n+1))`
-/

namespace A149174.P1625564934153767036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248180 (A150000 n).toNat + A046992 (A106369 (n + 1)).toNat

end

end A149174.P1625564934153767036

/-! ## A149174.P9090041449516654319

`A066339(6*A006604(n))+A046992(A106369(n+1))`
-/

namespace A149174.P9090041449516654319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066339 (6 * A006604 n).toNat + A046992 (A106369 (n + 1)).toNat

end

end A149174.P9090041449516654319

/-!
# A149175: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 0), (0, 0, -1), (1, -1, 0), (1, 1, 0)}.

The programs for A149175, there is no canonical definition to state claims against.
-/

/-! ## A149175.P409267209085063303

`A220658(A149710(n)+A149708(n))`
-/

namespace A149175.P409267209085063303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220658 (A149710 n + A149708 n).toNat

end

end A149175.P409267209085063303

/-! ## A149175.P4572522847557333699

`A008616(A183122(n)*A310371(n))`
-/

namespace A149175.P4572522847557333699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (A183122 n * A310371 n).toNat

end

end A149175.P4572522847557333699

/-! ## A149175.P18095406735472843380

`A110656(A006177(n+1)*A194407(n+1))`
-/

namespace A149175.P18095406735472843380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 (A006177 (n + 1) * A194407 (n + 1)).toNat

end

end A149175.P18095406735472843380

/-!
# A149176: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, -1), (-1, 0, 1), (0, 1, -1), (1, 0, 1)}.

The programs for A149176, there is no canonical definition to state claims against.
-/

/-! ## A149176.P17802796543004807253

`A220658(2*A149717(n))`
-/

namespace A149176.P17802796543004807253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220658 (2 * A149717 n).toNat

end

end A149176.P17802796543004807253

/-! ## A149176.P17100315456005662451

`A220658(lcm(2, A149717(n)))`
-/

namespace A149176.P17100315456005662451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220658 (Int.lcm 2 (A149717 n))

end

end A149176.P17100315456005662451

/-! ## A149176.P5709454244431951881

`A033270(or(3, A151307(n)))`
-/

namespace A149176.P5709454244431951881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033270 (Int.lor 3 (A151307 n)).toNat

end

end A149176.P5709454244431951881

/-!
# A149177: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 0), (-1, 1, -1), (0, 1, -1), (1, 0, 1)}.

The programs for A149177, there is no canonical definition to state claims against.
-/

/-! ## A149177.P1210703499730023420

`A289494(4^n-comp[and(n, n+3)+1])`
-/

namespace A149177.P1210703499730023420
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (n + 3) + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289494 (4 ^ n - SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A149177.P1210703499730023420

/-! ## A149177.P5644616011316034351

`A289494(record[A288129(n+1)])`
-/

namespace A149177.P5644616011316034351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288129 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289494 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A149177.P5644616011316034351

/-! ## A149177.P238842631253475487

`A289494(or(A020048(n), A020522(n)))`
-/

namespace A149177.P238842631253475487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289494 (Int.lor (A020048 n) (A020522 n)).toNat

end

end A149177.P238842631253475487

/-!
# A149178: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, -1), (-1, 0, 1), (0, -1, 1), (1, 1, 0)}.

The programs for A149178, there is no canonical definition to state claims against.
-/

/-! ## A149178.P12302214888975641829

`A195174(or(4, A199843(n+1)))`
-/

namespace A149178.P12302214888975641829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195174 (Int.lor 4 (A199843 (n + 1))).toNat

end

end A149178.P12302214888975641829

/-! ## A149178.P9101573562307264737

`A065033(or(A026029(n), A028986(n+1)))`
-/

namespace A149178.P9101573562307264737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (Int.lor (A026029 n) (A028986 (n + 1))).toNat

end

end A149178.P9101573562307264737

/-! ## A149178.P14973780428051182246

`A157271(or(A003242(n), A298732(3*n+1)))`
-/

namespace A149178.P14973780428051182246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (Int.lor (A003242 n) (A298732 (3 * n + 1))).toNat

end

end A149178.P14973780428051182246

/-!
# A149179: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 0), (1, -1, 0), (1, 0, -1), (1, 1, 0)}.

The programs for A149179, there is no canonical definition to state claims against.
-/

/-! ## A149179.P9933160884897512318

`A354963(and(n, A355015(n)))`
-/

namespace A149179.P9933160884897512318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354963 (Int.land (n : ℤ) (A355015 n)).toNat

end

end A149179.P9933160884897512318

/-! ## A149179.P586250726535435991

`A149180(n)-A185354(A092991(n))`
-/

namespace A149179.P586250726535435991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149180 n - A185354 (A092991 n).toNat

end

end A149179.P586250726535435991

/-!
# A149180: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 0), (0, 1, -1), (1, -1, 0), (1, 1, 0)}.

The programs for A149180, there is no canonical definition to state claims against.
-/

/-! ## A149180.P16176853548398793326

`A149179(n)+A044940(A113719(n))`
-/

namespace A149180.P16176853548398793326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149179 n + A044940 (A113719 n).toNat

end

end A149180.P16176853548398793326

/-! ## A149180.P2255677030602246979

`A149179(n)+A044940(A333094(n))`
-/

namespace A149180.P2255677030602246979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149179 n + A044940 (A333094 n).toNat

end

end A149180.P2255677030602246979

/-! ## A149180.P14495706134016803498

`A149179(n)+A125005(A065503(n+1))`
-/

namespace A149180.P14495706134016803498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149179 n + A125005 (A065503 (n + 1)).toNat

end

end A149180.P14495706134016803498

/-!
# A149181: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 0), (0, -1, 1), (0, 0, -1), (1, 1, 0)}.

The programs for A149181, there is no canonical definition to state claims against.
-/

/-! ## A149181.P10801415266773365760

`A003963(∑[A098070(n)])`
-/

namespace A149181.P10801415266773365760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A149181.P10801415266773365760

/-! ## A149181.P16825258147591002880

`A061598(A149182(n)+n)`
-/

namespace A149181.P16825258147591002880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061598 (A149182 n + (n : ℤ)).toNat

end

end A149181.P16825258147591002880

/-!
# A149182: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 1), (1, -1, -1), (1, -1, 0), (1, 1, 0)}.

The programs for A149182, there is no canonical definition to state claims against.
-/

/-! ## A149182.P16678712757247407307

`A149181(n)+A064834(A061700(n))`
-/

namespace A149182.P16678712757247407307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149181 n + A064834 (A061700 n).toNat

end

end A149182.P16678712757247407307

/-! ## A149182.P8975325838332781907

`A025237(n)-A101264(A159004(2*(n+1)))`
-/

namespace A149182.P8975325838332781907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025237 n - A101264 (A159004 (2 * (n + 1))).toNat

end

end A149182.P8975325838332781907

/-!
# A149183: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 0), (0, -1, 0), (1, 1, -1), (1, 1, 0)}.

The programs for A149183, there is no canonical definition to state claims against.
-/

/-! ## A149183.P10154583290355441097

`A340998(A009889(n))+A149182(n)`
-/

namespace A149183.P10154583290355441097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340998 ((A009889 n).toNat + 140) + A149182 n

end

end A149183.P10154583290355441097

/-! ## A149183.P7144204297277835249

`A093517(A148399(n))`
-/

namespace A149183.P7144204297277835249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093517 (A148399 n).toNat

end

end A149183.P7144204297277835249

/-!
# A149184: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 0), (0, -1, 1), (1, 0, -1), (1, 1, 0)}.

The programs for A149184, there is no canonical definition to state claims against.
-/

/-! ## A149184.P11039641009719732462

`A023193(A151020(n))`
-/

namespace A149184.P11039641009719732462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023193 (A151020 n).toNat

end

end A149184.P11039641009719732462

/-! ## A149184.P12669835825667693884

`A005041(or(n, A244594(n)))`
-/

namespace A149184.P12669835825667693884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005041 (Int.lor (n : ℤ) (A244594 n)).toNat

end

end A149184.P12669835825667693884

/-!
# A149185: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 0), (-1, 1, -1), (0, -1, 1), (1, 1, 0)}.

The programs for A149185, there is no canonical definition to state claims against.
-/

/-! ## A149185.P10285775650260719436

`xor(A149186(n), A185284((1-n)²))`
-/

namespace A149185.P10285775650260719436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A149186 n) (A185284 ((1 - (n : ℤ)) ^ 2).toNat)

end

end A149185.P10285775650260719436

/-! ## A149185.P10961751133698486

`A149186(A073788(n))`
-/

namespace A149185.P10961751133698486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149186 (A073788 n).toNat

end

end A149185.P10961751133698486

/-! ## A149185.P3931237254195277037

`A149186(A171596(n))`
-/

namespace A149185.P3931237254195277037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149186 (A171596 n).toNat

end

end A149185.P3931237254195277037

/-!
# A149186: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 1), (-1, 1, -1), (0, -1, 1), (1, 1, 0)}.

The programs for A149186, there is no canonical definition to state claims against.
-/

/-! ## A149186.P15575846929106990308

`xor(A149185(n), A185284((1-n)²))`
-/

namespace A149186.P15575846929106990308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A149185 n) (A185284 ((1 - (n : ℤ)) ^ 2).toNat)

end

end A149186.P15575846929106990308

/-!
# A149187: a(n) = total number of partitions of [1, 2, ..., k] into exactly n blocks, each of size 1, 2, ..., 6, for 0 <= k <= 6n.

The programs for A149187, there is no canonical definition to state claims against.
-/

/-! ## A149187.P17403836336964662075

`A144512(∑[n+6]+9)`
-/

namespace A149187.P17403836336964662075
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144512 (∑ j ∈ Finset.range (n + 1), f1 j + 9)

end

end A149187.P17403836336964662075

/-!
# A149188: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 1), (-1, 1, -1), (0, 1, -1), (1, 0, 1)}.

The programs for A149188, there is no canonical definition to state claims against.
-/

/-! ## A149188.P13273950084030710685

`A110656(∑[4*A150084(n)])-a(n-1)` with `a(0)=1`
-/

namespace A149188.P13273950084030710685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A150084 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A110656 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - a (n - 1)

end

end A149188.P13273950084030710685

/-! ## A149188.P8033719074093784444

`A008679(7*A047095(n)+6)-a(n-1)` with `a(0)=1`
-/

namespace A149188.P8033719074093784444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A008679 (7 * A047095 n + 6).toNat - a (n - 1)

end

end A149188.P8033719074093784444

/-! ## A149188.P8195780465605339065

`A088218(n)+A040076(A003149(n))`
-/

namespace A149188.P8195780465605339065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088218 n + A040076 (A003149 n).toNat

end

end A149188.P8195780465605339065

/-!
# A149189: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, -1), (-1, 1, 1), (0, -1, 1), (1, 1, 0)}.

The programs for A149189, there is no canonical definition to state claims against.
-/

/-! ## A149189.P3512894343544914784

`A149188(n)+A125005(A079223(n))`
-/

namespace A149189.P3512894343544914784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149188 n + A125005 (A079223 n).toNat

end

end A149189.P3512894343544914784

/-! ## A149189.P13289230552777913451

`A032123(n)-A025465(A047665(n))`
-/

namespace A149189.P13289230552777913451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032123 n - A025465 (A047665 n).toNat

end

end A149189.P13289230552777913451

/-! ## A149189.P3976810427841488591

`A308369(n+1)-A225639(A372541(n))`
-/

namespace A149189.P3976810427841488591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308369 (n + 1) - A225639 (A372541 n).toNat

end

end A149189.P3976810427841488591

/-!
# A149190: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, -1), (-1, 1, 0), (0, 1, -1), (1, 0, 1)}.

The programs for A149190, there is no canonical definition to state claims against.
-/

/-! ## A149190.P6748092122036917637

`A337863(n)+A262626(A055997(n+1))`
-/

namespace A149190.P6748092122036917637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337863 n + A262626 (A055997 (n + 1)).toNat

end

end A149190.P6748092122036917637

/-! ## A149190.P12377969936712096807

`A158008(A045891(n))`
-/

namespace A149190.P12377969936712096807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158008 (A045891 n).toNat

end

end A149190.P12377969936712096807

/-!
# A149191: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, -1), (-1, 0, 0), (1, -1, 1), (1, 1, 0)}.

The programs for A149191, there is no canonical definition to state claims against.
-/

/-! ## A149191.P14423644994252392279

`A149192(n)-A002266(A208227(n))`
-/

namespace A149191.P14423644994252392279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149192 n - A002266 (A208227 n).toNat

end

end A149191.P14423644994252392279

/-! ## A149191.P1016859862592184719

`A149193(n)-A273920(A160672(n))`
-/

namespace A149191.P1016859862592184719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149193 n - A273920 (A160672 n).toNat

end

end A149191.P1016859862592184719

/-! ## A149191.P9166421571153276860

`A149194(n)-A273920(A160672(n))`
-/

namespace A149191.P9166421571153276860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149194 n - A273920 (A160672 n).toNat

end

end A149191.P9166421571153276860

/-!
# A149192: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 0), (1, -1, 0), (1, 1, -1), (1, 1, 0)}.

The programs for A149192, there is no canonical definition to state claims against.
-/

/-! ## A149192.P16127840683254553457

`A149191(n)+A002266(A208227(n))`
-/

namespace A149192.P16127840683254553457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149191 n + A002266 (A208227 n).toNat

end

end A149192.P16127840683254553457

/-! ## A149192.P2967728400328737758

`A133430(A319765(n))+A000110(n)`
-/

namespace A149192.P2967728400328737758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133430 (A319765 n).toNat + A000110 n

end

end A149192.P2967728400328737758

/-!
# A149193: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 0), (0, 0, -1), (1, -1, 1), (1, 1, 0)}.

The programs for A149193, there is no canonical definition to state claims against.
-/

/-! ## A149193.P2316766977602059758

`A149194(A073788(n))`
-/

namespace A149193.P2316766977602059758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149194 (A073788 n).toNat

end

end A149193.P2316766977602059758

/-! ## A149193.P3808273382909752547

`A149194(A171596(n))`
-/

namespace A149193.P3808273382909752547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149194 (A171596 n).toNat

end

end A149193.P3808273382909752547

/-! ## A149193.P12339916858760859248

`A149194(A004868(n+1))`
-/

namespace A149193.P12339916858760859248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149194 (A004868 (n + 1)).toNat

end

end A149193.P12339916858760859248

/-!
# A149195: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 1), (-1, 1, -1), (0, 1, -1), (1, 0, 1)}.

The programs for A149195, there is no canonical definition to state claims against.
-/

/-! ## A149195.P10995475426423695812

`A149196(A073788(n))`
-/

namespace A149195.P10995475426423695812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149196 (A073788 n).toNat

end

end A149195.P10995475426423695812

/-! ## A149195.P13063769374345742414

`A149196(A171596(n))`
-/

namespace A149195.P13063769374345742414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149196 (A171596 n).toNat

end

end A149195.P13063769374345742414

/-! ## A149195.P8359487361396392482

`A149196(A004868(n+1))`
-/

namespace A149195.P8359487361396392482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149196 (A004868 (n + 1)).toNat

end

end A149195.P8359487361396392482

/-!
# A149197: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 0), (1, -1, 1), (1, 0, -1), (1, 1, 0)}.

The programs for A149197, there is no canonical definition to state claims against.
-/

/-! ## A149197.P15474368536216640597

`A149198(A073788(n))`
-/

namespace A149197.P15474368536216640597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149198 (A073788 n).toNat

end

end A149197.P15474368536216640597

/-! ## A149197.P4874280089895927261

`A149198(A171596(n))`
-/

namespace A149197.P4874280089895927261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149198 (A171596 n).toNat

end

end A149197.P4874280089895927261

/-! ## A149197.P1995988550936845519

`A149198(A004868(n+1))`
-/

namespace A149197.P1995988550936845519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149198 (A004868 (n + 1)).toNat

end

end A149197.P1995988550936845519

/-!
# A149199: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 1), (-1, 1, -1), (0, -1, 1), (1, 1, 0)}.

The programs for A149199, there is no canonical definition to state claims against.
-/

/-! ## A149199.P2767176327522665837

`A320297(A029857(n+1)-A000085(n))`
-/

namespace A149199.P2767176327522665837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320297 (A029857 (n + 1) - A000085 n).toNat

end

end A149199.P2767176327522665837

/-! ## A149199.P11470290007607225001

`A359400(n)+A008615(A290908(n))`
-/

namespace A149199.P11470290007607225001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359400 n + A008615 (A290908 n).toNat

end

end A149199.P11470290007607225001

