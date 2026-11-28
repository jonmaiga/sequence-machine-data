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
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C037
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C046
import Seq.B000.C050
import Seq.B000.C051
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C012
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C003
import Seq.B005.C000
import Seq.B006.C000
import Seq.B007.C001
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C004
import Seq.Opaque.C005
import Seq.Opaque.C006
import Seq.Opaque.C007
import Seq.Opaque.C009
import Seq.Opaque.C011
import Seq.Opaque.C012
import Seq.Opaque.C015
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C023
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A205000: Least k such that n divides s(k)-s(j) for some j satisfying 1<=j<k, where s(j)=3^j-2^j.

The programs for A205000, there is no canonical definition to state claims against.
-/

/-! ## A205000.P8316153271798632127

`A002024(A205106(1+n))+1`
-/

namespace A205000.P8316153271798632127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A205106 (1 + n)).toNat + 1

end

end A205000.P8316153271798632127

/-! ## A205000.P13891364107768136689

`A003057(A205106(1+n)+1)`
-/

namespace A205000.P13891364107768136689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003057 (A205106 (1 + n) + 1).toNat

end

end A205000.P13891364107768136689

/-! ## A205000.P9199639328984562089

`A123578(A205106(n+1))+1`
-/

namespace A205000.P9199639328984562089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123578 (A205106 (n + 1)).toNat + 1

end

end A205000.P9199639328984562089

/-! ## A205000.P5363933884166497340

`A002024(A014132(A205106(n+1)))`
-/

namespace A205000.P5363933884166497340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A014132 (A205106 (n + 1)).toNat).toNat

end

end A205000.P5363933884166497340

/-! ## A205000.P5294029516715796467

`A060762(A131507(A205106(n+1)-1))`
-/

namespace A205000.P5294029516715796467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060762 (A131507 (A205106 (n + 1) - 1).toNat).toNat

end

end A205000.P5294029516715796467

/-! ## A205000.P15081681635379877369

`A000194(2*A205106(n+1))+1`
-/

namespace A205000.P15081681635379877369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (2 * A205106 (n + 1)).toNat + 1

end

end A205000.P15081681635379877369

/-! ## A205000.P11418601554542343677

`A020725(A000194(2*A205106(n+1)))`
-/

namespace A205000.P11418601554542343677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A000194 (2 * A205106 (n + 1)).toNat).toNat

end

end A205000.P11418601554542343677

/-! ## A205000.P142613217392242347

`A000194(A205106(n+1)+A205106(n+1))+1`
-/

namespace A205000.P142613217392242347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A205106 (n + 1) + A205106 (n + 1)).toNat + 1

end

end A205000.P142613217392242347

/-!
# A205001: Least k such that n divides the k-th difference between distinct triangular numbers.

The programs for A205001, there is no canonical definition to state claims against.
-/

/-! ## A205001.P9246319573560887082

`A205003(n+1)+A000217(A205002(n+1)-2)`
-/

namespace A205001.P9246319573560887082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205003 (n + 1) + A000217 (A205002 (n + 1) - 2).toNat

end

end A205001.P9246319573560887082

/-! ## A205001.P4627529485662736169

`A205017(2*(n+1))`
-/

namespace A205001.P4627529485662736169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205017 (2 * (n + 1))

end

end A205001.P4627529485662736169

/-!
# A205002: Least k such that n divides s(k)-s(j) for some j satisfying 1<=j<k, where s(j)=j(j+1)/2.

The programs for A205002, there is no canonical definition to state claims against.
-/

/-! ## A205002.P15726658802288647517

`row(A205004(n+1))`
-/

namespace A205002.P15726658802288647517
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triRow (A205004 (n + 1)).toNat

end

end A205002.P15726658802288647517

/-! ## A205002.P1831996122511739958

`A205018(2*(n+1))`
-/

namespace A205002.P1831996122511739958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205018 (2 * (n + 1))

end

end A205002.P1831996122511739958

/-! ## A205002.P608282979487351524

`floor(sqrt(A205029(2*(1+n))))`
-/

namespace A205002.P608282979487351524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A205029 (2 * (1 + n)))

end

end A205002.P608282979487351524

/-! ## A205002.P509471202589111873

`A138796(A205006(n+1))`
-/

namespace A205002.P509471202589111873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138796 (A205006 (n + 1)).toNat

end

end A205002.P509471202589111873

/-! ## A205002.P4241105961133273160

`A002024(A205001(n+1))+1`
-/

namespace A205002.P4241105961133273160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A205001 (n + 1)).toNat + 1

end

end A205002.P4241105961133273160

/-! ## A205002.P2775370575585960092

`A007318(A205004(n+1)+1)`
-/

namespace A205002.P2775370575585960092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A205004 (n + 1) + 1).toNat

end

end A205002.P2775370575585960092

/-! ## A205002.P8663711273423666038

`A169803(A205004(n+1)+1)`
-/

namespace A205002.P8663711273423666038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169803 (A205004 (n + 1) + 1).toNat

end

end A205002.P8663711273423666038

/-! ## A205002.P16090039260114104582

`A014430(A205004(n+1)-1)`
-/

namespace A205002.P16090039260114104582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014430 (A205004 (n + 1) - 1).toNat

end

end A205002.P16090039260114104582

/-! ## A205002.P5451095520876615692

`A014410(A205004(n+1)+1)-1`
-/

namespace A205002.P5451095520876615692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014410 (A205004 (n + 1) + 1).toNat - 1

end

end A205002.P5451095520876615692

/-! ## A205002.P11595900066292080756

`A193973(A205001(n+1)-A205003(n+1))`
-/

namespace A205002.P11595900066292080756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193973 (A205001 (n + 1) - A205003 (n + 1)).toNat

end

end A205002.P11595900066292080756

/-! ## A205002.P12340330974697961737

`A000196(2*A205004(n+1))`
-/

namespace A205002.P12340330974697961737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (2 * A205004 (n + 1)).toNat

end

end A205002.P12340330974697961737

/-! ## A205002.P592988351290395290

`A000194(A205029(2*(n+1)))`
-/

namespace A205002.P592988351290395290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A205029 (2 * (n + 1))).toNat

end

end A205002.P592988351290395290

/-! ## A205002.P5365020761341607944

`A002260(2*A205029(2*(n+1)))`
-/

namespace A205002.P5365020761341607944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (2 * A205029 (2 * (n + 1))).toNat

end

end A205002.P5365020761341607944

/-!
# A205003: The index j<k such that n divides s(k)-s(j), where k is the least index (A205002) for which such j exists, and s(k)=k(k+1)/2.

The programs for A205003, there is no canonical definition to state claims against.
-/

/-! ## A205003.P16743769164097950099

`floor(sqrt(A205030(2*(n+1))))`
-/

namespace A205003.P16743769164097950099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A205030 (2 * (n + 1)))

end

end A205003.P16743769164097950099

/-! ## A205003.P12883574114127474669

`round(sqrt(A205030(2*(1+n))))`
-/

namespace A205003.P12883574114127474669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A205030 (2 * (1 + n)) : ℝ))

end

end A205003.P12883574114127474669

/-! ## A205003.P2601239953332604627

`A205028(A022998(n+1))`
-/

namespace A205003.P2601239953332604627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205028 (A022998 (n + 1)).toNat

end

end A205003.P2601239953332604627

/-! ## A205003.P1447067985313536840

`A205028(2*(n+1))`
-/

namespace A205003.P1447067985313536840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205028 (2 * (n + 1))

end

end A205003.P1447067985313536840

/-! ## A205003.P9201909866356641406

`A002024(A205005(n+1))`
-/

namespace A205003.P9201909866356641406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A205005 (n + 1)).toNat

end

end A205003.P9201909866356641406

/-! ## A205003.P1380773662442812134

`A002260(A205001(n+1))`
-/

namespace A205003.P1380773662442812134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A205001 (n + 1)).toNat

end

end A205003.P1380773662442812134

/-! ## A205003.P16323099783785003215

`A007318(A205005(n+1)+1)`
-/

namespace A205003.P16323099783785003215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A205005 (n + 1) + 1).toNat

end

end A205003.P16323099783785003215

/-! ## A205003.P2149700787650156467

`A318274(A205005(n+1)+1)`
-/

namespace A205003.P2149700787650156467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318274 (A205005 (n + 1) + 1).toNat

end

end A205003.P2149700787650156467

/-! ## A205003.P4643264549298301183

`A131830(A205005(n+1)-1)`
-/

namespace A205003.P4643264549298301183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131830 (A205005 (n + 1) - 1).toNat

end

end A205003.P4643264549298301183

/-! ## A205003.P4308973916728971292

`A002262(A205005(n+1)-1)+1`
-/

namespace A205003.P4308973916728971292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A205005 (n + 1) - 1).toNat + 1

end

end A205003.P4308973916728971292

/-! ## A205003.P12720379489956726564

`A000194(2*A205005(n+1))`
-/

namespace A205003.P12720379489956726564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (2 * A205005 (n + 1)).toNat

end

end A205003.P12720379489956726564

/-! ## A205003.P13497396370116869029

`A000196(2*A205005(n+1))`
-/

namespace A205003.P13497396370116869029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (2 * A205005 (n + 1)).toNat

end

end A205003.P13497396370116869029

/-! ## A205003.P16296801092891538983

`A002262(4*A205005(n+1))`
-/

namespace A205003.P16296801092891538983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (4 * A205005 (n + 1)).toNat

end

end A205003.P16296801092891538983

/-! ## A205003.P16070003080835863153

`A351995(A205005(n+1)+1)+1`
-/

namespace A205003.P16070003080835863153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351995 (A205005 (n + 1) + 1).toNat + 1

end

end A205003.P16070003080835863153

/-!
# A205004: Least k(k+1)/2 such that n divides k(k+1)/2-j(j+1)/2 for some j<k.

The programs for A205004, there is no canonical definition to state claims against.
-/

/-! ## A205004.P14632956194654126130

`C(1+A205002(1+n), 2)`
-/

namespace A205004.P14632956194654126130
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (1 + A205002 (1 + n)).toNat 2

end

end A205004.P14632956194654126130

/-! ## A205004.P6412132408069112581

`A000217(A205002(1+n))`
-/

namespace A205004.P6412132408069112581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A205002 (1 + n)).toNat

end

end A205004.P6412132408069112581

/-! ## A205004.P14918477092669997430

`A161680(A205002(1+n)+1)`
-/

namespace A205004.P14918477092669997430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A205002 (1 + n) + 1).toNat

end

end A205004.P14918477092669997430

/-! ## A205004.P11253915803951312973

`A179865(A205002(n+1)+1)`
-/

namespace A205004.P11253915803951312973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179865 (A205002 (n + 1) + 1).toNat

end

end A205004.P11253915803951312973

/-! ## A205004.P1651137816879195485

`A205006(n+1)+A205005(n+1)`
-/

namespace A205004.P1651137816879195485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205006 (n + 1) + A205005 (n + 1)

end

end A205004.P1651137816879195485

/-! ## A205004.P9796373888958107499

`A205006(n+1)+A000217(A205003(n+1))`
-/

namespace A205004.P9796373888958107499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205006 (n + 1) + A000217 (A205003 (n + 1)).toNat

end

end A205004.P9796373888958107499

/-! ## A205004.P12759360837691869314

`A002378(A205018(2*n+2))/2`
-/

namespace A205004.P12759360837691869314
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002378 (A205018 (2 * n + 2)).toNat : ℚ) / 2

end

end A205004.P12759360837691869314

/-! ## A205004.P2937705650281893524

`(A205031(2*(n+1))+A205030(2*(n+1)))/2`
-/

namespace A205004.P2937705650281893524
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205031 (2 * (n + 1)) + A205030 (2 * (n + 1)) : ℚ) / 2

end

end A205004.P2937705650281893524

/-! ## A205004.P1531666229776435907

`A205029(2*(n+1))/2`
-/

namespace A205004.P1531666229776435907
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205029 (2 * (n + 1)) : ℚ) / 2

end

end A205004.P1531666229776435907

/-! ## A205004.P4877396528118000451

`∑{#}[A205002(n+1), #]`
-/

namespace A205004.P4877396528118000451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205002 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, k

end

end A205004.P4877396528118000451

/-! ## A205004.P14488117847899133493

`A000037(A205018(2*(n+1))²)/2`
-/

namespace A205004.P14488117847899133493
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000037 (A205018 (2 * (n + 1)) ^ 2).toNat : ℚ) / 2

end

end A205004.P14488117847899133493

/-! ## A205004.P18433507325714602268

`A026741(A205002(n+1)+A205002(n+1)²)`
-/

namespace A205004.P18433507325714602268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A205002 (n + 1) + A205002 (n + 1) ^ 2).toNat

end

end A205004.P18433507325714602268

/-!
# A205005: The triangular number T(j) such that n divides T(k)-T(j)>0, where k is the least positive integer for which such a j exists.

The programs for A205005, there is no canonical definition to state claims against.
-/

/-! ## A205005.P4760608104774537561

`A205004(n+1)-A205006(n+1)`
-/

namespace A205005.P4760608104774537561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205004 (n + 1) - A205006 (n + 1)

end

end A205005.P4760608104774537561

/-! ## A205005.P3247022942768301969

`A000217(A205002(n+1))-A205006(n+1)`
-/

namespace A205005.P3247022942768301969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A205002 (n + 1)).toNat - A205006 (n + 1)

end

end A205005.P3247022942768301969

/-! ## A205005.P16919799325295757117

`C(A205003(1+n)+1, 2)`
-/

namespace A205005.P16919799325295757117
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A205003 (1 + n) + 1).toNat 2

end

end A205005.P16919799325295757117

/-! ## A205005.P5483625235459369571

`A000217(A205003(1+n))`
-/

namespace A205005.P5483625235459369571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A205003 (1 + n)).toNat

end

end A205005.P5483625235459369571

/-! ## A205005.P7585325175600786339

`A161680(A205003(n+1)+1)`
-/

namespace A205005.P7585325175600786339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A205003 (n + 1) + 1).toNat

end

end A205005.P7585325175600786339

/-! ## A205005.P3694514901137036397

`A179865(A205003(n+1)+1)`
-/

namespace A205005.P3694514901137036397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179865 (A205003 (n + 1) + 1).toNat

end

end A205005.P3694514901137036397

/-! ## A205005.P7729704185728342448

`A160791(2*A205003(n+1))`
-/

namespace A205005.P7729704185728342448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160791 (2 * A205003 (n + 1)).toNat

end

end A205005.P7729704185728342448

/-! ## A205005.P9096274744648043854

`A205030(2*(n+1))/2`
-/

namespace A205005.P9096274744648043854
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205030 (2 * (n + 1)) : ℚ) / 2

end

end A205005.P9096274744648043854

/-! ## A205005.P7837230968940841496

`C(A205028(2*(n+1))+1, 2)`
-/

namespace A205005.P7837230968940841496
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A205028 (2 * (n + 1)) + 1).toNat 2

end

end A205005.P7837230968940841496

/-! ## A205005.P14277887721455746773

`A002378(A205028(2*n+2))/2`
-/

namespace A205005.P14277887721455746773
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002378 (A205028 (2 * n + 2)).toNat : ℚ) / 2

end

end A205005.P14277887721455746773

/-! ## A205005.P14169134459051202907

`(A205029(2*(n+1))-A205031(2*(n+1)))/2`
-/

namespace A205005.P14169134459051202907
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205029 (2 * (n + 1)) - A205031 (2 * (n + 1)) : ℚ) / 2

end

end A205005.P14169134459051202907

/-! ## A205005.P8887652224270889386

`∑{#}[A205003(n+1), #]`
-/

namespace A205005.P8887652224270889386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205003 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, k

end

end A205005.P8887652224270889386

/-! ## A205005.P1916163772442510020

`A000037(A205003(n+1)²)/2`
-/

namespace A205005.P1916163772442510020
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000037 (A205003 (n + 1) ^ 2).toNat : ℚ) / 2

end

end A205005.P1916163772442510020

/-! ## A205005.P9511721062967888081

`A000037(A205028(2*(n+1))²)/2`
-/

namespace A205005.P9511721062967888081
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000037 (A205028 (2 * (n + 1)) ^ 2).toNat : ℚ) / 2

end

end A205005.P9511721062967888081

/-! ## A205005.P11614831109216816397

`A028392(A205028(2*(n+1))²)/2`
-/

namespace A205005.P11614831109216816397
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028392 (A205028 (2 * (n + 1)) ^ 2).toNat : ℚ) / 2

end

end A205005.P11614831109216816397

/-! ## A205005.P880474545793098585

`A026741(A205003(n+1)+A205003(n+1)²)`
-/

namespace A205005.P880474545793098585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A205003 (n + 1) + A205003 (n + 1) ^ 2).toNat

end

end A205005.P880474545793098585

/-!
# A205006: a(n) = s(k)-s(j), where (s(k),s(j)) is the least pair of distinct triangular numbers for which n divides their difference.

The programs for A205006, there is no canonical definition to state claims against.
-/

/-! ## A205006.P11413015006900797105

`(1+n)*A205007(n+1)`
-/

namespace A205006.P11413015006900797105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 + n : ℤ) * A205007 (n + 1)

end

end A205006.P11413015006900797105

/-! ## A205006.P4236924305244800801

`floor(A205007(n+1)/acot(A000027(n+1)))`
-/

namespace A205006.P4236924305244800801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A205007 (n + 1) : ℝ) / SequenceMachineLib.acot (A000027 (n + 1) : ℝ)⌋

end

end A205006.P4236924305244800801

/-! ## A205006.P15742095608390907153

`A205004(n+1)-A205005(n+1)`
-/

namespace A205006.P15742095608390907153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205004 (n + 1) - A205005 (n + 1)

end

end A205006.P15742095608390907153

/-! ## A205006.P811164059976050972

`A000217(A205002(n+1))-A205005(n+1)`
-/

namespace A205006.P811164059976050972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A205002 (n + 1)).toNat - A205005 (n + 1)

end

end A205006.P811164059976050972

/-! ## A205006.P6628349337409839361

`A205004(n+1)-A000217(A205003(n+1))`
-/

namespace A205006.P6628349337409839361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205004 (n + 1) - A000217 (A205003 (n + 1)).toNat

end

end A205006.P6628349337409839361

/-! ## A205006.P17777557934920867942

`A000217(A205002(n+1))-A000217(A205003(n+1))`
-/

