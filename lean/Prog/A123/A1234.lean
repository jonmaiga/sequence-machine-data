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
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
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
import Seq.B012.C000
import Seq.B013.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A123400: Infinite string related to Ehrlich's swap method for generating permutations.

The programs for A123400, there is no canonical definition to state claims against.
-/

/-! ## A123400.P12789281450525587064

`Δ[A036445(A258011(n+1)+1)]`
-/

namespace A123400.P12789281450525587064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036445 (A258011 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A123400.P12789281450525587064

/-! ## A123400.P12232822371913203717

`(∑[(A269747(2*n)+A098928(n+1))%2]+n)%3+1`
-/

namespace A123400.P12232822371913203717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A269747 (2 * n) + A098928 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)) 3 + 1

end

end A123400.P12232822371913203717

/-! ## A123400.P9972081577850282786

`(∑[(A269747(2*n)+A000332(2*(n+1)))%2]+n)%3+1`
-/

namespace A123400.P9972081577850282786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A269747 (2 * n) + A000332 (2 * (n + 1))) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)) 3 + 1

end

end A123400.P9972081577850282786

/-! ## A123400.P12640105074865704236

`A144611(n)+A115362(A212804(n))`
-/

namespace A123400.P12640105074865704236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144611 n + A115362 (A212804 n).toNat

end

end A123400.P12640105074865704236

/-! ## A123400.P3342411907775123738

`A144611(n)+A040001(A350253(n+1))`
-/

namespace A123400.P3342411907775123738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144611 n + A040001 (A350253 (n + 1)).toNat

end

end A123400.P3342411907775123738

/-!
# A123401: Number of maximal chains in the Stanley lattice of order n.

The programs for A123401, there is no canonical definition to state claims against.
-/

/-! ## A123401.P8539147369070393521

`A171522(a(n-1))` with `a(0)=1, a(1)=1, a(2)=1, a(3)=18`
-/

namespace A123401.P8539147369070393521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 18] fun n a =>
  A171522 (a (n - 1)).toNat

end

end A123401.P8539147369070393521

/-!
# A123402: Combining the conditional divide-by-two concept from Collatz sequences with Pascal's triangle, one can construct a new kind of triangle. Start with an initial row of just 4. To compute subsequent rows, start by appending a zero to the beginning and end of the previous row. Like Pascal's triangle, add adjacent terms of the previous row to create each of the subsequent terms. The only change is that each new term is divided by two if it is even.

The programs for A123402, there is no canonical definition to state claims against.
-/

/-! ## A123402.P14713472396799890572

`A329888(A235413(n+1))%5`
-/

namespace A123402.P14713472396799890572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A329888 (A235413 (n + 1)).toNat) 5

end

end A123402.P14713472396799890572

/-! ## A123402.P9269155857136057892

`A176808(A299097(n+1)+10)`
-/

namespace A123402.P9269155857136057892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176808 (A299097 (n + 1) + 10).toNat

end

end A123402.P9269155857136057892

/-! ## A123402.P16063277687727785059

`A176808(A299879(n+1)+10)`
-/

namespace A123402.P16063277687727785059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176808 (A299879 (n + 1) + 10).toNat

end

end A123402.P16063277687727785059

/-! ## A123402.P10528739137545941150

`gcd(12, A130393(A231806(n+1)))`
-/

namespace A123402.P10528739137545941150
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 12 (A130393 (A231806 (n + 1)).toNat)

end

end A123402.P10528739137545941150

/-!
# A123404: Number of alternately colorable perfect graphs on n nodes.

The programs for A123404, there is no canonical definition to state claims against.
-/

/-! ## A123404.P114409159015378190

`A178925(n+1)-A141097(A088311(n))`
-/

namespace A123404.P114409159015378190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178925 (n + 1) - A141097 (A088311 n).toNat

end

end A123404.P114409159015378190

/-! ## A123404.P10951790048586050285

`A366064(A054197(n))`
-/

namespace A123404.P10951790048586050285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366064 (A054197 n).toNat

end

end A123404.P10951790048586050285

/-!
# A123405: Number of alternately orientable perfect graphs on n nodes.

The programs for A123405, there is no canonical definition to state claims against.
-/

/-! ## A123405.P1164980578594225903

`A123461(n+1)-A058276(A003520(n)²)`
-/

namespace A123405.P1164980578594225903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123461 (n + 1) - A058276 (A003520 n ^ 2).toNat

end

end A123405.P1164980578594225903

/-! ## A123405.P9001401289059674019

`A028310(A123457(n+1)-A052415(n+1))`
-/

namespace A123405.P9001401289059674019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A123457 (n + 1) - A052415 (n + 1)).toNat

end

end A123405.P9001401289059674019

/-! ## A123405.P16374433184585482828

`and(A028310(A123407(n+1)), A123457(n+1))`
-/

namespace A123405.P16374433184585482828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A028310 (A123407 (n + 1)).toNat) (A123457 (n + 1))

end

end A123405.P16374433184585482828

/-! ## A123405.P2840125418400972511

`A028310(A123461(n+1)-A293087(n+1))-A052415(n+1)`
-/

namespace A123405.P2840125418400972511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A123461 (n + 1) - A293087 (n + 1)).toNat - A052415 (n + 1)

end

end A123405.P2840125418400972511

/-!
# A123406: Number of AT-free Berge perfect graphs on n nodes.

The programs for A123406, there is no canonical definition to state claims against.
-/

/-! ## A123406.P4152244521021253573

`A123453(n+1)-A024153(ceil(3/4*5^n))`
-/

namespace A123406.P4152244521021253573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123453 (n + 1) - A024153 ⌈(3 : ℚ) / 4 * (5 ^ n : ℚ)⌉.toNat

end

end A123406.P4152244521021253573

/-! ## A123406.P16851093245003347057

`A123416(n+1)+A010893(A336103(n))`
-/

namespace A123406.P16851093245003347057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123416 (n + 1) + A010893 ((A336103 n).toNat + 13)

end

end A123406.P16851093245003347057

/-! ## A123406.P11733277318089188467

`A245116(n+1)+A001221(A245164(n))`
-/

namespace A123406.P11733277318089188467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245116 (n + 1) + A001221 (A245164 n).toNat

end

end A123406.P11733277318089188467

/-!
# A123407: Number of BIP* perfect graphs on n nodes.

The programs for A123407, there is no canonical definition to state claims against.
-/

/-! ## A123407.P14078252041317364266

`xor(A123446(n+1), A178798(round(2^(n-2))))`
-/

namespace A123407.P14078252041317364266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A123446 (n + 1)) (A178798 (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - 2 : ℤ))).toNat)

end

end A123407.P14078252041317364266

/-! ## A123407.P5502396590119466553

`A123446(A077739(n+1))-∑{digits}[n, val(#+1, 9)]`
-/

namespace A123407.P5502396590119466553
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123446 (A077739 (n + 1)).toNat - ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => SequenceMachineLib.valuation (x + 1) 9).sum : ℕ) : ℤ)

end

end A123407.P5502396590119466553

/-! ## A123407.P9532756157024438404

`A123446(n+1)+A008683(A095641(n))`
-/

namespace A123407.P9532756157024438404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123446 (n + 1) + A008683 (A095641 n).toNat

end

end A123407.P9532756157024438404

/-! ## A123407.P15257193183056637488

`A178798(A182522(n))+A123446(n+1)`
-/

namespace A123407.P15257193183056637488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178798 (A182522 n).toNat + A123446 (n + 1)

end

end A123407.P15257193183056637488

/-! ## A123407.P18373980996231196502

`A000027(A123446(n+1)-A025461(n))`
-/

namespace A123407.P18373980996231196502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A123446 (n + 1) - A025461 n).toNat

end

end A123407.P18373980996231196502

/-!
# A123410: Number of bull-free Berge perfect graphs on n nodes.

The programs for A123410, there is no canonical definition to state claims against.
-/

/-! ## A123410.P998444004138950883

`and(A075232(A002577(n)), A123424(n+1))`
-/

namespace A123410.P998444004138950883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A075232 (A002577 n).toNat) (A123424 (n + 1))

end

end A123410.P998444004138950883

/-! ## A123410.P439080151291748889

`∑[A001055(comp[7*n]!)]`
-/

namespace A123410.P439080151291748889
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (Nat.factorial (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123410.P439080151291748889

/-!
# A123411: Number of C_4-free Berge perfect graphs on n nodes.

The programs for A123411, there is no canonical definition to state claims against.
-/

/-! ## A123411.P6615020080282571284

`A066508(A155069(n)+A000124(n))`
-/

namespace A123411.P6615020080282571284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066508 (A155069 n + A000124 n).toNat

end

end A123411.P6615020080282571284

/-! ## A123411.P12163836502664315174

`A066508(A155069(n))+A000217(n)`
-/

namespace A123411.P12163836502664315174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066508 (A155069 n).toNat + A000217 n

end

end A123411.P12163836502664315174

/-! ## A123411.P4797659421510259604

`A165542(n)+A007496(A358374(n+1))`
-/

namespace A123411.P4797659421510259604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165542 n + A007496 (A358374 (n + 1)).toNat

end

end A123411.P4797659421510259604

/-!
# A123412: Number of chair-free Berge perfect graphs on n nodes.

The programs for A123412, there is no canonical definition to state claims against.
-/

/-! ## A123412.P5822906061809167766

`A348193(A000522(n))+A256180(n)`
-/

namespace A123412.P5822906061809167766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348193 (A000522 n).toNat + A256180 n

end

end A123412.P5822906061809167766

/-! ## A123412.P15310348853889054144

`A349798(A380806(3*n+2))+A001250(n+1)`
-/

namespace A123412.P15310348853889054144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349798 (A380806 (3 * n + 2)).toNat + A001250 (n + 1)

end

end A123412.P15310348853889054144

/-!
# A123413: Number of claw-free Berge perfect graphs on n nodes.

The programs for A123413, there is no canonical definition to state claims against.
-/

/-! ## A123413.P3288212558578804804

`A123621(∑[A014432(n)])+1`
-/

namespace A123413.P3288212558578804804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014432 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123621 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + 1

end

end A123413.P3288212558578804804

/-! ## A123413.P16279699194694766833

`record[and(A086920(n+1), A292712(n))]`
-/

namespace A123413.P16279699194694766833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A086920 (n + 1)) (A292712 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A123413.P16279699194694766833

/-!
# A123414: Number of clique-separable perfect graphs on n nodes.

The programs for A123414, there is no canonical definition to state claims against.
-/

/-! ## A123414.P14526339929849320369

`A152467(A002002(n))+A000124(n)`
-/

namespace A123414.P14526339929849320369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152467 (A002002 n).toNat + A000124 n

end

end A123414.P14526339929849320369

/-! ## A123414.P1823850181061368532

`A154958(A002002(n))+A000217(n)`
-/

namespace A123414.P1823850181061368532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154958 (A002002 n).toNat + A000217 n

end

end A123414.P1823850181061368532

/-! ## A123414.P17421717710450635548

`A217956(A120963(n))+A213094(n)`
-/

namespace A123414.P17421717710450635548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217956 (A120963 n).toNat + A213094 n

end

end A123414.P17421717710450635548

/-!
# A123415: Number of cograph contraction perfect graphs on n nodes.

The programs for A123415, there is no canonical definition to state claims against.
-/

/-! ## A123415.P4475088281650429445

`A056557(A126393(n))+n!`
-/

namespace A123415.P4475088281650429445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056557 (A126393 n).toNat + (Nat.factorial n : ℤ)

end

end A123415.P4475088281650429445

/-! ## A123415.P10489409752943595603

`A259478(n+1)+A098429(A253256(n))`
-/

namespace A123415.P10489409752943595603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259478 (n + 1) + A098429 (A253256 n).toNat

end

end A123415.P10489409752943595603

/-!
# A123416: Number of comparability perfect graphs on n nodes.

The programs for A123416, there is no canonical definition to state claims against.
-/

/-! ## A123416.P2251302225114289354

`A123471(n+1)+A010893(A336103(n))`
-/

namespace A123416.P2251302225114289354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123471 (n + 1) + A010893 ((A336103 n).toNat + 13)

end

end A123416.P2251302225114289354

/-! ## A123416.P7488864181302851473

`A123471(n+1)+A086010(A330668(n))`
-/

namespace A123416.P7488864181302851473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123471 (n + 1) + A086010 (A330668 n).toNat

end

end A123416.P7488864181302851473

/-! ## A123416.P2418481345699117678

`A276080(n)+A206441(A134227(n+1))`
-/

namespace A123416.P2418481345699117678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276080 n + A206441 (A134227 (n + 1)).toNat

end

end A123416.P2418481345699117678

/-!
# A123418: Number of dart-free Berge perfect graphs on n nodes.

The programs for A123418, there is no canonical definition to state claims against.
-/

/-! ## A123418.P4351746417205117581

`A256502(A224071(n))+A001222(n+1)`
-/

namespace A123418.P4351746417205117581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256502 (A224071 n).toNat + A001222 (n + 1)

end

end A123418.P4351746417205117581

/-! ## A123418.P12381516687703833711

`A256502(A224071(n)+A033630(3*(n+1)))`
-/

namespace A123418.P12381516687703833711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256502 (A224071 n + A033630 (3 * (n + 1))).toNat

end

end A123418.P12381516687703833711

/-!
# A123419: Number of degenerate Berge perfect graphs on n nodes.

The programs for A123419, there is no canonical definition to state claims against.
-/

/-! ## A123419.P7436678674644800132

`A123450(n+1)-A326291(A048625(n))`
-/

namespace A123419.P7436678674644800132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123450 (n + 1) - A326291 (A048625 n).toNat

end

end A123419.P7436678674644800132

/-! ## A123419.P3383578877812722083

`A123450(n+1)-A091064(A328501(n))`
-/

namespace A123419.P3383578877812722083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123450 (n + 1) - A091064 (A328501 n).toNat

end

end A123419.P3383578877812722083

/-! ## A123419.P14343841950082043124

`A020725(A052431(n+1))-A045995(n)²`
-/

namespace A123419.P14343841950082043124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A052431 (n + 1)).toNat - A045995 n ^ 2

end

end A123419.P14343841950082043124

/-! ## A123419.P7192666429402896507

`A123451(n+1)-A000038(A073878(n+1))`
-/

namespace A123419.P7192666429402896507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123451 (n + 1) - A000038 (A073878 (n + 1)).toNat

end

end A123419.P7192666429402896507

/-!
# A123420: Number of diamond-free Berge perfect graphs on n nodes.

The programs for A123420, there is no canonical definition to state claims against.
-/

/-! ## A123420.P981088366033459704

`A020651(∑[∏[A076345(n+1)]])`
-/

namespace A123420.P981088366033459704
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076345 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020651 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A123420.P981088366033459704

/-! ## A123420.P11627243829954691665

`A120450(A023432(2*(n+2))+1)`
-/

namespace A123420.P11627243829954691665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120450 (A023432 (2 * (n + 2)) + 1).toNat

end

end A123420.P11627243829954691665

/-! ## A123420.P7695730988552004623

`A338643(A150113(n)+A052801(n))`
-/

namespace A123420.P7695730988552004623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338643 (A150113 n + A052801 n).toNat

end

end A123420.P7695730988552004623

/-!
# A123421: Number of doc-free Berge perfect graphs on n nodes.

The programs for A123421, there is no canonical definition to state claims against.
-/

/-! ## A123421.P15060250089102940996

`xor(A000079(n), A002265(A292183(n)))`
-/

namespace A123421.P15060250089102940996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000079 n) (A002265 (A292183 n).toNat)

