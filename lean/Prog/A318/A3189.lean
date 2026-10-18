import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C036
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B011.C001
import Seq.B012.C000
import Seq.B013.C000
import Seq.B014.C000
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
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A318900: Number of n-node rooted trees in which four equals the maximal number of nodes in paths starting at a leaf and ending at the first branching node or at the root.

The programs for A318900, there is no canonical definition to state claims against.
-/

/-! ## A318900.P6924029577571046061

`A255704(A052905(n)+9)`
-/

namespace A318900.P6924029577571046061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255704 (A052905 n + 9).toNat

end

end A318900.P6924029577571046061

/-! ## A318900.P9312218828613581343

`A255704(A055999(n)+10)`
-/

namespace A318900.P9312218828613581343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255704 (A055999 n + 10).toNat

end

end A318900.P9312218828613581343

/-! ## A318900.P16997734341545437182

`A255704(A167614(n+2)+1)`
-/

namespace A318900.P16997734341545437182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255704 (A167614 (n + 2) + 1).toNat

end

end A318900.P16997734341545437182

/-! ## A318900.P3124040234970483649

`A255704(A167499(n+2)-1)`
-/

namespace A318900.P3124040234970483649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255704 (A167499 (n + 2) - 1).toNat

end

end A318900.P3124040234970483649

/-! ## A318900.P10914608828947225292

`A255704(A166136(n+2)-2)`
-/

namespace A318900.P10914608828947225292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255704 (A166136 (n + 2) - 2).toNat

end

end A318900.P10914608828947225292

/-! ## A318900.P17536229774215703834

`A255704(A167487(n+2)-3)`
-/

namespace A318900.P17536229774215703834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255704 (A167487 (n + 2) - 3).toNat

end

end A318900.P17536229774215703834

/-! ## A318900.P14362389710996691615

`A255704(A166136(n+1)+1+n)`
-/

namespace A318900.P14362389710996691615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255704 (A166136 (n + 1) + 1 + (n : ℤ)).toNat

end

end A318900.P14362389710996691615

/-!
# A318901: Number of n-node rooted trees in which five equals the maximal number of nodes in paths starting at a leaf and ending at the first branching node or at the root.

The programs for A318901, there is no canonical definition to state claims against.
-/

/-! ## A318901.P18371365840193713303

`A052328(n+5)-A052327(n+5)`
-/

namespace A318901.P18371365840193713303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052328 (n + 5) - A052327 (n + 5)

end

end A318901.P18371365840193713303

/-! ## A318901.P6454725338237988742

`A255704(A167499(n+3))`
-/

namespace A318901.P6454725338237988742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255704 (A167499 (n + 3)).toNat

end

end A318901.P6454725338237988742

/-! ## A318901.P4404416217570829913

`A255704(A167614(n+3)+2)`
-/

namespace A318901.P4404416217570829913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255704 (A167614 (n + 3) + 2).toNat

end

end A318901.P4404416217570829913

/-! ## A318901.P16750743057291285225

`A255704(A000217(n+4)+5)`
-/

namespace A318901.P16750743057291285225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255704 (A000217 (n + 4) + 5).toNat

end

end A318901.P16750743057291285225

/-! ## A318901.P10861471828183765068

`A255704(A000124(n+5)-(n+1))`
-/

namespace A318901.P10861471828183765068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255704 (A000124 (n + 5) - (n + 1 : ℤ)).toNat

end

end A318901.P10861471828183765068

/-!
# A318902: Number of n-node rooted trees in which six equals the maximal number of nodes in paths starting at a leaf and ending at the first branching node or at the root.

The programs for A318902, there is no canonical definition to state claims against.
-/

/-! ## A318902.P2804925000696698327

`A052329(n+6)-A052328(n+6)`
-/

namespace A318902.P2804925000696698327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052329 (n + 6) - A052328 (n + 6)

end

end A318902.P2804925000696698327

/-! ## A318902.P13106970256624186384

`A255704(A166136(n+4))`
-/

namespace A318902.P13106970256624186384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255704 (A166136 (n + 4)).toNat

end

end A318902.P13106970256624186384

/-! ## A318902.P1396872029814433566

`A255704(A167499(n+4)+1)`
-/

namespace A318902.P1396872029814433566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255704 (A167499 (n + 4) + 1).toNat

end

end A318902.P1396872029814433566

/-! ## A318902.P15951772891878900685

`A255704(A167614(n+4)+3)`
-/

namespace A318902.P15951772891878900685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255704 (A167614 (n + 4) + 3).toNat

end

end A318902.P15951772891878900685

/-! ## A318902.P10871265362106646074

`A255704(A000124(n+5)+5)`
-/

namespace A318902.P10871265362106646074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255704 (A000124 (n + 5) + 5).toNat

end

end A318902.P10871265362106646074

/-! ## A318902.P1371430108877517818

`A255704(A000217(n+5)+6)`
-/

namespace A318902.P1371430108877517818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255704 (A000217 (n + 5) + 6).toNat

end

end A318902.P1371430108877517818

/-! ## A318902.P4196106301248484459

`A255704(A052905(n+2)+11)`
-/

namespace A318902.P4196106301248484459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255704 (A052905 (n + 2) + 11).toNat

end

end A318902.P4196106301248484459

/-! ## A318902.P10041674130266431444

`A255704(A055998(n+5)-A103517(n+1))`
-/

namespace A318902.P10041674130266431444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255704 (A055998 (n + 5) - A103517 (n + 1)).toNat

end

end A318902.P10041674130266431444

/-! ## A318902.P1622709455002129715

`A255704(A103517(n+8)+A055998(n+1))`
-/

namespace A318902.P1622709455002129715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255704 (A103517 (n + 8) + A055998 (n + 1)).toNat

end

end A318902.P1622709455002129715

/-!
# A318903: Number of n-node rooted trees in which seven equals the maximal number of nodes in paths starting at a leaf and ending at the first branching node or at the root.

The programs for A318903, there is no canonical definition to state claims against.
-/

/-! ## A318903.P5565127233324451175

`A255637(n+7)-A052329(n+7)`
-/

namespace A318903.P5565127233324451175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255637 (n + 7) - A052329 (n + 7)

end

end A318903.P5565127233324451175

/-! ## A318903.P6293339485633275758

`A255704(A167487(n+5))`
-/

namespace A318903.P6293339485633275758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255704 (A167487 (n + 5)).toNat

end

end A318903.P6293339485633275758

/-! ## A318903.P3676192701655835320

`A255704(A167499(n+5)+2)`
-/

namespace A318903.P3676192701655835320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255704 (A167499 (n + 5) + 2).toNat

end

end A318903.P3676192701655835320

/-! ## A318903.P9545846074521300135

`A255704(A167614(n+5)+4)`
-/

namespace A318903.P9545846074521300135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255704 (A167614 (n + 5) + 4).toNat

end

end A318903.P9545846074521300135

/-! ## A318903.P9360877345130576519

`A255704(A000217(n+6)+7)`
-/

namespace A318903.P9360877345130576519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255704 (A000217 (n + 6) + 7).toNat

end

end A318903.P9360877345130576519

/-!
# A318904: Number of n-node rooted trees in which eight equals the maximal number of nodes in paths starting at a leaf and ending at the first branching node or at the root.

The programs for A318904, there is no canonical definition to state claims against.
-/

/-! ## A318904.P4951414775498426709

`A255638(n+8)-A255637(n+8)`
-/

namespace A318904.P4951414775498426709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255638 (n + 8) - A255637 (n + 8)

end

end A318904.P4951414775498426709

/-! ## A318904.P15554274770004044660

`A255704(A167499(n+6)+3)`
-/

namespace A318904.P15554274770004044660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255704 (A167499 (n + 6) + 3).toNat

end

end A318904.P15554274770004044660

/-! ## A318904.P4011335658575469155

`A255704(A000217(n+7)+8)`
-/

namespace A318904.P4011335658575469155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255704 (A000217 (n + 7) + 8).toNat

end

end A318904.P4011335658575469155

/-! ## A318904.P7975080130809451895

`A255704(A055998(n+7)-A103517(n+2))`
-/

namespace A318904.P7975080130809451895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255704 (A055998 (n + 7) - A103517 (n + 2)).toNat

end

end A318904.P7975080130809451895

/-! ## A318904.P4722703496694309850

`A255704(A000124(n+9)-A103517(n+4))`
-/

namespace A318904.P4722703496694309850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255704 (A000124 (n + 9) - A103517 (n + 4)).toNat

end

end A318904.P4722703496694309850

/-! ## A318904.P17464846367890084443

`A255704(A103517(n+9)+A000124(n+5))`
-/

namespace A318904.P17464846367890084443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255704 (A103517 (n + 9) + A000124 (n + 5)).toNat

end

end A318904.P17464846367890084443

/-!
# A318905: Number of n-node rooted trees in which nine equals the maximal number of nodes in paths starting at a leaf and ending at the first branching node or at the root.

The programs for A318905, there is no canonical definition to state claims against.
-/

/-! ## A318905.P11629665707176168218

`A255639(n+9)-A255638(n+9)`
-/

namespace A318905.P11629665707176168218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255639 (n + 9) - A255638 (n + 9)

end

end A318905.P11629665707176168218

/-! ## A318905.P9005841969510975275

`A255704(A167499(n+7)+4)`
-/

namespace A318905.P9005841969510975275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255704 (A167499 (n + 7) + 4).toNat

end

end A318905.P9005841969510975275

/-! ## A318905.P9587766902874548

`A255704(A000217(n+8)+9)`
-/

namespace A318905.P9587766902874548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255704 (A000217 (n + 8) + 9).toNat

end

end A318905.P9587766902874548

/-! ## A318905.P7981255205167935595

`A255704(A055999(n+5)+15)`
-/

namespace A318905.P7981255205167935595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255704 (A055999 (n + 5) + 15).toNat

end

end A318905.P7981255205167935595

/-! ## A318905.P16839825195356035352

`A255704(A056000(n+6)-2*n)`
-/

namespace A318905.P16839825195356035352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255704 (A056000 (n + 6) - (2 * n : ℤ)).toNat

end

end A318905.P16839825195356035352

/-!
# A318906: Number of n-node rooted trees in which ten equals the maximal number of nodes in paths starting at a leaf and ending at the first branching node or at the root.

The programs for A318906, there is no canonical definition to state claims against.
-/

/-! ## A318906.P15169937976682590818

`A255640(n+10)-A255639(n+10)`
-/

namespace A318906.P15169937976682590818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255640 (n + 10) - A255639 (n + 10)

end

end A318906.P15169937976682590818

/-! ## A318906.P15297074317209536698

`A255704(A000217(n+9)+10)`
-/

namespace A318906.P15297074317209536698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255704 (A000217 (n + 9) + 10).toNat

end

end A318906.P15297074317209536698

/-! ## A318906.P16693217861823290244

`A255704(eq[11, A131818(n+1)])`
-/

namespace A318906.P16693217861823290244
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255704 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A318906.P16693217861823290244

/-! ## A318906.P7842876301352118234

`A255704(A055998(n+9)-A103517(n+3))`
-/

namespace A318906.P7842876301352118234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255704 (A055998 (n + 9) - A103517 (n + 3)).toNat

end

end A318906.P7842876301352118234

/-! ## A318906.P5666131138530507606

`A255704(A167614(n+13)-A016885(n+10))`
-/

namespace A318906.P5666131138530507606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255704 (A167614 (n + 13) - A016885 (n + 10)).toNat

end

end A318906.P5666131138530507606

/-!
# A318909: a(n) = Product_{1<=x<=n, n|(x^2-1)} x.

The programs for A318909, there is no canonical definition to state claims against.
-/

/-! ## A318909.P9311709622574594691

`A100793(a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A318909.P9311709622574594691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A100793 (a (n - 1)).toNat

end

end A318909.P9311709622574594691

/-! ## A318909.P16608679838531302987

`A018444(C(n, floor(log(n+1))))`
-/

namespace A318909.P16608679838531302987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018444 (Nat.choose n ⌊Real.log (n + 1 : ℝ)⌋.toNat)

end

end A318909.P16608679838531302987

/-! ## A318909.P8177291481359913675

`n*A008406(a(n-1)²)` with `a(0)=1`
-/

namespace A318909.P8177291481359913675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) * A008406 (a (n - 1) ^ 2).toNat

end

end A318909.P8177291481359913675

/-! ## A318909.P3149621043616165780

`n*A132442(a(n-1)²)` with `a(0)=1`
-/

namespace A318909.P3149621043616165780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) * A132442 (a (n - 1) ^ 2).toNat

end

end A318909.P3149621043616165780

/-!
# A318910: a(n) is the nearest integer to binomial(n,n/2) = n!/((n/2)!)^2.

The programs for A318910, there is no canonical definition to state claims against.
-/

/-! ## A318910.P17822820085284712327

`A193832(A074032(n+1)+A028304(n))`
-/

namespace A318910.P17822820085284712327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193832 (A074032 (n + 1) + A028304 n).toNat

end

end A318910.P17822820085284712327

/-! ## A318910.P9722440771966714404

`A193832(A074032(n+1)+A074029(n+1))`
-/

namespace A318910.P9722440771966714404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193832 (A074032 (n + 1) + A074029 (n + 1)).toNat

end

end A318910.P9722440771966714404

/-! ## A318910.P10494380671838003726

`ceil(root(A121143(n+1), π))`
-/

namespace A318910.P10494380671838003726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A121143 (n + 1) : ℝ) ^ (1 / Real.pi)⌉

end

end A318910.P10494380671838003726

/-! ## A318910.P4864453641963622833

`A103128(A148676(n))`
-/

namespace A318910.P4864453641963622833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103128 (A148676 n).toNat

end

end A318910.P4864453641963622833

/-! ## A318910.P8220376458437033227

`A235963(A148565(n))`
-/

namespace A318910.P8220376458437033227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235963 (A148565 n).toNat

end

end A318910.P8220376458437033227

/-!
# A318911: Numbers k such that -3 is a quadratic residue modulo 360*k + 1, 360*k + 2, 360*k + 3 and 360*k + 4.

The programs for A318911, there is no canonical definition to state claims against.
-/

/-! ## A318911.P3182218540863517916

`(A318527(n+1)-1)/360`
-/

namespace A318911.P3182218540863517916
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A318527 (n + 1) - 1 : ℚ) / 360

end

end A318911.P3182218540863517916

/-!
# A318912: Expansion of e.g.f. Product_{k>=1} 1/(1 - x^k)^(mu(k)^2/k), where mu = Möbius function (A008683).

The programs for A318912, there is no canonical definition to state claims against.
-/

/-! ## A318912.P17578067735749988694

`A061640(A061992(n))+A000255(n)`
-/

namespace A318912.P17578067735749988694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061640 (A061992 n).toNat + A000255 n

end

end A318912.P17578067735749988694

/-! ## A318912.P1911846842934236789

`A326678(A046879(n))+A000255(n)`
-/

namespace A318912.P1911846842934236789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326678 (A046879 n).toNat + A000255 n

end

end A318912.P1911846842934236789

/-! ## A318912.P17935713620448494368

`A326678(A177737(n))+A000255(n)`
-/

namespace A318912.P17935713620448494368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326678 (A177737 n).toNat + A000255 n

end

end A318912.P17935713620448494368

/-!
# A318913: Expansion of e.g.f. Product_{k>=1} 1/(1 - x^prime(k))^(1/prime(k)).

The programs for A318913, there is no canonical definition to state claims against.
-/

/-! ## A318913.P4046061854686094724

`A333921(A327940(n))`
-/

namespace A318913.P4046061854686094724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333921 (A327940 n).toNat

end

end A318913.P4046061854686094724

/-! ## A318913.P8944968392396298790

`A188134(4*A327940(n))`
-/

namespace A318913.P8944968392396298790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188134 (4 * A327940 n).toNat

end

end A318913.P8944968392396298790

/-! ## A318913.P5544321180161689557

`filter[A327940(n), A071023(#)]`
-/

namespace A318913.P5544321180161689557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327940 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A071023 (f1 j).toNat = 1) n)

end

end A318913.P5544321180161689557

/-! ## A318913.P14477828522020716820

`filter[A327940(n), A071026(#)]`
-/

namespace A318913.P14477828522020716820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327940 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A071026 (f1 j).toNat = 1) n)

end

end A318913.P14477828522020716820

/-!
# A318916: Minimum length of longest palindromic subsequence, where the minimum is taken over all binary circular words of length n.

The programs for A318916, there is no canonical definition to state claims against.
-/

/-! ## A318916.P14477259213352480250

`A004396(comp[A166448(n+1)])`
-/

namespace A318916.P14477259213352480250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166448 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A318916.P14477259213352480250

/-! ## A318916.P9574615798626786565

`A004396(comp[n*A008795(n)])`
-/

namespace A318916.P9574615798626786565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A008795 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A318916.P9574615798626786565

/-! ## A318916.P12901319234891786218

`A004396(comp[A038556(∑[n²])])`
-/

namespace A318916.P12901319234891786218
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038556 (∑ j ∈ Finset.range (n + 1), f2 j)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A318916.P12901319234891786218

/-! ## A318916.P10010112329482755606

`A004396(lt[2, A038502(n+3)])`
-/

namespace A318916.P10010112329482755606
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038502 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A318916.P10010112329482755606

/-! ## A318916.P18033712937245116608

`A004396(comp[∑[A204099(n+1)]])`
-/

namespace A318916.P18033712937245116608
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204099 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A318916.P18033712937245116608

/-!
# A318917: Expansion of e.g.f. exp(Sum_{k>=1} phi(k)*x^k/k), where phi is the Euler totient function A000010.

The programs for A318917, there is no canonical definition to state claims against.
-/

/-! ## A318917.P17360892345483044450

`A102464(2^n)-∑{e}[n+1, #]`
-/

namespace A318917.P17360892345483044450
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102464 (2 ^ n) - ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ)

end

end A318917.P17360892345483044450

/-! ## A318917.P8157962961805394360

`A175299(A006789(n))`
-/

namespace A318917.P8157962961805394360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175299 (A006789 n).toNat

end

end A318917.P8157962961805394360

/-!
# A318918: Denominators of power series solution to differential equation diff(diff(y(t),t),t)+t*y(t) = 0, with initial conditions y(0)=1, Dy(0)=1/2.

The programs for A318918, there is no canonical definition to state claims against.
-/

/-! ## A318918.P16005507178452968513

`A096259(a(n-3))` with `a(0)=1, a(1)=2, a(2)=1, a(3)=6, a(4)=24`
-/

namespace A318918.P16005507178452968513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 1, 6, 24] fun n a =>
  A096259 (a (n - 3)).toNat

end

end A318918.P16005507178452968513

/-! ## A318918.P8899097772522221530

`A361456(A194595(n))`
-/

namespace A318918.P8899097772522221530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361456 (A194595 n).toNat

end

end A318918.P8899097772522221530

/-! ## A318918.P6062160270191676272

`A157400(∑[A249388(n)])`
-/

namespace A318918.P6062160270191676272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249388 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157400 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A318918.P6062160270191676272

/-!
# A318919: Define b(0)=0, b(1)[1]=1, b(1)[2]=1; and for n>=2, b(n)[1] = total number of digits in b(n-1), and b(n)[2] = total number of digits in b(0),...,b(n-1); a(n) = b(n)[2].

The programs for A318919, there is no canonical definition to state claims against.
-/

/-! ## A318919.P14386883841629815209

`∑[∑[char[6^n]]+1]`
-/

namespace A318919.P14386883841629815209
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 ^ n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A318919.P14386883841629815209

/-! ## A318919.P11144184593791795877

`∑[∑[char[C(n², 2)]]]+n`
-/

namespace A318919.P11144184593791795877
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n ^ 2) 2

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A318919.P11144184593791795877

/-! ## A318919.P12917669201238344855

`abs(∑[a(floor(n/6))+1])` with `a(0)=1`
-/

namespace A318919.P12917669201238344855
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 ⌊(n : ℚ) / 6⌋.toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A318919.P12917669201238344855

/-! ## A318919.P11275332212222376916

`floor(∑[a(floor(n/6))+1])` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A318919.P11275332212222376916
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 ⌊(n : ℚ) / 6⌋.toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A318919.P11275332212222376916

/-! ## A318919.P17235815960347052120

`∑[∑[char[6*C(n, 5)]]]+n`
-/

namespace A318919.P17235815960347052120
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * Nat.choose n 5

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A318919.P17235815960347052120

/-! ## A318919.P2486362861959003775

`∑[∑[char[6^n]]]-xor(n, -1)`
-/

namespace A318919.P2486362861959003775
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 ^ n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - Int.xor (n : ℤ) (-1)

end

end A318919.P2486362861959003775

/-! ## A318919.P950864604496706635

`∑[∑[char[(and(3, n)²+5)*n²]]]+n`
-/

namespace A318919.P950864604496706635
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.land 3 n ^ 2 + 5) * n ^ 2

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A318919.P950864604496706635

/-! ## A318919.P15125479201835016937

`∑[A390764(n)]+n`
-/

namespace A318919.P15125479201835016937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390764 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A318919.P15125479201835016937

/-! ## A318919.P15313542273868583553

`A130174(n+1)+1`
-/

namespace A318919.P15313542273868583553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130174 (n + 1) + 1

end

end A318919.P15313542273868583553

/-! ## A318919.P7054688958551996573

`A337843(a(n-1))+1` with `a(0)=1`
-/

namespace A318919.P7054688958551996573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A337843 (a (n - 1)).toNat + 1

end

end A318919.P7054688958551996573

/-!
# A318920: a(n) = number of times n appears in the sequence (b(i)[1], i=1,2,3,4,...), where b(i) is defined in A318919.

The programs for A318920, there is no canonical definition to state claims against.
-/

/-! ## A318920.P10792115676504024747

`ceil(record[Δ[A275536(n+1)]]/(n+1))`
-/

namespace A318920.P10792115676504024747
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275536 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (n + 1 : ℚ)⌉

end

end A318920.P10792115676504024747

/-! ## A318920.P17410561066316219303

`ceil(floor(A063945(n+1)/A000005(5^n))/10)`
-/

namespace A318920.P17410561066316219303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(⌊(A063945 (n + 1) : ℚ) / (A000005 (5 ^ n) : ℚ)⌋ : ℚ) / 10⌉

end

end A318920.P17410561066316219303

/-!
# A318921: In binary expansion of n, delete one symbol from each run. Set a(n)=0 if the result is the empty string.

The programs for A318921, there is no canonical definition to state claims against.
-/

/-! ## A318921.P160546020815501428

`n-A319409(n)`
-/

namespace A318921.P160546020815501428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A319409 n

end

end A318921.P160546020815501428

/-! ## A318921.P1287745670809165811

`n%A319409(A028310(n))`
-/

namespace A318921.P1287745670809165811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A319409 (A028310 n).toNat)

end

end A318921.P1287745670809165811

/-! ## A318921.P5923794140455216456

`A319419(n)%A344180(n)`
-/

namespace A318921.P5923794140455216456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A319419 n) (A344180 n)

end

end A318921.P5923794140455216456

