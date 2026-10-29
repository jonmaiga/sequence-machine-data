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
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C039
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C045
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
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
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
# A121500: Minimal polygon values for a certain polygon problem leading to an approximation of Pi.

The programs for A121500, there is no canonical definition to state claims against.
-/

/-! ## A121500.P17692845409351391372

`round(sqrt(∑[acot(n)+n+1]+2))+1`
-/

namespace A121500.P17692845409351391372
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (n : ℝ) + (n + 1 : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (∑ j ∈ Finset.range (n + 1), f1 j + 2)) + 1

end

end A121500.P17692845409351391372

/-! ## A121500.P7581111783971667843

`round(sqrt(or(5, A061925(n+3))))`
-/

namespace A121500.P7581111783971667843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (Int.lor 5 (A061925 (n + 3)) : ℝ))

end

end A121500.P7581111783971667843

/-! ## A121500.P9114171523332511193

`floor(sqrt(A077169(n+1)+(n+1)/3))+2`
-/

namespace A121500.P9114171523332511193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt ((A077169 (n + 1) : ℚ) + (n + 1 : ℚ) / 3 : ℝ)⌋ + 2

end

end A121500.P9114171523332511193

/-! ## A121500.P18185669675581241955

`round(sqrt(A351014(n)+A167499(n)))+1`
-/

namespace A121500.P18185669675581241955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A351014 n + A167499 n : ℝ)) + 1

end

end A121500.P18185669675581241955

/-! ## A121500.P8751684816278838700

`floor(sqrt(A057696(n)+A052905(n)+9))`
-/

namespace A121500.P8751684816278838700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A057696 n + (A052905 n + 9))

end

end A121500.P8751684816278838700

/-! ## A121500.P12736410615827190002

`round(root(A286489(n+1)+A167487(n), 2))`
-/

namespace A121500.P12736410615827190002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A286489 (n + 1) + A167487 n : ℝ) ^ (1 / (2 : ℝ)))

end

end A121500.P12736410615827190002

/-! ## A121500.P12850815501244128384

`round(A194138(n+6)/A003152(n+10))`
-/

namespace A121500.P12850815501244128384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A194138 (n + 6) : ℚ) / (A003152 (n + 10) : ℚ))

end

end A121500.P12850815501244128384

/-! ## A121500.P9759638184811416074

`round(sqrt(A167499(n)+A001221(n+1)))+1`
-/

namespace A121500.P9759638184811416074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A167499 n + A001221 (n + 1) : ℝ)) + 1

end

end A121500.P9759638184811416074

/-! ## A121500.P16609849095865891168

`A000196(A336299(n+3)+∑[n+3]+7)`
-/

namespace A121500.P16609849095865891168
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A336299 (n + 3) + ((∑ j ∈ Finset.range (n + 1), f1 j + 7 : ℕ) : ℤ)).toNat

end

end A121500.P16609849095865891168

/-! ## A121500.P6924052509447346501

`A000196(A057696(n)+A052905(n)+9)`
-/

namespace A121500.P6924052509447346501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A057696 n + (A052905 n + 9)).toNat

end

end A121500.P6924052509447346501

/-!
# A121501: Positions n of A121500 where the minimal relative error associated with the polygon problem described there decreases.

The programs for A121501, there is no canonical definition to state claims against.
-/

/-! ## A121501.P1450357396985805934

`A121506(A121502(n+1)%A121477(n+3))`
-/

namespace A121501.P1450357396985805934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121506 (Int.tmod (A121502 (n + 1)) (A121477 (n + 3))).toNat

end

end A121501.P1450357396985805934

/-! ## A121501.P16478567747481128141

`A121506(A121502(n+1))%A121507(3*(n+1))`
-/

namespace A121501.P16478567747481128141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A121506 (A121502 (n + 1)).toNat) (A121507 (3 * (n + 1)))

end

end A121501.P16478567747481128141

/-! ## A121501.P11142470764684451970

`A121506(A121500(A121506(A121502(n+1))))`
-/

namespace A121501.P11142470764684451970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121506 (A121500 (A121506 (A121502 (n + 1)).toNat).toNat).toNat

end

end A121501.P11142470764684451970

/-!
# A121502: Companion sequence for A121501 used in a unit circle area approximation problem.

The programs for A121502, there is no canonical definition to state claims against.
-/

/-! ## A121502.P11849247415642320027

`A181534(A121501(n+1))`
-/

namespace A121502.P11849247415642320027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181534 (A121501 (n + 1)).toNat

end

end A121502.P11849247415642320027

/-! ## A121502.P1813587131852309616

`A121500(A121501(n+1))`
-/

namespace A121502.P1813587131852309616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121500 (A121501 (n + 1)).toNat

end

end A121502.P1813587131852309616

/-!
# A121505: Hit triangle for unit circle area (Pi) approximation problem described in A121500.

The programs for A121505, there is no canonical definition to state claims against.
-/

/-! ## A121505.P14281027545394404586

`char[round(ratio[A055134(7*n+3)])]`
-/

namespace A121505.P14281027545394404586
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055134 (7 * n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((f2 (n + 1) : ℚ) / (f2 n : ℚ))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A121505.P14281027545394404586

/-! ## A121505.P7472594128208526375

`A005369(∑[char[n²]+1]+n)`
-/

namespace A121505.P7472594128208526375
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005369 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A121505.P7472594128208526375

/-! ## A121505.P16992261618971131593

`1-A267813(comp[∑[2*n]]+n+1)`
-/

namespace A121505.P16992261618971131593
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A267813 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + (n + 1))

end

end A121505.P16992261618971131593

/-! ## A121505.P14172357315489948672

`A216230(∑[char[(n+1)²]+char[n²]+4]-1)`
-/

namespace A121505.P14172357315489948672
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + (if ∃ j, f3 j = n then 1 else 0) + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216230 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A121505.P14172357315489948672

/-! ## A121505.P3891337906040975934

`char[A000041(2*n)-A078812(n)]`
-/

namespace A121505.P3891337906040975934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (2 * n) - A078812 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A121505.P3891337906040975934

/-! ## A121505.P15476531000333106317

`char[eq[A003059(n+1), A099375(n)]]`
-/

namespace A121505.P15476531000333106317
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003059 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A121505.P15476531000333106317

/-! ## A121505.P11614197675784024717

`A393523(n+1)%A073783(n+1)`
-/

namespace A121505.P11614197675784024717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A393523 (n + 1)) (A073783 (n + 1))

end

end A121505.P11614197675784024717

/-! ## A121505.P10025592719651915738

`char[char[∑[n]]*A334965(3*n+4)]`
-/

namespace A121505.P10025592719651915738
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ) * A334965 (3 * n + 4)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A121505.P10025592719651915738

/-! ## A121505.P2355770040510515

`and(A059484(n), A321892(n+1))`
-/

namespace A121505.P2355770040510515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A059484 n) (A321892 (n + 1))

end

end A121505.P2355770040510515

/-!
# A121506: Minimal polygon values appearing in a certain polygon problem leading to an approximation of Pi.

The programs for A121506, there is no canonical definition to state claims against.
-/

/-! ## A121506.P3682712969861857312

`A002024(∑[record[A323602(n+1)]])`
-/

namespace A121506.P3682712969861857312
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323602 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A121506.P3682712969861857312

/-! ## A121506.P13968327971151891402

`A107436(∑[record[A323602(n+1)]])`
-/

namespace A121506.P13968327971151891402
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323602 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107436 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A121506.P13968327971151891402

/-! ## A121506.P11450918857291120469

`A123578(∑[record[A323602(n+1)]])`
-/

namespace A121506.P11450918857291120469
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323602 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123578 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A121506.P11450918857291120469

/-! ## A121506.P18348808919439863353

`A002024(A028878(n)+1)%A106214(n+5)`
-/

namespace A121506.P18348808919439863353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002024 (A028878 n + 1).toNat) (A106214 (n + 5))

end

end A121506.P18348808919439863353

/-! ## A121506.P5677945404518245738

`A002024(∑[A020735(n+1)%(A197170(n+2)+1)])`
-/

namespace A121506.P5677945404518245738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020735 (n + 1)) (A197170 (n + 2) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A121506.P5677945404518245738

/-!
# A121507: Conjectured list of numbers whose aliquot sequence eventually reaches a cycle of length two or more.

The programs for A121507, there is no canonical definition to state claims against.
-/

/-! ## A121507.P11502165106603302368

`∪[A063990(n+1), A121508(n+1)]`
-/

namespace A121507.P11502165106603302368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063990 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121508 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A121507.P11502165106603302368

/-! ## A121507.P2182360399491257322

`∪[A121508(n+1), A262624(n+1)]`
-/

namespace A121507.P2182360399491257322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121508 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262624 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A121507.P2182360399491257322

/-! ## A121507.P11153155617827959915

`∪[A121508(n+1), A273259(n+1)]`
-/

namespace A121507.P11153155617827959915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121508 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273259 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A121507.P11153155617827959915

/-!
# A121508: Conjectured list of numbers whose aliquot sequence eventually reaches a cycle of length two or more, but which are not themselves part of the cycle.

The programs for A121508, there is no canonical definition to state claims against.
-/

/-! ## A121508.P3187587448031238320

`A121507(floor(sqrt(A349210(n+2)/3)+n))`
-/

namespace A121508.P3187587448031238320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121507 ⌊Real.sqrt ((A349210 (n + 2 + 21) : ℚ) / 3 : ℝ) + (n : ℝ)⌋.toNat

end

end A121508.P3187587448031238320

/-! ## A121508.P3584252244202272648

`A121507(lcm(A121524(n+1), A121543(n+2)))`
-/

namespace A121508.P3584252244202272648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121507 (Int.lcm (A121524 (n + 1)) (A121543 (n + 2)))

end

end A121508.P3584252244202272648

/-! ## A121508.P6570026917549695963

`A121507(record[A007906(3*n+4)])`
-/

namespace A121508.P6570026917549695963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007906 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121507 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A121508.P6570026917549695963

/-!
# A121509: a(n) = 5*n^2/2 - 5*n + 13/4 - (-1)^n/4.

The programs for A121509, the canonical program `A121509.P17618360945739157289` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121509 has offset 1).

The definition of A121509 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A121509.P16939810390424424286

`ogf((1+x+5x^2+3x^3)/(1-2x+2x^3-x^4))`
-/

namespace A121509.P16939810390424424286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 5, 3] [1, -2, 0, 2, -1] n

end

end A121509.P16939810390424424286

namespace A121509

/-- `ogf((1+x+5x^2+3x^3)/(1-2x+2x^3-x^4))` -/
def P16939810390424424286.Spec : Prop :=
  ∀ n, P16939810390424424286.a n = A121509 (n + 1)

end A121509

/-! ## A121509.P17618360945739157289

`1+2*n²+floor(n²/2)`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A121509

/-- `1+2*n²+floor(n²/2)` -/
def P17618360945739157289.Spec : Prop :=
  ∀ n, P17618360945739157289.a n = A121509 (n + 1)

theorem P17618360945739157289.correct : P17618360945739157289.Spec := by
  intro n
  simp only [A121509, Nat.add_sub_cancel]

end A121509

/-! ## A121509.P3223191623095342533