end

end A123421.P15060250089102940996

/-! ## A123421.P14186011258982782999

`xor(A002265(A292183(n)), A011782(n+1))`
-/

namespace A123421.P14186011258982782999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A002265 (A292183 n).toNat) (A011782 (n + 1))

end

end A123421.P14186011258982782999

/-! ## A123421.P7916035847631884233

`A350223(A269134(n+1))+A002931(n+1)`
-/

namespace A123421.P7916035847631884233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350223 (A269134 (n + 1)).toNat + A002931 (n + 1)

end

end A123421.P7916035847631884233

/-!
# A123422: Number of elementary graphs on n nodes.

The programs for A123422, there is no canonical definition to state claims against.
-/

/-! ## A123422.P3940629365060982708

`A230418(A307413(n+1))`
-/

namespace A123422.P3940629365060982708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230418 (A307413 (n + 1)).toNat

end

end A123422.P3940629365060982708

/-! ## A123422.P9948029317574619544

`A230418(A271844(n+2))`
-/

namespace A123422.P9948029317574619544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230418 (A271844 (n + 2)).toNat

end

end A123422.P9948029317574619544

/-! ## A123422.P4186391555730390646

`A243494(A084635(n+1))-1`
-/

namespace A123422.P4186391555730390646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243494 (A084635 (n + 1)).toNat - 1

end

end A123422.P4186391555730390646

/-!
# A123424: Number of gem-free Berge perfect graphs on n nodes.

The programs for A123424, there is no canonical definition to state claims against.
-/

/-! ## A123424.P10181409459504315578

`A023055(A328435(n))+A008937(n)`
-/

namespace A123424.P10181409459504315578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023055 (A328435 n).toNat + A008937 n

end

end A123424.P10181409459504315578

/-!
# A123426: Number of Hoang perfect graphs on n nodes.

The programs for A123426, there is no canonical definition to state claims against.
-/

/-! ## A123426.P17578098193006516593

`A002265(A373450(n)+A059529(n+3))`
-/

namespace A123426.P17578098193006516593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A373450 n + A059529 (n + 3)).toNat

end

end A123426.P17578098193006516593

/-!
# A123427: Number of i-triangulated perfect graphs on n nodes.

The programs for A123427, there is no canonical definition to state claims against.
-/

/-! ## A123427.P9075505701361665773

`A070868(A006788(n+1)+A006781(n+1))`
-/

namespace A123427.P9075505701361665773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070868 (A006788 (n + 1) + A006781 (n + 1)).toNat

end

end A123427.P9075505701361665773

/-! ## A123427.P8088229905588185732

`∑[A098805(2*(n+1)²)]`
-/

namespace A123427.P8088229905588185732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098805 (2 * (n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123427.P8088229905588185732

/-!
# A123429: Number of K_4-free Berge perfect graphs on n nodes.

The programs for A123429, there is no canonical definition to state claims against.
-/

/-! ## A123429.P6662321953898875132

`A192512(A000108(n)*A097332(n))`
-/

namespace A123429.P6662321953898875132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192512 (A000108 n * A097332 n).toNat

end

end A123429.P6662321953898875132

/-! ## A123429.P6641774751630707830

`A192512(abs(A097332(n)*A168491(n)))`
-/

namespace A123429.P6641774751630707830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192512 |A097332 n * A168491 n|.toNat

end

end A123429.P6641774751630707830

/-! ## A123429.P11137647751450685119

`A153734(n)+Δ[A065515(A000142(n))]`
-/

namespace A123429.P11137647751450685119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065515 (A000142 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153734 n + (f1 (n + 1) - f1 n)

end

end A123429.P11137647751450685119

/-!
# A123430: Number of (K_5,P_5)-free Berge perfect graphs on n nodes.

The programs for A123430, there is no canonical definition to state claims against.
-/

/-! ## A123430.P7321542739459448377

`A218670(A073788(n))+record[xor(n, 2*n)/3]`
-/

namespace A123430.P7321542739459448377
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.xor n (2 * n) : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A218670 (A073788 n).toNat : ℚ) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A123430.P7321542739459448377

/-! ## A123430.P10384678389789250506

`A002265(A216385(n+1)+A007283(n))`
-/

namespace A123430.P10384678389789250506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A216385 (n + 1) + A007283 n).toNat

end

end A123430.P10384678389789250506

/-! ## A123430.P15526359791719697931

`A008612(A077269(n+4)+A071797(n+1))`
-/

namespace A123430.P15526359791719697931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (A077269 (n + 4) + A071797 (n + 1)).toNat

end

end A123430.P15526359791719697931

/-!
# A123431: Number of LGBIP perfect graphs on n nodes.

The programs for A123431, there is no canonical definition to state claims against.
-/

/-! ## A123431.P7436382014441589356

`A180414(n)+A094263(A000108(n))`
-/

namespace A123431.P7436382014441589356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180414 n + A094263 (A000108 n).toNat

end

end A123431.P7436382014441589356

/-! ## A123431.P10346290945008796013

`A274138(A000051(n))+A174284(n)`
-/

namespace A123431.P10346290945008796013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274138 (A000051 n).toNat + A174284 n

end

end A123431.P10346290945008796013

/-! ## A123431.P3828114844677679518

`A353379(A000142(n))+∑[A353379(2*n+3)]`
-/

namespace A123431.P3828114844677679518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353379 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353379 (A000142 n).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123431.P3828114844677679518

/-!
# A123432: Number of line perfect perfect graphs on n nodes.

The programs for A123432, there is no canonical definition to state claims against.
-/

/-! ## A123432.P9239048422327025597

`A343333(A083424(n))+A000110(n)`
-/

namespace A123432.P9239048422327025597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343333 (A083424 n).toNat + A000110 n

end

end A123432.P9239048422327025597

/-! ## A123432.P13530862717619064128

`A157161(n+1)+A040076(A209902(n))`
-/

namespace A123432.P13530862717619064128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157161 (n + 1) + A040076 (A209902 n).toNat

end

end A123432.P13530862717619064128

/-! ## A123432.P18295634256030461104

`A345216(n+1)-A006821(A168089(n))`
-/

namespace A123432.P18295634256030461104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345216 (n + 1) - A006821 (A168089 n).toNat

end

end A123432.P18295634256030461104

/-!
# A123433: Number of locally perfect perfect graphs on n nodes.

The programs for A123433, there is no canonical definition to state claims against.
-/

/-! ## A123433.P4948650162371342540

`A123452(lcm(n+1, ∏{e}[n+1, #]))`
-/

namespace A123433.P4948650162371342540
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123452 (Nat.lcm (n + 1) (∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p))

end

end A123433.P4948650162371342540

/-! ## A123433.P6153652316065065421

`A123452(n*(char[eq[3, ∑{e}[n+1, #]]]+1)+1)`
-/

namespace A123433.P6153652316065065421
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f4 n), Nat.factorization (f4 n) p

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123452 (n * ((if ∃ j, f1 j = n then 1 else 0) + 1) + 1)

end

end A123433.P6153652316065065421

/-! ## A123433.P8068635376218390979

`A123452(∏{p}[n+1, #]^((n+1)/∏{p}[n+1, #]))`
-/

namespace A123433.P8068635376218390979
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123452 (SequenceMachineLib.roundAway (((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℝ) ^ ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ) : ℝ))).toNat

end

end A123433.P8068635376218390979

/-!
# A123434: Number of Meyniel graphs on n nodes.

The programs for A123434, there is no canonical definition to state claims against.
-/

/-! ## A123434.P1429847062908396682

`∑[A003603(∑[A002577(n)])]`
-/

namespace A123434.P1429847062908396682
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002577 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003603 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123434.P1429847062908396682

/-! ## A123434.P16290904720705083560

`A005470(n+1)-A237126(A307071(n+1))`
-/

namespace A123434.P16290904720705083560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005470 (n + 1) - A237126 (A307071 (n + 1)).toNat

end

end A123434.P16290904720705083560

/-! ## A123434.P1822436295945357953

`A318932(A148482(n))+A181303(A327498(n+1))`
-/

namespace A123434.P1822436295945357953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318932 (A148482 n).toNat + A181303 (A327498 (n + 1)).toNat

end

end A123434.P1822436295945357953

/-!
# A123435: Number of murky graphs on n nodes.

The programs for A123435, there is no canonical definition to state claims against.
-/

/-! ## A123435.P4243737154836868234

`A123437(n+1)+A098804(A001200(n))`
-/

namespace A123435.P4243737154836868234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123437 (n + 1) + A098804 (A001200 n).toNat

end

end A123435.P4243737154836868234

/-! ## A123435.P10723187661151901885

`A277152(A003947(n))+A123437(n+1)`
-/

namespace A123435.P10723187661151901885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277152 (A003947 n).toNat + A123437 (n + 1)

end

end A123435.P10723187661151901885

/-!
# A123436: Number of 1-overlap bipartite perfect graphs on n nodes.

The programs for A123436, there is no canonical definition to state claims against.
-/

/-! ## A123436.P8888107192509366478

`A004526(A023206(n+1)+A000254(n))`
-/

namespace A123436.P8888107192509366478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A023206 (n + 1) + A000254 n).toNat

end

end A123436.P8888107192509366478

/-! ## A123436.P12325808275258060273

`A123433(n+1)+A101688(A001586(n))`
-/

namespace A123436.P12325808275258060273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123433 (n + 1) + A101688 (A001586 n).toNat

end

end A123436.P12325808275258060273

/-! ## A123436.P5898492066428279946

`A123452(n+1)+A101688(A001586(n))`
-/

namespace A123436.P5898492066428279946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123452 (n + 1) + A101688 (A001586 n).toNat

end

end A123436.P5898492066428279946

/-!
# A123437: Number of opposition perfect graphs on n nodes.

The programs for A123437, there is no canonical definition to state claims against.
-/

/-! ## A123437.P13128614061807657221

`A330557(A330499(n))+A330455(n)`
-/

namespace A123437.P13128614061807657221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330557 (A330499 n).toNat + A330455 n

end

end A123437.P13128614061807657221

/-! ## A123437.P7841320853404489940

`A277204(n+1)+A098804(A001200(n))`
-/

namespace A123437.P7841320853404489940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277204 (n + 1) + A098804 (A001200 n).toNat

end

end A123437.P7841320853404489940

/-! ## A123437.P13503831360816178181

`A277204(n+1)+A277152(A003947(n))`
-/

namespace A123437.P13503831360816178181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277204 (n + 1) + A277152 (A003947 n).toNat

end

end A123437.P13503831360816178181

/-!
# A123438: Numbers k such that the denominator of k!/!k (= A000142(k)/A000166(k)) is prime.

The programs for A123438, there is no canonical definition to state claims against.
-/

/-! ## A123438.P5377519380089871956

`A099071(A341464(n))+n`
-/

namespace A123438.P5377519380089871956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099071 (A341464 (n + 28)).toNat + (n : ℤ)

end

end A123438.P5377519380089871956

/-! ## A123438.P8176882504920534040

`record[A329391(n)-A104182(n+1)]`
-/

namespace A123438.P8176882504920534040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329391 n - A104182 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A123438.P8176882504920534040

/-! ## A123438.P3294415260399177515

`A075208(n+1)+round(sqrt(A014603(2*n+1)))`
-/

namespace A123438.P3294415260399177515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075208 (n + 1) + SequenceMachineLib.roundAway (Real.sqrt (A014603 (2 * n + 1) : ℝ))

end

end A123438.P3294415260399177515

/-! ## A123438.P7554220686718890691

`eq[A004525(A263693(n+1)), A161041(n+1)]`
-/

namespace A123438.P7554220686718890691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A263693 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161041 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A123438.P7554220686718890691

/-! ## A123438.P2672468663312561301

`lt[A339434(2*(n+2)), A339403(A339447(n))]`
-/

