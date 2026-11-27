import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
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
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C026
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C046
import Seq.B000.C047
import Seq.B000.C050
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C010
import Seq.B001.C012
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B008.C000
import Seq.B010.C000
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A052300: Number of rooted Greg trees.

The programs for A052300, there is no canonical definition to state claims against.
-/

/-! ## A052300.P3173296824138745372

`A054589(n+1)+A004526(A083692(n))`
-/

namespace A052300.P3173296824138745372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054589 (n + 1) + A004526 (A083692 n).toNat

end

end A052300.P3173296824138745372

/-! ## A052300.P15426533089410219501

`A004526(A123923(n+1)+A083692(n))`
-/

namespace A052300.P15426533089410219501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A123923 (n + 1) + A083692 n).toNat

end

end A052300.P15426533089410219501

/-! ## A052300.P18004121257066300670

`A090619(A000045(3*n))+A015897(n+1)`
-/

namespace A052300.P18004121257066300670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090619 (A000045 (3 * n)).toNat + A015897 (n + 1)

end

end A052300.P18004121257066300670

/-!
# A052301: Number of asymmetric rooted Greg trees.

The programs for A052301, there is no canonical definition to state claims against.
-/

/-! ## A052301.P2612755480278376184

`A031148(n+1)^floor(atan(n))`
-/

namespace A052301.P2612755480278376184
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A031148 (n + 1) : ℚ) ^ (⌊Real.arctan (n : ℝ)⌋ : ℤ)

end

end A052301.P2612755480278376184

/-! ## A052301.P14128224409263317291

`A031148(A028310(n)+1)`
-/

namespace A052301.P14128224409263317291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031148 (A028310 n + 1).toNat

end

end A052301.P14128224409263317291

/-! ## A052301.P8991066455947244985

`A031148(n+1)-A000007(n)`
-/

namespace A052301.P8991066455947244985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031148 (n + 1) - A000007 n

end

end A052301.P8991066455947244985

/-! ## A052301.P13422930717252397896

`A031148(n+1)/A054977(n)`
-/

namespace A052301.P13422930717252397896
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A031148 (n + 1) : ℚ) / (A054977 n : ℚ)

end

end A052301.P13422930717252397896

/-! ## A052301.P9777066571243986647

`A031148(n+1)-A008683((n+1)²)`
-/

namespace A052301.P9777066571243986647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031148 (n + 1) - A008683 ((n + 1) ^ 2)

end

end A052301.P9777066571243986647

/-! ## A052301.P1868566389104429498

`ceil(A031148(n+1)-2/A014206(n))`
-/

namespace A052301.P1868566389104429498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A031148 (n + 1) : ℚ) - 2 / (A014206 n : ℚ)⌉

end

end A052301.P1868566389104429498

/-! ## A052301.P8740140674227666407

`round(A031148(n+1)-2/A027688(n))`
-/

namespace A052301.P8740140674227666407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A031148 (n + 1) : ℚ) - 2 / (A027688 n : ℚ))

end

end A052301.P8740140674227666407

/-! ## A052301.P13085834544186861280

`A031148(n+1)-round(2/A027689(n))`
-/

namespace A052301.P13085834544186861280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031148 (n + 1) - SequenceMachineLib.roundAway (2 / (A027689 n : ℚ))

end

end A052301.P13085834544186861280

/-! ## A052301.P5629097944680213939

`A031148(n+1)^A001222(A008578(n+1))`
-/

namespace A052301.P5629097944680213939
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A031148 (n + 1) : ℚ) ^ (A001222 (A008578 (n + 1)).toNat : ℤ)

end

end A052301.P5629097944680213939

/-! ## A052301.P15448159819402244314

`min(A031148(n+1), A031148(n+2))`
-/

namespace A052301.P15448159819402244314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  min (A031148 (n + 1)) (A031148 (n + 2))

end

end A052301.P15448159819402244314

/-! ## A052301.P17130484383436464776

`min(A031148(n+1), A141268(n+1))`
-/

namespace A052301.P17130484383436464776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  min (A031148 (n + 1)) (A141268 (n + 1))

end

end A052301.P17130484383436464776

/-! ## A052301.P16323181506833197842

`min(A031148(n+1), A052300(n+1))`
-/

namespace A052301.P16323181506833197842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  min (A031148 (n + 1)) (A052300 (n + 1))

end

end A052301.P16323181506833197842

/-!
# A052302: Number of Greg trees with n black nodes.

The programs for A052302, there is no canonical definition to state claims against.
-/

/-! ## A052302.P14995680864900844469

`A054404(floor(∑[(4-6/(n+1))*a(n-1)]))` with `a(0)=2, a(1)=1, a(2)=1`
-/

namespace A052302.P14995680864900844469
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [2, 1, 1] fun n f1 =>
  (4 - 6 / (n + 1 : ℚ)) * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054404 ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋.toNat

end

end A052302.P14995680864900844469

/-! ## A052302.P13201838338978111150

`A096974(A004148(n))`
-/

namespace A052302.P13201838338978111150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096974 (A004148 n).toNat

end

end A052302.P13201838338978111150

/-! ## A052302.P8179782019292928286

`A026834(A369431(n))`
-/

namespace A052302.P8179782019292928286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026834 (A369431 n).toNat

end

end A052302.P8179782019292928286

/-! ## A052302.P16724939519117384735

`A317709(A344490(n))`
-/

namespace A052302.P16724939519117384735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317709 (A344490 n).toNat

end

end A052302.P16724939519117384735

/-!
# A052303: Number of asymmetric Greg trees.

The programs for A052303, there is no canonical definition to state claims against.
-/

/-! ## A052303.P5991170478980140800

`A170889(A035356(n))`
-/

namespace A052303.P5991170478980140800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170889 (A035356 n).toNat

end

end A052303.P5991170478980140800

/-! ## A052303.P1535112975128956517

`A168201(A292698(n+2))`
-/

namespace A052303.P1535112975128956517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168201 (A292698 (n + 2)).toNat

end

end A052303.P1535112975128956517

/-! ## A052303.P529829942007577635

`A321412(A321324(n)-A321304(n))`
-/

namespace A052303.P529829942007577635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321412 (A321324 n - A321304 n).toNat

end

end A052303.P529829942007577635

/-! ## A052303.P9772474237988329367

`A191532(A103609(n)^A071585(n))`
-/

namespace A052303.P9772474237988329367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191532 (SequenceMachineLib.roundAway ((A103609 n : ℚ) ^ (A071585 n : ℤ))).toNat

end

end A052303.P9772474237988329367

/-! ## A052303.P6381925748367085246

`xor(A108756(n), A253830(A126348(n)))`
-/

namespace A052303.P6381925748367085246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A108756 n) (A253830 (A126348 n).toNat)

end

end A052303.P6381925748367085246

/-!
# A052304: Number of squares dividing A025487(n).

The programs for A052304, there is no canonical definition to state claims against.
-/

/-! ## A052304.P12849416440704504160

`A046951(A025487(n+1))`
-/

namespace A052304.P12849416440704504160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (A025487 (n + 1)).toNat

end

end A052304.P12849416440704504160

/-! ## A052304.P6304409989245606364

`∏{e}[A307107(1+n), A080513(#)]`
-/

namespace A052304.P6304409989245606364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307107 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A080513 (Nat.factorization (f1 n).natAbs p)

end

end A052304.P6304409989245606364

/-! ## A052304.P14826212191659493931

`∏{e}[A025487(n+1), A008619(#)]`
-/

namespace A052304.P14826212191659493931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A008619 (Nat.factorization (f1 n).natAbs p)

end

end A052304.P14826212191659493931

/-! ## A052304.P10848859524615264776

`∏{e}[A025487(n+1), A000005(A108411(#))]`
-/

namespace A052304.P10848859524615264776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000005 (A108411 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A052304.P10848859524615264776

/-! ## A052304.P12157563970724743449

`∏{e}[A025487(n+1), A000463(A109613(#))]`
-/

namespace A052304.P12157563970724743449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000463 (A109613 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A052304.P12157563970724743449

/-! ## A052304.P15417893803172356625

`∏{e}[A055932(A331119(n+1)), A008619(#)]`
-/

namespace A052304.P15417893803172356625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055932 (A331119 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A008619 (Nat.factorization (f1 n).natAbs p)

end

end A052304.P15417893803172356625

/-! ## A052304.P6041105198957296698

`∑{d}[A025487(n+1), A065803(#)]`
-/

namespace A052304.P6041105198957296698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A065803 d

end

end A052304.P6041105198957296698

/-! ## A052304.P249193576945091873

`∑{d}[A025487(n+1), A000035(A000005(#))]`
-/

namespace A052304.P249193576945091873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000035 (A000005 d).toNat

end

end A052304.P249193576945091873

/-! ## A052304.P18000506825249544431

`A322483(A307107(n+1))`
-/

namespace A052304.P18000506825249544431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322483 (A307107 (n + 1)).toNat

end

end A052304.P18000506825249544431

/-!
# A052305: Number of semisimple rings with A025487(n) elements: a(n) = A038538(A025487(n)).

The programs for A052305, there is no canonical definition to state claims against.
-/

/-! ## A052305.P2349511022383788644

`A038538(A025487(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A052305.P2349511022383788644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038538 (A025487 (n + 1)).toNat

end

end A052305.P2349511022383788644

/-! ## A052305.P13403076152820706190

`∏{e}[A307107(n+1), A004101(#+1)]`
-/

namespace A052305.P13403076152820706190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307107 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A004101 (Nat.factorization (f1 n).natAbs p + 1)

end

end A052305.P13403076152820706190

/-! ## A052305.P2600663777163677588

`∏{e}[A025487(1+n), A004101(#)]`
-/

namespace A052305.P2600663777163677588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A004101 (Nat.factorization (f1 n).natAbs p)

end

end A052305.P2600663777163677588

/-! ## A052305.P17574666340084493374

`∏{e}[record[A329899(n+1)], A004101(#)]`
-/

namespace A052305.P17574666340084493374
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329899 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A004101 (Nat.factorization (f1 n).natAbs p)

end

end A052305.P17574666340084493374

/-! ## A052305.P5533999546579831514

`∏{e}[record[A051466(n+2)], A004101(#)]`
-/

namespace A052305.P5533999546579831514
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051466 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A004101 (Nat.factorization (f1 n).natAbs p)

end

end A052305.P5533999546579831514

/-! ## A052305.P6880280547207010387

`∏{e}[A181821(A181820(n+1)), A004101(#)]`
-/

namespace A052305.P6880280547207010387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (A181820 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A004101 (Nat.factorization (f1 n).natAbs p)

end

end A052305.P6880280547207010387

/-! ## A052305.P5687602603784888390

`∏{e}[A051466(A329898(n+1)), A004101(#)]`
-/

namespace A052305.P5687602603784888390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051466 (A329898 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A004101 (Nat.factorization (f1 n).natAbs p)

end

end A052305.P5687602603784888390

/-! ## A052305.P5887894827992730690

`∏{e}[A055932(A331119(n+1)), A004101(#)]`
-/

namespace A052305.P5887894827992730690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055932 (A331119 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A004101 (Nat.factorization (f1 n).natAbs p)

end

end A052305.P5887894827992730690

/-! ## A052305.P2770805155640481470

`∏{e}[A181817(n+1)/A181816(n+1), A004101(#)]`
-/

namespace A052305.P2770805155640481470
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A181817 (n + 1) : ℚ) / (A181816 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, A004101 (Nat.factorization (SequenceMachineLib.roundAway (f1 n)).natAbs p)

end

end A052305.P2770805155640481470

/-! ## A052305.P14595118911977694287

`∏{e}[A329899(2*A329898(n+1)-A329898(n+1)), A004101(#)]`
-/

namespace A052305.P14595118911977694287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329899 (2 * A329898 (n + 1) - A329898 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A004101 (Nat.factorization (f1 n).natAbs p)

end

end A052305.P14595118911977694287

/-! ## A052305.P12303249764571583744

`∏{e}[A329899(A330683(n+1)), A004101(#)]`
-/

namespace A052305.P12303249764571583744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329899 (A330683 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A004101 (Nat.factorization (f1 n).natAbs p)

end

end A052305.P12303249764571583744

/-!
# A052306: Product of exponents of prime factorization of n by prime signature: A005361(A025487).

The programs for A052306, there is no canonical definition to state claims against.
-/

/-! ## A052306.P10180584397583699680

`A003963(A181820(n+1))`
-/

namespace A052306.P10180584397583699680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (A181820 (n + 1)).toNat

end

end A052306.P10180584397583699680

/-! ## A052306.P5610051623936696924

`∏{e}[A307107(1+n), #+1]`
-/

namespace A052306.P5610051623936696924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307107 (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A052306.P5610051623936696924

/-! ## A052306.P6058266284365757364

`∏{e}[A025487(1+n), #]`
-/

namespace A052306.P6058266284365757364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A052306.P6058266284365757364

/-! ## A052306.P1630690392063862687

`∏{e}[record[A329899(1+n)], #]`
-/

namespace A052306.P1630690392063862687
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329899 (1 + n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A052306.P1630690392063862687

/-! ## A052306.P13564156287655036031

`∏{e}[record[A051466(2+n)], #]`
-/

namespace A052306.P13564156287655036031
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051466 (2 + n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A052306.P13564156287655036031

/-! ## A052306.P16491870973504358690

`∏{e}[A178799(n)+a(n-1), #]` with `a(0)=1`
-/

namespace A052306.P16491870973504358690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A178799 n + f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A052306.P16491870973504358690

/-! ## A052306.P13111321078064732737

`∏{e}[record[A025487(A329048(n))], #]`
-/

namespace A052306.P13111321078064732737
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (A329048 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A052306.P13111321078064732737

/-! ## A052306.P8562690915933616379

`∏{e}[A051466(A329898(n+1)), #]`
-/

namespace A052306.P8562690915933616379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051466 (A329898 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A052306.P8562690915933616379

/-! ## A052306.P12604677104025567362

`∏{e}[A055932(A331119(n+1)), #]`
-/

namespace A052306.P12604677104025567362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055932 (A331119 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A052306.P12604677104025567362

/-! ## A052306.P1996796886884903598

`∏{e}[A181817(n+1)/A181816(n+1), #]`
-/

namespace A052306.P1996796886884903598
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A181817 (n + 1) : ℚ) / (A181816 (n + 1) : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, Nat.factorization (SequenceMachineLib.roundAway (f1 n)).natAbs p

end

end A052306.P1996796886884903598

/-! ## A052306.P3643280662019050746

`∏{e}[gcd(A181817(n+1), A324577(n+1)), #]`
-/

namespace A052306.P3643280662019050746
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A181817 (n + 1)) (A324577 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p

end

end A052306.P3643280662019050746

/-! ## A052306.P15453259493803625010

`∏{e}[A329899(A330683(n+1)), #]`
-/

namespace A052306.P15453259493803625010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329899 (A330683 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A052306.P15453259493803625010

/-! ## A052306.P11326037804916230485

`A000005(A307107(n+1))`
-/

namespace A052306.P11326037804916230485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A307107 (n + 1)).toNat

end

end A052306.P11326037804916230485

/-! ## A052306.P10550847043260012305

`A005361(A025487(n+1))`
-/

namespace A052306.P10550847043260012305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (A025487 (n + 1)).toNat

end

end A052306.P10550847043260012305

/-! ## A052306.P7907797645062139962

`∏{e}[A181821(2*A181820(n+1)), #]`
-/

namespace A052306.P7907797645062139962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (2 * A181820 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A052306.P7907797645062139962

/-!
# A052307: Triangle read by rows: T(n,k) = number of bracelets (reversible necklaces) with n beads, k of which are black and n - k are white.

The programs for A052307, there is no canonical definition to state claims against.
-/

/-! ## A052307.P3476543504548333159

`1/2*(A119963(C(row(n)+1, 2)+col(n))+A047996(C(row(n)+1, 2)+col(n)))`
-/

namespace A052307.P3476543504548333159
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (A119963 (Nat.choose (SequenceMachineLib.triRow n + 1) 2 + SequenceMachineLib.triCol n) + A047996 (Nat.choose (SequenceMachineLib.triRow n + 1) 2 + SequenceMachineLib.triCol n) : ℚ)

end

end A052307.P3476543504548333159

/-! ## A052307.P4253696570180013529

`(A119963(n)+A047996(n))/2`
-/

namespace A052307.P4253696570180013529
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A119963 n + A047996 n : ℚ) / 2

end

end A052307.P4253696570180013529

/-! ## A052307.P3686949712608459882

`A180472(n)+A119963(n)`
-/

namespace A052307.P3686949712608459882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180472 n + A119963 n

end

end A052307.P3686949712608459882

/-! ## A052307.P2638172621178621739

`A047996(n)-A180472(n)`
-/

namespace A052307.P2638172621178621739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047996 n - A180472 n

end

end A052307.P2638172621178621739

/-! ## A052307.P8107235088523743304

`A037306(2*n-comp[∑[n+1]]+1)-A180472(n)`
-/

namespace A052307.P8107235088523743304
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037306 ((2 * n : ℤ) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) + 1).toNat - A180472 n

end

end A052307.P8107235088523743304

/-! ## A052307.P6979192307266646824

`A273943(A119963(n)+A047996(n))`
-/

namespace A052307.P6979192307266646824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A119963 n + A047996 n).toNat

end

end A052307.P6979192307266646824

/-! ## A052307.P7216735665497003035

`A014682(A119963(n)+A047996(n))`
-/

namespace A052307.P7216735665497003035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A119963 n + A047996 n).toNat

end

end A052307.P7216735665497003035

/-! ## A052307.P15154186694228590679

`A004525(A119963(n)+A047996(n))`
-/

namespace A052307.P15154186694228590679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A119963 n + A047996 n).toNat

end

end A052307.P15154186694228590679

/-! ## A052307.P7863484755047579411

`A004526(A119963(n)+A047996(n))`
-/

namespace A052307.P7863484755047579411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A119963 n + A047996 n).toNat

end

end A052307.P7863484755047579411

/-! ## A052307.P1937417797462012216

`A025480(A119963(n)+A047996(n))`
-/

namespace A052307.P1937417797462012216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A119963 n + A047996 n).toNat

end

end A052307.P1937417797462012216

/-! ## A052307.P13843398629251579339

`A026741(A119963(n)+A047996(n))`
-/

namespace A052307.P13843398629251579339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A119963 n + A047996 n).toNat

end

end A052307.P13843398629251579339

/-! ## A052307.P3861643024200398109

`A065033(A119963(n)+A047996(n))`
-/

namespace A052307.P3861643024200398109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A119963 n + A047996 n).toNat

end

end A052307.P3861643024200398109

/-! ## A052307.P14213532262572339493

`A110654(A119963(n)+A047996(n))`
-/

namespace A052307.P14213532262572339493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A119963 n + A047996 n).toNat

end

end A052307.P14213532262572339493

/-! ## A052307.P1850507478506030349

`A047996(n)-A004526(A047996(n)-A119963(n))`
-/

namespace A052307.P1850507478506030349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047996 n - A004526 (A047996 n - A119963 n).toNat

end

end A052307.P1850507478506030349

/-!
# A052308: Triangle: matrix inverse of A052307.

The programs for A052308, there is no canonical definition to state claims against.
-/

/-! ## A052308.P5325206881344804708

`A052311(n)-A055641(A045912(n))`
-/

namespace A052308.P5325206881344804708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052311 n - A055641 (A045912 n).toNat

end

end A052308.P5325206881344804708

/-! ## A052308.P3127953579395558594

`A052311(n)-A288707(A157211(n))`
-/

namespace A052308.P3127953579395558594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052311 n - A288707 (A157211 n).toNat

end

end A052308.P3127953579395558594

/-! ## A052308.P5594059732149749191

`A052311(n)-A185284(A180984(n+1))`
-/

namespace A052308.P5594059732149749191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052311 n - A185284 (A180984 (n + 1)).toNat

end

end A052308.P5594059732149749191

/-! ## A052308.P18133322237539353260

`A355689(A203031(n+1))`
-/

namespace A052308.P18133322237539353260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355689 (A203031 (n + 1)).toNat

end

end A052308.P18133322237539353260

/-!
# A052309: Column 1 of triangle A052308.

The programs for A052309, there is no canonical definition to state claims against.
-/

/-! ## A052309.P15739133253609140641

`A052308(∑[1+n]+1)`
-/

namespace A052309.P15739133253609140641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052308 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A052309.P15739133253609140641

/-!
# A052310: Triangle read by rows: matrix square of A052307.

The programs for A052310, there is no canonical definition to state claims against.
-/

/-! ## A052310.P2756845645379258723

`A260999(A052313(n)²)`
-/

namespace A052310.P2756845645379258723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260999 (A052313 n ^ 2).toNat

end

end A052310.P2756845645379258723

/-! ## A052310.P1779664615043786507

`A052313(record[A084928(A016993(n))])`
-/

namespace A052310.P1779664615043786507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084928 (A016993 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052313 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A052310.P1779664615043786507

/-!
# A052311: Triangle: Matrix inverse of A047996.

The programs for A052311, there is no canonical definition to state claims against.
-/

/-! ## A052311.P13529058250886908270

`A055641(A045912(n))+A052308(n)`
-/

namespace A052311.P13529058250886908270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 (A045912 n).toNat + A052308 n

end

end A052311.P13529058250886908270

/-! ## A052311.P18440402227660426796

`A288707(A157211(n))+A052308(n)`
-/

namespace A052311.P18440402227660426796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288707 (A157211 n).toNat + A052308 n

end

end A052311.P18440402227660426796

/-! ## A052311.P12321498522037183121

`or(A052308(n), A055641(A027947(n)))`
-/

namespace A052311.P12321498522037183121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A052308 n) (A055641 (A027947 n).toNat)

end

end A052311.P12321498522037183121

/-! ## A052311.P10559417772755665460

`A185284(A180984(n+1))+A052308(n)`
-/

namespace A052311.P10559417772755665460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A180984 (n + 1)).toNat + A052308 n

end

end A052311.P10559417772755665460

/-!
# A052312: Column 1 of triangle A052311.

The programs for A052312, there is no canonical definition to state claims against.
-/

/-! ## A052312.P10091262509717607095

`A052311(∑[1+n]+1)`
-/

namespace A052312.P10091262509717607095
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052311 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A052312.P10091262509717607095

/-!
# A052313: Triangle read by rows: matrix square of A047996.

The programs for A052313, there is no canonical definition to state claims against.
-/

/-! ## A052313.P10979589118696405552

`A098240(A052310(n)%A309383(n+1))`
-/

namespace A052313.P10979589118696405552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098240 (Int.tmod (A052310 n) (A309383 (n + 1))).toNat

end

end A052313.P10979589118696405552

/-! ## A052313.P12163807335927530897

`A052310(n)+A045698(A142048(n))`
-/

namespace A052313.P12163807335927530897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052310 n + A045698 (A142048 n).toNat

end

end A052313.P12163807335927530897

/-! ## A052313.P5579514922627056175

`A052310(n)+A005088(A105278(n+1))`
-/

namespace A052313.P5579514922627056175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052310 n + A005088 (A105278 (n + 1)).toNat

end

end A052313.P5579514922627056175

/-! ## A052313.P1301436013956379605

`A238598(A124730(n+1))`
-/

namespace A052313.P1301436013956379605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238598 (A124730 (n + 1)).toNat

end

end A052313.P1301436013956379605

/-!
# A052314: Triangle: Matrix square of A051168.

The programs for A052314, there is no canonical definition to state claims against.
-/

/-! ## A052314.P1005612311178948143

`A290054(n)+A000035(round(2^(n-2)))`
-/

namespace A052314.P1005612311178948143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290054 n + A000035 (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - 2 : ℤ))).toNat

end

end A052314.P1005612311178948143

/-! ## A052314.P10429837291484004606

`A290054(n)+A073424(round(2^(n-2)))`
-/

namespace A052314.P10429837291484004606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290054 n + A073424 (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - 2 : ℤ))).toNat

end

end A052314.P10429837291484004606

/-! ## A052314.P9801482000348602651

`A002828(and((-1)^∑{e}[n+1, #], A329800(n+1)))`
-/

namespace A052314.P9801482000348602651
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 (Int.land ((-1) ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)) (A329800 (n + 1))).toNat

end

end A052314.P9801482000348602651

/-! ## A052314.P14147624969103037068

`A045847(n)+A036987(A019460(n))`
-/

namespace A052314.P14147624969103037068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045847 n + A036987 (A019460 n).toNat

end

end A052314.P14147624969103037068

/-! ## A052314.P2155131237451541574

`A290054(n)+A036987(A019460(n))`
-/

namespace A052314.P2155131237451541574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290054 n + A036987 (A019460 n).toNat

end

end A052314.P2155131237451541574

/-!
# A052315: M-type rooted trees on n nodes.

The programs for A052315, there is no canonical definition to state claims against.
-/

/-! ## A052315.P11604495611024449730

`A203019(2*(n+2))+A194698(A224800(n))`
-/

namespace A052315.P11604495611024449730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203019 (2 * (n + 2)) + A194698 (A224800 n).toNat

end

end A052315.P11604495611024449730

/-!
# A052316: Number of labeled rooted trees with n nodes and 2-colored internal (non-leaf) nodes.

The programs for A052316, there is no canonical definition to state claims against.
-/

/-! ## A052316.P12581940220231573580

`(1+n)*A371005(n)`
-/

namespace A052316.P12581940220231573580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 + n : ℤ) * A371005 n