`5*(n+1)²/2-5*(n+1)+13/4-(-1)^(n+1)/4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A121509.P3223191623095342533
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 * (n + 1) ^ 2 : ℚ) / 2 - (5 * (n + 1) : ℚ) + (13 : ℚ) / 4 - ((-1) ^ (n + 1) : ℚ) / 4

end

end A121509.P3223191623095342533

namespace A121509

/-- `5*(n+1)²/2-5*(n+1)+13/4-(-1)^(n+1)/4` -/
def P3223191623095342533.Spec : Prop :=
  ∀ n, P3223191623095342533.a n = (A121509 (n + 1) : ℚ)

end A121509

/-! ## A121509.P6610161048760243550

`or(1, floor(5/2*n²))`
-/

namespace A121509.P6610161048760243550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ⌊(5 : ℚ) / 2 * (n ^ 2 : ℚ)⌋

end

end A121509.P6610161048760243550

namespace A121509

/-- `or(1, floor(5/2*n²))` -/
def P6610161048760243550.Spec : Prop :=
  ∀ n, P6610161048760243550.a n = A121509 (n + 1)

end A121509

/-! ## A121509.P2465827915018194480

`xor(1, floor(5/2*n²))`
-/

namespace A121509.P2465827915018194480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 ⌊(5 : ℚ) / 2 * (n ^ 2 : ℚ)⌋

end

end A121509.P2465827915018194480

namespace A121509

/-- `xor(1, floor(5/2*n²))` -/
def P2465827915018194480.Spec : Prop :=
  ∀ n, P2465827915018194480.a n = A121509 (n + 1)

end A121509

/-! ## A121509.P5529566980062493028

`∑[a(n-2)+10]` with `a(0)=1, a(1)=2, a(2)=8`
-/

namespace A121509.P5529566980062493028
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 8] fun n f1 =>
  f1 (n - 2) + 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121509.P5529566980062493028

namespace A121509

/-- `∑[a(n-2)+10]` -/
def P5529566980062493028.Spec : Prop :=
  ∀ n, (P5529566980062493028.a n : ℤ) = A121509 (n + 1)

end A121509

/-! ## A121509.P13762825951582225687

`(gcd(2, n)+5*n²)/2`
-/

namespace A121509.P13762825951582225687
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 n + 5 * n ^ 2 : ℚ) / 2

end

end A121509.P13762825951582225687

namespace A121509

/-- `(gcd(2, n)+5*n²)/2` -/
def P13762825951582225687.Spec : Prop :=
  ∀ n, P13762825951582225687.a n = (A121509 (n + 1) : ℚ)

end A121509

/-! ## A121509.P13316001134285407213

`∑[∑[10-a(n-1)]]` with `a(0)=1, a(1)=1, a(2)=6`
-/

namespace A121509.P13316001134285407213
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 6] fun n f2 =>
  10 - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121509.P13316001134285407213

namespace A121509

/-- `∑[∑[10-a(n-1)]]` -/
def P13316001134285407213.Spec : Prop :=
  ∀ n, P13316001134285407213.a n = A121509 (n + 1)

end A121509

/-! ## A121509.P14637376139737902667

`∑[∑[∑[ogf((1+x+5x^2+3x^3)/(1+x))]]]`
-/

namespace A121509.P14637376139737902667
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 5, 3] [1, 1] n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121509.P14637376139737902667

namespace A121509

/-- `∑[∑[∑[ogf((1+x+5x^2+3x^3)/(1+x))]]]` -/
def P14637376139737902667.Spec : Prop :=
  ∀ n, P14637376139737902667.a n = A121509 (n + 1)

end A121509

/-! ## A121509.P14058244494131199958

`a(n-2)+10*(n-1)` with `a(0)=1, a(1)=3`
-/

namespace A121509.P14058244494131199958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (n - 2) + 10 * ((n : ℤ) - 1)

end

end A121509.P14058244494131199958

namespace A121509

/-- `a(n-2)+10*(n-1)` -/
def P14058244494131199958.Spec : Prop :=
  ∀ n, P14058244494131199958.a n = A121509 (n + 1)

end A121509

/-! ## A121509.P2252210320729720193

`ceil(A212656(n)/2)`
-/

namespace A121509.P2252210320729720193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A212656 n : ℚ) / 2⌉

end

end A121509.P2252210320729720193

namespace A121509

/-- `ceil(A212656(n)/2)` -/
def P2252210320729720193.Spec : Prop :=
  ∀ n, P2252210320729720193.a n = A121509 (n + 1)

end A121509

/-! ## A121509.P10920461387308098862

`ceil(A005901(n)/4)`
-/

namespace A121509.P10920461387308098862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A005901 n : ℚ) / 4⌉

end

end A121509.P10920461387308098862

namespace A121509

/-- `ceil(A005901(n)/4)` -/
def P10920461387308098862.Spec : Prop :=
  ∀ n, P10920461387308098862.a n = A121509 (n + 1)

end A121509

/-! ## A121509.P12995313056818728223

`floor(A116668(n)-n/2)`
-/

namespace A121509.P12995313056818728223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A116668 n : ℚ) - (n : ℚ) / 2⌋

end

end A121509.P12995313056818728223

namespace A121509

/-- `floor(A116668(n)-n/2)` -/
def P12995313056818728223.Spec : Prop :=
  ∀ n, P12995313056818728223.a n = A121509 (n + 1)

end A121509

/-! ## A121509.P4593852447701134790

`A373110(n)%A283394(n)`
-/

namespace A121509.P4593852447701134790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A373110 n) (A283394 n)

end

end A121509.P4593852447701134790

namespace A121509

/-- `A373110(n)%A283394(n)` -/
def P4593852447701134790.Spec : Prop :=
  ∀ n, P4593852447701134790.a n = A121509 (n + 1)

end A121509

/-! ## A121509.P7295152791696221808

`A045572(n²+1)`
-/

namespace A121509.P7295152791696221808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045572 (n ^ 2 + 1)

end

end A121509.P7295152791696221808

namespace A121509

/-- `A045572(n²+1)` -/
def P7295152791696221808.Spec : Prop :=
  ∀ n, P7295152791696221808.a n = A121509 (n + 1)

end A121509

/-! ## A121509.P10108278910324262562

`A047219(n²+1)`
-/

namespace A121509.P10108278910324262562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047219 (n ^ 2 + 1)

end

end A121509.P10108278910324262562

namespace A121509

/-- `A047219(n²+1)` -/
def P10108278910324262562.Spec : Prop :=
  ∀ n, P10108278910324262562.a n = A121509 (n + 1)

end A121509

/-! ## A121509.P5371291878450715553

`sqrt(A028375(n²+1))`
-/

namespace A121509.P5371291878450715553
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A028375 (n ^ 2 + 1) : ℝ)

end

end A121509.P5371291878450715553

namespace A121509

/-- `sqrt(A028375(n²+1))` -/
def P5371291878450715553.Spec : Prop :=
  ∀ n, P5371291878450715553.a n = (A121509 (n + 1) : ℝ)

end A121509

/-! ## A121509.P11321469383018043548

`floor(A016873(n²)/2)`
-/

namespace A121509.P11321469383018043548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A016873 (n ^ 2) : ℚ) / 2⌋

end

end A121509.P11321469383018043548

namespace A121509

/-- `floor(A016873(n²)/2)` -/
def P11321469383018043548.Spec : Prop :=
  ∀ n, P11321469383018043548.a n = A121509 (n + 1)

end A121509

/-! ## A121509.P12537838145400866054

`ceil(A016861(n²)/2)`
-/

namespace A121509.P12537838145400866054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A016861 (n ^ 2) : ℚ) / 2⌉

end

end A121509.P12537838145400866054

namespace A121509

/-- `ceil(A016861(n²)/2)` -/
def P12537838145400866054.Spec : Prop :=
  ∀ n, P12537838145400866054.a n = A121509 (n + 1)

end A121509

/-!
# A121511: a(n) = a(n-1) + a(n-4) - a(n-5).

The programs for A121511, the canonical program `A121511.P246635097179204695` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121511 has offset 1).

The definition of A121511 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-4)-a(n-5)` (program `A121511.P246635097179204695`, by `A121511.P246635097179204695.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A121511.P14298115752652963180

`ogf((1+4x+8x^2+12x^3-21x^4)/(1-x-x^4+x^5))`
-/

namespace A121511.P14298115752652963180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 4, 8, 12, -21] [1, -1, 0, 0, -1, 1] n

end

end A121511.P14298115752652963180

namespace A121511

/-- `ogf((1+4x+8x^2+12x^3-21x^4)/(1-x-x^4+x^5))` -/
def P14298115752652963180.Spec : Prop :=
  ∀ n, P14298115752652963180.a n = A121511 (n + 1)

end A121511

/-! ## A121511.P246635097179204695

`a(n-1)+a(n-4)-a(n-5)` with `a(0)=1, a(1)=5, a(2)=13, a(3)=25, a(4)=5`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A121511

/-- `a(n-1)+a(n-4)-a(n-5)` -/
def P246635097179204695.Spec : Prop :=
  ∀ n, P246635097179204695.a n = A121511 (n + 1)

theorem P246635097179204695.correct : P246635097179204695.Spec := by
  intro n
  simp only [A121511, Nat.add_sub_cancel]

end A121511

/-! ## A121511.P7331106758793287781

`n+1+17/2+7*(-1)^(n+1)/2+A057077(n+2)*A010720(n)`
-/

namespace A121511.P7331106758793287781
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) + (17 : ℚ) / 2 + (7 * (-1) ^ (n + 1) : ℚ) / 2 + (A057077 (n + 2) * A010720 n : ℚ)

end

end A121511.P7331106758793287781

namespace A121511

/-- `n+1+17/2+7*(-1)^(n+1)/2+A057077(n+2)*A010720(n)` -/
def P7331106758793287781.Spec : Prop :=
  ∀ n, P7331106758793287781.a n = (A121511 (n + 1) : ℚ)

end A121511

/-! ## A121511.P3310176633736250831

`C(2*n%4+1, 2)+n+1`
-/

namespace A121511.P3310176633736250831
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * (n % 4) + 1) 2 + (n + 1)

end

end A121511.P3310176633736250831

namespace A121511

/-- `C(2*n%4+1, 2)+n+1` -/
def P3310176633736250831.Spec : Prop :=
  ∀ n, (P3310176633736250831.a n : ℤ) = A121511 (n + 1)

end A121511

/-! ## A121511.P13919120454319490836

`C(2*and(3, n)+1, 2)+n+1`
-/

namespace A121511.P13919120454319490836
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * Nat.land 3 n + 1) 2 + (n + 1)

end

end A121511.P13919120454319490836

namespace A121511

/-- `C(2*and(3, n)+1, 2)+n+1` -/
def P13919120454319490836.Spec : Prop :=
  ∀ n, (P13919120454319490836.a n : ℤ) = A121511 (n + 1)

end A121511

/-! ## A121511.P18219356671494101531

`and(3, n)*and(7, 2*n+1)+n+1`
-/

namespace A121511.P18219356671494101531
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 3 n * Nat.land 7 (2 * n + 1) + (n + 1)

end

end A121511.P18219356671494101531

namespace A121511

/-- `and(3, n)*and(7, 2*n+1)+n+1` -/
def P18219356671494101531.Spec : Prop :=
  ∀ n, (P18219356671494101531.a n : ℤ) = A121511 (n + 1)

end A121511

/-! ## A121511.P7044082334080699720

`A001844(n)%A017089(A018837(n))`
-/

namespace A121511.P7044082334080699720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001844 n) (A017089 (A018837 n).toNat)

end

end A121511.P7044082334080699720

namespace A121511

/-- `A001844(n)%A017089(A018837(n))` -/
def P7044082334080699720.Spec : Prop :=
  ∀ n, P7044082334080699720.a n = A121511 (n + 1)

end A121511

/-!
# A121512: a(n) = a(n-1) + a(n-3) - a(n-4) for n>4, with a(1)=1, a(2)=4, a(3)=10, a(4)=4.

The programs for A121512, the canonical program `A121512.P3183761587758002122` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121512 has offset 1).

The definition of A121512 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-3)-a(n-4)` (program `A121512.P3183761587758002122`, by `A121512.P3183761587758002122.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A121512.P5063192247475706485

`ogf((1+3x+6x^2-7x^3)/(1-x-x^3+x^4))`
-/

namespace A121512.P5063192247475706485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3, 6, -7] [1, -1, 0, -1, 1] n

end

end A121512.P5063192247475706485

namespace A121512

/-- `ogf((1+3x+6x^2-7x^3)/(1-x-x^3+x^4))` -/
def P5063192247475706485.Spec : Prop :=
  ∀ n, P5063192247475706485.a n = A121512 (n + 1)

end A121512

/-! ## A121512.P3183761587758002122

`a(n-1)+a(n-3)-a(n-4)` with `a(0)=1, a(1)=4, a(2)=10, a(3)=4`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A121512

/-- `a(n-1)+a(n-3)-a(n-4)` -/
def P3183761587758002122.Spec : Prop :=
  ∀ n, P3183761587758002122.a n = A121512 (n + 1)

theorem P3183761587758002122.correct : P3183761587758002122.Spec := by
  intro n
  simp only [A121512, Nat.add_sub_cancel]

end A121512

/-! ## A121512.P2865564944416765384

`n+4+(-1)^(n+1)*A130806(n+2)`
-/

namespace A121512.P2865564944416765384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 4 : ℤ) + (-1) ^ (n + 1) * A130806 (n + 2)

end

end A121512.P2865564944416765384

namespace A121512

/-- `n+4+(-1)^(n+1)*A130806(n+2)` -/
def P2865564944416765384.Spec : Prop :=
  ∀ n, P2865564944416765384.a n = A121512 (n + 1)

end A121512

/-! ## A121512.P8155298879925355224

`ceil(exp(n%3)+n)`
-/

namespace A121512.P8155298879925355224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.exp ((n % 3 : ℕ) : ℝ) + (n : ℝ)⌉

end

end A121512.P8155298879925355224

namespace A121512

/-- `ceil(exp(n%3)+n)` -/
def P8155298879925355224.Spec : Prop :=
  ∀ n, P8155298879925355224.a n = A121512 (n + 1)

end A121512

/-! ## A121512.P16932391835909962846

`a(n-3)+3` with `a(0)=1, a(1)=4, a(2)=10`
-/

namespace A121512.P16932391835909962846
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4, 10] fun n a =>
  a (n - 3) + 3

end

end A121512.P16932391835909962846

namespace A121512

/-- `a(n-3)+3` -/
def P16932391835909962846.Spec : Prop :=
  ∀ n, (P16932391835909962846.a n : ℤ) = A121512 (n + 1)

end A121512

/-! ## A121512.P4002877612358324466

`dr(2*n^3+1)+n`
-/

namespace A121512.P4002877612358324466
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (2 * n ^ 3 + 1 : ℤ) + n

end

end A121512.P4002877612358324466

namespace A121512

/-- `dr(2*n^3+1)+n` -/
def P4002877612358324466.Spec : Prop :=
  ∀ n, (P4002877612358324466.a n : ℤ) = A121512 (n + 1)

end A121512

/-! ## A121512.P224386956158566732

`∑[floor(a(n-3))]` with `a(0)=1, a(1)=3, a(2)=6, a(3)=-6`

`floor` is left out, it is the identity on integers.
-/

namespace A121512.P224386956158566732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 6, -6] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121512.P224386956158566732

namespace A121512

/-- `∑[floor(a(n-3))]` -/
def P224386956158566732.Spec : Prop :=
  ∀ n, P224386956158566732.a n = A121512 (n + 1)

end A121512

/-! ## A121512.P8227049451130444526

`3-floor(-a(n-3))` with `a(0)=1, a(1)=4, a(2)=10`

`floor` is left out, it is the identity on integers.
-/

namespace A121512.P8227049451130444526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 10] fun n a =>
  3 - (-a (n - 3))

end

end A121512.P8227049451130444526

namespace A121512

/-- `3-floor(-a(n-3))` -/
def P8227049451130444526.Spec : Prop :=
  ∀ n, P8227049451130444526.a n = A121512 (n + 1)

end A121512

/-! ## A121512.P5390829213871568818

`3-ceil(-a(n-3))` with `a(0)=1, a(1)=4, a(2)=10`

`ceil` is left out, it is the identity on integers.
-/

namespace A121512.P5390829213871568818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 10] fun n a =>
  3 - (-a (n - 3))

end

end A121512.P5390829213871568818

namespace A121512

/-- `3-ceil(-a(n-3))` -/
def P5390829213871568818.Spec : Prop :=
  ∀ n, P5390829213871568818.a n = A121512 (n + 1)

end A121512

/-! ## A121512.P9562057168323466120

`(2*n^3)%9+1+n`
-/

namespace A121512.P9562057168323466120
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n ^ 3 % 9 + 1 + n

end

end A121512.P9562057168323466120

namespace A121512

/-- `(2*n^3)%9+1+n` -/
def P9562057168323466120.Spec : Prop :=
  ∀ n, (P9562057168323466120.a n : ℤ) = A121512 (n + 1)

end A121512

/-! ## A121512.P9611115374868129998

`(2*n*n²)%9+n+1`
-/

namespace A121512.P9611115374868129998
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n * n ^ 2) % 9 + (n + 1)

end

end A121512.P9611115374868129998

namespace A121512

/-- `(2*n*n²)%9+n+1` -/
def P9611115374868129998.Spec : Prop :=
  ∀ n, (P9611115374868129998.a n : ℤ) = A121512 (n + 1)

end A121512

/-! ## A121512.P3678990650650515472

`∑[3-a(n-1)-a(n-2)]` with `a(0)=1, a(1)=3, a(2)=6`
-/

namespace A121512.P3678990650650515472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 6] fun n f1 =>
  3 - f1 (n - 1) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121512.P3678990650650515472

namespace A121512

/-- `∑[3-a(n-1)-a(n-2)]` -/
def P3678990650650515472.Spec : Prop :=
  ∀ n, P3678990650650515472.a n = A121512 (n + 1)

end A121512

/-! ## A121512.P13067990452195233659

`A021041(n)+1+n`
-/

namespace A121512.P13067990452195233659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021041 n + 1 + (n : ℤ)

end

end A121512.P13067990452195233659

namespace A121512

/-- `A021041(n)+1+n` -/
def P13067990452195233659.Spec : Prop :=
  ∀ n, P13067990452195233659.a n = A121512 (n + 1)

end A121512

/-! ## A121512.P5559951177693517925

`A167176(n)+A080782(n+1)`
-/

namespace A121512.P5559951177693517925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167176 n + A080782 (n + 1)

end

end A121512.P5559951177693517925

namespace A121512

/-- `A167176(n)+A080782(n+1)` -/
def P5559951177693517925.Spec : Prop :=
  ∀ n, P5559951177693517925.a n = A121512 (n + 1)

end A121512

/-! ## A121512.P6983894490541162377

`A010872(n)²+A069705(n)+n`
-/

namespace A121512.P6983894490541162377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 n ^ 2 + (A069705 n + (n : ℤ))

end

end A121512.P6983894490541162377

namespace A121512

/-- `A010872(n)²+A069705(n)+n` -/
def P6983894490541162377.Spec : Prop :=
  ∀ n, P6983894490541162377.a n = A121512 (n + 1)

end A121512

/-! ## A121512.P6693754331948985293

`A016777(n+1)-(A330396(n)+A004482(n))`
-/

namespace A121512.P6693754331948985293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (n + 1) - (A330396 n + A004482 n)

end

end A121512.P6693754331948985293

namespace A121512

/-- `A016777(n+1)-(A330396(n)+A004482(n))` -/
def P6693754331948985293.Spec : Prop :=
  ∀ n, P6693754331948985293.a n = A121512 (n + 1)

end A121512

/-! ## A121512.P17472628436601367049

`A016789(n+1)-(A113655(n+1)+A004482(n))`
-/

namespace A121512.P17472628436601367049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 (n + 1) - (A113655 (n + 1) + A004482 n)

end

end A121512.P17472628436601367049

namespace A121512

/-- `A016789(n+1)-(A113655(n+1)+A004482(n))` -/
def P17472628436601367049.Spec : Prop :=
  ∀ n, P17472628436601367049.a n = A121512 (n + 1)

end A121512

/-! ## A121512.P16790011796191351510

`10-Δ[A236653(n+3)]+n`
-/

namespace A121512.P16790011796191351510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236653 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 - (f1 (n + 1) - f1 n) + (n : ℤ)

end

end A121512.P16790011796191351510

namespace A121512

/-- `10-Δ[A236653(n+3)]+n` -/
def P16790011796191351510.Spec : Prop :=
  ∀ n, P16790011796191351510.a n = A121512 (n + 1)

end A121512

/-! ## A121512.P1748695308766155786

`A021485(2*n)+1+n`
-/

namespace A121512.P1748695308766155786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021485 (2 * n) + 1 + (n : ℤ)

end

end A121512.P1748695308766155786

namespace A121512

/-- `A021485(2*n)+1+n` -/
def P1748695308766155786.Spec : Prop :=
  ∀ n, P1748695308766155786.a n = A121512 (n + 1)

end A121512

/-! ## A121512.P3175651157495871206

`n+3-A007945(2*n)`
-/

namespace A121512.P3175651157495871206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) - A007945 (2 * n)

end

end A121512.P3175651157495871206

namespace A121512

/-- `n+3-A007945(2*n)` -/
def P3175651157495871206.Spec : Prop :=
  ∀ n, P3175651157495871206.a n = A121512 (n + 1)

end A121512

/-!
# A121513: Partial sums of orders of finite perfect groups (A060793).

The programs for A121513, there is no canonical definition to state claims against.
-/

/-! ## A121513.P11812891566132449773

`∑[A060793(n+1)]`
-/

namespace A121513.P11812891566132449773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060793 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121513.P11812891566132449773

/-! ## A121513.P3969634464482816356

`∑[record[A060793(A028920(n))]]`
-/

namespace A121513.P3969634464482816356
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060793 (A028920 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121513.P3969634464482816356

/-! ## A121513.P16565070103047077796

`∑[record[A060793(A065648(n))]]`
-/

namespace A121513.P16565070103047077796
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060793 (A065648 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121513.P16565070103047077796

/-! ## A121513.P14488613906501538875

`∑[record[A060793(A112382(n))]]`
-/

namespace A121513.P14488613906501538875
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060793 (A112382 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121513.P14488613906501538875

/-! ## A121513.P8227076498483702275

`∑[record[A060793(A126759(n))]]`
-/

namespace A121513.P8227076498483702275
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060793 (A126759 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121513.P8227076498483702275

/-!
# A121514: Row 7 of array in A105272.

The programs for A121514, there is no canonical definition to state claims against.
-/

/-! ## A121514.P11654194992611763802

`A105272(A167487(n+5))`
-/

namespace A121514.P11654194992611763802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105272 (A167487 (n + 5)).toNat

end

end A121514.P11654194992611763802

/-! ## A121514.P14796818155487679226

`A105272(A167499(n+5)+2)`
-/

namespace A121514.P14796818155487679226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105272 (A167499 (n + 5) + 2).toNat

end

end A121514.P14796818155487679226

/-! ## A121514.P936445158756925614

`A105272(A167614(n+5)+4)`
-/

namespace A121514.P936445158756925614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105272 (A167614 (n + 5) + 4).toNat

end

end A121514.P936445158756925614

/-! ## A121514.P15750575959620551383

`A105272(A000124(n+6)+6)`
-/

namespace A121514.P15750575959620551383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105272 (A000124 (n + 6) + 6).toNat

end

end A121514.P15750575959620551383

/-! ## A121514.P8653571559163946662

`A105272(A000096(n+5)+8)`
-/

namespace A121514.P8653571559163946662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105272 (A000096 (n + 5) + 8).toNat

end

end A121514.P8653571559163946662

/-!
# A121517: a(n) = 4*a(n-1) + 4*a(n-2) - a(n-3); a(0)=1, a(1)=1, a(2)=7.

The programs for A121517, the canonical program `A121517.P1855302930350503957` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121517 has offset 0).

The definition of A121517 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*a(n-1)+4*a(n-2)-a(n-3)` (program `A121517.P1855302930350503957`, by `A121517.P1855302930350503957.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A121517.P12736831672703712829

`ogf((1-3x-x^2)/(1-4x-4x^2+x^3))`
-/

namespace A121517.P12736831672703712829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -3, -1] [1, -4, -4, 1] n

end

end A121517.P12736831672703712829

namespace A121517

/-- `ogf((1-3x-x^2)/(1-4x-4x^2+x^3))` -/
def P12736831672703712829.Spec : Prop :=
  ∀ n, P12736831672703712829.a n = A121517 n

end A121517

/-! ## A121517.P9597402515753476422

`5*a(n-1)-a(n-2)+3*(-1)^n` with `a(0)=1, a(1)=1`
-/

namespace A121517.P9597402515753476422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  5 * a (n - 1) - a (n - 2) + 3 * (-1) ^ n

end

end A121517.P9597402515753476422

namespace A121517

/-- `5*a(n-1)-a(n-2)+3*(-1)^n` -/
def P9597402515753476422.Spec : Prop :=
  ∀ n, P9597402515753476422.a n = A121517 n

end A121517

/-! ## A121517.P1855302930350503957

`4*a(n-1)+4*a(n-2)-a(n-3)` with `a(0)=1, a(1)=1, a(2)=7`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A121517

/-- `4*a(n-1)+4*a(n-2)-a(n-3)` -/
def P1855302930350503957.Spec : Prop :=
  ∀ n, P1855302930350503957.a n = A121517 n

theorem P1855302930350503957.correct : P1855302930350503957.Spec := by
  intro n
  simp only [A121517]

end A121517

/-! ## A121517.P17899573764922255158

`4*(a(n-1)+a(n-2))-a(n-3)` with `a(0)=1, a(1)=1, a(2)=7`
-/

namespace A121517.P17899573764922255158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 7] fun n a =>
  4 * (a (n - 1) + a (n - 2)) - a (n - 3)

end

end A121517.P17899573764922255158

namespace A121517

/-- `4*(a(n-1)+a(n-2))-a(n-3)` -/
def P17899573764922255158.Spec : Prop :=
  ∀ n, P17899573764922255158.a n = A121517 n

theorem P17899573764922255158.correct : P17899573764922255158.Spec := by
  intro n
  simp only [A121517, Nat.add_sub_cancel, A121517.P17899573764922255158.a, A121517.P1855302930350503957.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A121517

/-! ## A121517.P3726887510864150033

`A005386(n+1)+A099025(n)-A030221(n)`
-/

namespace A121517.P3726887510864150033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005386 (n + 1) + (A099025 n - A030221 n)

end

end A121517.P3726887510864150033

namespace A121517

/-- `A005386(n+1)+A099025(n)-A030221(n)` -/
def P3726887510864150033.Spec : Prop :=
  ∀ n, P3726887510864150033.a n = A121517 n

end A121517

/-! ## A121517.P5666075757022304741

`A004253(n+1)-A290902(n)%A099025(n)`
-/

namespace A121517.P5666075757022304741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004253 (n + 1) - Int.tmod (A290902 n) (A099025 n)

end

end A121517.P5666075757022304741

namespace A121517

/-- `A004253(n+1)-A290902(n)%A099025(n)` -/
def P5666075757022304741.Spec : Prop :=
  ∀ n, P5666075757022304741.a n = A121517 n

end A121517

/-! ## A121517.P749689626175183141

`Δ[A089927(n)-A005386(n+1)]-A030221(n)`
-/

namespace A121517.P749689626175183141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089927 n - A005386 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A030221 n

end

end A121517.P749689626175183141

namespace A121517

/-- `Δ[A089927(n)-A005386(n+1)]-A030221(n)` -/
def P749689626175183141.Spec : Prop :=
  ∀ n, P749689626175183141.a n = A121517 n

end A121517

/-!
# A121518: Numbers that are not the sum of the squares of distinct primes.

The programs for A121518, the canonical program `A121518.P11729264587187035683` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121518 has offset 1).

The definition of A121518 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2438 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A121518.P11729264587187035683

`eq[0, A111900(n)]`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A121518

/-- `eq[0, A111900(n)]` -/
def P11729264587187035683.Spec : Prop :=
  ∀ n, (P11729264587187035683.a n : ℤ) = A121518 (n + 1)

theorem P11729264587187035683.correct : P11729264587187035683.Spec := by
  intro n
  simp only [A121518, Nat.add_sub_cancel]

end A121518

/-! ## A121518.P6871884271198930353

`A000027(lt[A111900(n), 1])`
-/

namespace A121518.P6871884271198930353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111900 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A121518.P6871884271198930353

namespace A121518

/-- `A000027(lt[A111900(n), 1])` -/
def P6871884271198930353.Spec : Prop :=
  ∀ n, P6871884271198930353.a n = A121518 (n + 1)

end A121518

/-! ## A121518.P10083739051046322169

`lt[A111900(n), A001511(3^val(n+1, 3))]`
-/

namespace A121518.P10083739051046322169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111900 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (3 ^ SequenceMachineLib.valuation (n + 1) 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A121518.P10083739051046322169

namespace A121518

/-- `lt[A111900(n), A001511(3^val(n+1, 3))]` -/
def P10083739051046322169.Spec : Prop :=
  ∀ n, (P10083739051046322169.a n : ℤ) = A121518 (n + 1)

end A121518

/-! ## A121518.P16578123466010387895

`lt[A111900(n), A096825(3^val(n+1, 3))]`
-/

namespace A121518.P16578123466010387895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111900 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096825 (3 ^ SequenceMachineLib.valuation (n + 1) 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A121518.P16578123466010387895

namespace A121518

/-- `lt[A111900(n), A096825(3^val(n+1, 3))]` -/
def P16578123466010387895.Spec : Prop :=
  ∀ n, (P16578123466010387895.a n : ℤ) = A121518 (n + 1)

end A121518

/-! ## A121518.P11072725007393915149

`record[(n+1)/A057506(A111900(n+1)+1)]`
-/

namespace A121518.P11072725007393915149
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A057506 (A111900 (n + 1) + 1).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A121518.P11072725007393915149

namespace A121518

/-- `record[(n+1)/A057506(A111900(n+1)+1)]` -/
def P11072725007393915149.Spec : Prop :=
  ∀ n, P11072725007393915149.a n = (A121518 (n + 1) : ℚ)

end A121518

/-! ## A121518.P270453977050245257

`record[gcd(n, A006257(A111900(n)²))]`
-/

namespace A121518.P270453977050245257
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A006257 (A111900 n ^ 2).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A121518.P270453977050245257

namespace A121518

/-- `record[gcd(n, A006257(A111900(n)²))]` -/
def P270453977050245257.Spec : Prop :=
  ∀ n, (P270453977050245257.a n : ℤ) = A121518 (n + 1)

end A121518

/-! ## A121518.P17054878840625090371

`eq[0, A281477(n+1)]+1`
-/

namespace A121518.P17054878840625090371
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281477 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A121518.P17054878840625090371

namespace A121518

/-- `eq[0, A281477(n+1)]+1` -/
def P17054878840625090371.Spec : Prop :=
  ∀ n, (P17054878840625090371.a n : ℤ) = A121518 (n + 1)

end A121518

/-! ## A121518.P7589552472105581451

`lt[n*A281477(A028310(n)), n]`
-/

namespace A121518.P7589552472105581451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A281477 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A121518.P7589552472105581451

namespace A121518

/-- `lt[n*A281477(A028310(n)), n]` -/
def P7589552472105581451.Spec : Prop :=
  ∀ n, (P7589552472105581451.a n : ℤ) = A121518 (n + 1)

end A121518

/-! ## A121518.P12694067683950869167

`record[n+1-A004525(n)*A281477(n+1)]`
-/

namespace A121518.P12694067683950869167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A004525 n * A281477 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A121518.P12694067683950869167

namespace A121518

/-- `record[n+1-A004525(n)*A281477(n+1)]` -/
def P12694067683950869167.Spec : Prop :=
  ∀ n, P12694067683950869167.a n = A121518 (n + 1)

end A121518

/-! ## A121518.P9613079310563452349

`record[n+1-A004526(n)*A281477(n+1)]`
-/

namespace A121518.P9613079310563452349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A004526 n * A281477 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A121518.P9613079310563452349

namespace A121518

/-- `record[n+1-A004526(n)*A281477(n+1)]` -/
def P9613079310563452349.Spec : Prop :=
  ∀ n, P9613079310563452349.a n = A121518 (n + 1)

end A121518

/-! ## A121518.P11796381475417258988

`record[n+1-A027658(n)*A281477(n+1)]`
-/

namespace A121518.P11796381475417258988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A027658 n * A281477 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A121518.P11796381475417258988

namespace A121518

/-- `record[n+1-A027658(n)*A281477(n+1)]` -/
def P11796381475417258988.Spec : Prop :=
  ∀ n, P11796381475417258988.a n = A121518 (n + 1)

end A121518

/-! ## A121518.P8776764722685398970

`record[n+1-A029265(n)*A281477(n+1)]`
-/

namespace A121518.P8776764722685398970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A029265 n * A281477 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A121518.P8776764722685398970

namespace A121518

/-- `record[n+1-A029265(n)*A281477(n+1)]` -/
def P8776764722685398970.Spec : Prop :=
  ∀ n, P8776764722685398970.a n = A121518 (n + 1)

end A121518

/-! ## A121518.P15645794337482104063

`record[n+1-A002640(n+1)*A281477(n+1)]`
-/

namespace A121518.P15645794337482104063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A002640 (n + 1) * A281477 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A121518.P15645794337482104063

namespace A121518

/-- `record[n+1-A002640(n+1)*A281477(n+1)]` -/
def P15645794337482104063.Spec : Prop :=
  ∀ n, P15645794337482104063.a n = A121518 (n + 1)

end A121518

/-! ## A121518.P6089139683926727051

`record[n+1-A019555(n+1)*A281477(n+1)]`
-/

namespace A121518.P6089139683926727051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A019555 (n + 1) * A281477 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A121518.P6089139683926727051

namespace A121518

/-- `record[n+1-A019555(n+1)*A281477(n+1)]` -/
def P6089139683926727051.Spec : Prop :=
  ∀ n, P6089139683926727051.a n = A121518 (n + 1)

end A121518

/-! ## A121518.P16828552070299289434

`record[n+1-A006578(n)^A111900(n)]`
-/

namespace A121518.P16828552070299289434
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) - (A006578 n : ℚ) ^ (A111900 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A121518.P16828552070299289434

namespace A121518

/-- `record[n+1-A006578(n)^A111900(n)]` -/
def P16828552070299289434.Spec : Prop :=
  ∀ n, P16828552070299289434.a n = (A121518 (n + 1) : ℚ)

end A121518

/-! ## A121518.P7698961435534643722

`record[n+1-A090928(n+1)*A281477(n+1)]`
-/

namespace A121518.P7698961435534643722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A090928 (n + 1) * A281477 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A121518.P7698961435534643722

namespace A121518

/-- `record[n+1-A090928(n+1)*A281477(n+1)]` -/
def P7698961435534643722.Spec : Prop :=
  ∀ n, P7698961435534643722.a n = A121518 (n + 1)

end A121518

/-! ## A121518.P3180677892545135798

`record[n+1-A006578(n^A111900(n))]`
-/

namespace A121518.P3180677892545135798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A006578 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A111900 n : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A121518.P3180677892545135798

namespace A121518

/-- `record[n+1-A006578(n^A111900(n))]` -/
def P3180677892545135798.Spec : Prop :=
  ∀ n, P3180677892545135798.a n = A121518 (n + 1)

end A121518

/-! ## A121518.P6439123420337499561

`comp[∑{p}[n, #²]]`
-/

namespace A121518.P6439123420337499561
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), p ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A121518.P6439123420337499561

namespace A121518

/-- `comp[∑{p}[n, #²]]` -/
def P6439123420337499561.Spec : Prop :=
  ∀ n, (P6439123420337499561.a n : ℤ) = A121518 (n + 1)

end A121518

/-! ## A121518.P12906080059640745961

`comp[A005063(n+1)]`
-/

namespace A121518.P12906080059640745961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005063 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A121518.P12906080059640745961

namespace A121518

/-- `comp[A005063(n+1)]` -/
def P12906080059640745961.Spec : Prop :=
  ∀ n, (P12906080059640745961.a n : ℤ) = A121518 (n + 1)

end A121518

/-! ## A121518.P7049124204376987357

`comp[A098002(n+1)]`
-/

namespace A121518.P7049124204376987357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098002 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A121518.P7049124204376987357

namespace A121518

/-- `comp[A098002(n+1)]` -/
def P7049124204376987357.Spec : Prop :=
  ∀ n, (P7049124204376987357.a n : ℤ) = A121518 (n + 1)

end A121518

/-!
# A121519: Number of primitive roots of prime A103203(n).

The programs for A121519, the canonical program `A121519.P18252372970156583767` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121519 has offset 1).

The definition of A121519 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1392 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A121519.P18252372970156583767

`record[A008330(n+1)]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A121519

/-- `record[A008330(n+1)]` -/
def P18252372970156583767.Spec : Prop :=
  ∀ n, P18252372970156583767.a n = A121519 (n + 1)

theorem P18252372970156583767.correct : P18252372970156583767.Spec := by
  intro n
  simp only [A121519, Nat.add_sub_cancel]

end A121519

/-! ## A121519.P15182267837470681347

`record[Δ[A333315(n+1)]]`
-/

namespace A121519.P15182267837470681347
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333315 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A121519.P15182267837470681347

namespace A121519

/-- `record[Δ[A333315(n+1)]]` -/
def P15182267837470681347.Spec : Prop :=
  ∀ n, P15182267837470681347.a n = A121519 (n + 1)

end A121519

/-! ## A121519.P14457104797731974998

`record[A356093(n+1)*A356474(n+1)]`
-/

namespace A121519.P14457104797731974998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356093 (n + 1) * A356474 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A121519.P14457104797731974998

namespace A121519

/-- `record[A356093(n+1)*A356474(n+1)]` -/
def P14457104797731974998.Spec : Prop :=
  ∀ n, P14457104797731974998.a n = A121519 (n + 1)

end A121519

/-! ## A121519.P15992158314956976088

`record[A104039(n+1)/A006093(n+1)]`
-/

namespace A121519.P15992158314956976088
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A104039 (n + 1) : ℚ) / (A006093 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A121519.P15992158314956976088

namespace A121519

/-- `record[A104039(n+1)/A006093(n+1)]` -/
def P15992158314956976088.Spec : Prop :=
  ∀ n, P15992158314956976088.a n = (A121519 (n + 1) : ℚ)

end A121519

/-! ## A121519.P9683272487356290820

`record[A173557(A130290(n+1))*A356093(n+1)]`
-/

namespace A121519.P9683272487356290820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173557 (A130290 (n + 1)).toNat * A356093 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A121519.P9683272487356290820

namespace A121519

/-- `record[A173557(A130290(n+1))*A356093(n+1)]` -/
def P9683272487356290820.Spec : Prop :=
  ∀ n, P9683272487356290820.a n = A121519 (n + 1)

end A121519

/-! ## A121519.P7669479895123113449

`record[A000010(A000010(n+1))]`
-/

namespace A121519.P7669479895123113449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A000010 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A121519.P7669479895123113449

namespace A121519

/-- `record[A000010(A000010(n+1))]` -/
def P7669479895123113449.Spec : Prop :=
  ∀ n, P7669479895123113449.a n = A121519 (n + 1)

end A121519

/-! ## A121519.P696094795289346322

`record[A000010(A151800(n)-1)]`
-/

namespace A121519.P696094795289346322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A151800 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A121519.P696094795289346322

namespace A121519

/-- `record[A000010(A151800(n)-1)]` -/
def P696094795289346322.Spec : Prop :=
  ∀ n, P696094795289346322.a n = A121519 (n + 1)

end A121519

/-! ## A121519.P5328341817115381945

`A000010(A103203(n+1)-1)`
-/

namespace A121519.P5328341817115381945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A103203 (n + 1) - 1).toNat

end

end A121519.P5328341817115381945

namespace A121519

/-- `A000010(A103203(n+1)-1)` -/
def P5328341817115381945.Spec : Prop :=
  ∀ n, P5328341817115381945.a n = A121519 (n + 1)

end A121519

/-! ## A121519.P13001881479635076785

`A000010(A000010(A103203(n+1)))`
-/

namespace A121519.P13001881479635076785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A000010 (A103203 (n + 1)).toNat).toNat

end

end A121519.P13001881479635076785

namespace A121519

/-- `A000010(A000010(A103203(n+1)))` -/
def P13001881479635076785.Spec : Prop :=
  ∀ n, P13001881479635076785.a n = A121519 (n + 1)

end A121519

/-! ## A121519.P10223377901678436529

`record[A072209(n+1)]`
-/

namespace A121519.P10223377901678436529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072209 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A121519.P10223377901678436529

namespace A121519

/-- `record[A072209(n+1)]` -/
def P10223377901678436529.Spec : Prop :=
  ∀ n, P10223377901678436529.a n = A121519 (n + 1)

end A121519

/-! ## A121519.P4112613444685447611

`record[A000010(A162753(n)-1)]`
-/

namespace A121519.P4112613444685447611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A162753 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A121519.P4112613444685447611

namespace A121519

/-- `record[A000010(A162753(n)-1)]` -/
def P4112613444685447611.Spec : Prop :=
  ∀ n, P4112613444685447611.a n = A121519 (n + 1)

end A121519

/-! ## A121519.P2491523766663515985

`record[A325815(p?[2*n+1])]`
-/

namespace A121519.P2491523766663515985
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325815 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A121519.P2491523766663515985

namespace A121519

/-- `record[A325815(p?[2*n+1])]` -/
def P2491523766663515985.Spec : Prop :=
  ∀ n, P2491523766663515985.a n = A121519 (n + 1)

end A121519

/-! ## A121519.P18310615129297894680

`record[A000010(A007918(n)-1)]`
-/

namespace A121519.P18310615129297894680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A007918 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A121519.P18310615129297894680

namespace A121519

/-- `record[A000010(A007918(n)-1)]` -/
def P18310615129297894680.Spec : Prop :=
  ∀ n, P18310615129297894680.a n = A121519 (n + 1)

end A121519

/-! ## A121519.P1190432975536424659

`record[A000010(A051698(n)-1)]`
-/

namespace A121519.P1190432975536424659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A051698 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A121519.P1190432975536424659

namespace A121519

/-- `record[A000010(A051698(n)-1)]` -/
def P1190432975536424659.Spec : Prop :=
  ∀ n, P1190432975536424659.a n = A121519 (n + 1)

end A121519

/-! ## A121519.P12965052207361820489

`record[A010554(n+1)]`
-/

namespace A121519.P12965052207361820489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010554 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A121519.P12965052207361820489

namespace A121519

/-- `record[A010554(n+1)]` -/
def P12965052207361820489.Spec : Prop :=
  ∀ n, P12965052207361820489.a n = A121519 (n + 1)

end A121519

/-! ## A121519.P4865994109275884193

`record[A046144(n+1)]`
-/

namespace A121519.P4865994109275884193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046144 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A121519.P4865994109275884193

namespace A121519

/-- `record[A046144(n+1)]` -/
def P4865994109275884193.Spec : Prop :=
  ∀ n, P4865994109275884193.a n = A121519 (n + 1)

end A121519

/-! ## A121519.P14976952031524407392

`record[A206941(n+1)]`
-/

namespace A121519.P14976952031524407392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206941 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A121519.P14976952031524407392

namespace A121519

/-- `record[A206941(n+1)]` -/
def P14976952031524407392.Spec : Prop :=
  ∀ n, P14976952031524407392.a n = A121519 (n + 1)

end A121519

/-! ## A121519.P14509852443385584646

`record[A327790(n+1)]`
-/

namespace A121519.P14509852443385584646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327790 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A121519.P14509852443385584646

namespace A121519

/-- `record[A327790(n+1)]` -/
def P14509852443385584646.Spec : Prop :=
  ∀ n, P14509852443385584646.a n = A121519 (n + 1)

end A121519

/-! ## A121519.P12467720626290785631

`record[A349867(2*n+1)]`
-/

namespace A121519.P12467720626290785631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349867 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A121519.P12467720626290785631

namespace A121519

/-- `record[A349867(2*n+1)]` -/
def P12467720626290785631.Spec : Prop :=
  ∀ n, P12467720626290785631.a n = A121519 (n + 1)

end A121519

/-! ## A121519.P1859212538703016289

`record[n-A219029(n+1)]`
-/

namespace A121519.P1859212538703016289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A219029 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A121519.P1859212538703016289

namespace A121519

/-- `record[n-A219029(n+1)]` -/
def P1859212538703016289.Spec : Prop :=
  ∀ n, P1859212538703016289.a n = A121519 (n + 1)

end A121519

/-!
# A121520: 

The programs for A121520, there is no canonical definition to state claims against.
-/

/-! ## A121520.P16298224439136980738

`(10^n+1)^n`
-/

namespace A121520.P16298224439136980738
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (10 ^ n + 1) ^ n

end

end A121520.P16298224439136980738

/-! ## A121520.P14473568818384520106

`or(1, or(1, 10^n)^n)`
-/

namespace A121520.P14473568818384520106
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (Nat.lor 1 (10 ^ n) ^ n)

end

end A121520.P14473568818384520106

/-! ## A121520.P5347215150751087292

`or(1, A000533(n)^n)`
-/

namespace A121520.P5347215150751087292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A000533 n ^ n)

end

end A121520.P5347215150751087292

/-! ## A121520.P6405286063732136427

`or(1, A062397(n)^n)`
-/

namespace A121520.P6405286063732136427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A062397 n ^ n)

end

end A121520.P6405286063732136427

/-! ## A121520.P2326141924012033876

`floor(sqrt(A033934(n))^n)`
-/

namespace A121520.P2326141924012033876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (A033934 n : ℝ) ^ n⌋

end

end A121520.P2326141924012033876

/-!
# A121522: Triangle read by rows: T(n,k) is the number of nondecreasing Dyck paths of semilength n and having k up steps starting at an even level (1<=k<=n). A nondecreasing Dyck path is a Dyck path for which the sequence of the altitudes of the valleys is nondecreasing.

The programs for A121522, there is no canonical definition to state claims against.
-/

/-! ## A121522.P8900071963006329014

`A121524(A193592(n)+A057944(n))`
-/

namespace A121522.P8900071963006329014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121524 (A193592 n + A057944 n).toNat

end

end A121522.P8900071963006329014

/-! ## A121522.P3908182279161977705

`A121524(A056943(n)+A002024(n+1))`
-/

namespace A121522.P3908182279161977705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121524 (A056943 n + A002024 (n + 1)).toNat

end

end A121522.P3908182279161977705

/-! ## A121522.P17373360219657761604

`A121524(A107436(n+1)+A056943(n))`
-/

namespace A121522.P17373360219657761604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121524 (A107436 (n + 1) + A056943 n).toNat

end

end A121522.P17373360219657761604

/-! ## A121522.P12451776374251936393

`A121524(A061579(n)%A063007(n)+1)`
-/

namespace A121522.P12451776374251936393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121524 (Int.tmod (A061579 n) (A063007 n) + 1).toNat

end

end A121522.P12451776374251936393

/-! ## A121522.P9138252160070885671

`A121524(A061579(n%A082105(n))+1)`
-/

namespace A121522.P9138252160070885671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121524 (A061579 (Int.tmod (n : ℤ) (A082105 n)).toNat + 1).toNat

end

end A121522.P9138252160070885671

/-! ## A121522.P17214153118779234900

`A121524(gcd(A010816(n), A038722(n+1)))`
-/

namespace A121522.P17214153118779234900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121524 (Int.gcd (A010816 n) (A038722 (n + 1)))

end

end A121522.P17214153118779234900

/-! ## A121522.P17981366290266324431

`A121524(A038722(n+1))`
-/

namespace A121522.P17981366290266324431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121524 (A038722 (n + 1)).toNat

end

end A121522.P17981366290266324431

/-! ## A121522.P8279703756720353103

`A121524(A061579(n)+1)`
-/

namespace A121522.P8279703756720353103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121524 (A061579 n + 1).toNat

end

end A121522.P8279703756720353103

/-! ## A121522.P1716376885164085502

`A121524(A114327(n)+1+n)`
-/

namespace A121522.P1716376885164085502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121524 (A114327 n + 1 + (n : ℤ)).toNat

end

end A121522.P1716376885164085502

/-! ## A121522.P14741144796069426658

`A121524(A002024(n+1)²-n)`
-/

namespace A121522.P14741144796069426658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121524 (A002024 (n + 1) ^ 2 - (n : ℤ)).toNat

end

end A121522.P14741144796069426658

/-!
# A121523: Number of up steps starting at an even level in all nondecreasing Dyck paths of semilength n. A nondecreasing Dyck path is a Dyck path for which the sequence of the altitudes of the valleys is nondecreasing.

The programs for A121523, there is no canonical definition to state claims against.
-/

/-! ## A121523.P3807691152598403084

`A121530(n+1)+A121483(n+1)`
-/

namespace A121523.P3807691152598403084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121530 (n + 1) + A121483 (n + 1)

end

end A121523.P3807691152598403084

/-! ## A121523.P16727796909070269659

`A121530(n+1)+A038731(n)-A121486(n+1)`
-/

namespace A121523.P16727796909070269659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121530 (n + 1) + (A038731 n - A121486 (n + 1))

end

end A121523.P16727796909070269659

/-! ## A121523.P883115942974048730

`A121530(n+1)+A134512(2*n)-A121486(n+1)`
-/

namespace A121523.P883115942974048730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121530 (n + 1) + (A134512 (2 * n) - A121486 (n + 1))

end

end A121523.P883115942974048730

/-! ## A121523.P7522074530757534568

`A121530(n+1)+A291241(2*n)-A121486(n+1)`
-/

namespace A121523.P7522074530757534568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121530 (n + 1) + (A291241 (2 * n) - A121486 (n + 1))

end

end A121523.P7522074530757534568

/-! ## A121523.P9924223194643385761

`A117202(n+1)-A121525(n+1)`
-/

namespace A121523.P9924223194643385761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117202 (n + 1) - A121525 (n + 1)

end

end A121523.P9924223194643385761

/-!
# A121524: Triangle read by rows: T(n,k) is the number of nondecreasing Dyck paths of semilength n and having k up steps starting at an odd level (0 <= k <= n-1).

The programs for A121524, there is no canonical definition to state claims against.
-/

/-! ## A121524.P15258244312807280886

`A121522(A193592(n)+A057944(n))`
-/

namespace A121524.P15258244312807280886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121522 (A193592 n + A057944 n).toNat

end

end A121524.P15258244312807280886

/-! ## A121524.P9255401089695785497

`A121522(A056943(n)+A002024(n+1))`
-/

namespace A121524.P9255401089695785497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121522 (A056943 n + A002024 (n + 1)).toNat

end

end A121524.P9255401089695785497

/-! ## A121524.P8189420100780551135

`A121522(A107436(n+1)+A056943(n))`
-/

namespace A121524.P8189420100780551135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121522 (A107436 (n + 1) + A056943 n).toNat

end

end A121524.P8189420100780551135

/-! ## A121524.P15543020874549856332

`A121522(gcd(A010816(n), A038722(n+1)))`
-/

namespace A121524.P15543020874549856332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121522 (Int.gcd (A010816 n) (A038722 (n + 1)))

end

end A121524.P15543020874549856332

/-! ## A121524.P2056435593591896788

`A121522(∑[char[∑[n]]]²-n)`
-/

namespace A121524.P2056435593591896788
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121522 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A121524.P2056435593591896788

/-! ## A121524.P18407709286671977236

`A121522(A038722(n+1))%A014206(n)`
-/

namespace A121524.P18407709286671977236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A121522 (A038722 (n + 1)).toNat) (A014206 n)

end

end A121524.P18407709286671977236

/-!
# A121525: Number of up steps starting at an odd level in all nondecreasing Dyck paths of semilength n. A nondecreasing Dyck path is a Dyck path for which the sequence of the altitudes of the valleys is nondecreasing.

The programs for A121525, there is no canonical definition to state claims against.
-/

/-! ## A121525.P888971024109989834

`A121532(n+1)+A121486(n+1)`
-/

namespace A121525.P888971024109989834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121532 (n + 1) + A121486 (n + 1)

end

end A121525.P888971024109989834

/-! ## A121525.P9961014549154223584

`A121532(n+1)+A038731(n)-A121483(n+1)`
-/

namespace A121525.P9961014549154223584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121532 (n + 1) + (A038731 n - A121483 (n + 1))

end

end A121525.P9961014549154223584

/-! ## A121525.P11136375871690294759

`A121532(n+1)+A134512(2*n)-A121483(n+1)`
-/

namespace A121525.P11136375871690294759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121532 (n + 1) + (A134512 (2 * n) - A121483 (n + 1))

end

end A121525.P11136375871690294759

/-! ## A121525.P18246880665291448075

`A117202(n+1)-A121523(n+1)`
-/

namespace A121525.P18246880665291448075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117202 (n + 1) - A121523 (n + 1)

end

end A121525.P18246880665291448075

/-! ## A121525.P6764745039203656998

`A117202(A000027(n+1))%A121523(n+1)`
-/

namespace A121525.P6764745039203656998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A117202 (A000027 (n + 1)).toNat) (A121523 (n + 1))

end

end A121525.P6764745039203656998

/-!
# A121526: Limit of rows of array in A105272.

The programs for A121526, there is no canonical definition to state claims against.
-/

/-! ## A121526.P12000662414242128318

`A105272(A064226(n))`
-/

namespace A121526.P12000662414242128318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105272 (A064226 n).toNat

end

end A121526.P12000662414242128318

/-! ## A121526.P12494207900390733205

`A105272(A140064(n+1))`
-/

namespace A121526.P12494207900390733205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105272 (A140064 (n + 1)).toNat

end

end A121526.P12494207900390733205

/-! ## A121526.P15580330568489128285

`A105272(A062708(n+1)+1)`
-/

namespace A121526.P15580330568489128285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105272 (A062708 (n + 1) + 1).toNat

end

end A121526.P15580330568489128285

/-! ## A121526.P7856665548785767905

`A105272(A000217(3*n+2)-n)`
-/

namespace A121526.P7856665548785767905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105272 (A000217 (3 * n + 2) - (n : ℤ)).toNat

end

end A121526.P7856665548785767905

/-! ## A121526.P12603174670016347037

`A105272(A046691(n)+∑[8*n]+4)`
-/

namespace A121526.P12603174670016347037
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105272 (A046691 n + ((∑ j ∈ Finset.range (n + 1), f1 j + 4 : ℕ) : ℤ)).toNat

end

end A121526.P12603174670016347037

/-!
# A121528: a(1)=1. a(n) = n-th integer from among those positive integers which are coprime to the sum of the previous terms of this sequence.

The programs for A121528, there is no canonical definition to state claims against.
-/

/-! ## A121528.P5755294359985455022

`Δ[A121640(round(sqrt(n²+1)))%(2^n)]`
-/

namespace A121528.P5755294359985455022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A121640 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat) (2 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A121528.P5755294359985455022

/-! ## A121528.P12928554961712566072

`A000007(n)+Δ[A121640(A028310(n))]`
-/

namespace A121528.P12928554961712566072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121640 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (f1 (n + 1) - f1 n)

end

end A121528.P12928554961712566072

/-! ## A121528.P13729465880184122099

`Δ[A121640(A028310(n))+A057427(n)]`
-/

namespace A121528.P13729465880184122099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121640 (A028310 n).toNat + A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A121528.P13729465880184122099

/-! ## A121528.P8791031581609155900

`A151878(n)+Δ[A121640(A028310(n))]`
-/

namespace A121528.P8791031581609155900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121640 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151878 n + (f1 (n + 1) - f1 n)

end

end A121528.P8791031581609155900

/-! ## A121528.P14950854905265129708

`Δ[A121640(A028310(n))-A057428(n)]`
-/

namespace A121528.P14950854905265129708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121640 (A028310 n).toNat - A057428 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A121528.P14950854905265129708

/-! ## A121528.P925709177664184389

`Δ[A121640(A028310(n))+A000122(n²)]`
-/

namespace A121528.P925709177664184389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121640 (A028310 n).toNat + A000122 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A121528.P925709177664184389

/-! ## A121528.P15430846084861359986

`Δ[A121640(A028310(n))+A036453(n+1)]`
-/

namespace A121528.P15430846084861359986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121640 (A028310 n).toNat + A036453 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A121528.P15430846084861359986

/-! ## A121528.P16020828016628938028

`Δ[A121640(A028310(n))-A014963(4*n+2)]`
-/

namespace A121528.P16020828016628938028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121640 (A028310 n).toNat - A014963 (4 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A121528.P16020828016628938028

/-! ## A121528.P14083353846732944993

`Δ[A121640(A028310(n))+A000040(n+1)%2]`
-/

namespace A121528.P14083353846732944993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121640 (A028310 n).toNat + Int.tmod (A000040 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A121528.P14083353846732944993

/-!
# A121530: Number of double rises at an odd level in all nondecreasing Dyck paths of semilength n. A nondecreasing Dyck path is a Dyck path for which the sequence of the altitudes of the valleys is nondecreasing.

The programs for A121530, the canonical program `A121530.P1301042674401672022` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121530 has offset 1).

The definition of A121530 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 235 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A121530.P9647314495162085300

`A121523(n+1)-A121483(n+1)`
-/

namespace A121530.P9647314495162085300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121523 (n + 1) - A121483 (n + 1)

end

end A121530.P9647314495162085300

namespace A121530

/-- `A121523(n+1)-A121483(n+1)` -/
def P9647314495162085300.Spec : Prop :=
  ∀ n, P9647314495162085300.a n = A121530 (n + 1)

end A121530

/-! ## A121530.P1301042674401672022

`A001629(2*n)-A121532(n+1)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A121530

/-- `A001629(2*n)-A121532(n+1)` -/
def P1301042674401672022.Spec : Prop :=
  ∀ n, P1301042674401672022.a n = A121530 (n + 1)

theorem P1301042674401672022.correct : P1301042674401672022.Spec := by
  intro n
  simp only [A121530, Nat.add_sub_cancel]

end A121530

/-! ## A121530.P6152786906788151284

`A116796(n+1)-(A121532(n+1)+1)`
-/

namespace A121530.P6152786906788151284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116796 (n + 1) - (A121532 (n + 1) + 1)

end

end A121530.P6152786906788151284

namespace A121530

/-- `A116796(n+1)-(A121532(n+1)+1)` -/
def P6152786906788151284.Spec : Prop :=
  ∀ n, P6152786906788151284.a n = A121530 (n + 1)

end A121530

/-! ## A121530.P4775151211259725488

`∑[A029907(A004273(n))]-A121532(n+1)`
-/

namespace A121530.P4775151211259725488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029907 (A004273 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A121532 (n + 1)

end

end A121530.P4775151211259725488

namespace A121530

/-- `∑[A029907(A004273(n))]-A121532(n+1)` -/
def P4775151211259725488.Spec : Prop :=
  ∀ n, P4775151211259725488.a n = A121530 (n + 1)

end A121530

/-! ## A121530.P14131796859713555356

`A121486(n+1)+A121523(n+1)-A038731(n)`
-/

namespace A121530.P14131796859713555356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121486 (n + 1) + (A121523 (n + 1) - A038731 n)

end

end A121530.P14131796859713555356

namespace A121530

/-- `A121486(n+1)+A121523(n+1)-A038731(n)` -/
def P14131796859713555356.Spec : Prop :=
  ∀ n, P14131796859713555356.a n = A121530 (n + 1)

end A121530

/-! ## A121530.P7794174833606174557

`A121523(n+1)-(A291241(2*n)-A121486(n+1))`
-/

namespace A121530.P7794174833606174557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121523 (n + 1) - (A291241 (2 * n) - A121486 (n + 1))

end

end A121530.P7794174833606174557

namespace A121530

/-- `A121523(n+1)-(A291241(2*n)-A121486(n+1))` -/
def P7794174833606174557.Spec : Prop :=
  ∀ n, P7794174833606174557.a n = A121530 (n + 1)

end A121530

/-!
# A121532: Number of double rises at an even level in all nondecreasing Dyck paths of semilength n. A nondecreasing Dyck path is a Dyck path for which the sequence of the altitudes of the valleys is nondecreasing.

The programs for A121532, the canonical program `A121532.P14462962003202746035` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121532 has offset 1).

The definition of A121532 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A121532.P14462962003202746035

`ogf((x^2-3x^4+2x^5-x^6)/(1-6x+9x^2+5x^3-15x^4+x^5+4x^6-x^7))`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A121532

/-- `ogf((x^2-3x^4+2x^5-x^6)/(1-6x+9x^2+5x^3-15x^4+x^5+4x^6-x^7))` -/
def P14462962003202746035.Spec : Prop :=
  ∀ n, P14462962003202746035.a n = A121532 (n + 1)

theorem P14462962003202746035.correct : P14462962003202746035.Spec := by
  intro n
  simp only [A121532, Nat.add_sub_cancel]

end A121532

/-! ## A121532.P7509020341428878548

`A121525(n+1)-A121486(n+1)`
-/

namespace A121532.P7509020341428878548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121525 (n + 1) - A121486 (n + 1)

end

end A121532.P7509020341428878548

namespace A121532

/-- `A121525(n+1)-A121486(n+1)` -/
def P7509020341428878548.Spec : Prop :=
  ∀ n, P7509020341428878548.a n = A121532 (n + 1)

end A121532

/-! ## A121532.P7170982388307518723

`A001629(2*n)-A121530(n+1)`
-/

namespace A121532.P7170982388307518723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001629 (2 * n) - A121530 (n + 1)

end

end A121532.P7170982388307518723

namespace A121532

/-- `A001629(2*n)-A121530(n+1)` -/
def P7170982388307518723.Spec : Prop :=
  ∀ n, P7170982388307518723.a n = A121532 (n + 1)

theorem P7170982388307518723.correct : P7170982388307518723.Spec := by
  intro n
  simp only [A121532, Nat.add_sub_cancel, A121532.P7170982388307518723.a, A121532.P14462962003202746035.a, A001629, A001629.P5625967319348901745.a, A121530, A121530.P1301042674401672022.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A121532

/-! ## A121532.P10244987115621685244

`A116796(n+1)-(A121530(n+1)+1)`
-/

namespace A121532.P10244987115621685244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116796 (n + 1) - (A121530 (n + 1) + 1)

end

end A121532.P10244987115621685244

namespace A121532

/-- `A116796(n+1)-(A121530(n+1)+1)` -/
def P10244987115621685244.Spec : Prop :=
  ∀ n, P10244987115621685244.a n = A121532 (n + 1)

end A121532

/-! ## A121532.P15039008860085460535

`∑[A029907(A004273(n))]-A121530(n+1)`
-/

namespace A121532.P15039008860085460535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029907 (A004273 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A121530 (n + 1)

end

end A121532.P15039008860085460535

namespace A121532

/-- `∑[A029907(A004273(n))]-A121530(n+1)` -/
def P15039008860085460535.Spec : Prop :=
  ∀ n, P15039008860085460535.a n = A121532 (n + 1)

end A121532

/-! ## A121532.P5446061622290019376

`A121483(n+1)+A121525(n+1)-A038731(n)`
-/

namespace A121532.P5446061622290019376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121483 (n + 1) + (A121525 (n + 1) - A038731 n)

end

end A121532.P5446061622290019376

namespace A121532

/-- `A121483(n+1)+A121525(n+1)-A038731(n)` -/
def P5446061622290019376.Spec : Prop :=
  ∀ n, P5446061622290019376.a n = A121532 (n + 1)

end A121532

/-!
# A121533: Fibonacci-Lucas prime twins: Prime Fibonacci numbers Fibonacci(k) such that Lucas numbers Lucas(k) = Fibonacci(k-1) + Fibonacci(k+1) are also prime.

The programs for A121533, there is no canonical definition to state claims against.
-/

/-! ## A121533.P1087218608676037233

`A153866(∑[A095149(n)])`
-/

namespace A121533.P1087218608676037233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095149 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153866 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A121533.P1087218608676037233

/-! ## A121533.P18174677337545522826

`A153866(record[A024996(n)])`
-/

namespace A121533.P18174677337545522826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024996 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153866 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A121533.P18174677337545522826

/-! ## A121533.P15920302565283791596

`A005478(A051948(n+1))`
-/

namespace A121533.P15920302565283791596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005478 (A051948 (n + 1)).toNat

end

end A121533.P15920302565283791596

/-!
# A121534: Lucas-Fibonacci prime twins: Prime Lucas numbers Lucas(k) such that Fibonacci numbers Fibonacci(k) are also prime.

The programs for A121534, there is no canonical definition to state claims against.
-/

/-! ## A121534.P7280396271236586852

`round(sqrt(5)*A121533(n+1))`
-/

namespace A121534.P7280396271236586852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (5 : ℝ) * (A121533 (n + 1) : ℝ))

end

end A121534.P7280396271236586852

/-! ## A121534.P10058577691312708875

`A153867(∑[A084600(n)])`
-/

namespace A121534.P10058577691312708875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084600 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153867 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A121534.P10058577691312708875

/-! ## A121534.P15066323197628460921

`A153867(∑[A346517(n)])`
-/

namespace A121534.P15066323197628460921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346517 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153867 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A121534.P15066323197628460921

/-!
# A121535: Numbers that are sums of substrings of their reversals.

The programs for A121535, there is no canonical definition to state claims against.
-/

/-! ## A121535.P9079404821319795352

`∑[A147193(A146157(n+2))]`
-/

namespace A121535.P9079404821319795352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147193 (A146157 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121535.P9079404821319795352

/-! ## A121535.P14821590754189955283

`or(A255378(A120126(n)), A343050(n+1))`
-/

namespace A121535.P14821590754189955283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A255378 (A120126 n).toNat) (A343050 (n + 1))

end

end A121535.P14821590754189955283

/-! ## A121535.P12377820942816188040

`A124107(n+1)%97`
-/

namespace A121535.P12377820942816188040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A124107 (n + 1)) 97

end

end A121535.P12377820942816188040

/-! ## A121535.P14124981940533256968

`record[A115026(n+1)]%79`
-/

namespace A121535.P14124981940533256968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115026 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) 79

end

end A121535.P14124981940533256968

/-! ## A121535.P5317048614820862357

`record[A287877(n+1)]%94`
-/

namespace A121535.P5317048614820862357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287877 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) 94

end

end A121535.P5317048614820862357

/-!
# A121536: Smallest m such that m^3 >= n^2.

The programs for A121536, the canonical program `A121536.P6253262290429947505` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121536 has offset 1).