namespace A205006.P17777557934920867942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A205002 (n + 1)).toNat - A000217 (A205003 (n + 1)).toNat

end

end A205006.P17777557934920867942

/-! ## A205006.P17535134506993273541

`A205032(2*(n+1))*(n+1)`
-/

namespace A205006.P17535134506993273541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205032 (2 * (n + 1)) * (n + 1 : ℤ)

end

end A205006.P17535134506993273541

/-! ## A205006.P11851202366473113404

`A205031(2*(n+1))/2`
-/

namespace A205006.P11851202366473113404
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205031 (2 * (n + 1)) : ℚ) / 2

end

end A205006.P11851202366473113404

/-! ## A205006.P11501804451832173640

`(A205029(2*(n+1))-A205030(2*(n+1)))/2`
-/

namespace A205006.P11501804451832173640
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205029 (2 * (n + 1)) - A205030 (2 * (n + 1)) : ℚ) / 2

end

end A205006.P11501804451832173640

/-! ## A205006.P8850387921780316711

`A004526(A205031(2*(n+1)))`
-/

namespace A205006.P8850387921780316711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A205031 (2 * (n + 1))).toNat

end

end A205006.P8850387921780316711

/-! ## A205006.P9448768106418828976

`A193974(A205001(n+1)-1)`
-/

namespace A205006.P9448768106418828976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193974 (A205001 (n + 1) - 1).toNat

end

end A205006.P9448768106418828976

/-! ## A205006.P10038268764288932447

`A205016(A205017(2*(n+1)))/2`
-/

namespace A205006.P10038268764288932447
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205016 (A205017 (2 * (n + 1))).toNat : ℚ) / 2

end

end A205006.P10038268764288932447

/-!
# A205007: a(n) = (1/n)*A205006(n), where A205006(n) = s(k)-s(j), with (s(k),s(j)) the least pair of distinct triangular numbers for which n divides their difference.

The programs for A205007, there is no canonical definition to state claims against.
-/

/-! ## A205007.P2599520741091705030

`1/(n+1)*A205006(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A205007.P2599520741091705030
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (n + 1 : ℚ) * (A205006 (n + 1) : ℚ)

end

end A205007.P2599520741091705030

/-! ## A205007.P5475801007571524295

`A205006(1+n)/(n+1)`
-/

namespace A205007.P5475801007571524295
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205006 (1 + n) : ℚ) / (n + 1 : ℚ)

end

end A205007.P5475801007571524295

/-! ## A205007.P12906515808705641231

`2-char[A205006(n+1)-1]`
-/

namespace A205007.P12906515808705641231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205006 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A205007.P12906515808705641231

/-! ## A205007.P10270621981452938211

`A205003(A193974(A205006(n+1)-n))`
-/

namespace A205007.P10270621981452938211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205003 (A193974 (A205006 (n + 1) - (n : ℤ)).toNat).toNat

end

end A205007.P10270621981452938211

/-! ## A205007.P10344574946098096633

`A205032(A205006(n*A205032(n+2)+1)+1)`
-/

namespace A205007.P10344574946098096633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205032 (A205006 ((n : ℤ) * A205032 (n + 2) + 1).toNat + 1).toNat

end

end A205007.P10344574946098096633

/-! ## A205007.P6275426436277417401

`A205032(2*(n+1))`
-/

namespace A205007.P6275426436277417401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205032 (2 * (n + 1))

end

end A205007.P6275426436277417401

/-! ## A205007.P16973903339332631645

`A205031(2*(n+1))/Δ[A002378(n)]`
-/

namespace A205007.P16973903339332631645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205031 (2 * (n + 1)) : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A205007.P16973903339332631645

/-! ## A205007.P3903141104237937418

`A062557(A005369(A002620(n))+2*n)`
-/

namespace A205007.P3903141104237937418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062557 (A005369 (A002620 n).toNat + (2 * n : ℤ)).toNat

end

end A205007.P3903141104237937418

/-! ## A205007.P10948174068802603300

`A010052(A025581(n)+A002620(n+1))+1`
-/

namespace A205007.P10948174068802603300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (A025581 n + A002620 (n + 1)).toNat + 1

end

end A205007.P10948174068802603300

/-! ## A205007.P3008270952836241111

`A035214(A381534(n+1))`
-/

namespace A205007.P3008270952836241111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 (A381534 (n + 1)).toNat

end

end A205007.P3008270952836241111

/-! ## A205007.P3246267931564818031

`gcd(A004013(∑[n])+1+n, A035214(n+1))`
-/

namespace A205007.P3246267931564818031
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A004013 (∑ j ∈ Finset.range (n + 1), f1 j) + 1 + (n : ℤ)) (A035214 (n + 1))

end

end A205007.P3246267931564818031

/-! ## A205007.P8944502893534531894

`A040001(A040001(n)+or(n+1, A173787(n+1)))`
-/

namespace A205007.P8944502893534531894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (A040001 n + Int.lor (n + 1 : ℤ) (A173787 (n + 1))).toNat

end

end A205007.P8944502893534531894

/-! ## A205007.P17527093557937326809

`A002260(A131231(A002623(A131231(n+2))))`
-/

namespace A205007.P17527093557937326809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A131231 (A002623 (A131231 (n + 2)).toNat).toNat).toNat

end

end A205007.P17527093557937326809

/-! ## A205007.P5587084722128651860

`gcd(A049332(n), A275015(n+1))`
-/

namespace A205007.P5587084722128651860
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A049332 n) (A275015 (n + 1))

end

end A205007.P5587084722128651860

/-! ## A205007.P11419063072657209495

`A000034(A040001(n)*A130321(n))`
-/

namespace A205007.P11419063072657209495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A040001 n * A130321 n).toNat

end

end A205007.P11419063072657209495

/-!
# A205008: Ordered differences of central binomial coefficients.

The programs for A205008, the canonical program `A205008.P13998729903812751376` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A205008 has offset 1).

The definition of A205008 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A205008.P12479924606346698045

`A000984(row(n)+1)-A000984(A002262(n))`
-/

namespace A205008.P12479924606346698045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 (SequenceMachineLib.triRow n + 1) - A000984 (A002262 n).toNat

end

end A205008.P12479924606346698045

namespace A205008

/-- `A000984(row(n)+1)-A000984(A002262(n))` -/
def P12479924606346698045.Spec : Prop :=
  ∀ n, P12479924606346698045.a n = A205008 (n + 1)

end A205008

/-! ## A205008.P13998729903812751376

`A000984(A002024(n+1))-A000984(A002262(n))`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A205008

/-- `A000984(A002024(n+1))-A000984(A002262(n))` -/
def P13998729903812751376.Spec : Prop :=
  ∀ n, P13998729903812751376.a n = A205008 (n + 1)

theorem P13998729903812751376.correct : P13998729903812751376.Spec := by
  intro n
  simp only [A205008, Nat.add_sub_cancel]

end A205008

/-! ## A205008.P11443968202392305709

`A000984(A003056(n)+1)-A000984(A002262(n))`
-/

namespace A205008.P11443968202392305709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 (A003056 n + 1).toNat - A000984 (A002262 n).toNat

end

end A205008.P11443968202392305709

namespace A205008

/-- `A000984(A003056(n)+1)-A000984(A002262(n))` -/
def P11443968202392305709.Spec : Prop :=
  ∀ n, P11443968202392305709.a n = A205008 (n + 1)

end A205008

/-! ## A205008.P6214181062235817191

`A106187(A127739(n+1))-A106187(A061579(n))`
-/

namespace A205008.P6214181062235817191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106187 (A127739 (n + 1)).toNat - A106187 (A061579 n).toNat

end

end A205008.P6214181062235817191

namespace A205008

/-- `A106187(A127739(n+1))-A106187(A061579(n))` -/
def P6214181062235817191.Spec : Prop :=
  ∀ n, P6214181062235817191.a n = A205008 (n + 1)

end A205008

/-!
# A205010: Least k such that n divides s(k)-s(j) for some j satisfying 1<=j<k, where s(j)=C(2j-2,j-1).

The programs for A205010, there is no canonical definition to state claims against.
-/

/-! ## A205010.P12915012794817744052

`round(sqrt(2*A205009(n+1)))+1`
-/

namespace A205010.P12915012794817744052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * A205009 (n + 1) : ℝ)) + 1

end

end A205010.P12915012794817744052

/-! ## A205010.P17797014474454186793

`1+A002024(A205009(1+n))`
-/

namespace A205010.P17797014474454186793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A002024 (A205009 (1 + n)).toNat

end

end A205010.P17797014474454186793

/-! ## A205010.P9208617847533245723

`A003057(A205009(1+n)+1)`
-/

namespace A205010.P9208617847533245723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003057 (A205009 (1 + n) + 1).toNat

end

end A205010.P9208617847533245723

/-! ## A205010.P6029303918731206

`A123578(A205009(n+1))+1`
-/

namespace A205010.P6029303918731206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123578 (A205009 (n + 1)).toNat + 1

end

end A205010.P6029303918731206

/-! ## A205010.P15800417216289095764

`A002024(A014132(A205009(n+1)))`
-/

namespace A205010.P15800417216289095764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A014132 (A205009 (n + 1)).toNat).toNat

end

end A205010.P15800417216289095764

/-! ## A205010.P877442626872265926

`A097285(2*A205009(n+1))`
-/

namespace A205010.P877442626872265926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097285 (2 * A205009 (n + 1)).toNat

end

end A205010.P877442626872265926

/-!
# A205011: The index j<k such that n divides C(2k-2,k-1)-C(2j-2,j-1), where k is the least index (A205010) for which such j exists.

The programs for A205011, there is no canonical definition to state claims against.
-/

/-! ## A205011.P10510593343381330756

`A002260(A205009(1+n))`
-/

namespace A205011.P10510593343381330756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A205009 (1 + n)).toNat

end

end A205011.P10510593343381330756

/-! ## A205011.P4235575631789400204

`A131818(A205009(n+1)+1)-1`
-/

namespace A205011.P4235575631789400204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (A205009 (n + 1) + 1).toNat - 1

end

end A205011.P4235575631789400204

/-! ## A205011.P4584995865655295571

`A130270(A205010(n+1)+A205009(n+1))`
-/

namespace A205011.P4584995865655295571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130270 (A205010 (n + 1) + A205009 (n + 1)).toNat

end

end A205011.P4584995865655295571

/-! ## A205011.P7334296853929284432

`gcd(A131818(A205009(n+1)), A205013(n+1))`
-/

namespace A205011.P7334296853929284432
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A131818 (A205009 (n + 1)).toNat) (A205013 (n + 1))

end

end A205011.P7334296853929284432

/-! ## A205011.P5695552588061860020

`A097285(2*A205009(n+1)-1)`
-/

namespace A205011.P5695552588061860020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097285 (2 * A205009 (n + 1) - 1).toNat

end

end A205011.P5695552588061860020

/-!
# A205012: Least s(k) such that n divides s(k)-s(j) for some j<k, where s(j)=C(2j-2,j-1).

The programs for A205012, there is no canonical definition to state claims against.
-/

/-! ## A205012.P14728494984074180300

`A000984(A205010(1+n)-1)`
-/

namespace A205012.P14728494984074180300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 (A205010 (1 + n) - 1).toNat

end

end A205012.P14728494984074180300

/-! ## A205012.P18276643034155100217

`A205014(n+1)+A205013(n+1)`
-/

namespace A205012.P18276643034155100217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205014 (n + 1) + A205013 (n + 1)

end

end A205012.P18276643034155100217

/-! ## A205012.P12172771914700611010

`A205013(n+1)+(n+1)*A205015(n+1)`
-/

namespace A205012.P12172771914700611010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205013 (n + 1) + (n + 1 : ℤ) * A205015 (n + 1)

end

end A205012.P12172771914700611010

/-! ## A205012.P18101773032380160521

`A205013(n+1)+A205008(A205009(n+1))`
-/

namespace A205012.P18101773032380160521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205013 (n + 1) + A205008 (A205009 (n + 1)).toNat

end

end A205012.P18101773032380160521

/-! ## A205012.P3692141692051037571

`A097805(2*A205010(n+1)²)`
-/

namespace A205012.P3692141692051037571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 (2 * A205010 (n + 1) ^ 2).toNat

end

end A205012.P3692141692051037571

/-!
# A205013: The number s(j)=C(2j-2,j-1) such that n divides s(k)-s(j)>0, where k is the least positive integer for which such a j exists.

The programs for A205013, there is no canonical definition to state claims against.
-/

/-! ## A205013.P2798932042215118727

`A000984(A205011(1+n)-1)`
-/

namespace A205013.P2798932042215118727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 (A205011 (1 + n) - 1).toNat

end

end A205013.P2798932042215118727

/-! ## A205013.P14517196671291837743

`A191529(2*A205011(1+n))`
-/

namespace A205013.P14517196671291837743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191529 (2 * A205011 (1 + n)).toNat

end

end A205013.P14517196671291837743

/-! ## A205013.P2274753154252256930

`A205012(n+1)-A205014(n+1)`
-/

namespace A205013.P2274753154252256930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205012 (n + 1) - A205014 (n + 1)

end

end A205013.P2274753154252256930

/-! ## A205013.P16495396444791595597

`A205012(n+1)-A205008(A205009(n+1))`
-/

namespace A205013.P16495396444791595597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205012 (n + 1) - A205008 (A205009 (n + 1)).toNat

end

end A205013.P16495396444791595597

/-! ## A205013.P5699840264152882225

`A097805(2*A205011(n+1)²)`
-/

namespace A205013.P5699840264152882225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 (2 * A205011 (n + 1) ^ 2).toNat

end

end A205013.P5699840264152882225

/-! ## A205013.P10851470612154501825

`A007318(2*(A205011(n+1)²-A205011(n+1)))`
-/

namespace A205013.P10851470612154501825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (2 * (A205011 (n + 1) ^ 2 - A205011 (n + 1))).toNat

end

end A205013.P10851470612154501825

/-!
# A205014: s(k)-s(j), where (s(k),s(j)) is the least pair of central binomial coefficients for which n divides their difference.

The programs for A205014, there is no canonical definition to state claims against.
-/

/-! ## A205014.P10708562286010303691

`(1+n)*A205015(n+1)`
-/

namespace A205014.P10708562286010303691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 + n : ℤ) * A205015 (n + 1)

end

end A205014.P10708562286010303691

/-! ## A205014.P11956976387889638002

`A205012(n+1)-A205013(n+1)`
-/

namespace A205014.P11956976387889638002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205012 (n + 1) - A205013 (n + 1)

end

end A205014.P11956976387889638002

/-! ## A205014.P7779071828586328437

`A000984(A205010(n+1)-1)-A205013(n+1)`
-/

namespace A205014.P7779071828586328437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 (A205010 (n + 1) - 1).toNat - A205013 (n + 1)

end

end A205014.P7779071828586328437

/-! ## A205014.P9453566680916567762

`A205012(n+1)-A000984(A205011(n+1)-1)`
-/

namespace A205014.P9453566680916567762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205012 (n + 1) - A000984 (A205011 (n + 1) - 1).toNat

end

end A205014.P9453566680916567762

/-! ## A205014.P11203001285495059719

`A205012(n+1)-A191529(2*A205011(n+1))`
-/

namespace A205014.P11203001285495059719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205012 (n + 1) - A191529 (2 * A205011 (n + 1)).toNat

end

end A205014.P11203001285495059719

/-! ## A205014.P13485823423455365866

`A205008(A205009(n+1))`
-/

namespace A205014.P13485823423455365866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205008 (A205009 (n + 1)).toNat

end

end A205014.P13485823423455365866

/-! ## A205014.P12116644047760015875

`A097805(2*A205010(n+1)²)-A205013(n+1)`
-/

namespace A205014.P12116644047760015875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 (2 * A205010 (n + 1) ^ 2).toNat - A205013 (n + 1)

end

end A205014.P12116644047760015875

/-! ## A205014.P12682396951299755498

`A205012(n+1)-A097805(2*A205011(n+1)²)`
-/

namespace A205014.P12682396951299755498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205012 (n + 1) - A097805 (2 * A205011 (n + 1) ^ 2).toNat

end

end A205014.P12682396951299755498

/-!
# A205015: (1/n)*A205014(n).

The programs for A205015, there is no canonical definition to state claims against.
-/

/-! ## A205015.P11376566668058261070

`1/(n+1)*A205014(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A205015.P11376566668058261070
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (n + 1 : ℚ) * (A205014 (n + 1) : ℚ)

end

end A205015.P11376566668058261070

/-! ## A205015.P13935365298846237426

`A205014(1+n)/(n+1)`
-/

namespace A205015.P13935365298846237426
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205014 (1 + n) : ℚ) / (n + 1 : ℚ)

end

end A205015.P13935365298846237426

/-! ## A205015.P5722579438424024448

`(A205012(n+1)-A205013(n+1))/(n+1)`
-/

namespace A205015.P5722579438424024448
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205012 (n + 1) - A205013 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A205015.P5722579438424024448

/-! ## A205015.P8021371279019347834

`(A000984(A205010(n+1)-1)-A205013(n+1))/(n+1)`
-/

namespace A205015.P8021371279019347834
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000984 (A205010 (n + 1) - 1).toNat - A205013 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A205015.P8021371279019347834

/-! ## A205015.P12912427824100982033

`(A205012(n+1)-A191529(2*A205011(n+1)))/(n+1)`
-/

namespace A205015.P12912427824100982033
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205012 (n + 1) - A191529 (2 * A205011 (n + 1)).toNat : ℚ) / (n + 1 : ℚ)

end

end A205015.P12912427824100982033

/-! ## A205015.P1051242408721469806

`A205008(A205009(n+1))/(n+1)`
-/

namespace A205015.P1051242408721469806
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205008 (A205009 (n + 1)).toNat : ℚ) / (n + 1 : ℚ)

end

end A205015.P1051242408721469806

/-! ## A205015.P8431112460957162229

`(A205012(n+1)-A097805(2*A205011(n+1)²))/(n+1)`
-/

namespace A205015.P8431112460957162229
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205012 (n + 1) - A097805 (2 * A205011 (n + 1) ^ 2).toNat : ℚ) / (n + 1 : ℚ)

end

end A205015.P8431112460957162229

/-!
# A205016: Ordered differences of oblong numbers.

The programs for A205016, the canonical program `A205016.P2286842531164054448` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A205016 has offset 1).

The definition of A205016 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A205016.P5790548452979514961

`2*(row(n)+2)+T(n-1,k)` with `a(0)=4`
-/