/-! ## A318921.P5426231667879088508

`A000027(n+1)%(A319409(n)+1)`
-/

namespace A318921.P5426231667879088508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000027 (n + 1)) (A319409 n + 1)

end

end A318921.P5426231667879088508

/-! ## A318921.P3102097317115552879

`(Δ[A319409(n)]+n)%A319409(n+1)`
-/

namespace A318921.P3102097317115552879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319409 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n + (n : ℤ)) (A319409 (n + 1))

end

end A318921.P3102097317115552879

/-! ## A318921.P9859493049654393902

`A319419(n)+A000007(A319419(n)+1)`
-/

namespace A318921.P9859493049654393902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319419 n + A000007 (A319419 n + 1).toNat

end

end A318921.P9859493049654393902

/-! ## A318921.P6012756941405337179

`A319419(n)-floor(A319419(n)/A175048(n+1))`
-/

namespace A318921.P6012756941405337179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319419 n - ⌊(A319419 n : ℚ) / (A175048 (n + 1) : ℚ)⌋

end

end A318921.P6012756941405337179

/-! ## A318921.P8279989041250372455

`(n+1)%A008619(A319409(n)+A319409(n))`
-/

namespace A318921.P8279989041250372455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A008619 (A319409 n + A319409 n).toNat)

end

end A318921.P8279989041250372455

/-! ## A318921.P346263397412608829

`A126308(A065423(n+1))`
-/

namespace A318921.P346263397412608829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126308 (A065423 (n + 1)).toNat

end

end A318921.P346263397412608829

/-! ## A318921.P14400201439980198359

`A126308(A026741(n+1)-1)`
-/

namespace A318921.P14400201439980198359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126308 (A026741 (n + 1) - 1).toNat

end

end A318921.P14400201439980198359

/-!
# A318922: Apply Lenormand's transformation k -> A318921(k) to the Fibonacci numbers.

The programs for A318922, there is no canonical definition to state claims against.
-/

/-! ## A318922.P3586916841067549180

`A318921(A000045(n)%A225472(2*n+1))`
-/

namespace A318922.P3586916841067549180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318921 (Int.tmod (A000045 n) (A225472 (2 * n + 1))).toNat

end

end A318922.P3586916841067549180

/-! ## A318922.P18381814123368421438

`A318921(∑[a(n-1)-(1-a(n-2))]-n)` with `a(0)=0, a(1)=2`
-/

namespace A318922.P18381814123368421438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  f1 (n - 1) - (1 - f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318921 (∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)).toNat

end

end A318922.P18381814123368421438

/-! ## A318922.P5467121120456521017

`A318921(A000045(n))`
-/

namespace A318922.P5467121120456521017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318921 (A000045 n).toNat

end

end A318922.P5467121120456521017

/-! ## A318922.P15461811915346756938

`A318921(abs(A236191(n)))`
-/

namespace A318922.P15461811915346756938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318921 |A236191 n|.toNat

end

end A318922.P15461811915346756938

/-!
# A318923: Apply Lenormand's transformation k -> A318921(k) to the primes.

The programs for A318923, there is no canonical definition to state claims against.
-/

/-! ## A318923.P12817579358062446080

`A318921(Δ[A007504(n)])`
-/

namespace A318923.P12817579358062446080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318921 (f1 (n + 1) - f1 n).toNat

end

end A318923.P12817579358062446080

/-! ## A318923.P12156746535244960816

`A318921(record[A162753(n)])`
-/

namespace A318923.P12156746535244960816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162753 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318921 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A318923.P12156746535244960816

/-! ## A318923.P1778281616591013526

`A318921(A000040(n+1))`
-/

namespace A318923.P1778281616591013526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318921 (A000040 (n + 1)).toNat

end

end A318923.P1778281616591013526

/-! ## A318923.P12946614353230069880

`A318921(A006005(n+1))`
-/

namespace A318923.P12946614353230069880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318921 (A006005 (n + 1)).toNat

end

end A318923.P12946614353230069880

/-! ## A318923.P5316263006697734396

`A318921(A161847(n+1))`
-/

namespace A318923.P5316263006697734396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318921 (A161847 (n + 1)).toNat

end

end A318923.P5316263006697734396

/-! ## A318923.P6253443533033593715

`A318921(A008578(n+2))`
-/

namespace A318923.P6253443533033593715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318921 (A008578 (n + 2)).toNat

end

end A318923.P6253443533033593715

/-! ## A318923.P781445341728836167

`A318921(A075643(n+2))`
-/

namespace A318923.P781445341728836167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318921 (A075643 (n + 2)).toNat

end

end A318923.P781445341728836167

/-! ## A318923.P12178157132365262022

`A318921(A182986(n+2))`
-/

namespace A318923.P12178157132365262022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318921 (A182986 (n + 2)).toNat

end

end A318923.P12178157132365262022

/-! ## A318923.P6394668369353905757

`A318921(record[A006530(n+2)])`
-/

namespace A318923.P6394668369353905757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318921 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A318923.P6394668369353905757

/-! ## A318923.P14294736962638312869

`A318921(record[A020639(n+2)])`
-/

namespace A318923.P14294736962638312869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318921 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A318923.P14294736962638312869

/-! ## A318923.P1060837942298135963

`A318921(A100484(n+1)/2)`
-/

namespace A318923.P1060837942298135963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318921 (SequenceMachineLib.roundAway ((A100484 (n + 1) : ℚ) / 2)).toNat

end

end A318923.P1060837942298135963

/-! ## A318923.P618533178908109530

`A318921(A001747(n+2)/2)`
-/

namespace A318923.P618533178908109530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318921 (SequenceMachineLib.roundAway ((A001747 (n + 2) : ℚ) / 2)).toNat

end

end A318923.P618533178908109530

/-! ## A318923.P15914976575555582864

`A318921(A077017(n+2)/2)`
-/

namespace A318923.P15914976575555582864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318921 (SequenceMachineLib.roundAway ((A077017 (n + 2) : ℚ) / 2)).toNat

end

end A318923.P15914976575555582864

/-! ## A318923.P15713486861149308659

`A318921(record[A000010(n+1)+1])`
-/

namespace A318923.P15713486861149308659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318921 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A318923.P15713486861149308659

/-! ## A318923.P15904690518183478574

`A318921(record[A003958(n+1)+1])`
-/

namespace A318923.P15904690518183478574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318921 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A318923.P15904690518183478574

/-! ## A318923.P16520946374031756482

`A318921(A006530(A100484(n+1)))`
-/

namespace A318923.P16520946374031756482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318921 (A006530 (A100484 (n + 1)).toNat).toNat

end

end A318923.P16520946374031756482

/-! ## A318923.P13995348488306439357

`A318921(eq[1, A032741(n)])`
-/

namespace A318923.P13995348488306439357
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318921 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A318923.P13995348488306439357

/-! ## A318923.P795813973339495178

`A318921(eq[2, A319410(n)])`
-/

namespace A318923.P795813973339495178
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319410 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318921 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A318923.P795813973339495178

/-! ## A318923.P9009858742401675640

`A318921(record[A014963(n+2)])`
-/

namespace A318923.P9009858742401675640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318921 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A318923.P9009858742401675640

/-! ## A318923.P7517919932453031642

`A318921(A100484(n+1))`
-/

namespace A318923.P7517919932453031642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318921 (A100484 (n + 1)).toNat

end

end A318923.P7517919932453031642

/-!
# A318924: In the binary Champernowne word A030190, shorten each run of consecutive identical bits by one bit.

The programs for A318924, there is no canonical definition to state claims against.
-/

/-! ## A318924.P12358762744033491932

`A030190(eq[A030190(n+1), A030190(n)])`
-/

namespace A318924.P12358762744033491932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030190 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030190 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030190 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A318924.P12358762744033491932

/-! ## A318924.P14113775829987449660

`A030302(eq[A030315(n+1), A030315(n)])`
-/

namespace A318924.P14113775829987449660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030315 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030315 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030302 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A318924.P14113775829987449660

/-! ## A318924.P10838172574178700437

`1-A030315(eq[A030315(n+1), A030315(n)])`
-/

namespace A318924.P10838172574178700437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030315 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030315 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A030315 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A318924.P10838172574178700437

/-! ## A318924.P8714083698092463132

`(A000584(n)+eq[A030315(n+1), A030315(n)])%2`
-/

namespace A318924.P8714083698092463132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030315 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030315 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000584 n + (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℤ)) 2

end

end A318924.P8714083698092463132

/-! ## A318924.P7349013076601370513

`A000035(eq[A030315(n+1), A030315(n)]+n)`
-/

namespace A318924.P7349013076601370513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030315 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030315 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + n)

end

end A318924.P7349013076601370513

/-!
# A318925: a(n) = A175046(A318921(n)).

The programs for A318925, there is no canonical definition to state claims against.
-/

/-! ## A318925.P18046030976989798139

`∑{e}[A000079(A318921(n)), A175046(#)]`
-/

namespace A318925.P18046030976989798139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A318921 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A175046 (Nat.factorization (f1 n).natAbs p)

end

end A318925.P18046030976989798139

/-! ## A318925.P10901422444815259636

`and(15, A007088(A321538(A007088(n))))`
-/

namespace A318925.P10901422444815259636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 15 (A007088 (A321538 (A007088 n).toNat).toNat)

end

end A318925.P10901422444815259636

/-! ## A318925.P4006890837721930983

`A321538(A097256(n))%16`
-/

namespace A318925.P4006890837721930983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A321538 (A097256 n).toNat) 16

end

end A318925.P4006890837721930983

/-! ## A318925.P1961338010411023526

`A297233(15^A318921(n))`
-/

namespace A318925.P1961338010411023526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297233 (SequenceMachineLib.roundAway ((15 : ℚ) ^ (A318921 n : ℤ))).toNat

end

end A318925.P1961338010411023526

/-! ## A318925.P4290672804965945182

`A297233(15^A126308(lcm(2, n)))`
-/

namespace A318925.P4290672804965945182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297233 (SequenceMachineLib.roundAway ((15 : ℚ) ^ (A126308 (Nat.lcm 2 n) : ℤ))).toNat

end

end A318925.P4290672804965945182

/-!
# A318926: Take the binary expansion of n, starting with the least significant bit, and concatenate the lengths of the runs.

The programs for A318926, there is no canonical definition to state claims against.
-/

/-! ## A318926.P224969467064824450

`A318927(A056539(n+1))`
-/

namespace A318926.P224969467064824450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318927 (A056539 (n + 1)).toNat

end

end A318926.P224969467064824450

/-! ## A318926.P867519058675158878

`A275536(A003188(n+1))`
-/

namespace A318926.P867519058675158878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275536 (A003188 (n + 1)).toNat

end

end A318926.P867519058675158878

/-! ## A318926.P2174403706569022191

`A275536(∑[A055975(n+1)])`
-/

namespace A318926.P2174403706569022191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055975 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275536 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A318926.P2174403706569022191

/-! ## A318926.P2568454487229757630

`A261300(A341915(n+1))`
-/

namespace A318926.P2568454487229757630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261300 (A341915 (n + 1)).toNat

end

end A318926.P2568454487229757630

/-! ## A318926.P15437141575046772205

`A004086(A318927(n+1))`
-/

namespace A318926.P15437141575046772205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A318927 (n + 1)).toNat

end

end A318926.P15437141575046772205

/-!
# A318927: Take the binary expansion of n, starting with the most significant bit, and concatenate the lengths of the runs.

The programs for A318927, there is no canonical definition to state claims against.
-/

/-! ## A318927.P4517370459967087067

`A318926(A056539(n+1))`
-/

namespace A318927.P4517370459967087067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318926 (A056539 (n + 1)).toNat

end

end A318927.P4517370459967087067

/-! ## A318927.P87648606628826645

`A275536(A341915(n+1))`
-/

namespace A318927.P87648606628826645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275536 (A341915 (n + 1)).toNat

end

end A318927.P87648606628826645

/-! ## A318927.P12295132758577932523

`A261300(A003188(n+1))`
-/

namespace A318927.P12295132758577932523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261300 (A003188 (n + 1)).toNat

end

end A318927.P12295132758577932523

/-! ## A318927.P2396833945079547788

`A261300(∑[A055975(n+1)])`
-/

namespace A318927.P2396833945079547788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055975 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261300 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A318927.P2396833945079547788

/-! ## A318927.P12078380504179327323

`A261300(xor(n+1, A110654(n)))`
-/

namespace A318927.P12078380504179327323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261300 (Int.xor (n + 1 : ℤ) (A110654 n)).toNat

end

end A318927.P12078380504179327323

/-!
# A318928: Runs-resistance of binary representation of n.

The programs for A318928, there is no canonical definition to state claims against.
-/

/-! ## A318928.P1951918303562548285

`A329867(n-(floor(acot(n))-1))+A319416(n+1)`
-/

namespace A318928.P1951918303562548285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329867 ((n : ℤ) - (⌊SequenceMachineLib.acot (n : ℝ)⌋ - 1)).toNat + A319416 (n + 1)

end

end A318928.P1951918303562548285

/-! ## A318928.P13773154369430735397

`A329867(n--1%(n+1))+A319416(n+1)`
-/

namespace A318928.P13773154369430735397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329867 ((n : ℤ) - Int.tmod (-1) (n + 1 : ℤ)).toNat + A319416 (n + 1)

end

end A318928.P13773154369430735397

/-! ## A318928.P9394237727383371215

`A028310(A329867(n+1)+A319416(n+1))`
-/

namespace A318928.P9394237727383371215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A329867 (n + 1) + A319416 (n + 1)).toNat

end

end A318928.P9394237727383371215

/-! ## A318928.P7659859083938520466

`A329867(A057427(n)+n)+A319416(n+1)`
-/

namespace A318928.P7659859083938520466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329867 (A057427 n + (n : ℤ)).toNat + A319416 (n + 1)

end

end A318928.P7659859083938520466

/-! ## A318928.P10004211995018242310

`A123108(2*(A329867(n+1)+A319416(n+1)))`
-/

namespace A318928.P10004211995018242310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (2 * (A329867 (n + 1) + A319416 (n + 1))).toNat

end

end A318928.P10004211995018242310

/-! ## A318928.P17236009523959143771

`A000007(n)+A329867(n+1)+A319416(n+1)`
-/

namespace A318928.P17236009523959143771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (A329867 (n + 1) + A319416 (n + 1))

end

end A318928.P17236009523959143771

/-! ## A318928.P268154020696125009

`A329867(A019425(2*n)+n)+A319416(n+1)`
-/

namespace A318928.P268154020696125009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329867 (A019425 (2 * n) + (n : ℤ)).toNat + A319416 (n + 1)

end

end A318928.P268154020696125009

/-! ## A318928.P5340052525035937112

`A329867(char[A048673(n+1)]+n)+A319416(n+1)`
-/

namespace A318928.P5340052525035937112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048673 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329867 ((if ∃ j, f1 j = (n : ℤ) then 1 else 0) + n) + A319416 (n + 1)

end

end A318928.P5340052525035937112

/-! ## A318928.P16558646243715665922

`A329867(A000040(n+1)%2+n)+A319416(n+1)`
-/

namespace A318928.P16558646243715665922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329867 (Int.tmod (A000040 (n + 1)) 2 + (n : ℤ)).toNat + A319416 (n + 1)

end

end A318928.P16558646243715665922

/-!
# A318929: Intersection of A300216 and A306146.

The programs for A318929, there is no canonical definition to state claims against.
-/

/-! ## A318929.P16713710072605825183

`record[A327512(A300216(n+1))]`
-/

namespace A318929.P16713710072605825183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327512 (A300216 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A318929.P16713710072605825183

/-! ## A318929.P1164061283113333277

`filter[A066887(n+1), A323402(#)]`
-/

namespace A318929.P1164061283113333277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066887 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323402 (f1 j).toNat = 1) n)

end

end A318929.P1164061283113333277

/-! ## A318929.P13199498483168325725

`filter[A070418(n+1), A323402(#)]`
-/

namespace A318929.P13199498483168325725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070418 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323402 (f1 j).toNat = 1) n)

end

end A318929.P13199498483168325725

/-! ## A318929.P4717531938099070146

`filter[A080308(n+1), A323513(#)]`
-/

namespace A318929.P4717531938099070146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080308 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323513 (f1 j).toNat = 1) n)

end

end A318929.P4717531938099070146

/-! ## A318929.P16380573327255452800

`filter[A190503(n+1), A323402(#)]`
-/

namespace A318929.P16380573327255452800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190503 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323402 (f1 j).toNat = 1) n)

end

end A318929.P16380573327255452800

/-! ## A318929.P1397957690713246764

`filter[A190503(n+1), A323513(#)]`
-/

namespace A318929.P1397957690713246764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190503 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323513 (f1 j).toNat = 1) n)

end

end A318929.P1397957690713246764

/-! ## A318929.P13013976272956273405

`filter[A229829(n+1), A323513(#)]`
-/

namespace A318929.P13013976272956273405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229829 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323513 (f1 j).toNat = 1) n)

end

end A318929.P13013976272956273405

/-! ## A318929.P17035857088043001420

`filter[A300216(n+1), A323402(#)]`
-/

namespace A318929.P17035857088043001420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300216 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323402 (f1 j).toNat = 1) n)

end

end A318929.P17035857088043001420

/-! ## A318929.P16643883786298903493

`filter[A306146(n+1), A323513(#)]`
-/

namespace A318929.P16643883786298903493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306146 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323513 (f1 j).toNat = 1) n)

end

end A318929.P16643883786298903493

/-! ## A318929.P4222509744322468599

`filter[A300216(n+1), A373252(#)]`
-/

namespace A318929.P4222509744322468599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300216 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373252 (f1 j).toNat = 1) n)

end

end A318929.P4222509744322468599

/-!
# A318931: a(n) = A081287(n) - n.

The programs for A318931, there is no canonical definition to state claims against.
-/

/-! ## A318931.P3142188359330470638

`A081287(n+1)-(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A318931.P3142188359330470638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081287 (n + 1) - (n + 1 : ℤ)

end

end A318931.P3142188359330470638

/-! ## A318931.P2022091325618069520

`A038666(n+1)-∑[(n+1)²+1]`
-/

namespace A318931.P2022091325618069520
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038666 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A318931.P2022091325618069520

/-! ## A318931.P9275014932668805037

`A023443(A081287(n+1))-n`
-/

namespace A318931.P9275014932668805037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A081287 (n + 1)).toNat - (n : ℤ)

end

end A318931.P9275014932668805037

/-! ## A318931.P14821024492885339763

`(A038666(n+1)-A145066(n+1))%13`
-/

namespace A318931.P14821024492885339763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038666 (n + 1) - A145066 (n + 1)) 13

end

end A318931.P14821024492885339763

/-! ## A318931.P1740308217266736054

`A001057(2*(n+2))+A081287(n+1)+1`
-/

namespace A318931.P1740308217266736054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (2 * (n + 2)) + (A081287 (n + 1) + 1)

end

end A318931.P1740308217266736054

/-!
# A318932: Numbers k such that the Diophantine equation y^2 - k = x^3 has a solution.

The programs for A318932, there is no canonical definition to state claims against.
-/

/-! ## A318932.P3276246750415174449

`comp[A054504(n+1)-1]+1`
-/

namespace A318932.P3276246750415174449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054504 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A318932.P3276246750415174449

/-! ## A318932.P1223913192791284589

`lt[1, 2*A081119(n+1)]+1`
-/

namespace A318932.P1223913192791284589
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A081119 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A318932.P1223913192791284589

/-! ## A318932.P13985985787345306998

`lt[1, n*A134108(A028310(n))]`
-/

namespace A318932.P13985985787345306998
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A134108 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A318932.P13985985787345306998

/-! ## A318932.P8025587938641871962

`eq[1, A000010(a(A134108(n)))]` with `a(0)=3, a(1)=1`
-/

namespace A318932.P8025587938641871962
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3, 1] fun n f2 =>
  A000010 (f2 (A134108 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A318932.P8025587938641871962

/-! ## A318932.P509648209843354274

`eq[1, A000045(a(A134108(n)))]` with `a(0)=3, a(1)=1`
-/

namespace A318932.P509648209843354274
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3, 1] fun n f2 =>
  A000045 (f2 (A134108 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A318932.P509648209843354274

/-! ## A318932.P15156730424450574204

`eq[1, A007318(a(A134108(n)))]` with `a(0)=4, a(1)=1`
-/

namespace A318932.P15156730424450574204
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4, 1] fun n f2 =>
  A007318 (f2 (A134108 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A318932.P15156730424450574204

/-! ## A318932.P7010214657398958534

`eq[char[A054504(n+1)], A000007(n)]`
-/

namespace A318932.P7010214657398958534
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054504 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A318932.P7010214657398958534

/-! ## A318932.P1101869645823122233

`record[(n+1)*A178334(A134108(n+1))]`
-/

namespace A318932.P1101869645823122233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A178334 (A134108 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A318932.P1101869645823122233

/-! ## A318932.P15675351356520363902

`∪[A080761(n+1), A134220(n+1)]`
-/

namespace A318932.P15675351356520363902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080761 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134220 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A318932.P15675351356520363902

/-!
# A318933: For the n-th number k = A318932(n) such that the Diophantine equation y^2 - k = x^3 has a solution, a(n) gives the number of solutions.

The programs for A318933, there is no canonical definition to state claims against.
-/

/-! ## A318933.P14127776004604702360

`A001222(3^A134108(A318932(n+1)))`
-/

namespace A318933.P14127776004604702360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A134108 (A318932 (n + 1)).toNat : ℤ))).toNat

end

end A318933.P14127776004604702360

/-! ## A318933.P431428695677526371

`∑{d}[3^A134108(A318932(n+1)), A001221(#)]`
-/

namespace A318933.P431428695677526371
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A134108 (A318932 (n + 1)).toNat : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, A001221 d

end

end A318933.P431428695677526371

/-! ## A318933.P12131516853525240060

`A134108(A318932(n+1))%A155933(A151707(n))`
-/

namespace A318933.P12131516853525240060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A134108 (A318932 (n + 1)).toNat) (A155933 (A151707 n).toNat)

end

end A318933.P12131516853525240060

/-! ## A318933.P5148078685866186862

`A134108(A318932(n+1)^A178334(n))`
-/

namespace A318933.P5148078685866186862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134108 (SequenceMachineLib.roundAway ((A318932 (n + 1) : ℚ) ^ (A178334 n : ℤ))).toNat

end

end A318933.P5148078685866186862

/-! ## A318933.P8674875772080150569

`A134108((lt[1, 2*A081119(n+1)]+1)^A178334(n))`
-/

namespace A318933.P8674875772080150569
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A081119 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134108 (SequenceMachineLib.roundAway ((SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1 : ℚ) ^ (A178334 n : ℤ))).toNat

end

end A318933.P8674875772080150569

/-! ## A318933.P6423391558257810203

`A175087(A175085(n+1))+A134108(A318932(n+1))`
-/

namespace A318933.P6423391558257810203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175087 (A175085 (n + 1)).toNat + A134108 (A318932 (n + 1)).toNat

end

end A318933.P6423391558257810203

/-! ## A318933.P14219208790140146222

`A134108(A318932(n+1))+A000038(A267446(n))`
-/

namespace A318933.P14219208790140146222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134108 (A318932 (n + 1)).toNat + A000038 (A267446 n).toNat

end

end A318933.P14219208790140146222

/-! ## A318933.P11467418508358368768

`A001065(A014442(n+1))*A134108(A318932(n+1))`
-/

namespace A318933.P11467418508358368768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (A014442 (n + 1)).toNat * A134108 (A318932 (n + 1)).toNat

end

end A318933.P11467418508358368768

/-!
# A318934: Numbers whose binary expansion begins with exactly two 1's.

The programs for A318934, the canonical program `A318934.P10002525055604418372` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A318934 has offset 1).