The definition of A121536 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A077107, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A121536.P18334957492334178045

`ceil(n^(2/3))`
-/

namespace A121536.P18334957492334178045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) ^ ((2 : ℚ) / 3 : ℝ)⌉

end

end A121536.P18334957492334178045

namespace A121536

/-- `ceil(n^(2/3))` -/
def P18334957492334178045.Spec : Prop :=
  ∀ n, P18334957492334178045.a n = A121536 (n + 1)

end A121536

/-! ## A121536.P6253262290429947505

`A077107(n)^(1/3)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A121536

/-- `A077107(n)^(1/3)` -/
def P6253262290429947505.Spec : Prop :=
  ∀ n, P6253262290429947505.a n = (A121536 (n + 1) : ℝ)

end A121536

/-! ## A121536.P1316379766752752544

`(A070923(n)+n²)^(1/3)`
-/

namespace A121536.P1316379766752752544
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A070923 n + (n ^ 2 : ℤ) : ℝ) ^ ((1 : ℚ) / 3 : ℝ)

end

end A121536.P1316379766752752544

namespace A121536

/-- `(A070923(n)+n²)^(1/3)` -/
def P1316379766752752544.Spec : Prop :=
  ∀ n, P1316379766752752544.a n = (A121536 (n + 1) : ℝ)

end A121536

/-! ## A121536.P15873700170663758209

`∑[char[A077121(n)]]`
-/

namespace A121536.P15873700170663758209
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077121 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121536.P15873700170663758209

namespace A121536

/-- `∑[char[A077121(n)]]` -/
def P15873700170663758209.Spec : Prop :=
  ∀ n, (P15873700170663758209.a n : ℤ) = A121536 (n + 1)

end A121536

/-! ## A121536.P1531874170286421983

`∑[char[A000093(n)+1]]`
-/

namespace A121536.P1531874170286421983
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000093 n + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121536.P1531874170286421983

namespace A121536

/-- `∑[char[A000093(n)+1]]` -/
def P1531874170286421983.Spec : Prop :=
  ∀ n, (P1531874170286421983.a n : ℤ) = A121536 (n + 1)

end A121536

/-! ## A121536.P11135721627600431932

`A077113(n)-A010057(n)`
-/

namespace A121536.P11135721627600431932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077113 n - A010057 n

end

end A121536.P11135721627600431932

namespace A121536

/-- `A077113(n)-A010057(n)` -/
def P11135721627600431932.Spec : Prop :=
  ∀ n, P11135721627600431932.a n = A121536 (n + 1)

end A121536

/-! ## A121536.P17710985514929211269

`A018852(A077107(n))`
-/

namespace A121536.P17710985514929211269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018852 (A077107 n).toNat

end

end A121536.P17710985514929211269

namespace A121536

/-- `A018852(A077107(n))` -/
def P17710985514929211269.Spec : Prop :=
  ∀ n, P17710985514929211269.a n = A121536 (n + 1)

end A121536

/-! ## A121536.P4434520883546367247

`A048766(A048763(n²))`
-/

namespace A121536.P4434520883546367247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A048763 (n ^ 2)).toNat

end

end A121536.P4434520883546367247

namespace A121536

/-- `A048766(A048763(n²))` -/
def P4434520883546367247.Spec : Prop :=
  ∀ n, P4434520883546367247.a n = A121536 (n + 1)

end A121536

/-!
# A121538: Increasing sequence: "if n appears then a*n+b doesn't", case a(1)=1, a=2, b=1.

The programs for A121538, the canonical program `A121538.P12273660755923981191` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121538 has offset 1).

The definition of A121538 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A121538.P12273660755923981191

`lt[0, (-a(floor(n/2)))^n]` with `a(0)=-1`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A121538

/-- `lt[0, (-a(floor(n/2)))^n]` -/
def P12273660755923981191.Spec : Prop :=
  ∀ n, (P12273660755923981191.a n : ℤ) = A121538 (n + 1)

theorem P12273660755923981191.correct : P12273660755923981191.Spec := by
  intro n
  simp only [A121538, Nat.add_sub_cancel]

end A121538

/-! ## A121538.P13883354824386165257

`eq[1, (-a(floor(n/2)))^n]` with `a(0)=0, a(1)=1`
-/

namespace A121538.P13883354824386165257
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f2 =>
  (-f2 ⌊(n : ℚ) / 2⌋.toNat) ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A121538.P13883354824386165257

namespace A121538

/-- `eq[1, (-a(floor(n/2)))^n]` -/
def P13883354824386165257.Spec : Prop :=
  ∀ n, (P13883354824386165257.a n : ℤ) = A121538 (n + 1)

end A121538

/-! ## A121538.P2328756721737653283

`eq[0, n%(2-a(floor(n/2)))]` with `a(0)=1`
-/

namespace A121538.P2328756721737653283
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  Int.tmod (n : ℤ) (2 - f2 ⌊(n : ℚ) / 2⌋.toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A121538.P2328756721737653283

namespace A121538

/-- `eq[0, n%(2-a(floor(n/2)))]` -/
def P2328756721737653283.Spec : Prop :=
  ∀ n, (P2328756721737653283.a n : ℤ) = A121538 (n + 1)

end A121538

/-! ## A121538.P9472581860412095729

`eq[0, and(n, 1-a(floor(n/2)))]` with `a(0)=1`
-/

namespace A121538.P9472581860412095729
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  Int.land (n : ℤ) (1 - f2 ⌊(n : ℚ) / 2⌋.toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A121538.P9472581860412095729

namespace A121538

/-- `eq[0, and(n, 1-a(floor(n/2)))]` -/
def P9472581860412095729.Spec : Prop :=
  ∀ n, (P9472581860412095729.a n : ℤ) = A121538 (n + 1)

end A121538

/-! ## A121538.P10513213785404215982

`lt[and(n, 1-a(floor(n/2))), 1]` with `a(0)=1`
-/

namespace A121538.P10513213785404215982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  Int.land (n : ℤ) (1 - f1 ⌊(n : ℚ) / 2⌋.toNat)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A121538.P10513213785404215982

namespace A121538

/-- `lt[and(n, 1-a(floor(n/2))), 1]` -/
def P10513213785404215982.Spec : Prop :=
  ∀ n, (P10513213785404215982.a n : ℤ) = A121538 (n + 1)

end A121538

/-! ## A121538.P14264305073979808197

`eq[1, (xor(n, n+1)%(n+1))%3]`
-/

namespace A121538.P14264305073979808197
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (n + 1) % (n + 1) % 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A121538.P14264305073979808197

namespace A121538

/-- `eq[1, (xor(n, n+1)%(n+1))%3]` -/
def P14264305073979808197.Spec : Prop :=
  ∀ n, (P14264305073979808197.a n : ℤ) = A121538 (n + 1)

end A121538

/-! ## A121538.P13705876051325767480

`floor((1/a(a(n-1)-n)+1)*a(n-1))` with `a(0)=1`
-/

namespace A121538.P13705876051325767480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(1 / (a (a (n - 1) - (n : ℤ)).toNat : ℚ) + 1) * (a (n - 1) : ℚ)⌋

end

end A121538.P13705876051325767480

namespace A121538

/-- `floor((1/a(a(n-1)-n)+1)*a(n-1))` -/
def P13705876051325767480.Spec : Prop :=
  ∀ n, P13705876051325767480.a n = A121538 (n + 1)

end A121538

/-! ## A121538.P213247939527148853

`floor(a(n-1)+a(n-1)/a(a(n-1)-n))` with `a(0)=1`
-/

namespace A121538.P213247939527148853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(a (n - 1) : ℚ) + (a (n - 1) : ℚ) / (a (a (n - 1) - (n : ℤ)).toNat : ℚ)⌋

end

end A121538.P213247939527148853

namespace A121538

/-- `floor(a(n-1)+a(n-1)/a(a(n-1)-n))` -/
def P213247939527148853.Spec : Prop :=
  ∀ n, P213247939527148853.a n = A121538 (n + 1)

end A121538

/-! ## A121538.P3516981576083133939

`eq[0, A217586(n+1)]`
-/

namespace A121538.P3516981576083133939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217586 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A121538.P3516981576083133939

namespace A121538

/-- `eq[0, A217586(n+1)]` -/
def P3516981576083133939.Spec : Prop :=
  ∀ n, (P3516981576083133939.a n : ℤ) = A121538 (n + 1)

end A121538

/-! ## A121538.P14637210207380796582

`eq[1, A039982(n)]+1`
-/

namespace A121538.P14637210207380796582
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039982 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A121538.P14637210207380796582

namespace A121538

/-- `eq[1, A039982(n)]+1` -/
def P14637210207380796582.Spec : Prop :=
  ∀ n, (P14637210207380796582.a n : ℤ) = A121538 (n + 1)

end A121538

/-! ## A121538.P728713208556896640

`eq[0, A039982(2*n)]`
-/

namespace A121538.P728713208556896640
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039982 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A121538.P728713208556896640

namespace A121538

/-- `eq[0, A039982(2*n)]` -/
def P728713208556896640.Spec : Prop :=
  ∀ n, (P728713208556896640.a n : ℤ) = A121538 (n + 1)

end A121538

/-! ## A121538.P10208221410750439952

`A053661(n+2)-1`
-/

namespace A121538.P10208221410750439952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053661 (n + 2) - 1

end

end A121538.P10208221410750439952

namespace A121538

/-- `A053661(n+2)-1` -/
def P10208221410750439952.Spec : Prop :=
  ∀ n, P10208221410750439952.a n = A121538 (n + 1)

end A121538

/-! ## A121538.P17161740890050211242

`eq[A036987(n), A096268(n)]`
-/

namespace A121538.P17161740890050211242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096268 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A121538.P17161740890050211242

namespace A121538

/-- `eq[A036987(n), A096268(n)]` -/
def P17161740890050211242.Spec : Prop :=
  ∀ n, (P17161740890050211242.a n : ℤ) = A121538 (n + 1)

end A121538

/-! ## A121538.P12828183586730663189

`eq[A035263(n+1), A043545(n)]`
-/

namespace A121538.P12828183586730663189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035263 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043545 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A121538.P12828183586730663189

namespace A121538

/-- `eq[A035263(n+1), A043545(n)]` -/
def P12828183586730663189.Spec : Prop :=
  ∀ n, (P12828183586730663189.a n : ℤ) = A121538 (n + 1)

end A121538

/-! ## A121538.P3037812298479787043

`lt[1, A175880(n+1)]`
-/

namespace A121538.P3037812298479787043
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175880 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A121538.P3037812298479787043

namespace A121538

/-- `lt[1, A175880(n+1)]` -/
def P3037812298479787043.Spec : Prop :=
  ∀ n, (P3037812298479787043.a n : ℤ) = A121538 (n + 1)

end A121538

/-!
# A121539: Numbers whose binary expansion ends in an even number of 1's.

The programs for A121539, the canonical program `A121539.P12871047316155438586` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121539 has offset 1).

The definition of A121539 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003159, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A121539.P12871047316155438586

`A003159(n+1)-1`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A121539

/-- `A003159(n+1)-1` -/
def P12871047316155438586.Spec : Prop :=
  ∀ n, P12871047316155438586.a n = A121539 (n + 1)

theorem P12871047316155438586.correct : P12871047316155438586.Spec := by
  intro n
  simp only [A121539, Nat.add_sub_cancel]

end A121539

/-! ## A121539.P14744537669264675791

`eq[0, val(n+1, 2)%2]`
-/

namespace A121539.P14744537669264675791
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2 % 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A121539.P14744537669264675791

namespace A121539

/-- `eq[0, val(n+1, 2)%2]` -/
def P14744537669264675791.Spec : Prop :=
  ∀ n, (P14744537669264675791.a n : ℤ) = A121539 (n + 1)

end A121539

/-! ## A121539.P13470918060207300915

`lt[1, gcd(2, val(n+1, 2))]`
-/

namespace A121539.P13470918060207300915
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 (SequenceMachineLib.valuation (n + 1) 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A121539.P13470918060207300915

namespace A121539

/-- `lt[1, gcd(2, val(n+1, 2))]` -/
def P13470918060207300915.Spec : Prop :=
  ∀ n, (P13470918060207300915.a n : ℤ) = A121539 (n + 1)

end A121539

/-! ## A121539.P12645345592177644278

`lt[and(1, val(n+1, 2)), 1]`
-/

namespace A121539.P12645345592177644278
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (SequenceMachineLib.valuation (n + 1) 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A121539.P12645345592177644278

namespace A121539

/-- `lt[and(1, val(n+1, 2)), 1]` -/
def P12645345592177644278.Spec : Prop :=
  ∀ n, (P12645345592177644278.a n : ℤ) = A121539 (n + 1)

end A121539

/-! ## A121539.P846328498481003882

`lt[0, xor(n, n+1)%3]`
-/

namespace A121539.P846328498481003882
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (n + 1) % 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A121539.P846328498481003882

namespace A121539

/-- `lt[0, xor(n, n+1)%3]` -/
def P846328498481003882.Spec : Prop :=
  ∀ n, (P846328498481003882.a n : ℤ) = A121539 (n + 1)

end A121539

/-! ## A121539.P5982313057070351516

`lt[gcd(6, xor(n, n+1)), 2]`
-/

namespace A121539.P5982313057070351516
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 6 (Nat.xor n (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A121539.P5982313057070351516

namespace A121539

/-- `lt[gcd(6, xor(n, n+1)), 2]` -/
def P5982313057070351516.Spec : Prop :=
  ∀ n, (P5982313057070351516.a n : ℤ) = A121539 (n + 1)

end A121539

/-! ## A121539.P7130018745468685174

`lt[0, (-1)^val(n+1, 2)]`
-/

namespace A121539.P7130018745468685174
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ SequenceMachineLib.valuation (n + 1) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A121539.P7130018745468685174

namespace A121539

/-- `lt[0, (-1)^val(n+1, 2)]` -/
def P7130018745468685174.Spec : Prop :=
  ∀ n, (P7130018745468685174.a n : ℤ) = A121539 (n + 1)

end A121539

/-! ## A121539.P4694240181656852952

`eq[1, (-1)^val(n+1, 2)]`
-/

namespace A121539.P4694240181656852952
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ SequenceMachineLib.valuation (n + 1) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A121539.P4694240181656852952

namespace A121539

/-- `eq[1, (-1)^val(n+1, 2)]` -/
def P4694240181656852952.Spec : Prop :=
  ∀ n, (P4694240181656852952.a n : ℤ) = A121539 (n + 1)

end A121539

/-! ## A121539.P7324080359669749604

`comp[(n+1)*xor(n, n+1)+n]`
-/

namespace A121539.P7324080359669749604
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * Nat.xor n (n + 1) + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A121539.P7324080359669749604

namespace A121539

/-- `comp[(n+1)*xor(n, n+1)+n]` -/
def P7324080359669749604.Spec : Prop :=
  ∀ n, (P7324080359669749604.a n : ℤ) = A121539 (n + 1)

end A121539

/-! ## A121539.P5314651391262462860

`comp[A079523(n+1)]`
-/

namespace A121539.P5314651391262462860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079523 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A121539.P5314651391262462860

namespace A121539

/-- `comp[A079523(n+1)]` -/
def P5314651391262462860.Spec : Prop :=
  ∀ n, (P5314651391262462860.a n : ℤ) = A121539 (n + 1)

end A121539

/-! ## A121539.P5275716847287165957

`A162648(n+1)/2`
-/

namespace A121539.P5275716847287165957
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A162648 (n + 1) : ℚ) / 2

end

end A121539.P5275716847287165957

namespace A121539

/-- `A162648(n+1)/2` -/
def P5275716847287165957.Spec : Prop :=
  ∀ n, P5275716847287165957.a n = (A121539 (n + 1) : ℚ)

end A121539

/-! ## A121539.P4447125672091035307

`eq[1, A035263(n+1)]`
-/

namespace A121539.P4447125672091035307
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035263 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A121539.P4447125672091035307

namespace A121539

/-- `eq[1, A035263(n+1)]` -/
def P4447125672091035307.Spec : Prop :=
  ∀ n, (P4447125672091035307.a n : ℤ) = A121539 (n + 1)

end A121539

/-! ## A121539.P8958249383435964404

`eq[1, A089608(n+1)]`
-/

namespace A121539.P8958249383435964404
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089608 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A121539.P8958249383435964404

namespace A121539

/-- `eq[1, A089608(n+1)]` -/
def P8958249383435964404.Spec : Prop :=
  ∀ n, (P8958249383435964404.a n : ℤ) = A121539 (n + 1)

end A121539

/-! ## A121539.P3935905736972783518

`∑[A026465(n+1)]-1`
-/

namespace A121539.P3935905736972783518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026465 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A121539.P3935905736972783518

namespace A121539

/-- `∑[A026465(n+1)]-1` -/
def P3935905736972783518.Spec : Prop :=
  ∀ n, P3935905736972783518.a n = A121539 (n + 1)

end A121539

/-! ## A121539.P13576133915375210670

`record[A302792(n+1)-1]`
-/

namespace A121539.P13576133915375210670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302792 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A121539.P13576133915375210670

namespace A121539

/-- `record[A302792(n+1)-1]` -/
def P13576133915375210670.Spec : Prop :=
  ∀ n, P13576133915375210670.a n = A121539 (n + 1)

end A121539

/-! ## A121539.P15390189822226412465

`comp[A171947(n+1)-2]`
-/

namespace A121539.P15390189822226412465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171947 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A121539.P15390189822226412465

namespace A121539

/-- `comp[A171947(n+1)-2]` -/
def P15390189822226412465.Spec : Prop :=
  ∀ n, (P15390189822226412465.a n : ℤ) = A121539 (n + 1)

end A121539

/-!
# A121540: Increasing sequence: "if n appears a*n+b does not", case a(1)=3, a=2, b=1.

The programs for A121540, there is no canonical definition to state claims against.
-/

/-! ## A121540.P16400954167093414864

`lt[0, (-a(floor(n/2)))^n]` with `a(0)=0, a(1)=-1, a(2)=-1`
-/

namespace A121540.P16400954167093414864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, -1, -1] fun n f2 =>
  (-f2 ⌊(n : ℚ) / 2⌋.toNat) ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A121540.P16400954167093414864

/-! ## A121540.P12649060792876478431

`eq[0, n%(2-a(floor(n/2)))]` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A121540.P12649060792876478431
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n f2 =>
  Int.tmod (n : ℤ) (2 - f2 ⌊(n : ℚ) / 2⌋.toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A121540.P12649060792876478431

/-! ## A121540.P14529384092120881083

`eq[0, and(n, 1-a(floor(n/2)))]` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A121540.P14529384092120881083
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n f2 =>
  Int.land (n : ℤ) (1 - f2 ⌊(n : ℚ) / 2⌋.toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A121540.P14529384092120881083

/-! ## A121540.P3533260116565426915

`lt[and(n, 1-a(floor(n/2))), 1]` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A121540.P3533260116565426915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n f1 =>
  Int.land (n : ℤ) (1 - f1 ⌊(n : ℚ) / 2⌋.toNat)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A121540.P3533260116565426915

/-! ## A121540.P16116139119748008067

`eq[0, (n*a(a(floor(n/2))))%2]` with `a(0)=1, a(1)=2, a(2)=2`
-/

namespace A121540.P16116139119748008067
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 2] fun n f2 =>
  n * f2 (f2 ⌊(n : ℚ) / 2⌋.toNat) % 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A121540.P16116139119748008067

/-! ## A121540.P16769620856009633331

`lt[(n*(a(floor(n/2))+n))%2, 1]` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A121540.P16769620856009633331
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1] fun n f1 =>
  n * (f1 ⌊(n : ℚ) / 2⌋.toNat + n) % 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A121540.P16769620856009633331

/-! ## A121540.P14271880696165915994

`lt[and(n, a(floor(n/2))+n)%2, 1]` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A121540.P14271880696165915994
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1] fun n f1 =>
  Nat.land n (f1 ⌊(n : ℚ) / 2⌋.toNat + n) % 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A121540.P14271880696165915994

/-! ## A121540.P18307811236504168588

`lt[1, ((a(ceil(n/2)-1)+a(n-1))%4)!]` with `a(0)=0`
-/

namespace A121540.P18307811236504168588
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f2 =>
  Nat.factorial ((f2 (⌈(n : ℚ) / 2⌉ - 1).toNat + f2 (n - 1)) % 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A121540.P18307811236504168588

/-!
# A121541: Increasing sequence: "if n appears a*n+b does not", case a(1)=4, a=2, b=1.

The programs for A121541, there is no canonical definition to state claims against.
-/

/-! ## A121541.P13586465202319878022

`eq[0, n%(2-a(floor(n/2)))]` with `a(0)=1, a(1)=4, a(2)=1`
-/

namespace A121541.P13586465202319878022
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 1] fun n f2 =>
  Int.tmod (n : ℤ) (2 - f2 ⌊(n : ℚ) / 2⌋.toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A121541.P13586465202319878022

/-! ## A121541.P13052213056510484023

`eq[0, and(n, 1-a(floor(n/2)))]` with `a(0)=1, a(1)=4, a(2)=1`
-/

namespace A121541.P13052213056510484023
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 1] fun n f2 =>
  Int.land (n : ℤ) (1 - f2 ⌊(n : ℚ) / 2⌋.toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A121541.P13052213056510484023

/-! ## A121541.P6163922041498402673

`lt[and(n, 1-a(floor(n/2))), 1]` with `a(0)=1, a(1)=4, a(2)=1`
-/

namespace A121541.P6163922041498402673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 1] fun n f1 =>
  Int.land (n : ℤ) (1 - f1 ⌊(n : ℚ) / 2⌋.toNat)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A121541.P6163922041498402673

/-! ## A121541.P11876844524013283517

`lt[0, (-a(floor(n/2)))^n]` with `a(0)=0, a(1)=0, a(2)=-1, a(3)=-1`
-/

namespace A121541.P11876844524013283517
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 0, -1, -1] fun n f2 =>
  (-f2 ⌊(n : ℚ) / 2⌋.toNat) ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A121541.P11876844524013283517

/-! ## A121541.P5258505556229687554

`eq[0, (n*a(a(floor(n/2))))%2]` with `a(0)=1, a(1)=2, a(2)=1`
-/

namespace A121541.P5258505556229687554
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 1] fun n f2 =>
  n * f2 (f2 ⌊(n : ℚ) / 2⌋.toNat) % 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A121541.P5258505556229687554

/-! ## A121541.P2140648414150348757

`lt[(n*(a(floor(n/2))+n))%2, 1]` with `a(0)=1, a(1)=2, a(2)=1`
-/

namespace A121541.P2140648414150348757
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 1] fun n f1 =>
  n * (f1 ⌊(n : ℚ) / 2⌋.toNat + n) % 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A121541.P2140648414150348757

/-! ## A121541.P6780472802046672941

`lt[and(n, a(floor(n/2))+n)%2, 1]` with `a(0)=1, a(1)=2, a(2)=1`
-/

namespace A121541.P6780472802046672941
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 1] fun n f1 =>
  Nat.land n (f1 ⌊(n : ℚ) / 2⌋.toNat + n) % 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A121541.P6780472802046672941

/-! ## A121541.P3043728606601208639

`lt[1, ((a(floor((n-1)/2))+a(n-1))%4)!]` with `a(0)=0, a(1)=1, a(2)=0`
-/

namespace A121541.P3043728606601208639
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 0] fun n f2 =>
  Nat.factorial ((f2 ⌊((n : ℤ) - 1 : ℚ) / 2⌋.toNat + f2 (n - 1)) % 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A121541.P3043728606601208639

/-! ## A121541.P10505014071491438108

`eq[1, C(2, (3-(-1)^n)*a(floor(n/2))+1-(-1)^n)]` with `a(0)=0, a(1)=2`
-/

namespace A121541.P10505014071491438108
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 2] fun n f2 =>
  Nat.choose 2 ((3 - (-1) ^ n) * (f2 ⌊(n : ℚ) / 2⌋.toNat : ℤ) + (1 - (-1) ^ n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A121541.P10505014071491438108

/-! ## A121541.P8902599932175258582

`eq[2, A020639(n*(a(floor(n/2))+1))]` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A121541.P8902599932175258582
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1] fun n f2 =>
  A020639 ((n : ℤ) * (f2 ⌊(n : ℚ) / 2⌋.toNat + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A121541.P8902599932175258582

/-!
# A121542: Increasing sequence: "if n appears a*n+b does not", case a(1)=5, a=2, b=1.

The programs for A121542, there is no canonical definition to state claims against.
-/

/-! ## A121542.P17128338667916127205

`eq[0, n%(2-a(floor(n/2)))]` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=1`
-/

