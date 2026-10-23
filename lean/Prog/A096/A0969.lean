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
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C038
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
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
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B007.C002
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A096900: a(n) = (A088558(n)-1)/2.

The programs for A096900, there is no canonical definition to state claims against.
-/

/-! ## A096900.P8042543963066310086

`(A088558(n+1)-1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A096900.P8042543963066310086
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A088558 (n + 1) - 1 : ℚ) / 2

end

end A096900.P8042543963066310086

/-! ## A096900.P8032782386781792062

`floor(A088558(n+1)/2)`
-/

namespace A096900.P8032782386781792062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A088558 (n + 1) : ℚ) / 2⌋

end

end A096900.P8032782386781792062

/-! ## A096900.P11463610010913042298

`A004524(A088558(n+1))`
-/

namespace A096900.P11463610010913042298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A088558 (n + 1)).toNat

end

end A096900.P11463610010913042298

/-! ## A096900.P4571937405355380562

`A140106(A088558(n+1)+1)`
-/

namespace A096900.P4571937405355380562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (A088558 (n + 1) + 1).toNat

end

end A096900.P4571937405355380562

/-! ## A096900.P14512622888878466644

`A279119(A088558(n+1)+1)`
-/

namespace A096900.P14512622888878466644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279119 (A088558 (n + 1) + 1).toNat

end

end A096900.P14512622888878466644

/-! ## A096900.P12852912873896773503

`A001281(A088558(n+1)-1)`
-/

namespace A096900.P12852912873896773503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A088558 (n + 1) - 1).toNat

end

end A096900.P12852912873896773503

/-! ## A096900.P17689371384301567674

`A004525(A088558(n+1)-1)`
-/

namespace A096900.P17689371384301567674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A088558 (n + 1) - 1).toNat

end

end A096900.P17689371384301567674

/-! ## A096900.P16976116312372506810

`A032742(A088558(n+1)-1)`
-/

namespace A096900.P16976116312372506810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A088558 (n + 1) - 1).toNat

end

end A096900.P16976116312372506810

/-! ## A096900.P7889292917035729647

`A000463(A088558(n+1)-2)`
-/

namespace A096900.P7889292917035729647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A088558 (n + 1) - 2).toNat

end

end A096900.P7889292917035729647

/-!
# A096902: Numbers n such that 3*prime(n) + 2*prime(n+1) is prime.

The programs for A096902, the canonical program `A096902.P357135158488442827` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A096902 has offset 1).

The definition of A096902 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2358 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A096902.P357135158488442827

`A000720(floor(A096218(n+1)/5))`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A096902

/-- `A000720(floor(A096218(n+1)/5))` -/
def P357135158488442827.Spec : Prop :=
  ∀ n, P357135158488442827.a n = A096902 (n + 1)

theorem P357135158488442827.correct : P357135158488442827.Spec := by
  intro n
  simp only [A096902, Nat.add_sub_cancel]

end A096902

/-! ## A096902.P1529888202856446813

`A000720(ceil(A096218(n+1)/5))`
-/

namespace A096902.P1529888202856446813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 ⌈(A096218 (n + 1) : ℚ) / 5⌉.toNat

end

end A096902.P1529888202856446813

namespace A096902

/-- `A000720(ceil(A096218(n+1)/5))` -/
def P1529888202856446813.Spec : Prop :=
  ∀ n, P1529888202856446813.a n = A096902 (n + 1)

end A096902

/-! ## A096902.P10886332928532978560

`A000720(round(A096218(n+1)/5))`
-/

namespace A096902.P10886332928532978560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (SequenceMachineLib.roundAway ((A096218 (n + 1) : ℚ) / 5)).toNat

end

end A096902.P10886332928532978560

namespace A096902

/-- `A000720(round(A096218(n+1)/5))` -/
def P10886332928532978560.Spec : Prop :=
  ∀ n, P10886332928532978560.a n = A096902 (n + 1)

end A096902

/-! ## A096902.P17489630298272895285

`A230980(floor(A096218(n+1)/5))`
-/

namespace A096902.P17489630298272895285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 ⌊(A096218 (n + 1) : ℚ) / 5⌋.toNat

end

end A096902.P17489630298272895285

namespace A096902

/-- `A230980(floor(A096218(n+1)/5))` -/
def P17489630298272895285.Spec : Prop :=
  ∀ n, P17489630298272895285.a n = A096902 (n + 1)

end A096902

/-! ## A096902.P13148905105721391191

`A230980(ceil(A096218(n+1)/5))`
-/

namespace A096902.P13148905105721391191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 ⌈(A096218 (n + 1) : ℚ) / 5⌉.toNat

end

end A096902.P13148905105721391191

namespace A096902

/-- `A230980(ceil(A096218(n+1)/5))` -/
def P13148905105721391191.Spec : Prop :=
  ∀ n, P13148905105721391191.a n = A096902 (n + 1)

end A096902

/-!
# A096903: Least integer of each ordered prime signature (A055932) arranged by prime signature (each row starting with least integer of each prime signature, A025487).

The programs for A096903, there is no canonical definition to state claims against.
-/

/-! ## A096903.P12736591083138609860

`A057335(lt[A046766(n), 2])`
-/

namespace A096903.P12736591083138609860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046766 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057335 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A096903.P12736591083138609860

/-! ## A096903.P10022734468156672476

`A057335(lt[A376730(n), 3])`
-/

namespace A096903.P10022734468156672476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376730 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057335 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A096903.P10022734468156672476

/-! ## A096903.P5084746300141053600

`A057335(lt[A124220(2*n+5), 10])`
-/

namespace A096903.P5084746300141053600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124220 (2 * n + 5)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057335 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A096903.P5084746300141053600

/-! ## A096903.P11002940070631775697

`A036561(eq[A058276(n), A131427(n)])`
-/

namespace A096903.P11002940070631775697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058276 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036561 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A096903.P11002940070631775697

/-! ## A096903.P573241109655684071

`A057335(lt[A319472(n), A010226(n)])`
-/

namespace A096903.P573241109655684071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319472 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010226 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057335 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A096903.P573241109655684071

/-!
# A096904: A card-arranging problem: number of permutations p_1, ..., p_n of 1, ..., n such that i + p_i is a cube for every i.

The programs for A096904, there is no canonical definition to state claims against.
-/

/-! ## A096904.P16871569289133733056

`A341629((n+1)*xor(A034460(n+1), A093660(n+2))+1)`
-/

namespace A096904.P16871569289133733056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341629 ((n + 1 : ℤ) * Int.xor (A034460 (n + 1)) (A093660 (n + 2)) + 1).toNat

end

end A096904.P16871569289133733056

/-! ## A096904.P13253209907941924579

`A304497(n)%A006466(A004396(n))`
-/

namespace A096904.P13253209907941924579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A304497 n) (A006466 (A004396 n).toNat)

end

end A096904.P13253209907941924579

/-! ## A096904.P1642286001878204875

`A044941(xor(1, A028785(n+1)))`
-/

namespace A096904.P1642286001878204875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044941 (Int.xor 1 (A028785 (n + 1))).toNat

end

end A096904.P1642286001878204875

/-! ## A096904.P271139987315809958

`A107846(xor(1, A028785(n+1)))`
-/

namespace A096904.P271139987315809958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107846 (Int.xor 1 (A028785 (n + 1))).toNat

end

end A096904.P271139987315809958

/-! ## A096904.P8316261921402251743

`val(A349945(A175812(n)), 10)`
-/

namespace A096904.P8316261921402251743
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A349945 (A175812 n).toNat).toNat 10

end

end A096904.P8316261921402251743

/-! ## A096904.P13739545883939944677

`val(A094740(n+1), A000005(A096017(2*n+1)))`
-/

namespace A096904.P13739545883939944677
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A094740 (n + 1)).toNat (A000005 (A096017 (2 * n + 1)).toNat).toNat

end

end A096904.P13739545883939944677

/-!
# A096905: A card-arranging problem: values of n such that there exists a permutation p_1, ..., p_n of 1, ..., n such that i + p_i is a fourth power for every i.

The programs for A096905, there is no canonical definition to state claims against.
-/

/-! ## A096905.P13784584745749081551

`A003999(2*(n+1))-A055013(A063013(n+1))`
-/

namespace A096905.P13784584745749081551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003999 (2 * (n + 1)) - A055013 (A063013 (n + 1)).toNat

end

end A096905.P13784584745749081551

/-! ## A096905.P8327796392572519066

`A003999(2*n+2)-A003999(A276142(n+1))`
-/

namespace A096905.P8327796392572519066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003999 (2 * n + 2) - A003999 (A276142 (n + 1)).toNat

end

end A096905.P8327796392572519066

/-! ## A096905.P11459328523132096625

`∑[A342593(A342613(val(n+1, 2)+2))]`
-/

namespace A096905.P11459328523132096625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342593 (A342613 (SequenceMachineLib.valuation (n + 1) 2 + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A096905.P11459328523132096625

/-!
# A096906: A card-arranging problem: values of n such that there exists a permutation p_1, ..., p_n of 1, ..., n such that i + p_i is a fifth power for every i.

The programs for A096906, there is no canonical definition to state claims against.
-/

/-! ## A096906.P15419725193205242689

`A194768(2*(n+1))-A194768(n+1)`
-/

namespace A096906.P15419725193205242689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194768 (2 * (n + 1)) - A194768 (n + 1)

end

end A096906.P15419725193205242689

/-!
# A096910: Primitive Pythagorean Quadruples a^2+b^2+c^2=d^2, 0

The programs for A096910, there is no canonical definition to state claims against.
-/

/-! ## A096910.P17033951428135354792

`A001650(xor(A008846(n+1), A249947(n+1)))`
-/

namespace A096910.P17033951428135354792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001650 (Int.xor (A008846 (n + 1)) (A249947 (n + 1))).toNat

end

end A096910.P17033951428135354792

/-! ## A096910.P9308046956010689439

`A001650(xor(A004613(n+2), A249947(n+1)))`
-/

namespace A096910.P9308046956010689439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001650 (Int.xor (A004613 (n + 2)) (A249947 (n + 1))).toNat

end

end A096910.P9308046956010689439

/-!
# A096911: Number of partitions of n into distinct parts with exactly one even part.

The programs for A096911, there is no canonical definition to state claims against.
-/

/-! ## A096911.P2436262723142020317

`abs(Δ[A246581(n+1)])`
-/

namespace A096911.P2436262723142020317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246581 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A096911.P2436262723142020317

/-! ## A096911.P2182011284431860791

`A027349(n)+a(n-1)` with `a(0)=0`
-/

namespace A096911.P2182011284431860791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A027349 n + a (n - 1)

end

end A096911.P2182011284431860791

/-! ## A096911.P12491791308007756459

`∑[A027349(A028310(n))]-1`
-/

namespace A096911.P12491791308007756459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027349 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A096911.P12491791308007756459

/-! ## A096911.P5688220938304209026

`∑[A027349(A000038(n)+n)]`
-/

namespace A096911.P5688220938304209026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027349 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A096911.P5688220938304209026

/-! ## A096911.P3732578945117694633

`∑[A027349(xor(n, A000038(n)))]`
-/

namespace A096911.P3732578945117694633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027349 (Int.xor (n : ℤ) (A000038 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A096911.P3732578945117694633

/-! ## A096911.P18441147198948399359

`∑[A027349(A014682(A004277(n)))]`
-/

namespace A096911.P18441147198948399359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027349 (A014682 (A004277 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A096911.P18441147198948399359

/-! ## A096911.P10484538140951963692

`∑[A027349(A028310(n))*A057427(n)]`
-/

namespace A096911.P10484538140951963692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027349 (A028310 n).toNat * A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A096911.P10484538140951963692

/-! ## A096911.P4174165652183787596

`∑[A000700(n)-A027349(n+1)]`
-/

namespace A096911.P4174165652183787596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 n - A027349 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A096911.P4174165652183787596

/-! ## A096911.P1226983189346008381

`(∑[A027349(n+1)]-A027349(n+1))*A057427(n)`
-/

namespace A096911.P1226983189346008381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027349 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j - A027349 (n + 1)) * A057427 n

end

end A096911.P1226983189346008381

/-! ## A096911.P532758896096602637

`∑[A027349(A002260(∑[n+3]))]`
-/

namespace A096911.P532758896096602637
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027349 (A002260 (∑ j ∈ Finset.range (n + 1), f2 j)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A096911.P532758896096602637

/-! ## A096911.P17850845082995079333

`∑[A116929(A278818(A000124(n)))]`
-/

namespace A096911.P17850845082995079333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116929 (A278818 (A000124 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A096911.P17850845082995079333

/-! ## A096911.P17951087741098024851

`A116679(A165453(n+1)+1)`
-/

namespace A096911.P17951087741098024851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116679 (A165453 (n + 1) + 1).toNat

end

end A096911.P17951087741098024851

/-! ## A096911.P9539502603758005992

`∑[A027349(A137735(A059100(n)))]`
-/

namespace A096911.P9539502603758005992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027349 (A137735 (A059100 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A096911.P9539502603758005992

/-!
# A096914: Number of partitions of 2*n into distinct parts with exactly two odd parts.

The programs for A096914, there is no canonical definition to state claims against.
-/

/-! ## A096914.P15241531970712835636

`∑[A038348(n)]`
-/

namespace A096914.P15241531970712835636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038348 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A096914.P15241531970712835636

/-! ## A096914.P13674197578810161861

`∑[∑[A025147(n)]]`
-/

namespace A096914.P13674197578810161861
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025147 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A096914.P13674197578810161861

/-! ## A096914.P2499285203297197091

`A036469(n)+a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A096914.P2499285203297197091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A036469 n + a (n - 2)

end

end A096914.P2499285203297197091

/-! ## A096914.P1762387062560687235

`A095944(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A096914.P1762387062560687235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A095944 (n + 1) - a (n - 1)

end

end A096914.P1762387062560687235

/-! ## A096914.P17149671192380099722

`∑[∑[A000009(n)-a(n-1)]]` with `a(0)=1`
-/

namespace A096914.P17149671192380099722
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A000009 n - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A096914.P17149671192380099722

/-! ## A096914.P13122172315562561944

`A346822(n)-A268345(n)`
-/

namespace A096914.P13122172315562561944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346822 n - A268345 n

end

end A096914.P13122172315562561944

/-! ## A096914.P14780332180619741388

`∑[∑[A000009(n)-A096765(n)]]`
-/

namespace A096914.P14780332180619741388
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n - A096765 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A096914.P14780332180619741388

/-! ## A096914.P14298486467375241582

`A268345(n+1)-A036469(n+1)`
-/

namespace A096914.P14298486467375241582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268345 (n + 1) - A036469 (n + 1)

end

end A096914.P14298486467375241582

/-! ## A096914.P6244991724538020298

`∑[∑[A096765(n+1)]]`
-/

namespace A096914.P6244991724538020298
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096765 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A096914.P6244991724538020298

/-! ## A096914.P484749787284558321

`∑[∑[A096749(n)+A025148(n)]]`
-/

namespace A096914.P484749787284558321
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096749 n + A025148 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A096914.P484749787284558321

/-! ## A096914.P8778059990260278688

`∑[∑[A238215(n+1)+A238208(n+1)]]`
-/

namespace A096914.P8778059990260278688
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238215 (n + 1) + A238208 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A096914.P8778059990260278688

/-! ## A096914.P8032639520527994206

`∑[A015745(n)+∑[A015737(n+1)]]`
-/

namespace A096914.P8032639520527994206
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015737 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015745 n + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A096914.P8032639520527994206

/-! ## A096914.P13922676058266574155

`∑[∑[A264403(∑[n+3])]]`
-/

namespace A096914.P13922676058266574155
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264403 (∑ j ∈ Finset.range (n + 1), f3 j)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A096914.P13922676058266574155

/-! ## A096914.P13698751928142588124

`∑[∑[A015716(∑[n]+1)]]`
-/

namespace A096914.P13698751928142588124
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015716 (∑ j ∈ Finset.range (n + 1), f3 j + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A096914.P13698751928142588124

/-! ## A096914.P4858589605376880343

`∑[∑[A116861(∑[n+2])]]`
-/

namespace A096914.P4858589605376880343
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116861 (∑ j ∈ Finset.range (n + 1), f3 j)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A096914.P4858589605376880343

/-!
# A096915: Smallest prime which when appended to n produces a prime.

The programs for A096915, there is no canonical definition to state claims against.
-/

/-! ## A096915.P2781678618536312038

`A089777(n+1)%(5*(n+1))`
-/

namespace A096915.P2781678618536312038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A089777 (n + 1)) (5 * (n + 1) : ℤ)

end

end A096915.P2781678618536312038

/-! ## A096915.P13029087999882400164

`p?[A089777(n+1)]%A008592(A000027(n+1))`
-/

namespace A096915.P13029087999882400164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089777 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A008592 (A000027 (n + 1)).toNat)

end

end A096915.P13029087999882400164

/-! ## A096915.P454995945717256486

`A014963(A089777(n+1))%A008592(n+1)`
-/

namespace A096915.P454995945717256486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014963 (A089777 (n + 1)).toNat) (A008592 (n + 1))

end

end A096915.P454995945717256486

/-! ## A096915.P14013332205983113997

`A285470(A089777(n+1))%A285470(n+1)`
-/

namespace A096915.P14013332205983113997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A285470 (A089777 (n + 1)).toNat) (A285470 (n + 1))

end

end A096915.P14013332205983113997

/-!
# A096916: Lesser prime factor of n-th product of two distinct primes.

The programs for A096916, the canonical program `A096916.P11970356656094627604` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A096916 has offset 1).

The definition of A096916 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A096916.P11528317538922025355

`A343004(Δ[n²])`
-/

namespace A096916.P11528317538922025355
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343004 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A096916.P11528317538922025355

namespace A096916

/-- `A343004(Δ[n²])` -/
def P11528317538922025355.Spec : Prop :=
  ∀ n, P11528317538922025355.a n = A096916 (n + 1)

end A096916

/-! ## A096916.P7997246767192698108

`p?[A343004(2*n+1)]`
-/

namespace A096916.P7997246767192698108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343004 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A096916.P7997246767192698108

namespace A096916

/-- `p?[A343004(2*n+1)]` -/
def P7997246767192698108.Spec : Prop :=
  ∀ n, P7997246767192698108.a n = A096916 (n + 1)

end A096916

/-! ## A096916.P11970356656094627604

`p?[gcd(n+1, ((n+1)/A006530(n+1))²)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A096916

/-- `p?[gcd(n+1, ((n+1)/A006530(n+1))²)]` -/
def P11970356656094627604.Spec : Prop :=
  ∀ n, (P11970356656094627604.a n : ℤ) = A096916 (n + 1)

theorem P11970356656094627604.correct : P11970356656094627604.Spec := by
  intro n
  simp only [A096916, Nat.add_sub_cancel]

end A096916

/-! ## A096916.P13655327667984534465

`A020639(A006881(n+1))`
-/

namespace A096916.P13655327667984534465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A006881 (n + 1)).toNat

end

end A096916.P13655327667984534465

namespace A096916

/-- `A020639(A006881(n+1))` -/
def P13655327667984534465.Spec : Prop :=
  ∀ n, P13655327667984534465.a n = A096916 (n + 1)

end A096916

/-! ## A096916.P3949994977289571050

`A020639(eq[4, A077462(n)])`
-/

namespace A096916.P3949994977289571050
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077462 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A096916.P3949994977289571050

namespace A096916

/-- `A020639(eq[4, A077462(n)])` -/
def P3949994977289571050.Spec : Prop :=
  ∀ n, P3949994977289571050.a n = A096916 (n + 1)

end A096916

/-! ## A096916.P1865359797211725739

`A020639(sqrt(A085986(n+1)))`
-/

namespace A096916.P1865359797211725739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.roundAway (Real.sqrt (A085986 (n + 1) : ℝ))).toNat

end

end A096916.P1865359797211725739

namespace A096916

/-- `A020639(sqrt(A085986(n+1)))` -/
def P1865359797211725739.Spec : Prop :=
  ∀ n, P1865359797211725739.a n = A096916 (n + 1)

end A096916

/-! ## A096916.P2816494007835728263

`A020639(root(A085986(n+1), 2))`
-/

namespace A096916.P2816494007835728263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.roundAway ((A085986 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))).toNat

end

end A096916.P2816494007835728263

namespace A096916

/-- `A020639(root(A085986(n+1), 2))` -/
def P2816494007835728263.Spec : Prop :=
  ∀ n, P2816494007835728263.a n = A096916 (n + 1)

end A096916

/-! ## A096916.P6964941588957921499

`A020639(eq[2, A305796(n+1)]+1)`
-/

namespace A096916.P6964941588957921499
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305796 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A096916.P6964941588957921499

namespace A096916

/-- `A020639(eq[2, A305796(n+1)]+1)` -/
def P6964941588957921499.Spec : Prop :=
  ∀ n, P6964941588957921499.a n = A096916 (n + 1)

end A096916

/-! ## A096916.P363829098093675214

`A228578(n+1)-A070647(n+1)`
-/

namespace A096916.P363829098093675214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228578 (n + 1) - A070647 (n + 1)

end

end A096916.P363829098093675214

namespace A096916

/-- `A228578(n+1)-A070647(n+1)` -/
def P363829098093675214.Spec : Prop :=
  ∀ n, P363829098093675214.a n = A096916 (n + 1)

end A096916

/-! ## A096916.P13065574248576086180

`A006881(n+1)/A070647(n+1)`
-/

namespace A096916.P13065574248576086180
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006881 (n + 1) : ℚ) / (A070647 (n + 1) : ℚ)

end

end A096916.P13065574248576086180

namespace A096916

/-- `A006881(n+1)/A070647(n+1)` -/
def P13065574248576086180.Spec : Prop :=
  ∀ n, P13065574248576086180.a n = (A096916 (n + 1) : ℚ)

end A096916

/-! ## A096916.P1149642197908539640

`filter[A343004(2*n+1), A008966(#)]`
-/

namespace A096916.P1149642197908539640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343004 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A096916.P1149642197908539640

namespace A096916

/-- `filter[A343004(2*n+1), A008966(#)]` -/
def P1149642197908539640.Spec : Prop :=
  ∀ n, P1149642197908539640.a n = A096916 (n + 1)

end A096916

/-! ## A096916.P15251874418480330324

`filter[A343004(2*n+1), A010051(#)]`
-/

namespace A096916.P15251874418480330324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343004 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A096916.P15251874418480330324

namespace A096916

/-- `filter[A343004(2*n+1), A010051(#)]` -/
def P15251874418480330324.Spec : Prop :=
  ∀ n, P15251874418480330324.a n = A096916 (n + 1)

end A096916

/-! ## A096916.P17742962249488742798

`filter[A343004(2*n+1), A010055(#)]`
-/

namespace A096916.P17742962249488742798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343004 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010055 (f1 j).toNat = 1) n)

end

end A096916.P17742962249488742798

namespace A096916

/-- `filter[A343004(2*n+1), A010055(#)]` -/
def P17742962249488742798.Spec : Prop :=
  ∀ n, P17742962249488742798.a n = A096916 (n + 1)

end A096916

/-! ## A096916.P16545117502920166279

`filter[A343004(2*n+1), A014306(#)]`
-/

namespace A096916.P16545117502920166279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343004 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A014306 (f1 j).toNat = 1) n)

end

end A096916.P16545117502920166279

namespace A096916

/-- `filter[A343004(2*n+1), A014306(#)]` -/
def P16545117502920166279.Spec : Prop :=
  ∀ n, P16545117502920166279.a n = A096916 (n + 1)

end A096916

/-! ## A096916.P1876935632844546500

`filter[A343004(2*n+1), A049240(#)]`
-/

namespace A096916.P1876935632844546500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343004 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A049240 (f1 j).toNat = 1) n)

end

end A096916.P1876935632844546500

namespace A096916

/-- `filter[A343004(2*n+1), A049240(#)]` -/
def P1876935632844546500.Spec : Prop :=
  ∀ n, P1876935632844546500.a n = A096916 (n + 1)

end A096916

/-! ## A096916.P5266757874472571681

`filter[A343004(2*n+1), A053867(#)]`
-/

namespace A096916.P5266757874472571681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343004 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A053867 (f1 j).toNat = 1) n)

end

end A096916.P5266757874472571681

namespace A096916

/-- `filter[A343004(2*n+1), A053867(#)]` -/
def P5266757874472571681.Spec : Prop :=
  ∀ n, P5266757874472571681.a n = A096916 (n + 1)

end A096916

/-! ## A096916.P3909739299982312102

`filter[A343004(2*n+1), A066829(#)]`
-/

namespace A096916.P3909739299982312102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343004 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066829 (f1 j).toNat = 1) n)

end

end A096916.P3909739299982312102

namespace A096916

/-- `filter[A343004(2*n+1), A066829(#)]` -/
def P3909739299982312102.Spec : Prop :=
  ∀ n, P3909739299982312102.a n = A096916 (n + 1)

end A096916

/-! ## A096916.P122458435435554212

`filter[A343004(2*n+1), A069513(#)]`
-/

namespace A096916.P122458435435554212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343004 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A069513 (f1 j).toNat = 1) n)

end

end A096916.P122458435435554212

namespace A096916

/-- `filter[A343004(2*n+1), A069513(#)]` -/
def P122458435435554212.Spec : Prop :=
  ∀ n, P122458435435554212.a n = A096916 (n + 1)

end A096916

/-! ## A096916.P14522917744562171970

`filter[A343004(2*n+1), A080339(#)]`
-/

namespace A096916.P14522917744562171970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343004 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A096916.P14522917744562171970

namespace A096916

/-- `filter[A343004(2*n+1), A080339(#)]` -/
def P14522917744562171970.Spec : Prop :=
  ∀ n, P14522917744562171970.a n = A096916 (n + 1)

end A096916

/-! ## A096916.P9673867145409044219

`p?[A281116(n+1)*A303759(n+1)]`
-/

namespace A096916.P9673867145409044219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281116 (n + 1) * A303759 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A096916.P9673867145409044219

namespace A096916

/-- `p?[A281116(n+1)*A303759(n+1)]` -/
def P9673867145409044219.Spec : Prop :=
  ∀ n, P9673867145409044219.a n = A096916 (n + 1)

end A096916

/-!
# A096917: Smallest prime factor of the n-th product of 3 distinct primes.

The programs for A096917, the canonical program `A096917.P575436331193569505` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A096917 has offset 1).

The definition of A096917 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A096917.P4613843583822945745

`A020639(A007304(n+1))`
-/

namespace A096917.P4613843583822945745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A007304 (n + 1)).toNat

end

end A096917.P4613843583822945745

namespace A096917

/-- `A020639(A007304(n+1))` -/
def P4613843583822945745.Spec : Prop :=
  ∀ n, P4613843583822945745.a n = A096917 (n + 1)

end A096917

/-! ## A096917.P14802099175312144529

`A020639(sqrt(A162143(n+1)))`
-/

namespace A096917.P14802099175312144529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.roundAway (Real.sqrt (A162143 (n + 1) : ℝ))).toNat

end

end A096917.P14802099175312144529

namespace A096917

/-- `A020639(sqrt(A162143(n+1)))` -/
def P14802099175312144529.Spec : Prop :=
  ∀ n, P14802099175312144529.a n = A096917 (n + 1)

end A096917

/-! ## A096917.P18444668471622916261

`A020639(A162144(n+1)/A162143(n+1))`
-/

namespace A096917.P18444668471622916261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.roundAway ((A162144 (n + 1) : ℚ) / (A162143 (n + 1) : ℚ))).toNat

end

end A096917.P18444668471622916261

namespace A096917

/-- `A020639(A162144(n+1)/A162143(n+1))` -/
def P18444668471622916261.Spec : Prop :=
  ∀ n, P18444668471622916261.a n = A096917 (n + 1)

end A096917

/-! ## A096917.P575436331193569505

`A007304(n+1)/(A096918(n+1)*A096919(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A096917

/-- `A007304(n+1)/(A096918(n+1)*A096919(n+1))` -/
def P575436331193569505.Spec : Prop :=
  ∀ n, P575436331193569505.a n = (A096917 (n + 1) : ℚ)

end A096917

/-! ## A096917.P4045133868297468160

`A020639(∩[A014612(n+1), A026416(n+1)])`
-/

namespace A096917.P4045133868297468160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026416 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A096917.P4045133868297468160

namespace A096917

/-- `A020639(∩[A014612(n+1), A026416(n+1)])` -/
def P4045133868297468160.Spec : Prop :=
  ∀ n, P4045133868297468160.a n = A096917 (n + 1)

end A096917

/-! ## A096917.P2791505355573878182

`A020639(∩[A000469(n+1), A014612(n+1)])`
-/

namespace A096917.P2791505355573878182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000469 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A096917.P2791505355573878182

namespace A096917

/-- `A020639(∩[A000469(n+1), A014612(n+1)])` -/
def P2791505355573878182.Spec : Prop :=
  ∀ n, P2791505355573878182.a n = A096917 (n + 1)

end A096917

/-! ## A096917.P5302751910077612302

`A271329(n+1)-A105086(A007304(n+1))`
-/

namespace A096917.P5302751910077612302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271329 (n + 1) - A105086 (A007304 (n + 1)).toNat

end

end A096917.P5302751910077612302

namespace A096917

/-- `A271329(n+1)-A105086(A007304(n+1))` -/
def P5302751910077612302.Spec : Prop :=
  ∀ n, P5302751910077612302.a n = A096917 (n + 1)

end A096917

/-! ## A096917.P15013594006958382657

`A014673(2*A007304(n+1))`
-/

namespace A096917.P15013594006958382657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014673 (2 * A007304 (n + 1)).toNat

end

end A096917.P15013594006958382657

namespace A096917

/-- `A014673(2*A007304(n+1))` -/
def P15013594006958382657.Spec : Prop :=
  ∀ n, P15013594006958382657.a n = A096917 (n + 1)

end A096917

/-! ## A096917.P11639547829745788411

`A014673(A007304(n+1)+A007304(n+1))`
-/

namespace A096917.P11639547829745788411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014673 (A007304 (n + 1) + A007304 (n + 1)).toNat

end

end A096917.P11639547829745788411

namespace A096917

/-- `A014673(A007304(n+1)+A007304(n+1))` -/
def P11639547829745788411.Spec : Prop :=
  ∀ n, P11639547829745788411.a n = A096917 (n + 1)

end A096917

/-! ## A096917.P4679745429991797718

`A115561(2*2*A007304(n+1))`
-/

namespace A096917.P4679745429991797718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115561 (2 * (2 * A007304 (n + 1))).toNat

end

end A096917.P4679745429991797718

namespace A096917

/-- `A115561(2*2*A007304(n+1))` -/
def P4679745429991797718.Spec : Prop :=
  ∀ n, P4679745429991797718.a n = A096917 (n + 1)

end A096917

/-!
# A096918: Intermediate prime factor of n-th product of 3 distinct primes.

The programs for A096918, the canonical program `A096918.P15287416187910014206` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A096918 has offset 1).

The definition of A096918 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A096918.P15287416187910014206

`A006530(A007304(n+1)/A096919(n+1))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A096918

/-- `A006530(A007304(n+1)/A096919(n+1))` -/
def P15287416187910014206.Spec : Prop :=
  ∀ n, P15287416187910014206.a n = A096918 (n + 1)

theorem P15287416187910014206.correct : P15287416187910014206.Spec := by
  intro n
  simp only [A096918, Nat.add_sub_cancel]

end A096918

/-! ## A096918.P7456793683707398251

`A020639(A007304(n+1)/A096917(n+1))`
-/

namespace A096918.P7456793683707398251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.roundAway ((A007304 (n + 1) : ℚ) / (A096917 (n + 1) : ℚ))).toNat

end

end A096918.P7456793683707398251

namespace A096918

/-- `A020639(A007304(n+1)/A096917(n+1))` -/
def P7456793683707398251.Spec : Prop :=
  ∀ n, P7456793683707398251.a n = A096918 (n + 1)

end A096918

/-! ## A096918.P17178742453950983929

`A007304(n+1)/(A096917(n+1)*A096919(n+1))`
-/

namespace A096918.P17178742453950983929
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007304 (n + 1) : ℚ) / (A096917 (n + 1) * A096919 (n + 1) : ℚ)

end

end A096918.P17178742453950983929

namespace A096918

/-- `A007304(n+1)/(A096917(n+1)*A096919(n+1))` -/
def P17178742453950983929.Spec : Prop :=
  ∀ n, P17178742453950983929.a n = (A096918 (n + 1) : ℚ)

end A096918

/-! ## A096918.P17347013608073071622

`A329888(sqrt(A162143(n+1)))`
-/

namespace A096918.P17347013608073071622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329888 (SequenceMachineLib.roundAway (Real.sqrt (A162143 (n + 1) : ℝ))).toNat

end

end A096918.P17347013608073071622

namespace A096918

/-- `A329888(sqrt(A162143(n+1)))` -/
def P17347013608073071622.Spec : Prop :=
  ∀ n, P17347013608073071622.a n = A096918 (n + 1)

end A096918

/-! ## A096918.P8192019754982540483

`p?[A329888(A033992(n+1))]`
-/

namespace A096918.P8192019754982540483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329888 (A033992 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A096918.P8192019754982540483

namespace A096918

/-- `p?[A329888(A033992(n+1))]` -/
def P8192019754982540483.Spec : Prop :=
  ∀ n, P8192019754982540483.a n = A096918 (n + 1)

end A096918

/-! ## A096918.P16851592846205415671

`A014673(A007304(n+1))`
-/

namespace A096918.P16851592846205415671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014673 (A007304 (n + 1)).toNat

end

end A096918.P16851592846205415671

namespace A096918

/-- `A014673(A007304(n+1))` -/
def P16851592846205415671.Spec : Prop :=
  ∀ n, P16851592846205415671.a n = A096918 (n + 1)

end A096918

/-! ## A096918.P18401524060447262887

`A273289(sqrt(A162143(n+1)))`
-/

namespace A096918.P18401524060447262887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273289 (SequenceMachineLib.roundAway (Real.sqrt (A162143 (n + 1) : ℝ))).toNat

end

end A096918.P18401524060447262887

namespace A096918

/-- `A273289(sqrt(A162143(n+1)))` -/
def P18401524060447262887.Spec : Prop :=
  ∀ n, P18401524060447262887.a n = A096918 (n + 1)

end A096918

/-! ## A096918.P3777840168231306980

`p?[lcm(A008683(n+1), A070821(n+1))]`
-/

namespace A096918.P3777840168231306980
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008683 (n + 1)) (A070821 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A096918.P3777840168231306980

namespace A096918

/-- `p?[lcm(A008683(n+1), A070821(n+1))]` -/
def P3777840168231306980.Spec : Prop :=
  ∀ n, (P3777840168231306980.a n : ℤ) = A096918 (n + 1)

end A096918

/-! ## A096918.P17356382922617520583

`A087039(lcm(2, A007304(n+1)))`
-/

namespace A096918.P17356382922617520583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087039 (Int.lcm 2 (A007304 (n + 1)))

end

end A096918.P17356382922617520583

namespace A096918

/-- `A087039(lcm(2, A007304(n+1)))` -/
def P17356382922617520583.Spec : Prop :=
  ∀ n, P17356382922617520583.a n = A096918 (n + 1)

end A096918

/-! ## A096918.P12599237355449496884

`A087039(2*A007304(n+1))`
-/

namespace A096918.P12599237355449496884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087039 (2 * A007304 (n + 1)).toNat

end

end A096918.P12599237355449496884

namespace A096918

/-- `A087039(2*A007304(n+1))` -/
def P12599237355449496884.Spec : Prop :=
  ∀ n, P12599237355449496884.a n = A096918 (n + 1)

end A096918

/-! ## A096918.P12009925153129097193

`A115561(2*A007304(n+1))`
-/

namespace A096918.P12009925153129097193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115561 (2 * A007304 (n + 1)).toNat

end

end A096918.P12009925153129097193

namespace A096918

/-- `A115561(2*A007304(n+1))` -/
def P12009925153129097193.Spec : Prop :=
  ∀ n, P12009925153129097193.a n = A096918 (n + 1)

end A096918

/-!
# A096919: Greatest prime factor of n-th product of 3 distinct primes.

The programs for A096919, the canonical program `A096919.P738797991620744238` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A096919 has offset 1).