end

end A052316.P12581940220231573580

/-! ## A052316.P6317164229885543420

`∑{#}[n+1, 2^#*(-1)^(n+1-#)*#^n*C(n+1, #)]`
-/

namespace A052316.P6317164229885543420
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (2 ^ k : ℚ) * (-1 : ℚ) ^ ((n + 1 : ℤ) - (k : ℤ) : ℤ) * (k ^ n : ℚ) * (Nat.choose (n + 1) k : ℚ)

end

end A052316.P6317164229885543420

/-! ## A052316.P1797675340429592035

`A394444(2*(n+1)²)`
-/

namespace A052316.P1797675340429592035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394444 (2 * (n + 1) ^ 2)

end

end A052316.P1797675340429592035

/-! ## A052316.P8341088484034343558

`record[A394444(A001105(col(n)+1))]`
-/

namespace A052316.P8341088484034343558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394444 (A001105 (SequenceMachineLib.triCol n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A052316.P8341088484034343558

/-!
# A052317: Number of labeled trees with n nodes and 2-colored internal (non-leaf) nodes.

The programs for A052317, there is no canonical definition to state claims against.
-/

/-! ## A052317.P10417273793234640008

`A014245(A144002(n))`
-/

namespace A052317.P10417273793234640008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014245 (A144002 n).toNat

end

end A052317.P10417273793234640008

/-! ## A052317.P722091080115572693

`A329634(A289615(n))`
-/

namespace A052317.P722091080115572693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329634 (A289615 n).toNat

end

end A052317.P722091080115572693

/-!
# A052318: Number of labeled rooted trimmed trees with n nodes.

The programs for A052318, there is no canonical definition to state claims against.
-/

/-! ## A052318.P17219560136754447652

`A292599(A292629(n)+3)`
-/

namespace A052318.P17219560136754447652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292599 (A292629 n + 3).toNat

end

end A052318.P17219560136754447652

/-! ## A052318.P14761652429879308727

`A094798(A007286(n))+n`
-/

namespace A052318.P14761652429879308727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094798 (A007286 n).toNat + (n : ℤ)

end

end A052318.P14761652429879308727

/-!
# A052319: Number of increasing rooted trimmed trees with n nodes.

The programs for A052319, there is no canonical definition to state claims against.
-/

/-! ## A052319.P447417160164559153

`A008966(n+1)+A002264(A177475(n))`
-/

namespace A052319.P447417160164559153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (n + 1) + A002264 (A177475 n).toNat

end

end A052319.P447417160164559153

/-! ## A052319.P2566313122896744606

`A126257(∑[(n-1)*a(n-1)+1])` with `a(0)=2, a(1)=0`
-/

namespace A052319.P2566313122896744606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 0] fun n f1 =>
  ((n : ℤ) - 1) * f1 (n - 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126257 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A052319.P2566313122896744606

/-! ## A052319.P8119948319230242720

`A137620(A289591(n))`
-/

namespace A052319.P8119948319230242720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137620 (A289591 n).toNat

end

end A052319.P8119948319230242720

/-!
# A052321: Number of rooted trees with a forbidden limb of length 3.

The programs for A052321, there is no canonical definition to state claims against.
-/

/-! ## A052321.P6246504517608318393

`A255636(1+∑[n+3])`
-/

namespace A052321.P6246504517608318393
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255636 (1 + ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A052321.P6246504517608318393

/-! ## A052321.P15029955941413329208

`A156689(A239605(n+1))`
-/

namespace A052321.P15029955941413329208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156689 (A239605 (n + 1)).toNat

end

end A052321.P15029955941413329208

/-!
# A052322: Number of labeled rooted trees with a forbidden limb of length 3.

The programs for A052322, there is no canonical definition to state claims against.
-/

/-! ## A052322.P3256139418503642329

`A191442(A222650(n+2))`
-/

namespace A052322.P3256139418503642329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191442 (A222650 (n + 2)).toNat

end

end A052322.P3256139418503642329

/-!
# A052323: Number of labeled trees with a forbidden limb of length 3.

The programs for A052323, there is no canonical definition to state claims against.
-/

/-! ## A052323.P9118795762740333356

`A212207(A036717(n+1))`
-/

namespace A052323.P9118795762740333356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212207 (A036717 (n + 1)).toNat

end

end A052323.P9118795762740333356

/-!
# A052324: Number of increasing rooted trees with a forbidden limb of length 3.

The programs for A052324, there is no canonical definition to state claims against.
-/

/-! ## A052324.P17103322731108531059

`A124767(n)+A002265(A183239(n))`
-/

namespace A052324.P17103322731108531059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124767 n + A002265 (A183239 n).toNat

end

end A052324.P17103322731108531059

/-! ## A052324.P2778560089577288782

`A244479(A183239(n)+A007091(n))`
-/

namespace A052324.P2778560089577288782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244479 (A183239 n + A007091 n).toNat

end

end A052324.P2778560089577288782

/-!
# A052325: Number of asymmetric rooted trees with a forbidden limb of length 3.

The programs for A052325, there is no canonical definition to state claims against.
-/

/-! ## A052325.P7316691944499634390

`A177849(xor(3*2^n-2, ∑[n]))`
-/

namespace A052325.P7316691944499634390
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177849 (Int.xor ((3 * 2 ^ n : ℤ) - 2) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A052325.P7316691944499634390

/-! ## A052325.P9892446824342816853

`A343150(2*a(n-1))` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=1`
-/

namespace A052325.P9892446824342816853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 1, 1] fun n a =>
  A343150 (2 * a (n - 1)).toNat

end

end A052325.P9892446824342816853

/-! ## A052325.P5701204792410309362

`A208746(A068034(n))`
-/

namespace A052325.P5701204792410309362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208746 (A068034 n).toNat

end

end A052325.P5701204792410309362

/-! ## A052325.P11111278853147980896

`A287864(A000322(n))`
-/

namespace A052325.P11111278853147980896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287864 (A000322 n).toNat

end

end A052325.P11111278853147980896

/-! ## A052325.P3260720686285135221

`A259899(A318644(n))`
-/

namespace A052325.P3260720686285135221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259899 (A318644 n).toNat

end

end A052325.P3260720686285135221

/-!
# A052327: Number of rooted trees with a forbidden limb of length 4.

The programs for A052327, there is no canonical definition to state claims against.
-/

/-! ## A052327.P7956476144856564702

`A255636(3+∑[n+4])`
-/

namespace A052327.P7956476144856564702
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255636 (3 + ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A052327.P7956476144856564702

/-!
# A052328: Number of rooted trees with a forbidden limb of length 5.

The programs for A052328, there is no canonical definition to state claims against.
-/

/-! ## A052328.P7220539449073260776

`A255636(∑[n+5]+6)`
-/

namespace A052328.P7220539449073260776
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255636 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A052328.P7220539449073260776

/-! ## A052328.P14918656611243325957

`A400220(A149048(n))`
-/

namespace A052328.P14918656611243325957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400220 (A149048 n).toNat

end

end A052328.P14918656611243325957

/-! ## A052328.P15048858306841450020

`A330779(A049177(n+1))`
-/

namespace A052328.P15048858306841450020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330779 (A049177 (n + 1)).toNat

end

end A052328.P15048858306841450020

/-! ## A052328.P2541315655835389885

`A226763(A029853(n+4))`
-/

namespace A052328.P2541315655835389885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226763 (A029853 (n + 4)).toNat

end

end A052328.P2541315655835389885

/-!
# A052329: Number of rooted trees with a forbidden limb of length 6.

The programs for A052329, there is no canonical definition to state claims against.
-/

/-! ## A052329.P17901522919416355038

`A255636(C(n+7, 2)-5)`
-/

namespace A052329.P17901522919416355038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255636 (Nat.choose (n + 7) 2 - 5)

end

end A052329.P17901522919416355038

/-! ## A052329.P6941784879413542713

`filter[A318799(n), A109720(#)]`
-/

namespace A052329.P6941784879413542713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318799 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A109720 (f1 j).toNat = 1) n)

end

end A052329.P6941784879413542713

/-! ## A052329.P12194910135256351725

`filter[A318852(n), A109720(#)]`
-/

namespace A052329.P12194910135256351725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318852 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A109720 (f1 j).toNat = 1) n)

end

end A052329.P12194910135256351725

/-!
# A052330: Let S_k denote the first 2^k terms of this sequence and let b_k be the smallest positive integer that is not in S_k; then the numbers b_k*S_k are the next 2^k terms.

The programs for A052330, there is no canonical definition to state claims against.
-/

/-! ## A052330.P6501520983927898226

`A302781(A302845(n))`
-/

namespace A052330.P6501520983927898226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302781 (A302845 n).toNat

end

end A052330.P6501520983927898226

/-! ## A052330.P7837163689099982351

`A207901(A006068(n))`
-/

namespace A052330.P7837163689099982351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207901 (A006068 n).toNat

end

end A052330.P7837163689099982351

/-! ## A052330.P571154959723843740

`A302783(A003188(n))`
-/

namespace A052330.P571154959723843740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302783 (A003188 n).toNat

end

end A052330.P571154959723843740

/-! ## A052330.P2167639574971716241

`A303771(A303768(n))`
-/

namespace A052330.P2167639574971716241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303771 (A303768 n).toNat

end

end A052330.P2167639574971716241

/-! ## A052330.P17326565980352892324

`A304085(A304084(n))`
-/

namespace A052330.P17326565980352892324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304085 (A304084 n).toNat

end

end A052330.P17326565980352892324

/-! ## A052330.P3072692266837483272

`A302783(xor(n, floor(n/2)))`
-/

namespace A052330.P3072692266837483272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302783 (Int.xor (n : ℤ) ⌊(n : ℚ) / 2⌋).toNat

end

end A052330.P3072692266837483272

/-! ## A052330.P11089235736705319392

`A304531(A304534(n)+1)`
-/

namespace A052330.P11089235736705319392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304531 (A304534 n + 1).toNat

end

end A052330.P11089235736705319392

/-! ## A052330.P14399880020504685446

`A282291(A302854(n)+1)`
-/

namespace A052330.P14399880020504685446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282291 (A302854 n + 1).toNat

end

end A052330.P14399880020504685446

/-! ## A052330.P7321442615927188514

`∏{p}[A019565(n), A302023(#)]`
-/

namespace A052330.P7321442615927188514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A302023 p

end

end A052330.P7321442615927188514

/-! ## A052330.P1097777609773964299

`A302023(A005940(n+1))`
-/

namespace A052330.P1097777609773964299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302023 (A005940 (n + 1)).toNat

end

end A052330.P1097777609773964299

/-!
# A052331: Inverse of A052330; A binary encoding of Fermi-Dirac factorization of n, shown in decimal.

The programs for A052331, there is no canonical definition to state claims against.
-/

/-! ## A052331.P8581512107343916670

`A000079(A302785(n+1)-1)+a(A302776(n+1)-1)` with `a(0)=0, a(1)=1`
-/

namespace A052331.P8581512107343916670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A000079 (A302785 (n + 1) - 1).toNat + a (A302776 (n + 1) - 1).toNat

end

end A052331.P8581512107343916670

/-! ## A052331.P6088181455418295094

`A064358(n+1)-1`
-/

namespace A052331.P6088181455418295094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064358 (n + 1) - 1

end

end A052331.P6088181455418295094

/-! ## A052331.P7087897570635690547

`∑{p}[A160102(n+1), A048675(#)]`
-/

namespace A052331.P7087897570635690547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160102 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A048675 p

end

end A052331.P7087897570635690547

/-! ## A052331.P14189347584191124021

`∑{p}[A160102(n+1), A087207(#)]`
-/

namespace A052331.P14189347584191124021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160102 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A087207 p

end

end A052331.P14189347584191124021

/-! ## A052331.P1718103101188152544

`∑{p}[A160102(n+1), A156552(#)]`
-/

namespace A052331.P1718103101188152544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160102 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A156552 p

end

end A052331.P1718103101188152544

/-! ## A052331.P687479841692937718

`∑{p}[A160102(n+1), A277333(#)]`
-/

namespace A052331.P687479841692937718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160102 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A277333 p

end

end A052331.P687479841692937718

/-! ## A052331.P7201239123255519821

`∑{p}[A160102(n+1), A297112(#)]`
-/

namespace A052331.P7201239123255519821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160102 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A297112 p

end

end A052331.P7201239123255519821

/-! ## A052331.P14747942426163405220

`∑{d}[A160102(n+1), A156552(A014963(#))]`
-/

namespace A052331.P14747942426163405220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160102 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A156552 (A014963 d).toNat

end

end A052331.P14747942426163405220

/-! ## A052331.P15504555781289314430

`xor(floor(A302029(n+1)/2), A302029(n+1))`
-/

namespace A052331.P15504555781289314430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ⌊(A302029 (n + 1) : ℚ) / 2⌋ (A302029 (n + 1))

end

end A052331.P15504555781289314430

/-! ## A052331.P11877367603320699596

`∑{p}[A160102(n+1), A292382(#)]`
-/

namespace A052331.P11877367603320699596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160102 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A292382 p

end

end A052331.P11877367603320699596

/-! ## A052331.P972807233710697271

`A156552(A302024(n+1))`
-/

namespace A052331.P972807233710697271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156552 (A302024 (n + 1)).toNat

end

end A052331.P972807233710697271

/-! ## A052331.P6023181829051142304

`A048675(A160102(n+1))`
-/

namespace A052331.P6023181829051142304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048675 (A160102 (n + 1)).toNat

end

end A052331.P6023181829051142304

/-! ## A052331.P2935861177545642986

`∑{d}[A160102(n+1), A297108(#)]`
-/

namespace A052331.P2935861177545642986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160102 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A297108 d

end

end A052331.P2935861177545642986

/-! ## A052331.P8479325032877856340

`A087207(2*A160102(n+1)-A160102(n+1))`
-/

namespace A052331.P8479325032877856340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087207 (2 * A160102 (n + 1) - A160102 (n + 1)).toNat

end

end A052331.P8479325032877856340

/-! ## A052331.P864203062766577155

`A324195(2*A160102(n+1)-A160102(n+1))`
-/

namespace A052331.P864203062766577155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324195 (2 * A160102 (n + 1) - A160102 (n + 1)).toNat

end

end A052331.P864203062766577155

/-! ## A052331.P14981553442559296353

`A334871(2*A160102(n+1)-A160102(n+1))`
-/

namespace A052331.P14981553442559296353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334871 (2 * A160102 (n + 1) - A160102 (n + 1)).toNat

end

end A052331.P14981553442559296353

/-! ## A052331.P9713166839838291418

`A334871(2*A160102(n+1))-1`
-/

namespace A052331.P9713166839838291418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334871 (2 * A160102 (n + 1)).toNat - 1

end

end A052331.P9713166839838291418

/-!
# A052332: Number of labeled digraphs where every node has indegree 0 or outdegree 0 and no isolated nodes.

The programs for A052332, the canonical program `A052332.P17408358008095099266` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052332 has offset 0).

The definition of A052332 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A052332.P17408358008095099266

`∑{#}[n, C(n, #)*(2^#-2)^(n-#)]`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A052332

/-- `∑{#}[n, C(n, #)*(2^#-2)^(n-#)]` -/
def P17408358008095099266.Spec : Prop :=
  ∀ n, P17408358008095099266.a n = (A052332 n : ℚ)

end A052332

/-! ## A052332.P8042579657451285470

`A361956(∑[n]+2)`
-/

namespace A052332.P8042579657451285470
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361956 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A052332.P8042579657451285470

namespace A052332

/-- `A361956(∑[n]+2)` -/
def P8042579657451285470.Spec : Prop :=
  ∀ n, P8042579657451285470.a n = A052332 n

end A052332

/-!
# A052333: Riesel problem: start with n; repeatedly double and add 1 until reach a prime. Sequence gives a(n) = prime reached, or 0 if no prime is ever reached.

The programs for A052333, there is no canonical definition to state claims against.
-/

/-! ## A052333.P7488822089597459678

`A038699(2*(2+n))`
-/

namespace A052333.P7488822089597459678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038699 (2 * (2 + n))

end

end A052333.P7488822089597459678

/-!
# A052334: Record primes reached in A052333.

The programs for A052334, there is no canonical definition to state claims against.
-/

/-! ## A052334.P7114551605515214282

`A052333(A051914(n+1))`
-/

namespace A052334.P7114551605515214282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052333 (A051914 (n + 1)).toNat

end

end A052334.P7114551605515214282

/-! ## A052334.P2882114349118846146

`record[A052333(1+n)]`
-/

namespace A052334.P2882114349118846146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052333 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A052334.P2882114349118846146

/-! ## A052334.P1854079289007079971

`record[A038699(2*(n+1))]`
-/

namespace A052334.P1854079289007079971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038699 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A052334.P1854079289007079971

/-! ## A052334.P10547302178906650363

`record[A038699(n+2)/(-1)^n]`
-/

namespace A052334.P10547302178906650363
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038699 (n + 2) : ℚ) / ((-1) ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A052334.P10547302178906650363

/-! ## A052334.P5433367164449205426

`record[A038699(n+1)^(n%2)^n]`
-/

namespace A052334.P5433367164449205426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038699 (n + 1) ^ (n % 2) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A052334.P5433367164449205426

/-!
# A052335: Number of partitions of n into at most 1 copy of 1, 2 copies of 2, 3 copies of 3, ... .

The programs for A052335, there is no canonical definition to state claims against.
-/

/-! ## A052335.P5360757827989702150

`A000041(n)-A387578(n)`
-/

namespace A052335.P5360757827989702150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A387578 n

end

end A052335.P5360757827989702150

/-! ## A052335.P304583098645463735

`∑[A002865(n)]-A387578(n)`
-/

namespace A052335.P304583098645463735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A387578 n

end

end A052335.P304583098645463735

/-! ## A052335.P13839931958144913716

`A119620(2*n+1)-A387578(n)`
-/

namespace A052335.P13839931958144913716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119620 (2 * n + 1) - A387578 n

end

end A052335.P13839931958144913716

/-! ## A052335.P12344945533558446213

`A303940(∑[n+2]-1)`
-/

namespace A052335.P12344945533558446213
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303940 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A052335.P12344945533558446213

/-! ## A052335.P10895663119310028176

`A387328(A055644(n))`
-/

namespace A052335.P10895663119310028176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387328 (A055644 n).toNat

end

end A052335.P10895663119310028176

/-!
# A052336: Shifts left under transform in formula line.

The programs for A052336, there is no canonical definition to state claims against.
-/

/-! ## A052336.P17072611423900289014

`A204551(∑[A046682(2*n+1)])`
-/

namespace A052336.P17072611423900289014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046682 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204551 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A052336.P17072611423900289014

/-! ## A052336.P7219094136786854956

`A000196(Δ[A008619(A302831(n))])`
-/

namespace A052336.P7219094136786854956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A302831 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (f1 (n + 1) - f1 n).toNat

end

end A052336.P7219094136786854956

/-! ## A052336.P10323628913157122075

`A105224(A147878(n+1)+A005927(n))`
-/

namespace A052336.P10323628913157122075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105224 (A147878 (n + 1) + A005927 n).toNat

end

end A052336.P10323628913157122075

/-!
# A052337: Number of partitions into at most a(1) copies of 1, a(2) copies of 2, ...

The programs for A052337, there is no canonical definition to state claims against.
-/

/-! ## A052337.P16131287033305364847

`A082527(A056823(n))`
-/

namespace A052337.P16131287033305364847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082527 (A056823 n).toNat

end

end A052337.P16131287033305364847

/-! ## A052337.P9976166245100218571

`A105224(A260058(n))`
-/

namespace A052337.P9976166245100218571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105224 (A260058 n).toNat

end

end A052337.P9976166245100218571

/-! ## A052337.P3126238018189579266

`A328806(A118892(n+1))`
-/

namespace A052337.P3126238018189579266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328806 (A118892 (n + 1)).toNat

end

end A052337.P3126238018189579266

/-! ## A052337.P12606028757982939978

`A320278(A167616(n+6))`
-/

namespace A052337.P12606028757982939978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320278 (A167616 (n + 6)).toNat

end

end A052337.P12606028757982939978

/-!
# A052338: a(n) = A050443(n-th prime)/(n-th prime).

The programs for A052338, the canonical program `A052338.P4751206966028330060` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052338 has offset 1).