namespace A121542.P17128338667916127205
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 1, 1] fun n f2 =>
  Int.tmod (n : ℤ) (2 - f2 ⌊(n : ℚ) / 2⌋.toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A121542.P17128338667916127205

/-! ## A121542.P13463780083645385852

`eq[0, and(n, 1-a(floor(n/2)))]` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=1`
-/

namespace A121542.P13463780083645385852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 1, 1] fun n f2 =>
  Int.land (n : ℤ) (1 - f2 ⌊(n : ℚ) / 2⌋.toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A121542.P13463780083645385852

/-! ## A121542.P13485811034666992924

`lt[and(n, 1-a(floor(n/2))), 1]` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=1`
-/

namespace A121542.P13485811034666992924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 1, 1] fun n f1 =>
  Int.land (n : ℤ) (1 - f1 ⌊(n : ℚ) / 2⌋.toNat)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A121542.P13485811034666992924

/-! ## A121542.P7561977438496522650

`lt[(n*(a(floor(n/2))+n))%2, 1]` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=1`
-/

namespace A121542.P7561977438496522650
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1, 1, 1] fun n f1 =>
  n * (f1 ⌊(n : ℚ) / 2⌋.toNat + n) % 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A121542.P7561977438496522650

/-! ## A121542.P8328952752473165740

`lt[and(n, a(floor(n/2))+n)%2, 1]` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=1`
-/

namespace A121542.P8328952752473165740
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1, 1, 1] fun n f1 =>
  Nat.land n (f1 ⌊(n : ℚ) / 2⌋.toNat + n) % 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A121542.P8328952752473165740

/-! ## A121542.P5935786778899532069

`lt[1, ((a(floor((n-1)/2))+a(n-1))%4)!]` with `a(0)=0, a(1)=0`
-/

namespace A121542.P5935786778899532069
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 0] fun n f2 =>
  Nat.factorial ((f2 ⌊((n : ℤ) - 1 : ℚ) / 2⌋.toNat + f2 (n - 1)) % 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A121542.P5935786778899532069

/-! ## A121542.P18270922485356641140

`eq[0, A077267(a(floor(n/2))+(n+1)%2)]` with `a(0)=1, a(1)=6, a(2)=2`
-/

namespace A121542.P18270922485356641140
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 6, 2] fun n f2 =>
  A077267 (f2 ⌊(n : ℚ) / 2⌋.toNat + (((n + 1) % 2 : ℕ) : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A121542.P18270922485356641140

/-! ## A121542.P1980837736228761557

`lt[1, A014675(5*(2*a(floor(n/2))-(-1)^n+1))]` with `a(0)=1, a(1)=1, a(2)=0, a(3)=1, a(4)=0`
-/

namespace A121542.P1980837736228761557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 0, 1, 0] fun n f2 =>
  A014675 (5 * (2 * f2 ⌊(n : ℚ) / 2⌋.toNat - (-1) ^ n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A121542.P1980837736228761557

/-! ## A121542.P6099886604100413368

`eq[1, A093101(a(A057979(n))+8)]` with `a(0)=4, a(1)=8, a(2)=0, a(3)=0, a(4)=0`
-/

namespace A121542.P6099886604100413368
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4, 8, 0, 0, 0] fun n f2 =>
  A093101 (f2 (A057979 n).toNat + 8).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A121542.P6099886604100413368

/-!
# A121543: "If k appears then the k-th prime doesn't", with a(1)=1.

The programs for A121543, the canonical program `A121543.P10944832784654695596` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121543 has offset 1).

The definition of A121543 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8936 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A121543.P14661035300758200482

`comp[A333242(n+1)-1]+1`
-/

namespace A121543.P14661035300758200482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333242 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A121543.P14661035300758200482

namespace A121543

/-- `comp[A333242(n+1)-1]+1` -/
def P14661035300758200482.Spec : Prop :=
  ∀ n, (P14661035300758200482.a n : ℤ) = A121543 (n + 1)

end A121543

/-! ## A121543.P7189953981679925169

`comp[A000010(A333242(n+1))]+1`
-/

namespace A121543.P7189953981679925169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A333242 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A121543.P7189953981679925169

namespace A121543

/-- `comp[A000010(A333242(n+1))]+1` -/
def P7189953981679925169.Spec : Prop :=
  ∀ n, (P7189953981679925169.a n : ℤ) = A121543 (n + 1)

end A121543

/-! ## A121543.P15927753673763736613

`∪[A018252(n+1), A262275(n+1)]`
-/

namespace A121543.P15927753673763736613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262275 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A121543.P15927753673763736613

namespace A121543

/-- `∪[A018252(n+1), A262275(n+1)]` -/
def P15927753673763736613.Spec : Prop :=
  ∀ n, (P15927753673763736613.a n : ℤ) = A121543 (n + 1)

end A121543

/-! ## A121543.P10944832784654695596

`eq[2, 3-a(A049084(n))]` with `a(0)=1`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A121543

/-- `eq[2, 3-a(A049084(n))]` -/
def P10944832784654695596.Spec : Prop :=
  ∀ n, (P10944832784654695596.a n : ℤ) = A121543 (n + 1)

theorem P10944832784654695596.correct : P10944832784654695596.Spec := by
  intro n
  simp only [A121543, Nat.add_sub_cancel]

end A121543

/-! ## A121543.P12014117325314657443

`eq[0, A078442(n+1)%2]+1`
-/

namespace A121543.P12014117325314657443
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A078442 (n + 1)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A121543.P12014117325314657443

namespace A121543

/-- `eq[0, A078442(n+1)%2]+1` -/
def P12014117325314657443.Spec : Prop :=
  ∀ n, (P12014117325314657443.a n : ℤ) = A121543 (n + 1)

end A121543

/-! ## A121543.P3666428676615827232

`eq[1, A049076(n+1)%2]+1`
-/

namespace A121543.P3666428676615827232
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A049076 (n + 1)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A121543.P3666428676615827232

namespace A121543

/-- `eq[1, A049076(n+1)%2]+1` -/
def P3666428676615827232.Spec : Prop :=
  ∀ n, (P3666428676615827232.a n : ℤ) = A121543 (n + 1)

end A121543

/-! ## A121543.P11160775974710967091

`A000720(A333242(n+1))`
-/

namespace A121543.P11160775974710967091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A333242 (n + 1)).toNat

end

end A121543.P11160775974710967091

namespace A121543

/-- `A000720(A333242(n+1))` -/
def P11160775974710967091.Spec : Prop :=
  ∀ n, P11160775974710967091.a n = A121543 (n + 1)

end A121543

/-! ## A121543.P17888423815138896303

`A349191(A333242(n+1)-1)`
-/

namespace A121543.P17888423815138896303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349191 (A333242 (n + 1) - 1).toNat

end

end A121543.P17888423815138896303

namespace A121543

/-- `A349191(A333242(n+1)-1)` -/
def P17888423815138896303.Spec : Prop :=
  ∀ n, P17888423815138896303.a n = A121543 (n + 1)

end A121543

/-! ## A121543.P8828287719535199572

`A349191(xor(1, A333242(n+1)))`
-/

namespace A121543.P8828287719535199572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349191 (Int.xor 1 (A333242 (n + 1))).toNat

end

end A121543.P8828287719535199572

namespace A121543

/-- `A349191(xor(1, A333242(n+1)))` -/
def P8828287719535199572.Spec : Prop :=
  ∀ n, P8828287719535199572.a n = A121543 (n + 1)

end A121543

/-! ## A121543.P2374023183679048187

`A000720(A000720(A262275(n+1)))`
-/

namespace A121543.P2374023183679048187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A000720 (A262275 (n + 1)).toNat).toNat

end

end A121543.P2374023183679048187

namespace A121543

/-- `A000720(A000720(A262275(n+1)))` -/
def P2374023183679048187.Spec : Prop :=
  ∀ n, P2374023183679048187.a n = A121543 (n + 1)

end A121543

/-! ## A121543.P13030358710671312017

`A132090(A262275(n+1))`
-/

namespace A121543.P13030358710671312017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132090 (A262275 (n + 1)).toNat

end

end A121543.P13030358710671312017

namespace A121543

/-- `A132090(A262275(n+1))` -/
def P13030358710671312017.Spec : Prop :=
  ∀ n, P13030358710671312017.a n = A121543 (n + 1)

end A121543

/-! ## A121543.P5994586540508824874

`A064557(A358274(n+1))`
-/

namespace A121543.P5994586540508824874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064557 (A358274 (n + 1)).toNat

end

end A121543.P5994586540508824874

namespace A121543

/-- `A064557(A358274(n+1))` -/
def P5994586540508824874.Spec : Prop :=
  ∀ n, P5994586540508824874.a n = A121543 (n + 1)

end A121543

/-! ## A121543.P10258733324969285667

`A000720(A000720(A000720(A333243(n+1))))`
-/

namespace A121543.P10258733324969285667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A000720 (A000720 (A333243 (n + 1)).toNat).toNat).toNat

end

end A121543.P10258733324969285667

namespace A121543

/-- `A000720(A000720(A000720(A333243(n+1))))` -/
def P10258733324969285667.Spec : Prop :=
  ∀ n, P10258733324969285667.a n = A121543 (n + 1)

end A121543

/-!
# A121544: Sum of all proper base 4 numbers with n digits (those not beginning with 0).

The programs for A121544, the canonical program `A121544.P15415569023401380187` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121544 has offset 1).

The definition of A121544 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A121544.P4344844739357169405

`ogf((6-6x)/(1-20x+64x^2))`
-/

namespace A121544.P4344844739357169405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [6, -6] [1, -20, 64] n

end

end A121544.P4344844739357169405

namespace A121544

/-- `ogf((6-6x)/(1-20x+64x^2))` -/
def P4344844739357169405.Spec : Prop :=
  ∀ n, P4344844739357169405.a n = A121544 (n + 1)

end A121544

/-! ## A121544.P15415569023401380187

`3*4^n*(5*4^n-1)/2`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A121544

/-- `3*4^n*(5*4^n-1)/2` -/
def P15415569023401380187.Spec : Prop :=
  ∀ n, P15415569023401380187.a n = (A121544 (n + 1) : ℚ)

end A121544

/-! ## A121544.P5910313314978631074

`3*C(5*4^n, 2)/5`
-/

namespace A121544.P5910313314978631074
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * Nat.choose (5 * 4 ^ n) 2 : ℚ) / 5

end

end A121544.P5910313314978631074

namespace A121544

/-- `3*C(5*4^n, 2)/5` -/
def P5910313314978631074.Spec : Prop :=
  ∀ n, P5910313314978631074.a n = (A121544 (n + 1) : ℚ)

end A121544

/-! ## A121544.P10204483689157078005

`Δ[A026337(n)]`
-/

namespace A121544.P10204483689157078005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026337 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A121544.P10204483689157078005

namespace A121544

/-- `Δ[A026337(n)]` -/
def P10204483689157078005.Spec : Prop :=
  ∀ n, P10204483689157078005.a n = A121544 (n + 1)

end A121544

/-! ## A121544.P14998021409097911365

`6*A166965(n)`
-/

namespace A121544.P14998021409097911365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A166965 n

end

end A121544.P14998021409097911365

namespace A121544

/-- `6*A166965(n)` -/
def P14998021409097911365.Spec : Prop :=
  ∀ n, P14998021409097911365.a n = A121544 (n + 1)

end A121544

/-! ## A121544.P13309575986819318045

`A171475(Δ[n²])`
-/

namespace A121544.P13309575986819318045
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171475 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A121544.P13309575986819318045

namespace A121544

/-- `A171475(Δ[n²])` -/
def P13309575986819318045.Spec : Prop :=
  ∀ n, P13309575986819318045.a n = A121544 (n + 1)

end A121544

/-! ## A121544.P2330312374952359873

`Δ[A003674(2*n)]`
-/

namespace A121544.P2330312374952359873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003674 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A121544.P2330312374952359873

namespace A121544

/-- `Δ[A003674(2*n)]` -/
def P2330312374952359873.Spec : Prop :=
  ∀ n, P2330312374952359873.a n = A121544 (n + 1)

end A121544

/-! ## A121544.P10048611839661918107

`Δ[A006516(2*n)]`
-/

namespace A121544.P10048611839661918107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006516 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A121544.P10048611839661918107

namespace A121544

/-- `Δ[A006516(2*n)]` -/
def P10048611839661918107.Spec : Prop :=
  ∀ n, P10048611839661918107.a n = A121544 (n + 1)

end A121544

/-! ## A121544.P7967334384347871451

`Δ[A134169(2*n)]`
-/

namespace A121544.P7967334384347871451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134169 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A121544.P7967334384347871451

namespace A121544

/-- `Δ[A134169(2*n)]` -/
def P7967334384347871451.Spec : Prop :=
  ∀ n, P7967334384347871451.a n = A121544 (n + 1)

end A121544

/-! ## A121544.P12525239318377371007

`Δ[A007179(4*n)]`
-/

namespace A121544.P12525239318377371007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007179 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A121544.P12525239318377371007

namespace A121544

/-- `Δ[A007179(4*n)]` -/
def P12525239318377371007.Spec : Prop :=
  ∀ n, P12525239318377371007.a n = A121544 (n + 1)