The definition of A096919 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, A007304, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A096919.P738797991620744238

`A006530(A007304(n+1))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A096919

/-- `A006530(A007304(n+1))` -/
def P738797991620744238.Spec : Prop :=
  ∀ n, P738797991620744238.a n = A096919 (n + 1)

theorem P738797991620744238.correct : P738797991620744238.Spec := by
  intro n
  simp only [A096919, Nat.add_sub_cancel]

end A096919

/-! ## A096919.P10446138822991930986

`A006530(sqrt(A162143(n+1)))`
-/

namespace A096919.P10446138822991930986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway (Real.sqrt (A162143 (n + 1) : ℝ))).toNat

end

end A096919.P10446138822991930986

namespace A096919

/-- `A006530(sqrt(A162143(n+1)))` -/
def P10446138822991930986.Spec : Prop :=
  ∀ n, P10446138822991930986.a n = A096919 (n + 1)

end A096919

/-! ## A096919.P8268097893825372659

`A034699(sqrt(A162143(n+1)))`
-/

namespace A096919.P8268097893825372659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (SequenceMachineLib.roundAway (Real.sqrt (A162143 (n + 1) : ℝ))).toNat

end

end A096919.P8268097893825372659

namespace A096919

/-- `A034699(sqrt(A162143(n+1)))` -/
def P8268097893825372659.Spec : Prop :=
  ∀ n, P8268097893825372659.a n = A096919 (n + 1)

end A096919

/-! ## A096919.P13532505424917612265

`A006530(A162144(n+1)/A162143(n+1))`
-/

namespace A096919.P13532505424917612265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway ((A162144 (n + 1) : ℚ) / (A162143 (n + 1) : ℚ))).toNat

end

end A096919.P13532505424917612265

namespace A096919

/-- `A006530(A162144(n+1)/A162143(n+1))` -/
def P13532505424917612265.Spec : Prop :=
  ∀ n, P13532505424917612265.a n = A096919 (n + 1)

end A096919

/-! ## A096919.P5546315757915110325

`A034699(A007304(n+1))%A259934(n+2)`
-/

namespace A096919.P5546315757915110325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A034699 (A007304 (n + 1)).toNat) (A259934 (n + 2))

end

end A096919.P5546315757915110325

namespace A096919

/-- `A034699(A007304(n+1))%A259934(n+2)` -/
def P5546315757915110325.Spec : Prop :=
  ∀ n, P5546315757915110325.a n = A096919 (n + 1)

end A096919

/-! ## A096919.P8267182773922457957

`A034699(2*A007304(n+1)-A007304(n+1))`
-/

namespace A096919.P8267182773922457957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (2 * A007304 (n + 1) - A007304 (n + 1)).toNat

end

end A096919.P8267182773922457957

namespace A096919

/-- `A034699(2*A007304(n+1)-A007304(n+1))` -/
def P8267182773922457957.Spec : Prop :=
  ∀ n, P8267182773922457957.a n = A096919 (n + 1)

end A096919

/-! ## A096919.P9902890600687366188

`A007304(n+1)/(A096917(n+1)*A096918(n+1))`
-/

namespace A096919.P9902890600687366188
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007304 (n + 1) : ℚ) / (A096917 (n + 1) * A096918 (n + 1) : ℚ)

end

end A096919.P9902890600687366188

namespace A096919

/-- `A007304(n+1)/(A096917(n+1)*A096918(n+1))` -/
def P9902890600687366188.Spec : Prop :=
  ∀ n, P9902890600687366188.a n = (A096919 (n + 1) : ℚ)

end A096919

/-! ## A096919.P17346087023207175843

`A034699(A007304(n+1)%A007304(n+3))`
-/

namespace A096919.P17346087023207175843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (Int.tmod (A007304 (n + 1)) (A007304 (n + 3))).toNat

end

end A096919.P17346087023207175843

namespace A096919

/-- `A034699(A007304(n+1)%A007304(n+3))` -/
def P17346087023207175843.Spec : Prop :=
  ∀ n, P17346087023207175843.a n = A096919 (n + 1)

end A096919

/-! ## A096919.P4850587606093232196

`A034699(2*A007304(n+1))`
-/

namespace A096919.P4850587606093232196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (2 * A007304 (n + 1)).toNat

end

end A096919.P4850587606093232196

namespace A096919

/-- `A034699(2*A007304(n+1))` -/
def P4850587606093232196.Spec : Prop :=
  ∀ n, P4850587606093232196.a n = A096919 (n + 1)

end A096919

/-! ## A096919.P1648481757428370448

`A299766(root(A162143(n+1), 2))`
-/

namespace A096919.P1648481757428370448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299766 (SequenceMachineLib.roundAway ((A162143 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))).toNat

end

end A096919.P1648481757428370448

namespace A096919

/-- `A299766(root(A162143(n+1), 2))` -/
def P1648481757428370448.Spec : Prop :=
  ∀ n, P1648481757428370448.a n = A096919 (n + 1)

end A096919

/-! ## A096919.P13374205513865559690

`A002034(abs(1-A007304(n+1))+1)`
-/

namespace A096919.P13374205513865559690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002034 (|1 - A007304 (n + 1)| + 1).toNat

end

end A096919.P13374205513865559690

namespace A096919

/-- `A002034(abs(1-A007304(n+1))+1)` -/
def P13374205513865559690.Spec : Prop :=
  ∀ n, P13374205513865559690.a n = A096919 (n + 1)

end A096919

/-! ## A096919.P18204153255220019552

`p?[and(A008683(n+1), A054576(n+1))]`
-/

namespace A096919.P18204153255220019552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008683 (n + 1)) (A054576 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A096919.P18204153255220019552

namespace A096919

/-- `p?[and(A008683(n+1), A054576(n+1))]` -/
def P18204153255220019552.Spec : Prop :=
  ∀ n, P18204153255220019552.a n = A096919 (n + 1)

end A096919

/-! ## A096919.P464230370524401421

`A115561(2*A007304(n+1)-A007304(n+1))`
-/

namespace A096919.P464230370524401421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115561 (2 * A007304 (n + 1) - A007304 (n + 1)).toNat

end

end A096919.P464230370524401421

namespace A096919

/-- `A115561(2*A007304(n+1)-A007304(n+1))` -/
def P464230370524401421.Spec : Prop :=
  ∀ n, P464230370524401421.a n = A096919 (n + 1)

end A096919

/-! ## A096919.P15454858779515822655

`p?[A008683(n+1)²*A032742(A032742(n+1))]`
-/

namespace A096919.P15454858779515822655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) ^ 2 * A032742 (A032742 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A096919.P15454858779515822655

namespace A096919

/-- `p?[A008683(n+1)²*A032742(A032742(n+1))]` -/
def P15454858779515822655.Spec : Prop :=
  ∀ n, P15454858779515822655.a n = A096919 (n + 1)

end A096919

/-! ## A096919.P6928032598823995046

`A115561(A007304(n+1))*A115561(A115561(n+1))`
-/

namespace A096919.P6928032598823995046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115561 (A007304 (n + 1)).toNat * A115561 (A115561 (n + 1)).toNat

end

end A096919.P6928032598823995046

namespace A096919

/-- `A115561(A007304(n+1))*A115561(A115561(n+1))` -/
def P6928032598823995046.Spec : Prop :=
  ∀ n, P6928032598823995046.a n = A096919 (n + 1)

end A096919

/-! ## A096919.P4673335319615343320

`A002034(2*A007304(n+1))`
-/

namespace A096919.P4673335319615343320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002034 (2 * A007304 (n + 1)).toNat

end

end A096919.P4673335319615343320

namespace A096919

/-- `A002034(2*A007304(n+1))` -/
def P4673335319615343320.Spec : Prop :=
  ∀ n, P4673335319615343320.a n = A096919 (n + 1)

end A096919

/-! ## A096919.P9397985575761877982

`A223491(2*A007304(n+1))`
-/

namespace A096919.P9397985575761877982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223491 (2 * A007304 (n + 1)).toNat

end

end A096919.P9397985575761877982

namespace A096919

/-- `A223491(2*A007304(n+1))` -/
def P9397985575761877982.Spec : Prop :=
  ∀ n, P9397985575761877982.a n = A096919 (n + 1)

end A096919

/-! ## A096919.P5376861365579955929

`A284695(2*A007304(n+1))`
-/

namespace A096919.P5376861365579955929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284695 (2 * A007304 (n + 1)).toNat

end

end A096919.P5376861365579955929

namespace A096919

/-- `A284695(2*A007304(n+1))` -/
def P5376861365579955929.Spec : Prop :=
  ∀ n, P5376861365579955929.a n = A096919 (n + 1)

end A096919

/-! ## A096919.P7321667746125041247

`A115561(A007304(n+1))/A115561(A115561(n+1)²)`
-/

namespace A096919.P7321667746125041247
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A115561 (A007304 (n + 1)).toNat : ℚ) / (A115561 (A115561 (n + 1) ^ 2).toNat : ℚ)

end

end A096919.P7321667746125041247

namespace A096919

/-- `A115561(A007304(n+1))/A115561(A115561(n+1)²)` -/
def P7321667746125041247.Spec : Prop :=
  ∀ n, P7321667746125041247.a n = (A096919 (n + 1) : ℚ)

end A096919

/-! ## A096919.P15793953504946227097

`A006530(∏{p}[A162143(n+1), #])`
-/

namespace A096919.P15793953504946227097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162143 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A096919.P15793953504946227097

namespace A096919

/-- `A006530(∏{p}[A162143(n+1), #])` -/
def P15793953504946227097.Spec : Prop :=
  ∀ n, P15793953504946227097.a n = A096919 (n + 1)

end A096919

/-!
# A096920: Expansion of q^(-1/12) * eta(q^2)^4 / (eta(q)^2 * eta(q^4)) in powers of q.

The programs for A096920, there is no canonical definition to state claims against.
-/

/-! ## A096920.P5866048077626386973

`∑[A093829(A007318(A136101(n)))]`
-/

namespace A096920.P5866048077626386973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093829 (A007318 (A136101 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A096920.P5866048077626386973

/-! ## A096920.P5414002081047255051

`A008611(A279078(A055646(n)+2))`
-/

namespace A096920.P5414002081047255051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A279078 (A055646 n + 2).toNat).toNat

end

end A096920.P5414002081047255051

/-! ## A096920.P3305084928624146520

`A381423(A293182(n))`
-/

namespace A096920.P3305084928624146520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381423 (A293182 n).toNat

end

end A096920.P3305084928624146520

/-! ## A096920.P13923265507185662714

`A117119(A321729(n))+A010894(A320606(n+1))`
-/

namespace A096920.P13923265507185662714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117119 (A321729 n).toNat + A010894 ((A320606 (n + 1)).toNat + 21)

end

end A096920.P13923265507185662714

/-!
# A096921: Triangle array of binomial coefficients.

The programs for A096921, there is no canonical definition to state claims against.
-/

/-! ## A096921.P1652314241941842262

`A051159(A245300(n)-A060510(n))`
-/

namespace A096921.P1652314241941842262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051159 (A245300 n - A060510 n).toNat

end

end A096921.P1652314241941842262

/-! ## A096921.P12559702651867596306

`A152198(A272904(n+1)-1)`
-/

namespace A096921.P12559702651867596306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152198 (A272904 (n + 1) - 1).toNat

end

end A096921.P12559702651867596306

/-! ## A096921.P4101159346239982271

`A082858(A289481(n))+A026669(A002262(n))`
-/

namespace A096921.P4101159346239982271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082858 (A289481 n).toNat + A026669 (A002262 n).toNat

end

end A096921.P4101159346239982271

/-! ## A096921.P15894319668679777115

`A082858(A289481(n))+A061554(A112367(n))`
-/

namespace A096921.P15894319668679777115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082858 (A289481 n).toNat + A061554 (A112367 n).toNat

end

end A096921.P15894319668679777115

/-! ## A096921.P2497226955794417326

`A348772(A156953(n))`
-/

namespace A096921.P2497226955794417326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348772 (A156953 n).toNat

end

end A096921.P2497226955794417326

/-!
# A096922: Numbers m for which there is a unique k such that m = k + (product of nonzero digits of k).

The programs for A096922, there is no canonical definition to state claims against.
-/

/-! ## A096922.P2196148490849550365

`eq[1, A230106(n)]`
-/

namespace A096922.P2196148490849550365
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230106 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A096922.P2196148490849550365

/-! ## A096922.P6974925735958680445

`eq[1, A096972(n+1)]+1`
-/

namespace A096922.P6974925735958680445
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096972 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A096922.P6974925735958680445

/-! ## A096922.P5174729421553497659

`eq[2, sqrt(a(A096972(n)))]` with `a(0)=0, a(1)=4`
-/

namespace A096922.P5174729421553497659
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℝ := SequenceMachineLib.rec [0, 4] fun n f2 =>
  Real.sqrt (f2 (A096972 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) = f2 j) n

end

end A096922.P5174729421553497659

/-! ## A096922.P10024287984996313674

`eq[1, A096972(A028310(n))]`
-/

namespace A096922.P10024287984996313674
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096972 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A096922.P10024287984996313674

/-! ## A096922.P12827271197026329026

`eq[2, A000032(a(A096972(n)))]` with `a(0)=1, a(1)=0`
-/

namespace A096922.P12827271197026329026
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n f2 =>
  A000032 (f2 (A096972 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A096922.P12827271197026329026

/-!
# A096923: Numbers m for which there are exactly two k such that m = k + (product of nonzero digits of k).

The programs for A096923, there is no canonical definition to state claims against.
-/

/-! ## A096923.P7197893176161012212

`eq[2, A096972(n+1)]+1`
-/

namespace A096923.P7197893176161012212
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096972 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A096923.P7197893176161012212

/-! ## A096923.P1760767433625956044

`eq[2, sqrt(a(A096972(n)))]` with `a(0)=0, a(1)=0, a(2)=4`
-/

namespace A096923.P1760767433625956044
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℝ := SequenceMachineLib.rec [0, 0, 4] fun n f2 =>
  Real.sqrt (f2 (A096972 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) = f2 j) n

end

end A096923.P1760767433625956044

/-! ## A096923.P14143406197120293340

`eq[2, A096972(A028310(n))]`
-/

namespace A096923.P14143406197120293340
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096972 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A096923.P14143406197120293340

/-! ## A096923.P8384932986777608218

`eq[2, A000005(a(A096972(n)))]` with `a(0)=6`
-/

namespace A096923.P8384932986777608218
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [6] fun n f2 =>
  A000005 (f2 (A096972 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A096923.P8384932986777608218

/-! ## A096923.P11202147161708589060

`eq[2, A000010(a(A096972(n)))]` with `a(0)=11`
-/

namespace A096923.P11202147161708589060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [11] fun n f2 =>
  A000010 (f2 (A096972 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A096923.P11202147161708589060

/-!
# A096924: Numbers n for which there are exactly three k such that n = k + (product of nonzero digits of k).

The programs for A096924, there is no canonical definition to state claims against.
-/

/-! ## A096924.P2553906774567829411

`or(6, A134496(A054061(n+1)))`
-/

namespace A096924.P2553906774567829411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 6 (A134496 (A054061 (n + 1)).toNat)

end

end A096924.P2553906774567829411

/-! ## A096924.P3246564464704409481

`eq[A047588(n+1), A216841(n+2)]`
-/

namespace A096924.P3246564464704409481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047588 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216841 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A096924.P3246564464704409481

/-!
# A096932: Smallest number having exactly s divisors, where s is the n-th semiprime (A001358).

The programs for A096932, there is no canonical definition to state claims against.
-/

/-! ## A096932.P504382736979393572

`A005179(A001358(n+1))`
-/

namespace A096932.P504382736979393572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005179 (A001358 (n + 1)).toNat

end

end A096932.P504382736979393572

/-! ## A096932.P8528195959825939316

`A005179(eq[2, ∑{e}[n, #]])`
-/

namespace A096932.P8528195959825939316
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005179 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A096932.P8528195959825939316

/-! ## A096932.P4817739923318682864

`A005179(A176540(n+2))`
-/

namespace A096932.P4817739923318682864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005179 (A176540 (n + 2)).toNat

end

end A096932.P4817739923318682864

/-! ## A096932.P59224526386594450

`A005179(eq[2, A001222(n+1)]+1)`
-/

namespace A096932.P59224526386594450
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005179 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A096932.P59224526386594450

/-! ## A096932.P18427561110654256022

`A081532(A122963(n+1))`
-/

namespace A096932.P18427561110654256022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081532 (A122963 (n + 1)).toNat

end

end A096932.P18427561110654256022

/-!
# A096935: Smallest number k such that in its decimal representation the first n digits of Pi=3.14... are contained in 11^k.

The programs for A096935, there is no canonical definition to state claims against.
-/

/-! ## A096935.P11259009618619070132

`A008585(A213644(n))/A155495(n)`
-/

namespace A096935.P11259009618619070132
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008585 (A213644 n).toNat : ℚ) / (A155495 n : ℚ)

end

end A096935.P11259009618619070132

/-!
# A096936: Half of number of integer solutions to the equation x^2 + 3y^2 = n.

The programs for A096936, the canonical program `A096936.P4269923552205250814` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A096936 has offset 1).

The definition of A096936 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A096936.P16231855660490586689

`A033716(n+1)/2`
-/

namespace A096936.P16231855660490586689
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033716 (n + 1) : ℚ) / 2

end

end A096936.P16231855660490586689

namespace A096936

/-- `A033716(n+1)/2` -/
def P16231855660490586689.Spec : Prop :=
  ∀ n, P16231855660490586689.a n = (A096936 (n + 1) : ℚ)

end A096936

/-! ## A096936.P7118065720211254880

`abs(A115979(n+1))`
-/

namespace A096936.P7118065720211254880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A115979 (n + 1)|

end

end A096936.P7118065720211254880

namespace A096936

/-- `abs(A115979(n+1))` -/
def P7118065720211254880.Spec : Prop :=
  ∀ n, P7118065720211254880.a n = A096936 (n + 1)

end A096936

/-! ## A096936.P6186458684025410065

`3^(n%2)*A002324(n+1)`
-/

namespace A096936.P6186458684025410065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ (n % 2) : ℤ) * A002324 (n + 1)

end

end A096936.P6186458684025410065

namespace A096936

/-- `3^(n%2)*A002324(n+1)` -/
def P6186458684025410065.Spec : Prop :=
  ∀ n, P6186458684025410065.a n = A096936 (n + 1)

end A096936

/-! ## A096936.P13914898736954422928

`A001281(A033716(n+1))`
-/

namespace A096936.P13914898736954422928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A033716 (n + 1)).toNat

end

end A096936.P13914898736954422928

namespace A096936

/-- `A001281(A033716(n+1))` -/
def P13914898736954422928.Spec : Prop :=
  ∀ n, P13914898736954422928.a n = A096936 (n + 1)

end A096936

/-! ## A096936.P13578967251901254016

`A004526(A033716(n+1)+1)`
-/

namespace A096936.P13578967251901254016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A033716 (n + 1) + 1).toNat

end

end A096936.P13578967251901254016

namespace A096936

/-- `A004526(A033716(n+1)+1)` -/
def P13578967251901254016.Spec : Prop :=
  ∀ n, P13578967251901254016.a n = A096936 (n + 1)

end A096936

/-! ## A096936.P208298087536806522

`A028242(A033716(n+1)+1)`
-/

namespace A096936.P208298087536806522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A033716 (n + 1) + 1).toNat

end

end A096936.P208298087536806522

namespace A096936

/-- `A028242(A033716(n+1)+1)` -/
def P208298087536806522.Spec : Prop :=
  ∀ n, P208298087536806522.a n = A096936 (n + 1)

end A096936

/-! ## A096936.P14436040764363490468

`A002265(2*A033716(n+1))`
-/

namespace A096936.P14436040764363490468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * A033716 (n + 1)).toNat

end

end A096936.P14436040764363490468

namespace A096936

/-- `A002265(2*A033716(n+1))` -/
def P14436040764363490468.Spec : Prop :=
  ∀ n, P14436040764363490468.a n = A096936 (n + 1)

end A096936

/-! ## A096936.P3618030765479056702

`A110655(2*A033716(n+1))`
-/

namespace A096936.P3618030765479056702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 (2 * A033716 (n + 1)).toNat

end

end A096936.P3618030765479056702

namespace A096936

/-- `A110655(2*A033716(n+1))` -/
def P3618030765479056702.Spec : Prop :=
  ∀ n, P3618030765479056702.a n = A096936 (n + 1)

end A096936

/-! ## A096936.P4269923552205250814

`A002324(n+1)*A010684(n)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A096936

/-- `A002324(n+1)*A010684(n)` -/
def P4269923552205250814.Spec : Prop :=
  ∀ n, P4269923552205250814.a n = A096936 (n + 1)

theorem P4269923552205250814.correct : P4269923552205250814.Spec := by
  intro n
  simp only [A096936, Nat.add_sub_cancel]

end A096936

/-! ## A096936.P8101813829467318892

`A002324(n+1)*A093148(n)`
-/

namespace A096936.P8101813829467318892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002324 (n + 1) * A093148 n

end

end A096936.P8101813829467318892

namespace A096936

/-- `A002324(n+1)*A093148(n)` -/
def P8101813829467318892.Spec : Prop :=
  ∀ n, P8101813829467318892.a n = A096936 (n + 1)

end A096936

/-! ## A096936.P2782515166732372891

`A002324(n+1)*A130974(n)`
-/

namespace A096936.P2782515166732372891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002324 (n + 1) * A130974 n

end

end A096936.P2782515166732372891

namespace A096936

/-- `A002324(n+1)*A130974(n)` -/
def P2782515166732372891.Spec : Prop :=
  ∀ n, P2782515166732372891.a n = A096936 (n + 1)

end A096936

/-! ## A096936.P8298558207086861590

`A033999(n)*A115979(n+1)`
-/

namespace A096936.P8298558207086861590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A115979 (n + 1)

end

end A096936.P8298558207086861590

namespace A096936

/-- `A033999(n)*A115979(n+1)` -/
def P8298558207086861590.Spec : Prop :=
  ∀ n, P8298558207086861590.a n = A096936 (n + 1)

end A096936

/-! ## A096936.P17077760219130821357

`A057079(n)*A115979(n+1)`
-/

namespace A096936.P17077760219130821357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057079 n * A115979 (n + 1)

end

end A096936.P17077760219130821357

namespace A096936

/-- `A057079(n)*A115979(n+1)` -/
def P17077760219130821357.Spec : Prop :=
  ∀ n, P17077760219130821357.a n = A096936 (n + 1)

end A096936

/-! ## A096936.P563112017569525363

`A115979(n+1)*A130151(n)`
-/

namespace A096936.P563112017569525363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115979 (n + 1) * A130151 n

end

end A096936.P563112017569525363

namespace A096936

/-- `A115979(n+1)*A130151(n)` -/
def P563112017569525363.Spec : Prop :=
  ∀ n, P563112017569525363.a n = A096936 (n + 1)

end A096936

/-! ## A096936.P11444873431536353307

`A115979(n+1)*A131556(n)`
-/

namespace A096936.P11444873431536353307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115979 (n + 1) * A131556 n

end

end A096936.P11444873431536353307

namespace A096936

/-- `A115979(n+1)*A131556(n)` -/
def P11444873431536353307.Spec : Prop :=
  ∀ n, P11444873431536353307.a n = A096936 (n + 1)

end A096936

/-! ## A096936.P13594743377032710933

`A115979(n+1)*A132951(n)`
-/

namespace A096936.P13594743377032710933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115979 (n + 1) * A132951 n

end

end A096936.P13594743377032710933

namespace A096936

/-- `A115979(n+1)*A132951(n)` -/
def P13594743377032710933.Spec : Prop :=
  ∀ n, P13594743377032710933.a n = A096936 (n + 1)

end A096936

/-! ## A096936.P14634447870943733632

`gcd(A000038(n), A115979(n+1))`
-/

namespace A096936.P14634447870943733632
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A115979 (n + 1))

end

end A096936.P14634447870943733632

namespace A096936

/-- `gcd(A000038(n), A115979(n+1))` -/
def P14634447870943733632.Spec : Prop :=
  ∀ n, (P14634447870943733632.a n : ℤ) = A096936 (n + 1)

end A096936

/-! ## A096936.P17876578142089064017

`lcm(A005131(n), A115979(n+1))`
-/

namespace A096936.P17876578142089064017
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A005131 n) (A115979 (n + 1))

end

end A096936.P17876578142089064017

namespace A096936

/-- `lcm(A005131(n), A115979(n+1))` -/
def P17876578142089064017.Spec : Prop :=
  ∀ n, (P17876578142089064017.a n : ℤ) = A096936 (n + 1)

end A096936

/-! ## A096936.P13695955955717583686

`A119395(n+1)+A092573(n+1)`
-/

namespace A096936.P13695955955717583686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119395 (n + 1) + A092573 (n + 1)

end

end A096936.P13695955955717583686

namespace A096936

/-- `A119395(n+1)+A092573(n+1)` -/
def P13695955955717583686.Spec : Prop :=
  ∀ n, P13695955955717583686.a n = A096936 (n + 1)

end A096936

/-! ## A096936.P1101133879395807884

`A035263(n+1)*A112298(n+1)`
-/

namespace A096936.P1101133879395807884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035263 (n + 1) * A112298 (n + 1)

end

end A096936.P1101133879395807884

namespace A096936

/-- `A035263(n+1)*A112298(n+1)` -/
def P1101133879395807884.Spec : Prop :=
  ∀ n, P1101133879395807884.a n = A096936 (n + 1)

end A096936

/-!
# A096938: McKay-Thompson series of class 60F for the Monster group.

The programs for A096938, there is no canonical definition to state claims against.
-/

/-! ## A096938.P11705558255133554450

`A112201(3*n)`
-/

namespace A096938.P11705558255133554450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112201 (3 * n)

end

end A096938.P11705558255133554450

/-! ## A096938.P10040133056596451489

`A112203(3*n)`
-/

namespace A096938.P10040133056596451489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112203 (3 * n)

end

end A096938.P10040133056596451489

/-! ## A096938.P12925283428407525707

`abs(A112201(A008486(n)))`
-/

namespace A096938.P12925283428407525707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A112201 (A008486 n).toNat|

end

end A096938.P12925283428407525707

/-! ## A096938.P3671095005930749333

`abs(A112201(A005843(n)+n))`
-/

namespace A096938.P3671095005930749333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A112201 (A005843 n + (n : ℤ)).toNat|

end

end A096938.P3671095005930749333

/-! ## A096938.P338262503187426076

`abs(A112201(A008586(n)-n))`
-/

namespace A096938.P338262503187426076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A112201 (A008586 n - (n : ℤ)).toNat|

end

end A096938.P338262503187426076

/-! ## A096938.P9442358881105361032

`A112203(A008585(n))%A257446(n+1)`
-/

namespace A096938.P9442358881105361032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A112203 (A008585 n).toNat) (A257446 (n + 1))

end

end A096938.P9442358881105361032

/-! ## A096938.P12582959226177143625

`A112201(A008585(n))%A283320(n+1)`
-/

namespace A096938.P12582959226177143625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A112201 (A008585 n).toNat) (A283320 (n + 1))

end

end A096938.P12582959226177143625

/-! ## A096938.P8979156752575529085

`A290307(∑[n+1]+4*n+9)`
-/

namespace A096938.P8979156752575529085
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290307 (∑ j ∈ Finset.range (n + 1), f1 j + (4 * n + 9))

end

end A096938.P8979156752575529085

/-!
# A096939: Number of sets of odd number of even lists, cf. A000262.

The programs for A096939, there is no canonical definition to state claims against.
-/

/-! ## A096939.P2816380228536220984

`A000262(n+1)-A096965(n+1)`
-/

namespace A096939.P2816380228536220984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000262 (n + 1) - A096965 (n + 1)

end

end A096939.P2816380228536220984

/-! ## A096939.P236397125285354418

`(A000262(n+1)-A111884(n+1))/2`
-/

namespace A096939.P236397125285354418
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000262 (n + 1) - A111884 (n + 1) : ℚ) / 2

end

end A096939.P236397125285354418

/-!
# A096940: Pascal (1,5) triangle.

The programs for A096940, the canonical program `A096940.P1666605663653703973` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A096940 has offset 0).

The definition of A096940 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A096940.P1666605663653703973

`A097805(n)+A095666(n)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A096940

/-- `A097805(n)+A095666(n)` -/
def P1666605663653703973.Spec : Prop :=
  ∀ n, P1666605663653703973.a n = A096940 n

theorem P1666605663653703973.correct : P1666605663653703973.Spec := by
  intro n
  simp only [A096940]

end A096940

/-! ## A096940.P3124467263143978903

`A096956(n)-A097805(n)`
-/

namespace A096940.P3124467263143978903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096956 n - A097805 n

end

end A096940.P3124467263143978903

namespace A096940

/-- `A096956(n)-A097805(n)` -/
def P3124467263143978903.Spec : Prop :=
  ∀ n, P3124467263143978903.a n = A096940 n

end A096940

/-! ## A096940.P17835991862822742674

`A112467(n)+2*A029635(n)`
-/

namespace A096940.P17835991862822742674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112467 n + 2 * A029635 n

end

end A096940.P17835991862822742674

namespace A096940

/-- `A112467(n)+2*A029635(n)` -/
def P17835991862822742674.Spec : Prop :=
  ∀ n, P17835991862822742674.a n = A096940 n

end A096940

/-! ## A096940.P13282188585030899226

`A095660(n)+2*A097805(n)`
-/

namespace A096940.P13282188585030899226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095660 n + 2 * A097805 n

end

end A096940.P13282188585030899226

namespace A096940

/-- `A095660(n)+2*A097805(n)` -/
def P13282188585030899226.Spec : Prop :=
  ∀ n, P13282188585030899226.a n = A096940 n

end A096940

/-! ## A096940.P7732145817519206481

`2*A095660(n)-A007318(n)`
-/

namespace A096940.P7732145817519206481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A095660 n - A007318 n

end

end A096940.P7732145817519206481

namespace A096940

/-- `2*A095660(n)-A007318(n)` -/
def P7732145817519206481.Spec : Prop :=
  ∀ n, P7732145817519206481.a n = A096940 n

end A096940

/-! ## A096940.P3424095726535422311

`A029635(n)+3*A097805(n)`
-/

namespace A096940.P3424095726535422311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029635 n + 3 * A097805 n

end

end A096940.P3424095726535422311

namespace A096940

/-- `A029635(n)+3*A097805(n)` -/
def P3424095726535422311.Spec : Prop :=
  ∀ n, P3424095726535422311.a n = A096940 n

end A096940

/-! ## A096940.P6090664788045216063

`2*A095666(n)-A095660(n)`
-/

namespace A096940.P6090664788045216063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A095666 n - A095660 n

end

end A096940.P6090664788045216063

namespace A096940

/-- `2*A095666(n)-A095660(n)` -/
def P6090664788045216063.Spec : Prop :=
  ∀ n, P6090664788045216063.a n = A096940 n

end A096940

/-! ## A096940.P14054418350852188919

`(A096956(n)+A095666(n))/2`
-/

namespace A096940.P14054418350852188919
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A096956 n + A095666 n : ℚ) / 2

end

end A096940.P14054418350852188919

namespace A096940

/-- `(A096956(n)+A095666(n))/2` -/
def P14054418350852188919.Spec : Prop :=
  ∀ n, P14054418350852188919.a n = (A096940 n : ℚ)

end A096940

/-! ## A096940.P13206916769704759085

`A029635(n)+A095666(n)-A007318(n)`
-/

namespace A096940.P13206916769704759085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029635 n + (A095666 n - A007318 n)

end

end A096940.P13206916769704759085

namespace A096940

/-- `A029635(n)+A095666(n)-A007318(n)` -/
def P13206916769704759085.Spec : Prop :=
  ∀ n, P13206916769704759085.a n = A096940 n

end A096940

/-! ## A096940.P10696779403696507330

`A007318(n)+A096956(n)-A029635(n)`
-/

namespace A096940.P10696779403696507330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + (A096956 n - A029635 n)

end

end A096940.P10696779403696507330

namespace A096940

/-- `A007318(n)+A096956(n)-A029635(n)` -/
def P10696779403696507330.Spec : Prop :=
  ∀ n, P10696779403696507330.a n = A096940 n

end A096940

/-! ## A096940.P14415124685385362087

`A095660(n)+A095666(n)-A029635(n)`
-/

namespace A096940.P14415124685385362087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095660 n + (A095666 n - A029635 n)

end

end A096940.P14415124685385362087

namespace A096940

/-- `A095660(n)+A095666(n)-A029635(n)` -/
def P14415124685385362087.Spec : Prop :=
  ∀ n, P14415124685385362087.a n = A096940 n

end A096940

/-! ## A096940.P14287917917003170520

`A029635(n)+A096956(n)-A095660(n)`
-/

namespace A096940.P14287917917003170520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029635 n + (A096956 n - A095660 n)

end

end A096940.P14287917917003170520

namespace A096940

/-- `A029635(n)+A096956(n)-A095660(n)` -/
def P14287917917003170520.Spec : Prop :=
  ∀ n, P14287917917003170520.a n = A096940 n

end A096940

/-! ## A096940.P14479632063832332463

`A093562(A038722(n+2))`
-/

namespace A096940.P14479632063832332463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093562 (A038722 (n + 2)).toNat

end

end A096940.P14479632063832332463

namespace A096940

/-- `A093562(A038722(n+2))` -/
def P14479632063832332463.Spec : Prop :=
  ∀ n, P14479632063832332463.a n = A096940 n

end A096940

/-! ## A096940.P1500290043215484542

`A093562(A061579(n+1)+1)`
-/

namespace A096940.P1500290043215484542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093562 (A061579 (n + 1) + 1).toNat

end

end A096940.P1500290043215484542

namespace A096940

/-- `A093562(A061579(n+1)+1)` -/
def P1500290043215484542.Spec : Prop :=
  ∀ n, P1500290043215484542.a n = A096940 n

end A096940

/-! ## A096940.P1800678940263880200

`A097805(n+1)+A008587(A097805(n))`
-/

namespace A096940.P1800678940263880200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 (n + 1) + A008587 (A097805 n).toNat

end

end A096940.P1800678940263880200

namespace A096940

/-- `A097805(n+1)+A008587(A097805(n))` -/
def P1800678940263880200.Spec : Prop :=
  ∀ n, P1800678940263880200.a n = A096940 n

end A096940

/-! ## A096940.P13805306537376464570

`A008589(A097805(n))-(A112467(n)+A097805(n))`
-/

namespace A096940.P13805306537376464570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008589 (A097805 n).toNat - (A112467 n + A097805 n)

end

end A096940.P13805306537376464570

namespace A096940

/-- `A008589(A097805(n))-(A112467(n)+A097805(n))` -/
def P13805306537376464570.Spec : Prop :=
  ∀ n, P13805306537376464570.a n = A096940 n

end A096940

/-! ## A096940.P5387136002077393161

`A007318(n)-(A097805(n)-A008587(A097805(n)))`
-/

namespace A096940.P5387136002077393161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n - (A097805 n - A008587 (A097805 n).toNat)

end

end A096940.P5387136002077393161

namespace A096940

/-- `A007318(n)-(A097805(n)-A008587(A097805(n)))` -/
def P5387136002077393161.Spec : Prop :=
  ∀ n, P5387136002077393161.a n = A096940 n

end A096940

/-!
# A096941: Fourth column of (1,5)-Pascal triangle A096940.

The programs for A096941, the canonical program `A096941.P14009321199420802782` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A096941 has offset 0).

The definition of A096941 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A096941.P14009321199420802782

`(n+15)*(n+2)*(n+1)/6`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A096941