namespace A123438.P2672468663312561301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339434 (2 * (n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339403 (A339447 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A123438.P2672468663312561301

/-!
# A123439: Number of P_4-lite perfect graphs on n nodes.

The programs for A123439, there is no canonical definition to state claims against.
-/

/-! ## A123439.P14198542423649481085

`A062756(A001109(n))+A006342(n)`
-/

namespace A123439.P14198542423649481085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062756 (A001109 n).toNat + A006342 n

end

end A123439.P14198542423649481085

/-! ## A123439.P1341055627631948666

`A007814(A171475(n))+A006342(n)`
-/

namespace A123439.P1341055627631948666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A171475 n).toNat + A006342 n

end

end A123439.P1341055627631948666

/-! ## A123439.P16572476714878628504

`A302031(A048863(n))+A039300(n)`
-/

namespace A123439.P16572476714878628504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302031 (A048863 n).toNat + A039300 n

end

end A123439.P16572476714878628504

/-!
# A123440: Number of P_4-reducible perfect graphs on n nodes.

The programs for A123440, there is no canonical definition to state claims against.
-/

/-! ## A123440.P10127063783458468941

`A049130(n+2)+A046929(A003319(n))`
-/

namespace A123440.P10127063783458468941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049130 (n + 2) + A046929 (A003319 n).toNat

end

end A123440.P10127063783458468941

/-! ## A123440.P4143597302698812897

`A248180(A337517(n+2)-A000010(n+1))`
-/

namespace A123440.P4143597302698812897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248180 (A337517 (n + 2) - A000010 (n + 1)).toNat

end

end A123440.P4143597302698812897

/-! ## A123440.P6092387088515466868

`A026834(A094864(n+1))`
-/

namespace A123440.P6092387088515466868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026834 (A094864 (n + 1)).toNat

end

end A123440.P6092387088515466868

/-!
# A123441: Number of P_4-sparse perfect graphs on n nodes.

The programs for A123441, there is no canonical definition to state claims against.
-/

/-! ## A123441.P15565700100480581290

`A316696(n+1)-A066620(A123418(n+1))`
-/

namespace A123441.P15565700100480581290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316696 (n + 1) - A066620 (A123418 (n + 1)).toNat

end

end A123441.P15565700100480581290

/-! ## A123441.P12912999530654519977

`A091107(n+1)+∑[A350256(n)]`
-/

namespace A123441.P12912999530654519977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350256 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091107 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123441.P12912999530654519977

/-! ## A123441.P12228049091040461787

`A261104(A080042(n))-∑[∑{e}[n, #]]`
-/

namespace A123441.P12228049091040461787
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261104 (A080042 n).toNat - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A123441.P12228049091040461787

/-!
# A123442: Number of P_4-stable Berge perfect graphs on n nodes.

The programs for A123442, there is no canonical definition to state claims against.
-/

/-! ## A123442.P4452233909699364854

`A163985(n)+A008619(A000254(n))`
-/

namespace A123442.P4452233909699364854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163985 n + A008619 (A000254 n).toNat

end

end A123442.P4452233909699364854

/-! ## A123442.P6028469067083638009

`A178798(A000225(n))+A123407(n+1)`
-/

namespace A123442.P6028469067083638009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178798 (A000225 n).toNat + A123407 (n + 1)

end

end A123442.P6028469067083638009

/-! ## A123442.P4076258498876943649

`A123447(n+1)-A285716(A058337(n))`
-/

namespace A123442.P4076258498876943649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123447 (n + 1) - A285716 (A058337 n).toNat

end

end A123442.P4076258498876943649

/-!
# A123443: Number of parity perfect graphs on n nodes.

The programs for A123443, there is no canonical definition to state claims against.
-/

/-! ## A123443.P13945477397854261553

`∑[A108954(∑[A328345(n)])]`
-/

namespace A123443.P13945477397854261553
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328345 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108954 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123443.P13945477397854261553

/-! ## A123443.P16525929042472959170

`∑[or(n, A320536(A150474(n)))]`
-/

namespace A123443.P16525929042472959170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A320536 (A150474 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123443.P16525929042472959170

/-! ## A123443.P12442711565095109761

`A196118(n)+A093886(ceil(2^(n-1)))`
-/

namespace A123443.P12442711565095109761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196118 n + A093886 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat

end

end A123443.P12442711565095109761

/-!
# A123444: Number of partner-graph triangle-free perfect graphs on n nodes.

The programs for A123444, there is no canonical definition to state claims against.
-/

/-! ## A123444.P12731187381360676922

`floor(sqrt(p?[ceil((2^n-2)/15)]))`
-/

namespace A123444.P12731187381360676922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((2 ^ n : ℤ) - 2 : ℚ) / 15⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A123444.P12731187381360676922

/-! ## A123444.P7443177244153524980

`A018431(∑[n]+1)`
-/

namespace A123444.P7443177244153524980
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018431 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A123444.P7443177244153524980

/-!
# A123445: Number of paw-free Berge perfect graphs on n nodes.

The programs for A123445, there is no canonical definition to state claims against.
-/

/-! ## A123445.P12829973255453853748

`A326669(A215422(n))+n`
-/

namespace A123445.P12829973255453853748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326669 (A215422 n).toNat + (n : ℤ)

end

end A123445.P12829973255453853748

/-! ## A123445.P13379608752521653372

`∑[A000196(A087208(n+1))]`
-/

namespace A123445.P13379608752521653372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A087208 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123445.P13379608752521653372

/-! ## A123445.P9697201341943274675

`A120246(A000048(3*n)+n)`
-/

namespace A123445.P9697201341943274675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120246 (A000048 (3 * n) + (n : ℤ)).toNat

end

end A123445.P9697201341943274675

/-!
# A123446: Number of perfectly contractile perfect graphs on n nodes.

The programs for A123446, there is no canonical definition to state claims against.
-/

/-! ## A123446.P3169188099515591095

`A178798(round(2^(n-2)))+A123407(n+1)`
-/

namespace A123446.P3169188099515591095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178798 (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - 2 : ℤ))).toNat + A123407 (n + 1)

end

end A123446.P3169188099515591095

/-! ## A123446.P1542477316804493381

`A000027(A123407(n+1)+A025461(n))`
-/

namespace A123446.P1542477316804493381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A123407 (n + 1) + A025461 n).toNat

end

end A123446.P1542477316804493381

/-! ## A123446.P5120585690187287567

`A123407(A077739(n+1))+A025461(n)`
-/

namespace A123446.P5120585690187287567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123407 (A077739 (n + 1)).toNat + A025461 n

end

end A123446.P5120585690187287567

/-! ## A123446.P755320508856811721

`A185284(A000124(n))+A123407(n+1)`
-/

namespace A123446.P755320508856811721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A000124 n).toNat + A123407 (n + 1)

end

end A123446.P755320508856811721

/-! ## A123446.P16843967383777891298

`A185284(A080572(n))+A123407(n+1)`
-/

namespace A123446.P16843967383777891298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A080572 n).toNat + A123407 (n + 1)

end

end A123446.P16843967383777891298

/-!
# A123447: Number of perfectly orderable perfect graphs on n nodes.

The programs for A123447, there is no canonical definition to state claims against.
-/

/-! ## A123447.P8931690753405370296

`A123477(A077060(n+2))+A123461(n+1)`
-/

namespace A123447.P8931690753405370296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123477 (A077060 (n + 2)).toNat + A123461 (n + 1)

end

end A123447.P8931690753405370296

/-! ## A123447.P7223744925631810866

`A123461(∑[A109221(n)])`
-/

namespace A123447.P7223744925631810866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109221 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123461 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A123447.P7223744925631810866

/-! ## A123447.P7508179277692827437

`A123461(∑[A290544(n)])`
-/

namespace A123447.P7508179277692827437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290544 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123461 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A123447.P7508179277692827437

/-! ## A123447.P18200177396802491147

`A123455(A007094(n)+1)`
-/

namespace A123447.P18200177396802491147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123455 (A007094 n + 1).toNat

end

end A123447.P18200177396802491147

/-!
# A123448: Number of permutation perfect graphs on n nodes.

The programs for A123448, there is no canonical definition to state claims against.
-/

/-! ## A123448.P1135093578152455103

`A194370(A000142(n))+A030101(n)`
-/

namespace A123448.P1135093578152455103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194370 (A000142 n).toNat + A030101 n

end

end A123448.P1135093578152455103

/-! ## A123448.P8532798940259352213

`A123406(n+1)-A326731(A182159(n))`
-/

namespace A123448.P8532798940259352213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123406 (n + 1) - A326731 (A182159 n).toNat

end

end A123448.P8532798940259352213

/-! ## A123448.P2162436274777593148

`A123472(n+1)-A004526(A205578(n+5))`
-/

namespace A123448.P2162436274777593148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123472 (n + 1) - A004526 (A205578 (n + 5)).toNat

end

end A123448.P2162436274777593148

/-!
# A123449: Number of planar Berge perfect graphs on n nodes.

The programs for A123449, there is no canonical definition to state claims against.
-/

/-! ## A123449.P15882784459613052506

`∑{e}[A096313(n), #]+n!`
-/

namespace A123449.P15882784459613052506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096313 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p + Nat.factorial n

end

end A123449.P15882784459613052506

/-! ## A123449.P14858558317848001184

`∑[A142958(a(n-1))]` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A123449.P14858558317848001184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n f1 =>
  A142958 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123449.P14858558317848001184

/-!
# A123450: Number of preperfect graphs on n nodes.

The programs for A123450, there is no canonical definition to state claims against.
-/

/-! ## A123450.P16788839908081812441

`A052431(n+1)-A035040(n)`
-/

namespace A123450.P16788839908081812441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052431 (n + 1) - A035040 n

end

end A123450.P16788839908081812441

/-! ## A123450.P10593611829763912827

`A076320(n+1)-A187236(n+1)`
-/

namespace A123450.P10593611829763912827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076320 (n + 1) - A187236 (n + 1)

end

end A123450.P10593611829763912827

/-! ## A123450.P357634088480570835

`A052431(n+1)-∑[A205568(n+1)]`
-/

namespace A123450.P357634088480570835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205568 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052431 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123450.P357634088480570835

/-! ## A123450.P4154195443429230422

`A052431(n+1)-∑[A205578(n+1)]`
-/

namespace A123450.P4154195443429230422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205578 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052431 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123450.P4154195443429230422

/-! ## A123450.P17599441438358178310

`A052431(n+1)-∑[floor(A112874(n+1)/17)]`
-/

namespace A123450.P17599441438358178310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A112874 (n + 1) : ℚ) / 17⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052431 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123450.P17599441438358178310

/-!
# A123451: Number of quasi-parity perfect graphs on n nodes.

The programs for A123451, there is no canonical definition to state claims against.
-/

/-! ## A123451.P1056970833016276327

`A052431(n+1)-A052401(2*n+1)`
-/

namespace A123451.P1056970833016276327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052431 (n + 1) - A052401 (2 * n + 1)

end

end A123451.P1056970833016276327

/-! ## A123451.P4153998622884436226

`A052431(n+1)+A014017(A020098(n))`
-/

namespace A123451.P4153998622884436226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052431 (n + 1) + A014017 (A020098 n).toNat

end

end A123451.P4153998622884436226

/-! ## A123451.P6070035759970036559

`A020725(A052431(n+1))-A045995(n)`
-/

namespace A123451.P6070035759970036559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A052431 (n + 1)).toNat - A045995 n

end

end A123451.P6070035759970036559

/-! ## A123451.P3532369740839839956

`A052431(n+1)-A070109(A000142(n))`
-/

namespace A123451.P3532369740839839956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052431 (n + 1) - A070109 (A000142 n).toNat

end

end A123451.P3532369740839839956

/-!
# A123453: Number of skeletal perfect graphs on n nodes.

The programs for A123453, there is no canonical definition to state claims against.
-/

/-! ## A123453.P12250032264204969791

`A123406(n+1)+A086010(A000258(n))`
-/

namespace A123453.P12250032264204969791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123406 (n + 1) + A086010 (A000258 n).toNat

end

end A123453.P12250032264204969791

/-! ## A123453.P7029613713665152676

`A123406(n+1)+A118135(A001006(n))`
-/

namespace A123453.P7029613713665152676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123406 (n + 1) + A118135 (A001006 n).toNat

end

end A123453.P7029613713665152676

/-!
# A123454: Number of slender perfect graphs on n nodes.

The programs for A123454, there is no canonical definition to state claims against.
-/

/-! ## A123454.P1611961104513567610

`A052431(n+1)-A184944(A127601(n))`
-/

namespace A123454.P1611961104513567610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052431 (n + 1) - A184944 (A127601 n).toNat

end

end A123454.P1611961104513567610

/-! ## A123454.P13762219618975443505

`A052431(n+1)-A184944(A300660(n))`
-/

namespace A123454.P13762219618975443505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052431 (n + 1) - A184944 (A300660 n).toNat

end

end A123454.P13762219618975443505

/-! ## A123454.P17460583446041806712

`A052431(n+1)-A184944(A127602(n+1))`
-/

namespace A123454.P17460583446041806712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052431 (n + 1) - A184944 (A127602 (n + 1)).toNat

end

end A123454.P17460583446041806712

/-!
# A123456: Ludwig van Beethoven, Bagatelle No. 25, "Für Elise".

The programs for A123456, there is no canonical definition to state claims against.
-/

/-! ## A123456.P2158430759217589283

`A144488(n+1)-20`
-/

namespace A123456.P2158430759217589283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144488 (n + 1) - 20

end

end A123456.P2158430759217589283

/-! ## A123456.P15906153027962065927

`A023462(A144488(n+1))`
-/

namespace A123456.P15906153027962065927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023462 (A144488 (n + 1)).toNat

end

end A123456.P15906153027962065927

/-!
# A123457: Number of snap perfect graphs on n nodes.

The programs for A123457, there is no canonical definition to state claims against.
-/

/-! ## A123457.P4217202843723959240

`A028310(A123455(n+1)-A293087(n+1))`
-/

namespace A123457.P4217202843723959240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A123455 (n + 1) - A293087 (n + 1)).toNat

end

end A123457.P4217202843723959240

/-! ## A123457.P1774976581125604353

`A028310(A123461(n+1)-A293087(n+1))`
-/

namespace A123457.P1774976581125604353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A123461 (n + 1) - A293087 (n + 1)).toNat

end

end A123457.P1774976581125604353

/-! ## A123457.P15021909232734320191

`A123455(A007094(n)+1)-A197354(A052415(n+1))`
-/

namespace A123457.P15021909232734320191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123455 (A007094 n + 1).toNat - A197354 (A052415 (n + 1)).toNat

end

end A123457.P15021909232734320191

/-! ## A123457.P10766043887192418824

`A123461(A007094(n)+1)-A197354(A052415(n+1))`
-/

namespace A123457.P10766043887192418824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123461 (A007094 n + 1).toNat - A197354 (A052415 (n + 1)).toNat

end

end A123457.P10766043887192418824

/-!
# A123459: Number of strict opposition perfect graphs on n nodes.

The programs for A123459, there is no canonical definition to state claims against.
-/

/-! ## A123459.P17124583279041799601

`A351157(n+1)+A025466(A016121(n))`
-/

namespace A123459.P17124583279041799601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351157 (n + 1) + A025466 (A016121 n).toNat

end

end A123459.P17124583279041799601

/-! ## A123459.P1750720568525711181

`A351157(n+1)+A184964(A000332(n))`
-/

namespace A123459.P1750720568525711181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351157 (n + 1) + A184964 (A000332 n).toNat

end

end A123459.P1750720568525711181

/-! ## A123459.P1712517506920154786

`A351157(n+1)+A086071(A181074(n))`
-/

namespace A123459.P1712517506920154786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351157 (n + 1) + A086071 (A181074 n).toNat

end

end A123459.P1712517506920154786

/-!
# A123460: Number of strict quasi-parity perfect graphs on n nodes.

The programs for A123460, there is no canonical definition to state claims against.
-/

/-! ## A123460.P10536762528995253557

`A123446(n+1)+A107846(n!)`
-/

namespace A123460.P10536762528995253557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123446 (n + 1) + A107846 (Nat.factorial n)

end

end A123460.P10536762528995253557

/-! ## A123460.P14379704327814541272

`A178798(ceil(2^(n-1)))+A123407(n+1)`
-/

namespace A123460.P14379704327814541272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178798 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat + A123407 (n + 1)

end

end A123460.P14379704327814541272

/-! ## A123460.P16302720577072131223

`A178798(ceil(2^(n-1)))+A123446(n+1)`
-/

namespace A123460.P16302720577072131223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178798 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat + A123446 (n + 1)

end

end A123460.P16302720577072131223

/-! ## A123460.P5702426523807839635