end A121544

/-!
# A121545: Coefficients of Taylor series expansion of the operad Prim L.

The programs for A121545, the canonical program `A121545.P6418367156440818152` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121545 has offset 0).

The definition of A121545 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 122 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A121545.P6418367156440818152

`(3*A005809(n))%A183160(n)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A121545

/-- `(3*A005809(n))%A183160(n)` -/
def P6418367156440818152.Spec : Prop :=
  ∀ n, P6418367156440818152.a n = A121545 n

theorem P6418367156440818152.correct : P6418367156440818152.Spec := by
  intro n
  simp only [A121545]

end A121545

/-! ## A121545.P4106805160279886280

`A008615(A279572(n+1))`
-/

namespace A121545.P4106805160279886280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A279572 (n + 1)).toNat

end

end A121545.P4106805160279886280

namespace A121545

/-- `A008615(A279572(n+1))` -/
def P4106805160279886280.Spec : Prop :=
  ∀ n, P4106805160279886280.a n = A121545 n

end A121545

/-! ## A121545.P12247782660156558121

`A008676(Δ[Δ[A107591(n)]])`
-/

namespace A121545.P12247782660156558121
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107591 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008676 (f1 (n + 1) - f1 n).toNat

end

end A121545.P12247782660156558121

namespace A121545

/-- `A008676(Δ[Δ[A107591(n)]])` -/
def P12247782660156558121.Spec : Prop :=
  ∀ n, P12247782660156558121.a n = A121545 n

end A121545

/-!
# A121546: a(n) = dimension of the space in which the sphere of radius n is of maximum volume.

The programs for A121546, there is no canonical definition to state claims against.
-/

/-! ## A121546.P1583775621389433555

`round(2*π*(n+1)²)-1`
-/

namespace A121546.P1583775621389433555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (2 * (Real.pi * ((n + 1) ^ 2 : ℝ))) - 1

end

end A121546.P1583775621389433555

/-! ## A121546.P37206454509315360

`floor(sinh(log(floor(π*(2*(n+1))²))))`
-/

namespace A121546.P37206454509315360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sinh (Real.log (⌊Real.pi * ((2 * (n + 1)) ^ 2 : ℝ)⌋ : ℝ))⌋

end

end A121546.P37206454509315360

/-! ## A121546.P1782931026975056497

`round(atan((2*(n+1))²)*(2*(n+1))²)`
-/

namespace A121546.P1782931026975056497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.arctan ((2 * (n + 1)) ^ 2 : ℝ) * ((2 * (n + 1)) ^ 2 : ℝ))

end

end A121546.P1782931026975056497

/-! ## A121546.P9080845770644855536

`A246300((n+1)²)`
-/

namespace A121546.P9080845770644855536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246300 ((n + 1) ^ 2)

end

end A121546.P9080845770644855536

/-! ## A121546.P9518541844562404615

`A246405(3*(n+1)²)`
-/

namespace A121546.P9518541844562404615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246405 (3 * (n + 1) ^ 2)

end

end A121546.P9518541844562404615

/-!
# A121547: Fourth slice along the 1-2-plane in the cube a(m,n,o) = a(m-1,n,o) + a(m,n-1,o) + a(m,n,o-1) for which the first slice is Pascal's triangle (slice read by antidiagonals).

The programs for A121547, the canonical program `A121547.P13517221816394167788` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121547 has offset 0).

The definition of A121547 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A121547.P7220365710250318160

`A347056(n)-A094305(n)`
-/

namespace A121547.P7220365710250318160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347056 n - A094305 n

end

end A121547.P7220365710250318160

namespace A121547

/-- `A347056(n)-A094305(n)` -/
def P7220365710250318160.Spec : Prop :=
  ∀ n, P7220365710250318160.a n = A121547 n

end A121547

/-! ## A121547.P14884337563801060482

`A002262(n)/3*A094305(n)`
-/

namespace A121547.P14884337563801060482
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002262 n : ℚ) / 3 * (A094305 n : ℚ)

end

end A121547.P14884337563801060482

namespace A121547

/-- `A002262(n)/3*A094305(n)` -/
def P14884337563801060482.Spec : Prop :=
  ∀ n, P14884337563801060482.a n = (A121547 n : ℚ)

end A121547

/-! ## A121547.P13517221816394167788

`A000292(A003056(n))*A097805(n)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A121547

/-- `A000292(A003056(n))*A097805(n)` -/
def P13517221816394167788.Spec : Prop :=
  ∀ n, P13517221816394167788.a n = A121547 n

theorem P13517221816394167788.correct : P13517221816394167788.Spec := by
  intro n
  simp only [A121547]

end A121547

/-! ## A121547.P5894497012306731471

`A000292(A002262(n))*A104712(n+2)`
-/

namespace A121547.P5894497012306731471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (A002262 n).toNat * A104712 (n + 2)

end

end A121547.P5894497012306731471

namespace A121547

/-- `A000292(A002262(n))*A104712(n+2)` -/
def P5894497012306731471.Spec : Prop :=
  ∀ n, P5894497012306731471.a n = A121547 n

end A121547

/-! ## A121547.P2416075843916445432

`A347056(n)-abs((A004736(n+1)+n)*A130595(n))`
-/

namespace A121547.P2416075843916445432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347056 n - |(A004736 (n + 1) + (n : ℤ)) * A130595 n|

end

end A121547.P2416075843916445432

namespace A121547

/-- `A347056(n)-abs((A004736(n+1)+n)*A130595(n))` -/
def P2416075843916445432.Spec : Prop :=
  ∀ n, P2416075843916445432.a n = A121547 n

end A121547

/-! ## A121547.P16867837582119247150

`A347056(n)-(A004736(n+1)+n)*Δ[A102363(n)]`
-/

namespace A121547.P16867837582119247150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347056 n - (A004736 (n + 1) + (n : ℤ)) * (f1 (n + 1) - f1 n)

end

end A121547.P16867837582119247150

namespace A121547

/-- `A347056(n)-(A004736(n+1)+n)*Δ[A102363(n)]` -/
def P16867837582119247150.Spec : Prop :=
  ∀ n, P16867837582119247150.a n = A121547 n

end A121547

/-! ## A121547.P8743716721748056500

`A097805(n)*A332023(A057944(n))`
-/

namespace A121547.P8743716721748056500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 n * A332023 (A057944 n).toNat

end

end A121547.P8743716721748056500

namespace A121547

/-- `A097805(n)*A332023(A057944(n))` -/
def P8743716721748056500.Spec : Prop :=
  ∀ n, P8743716721748056500.a n = A121547 n

end A121547

/-!
# A121548: Triangle read by rows: T(n,k) is the number of compositions of n into k Fibonacci numbers (1 <= k <= n; only one 1 is considered as a Fibonacci number).

The programs for A121548, there is no canonical definition to state claims against.
-/

/-! ## A121548.P9849535209240291412

`A180179(n+1)-A016389(A119502(n))`
-/

namespace A121548.P9849535209240291412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180179 (n + 1) - A016389 (A119502 n).toNat

end

end A121548.P9849535209240291412

/-! ## A121548.P15685227506192117502

`A180179(n+1)-A185284(A130321(n))`
-/

namespace A121548.P15685227506192117502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180179 (n + 1) - A185284 (A130321 n).toNat

end

end A121548.P15685227506192117502

/-! ## A121548.P14774718610245346418

`A180179(n+1)-A293162(A293157(n+1))`
-/

namespace A121548.P14774718610245346418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180179 (n + 1) - A293162 (A293157 (n + 1)).toNat

end

end A121548.P14774718610245346418

/-! ## A121548.P3741017766265940129

`A180179(n+1)-A184944(A152414(n+1))`
-/

namespace A121548.P3741017766265940129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180179 (n + 1) - A184944 (A152414 (n + 1)).toNat

end

end A121548.P3741017766265940129

/-! ## A121548.P1386067286068451800

`A180179(n+1)%A099375(A036966(3*(n+1)))`
-/

namespace A121548.P1386067286068451800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A180179 (n + 1)) (A099375 (A036966 (3 * (n + 1))).toNat)

end

end A121548.P1386067286068451800

/-!
# A121549: Number of ordered ways of writing n as a sum of two Fibonacci numbers (only one 1 is considered as a Fibonacci number).

The programs for A121549, there is no canonical definition to state claims against.
-/

/-! ## A121549.P14451059851387592110

`A359514(n+1)-A010056(n+1)`
-/

namespace A121549.P14451059851387592110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359514 (n + 1) - A010056 (n + 1)

end

end A121549.P14451059851387592110

/-! ## A121549.P8676129412148319933

`A359514(n+1)-char[A000071(n+1)]`
-/

namespace A121549.P8676129412148319933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359514 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A121549.P8676129412148319933

/-! ## A121549.P13744331689139460034

`A121548(A133263(n))%A133263(n)`
-/

namespace A121549.P13744331689139460034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A121548 (A133263 n).toNat) (A133263 n)

end

end A121549.P13744331689139460034

/-! ## A121549.P16333494055646293325

`A121548(A278512(2*(n+1)))%A005902(n)`
-/

namespace A121549.P16333494055646293325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A121548 (A278512 (2 * (n + 1))).toNat) (A005902 n)

end

end A121549.P16333494055646293325

/-! ## A121549.P5432738678406929479

`A121548(A133263(n))-A010054(A133263(n)-1)`
-/

namespace A121549.P5432738678406929479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121548 (A133263 n).toNat - A010054 (A133263 n - 1).toNat

end

end A121549.P5432738678406929479

/-! ## A121549.P3841302868578134091

`A359515(n+1)-(A121550(n+1)+A010056(n+1))`
-/

namespace A121549.P3841302868578134091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359515 (n + 1) - (A121550 (n + 1) + A010056 (n + 1))

end

end A121549.P3841302868578134091

/-! ## A121549.P6835795740979693400

`A121548(A133263(n))-A010054(2*n²)`
-/

namespace A121549.P6835795740979693400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121548 (A133263 n).toNat - A010054 (2 * n ^ 2)

end

end A121549.P6835795740979693400

/-!
# A121550: Number of ordered ways of writing n as a sum of three Fibonacci numbers (only one 1 is considered as a Fibonacci number).

The programs for A121550, there is no canonical definition to state claims against.
-/

/-! ## A121550.P9449140238669835576

`A359515(n+1)-A359514(n+1)`
-/

namespace A121550.P9449140238669835576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359515 (n + 1) - A359514 (n + 1)

end

end A121550.P9449140238669835576

/-!
# A121551: Number of parts in all the compositions of n into Fibonacci numbers (i.e., in all ordered sequences of Fibonacci numbers having sum n; only one 1 is considered as a Fibonacci number).

The programs for A121551, there is no canonical definition to state claims against.
-/

/-! ## A121551.P13856720872555012768

`∑[∑[A003056(A150529(n))]]`
-/

namespace A121551.P13856720872555012768
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A150529 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121551.P13856720872555012768

/-! ## A121551.P6841839562682641873

`∑[∑[A003056(A150551(n))]]`
-/

namespace A121551.P6841839562682641873
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A150551 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121551.P6841839562682641873

/-! ## A121551.P16974005996821702170

`∑[∑[A003056(A150559(n))]]`
-/

namespace A121551.P16974005996821702170
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A150559 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121551.P16974005996821702170

/-! ## A121551.P8606066447599046689

`A116712(n+1)+A054404(A293883(n+2))`
-/

namespace A121551.P8606066447599046689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116712 (n + 1) + A054404 (A293883 (n + 2)).toNat

end

end A121551.P8606066447599046689

/-!
# A121553: Total area of all deco polyominoes of height n. A deco polyomino is a directed column-convex polyomino in which the height, measured along the diagonal, is attained only in the last column.

The programs for A121553, the canonical program `A121553.P15619490651097740534` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121553 has offset 1).

The definition of A121553 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A121553.P15619490651097740534

`(n+1)*a(n-1)+n!*(1+(n+1)*n/2)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A121553

/-- `(n+1)*a(n-1)+n!*(1+(n+1)*n/2)` -/
def P15619490651097740534.Spec : Prop :=
  ∀ n, P15619490651097740534.a n = (A121553 (n + 1) : ℚ)

end A121553

/-! ## A121553.P1518295725966855261

`n!*∑[n]+n!+(n+1)*a(n-1)` with `a(0)=1`
-/

namespace A121553.P1518295725966855261
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.factorial n * (∑ j ∈ Finset.range (n + 1), f1 j) + (Nat.factorial n + (n + 1) * a (n - 1))

end

end A121553.P1518295725966855261

namespace A121553

/-- `n!*∑[n]+n!+(n+1)*a(n-1)` -/
def P1518295725966855261.Spec : Prop :=
  ∀ n, (P1518295725966855261.a n : ℤ) = A121553 (n + 1)

end A121553

/-! ## A121553.P5780466276696632562

`(n+1)!*∑[A152947(n+2)/(n+1)]`
-/

namespace A121553.P5780466276696632562
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A152947 (n + 2) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℚ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A121553.P5780466276696632562

namespace A121553

/-- `(n+1)!*∑[A152947(n+2)/(n+1)]` -/
def P5780466276696632562.Spec : Prop :=
  ∀ n, P5780466276696632562.a n = (A121553 (n + 1) : ℚ)

end A121553

/-! ## A121553.P2978168629029581561

`A001809(n+1)+A000254(n+1)`
-/

namespace A121553.P2978168629029581561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001809 (n + 1) + A000254 (n + 1)

end

end A121553.P2978168629029581561

namespace A121553

/-- `A001809(n+1)+A000254(n+1)` -/
def P2978168629029581561.Spec : Prop :=
  ∀ n, P2978168629029581561.a n = A121553 (n + 1)

end A121553

/-! ## A121553.P17170841078462916622

`A138772(n+2)-A067318(n+1)`
-/

namespace A121553.P17170841078462916622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138772 (n + 2) - A067318 (n + 1)

end

end A121553.P17170841078462916622

namespace A121553

/-- `A138772(n+2)-A067318(n+1)` -/
def P17170841078462916622.Spec : Prop :=
  ∀ n, P17170841078462916622.a n = A121553 (n + 1)

end A121553

/-! ## A121553.P11618179443890044038

`A000254(n+1)+A000217(n)*A001710(n+1)`
-/

namespace A121553.P11618179443890044038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000254 (n + 1) + A000217 n * A001710 (n + 1)

end

end A121553.P11618179443890044038

namespace A121553

/-- `A000254(n+1)+A000217(n)*A001710(n+1)` -/
def P11618179443890044038.Spec : Prop :=
  ∀ n, P11618179443890044038.a n = A121553 (n + 1)

end A121553

/-!
# A121554: Triangle read by rows: T(n,k) is the number of deco polyominoes of height n and having k 1-cell columns (0<=k<=n). A deco polyomino is a directed column-convex polyomino in which the height, measured along the diagonal, is attained only in the last column.

The programs for A121554, there is no canonical definition to state claims against.
-/

/-! ## A121554.P15349027468075355628

`T(n-2,k)+T(n-1,k-1)+(row(n)-1)*T(n-1,k)-T(n-2,k-1)` with `a(0)=1`
-/

namespace A121554.P15349027468075355628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triUp2 a n + SequenceMachineLib.triUpLeft a n + ((SequenceMachineLib.triRow n : ℤ) - 1) * SequenceMachineLib.triUp a n - SequenceMachineLib.triUp2Left a n

end

end A121554.P15349027468075355628

/-!
# A121555: Number of 1-cell columns in all deco polyominoes of height n.

The programs for A121555, the canonical program `A121555.P8435240036449715099` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121555 has offset 1).

The definition of A121555 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A121555.P8435240036449715099

`(n+1)*a(n-1)+(n-1)!*(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A121555

/-- `(n+1)*a(n-1)+(n-1)!*(n-1)` -/
def P8435240036449715099.Spec : Prop :=
  ∀ n, P8435240036449715099.a n = A121555 (n + 1)

theorem P8435240036449715099.correct : P8435240036449715099.Spec := by
  intro n
  simp only [A121555, Nat.add_sub_cancel]

end A121555

/-! ## A121555.P10974704534328336104

`A001705(n)+n!`
-/

namespace A121555.P10974704534328336104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001705 n + (Nat.factorial n : ℤ)

end

end A121555.P10974704534328336104

namespace A121555

/-- `A001705(n)+n!` -/
def P10974704534328336104.Spec : Prop :=
  ∀ n, P10974704534328336104.a n = A121555 (n + 1)

end A121555

/-! ## A121555.P14273523745448267830

`n!+abs(A081047(n+1))`
-/

namespace A121555.P14273523745448267830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) + |A081047 (n + 1)|

end

end A121555.P14273523745448267830

namespace A121555

/-- `n!+abs(A081047(n+1))` -/
def P14273523745448267830.Spec : Prop :=
  ∀ n, P14273523745448267830.a n = A121555 (n + 1)

end A121555

/-! ## A121555.P10665669162695555015

`Δ[-∑[A081047(n)]]+n!`
-/

namespace A121555.P10665669162695555015
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081047 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (Nat.factorial n : ℤ)

end

end A121555.P10665669162695555015

namespace A121555

/-- `Δ[-∑[A081047(n)]]+n!` -/
def P10665669162695555015.Spec : Prop :=
  ∀ n, P10665669162695555015.a n = A121555 (n + 1)

end A121555

/-! ## A121555.P2224895124592871570

`A001705(n)+A000142(n)`
-/

namespace A121555.P2224895124592871570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001705 n + A000142 n

end

end A121555.P2224895124592871570

namespace A121555

/-- `A001705(n)+A000142(n)` -/
def P2224895124592871570.Spec : Prop :=
  ∀ n, P2224895124592871570.a n = A121555 (n + 1)

end A121555

/-! ## A121555.P18044984650556274787

`A001705(n)+A033312(n)+1`
-/

namespace A121555.P18044984650556274787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001705 n + (A033312 n + 1)

end

end A121555.P18044984650556274787

namespace A121555

/-- `A001705(n)+A033312(n)+1` -/
def P18044984650556274787.Spec : Prop :=
  ∀ n, P18044984650556274787.a n = A121555 (n + 1)

end A121555

/-! ## A121555.P15654579656510141225

`A104150(n+1)+A001705(n)`
-/

namespace A121555.P15654579656510141225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104150 (n + 1) + A001705 n

end

end A121555.P15654579656510141225

namespace A121555

/-- `A104150(n+1)+A001705(n)` -/
def P15654579656510141225.Spec : Prop :=
  ∀ n, P15654579656510141225.a n = A121555 (n + 1)

end A121555

/-! ## A121555.P12779173677742979495

`A000254(n+1)-A001563(n)`
-/

namespace A121555.P12779173677742979495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000254 (n + 1) - A001563 n

end

end A121555.P12779173677742979495

namespace A121555

/-- `A000254(n+1)-A001563(n)` -/
def P12779173677742979495.Spec : Prop :=
  ∀ n, P12779173677742979495.a n = A121555 (n + 1)

end A121555

/-! ## A121555.P15425531946891509631

`A000774(n+1)-A007680(n)`
-/

namespace A121555.P15425531946891509631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000774 (n + 1) - A007680 n

end

end A121555.P15425531946891509631

namespace A121555

/-- `A000774(n+1)-A007680(n)` -/
def P15425531946891509631.Spec : Prop :=
  ∀ n, P15425531946891509631.a n = A121555 (n + 1)

end A121555

/-!
# A121556: Numbers such that sigma(n)^2 is divisible by UnitarySigma(n)*UnitaryPhi(n).

The programs for A121556, there is no canonical definition to state claims against.
-/

/-! ## A121556.P7581489815294449804

`∏{e}[2^(n+1), A258077(#)]`
-/

namespace A121556.P7581489815294449804
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A258077 (Nat.factorization (f1 n) p)

end

end A121556.P7581489815294449804

/-! ## A121556.P3172611498972575446

`∑{e}[A000079(n+1), A258077(#)]`
-/

namespace A121556.P3172611498972575446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A258077 (Nat.factorization (f1 n).natAbs p)

end

end A121556.P3172611498972575446

/-! ## A121556.P8063705996047952123

`A258077(n+1)%A078769(n)²`
-/

namespace A121556.P8063705996047952123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A258077 (n + 1)) (A078769 n ^ 2)

end

end A121556.P8063705996047952123

/-! ## A121556.P10236461013963939512

`A258077(n+1)+A000007(A022568(n))`
-/

namespace A121556.P10236461013963939512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258077 (n + 1) + A000007 (A022568 n).toNat

end

end A121556.P10236461013963939512

/-! ## A121556.P1306425607260742775

`A258077(A187829(n+1))`
-/

namespace A121556.P1306425607260742775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258077 (A187829 (n + 1)).toNat

end

end A121556.P1306425607260742775

/-!
# A121557: Numbers n such that n + partition number of n is prime.

The programs for A121557, there is no canonical definition to state claims against.
-/

/-! ## A121557.P5631012136193154210

`eq[2, ∑{e}[A004277(n)+2*A000009(n), #]]`
-/

namespace A121557.P5631012136193154210
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n + 2 * A000009 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A121557.P5631012136193154210

/-! ## A121557.P6875975810082477075

`eq[1, A001222(A000009(n)+n)]`
-/

namespace A121557.P6875975810082477075
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A000009 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A121557.P6875975810082477075

/-! ## A121557.P14925008564051583627

`eq[1, A008481(A000009(n)+n)]`
-/

namespace A121557.P14925008564051583627
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008481 (A000009 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A121557.P14925008564051583627

/-! ## A121557.P7139518173923523745

`lt[0, A010051(A000009(n)+n)]`
-/

namespace A121557.P7139518173923523745
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A000009 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A121557.P7139518173923523745

/-! ## A121557.P18151158075096919655

`eq[1, A054024(A000009(n)+n)]`
-/

namespace A121557.P18151158075096919655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054024 (A000009 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A121557.P18151158075096919655

/-!
# A121558: Primes of the form n + partition number of n.

The programs for A121558, there is no canonical definition to state claims against.
-/

/-! ## A121558.P8696402072691095958

`A121557(n+1)+A000009(A121557(n+1))`
-/

namespace A121558.P8696402072691095958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121557 (n + 1) + A000009 (A121557 (n + 1)).toNat

end

end A121558.P8696402072691095958

/-! ## A121558.P1187297474433174244

`p?[A000009(n)+n]`
-/

namespace A121558.P1187297474433174244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A121558.P1187297474433174244

/-! ## A121558.P10811916530783750520

`p?[abs(A081360(n))+n]`
-/

namespace A121558.P10811916530783750520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A081360 n| + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A121558.P10811916530783750520

/-! ## A121558.P14939937687741519923

`p?[A052839(n+1)+n]`
-/

namespace A121558.P14939937687741519923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052839 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A121558.P14939937687741519923

/-!
# A121559: Final result (0 or 1) under iterations of {r mod (max prime p <= r)} starting at r = n.

The programs for A121559, the canonical program `A121559.P2620035417922548176` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121559 has offset 1).

The definition of A121559 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A175077, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A121559.P3989488217583934198

`A200947(n+1)%2`
-/

namespace A121559.P3989488217583934198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A200947 (n + 1)) 2

end

end A121559.P3989488217583934198

namespace A121559

/-- `A200947(n+1)%2` -/
def P3989488217583934198.Spec : Prop :=
  ∀ n, P3989488217583934198.a n = A121559 (n + 1)

end A121559

/-! ## A121559.P2620035417922548176

`A175077(n+2)-1`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A121559

/-- `A175077(n+2)-1` -/
def P2620035417922548176.Spec : Prop :=
  ∀ n, P2620035417922548176.a n = A121559 (n + 1)

theorem P2620035417922548176.correct : P2620035417922548176.Spec := by
  intro n
  simp only [A121559, Nat.add_sub_cancel]

end A121559

/-! ## A121559.P7083502818141259246

`ceil(sin(Δ[A072491(n)]))`
-/

namespace A121559.P7083502818141259246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072491 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sin (f1 (n + 1) - f1 n : ℝ)⌉

end

end A121559.P7083502818141259246

namespace A121559

/-- `ceil(sin(Δ[A072491(n)]))` -/
def P7083502818141259246.Spec : Prop :=
  ∀ n, P7083502818141259246.a n = A121559 (n + 1)

end A121559

/-! ## A121559.P2339672220610796261

`char[lt[A072491(n), A072491(n+1)]]`
-/

namespace A121559.P2339672220610796261
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072491 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072491 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A121559.P2339672220610796261

namespace A121559

/-- `char[lt[A072491(n), A072491(n+1)]]` -/
def P2339672220610796261.Spec : Prop :=
  ∀ n, (P2339672220610796261.a n : ℤ) = A121559 (n + 1)

end A121559

/-! ## A121559.P14308694940893813596

`A072491(n+1)-A175078(n+2)`
-/

namespace A121559.P14308694940893813596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072491 (n + 1) - A175078 (n + 2)

end

end A121559.P14308694940893813596

namespace A121559

/-- `A072491(n+1)-A175078(n+2)` -/
def P14308694940893813596.Spec : Prop :=
  ∀ n, P14308694940893813596.a n = A121559 (n + 1)

end A121559

/-! ## A121559.P9713352058234012180

`a(A064722(n))%A001055(n+1)` with `a(0)=1`
-/

namespace A121559.P9713352058234012180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.tmod (a (A064722 n).toNat) (A001055 (n + 1))

end

end A121559.P9713352058234012180

namespace A121559

/-- `a(A064722(n))%A001055(n+1)` -/
def P9713352058234012180.Spec : Prop :=
  ∀ n, P9713352058234012180.a n = A121559 (n + 1)

end A121559

/-! ## A121559.P2861752714630951287

`A000957(ceil(Δ[(A072491(n)+1)²]/49)+2)`
-/

namespace A121559.P2861752714630951287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A072491 n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000957 (⌈(f1 (n + 1) - f1 n : ℚ) / 49⌉ + 2).toNat

end

end A121559.P2861752714630951287

namespace A121559

/-- `A000957(ceil(Δ[(A072491(n)+1)²]/49)+2)` -/
def P2861752714630951287.Spec : Prop :=
  ∀ n, P2861752714630951287.a n = A121559 (n + 1)

end A121559

/-! ## A121559.P3580520809446960944

`ceil(Δ[(A072491(n)+1)²]/A006512(n+1))`
-/

namespace A121559.P3580520809446960944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A072491 n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (n + 1) - f1 n : ℚ) / (A006512 (n + 1) : ℚ)⌉

end

end A121559.P3580520809446960944

namespace A121559

/-- `ceil(Δ[(A072491(n)+1)²]/A006512(n+1))` -/
def P3580520809446960944.Spec : Prop :=
  ∀ n, P3580520809446960944.a n = A121559 (n + 1)

end A121559

/-! ## A121559.P470913132698362850

`ceil(Δ[(A072491(n)+1)²]/A016873(n))^n`
-/

namespace A121559.P470913132698362850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A072491 n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (n + 1) - f1 n : ℚ) / (A016873 n : ℚ)⌉ ^ n

end

end A121559.P470913132698362850

namespace A121559

/-- `ceil(Δ[(A072491(n)+1)²]/A016873(n))^n` -/
def P470913132698362850.Spec : Prop :=
  ∀ n, P470913132698362850.a n = A121559 (n + 1)

end A121559

/-! ## A121559.P1824249266515338027

`ceil(Δ[(A072491(n)+1)²]/A344993(2*(n+1)))`
-/

namespace A121559.P1824249266515338027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A072491 n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (n + 1) - f1 n : ℚ) / (A344993 (2 * (n + 1)) : ℚ)⌉

end

end A121559.P1824249266515338027

namespace A121559

/-- `ceil(Δ[(A072491(n)+1)²]/A344993(2*(n+1)))` -/
def P1824249266515338027.Spec : Prop :=
  ∀ n, P1824249266515338027.a n = A121559 (n + 1)

end A121559

/-! ## A121559.P8191852913685101184

`round(acot(Δ[A007924(n)]))`
-/

namespace A121559.P8191852913685101184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007924 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (SequenceMachineLib.acot (f1 (n + 1) - f1 n : ℝ))

end

end A121559.P8191852913685101184

namespace A121559

/-- `round(acot(Δ[A007924(n)]))` -/
def P8191852913685101184.Spec : Prop :=
  ∀ n, P8191852913685101184.a n = A121559 (n + 1)

end A121559

/-! ## A121559.P3678386738358937246

`A007924(n+1)%2`
-/

namespace A121559.P3678386738358937246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007924 (n + 1)) 2

end

end A121559.P3678386738358937246

namespace A121559

/-- `A007924(n+1)%2` -/
def P3678386738358937246.Spec : Prop :=
  ∀ n, P3678386738358937246.a n = A121559 (n + 1)

end A121559

/-! ## A121559.P14782785162242062693

`and(and(1, A075058(2*n)), A007924(n+1))`
-/