/-- `(n+15)*(n+2)*(n+1)/6` -/
def P14009321199420802782.Spec : Prop :=
  ∀ n, P14009321199420802782.a n = (A096941 n : ℚ)

end A096941

/-! ## A096941.P1287075362726969796

`abs(∑[∑[xor(n, -1)-4]])`
-/

namespace A096941.P1287075362726969796
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-1) - 4

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A096941.P1287075362726969796

namespace A096941

/-- `abs(∑[∑[xor(n, -1)-4]])` -/
def P1287075362726969796.Spec : Prop :=
  ∀ n, P1287075362726969796.a n = A096941 n

end A096941

/-! ## A096941.P6490777243296469828

`-∑[∑[xor(n, -1)-4]]`
-/

namespace A096941.P6490777243296469828
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-1) - 4

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A096941.P6490777243296469828

namespace A096941

/-- `-∑[∑[xor(n, -1)-4]]` -/
def P6490777243296469828.Spec : Prop :=
  ∀ n, P6490777243296469828.a n = A096941 n

end A096941

/-! ## A096941.P13688520490855271916

`∑[∑[ogf((5-4x)/(1-2x+x^2))]]`
-/

namespace A096941.P13688520490855271916
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, -4] [1, -2, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A096941.P13688520490855271916

namespace A096941

/-- `∑[∑[ogf((5-4x)/(1-2x+x^2))]]` -/
def P13688520490855271916.Spec : Prop :=
  ∀ n, P13688520490855271916.a n = A096941 n

end A096941

/-! ## A096941.P2913443636160933883

`ogf((5-4x)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A096941.P2913443636160933883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, -4] [1, -4, 6, -4, 1] n

end

end A096941.P2913443636160933883

namespace A096941

/-- `ogf((5-4x)/(1-4x+6x^2-4x^3+x^4))` -/
def P2913443636160933883.Spec : Prop :=
  ∀ n, P2913443636160933883.a n = A096941 n

end A096941

/-! ## A096941.P8631939992098088780

`C(n+3, 3)+2*(n+1)*(n+2)`
-/

namespace A096941.P8631939992098088780
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 3) 3 + 2 * ((n + 1) * (n + 2))

end

end A096941.P8631939992098088780

namespace A096941

/-- `C(n+3, 3)+2*(n+1)*(n+2)` -/
def P8631939992098088780.Spec : Prop :=
  ∀ n, (P8631939992098088780.a n : ℤ) = A096941 n

end A096941

/-! ## A096941.P12069471297650474399

`∑[∑[A020710(n)]]`
-/

namespace A096941.P12069471297650474399
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020710 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A096941.P12069471297650474399

namespace A096941

/-- `∑[∑[A020710(n)]]` -/
def P12069471297650474399.Spec : Prop :=
  ∀ n, P12069471297650474399.a n = A096941 n

end A096941

/-! ## A096941.P10726081360421160718

`A394185(n)+2+n`
-/

namespace A096941.P10726081360421160718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394185 n + 2 + (n : ℤ)

end

end A096941.P10726081360421160718

namespace A096941

/-- `A394185(n)+2+n` -/
def P10726081360421160718.Spec : Prop :=
  ∀ n, P10726081360421160718.a n = A096941 n

end A096941

/-! ## A096941.P2781409341498520304

`A101853(n+1)-(n+1)`
-/

namespace A096941.P2781409341498520304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101853 (n + 1) - (n + 1 : ℤ)

end

end A096941.P2781409341498520304

namespace A096941

/-- `A101853(n+1)-(n+1)` -/
def P2781409341498520304.Spec : Prop :=
  ∀ n, P2781409341498520304.a n = A096941 n

end A096941

/-! ## A096941.P4526157651716649071

`A134594(n)+a(n-2)` with `a(0)=5, a(1)=16`
-/

namespace A096941.P4526157651716649071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5, 16] fun n a =>
  A134594 n + a (n - 2)

end

end A096941.P4526157651716649071

namespace A096941

/-- `A134594(n)+a(n-2)` -/
def P4526157651716649071.Spec : Prop :=
  ∀ n, P4526157651716649071.a n = A096941 n

end A096941

/-! ## A096941.P14713098130124043726

`A023551(n+1)-4*(n+1)`
-/

namespace A096941.P14713098130124043726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1) - (4 * (n + 1) : ℤ)

end

end A096941.P14713098130124043726

namespace A096941

/-- `A023551(n+1)-4*(n+1)` -/
def P14713098130124043726.Spec : Prop :=
  ∀ n, P14713098130124043726.a n = A096941 n

end A096941

/-! ## A096941.P16056036568185394942

`A046092(n+1)+C(n+3, 3)`
-/

namespace A096941.P16056036568185394942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046092 (n + 1) + (Nat.choose (n + 3) 3 : ℤ)

end

end A096941.P16056036568185394942

namespace A096941

/-- `A046092(n+1)+C(n+3, 3)` -/
def P16056036568185394942.Spec : Prop :=
  ∀ n, P16056036568185394942.a n = A096941 n

end A096941

/-! ## A096941.P10415182964659467255

`A008778(n+1)+n*(n+2)`
-/

namespace A096941.P10415182964659467255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 (n + 1) + (n * (n + 2) : ℤ)

end

end A096941.P10415182964659467255

namespace A096941

/-- `A008778(n+1)+n*(n+2)` -/
def P10415182964659467255.Spec : Prop :=
  ∀ n, P10415182964659467255.a n = A096941 n

end A096941

/-! ## A096941.P16867711206100967117

`A143058(n)+A016897(n)`
-/

namespace A096941.P16867711206100967117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143058 n + A016897 n

end

end A096941.P16867711206100967117

namespace A096941

/-- `A143058(n)+A016897(n)` -/
def P16867711206100967117.Spec : Prop :=
  ∀ n, P16867711206100967117.a n = A096941 n

end A096941

/-! ## A096941.P8461320105020856522

`A087863(n)-A028387(n)`
-/

namespace A096941.P8461320105020856522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087863 n - A028387 n

end

end A096941.P8461320105020856522

namespace A096941

/-- `A087863(n)-A028387(n)` -/
def P8461320105020856522.Spec : Prop :=
  ∀ n, P8461320105020856522.a n = A096941 n

end A096941

/-! ## A096941.P14857228444349842854

`A240001(n+1)+A045943(n)`
-/

namespace A096941.P14857228444349842854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240001 (n + 1) + A045943 n

end

end A096941.P14857228444349842854

namespace A096941

/-- `A240001(n+1)+A045943(n)` -/
def P14857228444349842854.Spec : Prop :=
  ∀ n, P14857228444349842854.a n = A096941 n

end A096941

/-! ## A096941.P5969406447406184897

`A188554(n+1)+A131895(n)`
-/

namespace A096941.P5969406447406184897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188554 (n + 1) + A131895 n

end

end A096941.P5969406447406184897

namespace A096941

/-- `A188554(n+1)+A131895(n)` -/
def P5969406447406184897.Spec : Prop :=
  ∀ n, P5969406447406184897.a n = A096941 n

end A096941

/-! ## A096941.P11399276256799450300

`A271625(n+1)+A074742(n)`
-/

namespace A096941.P11399276256799450300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271625 (n + 1) + A074742 n

end

end A096941.P11399276256799450300

namespace A096941

/-- `A271625(n+1)+A074742(n)` -/
def P11399276256799450300.Spec : Prop :=
  ∀ n, P11399276256799450300.a n = A096941 n

end A096941

/-! ## A096941.P18286006479865816165

`A096957(n)-A000217(n+1)`
-/

namespace A096941.P18286006479865816165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096957 n - A000217 (n + 1)

end

end A096941.P18286006479865816165

namespace A096941

/-- `A096957(n)-A000217(n+1)` -/
def P18286006479865816165.Spec : Prop :=
  ∀ n, P18286006479865816165.a n = A096941 n

end A096941

/-! ## A096941.P13404967775538328002

`A023545(n+1)-A080956(n)`
-/

namespace A096941.P13404967775538328002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1) - A080956 n

end

end A096941.P13404967775538328002

namespace A096941

/-- `A023545(n+1)-A080956(n)` -/
def P13404967775538328002.Spec : Prop :=
  ∀ n, P13404967775538328002.a n = A096941 n

end A096941

/-!
# A096942: Fifth column of (1,5)-Pascal triangle A096940.

The programs for A096942, the canonical program `A096942.P1465613997806510593` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A096942 has offset 0).

The definition of A096942 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A096942.P1465613997806510593

`(n+20)*C(n+3, 3)/4`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A096942

/-- `(n+20)*C(n+3, 3)/4` -/
def P1465613997806510593.Spec : Prop :=
  ∀ n, P1465613997806510593.a n = (A096942 n : ℚ)

end A096942

/-! ## A096942.P5195580502088150757

`∑[∑[∑[5+n]]]`
-/

namespace A096942.P5195580502088150757
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 + n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A096942.P5195580502088150757

namespace A096942

/-- `∑[∑[∑[5+n]]]` -/
def P5195580502088150757.Spec : Prop :=
  ∀ n, (P5195580502088150757.a n : ℤ) = A096942 n

end A096942

/-! ## A096942.P9352292860828973116

`and(∑[A096941(n)], -1)`
-/

namespace A096942.P9352292860828973116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096941 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (∑ j ∈ Finset.range (n + 1), f1 j) (-1)

end

end A096942.P9352292860828973116

namespace A096942

/-- `and(∑[A096941(n)], -1)` -/
def P9352292860828973116.Spec : Prop :=
  ∀ n, P9352292860828973116.a n = A096942 n

end A096942

/-! ## A096942.P9102429531946465238

`A095667(n)+C(n+3, 3)`
-/

namespace A096942.P9102429531946465238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095667 n + (Nat.choose (n + 3) 3 : ℤ)

end

end A096942.P9102429531946465238

namespace A096942

/-- `A095667(n)+C(n+3, 3)` -/
def P9102429531946465238.Spec : Prop :=
  ∀ n, P9102429531946465238.a n = A096942 n

end A096942

/-! ## A096942.P8851532589159593904

`A154286(n)-∑[∑[∑[4*n]]]`
-/

namespace A096942.P8851532589159593904
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154286 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A096942.P8851532589159593904

namespace A096942

/-- `A154286(n)-∑[∑[∑[4*n]]]` -/
def P8851532589159593904.Spec : Prop :=
  ∀ n, P8851532589159593904.a n = A096942 n

end A096942

/-! ## A096942.P11874464002891158548

`A006504(n+1)+A000292(n)`
-/

namespace A096942.P11874464002891158548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1) + A000292 n

end

end A096942.P11874464002891158548

namespace A096942

/-- `A006504(n+1)+A000292(n)` -/
def P11874464002891158548.Spec : Prop :=
  ∀ n, P11874464002891158548.a n = A096942 n

end A096942

/-! ## A096942.P15939260765932340522

`A095667(n)+A000292(n+1)`
-/

namespace A096942.P15939260765932340522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095667 n + A000292 (n + 1)

end

end A096942.P15939260765932340522

namespace A096942

/-- `A095667(n)+A000292(n+1)` -/
def P15939260765932340522.Spec : Prop :=
  ∀ n, P15939260765932340522.a n = A096942 n

end A096942

/-! ## A096942.P14888468237077405529

`A155757(n+1)+A005587(n)`
-/

namespace A096942.P14888468237077405529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155757 (n + 1) + A005587 n

end

end A096942.P14888468237077405529

namespace A096942

/-- `A155757(n+1)+A005587(n)` -/
def P14888468237077405529.Spec : Prop :=
  ∀ n, P14888468237077405529.a n = A096942 n

end A096942

/-! ## A096942.P12137820202838817331

`A127736(n+1)+A063258(n)`
-/

namespace A096942.P12137820202838817331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127736 (n + 1) + A063258 n

end

end A096942.P12137820202838817331

namespace A096942

/-- `A127736(n+1)+A063258(n)` -/
def P12137820202838817331.Spec : Prop :=
  ∀ n, P12137820202838817331.a n = A096942 n

end A096942

/-! ## A096942.P16447840305473666544

`A162254(n+1)+A101338(n)`
-/

namespace A096942.P16447840305473666544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162254 (n + 1) + A101338 n

end

end A096942.P16447840305473666544

namespace A096942

/-- `A162254(n+1)+A101338(n)` -/
def P16447840305473666544.Spec : Prop :=
  ∀ n, P16447840305473666544.a n = A096942 n

end A096942

/-! ## A096942.P15680426461441814481

`A096958(n)-A000292(n+1)`
-/

namespace A096942.P15680426461441814481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096958 n - A000292 (n + 1)

end

end A096942.P15680426461441814481

namespace A096942

/-- `A096958(n)-A000292(n+1)` -/
def P15680426461441814481.Spec : Prop :=
  ∀ n, P15680426461441814481.a n = A096942 n

end A096942

/-! ## A096942.P1130413053598779483

`A084990(n)+A005287(n+4)`
-/

namespace A096942.P1130413053598779483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084990 n + A005287 (n + 4)

end

end A096942.P1130413053598779483

namespace A096942

/-- `A084990(n)+A005287(n+4)` -/
def P1130413053598779483.Spec : Prop :=
  ∀ n, P1130413053598779483.a n = A096942 n

end A096942

/-! ## A096942.P7669280691309758374

`2*A095667(n)-A095661(n)`
-/

namespace A096942.P7669280691309758374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A095667 n - A095661 n

end

end A096942.P7669280691309758374

namespace A096942

/-- `2*A095667(n)-A095661(n)` -/
def P7669280691309758374.Spec : Prop :=
  ∀ n, P7669280691309758374.a n = A096942 n

end A096942

/-! ## A096942.P4320051472510149702

`A005701(n)-A167543(n+8)`
-/

namespace A096942.P4320051472510149702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005701 n - A167543 (n + 8)

end

end A096942.P4320051472510149702

namespace A096942

/-- `A005701(n)-A167543(n+8)` -/
def P4320051472510149702.Spec : Prop :=
  ∀ n, P4320051472510149702.a n = A096942 n

end A096942

/-! ## A096942.P16393103319371664715

`A143941(n+1)+A051743(n+1)`
-/

namespace A096942.P16393103319371664715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143941 (n + 1) + A051743 (n + 1)

end

end A096942.P16393103319371664715

namespace A096942

/-- `A143941(n+1)+A051743(n+1)` -/
def P16393103319371664715.Spec : Prop :=
  ∀ n, P16393103319371664715.a n = A096942 n

end A096942

/-! ## A096942.P9543106222270467874

`A223764(n+1)+A112524(n+1)`
-/

namespace A096942.P9543106222270467874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223764 (n + 1) + A112524 (n + 1)

end

end A096942.P9543106222270467874

namespace A096942

/-- `A223764(n+1)+A112524(n+1)` -/
def P9543106222270467874.Spec : Prop :=
  ∀ n, P9543106222270467874.a n = A096942 n

end A096942

/-! ## A096942.P7750227436860888738

`A101854(n+1)-A000217(n+1)`
-/

namespace A096942.P7750227436860888738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101854 (n + 1) - A000217 (n + 1)

end

end A096942.P7750227436860888738

namespace A096942

/-- `A101854(n+1)-A000217(n+1)` -/
def P7750227436860888738.Spec : Prop :=
  ∀ n, P7750227436860888738.a n = A096942 n

end A096942

/-! ## A096942.P4830838436515851597

`A159920(n+2)+A022815(n+1)`
-/

namespace A096942.P4830838436515851597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159920 (n + 2) + A022815 (n + 1)

end

end A096942.P4830838436515851597

namespace A096942

/-- `A159920(n+2)+A022815(n+1)` -/
def P4830838436515851597.Spec : Prop :=
  ∀ n, P4830838436515851597.a n = A096942 n

end A096942

/-! ## A096942.P13370153668036409813

`A024191(n+1)+2*A000292(n)`
-/

namespace A096942.P13370153668036409813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024191 (n + 1) + 2 * A000292 n

end

end A096942.P13370153668036409813

namespace A096942

/-- `A024191(n+1)+2*A000292(n)` -/
def P13370153668036409813.Spec : Prop :=
  ∀ n, P13370153668036409813.a n = A096942 n

end A096942

/-! ## A096942.P8355117072081397782

`A393148(n+4)+A060488(n+3)`
-/

namespace A096942.P8355117072081397782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393148 (n + 4) + A060488 (n + 3)

end

end A096942.P8355117072081397782

namespace A096942

/-- `A393148(n+4)+A060488(n+3)` -/
def P8355117072081397782.Spec : Prop :=
  ∀ n, P8355117072081397782.a n = A096942 n

end A096942

/-!
# A096943: Sixth column of (1,5)-Pascal triangle A096940.

The programs for A096943, the canonical program `A096943.P13461303124541761594` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A096943 has offset 0).

The definition of A096943 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A096943.P13461303124541761594

`(n+25)*C(n+4, 4)/5`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A096943

/-- `(n+25)*C(n+4, 4)/5` -/
def P13461303124541761594.Spec : Prop :=
  ∀ n, P13461303124541761594.a n = (A096943 n : ℚ)

end A096943

/-! ## A096943.P14727218153049152550

`∑[∑[∑[∑[5+n]]]]`
-/

namespace A096943.P14727218153049152550
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 + n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A096943.P14727218153049152550

namespace A096943

/-- `∑[∑[∑[∑[5+n]]]]` -/
def P14727218153049152550.Spec : Prop :=
  ∀ n, (P14727218153049152550.a n : ℤ) = A096943 n

end A096943

/-! ## A096943.P11015904087088730913

`A096942(n)+a(n-1)` with `a(0)=5`
-/

namespace A096943.P11015904087088730913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  A096942 n + a (n - 1)

end

end A096943.P11015904087088730913

namespace A096943

/-- `A096942(n)+a(n-1)` -/
def P11015904087088730913.Spec : Prop :=
  ∀ n, P11015904087088730913.a n = A096943 n

end A096943

/-! ## A096943.P8408830024530427958

`A290312(n)+A027659(n)`
-/

namespace A096943.P8408830024530427958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290312 n + A027659 n

end

end A096943.P8408830024530427958

namespace A096943

/-- `A290312(n)+A027659(n)` -/
def P8408830024530427958.Spec : Prop :=
  ∀ n, P8408830024530427958.a n = A096943 n

end A096943

/-! ## A096943.P12121724368402677272

`∑[A096942(n)]%A016900(n)`
-/

namespace A096943.P12121724368402677272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096942 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A016900 n)

end

end A096943.P12121724368402677272

namespace A096943

/-- `∑[A096942(n)]%A016900(n)` -/
def P12121724368402677272.Spec : Prop :=
  ∀ n, P12121724368402677272.a n = A096943 n

end A096943

/-! ## A096943.P1595503588623156979

`lcm(∑[A096942(n)], A000034(n))`
-/

namespace A096943.P1595503588623156979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096942 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (∑ j ∈ Finset.range (n + 1), f1 j) (A000034 n)

end

end A096943.P1595503588623156979

namespace A096943

/-- `lcm(∑[A096942(n)], A000034(n))` -/
def P1595503588623156979.Spec : Prop :=
  ∀ n, (P1595503588623156979.a n : ℤ) = A096943 n

end A096943

/-! ## A096943.P14768690596127509348

`or(∑[A096942(n)], A000007(n))`
-/

namespace A096943.P14768690596127509348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096942 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (∑ j ∈ Finset.range (n + 1), f1 j) (A000007 n)

end

end A096943.P14768690596127509348

namespace A096943

/-- `or(∑[A096942(n)], A000007(n))` -/
def P14768690596127509348.Spec : Prop :=
  ∀ n, P14768690596127509348.a n = A096943 n

end A096943

/-! ## A096943.P6737958776404679576

`A027777(n+2)-A051879(n)`
-/

namespace A096943.P6737958776404679576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027777 (n + 2) - A051879 n

end

end A096943.P6737958776404679576

namespace A096943

/-- `A027777(n+2)-A051879(n)` -/
def P6737958776404679576.Spec : Prop :=
  ∀ n, P6737958776404679576.a n = A096943 n

end A096943

/-! ## A096943.P13407237143278247762

`A253945(n+4)-A027800(n)`
-/

namespace A096943.P13407237143278247762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253945 (n + 4) - A027800 n

end

end A096943.P13407237143278247762

namespace A096943

/-- `A253945(n+4)-A027800(n)` -/
def P13407237143278247762.Spec : Prop :=
  ∀ n, P13407237143278247762.a n = A096943 n

end A096943

/-! ## A096943.P5039085776083926042

`2*A095668(n)-∑[A095661(n)]`
-/

namespace A096943.P5039085776083926042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095661 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A095668 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A096943.P5039085776083926042

namespace A096943

/-- `2*A095668(n)-∑[A095661(n)]` -/
def P5039085776083926042.Spec : Prop :=
  ∀ n, P5039085776083926042.a n = A096943 n

end A096943

/-! ## A096943.P11078770244422573484

`2*A095668(n)-A000574(n+3)`
-/

namespace A096943.P11078770244422573484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A095668 n - A000574 (n + 3)

end

end A096943.P11078770244422573484

namespace A096943

/-- `2*A095668(n)-A000574(n+3)` -/
def P11078770244422573484.Spec : Prop :=
  ∀ n, P11078770244422573484.a n = A096943 n

end A096943

/-! ## A096943.P16336724197332080038

`3*A005583(n+1)-A005585(n+1)`
-/

namespace A096943.P16336724197332080038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A005583 (n + 1) - A005585 (n + 1)

end

end A096943.P16336724197332080038

namespace A096943

/-- `3*A005583(n+1)-A005585(n+1)` -/
def P16336724197332080038.Spec : Prop :=
  ∀ n, P16336724197332080038.a n = A096943 n

end A096943

/-! ## A096943.P8234961400115873280

`A051880(n+1)-(A034263(n+1)+A027800(n))`
-/

namespace A096943.P8234961400115873280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051880 (n + 1) - (A034263 (n + 1) + A027800 n)

end

end A096943.P8234961400115873280

namespace A096943

/-- `A051880(n+1)-(A034263(n+1)+A027800(n))` -/
def P8234961400115873280.Spec : Prop :=
  ∀ n, P8234961400115873280.a n = A096943 n

end A096943

/-! ## A096943.P18318252494584904142

`A033488(n+1)+C(n+5, 5)`
-/

namespace A096943.P18318252494584904142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033488 (n + 1) + (Nat.choose (n + 5) 5 : ℤ)

end

end A096943.P18318252494584904142

namespace A096943

/-- `A033488(n+1)+C(n+5, 5)` -/
def P18318252494584904142.Spec : Prop :=
  ∀ n, P18318252494584904142.a n = A096943 n

end A096943

/-! ## A096943.P9602474203296072993

`A056118(n+1)-(A027800(n+1)+A027800(n))`
-/

namespace A096943.P9602474203296072993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056118 (n + 1) - (A027800 (n + 1) + A027800 n)

end

end A096943.P9602474203296072993

namespace A096943

/-- `A056118(n+1)-(A027800(n+1)+A027800(n))` -/
def P9602474203296072993.Spec : Prop :=
  ∀ n, P9602474203296072993.a n = A096943 n

end A096943

/-! ## A096943.P6147029139110407674

`A096944(n+1)-(A096944(n)+A096942(n+1))`
-/

namespace A096943.P6147029139110407674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096944 (n + 1) - (A096944 n + A096942 (n + 1))

end

end A096943.P6147029139110407674

namespace A096943

/-- `A096944(n+1)-(A096944(n)+A096942(n+1))` -/
def P6147029139110407674.Spec : Prop :=
  ∀ n, P6147029139110407674.a n = A096943 n

end A096943

/-! ## A096943.P1950765719541886806

`A051878(n+1)-(A027800(n)+A005585(n+2))`
-/

namespace A096943.P1950765719541886806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051878 (n + 1) - (A027800 n + A005585 (n + 2))

end

end A096943.P1950765719541886806

namespace A096943

/-- `A051878(n+1)-(A027800(n)+A005585(n+2))` -/
def P1950765719541886806.Spec : Prop :=
  ∀ n, P1950765719541886806.a n = A096943 n

end A096943

/-! ## A096943.P16607438748341687592

`A051740(n+1)+A051836(n+1)-A005585(n+2)`
-/

namespace A096943.P16607438748341687592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051740 (n + 1) + (A051836 (n + 1) - A005585 (n + 2))

end

end A096943.P16607438748341687592

namespace A096943

/-- `A051740(n+1)+A051836(n+1)-A005585(n+2)` -/
def P16607438748341687592.Spec : Prop :=
  ∀ n, P16607438748341687592.a n = A096943 n

end A096943

/-! ## A096943.P8095995007298085527

`A051747(n+1)+A002624(2*n+1)`
-/

namespace A096943.P8095995007298085527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051747 (n + 1) + A002624 (2 * n + 1)

end

end A096943.P8095995007298085527

namespace A096943

/-- `A051747(n+1)+A002624(2*n+1)` -/
def P8095995007298085527.Spec : Prop :=
  ∀ n, P8095995007298085527.a n = A096943 n

end A096943

/-! ## A096943.P8378078362639861955

`A005583(n+1)+A000217(A000096(n+1))`
-/

namespace A096943.P8378078362639861955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005583 (n + 1) + A000217 (A000096 (n + 1)).toNat

end

end A096943.P8378078362639861955

namespace A096943

/-- `A005583(n+1)+A000217(A000096(n+1))` -/
def P8378078362639861955.Spec : Prop :=
  ∀ n, P8378078362639861955.a n = A096943 n

end A096943

/-!
# A096944: Seventh column of (1,5)-Pascal triangle A096940.

The programs for A096944, the canonical program `A096944.P9081616903334744874` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A096944 has offset 0).

The definition of A096944 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A096944.P9081616903334744874

`(n+30)*C(n+5, 5)/6`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A096944

/-- `(n+30)*C(n+5, 5)/6` -/
def P9081616903334744874.Spec : Prop :=
  ∀ n, P9081616903334744874.a n = (A096944 n : ℚ)

end A096944

/-! ## A096944.P6730001202201074567

`∑[∑[∑[∑[∑[5+n]]]]]`
-/

namespace A096944.P6730001202201074567
noncomputable section

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 + n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A096944.P6730001202201074567

namespace A096944

/-- `∑[∑[∑[∑[∑[5+n]]]]]` -/
def P6730001202201074567.Spec : Prop :=
  ∀ n, (P6730001202201074567.a n : ℤ) = A096944 n

end A096944

/-! ## A096944.P5961363494374671711

`A096943(n)+a(n-1)` with `a(0)=5`
-/

namespace A096944.P5961363494374671711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  A096943 n + a (n - 1)

end

end A096944.P5961363494374671711

namespace A096944

/-- `A096943(n)+a(n-1)` -/
def P5961363494374671711.Spec : Prop :=
  ∀ n, P5961363494374671711.a n = A096944 n

end A096944

/-! ## A096944.P10819301067057356062

`or(∑[A096943(n)], A000007(n))`
-/

namespace A096944.P10819301067057356062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096943 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (∑ j ∈ Finset.range (n + 1), f1 j) (A000007 n)

end

end A096944.P10819301067057356062

namespace A096944

/-- `or(∑[A096943(n)], A000007(n))` -/
def P10819301067057356062.Spec : Prop :=
  ∀ n, P10819301067057356062.a n = A096944 n

end A096944

/-! ## A096944.P297025405114701287

`2*A095669(n)-A095662(n)`
-/

namespace A096944.P297025405114701287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A095669 n - A095662 n

end

end A096944.P297025405114701287

namespace A096944

/-- `2*A095669(n)-A095662(n)` -/
def P297025405114701287.Spec : Prop :=
  ∀ n, P297025405114701287.a n = A096944 n

end A096944

/-! ## A096944.P12981575233069253319

`A253946(n+5)-A051946(n)`
-/

namespace A096944.P12981575233069253319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253946 (n + 5) - A051946 n

end

end A096944.P12981575233069253319

namespace A096944

/-- `A253946(n+5)-A051946(n)` -/
def P12981575233069253319.Spec : Prop :=
  ∀ n, P12981575233069253319.a n = A096944 n

end A096944

/-! ## A096944.P1844867691884686977

`A257200(n+1)+A027764(n+3)`
-/

namespace A096944.P1844867691884686977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257200 (n + 1) + A027764 (n + 3)

end

end A096944.P1844867691884686977

namespace A096944

/-- `A257200(n+1)+A027764(n+3)` -/
def P1844867691884686977.Spec : Prop :=
  ∀ n, P1844867691884686977.a n = A096944 n

end A096944

/-! ## A096944.P17319567586155591710

`A096945(n+1)-(A096945(n)+A096943(n+1))`
-/

namespace A096944.P17319567586155591710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096945 (n + 1) - (A096945 n + A096943 (n + 1))

end

end A096944.P17319567586155591710

namespace A096944

/-- `A096945(n+1)-(A096945(n)+A096943(n+1))` -/
def P17319567586155591710.Spec : Prop :=
  ∀ n, P17319567586155591710.a n = A096944 n

end A096944

/-! ## A096944.P11085317971459966784

`A097297(n+1)-(A000574(n+4)+A000574(n+4))`
-/

namespace A096944.P11085317971459966784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097297 (n + 1) - (A000574 (n + 4) + A000574 (n + 4))

end

end A096944.P11085317971459966784

namespace A096944

/-- `A097297(n+1)-(A000574(n+4)+A000574(n+4))` -/
def P11085317971459966784.Spec : Prop :=
  ∀ n, P11085317971459966784.a n = A096944 n

end A096944

/-! ## A096944.P2789613559980248604

`A253942(n+4)+A005584(n+1)`
-/

namespace A096944.P2789613559980248604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253942 (n + 4) + A005584 (n + 1)

end

end A096944.P2789613559980248604

namespace A096944

/-- `A253942(n+4)+A005584(n+1)` -/
def P2789613559980248604.Spec : Prop :=
  ∀ n, P2789613559980248604.a n = A096944 n

end A096944

/-! ## A096944.P9654245904387371858

`A097297(n)-A000389(n+5)`
-/

namespace A096944.P9654245904387371858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097297 n - A000389 (n + 5)

end

end A096944.P9654245904387371858

namespace A096944

/-- `A097297(n)-A000389(n+5)` -/
def P9654245904387371858.Spec : Prop :=
  ∀ n, P9654245904387371858.a n = A096944 n

end A096944

/-! ## A096944.P10135439809999151209

`A096940(A000124(n+6)+5)`
-/

namespace A096944.P10135439809999151209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096940 (A000124 (n + 6) + 5).toNat

end

end A096944.P10135439809999151209

namespace A096944

/-- `A096940(A000124(n+6)+5)` -/
def P10135439809999151209.Spec : Prop :=
  ∀ n, P10135439809999151209.a n = A096944 n

end A096944

/-! ## A096944.P1541015648880068348

`A096940(A000217(n+7)-(n+1))`
-/

namespace A096944.P1541015648880068348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096940 (A000217 (n + 7) - (n + 1 : ℤ)).toNat

end

end A096944.P1541015648880068348

namespace A096944

/-- `A096940(A000217(n+7)-(n+1))` -/
def P1541015648880068348.Spec : Prop :=
  ∀ n, P1541015648880068348.a n = A096944 n

end A096944

/-! ## A096944.P158550573092736582

`A093562(A055999(n+4)-1)`
-/

namespace A096944.P158550573092736582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093562 (A055999 (n + 4) - 1).toNat

end

end A096944.P158550573092736582

namespace A096944

/-- `A093562(A055999(n+4)-1)` -/
def P158550573092736582.Spec : Prop :=
  ∀ n, P158550573092736582.a n = A096944 n

end A096944

/-! ## A096944.P10967486422175069016

`A093562(A000217(n+7)-7)`
-/

namespace A096944.P10967486422175069016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093562 (A000217 (n + 7) - 7).toNat

end

end A096944.P10967486422175069016

namespace A096944

/-- `A093562(A000217(n+7)-7)` -/
def P10967486422175069016.Spec : Prop :=
  ∀ n, P10967486422175069016.a n = A096944 n

end A096944

/-! ## A096944.P3024933992978500185

`A093562(A000124(n+6)+n-1)`
-/

namespace A096944.P3024933992978500185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093562 (A000124 (n + 6) + ((n : ℤ) - 1)).toNat

end

end A096944.P3024933992978500185

namespace A096944

/-- `A093562(A000124(n+6)+n-1)` -/
def P3024933992978500185.Spec : Prop :=
  ∀ n, P3024933992978500185.a n = A096944 n

end A096944

/-! ## A096944.P13770795015897040846

`A093562(2*n+A000096(n+4)+7)`
-/

namespace A096944.P13770795015897040846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093562 ((2 * n : ℤ) + (A000096 (n + 4) + 7)).toNat

end

end A096944.P13770795015897040846

namespace A096944

/-- `A093562(2*n+A000096(n+4)+7)` -/
def P13770795015897040846.Spec : Prop :=
  ∀ n, P13770795015897040846.a n = A096944 n

end A096944

/-! ## A096944.P2558700234216733391

`A093562(2*n+A000217(n+5)+6)`
-/

namespace A096944.P2558700234216733391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093562 ((2 * n : ℤ) + (A000217 (n + 5) + 6)).toNat

end

end A096944.P2558700234216733391

namespace A096944

/-- `A093562(2*n+A000217(n+5)+6)` -/
def P2558700234216733391.Spec : Prop :=
  ∀ n, P2558700234216733391.a n = A096944 n

end A096944

/-!
# A096945: Eighth column of (1,5)-Pascal triangle A096940.

The programs for A096945, the canonical program `A096945.P6090089860918858956` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A096945 has offset 0).

The definition of A096945 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A096945.P6090089860918858956

`(n+35)*C(n+6, 6)/7`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A096945

/-- `(n+35)*C(n+6, 6)/7` -/
def P6090089860918858956.Spec : Prop :=
  ∀ n, P6090089860918858956.a n = (A096945 n : ℚ)

end A096945

/-! ## A096945.P552259876905586256

`∑[∑[∑[∑[∑[∑[5+n]]]]]]`
-/

namespace A096945.P552259876905586256
noncomputable section

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 + n

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A096945.P552259876905586256

namespace A096945

/-- `∑[∑[∑[∑[∑[∑[5+n]]]]]]` -/
def P552259876905586256.Spec : Prop :=
  ∀ n, (P552259876905586256.a n : ℤ) = A096945 n

end A096945

/-! ## A096945.P16994292895650978745

`A096944(n)+a(n-1)` with `a(0)=5`
-/

namespace A096945.P16994292895650978745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  A096944 n + a (n - 1)

end

end A096945.P16994292895650978745

namespace A096945

/-- `A096944(n)+a(n-1)` -/
def P16994292895650978745.Spec : Prop :=
  ∀ n, P16994292895650978745.a n = A096945 n

end A096945

/-! ## A096945.P6254497172922706338

`or(∑[A096944(n)], A000007(n))`
-/

namespace A096945.P6254497172922706338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096944 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (∑ j ∈ Finset.range (n + 1), f1 j) (A000007 n)

end

end A096945.P6254497172922706338

namespace A096945

/-- `or(∑[A096944(n)], A000007(n))` -/
def P6254497172922706338.Spec : Prop :=
  ∀ n, P6254497172922706338.a n = A096945 n

end A096945

/-! ## A096945.P14611140671733460781

`2*A095670(n)-A095663(n)`
-/

namespace A096945.P14611140671733460781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A095670 n - A095663 n

end

end A096945.P14611140671733460781

namespace A096945

/-- `2*A095670(n)-A095663(n)` -/
def P14611140671733460781.Spec : Prop :=
  ∀ n, P14611140671733460781.a n = A096945 n

end A096945

/-! ## A096945.P4682925660573843535

`(A097298(n)+A095670(n))/2`
-/

namespace A096945.P4682925660573843535
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A097298 n + A095670 n : ℚ) / 2

end

end A096945.P4682925660573843535

namespace A096945

/-- `(A097298(n)+A095670(n))/2` -/
def P4682925660573843535.Spec : Prop :=
  ∀ n, P4682925660573843535.a n = (A096945 n : ℚ)

end A096945

/-! ## A096945.P12834213849971410897

`A027766(n+5)-A034265(n)`
-/

namespace A096945.P12834213849971410897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027766 (n + 5) - A034265 n

end

end A096945.P12834213849971410897

namespace A096945

/-- `A027766(n+5)-A034265(n)` -/
def P12834213849971410897.Spec : Prop :=
  ∀ n, P12834213849971410897.a n = A096945 n

end A096945

/-! ## A096945.P14310269982522595248

`A253947(n+6)-A050484(n)`
-/

namespace A096945.P14310269982522595248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253947 (n + 6) - A050484 n

end

end A096945.P14310269982522595248

namespace A096945

/-- `A253947(n+6)-A050484(n)` -/
def P14310269982522595248.Spec : Prop :=
  ∀ n, P14310269982522595248.a n = A096945 n

end A096945

/-! ## A096945.P3985422681198967624

`abs(A033999(n))*∑[A096944(n)]`
-/

namespace A096945.P3985422681198967624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096944 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A033999 n| * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A096945.P3985422681198967624

namespace A096945

/-- `abs(A033999(n))*∑[A096944(n)]` -/
def P3985422681198967624.Spec : Prop :=
  ∀ n, P3985422681198967624.a n = A096945 n

end A096945

/-! ## A096945.P9121090962441504607

`2*A095670(n)-∑[A095662(n)]`
-/

namespace A096945.P9121090962441504607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095662 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A095670 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A096945.P9121090962441504607

namespace A096945

/-- `2*A095670(n)-∑[A095662(n)]` -/
def P9121090962441504607.Spec : Prop :=
  ∀ n, P9121090962441504607.a n = A096945 n

end A096945

/-! ## A096945.P12488293876779281207

`∑[A096944(n)]%A133061(n+1)`
-/

namespace A096945.P12488293876779281207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096944 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A133061 (n + 1))

end

end A096945.P12488293876779281207

namespace A096945

/-- `∑[A096944(n)]%A133061(n+1)` -/
def P12488293876779281207.Spec : Prop :=
  ∀ n, P12488293876779281207.a n = A096945 n

end A096945

/-! ## A096945.P1028814927355904638

`lcm(∑[A096944(n)], A053150(n+1))`
-/

namespace A096945.P1028814927355904638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096944 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (∑ j ∈ Finset.range (n + 1), f1 j) (A053150 (n + 1))

end

end A096945.P1028814927355904638

namespace A096945

/-- `lcm(∑[A096944(n)], A053150(n+1))` -/
def P1028814927355904638.Spec : Prop :=
  ∀ n, (P1028814927355904638.a n : ℤ) = A096945 n

end A096945

/-! ## A096945.P12719303025688105103

`A257200(n+1)+A005715(n+4)`
-/

namespace A096945.P12719303025688105103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257200 (n + 1) + A005715 (n + 4)

end

end A096945.P12719303025688105103

namespace A096945

/-- `A257200(n+1)+A005715(n+4)` -/
def P12719303025688105103.Spec : Prop :=
  ∀ n, P12719303025688105103.a n = A096945 n

end A096945

/-! ## A096945.P5537902622788877331

`2*A095663(n)-A000580(n+7)`
-/

namespace A096945.P5537902622788877331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A095663 n - A000580 (n + 7)

end

end A096945.P5537902622788877331

namespace A096945

/-- `2*A095663(n)-A000580(n+7)` -/
def P5537902622788877331.Spec : Prop :=
  ∀ n, P5537902622788877331.a n = A096945 n

end A096945

/-! ## A096945.P11362318439120089259

`A096946(n+1)-(A096946(n)+A096944(n+1))`
-/

namespace A096945.P11362318439120089259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096946 (n + 1) - (A096946 n + A096944 (n + 1))

end

end A096945.P11362318439120089259

namespace A096945

/-- `A096946(n+1)-(A096946(n)+A096944(n+1))` -/
def P11362318439120089259.Spec : Prop :=
  ∀ n, P11362318439120089259.a n = A096945 n

end A096945

/-! ## A096945.P6628791682357178789

`A096940(A167614(n+6)+4)`
-/

namespace A096945.P6628791682357178789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096940 (A167614 (n + 6) + 4).toNat

end

end A096945.P6628791682357178789

namespace A096945

/-- `A096940(A167614(n+6)+4)` -/
def P6628791682357178789.Spec : Prop :=
  ∀ n, P6628791682357178789.a n = A096945 n

end A096945

/-! ## A096945.P18147944754430992010

`A096940(A000124(n+7)+6)`
-/

namespace A096945.P18147944754430992010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096940 (A000124 (n + 7) + 6).toNat

end

end A096945.P18147944754430992010

namespace A096945

/-- `A096940(A000124(n+7)+6)` -/
def P18147944754430992010.Spec : Prop :=
  ∀ n, P18147944754430992010.a n = A096945 n

end A096945

/-! ## A096945.P3282920568149225800

`A096940(A000217(n+8)-(n+1))`
-/

namespace A096945.P3282920568149225800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096940 (A000217 (n + 8) - (n + 1 : ℤ)).toNat

end

end A096945.P3282920568149225800

namespace A096945

/-- `A096940(A000217(n+8)-(n+1))` -/
def P3282920568149225800.Spec : Prop :=
  ∀ n, P3282920568149225800.a n = A096945 n

end A096945

/-! ## A096945.P13631408064392828834

`A096940(A046691(n+6)-(n-3))`
-/

namespace A096945.P13631408064392828834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096940 (A046691 (n + 6) - ((n : ℤ) - 3)).toNat

end

end A096945.P13631408064392828834

namespace A096945

/-- `A096940(A046691(n+6)-(n-3))` -/
def P13631408064392828834.Spec : Prop :=
  ∀ n, P13631408064392828834.a n = A096945 n

end A096945

/-! ## A096945.P14740986040714979396

`A096940(A167499(n+7)-(n+6))`
-/

namespace A096945.P14740986040714979396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096940 (A167499 (n + 7) - (n + 6 : ℤ)).toNat

end

end A096945.P14740986040714979396

namespace A096945

/-- `A096940(A167499(n+7)-(n+6))` -/
def P14740986040714979396.Spec : Prop :=
  ∀ n, P14740986040714979396.a n = A096945 n

end A096945

/-!
# A096946: Ninth column of (1,5)-Pascal triangle A096940.

The programs for A096946, the canonical program `A096946.P6872704066009263173` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A096946 has offset 0).

The definition of A096946 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A096946.P6872704066009263173

`(n+40)*C(n+7, 7)/8`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A096946

/-- `(n+40)*C(n+7, 7)/8` -/
def P6872704066009263173.Spec : Prop :=
  ∀ n, P6872704066009263173.a n = (A096946 n : ℚ)

end A096946

/-! ## A096946.P10356546321730772549

`∑[∑[∑[∑[∑[∑[∑[5+n]]]]]]]`
-/

namespace A096946.P10356546321730772549
noncomputable section

def f7 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 + n

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f7 j

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A096946.P10356546321730772549

namespace A096946

/-- `∑[∑[∑[∑[∑[∑[∑[5+n]]]]]]]` -/
def P10356546321730772549.Spec : Prop :=
  ∀ n, (P10356546321730772549.a n : ℤ) = A096946 n

end A096946

/-! ## A096946.P17834744152591509132

`C(n+8, 8)+4*C(n+7, 7)`
-/

namespace A096946.P17834744152591509132
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 8) 8 + 4 * Nat.choose (n + 7) 7

end

end A096946.P17834744152591509132

namespace A096946

/-- `C(n+8, 8)+4*C(n+7, 7)` -/
def P17834744152591509132.Spec : Prop :=
  ∀ n, (P17834744152591509132.a n : ℤ) = A096946 n

end A096946

/-! ## A096946.P9312206979471855909

`A096945(n)+a(n-1)` with `a(0)=5`
-/

namespace A096946.P9312206979471855909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  A096945 n + a (n - 1)

end

end A096946.P9312206979471855909

namespace A096946

/-- `A096945(n)+a(n-1)` -/
def P9312206979471855909.Spec : Prop :=
  ∀ n, P9312206979471855909.a n = A096946 n

end A096946

/-! ## A096946.P17389009102993107033

`or(∑[A096945(n)], A000007(n))`
-/

namespace A096946.P17389009102993107033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096945 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (∑ j ∈ Finset.range (n + 1), f1 j) (A000007 n)

end

end A096946.P17389009102993107033

namespace A096946

/-- `or(∑[A096945(n)], A000007(n))` -/
def P17389009102993107033.Spec : Prop :=
  ∀ n, P17389009102993107033.a n = A096946 n

end A096946

/-! ## A096946.P16842675314471303839

`2*A095671(n)-A095664(n)`
-/

namespace A096946.P16842675314471303839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A095671 n - A095664 n

end

end A096946.P16842675314471303839

namespace A096946

/-- `2*A095671(n)-A095664(n)` -/
def P16842675314471303839.Spec : Prop :=
  ∀ n, P16842675314471303839.a n = A096946 n

end A096946

/-! ## A096946.P1646566347365681598

`A095671(n)+A000580(n+7)`
-/

namespace A096946.P1646566347365681598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095671 n + A000580 (n + 7)

end

end A096946.P1646566347365681598

namespace A096946

/-- `A095671(n)+A000580(n+7)` -/
def P1646566347365681598.Spec : Prop :=
  ∀ n, P1646566347365681598.a n = A096946 n

end A096946

/-! ## A096946.P16130495470200844985

`A097299(n)-A000580(n+7)`
-/

namespace A096946.P16130495470200844985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097299 n - A000580 (n + 7)

end

end A096946.P16130495470200844985

namespace A096946

/-- `A097299(n)-A000580(n+7)` -/
def P16130495470200844985.Spec : Prop :=
  ∀ n, P16130495470200844985.a n = A096946 n

end A096946

/-! ## A096946.P10494707305377733301

`A095664(n)+2*A000580(n+7)`
-/

namespace A096946.P10494707305377733301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095664 n + 2 * A000580 (n + 7)

end

end A096946.P10494707305377733301

namespace A096946

/-- `A095664(n)+2*A000580(n+7)` -/
def P10494707305377733301.Spec : Prop :=
  ∀ n, P10494707305377733301.a n = A096946 n

end A096946

/-! ## A096946.P15730849422237323902

`2*A095664(n)-A000581(n+8)`
-/

namespace A096946.P15730849422237323902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A095664 n - A000581 (n + 8)

end

end A096946.P15730849422237323902

namespace A096946

/-- `2*A095664(n)-A000581(n+8)` -/
def P15730849422237323902.Spec : Prop :=
  ∀ n, P15730849422237323902.a n = A096946 n

end A096946

/-! ## A096946.P15907594177959447965

`A000581(n+8)+4*A000580(n+7)`
-/

namespace A096946.P15907594177959447965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000581 (n + 8) + 4 * A000580 (n + 7)

end

end A096946.P15907594177959447965

namespace A096946

/-- `A000581(n+8)+4*A000580(n+7)` -/
def P15907594177959447965.Spec : Prop :=
  ∀ n, P15907594177959447965.a n = A096946 n

end A096946

/-! ## A096946.P9828298088758467713

`A253944(n+6)+A000581(n+8)+A000580(n+7)`
-/

namespace A096946.P9828298088758467713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253944 (n + 6) + (A000581 (n + 8) + A000580 (n + 7))

end

end A096946.P9828298088758467713

namespace A096946

/-- `A253944(n+6)+A000581(n+8)+A000580(n+7)` -/
def P9828298088758467713.Spec : Prop :=
  ∀ n, P9828298088758467713.a n = A096946 n

end A096946

/-! ## A096946.P16619513604629792133

`A096947(n+1)-(A096947(n)+A096945(n+1))`
-/

namespace A096946.P16619513604629792133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096947 (n + 1) - (A096947 n + A096945 (n + 1))

end

end A096946.P16619513604629792133

namespace A096946

/-- `A096947(n+1)-(A096947(n)+A096945(n+1))` -/
def P16619513604629792133.Spec : Prop :=
  ∀ n, P16619513604629792133.a n = A096946 n

end A096946

/-! ## A096946.P9161675288924828393

`A014963(A008458(n))*∑[A096945(n)]`
-/

namespace A096946.P9161675288924828393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096945 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A008458 n).toNat * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A096946.P9161675288924828393

namespace A096946

/-- `A014963(A008458(n))*∑[A096945(n)]` -/
def P9161675288924828393.Spec : Prop :=
  ∀ n, P9161675288924828393.a n = A096946 n

end A096946

/-! ## A096946.P7871883813613922759

`gcd(3, A020714(n))*∑[A096945(n)]`
-/

namespace A096946.P7871883813613922759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096945 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 3 (A020714 n) : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A096946.P7871883813613922759

namespace A096946

/-- `gcd(3, A020714(n))*∑[A096945(n)]` -/
def P7871883813613922759.Spec : Prop :=
  ∀ n, P7871883813613922759.a n = A096946 n

end A096946

/-! ## A096946.P14983601586239334676

`A008683(A002146(n))²*∑[A096945(n)]`
-/

namespace A096946.P14983601586239334676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096945 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A002146 n).toNat ^ 2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A096946.P14983601586239334676

namespace A096946

/-- `A008683(A002146(n))²*∑[A096945(n)]` -/
def P14983601586239334676.Spec : Prop :=
  ∀ n, P14983601586239334676.a n = A096946 n

end A096946

/-! ## A096946.P17372769448155753132

`∑[A096945(n)]%A236980(n+1)`
-/

namespace A096946.P17372769448155753132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096945 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A236980 (n + 1))

end

end A096946.P17372769448155753132

namespace A096946

/-- `∑[A096945(n)]%A236980(n+1)` -/
def P17372769448155753132.Spec : Prop :=
  ∀ n, P17372769448155753132.a n = A096946 n

end A096946

/-! ## A096946.P1839798920344341805

`A096940(A167499(n+7)+3)`
-/

namespace A096946.P1839798920344341805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096940 (A167499 (n + 7) + 3).toNat

end

end A096946.P1839798920344341805

namespace A096946

/-- `A096940(A167499(n+7)+3)` -/
def P1839798920344341805.Spec : Prop :=
  ∀ n, P1839798920344341805.a n = A096946 n

end A096946

/-! ## A096946.P11653735033240117924

`A096940(A000217(n+8)+8)`
-/

namespace A096946.P11653735033240117924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096940 (A000217 (n + 8) + 8).toNat

end

end A096946.P11653735033240117924

namespace A096946

/-- `A096940(A000217(n+8)+8)` -/
def P11653735033240117924.Spec : Prop :=
  ∀ n, P11653735033240117924.a n = A096946 n

end A096946

/-!
# A096947: Tenth column of (1,5)-Pascal triangle A096940.

The programs for A096947, the canonical program `A096947.P1643778423756262676` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A096947 has offset 0).

The definition of A096947 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A096947.P1643778423756262676

`(n+45)*C(n+8, 8)/9`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A096947

/-- `(n+45)*C(n+8, 8)/9` -/
def P1643778423756262676.Spec : Prop :=
  ∀ n, P1643778423756262676.a n = (A096947 n : ℚ)

end A096947

/-! ## A096947.P13858147006956726110

`∑[∑[∑[∑[∑[∑[∑[∑[5+n]]]]]]]]`
-/

namespace A096947.P13858147006956726110
noncomputable section

def f8 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 + n

def f7 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f8 j

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f7 j

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A096947.P13858147006956726110

namespace A096947

/-- `∑[∑[∑[∑[∑[∑[∑[∑[5+n]]]]]]]]` -/
def P13858147006956726110.Spec : Prop :=
  ∀ n, (P13858147006956726110.a n : ℤ) = A096947 n

end A096947

/-! ## A096947.P7276251032448902260

`C(n+9, 9)+4*C(n+8, 8)`
-/

namespace A096947.P7276251032448902260
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 9) 9 + 4 * Nat.choose (n + 8) 8

end

end A096947.P7276251032448902260

namespace A096947

/-- `C(n+9, 9)+4*C(n+8, 8)` -/
def P7276251032448902260.Spec : Prop :=
  ∀ n, (P7276251032448902260.a n : ℤ) = A096947 n

end A096947

/-! ## A096947.P16948863812450073689

`2*∑[A096946(n)/2]`
-/

namespace A096947.P16948863812450073689
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A096946 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A096947.P16948863812450073689

namespace A096947

/-- `2*∑[A096946(n)/2]` -/
def P16948863812450073689.Spec : Prop :=
  ∀ n, P16948863812450073689.a n = (A096947 n : ℚ)

end A096947

/-! ## A096947.P14996931348693600677

`or(∑[A096946(n)], A000007(n))`
-/

namespace A096947.P14996931348693600677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096946 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (∑ j ∈ Finset.range (n + 1), f1 j) (A000007 n)

end

end A096947.P14996931348693600677

namespace A096947

/-- `or(∑[A096946(n)], A000007(n))` -/
def P14996931348693600677.Spec : Prop :=
  ∀ n, P14996931348693600677.a n = A096947 n

end A096947

/-! ## A096947.P4871670618687394907

`2*A095819(n)-A095665(n)`
-/

namespace A096947.P4871670618687394907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A095819 n - A095665 n

end

end A096947.P4871670618687394907

namespace A096947

/-- `2*A095819(n)-A095665(n)` -/
def P4871670618687394907.Spec : Prop :=
  ∀ n, P4871670618687394907.a n = A096947 n

end A096947

/-! ## A096947.P9758301284688520050

`(A097300(n)+A095819(n))/2`
-/

namespace A096947.P9758301284688520050
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A097300 n + A095819 n : ℚ) / 2

end

end A096947.P9758301284688520050

namespace A096947

/-- `(A097300(n)+A095819(n))/2` -/
def P9758301284688520050.Spec : Prop :=
  ∀ n, P9758301284688520050.a n = (A096947 n : ℚ)

end A096947

/-! ## A096947.P14942806763197433214

`A095819(n)+A000581(n+8)`
-/

namespace A096947.P14942806763197433214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095819 n + A000581 (n + 8)

end

end A096947.P14942806763197433214

namespace A096947

/-- `A095819(n)+A000581(n+8)` -/
def P14942806763197433214.Spec : Prop :=
  ∀ n, P14942806763197433214.a n = A096947 n

end A096947

/-! ## A096947.P10991746626463139945

`A097300(n)-A000581(n+8)`
-/

namespace A096947.P10991746626463139945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097300 n - A000581 (n + 8)

end

end A096947.P10991746626463139945

namespace A096947

/-- `A097300(n)-A000581(n+8)` -/
def P10991746626463139945.Spec : Prop :=
  ∀ n, P10991746626463139945.a n = A096947 n

end A096947

/-! ## A096947.P15232896334877186617

`or(A000038(n)², ∑[A096946(n)])`
-/

namespace A096947.P15232896334877186617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096946 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n ^ 2) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A096947.P15232896334877186617

namespace A096947

/-- `or(A000038(n)², ∑[A096946(n)])` -/
def P15232896334877186617.Spec : Prop :=
  ∀ n, P15232896334877186617.a n = A096947 n

end A096947

/-! ## A096947.P2738375455550107896

`∑[2*A095671(n)]-A095665(n)`
-/

namespace A096947.P2738375455550107896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A095671 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A095665 n

end

end A096947.P2738375455550107896

namespace A096947

/-- `∑[2*A095671(n)]-A095665(n)` -/
def P2738375455550107896.Spec : Prop :=
  ∀ n, P2738375455550107896.a n = A096947 n

end A096947

/-! ## A096947.P8815119637512398381

`A000581(n+8)+∑[A095671(n)]`
-/

namespace A096947.P8815119637512398381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095671 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000581 (n + 8) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A096947.P8815119637512398381

namespace A096947

/-- `A000581(n+8)+∑[A095671(n)]` -/
def P8815119637512398381.Spec : Prop :=
  ∀ n, P8815119637512398381.a n = A096947 n

end A096947

/-! ## A096947.P10471398094150072844

`A095665(n)+2*A000581(n+8)`
-/

namespace A096947.P10471398094150072844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095665 n + 2 * A000581 (n + 8)

end

end A096947.P10471398094150072844

namespace A096947

/-- `A095665(n)+2*A000581(n+8)` -/
def P10471398094150072844.Spec : Prop :=
  ∀ n, P10471398094150072844.a n = A096947 n

end A096947

/-! ## A096947.P14659876804626947809

`2*A095665(n)-A000582(n+9)`
-/

namespace A096947.P14659876804626947809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A095665 n - A000582 (n + 9)

end

end A096947.P14659876804626947809

namespace A096947

/-- `2*A095665(n)-A000582(n+9)` -/
def P14659876804626947809.Spec : Prop :=
  ∀ n, P14659876804626947809.a n = A096947 n

end A096947

/-! ## A096947.P2977753462310806662

`∑[A095664(n)]+2*A000581(n+8)`
-/

namespace A096947.P2977753462310806662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2 * A000581 (n + 8)

end

end A096947.P2977753462310806662

namespace A096947

/-- `∑[A095664(n)]+2*A000581(n+8)` -/
def P2977753462310806662.Spec : Prop :=
  ∀ n, P2977753462310806662.a n = A096947 n

end A096947

/-! ## A096947.P10504416869733859350

`or(∑[A096946(n)], A029833(2*(n+1)))`
-/

namespace A096947.P10504416869733859350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096946 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (∑ j ∈ Finset.range (n + 1), f1 j) (A029833 (2 * (n + 1)))

end

end A096947.P10504416869733859350

namespace A096947

/-- `or(∑[A096946(n)], A029833(2*(n+1)))` -/
def P10504416869733859350.Spec : Prop :=
  ∀ n, P10504416869733859350.a n = A096947 n

end A096947

/-! ## A096947.P2846395591955799730

`A000582(n+9)+4*A000581(n+8)`
-/

namespace A096947.P2846395591955799730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000582 (n + 9) + 4 * A000581 (n + 8)

end

end A096947.P2846395591955799730

namespace A096947

/-- `A000582(n+9)+4*A000581(n+8)` -/
def P2846395591955799730.Spec : Prop :=
  ∀ n, P2846395591955799730.a n = A096947 n

end A096947

/-! ## A096947.P6471387187211932997

`A001221(A000928(n+1))*∑[A096946(n)]`
-/

namespace A096947.P6471387187211932997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096946 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A000928 (n + 1)).toNat * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A096947.P6471387187211932997

namespace A096947

/-- `A001221(A000928(n+1))*∑[A096946(n)]` -/
def P6471387187211932997.Spec : Prop :=
  ∀ n, P6471387187211932997.a n = A096947 n

end A096947

/-! ## A096947.P656717889238737716

`A007318(∑[n])*∑[A096946(n)]`
-/

namespace A096947.P656717889238737716
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096946 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A096947.P656717889238737716

namespace A096947

/-- `A007318(∑[n])*∑[A096946(n)]` -/
def P656717889238737716.Spec : Prop :=
  ∀ n, P656717889238737716.a n = A096947 n

end A096947

/-! ## A096947.P13570220137448256215

`A093562(A056000(n+6))`
-/

namespace A096947.P13570220137448256215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093562 (A056000 (n + 6)).toNat

end

end A096947.P13570220137448256215

namespace A096947

/-- `A093562(A056000(n+6))` -/
def P13570220137448256215.Spec : Prop :=
  ∀ n, P13570220137448256215.a n = A096947 n

end A096947

/-!
# A096948: Triangular table read by rows: T(n,m) = number of rectangles found in an n X m rectangle built from 1 X 1 squares, 1 <= m <= n.

The programs for A096948, the canonical program `A096948.P8124363865643036961` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A096948 has offset 1).

The definition of A096948 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A096948.P12742699412239238399

`(1-A049780(n)+n)*C(comp[∑[n]]-n, 2)`
-/

namespace A096948.P12742699412239238399
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A049780 n + (n : ℤ)) * (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ)

end

end A096948.P12742699412239238399

namespace A096948

/-- `(1-A049780(n)+n)*C(comp[∑[n]]-n, 2)` -/
def P12742699412239238399.Spec : Prop :=
  ∀ n, P12742699412239238399.a n = A096948 (n + 1)

end A096948

/-! ## A096948.P10211301474780144760

`C(comp[∑[n]]-n, 2)*A000217(1-C(∑[char[∑[n]]], 2)+n)`
-/

namespace A096948.P10211301474780144760
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f4 j = n then 1 else 0

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) * A000217 (1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f3 j) 2 : ℤ) + (n : ℤ)).toNat

end

end A096948.P10211301474780144760

namespace A096948

/-- `C(comp[∑[n]]-n, 2)*A000217(1-C(∑[char[∑[n]]], 2)+n)` -/
def P10211301474780144760.Spec : Prop :=
  ∀ n, P10211301474780144760.a n = A096948 (n + 1)

end A096948

/-! ## A096948.P14709091572330106683

`C(comp[∑[n]]-n, 2)*A278818(C(1-C(∑[char[∑[n]]], 2)+n, 2))`
-/

namespace A096948.P14709091572330106683
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f4 j = n then 1 else 0

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) * A278818 (Nat.choose (1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f3 j) 2 : ℤ) + (n : ℤ)).toNat 2)

end

end A096948.P14709091572330106683

namespace A096948

/-- `C(comp[∑[n]]-n, 2)*A278818(C(1-C(∑[char[∑[n]]], 2)+n, 2))` -/
def P14709091572330106683.Spec : Prop :=
  ∀ n, P14709091572330106683.a n = A096948 (n + 1)

end A096948

/-! ## A096948.P16340410280163665477

`A143219(n+1)/2*A003057(n+2)`
-/

namespace A096948.P16340410280163665477
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143219 (n + 1) : ℚ) / 2 * (A003057 (n + 2) : ℚ)

end

end A096948.P16340410280163665477

namespace A096948

/-- `A143219(n+1)/2*A003057(n+2)` -/
def P16340410280163665477.Spec : Prop :=
  ∀ n, P16340410280163665477.a n = (A096948 (n + 1) : ℚ)

end A096948

/-! ## A096948.P8124363865643036961

`(1-A049780(n)+n)*(A025581(n)+1+n)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A096948

/-- `(1-A049780(n)+n)*(A025581(n)+1+n)` -/
def P8124363865643036961.Spec : Prop :=
  ∀ n, P8124363865643036961.a n = A096948 (n + 1)

theorem P8124363865643036961.correct : P8124363865643036961.Spec := by
  intro n
  simp only [A096948, Nat.add_sub_cancel]

end A096948

/-! ## A096948.P9619389686292419710

`A000217(A002260(n+1))*A127739(n+1)`
-/

namespace A096948.P9619389686292419710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A002260 (n + 1)).toNat * A127739 (n + 1)