namespace A205016.P5790548452979514961
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4] fun n a =>
  2 * (SequenceMachineLib.triRow n + 2) + SequenceMachineLib.triUp a n

end

end A205016.P5790548452979514961

namespace A205016

/-- `2*(row(n)+2)+T(n-1,k)` -/
def P5790548452979514961.Spec : Prop :=
  ∀ n, (P5790548452979514961.a n : ℤ) = A205016 (n + 1)

end A205016

/-! ## A205016.P5990667648471017104

`(comp[∑[n]]-n)*2+T(n-1,k)` with `a(0)=4`
-/

namespace A205016.P5990667648471017104
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)) * 2 + SequenceMachineLib.triUp a n

end

end A205016.P5990667648471017104

namespace A205016

/-- `(comp[∑[n]]-n)*2+T(n-1,k)` -/
def P5990667648471017104.Spec : Prop :=
  ∀ n, P5990667648471017104.a n = A205016 (n + 1)

end A205016

/-! ## A205016.P2684013036728273112

`row(n)+4+row(n)+T(n-1,k)` with `a(0)=4`
-/

namespace A205016.P2684013036728273112
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4] fun n a =>
  SequenceMachineLib.triRow n + (4 + SequenceMachineLib.triRow n + SequenceMachineLib.triUp a n)

end

end A205016.P2684013036728273112

namespace A205016

/-- `row(n)+4+row(n)+T(n-1,k)` -/
def P2684013036728273112.Spec : Prop :=
  ∀ n, (P2684013036728273112.a n : ℤ) = A205016 (n + 1)

end A205016

/-! ## A205016.P2286842531164054448

`2*A193974(n)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A205016

/-- `2*A193974(n)` -/
def P2286842531164054448.Spec : Prop :=
  ∀ n, P2286842531164054448.a n = A205016 (n + 1)

theorem P2286842531164054448.correct : P2286842531164054448.Spec := by
  intro n
  simp only [A205016, Nat.add_sub_cancel]

end A205016

/-! ## A205016.P11806102111038910076

`2*(A131783(1+n)+1)`
-/

namespace A205016.P11806102111038910076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A131783 (1 + n) + 1)

end

end A205016.P11806102111038910076

namespace A205016

/-- `2*(A131783(1+n)+1)` -/
def P11806102111038910076.Spec : Prop :=
  ∀ n, P11806102111038910076.a n = A205016 (n + 1)

end A205016

/-! ## A205016.P17050304515508880927

`A120070(n+2)+row(n)+1-col(n)`
-/

namespace A205016.P17050304515508880927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120070 (n + 2) + ((SequenceMachineLib.triRow n + 1 : ℤ) - (SequenceMachineLib.triCol n : ℤ))

end

end A205016.P17050304515508880927

namespace A205016

/-- `A120070(n+2)+row(n)+1-col(n)` -/
def P17050304515508880927.Spec : Prop :=
  ∀ n, P17050304515508880927.a n = A205016 (n + 1)

end A205016

/-! ## A205016.P13719950585193201558

`A141429(n+1)+A063929(n+1)`
-/

namespace A205016.P13719950585193201558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141429 (n + 1) + A063929 (n + 1)

end

end A205016.P13719950585193201558

namespace A205016

/-- `A141429(n+1)+A063929(n+1)` -/
def P13719950585193201558.Spec : Prop :=
  ∀ n, P13719950585193201558.a n = A205016 (n + 1)

end A205016

/-! ## A205016.P10797597197098237330

`A120070(n+2)+A004736(n+1)`
-/

namespace A205016.P10797597197098237330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120070 (n + 2) + A004736 (n + 1)

end

end A205016.P10797597197098237330

namespace A205016

/-- `A120070(n+2)+A004736(n+1)` -/
def P10797597197098237330.Spec : Prop :=
  ∀ n, P10797597197098237330.a n = A205016 (n + 1)

end A205016

/-! ## A205016.P3931886514684224693

`A144650(n+1)-A057105(n+1)`
-/

namespace A205016.P3931886514684224693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144650 (n + 1) - A057105 (n + 1)

end

end A205016.P3931886514684224693

namespace A205016

/-- `A144650(n+1)-A057105(n+1)` -/
def P3931886514684224693.Spec : Prop :=
  ∀ n, P3931886514684224693.a n = A205016 (n + 1)

end A205016

/-! ## A205016.P18062074442758407480

`A205128(n+1)-A094728(n+1)`
-/

namespace A205016.P18062074442758407480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205128 (n + 1) - A094728 (n + 1)

end

end A205016.P18062074442758407480

namespace A205016

/-- `A205128(n+1)-A094728(n+1)` -/
def P18062074442758407480.Spec : Prop :=
  ∀ n, P18062074442758407480.a n = A205016 (n + 1)

end A205016

/-! ## A205016.P5604633389967189437

`2*(A158822(n)+A143595(n+1))`
-/

namespace A205016.P5604633389967189437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A158822 n + A143595 (n + 1))

end

end A205016.P5604633389967189437

namespace A205016

/-- `2*(A158822(n)+A143595(n+1))` -/
def P5604633389967189437.Spec : Prop :=
  ∀ n, P5604633389967189437.a n = A205016 (n + 1)

end A205016

/-! ## A205016.P17320136994273105041

`2*(A193592(n)+A131819(n+1))`
-/

namespace A205016.P17320136994273105041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A193592 n + A131819 (n + 1))

end

end A205016.P17320136994273105041

namespace A205016

/-- `2*(A193592(n)+A131819(n+1))` -/
def P17320136994273105041.Spec : Prop :=
  ∀ n, P17320136994273105041.a n = A205016 (n + 1)

end A205016

/-! ## A205016.P1421103854994677029

`2*(A329854(n)+A131914(n+1))`
-/

namespace A205016.P1421103854994677029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A329854 n + A131914 (n + 1))

end

end A205016.P1421103854994677029

namespace A205016

/-- `2*(A329854(n)+A131914(n+1))` -/
def P1421103854994677029.Spec : Prop :=
  ∀ n, P1421103854994677029.a n = A205016 (n + 1)

end A205016

/-! ## A205016.P392714246446929127

`(A051162(n)+4)*A004736(n+1)`
-/

namespace A205016.P392714246446929127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A051162 n + 4) * A004736 (n + 1)

end

end A205016.P392714246446929127

namespace A205016

/-- `(A051162(n)+4)*A004736(n+1)` -/
def P392714246446929127.Spec : Prop :=
  ∀ n, P392714246446929127.a n = A205016 (n + 1)

end A205016

/-! ## A205016.P13268113258552910049

`A004736(n+1)+sqrt(A165447(n+2))`
-/

namespace A205016.P13268113258552910049
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A004736 (n + 1) : ℝ) + Real.sqrt (A165447 (n + 2) : ℝ)

end

end A205016.P13268113258552910049

namespace A205016

/-- `A004736(n+1)+sqrt(A165447(n+2))` -/
def P13268113258552910049.Spec : Prop :=
  ∀ n, P13268113258552910049.a n = (A205016 (n + 1) : ℝ)

end A205016

/-! ## A205016.P2697017820636962068

`ceil(A120070(n+2)+A099375(n)/2)`
-/

namespace A205016.P2697017820636962068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A120070 (n + 2) : ℚ) + (A099375 n : ℚ) / 2⌉

end

end A205016.P2697017820636962068

namespace A205016

/-- `ceil(A120070(n+2)+A099375(n)/2)` -/
def P2697017820636962068.Spec : Prop :=
  ∀ n, P2697017820636962068.a n = A205016 (n + 1)

end A205016

/-! ## A205016.P8593499581438594884

`2*(A049777(n+1)+A004736(n+1))`
-/

namespace A205016.P8593499581438594884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A049777 (n + 1) + A004736 (n + 1))

end

end A205016.P8593499581438594884

namespace A205016

/-- `2*(A049777(n+1)+A004736(n+1))` -/
def P8593499581438594884.Spec : Prop :=
  ∀ n, P8593499581438594884.a n = A205016 (n + 1)

end A205016

/-! ## A205016.P12644421344892147013

`2*(A049777(n+1)+A025581(n)+1)`
-/

namespace A205016.P12644421344892147013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A049777 (n + 1) + (A025581 n + 1))

end

end A205016.P12644421344892147013

namespace A205016

/-- `2*(A049777(n+1)+A025581(n)+1)` -/
def P12644421344892147013.Spec : Prop :=
  ∀ n, P12644421344892147013.a n = A205016 (n + 1)

theorem P12644421344892147013.correct : P12644421344892147013.Spec := by
  intro n
  simp only [A205016, Nat.add_sub_cancel, A205016.P12644421344892147013.a, A205016.P2286842531164054448.a, A025581, A025581.P16112744757063613497.a, A049777, A049777.P4000231892958571332.a, A193974, A193974.P14269232743332111222.a, A131783, A131783.P16711198060458241591.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A205016

/-! ## A205016.P12292519617346051915

`(A108872(n+1)+2)*A004736(n+1)`
-/

namespace A205016.P12292519617346051915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A108872 (n + 1) + 2) * A004736 (n + 1)

end

end A205016.P12292519617346051915

namespace A205016

/-- `(A108872(n+1)+2)*A004736(n+1)` -/
def P12292519617346051915.Spec : Prop :=
  ∀ n, P12292519617346051915.a n = A205016 (n + 1)

end A205016

/-! ## A205016.P18159709626268441229

`A095832(n+1)+2*A141429(n+1)`
-/

namespace A205016.P18159709626268441229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095832 (n + 1) + 2 * A141429 (n + 1)

end

end A205016.P18159709626268441229

namespace A205016

/-- `A095832(n+1)+2*A141429(n+1)` -/
def P18159709626268441229.Spec : Prop :=
  ∀ n, P18159709626268441229.a n = A205016 (n + 1)

end A205016

/-!
# A205017: Least k such that n divides the k-th difference between distinct oblong numbers.

The programs for A205017, there is no canonical definition to state claims against.
-/

/-! ## A205017.P6139316426164138948

`A205001(gcd(1+n, ∑[n]))`
-/

namespace A205017.P6139316426164138948
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205001 (Nat.gcd (1 + n) (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A205017.P6139316426164138948

/-!
# A205018: Least k such that n divides s(k)-s(j) for some j satisfying 1<=j<k, where s(j)=j*(j+1).

The programs for A205018, there is no canonical definition to state claims against.
-/

/-! ## A205018.P9601083469355406351

`A205002(gcd(n+1, ∑[n]))`
-/

namespace A205018.P9601083469355406351
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205002 (Nat.gcd (n + 1) (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A205018.P9601083469355406351

/-! ## A205018.P8172320104210059932

`floor(sqrt(A205029(1+n)))`
-/

namespace A205018.P8172320104210059932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A205029 (1 + n))

end

end A205018.P8172320104210059932

/-! ## A205018.P18110701120775225830

`A002260(A205029(n+1)/2)`
-/

namespace A205018.P18110701120775225830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (SequenceMachineLib.roundAway ((A205029 (n + 1) : ℚ) / 2)).toNat

end

end A205018.P18110701120775225830

/-! ## A205018.P3642831990079157706

`A000194(A205029(n+1))`
-/

namespace A205018.P3642831990079157706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A205029 (n + 1)).toNat

end

end A205018.P3642831990079157706

/-! ## A205018.P14054165723203400923

`A002260(2*A205029(n+1))`
-/

namespace A205018.P14054165723203400923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (2 * A205029 (n + 1)).toNat

end

end A205018.P14054165723203400923

/-!
# A205019: Number of (n+1)X(n+1) 0..3 arrays with the determinants of 2X2 subblocks nondecreasing rightwards and downwards.

The programs for A205019, there is no canonical definition to state claims against.
-/

/-! ## A205019.P13464537847359034013

`A205027(∑[4*n]+1)`
-/

namespace A205019.P13464537847359034013
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205027 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A205019.P13464537847359034013

/-! ## A205019.P10404743366190120298

`record[gcd(A205027(n+1), A214292(n))]`
-/

namespace A205019.P10404743366190120298
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A205027 (n + 1)) (A214292 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205019.P10404743366190120298

/-!
# A205020: Number of (n+1)X2 0..3 arrays with the determinants of 2X2 subblocks nondecreasing rightwards and downwards.

The programs for A205020, there is no canonical definition to state claims against.
-/

/-! ## A205020.P2475742639799198433

`A205027(∑[n]+1)`
-/

namespace A205020.P2475742639799198433
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205027 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A205020.P2475742639799198433

/-! ## A205020.P10990663319726408035

`record[root(A205027(n+1), A007318(n))]`
-/

namespace A205020.P10990663319726408035
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A205027 (n + 1) : ℝ) ^ (1 / (A007318 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205020.P10990663319726408035

/-! ## A205020.P13506909515181700891

`record[root(A205027(n+1), A054143(n))]`
-/

namespace A205020.P13506909515181700891
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A205027 (n + 1) : ℝ) ^ (1 / (A054143 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205020.P13506909515181700891

/-! ## A205020.P14799129353422773080

`record[gcd(A002262(n), A205027(n+1))]`
-/

namespace A205020.P14799129353422773080
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A205027 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205020.P14799129353422773080

/-! ## A205020.P3932963577344608561

`record[lcm(A103452(n), A205027(n+1))]`
-/

namespace A205020.P3932963577344608561
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A103452 n) (A205027 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205020.P3932963577344608561

/-!
# A205021: Number of (n+1)X3 0..3 arrays with the determinants of 2X2 subblocks nondecreasing rightwards and downwards.

The programs for A205021, there is no canonical definition to state claims against.
-/

/-! ## A205021.P3721485013895508093

`A205027(∑[n+1]+2)`
-/

namespace A205021.P3721485013895508093
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205027 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A205021.P3721485013895508093

/-! ## A205021.P11343515703832757075

`record[root(A205027(n+2), A054143(n))]`
-/

namespace A205021.P11343515703832757075
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A205027 (n + 2) : ℝ) ^ (1 / (A054143 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205021.P11343515703832757075

/-! ## A205021.P10728179366976719197

`record[gcd(A002262(n), A205027(n+2))]`
-/

namespace A205021.P10728179366976719197
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A205027 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205021.P10728179366976719197

/-! ## A205021.P13629230559076749683

`record[root(A205027(n+2), A205003(n+2))]`
-/

namespace A205021.P13629230559076749683
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A205027 (n + 2) : ℝ) ^ (1 / (A205003 (n + 2) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205021.P13629230559076749683

/-! ## A205021.P11851357045072750404

`record[root(A205027(n+2), A205005(n+2))]`
-/

namespace A205021.P11851357045072750404
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A205027 (n + 2) : ℝ) ^ (1 / (A205005 (n + 2) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205021.P11851357045072750404

/-!
# A205022: Number of (n+1)X4 0..3 arrays with the determinants of 2X2 subblocks nondecreasing rightwards and downwards.

The programs for A205022, there is no canonical definition to state claims against.
-/

/-! ## A205022.P9060511612121075822

`A205027(∑[n+2]+4)`
-/

namespace A205022.P9060511612121075822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205027 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A205022.P9060511612121075822

/-!
# A205023: Number of (n+1)X5 0..3 arrays with the determinants of 2X2 subblocks nondecreasing rightwards and downwards.

The programs for A205023, there is no canonical definition to state claims against.
-/

/-! ## A205023.P14119567207698319615

`A205027(A052905(n)+9)`
-/

namespace A205023.P14119567207698319615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205027 (A052905 n + 9).toNat

end

end A205023.P14119567207698319615

/-! ## A205023.P1742033053388811567

`A205027(A141214(n+1))`
-/

namespace A205023.P1742033053388811567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205027 (A141214 (n + 1)).toNat

end

end A205023.P1742033053388811567

/-!
# A205024: Number of (n+1)X6 0..3 arrays with the determinants of 2X2 subblocks nondecreasing rightwards and downwards.

The programs for A205024, there is no canonical definition to state claims against.
-/

/-! ## A205024.P17066048870793745255

`A205027(A167499(n+3))`
-/

namespace A205024.P17066048870793745255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205027 (A167499 (n + 3)).toNat

end

end A205024.P17066048870793745255

/-! ## A205024.P6082203158228739767

`A205027(A374005(n+1))`
-/

namespace A205024.P6082203158228739767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205027 (A374005 (n + 1)).toNat

end

end A205024.P6082203158228739767

/-!
# A205025: Number of (n+1)X7 0..3 arrays with the determinants of 2X2 subblocks nondecreasing rightwards and downwards.

The programs for A205025, there is no canonical definition to state claims against.
-/

/-! ## A205025.P9734676456569996796

`A205027(A167499(n+4)+1)`
-/

namespace A205025.P9734676456569996796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205027 (A167499 (n + 4) + 1).toNat

end

end A205025.P9734676456569996796

/-! ## A205025.P11156899972526125082

`A205027(A374007(n+1))`
-/

namespace A205025.P11156899972526125082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205027 (A374007 (n + 1)).toNat

end

end A205025.P11156899972526125082

/-!
# A205028: The index j<k such that n divides s(k)-s(j), where k is the least index (A205018) for which such j exists, and s(k)=k*(k+1).

The programs for A205028, there is no canonical definition to state claims against.
-/

/-! ## A205028.P15935259022570494787

`floor(sqrt(A205030(n+1)))`
-/

namespace A205028.P15935259022570494787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A205030 (n + 1))

end

end A205028.P15935259022570494787

/-! ## A205028.P17250349190823182704

`round(sqrt(A205030(1+n)))`
-/

namespace A205028.P17250349190823182704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A205030 (1 + n) : ℝ))

end

end A205028.P17250349190823182704

/-! ## A205028.P1098821632127501

`A205003(gcd(1+n, ∑[n]))`
-/

namespace A205028.P1098821632127501
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205003 (Nat.gcd (1 + n) (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A205028.P1098821632127501

/-! ## A205028.P1537732926158425482

`A002260(A205017(n+1))`
-/

namespace A205028.P1537732926158425482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A205017 (n + 1)).toNat

end

end A205028.P1537732926158425482

/-! ## A205028.P2797877753912580077

`A025581(A205030(n+1)/2)`
-/

namespace A205028.P2797877753912580077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (SequenceMachineLib.roundAway ((A205030 (n + 1) : ℚ) / 2)).toNat

end

end A205028.P2797877753912580077

/-! ## A205028.P11503266414372784025

`A000194(A205030(n+1))`
-/

namespace A205028.P11503266414372784025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A205030 (n + 1)).toNat

end

end A205028.P11503266414372784025

/-! ## A205028.P5144312076093738981

`A025581(2*A205030(n+1))`
-/

namespace A205028.P5144312076093738981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (2 * A205030 (n + 1)).toNat

end

end A205028.P5144312076093738981

/-!
# A205029: Least s(k) such that n divides s(k)-s(j) for some j<k, where s(j)=j*(j+1).

The programs for A205029, there is no canonical definition to state claims against.
-/

/-! ## A205029.P16975880952315050733

`2*C(A205018(1+n)+1, 2)`
-/

namespace A205029.P16975880952315050733
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.choose (A205018 (1 + n) + 1).toNat 2

end

end A205029.P16975880952315050733

/-! ## A205029.P3356665749856299649

`A002378(A205018(1+n))`
-/

namespace A205029.P3356665749856299649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 (A205018 (1 + n)).toNat

end

end A205029.P3356665749856299649

/-! ## A205029.P9718075353938572220

`A103505(A205018(1+n)+1)`
-/

namespace A205029.P9718075353938572220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103505 (A205018 (1 + n) + 1).toNat

end

end A205029.P9718075353938572220

/-! ## A205029.P10886519558167177743

`2*A000217(A205018(n+1))`
-/

namespace A205029.P10886519558167177743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000217 (A205018 (n + 1)).toNat

end

end A205029.P10886519558167177743

/-! ## A205029.P2901786582905832884

`A035106(2*A205018(n+1))`
-/

namespace A205029.P2901786582905832884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035106 (2 * A205018 (n + 1)).toNat

end

end A205029.P2901786582905832884

/-! ## A205029.P17762223270442722651

`A110660(2*A205018(n+1))`
-/

namespace A205029.P17762223270442722651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110660 (2 * A205018 (n + 1)).toNat

end

end A205029.P17762223270442722651

/-! ## A205029.P8854048028146526229

`A130404(2*A205018(n+1))`
-/

namespace A205029.P8854048028146526229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130404 (2 * A205018 (n + 1)).toNat

end

end A205029.P8854048028146526229

/-! ## A205029.P3518910883848362049

`A205031(n+1)+A205030(n+1)`
-/

namespace A205029.P3518910883848362049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205031 (n + 1) + A205030 (n + 1)

end

end A205029.P3518910883848362049

/-! ## A205029.P13410838820518510125

`A205018(A000027(n+1))+A205018(n+1)²`
-/

namespace A205029.P13410838820518510125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205018 (A000027 (n + 1)).toNat + A205018 (n + 1) ^ 2

end

end A205029.P13410838820518510125

/-! ## A205029.P13294339044791299726

`A205028(n+1)+A205031(n+1)+A205028(n+1)²`
-/

namespace A205029.P13294339044791299726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205028 (n + 1) + (A205031 (n + 1) + A205028 (n + 1) ^ 2)

end

end A205029.P13294339044791299726

/-! ## A205029.P13129085078680765932

`A205018(n+1)+A205018(A205031(n+1))²`
-/

namespace A205029.P13129085078680765932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205018 (n + 1) + A205018 (A205031 (n + 1)).toNat ^ 2

end

end A205029.P13129085078680765932

/-! ## A205029.P17276814086320741818

`A205030(n+1)+A205016(A205017(n+1))`
-/

namespace A205029.P17276814086320741818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205030 (n + 1) + A205016 (A205017 (n + 1)).toNat

end

end A205029.P17276814086320741818

/-! ## A205029.P17350241793681377802

`A000037(A205018(n+1)²)`
-/

namespace A205029.P17350241793681377802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000037 (A205018 (n + 1) ^ 2).toNat

end

end A205029.P17350241793681377802

/-!
# A205030: The number s(j)=j*(j+1) such that n divides s(k)-s(j)>0, where k is the least positive integer for which such a j exists.

The programs for A205030, there is no canonical definition to state claims against.
-/

/-! ## A205030.P10631469799035558278

`2*A205005(Δ[A001318(n)])`
-/

namespace A205030.P10631469799035558278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A205005 (f1 (n + 1) - f1 n).toNat

end

end A205030.P10631469799035558278

/-! ## A205030.P18370391585130382757

`A002378(A205018(n+1))-A205031(n+1)`
-/

namespace A205030.P18370391585130382757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 (A205018 (n + 1)).toNat - A205031 (n + 1)

end

end A205030.P18370391585130382757

/-! ## A205030.P12760253707248950625

`A002378(A205028(n+1))`
-/

namespace A205030.P12760253707248950625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 (A205028 (n + 1)).toNat

end

end A205030.P12760253707248950625

/-! ## A205030.P1125812481409202041

`A087811(2*A205028(n+1))`
-/

namespace A205030.P1125812481409202041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087811 (2 * A205028 (n + 1)).toNat

end

end A205030.P1125812481409202041

/-! ## A205030.P7187145921002560060

`A205029(n+1)-A205031(n+1)`
-/

namespace A205030.P7187145921002560060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205029 (n + 1) - A205031 (n + 1)

end

end A205030.P7187145921002560060

/-! ## A205030.P16487304491406891771

`A205028(n+1)+A205028(A205031(n+1))²`
-/

namespace A205030.P16487304491406891771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205028 (n + 1) + A205028 (A205031 (n + 1)).toNat ^ 2

end

end A205030.P16487304491406891771

/-! ## A205030.P990492444752045961

`A002260(A205017(n+1))+A002260(A205017(n+1))²`
-/

namespace A205030.P990492444752045961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A205017 (n + 1)).toNat + A002260 (A205017 (n + 1)).toNat ^ 2

end

end A205030.P990492444752045961

/-! ## A205030.P10873700374936328032

`A005843(A205005(Δ[A001318(n)]))`
-/

namespace A205030.P10873700374936328032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A205005 (f1 (n + 1) - f1 n).toNat).toNat

end

end A205030.P10873700374936328032

/-! ## A205030.P1495565864115856365

`A205029(n+1)-A205016(A205017(n+1))`
-/

namespace A205030.P1495565864115856365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205029 (n + 1) - A205016 (A205017 (n + 1)).toNat

end

end A205030.P1495565864115856365

/-! ## A205030.P18009900133043934399

`A000037(A205028(n+1)²)`
-/

namespace A205030.P18009900133043934399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000037 (A205028 (n + 1) ^ 2).toNat

end

end A205030.P18009900133043934399

/-! ## A205030.P16091109849851099597

`A028392(A205028(n+1)²)`
-/

namespace A205030.P16091109849851099597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028392 (A205028 (n + 1) ^ 2).toNat

end

end A205030.P16091109849851099597

/-!
# A205031: s(k)-s(j), where (s(k),s(j)) is the least pair of oblong numbers for which n divides their difference.

The programs for A205031, there is no canonical definition to state claims against.
-/

/-! ## A205031.P17849253976713945718

`(1+n)*A205032(1+n)`
-/

namespace A205031.P17849253976713945718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 + n : ℤ) * A205032 (1 + n)

end

end A205031.P17849253976713945718

/-! ## A205031.P8210443950094643759

`2*A205006(gcd(1+n, ∑[n]))`
-/

namespace A205031.P8210443950094643759
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A205006 (Nat.gcd (1 + n) (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A205031.P8210443950094643759

/-! ## A205031.P6087284908694461003

`2*A205006(Δ[A001318(n)])`
-/

namespace A205031.P6087284908694461003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A205006 (f1 (n + 1) - f1 n).toNat

end

end A205031.P6087284908694461003

/-! ## A205031.P1456469119352205886

`2*A205006(Δ[A319390(n)])`
-/

namespace A205031.P1456469119352205886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319390 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A205006 (f1 (n + 1) - f1 n).toNat

end

end A205031.P1456469119352205886

/-! ## A205031.P10831106531740394940

`A005843(A205006(gcd(n+1, ∑[n])))`
-/

namespace A205031.P10831106531740394940
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A205006 (Nat.gcd (n + 1) (∑ j ∈ Finset.range (n + 1), f1 j))).toNat

end

end A205031.P10831106531740394940

/-! ## A205031.P8417984728915137604

`A205029(n+1)-A205030(n+1)`
-/

namespace A205031.P8417984728915137604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205029 (n + 1) - A205030 (n + 1)

end

end A205031.P8417984728915137604

/-! ## A205031.P3183728094593789581

`A205029(n+1)-(A205028(n+1)+A205028(n+1)²)`
-/

namespace A205031.P3183728094593789581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205029 (n + 1) - (A205028 (n + 1) + A205028 (n + 1) ^ 2)

end

end A205031.P3183728094593789581

/-! ## A205031.P536862264581203408

`2*A205006(A060819(2*(n+1)))`
-/

namespace A205031.P536862264581203408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A205006 (A060819 (2 * (n + 1))).toNat

end

end A205031.P536862264581203408

/-! ## A205031.P5240237889312046346

`A205016(A205017(n+1))`
-/

namespace A205031.P5240237889312046346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205016 (A205017 (n + 1)).toNat

end

end A205031.P5240237889312046346

/-!
# A205032: a(n) = (s(k)-s(j))/n, where (s(k),s(j)) is the least pair of oblong numbers (A002378) for which n divides their difference; a(n) = (1/n)*A205031(n).

The programs for A205032, there is no canonical definition to state claims against.
-/

/-! ## A205032.P9467803178422290244

`1/(n+1)*A205031(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A205032.P9467803178422290244
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (n + 1 : ℚ) * (A205031 (n + 1) : ℚ)

end

end A205032.P9467803178422290244

/-! ## A205032.P593854600982101414

`2/(n+1)*A205006(Δ[A001318(n)])`
-/

namespace A205032.P593854600982101414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001318 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (n + 1 : ℚ) * (A205006 (f1 (n + 1) - f1 n).toNat : ℚ)

end

end A205032.P593854600982101414

/-! ## A205032.P9814810767068067922

`2/(n+1)*A205006(Δ[A319390(n)])`
-/

namespace A205032.P9814810767068067922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319390 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (n + 1 : ℚ) * (A205006 (f1 (n + 1) - f1 n).toNat : ℚ)

end

end A205032.P9814810767068067922

/-! ## A205032.P1500749311839321441

`A205007(A057979(n+2))+A000038(n)`
-/

namespace A205032.P1500749311839321441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205007 (A057979 (n + 2)).toNat + A000038 n

end

end A205032.P1500749311839321441

/-! ## A205032.P15772671354967030866

`A054977(n)*A205007(A057979(n+2))`
-/

namespace A205032.P15772671354967030866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n * A205007 (A057979 (n + 2)).toNat

end

end A205032.P15772671354967030866

/-! ## A205032.P4991198950633261190

`A205007(A057979(n+2))^A205007(n+1)`
-/

namespace A205032.P4991198950633261190
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205007 (A057979 (n + 2)).toNat : ℚ) ^ (A205007 (n + 1) : ℤ)