namespace A121559.P14782785162242062693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (Int.land 1 (A075058 (2 * n))) (A007924 (n + 1))

end

end A121559.P14782785162242062693

namespace A121559

/-- `and(and(1, A075058(2*n)), A007924(n+1))` -/
def P14782785162242062693.Spec : Prop :=
  ∀ n, P14782785162242062693.a n = A121559 (n + 1)

end A121559

/-! ## A121559.P1745414337731635376

`and(9, A007920(A064722(n+1))²)^n`
-/

namespace A121559.P1745414337731635376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 9 (A007920 (A064722 (n + 1)).toNat ^ 2) ^ n

end

end A121559.P1745414337731635376

namespace A121559

/-- `and(9, A007920(A064722(n+1))²)^n` -/
def P1745414337731635376.Spec : Prop :=
  ∀ n, P1745414337731635376.a n = A121559 (n + 1)

end A121559

/-! ## A121559.P18384268845180983460

`log2(A175077(n+2))`
-/

namespace A121559.P18384268845180983460
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A175077 (n + 2) : ℝ)

end

end A121559.P18384268845180983460

namespace A121559

/-- `log2(A175077(n+2))` -/
def P18384268845180983460.Spec : Prop :=
  ∀ n, P18384268845180983460.a n = (A121559 (n + 1) : ℝ)

end A121559

/-! ## A121559.P13288337903960036671

`A002262(Δ[A175077(n+1)]+1)`
-/

namespace A121559.P13288337903960036671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175077 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (f1 (n + 1) - f1 n + 1).toNat

end

end A121559.P13288337903960036671

namespace A121559

/-- `A002262(Δ[A175077(n+1)]+1)` -/
def P13288337903960036671.Spec : Prop :=
  ∀ n, P13288337903960036671.a n = A121559 (n + 1)

end A121559

/-! ## A121559.P1872342623119428690

`A280727(Δ[A175077(n+1)]+1)`
-/

namespace A121559.P1872342623119428690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175077 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280727 (f1 (n + 1) - f1 n + 1).toNat

end

end A121559.P1872342623119428690

namespace A121559

/-- `A280727(Δ[A175077(n+1)]+1)` -/
def P1872342623119428690.Spec : Prop :=
  ∀ n, P1872342623119428690.a n = A121559 (n + 1)

end A121559

/-! ## A121559.P749356461748760670

`A000035(∑[Δ[A175077(n+1)]²])`
-/

namespace A121559.P749356461748760670
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175077 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A121559.P749356461748760670

namespace A121559

/-- `A000035(∑[Δ[A175077(n+1)]²])` -/
def P749356461748760670.Spec : Prop :=
  ∀ n, P749356461748760670.a n = A121559 (n + 1)

end A121559

/-! ## A121559.P3952223578388163266

`C(A175077(A291179(n+1)+2), 2)`
-/

namespace A121559.P3952223578388163266
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A175077 (A291179 (n + 1) + 2).toNat).toNat 2

end

end A121559.P3952223578388163266

namespace A121559

/-- `C(A175077(A291179(n+1)+2), 2)` -/
def P3952223578388163266.Spec : Prop :=
  ∀ n, (P3952223578388163266.a n : ℤ) = A121559 (n + 1)

end A121559

/-! ## A121559.P13557582451212003504

`A175077(n+1)%A175077(n+2)`
-/

namespace A121559.P13557582451212003504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A175077 (n + 1)) (A175077 (n + 2))

end

end A121559.P13557582451212003504

namespace A121559

/-- `A175077(n+1)%A175077(n+2)` -/
def P13557582451212003504.Spec : Prop :=
  ∀ n, P13557582451212003504.a n = A121559 (n + 1)

end A121559

/-!
# A121560: Lengths of blocks of zeros in sequence A121559.

The programs for A121560, there is no canonical definition to state claims against.
-/

/-! ## A121560.P7799917345643881295

`Δ[A175088(n+1)]-1`
-/

namespace A121560.P7799917345643881295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175088 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A121560.P7799917345643881295

/-! ## A121560.P8655448484990134728

`A000044(Δ[A175088(n+1)])`
-/

namespace A121560.P8655448484990134728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175088 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000044 (f1 (n + 1) - f1 n).toNat

end

end A121560.P8655448484990134728

/-! ## A121560.P15595643715750050923

`A000045(Δ[A175088(n+1)])`
-/

namespace A121560.P15595643715750050923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175088 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (f1 (n + 1) - f1 n).toNat

end

end A121560.P15595643715750050923

/-! ## A121560.P6177925123341704832

`A000837(Δ[A175088(n+1)])`
-/

namespace A121560.P6177925123341704832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175088 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000837 (f1 (n + 1) - f1 n).toNat

end

end A121560.P6177925123341704832

/-! ## A121560.P5891130438676665840

`A000930(Δ[A175088(n+1)])`
-/

namespace A121560.P5891130438676665840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175088 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000930 (f1 (n + 1) - f1 n).toNat

end

end A121560.P5891130438676665840

/-! ## A121560.P16445084528825316457

`A014963(12/Δ[A175088(n+1)])`
-/

namespace A121560.P16445084528825316457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175088 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (SequenceMachineLib.roundAway (12 / (f1 (n + 1) - f1 n : ℚ))).toNat

end

end A121560.P16445084528825316457

/-! ## A121560.P17512297933115126967

`10%A000203(Δ[A175088(n+1)])`
-/

namespace A121560.P17512297933115126967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175088 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 10 (A000203 (f1 (n + 1) - f1 n).toNat)

end

end A121560.P17512297933115126967

/-! ## A121560.P11994538980265794773

`A175088(n+2)-A020725(A175088(n+1))`
-/

namespace A121560.P11994538980265794773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175088 (n + 2) - A020725 (A175088 (n + 1)).toNat

end

end A121560.P11994538980265794773

/-! ## A121560.P7162336552715558745

`Δ[A175072(n+1)]-1`
-/

namespace A121560.P7162336552715558745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175072 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A121560.P7162336552715558745

/-!
# A121561: The number of iterations of "subtract the largest prime less than or equal to the current value" to go from n to the limiting value 0 or 1.

The programs for A121561, the canonical program `A121561.P3772356346203237130` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121561 has offset 1).

The definition of A121561 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A121561.P3772356346203237130

`A175078(n+2)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A121561

/-- `A175078(n+2)` -/
def P3772356346203237130.Spec : Prop :=
  ∀ n, P3772356346203237130.a n = A121561 (n + 1)

theorem P3772356346203237130.correct : P3772356346203237130.Spec := by
  intro n
  simp only [A121561, Nat.add_sub_cancel]

end A121561

/-! ## A121561.P14654066273114633987

`dr(A175078(A016777(n)-A004273(n)))`
-/

namespace A121561.P14654066273114633987
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A175078 (A016777 n - A004273 n).toNat)

end

end A121561.P14654066273114633987

namespace A121561

/-- `dr(A175078(A016777(n)-A004273(n)))` -/
def P14654066273114633987.Spec : Prop :=
  ∀ n, (P14654066273114633987.a n : ℤ) = A121561 (n + 1)

end A121561

/-! ## A121561.P4347139799067249849

`A000041((a(A064722(n))+1)%A018892(n+1))` with `a(0)=0`
-/

namespace A121561.P4347139799067249849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A000041 (Int.tmod (a (A064722 n).toNat + 1) (A018892 (n + 1))).toNat

end

end A121561.P4347139799067249849

namespace A121561

/-- `A000041((a(A064722(n))+1)%A018892(n+1))` -/
def P4347139799067249849.Spec : Prop :=
  ∀ n, P4347139799067249849.a n = A121561 (n + 1)

end A121561

/-! ## A121561.P15642216081850292759

`A165326(n)²*A175078(A016777(n)-A004273(n))`
-/

namespace A121561.P15642216081850292759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165326 n ^ 2 * A175078 (A016777 n - A004273 n).toNat

end

end A121561.P15642216081850292759

namespace A121561

/-- `A165326(n)²*A175078(A016777(n)-A004273(n))` -/
def P15642216081850292759.Spec : Prop :=
  ∀ n, P15642216081850292759.a n = A121561 (n + 1)

end A121561

/-! ## A121561.P17489169382963424718

`A175078(A016777(n)-A004273(n))-A010875(6*n)`
-/

namespace A121561.P17489169382963424718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175078 (A016777 n - A004273 n).toNat - A010875 (6 * n)

end

end A121561.P17489169382963424718

namespace A121561

/-- `A175078(A016777(n)-A004273(n))-A010875(6*n)` -/
def P17489169382963424718.Spec : Prop :=
  ∀ n, P17489169382963424718.a n = A121561 (n + 1)

end A121561

/-! ## A121561.P18183132904458511594

`dr(A175078(A008619(A103517(n))))`
-/

namespace A121561.P18183132904458511594
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A175078 (A008619 (A103517 n).toNat).toNat)

end

end A121561.P18183132904458511594

namespace A121561

/-- `dr(A175078(A008619(A103517(n))))` -/
def P18183132904458511594.Spec : Prop :=
  ∀ n, (P18183132904458511594.a n : ℤ) = A121561 (n + 1)

end A121561

/-! ## A121561.P11623035710508062746

`A323162(n+1)+A276950(A213521(n+1))`
-/

namespace A121561.P11623035710508062746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323162 (n + 1) + A276950 (A213521 (n + 1)).toNat

end

end A121561.P11623035710508062746

namespace A121561

/-- `A323162(n+1)+A276950(A213521(n+1))` -/
def P11623035710508062746.Spec : Prop :=
  ∀ n, P11623035710508062746.a n = A121561 (n + 1)

end A121561

/-! ## A121561.P8000715916438763237

`A323162(n+1)+A130543(2*A007980(n))`
-/

namespace A121561.P8000715916438763237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323162 (n + 1) + A130543 (2 * A007980 n).toNat

end

end A121561.P8000715916438763237

namespace A121561

/-- `A323162(n+1)+A130543(2*A007980(n))` -/
def P8000715916438763237.Spec : Prop :=
  ∀ n, P8000715916438763237.a n = A121561 (n + 1)

end A121561

/-! ## A121561.P2477029755762529780

`A323162(A049329(n+1)²)+A323162(n+1)`
-/

namespace A121561.P2477029755762529780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323162 (A049329 (n + 1) ^ 2).toNat + A323162 (n + 1)

end

end A121561.P2477029755762529780

namespace A121561

/-- `A323162(A049329(n+1)²)+A323162(n+1)` -/
def P2477029755762529780.Spec : Prop :=
  ∀ n, P2477029755762529780.a n = A121561 (n + 1)

end A121561

/-! ## A121561.P5399610640947757798

`A107286(A001654(A107286(n))*A107286(n+1))`
-/

namespace A121561.P5399610640947757798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107286 (A001654 (A107286 n).toNat * A107286 (n + 1)).toNat

end

end A121561.P5399610640947757798

namespace A121561

/-- `A107286(A001654(A107286(n))*A107286(n+1))` -/
def P5399610640947757798.Spec : Prop :=
  ∀ n, P5399610640947757798.a n = A121561 (n + 1)

end A121561

/-! ## A121561.P18405284985145373970

`A107286(A107286(n+1)^A107286(n)*A107286(n))`
-/

namespace A121561.P18405284985145373970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107286 (SequenceMachineLib.roundAway ((A107286 (n + 1) : ℚ) ^ (A107286 n : ℤ) * (A107286 n : ℚ))).toNat

end

end A121561.P18405284985145373970

namespace A121561

/-- `A107286(A107286(n+1)^A107286(n)*A107286(n))` -/
def P18405284985145373970.Spec : Prop :=
  ∀ n, P18405284985145373970.a n = A121561 (n + 1)

end A121561

/-! ## A121561.P17084281037810893311

`A323162(n+1)+A323162(A000217(A135210(n+4)))`
-/

namespace A121561.P17084281037810893311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323162 (n + 1) + A323162 (A000217 (A135210 (n + 4)).toNat).toNat

end

end A121561.P17084281037810893311

namespace A121561

/-- `A323162(n+1)+A323162(A000217(A135210(n+4)))` -/
def P17084281037810893311.Spec : Prop :=
  ∀ n, P17084281037810893311.a n = A121561 (n + 1)

end A121561

/-! ## A121561.P16145403080294791432

`A323162(n+1)+A323162(A051682(n+3))`
-/

namespace A121561.P16145403080294791432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323162 (n + 1) + A323162 (A051682 (n + 3)).toNat

end

end A121561.P16145403080294791432

namespace A121561

/-- `A323162(n+1)+A323162(A051682(n+3))` -/
def P16145403080294791432.Spec : Prop :=
  ∀ n, P16145403080294791432.a n = A121561 (n + 1)

end A121561

/-! ## A121561.P9723904154576073611

`A020639((A007918(n)-n)!)%(n+1)`
-/

namespace A121561.P9723904154576073611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020639 (Nat.factorial (A007918 n - (n : ℤ)).toNat)) (n + 1 : ℤ)

end

end A121561.P9723904154576073611

namespace A121561

/-- `A020639((A007918(n)-n)!)%(n+1)` -/
def P9723904154576073611.Spec : Prop :=
  ∀ n, P9723904154576073611.a n = A121561 (n + 1)

end A121561

/-! ## A121561.P18428129989106050948

`A072491(n+1)+1-A175077(n+2)`
-/

namespace A121561.P18428129989106050948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072491 (n + 1) + (1 - A175077 (n + 2))

end

end A121561.P18428129989106050948

namespace A121561

/-- `A072491(n+1)+1-A175077(n+2)` -/
def P18428129989106050948.Spec : Prop :=
  ∀ n, P18428129989106050948.a n = A121561 (n + 1)

end A121561

/-!
# A121563: Numerator of Sum_{i=1..n} i!/(i^i).

The programs for A121563, there is no canonical definition to state claims against.
-/

/-! ## A121563.P9983320753161659528

`A068001(4*a(n-1))` with `a(0)=0, a(1)=1, a(2)=3, a(3)=31`
-/

namespace A121563.P9983320753161659528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 3, 31] fun n a =>
  A068001 (4 * a (n - 1)).toNat

end

end A121563.P9983320753161659528

/-!
# A121564: Denominator of Sum_{i=1..n} i!/(i^i).

The programs for A121564, there is no canonical definition to state claims against.
-/

/-! ## A121564.P1703819207696908637

`lcm(a(n-1), A056916(n))` with `a(0)=1`
-/

namespace A121564.P1703819207696908637
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.lcm (a (n - 1) : ℤ) (A056916 n)

end

end A121564.P1703819207696908637

/-! ## A121564.P2867922660089645993

`∏[sqrt(A356194(n^n))]`
-/

namespace A121564.P2867922660089645993
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A356194 (n ^ n) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A121564.P2867922660089645993

/-!
# A121565: a(n) is the numerator of Sum_{i=1..n} i!/(i^2).

The programs for A121565, there is no canonical definition to state claims against.
-/

/-! ## A121565.P10044595603885620054

`A091009(C(A185974(3*n+2), n))`
-/

namespace A121565.P10044595603885620054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091009 (Nat.choose (A185974 (3 * n + 2)).toNat n)

end

end A121565.P10044595603885620054

/-! ## A121565.P14893489404201019744

`A365326(2*n+1)%∑[A001764(n)]`
-/

namespace A121565.P14893489404201019744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001764 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A365326 (2 * n + 1)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A121565.P14893489404201019744

/-!
# A121566: a(n) is the denominator of Sum_{i=1..n} i!/(i^2).

The programs for A121566, the canonical program `A121566.P11132643645040493819` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121566 has offset 0).

The definition of A121566 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 251 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A121566.P11132643645040493819

`A034386(n)/round(atan(n+11))`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A121566

/-- `A034386(n)/round(atan(n+11))` -/
def P11132643645040493819.Spec : Prop :=
  ∀ n, P11132643645040493819.a n = (A121566 n : ℚ)

end A121566

/-! ## A121566.P2571469609408780629

`A034386(n)/gcd(2, A139550(n))`
-/

namespace A121566.P2571469609408780629
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034386 n : ℚ) / (Int.gcd 2 (A139550 n) : ℚ)

end

end A121566.P2571469609408780629

namespace A121566

/-- `A034386(n)/gcd(2, A139550(n))` -/
def P2571469609408780629.Spec : Prop :=
  ∀ n, P2571469609408780629.a n = (A121566 n : ℚ)

end A121566

/-! ## A121566.P14703044512189418005

`A034386(n)/A051702(A070939(n))`
-/

namespace A121566.P14703044512189418005
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034386 n : ℚ) / (A051702 (A070939 n).toNat : ℚ)

end

end A121566.P14703044512189418005

namespace A121566

/-- `A034386(n)/A051702(A070939(n))` -/
def P14703044512189418005.Spec : Prop :=
  ∀ n, P14703044512189418005.a n = (A121566 n : ℚ)

end A121566

/-! ## A121566.P15483850222101882797

`A034386(n)/A332277(A000523(n+4))`
-/

namespace A121566.P15483850222101882797
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034386 n : ℚ) / (A332277 (A000523 (n + 4)).toNat : ℚ)

end

end A121566.P15483850222101882797

namespace A121566

/-- `A034386(n)/A332277(A000523(n+4))` -/
def P15483850222101882797.Spec : Prop :=
  ∀ n, P15483850222101882797.a n = (A121566 n : ℚ)

end A121566

/-! ## A121566.P11233339980596207539

`A034386(n)/A020639(floor(sqrt(n))!)`
-/

namespace A121566.P11233339980596207539
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034386 n : ℚ) / (A020639 (Nat.factorial (Nat.sqrt n)) : ℚ)

end

end A121566.P11233339980596207539

namespace A121566

/-- `A034386(n)/A020639(floor(sqrt(n))!)` -/
def P11233339980596207539.Spec : Prop :=
  ∀ n, P11233339980596207539.a n = (A121566 n : ℚ)

end A121566

/-!
# A121567: Fibonacci[ (p - 1) ], where p = Prime[n].

The programs for A121567, the canonical program `A121567.P7187664094903577838` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121567 has offset 1).

The definition of A121567 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A121567.P7187664094903577838

`A000045(A000040(n+1)-1)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A121567

/-- `A000045(A000040(n+1)-1)` -/
def P7187664094903577838.Spec : Prop :=
  ∀ n, P7187664094903577838.a n = A121567 (n + 1)

theorem P7187664094903577838.correct : P7187664094903577838.Spec := by
  intro n
  simp only [A121567, Nat.add_sub_cancel]

end A121567

/-! ## A121567.P1316907367766215087

`A000045(p?[xor(1, n)]-1)`
-/

namespace A121567.P1316907367766215087
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) - 1)

end

end A121567.P1316907367766215087

namespace A121567

/-- `A000045(p?[xor(1, n)]-1)` -/
def P1316907367766215087.Spec : Prop :=
  ∀ n, P1316907367766215087.a n = A121567 (n + 1)

end A121567

/-! ## A121567.P7530853802247660937

`A212804(Δ[A007504(n)])`
-/

namespace A121567.P7530853802247660937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (f1 (n + 1) - f1 n).toNat

end

end A121567.P7530853802247660937

namespace A121567

/-- `A212804(Δ[A007504(n)])` -/
def P7530853802247660937.Spec : Prop :=
  ∀ n, P7530853802247660937.a n = A121567 (n + 1)

end A121567

/-! ## A121567.P11698359093441802676

`A212804(p?[A352844(n)])`
-/

namespace A121567.P11698359093441802676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352844 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A121567.P11698359093441802676

namespace A121567

/-- `A212804(p?[A352844(n)])` -/
def P11698359093441802676.Spec : Prop :=
  ∀ n, P11698359093441802676.a n = A121567 (n + 1)

end A121567

/-! ## A121567.P1853165254988672599

`A000045(A006093(n+1))`
-/

namespace A121567.P1853165254988672599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A006093 (n + 1)).toNat

end

end A121567.P1853165254988672599

namespace A121567

/-- `A000045(A006093(n+1))` -/
def P1853165254988672599.Spec : Prop :=
  ∀ n, P1853165254988672599.a n = A121567 (n + 1)

end A121567

/-! ## A121567.P17926793708244438693

`A065451(A000040(n+1))`
-/

namespace A121567.P17926793708244438693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065451 (A000040 (n + 1)).toNat

end

end A121567.P17926793708244438693

namespace A121567

/-- `A065451(A000040(n+1))` -/
def P17926793708244438693.Spec : Prop :=
  ∀ n, P17926793708244438693.a n = A121567 (n + 1)

end A121567

/-! ## A121567.P9602943667588770575

`A065451(A006005(n+1))`
-/

namespace A121567.P9602943667588770575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065451 (A006005 (n + 1)).toNat

end

end A121567.P9602943667588770575

namespace A121567

/-- `A065451(A006005(n+1))` -/
def P9602943667588770575.Spec : Prop :=
  ∀ n, P9602943667588770575.a n = A121567 (n + 1)

end A121567

/-! ## A121567.P18077453277036199820

`A053602(A037168(n+1))`
-/

namespace A121567.P18077453277036199820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053602 (A037168 (n + 1)).toNat

end

end A121567.P18077453277036199820

namespace A121567

/-- `A053602(A037168(n+1))` -/
def P18077453277036199820.Spec : Prop :=
  ∀ n, P18077453277036199820.a n = A121567 (n + 1)

end A121567

/-! ## A121567.P4767133644036513397

`A059974(A055003(n+1))`
-/

namespace A121567.P4767133644036513397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059974 (A055003 (n + 1)).toNat

end

end A121567.P4767133644036513397

namespace A121567

/-- `A059974(A055003(n+1))` -/
def P4767133644036513397.Spec : Prop :=
  ∀ n, P4767133644036513397.a n = A121567 (n + 1)

end A121567

/-! ## A121567.P13472661531559680954

`A005013(A156037(n+1))`
-/

namespace A121567.P13472661531559680954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005013 (A156037 (n + 1)).toNat

end

end A121567.P13472661531559680954

namespace A121567

/-- `A005013(A156037(n+1))` -/
def P13472661531559680954.Spec : Prop :=
  ∀ n, P13472661531559680954.a n = A121567 (n + 1)

end A121567

/-!
# A121568: a(n) = Fibonacci((prime(n)-1)/2), n>1.

The programs for A121568, the canonical program `A121568.P847123090676093886` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121568 has offset 2).

The definition of A121568 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000045((A000040(n+2)-1)/2)` (program `A121568.P847123090676093886`, by `A121568.P847123090676093886.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A121568.P847123090676093886

`A000045((A000040(n+2)-1)/2)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A121568

/-- `A000045((A000040(n+2)-1)/2)` -/
def P847123090676093886.Spec : Prop :=
  ∀ n, P847123090676093886.a n = A121568 (n + 2)

theorem P847123090676093886.correct : P847123090676093886.Spec := by
  intro n
  simp only [A121568, Nat.add_sub_cancel]

end A121568

/-! ## A121568.P4227926827138898866

`A103609(p?[2*n+1])`
-/

namespace A121568.P4227926827138898866
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A121568.P4227926827138898866

namespace A121568

/-- `A103609(p?[2*n+1])` -/
def P4227926827138898866.Spec : Prop :=
  ∀ n, P4227926827138898866.a n = A121568 (n + 2)

end A121568

/-! ## A121568.P6083343657825123592

`A129982(p?[2*n+1])`
-/

namespace A121568.P6083343657825123592
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129982 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A121568.P6083343657825123592

namespace A121568

/-- `A129982(p?[2*n+1])` -/
def P6083343657825123592.Spec : Prop :=
  ∀ n, P6083343657825123592.a n = A121568 (n + 2)

end A121568

/-! ## A121568.P5020283435414373539

`A303427(p?[2*n+1])`
-/

namespace A121568.P5020283435414373539
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303427 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A121568.P5020283435414373539

namespace A121568

/-- `A303427(p?[2*n+1])` -/
def P5020283435414373539.Spec : Prop :=
  ∀ n, P5020283435414373539.a n = A121568 (n + 2)

end A121568

/-! ## A121568.P8402727101240679997

`A000045(floor(p?[2*n+1]/2))`
-/

namespace A121568.P8402727101240679997
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 ⌊(f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℚ) / 2⌋.toNat

end

end A121568.P8402727101240679997

namespace A121568

/-- `A000045(floor(p?[2*n+1]/2))` -/
def P8402727101240679997.Spec : Prop :=
  ∀ n, P8402727101240679997.a n = A121568 (n + 2)

end A121568

/-! ## A121568.P9045764216409880574

`A000045(eq[1, ∑{e}[2*n+1, #]])`
-/

namespace A121568.P9045764216409880574
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A121568.P9045764216409880574

namespace A121568

/-- `A000045(eq[1, ∑{e}[2*n+1, #]])` -/
def P9045764216409880574.Spec : Prop :=
  ∀ n, P9045764216409880574.a n = A121568 (n + 2)

end A121568

/-! ## A121568.P7647494507596821361

`A000045(A005097(n+1))`
-/

namespace A121568.P7647494507596821361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A005097 (n + 1)).toNat

end

end A121568.P7647494507596821361

namespace A121568

/-- `A000045(A005097(n+1))` -/
def P7647494507596821361.Spec : Prop :=
  ∀ n, P7647494507596821361.a n = A121568 (n + 2)

end A121568

/-! ## A121568.P1712823370262520837

`A103609(A045319(n+1))`
-/

namespace A121568.P1712823370262520837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 (A045319 (n + 1)).toNat

end

end A121568.P1712823370262520837

namespace A121568

/-- `A103609(A045319(n+1))` -/
def P1712823370262520837.Spec : Prop :=
  ∀ n, P1712823370262520837.a n = A121568 (n + 2)

end A121568

/-! ## A121568.P1396077335400171873

`A103609(A045344(n+1))`
-/

namespace A121568.P1396077335400171873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 (A045344 (n + 1)).toNat

end

end A121568.P1396077335400171873

namespace A121568

/-- `A103609(A045344(n+1))` -/
def P1396077335400171873.Spec : Prop :=
  ∀ n, P1396077335400171873.a n = A121568 (n + 2)

end A121568

/-! ## A121568.P4462975813326963660

`A103609(A065091(n+1))`
-/

namespace A121568.P4462975813326963660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 (A065091 (n + 1)).toNat

end

end A121568.P4462975813326963660

namespace A121568

/-- `A103609(A065091(n+1))` -/
def P4462975813326963660.Spec : Prop :=
  ∀ n, P4462975813326963660.a n = A121568 (n + 2)

end A121568

/-! ## A121568.P4546708238931324717

`A212804(A006254(n+1))`
-/

namespace A121568.P4546708238931324717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (A006254 (n + 1)).toNat

end

end A121568.P4546708238931324717

namespace A121568

/-- `A212804(A006254(n+1))` -/
def P4546708238931324717.Spec : Prop :=
  ∀ n, P4546708238931324717.a n = A121568 (n + 2)

end A121568

/-! ## A121568.P15384137235981379583

`A053602(A165972(n+1))`
-/

namespace A121568.P15384137235981379583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053602 (A165972 (n + 1)).toNat

end

end A121568.P15384137235981379583

namespace A121568

/-- `A053602(A165972(n+1))` -/
def P15384137235981379583.Spec : Prop :=
  ∀ n, P15384137235981379583.a n = A121568 (n + 2)

end A121568

/-! ## A121568.P5397356599550200019

`A079977(A154115(n+1))`
-/

namespace A121568.P5397356599550200019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079977 (A154115 (n + 1)).toNat

end

end A121568.P5397356599550200019

namespace A121568

/-- `A079977(A154115(n+1))` -/
def P5397356599550200019.Spec : Prop :=
  ∀ n, P5397356599550200019.a n = A121568 (n + 2)

end A121568

/-! ## A121568.P11047652757454873141

`A272912(A135731(n+1))`
-/

namespace A121568.P11047652757454873141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272912 (A135731 (n + 1)).toNat

end

end A121568.P11047652757454873141

namespace A121568

/-- `A272912(A135731(n+1))` -/
def P11047652757454873141.Spec : Prop :=
  ∀ n, P11047652757454873141.a n = A121568 (n + 2)

end A121568

/-! ## A121568.P5292456230127179650

`A247049(A245685(n+1))`
-/

namespace A121568.P5292456230127179650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247049 (A245685 (n + 1)).toNat

end

end A121568.P5292456230127179650

namespace A121568

/-- `A247049(A245685(n+1))` -/
def P5292456230127179650.Spec : Prop :=
  ∀ n, P5292456230127179650.a n = A121568 (n + 2)

end A121568

/-! ## A121568.P8704602669558528232

`A053602(A006093(n+2))`
-/

namespace A121568.P8704602669558528232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053602 (A006093 (n + 2)).toNat

end

end A121568.P8704602669558528232

namespace A121568

/-- `A053602(A006093(n+2))` -/
def P8704602669558528232.Spec : Prop :=
  ∀ n, P8704602669558528232.a n = A121568 (n + 2)

end A121568

/-! ## A121568.P17945822830553232765

`A053602(A039915(n+2))`
-/

namespace A121568.P17945822830553232765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053602 (A039915 (n + 2)).toNat

end

end A121568.P17945822830553232765

namespace A121568

/-- `A053602(A039915(n+2))` -/
def P17945822830553232765.Spec : Prop :=
  ∀ n, P17945822830553232765.a n = A121568 (n + 2)

end A121568

/-! ## A121568.P10566772509919288751

`A000045(A102781(n+2))`
-/

namespace A121568.P10566772509919288751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A102781 (n + 2)).toNat

end

end A121568.P10566772509919288751

namespace A121568

/-- `A000045(A102781(n+2))` -/
def P10566772509919288751.Spec : Prop :=
  ∀ n, P10566772509919288751.a n = A121568 (n + 2)

end A121568

/-! ## A121568.P9395136765829588611

`A103609(A000040(n+2))`
-/

namespace A121568.P9395136765829588611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 (A000040 (n + 2)).toNat

end

end A121568.P9395136765829588611

namespace A121568

/-- `A103609(A000040(n+2))` -/
def P9395136765829588611.Spec : Prop :=
  ∀ n, P9395136765829588611.a n = A121568 (n + 2)

end A121568

/-! ## A121568.P10707763783237222374

`A103610(A001749(n+2))`
-/

namespace A121568.P10707763783237222374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103610 (A001749 (n + 2)).toNat

end

end A121568.P10707763783237222374

namespace A121568

/-- `A103610(A001749(n+2))` -/
def P10707763783237222374.Spec : Prop :=
  ∀ n, P10707763783237222374.a n = A121568 (n + 2)

end A121568

/-!
# A121569: a(n) = Fibonacci((prime(n)+3)/2) - 1.

The programs for A121569, the canonical program `A121569.P8215718844498572166` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121569 has offset 2).