The definition of A052338 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 191 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A052338.P13415296345850254089

`A050443(A000040(n+1))/Δ[A007504(n)]`
-/

namespace A052338.P13415296345850254089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050443 (A000040 (n + 1)).toNat : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A052338.P13415296345850254089

namespace A052338

/-- `A050443(A000040(n+1))/Δ[A007504(n)]` -/
def P13415296345850254089.Spec : Prop :=
  ∀ n, P13415296345850254089.a n = (A052338 (n + 1) : ℚ)

end A052338

/-! ## A052338.P4751206966028330060

`A050443(A000040(n+1))/p?[A110514(n)]`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A052338

/-- `A050443(A000040(n+1))/p?[A110514(n)]` -/
def P4751206966028330060.Spec : Prop :=
  ∀ n, P4751206966028330060.a n = (A052338 (n + 1) : ℚ)

end A052338

/-! ## A052338.P7258096183687700223

`A050443(A000040(n+1))/p?[A131732(n)]`
-/

namespace A052338.P7258096183687700223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131732 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050443 (A000040 (n + 1)).toNat : ℚ) / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ)

end

end A052338.P7258096183687700223

namespace A052338

/-- `A050443(A000040(n+1))/p?[A131732(n)]` -/
def P7258096183687700223.Spec : Prop :=
  ∀ n, P7258096183687700223.a n = (A052338 (n + 1) : ℚ)

end A052338

/-! ## A052338.P16673159833769074636

`A050443(A000040(n+1))/p?[A236348(n)]`
-/

namespace A052338.P16673159833769074636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236348 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050443 (A000040 (n + 1)).toNat : ℚ) / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ)

end

end A052338.P16673159833769074636

namespace A052338

/-- `A050443(A000040(n+1))/p?[A236348(n)]` -/
def P16673159833769074636.Spec : Prop :=
  ∀ n, P16673159833769074636.a n = (A052338 (n + 1) : ℚ)

end A052338

/-! ## A052338.P15690404195045090697

`A050443(A000040(n+1))/p?[A344180(n)]`
-/

namespace A052338.P15690404195045090697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344180 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050443 (A000040 (n + 1)).toNat : ℚ) / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ)

end

end A052338.P15690404195045090697

namespace A052338

/-- `A050443(A000040(n+1))/p?[A344180(n)]` -/
def P15690404195045090697.Spec : Prop :=
  ∀ n, P15690404195045090697.a n = (A052338 (n + 1) : ℚ)

end A052338

/-!
# A052340: Record numbers of iterations reached in A050412.

The programs for A052340, there is no canonical definition to state claims against.
-/

/-! ## A052340.P7775300721562342192

`A050412(A052339(n+1))`
-/

namespace A052340.P7775300721562342192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050412 (A052339 (n + 1)).toNat

end

end A052340.P7775300721562342192

/-! ## A052340.P6402438545182478049

`record[A050412(n+1)]`
-/

namespace A052340.P6402438545182478049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050412 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A052340.P6402438545182478049

/-! ## A052340.P7874382635578527246

`record[A040081(2*(n+2))+1]`
-/

namespace A052340.P7874382635578527246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040081 (2 * (n + 2)) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A052340.P7874382635578527246

/-! ## A052340.P1751975953887958214

`record[(A040081(n+1)+1)^and(1, n)]`
-/

namespace A052340.P1751975953887958214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A040081 (n + 1) + 1) ^ Nat.land 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A052340.P1751975953887958214

/-!
# A052341: Shifts left two places under BIN1 transform.

The programs for A052341, the canonical program `A052341.P4816932540960537401` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052341 has offset 0).

The definition of A052341 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A052341.P4816932540960537401

`ogf((1+4x+7x^2+4x^3+x^4)/(1+3x+3x^2+x^3-x^4-x^5))`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A052341

/-- `ogf((1+4x+7x^2+4x^3+x^4)/(1+3x+3x^2+x^3-x^4-x^5))` -/
def P4816932540960537401.Spec : Prop :=
  ∀ n, P4816932540960537401.a n = A052341 n

theorem P4816932540960537401.correct : P4816932540960537401.Spec := by
  intro n
  simp only [A052341]

end A052341

/-! ## A052341.P10628572203307604340

`A061084(n+1)-A112553(2*n+1)`
-/

namespace A052341.P10628572203307604340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061084 (n + 1) - A112553 (2 * n + 1)

end

end A052341.P10628572203307604340

namespace A052341

/-- `A061084(n+1)-A112553(2*n+1)` -/
def P10628572203307604340.Spec : Prop :=
  ∀ n, P10628572203307604340.a n = A052341 n

end A052341

/-! ## A052341.P3567883580119616525

`n-A004442(n)-∑[2*A111734(n+1)]`
-/

namespace A052341.P3567883580119616525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A111734 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A004442 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052341.P3567883580119616525

namespace A052341

/-- `n-A004442(n)-∑[2*A111734(n+1)]` -/
def P3567883580119616525.Spec : Prop :=
  ∀ n, P3567883580119616525.a n = A052341 n

end A052341

/-! ## A052341.P15595772427535457818

`(A000032(n)-∑[A010892(n)])*A033999(n)`
-/

namespace A052341.P15595772427535457818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000032 n - ∑ j ∈ Finset.range (n + 1), f1 j) * A033999 n

end

end A052341.P15595772427535457818

namespace A052341

/-- `(A000032(n)-∑[A010892(n)])*A033999(n)` -/
def P15595772427535457818.Spec : Prop :=
  ∀ n, P15595772427535457818.a n = A052341 n

end A052341

/-! ## A052341.P180389482260231313

`(A000032(n)-∑[A010892(n)])*A056594(2*n)`
-/

namespace A052341.P180389482260231313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000032 n - ∑ j ∈ Finset.range (n + 1), f1 j) * A056594 (2 * n)

end

end A052341.P180389482260231313

namespace A052341

/-- `(A000032(n)-∑[A010892(n)])*A056594(2*n)` -/
def P180389482260231313.Spec : Prop :=
  ∀ n, P180389482260231313.a n = A052341 n

end A052341

/-!
# A052342: Shifts left under Stirling-Bernoulli transform.

The programs for A052342, there is no canonical definition to state claims against.
-/

/-! ## A052342.P16611932365053999038

`A297114(A002110(n))+A189981(n)`
-/

namespace A052342.P16611932365053999038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297114 (A002110 n).toNat + A189981 n

end

end A052342.P16611932365053999038

/-! ## A052342.P17048626446809552266

`A129585(n)-A338653(A336495(n))`
-/

namespace A052342.P17048626446809552266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129585 n - A338653 (A336495 n).toNat

end

end A052342.P17048626446809552266

/-!
# A052343: Number of ways to write n as the unordered sum of two triangular numbers (zero allowed).

The programs for A052343, the canonical program `A052343.P15911122501402458117` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052343 has offset 0).

The definition of A052343 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A052343.P15911122501402458117

`ceil(A008441(n)/2)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A052343

/-- `ceil(A008441(n)/2)` -/
def P15911122501402458117.Spec : Prop :=
  ∀ n, P15911122501402458117.a n = A052343 n

theorem P15911122501402458117.correct : P15911122501402458117.Spec := by
  intro n
  simp only [A052343]

end A052343

/-! ## A052343.P7287110643024880458

`A025426(8*n+2)`
-/

namespace A052343.P7287110643024880458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025426 (8 * n + 2)

end

end A052343.P7287110643024880458

namespace A052343

/-- `A025426(8*n+2)` -/
def P7287110643024880458.Spec : Prop :=
  ∀ n, P7287110643024880458.a n = A052343 n

end A052343

/-! ## A052343.P13855147262325686746

`(A002654(4*n+1)+A010052(4*n+1))/2`
-/

namespace A052343.P13855147262325686746
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002654 (4 * n + 1) + A010052 (4 * n + 1) : ℚ) / 2

end

end A052343.P13855147262325686746

namespace A052343

/-- `(A002654(4*n+1)+A010052(4*n+1))/2` -/
def P13855147262325686746.Spec : Prop :=
  ∀ n, P13855147262325686746.a n = (A052343 n : ℚ)

end A052343

/-! ## A052343.P12084782455135400016

`ceil(A004020(n)/4)`
-/

namespace A052343.P12084782455135400016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A004020 n : ℚ) / 4⌉

end

end A052343.P12084782455135400016

namespace A052343

/-- `ceil(A004020(n)/4)` -/
def P12084782455135400016.Spec : Prop :=
  ∀ n, P12084782455135400016.a n = A052343 n

theorem P12084782455135400016.correct : P12084782455135400016.Spec := by
  intro n
  simp only [A052343, Nat.add_sub_cancel, A052343.P12084782455135400016.a, A052343.P15911122501402458117.a, A004020, A004020.P12808183263529079992.a, A008441, A008441.P257068461411472066.a, A002654, A002654.P11574922253888480122.a, A001826, A001826.P1518250824516108745.a, A001842, A001842.P7159875081872045936.f1, A001842.P7159875081872045936.a, A001227, A001227.P17291574635237243988.f1, A001227.P17291574635237243988.a, A121262, A121262.P5808261376347758400.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A052343

/-! ## A052343.P13055939586582374190

`ceil(A005883(n)/8)`
-/

namespace A052343.P13055939586582374190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A005883 n : ℚ) / 8⌉

end

end A052343.P13055939586582374190

namespace A052343

/-- `ceil(A005883(n)/8)` -/
def P13055939586582374190.Spec : Prop :=
  ∀ n, P13055939586582374190.a n = A052343 n

theorem P13055939586582374190.correct : P13055939586582374190.Spec := by
  intro n
  simp only [A052343, Nat.add_sub_cancel, A052343.P13055939586582374190.a, A052343.P15911122501402458117.a, A005883, A005883.P3734216093274140482.a, A008441, A008441.P257068461411472066.a, A002654, A002654.P11574922253888480122.a, A001826, A001826.P1518250824516108745.a, A001842, A001842.P7159875081872045936.f1, A001842.P7159875081872045936.a, A001227, A001227.P17291574635237243988.f1, A001227.P17291574635237243988.a, A121262, A121262.P5808261376347758400.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A052343

/-! ## A052343.P12043126141278552672

`A004526(A008441(n)+1)`
-/

namespace A052343.P12043126141278552672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A008441 n + 1).toNat

end

end A052343.P12043126141278552672

namespace A052343

/-- `A004526(A008441(n)+1)` -/
def P12043126141278552672.Spec : Prop :=
  ∀ n, P12043126141278552672.a n = A052343 n

end A052343

/-! ## A052343.P1478413466521393988

`A110655(2*A008441(n))`
-/

namespace A052343.P1478413466521393988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 (2 * A008441 n).toNat

end

end A052343.P1478413466521393988

namespace A052343

/-- `A110655(2*A008441(n))` -/
def P1478413466521393988.Spec : Prop :=
  ∀ n, P1478413466521393988.a n = A052343 n

end A052343

/-! ## A052343.P8495541898624224828

`A052344(n)+A010054(n)`
-/

namespace A052343.P8495541898624224828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052344 n + A010054 n

end

end A052343.P8495541898624224828

namespace A052343

/-- `A052344(n)+A010054(n)` -/
def P8495541898624224828.Spec : Prop :=
  ∀ n, P8495541898624224828.a n = A052343 n

end A052343

/-! ## A052343.P3954639474089181502

`A052344(n)+char[A000217(n)]`
-/

namespace A052343.P3954639474089181502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052344 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A052343.P3954639474089181502

namespace A052343

/-- `A052344(n)+char[A000217(n)]` -/
def P3954639474089181502.Spec : Prop :=
  ∀ n, P3954639474089181502.a n = A052343 n

end A052343

/-! ## A052343.P16894441438498215487

`A110654(A008441(n)+2)-1`
-/

namespace A052343.P16894441438498215487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A008441 n + 2).toNat - 1

end

end A052343.P16894441438498215487

namespace A052343

/-- `A110654(A008441(n)+2)-1` -/
def P16894441438498215487.Spec : Prop :=
  ∀ n, P16894441438498215487.a n = A052343 n

end A052343

/-! ## A052343.P13310718742104243912

`A035214(n)+A052344(n)-1`
-/

namespace A052343.P13310718742104243912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 n + (A052344 n - 1)

end

end A052343.P13310718742104243912

namespace A052343

/-- `A035214(n)+A052344(n)-1` -/
def P13310718742104243912.Spec : Prop :=
  ∀ n, P13310718742104243912.a n = A052343 n

end A052343

/-! ## A052343.P399771934731989899

`(A008441(n)+A005369(n))/2`
-/

namespace A052343.P399771934731989899
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008441 n + A005369 n : ℚ) / 2

end

end A052343.P399771934731989899

namespace A052343

/-- `(A008441(n)+A005369(n))/2` -/
def P399771934731989899.Spec : Prop :=
  ∀ n, P399771934731989899.a n = (A052343 n : ℚ)

end A052343

/-! ## A052343.P12218856869111098269

`A002636(n)-A063993(n)`
-/

namespace A052343.P12218856869111098269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002636 n - A063993 n

end

end A052343.P12218856869111098269

namespace A052343

/-- `A002636(n)-A063993(n)` -/
def P12218856869111098269.Spec : Prop :=
  ∀ n, P12218856869111098269.a n = A052343 n

end A052343

/-! ## A052343.P8101818445016746643

`round(A125079(2*n)/2)`
-/

namespace A052343.P8101818445016746643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A125079 (2 * n) : ℚ) / 2)

end

end A052343.P8101818445016746643

namespace A052343

/-- `round(A125079(2*n)/2)` -/
def P8101818445016746643.Spec : Prop :=
  ∀ n, P8101818445016746643.a n = A052343 n

end A052343

/-! ## A052343.P16087554600110260962

`A052344(n)+A005369(2*n)`
-/

namespace A052343.P16087554600110260962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052344 n + A005369 (2 * n)

end

end A052343.P16087554600110260962

namespace A052343

/-- `A052344(n)+A005369(2*n)` -/
def P16087554600110260962.Spec : Prop :=
  ∀ n, P16087554600110260962.a n = A052343 n

end A052343

/-! ## A052343.P13997917208539312704

`ceil(A116604(2*n)/2)`
-/

namespace A052343.P13997917208539312704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A116604 (2 * n) : ℚ) / 2⌉

end

end A052343.P13997917208539312704

namespace A052343

/-- `ceil(A116604(2*n)/2)` -/
def P13997917208539312704.Spec : Prop :=
  ∀ n, P13997917208539312704.a n = A052343 n

end A052343

/-! ## A052343.P648381354489898720

`ceil(A129447(2*n)/2)`
-/

namespace A052343.P648381354489898720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A129447 (2 * n) : ℚ) / 2⌉

end

end A052343.P648381354489898720

namespace A052343

/-- `ceil(A129447(2*n)/2)` -/
def P648381354489898720.Spec : Prop :=
  ∀ n, P648381354489898720.a n = A052343 n

end A052343

/-! ## A052343.P9830003086591718724

`ceil(A138741(2*n)/2)`
-/

namespace A052343.P9830003086591718724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A138741 (2 * n) : ℚ) / 2⌉

end

end A052343.P9830003086591718724

namespace A052343

/-- `ceil(A138741(2*n)/2)` -/
def P9830003086591718724.Spec : Prop :=
  ∀ n, P9830003086591718724.a n = A052343 n

end A052343

/-! ## A052343.P17684911377862600754

`A000161(1+4*n)`
-/

namespace A052343.P17684911377862600754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000161 (1 + 4 * n)

end

end A052343.P17684911377862600754

namespace A052343

/-- `A000161(1+4*n)` -/
def P17684911377862600754.Spec : Prop :=
  ∀ n, P17684911377862600754.a n = A052343 n

end A052343

/-! ## A052343.P691139033145444446

`A025435(4*n+1)`
-/

namespace A052343.P691139033145444446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025435 (4 * n + 1)

end

end A052343.P691139033145444446

namespace A052343

/-- `A025435(4*n+1)` -/
def P691139033145444446.Spec : Prop :=
  ∀ n, P691139033145444446.a n = A052343 n

end A052343

/-!
# A052344: Number of ways to write n as the unordered sum of two nonzero triangular numbers.

The programs for A052344, the canonical program `A052344.P15195332241825076864` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052344 has offset 0).

The definition of A052344 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A052344.P15195332241825076864

`ceil(A053603(n)/2)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A052344