The definition of A318934 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A318934.P7727619447117689296

`A265029(2*n+1)/2+n`
-/

namespace A318934.P7727619447117689296
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A265029 (2 * n + 1) : ℚ) / 2 + (n : ℚ)

end

end A318934.P7727619447117689296

namespace A318934

/-- `A265029(2*n+1)/2+n` -/
def P7727619447117689296.Spec : Prop :=
  ∀ n, P7727619447117689296.a n = (A318934 (n + 1) : ℚ)

end A318934

/-! ## A318934.P14439081281082178198

`A337909(n+1)+A171757(n+1)`
-/

namespace A318934.P14439081281082178198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337909 (n + 1) + A171757 (n + 1)

end

end A318934.P14439081281082178198

namespace A318934

/-- `A337909(n+1)+A171757(n+1)` -/
def P14439081281082178198.Spec : Prop :=
  ∀ n, P14439081281082178198.a n = A318934 (n + 1)

end A318934

/-! ## A318934.P9337140963245420697

`∪[A004758(n+1), A007350(n+1)]`
-/

namespace A318934.P9337140963245420697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004758 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007350 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A318934.P9337140963245420697

namespace A318934

/-- `∪[A004758(n+1), A007350(n+1)]` -/
def P9337140963245420697.Spec : Prop :=
  ∀ n, (P9337140963245420697.a n : ℤ) = A318934 (n + 1)

end A318934

/-! ## A318934.P8262042509182792943

`∪[A004758(n+1), A116994(n+1)]`
-/

namespace A318934.P8262042509182792943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004758 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116994 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A318934.P8262042509182792943

namespace A318934

/-- `∪[A004758(n+1), A116994(n+1)]` -/
def P8262042509182792943.Spec : Prop :=
  ∀ n, (P8262042509182792943.a n : ℤ) = A318934 (n + 1)

end A318934

/-! ## A318934.P10002525055604418372

`A003817(n)+A042950(floor(log2(2*n+1)))+n+1`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A318934

/-- `A003817(n)+A042950(floor(log2(2*n+1)))+n+1` -/
def P10002525055604418372.Spec : Prop :=
  ∀ n, P10002525055604418372.a n = A318934 (n + 1)

theorem P10002525055604418372.correct : P10002525055604418372.Spec := by
  intro n
  simp only [A318934, Nat.add_sub_cancel]

end A318934

/-! ## A318934.P14720909364438356665

`A004761(n+2)+A337909(n+1)+A004761(n+2)`
-/

namespace A318934.P14720909364438356665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004761 (n + 2) + (A337909 (n + 1) + A004761 (n + 2))

end

end A318934.P14720909364438356665

namespace A318934

/-- `A004761(n+2)+A337909(n+1)+A004761(n+2)` -/
def P14720909364438356665.Spec : Prop :=
  ∀ n, P14720909364438356665.a n = A318934 (n + 1)

end A318934

/-! ## A318934.P16782220339153459026

`eq[2, A090996(n+1)]+1`
-/

namespace A318934.P16782220339153459026
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090996 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A318934.P16782220339153459026

namespace A318934

/-- `eq[2, A090996(n+1)]+1` -/
def P16782220339153459026.Spec : Prop :=
  ∀ n, (P16782220339153459026.a n : ℤ) = A318934 (n + 1)

end A318934

/-! ## A318934.P14071712695539444244

`lt[1, 2*a(floor(n/2))]` with `a(0)=1, a(1)=1, a(2)=1, a(3)=2, a(4)=0, a(5)=0, a(6)=2, a(7)=0`
-/

namespace A318934.P14071712695539444244
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1, 2, 0, 0, 2, 0] fun n f2 =>
  2 * f2 ⌊(n : ℚ) / 2⌋.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A318934.P14071712695539444244

namespace A318934

/-- `lt[1, 2*a(floor(n/2))]` -/
def P14071712695539444244.Spec : Prop :=
  ∀ n, (P14071712695539444244.a n : ℤ) = A318934 (n + 1)

end A318934

/-! ## A318934.P7272312147901124861

`eq[2, A090996(n)]`
-/

namespace A318934.P7272312147901124861
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090996 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A318934.P7272312147901124861

namespace A318934

/-- `eq[2, A090996(n)]` -/
def P7272312147901124861.Spec : Prop :=
  ∀ n, (P7272312147901124861.a n : ℤ) = A318934 (n + 1)

end A318934

/-! ## A318934.P17852034649068193505

`A004755(lt[2*and(n, 2*n), n])`
-/

namespace A318934.P17852034649068193505
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.land n (2 * n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004755 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A318934.P17852034649068193505

namespace A318934

/-- `A004755(lt[2*and(n, 2*n), n])` -/
def P17852034649068193505.Spec : Prop :=
  ∀ n, P17852034649068193505.a n = A318934 (n + 1)

end A318934

/-! ## A318934.P16125255985704264688

`A065387(2^ceil(log2(n+1)))+n+1`
-/

namespace A318934.P16125255985704264688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065387 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (⌈Real.logb 2 (n + 1 : ℝ)⌉ : ℤ))).toNat + (n + 1 : ℤ)

end

end A318934.P16125255985704264688

namespace A318934

/-- `A065387(2^ceil(log2(n+1)))+n+1` -/
def P16125255985704264688.Spec : Prop :=
  ∀ n, P16125255985704264688.a n = A318934 (n + 1)

end A318934

/-! ## A318934.P12224552858783478199

`A004755(A004761(n+2))`
-/

namespace A318934.P12224552858783478199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004755 (A004761 (n + 2)).toNat

end

end A318934.P12224552858783478199

namespace A318934

/-- `A004755(A004761(n+2))` -/
def P12224552858783478199.Spec : Prop :=
  ∀ n, P12224552858783478199.a n = A318934 (n + 1)

end A318934

/-! ## A318934.P2465317811784992831

`A004755(A171757(n+1)/2)`
-/

namespace A318934.P2465317811784992831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004755 (SequenceMachineLib.roundAway ((A171757 (n + 1) : ℚ) / 2)).toNat

end

end A318934.P2465317811784992831

namespace A318934

/-- `A004755(A171757(n+1)/2)` -/
def P2465317811784992831.Spec : Prop :=
  ∀ n, P2465317811784992831.a n = A318934 (n + 1)

end A318934

/-! ## A318934.P1564236515436634981

`A004755(A265027(4*n+2)+n)`
-/

namespace A318934.P1564236515436634981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004755 (A265027 (4 * n + 2) + (n : ℤ)).toNat

end

end A318934.P1564236515436634981

namespace A318934

/-- `A004755(A265027(4*n+2)+n)` -/
def P1564236515436634981.Spec : Prop :=
  ∀ n, P1564236515436634981.a n = A318934 (n + 1)

end A318934

/-! ## A318934.P9513636024342174070

`lt[2*n, A048727(and(n, 2*n)/2)]`
-/

namespace A318934.P9513636024342174070
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048727 (SequenceMachineLib.roundAway ((Nat.land n (2 * n) : ℚ) / 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A318934.P9513636024342174070

namespace A318934

/-- `lt[2*n, A048727(and(n, 2*n)/2)]` -/
def P9513636024342174070.Spec : Prop :=
  ∀ n, (P9513636024342174070.a n : ℤ) = A318934 (n + 1)

end A318934

/-! ## A318934.P12484979511025757460

`record[or(n+1, A057115(n+1))]`
-/

namespace A318934.P12484979511025757460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n + 1 : ℤ) (A057115 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A318934.P12484979511025757460

namespace A318934

/-- `record[or(n+1, A057115(n+1))]` -/
def P12484979511025757460.Spec : Prop :=
  ∀ n, P12484979511025757460.a n = A318934 (n + 1)

end A318934

/-! ## A318934.P8559872065957838657

`A206332(A171757(n+1)/2)+1`
-/

namespace A318934.P8559872065957838657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206332 (SequenceMachineLib.roundAway ((A171757 (n + 1) : ℚ) / 2)).toNat + 1

end

end A318934.P8559872065957838657

namespace A318934

/-- `A206332(A171757(n+1)/2)+1` -/
def P8559872065957838657.Spec : Prop :=
  ∀ n, P8559872065957838657.a n = A318934 (n + 1)

end A318934

/-! ## A318934.P3872172124690631255

`record[A057115(n+1)]+A003817(n)+1`
-/

namespace A318934.P3872172124690631255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057115 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (A003817 n + 1)

end

end A318934.P3872172124690631255

namespace A318934

/-- `record[A057115(n+1)]+A003817(n)+1` -/
def P3872172124690631255.Spec : Prop :=
  ∀ n, P3872172124690631255.a n = A318934 (n + 1)

end A318934

/-! ## A318934.P11867272389343841873

`A003817(n)+record[A003817(A035327(n+1))+3+n]`
-/

namespace A318934.P11867272389343841873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003817 (A035327 (n + 1)).toNat + 3 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003817 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A318934.P11867272389343841873

namespace A318934

/-- `A003817(n)+record[A003817(A035327(n+1))+3+n]` -/
def P11867272389343841873.Spec : Prop :=
  ∀ n, P11867272389343841873.a n = A318934 (n + 1)

end A318934

/-! ## A318934.P545190588346323553

`A004760(A004761(n+2)+2)`
-/

namespace A318934.P545190588346323553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004760 (A004761 (n + 2) + 2).toNat

end

end A318934.P545190588346323553

namespace A318934

/-- `A004760(A004761(n+2)+2)` -/
def P545190588346323553.Spec : Prop :=
  ∀ n, P545190588346323553.a n = A318934 (n + 1)

end A318934

/-!
# A318935: a(n) = Sum_{2^m divides n} 2^(3*m).

The programs for A318935, the canonical program `A318935.P15730395938512976567` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A318935 has offset 1).

The definition of A318935 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A318935.P15730395938512976567

`∑{d}[and(n+1, -(n+1)), #^3]`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A318935

/-- `∑{d}[and(n+1, -(n+1)), #^3]` -/
def P15730395938512976567.Spec : Prop :=
  ∀ n, (P15730395938512976567.a n : ℤ) = A318935 (n + 1)

theorem P15730395938512976567.correct : P15730395938512976567.Spec := by
  intro n
  simp only [A318935, Nat.add_sub_cancel]

end A318935

/-! ## A318935.P11122513808188152193

`∑{d}[or(n+1, -(n+1)), #^3]`
-/

namespace A318935.P11122513808188152193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n + 1 : ℤ) (-(n + 1 : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d ^ 3

end

end A318935.P11122513808188152193

namespace A318935

/-- `∑{d}[or(n+1, -(n+1)), #^3]` -/
def P11122513808188152193.Spec : Prop :=
  ∀ n, (P11122513808188152193.a n : ℤ) = A318935 (n + 1)

end A318935

/-! ## A318935.P13147548447259245111

`A342637(xor(n, n+1))`
-/

namespace A318935.P13147548447259245111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342637 (Nat.xor n (n + 1))

end

end A318935.P13147548447259245111

namespace A318935

/-- `A342637(xor(n, n+1))` -/
def P13147548447259245111.Spec : Prop :=
  ∀ n, P13147548447259245111.a n = A318935 (n + 1)

end A318935

/-! ## A318935.P2546206808935725624

`A001158(2^val(n+1, 2))`
-/

namespace A318935.P2546206808935725624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001158 (2 ^ SequenceMachineLib.valuation (n + 1) 2)

end

end A318935.P2546206808935725624

namespace A318935

/-- `A001158(2^val(n+1, 2))` -/
def P2546206808935725624.Spec : Prop :=
  ∀ n, P2546206808935725624.a n = A318935 (n + 1)

end A318935

/-! ## A318935.P17073178435076242877

`A017669(2^val(n+1, 2))`
-/

namespace A318935.P17073178435076242877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017669 (2 ^ SequenceMachineLib.valuation (n + 1) 2)

end

end A318935.P17073178435076242877

namespace A318935

/-- `A017669(2^val(n+1, 2))` -/
def P17073178435076242877.Spec : Prop :=
  ∀ n, P17073178435076242877.a n = A318935 (n + 1)

end A318935

/-! ## A318935.P13676569699911311915

`∑{d}[A006519(n+1), #^3]`
-/

namespace A318935.P13676569699911311915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d ^ 3

end

end A318935.P13676569699911311915

namespace A318935

/-- `∑{d}[A006519(n+1), #^3]` -/
def P13676569699911311915.Spec : Prop :=
  ∀ n, (P13676569699911311915.a n : ℤ) = A318935 (n + 1)

end A318935

/-! ## A318935.P12465359076146661767

`∑{d}[A055975(n+1), #*#²]`
-/

namespace A318935.P12465359076146661767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055975 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d * d ^ 2

end

end A318935.P12465359076146661767

namespace A318935

/-- `∑{d}[A055975(n+1), #*#²]` -/
def P12465359076146661767.Spec : Prop :=
  ∀ n, (P12465359076146661767.a n : ℤ) = A318935 (n + 1)

end A318935

/-! ## A318935.P6709937888167977864

`∑{d}[A118827(n+1), #*#²]`
-/

namespace A318935.P6709937888167977864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118827 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d * d ^ 2

end

end A318935.P6709937888167977864

namespace A318935

/-- `∑{d}[A118827(n+1), #*#²]` -/
def P6709937888167977864.Spec : Prop :=
  ∀ n, (P6709937888167977864.a n : ℤ) = A318935 (n + 1)

end A318935

/-! ## A318935.P10198375345350649926

`∑{d}[A118830(n+1), #*#²]`
-/

namespace A318935.P10198375345350649926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118830 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d * d ^ 2

end

end A318935.P10198375345350649926

namespace A318935

/-- `∑{d}[A118830(n+1), #*#²]` -/
def P10198375345350649926.Spec : Prop :=
  ∀ n, (P10198375345350649926.a n : ℤ) = A318935 (n + 1)

end A318935

/-! ## A318935.P15303387860017112342

`A001158(n-and(n, n+1)+1)`
-/

namespace A318935.P15303387860017112342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001158 ((n : ℤ) - (Nat.land n (n + 1) : ℤ) + 1).toNat

end

end A318935.P15303387860017112342

namespace A318935

/-- `A001158(n-and(n, n+1)+1)` -/
def P15303387860017112342.Spec : Prop :=
  ∀ n, P15303387860017112342.a n = A318935 (n + 1)

end A318935

/-! ## A318935.P14421943870504017226

`A001158(A006519(n+1))`
-/

namespace A318935.P14421943870504017226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001158 (A006519 (n + 1)).toNat

end

end A318935.P14421943870504017226

namespace A318935

/-- `A001158(A006519(n+1))` -/
def P14421943870504017226.Spec : Prop :=
  ∀ n, P14421943870504017226.a n = A318935 (n + 1)

end A318935

/-! ## A318935.P15011944326676605064

`A023001(A001511(n+1))`
-/

namespace A318935.P15011944326676605064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023001 (A001511 (n + 1)).toNat

end

end A318935.P15011944326676605064

namespace A318935

/-- `A023001(A001511(n+1))` -/
def P15011944326676605064.Spec : Prop :=
  ∀ n, P15011944326676605064.a n = A318935 (n + 1)

end A318935

/-! ## A318935.P7266802754885379692

`A001158(A135481(n)+1)`
-/

namespace A318935.P7266802754885379692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001158 (A135481 n + 1).toNat

end

end A318935.P7266802754885379692

namespace A318935

/-- `A001158(A135481(n)+1)` -/
def P7266802754885379692.Spec : Prop :=
  ∀ n, P7266802754885379692.a n = A318935 (n + 1)

end A318935

/-! ## A318935.P16615809833604875725

`A299913(A366839(n+1))`
-/

namespace A318935.P16615809833604875725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299913 (A366839 (n + 1)).toNat

end

end A318935.P16615809833604875725

namespace A318935

/-- `A299913(A366839(n+1))` -/
def P16615809833604875725.Spec : Prop :=
  ∀ n, P16615809833604875725.a n = A318935 (n + 1)

end A318935

/-! ## A318935.P8515257379944847226

`A342637(A361145(n+1))`
-/

namespace A318935.P8515257379944847226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342637 (A361145 (n + 1)).toNat

end

end A318935.P8515257379944847226

namespace A318935

/-- `A342637(A361145(n+1))` -/
def P8515257379944847226.Spec : Prop :=
  ∀ n, P8515257379944847226.a n = A318935 (n + 1)

end A318935

/-! ## A318935.P6640941052032632572

`A023001(A007814(n+1)+1)`
-/

namespace A318935.P6640941052032632572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023001 (A007814 (n + 1) + 1).toNat

end

end A318935.P6640941052032632572

namespace A318935

/-- `A023001(A007814(n+1)+1)` -/
def P6640941052032632572.Spec : Prop :=
  ∀ n, P6640941052032632572.a n = A318935 (n + 1)

end A318935

/-! ## A318935.P13798767952274295383

`A001158((n+1)/A000265(n+1))`
-/

namespace A318935.P13798767952274295383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001158 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A000265 (n + 1) : ℚ))).toNat

end

end A318935.P13798767952274295383

namespace A318935

/-- `A001158((n+1)/A000265(n+1))` -/
def P13798767952274295383.Spec : Prop :=
  ∀ n, P13798767952274295383.a n = A318935 (n + 1)

end A318935

/-! ## A318935.P2742266158514378163

`A001158(n+1)/A051000(n+1)`
-/

namespace A318935.P2742266158514378163
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001158 (n + 1) : ℚ) / (A051000 (n + 1) : ℚ)

end

end A318935.P2742266158514378163

namespace A318935

/-- `A001158(n+1)/A051000(n+1)` -/
def P2742266158514378163.Spec : Prop :=
  ∀ n, P2742266158514378163.a n = (A318935 (n + 1) : ℚ)

end A318935

/-! ## A318935.P4193364990346790351

`A288419((n+1)/A000265(n+1))`
-/

namespace A318935.P4193364990346790351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288419 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A000265 (n + 1) : ℚ))).toNat

end

end A318935.P4193364990346790351

namespace A318935

/-- `A288419((n+1)/A000265(n+1))` -/
def P4193364990346790351.Spec : Prop :=
  ∀ n, P4193364990346790351.a n = A318935 (n + 1)

end A318935

/-! ## A318935.P8841087368908986136

`A328408((n+1)/A000265(n+1))`
-/

namespace A318935.P8841087368908986136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328408 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A000265 (n + 1) : ℚ))).toNat

end

end A318935.P8841087368908986136

namespace A318935

/-- `A328408((n+1)/A000265(n+1))` -/
def P8841087368908986136.Spec : Prop :=
  ∀ n, P8841087368908986136.a n = A318935 (n + 1)

end A318935

/-!
# A318937: a(n) = 16 times the sum of the cubes of the divisors of 2*n+1.

The programs for A318937, the canonical program `A318937.P16899667993053641546` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A318937 has offset 0).

The definition of A318937 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A318937.P16899667993053641546

`16*∑{d}[2*n+1, #^3]`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A318937

/-- `16*∑{d}[2*n+1, #^3]` -/
def P16899667993053641546.Spec : Prop :=
  ∀ n, (P16899667993053641546.a n : ℤ) = A318937 n

theorem P16899667993053641546.correct : P16899667993053641546.Spec := by
  intro n
  simp only [A318937]

end A318937

/-! ## A318937.P6223618965689290549

`4*4*∑{d}[Δ[n²], #^3]`
-/

namespace A318937.P6223618965689290549
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (4 * (∑ d ∈ Nat.divisors (f1 n).natAbs, d ^ 3))

end

end A318937.P6223618965689290549

namespace A318937

/-- `4*4*∑{d}[Δ[n²], #^3]` -/
def P6223618965689290549.Spec : Prop :=
  ∀ n, (P6223618965689290549.a n : ℤ) = A318937 n

end A318937

/-! ## A318937.P10943650043086334414

`∑{d}[2*n+1, #*(4*#)²]`
-/

namespace A318937.P10943650043086334414
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d * (4 * d) ^ 2

end

end A318937.P10943650043086334414

namespace A318937

/-- `∑{d}[2*n+1, #*(4*#)²]` -/
def P10943650043086334414.Spec : Prop :=
  ∀ n, (P10943650043086334414.a n : ℤ) = A318937 n

end A318937

/-! ## A318937.P15013732224454466293

`8*A045819(n)`
-/

namespace A318937.P15013732224454466293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A045819 n

end

end A318937.P15013732224454466293

namespace A318937

/-- `8*A045819(n)` -/
def P15013732224454466293.Spec : Prop :=
  ∀ n, P15013732224454466293.a n = A318937 n

end A318937

/-! ## A318937.P14623502856899417848

`16*A045823(n)`
-/

namespace A318937.P14623502856899417848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  16 * A045823 n

end

end A318937.P14623502856899417848

namespace A318937

/-- `16*A045823(n)` -/
def P14623502856899417848.Spec : Prop :=
  ∀ n, P14623502856899417848.a n = A318937 n

end A318937

/-! ## A318937.P10939562969022813811

`A000143(Δ[n²])`
-/

namespace A318937.P10939562969022813811
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000143 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A318937.P10939562969022813811

namespace A318937

/-- `A000143(Δ[n²])` -/
def P10939562969022813811.Spec : Prop :=
  ∀ n, P10939562969022813811.a n = A318937 n

end A318937

/-! ## A318937.P17831225533689225788

`A004017(Δ[n²])`
-/

namespace A318937.P17831225533689225788
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004017 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A318937.P17831225533689225788

namespace A318937

/-- `A004017(Δ[n²])` -/
def P17831225533689225788.Spec : Prop :=
  ∀ n, P17831225533689225788.a n = A318937 n

end A318937

/-! ## A318937.P12219657665944201737

`A008427(Δ[n²])`
-/

namespace A318937.P12219657665944201737
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008427 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A318937.P12219657665944201737

namespace A318937

/-- `A008427(Δ[n²])` -/
def P12219657665944201737.Spec : Prop :=
  ∀ n, P12219657665944201737.a n = A318937 n

end A318937

/-! ## A318937.P7352539364431452649

`2*A045825(Δ[n²])`
-/

namespace A318937.P7352539364431452649
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A045825 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A318937.P7352539364431452649

namespace A318937

/-- `2*A045825(Δ[n²])` -/
def P7352539364431452649.Spec : Prop :=
  ∀ n, P7352539364431452649.a n = A318937 n