The definition of A121569 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000045((A000040(n+2)+3)/2)-1` (program `A121569.P8215718844498572166`, by `A121569.P8215718844498572166.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A121569.P8215718844498572166

`A000045((A000040(n+2)+3)/2)-1`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A121569

/-- `A000045((A000040(n+2)+3)/2)-1` -/
def P8215718844498572166.Spec : Prop :=
  ∀ n, P8215718844498572166.a n = A121569 (n + 2)

theorem P8215718844498572166.correct : P8215718844498572166.Spec := by
  intro n
  simp only [A121569, Nat.add_sub_cancel]

end A121569

/-! ## A121569.P14223299070441536349

`A131524(p?[2*n+1])`
-/

namespace A121569.P14223299070441536349
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131524 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A121569.P14223299070441536349

namespace A121569

/-- `A131524(p?[2*n+1])` -/
def P14223299070441536349.Spec : Prop :=
  ∀ n, P14223299070441536349.a n = A121569 (n + 2)

end A121569

/-! ## A121569.P3358746113464943706

`A250114(p?[2*n+1])`
-/

namespace A121569.P3358746113464943706
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250114 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A121569.P3358746113464943706

namespace A121569

/-- `A250114(p?[2*n+1])` -/
def P3358746113464943706.Spec : Prop :=
  ∀ n, P3358746113464943706.a n = A121569 (n + 2)

end A121569

/-! ## A121569.P15915441709861159405

`A000045((p?[2*n+1]+3)/2)-1`
-/

namespace A121569.P15915441709861159405
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.roundAway ((f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) + 3 : ℚ) / 2)).toNat - 1

end

end A121569.P15915441709861159405

namespace A121569

/-- `A000045((p?[2*n+1]+3)/2)-1` -/
def P15915441709861159405.Spec : Prop :=
  ∀ n, P15915441709861159405.a n = A121569 (n + 2)

end A121569

/-! ## A121569.P1425648733256258237

`A000071(A098090(n+1))`
-/

namespace A121569.P1425648733256258237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (A098090 (n + 1)).toNat

end

end A121569.P1425648733256258237

namespace A121569

/-- `A000071(A098090(n+1))` -/
def P1425648733256258237.Spec : Prop :=
  ∀ n, P1425648733256258237.a n = A121569 (n + 2)

end A121569

/-! ## A121569.P8489982107318478906

`A131524(A065091(n+1))`
-/

namespace A121569.P8489982107318478906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131524 (A065091 (n + 1)).toNat

end

end A121569.P8489982107318478906

namespace A121569

/-- `A131524(A065091(n+1))` -/
def P8489982107318478906.Spec : Prop :=
  ∀ n, P8489982107318478906.a n = A121569 (n + 2)

end A121569

/-! ## A121569.P16256268581018951594

`A131524(A135731(n+1))`
-/

namespace A121569.P16256268581018951594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131524 (A135731 (n + 1)).toNat

end

end A121569.P16256268581018951594

namespace A121569

/-- `A131524(A135731(n+1))` -/
def P16256268581018951594.Spec : Prop :=
  ∀ n, P16256268581018951594.a n = A121569 (n + 2)

end A121569

/-! ## A121569.P7733520309588780420

`A250114(A045344(n+1))`
-/

namespace A121569.P7733520309588780420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250114 (A045344 (n + 1)).toNat

end

end A121569.P7733520309588780420

namespace A121569

/-- `A250114(A045344(n+1))` -/
def P7733520309588780420.Spec : Prop :=
  ∀ n, P7733520309588780420.a n = A121569 (n + 2)

end A121569

/-! ## A121569.P16596196417488973044

`A163227(A165972(n+1))`
-/

namespace A121569.P16596196417488973044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163227 (A165972 (n + 1)).toNat

end

end A121569.P16596196417488973044

namespace A121569

/-- `A163227(A165972(n+1))` -/
def P16596196417488973044.Spec : Prop :=
  ∀ n, P16596196417488973044.a n = A121569 (n + 2)

end A121569

/-! ## A121569.P13350744302597699119

`A226538(A154115(n+1))`
-/

namespace A121569.P13350744302597699119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226538 (A154115 (n + 1)).toNat

end

end A121569.P13350744302597699119

namespace A121569

/-- `A226538(A154115(n+1))` -/
def P13350744302597699119.Spec : Prop :=
  ∀ n, P13350744302597699119.a n = A121569 (n + 2)

end A121569

/-! ## A121569.P2899310952124205191

`A250114(A140475(n+1))`
-/

namespace A121569.P2899310952124205191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250114 (A140475 (n + 1)).toNat

end

end A121569.P2899310952124205191

namespace A121569

/-- `A250114(A140475(n+1))` -/
def P2899310952124205191.Spec : Prop :=
  ∀ n, P2899310952124205191.a n = A121569 (n + 2)

end A121569

/-! ## A121569.P3308526717607459561

`A003980(A104293(n+2))`
-/

namespace A121569.P3308526717607459561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003980 (A104293 (n + 2)).toNat

end

end A121569.P3308526717607459561

namespace A121569

/-- `A003980(A104293(n+2))` -/
def P3308526717607459561.Spec : Prop :=
  ∀ n, P3308526717607459561.a n = A121569 (n + 2)

end A121569

/-! ## A121569.P8422748745921620156

`A131524(A000040(n+2))`
-/

namespace A121569.P8422748745921620156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131524 (A000040 (n + 2)).toNat

end

end A121569.P8422748745921620156

namespace A121569

/-- `A131524(A000040(n+2))` -/
def P8422748745921620156.Spec : Prop :=
  ∀ n, P8422748745921620156.a n = A121569 (n + 2)

end A121569

/-! ## A121569.P9581989494658129921

`A131524(A006005(n+2))`
-/

namespace A121569.P9581989494658129921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131524 (A006005 (n + 2)).toNat

end

end A121569.P9581989494658129921

namespace A121569

/-- `A131524(A006005(n+2))` -/
def P9581989494658129921.Spec : Prop :=
  ∀ n, P9581989494658129921.a n = A121569 (n + 2)

end A121569

/-! ## A121569.P6515373529102226869

`A131524(A008864(n+2))`
-/

namespace A121569.P6515373529102226869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131524 (A008864 (n + 2)).toNat

end

end A121569.P6515373529102226869

namespace A121569

/-- `A131524(A008864(n+2))` -/
def P6515373529102226869.Spec : Prop :=
  ∀ n, P6515373529102226869.a n = A121569 (n + 2)

end A121569

/-! ## A121569.P4424155821274131140

`A163227(A006093(n+2))`
-/

namespace A121569.P4424155821274131140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163227 (A006093 (n + 2)).toNat

end

end A121569.P4424155821274131140

namespace A121569

/-- `A163227(A006093(n+2))` -/
def P4424155821274131140.Spec : Prop :=
  ∀ n, P4424155821274131140.a n = A121569 (n + 2)

end A121569

/-! ## A121569.P12475635069248857398

`A131524(A055670(n+2))`
-/

namespace A121569.P12475635069248857398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131524 (A055670 (n + 2)).toNat

end

end A121569.P12475635069248857398

namespace A121569

/-- `A131524(A055670(n+2))` -/
def P12475635069248857398.Spec : Prop :=
  ∀ n, P12475635069248857398.a n = A121569 (n + 2)

end A121569

/-! ## A121569.P1460789407784566101

`A163227(A039915(n+2))`
-/

namespace A121569.P1460789407784566101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163227 (A039915 (n + 2)).toNat

end

end A121569.P1460789407784566101

namespace A121569

/-- `A163227(A039915(n+2))` -/
def P1460789407784566101.Spec : Prop :=
  ∀ n, P1460789407784566101.a n = A121569 (n + 2)

end A121569

/-! ## A121569.P9722416605724388910

`record[A163227(A000010(n+1))]`
-/