`A185284(round(2^(n-2)))+A123446(n+1)`
-/

namespace A123460.P5702426523807839635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - 2 : ℤ))).toNat + A123446 (n + 1)

end

end A123460.P5702426523807839635

/-!
# A123461: Number of strongly perfect perfect graphs on n nodes.

The programs for A123461, there is no canonical definition to state claims against.
-/

/-! ## A123461.P17000268561328083428

`or(A064834(A123444(n+1)), A123447(n+1))`
-/

namespace A123461.P17000268561328083428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A064834 (A123444 (n + 1)).toNat) (A123447 (n + 1))

end

end A123461.P17000268561328083428

/-! ## A123461.P11196037737330453943

`or(A123447(n+1), A301295(A123418(n+1)))`
-/

namespace A123461.P11196037737330453943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A123447 (n + 1)) (A301295 (A123418 (n + 1)).toNat)

end

end A123461.P11196037737330453943

/-!
# A123462: Number of 3-overlap bipartite perfect graphs on n nodes.

The programs for A123462, there is no canonical definition to state claims against.
-/

/-! ## A123462.P16628291935727478472

`∑[or(n, A226762((n+1)!))]`
-/

namespace A123462.P16628291935727478472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A226762 (Nat.factorial (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123462.P16628291935727478472

/-! ## A123462.P5060520729751155603

`∑[or(n, ∑[A101205(n+1)])]`
-/

namespace A123462.P5060520729751155603
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101205 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123462.P5060520729751155603

/-!
# A123463: Number of 3-overlap triangle-free perfect graphs on n nodes.

The programs for A123463, there is no canonical definition to state claims against.
-/

/-! ## A123463.P587467855850464275

`round(sqrt(A324166(2*n+1))+n)`
-/

namespace A123463.P587467855850464275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A324166 (2 * n + 1) : ℝ) + (n : ℝ))

end

end A123463.P587467855850464275

/-! ## A123463.P14140832823009658725

`A193921(∑[and(1, n)^n+n²]+1)`
-/

namespace A123463.P14140832823009658725
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n ^ n + n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193921 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A123463.P14140832823009658725

/-!
# A123466: Write the positive integer n in binary. Subdivide the binary n into runs each consisting entirely of 0's or of 1's, where the runs alternate between those of 1's and those of 0's. The sequence gives those numbers n such that there is at least one run of 1's of the same length as at least one run of 0's.

The programs for A123466, there is no canonical definition to state claims against.
-/

/-! ## A123466.P6854090427856853970

`lt[A165413(n+1), A297770(n+1)]+1`
-/

namespace A123466.P6854090427856853970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165413 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297770 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A123466.P6854090427856853970

/-! ## A123466.P5891272697551962979

`∪[A090050(n+1), A144793(n+1)]`
-/

namespace A123466.P5891272697551962979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090050 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144793 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A123466.P5891272697551962979

/-! ## A123466.P5736389481715360717

`lt[0, A373954(xor(n, floor(n/2)))]`
-/

namespace A123466.P5736389481715360717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373954 (Int.xor (n : ℤ) ⌊(n : ℚ) / 2⌋).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A123466.P5736389481715360717

/-! ## A123466.P4078476839709587600

`lt[1, A333381(xor(n, floor(n/2)))]`
-/

namespace A123466.P4078476839709587600
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333381 (Int.xor (n : ℤ) ⌊(n : ℚ) / 2⌋).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A123466.P4078476839709587600

/-! ## A123466.P16577868785454951632

`lt[1, A353854(xor(n, floor(n/2)))]`
-/

namespace A123466.P16577868785454951632
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353854 (Int.xor (n : ℤ) ⌊(n : ℚ) / 2⌋).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A123466.P16577868785454951632

/-!
# A123467: Number of trivially-perfect graphs on n nodes.

The programs for A123467, there is no canonical definition to state claims against.
-/

/-! ## A123467.P11668812997276252121

`A000081(n+2)`
-/

namespace A123467.P11668812997276252121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000081 (n + 2)

end

end A123467.P11668812997276252121

/-! ## A123467.P11257567116706612533

`Δ[A087803(n+1)]`
-/

namespace A123467.P11257567116706612533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087803 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A123467.P11257567116706612533

/-! ## A123467.P17347124714705469417

`record[A038001(n+1)]`
-/

namespace A123467.P17347124714705469417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038001 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A123467.P17347124714705469417

/-! ## A123467.P7254783727113368628

`A038001(2*n+3)`
-/

namespace A123467.P7254783727113368628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038001 (2 * n + 3)

end

end A123467.P7254783727113368628

/-! ## A123467.P9448984997108066153

`record[A000081(abs(1-n))]`
-/

namespace A123467.P9448984997108066153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000081 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A123467.P9448984997108066153

/-! ## A123467.P623474702807465426

`∑[A174145(n+1)]+1`
-/

namespace A123467.P623474702807465426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174145 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A123467.P623474702807465426

/-! ## A123467.P1120165660805127692

`Δ[A255170(n+1)]+1`
-/

namespace A123467.P1120165660805127692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255170 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A123467.P1120165660805127692

/-! ## A123467.P6231863010778120846

`record[xor(C(n, n²), A000081(n))]`
-/

namespace A123467.P6231863010778120846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (Nat.choose n (n ^ 2) : ℤ) (A000081 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A123467.P6231863010778120846

/-! ## A123467.P3707281306345476695

`∑[A174145(A028310(n)+1)]`
-/

namespace A123467.P3707281306345476695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174145 (A028310 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123467.P3707281306345476695

/-! ## A123467.P82322251806465468

`A027416(n+2)+A027415(n+2)`
-/

namespace A123467.P82322251806465468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027416 (n + 2) + A027415 (n + 2)

end

end A123467.P82322251806465468

/-! ## A123467.P9109545216468376454

`A087803(n+2)-A087803(n+1)`
-/

namespace A123467.P9109545216468376454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087803 (n + 2) - A087803 (n + 1)

end

end A123467.P9109545216468376454

/-! ## A123467.P1583917097846588961

`A222380(n+2)+A222379(n+2)`
-/

namespace A123467.P1583917097846588961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222380 (n + 2) + A222379 (n + 2)

end

end A123467.P1583917097846588961

/-! ## A123467.P2576116947026961983

`A217420(n+3)+A000055(n+2)`
-/

namespace A123467.P2576116947026961983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217420 (n + 3) + A000055 (n + 2)

end

end A123467.P2576116947026961983

/-! ## A123467.P1339013421187888920

`A244455(n+2)+A001678(n+3)`
-/

namespace A123467.P1339013421187888920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244455 (n + 2) + A001678 (n + 3)

end

end A123467.P1339013421187888920

/-! ## A123467.P5549174365536979748

`A002861(n+2)-A002862(n+2)`
-/

namespace A123467.P5549174365536979748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002861 (n + 2) - A002862 (n + 2)

end

end A123467.P5549174365536979748

/-! ## A123467.P11070236942403840216

`A124682(n+2)-A002861(n+2)`
-/

namespace A123467.P11070236942403840216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124682 (n + 2) - A002861 (n + 2)

end

end A123467.P11070236942403840216

/-! ## A123467.P5212252979038001635

`A095350(n+2)/(n+1)`
-/

namespace A123467.P5212252979038001635
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A095350 (n + 2) : ℚ) / (n + 1 : ℚ)

end

end A123467.P5212252979038001635

/-! ## A123467.P18074313595942428292

`A055544(n+2)/(n+2)`
-/

namespace A123467.P18074313595942428292
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055544 (n + 2) : ℚ) / (n + 2 : ℚ)

end

end A123467.P18074313595942428292

/-! ## A123467.P5518772101375276867

`A095341(n+3)/(n+3)`
-/

namespace A123467.P5518772101375276867
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A095341 (n + 3) : ℚ) / (n + 3 : ℚ)

end

end A123467.P5518772101375276867

/-! ## A123467.P2883956805985173009

`A000107(n+2)-A000243(n+2)`
-/

namespace A123467.P2883956805985173009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000107 (n + 2) - A000243 (n + 2)

end

end A123467.P2883956805985173009

/-!
# A123468: Number of 2-overlap bipartite perfect graphs on n nodes.

The programs for A123468, there is no canonical definition to state claims against.
-/

/-! ## A123468.P895908855116034272

`A074712(∏[∑[n]+1])`
-/

namespace A123468.P895908855116034272
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074712 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A123468.P895908855116034272

/-! ## A123468.P9983154170112278775

`∑[Δ[A139555(n!)]+1]`
-/