end

end A096948.P9619389686292419710

namespace A096948

/-- `A000217(A002260(n+1))*A127739(n+1)` -/
def P9619389686292419710.Spec : Prop :=
  ∀ n, P9619389686292419710.a n = A096948 (n + 1)

end A096948

/-! ## A096948.P2657500041411603377

`A000217(A002024(n+1))*A000217(A002260(n+1))`
-/

namespace A096948.P2657500041411603377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A002024 (n + 1)).toNat * A000217 (A002260 (n + 1)).toNat

end

end A096948.P2657500041411603377

namespace A096948

/-- `A000217(A002024(n+1))*A000217(A002260(n+1))` -/
def P2657500041411603377.Spec : Prop :=
  ∀ n, P2657500041411603377.a n = A096948 (n + 1)

end A096948

/-! ## A096948.P44172486292078308

`C(comp[∑[n]]-n, 2)*A112367(comp[∑[n]])`
-/

namespace A096948.P44172486292078308
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) * A112367 (SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n)

end

end A096948.P44172486292078308

namespace A096948

/-- `C(comp[∑[n]]-n, 2)*A112367(comp[∑[n]])` -/
def P44172486292078308.Spec : Prop :=
  ∀ n, P44172486292078308.a n = A096948 (n + 1)

end A096948

/-! ## A096948.P16303423053479685935

`(A025581(n)+1+n)*A112367(comp[∑[n]])`
-/

namespace A096948.P16303423053479685935
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A025581 n + 1 + (n : ℤ)) * A112367 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A096948.P16303423053479685935

namespace A096948

/-- `(A025581(n)+1+n)*A112367(comp[∑[n]])` -/
def P16303423053479685935.Spec : Prop :=
  ∀ n, P16303423053479685935.a n = A096948 (n + 1)

end A096948

/-! ## A096948.P11261719200368907588

`A098358(A245300(n))`
-/

namespace A096948.P11261719200368907588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098358 (A245300 n).toNat

end

end A096948.P11261719200368907588

namespace A096948

/-- `A098358(A245300(n))` -/
def P11261719200368907588.Spec : Prop :=
  ∀ n, P11261719200368907588.a n = A096948 (n + 1)

end A096948

/-! ## A096948.P14883440594449214521

`A049207(A245300(comp[∑[n]]))/4`
-/

namespace A096948.P14883440594449214521
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049207 (A245300 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat : ℚ) / 4

end

end A096948.P14883440594449214521

namespace A096948

/-- `A049207(A245300(comp[∑[n]]))/4` -/
def P14883440594449214521.Spec : Prop :=
  ∀ n, P14883440594449214521.a n = (A096948 (n + 1) : ℚ)

end A096948

/-!
# A096950: Denominators of partial sums of series for 3*arctanh(1/3) = (3/2)*log(2).

The programs for A096950, there is no canonical definition to state claims against.
-/

/-! ## A096950.P17160122691147250359

`A051801(10^n-1)*A145640(n+1)`
-/

namespace A096950.P17160122691147250359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051801 (10 ^ n - 1) * A145640 (n + 1)

end

end A096950.P17160122691147250359

/-!
# A096951: Sum of odd powers of 2 and of 3 divided by 5.

The programs for A096951, the canonical program `A096951.P3902693748175041984` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A096951 has offset 0).

The definition of A096951 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A096951.P3902693748175041984