end

end A205032.P4991198950633261190

/-! ## A205032.P17976141710903152203

`A205031(n+1)/(n+1)`
-/

namespace A205032.P17976141710903152203
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205031 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A205032.P17976141710903152203

/-! ## A205032.P151665951836746873

`val(A205031(n+1)², Δ[A002378(n)])`
-/

namespace A205032.P151665951836746873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A205031 (n + 1) ^ 2).toNat (f1 (n + 1) - f1 n).toNat

end

end A205032.P151665951836746873

/-! ## A205032.P5079580544368090042

`A014963(A017113(n))*A205007(A057979(n+2))`
-/

namespace A205032.P5079580544368090042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A017113 n).toNat * A205007 (A057979 (n + 2)).toNat

end

end A205032.P5079580544368090042

/-! ## A205032.P9076665768936505824

`A205016(A205017(n+1))/(n+1)`
-/

namespace A205032.P9076665768936505824
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205016 (A205017 (n + 1)).toNat : ℚ) / (n + 1 : ℚ)

end

end A205032.P9076665768936505824

/-!
# A205033: Number of (n+1)X2 0..3 arrays with permanents of 2X2 subblocks differing from horizontal and vertical neighbor permanents.

The programs for A205033, there is no canonical definition to state claims against.
-/

/-! ## A205033.P2517439247183117214

`A205037(∑[n]+1)`
-/

namespace A205033.P2517439247183117214
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205037 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A205033.P2517439247183117214

/-! ## A205033.P16149436723736193720

`record[A205037(A114091(n+1))]`
-/