namespace A123468.P9983154170112278775
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139555 (Nat.factorial n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123468.P9983154170112278775

/-!
# A123469: Number of 2-overlap triangle-free perfect graphs on n nodes.

The programs for A123469, there is no canonical definition to state claims against.
-/

/-! ## A123469.P17245508659376441167

`A123468(n+1)+A000086(A322440(3*(n+1)))`
-/

namespace A123469.P17245508659376441167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123468 (n + 1) + A000086 (A322440 (3 * (n + 1))).toNat

end

end A123469.P17245508659376441167

/-! ## A123469.P10920995452223363374

`A241953(A026778(n))`
-/

namespace A123469.P10920995452223363374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241953 (A026778 n).toNat

end

end A123469.P10920995452223363374

/-!
# A123470: Number of 2-split Berge perfect graphs on n nodes.

The programs for A123470, there is no canonical definition to state claims against.
-/

/-! ## A123470.P4928017185153037567

`A052431(n+1)-A080791(A184954(n))`
-/

namespace A123470.P4928017185153037567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052431 (n + 1) - A080791 (A184954 n).toNat

end

end A123470.P4928017185153037567

/-! ## A123470.P14734476453783386541

`A052431(n+1)-A325135(A120831(n+1))`
-/

namespace A123470.P14734476453783386541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052431 (n + 1) - A325135 (A120831 (n + 1)).toNat

end

end A123470.P14734476453783386541

/-!
# A123471: Number of unimodular perfect graphs on n nodes.

The programs for A123471, there is no canonical definition to state claims against.
-/

/-! ## A123471.P4189754018001415432

`A189574(A341192(n+3)+n!*∑[1/n!])`
-/

namespace A123471.P4189754018001415432
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (Nat.factorial n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189574 (SequenceMachineLib.roundAway ((A341192 (n + 3) : ℚ) + (Nat.factorial n : ℚ) * (∑ j ∈ Finset.range (n + 1), f1 j))).toNat

end

end A123471.P4189754018001415432

/-! ## A123471.P2036806652221862974

`A088462(A000522(n)+A000096(n))`
-/

namespace A123471.P2036806652221862974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088462 (A000522 n + A000096 n).toNat

end

end A123471.P2036806652221862974

/-! ## A123471.P303377429909300384

`A169611(A108490(n))+A108492(n)`
-/

namespace A123471.P303377429909300384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169611 (A108490 n).toNat + A108492 n

end

end A123471.P303377429909300384

/-!
# A123472: Number of weakly triangulated simple graphs on n unlabeled nodes.

The programs for A123472, there is no canonical definition to state claims against.
-/

/-! ## A123472.P13224414315996822152

`A123409(∑[A078495(n)²])`
-/

namespace A123472.P13224414315996822152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078495 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123409 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A123472.P13224414315996822152

/-! ## A123472.P14894705954424972436

`A123409(A078495(n)²+n)`
-/

namespace A123472.P14894705954424972436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123409 (A078495 n ^ 2 + (n : ℤ)).toNat

end

end A123472.P14894705954424972436

/-! ## A123472.P17206731290610266351

`A123409((n+1)*A078495(n))`
-/

namespace A123472.P17206731290610266351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123409 ((n + 1 : ℤ) * A078495 n).toNat

end

end A123472.P17206731290610266351

/-!
# A123473: Number of wing triangulated perfect graphs on n nodes.

The programs for A123473, there is no canonical definition to state claims against.
-/

/-! ## A123473.P10529403745017035425

`A069288(2*n+3)+∑[A195177(A150663(n)-1+n)]`
-/

namespace A123473.P10529403745017035425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195177 (A150663 n - 1 + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069288 (2 * n + 3) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123473.P10529403745017035425

/-! ## A123473.P14326469533971857500

`A018431(∑[n]+1)+char[5]`
-/

namespace A123473.P14326469533971857500
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018431 (∑ j ∈ Finset.range (n + 1), f1 j + 1) + ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A123473.P14326469533971857500

/-!
# A123475: Product of the primitive roots of prime(n).

The programs for A123475, there is no canonical definition to state claims against.
-/

/-! ## A123475.P15175167477100322980

`A382221(A000040(n+1))`
-/

namespace A123475.P15175167477100322980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382221 (A000040 (n + 1)).toNat

end

end A123475.P15175167477100322980

/-! ## A123475.P3902753083385209349

`A382221(A006005(n+1))`
-/

namespace A123475.P3902753083385209349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382221 (A006005 (n + 1)).toNat

end

end A123475.P3902753083385209349

/-! ## A123475.P3734044613457392532

`A382221(A049551(n+1))`
-/

namespace A123475.P3734044613457392532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382221 (A049551 (n + 1)).toNat

end

end A123475.P3734044613457392532

/-! ## A123475.P17984856662827949241

`A382221(A049569(n+1))`
-/

namespace A123475.P17984856662827949241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382221 (A049569 (n + 1)).toNat

end

end A123475.P17984856662827949241

/-! ## A123475.P15589077762859029012

`A382221(A050260(n+1))`
-/

namespace A123475.P15589077762859029012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382221 (A050260 (n + 1)).toNat

end

end A123475.P15589077762859029012

/-!
# A123476: a(n) = (n!)^2/phi(n!), where phi is Euler's totient function.

The programs for A123476, the canonical program `A123476.P7575150719699719929` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123476 has offset 1).

The definition of A123476 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A373319, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A123476.P7575150719699719929

`A373319((n+1)!)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A123476

/-- `A373319((n+1)!)` -/
def P7575150719699719929.Spec : Prop :=
  ∀ n, P7575150719699719929.a n = A123476 (n + 1)

theorem P7575150719699719929.correct : P7575150719699719929.Spec := by
  intro n
  simp only [A123476, Nat.add_sub_cancel]

end A123476

/-! ## A123476.P9194745089632070602

`∏[(n+1)²/A014684(n+1)]`
-/

namespace A123476.P9194745089632070602
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℚ) / (A014684 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A123476.P9194745089632070602

namespace A123476

/-- `∏[(n+1)²/A014684(n+1)]` -/
def P9194745089632070602.Spec : Prop :=
  ∀ n, P9194745089632070602.a n = (A123476 (n + 1) : ℚ)

end A123476

/-! ## A123476.P1255631184628481459

`∏[(n+1)²/(A005171(n+1)+n)]`
-/

namespace A123476.P1255631184628481459
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℚ) / (A005171 (n + 1) + (n : ℤ) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A123476.P1255631184628481459

namespace A123476

/-- `∏[(n+1)²/(A005171(n+1)+n)]` -/
def P1255631184628481459.Spec : Prop :=
  ∀ n, P1255631184628481459.a n = (A123476 (n + 1) : ℚ)

end A123476

/-! ## A123476.P376846751833446252

`A000142(n+1)/A048855(n+1)*A000142(n+1)`
-/

namespace A123476.P376846751833446252
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 (n + 1) : ℚ) / (A048855 (n + 1) : ℚ) * (A000142 (n + 1) : ℚ)

end

end A123476.P376846751833446252

namespace A123476

/-- `A000142(n+1)/A048855(n+1)*A000142(n+1)` -/
def P376846751833446252.Spec : Prop :=
  ∀ n, P376846751833446252.a n = (A123476 (n + 1) : ℚ)

end A123476

/-! ## A123476.P13434301452466054245

`A000142(n+1)/A076359(n+1)*A076358(n+1)`
-/

namespace A123476.P13434301452466054245
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 (n + 1) : ℚ) / (A076359 (n + 1) : ℚ) * (A076358 (n + 1) : ℚ)

end

end A123476.P13434301452466054245

namespace A123476

/-- `A000142(n+1)/A076359(n+1)*A076358(n+1)` -/
def P13434301452466054245.Spec : Prop :=
  ∀ n, P13434301452466054245.a n = (A123476 (n + 1) : ℚ)

end A123476

/-! ## A123476.P11980160852289617614

`A000142(n+1)/A217863(n+1)*A003418(n+1)`
-/

namespace A123476.P11980160852289617614
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 (n + 1) : ℚ) / (A217863 (n + 1) : ℚ) * (A003418 (n + 1) : ℚ)

end

end A123476.P11980160852289617614

namespace A123476

/-- `A000142(n+1)/A217863(n+1)*A003418(n+1)` -/
def P11980160852289617614.Spec : Prop :=
  ∀ n, P11980160852289617614.a n = (A123476 (n + 1) : ℚ)

end A123476

/-!
# A123477: Expansion of (1 - b(q)) / 3 in powers of q where b(q) is a cubic AGM theta function.

The programs for A123477, the canonical program `A123477.P8743366837065388473` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123477 has offset 1).

The definition of A123477 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1082 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A123477.P11470584708187797065

`-(A005928(n+1)/3)`
-/

namespace A123477.P11470584708187797065
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  -((A005928 (n + 1) : ℚ) / 3)

end

end A123477.P11470584708187797065

namespace A123477

/-- `-(A005928(n+1)/3)` -/
def P11470584708187797065.Spec : Prop :=
  ∀ n, P11470584708187797065.a n = (A123477 (n + 1) : ℚ)

end A123477

/-! ## A123477.P18367350603234766353

`A097109(A065883(n+1))`
-/

namespace A123477.P18367350603234766353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097109 (A065883 (n + 1)).toNat

end

end A123477.P18367350603234766353

namespace A123477

/-- `A097109(A065883(n+1))` -/
def P18367350603234766353.Spec : Prop :=
  ∀ n, P18367350603234766353.a n = A123477 (n + 1)

end A123477

/-! ## A123477.P5691456577415807526

`A057078(n)*A113063(n+1)`
-/

namespace A123477.P5691456577415807526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057078 n * A113063 (n + 1)

end

end A123477.P5691456577415807526

namespace A123477

/-- `A057078(n)*A113063(n+1)` -/
def P5691456577415807526.Spec : Prop :=
  ∀ n, P5691456577415807526.a n = A123477 (n + 1)

end A123477

/-! ## A123477.P17884616870153941364

`A113063(n+1)*A131561(n)`
-/

namespace A123477.P17884616870153941364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113063 (n + 1) * A131561 n

end

end A123477.P17884616870153941364

namespace A123477

/-- `A113063(n+1)*A131561(n)` -/
def P17884616870153941364.Spec : Prop :=
  ∀ n, P17884616870153941364.a n = A123477 (n + 1)

end A123477

/-! ## A123477.P4897334713040634821

`A113063(n+1)*A259022(n)`
-/

namespace A123477.P4897334713040634821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113063 (n + 1) * A259022 n

end

end A123477.P4897334713040634821

namespace A123477

/-- `A113063(n+1)*A259022(n)` -/
def P4897334713040634821.Spec : Prop :=
  ∀ n, P4897334713040634821.a n = A123477 (n + 1)

end A123477

/-! ## A123477.P2516198046417733731

`A002324(n+1)*A061347(n+1)`
-/

namespace A123477.P2516198046417733731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002324 (n + 1) * A061347 (n + 1)

end

end A123477.P2516198046417733731

namespace A123477

/-- `A002324(n+1)*A061347(n+1)` -/
def P2516198046417733731.Spec : Prop :=
  ∀ n, P2516198046417733731.a n = A123477 (n + 1)

end A123477

/-! ## A123477.P8743366837065388473

`A035263(n+1)*A112848(n+1)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A123477

/-- `A035263(n+1)*A112848(n+1)` -/
def P8743366837065388473.Spec : Prop :=
  ∀ n, P8743366837065388473.a n = A123477 (n + 1)

theorem P8743366837065388473.correct : P8743366837065388473.Spec := by
  intro n
  simp only [A123477, Nat.add_sub_cancel]

end A123477

/-! ## A123477.P17626002700926834127

`A112848(n+1)*A137893(n+1)`
-/

namespace A123477.P17626002700926834127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112848 (n + 1) * A137893 (n + 1)

end

end A123477.P17626002700926834127

namespace A123477

/-- `A112848(n+1)*A137893(n+1)` -/
def P17626002700926834127.Spec : Prop :=
  ∀ n, P17626002700926834127.a n = A123477 (n + 1)

end A123477

/-! ## A123477.P16093042215065200649

`(2-A130196(n)²)*A002324(n+1)`
-/

namespace A123477.P16093042215065200649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A130196 n ^ 2) * A002324 (n + 1)

end

end A123477.P16093042215065200649

namespace A123477

/-- `(2-A130196(n)²)*A002324(n+1)` -/
def P16093042215065200649.Spec : Prop :=
  ∀ n, P16093042215065200649.a n = A123477 (n + 1)

end A123477

/-! ## A123477.P12475532448350095207

`(2-A130784(n)²)*A002324(n+1)`
-/

namespace A123477.P12475532448350095207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A130784 n ^ 2) * A002324 (n + 1)

end

end A123477.P12475532448350095207

namespace A123477

/-- `(2-A130784(n)²)*A002324(n+1)` -/
def P12475532448350095207.Spec : Prop :=
  ∀ n, P12475532448350095207.a n = A123477 (n + 1)

end A123477

/-! ## A123477.P2736557748819836644

`(2-A153727(n)²)*A002324(n+1)`
-/

namespace A123477.P2736557748819836644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A153727 n ^ 2) * A002324 (n + 1)

end

end A123477.P2736557748819836644

namespace A123477

/-- `(2-A153727(n)²)*A002324(n+1)` -/
def P2736557748819836644.Spec : Prop :=
  ∀ n, P2736557748819836644.a n = A123477 (n + 1)

end A123477

/-! ## A123477.P13758903375617528756

`(2-A177702(n)²)*A002324(n+1)`
-/

namespace A123477.P13758903375617528756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A177702 n ^ 2) * A002324 (n + 1)

end

end A123477.P13758903375617528756

namespace A123477

/-- `(2-A177702(n)²)*A002324(n+1)` -/
def P13758903375617528756.Spec : Prop :=
  ∀ n, P13758903375617528756.a n = A123477 (n + 1)

end A123477

/-! ## A123477.P16691251072686418402

`(2-A280048(n)²)*A002324(n+1)`
-/

namespace A123477.P16691251072686418402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A280048 n ^ 2) * A002324 (n + 1)

end

end A123477.P16691251072686418402

namespace A123477

/-- `(2-A280048(n)²)*A002324(n+1)` -/
def P16691251072686418402.Spec : Prop :=
  ∀ n, P16691251072686418402.a n = A123477 (n + 1)

end A123477

/-! ## A123477.P4212955423696709444

`(3*A049347(n)²-2)*A002324(n+1)`
-/

namespace A123477.P4212955423696709444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * A049347 n ^ 2 - 2) * A002324 (n + 1)

end

end A123477.P4212955423696709444

namespace A123477

/-- `(3*A049347(n)²-2)*A002324(n+1)` -/
def P4212955423696709444.Spec : Prop :=
  ∀ n, P4212955423696709444.a n = A123477 (n + 1)

end A123477

/-! ## A123477.P7419465462654291884

`A097109(n+1)/(2-A287765(2*n+1))`
-/

namespace A123477.P7419465462654291884
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A097109 (n + 1) : ℚ) / (2 - A287765 (2 * n + 1) : ℚ)

end

end A123477.P7419465462654291884

namespace A123477

/-- `A097109(n+1)/(2-A287765(2*n+1))` -/
def P7419465462654291884.Spec : Prop :=
  ∀ n, P7419465462654291884.a n = (A123477 (n + 1) : ℚ)

end A123477

/-! ## A123477.P8445414921671061096

`∑{d}[n+1, A112848(#)*A209229((n+1)/#)]`
-/

namespace A123477.P8445414921671061096
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A112848 d * A209229 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A123477.P8445414921671061096

namespace A123477

/-- `∑{d}[n+1, A112848(#)*A209229((n+1)/#)]` -/
def P8445414921671061096.Spec : Prop :=
  ∀ n, P8445414921671061096.a n = A123477 (n + 1)

end A123477

/-! ## A123477.P6963503184425629186

`∑{d}[n+1, A049347(#-1)*A061347((n+1)/#)]`
-/

namespace A123477.P6963503184425629186
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A049347 (d - 1) * A061347 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A123477.P6963503184425629186

namespace A123477

/-- `∑{d}[n+1, A049347(#-1)*A061347((n+1)/#)]` -/
def P6963503184425629186.Spec : Prop :=
  ∀ n, P6963503184425629186.a n = A123477 (n + 1)

end A123477

/-! ## A123477.P10554549807372663291

`∑{d}[n+1, A036987(#-1)*A112848((n+1)/#)]`
-/

namespace A123477.P10554549807372663291
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A036987 (d - 1) * A112848 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A123477.P10554549807372663291

namespace A123477

/-- `∑{d}[n+1, A036987(#-1)*A112848((n+1)/#)]` -/
def P10554549807372663291.Spec : Prop :=
  ∀ n, P10554549807372663291.a n = A123477 (n + 1)

end A123477

/-! ## A123477.P9749182841583353991

`A033685(n+1)-A113063(A008486(n+1))`
-/

namespace A123477.P9749182841583353991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033685 (n + 1) - A113063 (A008486 (n + 1)).toNat

end

end A123477.P9749182841583353991

namespace A123477

/-- `A033685(n+1)-A113063(A008486(n+1))` -/
def P9749182841583353991.Spec : Prop :=
  ∀ n, P9749182841583353991.a n = A123477 (n + 1)

end A123477

/-! ## A123477.P730218441865700554

`(A049347(n)-A010872(n))*A002324(n+1)`
-/

namespace A123477.P730218441865700554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A049347 n - A010872 n) * A002324 (n + 1)

end

end A123477.P730218441865700554

namespace A123477

/-- `(A049347(n)-A010872(n))*A002324(n+1)` -/
def P730218441865700554.Spec : Prop :=
  ∀ n, P730218441865700554.a n = A123477 (n + 1)

end A123477

/-!
# A123478: Coefficients of series giving the best rational approximations to sqrt(7).

The programs for A123478, there is no canonical definition to state claims against.
-/

/-! ## A123478.P2725364257163326457

`∑[A001080(2*(n+1))]`
-/

namespace A123478.P2725364257163326457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001080 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123478.P2725364257163326457

/-! ## A123478.P3387857223671818510

`∑[A084069(4*(n+1))]`
-/