`A015441(2*n+1)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A096951

/-- `A015441(2*n+1)` -/
def P3902693748175041984.Spec : Prop :=
  ∀ n, P3902693748175041984.a n = A096951 n

theorem P3902693748175041984.correct : P3902693748175041984.Spec := by
  intro n
  simp only [A096951]

end A096951

/-! ## A096951.P3275999310913776124

`13*a(n-1)-36*a(n-2)` with `a(0)=1, a(1)=7`
-/

namespace A096951.P3275999310913776124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 7] fun n a =>
  13 * a (n - 1) - 36 * a (n - 2)

end

end A096951.P3275999310913776124

namespace A096951

/-- `13*a(n-1)-36*a(n-2)` -/
def P3275999310913776124.Spec : Prop :=
  ∀ n, P3275999310913776124.a n = A096951 n

end A096951

/-! ## A096951.P1838763342598050558

`(2^(2*n+1)+3^(2*n+1))/5`
-/

namespace A096951.P1838763342598050558
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 ^ (2 * n + 1) + 3 ^ (2 * n + 1) : ℚ) / 5

end

end A096951.P1838763342598050558

namespace A096951

/-- `(2^(2*n+1)+3^(2*n+1))/5` -/
def P1838763342598050558.Spec : Prop :=
  ∀ n, P1838763342598050558.a n = (A096951 n : ℚ)

end A096951

/-! ## A096951.P10675221215702011264

`record[A091005(n+2)]`
-/

namespace A096951.P10675221215702011264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091005 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A096951.P10675221215702011264

namespace A096951

/-- `record[A091005(n+2)]` -/
def P10675221215702011264.Spec : Prop :=
  ∀ n, P10675221215702011264.a n = A096951 n

end A096951

/-! ## A096951.P17597618788897737750

`record[or(1, A091005(n))]`
-/

namespace A096951.P17597618788897737750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A091005 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A096951.P17597618788897737750

namespace A096951

/-- `record[or(1, A091005(n))]` -/
def P17597618788897737750.Spec : Prop :=
  ∀ n, P17597618788897737750.a n = A096951 n

end A096951

/-! ## A096951.P399523494138664230

`A091005(2*(n+1))`
-/

namespace A096951.P399523494138664230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091005 (2 * (n + 1))

end

end A096951.P399523494138664230

namespace A096951

/-- `A091005(2*(n+1))` -/
def P399523494138664230.Spec : Prop :=
  ∀ n, P399523494138664230.a n = A096951 n

end A096951

/-! ## A096951.P16989293238042438128

`record[A015441(n^(n%2))]`
-/

namespace A096951.P16989293238042438128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015441 (n ^ (n % 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A096951.P16989293238042438128

namespace A096951

/-- `record[A015441(n^(n%2))]` -/
def P16989293238042438128.Spec : Prop :=
  ∀ n, P16989293238042438128.a n = A096951 n

end A096951

/-! ## A096951.P3496827228290085924

`record[A015441((-1)^n+n)]`
-/

namespace A096951.P3496827228290085924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015441 ((-1) ^ n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A096951.P3496827228290085924

namespace A096951

/-- `record[A015441((-1)^n+n)]` -/
def P3496827228290085924.Spec : Prop :=
  ∀ n, P3496827228290085924.a n = A096951 n

end A096951

/-! ## A096951.P5089909095271064324

`record[A000079(n)-3*a(n-1)]` with `a(0)=1`
-/

namespace A096951.P5089909095271064324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A000079 n - 3 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A096951.P5089909095271064324

namespace A096951

/-- `record[A000079(n)-3*a(n-1)]` -/
def P5089909095271064324.Spec : Prop :=
  ∀ n, P5089909095271064324.a n = A096951 n

end A096951

/-! ## A096951.P927617562698178238

`or(1, A015441(A005408(n)))`
-/

namespace A096951.P927617562698178238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A015441 (A005408 n).toNat)

end

end A096951.P927617562698178238

namespace A096951

/-- `or(1, A015441(A005408(n)))` -/
def P927617562698178238.Spec : Prop :=
  ∀ n, P927617562698178238.a n = A096951 n

end A096951

/-! ## A096951.P7036873632757889645

`A165314(n)+A016153(n)`
-/

namespace A096951.P7036873632757889645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165314 n + A016153 n

end

end A096951.P7036873632757889645

namespace A096951

/-- `A165314(n)+A016153(n)` -/
def P7036873632757889645.Spec : Prop :=
  ∀ n, P7036873632757889645.a n = A096951 n

end A096951

/-! ## A096951.P16701317654084653906

`A167910(2*n+1)+A000302(n)`
-/

namespace A096951.P16701317654084653906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167910 (2 * n + 1) + A000302 n

end

end A096951.P16701317654084653906

namespace A096951

/-- `A167910(2*n+1)+A000302(n)` -/
def P16701317654084653906.Spec : Prop :=
  ∀ n, P16701317654084653906.a n = A096951 n

end A096951

/-! ## A096951.P811514990461275201

`A094688(2*n)+A052964(2*n)`
-/

namespace A096951.P811514990461275201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094688 (2 * n) + A052964 (2 * n)

end

end A096951.P811514990461275201

namespace A096951

/-- `A094688(2*n)+A052964(2*n)` -/
def P811514990461275201.Spec : Prop :=
  ∀ n, P811514990461275201.a n = A096951 n

end A096951

/-! ## A096951.P273750816189966961

`A167910(2*n+1)+A000079(n)²`
-/

namespace A096951.P273750816189966961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167910 (2 * n + 1) + A000079 n ^ 2

end

end A096951.P273750816189966961

namespace A096951

/-- `A167910(2*n+1)+A000079(n)²` -/
def P273750816189966961.Spec : Prop :=
  ∀ n, P273750816189966961.a n = A096951 n

end A096951

/-! ## A096951.P12544163333217071810

`A167910(2*n+1)+A000079(2*n)`
-/

namespace A096951.P12544163333217071810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167910 (2 * n + 1) + A000079 (2 * n)

end

end A096951.P12544163333217071810

namespace A096951

/-- `A167910(2*n+1)+A000079(2*n)` -/
def P12544163333217071810.Spec : Prop :=
  ∀ n, P12544163333217071810.a n = A096951 n

end A096951

/-! ## A096951.P2577738421041726998

`A094688(2*n)+A084178(2*n+1)`
-/

namespace A096951.P2577738421041726998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094688 (2 * n) + A084178 (2 * n + 1)

end

end A096951.P2577738421041726998

namespace A096951

/-- `A094688(2*n)+A084178(2*n+1)` -/
def P2577738421041726998.Spec : Prop :=
  ∀ n, P2577738421041726998.a n = A096951 n

end A096951

/-! ## A096951.P1336471334828291340

`A094555(2*n+1)+A091002(2*n)`
-/

namespace A096951.P1336471334828291340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094555 (2 * n + 1) + A091002 (2 * n)

end

end A096951.P1336471334828291340

namespace A096951

/-- `A094555(2*n+1)+A091002(2*n)` -/
def P1336471334828291340.Spec : Prop :=
  ∀ n, P1336471334828291340.a n = A096951 n

end A096951

/-! ## A096951.P1550004805510441749

`A167910(2*n+1)+A084221(2*n)`
-/

namespace A096951.P1550004805510441749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167910 (2 * n + 1) + A084221 (2 * n)

end

end A096951.P1550004805510441749

namespace A096951

/-- `A167910(2*n+1)+A084221(2*n)` -/
def P1550004805510441749.Spec : Prop :=
  ∀ n, P1550004805510441749.a n = A096951 n

end A096951

/-! ## A096951.P15488099185155298788

`A167910(2*n+1)+A167784(2*n)`
-/

namespace A096951.P15488099185155298788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167910 (2 * n + 1) + A167784 (2 * n)

end

end A096951.P15488099185155298788

namespace A096951

/-- `A167910(2*n+1)+A167784(2*n)` -/
def P15488099185155298788.Spec : Prop :=
  ∀ n, P15488099185155298788.a n = A096951 n

end A096951

/-! ## A096951.P15257762998288457633

`A098703(2*n+1)-A084179(2*n)`
-/

namespace A096951.P15257762998288457633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098703 (2 * n + 1) - A084179 (2 * n)

end

end A096951.P15257762998288457633

namespace A096951

/-- `A098703(2*n+1)-A084179(2*n)` -/
def P15257762998288457633.Spec : Prop :=
  ∀ n, P15257762998288457633.a n = A096951 n

end A096951

/-!
# A096952: Numerators of upper bounds for Lagrange remainder in Taylor's expansion of log((1+x)/(1-x)) for x=1/3, multiplied by 6/5.

The programs for A096952, there is no canonical definition to state claims against.
-/

/-! ## A096952.P9370096923855435634

`A015441(2*n+1)/gcd(A015441(2*n+1), A124647(n))`
-/

namespace A096952.P9370096923855435634
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A015441 (2 * n + 1) : ℚ) / (Int.gcd (A015441 (2 * n + 1)) (A124647 n) : ℚ)

end

end A096952.P9370096923855435634

/-! ## A096952.P6776850800982756773

`lcm(A077342(2*n+1), A329017(2*n+1))/A077342(2*n+1)`
-/

namespace A096952.P6776850800982756773
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A077342 (2 * n + 1)) (A329017 (2 * n + 1)) : ℚ) / (A077342 (2 * n + 1) : ℚ)

end

end A096952.P6776850800982756773

/-! ## A096952.P18607688309648845

`A329017((1-(∑{digits}[n, #]-n))*Δ[n²])`
-/

namespace A096952.P18607688309648845
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329017 ((1 - (((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ) - (n : ℤ))) * ((f2 (n + 1) : ℤ) - (f2 n : ℤ))).toNat

end

end A096952.P18607688309648845

/-! ## A096952.P12484699325788119177

`A329017((∑{digits}[n, #]+1+n)*(1-(∑{digits}[n, #]-n)))`
-/

namespace A096952.P12484699325788119177
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329017 (((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum + 1 + n : ℕ) : ℤ) * (1 - (((((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ) - (n : ℤ)))).toNat

end

end A096952.P12484699325788119177

/-! ## A096952.P5830947544459938575

`A329017(A137507(n))`
-/

namespace A096952.P5830947544459938575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329017 (A137507 n).toNat

end

end A096952.P5830947544459938575

/-!
# A096953: Denominators of upper bounds for Lagrange-remainder in Taylor's expansion of log((1+x)/(1-x)) multiplied by 6/5.

The programs for A096953, there is no canonical definition to state claims against.
-/

/-! ## A096953.P8748573935832980607

`A000290(A000400(n))*A132739(2*n+1)`
-/

namespace A096953.P8748573935832980607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A000400 n).toNat * A132739 (2 * n + 1)

end

end A096953.P8748573935832980607

/-! ## A096953.P15449306074106318315

`A013613(eq[A212125(n+1), A212139(n+1)])`
-/

namespace A096953.P15449306074106318315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212125 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212139 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013613 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A096953.P15449306074106318315

/-!
# A096956: Pascal (1,6) triangle.

The programs for A096956, the canonical program `A096956.P5895714996122041335` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A096956 has offset 0).

The definition of A096956 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A096956.P5895714996122041335

`A097805(n)+A096940(n)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A096956

/-- `A097805(n)+A096940(n)` -/
def P5895714996122041335.Spec : Prop :=
  ∀ n, P5895714996122041335.a n = A096956 n

theorem P5895714996122041335.correct : P5895714996122041335.Spec := by
  intro n
  simp only [A096956]

end A096956

/-! ## A096956.P11503721991026447952

`A095666(n)+2*A097805(n)`
-/

namespace A096956.P11503721991026447952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095666 n + 2 * A097805 n

end

end A096956.P11503721991026447952

namespace A096956

/-- `A095666(n)+2*A097805(n)` -/
def P11503721991026447952.Spec : Prop :=
  ∀ n, P11503721991026447952.a n = A096956 n

end A096956

/-! ## A096956.P4911496669464708475

`2*A095666(n)-A029635(n)`
-/

namespace A096956.P4911496669464708475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A095666 n - A029635 n

end

end A096956.P4911496669464708475

namespace A096956

/-- `2*A095666(n)-A029635(n)` -/
def P4911496669464708475.Spec : Prop :=
  ∀ n, P4911496669464708475.a n = A096956 n

end A096956

/-! ## A096956.P2676948007713360019

`2*A096940(n)-A095666(n)`
-/

namespace A096956.P2676948007713360019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A096940 n - A095666 n

end

end A096956.P2676948007713360019

namespace A096956

/-- `2*A096940(n)-A095666(n)` -/
def P2676948007713360019.Spec : Prop :=
  ∀ n, P2676948007713360019.a n = A096956 n

end A096956

/-! ## A096956.P10154158498295611901

`A029635(n)+4*A097805(n)`
-/

namespace A096956.P10154158498295611901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029635 n + 4 * A097805 n

end

end A096956.P10154158498295611901

namespace A096956

/-- `A029635(n)+4*A097805(n)` -/
def P10154158498295611901.Spec : Prop :=
  ∀ n, P10154158498295611901.a n = A096956 n

end A096956

/-! ## A096956.P7539876542497703999

`A007318(n)+5*A097805(n)`
-/

namespace A096956.P7539876542497703999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + 5 * A097805 n

end

end A096956.P7539876542497703999

namespace A096956

/-- `A007318(n)+5*A097805(n)` -/
def P7539876542497703999.Spec : Prop :=
  ∀ n, P7539876542497703999.a n = A096956 n

end A096956

/-! ## A096956.P11992779833387695896

`A029635(n)+A096940(n)-A007318(n)`
-/

namespace A096956.P11992779833387695896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029635 n + (A096940 n - A007318 n)

end

end A096956.P11992779833387695896

namespace A096956

/-- `A029635(n)+A096940(n)-A007318(n)` -/
def P11992779833387695896.Spec : Prop :=
  ∀ n, P11992779833387695896.a n = A096956 n

end A096956

/-! ## A096956.P2373280154174315343

`A095660(n)+A095666(n)-A007318(n)`
-/

namespace A096956.P2373280154174315343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095660 n + (A095666 n - A007318 n)

end

end A096956.P2373280154174315343

namespace A096956

/-- `A095660(n)+A095666(n)-A007318(n)` -/
def P2373280154174315343.Spec : Prop :=
  ∀ n, P2373280154174315343.a n = A096956 n

end A096956

/-! ## A096956.P10968922662144668380

`A095660(n)+A096940(n)-A029635(n)`
-/

namespace A096956.P10968922662144668380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095660 n + (A096940 n - A029635 n)

end

end A096956.P10968922662144668380

namespace A096956

/-- `A095660(n)+A096940(n)-A029635(n)` -/
def P10968922662144668380.Spec : Prop :=
  ∀ n, P10968922662144668380.a n = A096956 n

end A096956

/-! ## A096956.P5674834381004595574

`A093563(A061579(n)+A000007(n))`
-/

namespace A096956.P5674834381004595574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093563 (A061579 n + A000007 n).toNat

end

end A096956.P5674834381004595574

namespace A096956

/-- `A093563(A061579(n)+A000007(n))` -/
def P5674834381004595574.Spec : Prop :=
  ∀ n, P5674834381004595574.a n = A096956 n

end A096956

/-! ## A096956.P14646690266492174492

`A093563(A061579(n)+and(1, A000010(n+2)))`
-/

namespace A096956.P14646690266492174492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093563 (A061579 n + Int.land 1 (A000010 (n + 2))).toNat

end

end A096956.P14646690266492174492

namespace A096956

/-- `A093563(A061579(n)+and(1, A000010(n+2)))` -/
def P14646690266492174492.Spec : Prop :=
  ∀ n, P14646690266492174492.a n = A096956 n

end A096956

/-! ## A096956.P1709607129746637939

`A093563(A038722(n+2))`
-/

namespace A096956.P1709607129746637939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093563 (A038722 (n + 2)).toNat

end

end A096956.P1709607129746637939

namespace A096956

/-- `A093563(A038722(n+2))` -/
def P1709607129746637939.Spec : Prop :=
  ∀ n, P1709607129746637939.a n = A096956 n

end A096956

/-! ## A096956.P14264097563063943528

`A093563(A061579(n+1)+1)`
-/

namespace A096956.P14264097563063943528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093563 (A061579 (n + 1) + 1).toNat

end

end A096956.P14264097563063943528

namespace A096956

/-- `A093563(A061579(n+1)+1)` -/
def P14264097563063943528.Spec : Prop :=
  ∀ n, P14264097563063943528.a n = A096956 n

end A096956

/-! ## A096956.P6029450149960190839

`A008587(A097805(n))+A007318(n)`
-/

namespace A096956.P6029450149960190839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008587 (A097805 n).toNat + A007318 n

end

end A096956.P6029450149960190839

namespace A096956

/-- `A008587(A097805(n))+A007318(n)` -/
def P6029450149960190839.Spec : Prop :=
  ∀ n, P6029450149960190839.a n = A096956 n

end A096956

/-! ## A096956.P2783935612844467124

`A029635(n)+A008586(A097805(n))`
-/

namespace A096956.P2783935612844467124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029635 n + A008586 (A097805 n).toNat

end

end A096956.P2783935612844467124

namespace A096956

/-- `A029635(n)+A008586(A097805(n))` -/
def P2783935612844467124.Spec : Prop :=
  ∀ n, P2783935612844467124.a n = A096956 n

end A096956

/-! ## A096956.P4004836953347847533

`A008589(A097805(n))-A112467(n)`
-/

namespace A096956.P4004836953347847533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008589 (A097805 n).toNat - A112467 n

end

end A096956.P4004836953347847533

namespace A096956

/-- `A008589(A097805(n))-A112467(n)` -/
def P4004836953347847533.Spec : Prop :=
  ∀ n, P4004836953347847533.a n = A096956 n

end A096956

/-! ## A096956.P569996150202711140

`A005843(A095666(n))-A029635(n)`
-/

namespace A096956.P569996150202711140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A095666 n).toNat - A029635 n

end

end A096956.P569996150202711140

namespace A096956

/-- `A005843(A095666(n))-A029635(n)` -/
def P569996150202711140.Spec : Prop :=
  ∀ n, P569996150202711140.a n = A096956 n

end A096956

/-!
# A096957: Fourth column (m=3) of (1,6)-Pascal triangle A096956.

The programs for A096957, the canonical program `A096957.P6581323205033692975` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A096957 has offset 0).

The definition of A096957 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A096957.P5851450501745404190

`(n+18)*C(n+2, 2)/3`
-/

namespace A096957.P5851450501745404190
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 18) * Nat.choose (n + 2) 2 : ℚ) / 3

end

end A096957.P5851450501745404190

namespace A096957

/-- `(n+18)*C(n+2, 2)/3` -/
def P5851450501745404190.Spec : Prop :=
  ∀ n, P5851450501745404190.a n = (A096957 n : ℚ)

end A096957

/-! ## A096957.P6581323205033692975

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=6, a(1)=19, a(2)=40, a(3)=70`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A096957

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P6581323205033692975.Spec : Prop :=
  ∀ n, P6581323205033692975.a n = A096957 n

theorem P6581323205033692975.correct : P6581323205033692975.Spec := by
  intro n
  simp only [A096957]

end A096957

/-! ## A096957.P11289496592046243514

`∑[∑[6+n]]`
-/

namespace A096957.P11289496592046243514
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 + n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A096957.P11289496592046243514

namespace A096957

/-- `∑[∑[6+n]]` -/
def P11289496592046243514.Spec : Prop :=
  ∀ n, (P11289496592046243514.a n : ℤ) = A096957 n

end A096957

/-! ## A096957.P10145468441874126646

`ogf((6-5x)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A096957.P10145468441874126646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [6, -5] [1, -4, 6, -4, 1] n

end

end A096957.P10145468441874126646

namespace A096957

/-- `ogf((6-5x)/(1-4x+6x^2-4x^3+x^4))` -/
def P10145468441874126646.Spec : Prop :=
  ∀ n, P10145468441874126646.a n = A096957 n

end A096957

/-! ## A096957.P4387866694179054624

`record[n-(3-a(n-1))]+4*(a(n-1)/4+n)` with `a(0)=6`
-/

namespace A096957.P4387866694179054624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [6] fun n f1 =>
  (n : ℤ) - (3 - f1 (n - 1))

def a : ℕ → ℚ := SequenceMachineLib.rec [6] fun n a =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) + 4 * (a (n - 1) / 4 + (n : ℚ))

end

end A096957.P4387866694179054624

namespace A096957

/-- `record[n-(3-a(n-1))]+4*(a(n-1)/4+n)` -/
def P4387866694179054624.Spec : Prop :=
  ∀ n, P4387866694179054624.a n = (A096957 n : ℚ)

end A096957

/-! ## A096957.P5620320394629139724

`A103145(n)-3*(n-1)`
-/

namespace A096957.P5620320394629139724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103145 n - 3 * ((n : ℤ) - 1)

end

end A096957.P5620320394629139724

namespace A096957

/-- `A103145(n)-3*(n-1)` -/
def P5620320394629139724.Spec : Prop :=
  ∀ n, P5620320394629139724.a n = A096957 n

end A096957

/-! ## A096957.P304577538628124660

`A055831(n+4)+(n+1)²`
-/

namespace A096957.P304577538628124660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055831 (n + 4) + ((n + 1) ^ 2 : ℤ)

end

end A096957.P304577538628124660

namespace A096957

/-- `A055831(n+4)+(n+1)²` -/
def P304577538628124660.Spec : Prop :=
  ∀ n, P304577538628124660.a n = A096957 n

end A096957

/-! ## A096957.P1045919628511889791

`A023545(n+1)+n²+n`
-/

namespace A096957.P1045919628511889791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1) + (n ^ 2 + n : ℤ)

end

end A096957.P1045919628511889791

namespace A096957

/-- `A023545(n+1)+n²+n` -/
def P1045919628511889791.Spec : Prop :=
  ∀ n, P1045919628511889791.a n = A096957 n

end A096957

/-! ## A096957.P6870018286527980031

`A051941(n+8)-(n²+n)`
-/

namespace A096957.P6870018286527980031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051941 (n + 8) - (n ^ 2 + n : ℤ)

end

end A096957.P6870018286527980031

namespace A096957

/-- `A051941(n+8)-(n²+n)` -/
def P6870018286527980031.Spec : Prop :=
  ∀ n, P6870018286527980031.a n = A096957 n

end A096957

/-! ## A096957.P17844285550870317586

`(n/3+6)*A000217(n+1)`
-/

namespace A096957.P17844285550870317586
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℚ) / 3 + 6) * (A000217 (n + 1) : ℚ)

end

end A096957.P17844285550870317586

namespace A096957

/-- `(n/3+6)*A000217(n+1)` -/
def P17844285550870317586.Spec : Prop :=
  ∀ n, P17844285550870317586.a n = (A096957 n : ℚ)

end A096957

/-! ## A096957.P413009527850861035

`A060488(n+3)+(n+1)*(n+2)`
-/

namespace A096957.P413009527850861035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060488 (n + 3) + ((n + 1) * (n + 2) : ℤ)

end

end A096957.P413009527850861035

namespace A096957

/-- `A060488(n+3)+(n+1)*(n+2)` -/
def P413009527850861035.Spec : Prop :=
  ∀ n, P413009527850861035.a n = A096957 n

end A096957

/-! ## A096957.P9599909933812181249

`A129863(n)+A050407(n)`
-/

namespace A096957.P9599909933812181249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129863 n + A050407 n

end

end A096957.P9599909933812181249

namespace A096957

/-- `A129863(n)+A050407(n)` -/
def P9599909933812181249.Spec : Prop :=
  ∀ n, P9599909933812181249.a n = A096957 n

end A096957

/-! ## A096957.P17379885114115469491

`A114949(n)+A111396(n)`
-/

namespace A096957.P17379885114115469491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114949 n + A111396 n

end

end A096957.P17379885114115469491

namespace A096957

/-- `A114949(n)+A111396(n)` -/
def P17379885114115469491.Spec : Prop :=
  ∀ n, P17379885114115469491.a n = A096957 n

end A096957

/-! ## A096957.P1904141630064490962

`A264443(n)+A027691(n)`
-/

namespace A096957.P1904141630064490962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n + A027691 n

end

end A096957.P1904141630064490962

namespace A096957

/-- `A264443(n)+A027691(n)` -/
def P1904141630064490962.Spec : Prop :=
  ∀ n, P1904141630064490962.a n = A096957 n

end A096957

/-! ## A096957.P7085604808932692677

`A268581(n)+A027378(n)`
-/

namespace A096957.P7085604808932692677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268581 n + A027378 n

end

end A096957.P7085604808932692677

namespace A096957

/-- `A268581(n)+A027378(n)` -/
def P7085604808932692677.Spec : Prop :=
  ∀ n, P7085604808932692677.a n = A096957 n

end A096957

/-! ## A096957.P11497772846875555186

`A087863(n)-A000096(n)`
-/

namespace A096957.P11497772846875555186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087863 n - A000096 n

end

end A096957.P11497772846875555186

namespace A096957

/-- `A087863(n)-A000096(n)` -/
def P11497772846875555186.Spec : Prop :=
  ∀ n, P11497772846875555186.a n = A096957 n

end A096957

/-! ## A096957.P9935651197257841377

`A096941(n)+A000217(n+1)`
-/

namespace A096957.P9935651197257841377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096941 n + A000217 (n + 1)

end

end A096957.P9935651197257841377

namespace A096957

/-- `A096941(n)+A000217(n+1)` -/
def P9935651197257841377.Spec : Prop :=
  ∀ n, P9935651197257841377.a n = A096957 n

end A096957

/-! ## A096957.P18128426337666886674

`A101853(n+1)+A000217(n)`
-/

namespace A096957.P18128426337666886674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101853 (n + 1) + A000217 n

end

end A096957.P18128426337666886674

namespace A096957

/-- `A101853(n+1)+A000217(n)` -/
def P18128426337666886674.Spec : Prop :=
  ∀ n, P18128426337666886674.a n = A096957 n

end A096957

/-! ## A096957.P6514744537595464490

`A099776(n+1)+A005286(n)`
-/

namespace A096957.P6514744537595464490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099776 (n + 1) + A005286 n

end

end A096957.P6514744537595464490

namespace A096957

/-- `A099776(n+1)+A005286(n)` -/
def P6514744537595464490.Spec : Prop :=
  ∀ n, P6514744537595464490.a n = A096957 n

end A096957

/-! ## A096957.P1160033450641123578

`A222001(n+1)+A033537(n)`
-/

namespace A096957.P1160033450641123578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222001 (n + 1) + A033537 n

end

end A096957.P1160033450641123578

namespace A096957

/-- `A222001(n+1)+A033537(n)` -/
def P1160033450641123578.Spec : Prop :=
  ∀ n, P1160033450641123578.a n = A096957 n

end A096957

/-!
# A096958: Fifth column (m=4) of (1,6)-Pascal triangle A096956.

The programs for A096958, the canonical program `A096958.P3978201826023194647` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A096958 has offset 0).

The definition of A096958 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A096958.P3978201826023194647

`(n+24)*C(n+3, 3)/4`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A096958

/-- `(n+24)*C(n+3, 3)/4` -/
def P3978201826023194647.Spec : Prop :=
  ∀ n, P3978201826023194647.a n = (A096958 n : ℚ)

end A096958

/-! ## A096958.P6381649633595503540

`∑[∑[∑[6+n]]]`
-/

namespace A096958.P6381649633595503540
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 + n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A096958.P6381649633595503540

namespace A096958

/-- `∑[∑[∑[6+n]]]` -/
def P6381649633595503540.Spec : Prop :=
  ∀ n, (P6381649633595503540.a n : ℤ) = A096958 n

end A096958

/-! ## A096958.P3249752665605582959

`A096957(n)+a(n-1)` with `a(0)=6`
-/

namespace A096958.P3249752665605582959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6] fun n a =>
  A096957 n + a (n - 1)

end

end A096958.P3249752665605582959

namespace A096958

/-- `A096957(n)+a(n-1)` -/
def P3249752665605582959.Spec : Prop :=
  ∀ n, P3249752665605582959.a n = A096958 n

end A096958

/-! ## A096958.P16389848589923835210

`C(n+3, 3)+A095667(n)+C(n+3, 3)`
-/

namespace A096958.P16389848589923835210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 3) 3 : ℤ) + (A095667 n + (Nat.choose (n + 3) 3 : ℤ))

end

end A096958.P16389848589923835210

namespace A096958

/-- `C(n+3, 3)+A095667(n)+C(n+3, 3)` -/
def P16389848589923835210.Spec : Prop :=
  ∀ n, P16389848589923835210.a n = A096958 n

end A096958

/-! ## A096958.P6927828471785742159

`A096942(n)+A000292(n+1)`
-/

namespace A096958.P6927828471785742159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096942 n + A000292 (n + 1)

end

end A096958.P6927828471785742159

namespace A096958

/-- `A096942(n)+A000292(n+1)` -/
def P6927828471785742159.Spec : Prop :=
  ∀ n, P6927828471785742159.a n = A096958 n

end A096958

/-! ## A096958.P5372914777392568968

`A101854(n+1)+A000292(n)`
-/

namespace A096958.P5372914777392568968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101854 (n + 1) + A000292 n

end

end A096958.P5372914777392568968

namespace A096958

/-- `A101854(n+1)+A000292(n)` -/
def P5372914777392568968.Spec : Prop :=
  ∀ n, P5372914777392568968.a n = A096958 n

end A096958

/-! ## A096958.P9592351309775609071

`A229439(n+1)+A058794(n)`
-/

namespace A096958.P9592351309775609071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229439 (n + 1) + A058794 n

end

end A096958.P9592351309775609071

namespace A096958

/-- `A229439(n+1)+A058794(n)` -/
def P9592351309775609071.Spec : Prop :=
  ∀ n, P9592351309775609071.a n = A096958 n

end A096958

/-! ## A096958.P3426763914602709205

`2*A095661(n)-∑[A000292(n)]`
-/

namespace A096958.P3426763914602709205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A095661 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A096958.P3426763914602709205

namespace A096958

/-- `2*A095661(n)-∑[A000292(n)]` -/
def P3426763914602709205.Spec : Prop :=
  ∀ n, P3426763914602709205.a n = A096958 n

end A096958

/-! ## A096958.P16742024721420361039

`A167543(n+8)+A130809(n+3)`
-/

namespace A096958.P16742024721420361039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167543 (n + 8) + A130809 (n + 3)

end

end A096958.P16742024721420361039

namespace A096958

/-- `A167543(n+8)+A130809(n+3)` -/
def P16742024721420361039.Spec : Prop :=
  ∀ n, P16742024721420361039.a n = A096958 n

end A096958

/-! ## A096958.P16369321556127302239

`A055832(n+5)-A167541(n+6)`
-/

namespace A096958.P16369321556127302239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055832 (n + 5) - A167541 (n + 6)

end

end A096958.P16369321556127302239

namespace A096958

/-- `A055832(n+5)-A167541(n+6)` -/
def P16369321556127302239.Spec : Prop :=
  ∀ n, P16369321556127302239.a n = A096958 n

end A096958

/-! ## A096958.P9289379426801674699

`A136105(n+8)-2*A000292(n)`
-/

namespace A096958.P9289379426801674699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136105 (n + 8) - 2 * A000292 n

end

end A096958.P9289379426801674699

namespace A096958

/-- `A136105(n+8)-2*A000292(n)` -/
def P9289379426801674699.Spec : Prop :=
  ∀ n, P9289379426801674699.a n = A096958 n

end A096958

/-! ## A096958.P940971954584036806

`A095667(n)+A095667(n)-A005582(n+1)`
-/

namespace A096958.P940971954584036806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095667 n + (A095667 n - A005582 (n + 1))

end

end A096958.P940971954584036806

namespace A096958

/-- `A095667(n)+A095667(n)-A005582(n+1)` -/
def P940971954584036806.Spec : Prop :=
  ∀ n, P940971954584036806.a n = A096958 n

end A096958

/-! ## A096958.P12071787785450908893

`A000292(n+1)+A006504(n+1)+A000292(n)`
-/

namespace A096958.P12071787785450908893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 1) + (A006504 (n + 1) + A000292 n)

end

end A096958.P12071787785450908893

namespace A096958

/-- `A000292(n+1)+A006504(n+1)+A000292(n)` -/
def P12071787785450908893.Spec : Prop :=
  ∀ n, P12071787785450908893.a n = A096958 n

end A096958

/-! ## A096958.P13926832223611330992

`A000292(n+1)+A095667(n)+A000292(n+1)`
-/

namespace A096958.P13926832223611330992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 1) + (A095667 n + A000292 (n + 1))

end

end A096958.P13926832223611330992

namespace A096958

/-- `A000292(n+1)+A095667(n)+A000292(n+1)` -/
def P13926832223611330992.Spec : Prop :=
  ∀ n, P13926832223611330992.a n = A096958 n

end A096958

/-! ## A096958.P17415112296177213258

`A024191(n+1)+A165187(n+1)/A000292(n+1)`
-/

namespace A096958.P17415112296177213258
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024191 (n + 1) : ℚ) + (A165187 (n + 1) : ℚ) / (A000292 (n + 1) : ℚ)

end

end A096958.P17415112296177213258

namespace A096958

/-- `A024191(n+1)+A165187(n+1)/A000292(n+1)` -/
def P17415112296177213258.Spec : Prop :=
  ∀ n, P17415112296177213258.a n = (A096958 n : ℚ)

end A096958

/-! ## A096958.P15727421653822819507

`A001701(n+2)-A002415(n+1)`
-/

namespace A096958.P15727421653822819507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001701 (n + 2) - A002415 (n + 1)

end

end A096958.P15727421653822819507

namespace A096958

/-- `A001701(n+2)-A002415(n+1)` -/
def P15727421653822819507.Spec : Prop :=
  ∀ n, P15727421653822819507.a n = A096958 n

end A096958

/-! ## A096958.P17626653620727065509

`2*A022815(n+2)-A051744(n+2)`
-/

namespace A096958.P17626653620727065509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A022815 (n + 2) - A051744 (n + 2)

end

end A096958.P17626653620727065509

namespace A096958

/-- `2*A022815(n+2)-A051744(n+2)` -/
def P17626653620727065509.Spec : Prop :=
  ∀ n, P17626653620727065509.a n = A096958 n

end A096958

/-! ## A096958.P2657212467807364028

`A096959(n+1)-(A096959(n)+A096957(n+1))`
-/

namespace A096958.P2657212467807364028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096959 (n + 1) - (A096959 n + A096957 (n + 1))

end

end A096958.P2657212467807364028

namespace A096958

/-- `A096959(n+1)-(A096959(n)+A096957(n+1))` -/
def P2657212467807364028.Spec : Prop :=
  ∀ n, P2657212467807364028.a n = A096958 n

end A096958

/-! ## A096958.P2330382375709421454

`A096956(A055999(n+3)-(2*n+1))`
-/

namespace A096958.P2330382375709421454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096956 (A055999 (n + 3) - (2 * n + 1 : ℤ)).toNat

end

end A096958.P2330382375709421454

namespace A096958

/-- `A096956(A055999(n+3)-(2*n+1))` -/
def P2330382375709421454.Spec : Prop :=
  ∀ n, P2330382375709421454.a n = A096958 n

end A096958

/-! ## A096958.P8043008281179021538

`A093563(Δ[A264443(n)]-1)`
-/

namespace A096958.P8043008281179021538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093563 (f1 (n + 1) - f1 n - 1).toNat

end

end A096958.P8043008281179021538

namespace A096958

/-- `A093563(Δ[A264443(n)]-1)` -/
def P8043008281179021538.Spec : Prop :=
  ∀ n, P8043008281179021538.a n = A096958 n

end A096958

/-!
# A096959: Sixth column (m=5) of (1,6)-Pascal triangle A096956.

The programs for A096959, the canonical program `A096959.P11439647974352652688` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A096959 has offset 0).

The definition of A096959 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A096959.P11439647974352652688

`(n+30)*C(n+4, 4)/5`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A096959

/-- `(n+30)*C(n+4, 4)/5` -/
def P11439647974352652688.Spec : Prop :=
  ∀ n, P11439647974352652688.a n = (A096959 n : ℚ)

end A096959

/-! ## A096959.P9774243918650085971

`∑[∑[∑[∑[6+n]]]]`
-/

namespace A096959.P9774243918650085971
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 + n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A096959.P9774243918650085971

namespace A096959

/-- `∑[∑[∑[∑[6+n]]]]` -/
def P9774243918650085971.Spec : Prop :=
  ∀ n, (P9774243918650085971.a n : ℤ) = A096959 n

end A096959

/-! ## A096959.P4056996125617571258

`A096958(n)+a(n-1)` with `a(0)=6`
-/

namespace A096959.P4056996125617571258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6] fun n a =>
  A096958 n + a (n - 1)

end

end A096959.P4056996125617571258

namespace A096959

/-- `A096958(n)+a(n-1)` -/
def P4056996125617571258.Spec : Prop :=
  ∀ n, P4056996125617571258.a n = A096959 n

end A096959

/-! ## A096959.P17904629134033350753

`2*A096943(n)-A095668(n)`
-/

namespace A096959.P17904629134033350753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A096943 n - A095668 n

end

end A096959.P17904629134033350753

namespace A096959

/-- `2*A096943(n)-A095668(n)` -/
def P17904629134033350753.Spec : Prop :=
  ∀ n, P17904629134033350753.a n = A096959 n

end A096959

/-! ## A096959.P1684119958921730210

`A253945(n+4)-A174002(n)`
-/

namespace A096959.P1684119958921730210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253945 (n + 4) - A174002 n

end

end A096959.P1684119958921730210

namespace A096959

/-- `A253945(n+4)-A174002(n)` -/
def P1684119958921730210.Spec : Prop :=
  ∀ n, P1684119958921730210.a n = A096959 n

end A096959

/-! ## A096959.P7495244407787771370

`A167543(n+8)+A139798(n+1)`
-/

namespace A096959.P7495244407787771370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167543 (n + 8) + A139798 (n + 1)

end

end A096959.P7495244407787771370

namespace A096959

/-- `A167543(n+8)+A139798(n+1)` -/
def P7495244407787771370.Spec : Prop :=
  ∀ n, P7495244407787771370.a n = A096959 n

end A096959

/-! ## A096959.P7005374682025933443

`n+1+A027658(n)+A000096(n+1)²`
-/

namespace A096959.P7005374682025933443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + (A027658 n + A000096 (n + 1) ^ 2)

end

end A096959.P7005374682025933443

namespace A096959

/-- `n+1+A027658(n)+A000096(n+1)²` -/
def P7005374682025933443.Spec : Prop :=
  ∀ n, P7005374682025933443.a n = A096959 n

end A096959

/-! ## A096959.P430780750336371874

`A097297(n+1)-(A097297(n)+A096958(n+1))`
-/

namespace A096959.P430780750336371874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097297 (n + 1) - (A097297 n + A096958 (n + 1))

end

end A096959.P430780750336371874

namespace A096959

/-- `A097297(n+1)-(A097297(n)+A096958(n+1))` -/
def P430780750336371874.Spec : Prop :=
  ∀ n, P430780750336371874.a n = A096959 n

end A096959

/-! ## A096959.P113044721543615329

`A271567(n+1)-(A056118(n)+A002419(n+2))`
-/

namespace A096959.P113044721543615329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271567 (n + 1) - (A056118 n + A002419 (n + 2))

end

end A096959.P113044721543615329

namespace A096959

/-- `A271567(n+1)-(A056118(n)+A002419(n+2))` -/
def P113044721543615329.Spec : Prop :=
  ∀ n, P113044721543615329.a n = A096959 n

end A096959

/-! ## A096959.P14831278646803881161

`A271567(n+1)-(A051843(n+1)+A027800(n+1))`
-/

namespace A096959.P14831278646803881161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271567 (n + 1) - (A051843 (n + 1) + A027800 (n + 1))

end

end A096959.P14831278646803881161

namespace A096959

/-- `A271567(n+1)-(A051843(n+1)+A027800(n+1))` -/
def P14831278646803881161.Spec : Prop :=
  ∀ n, P14831278646803881161.a n = A096959 n

end A096959

/-! ## A096959.P9138032510768948717

`A000389(n+4)+A000217(n+1)*A000217(n+3)`
-/

namespace A096959.P9138032510768948717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000389 (n + 4) + A000217 (n + 1) * A000217 (n + 3)

end

end A096959.P9138032510768948717

namespace A096959

/-- `A000389(n+4)+A000217(n+1)*A000217(n+3)` -/
def P9138032510768948717.Spec : Prop :=
  ∀ n, P9138032510768948717.a n = A096959 n

end A096959

/-! ## A096959.P7191259128612067176

`A154286(n)+A000389(n+5)`
-/

namespace A096959.P7191259128612067176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154286 n + A000389 (n + 5)

end

end A096959.P7191259128612067176

namespace A096959

/-- `A154286(n)+A000389(n+5)` -/
def P7191259128612067176.Spec : Prop :=
  ∀ n, P7191259128612067176.a n = A096959 n

end A096959

/-! ## A096959.P12267610026453791236

`A000574(n+3)+A000217(A000096(n+1))`
-/

namespace A096959.P12267610026453791236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000574 (n + 3) + A000217 (A000096 (n + 1)).toNat

end

end A096959.P12267610026453791236

namespace A096959

/-- `A000574(n+3)+A000217(A000096(n+1))` -/
def P12267610026453791236.Spec : Prop :=
  ∀ n, P12267610026453791236.a n = A096959 n

end A096959

/-! ## A096959.P9952652807701612710

`A000574(n+3)+A000217(A055998(n)+2)`
-/

namespace A096959.P9952652807701612710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000574 (n + 3) + A000217 (A055998 n + 2).toNat

end

end A096959.P9952652807701612710

namespace A096959

/-- `A000574(n+3)+A000217(A055998(n)+2)` -/
def P9952652807701612710.Spec : Prop :=
  ∀ n, P9952652807701612710.a n = A096959 n

end A096959

/-! ## A096959.P9725930917884955560

`A093563(Δ[A264443(n+1)]-2)`
-/

namespace A096959.P9725930917884955560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093563 (f1 (n + 1) - f1 n - 2).toNat

end

end A096959.P9725930917884955560

namespace A096959

/-- `A093563(Δ[A264443(n+1)]-2)` -/
def P9725930917884955560.Spec : Prop :=
  ∀ n, P9725930917884955560.a n = A096959 n

end A096959

/-!
# A096960: a(n) = Sum_{0

The programs for A096960, the canonical program `A096960.P12612714756278171164` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A096960 has offset 1).

The definition of A096960 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A096960.P8705553391148208414

`∑{d}[A000265(n+1), ((n+1)/#)^5]`
-/

namespace A096960.P8705553391148208414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, ((n + 1 : ℚ) / (d : ℚ)) ^ 5

end

end A096960.P8705553391148208414

namespace A096960

/-- `∑{d}[A000265(n+1), ((n+1)/#)^5]` -/
def P8705553391148208414.Spec : Prop :=
  ∀ n, P8705553391148208414.a n = (A096960 (n + 1) : ℚ)

end A096960

/-! ## A096960.P12612714756278171164

`A352051(n+1)+A059841(n)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A096960

/-- `A352051(n+1)+A059841(n)` -/
def P12612714756278171164.Spec : Prop :=
  ∀ n, P12612714756278171164.a n = A096960 (n + 1)

theorem P12612714756278171164.correct : P12612714756278171164.Spec := by
  intro n
  simp only [A096960, Nat.add_sub_cancel]

end A096960

/-! ## A096960.P6757318890405571942

`A051002(n+1)*A006519(n+1)^5`
-/

namespace A096960.P6757318890405571942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051002 (n + 1) * A006519 (n + 1) ^ 5

end

end A096960.P6757318890405571942

namespace A096960

/-- `A051002(n+1)*A006519(n+1)^5` -/
def P6757318890405571942.Spec : Prop :=
  ∀ n, P6757318890405571942.a n = A096960 (n + 1)

end A096960

/-! ## A096960.P8465108645444461852

`∑{d}[n+1, A001227(#)*A059378((n+1)/#)]`
-/

namespace A096960.P8465108645444461852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001227 d * A059378 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A096960.P8465108645444461852

namespace A096960

/-- `∑{d}[n+1, A001227(#)*A059378((n+1)/#)]` -/
def P8465108645444461852.Spec : Prop :=
  ∀ n, P8465108645444461852.a n = A096960 (n + 1)

end A096960

/-! ## A096960.P14412556828017445735

`∑{d}[n+1, A001160(#)*A154955((n+1)/#)]`
-/

namespace A096960.P14412556828017445735
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001160 d * A154955 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A096960.P14412556828017445735

namespace A096960

/-- `∑{d}[n+1, A001160(#)*A154955((n+1)/#)]` -/
def P14412556828017445735.Spec : Prop :=
  ∀ n, P14412556828017445735.a n = A096960 (n + 1)

end A096960

/-! ## A096960.P4192345587201362591

`∑{d}[n+1, A076577(#)*A115224((n+1)/#)]`
-/

namespace A096960.P4192345587201362591
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A076577 d * A115224 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A096960.P4192345587201362591

namespace A096960

/-- `∑{d}[n+1, A076577(#)*A115224((n+1)/#)]` -/
def P4192345587201362591.Spec : Prop :=
  ∀ n, P4192345587201362591.a n = A096960 (n + 1)

end A096960

/-! ## A096960.P18277997771396313424

`∑{d}[n+1, A143259(#)*A351300((n+1)/#)]`
-/

namespace A096960.P18277997771396313424
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A143259 d * A351300 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A096960.P18277997771396313424

namespace A096960

/-- `∑{d}[n+1, A143259(#)*A351300((n+1)/#)]` -/
def P18277997771396313424.Spec : Prop :=
  ∀ n, P18277997771396313424.a n = A096960 (n + 1)

end A096960

/-! ## A096960.P12905513782832415568

`∑{d}[n+1, A238533(#)*A285989((n+1)/#)]`
-/

namespace A096960.P12905513782832415568
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A238533 d * A285989 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A096960.P12905513782832415568

namespace A096960

/-- `∑{d}[n+1, A238533(#)*A285989((n+1)/#)]` -/
def P12905513782832415568.Spec : Prop :=
  ∀ n, P12905513782832415568.a n = A096960 (n + 1)

end A096960

/-! ## A096960.P9486388540545798736

`A352051(n+1)+A000035(n+1)`
-/

namespace A096960.P9486388540545798736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352051 (n + 1) + A000035 (n + 1)

end

end A096960.P9486388540545798736

namespace A096960

/-- `A352051(n+1)+A000035(n+1)` -/
def P9486388540545798736.Spec : Prop :=
  ∀ n, P9486388540545798736.a n = A096960 (n + 1)

end A096960

/-! ## A096960.P10995636898030248723

`A286399(2*(n+1))`
-/

namespace A096960.P10995636898030248723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286399 (2 * (n + 1))

end

end A096960.P10995636898030248723

namespace A096960

/-- `A286399(2*(n+1))` -/
def P10995636898030248723.Spec : Prop :=
  ∀ n, P10995636898030248723.a n = A096960 (n + 1)

end A096960

/-!
# A096961: a(n) = Sum_{0

The programs for A096961, the canonical program `A096961.P13618465674027357203` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A096961 has offset 1).

The definition of A096961 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A096961.P13618465674027357203

`∑{d}[2*(n+1), ((n+1)%#)^7]`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A096961

/-- `∑{d}[2*(n+1), ((n+1)%#)^7]` -/
def P13618465674027357203.Spec : Prop :=
  ∀ n, (P13618465674027357203.a n : ℤ) = A096961 (n + 1)

theorem P13618465674027357203.correct : P13618465674027357203.Spec := by
  intro n
  simp only [A096961, Nat.add_sub_cancel]

end A096961

/-! ## A096961.P9300971366524394699

`A352053(n+1)+A059841(n)`
-/

namespace A096961.P9300971366524394699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352053 (n + 1) + A059841 n

end

end A096961.P9300971366524394699

namespace A096961

/-- `A352053(n+1)+A059841(n)` -/
def P9300971366524394699.Spec : Prop :=
  ∀ n, P9300971366524394699.a n = A096961 (n + 1)

end A096961

/-! ## A096961.P12406555885410110495

`(A321552(n+1)+A013955(n+1))/2`
-/

namespace A096961.P12406555885410110495
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A321552 (n + 1) + A013955 (n + 1) : ℚ) / 2

end

end A096961.P12406555885410110495

namespace A096961

/-- `(A321552(n+1)+A013955(n+1))/2` -/
def P12406555885410110495.Spec : Prop :=
  ∀ n, P12406555885410110495.a n = (A096961 (n + 1) : ℚ)

end A096961

/-! ## A096961.P3682721981723093857

`A321811(n+1)*A006519(n+1)^7`
-/

namespace A096961.P3682721981723093857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321811 (n + 1) * A006519 (n + 1) ^ 7

end

end A096961.P3682721981723093857

namespace A096961

/-- `A321811(n+1)*A006519(n+1)^7` -/
def P3682721981723093857.Spec : Prop :=
  ∀ n, P3682721981723093857.a n = A096961 (n + 1)

end A096961

/-! ## A096961.P15565476497496126407

`∑{d}[n+1, A001227(#)*A069092((n+1)/#)]`
-/

namespace A096961.P15565476497496126407
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001227 d * A069092 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A096961.P15565476497496126407

namespace A096961

/-- `∑{d}[n+1, A001227(#)*A069092((n+1)/#)]` -/
def P15565476497496126407.Spec : Prop :=
  ∀ n, P15565476497496126407.a n = A096961 (n + 1)

end A096961

/-! ## A096961.P6274126943071529800

`∑{d}[n+1, A013955(#)*A154955((n+1)/#)]`
-/

namespace A096961.P6274126943071529800
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A013955 d * A154955 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A096961.P6274126943071529800

namespace A096961

/-- `∑{d}[n+1, A013955(#)*A154955((n+1)/#)]` -/
def P6274126943071529800.Spec : Prop :=
  ∀ n, P6274126943071529800.a n = A096961 (n + 1)

end A096961

/-! ## A096961.P9014473187088029838

`∑{d}[n+1, A143259(#)*A351302((n+1)/#)]`
-/

namespace A096961.P9014473187088029838
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A143259 d * A351302 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A096961.P9014473187088029838

namespace A096961

/-- `∑{d}[n+1, A143259(#)*A351302((n+1)/#)]` -/
def P9014473187088029838.Spec : Prop :=
  ∀ n, P9014473187088029838.a n = A096961 (n + 1)

end A096961

/-! ## A096961.P11380279285755660434

`∑{d}[n+1, A239442(#)*A321817((n+1)/#)]`
-/

namespace A096961.P11380279285755660434
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A239442 d * A321817 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A096961.P11380279285755660434

namespace A096961

/-- `∑{d}[n+1, A239442(#)*A321817((n+1)/#)]` -/
def P11380279285755660434.Spec : Prop :=
  ∀ n, P11380279285755660434.a n = A096961 (n + 1)

end A096961

/-! ## A096961.P15982145370968872390

`∑{d}[n+1, A001015((n+1)%(#+#))]`
-/

namespace A096961.P15982145370968872390
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001015 ((n + 1) % (d + d))

end

end A096961.P15982145370968872390

namespace A096961

/-- `∑{d}[n+1, A001015((n+1)%(#+#))]` -/
def P15982145370968872390.Spec : Prop :=
  ∀ n, P15982145370968872390.a n = A096961 (n + 1)

end A096961

/-! ## A096961.P16687055001410046305

`A352053(n+1)+A000035(n+1)`
-/

namespace A096961.P16687055001410046305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352053 (n + 1) + A000035 (n + 1)

end

end A096961.P16687055001410046305

namespace A096961

/-- `A352053(n+1)+A000035(n+1)` -/
def P16687055001410046305.Spec : Prop :=
  ∀ n, P16687055001410046305.a n = A096961 (n + 1)

end A096961

/-! ## A096961.P15346534857521015117

`A352053(n+1)+A010673(n+1)/A010700(n)`
-/

namespace A096961.P15346534857521015117
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A352053 (n + 1) : ℚ) + (A010673 (n + 1) : ℚ) / (A010700 n : ℚ)

end

end A096961.P15346534857521015117

namespace A096961

/-- `A352053(n+1)+A010673(n+1)/A010700(n)` -/
def P15346534857521015117.Spec : Prop :=
  ∀ n, P15346534857521015117.a n = (A096961 (n + 1) : ℚ)

end A096961

/-! ## A096961.P6120221296796728162

`A155944(n+1)+A352053(n+1)-A001045(n+1)`
-/

namespace A096961.P6120221296796728162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155944 (n + 1) + (A352053 (n + 1) - A001045 (n + 1))

end

end A096961.P6120221296796728162

namespace A096961

/-- `A155944(n+1)+A352053(n+1)-A001045(n+1)` -/
def P6120221296796728162.Spec : Prop :=
  ∀ n, P6120221296796728162.a n = A096961 (n + 1)

end A096961

/-!
# A096962: a(n) = Sum_{0

The programs for A096962, the canonical program `A096962.P16075497704585317796` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A096962 has offset 1).

The definition of A096962 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A096962.P16075497704585317796

`∑{d}[2*(n+1), ((n+1)%#)^9]`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A096962

/-- `∑{d}[2*(n+1), ((n+1)%#)^9]` -/
def P16075497704585317796.Spec : Prop :=
  ∀ n, (P16075497704585317796.a n : ℤ) = A096962 (n + 1)

theorem P16075497704585317796.correct : P16075497704585317796.Spec := by
  intro n
  simp only [A096962, Nat.add_sub_cancel]

end A096962

/-! ## A096962.P4497071668265908988

`∑{d}[A000265(n+1), ((n+1)/#)^9]`
-/

namespace A096962.P4497071668265908988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, ((n + 1 : ℚ) / (d : ℚ)) ^ 9

end

end A096962.P4497071668265908988

namespace A096962

/-- `∑{d}[A000265(n+1), ((n+1)/#)^9]` -/
def P4497071668265908988.Spec : Prop :=
  ∀ n, P4497071668265908988.a n = (A096962 (n + 1) : ℚ)

end A096962

/-! ## A096962.P17838796566239461643

`A352055(n+1)+A059841(n)`
-/

namespace A096962.P17838796566239461643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352055 (n + 1) + A059841 n

end

end A096962.P17838796566239461643

namespace A096962

/-- `A352055(n+1)+A059841(n)` -/
def P17838796566239461643.Spec : Prop :=
  ∀ n, P17838796566239461643.a n = A096962 (n + 1)

end A096962

/-! ## A096962.P8098206266163898239

`(A321554(n+1)+A013957(n+1))/2`
-/

namespace A096962.P8098206266163898239
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A321554 (n + 1) + A013957 (n + 1) : ℚ) / 2

end

end A096962.P8098206266163898239

namespace A096962

/-- `(A321554(n+1)+A013957(n+1))/2` -/
def P8098206266163898239.Spec : Prop :=
  ∀ n, P8098206266163898239.a n = (A096962 (n + 1) : ℚ)

end A096962

/-! ## A096962.P10019880959756929003

`A321813(n+1)*A006519(n+1)^9`
-/

namespace A096962.P10019880959756929003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321813 (n + 1) * A006519 (n + 1) ^ 9

end

end A096962.P10019880959756929003

namespace A096962

/-- `A321813(n+1)*A006519(n+1)^9` -/
def P10019880959756929003.Spec : Prop :=
  ∀ n, P10019880959756929003.a n = A096962 (n + 1)

end A096962

/-! ## A096962.P12816125943394205248

`abs((A321565(n+1)+A321548(n+1))/2)`
-/

namespace A096962.P12816125943394205248
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A321565 (n + 1) + A321548 (n + 1) : ℚ) / 2|

end

end A096962.P12816125943394205248

namespace A096962

/-- `abs((A321565(n+1)+A321548(n+1))/2)` -/
def P12816125943394205248.Spec : Prop :=
  ∀ n, P12816125943394205248.a n = (A096962 (n + 1) : ℚ)

end A096962

/-! ## A096962.P2506152771400470642

`∑{d}[n+1, A001227(#)*A069094((n+1)/#)]`
-/

namespace A096962.P2506152771400470642
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001227 d * A069094 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A096962.P2506152771400470642

namespace A096962

/-- `∑{d}[n+1, A001227(#)*A069094((n+1)/#)]` -/
def P2506152771400470642.Spec : Prop :=
  ∀ n, P2506152771400470642.a n = A096962 (n + 1)

end A096962

/-! ## A096962.P5596818274136705097

`∑{d}[n+1, A013957(#)*A154955((n+1)/#)]`
-/

namespace A096962.P5596818274136705097
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A013957 d * A154955 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A096962.P5596818274136705097

namespace A096962

/-- `∑{d}[n+1, A013957(#)*A154955((n+1)/#)]` -/
def P5596818274136705097.Spec : Prop :=
  ∀ n, P5596818274136705097.a n = A096962 (n + 1)

end A096962

/-! ## A096962.P16815458444488148300

`∑{d}[n+1, A143259(#)*A351304((n+1)/#)]`
-/

namespace A096962.P16815458444488148300
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A143259 d * A351304 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A096962.P16815458444488148300

namespace A096962

/-- `∑{d}[n+1, A143259(#)*A351304((n+1)/#)]` -/
def P16815458444488148300.Spec : Prop :=
  ∀ n, P16815458444488148300.a n = A096962 (n + 1)

end A096962

/-! ## A096962.P18052900815873386958

`∑{d}[n+1, A239443(#)*A321818((n+1)/#)]`
-/

namespace A096962.P18052900815873386958
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A239443 d * A321818 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A096962.P18052900815873386958

namespace A096962

/-- `∑{d}[n+1, A239443(#)*A321818((n+1)/#)]` -/
def P18052900815873386958.Spec : Prop :=
  ∀ n, P18052900815873386958.a n = A096962 (n + 1)

end A096962

/-! ## A096962.P1518162709607397238

`A352055(n+1)+A000035(n+1)`
-/

namespace A096962.P1518162709607397238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352055 (n + 1) + A000035 (n + 1)

end

end A096962.P1518162709607397238

namespace A096962

/-- `A352055(n+1)+A000035(n+1)` -/
def P1518162709607397238.Spec : Prop :=
  ∀ n, P1518162709607397238.a n = A096962 (n + 1)

end A096962

/-!
# A096963: a(n) = Sum {0

The programs for A096963, the canonical program `A096963.P4682834259484350682` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A096963 has offset 1).

The definition of A096963 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A096963.P2259142651946140932

`(A321556(n+1)+A013959(n+1))/2`
-/

namespace A096963.P2259142651946140932
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A321556 (n + 1) + A013959 (n + 1) : ℚ) / 2

end

end A096963.P2259142651946140932

namespace A096963

/-- `(A321556(n+1)+A013959(n+1))/2` -/
def P2259142651946140932.Spec : Prop :=
  ∀ n, P2259142651946140932.a n = (A096963 (n + 1) : ℚ)

end A096963

/-! ## A096963.P13144831649926211688

`∑{d}[n+1, A013959(#)*A154955((n+1)/#)]`
-/

namespace A096963.P13144831649926211688
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A013959 d * A154955 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A096963.P13144831649926211688

namespace A096963

/-- `∑{d}[n+1, A013959(#)*A154955((n+1)/#)]` -/
def P13144831649926211688.Spec : Prop :=
  ∀ n, P13144831649926211688.a n = A096963 (n + 1)

end A096963

/-! ## A096963.P4682834259484350682

`A006519(n+1)^11*∑{d}[A000265(n+1), #^11]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A096963

/-- `A006519(n+1)^11*∑{d}[A000265(n+1), #^11]` -/
def P4682834259484350682.Spec : Prop :=
  ∀ n, P4682834259484350682.a n = A096963 (n + 1)

theorem P4682834259484350682.correct : P4682834259484350682.Spec := by
  intro n
  simp only [A096963, Nat.add_sub_cancel]

end A096963

/-! ## A096963.P1990488745625919638

`A008455(A006519(n+1))*A321815(n+1)`
-/

namespace A096963.P1990488745625919638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008455 (A006519 (n + 1)).toNat * A321815 (n + 1)

end

end A096963.P1990488745625919638

namespace A096963

/-- `A008455(A006519(n+1))*A321815(n+1)` -/
def P1990488745625919638.Spec : Prop :=
  ∀ n, P1990488745625919638.a n = A096963 (n + 1)

end A096963

/-! ## A096963.P10566608377672252190

`∑{d}[A000265(n+1), A008455((n+1)/#)]`
-/

namespace A096963.P10566608377672252190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A008455 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A096963.P10566608377672252190

namespace A096963

/-- `∑{d}[A000265(n+1), A008455((n+1)/#)]` -/
def P10566608377672252190.Spec : Prop :=
  ∀ n, P10566608377672252190.a n = A096963 (n + 1)

end A096963

/-!
# A096965: Number of sets of even number of even lists, cf. A000262.

The programs for A096965, there is no canonical definition to state claims against.
-/

/-! ## A096965.P9696209526095557198

`(A111884(n)+A000262(n))/2`
-/

namespace A096965.P9696209526095557198
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A111884 n + A000262 n : ℚ) / 2

end

end A096965.P9696209526095557198

/-! ## A096965.P4485422290777982992

`(A293133(∑[n]+n)+A000262(n))/2`
-/

namespace A096965.P4485422290777982992
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A293133 (∑ j ∈ Finset.range (n + 1), f1 j + n) + A000262 n : ℚ) / 2

end

end A096965.P4485422290777982992

/-! ## A096965.P11497680068842180981

`A088313(n)+A059841(n)*A293116(n)`
-/

namespace A096965.P11497680068842180981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088313 n + A059841 n * A293116 n

end

end A096965.P11497680068842180981

/-! ## A096965.P8802496084656454629

`A088312(n)-A000035(n)*A293116(n)`
-/

namespace A096965.P8802496084656454629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088312 n - A000035 n * A293116 n

end

end A096965.P8802496084656454629

/-! ## A096965.P16435403043270237721

`(A000262(n)+A033999(n)*A293116(n))/2`
-/

namespace A096965.P16435403043270237721
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000262 n + A033999 n * A293116 n : ℚ) / 2