namespace A205033.P16149436723736193720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205037 (A114091 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205033.P16149436723736193720

/-! ## A205033.P14338625838385731353

`record[A205037(A286235(n+1))]`
-/

namespace A205033.P14338625838385731353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205037 (A286235 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205033.P14338625838385731353

/-! ## A205033.P3037270137753956920

`record[A010054(n)*A205037(n+1)]`
-/

namespace A205033.P3037270137753956920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A205037 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205033.P3037270137753956920

/-!
# A205034: Number of (n+1)X3 0..3 arrays with permanents of 2X2 subblocks differing from horizontal and vertical neighbor permanents.

The programs for A205034, there is no canonical definition to state claims against.
-/

/-! ## A205034.P6324425381696600164

`A205037(∑[n+1]+2)`
-/

namespace A205034.P6324425381696600164
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205037 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A205034.P6324425381696600164

/-! ## A205034.P12300906350648070671

`record[A205037(A114091(n+1)+1)]`
-/

namespace A205034.P12300906350648070671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205037 (A114091 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205034.P12300906350648070671

/-! ## A205034.P2151282352015010116

`record[A205037(A286235(n+1)+1)]`
-/

namespace A205034.P2151282352015010116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205037 (A286235 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205034.P2151282352015010116

/-! ## A205034.P3818527771798342944

`record[gcd(A002262(n), A205037(n+2))]`
-/

namespace A205034.P3818527771798342944
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A205037 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205034.P3818527771798342944

/-!
# A205035: Number of (n+1)X4 0..3 arrays with permanents of 2X2 subblocks differing from horizontal and vertical neighbor permanents.

The programs for A205035, there is no canonical definition to state claims against.
-/

/-! ## A205035.P18348441810724647889

`A205037(A167614(n+1))`
-/

namespace A205035.P18348441810724647889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205037 (A167614 (n + 1)).toNat

end

end A205035.P18348441810724647889

/-!
# A205036: Number of (n+1)X5 0..3 arrays with permanents of 2X2 subblocks differing from horizontal and vertical neighbor permanents.

The programs for A205036, there is no canonical definition to state claims against.
-/

/-! ## A205036.P6727823116281176211

`A205037(A020752(n+1))`
-/

namespace A205036.P6727823116281176211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205037 (A020752 (n + 1)).toNat

end

end A205036.P6727823116281176211

/-!
# A205038: Number of (n+1)X(n+1) 0..6 arrays with the permanents of all 2X2 subblocks equal and nonzero.

The programs for A205038, there is no canonical definition to state claims against.
-/

/-! ## A205038.P2864439185292866191

`A205046(∑[4*n]+1)`
-/

namespace A205038.P2864439185292866191
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205046 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A205038.P2864439185292866191

/-!
# A205039: Number of (n+1)X2 0..6 arrays with the permanents of all 2X2 subblocks equal and nonzero.

The programs for A205039, there is no canonical definition to state claims against.
-/

/-! ## A205039.P12296431610097595466

`A205046(∑[n]+1)`
-/

namespace A205039.P12296431610097595466
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205046 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A205039.P12296431610097595466

/-! ## A205039.P10670478848273314184

`record[A010054(n)*A205046(n+1)]`
-/

namespace A205039.P10670478848273314184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A205046 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205039.P10670478848273314184

/-! ## A205039.P8457467065664178459

`record[root(A205046(n+1), A002260(n+1))]`
-/

namespace A205039.P8457467065664178459
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A205046 (n + 1) : ℝ) ^ (1 / (A002260 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205039.P8457467065664178459

/-! ## A205039.P13298039365098314126

`record[root(A205046(n+1), A196863(n+1))]`
-/

namespace A205039.P13298039365098314126
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A205046 (n + 1) : ℝ) ^ (1 / (A196863 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205039.P13298039365098314126

/-!
# A205040: Number of (n+1)X3 0..6 arrays with the permanents of all 2X2 subblocks equal and nonzero.

The programs for A205040, there is no canonical definition to state claims against.
-/

/-! ## A205040.P17429553507071383220

`A205046(∑[n+1]+2)`
-/

namespace A205040.P17429553507071383220
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205046 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A205040.P17429553507071383220

/-! ## A205040.P6400725194260095029

`record[A010054(n)*A205046(n+2)]`
-/

namespace A205040.P6400725194260095029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A205046 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205040.P6400725194260095029

/-! ## A205040.P6286465421995919411

`record[root(A205046(n+2), A002260(n+1))]`
-/

namespace A205040.P6286465421995919411
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A205046 (n + 2) : ℝ) ^ (1 / (A002260 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205040.P6286465421995919411

/-! ## A205040.P458580125343283126

`record[gcd(A174624(n+1), A205046(n+2))]`
-/

namespace A205040.P458580125343283126
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A174624 (n + 1)) (A205046 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205040.P458580125343283126

/-! ## A205040.P6059795221455067000

`record[root(A205046(n+2), A196863(n+3))]`
-/

namespace A205040.P6059795221455067000
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A205046 (n + 2) : ℝ) ^ (1 / (A196863 (n + 3) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205040.P6059795221455067000

/-!
# A205041: Number of (n+1)X4 0..6 arrays with the permanents of all 2X2 subblocks equal and nonzero.

The programs for A205041, there is no canonical definition to state claims against.
-/

/-! ## A205041.P11837670805745870417

`A205046(∑[n+2]+4)`
-/

namespace A205041.P11837670805745870417
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205046 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A205041.P11837670805745870417

/-!
# A205042: Number of (n+1)X5 0..6 arrays with the permanents of all 2X2 subblocks equal and nonzero.

The programs for A205042, there is no canonical definition to state claims against.
-/

/-! ## A205042.P9249690017119373180

`A205046(A374004(n+1))`
-/

namespace A205042.P9249690017119373180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205046 (A374004 (n + 1)).toNat

end

end A205042.P9249690017119373180

/-! ## A205042.P16550685962940859850

`A205046(A141214(n+1))`
-/

namespace A205042.P16550685962940859850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205046 (A141214 (n + 1)).toNat

end

end A205042.P16550685962940859850

/-!
# A205043: Number of (n+1)X6 0..6 arrays with the permanents of all 2X2 subblocks equal and nonzero.

The programs for A205043, there is no canonical definition to state claims against.
-/

/-! ## A205043.P3979028722734659795

`A205046(A374005(n+1))`
-/

namespace A205043.P3979028722734659795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205046 (A374005 (n + 1)).toNat

end

end A205043.P3979028722734659795

/-!
# A205044: Number of (n+1)X7 0..6 arrays with the permanents of all 2X2 subblocks equal and nonzero.

The programs for A205044, there is no canonical definition to state claims against.
-/

/-! ## A205044.P5490691595978356871

`A205046(A374007(n+1))`
-/

namespace A205044.P5490691595978356871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205046 (A374007 (n + 1)).toNat

end

end A205044.P5490691595978356871

/-!
# A205045: Number of (n+1)X8 0..6 arrays with the permanents of all 2X2 subblocks equal and nonzero.

The programs for A205045, there is no canonical definition to state claims against.
-/

/-! ## A205045.P14862242865390651352

`A205046(A374008(n+1))`
-/

namespace A205045.P14862242865390651352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205046 (A374008 (n + 1)).toNat

end

end A205045.P14862242865390651352

/-!
# A205047: Number of (n+1)X(n+1) 0..2 arrays with the number of rightwards and downwards edge increases in each 2X2 subblock equal to the number in all its horizontal and vertical neighbors.

The programs for A205047, there is no canonical definition to state claims against.
-/

/-! ## A205047.P9314880289169307405

`A205055((n+1)²+n²)`
-/

namespace A205047.P9314880289169307405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205055 ((n + 1) ^ 2 + n ^ 2)

end

end A205047.P9314880289169307405

/-! ## A205047.P8521245770348401273

`record[A003982(n)*A205055(n+1)]`
-/

namespace A205047.P8521245770348401273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A205055 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205047.P8521245770348401273

/-! ## A205047.P9974585158482599968

`record[gcd(A003987(n), A205055(n+1))]`
-/

namespace A205047.P9974585158482599968
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003987 n) (A205055 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205047.P9974585158482599968

/-! ## A205047.P1139053048298734470

`record[root(A205055(n+1), A286157(n+1))]`
-/

namespace A205047.P1139053048298734470
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A205055 (n + 1) : ℝ) ^ (1 / (A286157 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205047.P1139053048298734470

/-!
# A205048: Number of (n+1)X2 0..2 arrays with the number of rightwards and downwards edge increases in each 2X2 subblock equal to the number in all its horizontal and vertical neighbors.

The programs for A205048, there is no canonical definition to state claims against.
-/

/-! ## A205048.P1465390766882924225

`A205055(∑[n]+1)`
-/

namespace A205048.P1465390766882924225
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205055 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A205048.P1465390766882924225

/-! ## A205048.P6618428280808668768

`record[gcd(A205055(n+1), A221524(n+1))]`
-/

namespace A205048.P6618428280808668768
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A205055 (n + 1)) (A221524 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205048.P6618428280808668768

/-! ## A205048.P5425694338329214550

`record[A205055(A286157(n+1))]`
-/

namespace A205048.P5425694338329214550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205055 (A286157 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205048.P5425694338329214550

/-! ## A205048.P4448754610601592452

`record[root(A205055(n+1), A124575(n))]`
-/

namespace A205048.P4448754610601592452
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A205055 (n + 1) : ℝ) ^ (1 / (A124575 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205048.P4448754610601592452

/-!
# A205049: Number of (n+1)X3 0..2 arrays with the number of rightwards and downwards edge increases in each 2X2 subblock equal to the number in all its horizontal and vertical neighbors.

The programs for A205049, there is no canonical definition to state claims against.
-/

/-! ## A205049.P16480431055080563570

`A205055(∑[n+1]+2)`
-/

namespace A205049.P16480431055080563570
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205055 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A205049.P16480431055080563570

/-! ## A205049.P4040675854929060181

`record[A205055(A286157(n+1)+2)]`
-/

namespace A205049.P4040675854929060181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205055 (A286157 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205049.P4040675854929060181

/-! ## A205049.P14759183733013550340

`record[A205055(Δ[A003453(n+5)])]`
-/

namespace A205049.P14759183733013550340
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205055 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205049.P14759183733013550340

/-! ## A205049.P18313959479539934913

`record[A107727(n+2)*A205055(n+2)]`
-/

namespace A205049.P18313959479539934913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107727 (n + 2) * A205055 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205049.P18313959479539934913

/-!
# A205050: Number of (n+1)X4 0..2 arrays with the number of rightwards and downwards edge increases in each 2X2 subblock equal to the number in all its horizontal and vertical neighbors.

The programs for A205050, there is no canonical definition to state claims against.
-/

/-! ## A205050.P7138973028536476567

`A205055(∑[n+2]+4)`
-/

namespace A205050.P7138973028536476567
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205055 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A205050.P7138973028536476567

/-!
# A205051: Number of (n+1)X5 0..2 arrays with the number of rightwards and downwards edge increases in each 2X2 subblock equal to the number in all its horizontal and vertical neighbors.

The programs for A205051, there is no canonical definition to state claims against.
-/

/-! ## A205051.P1330242664778586507

`A205055(A374004(n+1))`
-/

namespace A205051.P1330242664778586507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205055 (A374004 (n + 1)).toNat

end

end A205051.P1330242664778586507

/-! ## A205051.P6375834939900097753

`A205055(A141214(n+1))`
-/

namespace A205051.P6375834939900097753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205055 (A141214 (n + 1)).toNat

end

end A205051.P6375834939900097753

/-!
# A205052: Number of (n+1)X6 0..2 arrays with the number of rightwards and downwards edge increases in each 2X2 subblock equal to the number in all its horizontal and vertical neighbors.

The programs for A205052, there is no canonical definition to state claims against.
-/

/-! ## A205052.P4687229692948621998

`A205055(A374005(n+1))`
-/

namespace A205052.P4687229692948621998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205055 (A374005 (n + 1)).toNat

end

end A205052.P4687229692948621998

/-! ## A205052.P1955454731078800074

`A205055(Δ[A264443(n)])`
-/

namespace A205052.P1955454731078800074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205055 (f1 (n + 1) - f1 n).toNat

end

end A205052.P1955454731078800074

/-!
# A205053: Number of (n+1)X7 0..2 arrays with the number of rightwards and downwards edge increases in each 2X2 subblock equal to the number in all its horizontal and vertical neighbors.

The programs for A205053, there is no canonical definition to state claims against.
-/

/-! ## A205053.P17117283698125376433

`A205055(A374007(n+1))`
-/

namespace A205053.P17117283698125376433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205055 (A374007 (n + 1)).toNat

end

end A205053.P17117283698125376433

/-!
# A205054: Number of (n+1)X8 0..2 arrays with the number of rightwards and downwards edge increases in each 2X2 subblock equal to the number in all its horizontal and vertical neighbors.

The programs for A205054, there is no canonical definition to state claims against.
-/

/-! ## A205054.P13874679440578661948

`A205055(A374008(n+1))`
-/

namespace A205054.P13874679440578661948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205055 (A374008 (n + 1)).toNat

end

end A205054.P13874679440578661948

/-!
# A205056: Number of (n+1)X(n+1) 0..2 arrays with rows and columns of permanents of all 2X2 subblocks lexicographically nondecreasing.

The programs for A205056, there is no canonical definition to state claims against.
-/

/-! ## A205056.P17217393667873690298

`A205063(∑[4*n]+1)`
-/

namespace A205056.P17217393667873690298
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205063 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A205056.P17217393667873690298

/-!
# A205057: Number of (n+1)X2 0..2 arrays with rows and columns of permanents of all 2X2 subblocks lexicographically nondecreasing.

The programs for A205057, there is no canonical definition to state claims against.
-/

/-! ## A205057.P10225734135113735482

`A205206(∑[n]+1)`
-/

namespace A205057.P10225734135113735482
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205206 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A205057.P10225734135113735482

/-! ## A205057.P12979763594491535572

`record[A010054(n)*A205206(n+1)]`
-/

namespace A205057.P12979763594491535572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A205206 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205057.P12979763594491535572

/-! ## A205057.P17631977980930829697

`record[A205206(n+1)/A168549(n)]`
-/

namespace A205057.P17631977980930829697
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205206 (n + 1) : ℚ) / (A168549 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205057.P17631977980930829697

/-! ## A205057.P1242406719998175671

`record[root(A205206(n+1), A074909(n))]`
-/

namespace A205057.P1242406719998175671
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A205206 (n + 1) : ℝ) ^ (1 / (A074909 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205057.P1242406719998175671

/-! ## A205057.P6885737112841718650

`record[root(A205206(n+1), A076110(n+1))]`
-/

namespace A205057.P6885737112841718650
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A205206 (n + 1) : ℝ) ^ (1 / (A076110 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205057.P6885737112841718650

/-!
# A205058: Number of (n+1)X3 0..2 arrays with rows and columns of permanents of all 2X2 subblocks lexicographically nondecreasing.

The programs for A205058, there is no canonical definition to state claims against.
-/

/-! ## A205058.P5442843549587892650

`A205063(∑[n+1]+2)`
-/

namespace A205058.P5442843549587892650
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205063 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A205058.P5442843549587892650

/-! ## A205058.P8475622404507847265

`record[A010054(n)*A205063(n+2)]`
-/

namespace A205058.P8475622404507847265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A205063 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205058.P8475622404507847265

/-! ## A205058.P10830571507913753763

`record[A205063(A101881(n)+1)]`
-/

namespace A205058.P10830571507913753763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205063 (A101881 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205058.P10830571507913753763

/-! ## A205058.P13633973476276215945

`record[A205063(A101881(n^(n%2)))]`
-/

namespace A205058.P13633973476276215945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205063 (A101881 (n ^ (n % 2))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205058.P13633973476276215945

/-!
# A205059: Number of (n+1)X4 0..2 arrays with rows and columns of permanents of all 2X2 subblocks lexicographically nondecreasing.

The programs for A205059, there is no canonical definition to state claims against.
-/

/-! ## A205059.P16817676147537373170

`A205063(∑[n+2]+4)`
-/

namespace A205059.P16817676147537373170
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205063 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A205059.P16817676147537373170

/-!
# A205060: Number of (n+1)X5 0..2 arrays with rows and columns of permanents of all 2X2 subblocks lexicographically nondecreasing.

The programs for A205060, there is no canonical definition to state claims against.
-/

/-! ## A205060.P15813341326234067603

`A205063(∑[n+3]+7)`
-/

namespace A205060.P15813341326234067603
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205063 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A205060.P15813341326234067603

/-!
# A205061: Number of (n+1)X6 0..2 arrays with rows and columns of permanents of all 2X2 subblocks lexicographically nondecreasing.

The programs for A205061, there is no canonical definition to state claims against.
-/

/-! ## A205061.P1738151194660027984

`A205063(A374005(n+1))`
-/

namespace A205061.P1738151194660027984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205063 (A374005 (n + 1)).toNat

end

end A205061.P1738151194660027984

/-!
# A205064: Number of (n+1) X (n+1) 0..1 arrays with the number of rightwards and downwards edge increases in each 2 X 2 subblock differing from the number in all its horizontal and vertical neighbors.

The programs for A205064, there is no canonical definition to state claims against.
-/

/-! ## A205064.P1299889906100000188

`A205072(∑[4*n]+1)`
-/

namespace A205064.P1299889906100000188
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205072 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A205064.P1299889906100000188

/-! ## A205064.P4713217327701633501

`record[A003982(n)*A205072(n+1)]`
-/

namespace A205064.P4713217327701633501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A205072 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205064.P4713217327701633501

/-! ## A205064.P1377004579256218555

`record[root(A205072(n+1), A331886(n))]`
-/

namespace A205064.P1377004579256218555
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A205072 (n + 1) : ℝ) ^ (1 / (A331886 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205064.P1377004579256218555

/-! ## A205064.P3069327849023815457

`record[gcd(A114327(n), A205072(n+1))]`
-/

namespace A205064.P3069327849023815457
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A205072 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205064.P3069327849023815457

/-!
# A205065: Number of (n+1) X 2 0..1 arrays with the number of rightwards and downwards edge increases in each 2 X 2 subblock differing from the number in all its horizontal and vertical neighbors.

The programs for A205065, the canonical program `A205065.P5747957843491031055` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A205065 has offset 1).

The definition of A205065 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 254 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A205065.P5747957843491031055

`ogf((16+40x+18x^2+6x^3+14x^4-18x^5+8x^6+22x^7-8x^8+2x^9)/(1-5x^2-2x^3-4x^5+3x^6-4x^8+2x^9))`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A205065

/-- `ogf((16+40x+18x^2+6x^3+14x^4-18x^5+8x^6+22x^7-8x^8+2x^9)/(1-5x^2-2x^3-4x^5+3x^6-4x^8+2x^9))` -/
def P5747957843491031055.Spec : Prop :=
  ∀ n, P5747957843491031055.a n = A205065 (n + 1)

theorem P5747957843491031055.correct : P5747957843491031055.Spec := by
  intro n
  simp only [A205065, Nat.add_sub_cancel]

end A205065

/-! ## A205065.P5877612183657697708

`A205072(1+∑[n])`
-/

namespace A205065.P5877612183657697708
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205072 (1 + ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A205065.P5877612183657697708

namespace A205065

/-- `A205072(1+∑[n])` -/
def P5877612183657697708.Spec : Prop :=
  ∀ n, P5877612183657697708.a n = A205065 (n + 1)

end A205065

/-! ## A205065.P15664435700934248613

`record[A205072(n+1)]`
-/

namespace A205065.P15664435700934248613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205072 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205065.P15664435700934248613

namespace A205065

/-- `record[A205072(n+1)]` -/
def P15664435700934248613.Spec : Prop :=
  ∀ n, P15664435700934248613.a n = A205065 (n + 1)

end A205065

/-!
# A205066: Number of (n+1) X 3 0..1 arrays with the number of rightwards and downwards edge increases in each 2 X 2 subblock differing from the number in all its horizontal and vertical neighbors.

The programs for A205066, the canonical program `A205066.P2188885110643641329` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A205066 has offset 1).

The definition of A205066 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 471 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A205066.P2188885110643641329

`ogf((40+64x-30x^2-46x^3-26x^4-52x^5-54x^6-76x^7+2x^8+24x^9+6x^10+30x^11+2x^12-8x^13)/(1-3x^2+x^6+4x^8+x^10-x^12))`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A205066

/-- `ogf((40+64x-30x^2-46x^3-26x^4-52x^5-54x^6-76x^7+2x^8+24x^9+6x^10+30x^11+2x^12-8x^13)/(1-3x^2+x^6+4x^8+x^10-x^12))` -/
def P2188885110643641329.Spec : Prop :=
  ∀ n, P2188885110643641329.a n = A205066 (n + 1)

theorem P2188885110643641329.correct : P2188885110643641329.Spec := by
  intro n
  simp only [A205066, Nat.add_sub_cancel]

end A205066

/-! ## A205066.P17655414783694873581

`A205072(∑[n+1]+2)`
-/

namespace A205066.P17655414783694873581
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205072 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A205066.P17655414783694873581

namespace A205066

/-- `A205072(∑[n+1]+2)` -/
def P17655414783694873581.Spec : Prop :=
  ∀ n, P17655414783694873581.a n = A205066 (n + 1)

end A205066

/-! ## A205066.P15996692525857492734

`record[A010054(n)*A205072(n+2)]`
-/

namespace A205066.P15996692525857492734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A205072 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205066.P15996692525857492734

namespace A205066

/-- `record[A010054(n)*A205072(n+2)]` -/
def P15996692525857492734.Spec : Prop :=
  ∀ n, P15996692525857492734.a n = A205066 (n + 1)

end A205066

/-!
# A205067: Number of (n+1)X4 0..1 arrays with the number of rightwards and downwards edge increases in each 2X2 subblock differing from the number in all its horizontal and vertical neighbors.

The programs for A205067, there is no canonical definition to state claims against.
-/

/-! ## A205067.P16369108797525410820

`A205072(A167614(n+1))`
-/

namespace A205067.P16369108797525410820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205072 (A167614 (n + 1)).toNat

end

end A205067.P16369108797525410820

/-!
# A205068: Number of (n+1)X5 0..1 arrays with the number of rightwards and downwards edge increases in each 2X2 subblock differing from the number in all its horizontal and vertical neighbors.

The programs for A205068, there is no canonical definition to state claims against.
-/

/-! ## A205068.P8622115841331665246

`A205072(∑[n+3]+7)`
-/

namespace A205068.P8622115841331665246
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205072 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A205068.P8622115841331665246

/-!
# A205069: Number of (n+1)X6 0..1 arrays with the number of rightwards and downwards edge increases in each 2X2 subblock differing from the number in all its horizontal and vertical neighbors.

The programs for A205069, there is no canonical definition to state claims against.
-/

/-! ## A205069.P5867843857973764889

`A205072(A374005(n+1))`
-/

namespace A205069.P5867843857973764889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205072 (A374005 (n + 1)).toNat

end

end A205069.P5867843857973764889

/-!
# A205070: Number of (n+1)X7 0..1 arrays with the number of rightwards and downwards edge increases in each 2X2 subblock differing from the number in all its horizontal and vertical neighbors.

The programs for A205070, there is no canonical definition to state claims against.
-/

/-! ## A205070.P2737826041085682930

`A205072(A374007(n+1))`
-/

namespace A205070.P2737826041085682930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205072 (A374007 (n + 1)).toNat

end

end A205070.P2737826041085682930

/-!
# A205071: Number of (n+1)X8 0..1 arrays with the number of rightwards and downwards edge increases in each 2X2 subblock differing from the number in all its horizontal and vertical neighbors.

The programs for A205071, there is no canonical definition to state claims against.
-/

/-! ## A205071.P18182178436280109174

`A205072(A374008(n+1))`
-/

namespace A205071.P18182178436280109174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205072 (A374008 (n + 1)).toNat

end

end A205071.P18182178436280109174

/-!
# A205073: Number of nXnXn 0..6 triangular arrays with each element x equal to the number its neighbors equal to 6,6,2,0,0,0,1 for x=0,1,2,3,4,5,6.

The programs for A205073, there is no canonical definition to state claims against.
-/

/-! ## A205073.P7108497272011101015

`∑[A081598(A317354(n))]`
-/

namespace A205073.P7108497272011101015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081598 (A317354 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A205073.P7108497272011101015

/-!
# A205074: Number of nXnXn 0..6 triangular arrays with each element x equal to the number its neighbors equal to 6,0,4,1,1,1,1 for x=0,1,2,3,4,5,6.

The programs for A205074, there is no canonical definition to state claims against.
-/

/-! ## A205074.P8006450081825335910

`A321517(a(n-1))` with `a(0)=1, a(1)=4, a(2)=1, a(3)=5`
-/

namespace A205074.P8006450081825335910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 1, 5] fun n a =>
  A321517 (a (n - 1)).toNat

end

end A205074.P8006450081825335910

/-!
# A205075: Number of nXnXn 0..6 triangular arrays with each element x equal to the number its neighbors equal to 6,4,2,0,2,0,2 for x=0,1,2,3,4,5,6.

The programs for A205075, there is no canonical definition to state claims against.
-/

/-! ## A205075.P3648940450444495636

`A084557(n^(n+2))+1`
-/

namespace A205075.P3648940450444495636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084557 (n ^ (n + 2)) + 1

end

end A205075.P3648940450444495636

/-!
# A205076: Number of nXnXn 0..6 triangular arrays with each element x equal to the number its neighbors equal to 4,6,2,0,1,0,1 for x=0,1,2,3,4,5,6.

The programs for A205076, there is no canonical definition to state claims against.
-/

/-! ## A205076.P14472130838318322747

`A031177(∑[n]*a(n-1))` with `a(0)=1`
-/

namespace A205076.P14472130838318322747
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A031177 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * a (n - 1)).toNat

end

end A205076.P14472130838318322747

/-!
# A205078: Number of nXnXn 0..6 triangular arrays with each element x equal to the number its neighbors equal to 4,0,0,1,1,0,1 for x=0,1,2,3,4,5,6.

The programs for A205078, there is no canonical definition to state claims against.
-/

/-! ## A205078.P17248748900350444739

`A062968(A098752(n+1)+A050353(n))`
-/

namespace A205078.P17248748900350444739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062968 (A098752 (n + 1) + A050353 n).toNat

end

end A205078.P17248748900350444739

/-!
# A205081: Number of nXnXn 0..6 triangular arrays with each element x equal to the number its neighbors equal to 0,0,1,1,1,1,1 for x=0,1,2,3,4,5,6.

The programs for A205081, there is no canonical definition to state claims against.
-/

/-! ## A205081.P4473306165304742983

`A047427(∑[A047799(n)])`
-/

namespace A205081.P4473306165304742983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047799 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047427 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A205081.P4473306165304742983

/-!
# A205082: Number of nXnXn 0..6 triangular arrays with each element x equal to the number its neighbors equal to 1,3,2,1,2,0,0 for x=0,1,2,3,4,5,6.

The programs for A205082, there is no canonical definition to state claims against.
-/

/-! ## A205082.P5129029755937180073

`∑[A161815(A025487(n+2))]`
-/

namespace A205082.P5129029755937180073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161815 (A025487 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A205082.P5129029755937180073

/-! ## A205082.P17182101462646037393

`∑[A161815(A052810(n+2))]`
-/

namespace A205082.P17182101462646037393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161815 (A052810 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A205082.P17182101462646037393

/-!
# A205083: Parity of A070885.

The programs for A205083, there is no canonical definition to state claims against.
-/

/-! ## A205083.P16638689076073344716

`A304273(1+n)^n`
-/

namespace A205083.P16638689076073344716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304273 (1 + n) ^ n

end

end A205083.P16638689076073344716

/-! ## A205083.P11278390032378554944

`A304273(3+abs(n-2))`
-/

namespace A205083.P11278390032378554944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304273 (3 + |(n : ℤ) - 2|).toNat

end

end A205083.P11278390032378554944

/-! ## A205083.P7286418240660090585

`round(A304273(n+1)/2)`
-/

namespace A205083.P7286418240660090585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A304273 (n + 1) : ℚ) / 2)

end

end A205083.P7286418240660090585

/-! ## A205083.P11001284851553679133

`abs(a(n-1)-A082416(n))` with `a(0)=1, a(1)=1`
-/

namespace A205083.P11001284851553679133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  |a (n - 1) - A082416 n|

end

end A205083.P11001284851553679133

/-! ## A205083.P6505196233874159030

`A304273(n+1)-A000007(n)`
-/

namespace A205083.P6505196233874159030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304273 (n + 1) - A000007 n

end

end A205083.P6505196233874159030

/-! ## A205083.P13125733578954816248

`A304273(n+1)/A054977(n)`
-/

namespace A205083.P13125733578954816248
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A304273 (n + 1) : ℚ) / (A054977 n : ℚ)

end

end A205083.P13125733578954816248

/-! ## A205083.P3776007681677571900

`A304273(n+1)-A000038(n)/2`
-/

namespace A205083.P3776007681677571900
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A304273 (n + 1) : ℚ) - (A000038 n : ℚ) / 2

end

end A205083.P3776007681677571900

/-! ## A205083.P7580794730629129540

`A304273(n+1)-A061007(A017569(n)-1)`
-/

namespace A205083.P7580794730629129540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304273 (n + 1) - A061007 (A017569 n - 1).toNat

end

end A205083.P7580794730629129540

/-! ## A205083.P1917138738892016680

`A000045(A081848(n+1)-A061419(n+1))`
-/

namespace A205083.P1917138738892016680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A081848 (n + 1) - A061419 (n + 1)).toNat

end

end A205083.P1917138738892016680

/-! ## A205083.P2662882587081491339

`A070885(n+1)%2`
-/

namespace A205083.P2662882587081491339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070885 (n + 1)) 2

end

end A205083.P2662882587081491339

/-! ## A205083.P3566073206016782462

`and(A070885(n+1), A158388(n))`
-/

namespace A205083.P3566073206016782462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A070885 (n + 1)) (A158388 n)

end

end A205083.P3566073206016782462

/-! ## A205083.P9040907725573865436

`and(A070885(n+1), A267936(n))`
-/

namespace A205083.P9040907725573865436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A070885 (n + 1)) (A267936 n)

end

end A205083.P9040907725573865436

/-! ## A205083.P11241247010852601458

`A305498(n+1)-A070885(n+1)`
-/

namespace A205083.P11241247010852601458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305498 (n + 1) - A070885 (n + 1)

end

end A205083.P11241247010852601458

/-! ## A205083.P4577562729848460549

`2*A061419(n+1)-A070885(n+1)`
-/

namespace A205083.P4577562729848460549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A061419 (n + 1) - A070885 (n + 1)

end

end A205083.P4577562729848460549

/-! ## A205083.P2590564838927814705

`A061418(n+1)+A006999(n)-A070885(n+1)`
-/

namespace A205083.P2590564838927814705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061418 (n + 1) + (A006999 n - A070885 (n + 1))

end

end A205083.P2590564838927814705

/-! ## A205083.P3567235344247838410

`and(A048578(n), A070885(n+1))`
-/

namespace A205083.P3567235344247838410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A048578 n) (A070885 (n + 1))

end

end A205083.P3567235344247838410

/-! ## A205083.P3978615838015458946

`and(A066827(n+1), A070885(n+1))`
-/

namespace A205083.P3978615838015458946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A066827 (n + 1)) (A070885 (n + 1))

end

end A205083.P3978615838015458946

/-! ## A205083.P12430966287662181851

`and(A020737(n), A070885(n+1))`
-/

namespace A205083.P12430966287662181851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A020737 n) (A070885 (n + 1))

end

end A205083.P12430966287662181851

/-! ## A205083.P10758765963694267663

`and(A070885(n+1), A195744(n))`
-/

namespace A205083.P10758765963694267663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A070885 (n + 1)) (A195744 n)

end

end A205083.P10758765963694267663

/-! ## A205083.P15043504453743764150

`and(A070885(n+1), A122041(n+1))`
-/

namespace A205083.P15043504453743764150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A070885 (n + 1)) (A122041 (n + 1))

end

end A205083.P15043504453743764150

/-!
# A205084: a(n) = n 4's sandwiched between two 1's.

The programs for A205084, the canonical program `A205084.P5125241667533846105` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A205084 has offset 0).

The definition of A205084 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A205084.P13869827173960503468

`ogf((11+20x)/(1-11x+10x^2))`
-/

namespace A205084.P13869827173960503468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [11, 20] [1, -11, 10] n

end

end A205084.P13869827173960503468

namespace A205084

/-- `ogf((11+20x)/(1-11x+10x^2))` -/
def P13869827173960503468.Spec : Prop :=
  ∀ n, P13869827173960503468.a n = A205084 n

end A205084

/-! ## A205084.P5125241667533846105

`10*a(n-1)+31` with `a(0)=11`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A205084

/-- `10*a(n-1)+31` -/
def P5125241667533846105.Spec : Prop :=
  ∀ n, (P5125241667533846105.a n : ℤ) = A205084 n

theorem P5125241667533846105.correct : P5125241667533846105.Spec := by
  intro n
  simp only [A205084]

end A205084

/-! ## A205084.P7161138276817372812

`(130*10^n-31)/9`
-/

namespace A205084.P7161138276817372812
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((130 * 10 ^ n : ℤ) - 31 : ℚ) / 9

end

end A205084.P7161138276817372812

namespace A205084

/-- `(130*10^n-31)/9` -/
def P7161138276817372812.Spec : Prop :=
  ∀ n, P7161138276817372812.a n = (A205084 n : ℚ)

theorem P7161138276817372812.correct : P7161138276817372812.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A205084, Nat.add_sub_cancel, A205084.P7161138276817372812.a, A205084.P5125241667533846105.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A205084, Nat.add_sub_cancel, A205084.P7161138276817372812.a, A205084.P5125241667533846105.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A205084

/-! ## A205084.P18366912536796044869

`∑[lcm(13, 10^n)]-2`
-/

namespace A205084.P18366912536796044869
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 13 (10 ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 2

end

end A205084.P18366912536796044869

namespace A205084

/-- `∑[lcm(13, 10^n)]-2` -/
def P18366912536796044869.Spec : Prop :=
  ∀ n, P18366912536796044869.a n = A205084 n

end A205084

/-! ## A205084.P13776123423659559732

`∑[10*a(n-1)]-2` with `a(0)=13`
-/

namespace A205084.P13776123423659559732
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [13] fun n f1 =>
  10 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 2

end

end A205084.P13776123423659559732

namespace A205084

/-- `∑[10*a(n-1)]-2` -/
def P13776123423659559732.Spec : Prop :=
  ∀ n, P13776123423659559732.a n = A205084 n

end A205084

/-! ## A205084.P8963729056843469750

`A094620(Δ[n²])`
-/

namespace A205084.P8963729056843469750
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094620 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A205084.P8963729056843469750

namespace A205084

/-- `A094620(Δ[n²])` -/
def P8963729056843469750.Spec : Prop :=
  ∀ n, P8963729056843469750.a n = A205084 n

end A205084

/-! ## A205084.P6508776160765579374

`A094621(Δ[n²])`
-/

namespace A205084.P6508776160765579374
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094621 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A205084.P6508776160765579374

namespace A205084

/-- `A094621(Δ[n²])` -/
def P6508776160765579374.Spec : Prop :=
  ∀ n, P6508776160765579374.a n = A205084 n

end A205084

/-! ## A205084.P14886584140656222579

`A094622(Δ[n²])`
-/

namespace A205084.P14886584140656222579
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094622 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A205084.P14886584140656222579

namespace A205084

/-- `A094622(Δ[n²])` -/
def P14886584140656222579.Spec : Prop :=
  ∀ n, P14886584140656222579.a n = A205084 n

end A205084

/-! ## A205084.P11345035006299187165

`A099914(n+1)-3`
-/

namespace A205084.P11345035006299187165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099914 (n + 1) - 3

end

end A205084.P11345035006299187165

namespace A205084

/-- `A099914(n+1)-3` -/
def P11345035006299187165.Spec : Prop :=
  ∀ n, P11345035006299187165.a n = A205084 n

end A205084

/-! ## A205084.P15299201805398482500

`A094621(2*(n+1))-2`
-/

namespace A205084.P15299201805398482500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094621 (2 * (n + 1)) - 2

end

end A205084.P15299201805398482500

namespace A205084

/-- `A094621(2*(n+1))-2` -/
def P15299201805398482500.Spec : Prop :=
  ∀ n, P15299201805398482500.a n = A205084 n

end A205084

/-!
# A205085: a(n) = n 5's sandwiched between two 1's.

The programs for A205085, the canonical program `A205085.P16090276885922125530` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A205085 has offset 0).

The definition of A205085 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A205085.P5641262316500478396

`ogf((11+30x)/(1-11x+10x^2))`
-/

namespace A205085.P5641262316500478396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [11, 30] [1, -11, 10] n

end

end A205085.P5641262316500478396

namespace A205085

/-- `ogf((11+30x)/(1-11x+10x^2))` -/
def P5641262316500478396.Spec : Prop :=
  ∀ n, P5641262316500478396.a n = A205085 n

end A205085

/-! ## A205085.P16090276885922125530

`10*a(n-1)+41` with `a(0)=11`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A205085

/-- `10*a(n-1)+41` -/
def P16090276885922125530.Spec : Prop :=
  ∀ n, (P16090276885922125530.a n : ℤ) = A205085 n

theorem P16090276885922125530.correct : P16090276885922125530.Spec := by
  intro n
  simp only [A205085]

end A205085

/-! ## A205085.P3605877796860117288

`(140*10^n-41)/9`
-/

namespace A205085.P3605877796860117288
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((140 * 10 ^ n : ℤ) - 41 : ℚ) / 9

end

end A205085.P3605877796860117288

namespace A205085

/-- `(140*10^n-41)/9` -/
def P3605877796860117288.Spec : Prop :=
  ∀ n, P3605877796860117288.a n = (A205085 n : ℚ)

theorem P3605877796860117288.correct : P3605877796860117288.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A205085, Nat.add_sub_cancel, A205085.P3605877796860117288.a, A205085.P16090276885922125530.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A205085, Nat.add_sub_cancel, A205085.P3605877796860117288.a, A205085.P16090276885922125530.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A205085

/-! ## A205085.P17725689690876914856

`∑[10*a(n-1)]-3` with `a(0)=14`
-/

namespace A205085.P17725689690876914856
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [14] fun n f1 =>
  10 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 3

end

end A205085.P17725689690876914856

namespace A205085

/-- `∑[10*a(n-1)]-3` -/
def P17725689690876914856.Spec : Prop :=
  ∀ n, P17725689690876914856.a n = A205085 n

end A205085

/-! ## A205085.P5557284901177338054

`A099915(n+1)-4`
-/

namespace A205085.P5557284901177338054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099915 (n + 1) - 4

end

end A205085.P5557284901177338054

namespace A205085

/-- `A099915(n+1)-4` -/
def P5557284901177338054.Spec : Prop :=
  ∀ n, P5557284901177338054.a n = A205085 n

end A205085

/-! ## A205085.P6090885336810425788

`or(1, 10*A099915(n))`
-/

namespace A205085.P6090885336810425788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (10 * A099915 n)

end

end A205085.P6090885336810425788

namespace A205085

/-- `or(1, 10*A099915(n))` -/
def P6090885336810425788.Spec : Prop :=
  ∀ n, P6090885336810425788.a n = A205085 n

end A205085

/-! ## A205085.P2443263576319995473

`2*A173807(n+1)+5`
-/

namespace A205085.P2443263576319995473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A173807 (n + 1) + 5

end

end A205085.P2443263576319995473

namespace A205085

/-- `2*A173807(n+1)+5` -/
def P2443263576319995473.Spec : Prop :=
  ∀ n, P2443263576319995473.a n = A205085 n

end A205085

/-! ## A205085.P2813310679665668682

`2*∑[A196662(n+1)]-3`
-/

namespace A205085.P2813310679665668682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196662 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j) - 3

end

end A205085.P2813310679665668682

namespace A205085

/-- `2*∑[A196662(n+1)]-3` -/
def P2813310679665668682.Spec : Prop :=
  ∀ n, P2813310679665668682.a n = A205085 n

end A205085

/-! ## A205085.P278407360246911170

`or(1, A173808(n+1)+A173806(n+1))`
-/

namespace A205085.P278407360246911170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A173808 (n + 1) + A173806 (n + 1))

end

end A205085.P278407360246911170

namespace A205085

/-- `or(1, A173808(n+1)+A173806(n+1))` -/
def P278407360246911170.Spec : Prop :=
  ∀ n, P278407360246911170.a n = A205085 n

end A205085

/-! ## A205085.P18316603311595595686

`xor(3, A173812(n+1)+A173805(n+1))`
-/

namespace A205085.P18316603311595595686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 3 (A173812 (n + 1) + A173805 (n + 1))

end

end A205085.P18316603311595595686

namespace A205085

/-- `xor(3, A173812(n+1)+A173805(n+1))` -/
def P18316603311595595686.Spec : Prop :=
  ∀ n, P18316603311595595686.a n = A205085 n

end A205085

/-!
# A205086: a(n) = n 6's sandwiched between two 1's.

The programs for A205086, the canonical program `A205086.P16433775854259049731` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A205086 has offset 0).