/-- `ceil(A053603(n)/2)` -/
def P15195332241825076864.Spec : Prop :=
  ∀ n, P15195332241825076864.a n = A052344 n

theorem P15195332241825076864.correct : P15195332241825076864.Spec := by
  intro n
  simp only [A052344]

end A052344

/-! ## A052344.P8844242108073637161

`A052343(n)-char[∑[n]]`
-/

namespace A052344.P8844242108073637161
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052343 n - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A052344.P8844242108073637161

namespace A052344

/-- `A052343(n)-char[∑[n]]` -/
def P8844242108073637161.Spec : Prop :=
  ∀ n, P8844242108073637161.a n = A052344 n

end A052344

/-! ## A052344.P17936486755638762948

`ceil(A008441(n)/2)-char[∑[n]]`
-/

namespace A052344.P17936486755638762948
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A008441 n : ℚ) / 2⌉ - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A052344.P17936486755638762948

namespace A052344

/-- `ceil(A008441(n)/2)-char[∑[n]]` -/
def P17936486755638762948.Spec : Prop :=
  ∀ n, P17936486755638762948.a n = A052344 n

end A052344

/-! ## A052344.P16833769548970561474

`A110654(A053603(n))`
-/

namespace A052344.P16833769548970561474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A053603 n).toNat

end

end A052344.P16833769548970561474

namespace A052344

/-- `A110654(A053603(n))` -/
def P16833769548970561474.Spec : Prop :=
  ∀ n, P16833769548970561474.a n = A052344 n

end A052344

/-! ## A052344.P2901226986769446119

`A004526(A053603(n)+1)`
-/

namespace A052344.P2901226986769446119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A053603 n + 1).toNat

end

end A052344.P2901226986769446119

namespace A052344

/-- `A004526(A053603(n)+1)` -/
def P2901226986769446119.Spec : Prop :=
  ∀ n, P2901226986769446119.a n = A052344 n

end A052344

/-! ## A052344.P12779709431801266451

`A110656(4*A053603(n))`
-/

namespace A052344.P12779709431801266451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 (4 * A053603 n).toNat

end

end A052344.P12779709431801266451

namespace A052344

/-- `A110656(4*A053603(n))` -/
def P12779709431801266451.Spec : Prop :=
  ∀ n, P12779709431801266451.a n = A052344 n

end A052344

/-! ## A052344.P14361147646783030523

`A053603(n)-A307597(n)`
-/

namespace A052344.P14361147646783030523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053603 n - A307597 n

end

end A052344.P14361147646783030523

namespace A052344

/-- `A053603(n)-A307597(n)` -/
def P14361147646783030523.Spec : Prop :=
  ∀ n, P14361147646783030523.a n = A052344 n

end A052344

/-! ## A052344.P14637033626640473509

`A008619(A053603(n)+1)-1`
-/

namespace A052344.P14637033626640473509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A053603 n + 1).toNat - 1

end

end A052344.P14637033626640473509

namespace A052344

/-- `A008619(A053603(n)+1)-1` -/
def P14637033626640473509.Spec : Prop :=
  ∀ n, P14637033626640473509.a n = A052344 n

end A052344

/-! ## A052344.P8675858485969846430

`A002265(2*(A053603(n)+1))`
-/

namespace A052344.P8675858485969846430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * (A053603 n + 1)).toNat

end

end A052344.P8675858485969846430

namespace A052344

/-- `A002265(2*(A053603(n)+1))` -/
def P8675858485969846430.Spec : Prop :=
  ∀ n, P8675858485969846430.a n = A052344 n

end A052344

/-! ## A052344.P13407647313219609810

`A008624(2*A053603(n)+1)`
-/

namespace A052344.P13407647313219609810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (2 * A053603 n + 1).toNat

end

end A052344.P13407647313219609810

namespace A052344

/-- `A008624(2*A053603(n)+1)` -/
def P13407647313219609810.Spec : Prop :=
  ∀ n, P13407647313219609810.a n = A052344 n

end A052344

/-! ## A052344.P2270918464591917618

`A307597(n)+1-A267813(n)`
-/

namespace A052344.P2270918464591917618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307597 n + (1 - A267813 n)

end

end A052344.P2270918464591917618

namespace A052344

/-- `A307597(n)+1-A267813(n)` -/
def P2270918464591917618.Spec : Prop :=
  ∀ n, P2270918464591917618.a n = A052344 n

end A052344

/-! ## A052344.P11271836599804424684

`A004526(n)-A004526(n-A053603(n))`
-/

namespace A052344.P11271836599804424684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n - A004526 ((n : ℤ) - A053603 n).toNat

end

end A052344.P11271836599804424684

namespace A052344

/-- `A004526(n)-A004526(n-A053603(n))` -/
def P11271836599804424684.Spec : Prop :=
  ∀ n, P11271836599804424684.a n = A052344 n

end A052344

/-! ## A052344.P3190399550609204427

`A008619(n)-A008619(n-A053603(n))`
-/

namespace A052344.P3190399550609204427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n - A008619 ((n : ℤ) - A053603 n).toNat

end

end A052344.P3190399550609204427

namespace A052344

/-- `A008619(n)-A008619(n-A053603(n))` -/
def P3190399550609204427.Spec : Prop :=
  ∀ n, P3190399550609204427.a n = A052344 n

end A052344

/-! ## A052344.P3978889746936671623

`A053603(n)-floor(A053603(n)/A040000(n))`
-/

namespace A052344.P3978889746936671623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053603 n - ⌊(A053603 n : ℚ) / (A040000 n : ℚ)⌋

end

end A052344.P3978889746936671623

namespace A052344

/-- `A053603(n)-floor(A053603(n)/A040000(n))` -/
def P3978889746936671623.Spec : Prop :=
  ∀ n, P3978889746936671623.a n = A052344 n

end A052344

/-! ## A052344.P1478648364804431339

`A008619(A053603(n)+1+n)%A008619(n+1)`
-/

namespace A052344.P1478648364804431339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008619 (A053603 n + 1 + (n : ℤ)).toNat) (A008619 (n + 1))

end

end A052344.P1478648364804431339

namespace A052344

/-- `A008619(A053603(n)+1+n)%A008619(n+1)` -/
def P1478648364804431339.Spec : Prop :=
  ∀ n, P1478648364804431339.a n = A052344 n

end A052344

/-! ## A052344.P99083419891261587

`A002636(n)-(A063993(n)+A010054(n))`
-/

namespace A052344.P99083419891261587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002636 n - (A063993 n + A010054 n)

end

end A052344.P99083419891261587

namespace A052344

/-- `A002636(n)-(A063993(n)+A010054(n))` -/
def P99083419891261587.Spec : Prop :=
  ∀ n, P99083419891261587.a n = A052344 n

end A052344

/-! ## A052344.P2325259852890590018

`A360617(2^A053603(n))`
-/

namespace A052344.P2325259852890590018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360617 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A053603 n : ℤ))).toNat

end

end A052344.P2325259852890590018

namespace A052344

/-- `A360617(2^A053603(n))` -/
def P2325259852890590018.Spec : Prop :=
  ∀ n, P2325259852890590018.a n = A052344 n

end A052344

/-! ## A052344.P14136288612521155924

`A319797(A133263(n))`
-/

namespace A052344.P14136288612521155924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319797 (A133263 n).toNat

end

end A052344.P14136288612521155924

namespace A052344

/-- `A319797(A133263(n))` -/
def P14136288612521155924.Spec : Prop :=
  ∀ n, P14136288612521155924.a n = A052344 n

end A052344

/-! ## A052344.P10626071048776791186

`A181506(A152948(n+1))`
-/

namespace A052344.P10626071048776791186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181506 (A152948 (n + 1)).toNat

end

end A052344.P10626071048776791186

namespace A052344

/-- `A181506(A152948(n+1))` -/
def P10626071048776791186.Spec : Prop :=
  ∀ n, P10626071048776791186.a n = A052344 n

end A052344

/-! ## A052344.P16715069835450181323

`A307597(n)+A052343(n)-A357070(n)`
-/

namespace A052344.P16715069835450181323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307597 n + A052343 n - A357070 n

end

end A052344.P16715069835450181323

namespace A052344

/-- `A307597(n)+A052343(n)-A357070(n)` -/
def P16715069835450181323.Spec : Prop :=
  ∀ n, P16715069835450181323.a n = A052344 n

end A052344

/-!
# A052345: Least positive k such that A052343(k)=n.

The programs for A052345, there is no canonical definition to state claims against.
-/

/-! ## A052345.P4562242728226510101

`A265135(a(n-2))` with `a(0)=5, a(1)=1, a(2)=6`
-/

namespace A052345.P4562242728226510101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5, 1, 6] fun n a =>
  A265135 (a (n - 2)).toNat

end

end A052345.P4562242728226510101

/-!
# A052346: Smallest number which is the sum of two positive triangular numbers in exactly n different ways.

The programs for A052346, there is no canonical definition to state claims against.
-/

/-! ## A052346.P16108146711649760039

`A053587(n*a(A053575(n+1)-1))` with `a(0)=1`
-/

namespace A052346.P16108146711649760039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A053587 ((n : ℤ) * a (A053575 (n + 1) - 1).toNat).toNat

end

end A052346.P16108146711649760039

/-!
# A052347: Record values reached in A052343 and A052344.

The programs for A052347, there is no canonical definition to state claims against.
-/

/-! ## A052347.P15074869641571872958

`∑[runs[A000448(n+1)]]`
-/

namespace A052347.P15074869641571872958
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000448 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052347.P15074869641571872958

/-! ## A052347.P6297955601482162446

`max(A060306(n+1), n+1)`
-/

namespace A052347.P6297955601482162446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  max (A060306 (n + 1)) (n + 1 : ℤ)

end

end A052347.P6297955601482162446

/-! ## A052347.P4885870134141628961

`A004525(A344470(n+3))`
-/

namespace A052347.P4885870134141628961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A344470 (n + 3)).toNat

end

end A052347.P4885870134141628961

/-! ## A052347.P1572736802456414289

`A060306(n+1)+A014154(n)`
-/

namespace A052347.P1572736802456414289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060306 (n + 1) + A014154 n

end

end A052347.P1572736802456414289

/-! ## A052347.P11983266496511855687

`A060306(n+1)+A014164(n)`
-/

namespace A052347.P11983266496511855687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060306 (n + 1) + A014164 n

end

end A052347.P11983266496511855687

/-!
# A052348: Indices of A052343 (ways to write n as sum of two triangular numbers) where record values are reached.

The programs for A052348, there is no canonical definition to state claims against.
-/

/-! ## A052348.P2445648901605181679

`A052345(A052347(n+1))%(10^n)`
-/

namespace A052348.P2445648901605181679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A052345 (A052347 (n + 1)).toNat) (10 ^ n : ℤ)

end

end A052348.P2445648901605181679

/-! ## A052348.P1776916828196685096

`A052345(A052347(n+1))-A000007(n)`
-/

namespace A052348.P1776916828196685096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052345 (A052347 (n + 1)).toNat - A000007 n

end

end A052348.P1776916828196685096

/-! ## A052348.P17379036406110366581

`A052345(A052347(n+1))-A010894(n)`
-/

namespace A052348.P17379036406110366581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052345 (A052347 (n + 1)).toNat - A010894 (n + 21)

end

end A052348.P17379036406110366581

/-! ## A052348.P9227347508507305053

`A052345(A052347(n+1))*A178489(n)`
-/

namespace A052348.P9227347508507305053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052345 (A052347 (n + 1)).toNat * A178489 n

end

end A052348.P9227347508507305053

/-! ## A052348.P13823258949536147349

`char[A007318(n)]*A052345(A052347(n+1))`
-/

namespace A052348.P13823258949536147349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A052345 (A052347 (n + 1)).toNat

end

end A052348.P13823258949536147349

/-!
# A052349: Lexicographically earliest sequence of distinct positive integers such that no subsequence sums to a prime.

The programs for A052349, there is no canonical definition to state claims against.
-/

/-! ## A052349.P17762783023906184580

`A280708(n+1)+char[3]`
-/

namespace A052349.P17762783023906184580
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280708 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A052349.P17762783023906184580

/-! ## A052349.P11117306285542351149

`A316864(n)+A280708(n+1)`
-/

namespace A052349.P11117306285542351149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316864 n + A280708 (n + 1)

end

end A052349.P11117306285542351149

/-! ## A052349.P15520150623185909053

`or(Δ[A110591(n)], A280708(n+1))`
-/

namespace A052349.P15520150623185909053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110591 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (n + 1) - f1 n) (A280708 (n + 1))

end

end A052349.P15520150623185909053

/-! ## A052349.P8887088460259502322

`xor(col(A329679(n)), A280708(n+1))`
-/

namespace A052349.P8887088460259502322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (SequenceMachineLib.triCol (A329679 n).toNat : ℤ) (A280708 (n + 1))

end

end A052349.P8887088460259502322

/-! ## A052349.P1366093384674589784

`A340599(n+1)+A280708(n+1)`
-/

namespace A052349.P1366093384674589784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340599 (n + 1) + A280708 (n + 1)

end

end A052349.P1366093384674589784

/-!
# A052350: Least prime in A001359 (lesser of twin primes) such that the distance (A053319) to the next twin is 6*n.

The programs for A052350, there is no canonical definition to state claims against.
-/

/-! ## A052350.P10749183951948290812

`A340573(n+1)-6*(n+1)`
-/

namespace A052350.P10749183951948290812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340573 (n + 1) - (6 * (n + 1) : ℤ)

end

end A052350.P10749183951948290812

/-! ## A052350.P6352314950452095332

`A340573(n+1)-A016969(n)-1`
-/

namespace A052350.P6352314950452095332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340573 (n + 1) - A016969 n - 1

end

end A052350.P6352314950452095332

/-! ## A052350.P11470521533229221044

`A151799(A340573(n+1)-A016969(n))`
-/

namespace A052350.P11470521533229221044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151799 (A340573 (n + 1) - A016969 n).toNat

end

end A052350.P11470521533229221044

/-!
# A052351: Least prime in A023200 (lesser of 4-twins) such that the distance to the next 4-twin is 6*n.

The programs for A052351, there is no canonical definition to state claims against.
-/

/-! ## A052351.P11331851681642073497

`A145993(A095062(n+1)*A376353(n+1))`
-/

namespace A052351.P11331851681642073497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145993 (A095062 (n + 1) * A376353 (n + 1)).toNat

end

end A052351.P11331851681642073497

/-!
# A052361: Number of permutations in the symmetric group S_n such that the size of their conjugacy class is even.

The programs for A052361, there is no canonical definition to state claims against.
-/

/-! ## A052361.P4627346622800403142

`(1+n)!-A088042(n+1)`
-/

namespace A052361.P4627346622800403142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (1 + n) : ℤ) - A088042 (n + 1)

end

end A052361.P4627346622800403142

/-! ## A052361.P15984839242624939481

`record[A084938(n)]-A088042(n+1)`
-/

namespace A052361.P15984839242624939481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084938 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A088042 (n + 1)

end

end A052361.P15984839242624939481

/-! ## A052361.P7372443637360377745

`A000142(1+n)-A088042(n+1)`
-/

namespace A052361.P7372443637360377745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (1 + n) - A088042 (n + 1)

end

end A052361.P7372443637360377745

/-! ## A052361.P14622372557163277430

`record[A166350(n+1)]-A088042(n+1)`
-/

namespace A052361.P14622372557163277430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166350 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A088042 (n + 1)

end

end A052361.P14622372557163277430

/-! ## A052361.P14826848441065075602

`A066667(A000217(n))-A088042(n+1)`
-/

namespace A052361.P14826848441065075602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066667 (A000217 n).toNat - A088042 (n + 1)

end

end A052361.P14826848441065075602

/-!
# A052364: Size of range of occurrences of digits in decimal expansion of Pi.

The programs for A052364, there is no canonical definition to state claims against.
-/

/-! ## A052364.P14863798080951915233

`A052374(n)-A052375(n+1)`
-/

namespace A052364.P14863798080951915233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052374 n - A052375 (n + 1)

end

end A052364.P14863798080951915233

/-! ## A052364.P9446384487780301715

`A052374(n)-∑[A000007(A346122(n+1))]`
-/

namespace A052364.P9446384487780301715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A346122 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052374 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052364.P9446384487780301715

/-! ## A052364.P1665223756832957765

`A052374(n)-∑[A000007(A352858(n+3)²)]`
-/

namespace A052364.P1665223756832957765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A352858 (n + 3) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052374 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052364.P1665223756832957765

/-! ## A052364.P10668582786734769090

`round(A052374(n)-A114842(n+1)/A114838(n+1))`
-/

namespace A052364.P10668582786734769090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A052374 n : ℚ) - (A114842 (n + 1) : ℚ) / (A114838 (n + 1) : ℚ))

end

end A052364.P10668582786734769090

/-! ## A052364.P5374103119187452893

`A052374(n)-∑[val(A112054(n+1), 31)]`
-/

namespace A052364.P5374103119187452893
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A112054 (n + 1)).toNat 31

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052374 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A052364.P5374103119187452893

/-!
# A052365: Number of nonnegative integer 3 X 3 matrices with sum of elements equal to n, under row and column permutations.

The programs for A052365, there is no canonical definition to state claims against.
-/

/-! ## A052365.P16916633732379152973

`A318795(∑[n+1]+3)`
-/

namespace A052365.P16916633732379152973
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318795 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A052365.P16916633732379152973

/-! ## A052365.P1465534112779532637

`A112082(A052980(n))`
-/

namespace A052365.P1465534112779532637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112082 (A052980 n).toNat

end

end A052365.P1465534112779532637

/-! ## A052365.P4049937075977361388

`A246705(A200544(n))`
-/

namespace A052365.P4049937075977361388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246705 (A200544 n).toNat

end

end A052365.P4049937075977361388

/-!
# A052366: Number of nonnegative integer 4 X 4 matrices with sum of elements equal to n, under row and column permutations.

The programs for A052366, there is no canonical definition to state claims against.
-/

/-! ## A052366.P8616305344184834022

`A318795(∑[n+2]+5)`
-/

namespace A052366.P8616305344184834022
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318795 (∑ j ∈ Finset.range (n + 1), f1 j + 5)