namespace A123478.P3387857223671818510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084069 (4 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123478.P3387857223671818510

/-! ## A123478.P11361735975151063497

`A001080(n+2)*A077412(n)`
-/

namespace A123478.P11361735975151063497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001080 (n + 2) * A077412 n

end

end A123478.P11361735975151063497

/-! ## A123478.P10921733554855334593

`∑[A259596(A016825(A005408(n)))]`
-/

namespace A123478.P10921733554855334593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259596 (A016825 (A005408 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123478.P10921733554855334593

/-! ## A123478.P15591530543846915707

`A159679(n+2)+A077412(n+1)*A077412(n)`
-/

namespace A123478.P15591530543846915707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159679 (n + 2) + A077412 (n + 1) * A077412 n

end

end A123478.P15591530543846915707

/-!
# A123479: Coefficients of series giving the best rational approximations to sqrt(6).

The programs for A123479, there is no canonical definition to state claims against.
-/

/-! ## A123479.P5639444646659904486

`∑[record[98*a(n-1)-a(n-2)]]` with `a(0)=20, a(1)=0, a(2)=20`
-/

namespace A123479.P5639444646659904486
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [20, 0, 20] fun n f2 =>
  98 * f2 (n - 1) - f2 (n - 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123479.P5639444646659904486

/-! ## A123479.P6949545896136554134

`∑[A072818(n+1)]`
-/

namespace A123479.P6949545896136554134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123479.P6949545896136554134

/-! ## A123479.P6724051232444412978

`2*A200993(n+1)`
-/

namespace A123479.P6724051232444412978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A200993 (n + 1)

end

end A123479.P6724051232444412978

/-! ## A123479.P11223830812932234934

`A045502(n+1)/2`
-/

namespace A123479.P11223830812932234934
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045502 (n + 1) : ℚ) / 2

end

end A123479.P11223830812932234934

/-! ## A123479.P1049433449966396128

`4*A352181(n+1)`
-/

namespace A123479.P1049433449966396128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A352181 (n + 1)

end

end A123479.P1049433449966396128

/-! ## A123479.P12256914792461139553

`∑[A001078(2*(n+1))]`
-/

namespace A123479.P12256914792461139553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001078 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123479.P12256914792461139553

/-! ## A123479.P5387618802180405715

`∑[2*A168520(n+2)]`
-/

namespace A123479.P5387618802180405715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A168520 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123479.P5387618802180405715

/-! ## A123479.P1869838773018872399

`2*C(A054318(n+2), 2)`
-/

namespace A123479.P1869838773018872399
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.choose (A054318 (n + 2)).toNat 2

end

end A123479.P1869838773018872399

/-! ## A123479.P4013862776264307798

`floor((A138288(n+1)/2)²)`
-/

namespace A123479.P4013862776264307798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((A138288 (n + 1) : ℚ) / 2) ^ 2⌋

end

end A123479.P4013862776264307798

/-! ## A123479.P7736290310214771193

`(A054320(n+1)²-1)/6`
-/

namespace A123479.P7736290310214771193
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054320 (n + 1) ^ 2 - 1 : ℚ) / 6

end

end A123479.P7736290310214771193

/-!
# A123480: Coefficients of the series giving the best rational approximations to sqrt(3).

The programs for A123480, the canonical program `A123480.P12114428298635189869` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123480 has offset 1).

The definition of A123480 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A123480.P8765331185317968141

`2*A217855(n+1)`
-/

namespace A123480.P8765331185317968141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A217855 (n + 1)

end

end A123480.P8765331185317968141

namespace A123480

/-- `2*A217855(n+1)` -/
def P8765331185317968141.Spec : Prop :=
  ∀ n, P8765331185317968141.a n = A123480 (n + 1)

end A123480

/-! ## A123480.P12114428298635189869

`4*A076139(n+1)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A123480

/-- `4*A076139(n+1)` -/
def P12114428298635189869.Spec : Prop :=
  ∀ n, P12114428298635189869.a n = A123480 (n + 1)

theorem P12114428298635189869.correct : P12114428298635189869.Spec := by
  intro n
  simp only [A123480, Nat.add_sub_cancel]

end A123480

/-! ## A123480.P5049942603760719077

`4/3*A076140(n+1)`
-/

namespace A123480.P5049942603760719077
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) / 3 * (A076140 (n + 1) : ℚ)

end

end A123480.P5049942603760719077

namespace A123480

/-- `4/3*A076140(n+1)` -/
def P5049942603760719077.Spec : Prop :=
  ∀ n, P5049942603760719077.a n = (A123480 (n + 1) : ℚ)

end A123480

/-! ## A123480.P3727306023584199618

`A001353(n+1)*A001353(n+2)`
-/

namespace A123480.P3727306023584199618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001353 (n + 1) * A001353 (n + 2)

end

end A123480.P3727306023584199618

namespace A123480

/-- `A001353(n+1)*A001353(n+2)` -/
def P3727306023584199618.Spec : Prop :=
  ∀ n, P3727306023584199618.a n = A123480 (n + 1)

end A123480

/-! ## A123480.P10477861215505846248

`∑[ogf(4/(1-14x+x^2))]`
-/

namespace A123480.P10477861215505846248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4] [1, -14, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123480.P10477861215505846248

namespace A123480

/-- `∑[ogf(4/(1-14x+x^2))]` -/
def P10477861215505846248.Spec : Prop :=
  ∀ n, P10477861215505846248.a n = A123480 (n + 1)

end A123480

/-! ## A123480.P1082787879285160619

`ogf(4/(1-15x+15x^2-x^3))`
-/

namespace A123480.P1082787879285160619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4] [1, -15, 15, -1] n

end

end A123480.P1082787879285160619

namespace A123480

/-- `ogf(4/(1-15x+15x^2-x^3))` -/
def P1082787879285160619.Spec : Prop :=
  ∀ n, P1082787879285160619.a n = A123480 (n + 1)

end A123480

/-! ## A123480.P5985042795897903875

`floor((sqrt(3)+2)²*a(n-1))+5` with `a(0)=4`
-/

namespace A123480.P5985042795897903875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  ⌊(Real.sqrt (3 : ℝ) + 2) ^ 2 * (a (n - 1) : ℝ)⌋ + 5

end

end A123480.P5985042795897903875

namespace A123480

/-- `floor((sqrt(3)+2)²*a(n-1))+5` -/
def P5985042795897903875.Spec : Prop :=
  ∀ n, P5985042795897903875.a n = A123480 (n + 1)

end A123480

/-! ## A123480.P5028163573946102367

`record[14*a(n-1)-a(n-2)+4]` with `a(0)=4, a(1)=0`
-/

namespace A123480.P5028163573946102367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4, 0] fun n f1 =>
  14 * f1 (n - 1) - f1 (n - 2) + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A123480.P5028163573946102367

namespace A123480

/-- `record[14*a(n-1)-a(n-2)+4]` -/
def P5028163573946102367.Spec : Prop :=
  ∀ n, P5028163573946102367.a n = A123480 (n + 1)

end A123480

/-! ## A123480.P10866522608826227569

`A072335(Δ[n²])`
-/

namespace A123480.P10866522608826227569
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072335 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A123480.P10866522608826227569

namespace A123480

/-- `A072335(Δ[n²])` -/
def P10866522608826227569.Spec : Prop :=
  ∀ n, P10866522608826227569.a n = A123480 (n + 1)

end A123480

/-! ## A123480.P5318613613432230929

`∑[A010905(2*n)]`
-/

namespace A123480.P5318613613432230929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010905 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123480.P5318613613432230929

namespace A123480

/-- `∑[A010905(2*n)]` -/
def P5318613613432230929.Spec : Prop :=
  ∀ n, P5318613613432230929.a n = A123480 (n + 1)

end A123480

/-!
# A123481: Record n for the sequence A006666(n)/log(n), for n > 1; i.e., the n at which the number of steps to 1 for the halving-Collatz iteration divided by log(n) sets a new maximum.

The programs for A123481, there is no canonical definition to state claims against.
-/

/-! ## A123481.P10599777782442660872

`A248037(eq[1, A343639(n)])`
-/

namespace A123481.P10599777782442660872
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343639 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248037 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A123481.P10599777782442660872

/-! ## A123481.P14983042547573109834

`A248037(A342851(n+1)+1)`
-/

namespace A123481.P14983042547573109834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248037 (A342851 (n + 1) + 1).toNat

end

end A123481.P14983042547573109834

/-! ## A123481.P5282756642542685003

`A248037(char[A248014(n+1)]+n+1)`
-/

namespace A123481.P5282756642542685003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248014 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248037 ((if ∃ j, f1 j = (n : ℤ) then 1 else 0) + (n + 1))

end

end A123481.P5282756642542685003

/-! ## A123481.P10188844672222178264

`A248037(n+2-char[A248013(n+1)])`
-/

namespace A123481.P10188844672222178264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248013 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248037 (n + 2 - (if ∃ j, f1 j = (n : ℤ) then 1 else 0))

end

end A123481.P10188844672222178264

/-! ## A123481.P2096981965533381478

`A248037(eq[n, A351870(A028310(n))])`
-/

namespace A123481.P2096981965533381478
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351870 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248037 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A123481.P2096981965533381478

/-!
# A123482: Coefficients of the series giving the best rational approximations to sqrt(11).

The programs for A123482, there is no canonical definition to state claims against.
-/

/-! ## A123482.P8540489306158690093

`∑[A001084(2*(n+1))]`
-/

namespace A123482.P8540489306158690093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001084 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123482.P8540489306158690093

/-! ## A123482.P5888064947476396686

`∑[A041015(A004767(n))]`
-/

namespace A123482.P5888064947476396686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041015 (A004767 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123482.P5888064947476396686

/-! ## A123482.P1362107871216070309

`A001084(n+1)*A075843(n+2)`
-/

namespace A123482.P1362107871216070309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001084 (n + 1) * A075843 (n + 2)

end

end A123482.P1362107871216070309

/-!
# A123484: Expansion of eta(q)^2 * eta(q^6)^4 * eta(q^8) * eta(q^24) / (eta(q^2) * eta(q^3) * eta(q^12))^2 in powers of q.

The programs for A123484, the canonical program `A123484.P10262199691466174921` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123484 has offset 1).

The definition of A123484 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A123484.P10262199691466174921

`A035178(n+1)*A230074(n+1)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A123484

/-- `A035178(n+1)*A230074(n+1)` -/
def P10262199691466174921.Spec : Prop :=
  ∀ n, P10262199691466174921.a n = A123484 (n + 1)

theorem P10262199691466174921.correct : P10262199691466174921.Spec := by
  intro n
  simp only [A123484, Nat.add_sub_cancel]

end A123484

/-! ## A123484.P14605991013653588192

`A113447(n+1)*A230074(n+1)`
-/

namespace A123484.P14605991013653588192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113447 (n + 1) * A230074 (n + 1)

end

end A123484.P14605991013653588192

namespace A123484

/-- `A113447(n+1)*A230074(n+1)` -/
def P14605991013653588192.Spec : Prop :=
  ∀ n, P14605991013653588192.a n = A123484 (n + 1)

end A123484

/-! ## A123484.P95492216039353564

`A328479(n+1)%4*A093829(n+1)`
-/

namespace A123484.P95492216039353564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A328479 (n + 1)) 4 * A093829 (n + 1)

end

end A123484.P95492216039353564

namespace A123484

/-- `A328479(n+1)%4*A093829(n+1)` -/
def P95492216039353564.Spec : Prop :=
  ∀ n, P95492216039353564.a n = A123484 (n + 1)

end A123484

/-! ## A123484.P17074695957336694007

`∑{d}[n+1, A019590(#)*A112298((n+1)/#)]`
-/

namespace A123484.P17074695957336694007
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A019590 d * A112298 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A123484.P17074695957336694007

namespace A123484

/-- `∑{d}[n+1, A019590(#)*A112298((n+1)/#)]` -/
def P17074695957336694007.Spec : Prop :=
  ∀ n, P17074695957336694007.a n = A123484 (n + 1)

end A123484

/-! ## A123484.P1696888590296215554

`∑{d}[n+1, A137608(#)*A154955((n+1)/#)]`
-/

namespace A123484.P1696888590296215554
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A137608 d * A154955 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A123484.P1696888590296215554

namespace A123484

/-- `∑{d}[n+1, A137608(#)*A154955((n+1)/#)]` -/
def P1696888590296215554.Spec : Prop :=
  ∀ n, P1696888590296215554.a n = A123484 (n + 1)

end A123484

/-! ## A123484.P2967104193262488045

`A000035(A008833(n+1))*A122860(n+1)`
-/

namespace A123484.P2967104193262488045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A008833 (n + 1)).toNat * A122860 (n + 1)

end

end A123484.P2967104193262488045

namespace A123484

/-- `A000035(A008833(n+1))*A122860(n+1)` -/
def P2967104193262488045.Spec : Prop :=
  ∀ n, P2967104193262488045.a n = A123484 (n + 1)

end A123484

/-! ## A123484.P15232078640062867301

`A093829(n+1)*A105700(A171977(n+1))`
-/

namespace A123484.P15232078640062867301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093829 (n + 1) * A105700 (A171977 (n + 1)).toNat

end

end A123484.P15232078640062867301

namespace A123484

/-- `A093829(n+1)*A105700(A171977(n+1))` -/
def P15232078640062867301.Spec : Prop :=
  ∀ n, P15232078640062867301.a n = A123484 (n + 1)

end A123484

/-! ## A123484.P12845101284713066741

`(A136748(A106833(n+1))+A136748(n+1))/2`
-/

namespace A123484.P12845101284713066741
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A136748 (A106833 (n + 1)).toNat + A136748 (n + 1) : ℚ) / 2

end

end A123484.P12845101284713066741

namespace A123484

/-- `(A136748(A106833(n+1))+A136748(n+1))/2` -/
def P12845101284713066741.Spec : Prop :=
  ∀ n, P12845101284713066741.a n = (A123484 (n + 1) : ℚ)

end A123484

/-! ## A123484.P11586835734458315666

`A000035(A000188(n+1))*A113974(n+1)`
-/

namespace A123484.P11586835734458315666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A000188 (n + 1)).toNat * A113974 (n + 1)

end

end A123484.P11586835734458315666

namespace A123484

/-- `A000035(A000188(n+1))*A113974(n+1)` -/
def P11586835734458315666.Spec : Prop :=
  ∀ n, P11586835734458315666.a n = A123484 (n + 1)

end A123484

/-! ## A123484.P1962008242929605469

`A000035(A032742(n+1))*A113974(n+1)`
-/

namespace A123484.P1962008242929605469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A032742 (n + 1)).toNat * A113974 (n + 1)

end

end A123484.P1962008242929605469

namespace A123484

/-- `A000035(A032742(n+1))*A113974(n+1)` -/
def P1962008242929605469.Spec : Prop :=
  ∀ n, P1962008242929605469.a n = A123484 (n + 1)

end A123484

/-! ## A123484.P4641784687518742447

`A122860(n+1)%(A099087(n)+1)`
-/

namespace A123484.P4641784687518742447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A122860 (n + 1)) (A099087 n + 1)

end

end A123484.P4641784687518742447

namespace A123484

/-- `A122860(n+1)%(A099087(n)+1)` -/
def P4641784687518742447.Spec : Prop :=
  ∀ n, P4641784687518742447.a n = A123484 (n + 1)

end A123484

/-! ## A123484.P13390213200495412574

`A027383(n)%3*A093829(n+1)`
-/

namespace A123484.P13390213200495412574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A027383 n) 3 * A093829 (n + 1)

end

end A123484.P13390213200495412574

namespace A123484

/-- `A027383(n)%3*A093829(n+1)` -/
def P13390213200495412574.Spec : Prop :=
  ∀ n, P13390213200495412574.a n = A123484 (n + 1)

end A123484

/-! ## A123484.P2540363577000415890

`A113974(n+1)%A075554(n+1)`
-/

namespace A123484.P2540363577000415890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A113974 (n + 1)) (A075554 (n + 1))

end

end A123484.P2540363577000415890

namespace A123484

/-- `A113974(n+1)%A075554(n+1)` -/
def P2540363577000415890.Spec : Prop :=
  ∀ n, P2540363577000415890.a n = A123484 (n + 1)

end A123484

/-! ## A123484.P17358803353318863244

`(A136748(n+1)+A136748(A152053(n)))/2`
-/

namespace A123484.P17358803353318863244
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A136748 (n + 1) + A136748 (A152053 n).toNat : ℚ) / 2

end

end A123484.P17358803353318863244

namespace A123484

/-- `(A136748(n+1)+A136748(A152053(n)))/2` -/
def P17358803353318863244.Spec : Prop :=
  ∀ n, P17358803353318863244.a n = (A123484 (n + 1) : ℚ)

end A123484

/-!
# A123485: Number of n-node labeled trivalent (or cubic) graphs with connectivity 2.

The programs for A123485, there is no canonical definition to state claims against.
-/

/-! ## A123485.P9896362021965484913

`A094067(C(∑[n%2+1], n)+n!-floor(n!/2))`
-/

namespace A123485.P9896362021965484913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094067 ((Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) n : ℤ) + ((Nat.factorial n : ℤ) - ⌊(Nat.factorial n : ℚ) / 2⌋)).toNat

end

end A123485.P9896362021965484913

/-!
# A123486: Riordan array (1/(1-2*x), x/(1-4*x^2)).