end A318937

/-! ## A318937.P4494987541202096941

`A008658(Δ[n²])/3`
-/

namespace A318937.P4494987541202096941
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008658 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 3

end

end A318937.P4494987541202096941

namespace A318937

/-- `A008658(Δ[n²])/3` -/
def P4494987541202096941.Spec : Prop :=
  ∀ n, P4494987541202096941.a n = (A318937 n : ℚ)

end A318937

/-! ## A318937.P5832260686256736440

`abs(A035016(2*n+1))`
-/

namespace A318937.P5832260686256736440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A035016 (2 * n + 1)|

end

end A318937.P5832260686256736440

namespace A318937

/-- `abs(A035016(2*n+1))` -/
def P5832260686256736440.Spec : Prop :=
  ∀ n, P5832260686256736440.a n = A318937 n

end A318937

/-! ## A318937.P7984954677929435181

`A008430(2*n+1)/7`
-/

namespace A318937.P7984954677929435181
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008430 (2 * n + 1) : ℚ) / 7

end

end A318937.P7984954677929435181

namespace A318937

/-- `A008430(2*n+1)/7` -/
def P7984954677929435181.Spec : Prop :=
  ∀ n, P7984954677929435181.a n = (A318937 n : ℚ)

end A318937

/-! ## A318937.P13096931341739302805

`8*2*A138503(2*n+1)`
-/

namespace A318937.P13096931341739302805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * (2 * A138503 (2 * n + 1))

end

end A318937.P13096931341739302805

namespace A318937

/-- `8*2*A138503(2*n+1)` -/
def P13096931341739302805.Spec : Prop :=
  ∀ n, P13096931341739302805.a n = A318937 n

end A318937

/-! ## A318937.P4739637764277387923

`(8/2)²*A051000(2*n+1)`
-/

namespace A318937.P4739637764277387923
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((8 : ℚ) / 2) ^ 2 * (A051000 (2 * n + 1) : ℚ)

end

end A318937.P4739637764277387923

namespace A318937

/-- `(8/2)²*A051000(2*n+1)` -/
def P4739637764277387923.Spec : Prop :=
  ∀ n, P4739637764277387923.a n = (A318937 n : ℚ)

end A318937

/-! ## A318937.P13330531958054677336

`A004009(2*n+1)/(5*6/2)`
-/

namespace A318937.P13330531958054677336
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004009 (2 * n + 1) : ℚ) / (5 * ((6 : ℚ) / 2))

end

end A318937.P13330531958054677336

namespace A318937

/-- `A004009(2*n+1)/(5*6/2)` -/
def P13330531958054677336.Spec : Prop :=
  ∀ n, P13330531958054677336.a n = (A318937 n : ℚ)

end A318937

/-! ## A318937.P656523232008424496

`lcm(A000122(n)!, A035016(2*n+1))`
-/

namespace A318937.P656523232008424496
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (Nat.factorial (A000122 n).toNat : ℤ) (A035016 (2 * n + 1))

end

end A318937.P656523232008424496

namespace A318937

/-- `lcm(A000122(n)!, A035016(2*n+1))` -/
def P656523232008424496.Spec : Prop :=
  ∀ n, (P656523232008424496.a n : ℤ) = A318937 n

end A318937

/-! ## A318937.P11062933102807722163

`A000143(2*n+1)+A000007(n+1)`
-/

namespace A318937.P11062933102807722163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000143 (2 * n + 1) + A000007 (n + 1)

end

end A318937.P11062933102807722163

namespace A318937

/-- `A000143(2*n+1)+A000007(n+1)` -/
def P11062933102807722163.Spec : Prop :=
  ∀ n, P11062933102807722163.a n = A318937 n

end A318937

/-! ## A318937.P9995054687800550326

`A000007(n+1)-A035016(2*n+1)`
-/

namespace A318937.P9995054687800550326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) - A035016 (2 * n + 1)

end

end A318937.P9995054687800550326

namespace A318937

/-- `A000007(n+1)-A035016(2*n+1)` -/
def P9995054687800550326.Spec : Prop :=
  ∀ n, P9995054687800550326.a n = A318937 n

end A318937

/-! ## A318937.P2814154946017414235

`A000038(n+1)-A035016(2*n+1)`
-/

namespace A318937.P2814154946017414235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (n + 1) - A035016 (2 * n + 1)

end

end A318937.P2814154946017414235

namespace A318937

/-- `A000038(n+1)-A035016(2*n+1)` -/
def P2814154946017414235.Spec : Prop :=
  ∀ n, P2814154946017414235.a n = A318937 n

end A318937

/-! ## A318937.P9562586527158197361

`A000035(2*n)-A035016(2*n+1)`
-/

namespace A318937.P9562586527158197361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (2 * n) - A035016 (2 * n + 1)

end

end A318937.P9562586527158197361

namespace A318937

/-- `A000035(2*n)-A035016(2*n+1)` -/
def P9562586527158197361.Spec : Prop :=
  ∀ n, P9562586527158197361.a n = A318937 n

end A318937

/-!
# A318938: If n=0 then 1 otherwise 16*(1+22*A318935(n))*(sum of cubes of odd divisors of n).

The programs for A318938, there is no canonical definition to state claims against.
-/

/-! ## A318938.P4025069163627821096

`A008427(2*n)`
-/

namespace A318938.P4025069163627821096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008427 (2 * n)

end

end A318938.P4025069163627821096

/-! ## A318938.P13865425036096411532

`and(-1, A008427(A005843(n)))`
-/

namespace A318938.P13865425036096411532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A008427 (A005843 n).toNat)

end

end A318938.P13865425036096411532

/-! ## A318938.P2110018372058758674

`2*A004009(n)-A008430(n)`
-/

namespace A318938.P2110018372058758674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A004009 n - A008430 n

end

end A318938.P2110018372058758674

/-! ## A318938.P3650619657782423188

`2*A023920(9*n)-A008430(n)`
-/

namespace A318938.P3650619657782423188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A023920 (9 * n) - A008430 n

end

end A318938.P3650619657782423188

/-! ## A318938.P13971527644459509184

`2*A028579(16*n)-A008430(n)`
-/

namespace A318938.P13971527644459509184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028579 (16 * n) - A008430 n

end

end A318938.P13971527644459509184

/-!
# A318939: If n=0 then 1 otherwise 48*(1+12*A318935(n))*(sum of cubes of odd divisors of n).

The programs for A318939, there is no canonical definition to state claims against.
-/

/-! ## A318939.P11899594102568067396

`A008658(2*n)`
-/

namespace A318939.P11899594102568067396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008658 (2 * n)

end

end A318939.P11899594102568067396

/-! ## A318939.P7759753861264773729

`record[A008658(n+n)]`
-/

namespace A318939.P7759753861264773729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008658 (n + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A318939.P7759753861264773729

/-! ## A318939.P1058000394367242986

`record[A008658(n)/(-1)^n]`
-/

namespace A318939.P1058000394367242986
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008658 n : ℚ) / ((-1) ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A318939.P1058000394367242986

/-! ## A318939.P13750916015758363009

`and(-5, A008658(comp[or(1, n)]))`
-/

namespace A318939.P13750916015758363009
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-5) (A008658 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n))

end

end A318939.P13750916015758363009

/-! ## A318939.P18314570329862398183

`and(-1, A008658(A005843(n)))`
-/

namespace A318939.P18314570329862398183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A008658 (A005843 n).toNat)

end

end A318939.P18314570329862398183

/-!
# A318940: Primes whose binary representation contains a consecutive string of zeros of prime length.

The programs for A318940, there is no canonical definition to state claims against.
-/

/-! ## A318940.P14344172400559118186

`p?[A319302(n+1)]`
-/

namespace A318940.P14344172400559118186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319302 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A318940.P14344172400559118186

/-! ## A318940.P13444466597882979728

`record[A020639(A319302(n+5))]`
-/

namespace A318940.P13444466597882979728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A319302 (n + 5)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A318940.P13444466597882979728

/-! ## A318940.P4719973272634469313

`filter[A319302(n+1), A010051(#)]`
-/

namespace A318940.P4719973272634469313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319302 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A318940.P4719973272634469313

/-! ## A318940.P7624800911621464844

`filter[A319302(n+1), A080339(#)]`
-/

namespace A318940.P7624800911621464844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319302 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A318940.P7624800911621464844

/-! ## A318940.P12735912850814078857

`filter[A319302(n+1), A080545(#)]`
-/

namespace A318940.P12735912850814078857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319302 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080545 (f1 j).toNat = 1) n)

end

end A318940.P12735912850814078857

/-! ## A318940.P15186593494487352741

`filter[A319302(n+1), A171387(#)]`
-/

namespace A318940.P15186593494487352741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319302 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A171387 (f1 j).toNat = 1) n)

end

end A318940.P15186593494487352741

/-! ## A318940.P4113872345281210210

`∩[A000040(n+1), A319302(n+1)]`
-/

namespace A318940.P4113872345281210210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319302 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A318940.P4113872345281210210

/-! ## A318940.P9102326957275126902

`∩[A004139(n+1), A319302(n+1)]`
-/

namespace A318940.P9102326957275126902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319302 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A318940.P9102326957275126902

/-! ## A318940.P7453575035692743476

`∩[A006005(n+1), A319302(n+1)]`
-/

namespace A318940.P7453575035692743476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319302 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A318940.P7453575035692743476

/-! ## A318940.P8980912280770904495

`∩[A008578(n+1), A319302(n+1)]`
-/

namespace A318940.P8980912280770904495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319302 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A318940.P8980912280770904495

/-! ## A318940.P11787660132261275539

`∩[A045319(n+1), A319302(n+1)]`
-/

namespace A318940.P11787660132261275539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319302 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A318940.P11787660132261275539

/-! ## A318940.P10367599635852656957

`∩[A045344(n+1), A319302(n+1)]`
-/

namespace A318940.P10367599635852656957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319302 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A318940.P10367599635852656957

/-! ## A318940.P17506589223014836388

`∩[A065091(n+1), A319302(n+1)]`
-/

namespace A318940.P17506589223014836388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319302 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A318940.P17506589223014836388

/-! ## A318940.P7533136201594229515

`∩[A108719(n+1), A319302(n+1)]`
-/

namespace A318940.P7533136201594229515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108719 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319302 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A318940.P7533136201594229515

/-! ## A318940.P8439416222172708534

`∩[A116974(n+1), A319302(n+1)]`
-/

namespace A318940.P8439416222172708534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319302 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A318940.P8439416222172708534

/-! ## A318940.P6750324465617443949

`∩[A138837(n+1), A319302(n+1)]`
-/

namespace A318940.P6750324465617443949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138837 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319302 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A318940.P6750324465617443949

/-! ## A318940.P3368745146711330258

`∩[A140475(n+1), A319302(n+1)]`
-/

namespace A318940.P3368745146711330258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140475 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319302 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A318940.P3368745146711330258

/-! ## A318940.P7831763754018538338

`∩[A157996(n+1), A319302(n+1)]`
-/

namespace A318940.P7831763754018538338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157996 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319302 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A318940.P7831763754018538338

/-! ## A318940.P12351006987101162915

`∩[A158611(n+1), A319302(n+1)]`
-/

namespace A318940.P12351006987101162915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319302 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A318940.P12351006987101162915

/-! ## A318940.P12052777342250049262

`∩[A319302(n+1), A182986(n+1)]`
-/

namespace A318940.P12052777342250049262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319302 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A318940.P12052777342250049262

/-!
# A318941: Number of Dyck paths with n nodes and altitude 2.

The programs for A318941, the canonical program `A318941.P8051446893099222439` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A318941 has offset 0).

The definition of A318941 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A318941.P8051446893099222439

`5*a(n-1)-7*a(n-2)+2*a(n-3)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=4, a(4)=12, a(5)=35`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A318941

/-- `5*a(n-1)-7*a(n-2)+2*a(n-3)` -/
def P8051446893099222439.Spec : Prop :=
  ∀ n, P8051446893099222439.a n = A318941 n

theorem P8051446893099222439.correct : P8051446893099222439.Spec := by
  intro n
  simp only [A318941]

end A318941

/-! ## A318941.P91240217322277924

`A318942(A089071(n+1))%A069006(n)`
-/

namespace A318941.P91240217322277924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A318942 (A089071 (n + 1)).toNat) (A069006 n)

end

end A318941.P91240217322277924

namespace A318941

/-- `A318942(A089071(n+1))%A069006(n)` -/
def P91240217322277924.Spec : Prop :=
  ∀ n, P91240217322277924.a n = A318941 n

end A318941

/-! ## A318941.P14688456568320818418

`A318942(A152948(n+1))%A006154(n)`
-/

namespace A318941.P14688456568320818418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A318942 (A152948 (n + 1)).toNat) (A006154 n)

end

end A318941.P14688456568320818418

namespace A318941

/-- `A318942(A152948(n+1))%A006154(n)` -/
def P14688456568320818418.Spec : Prop :=
  ∀ n, P14688456568320818418.a n = A318941 n

end A318941

/-! ## A318941.P5005257354288424081

`A001006(n+1)-A003059(A030186(n))`
-/

namespace A318941.P5005257354288424081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001006 (n + 1) - A003059 (A030186 n).toNat

end

end A318941.P5005257354288424081

namespace A318941

/-- `A001006(n+1)-A003059(A030186(n))` -/
def P5005257354288424081.Spec : Prop :=
  ∀ n, P5005257354288424081.a n = A318941 n

end A318941

/-!
# A318942: Triangle read by rows: T(n,k) = number of Dyck paths with n nodes and altitude k (1 <= k <= n).

The programs for A318942, there is no canonical definition to state claims against.
-/

/-! ## A318942.P4758851380033936452

`A201165(n)-A135385(A274741(n))`
-/

namespace A318942.P4758851380033936452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201165 n - A135385 (A274741 n).toNat

end

end A318942.P4758851380033936452

/-! ## A318942.P6088521937246381045

`A038730(A140792(n)+A038722(n+1))`
-/

namespace A318942.P6088521937246381045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038730 (A140792 n + A038722 (n + 1)).toNat

end

end A318942.P6088521937246381045

/-! ## A318942.P1414475415317173149

`A201165(n)-A382734(A034695(n+1))`
-/

namespace A318942.P1414475415317173149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201165 n - A382734 (A034695 (n + 1)).toNat

end

end A318942.P1414475415317173149

/-! ## A318942.P2037054413324348984

`A134032(n+1)*A134032(A168551(n))`
-/

namespace A318942.P2037054413324348984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134032 (n + 1) * A134032 (A168551 n).toNat

end

end A318942.P2037054413324348984

/-! ## A318942.P5104391057843158952

`A007318(n)*A134032(A351870(n)+1)`
-/

namespace A318942.P5104391057843158952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A134032 (A351870 n + 1).toNat

end

end A318942.P5104391057843158952

/-!
# A318943: Number of Dyck paths with n nodes and altitude 3.

The programs for A318943, the canonical program `A318943.P14136405704968344770` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A318943 has offset 0).

The definition of A318943 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A318943.P14136405704968344770

`7*a(n-1)-17*a(n-2)+16*a(n-3)-4*a(n-4)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=1, a(4)=6, a(5)=21, a(6)=68, a(7)=208`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A318943

/-- `7*a(n-1)-17*a(n-2)+16*a(n-3)-4*a(n-4)` -/
def P14136405704968344770.Spec : Prop :=
  ∀ n, P14136405704968344770.a n = A318943 n

theorem P14136405704968344770.correct : P14136405704968344770.Spec := by
  intro n
  simp only [A318943]

end A318943

/-! ## A318943.P16291753114768853826

`A027870(A291382(n)+A238344(n))`
-/

namespace A318943.P16291753114768853826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027870 (A291382 n + A238344 n).toNat

end

end A318943.P16291753114768853826

namespace A318943

/-- `A027870(A291382(n)+A238344(n))` -/
def P16291753114768853826.Spec : Prop :=
  ∀ n, P16291753114768853826.a n = A318943 n

end A318943

/-! ## A318943.P16631208866798790933

`A351642(n)-A014499(A000142(n))`
-/

namespace A318943.P16631208866798790933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351642 n - A014499 (A000142 n).toNat

end

end A318943.P16631208866798790933

namespace A318943

/-- `A351642(n)-A014499(A000142(n))` -/
def P16631208866798790933.Spec : Prop :=
  ∀ n, P16631208866798790933.a n = A318943 n

end A318943

/-!
# A318944: Number of Dyck paths with n nodes and altitude 4.

The programs for A318944, there is no canonical definition to state claims against.
-/

/-! ## A318944.P15189677525421658526

`A352493(A197168(n))`
-/

namespace A318944.P15189677525421658526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352493 (A197168 n).toNat

end

end A318944.P15189677525421658526

/-! ## A318944.P17954896895056405948

`A265370(A003165(n!))`
-/

namespace A318944.P17954896895056405948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265370 (A003165 (Nat.factorial n)).toNat

end

end A318944.P17954896895056405948

/-! ## A318944.P5811733723724808995

`A307230(A118871(n+1))`
-/

namespace A318944.P5811733723724808995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307230 (A118871 (n + 1)).toNat

end

end A318944.P5811733723724808995

/-! ## A318944.P15077175750629056196

`∑[A102780(Δ[A038504(n)])]`
-/

namespace A318944.P15077175750629056196
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038504 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102780 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A318944.P15077175750629056196

/-!
# A318946: Column 1 of triangle A318945.

The programs for A318946, the canonical program `A318946.P11274604301574928591` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A318946 has offset 0).

The definition of A318946 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A318946.P11274604301574928591

`7*a(n-1)-17*a(n-2)+16*a(n-3)-4*a(n-4)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=1, a(4)=5, a(5)=19`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A318946

/-- `7*a(n-1)-17*a(n-2)+16*a(n-3)-4*a(n-4)` -/
def P11274604301574928591.Spec : Prop :=
  ∀ n, P11274604301574928591.a n = A318946 n

theorem P11274604301574928591.correct : P11274604301574928591.Spec := by
  intro n
  simp only [A318946]

end A318946

/-! ## A318946.P3910028863998427290

`A088305(n)-A045891(n)`
-/

namespace A318946.P3910028863998427290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088305 n - A045891 n

end

end A318946.P3910028863998427290

namespace A318946

/-- `A088305(n)-A045891(n)` -/
def P3910028863998427290.Spec : Prop :=
  ∀ n, P3910028863998427290.a n = A318946 n

end A318946

/-! ## A318946.P6139660536745310535

`A088305(n)-∑[A034007(n)]`
-/

namespace A318946.P6139660536745310535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034007 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088305 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A318946.P6139660536745310535

namespace A318946

/-- `A088305(n)-∑[A034007(n)]` -/
def P6139660536745310535.Spec : Prop :=
  ∀ n, P6139660536745310535.a n = A318946 n

end A318946

/-! ## A318946.P17744391529548720295

`A000045(A004277(n))-A045891(n)`
-/

namespace A318946.P17744391529548720295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A004277 n).toNat - A045891 n

end

end A318946.P17744391529548720295

namespace A318946

/-- `A000045(A004277(n))-A045891(n)` -/
def P17744391529548720295.Spec : Prop :=
  ∀ n, P17744391529548720295.a n = A318946 n

end A318946

/-! ## A318946.P6322392459560960946

`A001906(A028310(n))-A045891(n)`
-/

namespace A318946.P6322392459560960946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001906 (A028310 n).toNat - A045891 n

end

end A318946.P6322392459560960946

namespace A318946

/-- `A001906(A028310(n))-A045891(n)` -/
def P6322392459560960946.Spec : Prop :=
  ∀ n, P6322392459560960946.a n = A318946 n

end A318946

/-! ## A318946.P7071804333747139848

`A000045(A004277(n))-abs(A081037(n))`
-/

namespace A318946.P7071804333747139848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A004277 n).toNat - |A081037 n|

end

end A318946.P7071804333747139848

namespace A318946

/-- `A000045(A004277(n))-abs(A081037(n))` -/
def P7071804333747139848.Spec : Prop :=
  ∀ n, P7071804333747139848.a n = A318946 n

end A318946

/-! ## A318946.P6051304748391842805

`A000045(A004277(n))-∑[A034007(n)]`
-/

namespace A318946.P6051304748391842805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034007 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A004277 n).toNat - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A318946.P6051304748391842805

namespace A318946

/-- `A000045(A004277(n))-∑[A034007(n)]` -/
def P6051304748391842805.Spec : Prop :=
  ∀ n, P6051304748391842805.a n = A318946 n

end A318946

/-! ## A318946.P4855574377754793484

`A000045(record[A005131(n)])-A045891(n)`
-/

namespace A318946.P4855574377754793484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005131 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat - A045891 n

end

end A318946.P4855574377754793484

namespace A318946

/-- `A000045(record[A005131(n)])-A045891(n)` -/
def P4855574377754793484.Spec : Prop :=
  ∀ n, P4855574377754793484.a n = A318946 n

end A318946

/-! ## A318946.P4071204931174422367

`A000045(2*n)+A000007(n)-A045891(n)`
-/

namespace A318946.P4071204931174422367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * n) + (A000007 n - A045891 n)

end

end A318946.P4071204931174422367

namespace A318946

/-- `A000045(2*n)+A000007(n)-A045891(n)` -/
def P4071204931174422367.Spec : Prop :=
  ∀ n, P4071204931174422367.a n = A318946 n

end A318946

/-! ## A318946.P16087987559858910989

`A318947(n+1)-∑[A318947(n)]`
-/

namespace A318946.P16087987559858910989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318947 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318947 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A318946.P16087987559858910989

namespace A318946

/-- `A318947(n+1)-∑[A318947(n)]` -/
def P16087987559858910989.Spec : Prop :=
  ∀ n, P16087987559858910989.a n = A318946 n

end A318946

/-! ## A318946.P18162606608739840925

`A378383(n+1)-A377670(n)`
-/

namespace A318946.P18162606608739840925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378383 (n + 1) - A377670 n

end

end A318946.P18162606608739840925

namespace A318946

/-- `A378383(n+1)-A377670(n)` -/
def P18162606608739840925.Spec : Prop :=
  ∀ n, P18162606608739840925.a n = A318946 n

end A318946

/-! ## A318946.P6327331921162067569

`A377679(n+1)-(A377867(n+1)+A377670(n))`
-/

namespace A318946.P6327331921162067569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377679 (n + 1) - (A377867 (n + 1) + A377670 n)

end

end A318946.P6327331921162067569

namespace A318946

/-- `A377679(n+1)-(A377867(n+1)+A377670(n))` -/
def P6327331921162067569.Spec : Prop :=
  ∀ n, P6327331921162067569.a n = A318946 n

end A318946

/-!
# A318947: Column 2 of triangle A318945.

The programs for A318947, there is no canonical definition to state claims against.
-/

/-! ## A318947.P14076299510311136914

`∑[Δ[A319405(n)]-A319405(n)]`
-/

namespace A318947.P14076299510311136914
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319405 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A319405 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A318947.P14076299510311136914

/-! ## A318947.P6051722071112840885