namespace A121569.P9722416605724388910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163227 (A000010 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A121569.P9722416605724388910

namespace A121569

/-- `record[A163227(A000010(n+1))]` -/
def P9722416605724388910.Spec : Prop :=
  ∀ n, P9722416605724388910.a n = A121569 (n + 2)

end A121569

/-! ## A121569.P13761845230786742834

`record[A250114(A006530(n+1))]`
-/

namespace A121569.P13761845230786742834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250114 (A006530 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A121569.P13761845230786742834

namespace A121569

/-- `record[A250114(A006530(n+1))]` -/
def P13761845230786742834.Spec : Prop :=
  ∀ n, P13761845230786742834.a n = A121569 (n + 2)

end A121569

/-!
# A121572: Subprimorials: inverse binomial transform of primorials (A002110).

The programs for A121572, there is no canonical definition to state claims against.
-/

/-! ## A121572.P1614368323092808920

`A069609(a(n-1)+4)` with `a(0)=1, a(1)=1`
-/

namespace A121572.P1614368323092808920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A069609 (a (n - 1) + 4).toNat

end

end A121572.P1614368323092808920

/-! ## A121572.P12360444871358405515

`A188469(or(A000392(n), A188489(n)))`
-/

namespace A121572.P12360444871358405515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188469 (Int.lor (A000392 n) (A188489 n)).toNat

end

end A121572.P12360444871358405515

/-!
# A121573: Prime-gap race; difference of the cumulative sums of gaps above and below prime(2n).

The programs for A121573, the canonical program `A121573.P1415581596517453918` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121573 has offset 1).

The definition of A121573 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A121573.P1415581596517453918

`A000040(2*(n+1)+1)-2*A008347(2*(n+1))-2`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A121573

/-- `A000040(2*(n+1)+1)-2*A008347(2*(n+1))-2` -/
def P1415581596517453918.Spec : Prop :=
  ∀ n, P1415581596517453918.a n = A121573 (n + 1)

theorem P1415581596517453918.correct : P1415581596517453918.Spec := by
  intro n
  simp only [A121573, Nat.add_sub_cancel]

end A121573

/-! ## A121573.P7764972516813838342

`∑[A036263(Δ[n²])]`
-/

namespace A121573.P7764972516813838342
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036263 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121573.P7764972516813838342

namespace A121573

/-- `∑[A036263(Δ[n²])]` -/
def P7764972516813838342.Spec : Prop :=
  ∀ n, P7764972516813838342.a n = A121573 (n + 1)

end A121573

/-! ## A121573.P6035081196921137722

`A330547(2*n+3)-2`
-/

namespace A121573.P6035081196921137722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330547 (2 * n + 3) - 2

end

end A121573.P6035081196921137722

namespace A121573

/-- `A330547(2*n+3)-2` -/
def P6035081196921137722.Spec : Prop :=
  ∀ n, P6035081196921137722.a n = A121573 (n + 1)

end A121573

/-! ## A121573.P651972627294646014

`or(1, ∑[A036263(2*n+1)])`
-/

namespace A121573.P651972627294646014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036263 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A121573.P651972627294646014

namespace A121573

/-- `or(1, ∑[A036263(2*n+1)])` -/
def P651972627294646014.Spec : Prop :=
  ∀ n, P651972627294646014.a n = A121573 (n + 1)

end A121573

/-! ## A121573.P8906326736553631704

`∑[A088680(n+1)-A078584(n+1)]`
-/

namespace A121573.P8906326736553631704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088680 (n + 1) - A078584 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121573.P8906326736553631704

namespace A121573

/-- `∑[A088680(n+1)-A078584(n+1)]` -/
def P8906326736553631704.Spec : Prop :=
  ∀ n, P8906326736553631704.a n = A121573 (n + 1)

end A121573

/-! ## A121573.P2933582166529359810

`∑[A256736(n+1)-A256737(n+1)]`
-/

namespace A121573.P2933582166529359810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256736 (n + 1) - A256737 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121573.P2933582166529359810

namespace A121573

/-- `∑[A256736(n+1)-A256737(n+1)]` -/
def P2933582166529359810.Spec : Prop :=
  ∀ n, P2933582166529359810.a n = A121573 (n + 1)

end A121573

/-! ## A121573.P1372909638554506758

`∑[A088680(n+1)-A001223(Δ[n²])]`
-/

namespace A121573.P1372909638554506758
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088680 (n + 1) - A001223 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121573.P1372909638554506758

namespace A121573

/-- `∑[A088680(n+1)-A001223(Δ[n²])]` -/
def P1372909638554506758.Spec : Prop :=
  ∀ n, P1372909638554506758.a n = A121573 (n + 1)

end A121573

/-! ## A121573.P6112307600716984329

`∑[A088680(n+1)-(A256737(n+1)+1)]`
-/

namespace A121573.P6112307600716984329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088680 (n + 1) - (A256737 (n + 1) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121573.P6112307600716984329

namespace A121573

/-- `∑[A088680(n+1)-(A256737(n+1)+1)]` -/
def P6112307600716984329.Spec : Prop :=
  ∀ n, P6112307600716984329.a n = A121573 (n + 1)

end A121573

/-! ## A121573.P13875815965502540993

`∑[A001223(2*(n+1))-A078584(n+1)]`
-/

namespace A121573.P13875815965502540993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (2 * (n + 1)) - A078584 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121573.P13875815965502540993

namespace A121573

/-- `∑[A001223(2*(n+1))-A078584(n+1)]` -/
def P13875815965502540993.Spec : Prop :=
  ∀ n, P13875815965502540993.a n = A121573 (n + 1)

end A121573

/-! ## A121573.P17651790352283545863

`∑[A001223(2*(n+1))-A001223(Δ[n²])]`
-/

namespace A121573.P17651790352283545863
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (2 * (n + 1)) - A001223 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121573.P17651790352283545863

namespace A121573

/-- `∑[A001223(2*(n+1))-A001223(Δ[n²])]` -/
def P17651790352283545863.Spec : Prop :=
  ∀ n, P17651790352283545863.a n = A121573 (n + 1)

end A121573

/-! ## A121573.P1627809831039403768

`A330545(2*n+3)-2`
-/

namespace A121573.P1627809831039403768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330545 (2 * n + 3) - 2

end

end A121573.P1627809831039403768

namespace A121573

/-- `A330545(2*n+3)-2` -/
def P1627809831039403768.Spec : Prop :=
  ∀ n, P1627809831039403768.a n = A121573 (n + 1)

end A121573

/-! ## A121573.P9594861058790071847

`A001223(2*(n+1))-A308655(2*n+1)`
-/

namespace A121573.P9594861058790071847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (2 * (n + 1)) - A308655 (2 * n + 1)

end

end A121573.P9594861058790071847

namespace A121573

/-- `A001223(2*(n+1))-A308655(2*n+1)` -/
def P9594861058790071847.Spec : Prop :=
  ∀ n, P9594861058790071847.a n = A121573 (n + 1)

end A121573

/-! ## A121573.P17368400093657085559

`∑[A046933(2*(n+1))-A046933(2*n+1)]`
-/

namespace A121573.P17368400093657085559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046933 (2 * (n + 1)) - A046933 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121573.P17368400093657085559

namespace A121573

/-- `∑[A046933(2*(n+1))-A046933(2*n+1)]` -/
def P17368400093657085559.Spec : Prop :=
  ∀ n, P17368400093657085559.a n = A121573 (n + 1)

end A121573

/-! ## A121573.P63591305717030810

`A308655(2*(n+1))-2*A308655(2*(n+1))`
-/

namespace A121573.P63591305717030810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308655 (2 * (n + 1)) - 2 * A308655 (2 * (n + 1))

end

end A121573.P63591305717030810

namespace A121573

/-- `A308655(2*(n+1))-2*A308655(2*(n+1))` -/
def P63591305717030810.Spec : Prop :=
  ∀ n, P63591305717030810.a n = A121573 (n + 1)

end A121573

/-! ## A121573.P8525236967174411229

`∑[log2(A218075(2*(n+1))/A218075(2*n+1))]`
-/

namespace A121573.P8525236967174411229
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 ((A218075 (2 * (n + 1)) : ℚ) / (A218075 (2 * n + 1) : ℚ) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121573.P8525236967174411229

namespace A121573

/-- `∑[log2(A218075(2*(n+1))/A218075(2*n+1))]` -/
def P8525236967174411229.Spec : Prop :=
  ∀ n, P8525236967174411229.a n = (A121573 (n + 1) : ℝ)

end A121573

/-! ## A121573.P17931725219378493861

`∑[A088680(n+1)-(A000040(2*(n+1))-A000040(2*n+1))]`
-/

namespace A121573.P17931725219378493861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088680 (n + 1) - (A000040 (2 * (n + 1)) - A000040 (2 * n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121573.P17931725219378493861

namespace A121573

/-- `∑[A088680(n+1)-(A000040(2*(n+1))-A000040(2*n+1))]` -/
def P17931725219378493861.Spec : Prop :=
  ∀ n, P17931725219378493861.a n = A121573 (n + 1)

end A121573

/-! ## A121573.P14039637785637523431

`∑[A001223(2*(n+1))-(A000040(2*(n+1))-A000040(2*n+1))]`
-/

namespace A121573.P14039637785637523431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (2 * (n + 1)) - (A000040 (2 * (n + 1)) - A000040 (2 * n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121573.P14039637785637523431

namespace A121573

/-- `∑[A001223(2*(n+1))-(A000040(2*(n+1))-A000040(2*n+1))]` -/
def P14039637785637523431.Spec : Prop :=
  ∀ n, P14039637785637523431.a n = A121573 (n + 1)

end A121573

/-! ## A121573.P7575807813900802878

`∑[A054541(2*n+3)-A078584(n+1)]`
-/

namespace A121573.P7575807813900802878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (2 * n + 3) - A078584 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121573.P7575807813900802878

namespace A121573

/-- `∑[A054541(2*n+3)-A078584(n+1)]` -/
def P7575807813900802878.Spec : Prop :=
  ∀ n, P7575807813900802878.a n = A121573 (n + 1)

end A121573

/-! ## A121573.P11660477685607262387

`A036467(2*n+3)-A036467(2*(n+1))`
-/

namespace A121573.P11660477685607262387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036467 (2 * n + 3) - A036467 (2 * (n + 1))

end

end A121573.P11660477685607262387

namespace A121573

/-- `A036467(2*n+3)-A036467(2*(n+1))` -/
def P11660477685607262387.Spec : Prop :=
  ∀ n, P11660477685607262387.a n = A121573 (n + 1)

end A121573

/-! ## A121573.P16057452036945721923

`∑[A054541(2*n+3)-(A256737(n+1)+1)]`
-/

namespace A121573.P16057452036945721923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (2 * n + 3) - (A256737 (n + 1) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121573.P16057452036945721923

namespace A121573

/-- `∑[A054541(2*n+3)-(A256737(n+1)+1)]` -/
def P16057452036945721923.Spec : Prop :=
  ∀ n, P16057452036945721923.a n = A121573 (n + 1)

end A121573

/-!
# A121574: Riordan array (1/(1-2*x), x*(1+x)/(1-2*x)).

The programs for A121574, the canonical program `A121574.P15482589254099092378` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121574 has offset 0).

The definition of A121574 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A121574.P15482589254099092378

`2*T(n-1,k)+T(n-1,k-1)+T(n-2,k-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A121574

/-- `2*T(n-1,k)+T(n-1,k-1)+T(n-2,k-1)` -/
def P15482589254099092378.Spec : Prop :=
  ∀ n, (P15482589254099092378.a n : ℤ) = A121574 n

theorem P15482589254099092378.correct : P15482589254099092378.Spec := by
  intro n
  simp only [A121574]

end A121574

/-! ## A121574.P13680715280729868012

`A059473(n)/A059268(n)`
-/

namespace A121574.P13680715280729868012
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059473 n : ℚ) / (A059268 n : ℚ)

end

end A121574.P13680715280729868012

namespace A121574

/-- `A059473(n)/A059268(n)` -/
def P13680715280729868012.Spec : Prop :=
  ∀ n, P13680715280729868012.a n = (A121574 n : ℚ)

end A121574

/-! ## A121574.P5047783842562691780

`A059473(n)/A000079(A002262(n))`
-/

namespace A121574.P5047783842562691780
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059473 n : ℚ) / (A000079 (A002262 n).toNat : ℚ)

end

end A121574.P5047783842562691780

namespace A121574

/-- `A059473(n)/A000079(A002262(n))` -/
def P5047783842562691780.Spec : Prop :=
  ∀ n, P5047783842562691780.a n = (A121574 n : ℚ)

end A121574

/-! ## A121574.P9466413478305340569

`A059473(n)/A013620(A112367(n))`
-/

namespace A121574.P9466413478305340569
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059473 n : ℚ) / (A013620 (A112367 n).toNat : ℚ)

end

end A121574.P9466413478305340569

namespace A121574

/-- `A059473(n)/A013620(A112367(n))` -/
def P9466413478305340569.Spec : Prop :=
  ∀ n, P9466413478305340569.a n = (A121574 n : ℚ)

end A121574

/-! ## A121574.P11008303817613773813

`A059473(n)/A011782(A002260(n+1))`
-/

namespace A121574.P11008303817613773813
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059473 n : ℚ) / (A011782 (A002260 (n + 1)).toNat : ℚ)

end

end A121574.P11008303817613773813

namespace A121574

/-- `A059473(n)/A011782(A002260(n+1))` -/
def P11008303817613773813.Spec : Prop :=
  ∀ n, P11008303817613773813.a n = (A121574 n : ℚ)

end A121574

/-! ## A121574.P6698074518283878788

`round(A059473(n)/Δ[A018900(n+1)])`
-/

namespace A121574.P6698074518283878788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018900 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A059473 n : ℚ) / (f1 (n + 1) - f1 n : ℚ))

end

end A121574.P6698074518283878788

namespace A121574

/-- `round(A059473(n)/Δ[A018900(n+1)])` -/
def P6698074518283878788.Spec : Prop :=
  ∀ n, P6698074518283878788.a n = A121574 n

end A121574

/-! ## A121574.P13712726606969253768

`A059473(n)/A130321(A061579(n))`
-/

namespace A121574.P13712726606969253768
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059473 n : ℚ) / (A130321 (A061579 n).toNat : ℚ)

end

end A121574.P13712726606969253768

namespace A121574

/-- `A059473(n)/A130321(A061579(n))` -/
def P13712726606969253768.Spec : Prop :=
  ∀ n, P13712726606969253768.a n = (A121574 n : ℚ)

end A121574

/-! ## A121574.P3140827044461689875

`A059473(n)/A006519(A018900(n+1))`
-/

namespace A121574.P3140827044461689875
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059473 n : ℚ) / (A006519 (A018900 (n + 1)).toNat : ℚ)

end

end A121574.P3140827044461689875

namespace A121574

/-- `A059473(n)/A006519(A018900(n+1))` -/
def P3140827044461689875.Spec : Prop :=
  ∀ n, P3140827044461689875.a n = (A121574 n : ℚ)

end A121574

/-!
# A121575: Riordan array (-sqrt(4*x^2+8*x+1)+2*x+2, (sqrt(4*x^2+8*x+1)-2*x-1)/2).

The programs for A121575, there is no canonical definition to state claims against.
-/

/-! ## A121575.P459317569095030827

`A097807(n)*A121576(n)`
-/

namespace A121575.P459317569095030827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 n * A121576 n

end

end A121575.P459317569095030827

/-! ## A121575.P1288484010053174357

`A033999(A025581(n))*A121576(n)`
-/

namespace A121575.P1288484010053174357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A025581 n).toNat * A121576 n

end

end A121575.P1288484010053174357

/-! ## A121575.P13216163774924193880

`A033999(A051162(n))*A121576(n)`
-/

namespace A121575.P13216163774924193880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A051162 n).toNat * A121576 n

end

end A121575.P13216163774924193880

/-! ## A121575.P2839488473082407710

`A033999(A051933(n))*A121576(n)`
-/

namespace A121575.P2839488473082407710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A051933 n).toNat * A121576 n

end

end A121575.P2839488473082407710

/-! ## A121575.P6685756425153363450

`A057077(A099375(n))*A121576(n)`
-/

namespace A121575.P6685756425153363450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (A099375 n).toNat * A121576 n

end

end A121575.P6685756425153363450

/-! ## A121575.P1133505387823396013

`A062157(A004736(n+1))*A121576(n)`
-/

namespace A121575.P1133505387823396013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (A004736 (n + 1)).toNat * A121576 n

end

end A121575.P1133505387823396013

/-! ## A121575.P5307061597719756296

`A053122(n)/A078812(n)*A121576(n)`
-/

namespace A121575.P5307061597719756296
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053122 n : ℚ) / (A078812 n : ℚ) * (A121576 n : ℚ)

end

end A121575.P5307061597719756296

/-! ## A121575.P5846820461464027699

`A033999(A163652(n+1))*A121576(n)`
-/

namespace A121575.P5846820461464027699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A163652 (n + 1)).toNat * A121576 n

end

end A121575.P5846820461464027699

/-! ## A121575.P2056070143296315152

`A106400(A173787(n))*A121576(n)`
-/

namespace A121575.P2056070143296315152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106400 (A173787 n).toNat * A121576 n

end

end A121575.P2056070143296315152

/-! ## A121575.P5172680012296090777

`A121576(n)*A309873(A130321(n))`
-/

namespace A121575.P5172680012296090777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121576 n * A309873 (A130321 n).toNat

end

end A121575.P5172680012296090777

/-! ## A121575.P15772402621473951860

`A034947(A135764(n+1))*A121576(n)`
-/

namespace A121575.P15772402621473951860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034947 (A135764 (n + 1)).toNat * A121576 n

end

end A121575.P15772402621473951860

/-!
# A121576: Riordan array (2-2*x-sqrt(1-8*x+4*x^2), (1-2*x-sqrt(1-8*x+4*x^2))/2).

The programs for A121576, there is no canonical definition to state claims against.
-/

/-! ## A121576.P1686395191986226831

`abs(A121575(n))`
-/

namespace A121576.P1686395191986226831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A121575 n|

end

end A121576.P1686395191986226831

/-! ## A121576.P2223371559851589441

`A097807(n)*A121575(n)`
-/

namespace A121576.P2223371559851589441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 n * A121575 n

end

end A121576.P2223371559851589441

/-! ## A121576.P14174431778863792237

`gcd(A000038(n), A121575(n))`
-/

namespace A121576.P14174431778863792237
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A121575 n)

end

end A121576.P14174431778863792237

/-! ## A121576.P3522792160115595885

`lcm(A020985(n), A121575(n))`
-/

namespace A121576.P3522792160115595885
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A121575 n)

end

end A121576.P3522792160115595885

/-! ## A121576.P12508780384116224196

`lcm(-A121575(n), A309873(n+1))`
-/

namespace A121576.P12508780384116224196
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (-A121575 n) (A309873 (n + 1))

end

end A121576.P12508780384116224196

/-! ## A121576.P8430111478816292212

`A033999(A025581(n))*A121575(n)`
-/

namespace A121576.P8430111478816292212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A025581 n).toNat * A121575 n

end

end A121576.P8430111478816292212

/-! ## A121576.P6880048074948777010

`sqrt(A121575(n)*A121575(n%(n+1)))`
-/

namespace A121576.P6880048074948777010
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A121575 n * A121575 (n % (n + 1)) : ℝ)

end

end A121576.P6880048074948777010

/-!
# A121578: Values m of number pairs (m,n) which yield associated matching times on the clock with interchanged hour and minute hands for corresponding n in A121577.

The programs for A121578, there is no canonical definition to state claims against.
-/

/-! ## A121578.P14702454676714029517

`(12*n)%143`
-/

namespace A121578.P14702454676714029517
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12 * n % 143

end

end A121578.P14702454676714029517

/-! ## A121578.P44213243544505651

`A056961(n+12)-1`
-/

namespace A121578.P44213243544505651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056961 (n + 12) - 1

end

end A121578.P44213243544505651

/-! ## A121578.P4531885478647444983

`13*A053832(n)-n`
-/

namespace A121578.P4531885478647444983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  13 * A053832 n - (n : ℤ)

end

end A121578.P4531885478647444983

/-! ## A121578.P16972133392247993933

`A023443(A056961(n+12))`
-/

namespace A121578.P16972133392247993933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A056961 (n + 12)).toNat

end

end A121578.P16972133392247993933

/-! ## A121578.P13454661610720641898

`A008595(A053832(n))-n`
-/

namespace A121578.P13454661610720641898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008595 (A053832 n).toNat - (n : ℤ)

end

end A121578.P13454661610720641898

/-! ## A121578.P12752624363127633162

`A053832(n)+11*A010881(n)`
-/

namespace A121578.P12752624363127633162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053832 n + 11 * A010881 n

end

end A121578.P12752624363127633162

/-! ## A121578.P14297597654841555959

`A064459(n)+12*A010881(n)`
-/

namespace A121578.P14297597654841555959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064459 n + 12 * A010881 n

end

end A121578.P14297597654841555959

/-! ## A121578.P5115611299069576571

`A190991(A053832(n))-A000027(n+1)`
-/

namespace A121578.P5115611299069576571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190991 (A053832 n).toNat - A000027 (n + 1)

end

end A121578.P5115611299069576571

/-!
# A121580: Number of cells in column 1 of all deco polyominoes of height n. A deco polyomino is a directed column-convex polyomino in which the height, measured along the diagonal, is attained only in the last column.

The programs for A121580, the canonical program `A121580.P2977706538578778050` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121580 has offset 1).

The definition of A121580 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A121580.P2977706538578778050

`a(n-1)+n!*(1+(n+1)*n/2)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A121580

/-- `a(n-1)+n!*(1+(n+1)*n/2)` -/
def P2977706538578778050.Spec : Prop :=
  ∀ n, P2977706538578778050.a n = (A121580 (n + 1) : ℚ)

end A121580

/-! ## A121580.P17563187692468541247

`∑[n!*(∑[n]+1)]`
-/

namespace A121580.P17563187692468541247
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n * (∑ j ∈ Finset.range (n + 1), f2 j + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121580.P17563187692468541247

namespace A121580

/-- `∑[n!*(∑[n]+1)]` -/
def P17563187692468541247.Spec : Prop :=
  ∀ n, (P17563187692468541247.a n : ℤ) = A121580 (n + 1)

end A121580

/-! ## A121580.P4354881779647225287

`Δ[n/2*∑[n!]]`
-/

namespace A121580.P4354881779647225287
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A121580.P4354881779647225287

namespace A121580

/-- `Δ[n/2*∑[n!]]` -/
def P4354881779647225287.Spec : Prop :=
  ∀ n, P4354881779647225287.a n = (A121580 (n + 1) : ℚ)

end A121580

/-! ## A121580.P15724149821471719177

`Δ[n*∑[n*a(n-1)]]` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A121580.P15724149821471719177
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 1] fun n f2 =>
  n * f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A121580.P15724149821471719177

namespace A121580

/-- `Δ[n*∑[n*a(n-1)]]` -/
def P15724149821471719177.Spec : Prop :=
  ∀ n, P15724149821471719177.a n = A121580 (n + 1)

end A121580

/-! ## A121580.P8758982092313158146

`∑[A121635(n+2)]`
-/

namespace A121580.P8758982092313158146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121635 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121580.P8758982092313158146

namespace A121580

/-- `∑[A121635(n+2)]` -/
def P8758982092313158146.Spec : Prop :=
  ∀ n, P8758982092313158146.a n = A121580 (n + 1)

end A121580

/-! ## A121580.P14051422834367648160

`Δ[n*A014288(n)]`
-/

namespace A121580.P14051422834367648160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A014288 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A121580.P14051422834367648160

namespace A121580

/-- `Δ[n*A014288(n)]` -/
def P14051422834367648160.Spec : Prop :=
  ∀ n, P14051422834367648160.a n = A121580 (n + 1)

end A121580

/-! ## A121580.P2547710347503414557

`A014288(n+2)-A000142(n+1)`
-/

namespace A121580.P2547710347503414557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014288 (n + 2) - A000142 (n + 1)

end

end A121580.P2547710347503414557

namespace A121580

/-- `A014288(n+2)-A000142(n+1)` -/
def P2547710347503414557.Spec : Prop :=
  ∀ n, P2547710347503414557.a n = A121580 (n + 1)

end A121580

/-! ## A121580.P13010218284357441851

`∑[∑[A074143(n+1)]-A001563(n)]`
-/

namespace A121580.P13010218284357441851
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074143 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A001563 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121580.P13010218284357441851

namespace A121580

/-- `∑[∑[A074143(n+1)]-A001563(n)]` -/
def P13010218284357441851.Spec : Prop :=
  ∀ n, P13010218284357441851.a n = A121580 (n + 1)

end A121580

/-! ## A121580.P18208112400651750918

`A121584(n+1)-A121582(n+1)`
-/

namespace A121580.P18208112400651750918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121584 (n + 1) - A121582 (n + 1)

end

end A121580.P18208112400651750918

namespace A121580

/-- `A121584(n+1)-A121582(n+1)` -/
def P18208112400651750918.Spec : Prop :=
  ∀ n, P18208112400651750918.a n = A121580 (n + 1)

end A121580

/-!
# A121581: Triangle read by rows: T(n,k) is the number of deco polyominoes of height n having k cells in the second column (n>=1, k>=0). A deco polyomino is a directed column-convex polyomino in which the height, measured along the diagonal, is attained only in the last column.

The programs for A121581, there is no canonical definition to state claims against.
-/

/-! ## A121581.P11585086398496682131

`and(A146614(A004277(n)), A162976(n))`
-/

namespace A121581.P11585086398496682131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A146614 (A004277 n).toNat) (A162976 n)

end

end A121581.P11585086398496682131

/-! ## A121581.P9382946438793477022

`A162976(n)-A185236(A146921(n+1))`
-/

namespace A121581.P9382946438793477022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162976 n - A185236 (A146921 (n + 1)).toNat

end

end A121581.P9382946438793477022

/-! ## A121581.P11869377962765947640

`A262040(A243055(n+1)+A060540(n+1))`
-/

namespace A121581.P11869377962765947640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262040 (A243055 (n + 1) + A060540 (n + 1)).toNat

end

end A121581.P11869377962765947640

/-!
# A121582: Number of cells in column 2 of all deco polyominoes of height n. A deco polyomino is a directed column-convex polyomino in which the height, measured along the diagonal, is attained only in the last column.

The programs for A121582, there is no canonical definition to state claims against.
-/

/-! ## A121582.P8774388603003777540

`A121584(n+1)-A121580(n+1)`
-/

namespace A121582.P8774388603003777540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121584 (n + 1) - A121580 (n + 1)

end

end A121582.P8774388603003777540

/-! ## A121582.P17048408445982394791

`A121584(n+1)-∑[A121635(n+2)]`
-/

namespace A121582.P17048408445982394791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121635 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121584 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121582.P17048408445982394791

/-! ## A121582.P7552103193247372577

`A121584(A000027(n+1))%A121580(n+1)`
-/

namespace A121582.P7552103193247372577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A121584 (A000027 (n + 1)).toNat) (A121580 (n + 1))

end

end A121582.P7552103193247372577

/-! ## A121582.P10943205759274889799

`A121584(A328617(n+1))%A121580(n+1)`
-/

namespace A121582.P10943205759274889799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A121584 (A328617 (n + 1)).toNat) (A121580 (n + 1))

end

end A121582.P10943205759274889799

/-!
# A121584: Number of cells in columns 1 and 2 of all deco polyominoes of height n. A deco polyomino is a directed column-convex polyomino in which the height, measured along the diagonal, is attained only in the last column.

The programs for A121584, there is no canonical definition to state claims against.
-/

/-! ## A121584.P15958321074499004919

`A121582(n+1)+Δ[n/2*∑[n!]]`
-/

namespace A121584.P15958321074499004919
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A121582 (n + 1) : ℚ) + (f1 (n + 1) - f1 n)

end

end A121584.P15958321074499004919

/-! ## A121584.P13725013028220138836

`A121582(n+1)+A121580(n+1)`
-/

namespace A121584.P13725013028220138836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121582 (n + 1) + A121580 (n + 1)

end

end A121584.P13725013028220138836

/-! ## A121584.P7644791026054560780

`A121582(n+1)+∑[A121635(n+2)]`
-/

namespace A121584.P7644791026054560780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121635 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121582 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121584.P7644791026054560780

/-! ## A121584.P11657390085757980934

`A121582(n+1)+Δ[n*A014288(n)]`
-/

namespace A121584.P11657390085757980934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A014288 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121582 (n + 1) + (f1 (n + 1) - f1 n)

end

end A121584.P11657390085757980934

/-! ## A121584.P5615796631421428073

`A121582(n+1)+A237450(∑[n+2])/2`
-/

namespace A121584.P5615796631421428073
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A121582 (n + 1) : ℚ) + (A237450 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 2

end

end A121584.P5615796631421428073

/-!
# A121586: Number of columns in all deco polyominoes of height n. A deco polyomino is a directed column-convex polyomino in which the height, measured along the diagonal, is attained only in the last column.

The programs for A121586, the canonical program `A121586.P9369557749238778293` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121586 has offset 0).

The definition of A121586 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A121586.P9369557749238778293

`n*a(n-1)+(n-1)!*(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A121586

/-- `n*a(n-1)+(n-1)!*(n-1)` -/
def P9369557749238778293.Spec : Prop :=
  ∀ n, P9369557749238778293.a n = A121586 n

theorem P9369557749238778293.correct : P9369557749238778293.Spec := by
  intro n
  simp only [A121586]

end A121586

/-! ## A121586.P1977524269945970558

`(n+1)!-A000254(n)`
-/

namespace A121586.P1977524269945970558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℤ) - A000254 n

end

end A121586.P1977524269945970558

namespace A121586

/-- `(n+1)!-A000254(n)` -/
def P1977524269945970558.Spec : Prop :=
  ∀ n, P1977524269945970558.a n = A121586 n

end A121586

/-! ## A121586.P2002699723895504447

`n!+n*a(n-1)-(n-1)!` with `a(0)=1`
-/

namespace A121586.P2002699723895504447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (Nat.factorial n : ℤ) + ((n : ℤ) * a (n - 1) - (Nat.factorial ((n : ℤ) - 1).toNat : ℤ))

end

end A121586.P2002699723895504447

namespace A121586

/-- `n!+n*a(n-1)-(n-1)!` -/
def P2002699723895504447.Spec : Prop :=
  ∀ n, P2002699723895504447.a n = A121586 n

end A121586

/-! ## A121586.P12317697256881822406

`A081047(n)+Δ[n!]`
-/

namespace A121586.P12317697256881822406
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081047 n + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A121586.P12317697256881822406

namespace A121586

/-- `A081047(n)+Δ[n!]` -/
def P12317697256881822406.Spec : Prop :=
  ∀ n, P12317697256881822406.a n = A121586 n

end A121586

/-! ## A121586.P12487650328833861102

`(n+1)!-(A000774(n)-n!)`
-/

namespace A121586.P12487650328833861102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℤ) - (A000774 n - (Nat.factorial n : ℤ))

end

end A121586.P12487650328833861102

namespace A121586

/-- `(n+1)!-(A000774(n)-n!)` -/
def P12487650328833861102.Spec : Prop :=
  ∀ n, P12487650328833861102.a n = A121586 n

end A121586

/-! ## A121586.P4133255372501824707

`∏[n+1]-A052517(n+1)/2`
-/

namespace A121586.P4133255372501824707
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) - (A052517 (n + 1) : ℚ) / 2

end

end A121586.P4133255372501824707

namespace A121586

/-- `∏[n+1]-A052517(n+1)/2` -/
def P4133255372501824707.Spec : Prop :=
  ∀ n, P4133255372501824707.a n = (A121586 n : ℚ)

end A121586

/-! ## A121586.P4594177368272168904

`∏[n+1]-A132393(∑[n+1]+2)`
-/

namespace A121586.P4594177368272168904
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A132393 (∑ j ∈ Finset.range (n + 1), f2 j + 2)

end

end A121586.P4594177368272168904

namespace A121586

/-- `∏[n+1]-A132393(∑[n+1]+2)` -/
def P4594177368272168904.Spec : Prop :=
  ∀ n, P4594177368272168904.a n = A121586 n

end A121586

/-! ## A121586.P8986859691153469136

`A081047(n)+A001563(n)`
-/

namespace A121586.P8986859691153469136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081047 n + A001563 n

end

end A121586.P8986859691153469136

namespace A121586

/-- `A081047(n)+A001563(n)` -/
def P8986859691153469136.Spec : Prop :=
  ∀ n, P8986859691153469136.a n = A121586 n

end A121586

/-! ## A121586.P11574993641893383116

`A081047(n)+Δ[A000142(n)]`
-/

namespace A121586.P11574993641893383116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081047 n + (f1 (n + 1) - f1 n)

end

end A121586.P11574993641893383116

namespace A121586

/-- `A081047(n)+Δ[A000142(n)]` -/
def P11574993641893383116.Spec : Prop :=
  ∀ n, P11574993641893383116.a n = A121586 n

end A121586

/-! ## A121586.P13066016823779348841

`A081047(n)+Δ[A038507(n)]`
-/

namespace A121586.P13066016823779348841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038507 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081047 n + (f1 (n + 1) - f1 n)

end

end A121586.P13066016823779348841

namespace A121586

/-- `A081047(n)+Δ[A038507(n)]` -/
def P13066016823779348841.Spec : Prop :=
  ∀ n, P13066016823779348841.a n = A121586 n

end A121586

/-!
# A121589: Series expansion of (eta(q^9) / eta(q))^3 in powers of q.

The programs for A121589, there is no canonical definition to state claims against.
-/

/-! ## A121589.P5795530689028840385

`abs(A227454(n+1))`
-/

namespace A121589.P5795530689028840385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A227454 (n + 1)|

end

end A121589.P5795530689028840385

/-! ## A121589.P9983317205827248315

`A033999(n)*A227454(n+1)`
-/

namespace A121589.P9983317205827248315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A227454 (n + 1)

end

end A121589.P9983317205827248315

/-! ## A121589.P16301562125041262146

`gcd(A000038(n), A227454(n+1))`
-/

namespace A121589.P16301562125041262146
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A227454 (n + 1))

end

end A121589.P16301562125041262146

/-! ## A121589.P15398181633960355209

`lcm(A020985(n), A227454(n+1))`
-/

namespace A121589.P15398181633960355209
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A227454 (n + 1))

end

end A121589.P15398181633960355209

/-! ## A121589.P7444795133615416622

`A057077(2*n)*A227454(n+1)`
-/

namespace A121589.P7444795133615416622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (2 * n) * A227454 (n + 1)

end

end A121589.P7444795133615416622

/-! ## A121589.P215987287425859783

`(A004442(n)-n)*A227454(n+1)`
-/

namespace A121589.P215987287425859783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004442 n - (n : ℤ)) * A227454 (n + 1)

end

end A121589.P215987287425859783

/-! ## A121589.P12348443313701863080

`A227454(n+1)/A057077(A004277(n))`
-/

namespace A121589.P12348443313701863080
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A227454 (n + 1) : ℚ) / (A057077 (A004277 n).toNat : ℚ)

end

end A121589.P12348443313701863080

/-! ## A121589.P13562923357968032101

`A100051(A005408(n)+n)*A227454(n+1)`
-/

namespace A121589.P13562923357968032101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100051 (A005408 n + (n : ℤ)).toNat * A227454 (n + 1)

end

end A121589.P13562923357968032101

/-! ## A121589.P15851302664072424075

`A227454(n+1)/A057077(A057077(n)+n)`
-/

namespace A121589.P15851302664072424075
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A227454 (n + 1) : ℚ) / (A057077 (A057077 n + (n : ℤ)).toNat : ℚ)

end

end A121589.P15851302664072424075

/-! ## A121589.P8698429256181406971

`A121592(n+1)/A131713(n)`
-/

namespace A121589.P8698429256181406971
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A121592 (n + 1) : ℚ) / (A131713 n : ℚ)

end

end A121589.P8698429256181406971

/-! ## A121589.P16666007474355168715

`A121592(n+1)/(2-A057079(n)²)`
-/

namespace A121589.P16666007474355168715
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A121592 (n + 1) : ℚ) / (2 - A057079 n ^ 2 : ℚ)

end

end A121589.P16666007474355168715

/-! ## A121589.P7437958295669095856

`A215690(n+1)/9`
-/

namespace A121589.P7437958295669095856
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A215690 (n + 1) : ℚ) / 9

end

end A121589.P7437958295669095856

/-! ## A121589.P3677310545570660381

`A121592(n+1)/A057079(4*n)`
-/

namespace A121589.P3677310545570660381
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A121592 (n + 1) : ℚ) / (A057079 (4 * n) : ℚ)

end

end A121589.P3677310545570660381

/-! ## A121589.P8119311476253370323

`A100051(n²+1)*A227454(n+1)`
-/

namespace A121589.P8119311476253370323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100051 (n ^ 2 + 1) * A227454 (n + 1)

end

end A121589.P8119311476253370323

/-!
# A121590: Expansion of (eta(q^3) / eta(q))^12 in powers of q.

The programs for A121590, there is no canonical definition to state claims against.
-/

/-! ## A121590.P1240727774079921090

`A121589(3*(n+1))/9`
-/

namespace A121590.P1240727774079921090
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A121589 (3 * (n + 1)) : ℚ) / 9

end

end A121590.P1240727774079921090

/-! ## A121590.P15177274853313180862

`abs(A227454(3*(n+1))/9)`
-/

namespace A121590.P15177274853313180862
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A227454 (3 * (n + 1)) : ℚ) / 9|

end

end A121590.P15177274853313180862

/-! ## A121590.P11965842994373415916

`a(n-1)*ratio[A121589(A008486(n))]` with `a(0)=1`
-/

namespace A121590.P11965842994373415916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121589 (A008486 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * ((f1 (n + 1) : ℚ) / (f1 n : ℚ))

end

end A121590.P11965842994373415916

/-! ## A121590.P1113676937544377779

`A121592(3*(n+1))/9`
-/

namespace A121590.P1113676937544377779
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A121592 (3 * (n + 1)) : ℚ) / 9

end

end A121590.P1113676937544377779

/-! ## A121590.P8655463001614837158

`A290405(n+1)/27`
-/

namespace A121590.P8655463001614837158
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A290405 (n + 1) : ℚ) / 27

end

end A121590.P8655463001614837158

/-!
# A121591: Expansion of (eta(q^5) / eta(q))^6 in powers of q.

The programs for A121591, there is no canonical definition to state claims against.
-/

/-! ## A121591.P7812690210156892790

`A092885(5*n+4)/5`
-/

namespace A121591.P7812690210156892790
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A092885 (5 * n + 4) : ℚ) / 5

end

end A121591.P7812690210156892790

/-! ## A121591.P10314185862323014400

`A071734(n)-A185264(n²+1)`
-/

namespace A121591.P10314185862323014400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071734 n - A185264 (n ^ 2 + 1)

end

end A121591.P10314185862323014400

/-!
# A121592: Expansion of (eta(q)eta(q^9)/eta(q^3)^2)^6 in powers of q.

The programs for A121592, there is no canonical definition to state claims against.
-/

/-! ## A121592.P3734721477625420815

`A121589(n+1)*A131713(n)`
-/

namespace A121592.P3734721477625420815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121589 (n + 1) * A131713 n

end

end A121592.P3734721477625420815

/-! ## A121592.P15900959870849500460

`A057079(n)*A227454(n+1)`
-/

namespace A121592.P15900959870849500460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057079 n * A227454 (n + 1)

end

end A121592.P15900959870849500460

/-! ## A121592.P18019328526741694667

`∑[A100051(n)]*A227454(n+1)`
-/

namespace A121592.P18019328526741694667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100051 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A227454 (n + 1)

end

end A121592.P18019328526741694667

/-! ## A121592.P9712694525293894790

`A061347(n+2)*A121589(n+1)`
-/

namespace A121592.P9712694525293894790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061347 (n + 2) * A121589 (n + 1)

end

end A121592.P9712694525293894790

/-! ## A121592.P10092716368312189248

`A101675(2*n)*A121589(n+1)`
-/

namespace A121592.P10092716368312189248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101675 (2 * n) * A121589 (n + 1)

end

end A121592.P10092716368312189248

/-! ## A121592.P1914762205214689995

`A100051(A005408(n))*A121589(n+1)`
-/

namespace A121592.P1914762205214689995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100051 (A005408 n).toNat * A121589 (n + 1)

end

end A121592.P1914762205214689995

/-! ## A121592.P10077974843579142468

`A100051(A020742(n))*A121589(n+1)`
-/

namespace A121592.P10077974843579142468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100051 (A020742 n).toNat * A121589 (n + 1)

end

end A121592.P10077974843579142468

/-! ## A121592.P10210886198157979280

`abs(A227454(n+1))*A100051(A005408(n))`
-/

namespace A121592.P10210886198157979280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A227454 (n + 1)| * A100051 (A005408 n).toNat

end

end A121592.P10210886198157979280

/-! ## A121592.P1446942640854264606

`A022597(∑[A102283(n)])*A121589(n+1)`
-/

namespace A121592.P1446942640854264606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102283 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022597 (∑ j ∈ Finset.range (n + 1), f1 j).toNat * A121589 (n + 1)

end

end A121592.P1446942640854264606

/-! ## A121592.P3229237939972564842

`(A049347(n)-A102283(n))*A121589(n+1)`
-/

namespace A121592.P3229237939972564842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A049347 n - A102283 n) * A121589 (n + 1)

end

end A121592.P3229237939972564842

/-!
# A121593: Expansion of (eta(q^7) / eta(q))^4 in powers of q.

The programs for A121593, there is no canonical definition to state claims against.
-/

/-! ## A121593.P6827464939519703442

`A160527(n)-A004526(A309861(n))`
-/

namespace A121593.P6827464939519703442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160527 n - A004526 (A309861 n).toNat

end

end A121593.P6827464939519703442

/-! ## A121593.P7989878984443315524

`A160527(n)-A025458(A193062(n+1))`
-/

namespace A121593.P7989878984443315524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160527 n - A025458 (A193062 (n + 1)).toNat

end

end A121593.P7989878984443315524

/-! ## A121593.P17277770924954706017

`A160527(n)-A329581(A324088(n+1))`
-/

namespace A121593.P17277770924954706017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160527 n - A329581 (A324088 (n + 1)).toNat

end

end A121593.P17277770924954706017

/-!
# A121594: Numbers k such that k does not divide the denominator of the k-th alternating Harmonic number.

The programs for A121594, there is no canonical definition to state claims against.
-/

/-! ## A121594.P8586957294806693213

`lt[1, A119788(n+1)]+1`
-/

namespace A121594.P8586957294806693213
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119788 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A121594.P8586957294806693213

/-! ## A121594.P17664956353346120289

`lt[1, A119788(A028310(n))]`
-/

namespace A121594.P17664956353346120289
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119788 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A121594.P17664956353346120289

/-! ## A121594.P10237490173919415165

`A065475(lt[1, A119788(n+1)])`
-/

namespace A121594.P10237490173919415165
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119788 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A121594.P10237490173919415165

/-! ## A121594.P4330760067001838569

`A153152(lt[1, A119788(n+1)])`
-/

namespace A121594.P4330760067001838569
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119788 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A121594.P4330760067001838569

/-! ## A121594.P8238188138975283442

`lt[1, A119788(A004277(n)-n)]`
-/

namespace A121594.P8238188138975283442
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119788 (A004277 n - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A121594.P8238188138975283442

/-!
# A121595: Compressed version of A119788 (all entries equal to 1 are excluded).

The programs for A121595, there is no canonical definition to state claims against.
-/

/-! ## A121595.P5434297414693388051

`A119788(A121594(n+1))`
-/

namespace A121595.P5434297414693388051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119788 (A121594 (n + 1)).toNat

end

end A121595.P5434297414693388051

/-! ## A121595.P2197657755200032911

`filter[A119788(n+1), A014306(#)]`
-/

namespace A121595.P2197657755200032911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119788 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A014306 (f1 j).toNat = 1) n)

end

end A121595.P2197657755200032911

/-! ## A121595.P9313986329924769575

`filter[A119788(n+1), A049240(#)]`
-/

namespace A121595.P9313986329924769575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119788 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A049240 (f1 j).toNat = 1) n)

end

end A121595.P9313986329924769575

/-! ## A121595.P15562388723178062911

`filter[A119788(n+1), A053867(#)]`
-/

namespace A121595.P15562388723178062911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119788 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A053867 (f1 j).toNat = 1) n)

end

end A121595.P15562388723178062911

/-! ## A121595.P9076086720215597884

`filter[A119788(n+1), A101040(#)]`
-/

namespace A121595.P9076086720215597884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119788 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101040 (f1 j).toNat = 1) n)

end

end A121595.P9076086720215597884

/-!
# A121596: Expansion of q^(-1/2)(eta(q^3)/eta(q))^6 in powers of q.

The programs for A121596, there is no canonical definition to state claims against.
-/

/-! ## A121596.P17705738215358421335

`abs(A264026(n))`
-/

namespace A121596.P17705738215358421335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A264026 n|

end

end A121596.P17705738215358421335

/-! ## A121596.P9609155898662820621

`A007262(3*n+2)/9`
-/

namespace A121596.P9609155898662820621
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007262 (3 * n + 2) : ℚ) / 9

end

end A121596.P9609155898662820621

/-! ## A121596.P12176492283919238218

`A033999(n)*A264026(n)`
-/

namespace A121596.P12176492283919238218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A264026 n

end

end A121596.P12176492283919238218

/-! ## A121596.P3697058202504194949

`gcd(A000038(n), A264026(n))`
-/

namespace A121596.P3697058202504194949
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A264026 n)

end

end A121596.P3697058202504194949

/-! ## A121596.P11358143084882414282

`lcm(A000034(n), A264026(n))`
-/

namespace A121596.P11358143084882414282
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A264026 n)

end

end A121596.P11358143084882414282

/-! ## A121596.P1597413959733200290

`A057077(2*n)*A264026(n)`
-/

namespace A121596.P1597413959733200290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (2 * n) * A264026 n

end

end A121596.P1597413959733200290

/-! ## A121596.P5842244298676801256

`A007262(n)/A132107(n)*A264026(n)`
-/

namespace A121596.P5842244298676801256
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007262 n : ℚ) / (A132107 n : ℚ) * (A264026 n : ℚ)

end

end A121596.P5842244298676801256

/-! ## A121596.P14199011564248583394

`A108561(∑[n]+n)*A264026(n)`
-/

namespace A121596.P14199011564248583394
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108561 (∑ j ∈ Finset.range (n + 1), f1 j + n) * A264026 n

end

end A121596.P14199011564248583394

/-!
# A121599: a(n) = number of earlier terms which are not divisible by the smallest prime dividing n, for n >= 2, with a(1) = 1.

The programs for A121599, there is no canonical definition to state claims against.
-/

/-! ## A121599.P6354729080012263342

`A096216(n+1)+A086078(A000079(n))`
-/

namespace A121599.P6354729080012263342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096216 (n + 1) + A086078 (A000079 n).toNat

end

end A121599.P6354729080012263342

/-! ## A121599.P14708286454652320359

`A370813(A000041(n))+A096216(n+1)`
-/

namespace A121599.P14708286454652320359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370813 (A000041 n).toNat + A096216 (n + 1)

end

end A121599.P14708286454652320359

/-! ## A121599.P142255265030446793

`A124761(A118350(3*n))+A096216(n+1)`
-/

namespace A121599.P142255265030446793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124761 (A118350 (3 * n)).toNat + A096216 (n + 1)

end

end A121599.P142255265030446793

/-! ## A121599.P3302224546847832256

`A096216(n+1)+A072627(A193039(n))`
-/

namespace A121599.P3302224546847832256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096216 (n + 1) + A072627 (A193039 n).toNat

end

end A121599.P3302224546847832256

/-! ## A121599.P10314689496417040285

`A178225(A259427(n+1))+A096216(n+1)`
-/

namespace A121599.P10314689496417040285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178225 (A259427 (n + 1)).toNat + A096216 (n + 1)

end

end A121599.P10314689496417040285