The definition of A205086 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A205086.P4733066777864467385

`ogf((11+40x)/(1-11x+10x^2))`
-/

namespace A205086.P4733066777864467385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [11, 40] [1, -11, 10] n

end

end A205086.P4733066777864467385

namespace A205086

/-- `ogf((11+40x)/(1-11x+10x^2))` -/
def P4733066777864467385.Spec : Prop :=
  ∀ n, P4733066777864467385.a n = A205086 n

end A205086

/-! ## A205086.P16433775854259049731

`10*a(n-1)+51` with `a(0)=11`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A205086

/-- `10*a(n-1)+51` -/
def P16433775854259049731.Spec : Prop :=
  ∀ n, (P16433775854259049731.a n : ℤ) = A205086 n

theorem P16433775854259049731.correct : P16433775854259049731.Spec := by
  intro n
  simp only [A205086]

end A205086

/-! ## A205086.P1588049558396056914

`3*(50*10^n-17)/9`
-/

namespace A205086.P1588049558396056914
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * ((50 * 10 ^ n : ℤ) - 17) : ℚ) / 9

end

end A205086.P1588049558396056914

namespace A205086

/-- `3*(50*10^n-17)/9` -/
def P1588049558396056914.Spec : Prop :=
  ∀ n, P1588049558396056914.a n = (A205086 n : ℚ)