end

end A052366.P8616305344184834022

/-!
# A052367: Number of nonnegative integer 5 X 5 matrices with sum of elements equal to n, under row and column permutations.

The programs for A052367, there is no canonical definition to state claims against.
-/

/-! ## A052367.P13988955791941479050

`A318795(∑[n+3]+8)`
-/

namespace A052367.P13988955791941479050
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318795 (∑ j ∈ Finset.range (n + 1), f1 j + 8)

end

end A052367.P13988955791941479050

/-! ## A052367.P16813810966116858366

`A144169(A014381(n))+A007716(n)`
-/

namespace A052367.P16813810966116858366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144169 (A014381 n).toNat + A007716 n

end

end A052367.P16813810966116858366

/-! ## A052367.P6212411729465878391

`A160115(A319790(n))+A007716(n)`
-/

namespace A052367.P6212411729465878391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160115 (A319790 n).toNat + A007716 n

end

end A052367.P6212411729465878391

/-!
# A052368: Primes p such that p+7! is also prime.

The programs for A052368, there is no canonical definition to state claims against.
-/

/-! ## A052368.P5979201331487386821

`p?[A284783(n+1)]`
-/

namespace A052368.P5979201331487386821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284783 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A052368.P5979201331487386821

/-! ## A052368.P16674538577777609052

`filter[A284783(n+1), A010051(#)]`
-/

namespace A052368.P16674538577777609052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284783 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A052368.P16674538577777609052

/-! ## A052368.P9289204575394344845

`filter[A284783(1+n), A323152(#)]`
-/

namespace A052368.P9289204575394344845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284783 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323152 (f1 j).toNat = 1) n)

end

end A052368.P9289204575394344845

/-! ## A052368.P350328181071461467

`filter[A284783(n+1), A323153(#)]`
-/

namespace A052368.P350328181071461467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284783 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A052368.P350328181071461467

/-! ## A052368.P8602785521382075854

`filter[A284783(n+1), A353787(#)]`
-/

namespace A052368.P8602785521382075854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284783 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353787 (f1 j).toNat = 1) n)

end

end A052368.P8602785521382075854

/-! ## A052368.P11235472374096492954

`record[A006530(2*A284783(n+1))]`
-/

namespace A052368.P11235472374096492954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * A284783 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A052368.P11235472374096492954

/-! ## A052368.P4565622636414998133

`∩[A000040(n+1), A284783(n+1)]`
-/

namespace A052368.P4565622636414998133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284783 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052368.P4565622636414998133

/-! ## A052368.P14605352629785856304

`∩[A004139(n+1), A284783(n+1)]`
-/

namespace A052368.P14605352629785856304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284783 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052368.P14605352629785856304

/-! ## A052368.P17878969107359338892

`∩[A006005(n+1), A284783(n+1)]`
-/

namespace A052368.P17878969107359338892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284783 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052368.P17878969107359338892

/-! ## A052368.P17272798970200111443

`∩[A008578(n+1), A284783(n+1)]`
-/

namespace A052368.P17272798970200111443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284783 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052368.P17272798970200111443

/-! ## A052368.P9934327744802297744

`∩[A033946(n+1), A284783(n+1)]`
-/

namespace A052368.P9934327744802297744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284783 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052368.P9934327744802297744

/-! ## A052368.P4155503246638883115

`∩[A045319(n+1), A284783(n+1)]`
-/

namespace A052368.P4155503246638883115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284783 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052368.P4155503246638883115

/-! ## A052368.P15828599546878050689

`∩[A045344(n+1), A284783(n+1)]`
-/

namespace A052368.P15828599546878050689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284783 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052368.P15828599546878050689

/-! ## A052368.P29045630605040797

`∩[A046022(n+1), A284783(n+1)]`
-/

namespace A052368.P29045630605040797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284783 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052368.P29045630605040797

/-! ## A052368.P4165927788186057189

`∩[A053813(n+1), A284783(n+1)]`
-/

namespace A052368.P4165927788186057189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284783 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052368.P4165927788186057189

/-! ## A052368.P3732847260304725938

`∩[A065091(n+1), A284783(n+1)]`
-/

namespace A052368.P3732847260304725938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284783 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052368.P3732847260304725938

/-! ## A052368.P1506430003970639419

`∩[A066050(n+1), A284783(n+1)]`
-/

namespace A052368.P1506430003970639419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066050 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284783 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052368.P1506430003970639419

/-! ## A052368.P13936056371737620573

`∩[A067126(n+1), A284783(n+1)]`
-/

namespace A052368.P13936056371737620573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284783 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052368.P13936056371737620573

/-! ## A052368.P1278278035125241785

`∩[A083249(n+1), A284783(n+1)]`
-/

namespace A052368.P1278278035125241785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083249 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284783 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052368.P1278278035125241785

/-! ## A052368.P16624275391695944164

`∩[A084111(n+1), A284783(n+1)]`
-/

namespace A052368.P16624275391695944164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084111 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284783 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052368.P16624275391695944164

/-!
# A052369: Largest prime factor of n, where n runs through composite numbers.

The programs for A052369, the canonical program `A052369.P7787911746371594632` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052369 has offset 1).

The definition of A052369 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A052369.P7787911746371594632

`A006530(A002808(n+1))`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A052369

/-- `A006530(A002808(n+1))` -/
def P7787911746371594632.Spec : Prop :=
  ∀ n, P7787911746371594632.a n = A052369 (n + 1)

theorem P7787911746371594632.correct : P7787911746371594632.Spec := by
  intro n
  simp only [A052369, Nat.add_sub_cancel]

end A052369

/-! ## A052369.P8703933357502213163

`p?[A006530(n+2)%(n+1)]`
-/

namespace A052369.P8703933357502213163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006530 (n + 2)) (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A052369.P8703933357502213163

namespace A052369

/-- `p?[A006530(n+2)%(n+1)]` -/
def P8703933357502213163.Spec : Prop :=
  ∀ n, P8703933357502213163.a n = A052369 (n + 1)

end A052369

/-! ## A052369.P14846181617642007821

`A006530(Δ[A053767(n)])`
-/

namespace A052369.P14846181617642007821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (f1 (n + 1) - f1 n).toNat

end

end A052369.P14846181617642007821

namespace A052369

/-- `A006530(Δ[A053767(n)])` -/
def P14846181617642007821.Spec : Prop :=
  ∀ n, P14846181617642007821.a n = A052369 (n + 1)

end A052369

/-! ## A052369.P10743503515387343477

`A085428(n)-A056608(n+1)`
-/

namespace A052369.P10743503515387343477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085428 n - A056608 (n + 1)

end

end A052369.P10743503515387343477

namespace A052369

/-- `A085428(n)-A056608(n+1)` -/
def P10743503515387343477.Spec : Prop :=
  ∀ n, P10743503515387343477.a n = A052369 (n + 1)

end A052369

/-! ## A052369.P7243500091202660689

`A002808(n+1)-A085273(n+1)`
-/

namespace A052369.P7243500091202660689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1) - A085273 (n + 1)

end

end A052369.P7243500091202660689

namespace A052369

/-- `A002808(n+1)-A085273(n+1)` -/
def P7243500091202660689.Spec : Prop :=
  ∀ n, P7243500091202660689.a n = A052369 (n + 1)

end A052369

/-! ## A052369.P6210486398418702975

`A085275(n+1)-A002808(n+1)`
-/

namespace A052369.P6210486398418702975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085275 (n + 1) - A002808 (n + 1)

end

end A052369.P6210486398418702975

namespace A052369

/-- `A085275(n+1)-A002808(n+1)` -/
def P6210486398418702975.Spec : Prop :=
  ∀ n, P6210486398418702975.a n = A052369 (n + 1)

end A052369

/-! ## A052369.P9536009531042132044

`A002808(n+1)/A161003(n+1)`
-/

namespace A052369.P9536009531042132044
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002808 (n + 1) : ℚ) / (A161003 (n + 1) : ℚ)

end

end A052369.P9536009531042132044

namespace A052369

/-- `A002808(n+1)/A161003(n+1)` -/
def P9536009531042132044.Spec : Prop :=
  ∀ n, P9536009531042132044.a n = (A052369 (n + 1) : ℚ)

end A052369

/-! ## A052369.P2458810464224842510

`A160180(n+1)/A032742(A161003(n+1))`
-/

namespace A052369.P2458810464224842510
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160180 (n + 1) : ℚ) / (A032742 (A161003 (n + 1)).toNat : ℚ)

end

end A052369.P2458810464224842510

namespace A052369

/-- `A160180(n+1)/A032742(A161003(n+1))` -/
def P2458810464224842510.Spec : Prop :=
  ∀ n, P2458810464224842510.a n = (A052369 (n + 1) : ℚ)

end A052369

/-! ## A052369.P9409139361451192710

`A085271(n+1)+A056608(n+1)-A085273(n+1)`
-/

namespace A052369.P9409139361451192710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085271 (n + 1) + A056608 (n + 1) - A085273 (n + 1)

end

end A052369.P9409139361451192710

namespace A052369

/-- `A085271(n+1)+A056608(n+1)-A085273(n+1)` -/
def P9409139361451192710.Spec : Prop :=
  ∀ n, P9409139361451192710.a n = A052369 (n + 1)

end A052369

/-! ## A052369.P4110215870977555179

`A085275(n+1)-(A085271(n+1)+A056608(n+1))`
-/

namespace A052369.P4110215870977555179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085275 (n + 1) - (A085271 (n + 1) + A056608 (n + 1))

end

end A052369.P4110215870977555179

namespace A052369

/-- `A085275(n+1)-(A085271(n+1)+A056608(n+1))` -/
def P4110215870977555179.Spec : Prop :=
  ∀ n, P4110215870977555179.a n = A052369 (n + 1)

end A052369

/-! ## A052369.P7140848917147470994

`A056608(n+1)*A160180(n+1)/A161003(n+1)`
-/

namespace A052369.P7140848917147470994
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056608 (n + 1) * A160180 (n + 1) : ℚ) / (A161003 (n + 1) : ℚ)

end

end A052369.P7140848917147470994

namespace A052369

/-- `A056608(n+1)*A160180(n+1)/A161003(n+1)` -/
def P7140848917147470994.Spec : Prop :=
  ∀ n, P7140848917147470994.a n = (A052369 (n + 1) : ℚ)

end A052369

/-! ## A052369.P564343780388333543

`p?[A085392(n+1)]`
-/

namespace A052369.P564343780388333543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085392 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A052369.P564343780388333543

namespace A052369

/-- `p?[A085392(n+1)]` -/
def P564343780388333543.Spec : Prop :=
  ∀ n, P564343780388333543.a n = A052369 (n + 1)

end A052369

/-! ## A052369.P15703136826301407290

`A111089(A056653(n+1))`
-/

namespace A052369.P15703136826301407290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111089 (A056653 (n + 1)).toNat

end

end A052369.P15703136826301407290

namespace A052369

/-- `A111089(A056653(n+1))` -/
def P15703136826301407290.Spec : Prop :=
  ∀ n, P15703136826301407290.a n = A052369 (n + 1)

end A052369

/-! ## A052369.P18060096700712413572

`filter[A085392(n+1), A010051(#)]`
-/

namespace A052369.P18060096700712413572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085392 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A052369.P18060096700712413572

namespace A052369

/-- `filter[A085392(n+1), A010051(#)]` -/
def P18060096700712413572.Spec : Prop :=
  ∀ n, P18060096700712413572.a n = A052369 (n + 1)

end A052369

/-! ## A052369.P7721447947565032217

`filter[A085392(n+1), A014306(#)]`
-/

namespace A052369.P7721447947565032217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085392 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A014306 (f1 j).toNat = 1) n)

end

end A052369.P7721447947565032217

namespace A052369

/-- `filter[A085392(n+1), A014306(#)]` -/
def P7721447947565032217.Spec : Prop :=
  ∀ n, P7721447947565032217.a n = A052369 (n + 1)

end A052369

/-! ## A052369.P14920552123465655238

`filter[A085392(n+1), A049240(#)]`
-/

namespace A052369.P14920552123465655238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085392 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A049240 (f1 j).toNat = 1) n)

end

end A052369.P14920552123465655238

namespace A052369

/-- `filter[A085392(n+1), A049240(#)]` -/
def P14920552123465655238.Spec : Prop :=
  ∀ n, P14920552123465655238.a n = A052369 (n + 1)

end A052369

/-! ## A052369.P12769114972026072897

`filter[A085392(n+1), A053867(#)]`
-/

namespace A052369.P12769114972026072897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085392 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A053867 (f1 j).toNat = 1) n)

end

end A052369.P12769114972026072897

namespace A052369

/-- `filter[A085392(n+1), A053867(#)]` -/
def P12769114972026072897.Spec : Prop :=
  ∀ n, P12769114972026072897.a n = A052369 (n + 1)

end A052369

/-! ## A052369.P4238088711583204881

`filter[A085392(n+1), A066829(#)]`
-/

namespace A052369.P4238088711583204881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085392 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066829 (f1 j).toNat = 1) n)

end

end A052369.P4238088711583204881

namespace A052369

/-- `filter[A085392(n+1), A066829(#)]` -/
def P4238088711583204881.Spec : Prop :=
  ∀ n, P4238088711583204881.a n = A052369 (n + 1)

end A052369

/-! ## A052369.P6559711679485824232

`filter[A085392(n+1), A069513(#)]`
-/

namespace A052369.P6559711679485824232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085392 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A069513 (f1 j).toNat = 1) n)

end

end A052369.P6559711679485824232

namespace A052369

/-- `filter[A085392(n+1), A069513(#)]` -/
def P6559711679485824232.Spec : Prop :=
  ∀ n, P6559711679485824232.a n = A052369 (n + 1)

end A052369

/-! ## A052369.P4648773100706678691

`filter[A085392(n+1), A092248(#)]`
-/

namespace A052369.P4648773100706678691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085392 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A092248 (f1 j).toNat = 1) n)

end

end A052369.P4648773100706678691

namespace A052369

/-- `filter[A085392(n+1), A092248(#)]` -/
def P4648773100706678691.Spec : Prop :=
  ∀ n, P4648773100706678691.a n = A052369 (n + 1)

end A052369

/-!
# A052370: Number of 6 X 6 binary matrices with n=0...36 ones up to row and column permutations.

The programs for A052370, there is no canonical definition to state claims against.
-/

/-! ## A052370.P5541577283460094700

`A052371(n+61)`
-/

namespace A052370.P5541577283460094700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052371 (n + 61)

end

end A052370.P5541577283460094700

/-! ## A052370.P17402104883606503642

`A000006(or(A149561(n), A149565(n)))`
-/

namespace A052370.P17402104883606503642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000006 (Int.lor (A149561 n) (A149565 n)).toNat

end

end A052370.P17402104883606503642

/-! ## A052370.P6722575730118965033

`A053304(n)-A051765(A302415(n+1))`
-/

namespace A052370.P6722575730118965033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053304 n - A051765 (A302415 (n + 1)).toNat

end

end A052370.P6722575730118965033

/-!
# A052371: Triangle T(n,k) of n X n binary matrices with k=0...n^2 ones up to row and column permutations.

The programs for A052371, there is no canonical definition to state claims against.
-/

/-! ## A052371.P5757148674731352204

`2*A106498(n)-A123548(n)`
-/

namespace A052371.P5757148674731352204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A106498 n - A123548 n

end

end A052371.P5757148674731352204

/-! ## A052371.P6084155836003245334

`A005843(A106498(n))-A123548(n)`
-/

namespace A052371.P6084155836003245334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A106498 n).toNat - A123548 n

end

end A052371.P6084155836003245334

/-! ## A052371.P11476721516533759269

`A196238(A106498(n)²)`
-/

namespace A052371.P11476721516533759269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196238 (A106498 n ^ 2).toNat

end

end A052371.P11476721516533759269

/-! ## A052371.P9760606928759985261

`A000523(3^A106498(n))`
-/

namespace A052371.P9760606928759985261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A106498 n : ℤ))).toNat

end

end A052371.P9760606928759985261

/-! ## A052371.P38644138136969912

`A038605(4^A106498(n))`
-/

namespace A052371.P38644138136969912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038605 (SequenceMachineLib.roundAway ((4 : ℚ) ^ (A106498 n : ℤ))).toNat

end

end A052371.P38644138136969912

/-!
# A052372: Number of nonnegative integer 6 X 6 matrices with sum of elements equal to n, under row and column permutations.

The programs for A052372, there is no canonical definition to state claims against.
-/

/-! ## A052372.P16093448972235930713

`A318795((n²+n)/2+4*(n+4))`
-/

namespace A052372.P16093448972235930713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318795 (SequenceMachineLib.roundAway ((n ^ 2 + n : ℚ) / 2 + (4 * (n + 4) : ℚ))).toNat

end

end A052372.P16093448972235930713

/-!
# A052373: Number of nonnegative integer 7 X 7 matrices with sum of elements equal to n, under row and column permutations.

The programs for A052373, there is no canonical definition to state claims against.
-/

/-! ## A052373.P14167149719584121922

`A318795(A167487(n+4))`
-/

namespace A052373.P14167149719584121922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318795 (A167487 (n + 4)).toNat

end

end A052373.P14167149719584121922

/-!
# A052374: Number of occurrences of most frequent digit in decimal expansion of Pi.

The programs for A052374, there is no canonical definition to state claims against.
-/

/-! ## A052374.P11590745557038992526

`fp[A361131(n+1)-1]`
-/

namespace A052374.P11590745557038992526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361131 (n + 1) - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (n : ℤ) < f1 j) 0

end

end A052374.P11590745557038992526

/-! ## A052374.P15257985218295629962

`∑[char[A361131(1+n)-1]]`
-/

namespace A052374.P15257985218295629962
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361131 (1 + n) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052374.P15257985218295629962

/-! ## A052374.P646810076069585817

`max(A064823(n+1), a(n-1))` with `a(0)=1`
-/

namespace A052374.P646810076069585817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  max (A064823 (n + 1)) (a (n - 1))

end

end A052374.P646810076069585817

/-! ## A052374.P6826526011043447844

`A052375(n+1)+A052364(n+1)`
-/

namespace A052374.P6826526011043447844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052375 (n + 1) + A052364 (n + 1)

end

end A052374.P6826526011043447844

/-! ## A052374.P708175604979978665

`fp[fp[A064823(n+1)]]`
-/

namespace A052374.P708175604979978665
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064823 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (n : ℤ) < f2 j) 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => n < f1 j) 0

end

end A052374.P708175604979978665

/-!
# A052375: Number of occurrences of least frequent digit in decimal expansion of Pi.

The programs for A052375, there is no canonical definition to state claims against.
-/

/-! ## A052375.P9243556213195599662

`A052374(n)-A052364(n+1)`
-/

namespace A052375.P9243556213195599662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052374 n - A052364 (n + 1)

end

end A052375.P9243556213195599662

/-! ## A052375.P5909635493811742444

`∑[char[A361131(n+1)-1]]-A052364(n+1)`
-/

namespace A052375.P5909635493811742444
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361131 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A052364 (n + 1)

end

end A052375.P5909635493811742444

/-! ## A052375.P553762164717112870

`∑[C(A327395(n+1), A123153(n+1))]`
-/