The programs for A123486, the canonical program `A123486.P6303469310712278846` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123486 has offset 0).

The definition of A123486 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A123486.P6303469310712278846

`A046854(n)*A130321(n)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A123486

/-- `A046854(n)*A130321(n)` -/
def P6303469310712278846.Spec : Prop :=
  ∀ n, P6303469310712278846.a n = A123486 n

theorem P6303469310712278846.correct : P6303469310712278846.Spec := by
  intro n
  simp only [A123486]

end A123486

/-! ## A123486.P2148548443890581068

`abs(A066170(n)*A130321(n))`
-/

namespace A123486.P2148548443890581068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A066170 n * A130321 n|

end

end A123486.P2148548443890581068

namespace A123486

/-- `abs(A066170(n)*A130321(n))` -/
def P2148548443890581068.Spec : Prop :=
  ∀ n, P2148548443890581068.a n = A123486 n

end A123486

/-! ## A123486.P7501540063500187426

`sqrt(A262616(n))*A046854(n)`
-/

namespace A123486.P7501540063500187426
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A262616 n : ℝ) * (A046854 n : ℝ)

end

end A123486.P7501540063500187426

namespace A123486

/-- `sqrt(A262616(n))*A046854(n)` -/
def P7501540063500187426.Spec : Prop :=
  ∀ n, P7501540063500187426.a n = (A123486 n : ℝ)

end A123486

/-! ## A123486.P15592770053206849411

`2^A025581(n)*A046854(n)`
-/

namespace A123486.P15592770053206849411
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A025581 n : ℤ) * (A046854 n : ℚ)

end

end A123486.P15592770053206849411

namespace A123486

/-- `2^A025581(n)*A046854(n)` -/
def P15592770053206849411.Spec : Prop :=
  ∀ n, P15592770053206849411.a n = (A123486 n : ℚ)

end A123486

/-! ## A123486.P3629922975611172026

`A000079(A025581(n))*A046854(n)`
-/

namespace A123486.P3629922975611172026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A025581 n).toNat * A046854 n

end

end A123486.P3629922975611172026

namespace A123486

/-- `A000079(A025581(n))*A046854(n)` -/
def P3629922975611172026.Spec : Prop :=
  ∀ n, P3629922975611172026.a n = A123486 n

theorem P3629922975611172026.correct : P3629922975611172026.Spec := by
  intro n
  simp only [A123486, Nat.add_sub_cancel, A123486.P3629922975611172026.a, A123486.P6303469310712278846.a, A000079, A000079.P10855139691139572931.a, A025581, A025581.P420762180635059694.a, A046854, A046854.P6336279902607506651.a, A130321, A130321.P6740187654358347306.a, A004736, A004736.P10337537277358081527.a, A102426, A102426.P776678391830445668.a, A246694, A246694.P8696891911788978763.a, A000007, A000007.P6599383543502402472.a, A000217, A000217.P10269402890581615239.a, A002024, A002024.P11700297927830783882.a, A098925, A098925.P12998610641323261996.a, A161680, A161680.P17206074215489759881.a, A204164, A204164.P12102871025011169980.a, A209278, A209278.P2209721378979805351.a, A002260, A002260.P769748059679640451.a, A003056, A003056.P5318256527314048597.a, A092865, A092865.P9800871042429563602.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A123486

/-! ## A123486.P15953137046150233201

`A046854(n)*A059268(A061579(n))`
-/

namespace A123486.P15953137046150233201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046854 n * A059268 (A061579 n).toNat

end

end A123486.P15953137046150233201

namespace A123486

/-- `A046854(n)*A059268(A061579(n))` -/
def P15953137046150233201.Spec : Prop :=
  ∀ n, P15953137046150233201.a n = A123486 n

end A123486

/-! ## A123486.P1675170425705993440

`A011782(A004736(n+1))*A046854(n)`
-/

namespace A123486.P1675170425705993440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A004736 (n + 1)).toNat * A046854 n

end

end A123486.P1675170425705993440

namespace A123486

/-- `A011782(A004736(n+1))*A046854(n)` -/
def P1675170425705993440.Spec : Prop :=
  ∀ n, P1675170425705993440.a n = A123486 n

end A123486

/-! ## A123486.P10614354621162583513

`A046854(n)*A077957(2*A025581(n))`
-/

namespace A123486.P10614354621162583513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046854 n * A077957 (2 * A025581 n).toNat

end

end A123486.P10614354621162583513

namespace A123486

/-- `A046854(n)*A077957(2*A025581(n))` -/
def P10614354621162583513.Spec : Prop :=
  ∀ n, P10614354621162583513.a n = A123486 n

end A123486

/-! ## A123486.P6402663133974028504

`A065941(A061579(n))*A130321(n)`
-/

namespace A123486.P6402663133974028504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065941 (A061579 n).toNat * A130321 n

end

end A123486.P6402663133974028504

namespace A123486

/-- `A065941(A061579(n))*A130321(n)` -/
def P6402663133974028504.Spec : Prop :=
  ∀ n, P6402663133974028504.a n = A123486 n

end A123486

/-! ## A123486.P10101773924422146145

`Δ[A089633(n)]*A131240(n)`
-/

namespace A123486.P10101773924422146145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089633 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A131240 n

end

end A123486.P10101773924422146145

namespace A123486

/-- `Δ[A089633(n)]*A131240(n)` -/
def P10101773924422146145.Spec : Prop :=
  ∀ n, P10101773924422146145.a n = A123486 n

end A123486

/-! ## A123486.P9332169756102306097

`A131240(n)*A155038(n+1)`
-/

namespace A123486.P9332169756102306097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131240 n * A155038 (n + 1)

end

end A123486.P9332169756102306097

namespace A123486

/-- `A131240(n)*A155038(n+1)` -/
def P9332169756102306097.Spec : Prop :=
  ∀ n, P9332169756102306097.a n = A123486 n

end A123486

/-! ## A123486.P18045768573872614912

`A004001(A130321(n))*A131240(n)`
-/

namespace A123486.P18045768573872614912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004001 (A130321 n).toNat * A131240 n

end

end A123486.P18045768573872614912

namespace A123486

/-- `A004001(A130321(n))*A131240(n)` -/
def P18045768573872614912.Spec : Prop :=
  ∀ n, P18045768573872614912.a n = A123486 n

end A123486

/-!
# A123487: Smallest prime q such that (q^p-1)/(q-1) is prime, where p = prime(n); or 0 if no such prime q exists.

The programs for A123487, there is no canonical definition to state claims against.
-/

/-! ## A123487.P16065615522131191564

`A252503(p?[xor(1, n)])`
-/

namespace A123487.P16065615522131191564
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252503 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A123487.P16065615522131191564

/-! ## A123487.P6424253650084394071

`p?[∑{e}[n+1, #]*A252503(n+1)]`
-/

namespace A123487.P6424253650084394071
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p : ℕ) : ℤ) * A252503 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A123487.P6424253650084394071

/-! ## A123487.P4424617673800165583

`A252503(Δ[A007504(n)])`
-/

namespace A123487.P4424617673800165583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252503 (f1 (n + 1) - f1 n).toNat

end

end A123487.P4424617673800165583

/-! ## A123487.P17487851463003504825

`A252503(A000040(n+1))`
-/

namespace A123487.P17487851463003504825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252503 (A000040 (n + 1)).toNat

end

end A123487.P17487851463003504825

/-! ## A123487.P486502587679734546

`A252503(A008578(n+2))`
-/

namespace A123487.P486502587679734546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252503 (A008578 (n + 2)).toNat

end

end A123487.P486502587679734546

/-! ## A123487.P1116575470375858989

`A252503(A116974(n+2))`
-/

namespace A123487.P1116575470375858989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252503 (A116974 (n + 2)).toNat

end

end A123487.P1116575470375858989

/-! ## A123487.P4270342121666920471

`A252503(A161428(n+2))`
-/

namespace A123487.P4270342121666920471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252503 (A161428 (n + 2)).toNat

end

end A123487.P4270342121666920471

/-! ## A123487.P5343601171312359183

`A252503(A162786(n+2))`
-/

namespace A123487.P5343601171312359183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252503 (A162786 (n + 2)).toNat

end

end A123487.P5343601171312359183

/-! ## A123487.P12601792092715248524

`A252503(A175787(n+2))`
-/

namespace A123487.P12601792092715248524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252503 (A175787 (n + 2)).toNat

end

end A123487.P12601792092715248524

/-! ## A123487.P3879871513130809292

`A252503(A182986(n+2))`
-/

namespace A123487.P3879871513130809292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252503 (A182986 (n + 2)).toNat

end

end A123487.P3879871513130809292

/-! ## A123487.P6849384726839293518

`A252503(record[A006530(n+2)])`
-/

namespace A123487.P6849384726839293518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252503 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A123487.P6849384726839293518

/-! ## A123487.P16548437118678019142

`A252503(record[A014963(n+2)])`
-/

namespace A123487.P16548437118678019142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252503 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A123487.P16548437118678019142

/-! ## A123487.P164799662673318053

`A252503(record[A020639(n+2)])`
-/

namespace A123487.P164799662673318053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252503 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A123487.P164799662673318053

/-! ## A123487.P5850749129846498055

`A252503(A073582(n+1)/2)`
-/

namespace A123487.P5850749129846498055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252503 (SequenceMachineLib.roundAway ((A073582 (n + 1) : ℚ) / 2)).toNat

end

end A123487.P5850749129846498055

/-! ## A123487.P16731034766502764751

`A252503(A100484(n+1)/2)`
-/

namespace A123487.P16731034766502764751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252503 (SequenceMachineLib.roundAway ((A100484 (n + 1) : ℚ) / 2)).toNat

end

end A123487.P16731034766502764751

/-! ## A123487.P574222730092613921

`A252503(A001747(n+2)/2)`
-/

namespace A123487.P574222730092613921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252503 (SequenceMachineLib.roundAway ((A001747 (n + 2) : ℚ) / 2)).toNat

end

end A123487.P574222730092613921

/-! ## A123487.P7110492360390249987

`A252503(record[A000010(n+1)+1])`
-/

namespace A123487.P7110492360390249987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252503 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A123487.P7110492360390249987

/-! ## A123487.P15664778610270330304

`A252503(A007504(n+1)-A007504(n))`
-/

namespace A123487.P15664778610270330304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252503 (A007504 (n + 1) - A007504 n).toNat

end

end A123487.P15664778610270330304

/-! ## A123487.P4065697544812088887

`A252503(record[p?[A252464(n+1)]])`
-/

namespace A123487.P4065697544812088887
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252464 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252503 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A123487.P4065697544812088887

/-! ## A123487.P12392811734697982058

`A252503(record[p?[A252489(n+1)]])`
-/

namespace A123487.P12392811734697982058
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252489 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252503 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A123487.P12392811734697982058

/-!
# A123489: a(n) = Sum_{k=0..p-1} Kronecker(4k^3+1, p) where p is the n-th prime of the form 6k+1.

The programs for A123489, there is no canonical definition to state claims against.
-/

/-! ## A123489.P14920647242831538742

`A282610(p?[3*n+1])/3`
-/

namespace A123489.P14920647242831538742
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A282610 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)) : ℚ) / 3

end

end A123489.P14920647242831538742

/-! ## A123489.P15962873791713262478

`A282610(or(1, p?[3*n-2]))/3`
-/

namespace A123489.P15962873791713262478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) - 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A282610 (Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))).toNat : ℚ) / 3

end

end A123489.P15962873791713262478

/-! ## A123489.P14758281594233654418

`A282610(∏{d}[p?[3*n-2], #])/3`
-/

namespace A123489.P14758281594233654418
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A282610 (∏ d ∈ Nat.divisors (f1 n).natAbs, d) : ℚ) / 3

end

end A123489.P14758281594233654418

/-! ## A123489.P11524329631131265681

`A282610(∑{p}[p?[3*n-2], #])/3`
-/

namespace A123489.P11524329631131265681
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A282610 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, p) : ℚ) / 3

end

end A123489.P11524329631131265681

/-! ## A123489.P8166227077769186449

`A282610(∏{p}[p?[3*n-2], #])/3`
-/

namespace A123489.P8166227077769186449
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A282610 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p) : ℚ) / 3

end

end A123489.P8166227077769186449

/-! ## A123489.P8988965551219895559

`A162397(A002338(n+1))`
-/

namespace A123489.P8988965551219895559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162397 (A002338 (n + 1)).toNat

end

end A123489.P8988965551219895559

/-! ## A123489.P12984773272032408301

`A282610(A002476(n+1))/3`
-/

namespace A123489.P12984773272032408301
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A282610 (A002476 (n + 1)).toNat : ℚ) / 3

end

end A123489.P12984773272032408301

/-! ## A123489.P8407656518554360660

`A282610(A007645(n+2))/3`
-/

namespace A123489.P8407656518554360660
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A282610 (A007645 (n + 2)).toNat : ℚ) / 3

end

end A123489.P8407656518554360660

/-!
# A123490: Triangle whose k-th column satisfies a(n) = (k+3)*a(n-1)-(k+2)*a(n-2).

The programs for A123490, the canonical program `A123490.P6598676461431435207` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123490 has offset 0).

The definition of A123490 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4578 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A123490.P6598676461431435207

`ceil(ratio[A051129(n+1)]*A009998(n))`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A123490

/-- `ceil(ratio[A051129(n+1)]*A009998(n))` -/
def P6598676461431435207.Spec : Prop :=
  ∀ n, P6598676461431435207.a n = A123490 n

theorem P6598676461431435207.correct : P6598676461431435207.Spec := by
  intro n
  simp only [A123490]

end A123490

/-! ## A123490.P9062939073818023970

`ceil(A051129(n+2)/A002260(n+1))`
-/

namespace A123490.P9062939073818023970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A051129 (n + 2) : ℚ) / (A002260 (n + 1) : ℚ)⌉

end

end A123490.P9062939073818023970

namespace A123490

/-- `ceil(A051129(n+2)/A002260(n+1))` -/
def P9062939073818023970.Spec : Prop :=
  ∀ n, P9062939073818023970.a n = A123490 n

end A123490

/-! ## A123490.P6288661461275289863

`ceil(A009998(A014132(n+1))/A002260(n+1))`
-/

namespace A123490.P6288661461275289863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A009998 (A014132 (n + 1)).toNat : ℚ) / (A002260 (n + 1) : ℚ)⌉

end

end A123490.P6288661461275289863

namespace A123490

/-- `ceil(A009998(A014132(n+1))/A002260(n+1))` -/
def P6288661461275289863.Spec : Prop :=
  ∀ n, P6288661461275289863.a n = A123490 n

end A123490

/-! ## A123490.P10437050872896039873