`A319405(n+1)-∑[A319405(n)]`
-/

namespace A318947.P6051722071112840885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319405 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319405 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A318947.P6051722071112840885

/-! ## A318947.P2598811370851995850

`A325106(A137746(n))+A036638(n+3)`
-/

namespace A318947.P2598811370851995850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325106 (A137746 n).toNat + A036638 (n + 3)

end

end A318947.P2598811370851995850

/-!
# A318950: Regular triangle where T(n,k) is the number of factorizations of n into factors > 1 with sum k.

The programs for A318950, there is no canonical definition to state claims against.
-/

/-! ## A318950.P5095400335767463563

`and(A143539(n+1), A223525(n+1))`
-/

namespace A318950.P5095400335767463563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A143539 (n + 1)) (A223525 (n + 1))

end

end A318950.P5095400335767463563

/-! ## A318950.P1672707912889260525

`A359910(A060047(n+1)^A319000(n+1))`
-/

namespace A318950.P1672707912889260525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359910 (SequenceMachineLib.roundAway ((A060047 (n + 1) : ℚ) ^ (A319000 (n + 1) : ℤ))).toNat

end

end A318950.P1672707912889260525

/-! ## A318950.P17464238799549707731

`A319000(n+1)-A010815(A152751(n))`
-/

namespace A318950.P17464238799549707731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319000 (n + 1) - A010815 (A152751 n).toNat

end

end A318950.P17464238799549707731

/-! ## A318950.P5760112293810394651

`A223529(n+1)%A105264(n)`
-/

namespace A318950.P5760112293810394651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A223529 (n + 1)) (A105264 n)

end

end A318950.P5760112293810394651

/-! ## A318950.P2355356840992385640

`A326029(A069773(n)*A319000(n+1))`
-/

namespace A318950.P2355356840992385640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326029 (A069773 n * A319000 (n + 1)).toNat

end

end A318950.P2355356840992385640

/-!
# A318951: Array read by rows: T(n,k) is the number of nonisomorphic n X n matrices with nonnegative integer entries and row sums k under row and column permutations, (n >= 1, k >= 0).

The programs for A318951, there is no canonical definition to state claims against.
-/

/-! ## A318951.P17706440106611802056

`A054703(A329070(n))`
-/

namespace A318951.P17706440106611802056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054703 (A329070 n).toNat

end

end A318951.P17706440106611802056

/-! ## A318951.P2687497270735839147

`A238884(A158687(n))`
-/

namespace A318951.P2687497270735839147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238884 (A158687 n).toNat

end

end A318951.P2687497270735839147

/-! ## A318951.P11523121047035465727

`A343378(A060102(n))`
-/

namespace A318951.P11523121047035465727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343378 (A060102 n).toNat

end

end A318951.P11523121047035465727

/-! ## A318951.P7134076542469443141

`A098745(A131235(n)+A081603(n))`
-/

namespace A318951.P7134076542469443141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098745 (A131235 n + A081603 n).toNat

end

end A318951.P7134076542469443141

/-! ## A318951.P13632027136668446137

`A117707(A141020(n)+A059328(n))`
-/

namespace A318951.P13632027136668446137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117707 (A141020 n + A059328 n).toNat

end

end A318951.P13632027136668446137

/-!
# A318952: a(n) = Sum_{d|n} (sigma(n) mod sigma(d)).

The programs for A318952, the canonical program `A318952.P11663603652040292718` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A318952 has offset 1).

The definition of A318952 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A318952.P11663603652040292718

`∑{d}[n+1, A000203(n+1)%A000203(#)]`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A318952

/-- `∑{d}[n+1, A000203(n+1)%A000203(#)]` -/
def P11663603652040292718.Spec : Prop :=
  ∀ n, P11663603652040292718.a n = A318952 (n + 1)

theorem P11663603652040292718.correct : P11663603652040292718.Spec := by
  intro n
  simp only [A318952, Nat.add_sub_cancel]

end A318952

/-! ## A318952.P13579461604126904236

`A249729(A249757(n))%A002033(n)`
-/

namespace A318952.P13579461604126904236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A249729 (A249757 n).toNat) (A002033 n)

end

end A318952.P13579461604126904236

namespace A318952

/-- `A249729(A249757(n))%A002033(n)` -/
def P13579461604126904236.Spec : Prop :=
  ∀ n, P13579461604126904236.a n = A318952 (n + 1)

end A318952

/-! ## A318952.P6372810432525904115

`A056170(n+1)*A227551(A169865(n+1))`
-/

namespace A318952.P6372810432525904115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056170 (n + 1) * A227551 (A169865 (n + 1)).toNat

end

end A318952.P6372810432525904115

namespace A318952

/-- `A056170(n+1)*A227551(A169865(n+1))` -/
def P6372810432525904115.Spec : Prop :=
  ∀ n, P6372810432525904115.a n = A318952 (n + 1)

end A318952

/-! ## A318952.P2073444602031574928

`A314188(A079901(n))%A002033(n)`
-/

namespace A318952.P2073444602031574928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A314188 (A079901 n).toNat) (A002033 n)

end

end A318952.P2073444602031574928

namespace A318952

/-- `A314188(A079901(n))%A002033(n)` -/
def P2073444602031574928.Spec : Prop :=
  ∀ n, P2073444602031574928.a n = A318952 (n + 1)

end A318952

/-! ## A318952.P15495943308499089232

`(A322411(3*n+4)+1)%A285328(n+1)`
-/

namespace A318952.P15495943308499089232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A322411 (3 * n + 4) + 1) (A285328 (n + 1))

end

end A318952.P15495943308499089232

namespace A318952

/-- `(A322411(3*n+4)+1)%A285328(n+1)` -/
def P15495943308499089232.Spec : Prop :=
  ∀ n, P15495943308499089232.a n = A318952 (n + 1)

end A318952

/-!
# A318953: Maximum Heinz number of a strict factorization of n into factors > 1.

The programs for A318953, there is no canonical definition to state claims against.
-/

/-! ## A318953.P13246318457644369035

`A175427(A213621(n))+A006005(n+1)`
-/

namespace A318953.P13246318457644369035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175427 (A213621 n).toNat + A006005 (n + 1)

end

end A318953.P13246318457644369035

/-! ## A318953.P8846807572408296550

`A162348(A275700(n+1))`
-/

namespace A318953.P8846807572408296550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162348 (A275700 (n + 1)).toNat

end

end A318953.P8846807572408296550

/-! ## A318953.P265950847871657533

`A033677(A275700(n+1)/2)`
-/

namespace A318953.P265950847871657533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033677 (SequenceMachineLib.roundAway ((A275700 (n + 1) : ℚ) / 2)).toNat

end

end A318953.P265950847871657533

/-! ## A318953.P17255226719003413559

`A140271(A275700(n+1)/2)`
-/

namespace A318953.P17255226719003413559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140271 (SequenceMachineLib.roundAway ((A275700 (n + 1) : ℚ) / 2)).toNat

end

end A318953.P17255226719003413559

/-! ## A318953.P14428619221476901896

`A162348(∏{d}[n+1, A000040(#)])`
-/

namespace A318953.P14428619221476901896
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162348 (∏ d ∈ Nat.divisors (f1 n), A000040 d).toNat

end

end A318953.P14428619221476901896

/-!
# A318954: Minimum shifted Heinz number of a strict factorization of n into factors > 1.

The programs for A318954, there is no canonical definition to state claims against.
-/

/-! ## A318954.P3624409191040796550

`A019565(A332306(n+1))`
-/

namespace A318954.P3624409191040796550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 (A332306 (n + 1)).toNat

end

end A318954.P3624409191040796550

/-!
# A318955: Binomial(A319500(n),a(n)) = A006917(n) with 2 <= a(n) <= A319500(n)/2.

The programs for A318955, there is no canonical definition to state claims against.
-/

/-! ## A318955.P16393584318232136026

`A357327(A006987(n+1))`
-/

namespace A318955.P16393584318232136026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357327 (A006987 (n + 1)).toNat

end

end A318955.P16393584318232136026

/-! ## A318955.P4160673696434482337

`A357327(lt[1, A059233(n+2)]+2)`
-/

namespace A318955.P4160673696434482337
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059233 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357327 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2)

end

end A318955.P4160673696434482337

/-! ## A318955.P17029661128213548669

`A357327(record[A024746(n+1)*A060576(n)])`
-/

namespace A318955.P17029661128213548669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024746 (n + 1) * A060576 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357327 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A318955.P17029661128213548669

/-! ## A318955.P9649398547784609705

`A357327(record[A024746(n+1)%A319406(n+1)])`
-/

namespace A318955.P9649398547784609705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A024746 (n + 1)) (A319406 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357327 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A318955.P9649398547784609705

/-! ## A318955.P11804469408145709994

`A357327(record[A319382(n+1)%A319382(n+2)])`
-/

namespace A318955.P11804469408145709994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A319382 (n + 1)) (A319382 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357327 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A318955.P11804469408145709994

/-! ## A318955.P2145972308165511061

`A357327(∪[A319382(2*n+1), A182237(n+2)])`
-/

namespace A318955.P2145972308165511061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319382 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182237 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357327 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A318955.P2145972308165511061

/-!
# A318956: For any number n > 0 with prime factorization Product_{k=1..w} p_k ^ x_k (where p_1 < p_2 < ... < p_w and x_k > 0 for k=1..w), let (o_1, ..., o_w) be the ordinal transform of (x_1, ..., x_w); a(n) = Product_{k=1..w} p_k ^ o_k.

The programs for A318956, there is no canonical definition to state claims against.
-/

/-! ## A318956.P14715847685142046539

`A295417(∏{p}[n+1, #]*A353693(n+1))`
-/

namespace A318956.P14715847685142046539
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295417 (((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℤ) * A353693 (n + 1)).toNat

end

end A318956.P14715847685142046539

/-! ## A318956.P2660798191962537185

`A295417(A007947(n+1)*A353693(n+1))`
-/

namespace A318956.P2660798191962537185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295417 (A007947 (n + 1) * A353693 (n + 1)).toNat

end

end A318956.P2660798191962537185

/-! ## A318956.P7383143584041630179

`A295417(A353694(n+1)/A003557(n+1))`
-/

namespace A318956.P7383143584041630179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295417 (SequenceMachineLib.roundAway ((A353694 (n + 1) : ℚ) / (A003557 (n + 1) : ℚ))).toNat

end

end A318956.P7383143584041630179

/-! ## A318956.P17373278183454168397

`A295417((n+1)*A353693(n+1)/A003557(n+1))`
-/

namespace A318956.P17373278183454168397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295417 (SequenceMachineLib.roundAway (((n + 1 : ℤ) * A353693 (n + 1) : ℚ) / (A003557 (n + 1) : ℚ))).toNat

end

end A318956.P17373278183454168397

/-! ## A318956.P13089345424506700806

`A295417(A353694(n+1)/(n+1)*A007947(n+1))`
-/

namespace A318956.P13089345424506700806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295417 (SequenceMachineLib.roundAway ((A353694 (n + 1) : ℚ) / (n + 1 : ℚ) * (A007947 (n + 1) : ℚ))).toNat

end

end A318956.P13089345424506700806

/-! ## A318956.P6665311438964846504

`A295417(A327499((n+1)²)%A122040(n+1)*A007947(n+1))`
-/

namespace A318956.P6665311438964846504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295417 (Int.tmod (A327499 ((n + 1) ^ 2)) (A122040 (n + 1)) * A007947 (n + 1)).toNat

end

end A318956.P6665311438964846504

/-!
# A318957: Numbers k such that A194113(k) is a prime.

The programs for A318957, there is no canonical definition to state claims against.
-/

/-! ## A318957.P6489189574939923019

`eq[2, A000005(A194113(n+1))]+1`
-/

namespace A318957.P6489189574939923019
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A194113 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A318957.P6489189574939923019

/-!
# A318958: A(n, k) is a square array read in the decreasing antidiagonals, for n >= 0 and k >= 0.

The programs for A318958, there is no canonical definition to state claims against.
-/

/-! ## A318958.P12909827500573160139

`A087401(n)-A110657(A225233(n))`
-/

namespace A318958.P12909827500573160139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087401 n - A110657 (A225233 n).toNat

end

end A318958.P12909827500573160139

/-!
# A318959: Primes p (> 2) such that p - 2 and p - 1 are nonsquarefree.

The programs for A318959, the canonical program `A318959.P9287724268472417125` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A318959 has offset 1).

The definition of A318959 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1470 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A318959.P9074360461172535632

`∩[A049092(n+1), A049229(n+1)]`
-/

namespace A318959.P9074360461172535632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049092 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049229 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A318959.P9074360461172535632

namespace A318959

/-- `∩[A049092(n+1), A049229(n+1)]` -/
def P9074360461172535632.Spec : Prop :=
  ∀ n, (P9074360461172535632.a n : ℤ) = A318959 (n + 1)

end A318959

/-! ## A318959.P9287724268472417125

`A065091(lt[2, A240473(n+1)])`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A318959

/-- `A065091(lt[2, A240473(n+1)])` -/
def P9287724268472417125.Spec : Prop :=
  ∀ n, P9287724268472417125.a n = A318959 (n + 1)

theorem P9287724268472417125.correct : P9287724268472417125.Spec := by
  intro n
  simp only [A318959, Nat.add_sub_cancel]

end A318959

/-! ## A318959.P17175622177023160776

`p?[A068781(n+1)+2]`
-/

namespace A318959.P17175622177023160776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068781 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A318959.P17175622177023160776

namespace A318959

/-- `p?[A068781(n+1)+2]` -/
def P17175622177023160776.Spec : Prop :=
  ∀ n, P17175622177023160776.a n = A318959 (n + 1)

end A318959

/-! ## A318959.P3134919543870150897

`p?[A082284(A068781(n+1))]`
-/

namespace A318959.P3134919543870150897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082284 (A068781 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A318959.P3134919543870150897

namespace A318959

/-- `p?[A082284(A068781(n+1))]` -/
def P3134919543870150897.Spec : Prop :=
  ∀ n, P3134919543870150897.a n = A318959 (n + 1)

end A318959

/-! ## A318959.P12807169335366408820

`∩[A049229(n+1), A072284(n+1)]`
-/

namespace A318959.P12807169335366408820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049229 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072284 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A318959.P12807169335366408820

namespace A318959

/-- `∩[A049229(n+1), A072284(n+1)]` -/
def P12807169335366408820.Spec : Prop :=
  ∀ n, (P12807169335366408820.a n : ℤ) = A318959 (n + 1)

end A318959

/-! ## A318959.P13289041264162217925

`∩[A049197(n+1), A049229(n+1)]`
-/

namespace A318959.P13289041264162217925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049197 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049229 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A318959.P13289041264162217925

namespace A318959

/-- `∩[A049197(n+1), A049229(n+1)]` -/
def P13289041264162217925.Spec : Prop :=
  ∀ n, (P13289041264162217925.a n : ℤ) = A318959 (n + 1)

end A318959

/-! ## A318959.P9828755238263269051

`∩[A049229(n+1), A162902(n+1)]`
-/

namespace A318959.P9828755238263269051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049229 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162902 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A318959.P9828755238263269051

namespace A318959

/-- `∩[A049229(n+1), A162902(n+1)]` -/
def P9828755238263269051.Spec : Prop :=
  ∀ n, (P9828755238263269051.a n : ℤ) = A318959 (n + 1)

end A318959

/-! ## A318959.P9156118611359973800

`∩[A049229(n+1), A226386(n+1)]`
-/

namespace A318959.P9156118611359973800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049229 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226386 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A318959.P9156118611359973800

namespace A318959

/-- `∩[A049229(n+1), A226386(n+1)]` -/
def P9156118611359973800.Spec : Prop :=
  ∀ n, (P9156118611359973800.a n : ℤ) = A318959 (n + 1)

end A318959

/-! ## A318959.P5213680035095148414

`∩[A049195(n+1), A049229(n+1)]`
-/

namespace A318959.P5213680035095148414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049195 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049229 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A318959.P5213680035095148414

namespace A318959

/-- `∩[A049195(n+1), A049229(n+1)]` -/
def P5213680035095148414.Spec : Prop :=
  ∀ n, (P5213680035095148414.a n : ℤ) = A318959 (n + 1)

end A318959

/-! ## A318959.P14688706598644058664

`p?[abs(A261890(A064148(n+1)))]`
-/

namespace A318959.P14688706598644058664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A261890 (A064148 (n + 1)).toNat|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A318959.P14688706598644058664

namespace A318959

/-- `p?[abs(A261890(A064148(n+1)))]` -/
def P14688706598644058664.Spec : Prop :=
  ∀ n, P14688706598644058664.a n = A318959 (n + 1)

end A318959

/-! ## A318959.P18408771212002938273

`p?[record[A067535(A113521(n+1))]]`
-/

namespace A318959.P18408771212002938273
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067535 (A113521 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A318959.P18408771212002938273

namespace A318959

/-- `p?[record[A067535(A113521(n+1))]]` -/
def P18408771212002938273.Spec : Prop :=
  ∀ n, P18408771212002938273.a n = A318959 (n + 1)

end A318959

/-!
# A318960: One of the two successive approximations up to 2^n for the 2-adic integer sqrt(-7). This is the 1 (mod 4) case.

The programs for A318960, there is no canonical definition to state claims against.
-/

/-! ## A318960.P5720778429627470647

`2^(n+2)-A318961(n+2)`
-/

namespace A318960.P5720778429627470647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 2) : ℤ) - A318961 (n + 2)

end

end A318960.P5720778429627470647

/-! ## A318960.P13018833929597687167

`xor(∑[A000079(n+1)], A318961(n+2))`
-/

namespace A318960.P13018833929597687167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (∑ j ∈ Finset.range (n + 1), f1 j) (A318961 (n + 2))

end

end A318960.P13018833929597687167

/-! ## A318960.P9507831726178396831

`A341538(n+2)+A341539(n+2)-A318961(n+2)`
-/

namespace A318960.P9507831726178396831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341538 (n + 2) + (A341539 (n + 2) - A318961 (n + 2))

end

end A318960.P9507831726178396831

/-! ## A318960.P13420015798674578759

`A341600(n+2)+A341601(n+2)-A318961(n+2)`
-/

namespace A318960.P13420015798674578759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341600 (n + 2) + (A341601 (n + 2) - A318961 (n + 2))

end

end A318960.P13420015798674578759

/-! ## A318960.P13290563878266651279

`A341751(n+2)+A341752(n+2)-A318961(n+2)`
-/

namespace A318960.P13290563878266651279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341751 (n + 2) + (A341752 (n + 2) - A318961 (n + 2))

end

end A318960.P13290563878266651279

/-!
# A318961: One of the two successive approximations up to 2^n for the 2-adic integer sqrt(-7). This is the 3 (mod 4) case.

The programs for A318961, there is no canonical definition to state claims against.
-/

/-! ## A318961.P10658146873092455310

`2^(n+2)-A318960(n+2)`
-/

namespace A318961.P10658146873092455310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 2) : ℤ) - A318960 (n + 2)

end

end A318961.P10658146873092455310

/-! ## A318961.P3079625553259816633

`and(-A318960(n+2), A126646(n+1))`
-/

namespace A318961.P3079625553259816633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A318960 (n + 2)) (A126646 (n + 1))

end

end A318961.P3079625553259816633

/-! ## A318961.P4206314893903618504

`A341538(n+2)+A341539(n+2)-A318960(n+2)`
-/

namespace A318961.P4206314893903618504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341538 (n + 2) + (A341539 (n + 2) - A318960 (n + 2))

end

end A318961.P4206314893903618504

/-! ## A318961.P11629847732154797953

`A341600(n+2)+A341601(n+2)-A318960(n+2)`
-/

namespace A318961.P11629847732154797953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341600 (n + 2) + (A341601 (n + 2) - A318960 (n + 2))

end

end A318961.P11629847732154797953

/-! ## A318961.P11670220809307099401

`A341751(n+2)+A341752(n+2)-A318960(n+2)`
-/

namespace A318961.P11670220809307099401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341751 (n + 2) + (A341752 (n + 2) - A318960 (n + 2))

end

end A318961.P11670220809307099401

/-! ## A318961.P3106921338333660241

`and(A126646(n+1)*A318960(n+3), A126646(n+1))`
-/

namespace A318961.P3106921338333660241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A126646 (n + 1) * A318960 (n + 3)) (A126646 (n + 1))

end

end A318961.P3106921338333660241

/-!
# A318962: Digits of one of the two 2-adic integers sqrt(-7) that ends in 01.

The programs for A318962, there is no canonical definition to state claims against.
-/

/-! ## A318962.P2861935303060280097

`(1-A318963(n))^n`
-/

namespace A318962.P2861935303060280097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A318963 n) ^ n

end

end A318962.P2861935303060280097

/-! ## A318962.P8319809706462955063

`A054977(n)-A318963(n)`
-/

namespace A318962.P8319809706462955063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n - A318963 n

end

end A318962.P8319809706462955063

/-! ## A318962.P9652417957032092595

`A000007(n*A318963(n))`
-/

namespace A318962.P9652417957032092595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 ((n : ℤ) * A318963 n).toNat

end

end A318962.P9652417957032092595

/-! ## A318962.P4438917351764275836

`xor(A057427(n), A318963(n))`
-/

namespace A318962.P4438917351764275836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A057427 n) (A318963 n)

end

end A318962.P4438917351764275836

/-! ## A318962.P12671801586123045244

`A000007(n)+1-A318963(n)`
-/

namespace A318962.P12671801586123045244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (1 - A318963 n)

end

end A318962.P12671801586123045244

/-! ## A318962.P15718293620512888652

`1-A057427(n*A318963(n))`
-/

namespace A318962.P15718293620512888652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A057427 ((n : ℤ) * A318963 n).toNat

end

end A318962.P15718293620512888652

/-! ## A318962.P4905473018932421566

`A318963(a(n-1))-A318963(n)` with `a(0)=1`
-/

namespace A318962.P4905473018932421566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A318963 (a (n - 1)).toNat - A318963 n

end

end A318962.P4905473018932421566

/-! ## A318962.P12893909661633871463

`A322217(n)+A341540(n)-A318963(n)`
-/

namespace A318962.P12893909661633871463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322217 n + (A341540 n - A318963 n)

end

end A318962.P12893909661633871463

/-! ## A318962.P7206438875833944698

`A341602(n)+A341603(n)-A318963(n)`
-/

namespace A318962.P7206438875833944698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341602 n + (A341603 n - A318963 n)

end

end A318962.P7206438875833944698

/-! ## A318962.P6493607751432990605

`A341753(n)+A341754(n)-A318963(n)`
-/

namespace A318962.P6493607751432990605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341753 n + (A341754 n - A318963 n)

end

end A318962.P6493607751432990605

/-!
# A318963: Digits of one of the two 2-adic integers sqrt(-7) that ends in 11.

The programs for A318963, there is no canonical definition to state claims against.
-/

/-! ## A318963.P1019246920523379063

`(1-A318962(n))^n`
-/

namespace A318963.P1019246920523379063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A318962 n) ^ n

end