namespace A052375.P553762164717112870
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A327395 (n + 1)).toNat (A123153 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052375.P553762164717112870

/-! ## A052375.P4639312805530561903

`∑[C(A346873(n+1), A123153(n+1))]`
-/

namespace A052375.P4639312805530561903
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A346873 (n + 1)).toNat (A123153 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052375.P4639312805530561903

/-! ## A052375.P9164243117270632594

`∑[C(A325249(n+1), 10*(9-A030644(n)))]`
-/

namespace A052375.P9164243117270632594
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A325249 (n + 1)).toNat (10 * (9 - A030644 (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052375.P9164243117270632594

/-!
# A052376: Primes followed by a [10,2,10] prime difference pattern of A001223.

The programs for A052376, there is no canonical definition to state claims against.
-/

/-! ## A052376.P1578162427866232365

`A259025(n+1)-11`
-/

namespace A052376.P1578162427866232365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259025 (n + 1) - 11

end

end A052376.P1578162427866232365

/-! ## A052376.P9790251363161548315

`∩[A256753(n+1)-11, A031928(n+1)]`
-/

namespace A052376.P9790251363161548315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256753 (n + 1) - 11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031928 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052376.P9790251363161548315

/-! ## A052376.P10718113882580130939

`A064216(A259025(n+1)/2)`
-/

namespace A052376.P10718113882580130939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064216 (SequenceMachineLib.roundAway ((A259025 (n + 1) : ℚ) / 2)).toNat

end

end A052376.P10718113882580130939

/-! ## A052376.P17070183826416679119

`A023453(A259025(n+1))`
-/

namespace A052376.P17070183826416679119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023453 (A259025 (n + 1)).toNat

end

end A052376.P17070183826416679119

/-!
# A052377: Primes followed by an [8,4,8]=[d,D-d,d] prime difference pattern of A001223.

The programs for A052377, there is no canonical definition to state claims against.
-/

/-! ## A052377.P11832730289896350353

`∩[A031926(n+1)-12, A031926(n+1)]`
-/

namespace A052377.P11832730289896350353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031926 (n + 1) - 12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031926 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052377.P11832730289896350353

/-!
# A052378: Primes followed by a [4,2,4] prime difference pattern of A001223.

The programs for A052378, there is no canonical definition to state claims against.
-/

/-! ## A052378.P10386821930041599449

`A258088(n+1)-5`
-/

namespace A052378.P10386821930041599449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258088 (n + 1) - 5

end

end A052378.P10386821930041599449

/-! ## A052378.P2822665111367820133

`∩[A022005(n+1), A046139(n+1)]`
-/

namespace A052378.P2822665111367820133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046139 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052378.P2822665111367820133

/-! ## A052378.P11384593977889353341

`∩[A022005(n+1), A046136(n+1)]`
-/

namespace A052378.P11384593977889353341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046136 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052378.P11384593977889353341

/-! ## A052378.P3433191563474138004

`∩[A046136(n+1), A046139(n+1)]`
-/

namespace A052378.P3433191563474138004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046136 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046139 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052378.P3433191563474138004

/-! ## A052378.P8447135755865039868

`∩[A046136(n+1), A338812(n+1)]`
-/

namespace A052378.P8447135755865039868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046136 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338812 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052378.P8447135755865039868

/-! ## A052378.P14742166664414517868

`∩[A007529(n+1), A046136(n+1)]`
-/

namespace A052378.P14742166664414517868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007529 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046136 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052378.P14742166664414517868

/-! ## A052378.P3079119968504200242

`∩[A007529(n+1), A046139(n+1)]`
-/

namespace A052378.P3079119968504200242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007529 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046139 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052378.P3079119968504200242

/-! ## A052378.P1212789491404258636

`A007529(eq[4, A007529(n+2)-A007529(n+1)]+1)`
-/

namespace A052378.P1212789491404258636
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007529 (n + 2) - A007529 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007529 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A052378.P1212789491404258636

/-! ## A052378.P1226178853023822767

`∩[A007529(n+1), A086135(n+1)]`
-/

namespace A052378.P1226178853023822767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007529 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086135 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052378.P1226178853023822767

/-! ## A052378.P13568061912658122689

`∩[A022005(n+1), A086135(n+1)]`
-/

namespace A052378.P13568061912658122689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086135 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052378.P13568061912658122689

/-! ## A052378.P363671115950769965

`∩[A029710(n+1), A046139(n+1)]`
-/

namespace A052378.P363671115950769965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029710 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046139 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052378.P363671115950769965

/-! ## A052378.P2024972600653952207

`∩[A022005(n+1), A022885(n+1)]`
-/

namespace A052378.P2024972600653952207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022885 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052378.P2024972600653952207

/-! ## A052378.P3658900904430414566

`∩[A022885(n+1), A046136(n+1)]`
-/

namespace A052378.P3658900904430414566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022885 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046136 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052378.P3658900904430414566

/-! ## A052378.P4627526175937740305

`∩[A015913(n+1), A046139(n+1)]`
-/

namespace A052378.P4627526175937740305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015913 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046139 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052378.P4627526175937740305

/-! ## A052378.P11705253107059507375

`∩[A046139(n+1), A172238(n+1)]`
-/

namespace A052378.P11705253107059507375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172238 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052378.P11705253107059507375

/-! ## A052378.P6308434640538467026

`A029710(eq[2, A029710(n+1)-A046132(n+1)])`
-/

namespace A052378.P6308434640538467026
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029710 (n + 1) - A046132 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029710 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A052378.P6308434640538467026

/-! ## A052378.P16369060931767757723

`∩[A046139(n+1), A088175(n+1)]`
-/

namespace A052378.P16369060931767757723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088175 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052378.P16369060931767757723

/-! ## A052378.P14242943602927005436

`∩[A046139(n+1), A164572(n+1)]`
-/

namespace A052378.P14242943602927005436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164572 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052378.P14242943602927005436

/-! ## A052378.P566491783265219682

`∩[A046139(n+1), A056772(n+1)]`
-/

namespace A052378.P566491783265219682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056772 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052378.P566491783265219682

/-! ## A052378.P7473463686932426615

`p?[A022004(n+1)-4]`
-/

namespace A052378.P7473463686932426615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022004 (n + 1) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A052378.P7473463686932426615

/-!
# A052379: Number of integers from 1 to 10^(n+1)-1 that lack 0 and 1 as a digit.

The programs for A052379, the canonical program `A052379.P13698883869032761703` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052379 has offset 0).

The definition of A052379 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A052379.P4992007280164923405

`ogf(8/(1-9x+8x^2))`
-/

namespace A052379.P4992007280164923405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [8] [1, -9, 8] n

end

end A052379.P4992007280164923405

namespace A052379

/-- `ogf(8/(1-9x+8x^2))` -/
def P4992007280164923405.Spec : Prop :=
  ∀ n, P4992007280164923405.a n = A052379 n

end A052379

/-! ## A052379.P13698883869032761703

`8*a(n-1)+8` with `a(0)=8`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A052379

/-- `8*a(n-1)+8` -/
def P13698883869032761703.Spec : Prop :=
  ∀ n, (P13698883869032761703.a n : ℤ) = A052379 n

theorem P13698883869032761703.correct : P13698883869032761703.Spec := by
  intro n
  simp only [A052379]

end A052379

/-! ## A052379.P6610789220304321416

`8*A023001(n+1)`
-/

namespace A052379.P6610789220304321416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A023001 (n + 1)

end

end A052379.P6610789220304321416

namespace A052379

/-- `8*A023001(n+1)` -/
def P6610789220304321416.Spec : Prop :=
  ∀ n, P6610789220304321416.a n = A052379 n

end A052379

/-! ## A052379.P11787497695055498189

`(8^(n+2)-1)/7-1`
-/

namespace A052379.P11787497695055498189
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((8 ^ (n + 2) : ℤ) - 1 : ℚ) / 7 - 1

end

end A052379.P11787497695055498189

namespace A052379

/-- `(8^(n+2)-1)/7-1` -/
def P11787497695055498189.Spec : Prop :=
  ∀ n, P11787497695055498189.a n = (A052379 n : ℚ)

theorem P11787497695055498189.correct : P11787497695055498189.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A052379, Nat.add_sub_cancel, A052379.P11787497695055498189.a, A052379.P13698883869032761703.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A052379, Nat.add_sub_cancel, A052379.P11787497695055498189.a, A052379.P13698883869032761703.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A052379

/-! ## A052379.P14328896212008377454

`lcm(8, ∑[8^n])`
-/

namespace A052379.P14328896212008377454
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 8 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A052379.P14328896212008377454

namespace A052379

/-- `lcm(8, ∑[8^n])` -/
def P14328896212008377454.Spec : Prop :=
  ∀ n, (P14328896212008377454.a n : ℤ) = A052379 n

end A052379

/-! ## A052379.P8533081345716221992

`∑[8*a(n-1)]` with `a(0)=8`
-/

namespace A052379.P8533081345716221992
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [8] fun n f1 =>
  8 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052379.P8533081345716221992

namespace A052379

/-- `∑[8*a(n-1)]` -/
def P8533081345716221992.Spec : Prop :=
  ∀ n, (P8533081345716221992.a n : ℤ) = A052379 n

end A052379

/-! ## A052379.P14160427502767097797

`8*(a(n-1)+1)` with `a(0)=8`
-/

namespace A052379.P14160427502767097797
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [8] fun n a =>
  8 * (a (n - 1) + 1)

end

end A052379.P14160427502767097797

namespace A052379

/-- `8*(a(n-1)+1)` -/
def P14160427502767097797.Spec : Prop :=
  ∀ n, (P14160427502767097797.a n : ℤ) = A052379 n

theorem P14160427502767097797.correct : P14160427502767097797.Spec := by
  intro n
  simp only [A052379, Nat.add_sub_cancel, A052379.P14160427502767097797.a, A052379.P13698883869032761703.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A052379

/-! ## A052379.P2549325226904077446

`8*or(1, a(n-1))` with `a(0)=8`
-/

namespace A052379.P2549325226904077446
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [8] fun n a =>
  8 * Nat.lor 1 (a (n - 1))

end

end A052379.P2549325226904077446

namespace A052379

/-- `8*or(1, a(n-1))` -/
def P2549325226904077446.Spec : Prop :=
  ∀ n, (P2549325226904077446.a n : ℤ) = A052379 n

end A052379

/-! ## A052379.P7500708899522624128

`8*xor(1, a(n-1))` with `a(0)=8`
-/

namespace A052379.P7500708899522624128
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [8] fun n a =>
  8 * Nat.xor 1 (a (n - 1))

end

end A052379.P7500708899522624128

namespace A052379

/-- `8*xor(1, a(n-1))` -/
def P7500708899522624128.Spec : Prop :=
  ∀ n, (P7500708899522624128.a n : ℤ) = A052379 n

end A052379

/-! ## A052379.P2926247675741027575

`∑[abs(∏[-a(n-1)])]` with `a(0)=8`
-/

namespace A052379.P2926247675741027575
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [8] fun n f2 =>
  -f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∏ j ∈ Finset.range (n + 1), f2 j|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052379.P2926247675741027575

namespace A052379

/-- `∑[abs(∏[-a(n-1)])]` -/
def P2926247675741027575.Spec : Prop :=
  ∀ n, P2926247675741027575.a n = A052379 n

end A052379

/-! ## A052379.P3412630475041299965

`a(n-1)+8^(n+1)` with `a(0)=8`
-/

namespace A052379.P3412630475041299965
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [8] fun n a =>
  a (n - 1) + 8 ^ (n + 1)

end

end A052379.P3412630475041299965

namespace A052379

/-- `a(n-1)+8^(n+1)` -/
def P3412630475041299965.Spec : Prop :=
  ∀ n, (P3412630475041299965.a n : ℤ) = A052379 n

end A052379

/-! ## A052379.P15619504095865577665

`∑[a(n-1)/(1/2)^3]` with `a(0)=8`
-/

namespace A052379.P15619504095865577665
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [8] fun n f1 =>
  f1 (n - 1) / ((1 : ℚ) / 2) ^ 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052379.P15619504095865577665

namespace A052379

/-- `∑[a(n-1)/(1/2)^3]` -/
def P15619504095865577665.Spec : Prop :=
  ∀ n, P15619504095865577665.a n = (A052379 n : ℚ)

end A052379

/-! ## A052379.P1244802775744777085

`Δ[A145729(n)]`
-/

namespace A052379.P1244802775744777085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145729 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A052379.P1244802775744777085

namespace A052379

/-- `Δ[A145729(n)]` -/
def P1244802775744777085.Spec : Prop :=
  ∀ n, P1244802775744777085.a n = A052379 n

end A052379

/-! ## A052379.P14081964309734862468

`2*A108019(n+1)`
-/

namespace A052379.P14081964309734862468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A108019 (n + 1)

end

end A052379.P14081964309734862468

namespace A052379

/-- `2*A108019(n+1)` -/
def P14081964309734862468.Spec : Prop :=
  ∀ n, P14081964309734862468.a n = A052379 n

end A052379

/-! ## A052379.P11463535822400103235

`4*(A233328(n)+1)`
-/

namespace A052379.P11463535822400103235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A233328 n + 1)

end

end A052379.P11463535822400103235

namespace A052379

/-- `4*(A233328(n)+1)` -/
def P11463535822400103235.Spec : Prop :=
  ∀ n, P11463535822400103235.a n = A052379 n

end A052379

/-! ## A052379.P18167338741521292587

`4*A125835(n+2)`
-/

namespace A052379.P18167338741521292587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A125835 (n + 2)

end

end A052379.P18167338741521292587

namespace A052379

/-- `4*A125835(n+2)` -/
def P18167338741521292587.Spec : Prop :=
  ∀ n, P18167338741521292587.a n = A052379 n

end A052379

/-! ## A052379.P12755850201330792442

`record[8*∑[A137717(n)]]`
-/

namespace A052379.P12755850201330792442
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137717 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A052379.P12755850201330792442

namespace A052379

/-- `record[8*∑[A137717(n)]]` -/
def P12755850201330792442.Spec : Prop :=
  ∀ n, P12755850201330792442.a n = A052379 n

end A052379

/-! ## A052379.P14502228815026389306

`2*A033138(3*(n+1))`
-/

namespace A052379.P14502228815026389306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A033138 (3 * (n + 1))

end

end A052379.P14502228815026389306

namespace A052379

/-- `2*A033138(3*(n+1))` -/
def P14502228815026389306.Spec : Prop :=
  ∀ n, P14502228815026389306.a n = A052379 n

end A052379

/-! ## A052379.P14613002592445965314

`A247841(n+2)/8`
-/

namespace A052379.P14613002592445965314
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A247841 (n + 2) : ℚ) / 8

end

end A052379.P14613002592445965314

namespace A052379

/-- `A247841(n+2)/8` -/
def P14613002592445965314.Spec : Prop :=
  ∀ n, P14613002592445965314.a n = (A052379 n : ℚ)

end A052379

/-! ## A052379.P3172942584604099589

`record[∑[A137717(n+3)]]`
-/

namespace A052379.P3172942584604099589
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137717 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A052379.P3172942584604099589

namespace A052379

/-- `record[∑[A137717(n+3)]]` -/
def P3172942584604099589.Spec : Prop :=
  ∀ n, P3172942584604099589.a n = A052379 n

end A052379

/-!
# A052380: a(n) = D is the smallest distance (D) between 2 non-overlapping prime twins differing by d=2n; these twins are [p,p+d] or [p+D,p+D+d] and p > 3.

The programs for A052380, the canonical program `A052380.P11876647218145259641` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052380 has offset 1).

The definition of A052380 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A052380.P11876647218145259641

`6*ceil((n+1)/3)`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A052380

/-- `6*ceil((n+1)/3)` -/
def P11876647218145259641.Spec : Prop :=
  ∀ n, P11876647218145259641.a n = A052380 (n + 1)

theorem P11876647218145259641.correct : P11876647218145259641.Spec := by
  intro n
  simp only [A052380, Nat.add_sub_cancel]

end A052380

/-! ## A052380.P11337474340441190056

`2*(n+1)+4-2*(n+3)%3`
-/

namespace A052380.P11337474340441190056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) + 4 : ℤ) - ((2 * ((n + 3) % 3) : ℕ) : ℤ)

end

end A052380.P11337474340441190056

namespace A052380

/-- `2*(n+1)+4-2*(n+3)%3` -/
def P11337474340441190056.Spec : Prop :=
  ∀ n, P11337474340441190056.a n = A052380 (n + 1)

end A052380

/-! ## A052380.P6086700862570400102

`∑[6%gcd(3, n)²]`
-/

namespace A052380.P6086700862570400102
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 % Nat.gcd 3 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052380.P6086700862570400102

namespace A052380

/-- `∑[6%gcd(3, n)²]` -/
def P6086700862570400102.Spec : Prop :=
  ∀ n, (P6086700862570400102.a n : ℤ) = A052380 (n + 1)

end A052380

/-! ## A052380.P11114972321390054559

`6*∑[char[lcm(3, n)]]`
-/

namespace A052380.P11114972321390054559
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 3 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A052380.P11114972321390054559

namespace A052380

/-- `6*∑[char[lcm(3, n)]]` -/
def P11114972321390054559.Spec : Prop :=
  ∀ n, (P11114972321390054559.a n : ℤ) = A052380 (n + 1)

end A052380

/-! ## A052380.P5070853455081168513

`fp[3*floor(n/6)]`
-/

namespace A052380.P5070853455081168513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * ⌊(n : ℚ) / 6⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (n : ℤ) < f1 j) 0

end

end A052380.P5070853455081168513

namespace A052380

/-- `fp[3*floor(n/6)]` -/
def P5070853455081168513.Spec : Prop :=
  ∀ n, (P5070853455081168513.a n : ℤ) = A052380 (n + 1)

end A052380

/-! ## A052380.P3490290302766547289

`∑[gcd(7, n%3)-1]`
-/

namespace A052380.P3490290302766547289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 7 (n % 3) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052380.P3490290302766547289

namespace A052380

/-- `∑[gcd(7, n%3)-1]` -/
def P3490290302766547289.Spec : Prop :=
  ∀ n, P3490290302766547289.a n = A052380 (n + 1)

end A052380

/-! ## A052380.P17950858589959728120

`∑[C(gcd(6, 2*n), 5)]`
-/

namespace A052380.P17950858589959728120
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.gcd 6 (2 * n)) 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052380.P17950858589959728120

namespace A052380

/-- `∑[C(gcd(6, 2*n), 5)]` -/
def P17950858589959728120.Spec : Prop :=
  ∀ n, (P17950858589959728120.a n : ℤ) = A052380 (n + 1)

end A052380

/-! ## A052380.P4461016095272719800

`∑[∑[ogf(6/(1+x+x^2))]]`
-/