end

end A096965.P16435403043270237721

/-! ## A096965.P1720119912390320868

`(A000262(n)+A130595(∑[n])*A293116(n))/2`
-/

namespace A096965.P1720119912390320868
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000262 n + A130595 (∑ j ∈ Finset.range (n + 1), f1 j) * A293116 n : ℚ) / 2

end

end A096965.P1720119912390320868

/-!
# A096966: Triangle (read by rows) in which the number of entries in a row only increases by 1 every other row, the first column and the 'diagonal' is set to all 1's and a(i,j) = a(i-1,j) + a(i-1,j-1) + a(i-2,j-1) + a(i-3,j-1) for other entries.

The programs for A096966, there is no canonical definition to state claims against.
-/

/-! ## A096966.P205493185229582208

`A144447(A056536(n+1))`
-/

namespace A096966.P205493185229582208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144447 (A056536 (n + 1)).toNat

end

end A096966.P205493185229582208

/-! ## A096966.P4682566409721393270

`A144447(A091018(n)+1)`
-/

namespace A096966.P4682566409721393270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144447 (A091018 n + 1).toNat

end

end A096966.P4682566409721393270

/-!
# A096967: Bisection of A096441.

The programs for A096967, there is no canonical definition to state claims against.
-/

/-! ## A096967.P18055687511833876112

`record[n%2*A096441(n+1)]`
-/

namespace A096967.P18055687511833876112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n % 2 : ℕ) : ℤ) * A096441 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A096967.P18055687511833876112

/-! ## A096967.P4593299827747224224

`record[A096441(n+1)+n-A028310(n)]`
-/

namespace A096967.P4593299827747224224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096441 (n + 1) + ((n : ℤ) - A028310 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A096967.P4593299827747224224

/-! ## A096967.P5495791239481274576

`record[(A014681(n)-n)*A096441(n+1)]`
-/

namespace A096967.P5495791239481274576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014681 n - (n : ℤ)) * A096441 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A096967.P5495791239481274576

/-! ## A096967.P10481749439542441081

`record[n/A014681(n+1)*A096441(n+1)]`
-/

namespace A096967.P10481749439542441081
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A014681 (n + 1) : ℚ) * (A096441 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A096967.P10481749439542441081

/-! ## A096967.P14248502372865730829

`record[A096441(n+1)]-C(n+1, A014076(n+1))`
-/

namespace A096967.P14248502372865730829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096441 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (Nat.choose (n + 1) (A014076 (n + 1)).toNat : ℤ)

end

end A096967.P14248502372865730829

/-! ## A096967.P11145906581702077635

`(A035294(n)+A000041(n))%A058695(n)`
-/

namespace A096967.P11145906581702077635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A035294 n + A000041 n) (A058695 n)

end

end A096967.P11145906581702077635

/-! ## A096967.P13316753082489443659

`record[A096441(n+1)%A000070(n)]`
-/

namespace A096967.P13316753082489443659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A096441 (n + 1)) (A000070 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A096967.P13316753082489443659

/-! ## A096967.P226344360389821758

`record[A096441(n+1)]*char[A026249(n+1)]`
-/

namespace A096967.P226344360389821758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096441 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026249 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A096967.P226344360389821758

/-! ## A096967.P6196962779085609819

`record[A096441(n+1)]%A345192(n+3)`
-/

namespace A096967.P6196962779085609819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096441 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A345192 (n + 3))

end

end A096967.P6196962779085609819

/-! ## A096967.P18401468315428679407

`A047967(4*n)-(A006477(2*n)+A006477(4*n))`
-/

namespace A096967.P18401468315428679407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047967 (4 * n) - (A006477 (2 * n) + A006477 (4 * n))

end

end A096967.P18401468315428679407

/-! ## A096967.P4873552309123354708

`record[A096441(n+1)]%A001700(n)`
-/

namespace A096967.P4873552309123354708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096441 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A001700 n)

end

end A096967.P4873552309123354708

/-!
# A096968: a(n) = (prime(n)*prime(n+2))^4.

The programs for A096968, the canonical program `A096968.P15529069970053728473` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A096968 has offset 1).

The definition of A096968 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A096968.P15529069970053728473

`(p?[2*n+5]²*p?[round(8*n/7)]²)²`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A096968

/-- `(p?[2*n+5]²*p?[round(8*n/7)]²)²` -/
def P15529069970053728473.Spec : Prop :=
  ∀ n, P15529069970053728473.a n = A096968 (n + 1)

theorem P15529069970053728473.correct : P15529069970053728473.Spec := by
  intro n
  simp only [A096968, Nat.add_sub_cancel]

end A096968

/-! ## A096968.P16673134829196472419

`A090076(n+1)^4`
-/

namespace A096968.P16673134829196472419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090076 (n + 1) ^ 4

end

end A096968.P16673134829196472419

namespace A096968

/-- `A090076(n+1)^4` -/
def P16673134829196472419.Spec : Prop :=
  ∀ n, P16673134829196472419.a n = A096968 (n + 1)

end A096968

/-! ## A096968.P6317849217920837841

`(A205955(n+1)+A006094(n+1))²²`
-/

namespace A096968.P6317849217920837841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A205955 (n + 1) + A006094 (n + 1)) ^ 2) ^ 2

end

end A096968.P6317849217920837841

namespace A096968

/-- `(A205955(n+1)+A006094(n+1))²²` -/
def P6317849217920837841.Spec : Prop :=
  ∀ n, P6317849217920837841.a n = A096968 (n + 1)

end A096968

/-! ## A096968.P3299236270324647569

`(A152530(n+1)+A065091(n+1))²²`
-/

namespace A096968.P3299236270324647569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A152530 (n + 1) + A065091 (n + 1)) ^ 2) ^ 2

end

end A096968.P3299236270324647569

namespace A096968

/-- `(A152530(n+1)+A065091(n+1))²²` -/
def P3299236270324647569.Spec : Prop :=
  ∀ n, P3299236270324647569.a n = A096968 (n + 1)

end A096968

/-! ## A096968.P1606968123153164891

`(A324795(n+1)+A056221(n+1))²²`
-/

namespace A096968.P1606968123153164891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A324795 (n + 1) + A056221 (n + 1)) ^ 2) ^ 2

end

end A096968.P1606968123153164891

namespace A096968

/-- `(A324795(n+1)+A056221(n+1))²²` -/
def P1606968123153164891.Spec : Prop :=
  ∀ n, P1606968123153164891.a n = A096968 (n + 1)

end A096968

/-! ## A096968.P13997981400394755964

`(A000040(n+1)*A215848(n+1))²²`
-/

namespace A096968.P13997981400394755964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A000040 (n + 1) * A215848 (n + 1)) ^ 2) ^ 2

end

end A096968.P13997981400394755964

namespace A096968

/-- `(A000040(n+1)*A215848(n+1))²²` -/
def P13997981400394755964.Spec : Prop :=
  ∀ n, P13997981400394755964.a n = A096968 (n + 1)

end A096968

/-! ## A096968.P4496166854579874321

`(A215848(n+1)²*A001248(n+1))²`
-/

namespace A096968.P4496166854579874321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A215848 (n + 1) ^ 2 * A001248 (n + 1)) ^ 2

end

end A096968.P4496166854579874321

namespace A096968

/-- `(A215848(n+1)²*A001248(n+1))²` -/
def P4496166854579874321.Spec : Prop :=
  ∀ n, P4496166854579874321.a n = A096968 (n + 1)

end A096968

/-! ## A096968.P7841088265860636756

`(A127345(n+1)-A357679(n+2))²²`
-/

namespace A096968.P7841088265860636756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A127345 (n + 1) - A357679 (n + 2)) ^ 2) ^ 2

end

end A096968.P7841088265860636756

namespace A096968

/-- `(A127345(n+1)-A357679(n+2))²²` -/
def P7841088265860636756.Spec : Prop :=
  ∀ n, P7841088265860636756.a n = A096968 (n + 1)

end A096968

/-! ## A096968.P10110125390323757578

`(A046301(n+1)/A065091(n+1))²²`
-/

namespace A096968.P10110125390323757578
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((A046301 (n + 1) : ℚ) / (A065091 (n + 1) : ℚ)) ^ 2) ^ 2

end

end A096968.P10110125390323757578

namespace A096968

/-- `(A046301(n+1)/A065091(n+1))²²` -/
def P10110125390323757578.Spec : Prop :=
  ∀ n, P10110125390323757578.a n = (A096968 (n + 1) : ℚ)

end A096968

/-! ## A096968.P12115660286400019153

`A176098(n+3)^4`
-/

namespace A096968.P12115660286400019153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176098 (n + 3) ^ 4

end

end A096968.P12115660286400019153

namespace A096968

/-- `A176098(n+3)^4` -/
def P12115660286400019153.Spec : Prop :=
  ∀ n, P12115660286400019153.a n = A096968 (n + 1)

end A096968

/-! ## A096968.P4485109864799464601

`A030514(n+1)*A030514(n+3)`
-/

namespace A096968.P4485109864799464601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030514 (n + 1) * A030514 (n + 3)

end

end A096968.P4485109864799464601

namespace A096968

/-- `A030514(n+1)*A030514(n+3)` -/
def P4485109864799464601.Spec : Prop :=
  ∀ n, P4485109864799464601.a n = A096968 (n + 1)

end A096968

/-! ## A096968.P14984267378188250066

`(p?[xor(1, n)+1]*p?[2*n+5])²²`
-/

namespace A096968.P14984267378188250066
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) * f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)) ^ 2) ^ 2

end

end A096968.P14984267378188250066

namespace A096968

/-- `(p?[xor(1, n)+1]*p?[2*n+5])²²` -/
def P14984267378188250066.Spec : Prop :=
  ∀ n, (P14984267378188250066.a n : ℤ) = A096968 (n + 1)

end A096968

/-! ## A096968.P2997148925742700531

`(p?[a(n-1)+2]*p?[n-(-1)^n])^4` with `a(0)=5`
-/

namespace A096968.P2997148925742700531
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [5] fun n f1 =>
  f1 (n - 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) * f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)) ^ 4

end

end A096968.P2997148925742700531

namespace A096968

/-- `(p?[a(n-1)+2]*p?[n-(-1)^n])^4` -/
def P2997148925742700531.Spec : Prop :=
  ∀ n, P2997148925742700531.a n = A096968 (n + 1)

end A096968

/-! ## A096968.P9558810868972622419

`A333747(2*(n+1))²²`
-/

namespace A096968.P9558810868972622419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A333747 (2 * (n + 1)) ^ 2) ^ 2

end

end A096968.P9558810868972622419

namespace A096968

/-- `A333747(2*(n+1))²²` -/
def P9558810868972622419.Spec : Prop :=
  ∀ n, P9558810868972622419.a n = A096968 (n + 1)

end A096968

/-! ## A096968.P7537592579752138179

`A090076(A110654(2*n+1))²²`
-/

namespace A096968.P7537592579752138179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A090076 (A110654 (2 * n + 1)).toNat ^ 2) ^ 2

end

end A096968.P7537592579752138179

namespace A096968

/-- `A090076(A110654(2*n+1))²²` -/
def P7537592579752138179.Spec : Prop :=
  ∀ n, P7537592579752138179.a n = A096968 (n + 1)

end A096968

/-! ## A096968.P5881678138823591852

`A013638(A000040(n+2))²²`
-/

namespace A096968.P5881678138823591852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A013638 (A000040 (n + 2)).toNat ^ 2) ^ 2

end

end A096968.P5881678138823591852

namespace A096968

/-- `A013638(A000040(n+2))²²` -/
def P5881678138823591852.Spec : Prop :=
  ∀ n, P5881678138823591852.a n = A096968 (n + 1)

end A096968

/-! ## A096968.P554355387249800757

`A013638(A006005(n+2))²²`
-/

namespace A096968.P554355387249800757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A013638 (A006005 (n + 2)).toNat ^ 2) ^ 2

end

end A096968.P554355387249800757

namespace A096968

/-- `A013638(A006005(n+2))²²` -/
def P554355387249800757.Spec : Prop :=
  ∀ n, P554355387249800757.a n = A096968 (n + 1)

end A096968

/-!
# A096969: Number of ways to number the cells of an n X n square grid with 1,2,3,...,n^2 so that successive integers are in adjacent cells (horizontally or vertically).

The programs for A096969, there is no canonical definition to state claims against.
-/

/-! ## A096969.P11488921356918634472

`A000032(C(2, n+2))*A120443(n+1)`
-/

namespace A096969.P11488921356918634472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (Nat.choose 2 (n + 2)) * A120443 (n + 1)

end

end A096969.P11488921356918634472

/-! ## A096969.P16720390224005333635

`A020639(A002445(n))*A120443(n+1)`
-/

namespace A096969.P16720390224005333635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A002445 n).toNat * A120443 (n + 1)

end

end A096969.P16720390224005333635

/-! ## A096969.P6153697231040302905

`A020639(A010008(n))*A120443(n+1)`
-/

namespace A096969.P6153697231040302905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A010008 n).toNat * A120443 (n + 1)

end

end A096969.P6153697231040302905

/-! ## A096969.P14531294505054436319

`A014963(A137688(n))*A120443(n+1)`
-/

namespace A096969.P14531294505054436319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A137688 n).toNat * A120443 (n + 1)

end

end A096969.P14531294505054436319

/-!
# A096970: Number of ways to number the cells of an n X n square grid with 1,2,3,...,n^2 so that successive integers are in the same row or column.

The programs for A096970, there is no canonical definition to state claims against.
-/

/-! ## A096970.P14375182911649785190

`A269565((n+1)²+n²)`
-/

namespace A096970.P14375182911649785190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269565 ((n + 1) ^ 2 + n ^ 2)

end

end A096970.P14375182911649785190

/-!
# A096971: G.f. satisfies: A(x) = A( x^2*A000108(x^2) )*x*A000984(x^2), where A000108(x) is the g.f. for the Catalan sequence and A000984(x) = d/dx x*A000108(x).

The programs for A096971, there is no canonical definition to state claims against.
-/

/-! ## A096971.P11705610680929603004

`A103221(A119371(n+3)-2)`
-/

namespace A096971.P11705610680929603004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (A119371 (n + 3) - 2).toNat

end

end A096971.P11705610680929603004

/-! ## A096971.P10588063468383425214

`or(A000288(2*n), A221990(A115885(n+1)))`
-/

namespace A096971.P10588063468383425214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000288 (2 * n)) (A221990 (A115885 (n + 1)).toNat)

end

end A096971.P10588063468383425214

/-!
# A096972: Number of preimages of n (or immediate predecessors) under map f(k) = k + (product of nonzero digits of k).

The programs for A096972, there is no canonical definition to state claims against.
-/

/-! ## A096972.P8804584388962133927

`A230106(n+1)`
-/

namespace A096972.P8804584388962133927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230106 (n + 1)

end

end A096972.P8804584388962133927

/-! ## A096972.P11712578586829466587

`∑[Δ[A230106(n)]%3]`
-/

namespace A096972.P11712578586829466587
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230106 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A096972.P11712578586829466587

/-! ## A096972.P11574804454377710838

`A230106(Δ[n²]-n)%4`
-/

namespace A096972.P11574804454377710838
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A230106 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat) 4

end

end A096972.P11574804454377710838

/-! ## A096972.P10110830629298842476

`and(3, A230106(Δ[n*n]-n))`
-/

namespace A096972.P10110830629298842476
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A230106 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat)

end

end A096972.P10110830629298842476

/-! ## A096972.P13255404278911555016

`Δ[A020705(∑[A230106(n)])]`
-/

namespace A096972.P13255404278911555016
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230106 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020705 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A096972.P13255404278911555016

/-! ## A096972.P15847857235367590453

`Δ[A023443(∑[A230106(n)])]`
-/

namespace A096972.P15847857235367590453
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230106 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A096972.P15847857235367590453

/-! ## A096972.P8363429166792875909

`Δ[A118759(∑[A230106(n)])]`
-/