end A318963.P1019246920523379063

/-! ## A318963.P4740492645338752864

`A054977(n)-A318962(n)`
-/

namespace A318963.P4740492645338752864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n - A318962 n

end

end A318963.P4740492645338752864

/-! ## A318963.P15972327367471829427

`A000007(n*A318962(n))`
-/

namespace A318963.P15972327367471829427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 ((n : ℤ) * A318962 n).toNat

end

end A318963.P15972327367471829427

/-! ## A318963.P17356932065323168298

`xor(A057427(n), A318962(n))`
-/

namespace A318963.P17356932065323168298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A057427 n) (A318962 n)

end

end A318963.P17356932065323168298

/-! ## A318963.P10605264953162175147

`A000007(n)+1-A318962(n)`
-/

namespace A318963.P10605264953162175147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (1 - A318962 n)

end

end A318963.P10605264953162175147

/-! ## A318963.P14579123106211585417

`1-A057427(n*A318962(n))`
-/

namespace A318963.P14579123106211585417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A057427 ((n : ℤ) * A318962 n).toNat

end

end A318963.P14579123106211585417

/-! ## A318963.P3272032629570045177

`C(A008611(n), n*A318962(n))`
-/

namespace A318963.P3272032629570045177
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A008611 n).toNat ((n : ℤ) * A318962 n).toNat

end

end A318963.P3272032629570045177

/-! ## A318963.P11663837166691539077

`A008611(A318962(n)+C(2, n²))`
-/

namespace A318963.P11663837166691539077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A318962 n + (Nat.choose 2 (n ^ 2) : ℤ)).toNat

end

end A318963.P11663837166691539077

/-! ## A318963.P7578720442525976913

`A002313(n+1)%4-A318962(n)`
-/

namespace A318963.P7578720442525976913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002313 (n + 1)) 4 - A318962 n

end

end A318963.P7578720442525976913

/-! ## A318963.P615128176824009381

`A238777(a(n-1)+1)-A318962(n)` with `a(0)=1`
-/

namespace A318963.P615128176824009381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A238777 (a (n - 1) + 1).toNat - A318962 n

end

end A318963.P615128176824009381

/-! ## A318963.P14774826075931758704

`A322217(n)+A341540(n)-A318962(n)`
-/

namespace A318963.P14774826075931758704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322217 n + (A341540 n - A318962 n)

end

end A318963.P14774826075931758704

/-! ## A318963.P6253366758161959987

`A341602(n)+A341603(n)-A318962(n)`
-/

namespace A318963.P6253366758161959987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341602 n + (A341603 n - A318962 n)

end

end A318963.P6253366758161959987

/-! ## A318963.P16124542011885618009

`A341753(n)+A341754(n)-A318962(n)`
-/

namespace A318963.P16124542011885618009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341753 n + (A341754 n - A318962 n)

end

end A318963.P16124542011885618009

/-!
# A318964: Numbers k such that both k and k+1 are the product of exactly five distinct primes.

The programs for A318964, there is no canonical definition to state claims against.
-/

/-! ## A318964.P6512961947946860056

`∩[A140079(n+1), A274807(n+1)]`
-/

namespace A318964.P6512961947946860056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140079 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274807 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A318964.P6512961947946860056

/-! ## A318964.P10132882411779874930

`∩[A274807(n+1), A321505(n+1)]`
-/

namespace A318964.P10132882411779874930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274807 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321505 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A318964.P10132882411779874930

/-! ## A318964.P1341518234360754304

`A321505(record[A206437(3*n+4)])`
-/

namespace A318964.P1341518234360754304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206437 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321505 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A318964.P1341518234360754304

/-!
# A318966: Expansion of e.g.f. Product_{i>=1, j>=1, k>=1} 1/(1 - x^(i*j*k))^(1/(i*j*k)).

The programs for A318966, there is no canonical definition to state claims against.
-/

/-! ## A318966.P10625852316851003844

`A005599(A000602(3*n))`
-/

namespace A318966.P10625852316851003844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005599 (A000602 (3 * n)).toNat

end

end A318966.P10625852316851003844

/-!
# A318967: Expansion of e.g.f. Product_{i>=1, j>=1, k>=1} (1 + x^(i*j*k))^(1/(i*j*k)).

The programs for A318967, there is no canonical definition to state claims against.
-/

/-! ## A318967.P9267044311855589803

`or(1, A171715(A231173(n)))`
-/

namespace A318967.P9267044311855589803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A171715 (A231173 n).toNat)

end

end A318967.P9267044311855589803

/-! ## A318967.P11332564328591000608

`or(n, A325953(A002294(n)))`
-/

namespace A318967.P11332564328591000608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A325953 (A002294 n).toNat)

end

end A318967.P11332564328591000608

/-!
# A318968: Expansion of exp(Sum_{k>=1} ( Sum_{d|k, d odd} d^k ) * x^k/k).

The programs for A318968, there is no canonical definition to state claims against.
-/

/-! ## A318968.P10076120529937995960

`A026540(a(n-1))` with `a(0)=1, a(1)=1, a(2)=1, a(3)=10, a(4)=10`
-/

namespace A318968.P10076120529937995960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 10, 10] fun n a =>
  A026540 (a (n - 1)).toNat

end

end A318968.P10076120529937995960

/-! ## A318968.P12517750616879586589

`∑[(n^n)%A007733(n^n)]+1`
-/

namespace A318968.P12517750616879586589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n ^ n : ℤ) (A007733 (n ^ n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A318968.P12517750616879586589

/-!
# A318969: Expansion of exp(Sum_{k>=1} ( Sum_{p|k, p prime} p^k ) * x^k/k).

The programs for A318969, there is no canonical definition to state claims against.
-/

/-! ## A318969.P5267136181168161162

`and(A100865(n+1), A100866(A041823(n)))`
-/

namespace A318969.P5267136181168161162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A100865 (n + 1)) (A100866 (A041823 n).toNat)

end

end A318969.P5267136181168161162

/-!
# A318972: The 7x+-1 function ("shortcut" definition): a(n) = (7n+1)/4 if n == +1 (mod 4), a(n) = (7n-1)/4 if n == -1 (mod 4), otherwise a(n) = n/2.

The programs for A318972, the canonical program `A318972.P7117582976779536478` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A318972 has offset 0).

The definition of A318972 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A318972.P7117582976779536478

`a(n-2)+a(n-4)-a(n-6)` with `a(0)=0, a(1)=2, a(2)=1, a(3)=5, a(4)=2, a(5)=9`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A318972

/-- `a(n-2)+a(n-4)-a(n-6)` -/
def P7117582976779536478.Spec : Prop :=
  ∀ n, P7117582976779536478.a n = A318972 n

theorem P7117582976779536478.correct : P7117582976779536478.Spec := by
  intro n
  simp only [A318972]

end A318972

/-! ## A318972.P10468047325473845481

`round((5*n%2+2)*n/4)`
-/

namespace A318972.P10468047325473845481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((5 * (n % 2) + 2 : ℕ) : ℚ) * ((n : ℚ) / 4))

end

end A318972.P10468047325473845481

namespace A318972

/-- `round((5*n%2+2)*n/4)` -/
def P10468047325473845481.Spec : Prop :=
  ∀ n, P10468047325473845481.a n = A318972 n

end A318972

/-! ## A318972.P2177442453676050214

`A006368(n)-n*(-1)^n`
-/

namespace A318972.P2177442453676050214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006368 n - (n : ℤ) * (-1) ^ n

end

end A318972.P2177442453676050214

namespace A318972

/-- `A006368(n)-n*(-1)^n` -/
def P2177442453676050214.Spec : Prop :=
  ∀ n, P2177442453676050214.a n = A318972 n

end A318972

/-! ## A318972.P11190860076944831313

`floor((A006370(n)+floor(n/2))/2)`
-/

namespace A318972.P11190860076944831313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A006370 n + ⌊(n : ℚ) / 2⌋ : ℚ) / 2⌋

end

end A318972.P11190860076944831313

namespace A318972

/-- `floor((A006370(n)+floor(n/2))/2)` -/
def P11190860076944831313.Spec : Prop :=
  ∀ n, P11190860076944831313.a n = A318972 n

end A318972

/-! ## A318972.P13797971129905665730

`lcm(2, n)-A004526(gcd(n+1, ∑[n]))`
-/

namespace A318972.P13797971129905665730
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 n : ℤ) - A004526 (Nat.gcd (n + 1) (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A318972.P13797971129905665730

namespace A318972

/-- `lcm(2, n)-A004526(gcd(n+1, ∑[n]))` -/
def P13797971129905665730.Spec : Prop :=
  ∀ n, P13797971129905665730.a n = A318972 n

end A318972

/-! ## A318972.P11890804513334869815

`A181983(n)+A006368(n)`
-/

namespace A318972.P11890804513334869815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181983 n + A006368 n

end

end A318972.P11890804513334869815

namespace A318972

/-- `A181983(n)+A006368(n)` -/
def P11890804513334869815.Spec : Prop :=
  ∀ n, P11890804513334869815.a n = A318972 n

end A318972

/-! ## A318972.P15681165598588798502

`A316631(n)+A030065(n)`
-/

namespace A318972.P15681165598588798502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316631 n + A030065 n

end

end A318972.P15681165598588798502

namespace A318972

/-- `A316631(n)+A030065(n)` -/
def P15681165598588798502.Spec : Prop :=
  ∀ n, P15681165598588798502.a n = A318972 n

end A318972

/-! ## A318972.P15934480032852610506

`A317640(n)/A010685(n)`
-/

namespace A318972.P15934480032852610506
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A317640 n : ℚ) / (A010685 n : ℚ)

end

end A318972.P15934480032852610506

namespace A318972

/-- `A317640(n)/A010685(n)` -/
def P15934480032852610506.Spec : Prop :=
  ∀ n, P15934480032852610506.a n = (A318972 n : ℚ)

end A318972

/-! ## A318972.P16117880513361069359

`A317640(n)/A000034(n)²`
-/

namespace A318972.P16117880513361069359
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A317640 n : ℚ) / (A000034 n ^ 2 : ℚ)

end

end A318972.P16117880513361069359

namespace A318972

/-- `A317640(n)/A000034(n)²` -/
def P16117880513361069359.Spec : Prop :=
  ∀ n, P16117880513361069359.a n = (A318972 n : ℚ)

end A318972

/-! ## A318972.P3041824787706760221

`A014682(n)+and(1, n)*A002265(n)`
-/

namespace A318972.P3041824787706760221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 n + (Nat.land 1 n : ℤ) * A002265 n

end

end A318972.P3041824787706760221

namespace A318972

/-- `A014682(n)+and(1, n)*A002265(n)` -/
def P3041824787706760221.Spec : Prop :=
  ∀ n, P3041824787706760221.a n = A318972 n

end A318972

/-! ## A318972.P12870644376293725296

`A014682(n)+A002265(C(n, and(1, n)))`
-/

namespace A318972.P12870644376293725296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 n + A002265 (Nat.choose n (Nat.land 1 n))

end

end A318972.P12870644376293725296

namespace A318972

/-- `A014682(n)+A002265(C(n, and(1, n)))` -/
def P12870644376293725296.Spec : Prop :=
  ∀ n, P12870644376293725296.a n = A318972 n

end A318972

/-! ## A318972.P1820269874052389883

`A014682(n)+A004526(A057979(n))`
-/

namespace A318972.P1820269874052389883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 n + A004526 (A057979 n).toNat

end

end A318972.P1820269874052389883

namespace A318972

/-- `A014682(n)+A004526(A057979(n))` -/
def P1820269874052389883.Spec : Prop :=
  ∀ n, P1820269874052389883.a n = A318972 n

end A318972

/-! ## A318972.P14517867253849250710

`2*A026741(A026741(n))-A077814(n)`
-/

namespace A318972.P14517867253849250710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A026741 (A026741 n).toNat - A077814 n

end

end A318972.P14517867253849250710

namespace A318972

/-- `2*A026741(A026741(n))-A077814(n)` -/
def P14517867253849250710.Spec : Prop :=
  ∀ n, P14517867253849250710.a n = A318972 n

end A318972

/-! ## A318972.P15220135776406490649

`lcm(2, n)-A130722(n+1)`
-/

namespace A318972.P15220135776406490649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 n : ℤ) - A130722 (n + 1)

end

end A318972.P15220135776406490649

namespace A318972

/-- `lcm(2, n)-A130722(n+1)` -/
def P15220135776406490649.Spec : Prop :=
  ∀ n, P15220135776406490649.a n = A318972 n

end A318972

/-! ## A318972.P15954575434454643003

`A030065(2*n)+A030065(A077814(2*n))`
-/

namespace A318972.P15954575434454643003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030065 (2 * n) + A030065 (A077814 (2 * n)).toNat

end

end A318972.P15954575434454643003

namespace A318972

/-- `A030065(2*n)+A030065(A077814(2*n))` -/
def P15954575434454643003.Spec : Prop :=
  ∀ n, P15954575434454643003.a n = A318972 n

end A318972

/-! ## A318972.P7297641177927323374

`A214392(2*n)-A077814(A077814(2*n))`
-/

namespace A318972.P7297641177927323374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214392 (2 * n) - A077814 (A077814 (2 * n)).toNat

end

end A318972.P7297641177927323374

namespace A318972

/-- `A214392(2*n)-A077814(A077814(2*n))` -/
def P7297641177927323374.Spec : Prop :=
  ∀ n, P7297641177927323374.a n = A318972 n

end A318972

/-! ## A318972.P11810425823067891636

`A077814(2*n+1)+A001068(A077814(2*n))`
-/

namespace A318972.P11810425823067891636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077814 (2 * n + 1) + A001068 (A077814 (2 * n)).toNat

end

end A318972.P11810425823067891636

namespace A318972

/-- `A077814(2*n+1)+A001068(A077814(2*n))` -/
def P11810425823067891636.Spec : Prop :=
  ∀ n, P11810425823067891636.a n = A318972 n

end A318972

/-! ## A318972.P14587469362282822995

`A004526(n)+A004526(A006370(n)-A004526(n))`
-/

namespace A318972.P14587469362282822995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n + A004526 (A006370 n - A004526 n).toNat

end

end A318972.P14587469362282822995

namespace A318972

/-- `A004526(n)+A004526(A006370(n)-A004526(n))` -/
def P14587469362282822995.Spec : Prop :=
  ∀ n, P14587469362282822995.a n = A318972 n

end A318972

/-! ## A318972.P6182961676413204750

`A064680(n)-A103221(A057979(3*n))`
-/

namespace A318972.P6182961676413204750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064680 n - A103221 (A057979 (3 * n)).toNat

end

end A318972.P6182961676413204750

namespace A318972

/-- `A064680(n)-A103221(A057979(3*n))` -/
def P6182961676413204750.Spec : Prop :=
  ∀ n, P6182961676413204750.a n = A318972 n

end A318972

/-! ## A318972.P8490713872533643090

`A340709(3*n+1)-(2*n+1)`
-/

namespace A318972.P8490713872533643090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340709 (3 * n + 1) - (2 * n + 1 : ℤ)

end

end A318972.P8490713872533643090

namespace A318972

/-- `A340709(3*n+1)-(2*n+1)` -/
def P8490713872533643090.Spec : Prop :=
  ∀ n, P8490713872533643090.a n = A318972 n

end A318972

/-!
# A318974: Total number of valid hook configurations of permutations of [n].

The programs for A318974, there is no canonical definition to state claims against.
-/

/-! ## A318974.P14318174542831035406

`round(A020884(A000203(n!))/3)`
-/

namespace A318974.P14318174542831035406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A020884 (A000203 (Nat.factorial n)).toNat : ℚ) / 3)

end

end A318974.P14318174542831035406

/-! ## A318974.P3170868020448296390

`floor(A110654(A008486((n+1)*a(n-1)))/2)` with `a(0)=1`
-/

namespace A318974.P3170868020448296390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(A110654 (A008486 ((n + 1 : ℤ) * a (n - 1)).toNat).toNat : ℚ) / 2⌋

end

end A318974.P3170868020448296390

/-! ## A318974.P4887443957852172105

`A127083(n)+A065717(A015540(n))`
-/

namespace A318974.P4887443957852172105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127083 n + A065717 (A015540 n).toNat

end

end A318974.P4887443957852172105

/-!
# A318975: Expansion of Product_{k>=1} ((1 + x^k)/(1 - x^k))^phi(k), where phi is the Euler totient function A000010.

The programs for A318975, there is no canonical definition to state claims against.
-/

/-! ## A318975.P7102288207755630931

`A087838(A057146(n))`
-/

namespace A318975.P7102288207755630931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087838 (A057146 n).toNat

end

end A318975.P7102288207755630931

/-! ## A318975.P15490902485605369800

`A087838(A060557(n))`
-/

namespace A318975.P15490902485605369800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087838 (A060557 n).toNat

end

end A318975.P15490902485605369800

/-! ## A318975.P5561552043054947894

`A087838(A292397(n))`
-/

namespace A318975.P5561552043054947894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087838 (A292397 n).toNat

end

end A318975.P5561552043054947894

/-! ## A318975.P3785547707737931585

`A082447(comp[6*n]*A131428(n))`
-/

namespace A318975.P3785547707737931585
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082447 ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) * A131428 n).toNat

end

end A318975.P3785547707737931585

/-!
# A318976: Expansion of e.g.f. Product_{k>=1} ((1 + x^k)/(1 - x^k))^(phi(k)/k), where phi is the Euler totient function A000010.

The programs for A318976, there is no canonical definition to state claims against.
-/

/-! ## A318976.P18052320321115038942

`A269384(a(n-1)*A226896(n+1))` with `a(0)=1`
-/

namespace A318976.P18052320321115038942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A269384 (a (n - 1) * A226896 (n + 1)).toNat

end

end A318976.P18052320321115038942

/-! ## A318976.P726006363276322404

`A028391(A002720(n))+C(n, 2*floor(n/2))`
-/

namespace A318976.P726006363276322404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028391 (A002720 n).toNat + (Nat.choose n (2 * ⌊(n : ℚ) / 2⌋).toNat : ℤ)

end

end A318976.P726006363276322404

/-!
# A318977: Expansion of e.g.f. Product_{k>=1} ((1 + x^k)/(1 - x^k))^(tau(k)/k), where tau is A000005.

The programs for A318977, there is no canonical definition to state claims against.
-/

/-! ## A318977.P9358566325543240009

`A028310(A111537(n)-A003471(n))`
-/

namespace A318977.P9358566325543240009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A111537 n - A003471 n).toNat

end

end A318977.P9358566325543240009

/-! ## A318977.P9431023058213432789

`A111537(n)-A243983(A120380(n))`
-/

namespace A318977.P9431023058213432789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111537 n - A243983 (A120380 n).toNat

end

end A318977.P9431023058213432789

/-!
# A318978: Heinz numbers of integer partitions with a common divisor > 1.

The programs for A318978, there is no canonical definition to state claims against.
-/

/-! ## A318978.P15969851502528151432

`A328336(n+3)`
-/

namespace A318978.P15969851502528151432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328336 (n + 3)

end

end A318978.P15969851502528151432

/-! ## A318978.P13506727133453656612

`record[A327656(n+3)]`
-/

namespace A318978.P13506727133453656612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327656 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A318978.P13506727133453656612

/-! ## A318978.P3591778655131729588

`record[Δ[A327529(n+3)]]`
-/

namespace A318978.P3591778655131729588
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327529 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A318978.P3591778655131729588

/-! ## A318978.P10412961216450835935

`comp[C(A316437(n+1), n)]`
-/

namespace A318978.P10412961216450835935
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A316437 (n + 1)).toNat n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A318978.P10412961216450835935

/-! ## A318978.P4185834002304957357

`comp[C(A327529(n+1), n)]`
-/

namespace A318978.P4185834002304957357
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A327529 (n + 1)).toNat n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A318978.P4185834002304957357

/-! ## A318978.P10185563385726896781

`eq[0, A320439(n+1)]+1`
-/

namespace A318978.P10185563385726896781
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320439 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A318978.P10185563385726896781

/-! ## A318978.P11260909567203966515

`lt[1, A289508(n+1)]+1`
-/

namespace A318978.P11260909567203966515
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289508 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A318978.P11260909567203966515

/-! ## A318978.P12453058930368674881

`eq[1, A327512(n+2)]+2`
-/

namespace A318978.P12453058930368674881
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327512 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A318978.P12453058930368674881

/-! ## A318978.P4728936329315274097

`eq[1, A327513(n+2)]+2`
-/

namespace A318978.P4728936329315274097
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327513 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A318978.P4728936329315274097

/-!
# A318979: Number of divisors of n with relatively prime prime indices, meaning they belong to A289509.

The programs for A318979, there is no canonical definition to state claims against.
-/

/-! ## A318979.P11647057040806641407

`A000005(n+1)-A327657(n+1)`
-/

namespace A318979.P11647057040806641407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A327657 (n + 1)

end

end A318979.P11647057040806641407

/-! ## A318979.P12350925670629408876

`A327530(n+1)-1`
-/

namespace A318979.P12350925670629408876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327530 (n + 1) - 1

end

end A318979.P12350925670629408876

/-! ## A318979.P9197703479191447697

`A023444(A327530(n+1)+1)`
-/

namespace A318979.P9197703479191447697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A327530 (n + 1) + 1).toNat

end

end A318979.P9197703479191447697

/-! ## A318979.P13737976541914596948

`A046667(2*A327530(n+1))`
-/

namespace A318979.P13737976541914596948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046667 (2 * A327530 (n + 1)).toNat

end

end A318979.P13737976541914596948

/-! ## A318979.P4524649923641416611

`A334954(n+1)-(A327657(n+1)+1)`
-/

namespace A318979.P4524649923641416611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334954 (n + 1) - (A327657 (n + 1) + 1)

end

end A318979.P4524649923641416611

/-! ## A318979.P2091665768123279890

`A200748(n)%A327530(n+1)`
-/

namespace A318979.P2091665768123279890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A200748 n) (A327530 (n + 1))

end

end A318979.P2091665768123279890

/-! ## A318979.P7012618551298939470

`A351831(A327530(n+1))`
-/

namespace A318979.P7012618551298939470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351831 (A327530 (n + 1)).toNat

end

end A318979.P7012618551298939470

/-! ## A318979.P13339190153987509471

`A117010(n+1)%A327530(n+1)`
-/

namespace A318979.P13339190153987509471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A117010 (n + 1)) (A327530 (n + 1))

end

end A318979.P13339190153987509471

/-! ## A318979.P16983068081463866594

`A070198(n)%A327530(n+1)`
-/

namespace A318979.P16983068081463866594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070198 n) (A327530 (n + 1))

end

end A318979.P16983068081463866594

/-! ## A318979.P17346483478063830831

`A079782(n+1)%A327530(n+1)`
-/

namespace A318979.P17346483478063830831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079782 (n + 1)) (A327530 (n + 1))

end

end A318979.P17346483478063830831

/-! ## A318979.P15908204657066807856

`A083685(n+1)%A327530(n+1)`
-/

namespace A318979.P15908204657066807856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083685 (n + 1)) (A327530 (n + 1))