namespace A052380.P4461016095272719800
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [6] [1, 1, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052380.P4461016095272719800

namespace A052380

/-- `∑[∑[ogf(6/(1+x+x^2))]]` -/
def P4461016095272719800.Spec : Prop :=
  ∀ n, P4461016095272719800.a n = A052380 (n + 1)

end A052380

/-! ## A052380.P10505863220393764159

`ogf(6/(1-x-x^3+x^4))`
-/

namespace A052380.P10505863220393764159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [6] [1, -1, 0, -1, 1] n

end

end A052380.P10505863220393764159

namespace A052380

/-- `ogf(6/(1-x-x^3+x^4))` -/
def P10505863220393764159.Spec : Prop :=
  ∀ n, P10505863220393764159.a n = A052380 (n + 1)

end A052380

/-! ## A052380.P841362480643332280

`a(n-3)+6` with `a(0)=6, a(1)=6, a(2)=6`
-/

namespace A052380.P841362480643332280
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [6, 6, 6] fun n a =>
  a (n - 3) + 6

end

end A052380.P841362480643332280

namespace A052380

/-- `a(n-3)+6` -/
def P841362480643332280.Spec : Prop :=
  ∀ n, (P841362480643332280.a n : ℤ) = A052380 (n + 1)

end A052380

/-! ## A052380.P18083340979974453413

`∑[abs(a(n-3))]` with `a(0)=6, a(1)=0, a(2)=0`
-/

namespace A052380.P18083340979974453413
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [6, 0, 0] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052380.P18083340979974453413

namespace A052380

/-- `∑[abs(a(n-3))]` -/
def P18083340979974453413.Spec : Prop :=
  ∀ n, (P18083340979974453413.a n : ℤ) = A052380 (n + 1)

end A052380

/-! ## A052380.P7763705003015578750

`∑[dr(a(n-3))]` with `a(0)=6, a(1)=0, a(2)=0`
-/

namespace A052380.P7763705003015578750
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [6, 0, 0] fun n f1 =>
  SequenceMachineLib.digitalRoot (f1 (n - 3) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052380.P7763705003015578750

namespace A052380

/-- `∑[dr(a(n-3))]` -/
def P7763705003015578750.Spec : Prop :=
  ∀ n, (P7763705003015578750.a n : ℤ) = A052380 (n + 1)

end A052380

/-! ## A052380.P12164141630559555153

`∑[floor(a(n-3))]` with `a(0)=6, a(1)=0, a(2)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A052380.P12164141630559555153
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [6, 0, 0] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052380.P12164141630559555153

namespace A052380

/-- `∑[floor(a(n-3))]` -/
def P12164141630559555153.Spec : Prop :=
  ∀ n, (P12164141630559555153.a n : ℤ) = A052380 (n + 1)

end A052380

/-! ## A052380.P11243963753085493960

`∑[ceil(a(n-3))]` with `a(0)=6, a(1)=0, a(2)=0`

`ceil` is left out, it is the identity on integers.
-/

namespace A052380.P11243963753085493960
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [6, 0, 0] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052380.P11243963753085493960

namespace A052380

/-- `∑[ceil(a(n-3))]` -/
def P11243963753085493960.Spec : Prop :=
  ∀ n, (P11243963753085493960.a n : ℤ) = A052380 (n + 1)

end A052380

/-! ## A052380.P17734969322359711864

`∑[round(a(n-3))]` with `a(0)=6, a(1)=0, a(2)=0`

`round` is left out, it is the identity on integers.
-/

namespace A052380.P17734969322359711864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [6, 0, 0] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052380.P17734969322359711864

namespace A052380

/-- `∑[round(a(n-3))]` -/
def P17734969322359711864.Spec : Prop :=
  ∀ n, (P17734969322359711864.a n : ℤ) = A052380 (n + 1)

end A052380

/-! ## A052380.P13483095038812993865

`∑[C(((n+2)%3)², 2)]`
-/

namespace A052380.P13483095038812993865
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (((n + 2) % 3) ^ 2) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052380.P13483095038812993865

namespace A052380

/-- `∑[C(((n+2)%3)², 2)]` -/
def P13483095038812993865.Spec : Prop :=
  ∀ n, (P13483095038812993865.a n : ℤ) = A052380 (n + 1)

end A052380

/-! ## A052380.P8216261192760262152

`∑[a(n-3)%7]` with `a(0)=6, a(1)=0, a(2)=0`
-/

namespace A052380.P8216261192760262152
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [6, 0, 0] fun n f1 =>
  f1 (n - 3) % 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052380.P8216261192760262152

namespace A052380

/-- `∑[a(n-3)%7]` -/
def P8216261192760262152.Spec : Prop :=
  ∀ n, (P8216261192760262152.a n : ℤ) = A052380 (n + 1)

end A052380

/-! ## A052380.P14449959898866749594

`∑[dr(3*(n+3)²)-3]`
-/

namespace A052380.P14449959898866749594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.digitalRoot (3 * (n + 3) ^ 2 : ℤ) : ℤ) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052380.P14449959898866749594

namespace A052380

/-- `∑[dr(3*(n+3)²)-3]` -/
def P14449959898866749594.Spec : Prop :=
  ∀ n, P14449959898866749594.a n = A052380 (n + 1)

end A052380

/-! ## A052380.P12852824175672823127

`∑[3*C(2, dr(∑[n+1]))]`
-/

namespace A052380.P12852824175672823127
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * Nat.choose 2 (SequenceMachineLib.digitalRoot ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052380.P12852824175672823127

namespace A052380

/-- `∑[3*C(2, dr(∑[n+1]))]` -/
def P12852824175672823127.Spec : Prop :=
  ∀ n, (P12852824175672823127.a n : ℤ) = A052380 (n + 1)

end A052380

/-! ## A052380.P9844217798595950565

`6*∑[a(n-3)²]` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A052380.P9844217798595950565
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 0] fun n f1 =>
  f1 (n - 3) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A052380.P9844217798595950565

namespace A052380

/-- `6*∑[a(n-3)²]` -/
def P9844217798595950565.Spec : Prop :=
  ∀ n, (P9844217798595950565.a n : ℤ) = A052380 (n + 1)

end A052380

/-!
# A052381: The smallest initial prime of 2 non-overlapping d-twin primes if the distance between pairs (D) is minimal (see A052380).

The programs for A052381, there is no canonical definition to state claims against.
-/

/-! ## A052381.P13663263390293170980

`record[A272710(2*n+5)%A097485(n+1)]`
-/

namespace A052381.P13663263390293170980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A272710 (2 * n + 5)) (A097485 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A052381.P13663263390293170980

/-!
# A052382: Numbers without 0 in the decimal expansion, colloquial 'zeroless numbers'.

The programs for A052382, the canonical program `A052382.P13019725597381148511` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052382 has offset 1).

The definition of A052382 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A052382.P8387908065331901322

`comp[A009101(n)]`
-/

namespace A052382.P8387908065331901322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009101 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A052382.P8387908065331901322

namespace A052382

/-- `comp[A009101(n)]` -/
def P8387908065331901322.Spec : Prop :=
  ∀ n, (P8387908065331901322.a n : ℤ) = A052382 (n + 1)

end A052382

/-! ## A052382.P7411017487428231480

`∑[runs[A187845(n)]]`
-/

namespace A052382.P7411017487428231480
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187845 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052382.P7411017487428231480

namespace A052382

/-- `∑[runs[A187845(n)]]` -/
def P7411017487428231480.Spec : Prop :=
  ∀ n, (P7411017487428231480.a n : ℤ) = A052382 (n + 1)

end A052382

/-! ## A052382.P5644259031601696770

`comp[A011540(n+1)]`
-/

namespace A052382.P5644259031601696770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011540 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A052382.P5644259031601696770

namespace A052382

/-- `comp[A011540(n+1)]` -/
def P5644259031601696770.Spec : Prop :=
  ∀ n, (P5644259031601696770.a n : ℤ) = A052382 (n + 1)

end A052382

/-! ## A052382.P13019725597381148511

`lt[0, abs(A187844(n))]`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A052382

/-- `lt[0, abs(A187844(n))]` -/
def P13019725597381148511.Spec : Prop :=
  ∀ n, (P13019725597381148511.a n : ℤ) = A052382 (n + 1)

theorem P13019725597381148511.correct : P13019725597381148511.Spec := by
  intro n
  simp only [A052382, Nat.add_sub_cancel]

end A052382

/-! ## A052382.P17276020736756713969

`comp[∪[A252480(n+1), A008592(n)]]`
-/

namespace A052382.P17276020736756713969
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252480 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A052382.P17276020736756713969

namespace A052382

/-- `comp[∪[A252480(n+1), A008592(n)]]` -/
def P17276020736756713969.Spec : Prop :=
  ∀ n, (P17276020736756713969.a n : ℤ) = A052382 (n + 1)

end A052382

/-! ## A052382.P6607195203462286465

`lt[0, ∏{digits}[n, #]]`
-/

namespace A052382.P6607195203462286465
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f3 n)).map fun (x : ℕ) => x).prod

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A052382.P6607195203462286465

namespace A052382

/-- `lt[0, ∏{digits}[n, #]]` -/
def P6607195203462286465.Spec : Prop :=
  ∀ n, (P6607195203462286465.a n : ℤ) = A052382 (n + 1)

end A052382

/-! ## A052382.P1627816634062964152

`∑[runs[∑[∏{digits}[n, #]]]]`
-/

namespace A052382.P1627816634062964152
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f4 n)).map fun (x : ℕ) => x).prod

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052382.P1627816634062964152

namespace A052382

/-- `∑[runs[∑[∏{digits}[n, #]]]]` -/
def P1627816634062964152.Spec : Prop :=
  ∀ n, (P1627816634062964152.a n : ℤ) = A052382 (n + 1)

end A052382

/-! ## A052382.P6406844827839974022

`fp[A028904(n)]`
-/

namespace A052382.P6406844827839974022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028904 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (n : ℤ) < f1 j) 0

end

end A052382.P6406844827839974022

namespace A052382

/-- `fp[A028904(n)]` -/
def P6406844827839974022.Spec : Prop :=
  ∀ n, (P6406844827839974022.a n : ℤ) = A052382 (n + 1)

end A052382

/-! ## A052382.P8401357751425227294

`fp[A324161(n)]`
-/

namespace A052382.P8401357751425227294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324161 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (n : ℤ) < f1 j) 0

end

end A052382.P8401357751425227294

namespace A052382

/-- `fp[A324161(n)]` -/
def P8401357751425227294.Spec : Prop :=
  ∀ n, (P8401357751425227294.a n : ℤ) = A052382 (n + 1)

end A052382

/-! ## A052382.P5981721467908824117

`eq[0, A067898(n)]`
-/

namespace A052382.P5981721467908824117
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067898 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A052382.P5981721467908824117

namespace A052382

/-- `eq[0, A067898(n)]` -/
def P5981721467908824117.Spec : Prop :=
  ∀ n, (P5981721467908824117.a n : ℤ) = A052382 (n + 1)

end A052382

/-! ## A052382.P982272041786585688

`lt[0, A004428(n)]`
-/

namespace A052382.P982272041786585688
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004428 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A052382.P982272041786585688

namespace A052382

/-- `lt[0, A004428(n)]` -/
def P982272041786585688.Spec : Prop :=
  ∀ n, (P982272041786585688.a n : ℤ) = A052382 (n + 1)

end A052382

/-! ## A052382.P7761510881355109730

`lt[0, A007954(n)]`
-/

namespace A052382.P7761510881355109730
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A052382.P7761510881355109730

namespace A052382

/-- `lt[0, A007954(n)]` -/
def P7761510881355109730.Spec : Prop :=
  ∀ n, (P7761510881355109730.a n : ℤ) = A052382 (n + 1)

theorem P7761510881355109730.correct : P7761510881355109730.Spec := by
  intro n
  simp only [A052382, Nat.add_sub_cancel, A052382.P7761510881355109730.f1, A052382.P7761510881355109730.f2, A052382.P7761510881355109730.a, A052382.P13019725597381148511.f1, A052382.P13019725597381148511.f2, A052382.P13019725597381148511.a, A007954, A007954.P17322577641810457605.a, A187844, A187844.P2226367484960758357.f1, A187844.P2226367484960758357.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A052382

/-! ## A052382.P12109265813001643876

`lt[0, A054054(n)]`
-/

namespace A052382.P12109265813001643876
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054054 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A052382.P12109265813001643876

namespace A052382

/-- `lt[0, A054054(n)]` -/
def P12109265813001643876.Spec : Prop :=
  ∀ n, (P12109265813001643876.a n : ℤ) = A052382 (n + 1)

end A052382

/-! ## A052382.P8394986212105021801

`lt[0, A100817(n)]`
-/

namespace A052382.P8394986212105021801
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100817 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A052382.P8394986212105021801

namespace A052382

/-- `lt[0, A100817(n)]` -/
def P8394986212105021801.Spec : Prop :=
  ∀ n, (P8394986212105021801.a n : ℤ) = A052382 (n + 1)

end A052382

/-! ## A052382.P11250345068851141494

`lt[1, A070561(n)]`
-/

namespace A052382.P11250345068851141494
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070561 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A052382.P11250345068851141494

namespace A052382

/-- `lt[1, A070561(n)]` -/
def P11250345068851141494.Spec : Prop :=
  ∀ n, (P11250345068851141494.a n : ℤ) = A052382 (n + 1)

end A052382

/-! ## A052382.P7689454113750847369

`lt[A070565(n), n]`
-/

namespace A052382.P7689454113750847369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070565 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A052382.P7689454113750847369

namespace A052382

/-- `lt[A070565(n), n]` -/
def P7689454113750847369.Spec : Prop :=
  ∀ n, (P7689454113750847369.a n : ℤ) = A052382 (n + 1)

end A052382

/-! ## A052382.P241864286233079998

`lt[n, A230099(n)]`
-/

namespace A052382.P241864286233079998
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230099 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A052382.P241864286233079998

namespace A052382

/-- `lt[n, A230099(n)]` -/
def P241864286233079998.Spec : Prop :=
  ∀ n, (P241864286233079998.a n : ℤ) = A052382 (n + 1)

end A052382

/-! ## A052382.P5374106072847638434

`fp[∑[A168046(n)]]`
-/

namespace A052382.P5374106072847638434
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168046 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (n : ℤ) < f1 j) 0

end

end A052382.P5374106072847638434

namespace A052382

/-- `fp[∑[A168046(n)]]` -/
def P5374106072847638434.Spec : Prop :=
  ∀ n, (P5374106072847638434.a n : ℤ) = A052382 (n + 1)

end A052382

/-! ## A052382.P11559925400437281883

`record[A004719(n+1)]`
-/

namespace A052382.P11559925400437281883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004719 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A052382.P11559925400437281883

namespace A052382

/-- `record[A004719(n+1)]` -/
def P11559925400437281883.Spec : Prop :=
  ∀ n, P11559925400437281883.a n = A052382 (n + 1)

end A052382

/-! ## A052382.P14147664171775371855

`lt[1, A098736(n)+char[1]]`
-/