namespace A096972.P8363429166792875909
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230106 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A096972.P8363429166792875909

/-!
# A096974: Numbers n such that A096123(n) = n!/(nextprime(n/2)-1)!.

The programs for A096974, there is no canonical definition to state claims against.
-/

/-! ## A096974.P4048463047175616979

`lt[A217581(A106466(2*n+1)), A106495(3*(n+1))]`
-/

namespace A096974.P4048463047175616979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217581 (A106466 (2 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106495 (3 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A096974.P4048463047175616979

/-!
# A096975: Trace sequence of a path graph plus loop.

The programs for A096975, the canonical program `A096975.P16632084810310871015` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A096975 has offset 0).

The definition of A096975 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A096975.P14734456535774953521

`(-1)^n*A094648(n)`
-/

namespace A096975.P14734456535774953521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A094648 n

end

end A096975.P14734456535774953521

namespace A096975

/-- `(-1)^n*A094648(n)` -/
def P14734456535774953521.Spec : Prop :=
  ∀ n, P14734456535774953521.a n = A096975 n

end A096975

/-! ## A096975.P16632084810310871015

`a(n-1)+2*a(n-2)-a(n-3)` with `a(0)=3, a(1)=1, a(2)=5`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A096975

/-- `a(n-1)+2*a(n-2)-a(n-3)` -/
def P16632084810310871015.Spec : Prop :=
  ∀ n, P16632084810310871015.a n = A096975 n

theorem P16632084810310871015.correct : P16632084810310871015.Spec := by
  intro n
  simp only [A096975]

end A096975

/-! ## A096975.P14530249518270844003

`2^n*(cos(π/7)^n+cos(3*π/7)^n+cos(5*π/7)^n)`
-/

namespace A096975.P14530249518270844003
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℝ) * (Real.cos (Real.pi / 7) ^ n + Real.cos (3 * Real.pi / 7) ^ n + Real.cos (5 * Real.pi / 7) ^ n)

end

end A096975.P14530249518270844003

namespace A096975

/-- `2^n*(cos(π/7)^n+cos(3*π/7)^n+cos(5*π/7)^n)` -/
def P14530249518270844003.Spec : Prop :=
  ∀ n, P14530249518270844003.a n = (A096975 n : ℝ)

end A096975

/-! ## A096975.P188610570562212364

`ogf((-3+2x+2x^2)/(-1+x+2x^2-x^3))`
-/

namespace A096975.P188610570562212364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -2, -2] [1, -1, -2, 1] n

end

end A096975.P188610570562212364

namespace A096975

/-- `ogf((-3+2x+2x^2)/(-1+x+2x^2-x^3))` -/
def P188610570562212364.Spec : Prop :=
  ∀ n, P188610570562212364.a n = A096975 n

end A096975

/-! ## A096975.P15163330851511648034

`a(n-1)-(a(n-3)-2*a(n-2))` with `a(0)=3, a(1)=1, a(2)=5`
-/

namespace A096975.P15163330851511648034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 1, 5] fun n a =>
  a (n - 1) - (a (n - 3) - 2 * a (n - 2))

end

end A096975.P15163330851511648034

namespace A096975

/-- `a(n-1)-(a(n-3)-2*a(n-2))` -/
def P15163330851511648034.Spec : Prop :=
  ∀ n, P15163330851511648034.a n = A096975 n

end A096975

/-! ## A096975.P7348419685153176337

`a(n-1)+a(n-2)+a(n-2)-a(n-3)` with `a(0)=3, a(1)=1, a(2)=5`
-/

namespace A096975.P7348419685153176337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 1, 5] fun n a =>
  a (n - 1) + (a (n - 2) + (a (n - 2) - a (n - 3)))

end

end A096975.P7348419685153176337

namespace A096975

/-- `a(n-1)+a(n-2)+a(n-2)-a(n-3)` -/
def P7348419685153176337.Spec : Prop :=
  ∀ n, P7348419685153176337.a n = A096975 n

theorem P7348419685153176337.correct : P7348419685153176337.Spec := by
  intro n
  simp only [A096975, Nat.add_sub_cancel, A096975.P7348419685153176337.a, A096975.P16632084810310871015.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A096975

/-! ## A096975.P17294281713745852332

`a(n-1)-(a(n-3)-a(n-2)-a(n-2))` with `a(0)=3, a(1)=1, a(2)=5`
-/

namespace A096975.P17294281713745852332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 1, 5] fun n a =>
  a (n - 1) - (a (n - 3) - a (n - 2) - a (n - 2))

end

end A096975.P17294281713745852332

namespace A096975

/-- `a(n-1)-(a(n-3)-a(n-2)-a(n-2))` -/
def P17294281713745852332.Spec : Prop :=
  ∀ n, P17294281713745852332.a n = A096975 n

end A096975

/-! ## A096975.P5418223411022832456

`abs(A094648(n))`
-/

namespace A096975.P5418223411022832456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A094648 n|

end

end A096975.P5418223411022832456

namespace A096975

/-- `abs(A094648(n))` -/
def P5418223411022832456.Spec : Prop :=
  ∀ n, P5418223411022832456.a n = A096975 n

end A096975

/-! ## A096975.P10639547663613836432

`lcm(A020985(n), A094648(n))`
-/

namespace A096975.P10639547663613836432
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A094648 n)

end

end A096975.P10639547663613836432

namespace A096975

/-- `lcm(A020985(n), A094648(n))` -/
def P10639547663613836432.Spec : Prop :=
  ∀ n, (P10639547663613836432.a n : ℤ) = A096975 n

end A096975

/-! ## A096975.P3960847820603855933

`A028495(n)+A096976(n)+A052547(n)`
-/

namespace A096975.P3960847820603855933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028495 n + (A096976 n + A052547 n)

end

end A096975.P3960847820603855933

namespace A096975

/-- `A028495(n)+A096976(n)+A052547(n)` -/
def P3960847820603855933.Spec : Prop :=
  ∀ n, P3960847820603855933.a n = A096975 n

end A096975

/-! ## A096975.P5903443948177828203

`abs(A321461(n)-A321461(n+2))`
-/

namespace A096975.P5903443948177828203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A321461 n - A321461 (n + 2)|

end

end A096975.P5903443948177828203

namespace A096975

/-- `abs(A321461(n)-A321461(n+2))` -/
def P5903443948177828203.Spec : Prop :=
  ∀ n, P5903443948177828203.a n = A096975 n

end A096975

/-! ## A096975.P1454793184281038120

`gcd(A321461(n)-A321461(n+2), A094648(n))`
-/

namespace A096975.P1454793184281038120
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A321461 n - A321461 (n + 2)) (A094648 n)

end

end A096975.P1454793184281038120

namespace A096975

/-- `gcd(A321461(n)-A321461(n+2), A094648(n))` -/
def P1454793184281038120.Spec : Prop :=
  ∀ n, (P1454793184281038120.a n : ℤ) = A096975 n

end A096975

/-! ## A096975.P6810673413387742736

`gcd(A002517(n)²*A094648(n), A094648(n))`
-/

namespace A096975.P6810673413387742736
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002517 n ^ 2 * A094648 n) (A094648 n)

end

end A096975.P6810673413387742736

namespace A096975

/-- `gcd(A002517(n)²*A094648(n), A094648(n))` -/
def P6810673413387742736.Spec : Prop :=
  ∀ n, (P6810673413387742736.a n : ℤ) = A096975 n

end A096975

/-! ## A096975.P575929105332871122

`A094648(n)/A094650(n)*A189234(n)`
-/

namespace A096975.P575929105332871122
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094648 n : ℚ) / (A094650 n : ℚ) * (A189234 n : ℚ)

end

end A096975.P575929105332871122

namespace A096975

/-- `A094648(n)/A094650(n)*A189234(n)` -/
def P575929105332871122.Spec : Prop :=
  ∀ n, P575929105332871122.a n = (A096975 n : ℚ)

end A096975

/-! ## A096975.P3369561871993785883

`gcd(A001014(n)*A094648(n), A094648(n))`
-/

namespace A096975.P3369561871993785883
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001014 n * A094648 n) (A094648 n)

end

end A096975.P3369561871993785883

namespace A096975

/-- `gcd(A001014(n)*A094648(n), A094648(n))` -/
def P3369561871993785883.Spec : Prop :=
  ∀ n, (P3369561871993785883.a n : ℤ) = A096975 n

end A096975

/-!
# A096976: Number of walks of length n on P_3 plus a loop at the end.

The programs for A096976, the canonical program `A096976.P10097530098525484331` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A096976 has offset 0).

The definition of A096976 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A096976.P10097530098525484331

`a(n-1)+2*a(n-2)-a(n-3)` with `a(0)=1, a(1)=0, a(2)=1`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A096976

/-- `a(n-1)+2*a(n-2)-a(n-3)` -/
def P10097530098525484331.Spec : Prop :=
  ∀ n, P10097530098525484331.a n = A096976 n

theorem P10097530098525484331.correct : P10097530098525484331.Spec := by
  intro n
  simp only [A096976]

end A096976

/-! ## A096976.P2661680883194268603

`ogf((-1+x+x^2)/(-1+x+2x^2-x^3))`
-/

namespace A096976.P2661680883194268603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, -1] [1, -1, -2, 1] n

end

end A096976.P2661680883194268603

namespace A096976

/-- `ogf((-1+x+x^2)/(-1+x+2x^2-x^3))` -/
def P2661680883194268603.Spec : Prop :=
  ∀ n, P2661680883194268603.a n = A096976 n

end A096976

/-! ## A096976.P5777353886845253500

`a(n-1)-(a(n-3)-2*a(n-2))` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A096976.P5777353886845253500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1] fun n a =>
  a (n - 1) - (a (n - 3) - 2 * a (n - 2))

end

end A096976.P5777353886845253500

namespace A096976

/-- `a(n-1)-(a(n-3)-2*a(n-2))` -/
def P5777353886845253500.Spec : Prop :=
  ∀ n, P5777353886845253500.a n = A096976 n

end A096976

/-! ## A096976.P9617137753334405241

`a(n-1)+a(n-2)+a(n-2)-a(n-3)` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A096976.P9617137753334405241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1] fun n a =>
  a (n - 1) + (a (n - 2) + (a (n - 2) - a (n - 3)))

end

end A096976.P9617137753334405241

namespace A096976

/-- `a(n-1)+a(n-2)+a(n-2)-a(n-3)` -/
def P9617137753334405241.Spec : Prop :=
  ∀ n, P9617137753334405241.a n = A096976 n

theorem P9617137753334405241.correct : P9617137753334405241.Spec := by
  intro n
  simp only [A096976, Nat.add_sub_cancel, A096976.P9617137753334405241.a, A096976.P10097530098525484331.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A096976

/-! ## A096976.P16104358098771423560

`a(n-1)-(a(n-3)-a(n-2)-a(n-2))` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A096976.P16104358098771423560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1] fun n a =>
  a (n - 1) - (a (n - 3) - a (n - 2) - a (n - 2))

end

end A096976.P16104358098771423560

namespace A096976

/-- `a(n-1)-(a(n-3)-a(n-2)-a(n-2))` -/
def P16104358098771423560.Spec : Prop :=
  ∀ n, P16104358098771423560.a n = A096976 n

end A096976

/-! ## A096976.P2671807410277316506

`A052547(n)-A006053(n)`
-/

namespace A096976.P2671807410277316506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052547 n - A006053 n

end

end A096976.P2671807410277316506

namespace A096976

/-- `A052547(n)-A006053(n)` -/
def P2671807410277316506.Spec : Prop :=
  ∀ n, P2671807410277316506.a n = A096976 n

end A096976

/-! ## A096976.P12551751989669506666

`A028495(n)-A006053(n+1)`
-/

namespace A096976.P12551751989669506666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028495 n - A006053 (n + 1)

end

end A096976.P12551751989669506666

namespace A096976

/-- `A028495(n)-A006053(n+1)` -/
def P12551751989669506666.Spec : Prop :=
  ∀ n, P12551751989669506666.a n = A096976 n

end A096976

/-! ## A096976.P1240879953475858531

`A187066(2*n)-A006053(n)`
-/

namespace A096976.P1240879953475858531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187066 (2 * n) - A006053 n

end

end A096976.P1240879953475858531

namespace A096976

/-- `A187066(2*n)-A006053(n)` -/
def P1240879953475858531.Spec : Prop :=
  ∀ n, P1240879953475858531.a n = A096976 n

end A096976

/-! ## A096976.P13942558447594372426

`A028495(n)-A187067(2*n)`
-/

namespace A096976.P13942558447594372426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028495 n - A187067 (2 * n)

end

end A096976.P13942558447594372426

namespace A096976

/-- `A028495(n)-A187067(2*n)` -/
def P13942558447594372426.Spec : Prop :=
  ∀ n, P13942558447594372426.a n = A096976 n

end A096976

/-! ## A096976.P13621383978353954995

`A052547(n)-A265755(2*n)`
-/

namespace A096976.P13621383978353954995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052547 n - A265755 (2 * n)

end

end A096976.P13621383978353954995

namespace A096976

/-- `A052547(n)-A265755(2*n)` -/
def P13621383978353954995.Spec : Prop :=
  ∀ n, P13621383978353954995.a n = A096976 n

end A096976

/-! ## A096976.P2956315253851999242

`A187065(2*(n+1))-A006053(n)`
-/

namespace A096976.P2956315253851999242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187065 (2 * (n + 1)) - A006053 n

end

end A096976.P2956315253851999242

namespace A096976

/-- `A187065(2*(n+1))-A006053(n)` -/
def P2956315253851999242.Spec : Prop :=
  ∀ n, P2956315253851999242.a n = A096976 n

end A096976

/-! ## A096976.P12936192571864160588

`A028495(n)-A187066(2*n+1)`
-/

namespace A096976.P12936192571864160588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028495 n - A187066 (2 * n + 1)

end

end A096976.P12936192571864160588

namespace A096976

/-- `A028495(n)-A187066(2*n+1)` -/
def P12936192571864160588.Spec : Prop :=
  ∀ n, P12936192571864160588.a n = A096976 n

end A096976

/-! ## A096976.P14964668419381642376

`A052547(n)-A187065(2*n+1)`
-/

namespace A096976.P14964668419381642376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052547 n - A187065 (2 * n + 1)

end

end A096976.P14964668419381642376

namespace A096976

/-- `A052547(n)-A187065(2*n+1)` -/
def P14964668419381642376.Spec : Prop :=
  ∀ n, P14964668419381642376.a n = A096976 n

end A096976

/-! ## A096976.P4628570272829051503

`A028495(n)-A187065(2*n+3)`
-/

namespace A096976.P4628570272829051503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028495 n - A187065 (2 * n + 3)

end

end A096976.P4628570272829051503

namespace A096976

/-- `A028495(n)-A187065(2*n+3)` -/
def P4628570272829051503.Spec : Prop :=
  ∀ n, P4628570272829051503.a n = A096976 n

end A096976

/-! ## A096976.P10570874534746234673

`A265755(2*n+3)-A006053(n)`
-/

namespace A096976.P10570874534746234673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265755 (2 * n + 3) - A006053 n

end

end A096976.P10570874534746234673

namespace A096976

/-- `A265755(2*n+3)-A006053(n)` -/
def P10570874534746234673.Spec : Prop :=
  ∀ n, P10570874534746234673.a n = A096976 n

end A096976

/-! ## A096976.P6755886300693502536

`A187066(2*n)-A265755(2*n)`
-/

namespace A096976.P6755886300693502536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187066 (2 * n) - A265755 (2 * n)

end

end A096976.P6755886300693502536

namespace A096976

/-- `A187066(2*n)-A265755(2*n)` -/
def P6755886300693502536.Spec : Prop :=
  ∀ n, P6755886300693502536.a n = A096976 n

end A096976

/-! ## A096976.P11911085135942205769

`A187067(2*n+1)-A006053(n+1)`
-/

namespace A096976.P11911085135942205769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187067 (2 * n + 1) - A006053 (n + 1)

end

end A096976.P11911085135942205769

namespace A096976

/-- `A187067(2*n+1)-A006053(n+1)` -/
def P11911085135942205769.Spec : Prop :=
  ∀ n, P11911085135942205769.a n = A096976 n

end A096976

/-! ## A096976.P10097838060216105695

`A187067(2*n+1)-A187067(2*n)`
-/

namespace A096976.P10097838060216105695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187067 (2 * n + 1) - A187067 (2 * n)

end

end A096976.P10097838060216105695

namespace A096976

/-- `A187067(2*n+1)-A187067(2*n)` -/
def P10097838060216105695.Spec : Prop :=
  ∀ n, P10097838060216105695.a n = A096976 n

end A096976

/-! ## A096976.P6991444580245656360

`A187066(2*n)-A187065(2*n+1)`
-/

namespace A096976.P6991444580245656360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187066 (2 * n) - A187065 (2 * n + 1)

end

end A096976.P6991444580245656360

namespace A096976

/-- `A187066(2*n)-A187065(2*n+1)` -/
def P6991444580245656360.Spec : Prop :=
  ∀ n, P6991444580245656360.a n = A096976 n

end A096976

/-!
# A096977: a(n) = 4*a(n-1) + 3*a(n-2) - 14*a(n-3) + 8*a(n-4).

The programs for A096977, the canonical program `A096977.P1862763963031883685` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A096977 has offset 0).

The definition of A096977 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*a(n-1)+3*a(n-2)-14*a(n-3)+8*a(n-4)` (program `A096977.P1862763963031883685`, by `A096977.P1862763963031883685.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A096977.P1862763963031883685

`4*a(n-1)+3*a(n-2)-14*a(n-3)+8*a(n-4)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=11`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A096977

/-- `4*a(n-1)+3*a(n-2)-14*a(n-3)+8*a(n-4)` -/
def P1862763963031883685.Spec : Prop :=
  ∀ n, P1862763963031883685.a n = A096977 n

theorem P1862763963031883685.correct : P1862763963031883685.Spec := by
  intro n
  simp only [A096977]

end A096977

/-! ## A096977.P10991873619394031426

`(4*4^n-4*(-2)^n+3*n)/27`
-/

namespace A096977.P10991873619394031426
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((4 * 4 ^ n : ℤ) - 4 * (-2) ^ n + (3 * n : ℤ) : ℚ) / 27

end

end A096977.P10991873619394031426

namespace A096977

/-- `(4*4^n-4*(-2)^n+3*n)/27` -/
def P10991873619394031426.Spec : Prop :=
  ∀ n, P10991873619394031426.a n = (A096977 n : ℚ)

theorem P10991873619394031426.correct : P10991873619394031426.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A096977, Nat.add_sub_cancel, A096977.P10991873619394031426.a, A096977.P1862763963031883685.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A096977, Nat.add_sub_cancel, A096977.P10991873619394031426.a, A096977.P1862763963031883685.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A096977

/-! ## A096977.P3219010386609776164

`a(n-1)+round(2^n/3)²` with `a(0)=0`
-/

namespace A096977.P3219010386609776164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + SequenceMachineLib.roundAway ((2 ^ n : ℚ) / 3) ^ 2

end

end A096977.P3219010386609776164

namespace A096977

/-- `a(n-1)+round(2^n/3)²` -/
def P3219010386609776164.Spec : Prop :=
  ∀ n, P3219010386609776164.a n = A096977 n

end A096977

/-! ## A096977.P13396362148891460338

`∑[(4*a(n-2)-a(n-1))²]` with `a(0)=0, a(1)=1`
-/

namespace A096977.P13396362148891460338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  (4 * f1 (n - 2) - f1 (n - 1)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A096977.P13396362148891460338

namespace A096977

/-- `∑[(4*a(n-2)-a(n-1))²]` -/
def P13396362148891460338.Spec : Prop :=
  ∀ n, P13396362148891460338.a n = A096977 n

end A096977

/-! ## A096977.P826451063264649825

`∑[A139818(n)]`
-/

namespace A096977.P826451063264649825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139818 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A096977.P826451063264649825

namespace A096977

/-- `∑[A139818(n)]` -/
def P826451063264649825.Spec : Prop :=
  ∀ n, P826451063264649825.a n = A096977 n

end A096977

/-! ## A096977.P2606566274173928877

`∑[A001045(n)²]`
-/

namespace A096977.P2606566274173928877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A096977.P2606566274173928877

namespace A096977

/-- `∑[A001045(n)²]` -/
def P2606566274173928877.Spec : Prop :=
  ∀ n, P2606566274173928877.a n = A096977 n

end A096977

/-! ## A096977.P7313888431420233305

`∑[(A167030(n)+1)²]`
-/

namespace A096977.P7313888431420233305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A167030 n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A096977.P7313888431420233305

namespace A096977

/-- `∑[(A167030(n)+1)²]` -/
def P7313888431420233305.Spec : Prop :=
  ∀ n, P7313888431420233305.a n = A096977 n

end A096977

/-! ## A096977.P17911700440492552461

`∑[(1-A084247(n))²]`
-/

namespace A096977.P17911700440492552461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A084247 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A096977.P17911700440492552461

namespace A096977

/-- `∑[(1-A084247(n))²]` -/
def P17911700440492552461.Spec : Prop :=
  ∀ n, P17911700440492552461.a n = A096977 n

end A096977

/-! ## A096977.P11400730721299601510

`∑[(1-A128209(n))²]`
-/

namespace A096977.P11400730721299601510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A128209 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A096977.P11400730721299601510

namespace A096977

/-- `∑[(1-A128209(n))²]` -/
def P11400730721299601510.Spec : Prop :=
  ∀ n, P11400730721299601510.a n = A096977 n

end A096977

/-! ## A096977.P3106791620670675349

`∑[(1-A151575(n))²]`
-/

namespace A096977.P3106791620670675349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A151575 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A096977.P3106791620670675349

namespace A096977

/-- `∑[(1-A151575(n))²]` -/
def P3106791620670675349.Spec : Prop :=
  ∀ n, P3106791620670675349.a n = A096977 n

end A096977

/-! ## A096977.P4641865267574786934

`∑[A152046(n)²]-1`
-/

namespace A096977.P4641865267574786934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152046 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A096977.P4641865267574786934

namespace A096977

/-- `∑[A152046(n)²]-1` -/
def P4641865267574786934.Spec : Prop :=
  ∀ n, P4641865267574786934.a n = A096977 n

end A096977

/-! ## A096977.P17775556161141384950

`∑[A167167(n)²]-1`
-/

namespace A096977.P17775556161141384950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167167 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A096977.P17775556161141384950

namespace A096977

/-- `∑[A167167(n)²]-1` -/
def P17775556161141384950.Spec : Prop :=
  ∀ n, P17775556161141384950.a n = A096977 n

end A096977

/-! ## A096977.P12353717955148115833

`∑[(2-A140966(n))²]`
-/

namespace A096977.P12353717955148115833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A140966 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A096977.P12353717955148115833

namespace A096977

/-- `∑[(2-A140966(n))²]` -/
def P12353717955148115833.Spec : Prop :=
  ∀ n, P12353717955148115833.a n = A096977 n

end A096977

/-! ## A096977.P7839930159357356766

`∑[(2-A153643(n))²]`
-/

namespace A096977.P7839930159357356766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A153643 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A096977.P7839930159357356766

namespace A096977

/-- `∑[(2-A153643(n))²]` -/
def P7839930159357356766.Spec : Prop :=
  ∀ n, P7839930159357356766.a n = A096977 n

end A096977

/-! ## A096977.P11753005723753779742

`∑[A328284(n+3)²]`
-/

namespace A096977.P11753005723753779742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328284 (n + 3) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A096977.P11753005723753779742

namespace A096977

/-- `∑[A328284(n+3)²]` -/
def P11753005723753779742.Spec : Prop :=
  ∀ n, P11753005723753779742.a n = A096977 n

end A096977

/-! ## A096977.P10765441250583843820

`∑[A133684(2*n)²]`
-/

namespace A096977.P10765441250583843820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133684 (2 * n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A096977.P10765441250583843820

namespace A096977

/-- `∑[A133684(2*n)²]` -/
def P10765441250583843820.Spec : Prop :=
  ∀ n, P10765441250583843820.a n = A096977 n

end A096977

/-! ## A096977.P143321289217250063

`∑[(A014113(n)/2)²]`
-/

namespace A096977.P143321289217250063
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A014113 n : ℚ) / 2) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A096977.P143321289217250063

namespace A096977

/-- `∑[(A014113(n)/2)²]` -/
def P143321289217250063.Spec : Prop :=
  ∀ n, P143321289217250063.a n = (A096977 n : ℚ)

end A096977

/-! ## A096977.P15668477343279442233

`∑[(A062510(n)/3)²]`
-/

namespace A096977.P15668477343279442233
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A062510 n : ℚ) / 3) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A096977.P15668477343279442233

namespace A096977

/-- `∑[(A062510(n)/3)²]` -/
def P15668477343279442233.Spec : Prop :=
  ∀ n, P15668477343279442233.a n = (A096977 n : ℚ)

end A096977

/-! ## A096977.P12757723113183046973

`∑[Δ[A141023(n)/3]²]`
-/

namespace A096977.P12757723113183046973
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141023 n : ℚ) / 3

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A096977.P12757723113183046973

namespace A096977

/-- `∑[Δ[A141023(n)/3]²]` -/
def P12757723113183046973.Spec : Prop :=
  ∀ n, P12757723113183046973.a n = (A096977 n : ℚ)

end A096977

/-! ## A096977.P7525171539576555003

`∑[A117576(2*n+1)²]`
-/

namespace A096977.P7525171539576555003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117576 (2 * n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A096977.P7525171539576555003

namespace A096977

/-- `∑[A117576(2*n+1)²]` -/
def P7525171539576555003.Spec : Prop :=
  ∀ n, P7525171539576555003.a n = A096977 n

end A096977

/-!
# A096978: Sum of the areas of the first n Jacobsthal rectangles.

The programs for A096978, the canonical program `A096978.P15490108963725976724` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A096978 has offset 0).

The definition of A096978 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A096978.P15490108963725976724

`4*a(n-1)+3*a(n-2)-14*a(n-3)+8*a(n-4)` with `a(0)=0, a(1)=1, a(2)=4, a(3)=19`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A096978

/-- `4*a(n-1)+3*a(n-2)-14*a(n-3)+8*a(n-4)` -/
def P15490108963725976724.Spec : Prop :=
  ∀ n, P15490108963725976724.a n = A096978 n

theorem P15490108963725976724.correct : P15490108963725976724.Spec := by
  intro n
  simp only [A096978]

end A096978

/-! ## A096978.P5378554343637123352

`8*4^n/27-2*(-2)^n/27-(n+2)/9`
-/

namespace A096978.P5378554343637123352
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (8 * 4 ^ n : ℚ) / 27 - (2 * (-2) ^ n : ℚ) / 27 - (n + 2 : ℚ) / 9

end

end A096978.P5378554343637123352

namespace A096978

/-- `8*4^n/27-2*(-2)^n/27-(n+2)/9` -/
def P5378554343637123352.Spec : Prop :=
  ∀ n, P5378554343637123352.a n = (A096978 n : ℚ)

theorem P5378554343637123352.correct : P5378554343637123352.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A096978, Nat.add_sub_cancel, A096978.P5378554343637123352.a, A096978.P15490108963725976724.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A096978, Nat.add_sub_cancel, A096978.P5378554343637123352.a, A096978.P15490108963725976724.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A096978

/-! ## A096978.P13253016666308987588

`∑[ogf(x/(1-3x-6x^2+8x^3))]`
-/

namespace A096978.P13253016666308987588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -3, -6, 8] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A096978.P13253016666308987588

namespace A096978

/-- `∑[ogf(x/(1-3x-6x^2+8x^3))]` -/
def P13253016666308987588.Spec : Prop :=
  ∀ n, P13253016666308987588.a n = A096978 n

end A096978

/-! ## A096978.P17747565136760158861

`∑[C(ceil(2^(n+1)/3), 2)]`
-/

namespace A096978.P17747565136760158861
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ⌈(2 ^ (n + 1) : ℚ) / 3⌉.toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A096978.P17747565136760158861

namespace A096978

/-- `∑[C(ceil(2^(n+1)/3), 2)]` -/
def P17747565136760158861.Spec : Prop :=
  ∀ n, (P17747565136760158861.a n : ℤ) = A096978 n

end A096978

/-! ## A096978.P15412874040908518952

`∑[∑[4^(n-1)-2*a(n-1)]]` with `a(0)=0`
-/

namespace A096978.P15412874040908518952
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.rec [0] fun n f2 =>
  (4 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - 2 * f2 (n - 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A096978.P15412874040908518952

namespace A096978

/-- `∑[∑[4^(n-1)-2*a(n-1)]]` -/
def P15412874040908518952.Spec : Prop :=
  ∀ n, P15412874040908518952.a n = (A096978 n : ℚ)

end A096978

/-! ## A096978.P6368663647510518493

`∑[A084175(n)]`
-/

namespace A096978.P6368663647510518493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084175 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A096978.P6368663647510518493

namespace A096978

/-- `∑[A084175(n)]` -/
def P6368663647510518493.Spec : Prop :=
  ∀ n, P6368663647510518493.a n = A096978 n

end A096978

/-! ## A096978.P1543660658433659249

`∑[∑[A003683(n)]]`
-/

namespace A096978.P1543660658433659249
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003683 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A096978.P1543660658433659249

namespace A096978

/-- `∑[∑[A003683(n)]]` -/
def P1543660658433659249.Spec : Prop :=
  ∀ n, P1543660658433659249.a n = A096978 n

end A096978

/-! ## A096978.P7973149984300600332

`∑[A084152(n+1)]`
-/

namespace A096978.P7973149984300600332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084152 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A096978.P7973149984300600332

namespace A096978

/-- `∑[A084152(n+1)]` -/
def P7973149984300600332.Spec : Prop :=
  ∀ n, P7973149984300600332.a n = A096978 n

end A096978

/-! ## A096978.P5025564947248227306

`∑[A138477(2*n)]`
-/

namespace A096978.P5025564947248227306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138477 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A096978.P5025564947248227306

namespace A096978

/-- `∑[A138477(2*n)]` -/
def P5025564947248227306.Spec : Prop :=
  ∀ n, P5025564947248227306.a n = A096978 n

end A096978

/-! ## A096978.P2227861208074146600

`∑[A138495(2*n)]`
-/

namespace A096978.P2227861208074146600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138495 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A096978.P2227861208074146600

namespace A096978

/-- `∑[A138495(2*n)]` -/
def P2227861208074146600.Spec : Prop :=
  ∀ n, P2227861208074146600.a n = A096978 n

end A096978

/-! ## A096978.P12642666095144509117

`∑[∑[A192382(n+1)/2]]`
-/

namespace A096978.P12642666095144509117
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A192382 (n + 1) : ℚ) / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A096978.P12642666095144509117

namespace A096978

/-- `∑[∑[A192382(n+1)/2]]` -/
def P12642666095144509117.Spec : Prop :=
  ∀ n, P12642666095144509117.a n = (A096978 n : ℚ)

end A096978

/-! ## A096978.P13106550600842819277

`∑[∑[2^(n-1)*A001045(n)]]`
-/

namespace A096978.P13106550600842819277
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A001045 n : ℚ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A096978.P13106550600842819277

namespace A096978

/-- `∑[∑[2^(n-1)*A001045(n)]]` -/
def P13106550600842819277.Spec : Prop :=
  ∀ n, P13106550600842819277.a n = (A096978 n : ℚ)

end A096978

/-! ## A096978.P7918314821639600348

`∑[∑[A001045(n)*A011782(n)]]`
-/

namespace A096978.P7918314821639600348
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 n * A011782 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A096978.P7918314821639600348

namespace A096978

/-- `∑[∑[A001045(n)*A011782(n)]]` -/
def P7918314821639600348.Spec : Prop :=
  ∀ n, P7918314821639600348.a n = A096978 n

end A096978

/-! ## A096978.P17911884793925864782

`∑[∑[A001045(n)*A131577(n)]]`
-/

namespace A096978.P17911884793925864782
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 n * A131577 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A096978.P17911884793925864782

namespace A096978

/-- `∑[∑[A001045(n)*A131577(n)]]` -/
def P17911884793925864782.Spec : Prop :=
  ∀ n, P17911884793925864782.a n = A096978 n

end A096978

/-! ## A096978.P5872363478722550144

`∑[∑[A131577(n)*A167167(n)]]`
-/

namespace A096978.P5872363478722550144
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n * A167167 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A096978.P5872363478722550144

namespace A096978

/-- `∑[∑[A131577(n)*A167167(n)]]` -/
def P5872363478722550144.Spec : Prop :=
  ∀ n, P5872363478722550144.a n = A096978 n

end A096978

/-!
# A096979: Sum of the areas of the first n+1 Pell triangles.

The programs for A096979, the canonical program `A096979.P7504954318928475090` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A096979 has offset 0).

The definition of A096979 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A096979.P7504954318928475090

`6*a(n-1)-6*a(n-3)+a(n-4)` with `a(0)=0, a(1)=1, a(2)=6, a(3)=36`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A096979

/-- `6*a(n-1)-6*a(n-3)+a(n-4)` -/
def P7504954318928475090.Spec : Prop :=
  ∀ n, P7504954318928475090.a n = A096979 n

theorem P7504954318928475090.correct : P7504954318928475090.Spec := by
  intro n
  simp only [A096979]

end A096979

/-! ## A096979.P2607558933120571708

`(A001333(n+1)²-1)/8`
-/

namespace A096979.P2607558933120571708
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001333 (n + 1) ^ 2 - 1 : ℚ) / 8

end

end A096979.P2607558933120571708

namespace A096979

/-- `(A001333(n+1)²-1)/8` -/
def P2607558933120571708.Spec : Prop :=
  ∀ n, P2607558933120571708.a n = (A096979 n : ℚ)

end A096979

/-! ## A096979.P10550343979369616974

`((A000129(n)+A000129(n+1))²-1)/8`
-/

namespace A096979.P10550343979369616974
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A000129 n + A000129 (n + 1)) ^ 2 - 1 : ℚ) / 8

end

end A096979.P10550343979369616974

namespace A096979

/-- `((A000129(n)+A000129(n+1))²-1)/8` -/
def P10550343979369616974.Spec : Prop :=
  ∀ n, P10550343979369616974.a n = (A096979 n : ℚ)

end A096979

/-! ## A096979.P11338055363695237186

`A002620(A000129(n+1))`
-/

namespace A096979.P11338055363695237186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (A000129 (n + 1)).toNat

end

end A096979.P11338055363695237186

namespace A096979

/-- `A002620(A000129(n+1))` -/
def P11338055363695237186.Spec : Prop :=
  ∀ n, P11338055363695237186.a n = A096979 n

end A096979

/-! ## A096979.P16557133892688359755

`ogf(x/(1-6x+6x^3-x^4))`
-/

namespace A096979.P16557133892688359755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -6, 0, 6, -1] n

end

end A096979.P16557133892688359755

namespace A096979

/-- `ogf(x/(1-6x+6x^3-x^4))` -/
def P16557133892688359755.Spec : Prop :=
  ∀ n, P16557133892688359755.a n = A096979 n

end A096979

/-! ## A096979.P8912070046232138166