end

end A318979.P15908204657066807856

/-! ## A318979.P12661037721219930281

`A121934(n+1)%A327530(n+1)`
-/

namespace A318979.P12661037721219930281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A121934 (n + 1)) (A327530 (n + 1))

end

end A318979.P12661037721219930281

/-! ## A318979.P11120834920448857434

`A030494(n+1)%A327530(n+1)`
-/

namespace A318979.P11120834920448857434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030494 (n + 1)) (A327530 (n + 1))

end

end A318979.P11120834920448857434

/-! ## A318979.P981058959315102335

`A072828(n+1)%A327530(n+1)`
-/

namespace A318979.P981058959315102335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072828 (n + 1)) (A327530 (n + 1))

end

end A318979.P981058959315102335

/-! ## A318979.P11139525387623377151

`A198277(n)%A327530(n+1)`
-/

namespace A318979.P11139525387623377151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A198277 n) (A327530 (n + 1))

end

end A318979.P11139525387623377151

/-!
# A318980: Number of integer partitions of n whose parts plus 1 are relatively prime.

The programs for A318980, there is no canonical definition to state claims against.
-/

/-! ## A318980.P2465036415056446412

`A102800(A325343(n+3))-A029020(n+1)`
-/

namespace A318980.P2465036415056446412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102800 (A325343 (n + 3)).toNat - A029020 (n + 1)

end

end A318980.P2465036415056446412

/-! ## A318980.P3328811893254015069

`A347697(or(n, A148035(n)))`
-/

namespace A318980.P3328811893254015069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347697 (Int.lor (n : ℤ) (A148035 n)).toNat

end

end A318980.P3328811893254015069

/-! ## A318980.P7466477584333503065

`A051056(n)+A047967(A351870(n))`
-/

namespace A318980.P7466477584333503065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051056 n + A047967 (A351870 n).toNat

end

end A318980.P7466477584333503065

/-! ## A318980.P8977538415651326247

`A349801(n)+A008612(A319645(n))`
-/

namespace A318980.P8977538415651326247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349801 n + A008612 (A319645 n).toNat

end

end A318980.P8977538415651326247

/-!
# A318981: Numbers whose prime indices plus 1 are relatively prime.

The programs for A318981, there is no canonical definition to state claims against.
-/

/-! ## A318981.P5967047405695305338

`lt[n, A327529(A003961(n+1))]+1`
-/

namespace A318981.P5967047405695305338
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327529 (A003961 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A318981.P5967047405695305338

/-! ## A318981.P14008374823545838661

`record[(n+1)%A316437(A045965(n+1))]`
-/

namespace A318981.P14008374823545838661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A316437 (A045965 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A318981.P14008374823545838661

/-! ## A318981.P625106870599229200

`lt[A289508(A243501(n+1)-1), 2]+1`
-/

namespace A318981.P625106870599229200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289508 (A243501 (n + 1) - 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A318981.P625106870599229200

/-! ## A318981.P11032517266117579782

`lt[0, A320439(abs(1-A243501(n+1)))]+1`
-/

namespace A318981.P11032517266117579782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320439 |1 - A243501 (n + 1)|.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A318981.P11032517266117579782

/-! ## A318981.P11695287023340334912

`record[A064989(A327529(A003961(n+1)))]`
-/

namespace A318981.P11695287023340334912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A327529 (A003961 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A318981.P11695287023340334912

/-!
# A318982: a(n) = Sum_{d|n} Kronecker(-67, d).

The programs for A318982, there is no canonical definition to state claims against.
-/

/-! ## A318982.P17127656326874694039

`A318984(n+1)/2`
-/

namespace A318982.P17127656326874694039
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A318984 (n + 1) : ℚ) / 2

end

end A318982.P17127656326874694039

/-! ## A318982.P6691194813174011451

`∑{d}[n+1, A011596(#)]`
-/

namespace A318982.P6691194813174011451
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A011596 d

end

end A318982.P6691194813174011451

/-! ## A318982.P2369944452157899920

`A025480(A318984(n+1))`
-/

namespace A318982.P2369944452157899920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A318984 (n + 1)).toNat

end

end A318982.P2369944452157899920

/-! ## A318982.P9355976423713639367

`Δ[∑[A318984(n)]/2]`
-/

namespace A318982.P9355976423713639367
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318984 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A318982.P9355976423713639367

/-! ## A318982.P8610092630022344624

`A001221(A318984(n+1)!)`
-/

namespace A318982.P8610092630022344624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Nat.factorial (A318984 (n + 1)).toNat)

end

end A318982.P8610092630022344624

/-! ## A318982.P15379144459641653470

`A125005(3*(A318984(n+1)²+2))`
-/

namespace A318982.P15379144459641653470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125005 (3 * (A318984 (n + 1) ^ 2 + 2)).toNat

end

end A318982.P15379144459641653470

/-!
# A318983: a(n) = Sum_{d|n} Kronecker(-163, d).

The programs for A318983, there is no canonical definition to state claims against.
-/

/-! ## A318983.P12268979529397343983

`A318985(n+1)/2`
-/

namespace A318983.P12268979529397343983
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A318985 (n + 1) : ℚ) / 2

end

end A318983.P12268979529397343983

/-! ## A318983.P15957112470622092216

`∑{d}[n+1, A011615(#)]`
-/

namespace A318983.P15957112470622092216
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A011615 d

end

end A318983.P15957112470622092216

/-! ## A318983.P4277050046875044793

`A004526(A318985(n)+Δ[A318985(n)])`
-/

namespace A318983.P4277050046875044793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318985 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A318985 n + (f1 (n + 1) - f1 n)).toNat

end

end A318983.P4277050046875044793

/-! ## A318983.P11867666120813910934

`Δ[∑[A318985(n)]/2]`
-/

namespace A318983.P11867666120813910934
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318985 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A318983.P11867666120813910934

/-! ## A318983.P6892216878783346167

`Δ[A004526(∑[A318985(n)])]`
-/

namespace A318983.P6892216878783346167
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318985 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A318983.P6892216878783346167

/-! ## A318983.P435131883188439234

`Δ[A008619(∑[A318985(n)])]`
-/

namespace A318983.P435131883188439234
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318985 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A318983.P435131883188439234

/-! ## A318983.P8689050547494306442

`Δ[A028242(∑[A318985(n)])]`
-/

namespace A318983.P8689050547494306442
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318985 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A318983.P8689050547494306442

/-! ## A318983.P16268150659872531335

`(4*A318985(4*(n+1)))%7`
-/

namespace A318983.P16268150659872531335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (4 * A318985 (4 * (n + 1))) 7

end

end A318983.P16268150659872531335

/-!
# A318984: Theta series of quadratic form x^2 + x*y + 17*y^2.

The programs for A318984, there is no canonical definition to state claims against.
-/

/-! ## A318984.P2935407364492367723

`A036453(n+1)*A318982(A008574(n))`
-/

namespace A318984.P2935407364492367723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (n + 1) * A318982 (A008574 n).toNat

end

end A318984.P2935407364492367723

/-! ## A318984.P11387359398555663811

`(2-A028310(n)+n)*A318982(A008574(n))`
-/

namespace A318984.P11387359398555663811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A028310 n + (n : ℤ)) * A318982 (A008574 n).toNat

end

end A318984.P11387359398555663811

/-! ## A318984.P7632430690731667402

`A014963(A001316(n))*A318982(A008574(n))`
-/

namespace A318984.P7632430690731667402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A001316 n).toNat * A318982 (A008574 n).toNat

end

end A318984.P7632430690731667402

/-! ## A318984.P110682826790451157

`A020639(A000118(n))*A318982(A008574(n))`
-/

namespace A318984.P110682826790451157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A000118 n).toNat * A318982 (A008574 n).toNat

end

end A318984.P110682826790451157

/-! ## A318984.P7496535424876305614

`A000005(A008578(n+1))*A318982(A008574(n))`
-/

namespace A318984.P7496535424876305614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A008578 (n + 1)).toNat * A318982 (A008574 n).toNat

end

end A318984.P7496535424876305614

/-! ## A318984.P12406798963717192843

`A014963(A037445(n+1))*A318982(A008574(n))`
-/

namespace A318984.P12406798963717192843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A037445 (n + 1)).toNat * A318982 (A008574 n).toNat

end

end A318984.P12406798963717192843

/-! ## A318984.P6664130199084926709

`A006530(A137688(n))*A318982(A008574(n))`
-/

namespace A318984.P6664130199084926709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A137688 n).toNat * A318982 (A008574 n).toNat

end

end A318984.P6664130199084926709

/-! ## A318984.P2341843653824647819

`A014963(A102376(n))*A318982(A008574(n))`
-/

namespace A318984.P2341843653824647819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A102376 n).toNat * A318982 (A008574 n).toNat

end

end A318984.P2341843653824647819

/-! ## A318984.P17490651061389417153

`A275437(n²)*A318982(A008574(n))`
-/

namespace A318984.P17490651061389417153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275437 (n ^ 2) * A318982 (A008574 n).toNat

end

end A318984.P17490651061389417153

/-!
# A318985: Theta series of quadratic form x^2 + x*y + 41*y^2.

The programs for A318985, there is no canonical definition to state claims against.
-/

/-! ## A318985.P18002628357833741907

`A020639(A008574(n))*A318983(A028310(n))`
-/

namespace A318985.P18002628357833741907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A008574 n).toNat * A318983 (A028310 n).toNat

end

end A318985.P18002628357833741907

/-! ## A318985.P15517002641617077599

`(1-A057428(n))*A318983(A008574(n))`
-/

namespace A318985.P15517002641617077599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A057428 n) * A318983 (A008574 n).toNat

end

end A318985.P15517002641617077599

/-! ## A318985.P13229112246579613992

`A040001(2*n)*A318983(A008574(n))`
-/

namespace A318985.P13229112246579613992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (2 * n) * A318983 (A008574 n).toNat

end

end A318985.P13229112246579613992

/-! ## A318985.P17239377976542364212

`A000034(A156208(n+1))*A318983(A008574(n))`
-/

namespace A318985.P17239377976542364212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A156208 (n + 1)).toNat * A318983 (A008574 n).toNat

end

end A318985.P17239377976542364212

/-! ## A318985.P17434354165533658097

`A020639(A090801(n+1))*A318983(A008574(n))`
-/

namespace A318985.P17434354165533658097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A090801 (n + 1)).toNat * A318983 (A008574 n).toNat

end

end A318985.P17434354165533658097

/-! ## A318985.P17727025023877069868

`A014963(A102376(n))*A318983(A008574(n))`
-/

namespace A318985.P17727025023877069868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A102376 n).toNat * A318983 (A008574 n).toNat

end

end A318985.P17727025023877069868

/-!
# A318986: Number of loops of order n that are not groups.

The programs for A318986, there is no canonical definition to state claims against.
-/

/-! ## A318986.P15016164930978336334

`A057771(n)-A000001(n)`
-/

namespace A318986.P15016164930978336334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057771 n - A000001 n

end

end A318986.P15016164930978336334

/-! ## A318986.P3105987815203214350

`A057771(n)-sqrt(A297420(n))`
-/

namespace A318986.P3105987815203214350
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A057771 n : ℝ) - Real.sqrt (A297420 n : ℝ)

end

end A318986.P3105987815203214350

/-! ## A318986.P13880867588591834859

`A057771(n)-A003984(2*A297420(n))`
-/

namespace A318986.P13880867588591834859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057771 n - A003984 (2 * A297420 n).toNat

end

end A318986.P13880867588591834859

/-! ## A318986.P8442379282500556165

`A057771(n)-A135898(xor(3, A297420(n)))`
-/

namespace A318986.P8442379282500556165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057771 n - A135898 (Int.xor 3 (A297420 n)).toNat

end

end A318986.P8442379282500556165

/-! ## A318986.P12560935133934130478

`A057771(n)-A000196(A000041(C(2, n+2))*A297420(n))`
-/

namespace A318986.P12560935133934130478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057771 n - A000196 (A000041 (Nat.choose 2 (n + 2)) * A297420 n).toNat

end

end A318986.P12560935133934130478

/-!
# A318987: Number of semigroups of order n without identity.

The programs for A318987, there is no canonical definition to state claims against.
-/

/-! ## A318987.P16743195607817509601

`A027851(n)-A058129(n)`
-/

namespace A318987.P16743195607817509601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027851 n - A058129 n

end

end A318987.P16743195607817509601

/-! ## A318987.P4829104207786002270

`A027851(n)-(A320420(n)+A000001(n))`
-/

namespace A318987.P4829104207786002270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027851 n - (A320420 n + A000001 n)

end

end A318987.P4829104207786002270

/-! ## A318987.P1160871998783761430

`A027851(n)-(A320420(n)+sqrt(A297420(n)))`
-/

namespace A318987.P1160871998783761430
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A027851 n : ℝ) - ((A320420 n : ℝ) + Real.sqrt (A297420 n : ℝ))

end

end A318987.P1160871998783761430

/-! ## A318987.P6784211110521821789

`2*A001423(n)-A029851(n)-A058129(n)`
-/

namespace A318987.P6784211110521821789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001423 n - A029851 n - A058129 n

end

end A318987.P6784211110521821789

/-! ## A318987.P17030076321643118352

`A027851(n)-(2*A058133(n)-A058132(n))`
-/

namespace A318987.P17030076321643118352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027851 n - (2 * A058133 n - A058132 n)

end

end A318987.P17030076321643118352

/-!
# A318988: Totients whose inverses contain two or more consecutive tetrahedral pyramidal numbers.

The programs for A318988, there is no canonical definition to state claims against.
-/

/-! ## A318988.P16309239676475514428

`A001615(A077238(2*n+3)+A001489(n+1))`
-/

namespace A318988.P16309239676475514428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001615 (A077238 (2 * n + 3) + A001489 (n + 1)).toNat

end

end A318988.P16309239676475514428

/-!
# A318989: Limiting value of A318970(k) mod n as k grows.

The programs for A318989, there is no canonical definition to state claims against.
-/

/-! ## A318989.P11825073742432896706

`A016945(A199348(n+1))%(n+1)`
-/

namespace A318989.P11825073742432896706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016945 (A199348 (n + 1)).toNat) (n + 1 : ℤ)

end

end A318989.P11825073742432896706

/-! ## A318989.P17700826559167327804

`(A224804(A287215(n))+5)%(n+1)`
-/

namespace A318989.P17700826559167327804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A224804 (A287215 n).toNat + 5) (n + 1 : ℤ)

end

end A318989.P17700826559167327804

/-!
# A318990: Numbers of the form prime(x) * prime(y) where x divides y.

The programs for A318990, there is no canonical definition to state claims against.
-/

/-! ## A318990.P14816773679327280938

`eq[A064911(n+1), A074829(A316556(n+1)+1)]+1`
-/