theorem P1588049558396056914.correct : P1588049558396056914.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A205086, Nat.add_sub_cancel, A205086.P1588049558396056914.a, A205086.P16433775854259049731.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A205086, Nat.add_sub_cancel, A205086.P1588049558396056914.a, A205086.P16433775854259049731.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A205086

/-! ## A205086.P3053116463394389458

`∑[10*a(n-1)]-4` with `a(0)=15`
-/

namespace A205086.P3053116463394389458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [15] fun n f1 =>
  10 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 4

end

end A205086.P3053116463394389458

namespace A205086

/-- `∑[10*a(n-1)]-4` -/
def P3053116463394389458.Spec : Prop :=
  ∀ n, P3053116463394389458.a n = A205086 n

end A205086

/-! ## A205086.P16680686222143873966

`A246057(n+1)-5`
-/

namespace A205086.P16680686222143873966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246057 (n + 1) - 5

end

end A205086.P16680686222143873966

namespace A205086

/-- `A246057(n+1)-5` -/
def P16680686222143873966.Spec : Prop :=
  ∀ n, P16680686222143873966.a n = A205086 n

end A205086

/-! ## A205086.P10381673226928508755

`A126109(n+1)-6`
-/

namespace A205086.P10381673226928508755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126109 (n + 1) - 6

end

end A205086.P10381673226928508755

namespace A205086

/-- `A126109(n+1)-6` -/
def P10381673226928508755.Spec : Prop :=
  ∀ n, P10381673226928508755.a n = A205086 n

end A205086

/-! ## A205086.P16043367570592092028

`floor(A177079(n+1)/3)`
-/

namespace A205086.P16043367570592092028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A177079 (n + 1) : ℚ) / 3⌋

end

end A205086.P16043367570592092028

namespace A205086

/-- `floor(A177079(n+1)/3)` -/
def P16043367570592092028.Spec : Prop :=
  ∀ n, P16043367570592092028.a n = A205086 n

end A205086

/-! ## A205086.P11679904123886452723

`3*A173802(n+1)+2`
-/

namespace A205086.P11679904123886452723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A173802 (n + 1) + 2

end

end A205086.P11679904123886452723

namespace A205086

/-- `3*A173802(n+1)+2` -/
def P11679904123886452723.Spec : Prop :=
  ∀ n, P11679904123886452723.a n = A205086 n

end A205086

/-! ## A205086.P13715754705061035966

`A086944(n+1)/3-3`
-/

namespace A205086.P13715754705061035966
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A086944 (n + 1) : ℚ) / 3 - 3

end

end A205086.P13715754705061035966

namespace A205086

/-- `A086944(n+1)/3-3` -/
def P13715754705061035966.Spec : Prop :=
  ∀ n, P13715754705061035966.a n = (A205086 n : ℚ)

theorem P13715754705061035966.correct : P13715754705061035966.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A205086, Nat.add_sub_cancel, A205086.P13715754705061035966.a, A205086.P16433775854259049731.a, A086944, A086944.P12679133145832439248.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A205086, Nat.add_sub_cancel, A205086.P13715754705061035966.a, A205086.P16433775854259049731.a, A086944, A086944.P12679133145832439248.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A205086

/-! ## A205086.P2900961167970249679

`A002279(n+1)+A173804(n+1)+A002279(n+1)`
-/

namespace A205086.P2900961167970249679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002279 (n + 1) + (A173804 (n + 1) + A002279 (n + 1))

end

end A205086.P2900961167970249679

namespace A205086

/-- `A002279(n+1)+A173804(n+1)+A002279(n+1)` -/
def P2900961167970249679.Spec : Prop :=
  ∀ n, P2900961167970249679.a n = A205086 n

end A205086

/-!
# A205087: a(n) = n 7's sandwiched between two 1's.

The programs for A205087, the canonical program `A205087.P7361980200027743896` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A205087 has offset 0).

The definition of A205087 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A205087.P2107178137941799804

`ogf((11+50x)/(1-11x+10x^2))`
-/

namespace A205087.P2107178137941799804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [11, 50] [1, -11, 10] n

end

end A205087.P2107178137941799804

namespace A205087

/-- `ogf((11+50x)/(1-11x+10x^2))` -/
def P2107178137941799804.Spec : Prop :=
  ∀ n, P2107178137941799804.a n = A205087 n

end A205087

/-! ## A205087.P7361980200027743896

`10*a(n-1)+61` with `a(0)=11`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A205087

/-- `10*a(n-1)+61` -/
def P7361980200027743896.Spec : Prop :=
  ∀ n, (P7361980200027743896.a n : ℤ) = A205087 n

theorem P7361980200027743896.correct : P7361980200027743896.Spec := by
  intro n
  simp only [A205087]

end A205087

/-! ## A205087.P16786150613924261743

`(160*10^n-61)/9`
-/

namespace A205087.P16786150613924261743
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((160 * 10 ^ n : ℤ) - 61 : ℚ) / 9

end

end A205087.P16786150613924261743

namespace A205087

/-- `(160*10^n-61)/9` -/
def P16786150613924261743.Spec : Prop :=
  ∀ n, P16786150613924261743.a n = (A205087 n : ℚ)

theorem P16786150613924261743.correct : P16786150613924261743.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A205087, Nat.add_sub_cancel, A205087.P16786150613924261743.a, A205087.P7361980200027743896.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A205087, Nat.add_sub_cancel, A205087.P16786150613924261743.a, A205087.P7361980200027743896.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A205087

/-! ## A205087.P14587039482278881422

`∑[10*a(n-1)]-5` with `a(0)=16`
-/

namespace A205087.P14587039482278881422
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [16] fun n f1 =>
  10 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 5

end

end A205087.P14587039482278881422

namespace A205087

/-- `∑[10*a(n-1)]-5` -/
def P14587039482278881422.Spec : Prop :=
  ∀ n, P14587039482278881422.a n = A205087 n

end A205087

/-! ## A205087.P15750706005712374100

`A246058(n+1)-6`
-/

namespace A205087.P15750706005712374100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246058 (n + 1) - 6

end

end A205087.P15750706005712374100

namespace A205087

/-- `A246058(n+1)-6` -/
def P15750706005712374100.Spec : Prop :=
  ∀ n, P15750706005712374100.a n = A205087 n

end A205087

/-! ## A205087.P320994121454688564

`10*A246058(n)+1`
-/

namespace A205087.P320994121454688564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A246058 n + 1

end

end A205087.P320994121454688564

namespace A205087

/-- `10*A246058(n)+1` -/
def P320994121454688564.Spec : Prop :=
  ∀ n, P320994121454688564.a n = A205087 n

end A205087

/-! ## A205087.P7391798418191102381

`4*A173770(n+1)-1`
-/

namespace A205087.P7391798418191102381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A173770 (n + 1) - 1

end

end A205087.P7391798418191102381

namespace A205087

/-- `4*A173770(n+1)-1` -/
def P7391798418191102381.Spec : Prop :=
  ∀ n, P7391798418191102381.a n = A205087 n

end A205087

/-! ## A205087.P16841670393707599897

`2*A173812(n+1)-3`
-/

namespace A205087.P16841670393707599897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A173812 (n + 1) - 3

end

end A205087.P16841670393707599897

namespace A205087

/-- `2*A173812(n+1)-3` -/
def P16841670393707599897.Spec : Prop :=
  ∀ n, P16841670393707599897.a n = A205087 n

end A205087

/-! ## A205087.P444609934907440665

`2*A173811(n+1)+5`
-/

namespace A205087.P444609934907440665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A173811 (n + 1) + 5

end

end A205087.P444609934907440665

namespace A205087

/-- `2*A173811(n+1)+5` -/
def P444609934907440665.Spec : Prop :=
  ∀ n, P444609934907440665.a n = A205087 n

end A205087

/-! ## A205087.P15184426123652109259

`A228158(2*(n+1))-5`
-/

namespace A205087.P15184426123652109259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228158 (2 * (n + 1)) - 5

end

end A205087.P15184426123652109259

namespace A205087

/-- `A228158(2*(n+1))-5` -/
def P15184426123652109259.Spec : Prop :=
  ∀ n, P15184426123652109259.a n = A205087 n

end A205087

/-!
# A205088: a(n) = n 8's sandwiched between two 1's.

The programs for A205088, the canonical program `A205088.P16678014646405826387` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A205088 has offset 0).

The definition of A205088 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A205088.P4704090467442189369

`ogf((11+60x)/(1-11x+10x^2))`
-/

namespace A205088.P4704090467442189369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [11, 60] [1, -11, 10] n

end

end A205088.P4704090467442189369

namespace A205088

/-- `ogf((11+60x)/(1-11x+10x^2))` -/
def P4704090467442189369.Spec : Prop :=
  ∀ n, P4704090467442189369.a n = A205088 n

end A205088

/-! ## A205088.P16678014646405826387

`10*a(n-1)+71` with `a(0)=11`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A205088

/-- `10*a(n-1)+71` -/
def P16678014646405826387.Spec : Prop :=
  ∀ n, (P16678014646405826387.a n : ℤ) = A205088 n

theorem P16678014646405826387.correct : P16678014646405826387.Spec := by
  intro n
  simp only [A205088]

end A205088

/-! ## A205088.P7630358601268891970

`(170*10^n-71)/9`
-/

namespace A205088.P7630358601268891970
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((170 * 10 ^ n : ℤ) - 71 : ℚ) / 9

end

end A205088.P7630358601268891970

namespace A205088

/-- `(170*10^n-71)/9` -/
def P7630358601268891970.Spec : Prop :=
  ∀ n, P7630358601268891970.a n = (A205088 n : ℚ)

theorem P7630358601268891970.correct : P7630358601268891970.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A205088, Nat.add_sub_cancel, A205088.P7630358601268891970.a, A205088.P16678014646405826387.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A205088, Nat.add_sub_cancel, A205088.P7630358601268891970.a, A205088.P16678014646405826387.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A205088

/-! ## A205088.P14478303054041296288

`∑[10*a(n-1)]-6` with `a(0)=17`
-/

namespace A205088.P14478303054041296288
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [17] fun n f1 =>
  10 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 6

end

end A205088.P14478303054041296288

namespace A205088

/-- `∑[10*a(n-1)]-6` -/
def P14478303054041296288.Spec : Prop :=
  ∀ n, P14478303054041296288.a n = A205088 n

end A205088

/-! ## A205088.P3804944420682320806

`A246059(n+1)-7`
-/

namespace A205088.P3804944420682320806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246059 (n + 1) - 7

end

end A205088.P3804944420682320806

namespace A205088

/-- `A246059(n+1)-7` -/
def P3804944420682320806.Spec : Prop :=
  ∀ n, P3804944420682320806.a n = A205088 n

end A205088

/-! ## A205088.P8451286263908783791

`10*A246059(n)+1`
-/

namespace A205088.P8451286263908783791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A246059 n + 1

end

end A205088.P8451286263908783791

namespace A205088

/-- `10*A246059(n)+1` -/
def P8451286263908783791.Spec : Prop :=
  ∀ n, P8451286263908783791.a n = A205088 n

end A205088

/-! ## A205088.P7540678303179688636

`17*A000042(n+1)-6`
-/

namespace A205088.P7540678303179688636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  17 * A000042 (n + 1) - 6

end

end A205088.P7540678303179688636

namespace A205088

/-- `17*A000042(n+1)-6` -/
def P7540678303179688636.Spec : Prop :=
  ∀ n, P7540678303179688636.a n = A205088 n

end A205088

/-! ## A205088.P15295364972274117330

`A173810(n+1)+10^(n+1)`
-/

namespace A205088.P15295364972274117330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173810 (n + 1) + (10 ^ (n + 1) : ℤ)

end

end A205088.P15295364972274117330

namespace A205088

/-- `A173810(n+1)+10^(n+1)` -/
def P15295364972274117330.Spec : Prop :=
  ∀ n, P15295364972274117330.a n = A205088 n

end A205088

/-! ## A205088.P13975951071983884866

`2*A205086(n)-A205084(n)`
-/

namespace A205088.P13975951071983884866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A205086 n - A205084 n

end

end A205088.P13975951071983884866

namespace A205088

/-- `2*A205086(n)-A205084(n)` -/
def P13975951071983884866.Spec : Prop :=
  ∀ n, P13975951071983884866.a n = A205088 n

end A205088

/-! ## A205088.P15906116742916023852

`A086948(n+1)-∑[A011557(n)]`
-/

namespace A205088.P15906116742916023852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011557 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086948 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A205088.P15906116742916023852

namespace A205088

/-- `A086948(n+1)-∑[A011557(n)]` -/
def P15906116742916023852.Spec : Prop :=
  ∀ n, P15906116742916023852.a n = A205088 n

end A205088

/-!
# A205089: Number of (n+1)X(n+1) 0..3 arrays with the number of rightwards and downwards edge increases in each 2X2 subblock equal to the number in all its horizontal and vertical neighbors.

The programs for A205089, there is no canonical definition to state claims against.
-/

/-! ## A205089.P12236265756823989912

`A205097(∑[4*n]+1)`
-/

namespace A205089.P12236265756823989912
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205097 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A205089.P12236265756823989912

/-!
# A205090: Number of (n+1)X2 0..3 arrays with the number of rightwards and downwards edge increases in each 2X2 subblock equal to the number in all its horizontal and vertical neighbors.

The programs for A205090, there is no canonical definition to state claims against.
-/

/-! ## A205090.P3098608046603338604

`A205097(∑[n]+1)`
-/

namespace A205090.P3098608046603338604
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205097 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A205090.P3098608046603338604

/-! ## A205090.P15595470539552088007

`record[A103451(n)*A205097(n+1)]`
-/

namespace A205090.P15595470539552088007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 n * A205097 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205090.P15595470539552088007

/-! ## A205090.P7217612086333053210

`record[root(A205097(n+1), A074909(n))]`
-/