namespace A052382.P14147664171775371855
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098736 n + ((if ∃ j, f3 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A052382.P14147664171775371855

namespace A052382

/-- `lt[1, A098736(n)+char[1]]` -/
def P14147664171775371855.Spec : Prop :=
  ∀ n, (P14147664171775371855.a n : ℤ) = A052382 (n + 1)

end A052382

/-!
# A052383: Numbers without 1 as a digit.

The programs for A052383, the canonical program `A052383.P442145744883924775` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052383 has offset 1).

The definition of A052383 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6561 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A052383.P442145744883924775

`lt[0, ∏{digits}[n, (1-#)²]]`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A052383

/-- `lt[0, ∏{digits}[n, (1-#)²]]` -/
def P442145744883924775.Spec : Prop :=
  ∀ n, (P442145744883924775.a n : ℤ) = A052383 (n + 1)

theorem P442145744883924775.correct : P442145744883924775.Spec := by
  intro n
  simp only [A052383, Nat.add_sub_cancel]

end A052383

/-! ## A052383.P11581176866119921219

`record[A004176(n)]`
-/

namespace A052383.P11581176866119921219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004176 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A052383.P11581176866119921219

namespace A052383

/-- `record[A004176(n)]` -/
def P11581176866119921219.Spec : Prop :=
  ∀ n, P11581176866119921219.a n = A052383 (n + 1)

end A052383

/-! ## A052383.P11415883316186209639

`record[A035043(n)]`
-/

namespace A052383.P11415883316186209639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035043 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A052383.P11415883316186209639

namespace A052383

/-- `record[A035043(n)]` -/
def P11415883316186209639.Spec : Prop :=
  ∀ n, P11415883316186209639.a n = A052383 (n + 1)

end A052383

/-! ## A052383.P17376198782365008280

`eq[0, A268643(n)]`
-/

namespace A052383.P17376198782365008280
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268643 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A052383.P17376198782365008280

namespace A052383

/-- `eq[0, A268643(n)]` -/
def P17376198782365008280.Spec : Prop :=
  ∀ n, (P17376198782365008280.a n : ℤ) = A052383 (n + 1)

end A052383

/-! ## A052383.P1751948887858168886

`eq[1, A261794(n)]`
-/

namespace A052383.P1751948887858168886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261794 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A052383.P1751948887858168886

namespace A052383

/-- `eq[1, A261794(n)]` -/
def P1751948887858168886.Spec : Prop :=
  ∀ n, (P1751948887858168886.a n : ℤ) = A052383 (n + 1)

end A052383

/-! ## A052383.P554063207073789655

`record[A004720(n+1)]`
-/

namespace A052383.P554063207073789655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004720 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A052383.P554063207073789655

namespace A052383

/-- `record[A004720(n+1)]` -/
def P554063207073789655.Spec : Prop :=
  ∀ n, P554063207073789655.a n = A052383 (n + 1)

end A052383

/-! ## A052383.P7174102415199325911

`comp[A011531(n+1)]`
-/

namespace A052383.P7174102415199325911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011531 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A052383.P7174102415199325911

namespace A052383

/-- `comp[A011531(n+1)]` -/
def P7174102415199325911.Spec : Prop :=
  ∀ n, (P7174102415199325911.a n : ℤ) = A052383 (n + 1)

end A052383

/-! ## A052383.P11028430305858680846

`lt[and(2, A086066(n)), 1]`
-/

namespace A052383.P11028430305858680846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (A086066 n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A052383.P11028430305858680846

namespace A052383

/-- `lt[and(2, A086066(n)), 1]` -/
def P11028430305858680846.Spec : Prop :=
  ∀ n, (P11028430305858680846.a n : ℤ) = A052383 (n + 1)

end A052383

/-! ## A052383.P18060308149835139828

`record[A048379(A222218(n))]`
-/

namespace A052383.P18060308149835139828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048379 (A222218 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A052383.P18060308149835139828

namespace A052383

/-- `record[A048379(A222218(n))]` -/
def P18060308149835139828.Spec : Prop :=
  ∀ n, P18060308149835139828.a n = A052383 (n + 1)

end A052383

/-! ## A052383.P16068420760745346364

`A222210(record[A222210(n)])`
-/

namespace A052383.P16068420760745346364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222210 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222210 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A052383.P16068420760745346364

namespace A052383

/-- `A222210(record[A222210(n)])` -/
def P16068420760745346364.Spec : Prop :=
  ∀ n, P16068420760745346364.a n = A052383 (n + 1)

end A052383

/-! ## A052383.P16004589052066909887

`A035043(A052404(n+1))`
-/

namespace A052383.P16004589052066909887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035043 (A052404 (n + 1)).toNat

end

end A052383.P16004589052066909887

namespace A052383

/-- `A035043(A052404(n+1))` -/
def P16004589052066909887.Spec : Prop :=
  ∀ n, P16004589052066909887.a n = A052383 (n + 1)

end A052383

/-! ## A052383.P8368851695979629724

`eq[A055640(n), A102669(n)]`
-/

namespace A052383.P8368851695979629724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055640 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102669 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A052383.P8368851695979629724

namespace A052383

/-- `eq[A055640(n), A102669(n)]` -/
def P8368851695979629724.Spec : Prop :=
  ∀ n, (P8368851695979629724.a n : ℤ) = A052383 (n + 1)

end A052383

/-! ## A052383.P12908930828366468727

`eq[A004177(n), A176407(n)]`
-/

namespace A052383.P12908930828366468727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004177 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176407 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A052383.P12908930828366468727

namespace A052383

/-- `eq[A004177(n), A176407(n)]` -/
def P12908930828366468727.Spec : Prop :=
  ∀ n, (P12908930828366468727.a n : ℤ) = A052383 (n + 1)

end A052383

/-! ## A052383.P17341433797747212840

`eq[A004176(n), A254667(n)]`
-/

namespace A052383.P17341433797747212840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004176 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254667 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A052383.P17341433797747212840

namespace A052383

/-- `eq[A004176(n), A254667(n)]` -/
def P17341433797747212840.Spec : Prop :=
  ∀ n, (P17341433797747212840.a n : ℤ) = A052383 (n + 1)

end A052383

/-! ## A052383.P17202504810397519681

`A136400(A007095(n))+A007095(n)`
-/

namespace A052383.P17202504810397519681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136400 (A007095 n).toNat + A007095 n

end

end A052383.P17202504810397519681

namespace A052383

/-- `A136400(A007095(n))+A007095(n)` -/
def P17202504810397519681.Spec : Prop :=
  ∀ n, P17202504810397519681.a n = A052383 (n + 1)

end A052383

/-! ## A052383.P15534604033887751917

`comp[A317180(n+1)]`
-/

namespace A052383.P15534604033887751917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317180 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A052383.P15534604033887751917

namespace A052383

/-- `comp[A317180(n+1)]` -/
def P15534604033887751917.Spec : Prop :=
  ∀ n, (P15534604033887751917.a n : ℤ) = A052383 (n + 1)

end A052383

/-! ## A052383.P4308799370121870241

`eq[1, A067898(10*n)]`
-/

namespace A052383.P4308799370121870241
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067898 (10 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A052383.P4308799370121870241

namespace A052383

/-- `eq[1, A067898(10*n)]` -/
def P4308799370121870241.Spec : Prop :=
  ∀ n, (P4308799370121870241.a n : ℤ) = A052383 (n + 1)

end A052383

/-! ## A052383.P8259436050338909520

`eq[A004176(n), A258071(n+1)]`
-/

namespace A052383.P8259436050338909520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004176 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258071 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A052383.P8259436050338909520

namespace A052383

/-- `eq[A004176(n), A258071(n+1)]` -/
def P8259436050338909520.Spec : Prop :=
  ∀ n, (P8259436050338909520.a n : ℤ) = A052383 (n + 1)

end A052383

/-! ## A052383.P3050290942655820583

`A401754(∑[n+1]+2)`
-/

namespace A052383.P3050290942655820583
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401754 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A052383.P3050290942655820583

namespace A052383

/-- `A401754(∑[n+1]+2)` -/
def P3050290942655820583.Spec : Prop :=
  ∀ n, P3050290942655820583.a n = A052383 (n + 1)

end A052383

/-!
# A052386: Number of integers from 1 to 10^n-1 that lack 0 as a digit.

The programs for A052386, the canonical program `A052386.P17315869528297079216` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052386 has offset 0).

The definition of A052386 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A052386.P7405746603847086164

`ogf(9x/(1-10x+9x^2))`
-/

namespace A052386.P7405746603847086164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 9] [1, -10, 9] n

end

end A052386.P7405746603847086164

namespace A052386

/-- `ogf(9x/(1-10x+9x^2))` -/
def P7405746603847086164.Spec : Prop :=
  ∀ n, P7405746603847086164.a n = A052386 n

end A052386

/-! ## A052386.P17315869528297079216

`9*a(n-1)+9` with `a(0)=0`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A052386

/-- `9*a(n-1)+9` -/
def P17315869528297079216.Spec : Prop :=
  ∀ n, (P17315869528297079216.a n : ℤ) = A052386 n

theorem P17315869528297079216.correct : P17315869528297079216.Spec := by
  intro n
  simp only [A052386]

end A052386

/-! ## A052386.P8379110540772474324

`a(n-1)+9^n` with `a(0)=0`
-/

namespace A052386.P8379110540772474324
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + 9 ^ n

end

end A052386.P8379110540772474324

namespace A052386

/-- `a(n-1)+9^n` -/
def P8379110540772474324.Spec : Prop :=
  ∀ n, (P8379110540772474324.a n : ℤ) = A052386 n

end A052386

/-! ## A052386.P10424832977248648466

`9*A002452(n)`
-/

namespace A052386.P10424832977248648466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A002452 n

end

end A052386.P10424832977248648466

namespace A052386

/-- `9*A002452(n)` -/
def P10424832977248648466.Spec : Prop :=
  ∀ n, P10424832977248648466.a n = A052386 n

end A052386

/-! ## A052386.P2339557999462611105

`A002452(n+1)-1`
-/

namespace A052386.P2339557999462611105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002452 (n + 1) - 1

end

end A052386.P2339557999462611105

namespace A052386

/-- `A002452(n+1)-1` -/
def P2339557999462611105.Spec : Prop :=
  ∀ n, P2339557999462611105.a n = A052386 n

end A052386

/-! ## A052386.P16171542778316926281

`9*(9^n-1)/8`
-/

namespace A052386.P16171542778316926281
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (9 * ((9 ^ n : ℤ) - 1) : ℚ) / 8

end

end A052386.P16171542778316926281

namespace A052386

/-- `9*(9^n-1)/8` -/
def P16171542778316926281.Spec : Prop :=
  ∀ n, P16171542778316926281.a n = (A052386 n : ℚ)

theorem P16171542778316926281.correct : P16171542778316926281.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A052386, Nat.add_sub_cancel, A052386.P16171542778316926281.a, A052386.P17315869528297079216.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A052386, Nat.add_sub_cancel, A052386.P16171542778316926281.a, A052386.P17315869528297079216.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A052386

/-! ## A052386.P3965226254209925980

`lcm(9, floor(9^n/8))`
-/

namespace A052386.P3965226254209925980
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 9 ⌊(9 ^ n : ℚ) / 8⌋

end

end A052386.P3965226254209925980

namespace A052386

/-- `lcm(9, floor(9^n/8))` -/
def P3965226254209925980.Spec : Prop :=
  ∀ n, (P3965226254209925980.a n : ℤ) = A052386 n

end A052386

/-! ## A052386.P12030349695184186364

`xor(-1, ∑[-9^n])`
-/

namespace A052386.P12030349695184186364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(9 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-1) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A052386.P12030349695184186364

namespace A052386

/-- `xor(-1, ∑[-9^n])` -/
def P12030349695184186364.Spec : Prop :=
  ∀ n, P12030349695184186364.a n = A052386 n

end A052386

/-! ## A052386.P2003520908379234278

`∑[C(9^n, ceil(acot(n)))]`
-/

namespace A052386.P2003520908379234278
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (9 ^ n) ⌈SequenceMachineLib.acot (n : ℝ)⌉.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052386.P2003520908379234278

namespace A052386

/-- `∑[C(9^n, ceil(acot(n)))]` -/
def P2003520908379234278.Spec : Prop :=
  ∀ n, (P2003520908379234278.a n : ℤ) = A052386 n

end A052386

/-! ## A052386.P4717132630170364240

`9*(a(n-1)+1)` with `a(0)=0`
-/

namespace A052386.P4717132630170364240
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  9 * (a (n - 1) + 1)

end

end A052386.P4717132630170364240

namespace A052386

/-- `9*(a(n-1)+1)` -/
def P4717132630170364240.Spec : Prop :=
  ∀ n, (P4717132630170364240.a n : ℤ) = A052386 n

theorem P4717132630170364240.correct : P4717132630170364240.Spec := by
  intro n
  simp only [A052386, Nat.add_sub_cancel, A052386.P4717132630170364240.a, A052386.P17315869528297079216.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A052386

/-! ## A052386.P4960896071065696707

`∑[9*a(n-1)]` with `a(0)=0, a(1)=9`
-/

namespace A052386.P4960896071065696707
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 9] fun n f1 =>
  9 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052386.P4960896071065696707

namespace A052386

/-- `∑[9*a(n-1)]` -/
def P4960896071065696707.Spec : Prop :=
  ∀ n, (P4960896071065696707.a n : ℤ) = A052386 n

end A052386

/-! ## A052386.P2993877670869269531

`∑[((3^n)%(4^n))²]`
-/

namespace A052386.P2993877670869269531
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (3 ^ n % 4 ^ n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052386.P2993877670869269531

namespace A052386

/-- `∑[((3^n)%(4^n))²]` -/
def P2993877670869269531.Spec : Prop :=
  ∀ n, (P2993877670869269531.a n : ℤ) = A052386 n

end A052386

/-! ## A052386.P6407915113810773026

`∑[9^n-C(2, n+2)]`
-/

namespace A052386.P6407915113810773026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (9 ^ n : ℤ) - (Nat.choose 2 (n + 2) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052386.P6407915113810773026

namespace A052386

/-- `∑[9^n-C(2, n+2)]` -/
def P6407915113810773026.Spec : Prop :=
  ∀ n, P6407915113810773026.a n = A052386 n

end A052386

/-! ## A052386.P16017515744223488549

`∑{#}[n-1, (3^(n-#))²]`
-/

namespace A052386.P16017515744223488549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, ((3 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ)) ^ 2

end

end A052386.P16017515744223488549

namespace A052386

/-- `∑{#}[n-1, (3^(n-#))²]` -/
def P16017515744223488549.Spec : Prop :=
  ∀ n, P16017515744223488549.a n = (A052386 n : ℚ)

end A052386

/-! ## A052386.P12083884936599492087

`(a(n-1)+1)/(1/3)²` with `a(0)=0`
-/

namespace A052386.P12083884936599492087
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  (a (n - 1) + 1) / ((1 : ℚ) / 3) ^ 2

end

end A052386.P12083884936599492087

namespace A052386

/-- `(a(n-1)+1)/(1/3)²` -/
def P12083884936599492087.Spec : Prop :=
  ∀ n, P12083884936599492087.a n = (A052386 n : ℚ)

end A052386

/-! ## A052386.P17665186968485721215

`∑[a(n-1)/(1/3)²]-1` with `a(0)=1`
-/

namespace A052386.P17665186968485721215
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) / ((1 : ℚ) / 3) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A052386.P17665186968485721215

namespace A052386

/-- `∑[a(n-1)/(1/3)²]-1` -/
def P17665186968485721215.Spec : Prop :=
  ∀ n, P17665186968485721215.a n = (A052386 n : ℚ)

end A052386

/-! ## A052386.P14539017392984155362

`3*(3-(a(n-1)-4*a(n-1)))` with `a(0)=0`
-/

namespace A052386.P14539017392984155362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  3 * (3 - (a (n - 1) - 4 * a (n - 1)))

end

end A052386.P14539017392984155362

namespace A052386

/-- `3*(3-(a(n-1)-4*a(n-1)))` -/
def P14539017392984155362.Spec : Prop :=
  ∀ n, P14539017392984155362.a n = A052386 n

end A052386

/-! ## A052386.P6007978779728834501

`∑[A103460(n)-1]`
-/

namespace A052386.P6007978779728834501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103460 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052386.P6007978779728834501

namespace A052386

/-- `∑[A103460(n)-1]` -/
def P6007978779728834501.Spec : Prop :=
  ∀ n, P6007978779728834501.a n = A052386 n

end A052386

/-! ## A052386.P8790922383170926168

`∑[Δ[A261547(n)]²]`
-/

namespace A052386.P8790922383170926168
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261547 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052386.P8790922383170926168

namespace A052386

/-- `∑[Δ[A261547(n)]²]` -/
def P8790922383170926168.Spec : Prop :=
  ∀ n, P8790922383170926168.a n = A052386 n

end A052386

/-! ## A052386.P2812719860384213754

`A047854(n+1)-2`
-/

namespace A052386.P2812719860384213754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047854 (n + 1) - 2

end

end A052386.P2812719860384213754

namespace A052386

/-- `A047854(n+1)-2` -/
def P2812719860384213754.Spec : Prop :=
  ∀ n, P2812719860384213754.a n = A052386 n

end A052386

/-!
# A052387: Number of 3 X n binary matrices such that any 2 rows have a common 1, up to column permutations.

The programs for A052387, the canonical program `A052387.P3355459196039304266` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052387 has offset 0).

The definition of A052387 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A052387.P3355459196039304266

`ogf((x+x^3-x^4)/(1-8x+28x^2-56x^3+70x^4-56x^5+28x^6-8x^7+x^8))`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A052387

/-- `ogf((x+x^3-x^4)/(1-8x+28x^2-56x^3+70x^4-56x^5+28x^6-8x^7+x^8))` -/
def P3355459196039304266.Spec : Prop :=
  ∀ n, P3355459196039304266.a n = A052387 n

theorem P3355459196039304266.correct : P3355459196039304266.Spec := by
  intro n
  simp only [A052387]

end A052387

/-! ## A052387.P11464974930727798611

`∑[∑[∑[A005582(n)-n²]]]`
-/

namespace A052387.P11464974930727798611
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005582 n - (n ^ 2 : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052387.P11464974930727798611

namespace A052387

/-- `∑[∑[∑[A005582(n)-n²]]]` -/
def P11464974930727798611.Spec : Prop :=
  ∀ n, P11464974930727798611.a n = A052387 n

end A052387

/-! ## A052387.P15382968406641423103

`A256857(n)+A051361(n)`
-/

namespace A052387.P15382968406641423103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256857 n + A051361 n

end

end A052387.P15382968406641423103

namespace A052387

/-- `A256857(n)+A051361(n)` -/
def P15382968406641423103.Spec : Prop :=
  ∀ n, P15382968406641423103.a n = A052387 n

end A052387

/-! ## A052387.P3181992831846935927

`∑[∑[C(n+5, 5)-A006003(n+1)]]`
-/

namespace A052387.P3181992831846935927
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 5) 5 : ℤ) - A006003 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052387.P3181992831846935927

namespace A052387

/-- `∑[∑[C(n+5, 5)-A006003(n+1)]]` -/
def P3181992831846935927.Spec : Prop :=
  ∀ n, P3181992831846935927.a n = A052387 n

end A052387

/-! ## A052387.P9830660721724875996

`∑[∑[A000389(n+4)+A000332(n+1)]]`
-/

namespace A052387.P9830660721724875996
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000389 (n + 4) + A000332 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052387.P9830660721724875996

namespace A052387

/-- `∑[∑[A000389(n+4)+A000332(n+1)]]` -/
def P9830660721724875996.Spec : Prop :=
  ∀ n, P9830660721724875996.a n = A052387 n

end A052387

/-! ## A052387.P12187446454179635216

`∑[A000389(n+2)+∑[A000389(n+4)]]`
-/

namespace A052387.P12187446454179635216
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000389 (n + 4)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000389 (n + 2) + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052387.P12187446454179635216

namespace A052387

/-- `∑[A000389(n+2)+∑[A000389(n+4)]]` -/
def P12187446454179635216.Spec : Prop :=
  ∀ n, P12187446454179635216.a n = A052387 n

end A052387

/-! ## A052387.P9864950620789216545

`∑[A000579(n+5)+A000389(n+2)]`
-/

namespace A052387.P9864950620789216545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000579 (n + 5) + A000389 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052387.P9864950620789216545

namespace A052387

/-- `∑[A000579(n+5)+A000389(n+2)]` -/
def P9864950620789216545.Spec : Prop :=
  ∀ n, P9864950620789216545.a n = A052387 n

end A052387

/-! ## A052387.P13766740981742493536

`A000579(n+3)+∑[A000579(n+5)]`
-/

namespace A052387.P13766740981742493536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000579 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000579 (n + 3) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052387.P13766740981742493536

namespace A052387

/-- `A000579(n+3)+∑[A000579(n+5)]` -/
def P13766740981742493536.Spec : Prop :=
  ∀ n, P13766740981742493536.a n = A052387 n

end A052387

/-! ## A052387.P5219092035318912635

`A000579(n+3)+A000580(n+7)-A000579(n+6)`
-/

namespace A052387.P5219092035318912635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000579 (n + 3) + (A000580 (n + 7) - A000579 (n + 6))

end

end A052387.P5219092035318912635

namespace A052387

/-- `A000579(n+3)+A000580(n+7)-A000579(n+6)` -/
def P5219092035318912635.Spec : Prop :=
  ∀ n, P5219092035318912635.a n = A052387 n

end A052387

/-! ## A052387.P14460812230864375129

`A000580(n+7)-∑[A000217(∑[n+1])]`
-/

namespace A052387.P14460812230864375129
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000580 (n + 7) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052387.P14460812230864375129

namespace A052387

/-- `A000580(n+7)-∑[A000217(∑[n+1])]` -/
def P14460812230864375129.Spec : Prop :=
  ∀ n, P14460812230864375129.a n = A052387 n

end A052387

/-!
# A052388: Number of 4 X n binary matrices such that any 2 rows have a common 1, up to column permutations.

The programs for A052388, there is no canonical definition to state claims against.
-/

/-! ## A052388.P7170343414567689285

`A084964(Δ[Δ[A068184(n)]])`
-/

namespace A052388.P7170343414567689285
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068184 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084964 (f1 (n + 1) - f1 n).toNat

end

end A052388.P7170343414567689285

/-!
# A052389: Number of 4-element intersecting families (with not necessarily distinct sets) of an n-element set.

The programs for A052389, there is no canonical definition to state claims against.
-/

/-! ## A052389.P10236602920206794999

`A020486(2*n*a(n-1)+1)+2` with `a(0)=0, a(1)=1`
-/

namespace A052389.P10236602920206794999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A020486 (2 * ((n : ℤ) * a (n - 1)) + 1).toNat + 2

end

end A052389.P10236602920206794999

/-!
# A052392: T(2n+1,n), array T as in A054120.

The programs for A052392, there is no canonical definition to state claims against.
-/

/-! ## A052392.P715672652114506805

`A054120(2*(1+n)²)`
-/

namespace A052392.P715672652114506805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054120 (2 * (1 + n) ^ 2)

end

end A052392.P715672652114506805

/-! ## A052392.P18422170611259620438

`record[A054120(∑[A014682(n)])]`
-/

namespace A052392.P18422170611259620438
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054120 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A052392.P18422170611259620438

/-! ## A052392.P274357004536548879

`record[A054120(A001971(∑[(-1)^n+2]))]`
-/

namespace A052392.P274357004536548879
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054120 (A001971 (∑ j ∈ Finset.range (n + 1), f2 j).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A052392.P274357004536548879

/-!
# A052393: Number of unlabeled ternary cacti having n triangles.

The programs for A052393, there is no canonical definition to state claims against.
-/

/-! ## A052393.P4806796107301837004

`A303912(∑[n+3])`
-/

namespace A052393.P4806796107301837004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303912 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A052393.P4806796107301837004

/-! ## A052393.P1127011545717164640

`A354361(A372489(n))`
-/

namespace A052393.P1127011545717164640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354361 (A372489 n).toNat

end

end A052393.P1127011545717164640

/-!
# A052394: Number of unlabeled 4-ary cacti having n polygons.

The programs for A052394, there is no canonical definition to state claims against.
-/

/-! ## A052394.P8764516752087929532

`A303912(∑[n+3]+n+3)`
-/

namespace A052394.P8764516752087929532
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303912 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A052394.P8764516752087929532

/-! ## A052394.P10848469007890645387

`A357981(A300355(n+1))`
-/

namespace A052394.P10848469007890645387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357981 (A300355 (n + 1)).toNat

end

end A052394.P10848469007890645387

/-!
# A052395: Number of unlabeled asymmetric 4-ary cacti having n polygons.

The programs for A052395, there is no canonical definition to state claims against.
-/

/-! ## A052395.P9535054334675418519

`A303913(∑[n+3]+n+3)`
-/

namespace A052395.P9535054334675418519
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303913 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A052395.P9535054334675418519

/-!
# A052396: (+2)-sigma perfect numbers: numbers k such that (+2)sigma(k) = 2*k, where (+2)sigma(k) = A107758(k).

The programs for A052396, there is no canonical definition to state claims against.
-/

/-! ## A052396.P13025451560386864347

`record[A059268(n)+A016380(n)]`
-/

namespace A052396.P13025451560386864347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n + A016380 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A052396.P13025451560386864347

/-! ## A052396.P18025377793355403996

`∩[A049642(n+1), A097110(n)]`
-/

namespace A052396.P18025377793355403996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049642 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097110 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052396.P18025377793355403996

/-! ## A052396.P15674395918500197293

`∩[A097110(n), A328945(n+1)]`
-/

namespace A052396.P15674395918500197293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097110 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328945 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052396.P15674395918500197293

/-! ## A052396.P17122310898606427531

`record[A014682(A059268(n))-A228495(n)]`
-/

namespace A052396.P17122310898606427531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A059268 n).toNat - A228495 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A052396.P17122310898606427531

/-! ## A052396.P16004192694570300565

`record[A014682(A059268(n))-A295308(n+1)]`
-/

namespace A052396.P16004192694570300565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A059268 n).toNat - A295308 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A052396.P16004192694570300565

/-!
# A052399: Number of permutations in S_n with longest increasing subsequence of length <= 6.

The programs for A052399, there is no canonical definition to state claims against.
-/

/-! ## A052399.P11353631305906530685

`A047888(A167499(n+3)+1)`
-/

namespace A052399.P11353631305906530685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047888 (A167499 (n + 3) + 1).toNat

end

end A052399.P11353631305906530685

/-! ## A052399.P18184199886206256496

`A214015(n+15+∑[n+6])`
-/

namespace A052399.P18184199886206256496
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214015 (n + 15 + ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A052399.P18184199886206256496

/-! ## A052399.P11295013827271269388

`A090583(A085158(A085158(n)))`
-/

namespace A052399.P11295013827271269388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090583 (A085158 (A085158 n).toNat).toNat

end

end A052399.P11295013827271269388

/-! ## A052399.P10650255883582357427

`A000142(n)-A103675(A000142(n))`
-/

namespace A052399.P10650255883582357427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n - A103675 (A000142 n).toNat

end

end A052399.P10650255883582357427