namespace A318990.P14816773679327280938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064911 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074829 (A316556 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A318990.P14816773679327280938

/-! ## A318990.P11415575866162049719

`eq[A000005(A316556(n+2)+1), A033273(n+2)]+2`
-/

namespace A318990.P11415575866162049719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A316556 (n + 2) + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033273 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A318990.P11415575866162049719

/-! ## A318990.P12092412992548105211

`filter[A318991(n+1), A064911(#)]`
-/

namespace A318990.P12092412992548105211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318991 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A318990.P12092412992548105211

/-! ## A318990.P1418464680636137139

`∩[A001358(n+1), A318991(n+1)]`
-/

namespace A318990.P1418464680636137139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318991 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A318990.P1418464680636137139

/-! ## A318990.P12224155129872733561

`∩[A186621(n+1)+1, A318991(n+1)]`
-/

namespace A318990.P12224155129872733561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186621 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318991 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A318990.P12224155129872733561

/-! ## A318990.P4055016798642385548

`∩[A088707(n+1)-1, A318991(n+1)]`
-/

namespace A318990.P4055016798642385548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088707 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318991 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A318990.P4055016798642385548

/-! ## A318990.P5000988873126093913

`∩[A000040(n+1)-A065870(n+1), A318991(n+1)]`
-/

namespace A318990.P5000988873126093913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A065870 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318991 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A318990.P5000988873126093913

/-! ## A318990.P839959138016868514

`eq[A316556(A233583(n+1))+1, A074206(n)]`
-/

namespace A318990.P839959138016868514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316556 (A233583 (n + 1)).toNat + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A318990.P839959138016868514

/-! ## A318990.P918053269758430556

`eq[A316555(A233583(n+1))+1, A104725(n)]`
-/

namespace A318990.P918053269758430556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316555 (A233583 (n + 1)).toNat + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104725 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A318990.P918053269758430556

/-!
# A318991: Numbers whose consecutive prime indices are divisible. Heinz numbers of integer partitions in which each part is divisible by the next.

The programs for A318991, there is no canonical definition to state claims against.
-/

/-! ## A318991.P11461063335155270035

`eq[A001221(n+1), A327403(n+1)]+1`
-/

namespace A318991.P11461063335155270035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327403 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A318991.P11461063335155270035

/-! ## A318991.P6257391190588692098

`eq[char[A318992(n+1)], A000007(n)]`
-/

namespace A318991.P6257391190588692098
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318992 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A318991.P6257391190588692098

/-! ## A318991.P3733894747232459558

`eq[A061395(2*(n+1)), A290103((n+1)²)]+1`
-/

namespace A318991.P3733894747232459558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290103 ((n + 1) ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A318991.P3733894747232459558

/-! ## A318991.P16979594258547134865

`eq[2, A001316(A327395(n+1))]+1`
-/

namespace A318991.P16979594258547134865
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (A327395 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A318991.P16979594258547134865

/-! ## A318991.P7100846524363965961

`record[lcm(A006519(n+1), A327076(n+1))]`
-/

namespace A318991.P7100846524363965961
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A006519 (n + 1)) (A327076 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A318991.P7100846524363965961

/-!
# A318992: Numbers whose consecutive prime indices are not all divisible.

The programs for A318992, there is no canonical definition to state claims against.
-/

/-! ## A318992.P12505070417081517079

`comp[A318991(n+1)-1]+1`
-/

namespace A318992.P12505070417081517079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318991 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A318992.P12505070417081517079

/-! ## A318992.P16349152407408942232

`comp[∪[A023086(n+1), A318991(n+1)]]`
-/

namespace A318992.P16349152407408942232
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023086 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318991 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A318992.P16349152407408942232

/-! ## A318992.P579771966296393707

`A020725(comp[A318991(n+1)-1])`
-/

namespace A318992.P579771966296393707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318991 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A318992.P579771966296393707

/-! ## A318992.P17337217423389590430

`∪[A343337(n+2), A343343(n+2)]`
-/

namespace A318992.P17337217423389590430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343337 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343343 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A318992.P17337217423389590430

/-! ## A318992.P14173160927276335138

`A343343(n+2)`
-/

namespace A318992.P14173160927276335138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343343 (n + 2)

end

end A318992.P14173160927276335138

/-! ## A318992.P13230589300649937574

`record[A343343(A001281(A004277(n)))]`
-/

namespace A318992.P13230589300649937574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343343 (A001281 (A004277 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A318992.P13230589300649937574

/-! ## A318992.P14882941302054133981

`record[A343343(A028920(A005408(n)))]`
-/

namespace A318992.P14882941302054133981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343343 (A028920 (A005408 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A318992.P14882941302054133981

/-! ## A318992.P9636599782003603248

`record[A343343(A008616(A063660(n)))]`
-/

namespace A318992.P9636599782003603248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343343 (A008616 (A063660 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A318992.P9636599782003603248

/-! ## A318992.P8410694605137455269

`record[A343343(A080513(A008611(n)))]`
-/

namespace A318992.P8410694605137455269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343343 (A080513 (A008611 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A318992.P8410694605137455269

/-! ## A318992.P6153769445125285436

`record[A343343(A080513(A008624(n)))]`
-/

namespace A318992.P6153769445125285436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343343 (A080513 (A008624 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A318992.P6153769445125285436

/-!
# A318993: Matula-Goebel number of the planted achiral tree determined by the n-th number whose consecutive prime indices are divisible.

The programs for A318993, there is no canonical definition to state claims against.
-/

/-! ## A318993.P9882426527861325837

`or(A010060(A260006(n)), A153212(n+1))`
-/

namespace A318993.P9882426527861325837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010060 (A260006 n).toNat) (A153212 (n + 1))

end

end A318993.P9882426527861325837

/-! ## A318993.P11900148597679714057

`A297155(A067911(n+1))+A153212(n+1)`
-/

namespace A318993.P11900148597679714057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297155 (A067911 (n + 1)).toNat + A153212 (n + 1)

end

end A318993.P11900148597679714057

/-! ## A318993.P11041551095927872581

`A276794(A185505(n+1))+A153212(n+1)`
-/

namespace A318993.P11041551095927872581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276794 (A185505 (n + 1)).toNat + A153212 (n + 1)

end

end A318993.P11041551095927872581

/-! ## A318993.P12395992851732985933

`A267111(A153212(n+1)^A267267(n+1))`
-/

namespace A318993.P12395992851732985933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267111 (SequenceMachineLib.roundAway ((A153212 (n + 1) : ℚ) ^ (A267267 (n + 1) : ℤ))).toNat

end

end A318993.P12395992851732985933

/-!
# A318994: Totally additive with a(prime(n)) = n + 1.

The programs for A318994, the canonical program `A318994.P1390635731942853672` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A318994 has offset 1).

The definition of A318994 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A318994.P1390635731942853672

`A056239(n+1)+Δ[A022559(n)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A318994

/-- `A056239(n+1)+Δ[A022559(n)]` -/
def P1390635731942853672.Spec : Prop :=
  ∀ n, P1390635731942853672.a n = A318994 (n + 1)

theorem P1390635731942853672.correct : P1390635731942853672.Spec := by
  intro n
  simp only [A318994, Nat.add_sub_cancel]

end A318994

/-! ## A318994.P7060396954279806719

`A056239(n+1)+A001222(n+1)`
-/

namespace A318994.P7060396954279806719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (n + 1) + A001222 (n + 1)

end

end A318994.P7060396954279806719

namespace A318994

/-- `A056239(n+1)+A001222(n+1)` -/
def P7060396954279806719.Spec : Prop :=
  ∀ n, P7060396954279806719.a n = A318994 (n + 1)

end A318994

/-! ## A318994.P2227061062927590699

`A318995(n+1)+A255201(n+1)`
-/

namespace A318994.P2227061062927590699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318995 (n + 1) + A255201 (n + 1)

end

end A318994.P2227061062927590699

namespace A318994

/-- `A318995(n+1)+A255201(n+1)` -/
def P2227061062927590699.Spec : Prop :=
  ∀ n, P2227061062927590699.a n = A318994 (n + 1)

end A318994

/-! ## A318994.P16379152388282385190

`A064800(n+1)-A178503(n+1)`
-/

namespace A318994.P16379152388282385190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064800 (n + 1) - A178503 (n + 1)

end

end A318994.P16379152388282385190

namespace A318994

/-- `A064800(n+1)-A178503(n+1)` -/
def P16379152388282385190.Spec : Prop :=
  ∀ n, P16379152388282385190.a n = A318994 (n + 1)

end A318994

/-! ## A318994.P11417061009911899772

`A380345(n+1)-A069345(n+1)`
-/

namespace A318994.P11417061009911899772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380345 (n + 1) - A069345 (n + 1)

end

end A318994.P11417061009911899772

namespace A318994

/-- `A380345(n+1)-A069345(n+1)` -/
def P11417061009911899772.Spec : Prop :=
  ∀ n, P11417061009911899772.a n = A318994 (n + 1)

end A318994

/-! ## A318994.P15888727170101266878

`A056239(n+1)+log2(A061142(n+1))`
-/

namespace A318994.P15888727170101266878
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A056239 (n + 1) : ℝ) + Real.logb 2 (A061142 (n + 1) : ℝ)

end

end A318994.P15888727170101266878

namespace A318994

/-- `A056239(n+1)+log2(A061142(n+1))` -/
def P15888727170101266878.Spec : Prop :=
  ∀ n, P15888727170101266878.a n = (A318994 (n + 1) : ℝ)

end A318994

/-! ## A318994.P17089021255813587868

`A318995(n+1)+Δ[2*A022559(n)]`
-/

namespace A318994.P17089021255813587868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A022559 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318995 (n + 1) + (f1 (n + 1) - f1 n)

end

end A318994.P17089021255813587868

namespace A318994

/-- `A318995(n+1)+Δ[2*A022559(n)]` -/
def P17089021255813587868.Spec : Prop :=
  ∀ n, P17089021255813587868.a n = A318994 (n + 1)

end A318994

/-! ## A318994.P16456270503785347113

`A056239(n+1)+A073093(n+1)-1`
-/

namespace A318994.P16456270503785347113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (n + 1) + (A073093 (n + 1) - 1)

end

end A318994.P16456270503785347113

namespace A318994

/-- `A056239(n+1)+A073093(n+1)-1` -/
def P16456270503785347113.Spec : Prop :=
  ∀ n, P16456270503785347113.a n = A318994 (n + 1)

end A318994

/-! ## A318994.P8622495359740264579

`A318995(n+1)+2*A001222(n+1)`
-/

namespace A318994.P8622495359740264579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318995 (n + 1) + 2 * A001222 (n + 1)

end

end A318994.P8622495359740264579

namespace A318994

/-- `A318995(n+1)+2*A001222(n+1)` -/
def P8622495359740264579.Spec : Prop :=
  ∀ n, P8622495359740264579.a n = A318994 (n + 1)

end A318994

/-! ## A318994.P2645240182120144542

`A056239(n+1)+A255201(n+1)/2`
-/

namespace A318994.P2645240182120144542
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056239 (n + 1) : ℚ) + (A255201 (n + 1) : ℚ) / 2

end

end A318994.P2645240182120144542

namespace A318994

/-- `A056239(n+1)+A255201(n+1)/2` -/
def P2645240182120144542.Spec : Prop :=
  ∀ n, P2645240182120144542.a n = (A318994 (n + 1) : ℚ)

end A318994

/-! ## A318994.P8847023063599165098

`2*A056239(n+1)-A318995(n+1)`
-/

namespace A318994.P8847023063599165098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A056239 (n + 1) - A318995 (n + 1)

end

end A318994.P8847023063599165098

namespace A318994

/-- `2*A056239(n+1)-A318995(n+1)` -/
def P8847023063599165098.Spec : Prop :=
  ∀ n, P8847023063599165098.a n = A318994 (n + 1)

end A318994

/-! ## A318994.P10765648206356605046

`A056239(n+1)+val(A165825(n+1), 4)`
-/

namespace A318994.P10765648206356605046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (n + 1) + (SequenceMachineLib.valuation (A165825 (n + 1)).toNat 4 : ℤ)

end

end A318994.P10765648206356605046

namespace A318994

/-- `A056239(n+1)+val(A165825(n+1), 4)` -/
def P10765648206356605046.Spec : Prop :=
  ∀ n, P10765648206356605046.a n = A318994 (n + 1)

end A318994

/-! ## A318994.P13925125000126867001

`A318995(n+1)+log2(A061142(n+1)²)`
-/

namespace A318994.P13925125000126867001
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A318995 (n + 1) : ℝ) + Real.logb 2 (A061142 (n + 1) ^ 2 : ℝ)

end

end A318994.P13925125000126867001

namespace A318994

/-- `A318995(n+1)+log2(A061142(n+1)²)` -/
def P13925125000126867001.Spec : Prop :=
  ∀ n, P13925125000126867001.a n = (A318994 (n + 1) : ℝ)

end A318994

/-! ## A318994.P13119187254126896920

`A001222(2*(n+1))+A316436(2*(n+1))-2`
-/

namespace A318994.P13119187254126896920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (2 * (n + 1)) + (A316436 (2 * (n + 1)) - 2)

end

end A318994.P13119187254126896920

namespace A318994

/-- `A001222(2*(n+1))+A316436(2*(n+1))-2` -/
def P13119187254126896920.Spec : Prop :=
  ∀ n, P13119187254126896920.a n = A318994 (n + 1)

end A318994

/-! ## A318994.P4318141129703350647

`A056239(n+1)+A056239(A105560(n+1))`
-/

namespace A318994.P4318141129703350647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (n + 1) + A056239 (A105560 (n + 1)).toNat

end

end A318994.P4318141129703350647

namespace A318994

/-- `A056239(n+1)+A056239(A105560(n+1))` -/
def P4318141129703350647.Spec : Prop :=
  ∀ n, P4318141129703350647.a n = A318994 (n + 1)

end A318994

/-! ## A318994.P6303619477019516444

`A056239(n+1)+A056239(A181819(n+1))`
-/

namespace A318994.P6303619477019516444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (n + 1) + A056239 (A181819 (n + 1)).toNat

end

end A318994.P6303619477019516444

namespace A318994

/-- `A056239(n+1)+A056239(A181819(n+1))` -/
def P6303619477019516444.Spec : Prop :=
  ∀ n, P6303619477019516444.a n = A318994 (n + 1)

end A318994

/-! ## A318994.P4741357587719301071

`A056239(n+1)+A056239(A238745(n+1))`
-/

namespace A318994.P4741357587719301071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (n + 1) + A056239 (A238745 (n + 1)).toNat

end

end A318994.P4741357587719301071

namespace A318994

/-- `A056239(n+1)+A056239(A238745(n+1))` -/
def P4741357587719301071.Spec : Prop :=
  ∀ n, P4741357587719301071.a n = A318994 (n + 1)

end A318994

/-! ## A318994.P7032464249738911909

`A056239(n+1)+A000005(A068794(n+1))-1`
-/

namespace A318994.P7032464249738911909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (n + 1) + (A000005 (A068794 (n + 1)).toNat - 1)

end

end A318994.P7032464249738911909

namespace A318994

/-- `A056239(n+1)+A000005(A068794(n+1))-1` -/
def P7032464249738911909.Spec : Prop :=
  ∀ n, P7032464249738911909.a n = A318994 (n + 1)

end A318994

/-! ## A318994.P13985577445240812596

`2*A056239(n+1)-A056239(A064989(n+1))`
-/

namespace A318994.P13985577445240812596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A056239 (n + 1) - A056239 (A064989 (n + 1)).toNat

end

end A318994.P13985577445240812596

namespace A318994

/-- `2*A056239(n+1)-A056239(A064989(n+1))` -/
def P13985577445240812596.Spec : Prop :=
  ∀ n, P13985577445240812596.a n = A318994 (n + 1)

end A318994

/-! ## A318994.P17057609717842468201

`A022559(n+1)+A056239(n+1)-A022559(n)`
-/

namespace A318994.P17057609717842468201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 (n + 1) + (A056239 (n + 1) - A022559 n)

end

end A318994.P17057609717842468201

namespace A318994

/-- `A022559(n+1)+A056239(n+1)-A022559(n)` -/
def P17057609717842468201.Spec : Prop :=
  ∀ n, P17057609717842468201.a n = A318994 (n + 1)

theorem P17057609717842468201.correct : P17057609717842468201.Spec := by
  intro n
  simp only [A318994, Nat.add_sub_cancel, A318994.P17057609717842468201.a, A318994.P1390635731942853672.f1, A318994.P1390635731942853672.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A318994

/-!
# A318995: Totally additive with a(prime(n)) = n - 1.

The programs for A318995, the canonical program `A318995.P1948814167447618937` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A318995 has offset 1).

The definition of A318995 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A318995.P16362577245677106084

`A056239(A064989(n+1))`
-/

namespace A318995.P16362577245677106084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A064989 (n + 1)).toNat

end

end A318995.P16362577245677106084

namespace A318995

/-- `A056239(A064989(n+1))` -/
def P16362577245677106084.Spec : Prop :=
  ∀ n, P16362577245677106084.a n = A318995 (n + 1)

end A318995

/-! ## A318995.P7097215565096090256

`A056239(abs(A290099(n+1)))`
-/

namespace A318995.P7097215565096090256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 |A290099 (n + 1)|.toNat

end

end A318995.P7097215565096090256

namespace A318995

/-- `A056239(abs(A290099(n+1)))` -/
def P7097215565096090256.Spec : Prop :=
  ∀ n, P7097215565096090256.a n = A318995 (n + 1)

end A318995

/-! ## A318995.P1948814167447618937

`A056239(n+1)-Δ[A022559(n)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A318995

/-- `A056239(n+1)-Δ[A022559(n)]` -/
def P1948814167447618937.Spec : Prop :=
  ∀ n, P1948814167447618937.a n = A318995 (n + 1)

theorem P1948814167447618937.correct : P1948814167447618937.Spec := by
  intro n
  simp only [A318995, Nat.add_sub_cancel]

end A318995

/-! ## A318995.P15856923228862363698

`A325166(n+1)+A079067(n+1)`
-/

namespace A318995.P15856923228862363698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325166 (n + 1) + A079067 (n + 1)

end

end A318995.P15856923228862363698

namespace A318995

/-- `A325166(n+1)+A079067(n+1)` -/
def P15856923228862363698.Spec : Prop :=
  ∀ n, P15856923228862363698.a n = A318995 (n + 1)

end A318995

/-! ## A318995.P16472139777090922881

`A325135(n+1)+A252735(n+1)`
-/

namespace A318995.P16472139777090922881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325135 (n + 1) + A252735 (n + 1)

end

end A318995.P16472139777090922881

namespace A318995

/-- `A325135(n+1)+A252735(n+1)` -/
def P16472139777090922881.Spec : Prop :=
  ∀ n, P16472139777090922881.a n = A318995 (n + 1)

end A318995

/-! ## A318995.P9361679810281097241

`A339893(n+1)+A339823(n+1)`
-/

namespace A318995.P9361679810281097241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339893 (n + 1) + A339823 (n + 1)

end

end A318995.P9361679810281097241

namespace A318995

/-- `A339893(n+1)+A339823(n+1)` -/
def P9361679810281097241.Spec : Prop :=
  ∀ n, P9361679810281097241.a n = A318995 (n + 1)

end A318995

/-! ## A318995.P7605653163161059055

`A056239(n+1)-A001222(n+1)`
-/

namespace A318995.P7605653163161059055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (n + 1) - A001222 (n + 1)

end

end A318995.P7605653163161059055

namespace A318995

/-- `A056239(n+1)-A001222(n+1)` -/
def P7605653163161059055.Spec : Prop :=
  ∀ n, P7605653163161059055.a n = A318995 (n + 1)

end A318995

/-! ## A318995.P4690583254291278174

`A069345(n+1)-A178503(n+1)`
-/

namespace A318995.P4690583254291278174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069345 (n + 1) - A178503 (n + 1)

end

end A318995.P4690583254291278174

namespace A318995

/-- `A069345(n+1)-A178503(n+1)` -/
def P4690583254291278174.Spec : Prop :=
  ∀ n, P4690583254291278174.a n = A318995 (n + 1)

end A318995

/-! ## A318995.P2440936705682484140

`A001222(n+1)-A343938(n+1)`
-/

namespace A318995.P2440936705682484140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) - A343938 (n + 1)

end

end A318995.P2440936705682484140

namespace A318995

/-- `A001222(n+1)-A343938(n+1)` -/
def P2440936705682484140.Spec : Prop :=
  ∀ n, P2440936705682484140.a n = A318995 (n + 1)

end A318995

/-! ## A318995.P11235457122278298742

`A059975(n+1)-A331415(n+1)`
-/

namespace A318995.P11235457122278298742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059975 (n + 1) - A331415 (n + 1)

end

end A318995.P11235457122278298742

namespace A318995

/-- `A059975(n+1)-A331415(n+1)` -/
def P11235457122278298742.Spec : Prop :=
  ∀ n, P11235457122278298742.a n = A318995 (n + 1)

end A318995

/-! ## A318995.P1507669883124701065

`A081707(n+1)-A325794(n+1)`
-/

namespace A318995.P1507669883124701065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081707 (n + 1) - A325794 (n + 1)

end

end A318995.P1507669883124701065

namespace A318995

/-- `A081707(n+1)-A325794(n+1)` -/
def P1507669883124701065.Spec : Prop :=
  ∀ n, P1507669883124701065.a n = A318995 (n + 1)

end A318995

/-! ## A318995.P16489401064240589032

`A380345(n+1)-A064800(n+1)`
-/

namespace A318995.P16489401064240589032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380345 (n + 1) - A064800 (n + 1)

end

end A318995.P16489401064240589032

namespace A318995

/-- `A380345(n+1)-A064800(n+1)` -/
def P16489401064240589032.Spec : Prop :=
  ∀ n, P16489401064240589032.a n = A318995 (n + 1)

end A318995

/-! ## A318995.P10761817485050110927

`A318994(n+1)-A255201(n+1)`
-/

namespace A318995.P10761817485050110927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318994 (n + 1) - A255201 (n + 1)

end

end A318995.P10761817485050110927

namespace A318995

/-- `A318994(n+1)-A255201(n+1)` -/
def P10761817485050110927.Spec : Prop :=
  ∀ n, P10761817485050110927.a n = A318995 (n + 1)

end A318995

/-! ## A318995.P8961074478601981553

`A056239(n+1)-log2(A061142(n+1))`
-/

namespace A318995.P8961074478601981553
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A056239 (n + 1) : ℝ) - Real.logb 2 (A061142 (n + 1) : ℝ)

end

end A318995.P8961074478601981553

namespace A318995

/-- `A056239(n+1)-log2(A061142(n+1))` -/
def P8961074478601981553.Spec : Prop :=
  ∀ n, P8961074478601981553.a n = (A318995 (n + 1) : ℝ)

end A318995

/-! ## A318995.P15807045999779339993

`A056239(n+1)+1-A073093(n+1)`
-/

namespace A318995.P15807045999779339993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (n + 1) + (1 - A073093 (n + 1))

end

end A318995.P15807045999779339993

namespace A318995

/-- `A056239(n+1)+1-A073093(n+1)` -/
def P15807045999779339993.Spec : Prop :=
  ∀ n, P15807045999779339993.a n = A318995 (n + 1)

end A318995

/-! ## A318995.P1956750494531594042

`A318994(n+1)-2*A001222(n+1)`
-/

namespace A318995.P1956750494531594042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318994 (n + 1) - 2 * A001222 (n + 1)

end

end A318995.P1956750494531594042

namespace A318995

/-- `A318994(n+1)-2*A001222(n+1)` -/
def P1956750494531594042.Spec : Prop :=
  ∀ n, P1956750494531594042.a n = A318995 (n + 1)

end A318995

/-! ## A318995.P7515886615641875350

`2*A056239(n+1)-A318994(n+1)`
-/

namespace A318995.P7515886615641875350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A056239 (n + 1) - A318994 (n + 1)

end

end A318995.P7515886615641875350

namespace A318995

/-- `2*A056239(n+1)-A318994(n+1)` -/
def P7515886615641875350.Spec : Prop :=
  ∀ n, P7515886615641875350.a n = A318995 (n + 1)

end A318995

/-! ## A318995.P2588160798915552085

`A056239(n+1)-A255201(n+1)/2`
-/

namespace A318995.P2588160798915552085
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056239 (n + 1) : ℚ) - (A255201 (n + 1) : ℚ) / 2

end

end A318995.P2588160798915552085

namespace A318995

/-- `A056239(n+1)-A255201(n+1)/2` -/
def P2588160798915552085.Spec : Prop :=
  ∀ n, P2588160798915552085.a n = (A318995 (n + 1) : ℚ)

end A318995

/-! ## A318995.P13574562945930263062

`A056239(n+1)-val(A165825(n+1), 4)`
-/

namespace A318995.P13574562945930263062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (n + 1) - (SequenceMachineLib.valuation (A165825 (n + 1)).toNat 4 : ℤ)

end

end A318995.P13574562945930263062

namespace A318995

/-- `A056239(n+1)-val(A165825(n+1), 4)` -/
def P13574562945930263062.Spec : Prop :=
  ∀ n, P13574562945930263062.a n = A318995 (n + 1)

end A318995

/-! ## A318995.P10669477801078428202

`A316436(2*(n+1))-(A001222(n+1)+1)`
-/

namespace A318995.P10669477801078428202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316436 (2 * (n + 1)) - (A001222 (n + 1) + 1)

end

end A318995.P10669477801078428202

namespace A318995

/-- `A316436(2*(n+1))-(A001222(n+1)+1)` -/
def P10669477801078428202.Spec : Prop :=
  ∀ n, P10669477801078428202.a n = A318995 (n + 1)

end A318995

/-!
# A318996: a(n) = Sum_{d|n} (sigma(n) mod d).

The programs for A318996, the canonical program `A318996.P2280365862416764505` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A318996 has offset 1).

The definition of A318996 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A318996.P17490092249963316653

`∑{d}[n+1, A000203(n+1)%#]`
-/

namespace A318996.P17490092249963316653
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Int.tmod (A000203 (n + 1)) (d : ℤ)

end

end A318996.P17490092249963316653

namespace A318996

/-- `∑{d}[n+1, A000203(n+1)%#]` -/
def P17490092249963316653.Spec : Prop :=
  ∀ n, P17490092249963316653.a n = A318996 (n + 1)

end A318996

/-! ## A318996.P2280365862416764505

`∑{d}[n+1, A001065(n+1)%#]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A318996

/-- `∑{d}[n+1, A001065(n+1)%#]` -/
def P2280365862416764505.Spec : Prop :=
  ∀ n, P2280365862416764505.a n = A318996 (n + 1)

theorem P2280365862416764505.correct : P2280365862416764505.Spec := by
  intro n
  simp only [A318996, Nat.add_sub_cancel]

end A318996

/-! ## A318996.P9499750790357355935

`∑{d}[n+1, A054024(n+1)%#]`
-/

namespace A318996.P9499750790357355935
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Int.tmod (A054024 (n + 1)) (d : ℤ)

end

end A318996.P9499750790357355935

namespace A318996

/-- `∑{d}[n+1, A054024(n+1)%#]` -/
def P9499750790357355935.Spec : Prop :=
  ∀ n, P9499750790357355935.a n = A318996 (n + 1)

end A318996

/-! ## A318996.P8993619563295888077

`∑{d}[n+1, (A088580(n+1)-1)%#]`
-/

namespace A318996.P8993619563295888077
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Int.tmod (A088580 (n + 1) - 1) (d : ℤ)

end

end A318996.P8993619563295888077

namespace A318996

/-- `∑{d}[n+1, (A088580(n+1)-1)%#]` -/
def P8993619563295888077.Spec : Prop :=
  ∀ n, P8993619563295888077.a n = A318996 (n + 1)

end A318996

/-! ## A318996.P14421456953886310854

`∑{d}[n+1, (n+1-A033879(n+1))%#]`
-/

namespace A318996.P14421456953886310854
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Int.tmod ((n + 1 : ℤ) - A033879 (n + 1)) (d : ℤ)

end

end A318996.P14421456953886310854

namespace A318996

/-- `∑{d}[n+1, (n+1-A033879(n+1))%#]` -/
def P14421456953886310854.Spec : Prop :=
  ∀ n, P14421456953886310854.a n = A318996 (n + 1)

end A318996

/-!
# A318997: Number of stable nuclides with mass number n.

The programs for A318997, there is no canonical definition to state claims against.
-/

/-! ## A318997.P4166679933012468612

`A161097(n+1)^A161083(A028276(n))`
-/

namespace A318997.P4166679933012468612
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A161097 (n + 1) : ℚ) ^ (A161083 (A028276 n).toNat : ℤ)

end

end A318997.P4166679933012468612

/-! ## A318997.P5427791769912797804

`A320784(A133388(n+1))^A269948(n)`
-/

namespace A318997.P5427791769912797804
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A320784 (A133388 (n + 1)).toNat : ℚ) ^ (A269948 n : ℤ)

end

end A318997.P5427791769912797804

/-! ## A318997.P4001771541418664421

`A320784(A133388(n+1))^A331161(n)`
-/

namespace A318997.P4001771541418664421
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A320784 (A133388 (n + 1)).toNat : ℚ) ^ (A331161 n : ℤ)

end

end A318997.P4001771541418664421

/-! ## A318997.P771775360745036491

`A000995(gcd(A102661(n+1), A289463(n)))`
-/

namespace A318997.P771775360745036491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000995 (Int.gcd (A102661 (n + 1)) (A289463 n))

end

end A318997.P771775360745036491

/-! ## A318997.P2361940833119173123

`A161097(n+1)^A008616(A220860(n+1))`
-/

namespace A318997.P2361940833119173123
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A161097 (n + 1) : ℚ) ^ (A008616 (A220860 (n + 1)).toNat : ℤ)

end

end A318997.P2361940833119173123

/-!
# A318998: Number of stable nuclides with neutron number n.

The programs for A318998, there is no canonical definition to state claims against.
-/

/-! ## A318998.P1165861135402675063

`gcd(Δ[A338037(3*n)], A368860(n))`
-/

namespace A318998.P1165861135402675063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338037 (3 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A368860 n)

end

end A318998.P1165861135402675063

/-! ## A318998.P6444913868554591332

`A161916(xor(n, A051250(n+1)))`
-/

namespace A318998.P6444913868554591332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161916 (Int.xor (n : ℤ) (A051250 (n + 1))).toNat

end

end A318998.P6444913868554591332

/-! ## A318998.P13007426401976824718

`A265743(A053638(n+1)+A008616(n))`
-/

namespace A318998.P13007426401976824718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265743 (A053638 (n + 1) + A008616 n).toNat

end

end A318998.P13007426401976824718

/-! ## A318998.P15659891873134870865

`A090822(A038210(n)*A191161(n+1))`
-/

namespace A318998.P15659891873134870865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090822 (A038210 n * A191161 (n + 1)).toNat

end

end A318998.P15659891873134870865

/-! ## A318998.P7676587354777655673

`gcd(A135888(3*n), A270559(A156077(n+5)))`
-/

namespace A318998.P7676587354777655673
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A135888 (3 * n)) (A270559 (A156077 (n + 5)).toNat)

end

end A318998.P7676587354777655673