`n%2+6*a(n-1)-a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A096979.P8912070046232138166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  ((n % 2 : ℕ) : ℤ) + (6 * a (n - 1) - a (n - 2))

end

end A096979.P8912070046232138166

namespace A096979

/-- `n%2+6*a(n-1)-a(n-2)` -/
def P8912070046232138166.Spec : Prop :=
  ∀ n, P8912070046232138166.a n = A096979 n

end A096979

/-! ## A096979.P4713298421579681699

`∑[6*a(n-1)-a(n-2)]-a(n-1)` with `a(0)=0, a(1)=1`
-/

namespace A096979.P4713298421579681699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  6 * f1 (n - 1) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j - a (n - 1)

end

end A096979.P4713298421579681699

namespace A096979

/-- `∑[6*a(n-1)-a(n-2)]-a(n-1)` -/
def P4713298421579681699.Spec : Prop :=
  ∀ n, P4713298421579681699.a n = A096979 n

end A096979

/-! ## A096979.P4759434846538193005

`∑[A084158(n)]`
-/

namespace A096979.P4759434846538193005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084158 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A096979.P4759434846538193005

namespace A096979

/-- `∑[A084158(n)]` -/
def P4759434846538193005.Spec : Prop :=
  ∀ n, P4759434846538193005.a n = A096979 n

end A096979

/-! ## A096979.P2387862340766810037

`∑[∑[A079291(n)]]`
-/

namespace A096979.P2387862340766810037
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079291 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A096979.P2387862340766810037

namespace A096979

/-- `∑[∑[A079291(n)]]` -/
def P2387862340766810037.Spec : Prop :=
  ∀ n, P2387862340766810037.a n = A096979 n

end A096979

/-! ## A096979.P11062386727265417370

`∑[A114620(n)/2]`
-/

namespace A096979.P11062386727265417370
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A114620 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A096979.P11062386727265417370

namespace A096979

/-- `∑[A114620(n)/2]` -/
def P11062386727265417370.Spec : Prop :=
  ∀ n, P11062386727265417370.a n = (A096979 n : ℚ)

end A096979

/-! ## A096979.P16377520604450560330

`∑[∑[A000129(n)²]]`
-/

namespace A096979.P16377520604450560330
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A096979.P16377520604450560330

namespace A096979

/-- `∑[∑[A000129(n)²]]` -/
def P16377520604450560330.Spec : Prop :=
  ∀ n, P16377520604450560330.a n = A096979 n

end A096979

/-! ## A096979.P3284171698273736695

`floor((A077985(n)/2)²)`
-/

namespace A096979.P3284171698273736695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((A077985 n : ℚ) / 2) ^ 2⌋

end

end A096979.P3284171698273736695

namespace A096979

/-- `floor((A077985(n)/2)²)` -/
def P3284171698273736695.Spec : Prop :=
  ∀ n, P3284171698273736695.a n = A096979 n

end A096979

/-! ## A096979.P5627146893462813225

`∑[∑[A114619(n)/2]]`
-/

namespace A096979.P5627146893462813225
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A114619 n : ℚ) / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A096979.P5627146893462813225

namespace A096979

/-- `∑[∑[A114619(n)/2]]` -/
def P5627146893462813225.Spec : Prop :=
  ∀ n, P5627146893462813225.a n = (A096979 n : ℚ)

end A096979

/-! ## A096979.P5971862273108187051

`∑[∑[Δ[A171842(n)]²]]`
-/

namespace A096979.P5971862273108187051
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171842 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f3 (n + 1) - f3 n) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A096979.P5971862273108187051

namespace A096979

/-- `∑[∑[Δ[A171842(n)]²]]` -/
def P5971862273108187051.Spec : Prop :=
  ∀ n, P5971862273108187051.a n = A096979 n

end A096979

/-! ## A096979.P4696431717579615793

`floor(∑[A001333(n)/2]²)`
-/

namespace A096979.P4696431717579615793
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001333 n : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(∑ j ∈ Finset.range (n + 1), f1 j) ^ 2⌋

end

end A096979.P4696431717579615793

namespace A096979

/-- `floor(∑[A001333(n)/2]²)` -/
def P4696431717579615793.Spec : Prop :=
  ∀ n, P4696431717579615793.a n = A096979 n

end A096979

/-! ## A096979.P6897191525872042849

`round(Δ[A024537(n)/2]²)`
-/

namespace A096979.P6897191525872042849
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024537 n : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((f1 (n + 1) - f1 n) ^ 2)

end

end A096979.P6897191525872042849

namespace A096979

/-- `round(Δ[A024537(n)/2]²)` -/
def P6897191525872042849.Spec : Prop :=
  ∀ n, P6897191525872042849.a n = A096979 n

end A096979

/-! ## A096979.P7762544350776941757

`∑[∑[A176981(n+1)²]]`
-/

namespace A096979.P7762544350776941757
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176981 (n + 1) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A096979.P7762544350776941757

namespace A096979

/-- `∑[∑[A176981(n+1)²]]` -/
def P7762544350776941757.Spec : Prop :=
  ∀ n, P7762544350776941757.a n = A096979 n

end A096979

/-! ## A096979.P7489367588999223614

`∑[∑[A215936(n+2)²]]`
-/

namespace A096979.P7489367588999223614
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215936 (n + 2) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A096979.P7489367588999223614

namespace A096979

/-- `∑[∑[A215936(n+2)²]]` -/
def P7489367588999223614.Spec : Prop :=
  ∀ n, P7489367588999223614.a n = A096979 n

end A096979

/-! ## A096979.P15736336248437414971

`floor(record[(A215936(n)/2)²])`
-/

namespace A096979.P15736336248437414971
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A215936 n : ℚ) / 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)⌋

end

end A096979.P15736336248437414971

namespace A096979

/-- `floor(record[(A215936(n)/2)²])` -/
def P15736336248437414971.Spec : Prop :=
  ∀ n, P15736336248437414971.a n = A096979 n

end A096979

/-! ## A096979.P4131792819113676616

`∑[∑[A002965(2*n)²]]`
-/

namespace A096979.P4131792819113676616
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002965 (2 * n) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A096979.P4131792819113676616

namespace A096979

/-- `∑[∑[A002965(2*n)²]]` -/
def P4131792819113676616.Spec : Prop :=
  ∀ n, P4131792819113676616.a n = A096979 n

end A096979

/-!
# A096980: Expansion of (1+3*x)/(1-2*x-7*x^2).

The programs for A096980, the canonical program `A096980.P7437814986404992692` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A096980 has offset 0).

The definition of A096980 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+3x)/(1-2x-7x^2))` (program `A096980.P7437814986404992692`, by `A096980.P7437814986404992692.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A096980.P7437814986404992692

`ogf((1+3x)/(1-2x-7x^2))`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A096980

/-- `ogf((1+3x)/(1-2x-7x^2))` -/
def P7437814986404992692.Spec : Prop :=
  ∀ n, P7437814986404992692.a n = A096980 n

theorem P7437814986404992692.correct : P7437814986404992692.Spec := by
  intro n
  simp only [A096980]

end A096980

/-! ## A096980.P5791948010465145580

`A015519(n+1)+3*A015519(n)`
-/

namespace A096980.P5791948010465145580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015519 (n + 1) + 3 * A015519 n

end

end A096980.P5791948010465145580

namespace A096980

/-- `A015519(n+1)+3*A015519(n)` -/
def P5791948010465145580.Spec : Prop :=
  ∀ n, P5791948010465145580.a n = A096980 n

end A096980

/-! ## A096980.P6102426592699294832

`2*a(n-1)+7*a(n-2)` with `a(0)=1, a(1)=5`
-/

namespace A096980.P6102426592699294832
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 5] fun n a =>
  2 * a (n - 1) + 7 * a (n - 2)

end

end A096980.P6102426592699294832

namespace A096980

/-- `2*a(n-1)+7*a(n-2)` -/
def P6102426592699294832.Spec : Prop :=
  ∀ n, (P6102426592699294832.a n : ℤ) = A096980 n

end A096980

/-! ## A096980.P3439734973620297005

`A164589(n)+A015519(n)`
-/

namespace A096980.P3439734973620297005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164589 n + A015519 n

end

end A096980.P3439734973620297005

namespace A096980

/-- `A164589(n)+A015519(n)` -/
def P3439734973620297005.Spec : Prop :=
  ∀ n, P3439734973620297005.a n = A096980 n

end A096980

/-! ## A096980.P11181318851558794405

`A164544(n)-A305492(n)`
-/

namespace A096980.P11181318851558794405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164544 n - A305492 n

end

end A096980.P11181318851558794405

namespace A096980

/-- `A164544(n)-A305492(n)` -/
def P11181318851558794405.Spec : Prop :=
  ∀ n, P11181318851558794405.a n = A096980 n

end A096980

/-! ## A096980.P1415795344007034362

`Δ[A084136(n)+A015519(n)]`
-/

namespace A096980.P1415795344007034362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084136 n + A015519 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A096980.P1415795344007034362

namespace A096980

/-- `Δ[A084136(n)+A015519(n)]` -/
def P1415795344007034362.Spec : Prop :=
  ∀ n, P1415795344007034362.a n = A096980 n

end A096980

/-! ## A096980.P7689094700425620947

`A084058(n)+Δ[A084136(n)]`
-/

namespace A096980.P7689094700425620947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084136 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084058 n + (f1 (n + 1) - f1 n)

end

end A096980.P7689094700425620947

namespace A096980

/-- `A084058(n)+Δ[A084136(n)]` -/
def P7689094700425620947.Spec : Prop :=
  ∀ n, P7689094700425620947.a n = A096980 n

end A096980

/-! ## A096980.P16759926621543901158

`A083100(n)-Δ[A084136(n)]`
-/

namespace A096980.P16759926621543901158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084136 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083100 n - (f1 (n + 1) - f1 n)

end

end A096980.P16759926621543901158

namespace A096980

/-- `A083100(n)-Δ[A084136(n)]` -/
def P16759926621543901158.Spec : Prop :=
  ∀ n, P16759926621543901158.a n = A096980 n

end A096980

/-! ## A096980.P7267958123414372248

`A084058(n)+2*A305492(n)`
-/

namespace A096980.P7267958123414372248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084058 n + 2 * A305492 n

end

end A096980.P7267958123414372248

namespace A096980

/-- `A084058(n)+2*A305492(n)` -/
def P7267958123414372248.Spec : Prop :=
  ∀ n, P7267958123414372248.a n = A096980 n

end A096980

/-! ## A096980.P4324059083679869079

`A083100(n)-2*A305492(n)`
-/

namespace A096980.P4324059083679869079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083100 n - 2 * A305492 n

end

end A096980.P4324059083679869079

namespace A096980

/-- `A083100(n)-2*A305492(n)` -/
def P4324059083679869079.Spec : Prop :=
  ∀ n, P4324059083679869079.a n = A096980 n

end A096980

/-! ## A096980.P5422964150787879500

`A083100(n)-A291001(n)/2`
-/

namespace A096980.P5422964150787879500
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083100 n : ℚ) - (A291001 n : ℚ) / 2

end

end A096980.P5422964150787879500

namespace A096980

/-- `A083100(n)-A291001(n)/2` -/
def P5422964150787879500.Spec : Prop :=
  ∀ n, P5422964150787879500.a n = (A096980 n : ℚ)

end A096980

/-! ## A096980.P1945591343658123827

`A083100(n)-Δ[A084058(n)/2]`
-/

namespace A096980.P1945591343658123827
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084058 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083100 n : ℚ) - (f1 (n + 1) - f1 n)

end

end A096980.P1945591343658123827

namespace A096980

/-- `A083100(n)-Δ[A084058(n)/2]` -/
def P1945591343658123827.Spec : Prop :=
  ∀ n, P1945591343658123827.a n = (A096980 n : ℚ)

end A096980

/-! ## A096980.P17675359648078234846

`A164544(n)+A164544(n)-A083100(n)`
-/

namespace A096980.P17675359648078234846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164544 n + (A164544 n - A083100 n)

end

end A096980.P17675359648078234846

namespace A096980

/-- `A164544(n)+A164544(n)-A083100(n)` -/
def P17675359648078234846.Spec : Prop :=
  ∀ n, P17675359648078234846.a n = A096980 n

end A096980

/-! ## A096980.P7683924955614808688

`A015519(n+1)+A305492(n)+A015519(n)`
-/

namespace A096980.P7683924955614808688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015519 (n + 1) + (A305492 n + A015519 n)

end

end A096980.P7683924955614808688

namespace A096980

/-- `A015519(n+1)+A305492(n)+A015519(n)` -/
def P7683924955614808688.Spec : Prop :=
  ∀ n, P7683924955614808688.a n = A096980 n

end A096980

/-! ## A096980.P4185339198424454270

`A083100(n)+A084136(n)-A084136(n+1)`
-/

namespace A096980.P4185339198424454270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083100 n + (A084136 n - A084136 (n + 1))

end

end A096980.P4185339198424454270

namespace A096980

/-- `A083100(n)+A084136(n)-A084136(n+1)` -/
def P4185339198424454270.Spec : Prop :=
  ∀ n, P4185339198424454270.a n = A096980 n

end A096980

/-! ## A096980.P15532213487240989769

`A084136(n+1)+A084058(n)-A084136(n)`
-/

namespace A096980.P15532213487240989769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084136 (n + 1) + (A084058 n - A084136 n)

end

end A096980.P15532213487240989769

namespace A096980

/-- `A084136(n+1)+A084058(n)-A084136(n)` -/
def P15532213487240989769.Spec : Prop :=
  ∀ n, P15532213487240989769.a n = A096980 n

end A096980

/-! ## A096980.P1459108033611894697

`A164539(n)-A291001(n)`
-/

namespace A096980.P1459108033611894697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164539 n - A291001 n

end

end A096980.P1459108033611894697

namespace A096980

/-- `A164539(n)-A291001(n)` -/
def P1459108033611894697.Spec : Prop :=
  ∀ n, P1459108033611894697.a n = A096980 n

end A096980

/-! ## A096980.P6454149228797783205

`(A084058(n)+A083100(n))/2`
-/

namespace A096980.P6454149228797783205
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084058 n + A083100 n : ℚ) / 2

end

end A096980.P6454149228797783205

namespace A096980

/-- `(A084058(n)+A083100(n))/2` -/
def P6454149228797783205.Spec : Prop :=
  ∀ n, P6454149228797783205.a n = (A096980 n : ℚ)

end A096980

/-! ## A096980.P5413758929555913678

`2*A083100(n)-A164539(n)`
-/

namespace A096980.P5413758929555913678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A083100 n - A164539 n

end

end A096980.P5413758929555913678

namespace A096980

/-- `2*A083100(n)-A164539(n)` -/
def P5413758929555913678.Spec : Prop :=
  ∀ n, P5413758929555913678.a n = A096980 n

end A096980

/-! ## A096980.P4183813045166265777

`2*A164544(n)-A083100(n)`
-/

namespace A096980.P4183813045166265777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A164544 n - A083100 n

end

end A096980.P4183813045166265777

namespace A096980

/-- `2*A164544(n)-A083100(n)` -/
def P4183813045166265777.Spec : Prop :=
  ∀ n, P4183813045166265777.a n = A096980 n

end A096980

/-!
# A096981: Number of partitions of n into parts congruent to {0, 1, 3, 5} mod 6.

The programs for A096981, there is no canonical definition to state claims against.
-/

/-! ## A096981.P13925233529988393145

`A279479(8*n)`
-/

namespace A096981.P13925233529988393145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279479 (8 * n)

end

end A096981.P13925233529988393145

/-! ## A096981.P243591446671018520

`abs(A279479(A022144(n)))`
-/

namespace A096981.P243591446671018520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A279479 (A022144 n).toNat|

end

end A096981.P243591446671018520

/-! ## A096981.P15340242458483029240

`A279479(A022144(n))+A000038(n)`
-/

namespace A096981.P15340242458483029240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279479 (A022144 n).toNat + A000038 n

end

end A096981.P15340242458483029240

/-! ## A096981.P14813527750253009218

`lcm(A020985(n), A279479(A022144(n)))`
-/

namespace A096981.P14813527750253009218
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A279479 (A022144 n).toNat)

end

end A096981.P14813527750253009218

/-! ## A096981.P15830583079820895488

`A279479(A022144(n))^A165481(n)²`
-/

namespace A096981.P15830583079820895488
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A279479 (A022144 n).toNat : ℚ) ^ (A165481 n ^ 2 : ℤ)

end

end A096981.P15830583079820895488

/-!
# A096982: Define a(1)=0. Then define b(1)=1, b(2)=1 and for k > 2, b(k) = (b(k-2) + b(k-1)) (mod n). This gives for each n a cyclic repetitive sequence; a(n) is the least k > 1 for the first 1 of the sequence 1,1,....

The programs for A096982, there is no canonical definition to state claims against.
-/

/-! ## A096982.P2760441656788407097

`abs(xor((-1)^n, A001175(n+1)))`
-/

namespace A096982.P2760441656788407097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor ((-1) ^ n) (A001175 (n + 1))|

end

end A096982.P2760441656788407097

/-! ## A096982.P8550083109679855867

`A158388(n)+A001175(n+1)`
-/

namespace A096982.P8550083109679855867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 n + A001175 (n + 1)

end

end A096982.P8550083109679855867

/-! ## A096982.P7861463451401899796

`abs(xor(A001175(n+1), A106400(n)))`
-/

namespace A096982.P7861463451401899796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (A001175 (n + 1)) (A106400 n)|

end

end A096982.P7861463451401899796

/-! ## A096982.P11402932000632904002

`A001175(n+1)+1-A000038(n)`
-/

namespace A096982.P11402932000632904002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001175 (n + 1) + (1 - A000038 n)

end

end A096982.P11402932000632904002

/-! ## A096982.P12540704790175459303

`A001175(n+1)-A153881(n+1)`
-/

namespace A096982.P12540704790175459303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001175 (n + 1) - A153881 (n + 1)

end

end A096982.P12540704790175459303

/-! ## A096982.P5143272373042446679

`∑{e}[A020639(n+1), A001175(n+1)+#]`
-/

namespace A096982.P5143272373042446679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, (A001175 (n + 1) + (Nat.factorization (f1 n).natAbs p : ℤ))

end

end A096982.P5143272373042446679

/-! ## A096982.P6118279086767122513

`A001175(n+1)-A134824(n+1)`
-/

namespace A096982.P6118279086767122513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001175 (n + 1) - A134824 (n + 1)

end

end A096982.P6118279086767122513

/-! ## A096982.P5296783006732277930

`A114637(A001175(n+1))`
-/

namespace A096982.P5296783006732277930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114637 (A001175 (n + 1)).toNat

end

end A096982.P5296783006732277930

/-! ## A096982.P15703334913053694317

`A022998(xor(1, A001175(n+1)))`
-/

namespace A096982.P15703334913053694317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022998 (Int.xor 1 (A001175 (n + 1))).toNat

end

end A096982.P15703334913053694317

/-! ## A096982.P7377324012126358431

`A065679(xor(1, A001175(n+1)))`
-/

namespace A096982.P7377324012126358431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065679 (Int.xor 1 (A001175 (n + 1))).toNat

end

end A096982.P7377324012126358431

/-!
# A096986: Numbers k such that k*k! + (smallest prime > k) is prime.

The programs for A096986, there is no canonical definition to state claims against.
-/

/-! ## A096986.P7754833768674080026

`∑[A088452(A156889(n))]`
-/

namespace A096986.P7754833768674080026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088452 (A156889 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A096986.P7754833768674080026

/-! ## A096986.P2067669601332600764

`∑[A225630(A062867(n))]`
-/

namespace A096986.P2067669601332600764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225630 (A062867 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A096986.P2067669601332600764

/-! ## A096986.P4521504094560128126

`∑[A140586(A319056(n))]`
-/

namespace A096986.P4521504094560128126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140586 (A319056 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A096986.P4521504094560128126

/-! ## A096986.P6770002061314048721

`∑[A135880(A361951(n))]`
-/

namespace A096986.P6770002061314048721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135880 (A361951 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A096986.P6770002061314048721

/-! ## A096986.P12049326208435434228

`∑[A169940(A287215(n)²)]`
-/

namespace A096986.P12049326208435434228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169940 (A287215 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A096986.P12049326208435434228

/-!
# A096987: Numerator of Sum_{k=1..n} 1/H(k), where H(k) = Sum_{j=1..k} 1/j is the k-th harmonic number.

The programs for A096987, there is no canonical definition to state claims against.
-/

/-! ## A096987.P6812494730855269564

`A004273(record[or(1, (1-n)*a(n-1))])` with `a(0)=0`
-/

namespace A096987.P6812494730855269564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  Int.lor 1 ((1 - (n : ℤ)) * f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A096987.P6812494730855269564

/-!
# A096988: Initial values for f(x)=sigma(phi(x))=A062402(x) such that iteration of f ends in cycle of length=1.

The programs for A096988, there is no canonical definition to state claims against.
-/

/-! ## A096988.P16837462263101981629

`eq[1, A096993(n+1)]+1`
-/

namespace A096988.P16837462263101981629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096993 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A096988.P16837462263101981629

/-! ## A096988.P1448693650612501269

`record[root(A000027(n+1), A096993(n+1))]`
-/

namespace A096988.P1448693650612501269
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℝ) ^ (1 / (A096993 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A096988.P1448693650612501269

/-! ## A096988.P2741977439260247959

`eq[1, A095955(A036845(n+1))]+1`
-/

namespace A096988.P2741977439260247959
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095955 (A036845 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A096988.P2741977439260247959

/-! ## A096988.P16969634390569585249

`eq[1, A095955(A000010(n+1))]+1`
-/

namespace A096988.P16969634390569585249
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095955 (A000010 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A096988.P16969634390569585249

/-! ## A096988.P4455124071441307110

`eq[n, A028310(n)*A096993(A028310(n))]`
-/

namespace A096988.P4455124071441307110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n * A096993 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A096988.P4455124071441307110

/-! ## A096988.P14158515240295559525

`A061395(p?[A000040(n+1)*A096993(n+1)])`
-/

namespace A096988.P14158515240295559525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A096993 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A096988.P14158515240295559525

/-!
# A096989: Initial values for f(x)=sigma(phi[x])=A062402[x] such that iteration of f ends in cycle of length=2.

The programs for A096989, there is no canonical definition to state claims against.
-/

/-! ## A096989.P7906669569208733307

`eq[2, A096993(n+1)]+1`
-/

namespace A096989.P7906669569208733307
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096993 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A096989.P7906669569208733307

/-! ## A096989.P7601101358611431149

`eq[2, A096993(n^ceil(sin(n)²))]`
-/

namespace A096989.P7601101358611431149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096993 (SequenceMachineLib.roundAway ((n : ℚ) ^ (⌈Real.sin (n : ℝ) ^ 2⌉ : ℤ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A096989.P7601101358611431149

/-! ## A096989.P17288441987320389120

`eq[2, A096993(n^round(atan(n)/2))]`
-/

namespace A096989.P17288441987320389120
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096993 (SequenceMachineLib.roundAway ((n : ℚ) ^ (SequenceMachineLib.roundAway (Real.arctan (n : ℝ) / 2) : ℤ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A096989.P17288441987320389120

/-! ## A096989.P11174161305852397593

`eq[2, A096993(A028310(n))]`
-/

namespace A096989.P11174161305852397593
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096993 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A096989.P11174161305852397593

/-! ## A096989.P9039413140244208996

`eq[2, A095955(A225530(n))]`
-/

namespace A096989.P9039413140244208996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095955 (A225530 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A096989.P9039413140244208996

/-! ## A096989.P6887561257636378231

`A020725(eq[2, A096993(n+1)])`
-/

namespace A096989.P6887561257636378231
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096993 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A096989.P6887561257636378231

/-! ## A096989.P3366561994181816547

`eq[2, A096993(A233583(n+1))]`
-/

namespace A096989.P3366561994181816547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096993 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A096989.P3366561994181816547

/-! ## A096989.P10785264489330063895

`eq[2, A096993(A123108(2*n))]`
-/

namespace A096989.P10785264489330063895
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096993 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A096989.P10785264489330063895

/-! ## A096989.P11942141865044630629

`eq[2, A095955(A000010(n+1))]+1`
-/

namespace A096989.P11942141865044630629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095955 (A000010 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A096989.P11942141865044630629

/-! ## A096989.P4986995065606164543

`lt[A095955(A000010(abs(1-n)+1))%2, 1]`
-/

namespace A096989.P4986995065606164543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A095955 (A000010 (|1 - (n : ℤ)| + 1).toNat).toNat) 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A096989.P4986995065606164543

/-!
# A096990: Initial values for f(x)=sigma(phi(x))=A062402(x) such that iteration of f ends in cycle of length=3.

The programs for A096990, there is no canonical definition to state claims against.
-/

/-! ## A096990.P14346943275478009841

`eq[3, A096993(n+1)]+1`
-/

namespace A096990.P14346943275478009841
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096993 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A096990.P14346943275478009841

/-! ## A096990.P16830217669832151863

`eq[3, A095955(A036845(n+1))]+1`
-/

namespace A096990.P16830217669832151863
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095955 (A036845 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A096990.P16830217669832151863

/-! ## A096990.P2036519722025219327

`eq[3, A095955(A000010(n+1))]+1`
-/

namespace A096990.P2036519722025219327
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095955 (A000010 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A096990.P2036519722025219327

/-! ## A096990.P8693090184542564380

`eq[3, A096993(A028310(n))]`
-/

namespace A096990.P8693090184542564380
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096993 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A096990.P8693090184542564380

/-! ## A096990.P14564818032618775242

`eq[3, A096993(A000038(n)+n)]`
-/

namespace A096990.P14564818032618775242
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096993 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A096990.P14564818032618775242

/-! ## A096990.P3201159265459090584

`eq[3, A096993(abs(n-A000038(n)))]`
-/

namespace A096990.P3201159265459090584
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096993 |(n : ℤ) - A000038 n|.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A096990.P3201159265459090584

/-! ## A096990.P315208209577093053

`eq[3, A096993(A123108(2*n))]`
-/

namespace A096990.P315208209577093053
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096993 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A096990.P315208209577093053

/-!
# A096991: Initial values for f(x)=sigma(phi[x])=A062402[x] such that iteration of f ends in cycle of length=4.

The programs for A096991, there is no canonical definition to state claims against.
-/

/-! ## A096991.P18215657268123073278

`eq[4, A096993(A028310(n))]`
-/

namespace A096991.P18215657268123073278
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096993 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A096991.P18215657268123073278

/-! ## A096991.P16345017944556324221

`A020725(eq[4, A096993(n+1)])`
-/

namespace A096991.P16345017944556324221
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096993 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A096991.P16345017944556324221

/-! ## A096991.P12374052252587715479

`eq[4, A096993(A233583(n+1))]`
-/

namespace A096991.P12374052252587715479
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096993 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A096991.P12374052252587715479

/-!
# A096992: Initial values for f(x)=sigma(phi[x])=A062402[x] such that iteration of f ends in cycle of length=6.

The programs for A096992, there is no canonical definition to state claims against.
-/

/-! ## A096992.P9771994030586216525

`A141310(eq[6, A096993(n+1)])`
-/

namespace A096992.P9771994030586216525
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096993 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A096992.P9771994030586216525

/-!
# A096993: Function A062402(x) = sigma(phi(x)) is iterated with initial value=n. a(n) is the length of cycle into which the trajectory merges.

The programs for A096993, there is no canonical definition to state claims against.
-/

/-! ## A096993.P18295978589792421059

`A095955(Δ[A002088(n)])`
-/

namespace A096993.P18295978589792421059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095955 (f1 (n + 1) - f1 n).toNat

end

end A096993.P18295978589792421059

/-! ## A096993.P12616949098228923402

`A095955(Δ[A005728(n)])`
-/

namespace A096993.P12616949098228923402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095955 (f1 (n + 1) - f1 n).toNat

end

end A096993.P12616949098228923402

/-! ## A096993.P13848388380096972291

`A095955(A000010(n+1))`
-/

namespace A096993.P13848388380096972291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095955 (A000010 (n + 1)).toNat

end

end A096993.P13848388380096972291

/-! ## A096993.P9173416418377389818

`A095955(A036845(n+1))`
-/

namespace A096993.P9173416418377389818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095955 (A036845 (n + 1)).toNat

end

end A096993.P9173416418377389818

/-! ## A096993.P17187743668626997313

`A095955(sqrt(A127473(n+1)))`
-/

namespace A096993.P17187743668626997313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095955 (SequenceMachineLib.roundAway (Real.sqrt (A127473 (n + 1) : ℝ))).toNat

end

end A096993.P17187743668626997313

/-! ## A096993.P5413207072878553460

`A095955(A002088(n+1)-A002088(n))`
-/

namespace A096993.P5413207072878553460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095955 (A002088 (n + 1) - A002088 n).toNat

end

end A096993.P5413207072878553460

/-! ## A096993.P8860552120918923975

`A095955(A005728(n+1)-A005728(n))`
-/

namespace A096993.P8860552120918923975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095955 (A005728 (n + 1) - A005728 n).toNat

end

end A096993.P8860552120918923975

/-! ## A096993.P860404017902367422

`A095955(A384710(n+1))`
-/

namespace A096993.P860404017902367422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095955 (A384710 (n + 1)).toNat

end

end A096993.P860404017902367422

/-! ## A096993.P14786146133205758627

`A095955(A163370(n+1))`
-/

namespace A096993.P14786146133205758627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095955 (A163370 (n + 1)).toNat

end

end A096993.P14786146133205758627

/-! ## A096993.P13516367163746847238

`A095955(A225530(n+1))`
-/

namespace A096993.P13516367163746847238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095955 (A225530 (n + 1)).toNat

end

end A096993.P13516367163746847238

/-! ## A096993.P13979365254993891037

`A096862(n+1)-A096863(n+1)`
-/

namespace A096993.P13979365254993891037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096862 (n + 1) - A096863 (n + 1)

end

end A096993.P13979365254993891037

/-!
# A096994: Number of transient terms if f(x)=phi(sigma(x))=A062401 is iterated at initial value 2^n. Equilibrium terms are listed in A096852.

The programs for A096994, there is no canonical definition to state claims against.
-/

/-! ## A096994.P11031836379417244468

`A096995(n+1)-1`
-/

namespace A096994.P11031836379417244468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096995 (n + 1) - 1

end

end A096994.P11031836379417244468

/-! ## A096994.P7348349353289871005

`Δ[∑[A096995(n)]-n]`
-/

namespace A096994.P7348349353289871005
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096995 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A096994.P7348349353289871005

/-! ## A096994.P2246053566134367130

`A023443(A096995(n+1))`
-/

namespace A096994.P2246053566134367130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A096995 (n + 1)).toNat

end

end A096994.P2246053566134367130

/-! ## A096994.P11011475666639458506

`A097003(n)-A096852(n)`
-/

namespace A096994.P11011475666639458506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097003 n - A096852 n

end

end A096994.P11011475666639458506

/-! ## A096994.P11070515760191671835

`A279119(2*A096995(n+1))`
-/

namespace A096994.P11070515760191671835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279119 (2 * A096995 (n + 1)).toNat

end

end A096994.P11070515760191671835

/-!
# A096995: Number of transient terms if f(x) = sigma(phi(x)) = A062402 is iterated at initial value = 2^n.

The programs for A096995, there is no canonical definition to state claims against.
-/

/-! ## A096995.P13315245845084781974

`A096994(abs(1-n))+A057427(n)`
-/

namespace A096995.P13315245845084781974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096994 |1 - (n : ℤ)|.toNat + A057427 n

end

end A096995.P13315245845084781974

/-! ## A096995.P7195317314871070781

`A178334(n)+A096994(abs(1-n))`
-/

namespace A096995.P7195317314871070781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n + A096994 |1 - (n : ℤ)|.toNat

end

end A096995.P7195317314871070781

/-! ## A096995.P25981895015894481

`A096994(abs(1-n))-A057428(n)`
-/

namespace A096995.P25981895015894481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096994 |1 - (n : ℤ)|.toNat - A057428 n

end

end A096995.P25981895015894481

/-! ## A096995.P17480818966249989412

`A096994(abs(1-n))+and(1, A000040(n+1))`
-/

namespace A096995.P17480818966249989412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096994 |1 - (n : ℤ)|.toNat + Int.land 1 (A000040 (n + 1))

end

end A096995.P17480818966249989412

/-! ## A096995.P4698384709161772410

`A096994(abs(1-n))+A001221(A001316(n))`
-/

namespace A096995.P4698384709161772410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096994 |1 - (n : ℤ)|.toNat + A001221 (A001316 n).toNat

end

end A096995.P4698384709161772410

/-!
# A096997: If the function f(x) = sigma(phi(x)) = A062402(x) is iterated starting from these listed values, then the starting value never returns. These are the transient terms of this iteration; they never occur in terminal cycles.

The programs for A096997, there is no canonical definition to state claims against.
-/

/-! ## A096997.P18215733392626604327

`lt[0, A096863(n+1)]+1`
-/

namespace A096997.P18215733392626604327
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096863 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A096997.P18215733392626604327

/-! ## A096997.P4673785480966533329

`comp[A096998(n+1)-1]+1`
-/

namespace A096997.P4673785480966533329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096998 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A096997.P4673785480966533329

/-! ## A096997.P5701409379060669460

`comp[record[A083262(n+1)]-1]+1`
-/

namespace A096997.P5701409379060669460
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083262 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A096997.P5701409379060669460

/-! ## A096997.P15543042104753063859

`comp[A083262(a(n-1)-(2*(1-n)-n))]` with `a(0)=1, a(1)=0`
-/

namespace A096997.P15543042104753063859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  A083262 (f1 (n - 1) - (2 * (1 - (n : ℤ)) - (n : ℤ))).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A096997.P15543042104753063859

/-! ## A096997.P1083937933094398128

`comp[A000161(n)*A133797(n+1)]`
-/

namespace A096997.P1083937933094398128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000161 n * A133797 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A096997.P1083937933094398128

/-!
# A096998: Consider iteration of the function f(x) = sigma(phi(x)) = A062402(x). Sequence lists the numbers k such that the trajectory of k returns to k.

The programs for A096998, there is no canonical definition to state claims against.
-/

/-! ## A096998.P2741825034519831178

`A241558(A096850(n+1))`
-/

namespace A096998.P2741825034519831178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241558 (A096850 (n + 1)).toNat

end

end A096998.P2741825034519831178

/-! ## A096998.P12923260410683755403

`∑{d}[A096850(n+1), A255408(#)]`
-/

namespace A096998.P12923260410683755403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096850 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A255408 d

end

end A096998.P12923260410683755403

/-! ## A096998.P12064477728422971311

`∑{d}[A096850(n+1), #%A351890(n+1)]`
-/

namespace A096998.P12064477728422971311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096850 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, Int.tmod (d : ℤ) (A351890 (n + 1))

end

end A096998.P12064477728422971311

/-! ## A096998.P10949438506666525519

`A000203(A096850(n+1)%A195635(n+1))`
-/

namespace A096998.P10949438506666525519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (Int.tmod (A096850 (n + 1)) (A195635 (n + 1))).toNat

end

end A096998.P10949438506666525519

/-! ## A096998.P12454782986678747737

`A000203(A096850(n+1))%A336966(n+1)`
-/

namespace A096998.P12454782986678747737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000203 (A096850 (n + 1)).toNat) (A336966 (n + 1))

end

end A096998.P12454782986678747737

/-!
# A096999: A062401(x)=phi[sigma(x)] function is iterated; initial value=2^n; a(n)=largest term of trajectory.

The programs for A096999, there is no canonical definition to state claims against.
-/

/-! ## A096999.P346872286036483638

`A096861(2^(n+1))`
-/

namespace A096999.P346872286036483638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096861 (2 ^ (n + 1))

end

end A096999.P346872286036483638

/-! ## A096999.P6680473686014372577

`A096861(A131575(2*n+3))%A342685(n+1)`
-/

namespace A096999.P6680473686014372577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A096861 (A131575 (2 * n + 3)).toNat) (A342685 (n + 1))

end

end A096999.P6680473686014372577

/-! ## A096999.P6308509729508386534

`A013609(A062329(n))*A096861(A000079(n+1))`
-/

namespace A096999.P6308509729508386534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013609 (A062329 n).toNat * A096861 (A000079 (n + 1)).toNat

end

end A096999.P6308509729508386534

/-! ## A096999.P2025621317150207375

`A013609(A000217(n+4))*A096861(A000079(n+1))`
-/

namespace A096999.P2025621317150207375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013609 (A000217 (n + 4)).toNat * A096861 (A000079 (n + 1)).toNat

end

end A096999.P2025621317150207375

/-! ## A096999.P2429450935507744569

`record[ratio[A096861(A121574(n))]]`
-/

namespace A096999.P2429450935507744569
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096861 (A121574 n).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A096999.P2429450935507744569