`ceil(A261642(n+1)/A051129(n+1))`
-/

namespace A123490.P10437050872896039873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A261642 (n + 1) : ℚ) / (A051129 (n + 1) : ℚ)⌉

end

end A123490.P10437050872896039873

namespace A123490

/-- `ceil(A261642(n+1)/A051129(n+1))` -/
def P10437050872896039873.Spec : Prop :=
  ∀ n, P10437050872896039873.a n = A123490 n

end A123490

/-! ## A123490.P5783619229059674616

`ceil(A009998(n)*A051129(n+2)/A051129(n+1))`
-/

namespace A123490.P5783619229059674616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A009998 n * A051129 (n + 2) : ℚ) / (A051129 (n + 1) : ℚ)⌉

end

end A123490.P5783619229059674616

namespace A123490

/-- `ceil(A009998(n)*A051129(n+2)/A051129(n+1))` -/
def P5783619229059674616.Spec : Prop :=
  ∀ n, P5783619229059674616.a n = A123490 n

theorem P5783619229059674616.correct : P5783619229059674616.Spec := by
  intro n
  simp only [A123490, Nat.add_sub_cancel, A123490.P5783619229059674616.a, A123490.P6598676461431435207.f1, A123490.P6598676461431435207.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A123490

/-! ## A123490.P14249345925278381033

`A361475(n)+1`
-/

namespace A123490.P14249345925278381033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361475 n + 1

end

end A123490.P14249345925278381033

namespace A123490

/-- `A361475(n)+1` -/
def P14249345925278381033.Spec : Prop :=
  ∀ n, P14249345925278381033.a n = A123490 n

end A123490

/-!
# A123491: Diagonal sums of number triangle A123490.

The programs for A123491, there is no canonical definition to state claims against.
-/

/-! ## A123491.P8940043172385643920

`∑[record[A104872(n)]-A000035(n)]`
-/

namespace A123491.P8940043172385643920
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104872 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) - A000035 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123491.P8940043172385643920

/-! ## A123491.P1983243975949661216

`∑[record[A104872(n)]]-A110654(n)`
-/

namespace A123491.P1983243975949661216
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104872 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A110654 n

end

end A123491.P1983243975949661216

/-! ## A123491.P16325241458093753291

`∑[record[A104872(n)]]-A004526(n+1)`
-/

namespace A123491.P16325241458093753291
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104872 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A004526 (n + 1)

end

end A123491.P16325241458093753291

/-! ## A123491.P3697548596523667164

`A004526(n)-(n-∑[record[A104872(n)]])`
-/

namespace A123491.P3697548596523667164
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104872 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n - ((n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A123491.P3697548596523667164

/-! ## A123491.P9162872488764622677

`∑[record[A104872(n)]]-(A007494(n)-n)`
-/

namespace A123491.P9162872488764622677
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104872 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (A007494 n - (n : ℤ))

end

end A123491.P9162872488764622677

/-!
# A123493: Signature permutation of a Catalan automorphism: row 79361 of table A122201.

The programs for A123493, there is no canonical definition to state claims against.
-/

/-! ## A123493.P5853478864098106125

`A123494(A123494(A123494(n)))`
-/

namespace A123493.P5853478864098106125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123494 (A123494 (A123494 n).toNat).toNat

end

end A123493.P5853478864098106125

/-! ## A123493.P16026972160609938769

`A123715(n)-A184955(A108572(n+1))`
-/

namespace A123493.P16026972160609938769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123715 n - A184955 (A108572 (n + 1)).toNat

end

end A123493.P16026972160609938769

/-!
# A123494: Signature permutation of a Catalan automorphism: row 79361 of table A122202.

The programs for A123494, there is no canonical definition to state claims against.
-/

/-! ## A123494.P5031915169028230490

`A123493(A123493(A123493(n)))`
-/

namespace A123494.P5031915169028230490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123493 (A123493 (A123493 n).toNat).toNat

end

end A123494.P5031915169028230490

/-! ## A123494.P5900718180391315241

`A123716(n)%A123328(n)`
-/

namespace A123494.P5900718180391315241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A123716 n) (A123328 n)

end

end A123494.P5900718180391315241

/-! ## A123494.P15072159136187131056

`A123716(lcm(n, A123719(n)))`
-/

namespace A123494.P15072159136187131056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123716 (Int.lcm (n : ℤ) (A123719 n))

end

end A123494.P15072159136187131056

/-! ## A123494.P4378994591576818409

`A123716(A089458(n+5)+n)`
-/

namespace A123494.P4378994591576818409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123716 (A089458 (n + 5) + (n : ℤ)).toNat

end

end A123494.P4378994591576818409

/-!
# A123495: Signature permutation of a nonrecursive Catalan automorphism: row 65518 of table A089840.

The programs for A123495, there is no canonical definition to state claims against.
-/

/-! ## A123495.P11968915202591216124

`A082351(A069770(n))`
-/

namespace A123495.P11968915202591216124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082351 (A069770 n).toNat

end

end A123495.P11968915202591216124

/-! ## A123495.P10834493327198717320

`A074679(A154125(n))`
-/

namespace A123495.P10834493327198717320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074679 (A154125 n).toNat

end

end A123495.P10834493327198717320

/-! ## A123495.P17938350297749009304

`A123714(A154126(n))`
-/

namespace A123495.P17938350297749009304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123714 (A154126 n).toNat

end

end A123495.P17938350297749009304

/-! ## A123495.P5901053053371624293

`A082351(A123496(A082351(n)))`
-/

namespace A123495.P5901053053371624293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082351 (A123496 (A082351 n).toNat).toNat

end

end A123495.P5901053053371624293

/-! ## A123495.P17530210764805991178

`A123714(A123496(A123714(n)))`
-/

namespace A123495.P17530210764805991178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123714 (A123496 (A123714 n).toNat).toNat

end

end A123495.P17530210764805991178

/-! ## A123495.P17116998334123275907

`A074679(n)+A089857(n)-A082351(n)`
-/

namespace A123495.P17116998334123275907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074679 n + (A089857 n - A082351 n)

end

end A123495.P17116998334123275907

/-! ## A123495.P16201655700740513246

`A074679(A154126(A074679(A089851(n))))`
-/

namespace A123495.P16201655700740513246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074679 (A154126 (A074679 (A089851 n).toNat).toNat).toNat

end

end A123495.P16201655700740513246

/-! ## A123495.P17998053697577774493

`A089860(A082353(n))`
-/

namespace A123495.P17998053697577774493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089860 (A082353 n).toNat

end

end A123495.P17998053697577774493

/-! ## A123495.P15499840156293064235

`A074679(A123496(A074679(n)))`
-/

namespace A123495.P15499840156293064235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074679 (A123496 (A074679 n).toNat).toNat

end

end A123495.P15499840156293064235

/-!
# A123496: Signature permutation of a nonrecursive Catalan automorphism: row 65796 of table A089840.

The programs for A123496, there is no canonical definition to state claims against.
-/

/-! ## A123496.P4422043565068815824

`A069770(A082352(n))`
-/

namespace A123496.P4422043565068815824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069770 (A082352 n).toNat

end

end A123496.P4422043565068815824

/-! ## A123496.P13215531252839029399

`A082354(A089862(n))`
-/

namespace A123496.P13215531252839029399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082354 (A089862 n).toNat

end

end A123496.P13215531252839029399

/-! ## A123496.P10001397343610741050

`A154125(A074680(n))`
-/

namespace A123496.P10001397343610741050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154125 (A074680 n).toNat

end

end A123496.P10001397343610741050

/-! ## A123496.P13925489567663576883

`A154126(A089855(n))`
-/

namespace A123496.P13925489567663576883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154126 (A089855 n).toNat

end

end A123496.P13925489567663576883

/-! ## A123496.P4248429634656367317

`A154126(A123713(n))`
-/

namespace A123496.P4248429634656367317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154126 (A123713 n).toNat

end

end A123496.P4248429634656367317

/-! ## A123496.P15032527132285957830

`A154126(A123714(A123714(n)))`
-/

namespace A123496.P15032527132285957830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154126 (A123714 (A123714 n).toNat).toNat

end

end A123496.P15032527132285957830

/-! ## A123496.P11833276430218374401

`A082352(A123495(A082352(A123503(A123503(n)))))`
-/

namespace A123496.P11833276430218374401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082352 (A123495 (A082352 (A123503 (A123503 n).toNat).toNat).toNat).toNat

end

end A123496.P11833276430218374401

/-! ## A123496.P14729802822232461245

`A082352(A123495(A082352(A129604(A129604(n)))))`
-/

namespace A123496.P14729802822232461245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082352 (A123495 (A082352 (A129604 (A129604 n).toNat).toNat).toNat).toNat

end

end A123496.P14729802822232461245

/-! ## A123496.P1695740435978778590

`A154126(A069770(A089851(A069770(n))))`
-/

namespace A123496.P1695740435978778590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154126 (A069770 (A089851 (A069770 n).toNat).toNat).toNat

end

end A123496.P1695740435978778590

/-! ## A123496.P2985480156252217193

`A074679(A057163(A123495(A074679(A057163(n)))))`
-/

namespace A123496.P2985480156252217193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074679 (A057163 (A123495 (A074679 (A057163 n).toNat).toNat).toNat).toNat

end

end A123496.P2985480156252217193

/-!
# A123497: Signature permutation of a nonrecursive Catalan automorphism: row 1655089 of table A089840.

The programs for A123497, there is no canonical definition to state claims against.
-/

/-! ## A123497.P4229768950438652465

`A122300(A123498(A122300(n)))`
-/

namespace A123497.P4229768950438652465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122300 (A123498 (A122300 n).toNat).toNat

end

end A123497.P4229768950438652465

/-! ## A123497.P13355408589228006925

`A072796(A072797(A123498(A072796(A072797(n)))))`
-/

namespace A123497.P13355408589228006925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072796 (A072797 (A123498 (A072796 (A072797 n).toNat).toNat).toNat).toNat

end

end A123497.P13355408589228006925

/-! ## A123497.P2695801032179549800

`A123501(A123498(A123501(A123498(A123501(n)))))`
-/

namespace A123497.P2695801032179549800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123501 (A123498 (A123501 (A123498 (A123501 n).toNat).toNat).toNat).toNat

end

end A123497.P2695801032179549800

/-! ## A123497.P17631215576958164325

`A074680(A123498(A074680(n)))`
-/

namespace A123497.P17631215576958164325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074680 (A123498 (A074680 n).toNat).toNat

end

end A123497.P17631215576958164325

/-! ## A123497.P15330284031594097144

`A123501(n)%A122882(n)`
-/

namespace A123497.P15330284031594097144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A123501 n) (A122882 n)

end

end A123497.P15330284031594097144

/-!
# A123498: Signature permutation of a nonrecursive Catalan automorphism: row 1654249 of table A089840.

The programs for A123498, there is no canonical definition to state claims against.
-/

/-! ## A123498.P11583842334618183358

`A122300(A123497(A122300(n)))`
-/

namespace A123498.P11583842334618183358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122300 (A123497 (A122300 n).toNat).toNat

end

end A123498.P11583842334618183358

/-! ## A123498.P15197548803861824495

`A072797(A072796(A123497(A072797(A072796(n)))))`
-/

namespace A123498.P15197548803861824495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072797 (A072796 (A123497 (A072797 (A072796 n).toNat).toNat).toNat).toNat

end

end A123498.P15197548803861824495

/-! ## A123498.P16513743199764604369

`A123502(A123497(A123502(A123497(A123502(n)))))`
-/

namespace A123498.P16513743199764604369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123502 (A123497 (A123502 (A123497 (A123502 n).toNat).toNat).toNat).toNat

end

end A123498.P16513743199764604369

/-! ## A123498.P1950584681782201149

`A074679(A123497(A074679(n)))`
-/

namespace A123498.P1950584681782201149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074679 (A123497 (A074679 n).toNat).toNat

end

end A123498.P1950584681782201149

/-! ## A123498.P16709489605483955463

`A123502(A058348(n))+A123502(n)-A058348(n)`
-/

namespace A123498.P16709489605483955463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123502 (A058348 n).toNat + (A123502 n - A058348 n)

end

end A123498.P16709489605483955463

/-!
# A123499: Signature permutation of a nonrecursive Catalan automorphism: rotate a binary tree left if possible, otherwise apply *A089863.

The programs for A123499, there is no canonical definition to state claims against.
-/

/-! ## A123499.P2243492900625501259

`A089858(A123503(n))`
-/

namespace A123499.P2243492900625501259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089858 (A123503 n).toNat

end

end A123499.P2243492900625501259

/-! ## A123499.P1925716871386749526

`A074679(A123503(A072796(n)))`
-/

namespace A123499.P1925716871386749526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074679 (A123503 (A072796 n).toNat).toNat

end

end A123499.P1925716871386749526

/-! ## A123499.P8515529480153733203

`A069770(A123503(n))+n-A089850(n)`
-/

namespace A123499.P8515529480153733203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069770 (A123503 n).toNat + ((n : ℤ) - A089850 n)

end

end A123499.P8515529480153733203

/-! ## A123499.P10917680126686892538

`A074679(A129609(A154123(A074680(n))))`
-/

namespace A123499.P10917680126686892538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074679 (A129609 (A154123 (A074680 n).toNat).toNat).toNat

end

end A123499.P10917680126686892538

/-! ## A123499.P4636680259778047240

`A057163(A123500(A057163(n)))`
-/

namespace A123499.P4636680259778047240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A123500 (A057163 n).toNat).toNat

end

end A123499.P4636680259778047240

/-! ## A123499.P1551880699381180281

`A074679(A123500(A074679(n)))`
-/

namespace A123499.P1551880699381180281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074679 (A123500 (A074679 n).toNat).toNat

end

end A123499.P1551880699381180281

/-! ## A123499.P13026287786426008747

`A069770(A123503(A089850(n)))`
-/

namespace A123499.P13026287786426008747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069770 (A123503 (A089850 n).toNat).toNat

end

end A123499.P13026287786426008747

/-! ## A123499.P16572674729304399778

`A082335(A123500(A082335(n)))`
-/

namespace A123499.P16572674729304399778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082335 (A123500 (A082335 n).toNat).toNat

end

end A123499.P16572674729304399778

/-! ## A123499.P10134500713957031355

`A089858(A123500(A089858(n)))`
-/

namespace A123499.P10134500713957031355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089858 (A123500 (A089858 n).toNat).toNat

end

end A123499.P10134500713957031355

/-! ## A123499.P9017451414744045392

`A089859(A123500(A089859(n)))`
-/

namespace A123499.P9017451414744045392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089859 (A123500 (A089859 n).toNat).toNat

end

end A123499.P9017451414744045392