namespace A205090.P7217612086333053210
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A205097 (n + 1) : ℝ) ^ (1 / (A074909 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205090.P7217612086333053210

/-! ## A205090.P12172801116112327851

`record[root(A205097(n+1), A308500(n))]`
-/

namespace A205090.P12172801116112327851
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A205097 (n + 1) : ℝ) ^ (1 / (A308500 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205090.P12172801116112327851

/-! ## A205090.P9752963531163876963

`record[root(A205097(n+1), A308502(n+1))]`
-/

namespace A205090.P9752963531163876963
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A205097 (n + 1) : ℝ) ^ (1 / (A308502 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205090.P9752963531163876963

/-!
# A205091: Number of (n+1)X3 0..3 arrays with the number of rightwards and downwards edge increases in each 2X2 subblock equal to the number in all its horizontal and vertical neighbors.

The programs for A205091, there is no canonical definition to state claims against.
-/

/-! ## A205091.P8270777957825970809

`A205097(∑[n+1]+2)`
-/

namespace A205091.P8270777957825970809
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205097 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A205091.P8270777957825970809

/-! ## A205091.P3780658049314727607

`record[root(A205097(n+2), A074909(n))]`
-/

namespace A205091.P3780658049314727607
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A205097 (n + 2) : ℝ) ^ (1 / (A074909 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205091.P3780658049314727607

/-! ## A205091.P12568016888314284645

`record[root(A205097(n+2), A308500(n))]`
-/

namespace A205091.P12568016888314284645
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A205097 (n + 2) : ℝ) ^ (1 / (A308500 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205091.P12568016888314284645

/-! ## A205091.P3306126641328971084

`record[root(A205097(n+2), A308502(n+1))]`
-/

namespace A205091.P3306126641328971084
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A205097 (n + 2) : ℝ) ^ (1 / (A308502 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205091.P3306126641328971084

/-! ## A205091.P241186398394180699

`record[root(A205097(n+2), A308504(n+1))]`
-/

namespace A205091.P241186398394180699
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A205097 (n + 2) : ℝ) ^ (1 / (A308504 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205091.P241186398394180699

/-!
# A205092: Number of (n+1) X 4 0..3 arrays with the number of rightwards and downwards edge increases in each 2 X 2 subblock equal to the number in all its horizontal and vertical neighbors.

The programs for A205092, there is no canonical definition to state claims against.
-/

/-! ## A205092.P16581066480685442194

`A205097(∑[n+2]+4)`
-/

namespace A205092.P16581066480685442194
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205097 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A205092.P16581066480685442194

/-!
# A205093: Number of (n+1)X5 0..3 arrays with the number of rightwards and downwards edge increases in each 2X2 subblock equal to the number in all its horizontal and vertical neighbors.

The programs for A205093, there is no canonical definition to state claims against.
-/

/-! ## A205093.P11920130234962120279

`A205097(A374004(n+1))`
-/

namespace A205093.P11920130234962120279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205097 (A374004 (n + 1)).toNat

end

end A205093.P11920130234962120279

/-! ## A205093.P4667866103426510640

`A205097(A141214(n+1))`
-/

namespace A205093.P4667866103426510640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205097 (A141214 (n + 1)).toNat

end

end A205093.P4667866103426510640

/-!
# A205094: Number of (n+1)X6 0..3 arrays with the number of rightwards and downwards edge increases in each 2X2 subblock equal to the number in all its horizontal and vertical neighbors.

The programs for A205094, there is no canonical definition to state claims against.
-/

/-! ## A205094.P7250192792478398201

`A205097(A374005(n+1))`
-/

namespace A205094.P7250192792478398201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205097 (A374005 (n + 1)).toNat

end

end A205094.P7250192792478398201

/-!
# A205095: Number of (n+1)X7 0..3 arrays with the number of rightwards and downwards edge increases in each 2X2 subblock equal to the number in all its horizontal and vertical neighbors.

The programs for A205095, there is no canonical definition to state claims against.
-/

/-! ## A205095.P5236239240436401291

`A205097(A374007(n+1))`
-/

namespace A205095.P5236239240436401291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205097 (A374007 (n + 1)).toNat

end

end A205095.P5236239240436401291

/-!
# A205096: Number of (n+1)X8 0..3 arrays with the number of rightwards and downwards edge increases in each 2X2 subblock equal to the number in all its horizontal and vertical neighbors.

The programs for A205096, there is no canonical definition to state claims against.
-/

/-! ## A205096.P8912537056154407795

`A205097(A167487(n+5))`
-/

namespace A205096.P8912537056154407795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205097 (A167487 (n + 5)).toNat

end

end A205096.P8912537056154407795

/-!
# A205098: Sum of proper divisors (A001065) of abundant numbers (A005101).

The programs for A205098, the canonical program `A205098.P10471539786565330894` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A205098 has offset 1).

The definition of A205098 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005101, A204822, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A205098.P10471539786565330894

`A204822(n+1)-A005101(n+1)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A205098

/-- `A204822(n+1)-A005101(n+1)` -/
def P10471539786565330894.Spec : Prop :=
  ∀ n, P10471539786565330894.a n = A205098 (n + 1)

theorem P10471539786565330894.correct : P10471539786565330894.Spec := by
  intro n
  simp only [A205098, Nat.add_sub_cancel]

end A205098

/-! ## A205098.P1026427709232284260

`A001065(A005101(n+1))`
-/

namespace A205098.P1026427709232284260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (A005101 (n + 1)).toNat

end

end A205098.P1026427709232284260

namespace A205098

/-- `A001065(A005101(n+1))` -/
def P1026427709232284260.Spec : Prop :=
  ∀ n, P1026427709232284260.a n = A205098 (n + 1)

end A205098

/-! ## A205098.P16154407115458376454

`A033881(n+1)+A005101(n+1)`
-/

namespace A205098.P16154407115458376454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033881 (n + 1) + A005101 (n + 1)

end

end A205098.P16154407115458376454

namespace A205098

/-- `A033881(n+1)+A005101(n+1)` -/
def P16154407115458376454.Spec : Prop :=
  ∀ n, P16154407115458376454.a n = A205098 (n + 1)

end A205098

/-! ## A205098.P5655480918924989873

`∑{d}[A005101(n+1), #-A000010(#)]`
-/

namespace A205098.P5655480918924989873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005101 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, ((d : ℤ) - A000010 d)

end

end A205098.P5655480918924989873

namespace A205098

/-- `∑{d}[A005101(n+1), #-A000010(#)]` -/
def P5655480918924989873.Spec : Prop :=
  ∀ n, P5655480918924989873.a n = A205098 (n + 1)

end A205098

/-! ## A205098.P18093851462066971927

`(A204822(n+1)+A033881(n+1))/2`
-/

namespace A205098.P18093851462066971927
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204822 (n + 1) + A033881 (n + 1) : ℚ) / 2

end

end A205098.P18093851462066971927

namespace A205098

/-- `(A204822(n+1)+A033881(n+1))/2` -/
def P18093851462066971927.Spec : Prop :=
  ∀ n, P18093851462066971927.a n = (A205098 (n + 1) : ℚ)

end A205098

/-! ## A205098.P17910551346916437427

`A033881(n+1)+A224907(n+1)/2`
-/

namespace A205098.P17910551346916437427
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033881 (n + 1) : ℚ) + (A224907 (n + 1) : ℚ) / 2

end

end A205098.P17910551346916437427

namespace A205098

/-- `A033881(n+1)+A224907(n+1)/2` -/
def P17910551346916437427.Spec : Prop :=
  ∀ n, P17910551346916437427.a n = (A205098 (n + 1) : ℚ)

end A205098

/-! ## A205098.P2030234859203588442

`A204822(n+1)-A224907(n+1)/2`
-/

namespace A205098.P2030234859203588442
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204822 (n + 1) : ℚ) - (A224907 (n + 1) : ℚ) / 2

end

end A205098.P2030234859203588442

namespace A205098

/-- `A204822(n+1)-A224907(n+1)/2` -/
def P2030234859203588442.Spec : Prop :=
  ∀ n, P2030234859203588442.a n = (A205098 (n + 1) : ℚ)

theorem P2030234859203588442.correct : P2030234859203588442.Spec := by
  intro n
  simp only [A205098, Nat.add_sub_cancel, A205098.P2030234859203588442.a, A205098.P10471539786565330894.a, A005101, A005101.P6705997063366613997.f1, A005101.P6705997063366613997.f2, A005101.P6705997063366613997.a, A204822, A204822.P986191513022326355.a, A224907, A224907.P17184024121669876912.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A082551, A082551.P4316828637772613674.f1, A082551.P4316828637772613674.f2, A082551.P4316828637772613674.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A205098

/-! ## A205098.P4430104473970702180

`A000203(A224907(n+1)/2)-A005101(n+1)`
-/

namespace A205098.P4430104473970702180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.roundAway ((A224907 (n + 1) : ℚ) / 2)).toNat - A005101 (n + 1)

end

end A205098.P4430104473970702180

namespace A205098

/-- `A000203(A224907(n+1)/2)-A005101(n+1)` -/
def P4430104473970702180.Spec : Prop :=
  ∀ n, P4430104473970702180.a n = A205098 (n + 1)

end A205098

/-! ## A205098.P8003055801769562255

`A204822(n+1)-A224907(n+1)+eq[1, A082551(n+1)]+1`
-/

namespace A205098.P8003055801769562255
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204822 (n + 1) - A224907 (n + 1) + (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1 : ℤ)

end

end A205098.P8003055801769562255

namespace A205098

/-- `A204822(n+1)-A224907(n+1)+eq[1, A082551(n+1)]+1` -/
def P8003055801769562255.Spec : Prop :=
  ∀ n, P8003055801769562255.a n = A205098 (n + 1)

theorem P8003055801769562255.correct : P8003055801769562255.Spec := by
  intro n
  simp only [A205098, Nat.add_sub_cancel, A205098.P8003055801769562255.f1, A205098.P8003055801769562255.f2, A205098.P8003055801769562255.a, A205098.P10471539786565330894.a, A005101, A005101.P6705997063366613997.f1, A005101.P6705997063366613997.f2, A005101.P6705997063366613997.a, A082551, A082551.P4316828637772613674.f1, A082551.P4316828637772613674.f2, A082551.P4316828637772613674.a, A204822, A204822.P986191513022326355.a, A224907, A224907.P17184024121669876912.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A205098

/-! ## A205098.P9355204435480270196

`A000203(lt[2*(n+1), A000203(n+1)]+1)-A005101(n+1)`
-/

namespace A205098.P9355204435480270196
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1) - A005101 (n + 1)

end

end A205098.P9355204435480270196

namespace A205098

/-- `A000203(lt[2*(n+1), A000203(n+1)]+1)-A005101(n+1)` -/
def P9355204435480270196.Spec : Prop :=
  ∀ n, P9355204435480270196.a n = A205098 (n + 1)

end A205098

/-! ## A205098.P14288288555070449180

`A000203(lt[2*(n+1), A000203(n+1)]+1)-A224907(n+1)/2`
-/

namespace A205098.P14288288555070449180
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1) : ℚ) - (A224907 (n + 1) : ℚ) / 2

end

end A205098.P14288288555070449180

namespace A205098

/-- `A000203(lt[2*(n+1), A000203(n+1)]+1)-A224907(n+1)/2` -/
def P14288288555070449180.Spec : Prop :=
  ∀ n, P14288288555070449180.a n = (A205098 (n + 1) : ℚ)

end A205098

/-! ## A205098.P14163188593002802483

`A204822(n+1)-A224907(n+1)+lt[2*(n+1), A000203(n+1)]+1`
-/

namespace A205098.P14163188593002802483
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204822 (n + 1) - A224907 (n + 1) + (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1 : ℤ)

end

end A205098.P14163188593002802483

namespace A205098

/-- `A204822(n+1)-A224907(n+1)+lt[2*(n+1), A000203(n+1)]+1` -/
def P14163188593002802483.Spec : Prop :=
  ∀ n, P14163188593002802483.a n = A205098 (n + 1)

end A205098

/-! ## A205098.P7992077560465394396

`A000203(lt[2, A000203(n+2)/(n+2)]+2)-(lt[2, A000203(n+2)/(n+2)]+2)`
-/

namespace A205098.P7992077560465394396
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 2) : ℚ) / (n + 2 : ℚ)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f4 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 2) : ℚ) / (n + 2 : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n + 2) - (SequenceMachineLib.nth (fun j => (f3 j : ℚ) < f4 j) n + 2 : ℤ)

end

end A205098.P7992077560465394396

namespace A205098

/-- `A000203(lt[2, A000203(n+2)/(n+2)]+2)-(lt[2, A000203(n+2)/(n+2)]+2)` -/
def P7992077560465394396.Spec : Prop :=
  ∀ n, P7992077560465394396.a n = A205098 (n + 1)

end A205098

/-! ## A205098.P5923533738365077159

`A204822(n+1)-A224907(n+1)+lt[n, A326146(n+1)]+1`
-/

namespace A205098.P5923533738365077159
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326146 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204822 (n + 1) - A224907 (n + 1) + (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1 : ℤ)

end

end A205098.P5923533738365077159

namespace A205098

/-- `A204822(n+1)-A224907(n+1)+lt[n, A326146(n+1)]+1` -/
def P5923533738365077159.Spec : Prop :=
  ∀ n, P5923533738365077159.a n = A205098 (n + 1)

end A205098

/-! ## A205098.P13836457198102922312

`A204822(n+1)-A224907(n+1)+eq[1, A294937(n+1)]+1`
-/

namespace A205098.P13836457198102922312
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294937 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204822 (n + 1) - A224907 (n + 1) + (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1 : ℤ)

end

end A205098.P13836457198102922312

namespace A205098

/-- `A204822(n+1)-A224907(n+1)+eq[1, A294937(n+1)]+1` -/
def P13836457198102922312.Spec : Prop :=
  ∀ n, P13836457198102922312.a n = A205098 (n + 1)

end A205098

/-! ## A205098.P16594735974114767877

`∑{d}[A005101(n+1), A051953(#)]`
-/

namespace A205098.P16594735974114767877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005101 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A051953 d

end

end A205098.P16594735974114767877

namespace A205098

/-- `∑{d}[A005101(n+1), A051953(#)]` -/
def P16594735974114767877.Spec : Prop :=
  ∀ n, P16594735974114767877.a n = A205098 (n + 1)

end A205098

/-! ## A205098.P2626126153652353636

`A048050(A224907(1+n)/2)+1`
-/

namespace A205098.P2626126153652353636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048050 (SequenceMachineLib.roundAway ((A224907 (1 + n) : ℚ) / 2)).toNat + 1

end

end A205098.P2626126153652353636

namespace A205098

/-- `A048050(A224907(1+n)/2)+1` -/
def P2626126153652353636.Spec : Prop :=
  ∀ n, P2626126153652353636.a n = A205098 (n + 1)

end A205098

/-! ## A205098.P7365204656944315722

`A319699(A224907(n+1))`
-/

namespace A205098.P7365204656944315722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319699 (A224907 (n + 1)).toNat

end

end A205098.P7365204656944315722

namespace A205098

/-- `A319699(A224907(n+1))` -/
def P7365204656944315722.Spec : Prop :=
  ∀ n, P7365204656944315722.a n = A205098 (n + 1)

end A205098

/-!
# A205099: Sum of proper divisors (A001065) of deficient numbers (A005100).

The programs for A205099, the canonical program `A205099.P16915794968075742101` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A205099 has offset 1).

The definition of A205099 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005100, A204823, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A205099.P16915794968075742101

`A204823(n+1)-A005100(n+1)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A205099

/-- `A204823(n+1)-A005100(n+1)` -/
def P16915794968075742101.Spec : Prop :=
  ∀ n, P16915794968075742101.a n = A205099 (n + 1)

theorem P16915794968075742101.correct : P16915794968075742101.Spec := by
  intro n
  simp only [A205099, Nat.add_sub_cancel]

end A205099

/-! ## A205099.P157779477867293464

`A001065(A005100(n+1))`
-/

namespace A205099.P157779477867293464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (A005100 (n + 1)).toNat

end

end A205099.P157779477867293464

namespace A205099

/-- `A001065(A005100(n+1))` -/
def P157779477867293464.Spec : Prop :=
  ∀ n, P157779477867293464.a n = A205099 (n + 1)

end A205099

/-! ## A205099.P15746651218567170567

`A294886(A005100(1+n))`
-/

namespace A205099.P15746651218567170567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294886 (A005100 (1 + n)).toNat

end

end A205099.P15746651218567170567

namespace A205099

/-- `A294886(A005100(1+n))` -/
def P15746651218567170567.Spec : Prop :=
  ∀ n, P15746651218567170567.a n = A205099 (n + 1)

end A205099

/-! ## A205099.P5253648653513575949

`A005100(n+1)-A033884(n+1)`
-/

namespace A205099.P5253648653513575949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005100 (n + 1) - A033884 (n + 1)

end

end A205099.P5253648653513575949

namespace A205099

/-- `A005100(n+1)-A033884(n+1)` -/
def P5253648653513575949.Spec : Prop :=
  ∀ n, P5253648653513575949.a n = A205099 (n + 1)

end A205099

/-! ## A205099.P13483170492060911550

`∑{d}[A005100(n+1), #-A000010(#)]`
-/

namespace A205099.P13483170492060911550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005100 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, ((d : ℤ) - A000010 d)

end

end A205099.P13483170492060911550

namespace A205099

/-- `∑{d}[A005100(n+1), #-A000010(#)]` -/
def P13483170492060911550.Spec : Prop :=
  ∀ n, P13483170492060911550.a n = A205099 (n + 1)

end A205099

/-! ## A205099.P8794978624879236317

`(A204823(n+1)-A033884(n+1))/2`
-/

namespace A205099.P8794978624879236317
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204823 (n + 1) - A033884 (n + 1) : ℚ) / 2

end

end A205099.P8794978624879236317

namespace A205099

/-- `(A204823(n+1)-A033884(n+1))/2` -/
def P8794978624879236317.Spec : Prop :=
  ∀ n, P8794978624879236317.a n = (A205099 (n + 1) : ℚ)

end A205099

/-! ## A205099.P8376622574750891587

`A225241(n+1)/2-A033884(n+1)`
-/

namespace A205099.P8376622574750891587
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A225241 (n + 1) : ℚ) / 2 - (A033884 (n + 1) : ℚ)

end

end A205099.P8376622574750891587

namespace A205099

/-- `A225241(n+1)/2-A033884(n+1)` -/
def P8376622574750891587.Spec : Prop :=
  ∀ n, P8376622574750891587.a n = (A205099 (n + 1) : ℚ)

end A205099

/-! ## A205099.P9214135864750116543

`A204823(n+1)-A225241(n+1)/2`
-/

namespace A205099.P9214135864750116543
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204823 (n + 1) : ℚ) - (A225241 (n + 1) : ℚ) / 2

end

end A205099.P9214135864750116543

namespace A205099

/-- `A204823(n+1)-A225241(n+1)/2` -/
def P9214135864750116543.Spec : Prop :=
  ∀ n, P9214135864750116543.a n = (A205099 (n + 1) : ℚ)

theorem P9214135864750116543.correct : P9214135864750116543.Spec := by
  intro n
  simp only [A205099, Nat.add_sub_cancel, A205099.P9214135864750116543.a, A205099.P16915794968075742101.a, A005100, A005100.P5902118993367235572.f1, A005100.P5902118993367235572.a, A204823, A204823.P10147325367959720172.f2, A204823.P10147325367959720172.f1, A204823.P10147325367959720172.a, A225241, A225241.P5113222394722278636.a, A082551, A082551.P4316828637772613674.f1, A082551.P4316828637772613674.f2, A082551.P4316828637772613674.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A205099

/-! ## A205099.P7898717453499383375

`A204823(n+1)-(lt[A341620(n+1), 1]+1)`
-/

namespace A205099.P7898717453499383375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341620 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204823 (n + 1) - (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1 : ℤ)

end

end A205099.P7898717453499383375

namespace A205099

/-- `A204823(n+1)-(lt[A341620(n+1), 1]+1)` -/
def P7898717453499383375.Spec : Prop :=
  ∀ n, P7898717453499383375.a n = A205099 (n + 1)

end A205099

/-! ## A205099.P12023951950732635422

`A204823(n+1)-(comp[A023196(n+1)-1]+1)`
-/

namespace A205099.P12023951950732635422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023196 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204823 (n + 1) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1 : ℤ)

end

end A205099.P12023951950732635422

namespace A205099

/-- `A204823(n+1)-(comp[A023196(n+1)-1]+1)` -/
def P12023951950732635422.Spec : Prop :=
  ∀ n, P12023951950732635422.a n = A205099 (n + 1)

end A205099

/-! ## A205099.P13769884695137645

`A204823(n+1)-lt[A000203(abs(1-n)+1), 2*n]`
-/

namespace A205099.P13769884695137645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (|1 - (n : ℤ)| + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204823 (n + 1) - (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n : ℤ)

end

end A205099.P13769884695137645

namespace A205099

/-- `A204823(n+1)-lt[A000203(abs(1-n)+1), 2*n]` -/
def P13769884695137645.Spec : Prop :=
  ∀ n, P13769884695137645.a n = A205099 (n + 1)

end A205099

/-! ## A205099.P4011413493578123289

`A204823(n+1)-(lt[A000203(n+1), 2*(n+1)]+1)`
-/

namespace A205099.P4011413493578123289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204823 (n + 1) - (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1 : ℤ)

end

end A205099.P4011413493578123289

namespace A205099

/-- `A204823(n+1)-(lt[A000203(n+1), 2*(n+1)]+1)` -/
def P4011413493578123289.Spec : Prop :=
  ∀ n, P4011413493578123289.a n = A205099 (n + 1)

end A205099

/-! ## A205099.P5916370244022597098

`A054024(record[A387717(n+1)])`
-/

namespace A205099.P5916370244022597098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387717 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054024 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A205099.P5916370244022597098

namespace A205099

/-- `A054024(record[A387717(n+1)])` -/
def P5916370244022597098.Spec : Prop :=
  ∀ n, P5916370244022597098.a n = A205099 (n + 1)

end A205099

/-! ## A205099.P13864373059257277374

`A294888(lt[A237588(n+1), 1]+1)`
-/

namespace A205099.P13864373059257277374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237588 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294888 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A205099.P13864373059257277374

namespace A205099

/-- `A294888(lt[A237588(n+1), 1]+1)` -/
def P13864373059257277374.Spec : Prop :=
  ∀ n, P13864373059257277374.a n = A205099 (n + 1)

end A205099

/-! ## A205099.P1103937724625469831

`A319699(A225241(n+1))`
-/

namespace A205099.P1103937724625469831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319699 (A225241 (n + 1)).toNat

end

end A205099.P1103937724625469831

namespace A205099

/-- `A319699(A225241(n+1))` -/
def P1103937724625469831.Spec : Prop :=
  ∀ n, P1103937724625469831.a n = A205099 (n + 1)

end A205099

