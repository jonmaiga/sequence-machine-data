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
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
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
# A131900: A131821 + A128174 - A000012.

The programs for A131900, the canonical program `A131900.P2968770492461010124` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131900 has offset 0).

The definition of A131900 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A131900.P6043714239292064995

`round(xor(1, A131911(n+1)-1)/2)`
-/

namespace A131900.P6043714239292064995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Int.xor 1 (A131911 (n + 1) - 1) : ℚ) / 2)

end

end A131900.P6043714239292064995

namespace A131900

/-- `round(xor(1, A131911(n+1)-1)/2)` -/
def P6043714239292064995.Spec : Prop :=
  ∀ n, P6043714239292064995.a n = A131900 n

end A131900

/-! ## A131900.P8438371940560087764

`A144217(n+1)+2-gcd(2, comp[∑[4*n]])`
-/

namespace A131900.P8438371940560087764
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144217 (n + 1) + (2 - (Nat.gcd 2 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) : ℤ))

end

end A131900.P8438371940560087764

namespace A131900

/-- `A144217(n+1)+2-gcd(2, comp[∑[4*n]])` -/
def P8438371940560087764.Spec : Prop :=
  ∀ n, P8438371940560087764.a n = A131900 n

end A131900

/-! ## A131900.P4087540334067346611

`A028242(A131911(n+1)-1)`
-/

namespace A131900.P4087540334067346611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A131911 (n + 1) - 1).toNat

end

end A131900.P4087540334067346611

namespace A131900

/-- `A028242(A131911(n+1)-1)` -/
def P4087540334067346611.Spec : Prop :=
  ∀ n, P4087540334067346611.a n = A131900 n

end A131900

/-! ## A131900.P8160557226852531699

`A131830(n)+1-A134521(n)`
-/

namespace A131900.P8160557226852531699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131830 n + (1 - A134521 n)

end

end A131900.P8160557226852531699

namespace A131900

/-- `A131830(n)+1-A134521(n)` -/
def P8160557226852531699.Spec : Prop :=
  ∀ n, P8160557226852531699.a n = A131900 n

end A131900

/-! ## A131900.P5380055439855238015

`(A131843(n)+A097807(n))/2`
-/

namespace A131900.P5380055439855238015
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131843 n + A097807 n : ℚ) / 2

end

end A131900.P5380055439855238015

namespace A131900

/-- `(A131843(n)+A097807(n))/2` -/
def P5380055439855238015.Spec : Prop :=
  ∀ n, P5380055439855238015.a n = (A131900 n : ℚ)

end A131900

/-! ## A131900.P12545077601612418864

`A144217(n+1)+A128174(n+1)`
-/

namespace A131900.P12545077601612418864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144217 (n + 1) + A128174 (n + 1)

end

end A131900.P12545077601612418864

namespace A131900

/-- `A144217(n+1)+A128174(n+1)` -/
def P12545077601612418864.Spec : Prop :=
  ∀ n, P12545077601612418864.a n = A131900 n

theorem P12545077601612418864.correct : P12545077601612418864.Spec := by
  intro n
  simp only [A131900, Nat.add_sub_cancel, A131900.P12545077601612418864.a, A131900.P2968770492461010124.a, A025581, A025581.P16112744757063613497.a, A128174, A128174.P4745988875393872147.a, A131821, A131821.P13312494062197045656.a, A144217, A144217.P17527769007908988650.a, A131816, A131816.P3689264983321174764.a, A059268, A059268.P15217573790077737885.a, A130321, A130321.P54397649261359622.a, A018900, A018900.P2868698677378612256.a, A140513, A140513.P13579608035938851890.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A131900

/-! ## A131900.P3785913608472908821

`A144217(n+1)+A101447(n)%2`
-/

namespace A131900.P3785913608472908821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144217 (n + 1) + Int.tmod (A101447 n) 2

end

end A131900.P3785913608472908821

namespace A131900

/-- `A144217(n+1)+A101447(n)%2` -/
def P3785913608472908821.Spec : Prop :=
  ∀ n, P3785913608472908821.a n = A131900 n

end A131900

/-! ## A131900.P2968770492461010124

`A131821(n+1)-A025581(n)%2`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A131900

/-- `A131821(n+1)-A025581(n)%2` -/
def P2968770492461010124.Spec : Prop :=
  ∀ n, P2968770492461010124.a n = A131900 n

theorem P2968770492461010124.correct : P2968770492461010124.Spec := by
  intro n
  simp only [A131900]

end A131900

/-! ## A131900.P10346843637465969605

`A131821(n+1)-A051162(n)%2`
-/

namespace A131900.P10346843637465969605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131821 (n + 1) - Int.tmod (A051162 n) 2

end

end A131900.P10346843637465969605

namespace A131900

/-- `A131821(n+1)-A051162(n)%2` -/
def P10346843637465969605.Spec : Prop :=
  ∀ n, P10346843637465969605.a n = A131900 n

end A131900

/-! ## A131900.P16656646530074501478

`A128174(n+1)+A131821(n+1)-1`
-/

namespace A131900.P16656646530074501478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128174 (n + 1) + (A131821 (n + 1) - 1)

end

end A131900.P16656646530074501478

namespace A131900

/-- `A128174(n+1)+A131821(n+1)-1` -/
def P16656646530074501478.Spec : Prop :=
  ∀ n, P16656646530074501478.a n = A131900 n

theorem P16656646530074501478.correct : P16656646530074501478.Spec := by
  intro n
  simp only [A131900, Nat.add_sub_cancel, A131900.P16656646530074501478.a, A131900.P2968770492461010124.a, A025581, A025581.P16112744757063613497.a, A128174, A128174.P4745988875393872147.a, A131821, A131821.P13312494062197045656.a, A131816, A131816.P3689264983321174764.a, A059268, A059268.P15217573790077737885.a, A130321, A130321.P54397649261359622.a, A018900, A018900.P2868698677378612256.a, A140513, A140513.P13579608035938851890.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A131900

/-!
# A131901: 2*A002024 - A131821.

The programs for A131901, the canonical program `A131901.P10361417805036822121` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131901 has offset 1).

The definition of A131901 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A131901.P18321602910775651301

`A131507(n)-A144217(n+1)`
-/

namespace A131901.P18321602910775651301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131507 n - A144217 (n + 1)

end

end A131901.P18321602910775651301

namespace A131901

/-- `A131507(n)-A144217(n+1)` -/
def P18321602910775651301.Spec : Prop :=
  ∀ n, P18321602910775651301.a n = A131901 (n + 1)

end A131901

/-! ## A131901.P5333779770088264593

`A204250(n+1)-A342385(n)`
-/

namespace A131901.P5333779770088264593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204250 (n + 1) - A342385 n

end

end A131901.P5333779770088264593

namespace A131901

/-- `A204250(n+1)-A342385(n)` -/
def P5333779770088264593.Spec : Prop :=
  ∀ n, P5333779770088264593.a n = A131901 (n + 1)

end A131901

/-! ## A131901.P6551615828454143628

`A003056(n)*A154325(n)+1`
-/

namespace A131901.P6551615828454143628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n * A154325 n + 1

end

end A131901.P6551615828454143628

namespace A131901

/-- `A003056(n)*A154325(n)+1` -/
def P6551615828454143628.Spec : Prop :=
  ∀ n, P6551615828454143628.a n = A131901 (n + 1)

end A131901

/-! ## A131901.P10361417805036822121

`A111650(n+1)-A131821(n+1)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A131901

/-- `A111650(n+1)-A131821(n+1)` -/
def P10361417805036822121.Spec : Prop :=
  ∀ n, P10361417805036822121.a n = A131901 (n + 1)

theorem P10361417805036822121.correct : P10361417805036822121.Spec := by
  intro n
  simp only [A131901, Nat.add_sub_cancel]

end A131901

/-! ## A131901.P9039108378297952171

`2*A002024(n+1)-A131821(n+1)`
-/

namespace A131901.P9039108378297952171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002024 (n + 1) - A131821 (n + 1)

end

end A131901.P9039108378297952171

namespace A131901

/-- `2*A002024(n+1)-A131821(n+1)` -/
def P9039108378297952171.Spec : Prop :=
  ∀ n, P9039108378297952171.a n = A131901 (n + 1)

end A131901

/-! ## A131901.P5629343862133878320

`A005408(A003056(n))-A144217(n+1)`
-/

namespace A131901.P5629343862133878320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A003056 n).toNat - A144217 (n + 1)

end

end A131901.P5629343862133878320

namespace A131901

/-- `A005408(A003056(n))-A144217(n+1)` -/
def P5629343862133878320.Spec : Prop :=
  ∀ n, P5629343862133878320.a n = A131901 (n + 1)

end A131901

/-! ## A131901.P6071870403795475277

`A004273(A002024(n+1))-A144217(n+1)`
-/

namespace A131901.P6071870403795475277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A002024 (n + 1)).toNat - A144217 (n + 1)

end

end A131901.P6071870403795475277

namespace A131901

/-- `A004273(A002024(n+1))-A144217(n+1)` -/
def P6071870403795475277.Spec : Prop :=
  ∀ n, P6071870403795475277.a n = A131901 (n + 1)

end A131901

/-! ## A131901.P14183952351451504815

`A002024(n+1)+A132071(n)-A132073(n)`
-/

namespace A131901.P14183952351451504815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1) + (A132071 n - A132073 n)

end

end A131901.P14183952351451504815

namespace A131901

/-- `A002024(n+1)+A132071(n)-A132073(n)` -/
def P14183952351451504815.Spec : Prop :=
  ∀ n, P14183952351451504815.a n = A131901 (n + 1)

end A131901

/-! ## A131901.P10034105235596610617

`A130296(n+1)+A131922(n)-A131821(n+1)`
-/

namespace A131901.P10034105235596610617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130296 (n + 1) + (A131922 n - A131821 (n + 1))

end

end A131901.P10034105235596610617

namespace A131901

/-- `A130296(n+1)+A131922(n)-A131821(n+1)` -/
def P10034105235596610617.Spec : Prop :=
  ∀ n, P10034105235596610617.a n = A131901 (n + 1)

end A131901

/-! ## A131901.P7764297154949808945

`A005408(A003056(n))-A003056(n*A103451(n))`
-/

namespace A131901.P7764297154949808945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A003056 n).toNat - A003056 ((n : ℤ) * A103451 n).toNat

end

end A131901.P7764297154949808945

namespace A131901

/-- `A005408(A003056(n))-A003056(n*A103451(n))` -/
def P7764297154949808945.Spec : Prop :=
  ∀ n, P7764297154949808945.a n = A131901 (n + 1)

end A131901

/-! ## A131901.P12960431886924515007

`A132778(A132119(n+1))`
-/

namespace A131901.P12960431886924515007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132778 (A132119 (n + 1)).toNat

end

end A131901.P12960431886924515007

namespace A131901

/-- `A132778(A132119(n+1))` -/
def P12960431886924515007.Spec : Prop :=
  ∀ n, P12960431886924515007.a n = A131901 (n + 1)

end A131901

/-! ## A131901.P12713567045440158732

`A002024(n+1)+A003056(n)%A008277(n+1)`
-/

namespace A131901.P12713567045440158732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1) + Int.tmod (A003056 n) (A008277 (n + 1))

end

end A131901.P12713567045440158732

namespace A131901

/-- `A002024(n+1)+A003056(n)%A008277(n+1)` -/
def P12713567045440158732.Spec : Prop :=
  ∀ n, P12713567045440158732.a n = A131901 (n + 1)

end A131901

/-!
# A131902: Smallest positive integer k with the same sum of divisors as the n-th integer for which such a k exists.

The programs for A131902, there is no canonical definition to state claims against.
-/

/-! ## A131902.P12255466153800411947

`A051444(∑{d}[A069822(n+1), #])`
-/

namespace A131902.P12255466153800411947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069822 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051444 (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A131902.P12255466153800411947

/-! ## A131902.P7828295132057938591

`A051444(∑{d}[lt[1, A263025(n+1)]+1, #])`
-/

namespace A131902.P7828295132057938591
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263025 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051444 (∑ d ∈ Nat.divisors (f1 n), d)

end

end A131902.P7828295132057938591

/-! ## A131902.P7231572540659327388

`A051444(∑{d}[comp[A051444(n+1)], #])`
-/

namespace A131902.P7231572540659327388
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051444 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051444 (∑ d ∈ Nat.divisors (f1 n), d)

end

end A131902.P7231572540659327388

/-! ## A131902.P17833051623192554541

`A275987(comp[A051444(n+1)]%A051477(n))`
-/

namespace A131902.P17833051623192554541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051444 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275987 (Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (A051477 n)).toNat

end

end A131902.P17833051623192554541

/-! ## A131902.P3544321971492336185

`A097014(∑{d}[A069822(n+1), #])`
-/

namespace A131902.P3544321971492336185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069822 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097014 (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A131902.P3544321971492336185

/-!
# A131903: Integers x such that d(k)=d(x) for some 0<k<x, where d=A000005 is the number of divisors.

The programs for A131903, there is no canonical definition to state claims against.
-/

/-! ## A131903.P14235886098033822160

`comp[A005179(n+1)-1]+1`
-/

namespace A131903.P14235886098033822160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005179 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A131903.P14235886098033822160

/-! ## A131903.P16097017964396409012

`comp[A007416(n+1)-1]+1`
-/

namespace A131903.P16097017964396409012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007416 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A131903.P16097017964396409012

/-! ## A131903.P9430200004124028259

`comp[A010054(n+1)*A081532(n+1)]`
-/

namespace A131903.P9430200004124028259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (n + 1) * A081532 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A131903.P9430200004124028259

/-! ## A131903.P5528166049568653510

`lt[0, A347982(n+1)]+1`
-/

namespace A131903.P5528166049568653510
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347982 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A131903.P5528166049568653510

/-! ## A131903.P9544723579468387967

`lt[1, A067004(n+1)]+1`
-/

namespace A131903.P9544723579468387967
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067004 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A131903.P9544723579468387967

/-! ## A131903.P5595210079519940994

`lt[A140635(abs(1-n)+1), n]`
-/

namespace A131903.P5595210079519940994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140635 (|1 - (n : ℤ)| + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A131903.P5595210079519940994

/-! ## A131903.P1052260253528149268

`lt[A140635(n+1), n+1]+1`
-/

namespace A131903.P1052260253528149268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140635 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A131903.P1052260253528149268

/-! ## A131903.P2540921572071423455

`A061071(a(n-1)+1)+1+n` with `a(0)=3`
-/

namespace A131903.P2540921572071423455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A061071 (a (n - 1) + 1).toNat + 1 + (n : ℤ)

end

end A131903.P2540921572071423455

/-! ## A131903.P9829050541921887830

`record[A079427(abs(A347982(n+3)))]`
-/

namespace A131903.P9829050541921887830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079427 |A347982 (n + 3)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A131903.P9829050541921887830

/-! ## A131903.P2946464939395634937

`eq[1, A000010(a(A067004(n)))]` with `a(0)=0, a(1)=3`
-/

namespace A131903.P2946464939395634937
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 3] fun n f2 =>
  A000010 (f2 (A067004 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A131903.P2946464939395634937

/-! ## A131903.P1297272569349479472

`eq[1, A000045(a(A067004(n)))]` with `a(0)=0, a(1)=3`
-/

namespace A131903.P1297272569349479472
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 3] fun n f2 =>
  A000045 (f2 (A067004 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A131903.P1297272569349479472

/-! ## A131903.P11989730135204039672

`eq[1, A067004(a(A067004(n)))]` with `a(0)=2, a(1)=3`
-/

namespace A131903.P11989730135204039672
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n f2 =>
  A067004 (f2 (A067004 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A131903.P11989730135204039672

/-! ## A131903.P8284578801343721547

`comp[C(A140635(n+1), n)]`
-/

namespace A131903.P8284578801343721547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A140635 (n + 1)).toNat n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A131903.P8284578801343721547

/-! ## A131903.P4419817170719941892

`lt[1, Δ[A339514(n)]]+1`
-/

namespace A131903.P4419817170719941892
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339514 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A131903.P4419817170719941892

/-! ## A131903.P16313451130358355404

`comp[A140635(n+2)-A196225(2*n+1)]`
-/

namespace A131903.P16313451130358355404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140635 (n + 2) - A196225 (2 * n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A131903.P16313451130358355404

/-!
# A131904: Smallest positive integer k with the same number of divisors as the n-th integer for which such a k exists.

The programs for A131904, there is no canonical definition to state claims against.
-/

/-! ## A131904.P5744134826569793216

`A140635(A131903(n+1))`
-/

namespace A131904.P5744134826569793216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140635 (A131903 (n + 1)).toNat

end

end A131904.P5744134826569793216

/-! ## A131904.P6320327390555819727

`A140635(comp[A196225(n+1)])`
-/

namespace A131904.P6320327390555819727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196225 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140635 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A131904.P6320327390555819727

/-! ## A131904.P5847341735882075262

`A140635(comp[C(A140635(n+1), n)])`
-/

namespace A131904.P5847341735882075262
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A140635 (n + 1)).toNat n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140635 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A131904.P5847341735882075262

/-! ## A131904.P11684792008985570516

`A140635(lt[0, A347982(n+1)]+1)`
-/

namespace A131904.P11684792008985570516
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347982 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140635 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A131904.P11684792008985570516

/-! ## A131904.P4963739970238609456

`A140635(lt[1, A067004(n+1)]+1)`
-/

namespace A131904.P4963739970238609456
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067004 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140635 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A131904.P4963739970238609456

/-! ## A131904.P10565062520604189635

`A140635(comp[A005179(n+1)-1]+1)`
-/

namespace A131904.P10565062520604189635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005179 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140635 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A131904.P10565062520604189635

/-! ## A131904.P14347426497639464881

`A140635(comp[A007416(n+1)-1]+1)`
-/

namespace A131904.P14347426497639464881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007416 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140635 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A131904.P14347426497639464881

/-! ## A131904.P10179626885997536885

`A140635(lt[A140635(abs(1-n)+1), n])`
-/

namespace A131904.P10179626885997536885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140635 (|1 - (n : ℤ)| + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140635 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A131904.P10179626885997536885

/-! ## A131904.P15478682030729764434

`A140635(comp[A140635(n+1)-A055672(n)])`
-/

namespace A131904.P15478682030729764434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140635 (n + 1) - A055672 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140635 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A131904.P15478682030729764434

/-! ## A131904.P2386210846121463948

`A140635(comp[A140635(n+1)%A028310(n)])`
-/

namespace A131904.P2386210846121463948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A140635 (n + 1)) (A028310 n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140635 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A131904.P2386210846121463948

/-!
# A131905: Integers x such that sigma_2(k)=sigma_2(x) for some 0<k<x, where A001157=sigma_2 is the sum of squares of divisors.

The programs for A131905, there is no canonical definition to state claims against.
-/

/-! ## A131905.P17483162934937718934

`A110927(A140595(n)%A353103(n+2))`
-/

namespace A131905.P17483162934937718934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110927 (Int.tmod (A140595 n) (A353103 (n + 2))).toNat

end

end A131905.P17483162934937718934

/-! ## A131905.P1450002025692999741

`A110927(A140595(n))%A131907(3*(n+1))`
-/

namespace A131905.P1450002025692999741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A110927 (A140595 n).toNat) (A131907 (3 * (n + 1)))

end

end A131905.P1450002025692999741

/-!
# A131906: Smallest positive integer k with the same sum of squares of divisors as the n-th integer for which such a k exists.

The programs for A131906, there is no canonical definition to state claims against.
-/

/-! ## A131906.P10709598338301977417

`A110926(A140595(n)%A353103(n+2))`
-/

namespace A131906.P10709598338301977417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110926 (Int.tmod (A140595 n) (A353103 (n + 2))).toNat

end

end A131906.P10709598338301977417

/-! ## A131906.P9635018555424687545

`A184983(A126116(n))+A110926(n+1)`
-/

namespace A131906.P9635018555424687545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184983 (A126116 n).toNat + A110926 (n + 1)

end

end A131906.P9635018555424687545

/-! ## A131906.P6872622981729160893

`A110926(A140595(n))%A131908(3*n+4)`
-/

namespace A131906.P6872622981729160893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A110926 (A140595 n).toNat) (A131908 (3 * n + 4))

end

end A131906.P6872622981729160893

/-!
# A131910: Central terms of triangle A131909.

The programs for A131910, there is no canonical definition to state claims against.
-/

/-! ## A131910.P11034408361823344596

`A169655(A001006(n))+A000110(n)`
-/

namespace A131910.P11034408361823344596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169655 (A001006 n).toNat + A000110 n

end

end A131910.P11034408361823344596

/-! ## A131910.P8926344225364618033

`A002487(A361844(n)+A345751(n))`
-/

namespace A131910.P8926344225364618033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A361844 n + A345751 n).toNat

end

end A131910.P8926344225364618033

/-!
# A131911: 2*A131821 - A128174.

The programs for A131911, the canonical program `A131911.P5837187211749281594` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131911 has offset 1).

The definition of A131911 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A131911.P14256077269911891479

`A131843(n)+gcd(2, comp[∑[4*n]])-1`
-/

namespace A131911.P14256077269911891479
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131843 n + ((Nat.gcd 2 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) : ℤ) - 1)

end

end A131911.P14256077269911891479

namespace A131911

/-- `A131843(n)+gcd(2, comp[∑[4*n]])-1` -/
def P14256077269911891479.Spec : Prop :=
  ∀ n, P14256077269911891479.a n = A131911 (n + 1)

end A131911

/-! ## A131911.P5837187211749281594

`A131843(n)+A025581(n)%2`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A131911

/-- `A131843(n)+A025581(n)%2` -/
def P5837187211749281594.Spec : Prop :=
  ∀ n, P5837187211749281594.a n = A131911 (n + 1)

theorem P5837187211749281594.correct : P5837187211749281594.Spec := by
  intro n
  simp only [A131911, Nat.add_sub_cancel]

end A131911

/-! ## A131911.P9634735865762647427

`A131843(n)+A051162(n)%2`
-/

namespace A131911.P9634735865762647427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131843 n + Int.tmod (A051162 n) 2

end

end A131911.P9634735865762647427

namespace A131911

/-- `A131843(n)+A051162(n)%2` -/
def P9634735865762647427.Spec : Prop :=
  ∀ n, P9634735865762647427.a n = A131911 (n + 1)

end A131911

/-! ## A131911.P18244217669328629867

`A131843(n)+A051933(n)%2`
-/

namespace A131911.P18244217669328629867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131843 n + Int.tmod (A051933 n) 2

end

end A131911.P18244217669328629867

namespace A131911

/-- `A131843(n)+A051933(n)%2` -/
def P18244217669328629867.Spec : Prop :=
  ∀ n, P18244217669328629867.a n = A131911 (n + 1)

end A131911

/-! ## A131911.P16287983275778906311

`lcm(A131227(n), A131230(n+1))`
-/

namespace A131911.P16287983275778906311
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A131227 n) (A131230 (n + 1))

end

end A131911.P16287983275778906311

namespace A131911

/-- `lcm(A131227(n), A131230(n+1))` -/
def P16287983275778906311.Spec : Prop :=
  ∀ n, (P16287983275778906311.a n : ℤ) = A131911 (n + 1)

end A131911

/-! ## A131911.P8617911458999524357

`A131843(n)+1-A128174(n+1)`
-/

namespace A131911.P8617911458999524357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131843 n + (1 - A128174 (n + 1))

end

end A131911.P8617911458999524357

namespace A131911

/-- `A131843(n)+1-A128174(n+1)` -/
def P8617911458999524357.Spec : Prop :=
  ∀ n, P8617911458999524357.a n = A131911 (n + 1)

theorem P8617911458999524357.correct : P8617911458999524357.Spec := by
  intro n
  simp only [A131911, Nat.add_sub_cancel, A131911.P8617911458999524357.a, A131911.P5837187211749281594.a, A025581, A025581.P16112744757063613497.a, A128174, A128174.P4745988875393872147.a, A131843, A131843.P9084898771744653632.a, A131821, A131821.P13312494062197045656.a, A131816, A131816.P3689264983321174764.a, A059268, A059268.P15217573790077737885.a, A130321, A130321.P54397649261359622.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A131911

/-! ## A131911.P2167833805258846687

`2*A131821(n+1)-A128174(n+1)`
-/

namespace A131911.P2167833805258846687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A131821 (n + 1) - A128174 (n + 1)

end

end A131911.P2167833805258846687

namespace A131911

/-- `2*A131821(n+1)-A128174(n+1)` -/
def P2167833805258846687.Spec : Prop :=
  ∀ n, P2167833805258846687.a n = A131911 (n + 1)

theorem P2167833805258846687.correct : P2167833805258846687.Spec := by
  intro n
  simp only [A131911, Nat.add_sub_cancel, A131911.P2167833805258846687.a, A131911.P5837187211749281594.a, A025581, A025581.P16112744757063613497.a, A128174, A128174.P4745988875393872147.a, A131821, A131821.P13312494062197045656.a, A131843, A131843.P9084898771744653632.a, A131816, A131816.P3689264983321174764.a, A059268, A059268.P15217573790077737885.a, A130321, A130321.P54397649261359622.a, A018900, A018900.P2868698677378612256.a, A140513, A140513.P13579608035938851890.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A131911

/-! ## A131911.P12594499395489615901

`A131821(n+1)+A131843(n)-A131900(n)`
-/

namespace A131911.P12594499395489615901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131821 (n + 1) + (A131843 n - A131900 n)

end

end A131911.P12594499395489615901

namespace A131911

/-- `A131821(n+1)+A131843(n)-A131900(n)` -/
def P12594499395489615901.Spec : Prop :=
  ∀ n, P12594499395489615901.a n = A131911 (n + 1)

theorem P12594499395489615901.correct : P12594499395489615901.Spec := by
  intro n
  simp only [A131911, Nat.add_sub_cancel, A131911.P12594499395489615901.a, A131911.P5837187211749281594.a, A025581, A025581.P16112744757063613497.a, A131821, A131821.P13312494062197045656.a, A131843, A131843.P9084898771744653632.a, A131900, A131900.P2968770492461010124.a, A131816, A131816.P3689264983321174764.a, A059268, A059268.P15217573790077737885.a, A130321, A130321.P54397649261359622.a, A018900, A018900.P2868698677378612256.a, A140513, A140513.P13579608035938851890.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A131911

/-! ## A131911.P8426419693680247878

`A131843(n)+A246830(n)%2`
-/

namespace A131911.P8426419693680247878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131843 n + Int.tmod (A246830 n) 2

end

end A131911.P8426419693680247878

namespace A131911

/-- `A131843(n)+A246830(n)%2` -/
def P8426419693680247878.Spec : Prop :=
  ∀ n, P8426419693680247878.a n = A131911 (n + 1)

end A131911

/-! ## A131911.P4822107223155666612

`A131843(n)+A250336(n+1)%2`
-/

namespace A131911.P4822107223155666612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131843 n + Int.tmod (A250336 (n + 1)) 2

end

end A131911.P4822107223155666612

namespace A131911

/-- `A131843(n)+A250336(n+1)%2` -/
def P4822107223155666612.Spec : Prop :=
  ∀ n, P4822107223155666612.a n = A131911 (n + 1)

end A131911

/-!
# A131912: Row sums of triangle A131911.

The programs for A131912, the canonical program `A131912.P155761427323137840` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131912 has offset 1).

The definition of A131912 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A131912.P155761427323137840

`11*(n+1)-a(n-1)-14` with `a(0)=1`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A131912

/-- `11*(n+1)-a(n-1)-14` -/
def P155761427323137840.Spec : Prop :=
  ∀ n, P155761427323137840.a n = A131912 (n + 1)

theorem P155761427323137840.correct : P155761427323137840.Spec := by
  intro n
  simp only [A131912, Nat.add_sub_cancel]

end A131912

/-! ## A131912.P7120460705339577120

`a(n-2)+11` with `a(0)=1, a(1)=7`
-/

namespace A131912.P7120460705339577120
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 7] fun n a =>
  a (n - 2) + 11

end

end A131912.P7120460705339577120

namespace A131912

/-- `a(n-2)+11` -/
def P7120460705339577120.Spec : Prop :=
  ∀ n, (P7120460705339577120.a n : ℤ) = A131912 (n + 1)

end A131912

/-! ## A131912.P3506535448152073445

`ceil(11*n/2)+1`
-/

namespace A131912.P3506535448152073445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈11 * ((n : ℚ) / 2)⌉ + 1

end

end A131912.P3506535448152073445

namespace A131912

/-- `ceil(11*n/2)+1` -/
def P3506535448152073445.Spec : Prop :=
  ∀ n, P3506535448152073445.a n = A131912 (n + 1)

end A131912

/-! ## A131912.P8717180117596926046

`ceil(cosh(log(11*n+1)))`
-/

namespace A131912.P8717180117596926046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cosh (Real.log (11 * n + 1 : ℝ))⌉

end

end A131912.P8717180117596926046

namespace A131912

/-- `ceil(cosh(log(11*n+1)))` -/
def P8717180117596926046.Spec : Prop :=
  ∀ n, P8717180117596926046.a n = A131912 (n + 1)

end A131912

/-! ## A131912.P3189043900217245603

`floor(cosh(log(11*n+3)))`
-/

namespace A131912.P3189043900217245603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cosh (Real.log (11 * n + 3 : ℝ))⌋

end

end A131912.P3189043900217245603

namespace A131912

/-- `floor(cosh(log(11*n+3)))` -/
def P3189043900217245603.Spec : Prop :=
  ∀ n, P3189043900217245603.a n = A131912 (n + 1)

end A131912

/-! ## A131912.P11660560841754861861

`round(cosh(log(11*n+2)))`
-/

namespace A131912.P11660560841754861861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cosh (Real.log (11 * n + 2 : ℝ)))

end

end A131912.P11660560841754861861

namespace A131912

/-- `round(cosh(log(11*n+2)))` -/
def P11660560841754861861.Spec : Prop :=
  ∀ n, P11660560841754861861.a n = A131912 (n + 1)

end A131912

/-! ## A131912.P16720154434359585433

`round(sinh(log(11*n+3)))`
-/

namespace A131912.P16720154434359585433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sinh (Real.log (11 * n + 3 : ℝ)))

end

end A131912.P16720154434359585433

namespace A131912

/-- `round(sinh(log(11*n+3)))` -/
def P16720154434359585433.Spec : Prop :=
  ∀ n, P16720154434359585433.a n = A131912 (n + 1)

end A131912

/-! ## A131912.P7798271450014063033

`∑[abs(a(n-2))]` with `a(0)=1, a(1)=6, a(2)=5`
-/

namespace A131912.P7798271450014063033
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 6, 5] fun n f1 =>
  f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131912.P7798271450014063033

namespace A131912

/-- `∑[abs(a(n-2))]` -/
def P7798271450014063033.Spec : Prop :=
  ∀ n, (P7798271450014063033.a n : ℤ) = A131912 (n + 1)

end A131912

/-! ## A131912.P13261603778826911881

`∑[11-a(n-1)]` with `a(0)=1, a(1)=6`
-/

namespace A131912.P13261603778826911881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 6] fun n f1 =>
  11 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131912.P13261603778826911881

namespace A131912

/-- `∑[11-a(n-1)]` -/
def P13261603778826911881.Spec : Prop :=
  ∀ n, P13261603778826911881.a n = A131912 (n + 1)

end A131912

/-! ## A131912.P16189270728987332864

`∑[∑[ogf((1+6x+4x^2)/(1+x))]]`
-/

namespace A131912.P16189270728987332864
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 6, 4] [1, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131912.P16189270728987332864

namespace A131912

/-- `∑[∑[ogf((1+6x+4x^2)/(1+x))]]` -/
def P16189270728987332864.Spec : Prop :=
  ∀ n, P16189270728987332864.a n = A131912 (n + 1)

end A131912

/-! ## A131912.P3150045141801922994

`ogf((1+6x+4x^2)/(1-x-x^2+x^3))`
-/

namespace A131912.P3150045141801922994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 6, 4] [1, -1, -1, 1] n

end

end A131912.P3150045141801922994

namespace A131912

/-- `ogf((1+6x+4x^2)/(1-x-x^2+x^3))` -/
def P3150045141801922994.Spec : Prop :=
  ∀ n, P3150045141801922994.a n = A131912 (n + 1)

end A131912

/-! ## A131912.P1210045511998490900

`∑[A010717(a(n-1))]` with `a(0)=1`
-/

namespace A131912.P1210045511998490900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A010717 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131912.P1210045511998490900

namespace A131912

/-- `∑[A010717(a(n-1))]` -/
def P1210045511998490900.Spec : Prop :=
  ∀ n, P1210045511998490900.a n = A131912 (n + 1)

end A131912

/-! ## A131912.P17773576638121035389

`∑[A023408(a(n-1))]` with `a(0)=1`
-/

namespace A131912.P17773576638121035389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A023408 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131912.P17773576638121035389

namespace A131912

/-- `∑[A023408(a(n-1))]` -/
def P17773576638121035389.Spec : Prop :=
  ∀ n, P17773576638121035389.a n = A131912 (n + 1)

end A131912

/-! ## A131912.P17830573650330799037

`∑[A157339(a(n-1))]` with `a(0)=1`
-/

namespace A131912.P17830573650330799037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A157339 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131912.P17830573650330799037

namespace A131912

/-- `∑[A157339(a(n-1))]` -/
def P17830573650330799037.Spec : Prop :=
  ∀ n, P17830573650330799037.a n = A131912 (n + 1)

end A131912

/-! ## A131912.P12708916930216682605

`∪[A017401(n), A017473(n)]`
-/

namespace A131912.P12708916930216682605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017401 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017473 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A131912.P12708916930216682605

namespace A131912

/-- `∪[A017401(n), A017473(n)]` -/
def P12708916930216682605.Spec : Prop :=
  ∀ n, (P12708916930216682605.a n : ℤ) = A131912 (n + 1)

end A131912

/-! ## A131912.P14934785635188622053

`A017437(n)%A299647(n+1)`
-/

namespace A131912.P14934785635188622053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017437 n) (A299647 (n + 1))

end

end A131912.P14934785635188622053

namespace A131912

/-- `A017437(n)%A299647(n+1)` -/
def P14934785635188622053.Spec : Prop :=
  ∀ n, P14934785635188622053.a n = A131912 (n + 1)

end A131912

/-! ## A131912.P11416746907524420612

`record[A173773(n+1)+n]`
-/

namespace A131912.P11416746907524420612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173773 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A131912.P11416746907524420612

namespace A131912

/-- `record[A173773(n+1)+n]` -/
def P11416746907524420612.Spec : Prop :=
  ∀ n, P11416746907524420612.a n = A131912 (n + 1)

end A131912

/-! ## A131912.P723889289979343518

`A106252(3*n+1)`
-/

namespace A131912.P723889289979343518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106252 (3 * n + 1)

end

end A131912.P723889289979343518

namespace A131912

/-- `A106252(3*n+1)` -/
def P723889289979343518.Spec : Prop :=
  ∀ n, P723889289979343518.a n = A131912 (n + 1)

end A131912

/-! ## A131912.P12999533295207456327

`A272915(3*n+1)`
-/

namespace A131912.P12999533295207456327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272915 (3 * n + 1)

end

end A131912.P12999533295207456327

namespace A131912

/-- `A272915(3*n+1)` -/
def P12999533295207456327.Spec : Prop :=
  ∀ n, P12999533295207456327.a n = A131912 (n + 1)

end A131912

/-! ## A131912.P9568364773116936169

`A265187(A063289(n+3))`
-/

namespace A131912.P9568364773116936169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265187 (A063289 (n + 3)).toNat

end

end A131912.P9568364773116936169

namespace A131912

/-- `A265187(A063289(n+3))` -/
def P9568364773116936169.Spec : Prop :=
  ∀ n, P9568364773116936169.a n = A131912 (n + 1)

end A131912

/-!
# A131913: Product of the square matrix in A065941 and the column vector (1, 2, 3, ...)'.

The programs for A131913, the canonical program `A131913.P328979393623836381` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131913 has offset 0).

The definition of A131913 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A131913.P13752636704825816963

`a(n-1)+a(n-2)+2*A000045(n)` with `a(0)=1, a(1)=3`
-/

namespace A131913.P13752636704825816963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (n - 1) + a (n - 2) + 2 * A000045 n

end

end A131913.P13752636704825816963

namespace A131913

/-- `a(n-1)+a(n-2)+2*A000045(n)` -/
def P13752636704825816963.Spec : Prop :=
  ∀ n, P13752636704825816963.a n = A131913 n

end A131913

/-! ## A131913.P328979393623836381

`A010049(n)+A001629(n+2)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A131913

/-- `A010049(n)+A001629(n+2)` -/
def P328979393623836381.Spec : Prop :=
  ∀ n, P328979393623836381.a n = A131913 n

theorem P328979393623836381.correct : P328979393623836381.Spec := by
  intro n
  simp only [A131913]

end A131913

/-! ## A131913.P4927101587913200593

`2*a(n-1)+a(n-2)-2*a(n-3)-a(n-4)` with `a(0)=1, a(1)=3, a(2)=6, a(3)=13`
-/

namespace A131913.P4927101587913200593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 6, 13] fun n a =>
  2 * a (n - 1) + a (n - 2) - 2 * a (n - 3) - a (n - 4)

end

end A131913.P4927101587913200593

namespace A131913

/-- `2*a(n-1)+a(n-2)-2*a(n-3)-a(n-4)` -/
def P4927101587913200593.Spec : Prop :=
  ∀ n, P4927101587913200593.a n = A131913 n

end A131913

/-! ## A131913.P16847023008638824845

`ogf((1+x-x^2)/(1-2x-x^2+2x^3+x^4))`
-/

namespace A131913.P16847023008638824845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, -1] [1, -2, -1, 2, 1] n

end

end A131913.P16847023008638824845

namespace A131913

/-- `ogf((1+x-x^2)/(1-2x-x^2+2x^3+x^4))` -/
def P16847023008638824845.Spec : Prop :=
  ∀ n, P16847023008638824845.a n = A131913 n

end A131913

/-! ## A131913.P2427402477973370897

`A023610(n)-A001629(n)`
-/

namespace A131913.P2427402477973370897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023610 n - A001629 n

end

end A131913.P2427402477973370897

namespace A131913

/-- `A023610(n)-A001629(n)` -/
def P2427402477973370897.Spec : Prop :=
  ∀ n, P2427402477973370897.a n = A131913 n

end A131913

/-! ## A131913.P1128588978657398147

`∑[A208354(n)+A010049(n)]`
-/

namespace A131913.P1128588978657398147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208354 n + A010049 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131913.P1128588978657398147

namespace A131913

/-- `∑[A208354(n)+A010049(n)]` -/
def P1128588978657398147.Spec : Prop :=
  ∀ n, P1128588978657398147.a n = A131913 n

end A131913

/-! ## A131913.P16075159234019076248

`A029907(n)+A007502(n+1)`
-/

namespace A131913.P16075159234019076248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029907 n + A007502 (n + 1)

end

end A131913.P16075159234019076248

namespace A131913

/-- `A029907(n)+A007502(n+1)` -/
def P16075159234019076248.Spec : Prop :=
  ∀ n, P16075159234019076248.a n = A131913 n

end A131913

/-! ## A131913.P13501206689143572651

`A094588(n+1)+A001629(n)`
-/

namespace A131913.P13501206689143572651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094588 (n + 1) + A001629 n

end

end A131913.P13501206689143572651

namespace A131913

/-- `A094588(n+1)+A001629(n)` -/
def P13501206689143572651.Spec : Prop :=
  ∀ n, P13501206689143572651.a n = A131913 n

end A131913

/-! ## A131913.P18402600724951770334

`A099920(n)+A010049(n+1)`
-/

namespace A131913.P18402600724951770334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099920 n + A010049 (n + 1)

end

end A131913.P18402600724951770334

namespace A131913

/-- `A099920(n)+A010049(n+1)` -/
def P18402600724951770334.Spec : Prop :=
  ∀ n, P18402600724951770334.a n = A131913 n

end A131913

/-! ## A131913.P14306936860758255634

`A208354(n+1)+A045925(n)`
-/

namespace A131913.P14306936860758255634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208354 (n + 1) + A045925 n

end

end A131913.P14306936860758255634

namespace A131913

/-- `A208354(n+1)+A045925(n)` -/
def P14306936860758255634.Spec : Prop :=
  ∀ n, P14306936860758255634.a n = A131913 n

end A131913

/-! ## A131913.P18013541644251723903

`A324969(n+1)+A129715(n)`
-/

namespace A131913.P18013541644251723903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324969 (n + 1) + A129715 n

end

end A131913.P18013541644251723903

namespace A131913

/-- `A324969(n+1)+A129715(n)` -/
def P18013541644251723903.Spec : Prop :=
  ∀ n, P18013541644251723903.a n = A131913 n

end A131913

/-! ## A131913.P1290516244640494962

`A099920(n+1)-A006367(n)`
-/

namespace A131913.P1290516244640494962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099920 (n + 1) - A006367 n

end

end A131913.P1290516244640494962

namespace A131913

/-- `A099920(n+1)-A006367(n)` -/
def P1290516244640494962.Spec : Prop :=
  ∀ n, P1290516244640494962.a n = A131913 n

end A131913

/-! ## A131913.P15852583539099551087

`A055244(n+2)-A102702(n)`
-/

namespace A131913.P15852583539099551087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055244 (n + 2) - A102702 n

end

end A131913.P15852583539099551087

namespace A131913

/-- `A055244(n+2)-A102702(n)` -/
def P15852583539099551087.Spec : Prop :=
  ∀ n, P15852583539099551087.a n = A131913 n

end A131913

/-! ## A131913.P2409752506832586219

`A010049(n)+∑[∑[A006367(n)]]`
-/

namespace A131913.P2409752506832586219
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006367 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010049 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131913.P2409752506832586219

namespace A131913

/-- `A010049(n)+∑[∑[A006367(n)]]` -/
def P2409752506832586219.Spec : Prop :=
  ∀ n, P2409752506832586219.a n = A131913 n

end A131913

/-! ## A131913.P5937547956347022182

`A010049(n)+∑[A010049(n+1)]`
-/

namespace A131913.P5937547956347022182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010049 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010049 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131913.P5937547956347022182

namespace A131913

/-- `A010049(n)+∑[A010049(n+1)]` -/
def P5937547956347022182.Spec : Prop :=
  ∀ n, P5937547956347022182.a n = A131913 n

end A131913

/-! ## A131913.P6366398619319270236

`∑[A007502(n+1)-A001629(n)]`
-/

namespace A131913.P6366398619319270236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007502 (n + 1) - A001629 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131913.P6366398619319270236

namespace A131913

/-- `∑[A007502(n+1)-A001629(n)]` -/
def P6366398619319270236.Spec : Prop :=
  ∀ n, P6366398619319270236.a n = A131913 n

end A131913

/-! ## A131913.P114205193928844811

`∑[A029907(n+1)]-A001629(n)`
-/

namespace A131913.P114205193928844811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029907 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A001629 n

end

end A131913.P114205193928844811

namespace A131913

/-- `∑[A029907(n+1)]-A001629(n)` -/
def P114205193928844811.Spec : Prop :=
  ∀ n, P114205193928844811.a n = A131913 n

end A131913

/-! ## A131913.P4424053580483314391

`A001629(n+2)+Δ[A001629(n)]`
-/

namespace A131913.P4424053580483314391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001629 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001629 (n + 2) + (f1 (n + 1) - f1 n)

end

end A131913.P4424053580483314391

namespace A131913

/-- `A001629(n+2)+Δ[A001629(n)]` -/
def P4424053580483314391.Spec : Prop :=
  ∀ n, P4424053580483314391.a n = A131913 n

end A131913

/-! ## A131913.P13042136405445510631

`A029907(n+1)+A001629(n+1)`
-/

namespace A131913.P13042136405445510631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029907 (n + 1) + A001629 (n + 1)

end

end A131913.P13042136405445510631

namespace A131913

/-- `A029907(n+1)+A001629(n+1)` -/
def P13042136405445510631.Spec : Prop :=
  ∀ n, P13042136405445510631.a n = A131913 n

end A131913

/-! ## A131913.P8959423768372558533

`A240847(n+1)+A045925(n+1)`
-/

namespace A131913.P8959423768372558533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240847 (n + 1) + A045925 (n + 1)

end

end A131913.P8959423768372558533

namespace A131913

/-- `A240847(n+1)+A045925(n+1)` -/
def P8959423768372558533.Spec : Prop :=
  ∀ n, P8959423768372558533.a n = A131913 n

end A131913

/-!
# A131914: 3*A002024 - 2*A051340.

The programs for A131914, the canonical program `A131914.P7427387489545977429` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131914 has offset 1).

The definition of A131914 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A131914.P10466524914644219428

`(n+1)²%(comp[∑[n]]+2)`
-/

namespace A131914.P10466524914644219428
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2 % (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 2)

end

end A131914.P10466524914644219428

namespace A131914

/-- `(n+1)²%(comp[∑[n]]+2)` -/
def P10466524914644219428.Spec : Prop :=
  ∀ n, (P10466524914644219428.a n : ℤ) = A131914 (n + 1)

end A131914

/-! ## A131914.P7183078287228594812

`3*row(n)-2*col(n)+1`
-/

namespace A131914.P7183078287228594812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * SequenceMachineLib.triRow n : ℤ) - (2 * SequenceMachineLib.triCol n : ℤ) + 1

end

end A131914.P7183078287228594812

namespace A131914

/-- `3*row(n)-2*col(n)+1` -/
def P7183078287228594812.Spec : Prop :=
  ∀ n, P7183078287228594812.a n = A131914 (n + 1)

end A131914

/-! ## A131914.P10469738190839613556

`(n-comp[∑[n]])²-(2*n+3)`
-/

namespace A131914.P10469738190839613556
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)) ^ 2 - (2 * n + 3 : ℤ)

end

end A131914.P10469738190839613556

namespace A131914

/-- `(n-comp[∑[n]])²-(2*n+3)` -/
def P10469738190839613556.Spec : Prop :=
  ∀ n, P10469738190839613556.a n = A131914 (n + 1)

end A131914

/-! ## A131914.P17739518612666990135

`abs(∑[2*n]%comp[∑[n]]-n+∑[2*char[∑[n]]]-1)`
-/

namespace A131914.P17739518612666990135
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

open Classical in
def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (if ∃ j, f5 j = n then 1 else 0)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℕ) : ℤ) - (n : ℤ) + (((∑ j ∈ Finset.range (n + 1), f4 j : ℕ) : ℤ) - 1)|

end

end A131914.P17739518612666990135

namespace A131914

/-- `abs(∑[2*n]%comp[∑[n]]-n+∑[2*char[∑[n]]]-1)` -/
def P17739518612666990135.Spec : Prop :=
  ∀ n, P17739518612666990135.a n = A131914 (n + 1)

end A131914

/-! ## A131914.P13560682931122784428

`abs(C(comp[∑[n]]-n, 2)-(n+1)+C(comp[∑[n]]-n, 2)-∑[char[comp[∑[n]]]])`
-/

namespace A131914.P13560682931122784428
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f8 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f7 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f8 j

open Classical in
def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f7 j ≠ x) n

open Classical in
def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f6 j = n then 1 else 0

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ) + ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - ((∑ j ∈ Finset.range (n + 1), f5 j : ℕ) : ℤ))|

end

end A131914.P13560682931122784428

namespace A131914

/-- `abs(C(comp[∑[n]]-n, 2)-(n+1)+C(comp[∑[n]]-n, 2)-∑[char[comp[∑[n]]]])` -/
def P13560682931122784428.Spec : Prop :=
  ∀ n, P13560682931122784428.a n = A131914 (n + 1)

end A131914

/-! ## A131914.P7427387489545977429

`∑[xor(1, A198954(n)-1)]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A131914

/-- `∑[xor(1, A198954(n)-1)]` -/
def P7427387489545977429.Spec : Prop :=
  ∀ n, P7427387489545977429.a n = A131914 (n + 1)

theorem P7427387489545977429.correct : P7427387489545977429.Spec := by
  intro n
  simp only [A131914, Nat.add_sub_cancel]

end A131914

/-! ## A131914.P5078879484850029797

`∑[xor(1, abs(A010816(n))-1)]`
-/

namespace A131914.P5078879484850029797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (|A010816 n| - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131914.P5078879484850029797

namespace A131914

/-- `∑[xor(1, abs(A010816(n))-1)]` -/
def P5078879484850029797.Spec : Prop :=
  ∀ n, P5078879484850029797.a n = A131914 (n + 1)

end A131914

/-! ## A131914.P1186021135229838208

`abs(2*n+3-A140978(n+1))`
-/

namespace A131914.P1186021135229838208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 * n + 3 : ℤ) - A140978 (n + 1)|

end

end A131914.P1186021135229838208

namespace A131914

/-- `abs(2*n+3-A140978(n+1))` -/
def P1186021135229838208.Spec : Prop :=
  ∀ n, P1186021135229838208.a n = A131914 (n + 1)

end A131914

/-! ## A131914.P3330372452661060820

`abs(4*(n+1)-A185871(n+1))`
-/

namespace A131914.P3330372452661060820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(4 * (n + 1) : ℤ) - A185871 (n + 1)|

end

end A131914.P3330372452661060820

namespace A131914

/-- `abs(4*(n+1)-A185871(n+1))` -/
def P3330372452661060820.Spec : Prop :=
  ∀ n, P3330372452661060820.a n = A131914 (n + 1)

end A131914

/-! ## A131914.P2204624375607851859

`∑[A198954(A066182(n+1))-2]`
-/

namespace A131914.P2204624375607851859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198954 (A066182 (n + 1)).toNat - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131914.P2204624375607851859

namespace A131914

/-- `∑[A198954(A066182(n+1))-2]` -/
def P2204624375607851859.Spec : Prop :=
  ∀ n, P2204624375607851859.a n = A131914 (n + 1)

end A131914

/-! ## A131914.P8415167088408595878

`∑[xor(1, Δ[A123578(n)²]-1)]`
-/

namespace A131914.P8415167088408595878
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123578 n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (f2 (n + 1) - f2 n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131914.P8415167088408595878

namespace A131914

/-- `∑[xor(1, Δ[A123578(n)²]-1)]` -/
def P8415167088408595878.Spec : Prop :=
  ∀ n, P8415167088408595878.a n = A131914 (n + 1)

end A131914

/-! ## A131914.P4578404989615632386

`A049581(A131507(n)²+n)`
-/

namespace A131914.P4578404989615632386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049581 (A131507 n ^ 2 + (n : ℤ)).toNat

end

end A131914.P4578404989615632386

namespace A131914

/-- `A049581(A131507(n)²+n)` -/
def P4578404989615632386.Spec : Prop :=
  ∀ n, P4578404989615632386.a n = A131914 (n + 1)

end A131914

/-! ## A131914.P9135632269104321690

`A271479(A173786(n))`
-/

namespace A131914.P9135632269104321690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271479 (A173786 n).toNat

end

end A131914.P9135632269104321690

namespace A131914

/-- `A271479(A173786(n))` -/
def P9135632269104321690.Spec : Prop :=
  ∀ n, P9135632269104321690.a n = A131914 (n + 1)

end A131914

/-! ## A131914.P10209404144725248953

`A271479(A099627(n)+1)`
-/

namespace A131914.P10209404144725248953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271479 (A099627 n + 1).toNat

end

end A131914.P10209404144725248953

namespace A131914

/-- `A271479(A099627(n)+1)` -/
def P10209404144725248953.Spec : Prop :=
  ∀ n, P10209404144725248953.a n = A131914 (n + 1)

end A131914

/-! ## A131914.P11760006551813887612

`A271479(A048645(n+2))`
-/

namespace A131914.P11760006551813887612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271479 (A048645 (n + 2)).toNat

end

end A131914.P11760006551813887612

namespace A131914

/-- `A271479(A048645(n+2))` -/
def P11760006551813887612.Spec : Prop :=
  ∀ n, P11760006551813887612.a n = A131914 (n + 1)

end A131914

/-!
# A131919: A002024 + A131821 - A000012.

The programs for A131919, there is no canonical definition to state claims against.
-/

/-! ## A131919.P17414738069782387961

`A130299(2-A051340(n)+n)`
-/

namespace A131919.P17414738069782387961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130299 (2 - A051340 n + (n : ℤ)).toNat

end

end A131919.P17414738069782387961

/-! ## A131919.P9623051555925093150

`A130299(2-(A051340(n)-n))`
-/

namespace A131919.P9623051555925093150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130299 (2 - (A051340 n - (n : ℤ))).toNat

end

end A131919.P9623051555925093150

/-! ## A131919.P9565206261481188120

`A130299(A128227(n)+A057944(n))`
-/

namespace A131919.P9565206261481188120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130299 (A128227 n + A057944 n).toNat

end

end A131919.P9565206261481188120

/-! ## A131919.P7411520496608190136

`A130299(A193592(n)+A057944(n))`
-/

namespace A131919.P7411520496608190136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130299 (A193592 n + A057944 n).toNat

end

end A131919.P7411520496608190136

/-! ## A131919.P3097541981226870967

`A130299(n+1)+A131032(n+2)-A131033(n+2)`
-/

namespace A131919.P3097541981226870967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130299 (n + 1) + (A131032 (n + 2) - A131033 (n + 2))

end

end A131919.P3097541981226870967

/-! ## A131919.P5722654375520342060

`A131821(n+1)+A001222(A137688(n))`
-/

namespace A131919.P5722654375520342060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131821 (n + 1) + A001222 (A137688 n).toNat

end

end A131919.P5722654375520342060

/-! ## A131919.P8314064029754145021

`A007814(A131816(n))+round(sqrt(2*(n+1)))`
-/

namespace A131919.P8314064029754145021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A131816 n).toNat + SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ))

end

end A131919.P8314064029754145021

/-!
# A131921: Years between consecutive Leap Days for Gregorian calendar.

The programs for A131921, there is no canonical definition to state claims against.
-/

/-! ## A131921.P4913910874415502643

`A273765(val(A273791(2*n), A273784(n+2)))`
-/

namespace A131921.P4913910874415502643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273765 (SequenceMachineLib.valuation (A273791 (2 * n)).toNat (A273784 (n + 2)).toNat)

end

end A131921.P4913910874415502643

/-!
# A131922: Triangle read by rows: 2*A002024 - A130296 as infinite lower triangular matrices.

The programs for A131922, the canonical program `A131922.P15853728421612671045` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131922 has offset 0).

The definition of A131922 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A131922.P6549592351351855080

`(2-char[∑[n]])*(comp[∑[n]]-n-2)+1`
-/

namespace A131922.P6549592351351855080
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
  (2 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)) * ((SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n : ℤ) - (n : ℤ) - 2) + 1

end

end A131922.P6549592351351855080

namespace A131922

/-- `(2-char[∑[n]])*(comp[∑[n]]-n-2)+1` -/
def P6549592351351855080.Spec : Prop :=
  ∀ n, P6549592351351855080.a n = A131922 n

end A131922

/-! ## A131922.P2362267848497895204

`ceil(A131507(n)/(char[∑[n]]+1))`
-/

namespace A131922.P2362267848497895204
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A131507 n : ℚ) / (((if ∃ j, f1 j = n then 1 else 0) + 1 : ℕ) : ℚ)⌉

end

end A131922.P2362267848497895204

namespace A131922

/-- `ceil(A131507(n)/(char[∑[n]]+1))` -/
def P2362267848497895204.Spec : Prop :=
  ∀ n, P2362267848497895204.a n = A131922 n

end A131922

/-! ## A131922.P13723699461925559747

`A026741(char[∑[n]]+∑[2*char[∑[n]]]-1)`
-/

namespace A131922.P13723699461925559747
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
  2 * (if ∃ j, f4 j = n then 1 else 0)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ) - 1)).toNat

end

end A131922.P13723699461925559747

namespace A131922

/-- `A026741(char[∑[n]]+∑[2*char[∑[n]]]-1)` -/
def P13723699461925559747.Spec : Prop :=
  ∀ n, P13723699461925559747.a n = A131922 n

end A131922

/-! ## A131922.P15853728421612671045

`A094727(A193592(n)+n)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A131922

/-- `A094727(A193592(n)+n)` -/
def P15853728421612671045.Spec : Prop :=
  ∀ n, P15853728421612671045.a n = A131922 n

theorem P15853728421612671045.correct : P15853728421612671045.Spec := by
  intro n
  simp only [A131922]

end A131922

/-! ## A131922.P15498113961649908754

`A144680(n+2-A144328(n+1))`
-/

namespace A131922.P15498113961649908754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144680 ((n + 2 : ℤ) - A144328 (n + 1)).toNat

end

end A131922.P15498113961649908754

namespace A131922

/-- `A144680(n+2-A144328(n+1))` -/
def P15498113961649908754.Spec : Prop :=
  ∀ n, P15498113961649908754.a n = A131922 n

end A131922

/-! ## A131922.P6001055723457054599

`A132778(∑[char[∑[n]]]²-n)`
-/

namespace A131922.P6001055723457054599
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132778 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A131922.P6001055723457054599

namespace A131922

/-- `A132778(∑[char[∑[n]]]²-n)` -/
def P6001055723457054599.Spec : Prop :=
  ∀ n, P6001055723457054599.a n = A131922 n

end A131922

/-! ## A131922.P6552136006058526998

`A171176(2*(n+2)+A171176(2*n+1))`
-/

namespace A131922.P6552136006058526998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171176 ((2 * (n + 2) : ℤ) + A171176 (2 * n + 1)).toNat

end

end A131922.P6552136006058526998

namespace A131922

/-- `A171176(2*(n+2)+A171176(2*n+1))` -/
def P6552136006058526998.Spec : Prop :=
  ∀ n, P6552136006058526998.a n = A131922 n

end A131922

/-!
# A131923: Triangle read by rows: T(n,k) = binomial(n,k) + n.

The programs for A131923, the canonical program `A131923.P8187929482264787384` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131923 has offset 0).

The definition of A131923 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(row(n), col(n))+row(n)` (program `A131923.P8187929482264787384`, by `A131923.P8187929482264787384.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A131923.P8187929482264787384

`C(row(n), col(n))+row(n)`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A131923

/-- `C(row(n), col(n))+row(n)` -/
def P8187929482264787384.Spec : Prop :=
  ∀ n, (P8187929482264787384.a n : ℤ) = A131923 n

theorem P8187929482264787384.correct : P8187929482264787384.Spec := by
  intro n
  simp only [A131923]

end A131923

/-! ## A131923.P17720918590992570165

`∑[A080233(n)]`
-/

namespace A131923.P17720918590992570165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080233 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131923.P17720918590992570165

namespace A131923

/-- `∑[A080233(n)]` -/
def P17720918590992570165.Spec : Prop :=
  ∀ n, P17720918590992570165.a n = A131923 n

end A131923

/-! ## A131923.P12174834133166536772

`A007318(n)+A003056(n)`
-/

namespace A131923.P12174834133166536772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + A003056 n

end

end A131923.P12174834133166536772

namespace A131923

/-- `A007318(n)+A003056(n)` -/
def P12174834133166536772.Spec : Prop :=
  ∀ n, P12174834133166536772.a n = A131923 n

end A131923

/-! ## A131923.P5033651225923068400

`A132108(n)+A002262(n)`
-/

namespace A131923.P5033651225923068400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132108 n + A002262 n

end

end A131923.P5033651225923068400

namespace A131923

/-- `A132108(n)+A002262(n)` -/
def P5033651225923068400.Spec : Prop :=
  ∀ n, P5033651225923068400.a n = A131923 n

theorem P5033651225923068400.correct : P5033651225923068400.Spec := by
  intro n
  simp only [A131923, Nat.add_sub_cancel, A131923.P5033651225923068400.a, A131923.P8187929482264787384.a, A002262, A002262.P17823619022233514403.a, A132108, A132108.P1884031731046061735.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A131923

/-! ## A131923.P7428794661360096594

`A131948(n)-A003056(n)`
-/

namespace A131923.P7428794661360096594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131948 n - A003056 n

end

end A131923.P7428794661360096594

namespace A131923

/-- `A131948(n)-A003056(n)` -/
def P7428794661360096594.Spec : Prop :=
  ∀ n, P7428794661360096594.a n = A131923 n

theorem P7428794661360096594.correct : P7428794661360096594.Spec := by
  intro n
  simp only [A131923, Nat.add_sub_cancel, A131923.P7428794661360096594.a, A131923.P8187929482264787384.a, A003056, A003056.P5318256527314048597.a, A131948, A131948.P15186987073774789875.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A131923

/-! ## A131923.P13679092781223554530

`A003056(n)+abs(A108086(n))`
-/

namespace A131923.P13679092781223554530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n + |A108086 n|

end

end A131923.P13679092781223554530

namespace A131923

/-- `A003056(n)+abs(A108086(n))` -/
def P13679092781223554530.Spec : Prop :=
  ∀ n, P13679092781223554530.a n = A131923 n

end A131923

/-! ## A131923.P1022029959196252518

`A003056(n)+abs(A130595(n))`
-/

namespace A131923.P1022029959196252518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n + |A130595 n|

end

end A131923.P1022029959196252518

namespace A131923

/-- `A003056(n)+abs(A130595(n))` -/
def P1022029959196252518.Spec : Prop :=
  ∀ n, P1022029959196252518.a n = A131923 n

end A131923

/-! ## A131923.P4931070817076482527

`A003056(n)+sqrt(A008459(n))`
-/

namespace A131923.P4931070817076482527
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A003056 n : ℝ) + Real.sqrt (A008459 n : ℝ)

end

end A131923.P4931070817076482527

namespace A131923

/-- `A003056(n)+sqrt(A008459(n))` -/
def P4931070817076482527.Spec : Prop :=
  ∀ n, P4931070817076482527.a n = (A131923 n : ℝ)

end A131923

/-! ## A131923.P12642611593765502272

`A007318(n)+log2(A137688(n))`
-/

namespace A131923.P12642611593765502272
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A007318 n : ℝ) + Real.logb 2 (A137688 n : ℝ)

end

end A131923.P12642611593765502272

namespace A131923

/-- `A007318(n)+log2(A137688(n))` -/
def P12642611593765502272.Spec : Prop :=
  ∀ n, P12642611593765502272.a n = (A131923 n : ℝ)

end A131923

/-! ## A131923.P12286860523596674372

`A014473(n)+∑[A010054(n)]`
-/

namespace A131923.P12286860523596674372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014473 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131923.P12286860523596674372

namespace A131923

/-- `A014473(n)+∑[A010054(n)]` -/
def P12286860523596674372.Spec : Prop :=
  ∀ n, P12286860523596674372.a n = A131923 n

end A131923

/-! ## A131923.P9655235026453508827

`A007318(n)+∑[A073424(n)]`
-/

namespace A131923.P9655235026453508827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073424 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131923.P9655235026453508827

namespace A131923

/-- `A007318(n)+∑[A073424(n)]` -/
def P9655235026453508827.Spec : Prop :=
  ∀ n, P9655235026453508827.a n = A131923 n

end A131923

/-! ## A131923.P17403526675296978864

`A007318(n)+Δ[A006463(n)]`
-/

namespace A131923.P17403526675296978864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006463 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + (f1 (n + 1) - f1 n)

end

end A131923.P17403526675296978864

namespace A131923

/-- `A007318(n)+Δ[A006463(n)]` -/
def P17403526675296978864.Spec : Prop :=
  ∀ n, P17403526675296978864.a n = A131923 n

end A131923

/-! ## A131923.P5966358635307128922

`∑[A028326(n)-A074909(n)]`
-/

namespace A131923.P5966358635307128922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028326 n - A074909 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131923.P5966358635307128922

namespace A131923

/-- `∑[A028326(n)-A074909(n)]` -/
def P5966358635307128922.Spec : Prop :=
  ∀ n, P5966358635307128922.a n = A131923 n

end A131923

/-! ## A131923.P16519898092346019071

`A003056(n)+Δ[A102363(n)]`
-/

namespace A131923.P16519898092346019071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n + (f1 (n + 1) - f1 n)

end

end A131923.P16519898092346019071

namespace A131923

/-- `A003056(n)+Δ[A102363(n)]` -/
def P16519898092346019071.Spec : Prop :=
  ∀ n, P16519898092346019071.a n = A131923 n

end A131923

/-! ## A131923.P4855057416958530320

`A014473(n)+A002024(n+1)`
-/

namespace A131923.P4855057416958530320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014473 n + A002024 (n + 1)

end

end A131923.P4855057416958530320

namespace A131923

/-- `A014473(n)+A002024(n+1)` -/
def P4855057416958530320.Spec : Prop :=
  ∀ n, P4855057416958530320.a n = A131923 n

end A131923

/-! ## A131923.P253809564715378031

`A003056(n)+A014473(n)+1`
-/

namespace A131923.P253809564715378031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n + (A014473 n + 1)

end

end A131923.P253809564715378031

namespace A131923

/-- `A003056(n)+A014473(n)+1` -/
def P253809564715378031.Spec : Prop :=
  ∀ n, P253809564715378031.a n = A131923 n

end A131923

/-! ## A131923.P7388314014666641086

`A104795(n)+A052146(n+1)`
-/

namespace A131923.P7388314014666641086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104795 n + A052146 (n + 1)

end

end A131923.P7388314014666641086

namespace A131923

/-- `A104795(n)+A052146(n+1)` -/
def P7388314014666641086.Spec : Prop :=
  ∀ n, P7388314014666641086.a n = A131923 n

end A131923

/-! ## A131923.P8422410994502147499

`A103451(n)+A132071(n)-1`
-/

namespace A131923.P8422410994502147499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 n + (A132071 n - 1)

end

end A131923.P8422410994502147499

namespace A131923

/-- `A103451(n)+A132071(n)-1` -/
def P8422410994502147499.Spec : Prop :=
  ∀ n, P8422410994502147499.a n = A131923 n

end A131923

/-! ## A131923.P3233334748080317940

`A003056(n)+A028326(n)/2`
-/

namespace A131923.P3233334748080317940
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003056 n : ℚ) + (A028326 n : ℚ) / 2

end

end A131923.P3233334748080317940

namespace A131923

/-- `A003056(n)+A028326(n)/2` -/
def P3233334748080317940.Spec : Prop :=
  ∀ n, P3233334748080317940.a n = (A131923 n : ℚ)

end A131923

/-! ## A131923.P17107711154130386611

`(A131948(n)+A007318(n))/2`
-/

namespace A131923.P17107711154130386611
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131948 n + A007318 n : ℚ) / 2

end

end A131923.P17107711154130386611

namespace A131923

/-- `(A131948(n)+A007318(n))/2` -/
def P17107711154130386611.Spec : Prop :=
  ∀ n, P17107711154130386611.a n = (A131923 n : ℚ)

end A131923

/-!
# A131924: Row sums of triangle A131923.

The programs for A131924, the canonical program `A131924.P7510618184630256618` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131924 has offset 0).

The definition of A131924 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A131924.P7510618184630256618

`2^n+n²+n`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A131924

/-- `2^n+n²+n` -/
def P7510618184630256618.Spec : Prop :=
  ∀ n, (P7510618184630256618.a n : ℤ) = A131924 n

theorem P7510618184630256618.correct : P7510618184630256618.Spec := by
  intro n
  simp only [A131924]

end A131924

/-! ## A131924.P7868661462492541224

`∑[∑[2*(a(n-1)-1)]]` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A131924.P7868661462492541224
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3] fun n f2 =>
  2 * (f2 (n - 1) - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131924.P7868661462492541224

namespace A131924

/-- `∑[∑[2*(a(n-1)-1)]]` -/
def P7868661462492541224.Spec : Prop :=
  ∀ n, P7868661462492541224.a n = A131924 n

end A131924

/-! ## A131924.P6331989630209780247

`floor(∑[a(n-1)+2]+2^n)` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A131924.P6331989630209780247
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2 ^ n

end

end A131924.P6331989630209780247

namespace A131924

/-- `floor(∑[a(n-1)+2]+2^n)` -/
def P6331989630209780247.Spec : Prop :=
  ∀ n, (P6331989630209780247.a n : ℤ) = A131924 n

end A131924

/-! ## A131924.P18288788869774616614

`floor(2^n-∑[a(n-1)-2])` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A131924.P18288788869774616614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131924.P18288788869774616614

namespace A131924

/-- `floor(2^n-∑[a(n-1)-2])` -/
def P18288788869774616614.Spec : Prop :=
  ∀ n, P18288788869774616614.a n = A131924 n

end A131924

/-! ## A131924.P14722107519901074131

`floor(2*a(n-1)+n*(3-n))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A131924.P14722107519901074131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) + (n : ℤ) * (3 - (n : ℤ))

end

end A131924.P14722107519901074131

namespace A131924

/-- `floor(2*a(n-1)+n*(3-n))` -/
def P14722107519901074131.Spec : Prop :=
  ∀ n, P14722107519901074131.a n = A131924 n

theorem P14722107519901074131.correct : P14722107519901074131.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A131924, Nat.add_sub_cancel, A131924.P14722107519901074131.a, A131924.P7510618184630256618.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A131924, Nat.add_sub_cancel, A131924.P14722107519901074131.a, A131924.P7510618184630256618.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A131924

/-! ## A131924.P2930187880474481987

`∑[∑[a(n-1)+a(n-1)-2]]` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A131924.P2930187880474481987
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3] fun n f2 =>
  f2 (n - 1) + (f2 (n - 1) - 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131924.P2930187880474481987

namespace A131924

/-- `∑[∑[a(n-1)+a(n-1)-2]]` -/
def P2930187880474481987.Spec : Prop :=
  ∀ n, P2930187880474481987.a n = A131924 n

end A131924

/-! ## A131924.P9706306778325072112

`∑[∑[a(n-1)-(2-a(n-1))]]` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A131924.P9706306778325072112
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3] fun n f2 =>
  f2 (n - 1) - (2 - f2 (n - 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131924.P9706306778325072112

namespace A131924

/-- `∑[∑[a(n-1)-(2-a(n-1))]]` -/
def P9706306778325072112.Spec : Prop :=
  ∀ n, P9706306778325072112.a n = A131924 n

end A131924

/-! ## A131924.P11022882201394689671

`floor(n-(n*(n-2)-2*a(n-1)))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A131924.P11022882201394689671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) - ((n : ℤ) * ((n : ℤ) - 2) - 2 * a (n - 1))

end

end A131924.P11022882201394689671

namespace A131924

/-- `floor(n-(n*(n-2)-2*a(n-1)))` -/
def P11022882201394689671.Spec : Prop :=
  ∀ n, P11022882201394689671.a n = A131924 n

theorem P11022882201394689671.correct : P11022882201394689671.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A131924, Nat.add_sub_cancel, A131924.P11022882201394689671.a, A131924.P7510618184630256618.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A131924, Nat.add_sub_cancel, A131924.P11022882201394689671.a, A131924.P7510618184630256618.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A131924

/-! ## A131924.P14216639079830789116

`abs(n-A220425(n))`
-/

namespace A131924.P14216639079830789116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) - A220425 n|

end

end A131924.P14216639079830789116

namespace A131924

/-- `abs(n-A220425(n))` -/
def P14216639079830789116.Spec : Prop :=
  ∀ n, P14216639079830789116.a n = A131924 n

end A131924

/-! ## A131924.P3689583638569032384

`∑[A288133(n+1)+n]`
-/

namespace A131924.P3689583638569032384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288133 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131924.P3689583638569032384

namespace A131924

/-- `∑[A288133(n+1)+n]` -/
def P3689583638569032384.Spec : Prop :=
  ∀ n, P3689583638569032384.a n = A131924 n

end A131924

/-! ## A131924.P5361906271762086476

`∑[A052968(n)-1+n]`
-/

namespace A131924.P5361906271762086476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052968 n - 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131924.P5361906271762086476

namespace A131924

/-- `∑[A052968(n)-1+n]` -/
def P5361906271762086476.Spec : Prop :=
  ∀ n, P5361906271762086476.a n = A131924 n

end A131924

/-! ## A131924.P10709262110024999368

`∑[A011782(n)+2*n]`
-/

namespace A131924.P10709262110024999368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n + (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131924.P10709262110024999368

namespace A131924

/-- `∑[A011782(n)+2*n]` -/
def P10709262110024999368.Spec : Prop :=
  ∀ n, P10709262110024999368.a n = A131924 n

end A131924

/-! ## A131924.P10813069965306067304

`∑[A166444(n+1)+2*n]`
-/

namespace A131924.P10813069965306067304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166444 (n + 1) + (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131924.P10813069965306067304

namespace A131924

/-- `∑[A166444(n+1)+2*n]` -/
def P10813069965306067304.Spec : Prop :=
  ∀ n, P10813069965306067304.a n = A131924 n

end A131924

/-! ## A131924.P11233309784851743997

`abs(A000225(n)+(n+1)²-n)`
-/

namespace A131924.P11233309784851743997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000225 n + ((n + 1) ^ 2 : ℤ) - (n : ℤ)|

end

end A131924.P11233309784851743997

namespace A131924

/-- `abs(A000225(n)+(n+1)²-n)` -/
def P11233309784851743997.Spec : Prop :=
  ∀ n, P11233309784851743997.a n = A131924 n

end A131924

/-! ## A131924.P16593339671025254773

`(n+1)*(A000079(n)/(n+1)+n)`
-/

namespace A131924.P16593339671025254773
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((A000079 n : ℚ) / (n + 1 : ℚ) + (n : ℚ))

end

end A131924.P16593339671025254773

namespace A131924

/-- `(n+1)*(A000079(n)/(n+1)+n)` -/
def P16593339671025254773.Spec : Prop :=
  ∀ n, P16593339671025254773.a n = (A131924 n : ℚ)

theorem P16593339671025254773.correct : P16593339671025254773.Spec := by
  intro n
  simp only [A131924, Nat.add_sub_cancel, A131924.P16593339671025254773.a, A131924.P7510618184630256618.a, A000079, A000079.P10855139691139572931.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A131924

/-! ## A131924.P11447336627948727932

`∑[A131577(n)+A004277(n)]`
-/

namespace A131924.P11447336627948727932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n + A004277 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131924.P11447336627948727932

namespace A131924

/-- `∑[A131577(n)+A004277(n)]` -/
def P11447336627948727932.Spec : Prop :=
  ∀ n, P11447336627948727932.a n = A131924 n

end A131924

/-! ## A131924.P15906073459664628305

`2*((2^n+2*a(n-1))/4+n)` with `a(0)=1`
-/

namespace A131924.P15906073459664628305
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  2 * (((2 ^ n : ℚ) + 2 * a (n - 1)) / 4 + (n : ℚ))

end

end A131924.P15906073459664628305

namespace A131924

/-- `2*((2^n+2*a(n-1))/4+n)` -/
def P15906073459664628305.Spec : Prop :=
  ∀ n, P15906073459664628305.a n = (A131924 n : ℚ)

theorem P15906073459664628305.correct : P15906073459664628305.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A131924, Nat.add_sub_cancel, A131924.P15906073459664628305.a, A131924.P7510618184630256618.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A131924, Nat.add_sub_cancel, A131924.P15906073459664628305.a, A131924.P7510618184630256618.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A131924

/-! ## A131924.P1190658074328077170

`(A295077(n+1)+1)/2`
-/

namespace A131924.P1190658074328077170
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A295077 (n + 1) + 1 : ℚ) / 2

end

end A131924.P1190658074328077170

namespace A131924

/-- `(A295077(n+1)+1)/2` -/
def P1190658074328077170.Spec : Prop :=
  ∀ n, P1190658074328077170.a n = (A131924 n : ℚ)

theorem P1190658074328077170.correct : P1190658074328077170.Spec := by
  intro n
  simp only [A131924, Nat.add_sub_cancel, A131924.P1190658074328077170.a, A131924.P7510618184630256618.a, A295077, A295077.P2013166956180128000.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A131924

/-! ## A131924.P4302981305573246852

`(∑[A000079(n)+4*n]+1)/2`
-/

namespace A131924.P4302981305573246852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n + (4 * n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℤ) : ℚ) / 2

end

end A131924.P4302981305573246852

namespace A131924

/-- `(∑[A000079(n)+4*n]+1)/2` -/
def P4302981305573246852.Spec : Prop :=
  ∀ n, P4302981305573246852.a n = (A131924 n : ℚ)

end A131924

/-! ## A131924.P14185377189043955328

`A250605(n+1)%A176448(n)`
-/

namespace A131924.P14185377189043955328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A250605 (n + 1)) (A176448 n)

end

end A131924.P14185377189043955328

namespace A131924

/-- `A250605(n+1)%A176448(n)` -/
def P14185377189043955328.Spec : Prop :=
  ∀ n, P14185377189043955328.a n = A131924 n

end A131924

/-!
# A131925: 2*A002024 - A000012(signed).

The programs for A131925, the canonical program `A131925.P11014538842674046923` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131925 has offset 0).

The definition of A131925 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A131925.P11014538842674046923

`∑[2*char[∑[n]]]-(and(2, comp[∑[n]]+n)-1)`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A131925

/-- `∑[2*char[∑[n]]]-(and(2, comp[∑[n]]+n)-1)` -/
def P11014538842674046923.Spec : Prop :=
  ∀ n, P11014538842674046923.a n = A131925 n

theorem P11014538842674046923.correct : P11014538842674046923.Spec := by
  intro n
  simp only [A131925]

end A131925

/-! ## A131925.P12259437329264392570

`∑[2*char[∑[n]]]-A097807(n)`
-/

namespace A131925.P12259437329264392570
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (if ∃ j, f2 j = n then 1 else 0)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A097807 n

end

end A131925.P12259437329264392570

namespace A131925

/-- `∑[2*char[∑[n]]]-A097807(n)` -/
def P12259437329264392570.Spec : Prop :=
  ∀ n, P12259437329264392570.a n = A131925 n

end A131925

/-! ## A131925.P14288242853012499459

`A005408(∑[char[∑[n]]]-(2-gcd(2, comp[∑[4*n]])))`
-/

namespace A131925.P14288242853012499459
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (2 - (Nat.gcd 2 (SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n) : ℤ))).toNat

end

end A131925.P14288242853012499459

namespace A131925

/-- `A005408(∑[char[∑[n]]]-(2-gcd(2, comp[∑[4*n]])))` -/
def P14288242853012499459.Spec : Prop :=
  ∀ n, P14288242853012499459.a n = A131925 n

end A131925

/-! ## A131925.P18019787910088392612

`A111650(n+1)-1/A097807(n)`
-/

namespace A131925.P18019787910088392612
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A111650 (n + 1) : ℚ) - 1 / (A097807 n : ℚ)

end

end A131925.P18019787910088392612

namespace A131925

/-- `A111650(n+1)-1/A097807(n)` -/
def P18019787910088392612.Spec : Prop :=
  ∀ n, P18019787910088392612.a n = (A131925 n : ℚ)

end A131925

/-! ## A131925.P9197308016244960748

`2*round(log2(A276618(n)))+1`
-/

namespace A131925.P9197308016244960748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.roundAway (Real.logb 2 (A276618 n : ℝ)) + 1

end

end A131925.P9197308016244960748

namespace A131925

/-- `2*round(log2(A276618(n)))+1` -/
def P9197308016244960748.Spec : Prop :=
  ∀ n, P9197308016244960748.a n = A131925 n

end A131925

/-! ## A131925.P6354930015949713008

`A070864(eq[1, floor(2*sqrt(n))%2]-1)`
-/

namespace A131925.P6354930015949713008
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊2 * Real.sqrt (n : ℝ)⌋ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070864 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n - 1)

end

end A131925.P6354930015949713008

namespace A131925

/-- `A070864(eq[1, floor(2*sqrt(n))%2]-1)` -/
def P6354930015949713008.Spec : Prop :=
  ∀ n, P6354930015949713008.a n = A131925 n

end A131925

/-! ## A131925.P15157550949990463678

`A070864(A217575(n+1))`
-/

namespace A131925.P15157550949990463678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070864 (A217575 (n + 1)).toNat

end

end A131925.P15157550949990463678

namespace A131925

/-- `A070864(A217575(n+1))` -/
def P15157550949990463678.Spec : Prop :=
  ∀ n, P15157550949990463678.a n = A131925 n

end A131925

/-!
# A131926: Expansion of series reversion of x(1-7x)/(1-x).

The programs for A131926, there is no canonical definition to state claims against.
-/

/-! ## A131926.P10714398795454390552

`∏{p}[A133307(n), A222249(#)]`
-/

namespace A131926.P10714398795454390552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133307 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A222249 p

end

end A131926.P10714398795454390552

/-!
# A131927: Expansion of series reversion of x * (1 - 9*x) / (1 - x).

The programs for A131927, there is no canonical definition to state claims against.
-/

/-! ## A131927.P12817205253361125541

`A047595(A211825(n)+char[1])`
-/

namespace A131927.P12817205253361125541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047595 (A211825 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A131927.P12817205253361125541

/-!
# A131928: a(n) = phi(binomial(2*n,n)*n).

The programs for A131928, there is no canonical definition to state claims against.
-/

/-! ## A131928.P6695971049730387033

`A131681(n)/round(1/acot(n))`
-/

namespace A131928.P6695971049730387033
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131681 n : ℚ) / (SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n : ℝ)) : ℚ)

end

end A131928.P6695971049730387033

/-! ## A131928.P14513589932670316559

`A131681(n)/A028310(n)`
-/

namespace A131928.P14513589932670316559
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131681 n : ℚ) / (A028310 n : ℚ)

end

end A131928.P14513589932670316559

/-! ## A131928.P14106780595743786614

`A131705(n)/n^ceil(atan(n))`
-/

namespace A131928.P14106780595743786614
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131705 n : ℚ) / (n : ℚ) ^ (⌈Real.arctan (n : ℝ)⌉ : ℤ)

end

end A131928.P14106780595743786614

/-! ## A131928.P4411169319377055895

`A131705(n)/A274922(n)²`
-/

namespace A131928.P4411169319377055895
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131705 n : ℚ) / (A274922 n ^ 2 : ℚ)

end

end A131928.P4411169319377055895

/-! ## A131928.P16952210564699244308

`A131705(n)/A028310(n²)`
-/

namespace A131928.P16952210564699244308
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131705 n : ℚ) / (A028310 (n ^ 2) : ℚ)

end

end A131928.P16952210564699244308

/-!
# A131929: Number of prime factors of n that are contained in decimal representation of n.

The programs for A131929, there is no canonical definition to state claims against.
-/

/-! ## A131929.P3349523634299064855

`A304527(A069188(n+1))%2`
-/

namespace A131929.P3349523634299064855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A304527 (A069188 (n + 1)).toNat) 2

end

end A131929.P3349523634299064855

/-! ## A131929.P7456904280672201095

`and(A000051(n), A304527(A069188(n+1)))`
-/

namespace A131929.P7456904280672201095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000051 n) (A304527 (A069188 (n + 1)).toNat)

end

end A131929.P7456904280672201095

/-! ## A131929.P4592982264209585501

`and(A054977(n), A304527(A069188(n+1)))`
-/

namespace A131929.P4592982264209585501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A054977 n) (A304527 (A069188 (n + 1)).toNat)

end

end A131929.P4592982264209585501

/-! ## A131929.P3483731094339859962

`and(A057427(n), A304527(A069188(n+1)))`
-/

namespace A131929.P3483731094339859962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057427 n) (A304527 (A069188 (n + 1)).toNat)

end

end A131929.P3483731094339859962

/-! ## A131929.P1395653342998955313

`and(-A057428(n), A304527(A069188(n+1)))`
-/

namespace A131929.P1395653342998955313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A057428 n) (A304527 (A069188 (n + 1)).toNat)

end

end A131929.P1395653342998955313

/-!
# A131930: Numbers k such that the decimal representation of k contains at least one prime factor of k.

The programs for A131930, there is no canonical definition to state claims against.
-/

/-! ## A131930.P12482217289072411454

`lt[A010051(A001844(2*n)+1), A131929(n+1)]+1`
-/

namespace A131930.P12482217289072411454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A001844 (2 * n) + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131929 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A131930.P12482217289072411454

/-! ## A131930.P14710860110859468062

`lt[A079208(2*n)/12, A131929(n+1)]+1`
-/

namespace A131930.P14710860110859468062
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079208 (2 * n) : ℚ) / 12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131929 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n + 1

end

end A131930.P14710860110859468062

/-! ## A131930.P13591400763531277354

`eq[A057427(A108773(n)+1), A131929(n+1)]+1`
-/

namespace A131930.P13591400763531277354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A108773 n + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131929 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A131930.P13591400763531277354

/-! ## A131930.P2364261315780333177

`eq[A057427(A279421(2*n+3)), A131929(n+1)]+1`
-/

namespace A131930.P2364261315780333177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A279421 (2 * n + 3)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131929 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A131930.P2364261315780333177

/-! ## A131930.P7835654207890730126

`eq[A057427(A226833(n+1)), A131929(n+1)]+1`
-/

namespace A131930.P7835654207890730126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A226833 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131929 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A131930.P7835654207890730126

/-! ## A131930.P16985489760292513761

`lt[A010051(A309834(n)+4), A131929(n+1)]+1`
-/

namespace A131930.P16985489760292513761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A309834 n + 4).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131929 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A131930.P16985489760292513761

/-! ## A131930.P9848742328464130970

`eq[A033999(A118940(2*(n+1))+1), A131929(n+1)]+1`
-/

namespace A131930.P9848742328464130970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A118940 (2 * (n + 1)) + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131929 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A131930.P9848742328464130970

/-! ## A131930.P13822541658251217091

`eq[A057427(A380670(n)), A131929(n+1)]+1`
-/

namespace A131930.P13822541658251217091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A380670 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131929 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A131930.P13822541658251217091

/-! ## A131930.P9666596015208128814

`eq[A057427(A108701(n+1)), A131929(n+1)]+1`
-/

namespace A131930.P9666596015208128814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A108701 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131929 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A131930.P9666596015208128814

/-! ## A131930.P12261867878626147269

`eq[A057427(A133092(n+1)), A131929(n+1)]+1`
-/

namespace A131930.P12261867878626147269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A133092 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131929 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A131930.P12261867878626147269

/-!
# A131933: a(n) = A056866(n)/4.

The programs for A131933, there is no canonical definition to state claims against.
-/

/-! ## A131933.P685740288743319818

`A056866(n+1)/4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A131933.P685740288743319818
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056866 (n + 1) : ℚ) / 4

end

end A131933.P685740288743319818

/-! ## A131933.P14883087535668620593

`4^A133574(A001316(n))*A056866(n+1)`
-/

namespace A131933.P14883087535668620593
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) ^ (A133574 (A001316 n).toNat : ℤ) * (A056866 (n + 1) : ℚ)

end

end A131933.P14883087535668620593

/-! ## A131933.P14678777042856109308

`A255589(A056866(n+1))`
-/

namespace A131933.P14678777042856109308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255589 (A056866 (n + 1)).toNat

end

end A131933.P14678777042856109308

/-! ## A131933.P7802733796312771194

`A002265(A056866(n+1)+1)`
-/

namespace A131933.P7802733796312771194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A056866 (n + 1) + 1).toNat

end

end A131933.P7802733796312771194

/-! ## A131933.P10388160047859043511

`A008624(A056866(n+1)+1)`
-/

namespace A131933.P10388160047859043511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (A056866 (n + 1) + 1).toNat

end

end A131933.P10388160047859043511

/-! ## A131933.P17386067642011860931

`A025480(A056866(n+1)+1)`
-/

namespace A131933.P17386067642011860931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A056866 (n + 1) + 1).toNat

end

end A131933.P17386067642011860931

/-! ## A131933.P9516886242056460927

`A008621(A056866(n+1)-1)`
-/

namespace A131933.P9516886242056460927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A056866 (n + 1) - 1).toNat

end

end A131933.P9516886242056460927

/-!
# A131934: Records in A014197.

The programs for A131934, there is no canonical definition to state claims against.
-/

/-! ## A131934.P16765890487294499725

`A014197(A097942(n+1))`
-/

namespace A131934.P16765890487294499725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014197 (A097942 (n + 1)).toNat

end

end A131934.P16765890487294499725

/-! ## A131934.P16097969723896870010

`record[A058277(n+1)]`
-/

namespace A131934.P16097969723896870010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058277 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A131934.P16097969723896870010

/-! ## A131934.P7403128789204596487

`record[A143422(n+1)+A143421(n+1)]`
-/

namespace A131934.P7403128789204596487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143422 (n + 1) + A143421 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A131934.P7403128789204596487

/-! ## A131934.P10470715183181277726

`record[A081373(A036913(n+1))]`
-/

namespace A131934.P10470715183181277726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081373 (A036913 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A131934.P10470715183181277726

/-! ## A131934.P15143886173662861279

`record[A081373(A181660(n+2))]`
-/

namespace A131934.P15143886173662861279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081373 (A181660 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A131934.P15143886173662861279

/-!
# A131935: a(n) is the number of Khalimsky-continuous functions with four-point codomain and an n-point range.

The programs for A131935, the canonical program `A131935.P14898065243679452023` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131935 has offset 1).

The definition of A131935 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 310 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A131935.P1204379214647172486

`ogf((4+3x-4x^2-x^3)/(1-x-3x^2+x^3+x^4))`
-/

namespace A131935.P1204379214647172486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, 3, -4, -1] [1, -1, -3, 1, 1] n

end

end A131935.P1204379214647172486

namespace A131935

/-- `ogf((4+3x-4x^2-x^3)/(1-x-3x^2+x^3+x^4))` -/
def P1204379214647172486.Spec : Prop :=
  ∀ n, P1204379214647172486.a n = A131935 (n + 1)

end A131935

/-! ## A131935.P14898065243679452023

`a(n-1)+3*a(n-2)-a(n-3)-a(n-4)` with `a(0)=4, a(1)=7, a(2)=15, a(3)=31`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A131935

/-- `a(n-1)+3*a(n-2)-a(n-3)-a(n-4)` -/
def P14898065243679452023.Spec : Prop :=
  ∀ n, P14898065243679452023.a n = A131935 (n + 1)

theorem P14898065243679452023.correct : P14898065243679452023.Spec := by
  intro n
  simp only [A131935, Nat.add_sub_cancel]

end A131935

/-! ## A131935.P11974992839937921839

`4*A289846(n)-A192422(n)`
-/

namespace A131935.P11974992839937921839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A289846 n - A192422 n

end

end A131935.P11974992839937921839

namespace A131935

/-- `4*A289846(n)-A192422(n)` -/
def P11974992839937921839.Spec : Prop :=
  ∀ n, P11974992839937921839.a n = A131935 (n + 1)

end A131935

/-! ## A131935.P3028779134592441439

`A112576(n+2)+3*A131322(n)`
-/

namespace A131935.P3028779134592441439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112576 (n + 2) + 3 * A131322 n

end

end A131935.P3028779134592441439

namespace A131935

/-- `A112576(n+2)+3*A131322(n)` -/
def P3028779134592441439.Spec : Prop :=
  ∀ n, P3028779134592441439.a n = A131935 (n + 1)

end A131935

/-! ## A131935.P13142752210043010944

`A131246(n+2)-2*A131246(n)`
-/

namespace A131935.P13142752210043010944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131246 (n + 2) - 2 * A131246 n

end

end A131935.P13142752210043010944

namespace A131935

/-- `A131246(n+2)-2*A131246(n)` -/
def P13142752210043010944.Spec : Prop :=
  ∀ n, P13142752210043010944.a n = A131935 (n + 1)

end A131935

/-! ## A131935.P5711001936907760955

`A183314(n+2)-(A131246(n)+A131246(n))`
-/

namespace A131935.P5711001936907760955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183314 (n + 2) - (A131246 n + A131246 n)

end

end A131935.P5711001936907760955

namespace A131935

/-- `A183314(n+2)-(A131246(n)+A131246(n))` -/
def P5711001936907760955.Spec : Prop :=
  ∀ n, P5711001936907760955.a n = A131935 (n + 1)

end A131935

/-!
# A131936: Partial sums of A006226.

The programs for A131936, there is no canonical definition to state claims against.
-/

/-! ## A131936.P12947927988502362929

`∑[A006226(n)]`
-/

namespace A131936.P12947927988502362929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006226 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131936.P12947927988502362929

/-! ## A131936.P9638820238694825969

`A006226(n)+a(A054055(n)-1)` with `a(0)=1`
-/

namespace A131936.P9638820238694825969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A006226 n + a (A054055 n - 1).toNat

end

end A131936.P9638820238694825969

/-! ## A131936.P1688772412199319526

`A006226(n)+a(A029966(n+1)-1)` with `a(0)=1`
-/

namespace A131936.P1688772412199319526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A006226 n + a (A029966 (n + 1) - 1).toNat

end

end A131936.P1688772412199319526

/-!
# A131937: a(1)=1; a(2)=4, a(n) = a(n-1) + (n-th positive integer which does not occur in sequence A131938).

The programs for A131937, there is no canonical definition to state claims against.
-/

/-! ## A131937.P10885021624054062670

`∑[comp[floor(∑[∑[atan(n)]])]]`
-/

namespace A131937.P10885021624054062670
noncomputable section

def f4 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (n : ℝ)

def f3 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f3 j⌋

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131937.P10885021624054062670

/-! ## A131937.P8095292711822336916

`∑[comp[∑[comp[∑[n]-2]]]]`
-/

namespace A131937.P8095292711822336916
noncomputable section

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f5 j : ℕ) : ℤ) - 2

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ (x : ℤ)) n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131937.P8095292711822336916

/-! ## A131937.P4535943504787619139

`∑[comp[∑[comp[n^(n%7)]]]]%(7*n²+10)`
-/

namespace A131937.P4535943504787619139
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ (n % 7)

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) % (7 * n ^ 2 + 10)

end

end A131937.P4535943504787619139

/-! ## A131937.P11301060890332479191

`or(∑[A175139(n+1)], char[4])`
-/

namespace A131937.P11301060890332479191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175139 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (∑ j ∈ Finset.range (n + 1), f1 j) ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A131937.P11301060890332479191

/-! ## A131937.P5504426589998297203

`∑[A204164(3*(n+1))]+∑[n]`
-/

namespace A131937.P5504426589998297203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204164 (3 * (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A131937.P5504426589998297203

/-! ## A131937.P7278853880123397733

`∑[comp[∑[A138591(n+1)]]]+n+1`
-/

namespace A131937.P7278853880123397733
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138591 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 1)

end

end A131937.P7278853880123397733

/-! ## A131937.P1308690673601383156

`∑[A135664(2*n+1)]+∑[n+1]`
-/

namespace A131937.P1308690673601383156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135664 (2 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A131937.P1308690673601383156

/-! ## A131937.P13179140953371106444

`A007318(∑[n])*∑[A175139(n+1)]`
-/

namespace A131937.P13179140953371106444
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175139 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A131937.P13179140953371106444

/-! ## A131937.P2025638060166176136

`∑[A175139(n+1)]%A000041(n+5)`
-/

namespace A131937.P2025638060166176136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175139 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A000041 (n + 5))

end

end A131937.P2025638060166176136

/-! ## A131937.P16575113091819158096

`∑[A175139(n+1)]+A008683(4*(n+1))`
-/

namespace A131937.P16575113091819158096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175139 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + A008683 (4 * (n + 1))

end

end A131937.P16575113091819158096

/-!
# A131938: a(1)=2; a(2)=5. a(n) = a(n-1) + (n-th positive integer which does not occur in sequence A131937).

The programs for A131938, there is no canonical definition to state claims against.
-/

/-! ## A131938.P7750447276184307294

`∑[comp[∑[comp[∑[comp[n²]]]]]]`
-/

namespace A131938.P7750447276184307294
noncomputable section

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f6 j ≠ x) n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131938.P7750447276184307294

/-! ## A131938.P7327650888377039917

`a(n-1)+ceil(sqrt((n+1)*tan(1))+n)` with `a(0)=2`
-/

namespace A131938.P7327650888377039917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + ⌈Real.sqrt ((n + 1 : ℝ) * Real.tan (1 : ℝ)) + (n : ℝ)⌉

end

end A131938.P7327650888377039917

/-! ## A131938.P7705119370567118139

`a(n-1)+floor(sqrt((n+1)*cosh(1))+n+1)` with `a(0)=2`
-/

namespace A131938.P7705119370567118139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + ⌊Real.sqrt ((n + 1 : ℝ) * Real.cosh (1 : ℝ)) + (n + 1 : ℝ)⌋

end

end A131938.P7705119370567118139

/-! ## A131938.P11950409921213492246

`∑[ceil(sqrt((n+1)*tan(1))+n)]%(7*n²+10)`
-/

namespace A131938.P11950409921213492246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt ((n + 1 : ℝ) * Real.tan (1 : ℝ)) + (n : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (7 * n ^ 2 + 10 : ℤ)

end

end A131938.P11950409921213492246

/-! ## A131938.P11147610336586955124

`∑[ceil(sqrt((n+1)*cosh(1))+n)]%(7*n²+10)`
-/

namespace A131938.P11147610336586955124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt ((n + 1 : ℝ) * Real.cosh (1 : ℝ)) + (n : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (7 * n ^ 2 + 10 : ℤ)

end

end A131938.P11147610336586955124

/-! ## A131938.P17125039686880611168

`∑[ceil(sqrt((n+1)/cot(1))+n)]%(7*n²+10)`
-/

namespace A131938.P17125039686880611168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt ((n + 1 : ℝ) / Real.cot (1 : ℝ)) + (n : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (7 * n ^ 2 + 10 : ℤ)

end

end A131938.P17125039686880611168

/-! ## A131938.P1323129486655752947

`∑[round((n+1)^cos(1)+n+1)]%(7*n²+10)`
-/

namespace A131938.P1323129486655752947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n + 1 : ℝ) ^ (Real.cos (1 : ℝ)) + (n + 1 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (7 * n ^ 2 + 10 : ℤ)

end

end A131938.P1323129486655752947

/-! ## A131938.P17313248923796322455

`or(∑[A175140(n+1)], char[1])`
-/

namespace A131938.P17313248923796322455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175140 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (∑ j ∈ Finset.range (n + 1), f1 j) ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A131938.P17313248923796322455

/-!
# A131939: Least k such that the difference between consecutive 3-almost primes A014612(k) equals n, or 0 if no such k exists.

The programs for A131939, there is no canonical definition to state claims against.
-/

/-! ## A131939.P4842103812857268188

`A058933(A366673(n+1))`
-/

namespace A131939.P4842103812857268188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058933 (A366673 (n + 1)).toNat

end

end A131939.P4842103812857268188

/-!
# A131940: Least common multiple of {1, 7, 13, 19, 25, ..., (6n+1)} (A016921).

The programs for A131940, there is no canonical definition to state claims against.
-/

/-! ## A131940.P13155553528926457727

`lcm(6*n+1, a(n-1))` with `a(0)=1`
-/

namespace A131940.P13155553528926457727
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lcm (6 * n + 1) (a (n - 1))

end

end A131940.P13155553528926457727

/-! ## A131940.P7372837197423341829

`lcm(abs(a(n-1)), xor(1, 6*n))` with `a(0)=1`
-/

namespace A131940.P7372837197423341829
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lcm (a (n - 1)) (Nat.xor 1 (6 * n))

end

end A131940.P7372837197423341829

/-! ## A131940.P96479093209828512

`lcm(-a(n-1), ceil(2/acot(3*n)))` with `a(0)=1`
-/

namespace A131940.P96479093209828512
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.lcm (-(a (n - 1) : ℤ)) ⌈2 / SequenceMachineLib.acot (3 * n : ℝ)⌉

end

end A131940.P96479093209828512

/-! ## A131940.P11488841230678754451

`lcm(a(n-1), A016921(n))` with `a(0)=1`
-/

namespace A131940.P11488841230678754451
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.lcm (a (n - 1) : ℤ) (A016921 n)

end

end A131940.P11488841230678754451

/-! ## A131940.P15336976017335170782

`lcm(ceil(a(n-1)), A271114(n))` with `a(0)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A131940.P15336976017335170782
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.lcm (a (n - 1) : ℤ) (A271114 n)

end

end A131940.P15336976017335170782

/-!
# A131941: Partial sums of ceiling(n^2/2) (A000982).

The programs for A131941, the canonical program `A131941.P12263898297089635697` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131941 has offset 0).

The definition of A131941 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A131941.P12059021167278630541

`a(n-2)+n²-n+1` with `a(0)=0, a(1)=1`
-/

namespace A131941.P12059021167278630541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 2) + (n ^ 2 : ℤ) - (n : ℤ) + 1

end

end A131941.P12059021167278630541

namespace A131941

/-- `a(n-2)+n²-n+1` -/
def P12059021167278630541.Spec : Prop :=
  ∀ n, P12059021167278630541.a n = A131941 n

end A131941

/-! ## A131941.P4441456012527958589

`floor((n+1)*(2*n²+n+3)/12)`
-/

namespace A131941.P4441456012527958589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n + 1) * (2 * n ^ 2 + n + 3) : ℚ) / 12⌋

end

end A131941.P4441456012527958589

namespace A131941

/-- `floor((n+1)*(2*n²+n+3)/12)` -/
def P4441456012527958589.Spec : Prop :=
  ∀ n, P4441456012527958589.a n = A131941 n

end A131941

/-! ## A131941.P12263898297089635697

`3*a(n-1)-2*a(n-2)-2*a(n-3)+3*a(n-4)-a(n-5)` with `a(0)=0, a(1)=1, a(2)=3, a(3)=8, a(4)=16`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A131941

/-- `3*a(n-1)-2*a(n-2)-2*a(n-3)+3*a(n-4)-a(n-5)` -/
def P12263898297089635697.Spec : Prop :=
  ∀ n, P12263898297089635697.a n = A131941 n

theorem P12263898297089635697.correct : P12263898297089635697.Spec := by
  intro n
  simp only [A131941]

end A131941

/-! ## A131941.P4354999767788443695

`∑[n%2+n²]/2`
-/

namespace A131941.P4354999767788443695
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2 + n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 2

end

end A131941.P4354999767788443695

namespace A131941

/-- `∑[n%2+n²]/2` -/
def P4354999767788443695.Spec : Prop :=
  ∀ n, P4354999767788443695.a n = (A131941 n : ℚ)

end A131941

/-! ## A131941.P14974208728725617376

`∑[and(1, n)+n²]/2`
-/

namespace A131941.P14974208728725617376
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n + n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 2

end

end A131941.P14974208728725617376

namespace A131941

/-- `∑[and(1, n)+n²]/2` -/
def P14974208728725617376.Spec : Prop :=
  ∀ n, P14974208728725617376.a n = (A131941 n : ℚ)

end A131941

/-! ## A131941.P18366792273645142776

`∑[n²]-∑[∑[and(n, -2)]]`
-/

namespace A131941.P18366792273645142776
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ∑ j ∈ Finset.range (n + 1), f2 j

end

end A131941.P18366792273645142776

namespace A131941

/-- `∑[n²]-∑[∑[and(n, -2)]]` -/
def P18366792273645142776.Spec : Prop :=
  ∀ n, P18366792273645142776.a n = A131941 n

end A131941

/-! ## A131941.P7991551899670323371

`n+1-∑[∑[or(1, -n)]]`
-/

namespace A131941.P7991551899670323371
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (-(n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131941.P7991551899670323371

namespace A131941

/-- `n+1-∑[∑[or(1, -n)]]` -/
def P7991551899670323371.Spec : Prop :=
  ∀ n, P7991551899670323371.a n = A131941 n

end A131941

/-! ## A131941.P963945271306156670

`ceil(a(n-1)+n²/2)` with `a(0)=0`
-/

namespace A131941.P963945271306156670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌈(a (n - 1) : ℚ) + (n ^ 2 : ℚ) / 2⌉

end

end A131941.P963945271306156670

namespace A131941

/-- `ceil(a(n-1)+n²/2)` -/
def P963945271306156670.Spec : Prop :=
  ∀ n, P963945271306156670.a n = A131941 n

end A131941

/-! ## A131941.P4399761334972157147

`round(a(n-1)+n²/2)` with `a(0)=0`
-/

namespace A131941.P4399761334972157147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  SequenceMachineLib.roundAway ((a (n - 1) : ℚ) + (n ^ 2 : ℚ) / 2)

end

end A131941.P4399761334972157147

namespace A131941

/-- `round(a(n-1)+n²/2)` -/
def P4399761334972157147.Spec : Prop :=
  ∀ n, P4399761334972157147.a n = A131941 n

end A131941

/-! ## A131941.P4663460724565139545

`∑[∑[or(1, n-1)]]+n+1`
-/

namespace A131941.P4663460724565139545
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((n : ℤ) - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 1 : ℤ)

end

end A131941.P4663460724565139545

namespace A131941

/-- `∑[∑[or(1, n-1)]]+n+1` -/
def P4663460724565139545.Spec : Prop :=
  ∀ n, P4663460724565139545.a n = A131941 n

end A131941

/-! ## A131941.P1555605398152865836

`∑[∑[a(n-2)+4]]/2` with `a(0)=0, a(1)=2, a(2)=2`
-/

namespace A131941.P1555605398152865836
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 2] fun n f2 =>
  f2 (n - 2) + 4

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 2

end

end A131941.P1555605398152865836

namespace A131941

/-- `∑[∑[a(n-2)+4]]/2` -/
def P1555605398152865836.Spec : Prop :=
  ∀ n, P1555605398152865836.a n = (A131941 n : ℚ)

end A131941

/-! ## A131941.P11318970838594162289

`1-(n-a(n-2)-n²)` with `a(0)=0, a(1)=1`
-/

namespace A131941.P11318970838594162289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  1 - ((n : ℤ) - a (n - 2) - (n ^ 2 : ℤ))

end

end A131941.P11318970838594162289

namespace A131941

/-- `1-(n-a(n-2)-n²)` -/
def P11318970838594162289.Spec : Prop :=
  ∀ n, P11318970838594162289.a n = A131941 n

end A131941

/-! ## A131941.P8766521724121882079

`∑[a(n-2)-1]+∑[∑[n]]` with `a(0)=0, a(1)=0`
-/

namespace A131941.P8766521724121882079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n f1 =>
  f1 (n - 2) - 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A131941.P8766521724121882079

namespace A131941

/-- `∑[a(n-2)-1]+∑[∑[n]]` -/
def P8766521724121882079.Spec : Prop :=
  ∀ n, P8766521724121882079.a n = A131941 n

end A131941

/-! ## A131941.P1126652971085648417

`∑[∑[n-(n+1)%2]]+1+n`
-/

namespace A131941.P1126652971085648417
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (((n + 1) % 2 : ℕ) : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1 + (n : ℤ)

end

end A131941.P1126652971085648417

namespace A131941

/-- `∑[∑[n-(n+1)%2]]+1+n` -/
def P1126652971085648417.Spec : Prop :=
  ∀ n, P1126652971085648417.a n = A131941 n

end A131941

/-! ## A131941.P757244721563268732

`∑[∑[n+1-gcd(2, n)]]+n+1`
-/

namespace A131941.P757244721563268732
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (Nat.gcd 2 n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 1 : ℤ)

end

end A131941.P757244721563268732

namespace A131941

/-- `∑[∑[n+1-gcd(2, n)]]+n+1` -/
def P757244721563268732.Spec : Prop :=
  ∀ n, P757244721563268732.a n = A131941 n

end A131941

/-! ## A131941.P15726249574646886368

`∑[∑[and(1, n)+n-1]]+n+1`
-/

namespace A131941.P15726249574646886368
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.land 1 n : ℤ) + ((n : ℤ) - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 1 : ℤ)

end

end A131941.P15726249574646886368

namespace A131941

/-- `∑[∑[and(1, n)+n-1]]+n+1` -/
def P15726249574646886368.Spec : Prop :=
  ∀ n, P15726249574646886368.a n = A131941 n

end A131941

/-! ## A131941.P2431513658804425455

`∑[∑[∑[2-a(n-1)]]]-∑[n]` with `a(0)=0`
-/

namespace A131941.P2431513658804425455
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f3 =>
  2 - f3 (n - 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((∑ j ∈ Finset.range (n + 1), f4 j : ℕ) : ℤ)

end

end A131941.P2431513658804425455

namespace A131941

/-- `∑[∑[∑[2-a(n-1)]]]-∑[n]` -/
def P2431513658804425455.Spec : Prop :=
  ∀ n, P2431513658804425455.a n = A131941 n

end A131941

/-! ## A131941.P6047005959854952686

`a(n-2)+n*(n-1)+1` with `a(0)=0, a(1)=1`
-/

namespace A131941.P6047005959854952686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 2) + ((n : ℤ) * ((n : ℤ) - 1) + 1)

end

end A131941.P6047005959854952686

namespace A131941

/-- `a(n-2)+n*(n-1)+1` -/
def P6047005959854952686.Spec : Prop :=
  ∀ n, P6047005959854952686.a n = A131941 n

end A131941

/-! ## A131941.P18225677982809346987

`1-(n*(1-n)-a(n-2))` with `a(0)=0, a(1)=1`
-/

namespace A131941.P18225677982809346987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  1 - ((n : ℤ) * (1 - (n : ℤ)) - a (n - 2))

end

end A131941.P18225677982809346987

namespace A131941

/-- `1-(n*(1-n)-a(n-2))` -/
def P18225677982809346987.Spec : Prop :=
  ∀ n, P18225677982809346987.a n = A131941 n

end A131941

/-! ## A131941.P7516945967886679075

`∑[A000982(n)]`
-/

namespace A131941.P7516945967886679075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000982 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131941.P7516945967886679075

namespace A131941

/-- `∑[A000982(n)]` -/
def P7516945967886679075.Spec : Prop :=
  ∀ n, P7516945967886679075.a n = A131941 n

end A131941

/-!
# A131942: Number of partitions of n in which each odd part has odd multiplicity.

The programs for A131942, there is no canonical definition to state claims against.
-/

/-! ## A131942.P4029777679991389793

`A201080(A145068(n+1)-n²)`
-/

namespace A131942.P4029777679991389793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201080 (A145068 (n + 1) - (n ^ 2 : ℤ)).toNat

end

end A131942.P4029777679991389793

/-! ## A131942.P7129353568502308241

`A201080(∑[n²+2]-1)`
-/

namespace A131942.P7129353568502308241
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201080 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A131942.P7129353568502308241

/-! ## A131942.P3343767091029394617

`A305630(n)-A008997(A000593(n+3))`
-/

namespace A131942.P3343767091029394617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305630 n - A008997 (A000593 (n + 3)).toNat

end

end A131942.P3343767091029394617

/-!
# A131943: Expansion of b(q) * b(q^2) in powers of q where b() is a cubic AGM theta function.

The programs for A131943, there is no canonical definition to state claims against.
-/

/-! ## A131943.P2721538738201834326

`3^(n%2)*A214456(n)`
-/

namespace A131943.P2721538738201834326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ (n % 2) : ℤ) * A214456 n

end

end A131943.P2721538738201834326

/-! ## A131943.P13726277853521258898

`A010684(n)*A214456(n)`
-/

namespace A131943.P13726277853521258898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010684 n * A214456 n

end

end A131943.P13726277853521258898

/-! ## A131943.P11838187787713857072

`A033999(n)*A226139(n)`
-/

namespace A131943.P11838187787713857072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A226139 n

end

end A131943.P11838187787713857072

/-! ## A131943.P154837956133103655

`(2-A010684(n))*A226139(n)`
-/

namespace A131943.P154837956133103655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A010684 n) * A226139 n

end

end A131943.P154837956133103655

/-! ## A131943.P4272002575473892396

`(2-A033999(n))*A214456(n)`
-/

namespace A131943.P4272002575473892396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A033999 n) * A214456 n

end

end A131943.P4272002575473892396

/-! ## A131943.P7164177347671520482

`2*A214456(n)-A118271(n)`
-/

namespace A131943.P7164177347671520482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A214456 n - A118271 n

end

end A131943.P7164177347671520482

/-! ## A131943.P16288784958920986695

`A226139(n)/(2-Δ[A042948(n)])`
-/

namespace A131943.P16288784958920986695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042948 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A226139 n : ℚ) / (2 - (f1 (n + 1) - f1 n) : ℚ)

end

end A131943.P16288784958920986695

/-! ## A131943.P13377506827659149028

`A109506(n+1)/A000593(n+1)*A118271(n)`
-/

namespace A131943.P13377506827659149028
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109506 (n + 1) : ℚ) / (A000593 (n + 1) : ℚ) * (A118271 n : ℚ)

end

end A131943.P13377506827659149028

/-! ## A131943.P1364214833661316284

`A006353(n)+A131946(n)-A125514(n)`
-/

namespace A131943.P1364214833661316284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006353 n + (A131946 n - A125514 n)

end

end A131943.P1364214833661316284

/-! ## A131943.P7901344501276393081

`A226139(lcm(2, n))`
-/

namespace A131943.P7901344501276393081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226139 (Nat.lcm 2 n)

end

end A131943.P7901344501276393081

/-! ## A131943.P8012524629124558155

`A118271(A109043(n))`
-/

namespace A131943.P8012524629124558155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118271 (A109043 n).toNat

end

end A131943.P8012524629124558155

/-! ## A131943.P14163969584311321603

`A118271(2*A227140(n))`
-/

namespace A131943.P14163969584311321603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118271 (2 * A227140 n).toNat

end

end A131943.P14163969584311321603

/-! ## A131943.P865673446739609657

`A214456(n*A000034(n))`
-/

namespace A131943.P865673446739609657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214456 ((n : ℤ) * A000034 n).toNat

end

end A131943.P865673446739609657

/-! ## A131943.P6866656577442001991

`A226139(n*A000034(n))`
-/

namespace A131943.P6866656577442001991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226139 ((n : ℤ) * A000034 n).toNat

end

end A131943.P6866656577442001991

/-! ## A131943.P14400642980606455281

`A118271(2*n)`
-/

namespace A131943.P14400642980606455281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118271 (2 * n)

end

end A131943.P14400642980606455281

/-! ## A131943.P5814248873365473569

`A214456(2*n)`
-/

namespace A131943.P5814248873365473569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214456 (2 * n)

end

end A131943.P5814248873365473569

/-! ## A131943.P11677806228164138312

`A226139(2*n)`
-/

namespace A131943.P11677806228164138312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226139 (2 * n)

end

end A131943.P11677806228164138312

/-! ## A131943.P4318993909253170150

`A118271(A005843(n))%(n+4)²`
-/

namespace A131943.P4318993909253170150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A118271 (A005843 n).toNat) ((n + 4) ^ 2 : ℤ)

end

end A131943.P4318993909253170150

/-! ## A131943.P2617721150288965775

`A006353(2*n)-(A125514(2*n)-A131946(2*n))`
-/

namespace A131943.P2617721150288965775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006353 (2 * n) - (A125514 (2 * n) - A131946 (2 * n))

end

end A131943.P2617721150288965775

/-! ## A131943.P1444345460081685494

`A118271(A109045(n))%(n+2)²`
-/

namespace A131943.P1444345460081685494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A118271 (A109045 n).toNat) ((n + 2) ^ 2 : ℤ)

end

end A131943.P1444345460081685494

/-!
# A131944: Expansion of (1 - b(q)*b(q^2)) / 3 where b() is a cubic AGM function. Expansion of (1 - eta(q)^3 * eta(q^2)^3 / (eta(q^3) * eta(q^6))) / 3 in powers of q.

The programs for A131944, the canonical program `A131944.P10815908969414178060` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131944 has offset 1).

The definition of A131944 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A131944.P10815908969414178060

`∑{d}[n+1, #*A117188(#-1)]`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A131944

/-- `∑{d}[n+1, #*A117188(#-1)]` -/
def P10815908969414178060.Spec : Prop :=
  ∀ n, P10815908969414178060.a n = A131944 (n + 1)

theorem P10815908969414178060.correct : P10815908969414178060.Spec := by
  intro n
  simp only [A131944, Nat.add_sub_cancel]

end A131944

/-! ## A131944.P7468385149439381522

`A134077(floor(n/(xor(n, n+1)+1)))`
-/

namespace A131944.P7468385149439381522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134077 ⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋.toNat

end

end A131944.P7468385149439381522

namespace A131944

/-- `A134077(floor(n/(xor(n, n+1)+1)))` -/
def P7468385149439381522.Spec : Prop :=
  ∀ n, P7468385149439381522.a n = A131944 (n + 1)

end A131944

/-! ## A131944.P706454155062806256

`A118271((n+1)/2^val(n+1, 2))`
-/

namespace A131944.P706454155062806256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118271 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat

end

end A131944.P706454155062806256

namespace A131944

/-- `A118271((n+1)/2^val(n+1, 2))` -/
def P706454155062806256.Spec : Prop :=
  ∀ n, P706454155062806256.a n = A131944 (n + 1)

end A131944

/-! ## A131944.P1065034320979016895

`A118271((n+1)/(or(n, n+1)-n))`
-/

namespace A131944.P1065034320979016895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118271 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((Nat.lor n (n + 1) : ℤ) - (n : ℤ) : ℚ))).toNat

end

end A131944.P1065034320979016895

namespace A131944

/-- `A118271((n+1)/(or(n, n+1)-n))` -/
def P1065034320979016895.Spec : Prop :=
  ∀ n, P1065034320979016895.a n = A131944 (n + 1)

end A131944

/-! ## A131944.P8772115302209745201

`-A214456((n+1)/2^val(n+1, 2))`
-/

namespace A131944.P8772115302209745201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A214456 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat

end

end A131944.P8772115302209745201

namespace A131944

/-- `-A214456((n+1)/2^val(n+1, 2))` -/
def P8772115302209745201.Spec : Prop :=
  ∀ n, P8772115302209745201.a n = A131944 (n + 1)

end A131944

/-! ## A131944.P6133245029410609635

`A134077(A025480(n))`
-/

namespace A131944.P6133245029410609635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134077 (A025480 n).toNat

end

end A131944.P6133245029410609635

namespace A131944

/-- `A134077(A025480(n))` -/
def P6133245029410609635.Spec : Prop :=
  ∀ n, P6133245029410609635.a n = A131944 (n + 1)

end A131944

/-! ## A131944.P5447635582969703282

`A118271(A000265(n+1))`
-/

namespace A131944.P5447635582969703282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118271 (A000265 (n + 1)).toNat

end

end A131944.P5447635582969703282

namespace A131944

/-- `A118271(A000265(n+1))` -/
def P5447635582969703282.Spec : Prop :=
  ∀ n, P5447635582969703282.a n = A131944 (n + 1)

end A131944

/-! ## A131944.P8497280294550418687

`-(A131943(n+1)/3)`
-/

namespace A131944.P8497280294550418687
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  -((A131943 (n + 1) : ℚ) / 3)

end

end A131944.P8497280294550418687

namespace A131944

/-- `-(A131943(n+1)/3)` -/
def P8497280294550418687.Spec : Prop :=
  ∀ n, P8497280294550418687.a n = (A131944 (n + 1) : ℚ)

end A131944

/-! ## A131944.P15667464107626707645

`a(n-1)*ratio[A131943(n)]` with `a(0)=1`
-/

namespace A131944.P15667464107626707645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131943 n

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * ((f1 (n + 1) : ℚ) / (f1 n : ℚ))

end

end A131944.P15667464107626707645

namespace A131944

/-- `a(n-1)*ratio[A131943(n)]` -/
def P15667464107626707645.Spec : Prop :=
  ∀ n, P15667464107626707645.a n = (A131944 (n + 1) : ℚ)

end A131944

/-! ## A131944.P2531682942956580016

`A131943(n+1)/(A033999(2*n+1)-2)`
-/

namespace A131944.P2531682942956580016
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131943 (n + 1) : ℚ) / (A033999 (2 * n + 1) - 2 : ℚ)

end

end A131944.P2531682942956580016

namespace A131944

/-- `A131943(n+1)/(A033999(2*n+1)-2)` -/
def P2531682942956580016.Spec : Prop :=
  ∀ n, P2531682942956580016.a n = (A131944 (n + 1) : ℚ)

end A131944

/-! ## A131944.P12600645334642123434

`A121443(n+1)/A124449(2*(n+1))*A131943(n+1)`
-/

namespace A131944.P12600645334642123434
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A121443 (n + 1) : ℚ) / (A124449 (2 * (n + 1)) : ℚ) * (A131943 (n + 1) : ℚ)

end

end A131944.P12600645334642123434

namespace A131944

/-- `A121443(n+1)/A124449(2*(n+1))*A131943(n+1)` -/
def P12600645334642123434.Spec : Prop :=
  ∀ n, P12600645334642123434.a n = (A131944 (n + 1) : ℚ)

end A131944

/-! ## A131944.P15098194365626264079

`A226132(2*(n+1))/A214361(2*(n+1))*A131943(n+1)`
-/

namespace A131944.P15098194365626264079
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A226132 (2 * (n + 1)) : ℚ) / (A214361 (2 * (n + 1)) : ℚ) * (A131943 (n + 1) : ℚ)

end

end A131944.P15098194365626264079

namespace A131944

/-- `A226132(2*(n+1))/A214361(2*(n+1))*A131943(n+1)` -/
def P15098194365626264079.Spec : Prop :=
  ∀ n, P15098194365626264079.a n = (A131944 (n + 1) : ℚ)

end A131944

/-! ## A131944.P10366938050256770189

`A214456(2*n+1)/A226139(2*n+1)*A131943(n+1)`
-/

namespace A131944.P10366938050256770189
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A214456 (2 * n + 1) : ℚ) / (A226139 (2 * n + 1) : ℚ) * (A131943 (n + 1) : ℚ)

end

end A131944.P10366938050256770189

namespace A131944

/-- `A214456(2*n+1)/A226139(2*n+1)*A131943(n+1)` -/
def P10366938050256770189.Spec : Prop :=
  ∀ n, P10366938050256770189.a n = (A131944 (n + 1) : ℚ)

end A131944

/-! ## A131944.P1412771725109765812

`-(A118271(2*(n+1))/3)`
-/

namespace A131944.P1412771725109765812
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  -((A118271 (2 * (n + 1)) : ℚ) / 3)

end

end A131944.P1412771725109765812

namespace A131944

/-- `-(A118271(2*(n+1))/3)` -/
def P1412771725109765812.Spec : Prop :=
  ∀ n, P1412771725109765812.a n = (A131944 (n + 1) : ℚ)

end A131944

/-! ## A131944.P9767622944607130036

`-(A214456(2*(n+1))/3)`
-/

namespace A131944.P9767622944607130036
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  -((A214456 (2 * (n + 1)) : ℚ) / 3)

end

end A131944.P9767622944607130036

namespace A131944

/-- `-(A214456(2*(n+1))/3)` -/
def P9767622944607130036.Spec : Prop :=
  ∀ n, P9767622944607130036.a n = (A131944 (n + 1) : ℚ)

end A131944

/-!
# A131945: Number of partitions of n where odd parts are distinct or repeated once.

The programs for A131945, there is no canonical definition to state claims against.
-/

/-! ## A131945.P15088485657463985685

`A119907(n)+A062575(A027193(n+1))`
-/

namespace A131945.P15088485657463985685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119907 n + A062575 (A027193 (n + 1)).toNat

end

end A131945.P15088485657463985685

/-! ## A131945.P6915628727311177184

`A037827(A048578(n))+A027187(n)`
-/

namespace A131945.P6915628727311177184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037827 (A048578 n).toNat + A027187 n

end

end A131945.P6915628727311177184

/-! ## A131945.P12726698361655310377

`A112318(A035554(n)+A000701(n))`
-/

namespace A131945.P12726698361655310377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112318 (A035554 n + A000701 n).toNat

end

end A131945.P12726698361655310377

/-! ## A131945.P14861534480552179268

`A112318(A085811(n+1)+A035959(n))`
-/

namespace A131945.P14861534480552179268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112318 (A085811 (n + 1) + A035959 n).toNat

end

end A131945.P14861534480552179268

/-! ## A131945.P1596269711038591023

`or(A271584(A271617(n+1)), A271593(n))`
-/

namespace A131945.P1596269711038591023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A271584 (A271617 (n + 1)).toNat) (A271593 n)

end

end A131945.P1596269711038591023

/-!
# A131946: Expansion of (phi(-q) * phi(-q^3))^2 in powers of q where phi() is a Ramanujan theta function.

The programs for A131946, there is no canonical definition to state claims against.
-/

/-! ## A131946.P5798671672593414555

`(-1)^n*A034896(n)`
-/

namespace A131946.P5798671672593414555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A034896 n

end

end A131946.P5798671672593414555

/-! ## A131946.P17897528315564583165

`A034896(n)/A033999(n)`
-/

namespace A131946.P17897528315564583165
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034896 n : ℚ) / (A033999 n : ℚ)

end

end A131946.P17897528315564583165

/-! ## A131946.P12499769826773875242

`A034896(n)*A062157(n+1)`
-/

namespace A131946.P12499769826773875242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034896 n * A062157 (n + 1)

end

end A131946.P12499769826773875242

/-! ## A131946.P16889691464828788178

`(A186100(n)+A125514(n))/2`
-/

namespace A131946.P16889691464828788178
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A186100 n + A125514 n : ℚ) / 2

end

end A131946.P16889691464828788178

/-! ## A131946.P13125172512811393304

`2*A034896(2*n)-A008653(n)`
-/

namespace A131946.P13125172512811393304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A034896 (2 * n) - A008653 n

end

end A131946.P13125172512811393304

/-!
# A131947: Expansion of (1 - (phi(-q) * phi(-q^3))^2)/4 in powers of q where phi() is a Ramanujan theta function.

The programs for A131947, the canonical program `A131947.P4717626785366615297` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131947 has offset 1).

The definition of A131947 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A113262, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A131947.P4717626785366615297

`(-1)^n*A113262(n+1)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A131947

/-- `(-1)^n*A113262(n+1)` -/
def P4717626785366615297.Spec : Prop :=
  ∀ n, P4717626785366615297.a n = A131947 (n + 1)

theorem P4717626785366615297.correct : P4717626785366615297.Spec := by
  intro n
  simp only [A131947, Nat.add_sub_cancel]

end A131947

/-! ## A131947.P1797987513189749251

`A002129(A038502(n+1))`
-/

namespace A131947.P1797987513189749251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002129 (A038502 (n + 1)).toNat

end

end A131947.P1797987513189749251

namespace A131947

/-- `A002129(A038502(n+1))` -/
def P1797987513189749251.Spec : Prop :=
  ∀ n, P1797987513189749251.a n = A131947 (n + 1)

end A131947

/-! ## A131947.P7596679178539346644

`A113262(n+1)/A033999(n)`
-/

namespace A131947.P7596679178539346644
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A113262 (n + 1) : ℚ) / (A033999 n : ℚ)

end

end A131947.P7596679178539346644

namespace A131947

/-- `A113262(n+1)/A033999(n)` -/
def P7596679178539346644.Spec : Prop :=
  ∀ n, P7596679178539346644.a n = (A131947 (n + 1) : ℚ)

end A131947

/-! ## A131947.P3060734057640623807

`A284362(n+1)-A146076(n+1)`
-/

namespace A131947.P3060734057640623807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284362 (n + 1) - A146076 (n + 1)

end

end A131947.P3060734057640623807

namespace A131947

/-- `A284362(n+1)-A146076(n+1)` -/
def P3060734057640623807.Spec : Prop :=
  ∀ n, P3060734057640623807.a n = A131947 (n + 1)

end A131947

/-! ## A131947.P13977859497937149005

`A002129((n+1)/A038500(n+1))`
-/

namespace A131947.P13977859497937149005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002129 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A038500 (n + 1) : ℚ))).toNat

end

end A131947.P13977859497937149005

namespace A131947

/-- `A002129((n+1)/A038500(n+1))` -/
def P13977859497937149005.Spec : Prop :=
  ∀ n, P13977859497937149005.a n = A131947 (n + 1)

end A131947

/-! ## A131947.P10237081715862076468

`A002129(n+1)/A080278(n+1)`
-/

namespace A131947.P10237081715862076468
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002129 (n + 1) : ℚ) / (A080278 (n + 1) : ℚ)

end

end A131947.P10237081715862076468

namespace A131947

/-- `A002129(n+1)/A080278(n+1)` -/
def P10237081715862076468.Spec : Prop :=
  ∀ n, P10237081715862076468.a n = (A131947 (n + 1) : ℚ)

end A131947

/-! ## A131947.P1742613758814267375

`(2-A038712(n+1))*A186099(n+1)`
-/

namespace A131947.P1742613758814267375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A038712 (n + 1)) * A186099 (n + 1)

end

end A131947.P1742613758814267375

namespace A131947

/-- `(2-A038712(n+1))*A186099(n+1)` -/
def P1742613758814267375.Spec : Prop :=
  ∀ n, P1742613758814267375.a n = A131947 (n + 1)

end A131947

/-! ## A131947.P1422638706336562743

`2*A186099(n+1)-A046913(n+1)`
-/

namespace A131947.P1422638706336562743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A186099 (n + 1) - A046913 (n + 1)

end

end A131947.P1422638706336562743

namespace A131947

/-- `2*A186099(n+1)-A046913(n+1)` -/
def P1422638706336562743.Spec : Prop :=
  ∀ n, P1422638706336562743.a n = A131947 (n + 1)

end A131947

/-! ## A131947.P9681958193986241452

`A131946(n+1)/A131946(n)*a(n-1)` with `a(0)=1`
-/

namespace A131947.P9681958193986241452
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A131946 (n + 1) : ℚ) / (A131946 n : ℚ) * a (n - 1)

end

end A131947.P9681958193986241452

namespace A131947

/-- `A131946(n+1)/A131946(n)*a(n-1)` -/
def P9681958193986241452.Spec : Prop :=
  ∀ n, P9681958193986241452.a n = (A131947 (n + 1) : ℚ)

end A131947

/-! ## A131947.P8110025586058477967

`∑{d}[n+1, A121456(#)*A209229((n+1)/#)]`
-/

namespace A131947.P8110025586058477967
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A121456 d * A209229 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A131947.P8110025586058477967

namespace A131947

/-- `∑{d}[n+1, A121456(#)*A209229((n+1)/#)]` -/
def P8110025586058477967.Spec : Prop :=
  ∀ n, P8110025586058477967.a n = A131947 (n + 1)

end A131947

/-! ## A131947.P3242192853588969719

`∑{d}[n+1, A036987(#-1)*A121456((n+1)/#)]`
-/

namespace A131947.P3242192853588969719
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A036987 (d - 1) * A121456 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A131947.P3242192853588969719

namespace A131947

/-- `∑{d}[n+1, A036987(#-1)*A121456((n+1)/#)]` -/
def P3242192853588969719.Spec : Prop :=
  ∀ n, P3242192853588969719.a n = A131947 (n + 1)

end A131947

/-! ## A131947.P6515871057812540577

`∑{d}[n+1, A117188(#-1)*A328154((n+1)/#)]`
-/

namespace A131947.P6515871057812540577
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A117188 (d - 1) * A328154 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A131947.P6515871057812540577

namespace A131947

/-- `∑{d}[n+1, A117188(#-1)*A328154((n+1)/#)]` -/
def P6515871057812540577.Spec : Prop :=
  ∀ n, P6515871057812540577.a n = A131947 (n + 1)

end A131947

/-! ## A131947.P10411004114916909136

`A113262(n+1)/A034896(n)*A131946(n)`
-/

namespace A131947.P10411004114916909136
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A113262 (n + 1) : ℚ) / (A034896 n : ℚ) * (A131946 n : ℚ)

end

end A131947.P10411004114916909136

namespace A131947

/-- `A113262(n+1)/A034896(n)*A131946(n)` -/
def P10411004114916909136.Spec : Prop :=
  ∀ n, P10411004114916909136.a n = (A131947 (n + 1) : ℚ)

end A131947

/-! ## A131947.P175086958697598304

`2*A046913(A000265(n+1))-A046913(n+1)`
-/

namespace A131947.P175086958697598304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A046913 (A000265 (n + 1)).toNat - A046913 (n + 1)

end

end A131947.P175086958697598304

namespace A131947

/-- `2*A046913(A000265(n+1))-A046913(n+1)` -/
def P175086958697598304.Spec : Prop :=
  ∀ n, P175086958697598304.a n = A131947 (n + 1)

end A131947

/-! ## A131947.P15705580400103087766

`A002129(n+1)+A284362(n+1)-A000593(n+1)`
-/

namespace A131947.P15705580400103087766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002129 (n + 1) + (A284362 (n + 1) - A000593 (n + 1))

end

end A131947.P15705580400103087766

namespace A131947

/-- `A002129(n+1)+A284362(n+1)-A000593(n+1)` -/
def P15705580400103087766.Spec : Prop :=
  ∀ n, P15705580400103087766.a n = A131947 (n + 1)

end A131947

/-! ## A131947.P17311773203309596602

`∑{d}[n+1, #*A092220(#)]`
-/

namespace A131947.P17311773203309596602
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A092220 d

end

end A131947.P17311773203309596602

namespace A131947

/-- `∑{d}[n+1, #*A092220(#)]` -/
def P17311773203309596602.Spec : Prop :=
  ∀ n, P17311773203309596602.a n = A131947 (n + 1)

end A131947

/-! ## A131947.P2127988235901285080

`A111932(2*n+1)/A131946(2*n+1)*A131946(n+1)`
-/

namespace A131947.P2127988235901285080
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A111932 (2 * n + 1) : ℚ) / (A131946 (2 * n + 1) : ℚ) * (A131946 (n + 1) : ℚ)

end

end A131947.P2127988235901285080

namespace A131947

/-- `A111932(2*n+1)/A131946(2*n+1)*A131946(n+1)` -/
def P2127988235901285080.Spec : Prop :=
  ∀ n, P2127988235901285080.a n = (A131947 (n + 1) : ℚ)

end A131947

/-! ## A131947.P16298113848424209238

`A113262(2*n+1)/A131946(2*n+1)*A131946(n+1)`
-/

namespace A131947.P16298113848424209238
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A113262 (2 * n + 1) : ℚ) / (A131946 (2 * n + 1) : ℚ) * (A131946 (n + 1) : ℚ)

end

end A131947.P16298113848424209238

namespace A131947

/-- `A113262(2*n+1)/A131946(2*n+1)*A131946(n+1)` -/
def P16298113848424209238.Spec : Prop :=
  ∀ n, P16298113848424209238.a n = (A131947 (n + 1) : ℚ)

end A131947

/-! ## A131947.P9663153213327424658

`A121456(2*n+1)/A131946(2*n+1)*A131946(n+1)`
-/

namespace A131947.P9663153213327424658
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A121456 (2 * n + 1) : ℚ) / (A131946 (2 * n + 1) : ℚ) * (A131946 (n + 1) : ℚ)

end

end A131947.P9663153213327424658

namespace A131947

/-- `A121456(2*n+1)/A131946(2*n+1)*A131946(n+1)` -/
def P9663153213327424658.Spec : Prop :=
  ∀ n, P9663153213327424658.a n = (A131947 (n + 1) : ℚ)

end A131947

/-! ## A131947.P3306479000187770303

`2*A046913(A166466(n+1))-A046913(n+1)`
-/

namespace A131947.P3306479000187770303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A046913 (A166466 (n + 1)).toNat - A046913 (n + 1)

end

end A131947.P3306479000187770303

namespace A131947

/-- `2*A046913(A166466(n+1))-A046913(n+1)` -/
def P3306479000187770303.Spec : Prop :=
  ∀ n, P3306479000187770303.a n = A131947 (n + 1)

end A131947

/-!
# A131948: Triangle T(n,k) = 2*A002024(n+1,k+1) + A007318(n,k) - 2, read by rows.

The programs for A131948, the canonical program `A131948.P15186987073774789875` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131948 has offset 0).

The definition of A131948 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A131948.P6686910964935111037

`C(row(n), col(n))+2*row(n)`
-/

namespace A131948.P6686910964935111037
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.triRow n) (SequenceMachineLib.triCol n) + 2 * SequenceMachineLib.triRow n

end

end A131948.P6686910964935111037

namespace A131948

/-- `C(row(n), col(n))+2*row(n)` -/
def P6686910964935111037.Spec : Prop :=
  ∀ n, (P6686910964935111037.a n : ℤ) = A131948 n

end A131948

/-! ## A131948.P15186987073774789875

`A131923(n)+A003056(n)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A131948

/-- `A131923(n)+A003056(n)` -/
def P15186987073774789875.Spec : Prop :=
  ∀ n, P15186987073774789875.a n = A131948 n

theorem P15186987073774789875.correct : P15186987073774789875.Spec := by
  intro n
  simp only [A131948]

end A131948

/-! ## A131948.P10604272315849273870

`A131507(n)+A014473(n)`
-/

namespace A131948.P10604272315849273870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131507 n + A014473 n

end

end A131948.P10604272315849273870

namespace A131948

/-- `A131507(n)+A014473(n)` -/
def P10604272315849273870.Spec : Prop :=
  ∀ n, P10604272315849273870.a n = A131948 n

end A131948

/-! ## A131948.P5709766826541622165

`A132108(n)+A051162(n)`
-/

namespace A131948.P5709766826541622165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132108 n + A051162 n

end

end A131948.P5709766826541622165

namespace A131948

/-- `A132108(n)+A051162(n)` -/
def P5709766826541622165.Spec : Prop :=
  ∀ n, P5709766826541622165.a n = A131948 n

end A131948

/-! ## A131948.P11209550726433842360

`A279891(n)+A007318(n)`
-/

namespace A131948.P11209550726433842360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279891 n + A007318 n

end

end A131948.P11209550726433842360

namespace A131948

/-- `A279891(n)+A007318(n)` -/
def P11209550726433842360.Spec : Prop :=
  ∀ n, P11209550726433842360.a n = A131948 n

end A131948

/-! ## A131948.P2725816207365670499

`A007318(n)+A131507(n)-1`
-/

namespace A131948.P2725816207365670499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + (A131507 n - 1)

end

end A131948.P2725816207365670499

namespace A131948

/-- `A007318(n)+A131507(n)-1` -/
def P2725816207365670499.Spec : Prop :=
  ∀ n, P2725816207365670499.a n = A131948 n

end A131948

/-! ## A131948.P13762840389107395270

`A007318(n)+2*A003056(n)`
-/

namespace A131948.P13762840389107395270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + 2 * A003056 n

end

end A131948.P13762840389107395270

namespace A131948

/-- `A007318(n)+2*A003056(n)` -/
def P13762840389107395270.Spec : Prop :=
  ∀ n, P13762840389107395270.a n = A131948 n

end A131948

/-! ## A131948.P14257449267040831703

`2*A131923(n)-A007318(n)`
-/

namespace A131948.P14257449267040831703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A131923 n - A007318 n

end

end A131948.P14257449267040831703

namespace A131948

/-- `2*A131923(n)-A007318(n)` -/
def P14257449267040831703.Spec : Prop :=
  ∀ n, P14257449267040831703.a n = A131948 n

end A131948

/-! ## A131948.P646228163462306954

`A007318(n)+log2(A137688(n)²)`
-/

namespace A131948.P646228163462306954
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A007318 n : ℝ) + Real.logb 2 (A137688 n ^ 2 : ℝ)

end

end A131948.P646228163462306954

namespace A131948

/-- `A007318(n)+log2(A137688(n)²)` -/
def P646228163462306954.Spec : Prop :=
  ∀ n, P646228163462306954.a n = (A131948 n : ℝ)

end A131948

/-! ## A131948.P694235994681302100

`abs(A108086(n))+A131507(n)-1`
-/

namespace A131948.P694235994681302100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A108086 n| + (A131507 n - 1)

end

end A131948.P694235994681302100

namespace A131948

/-- `abs(A108086(n))+A131507(n)-1` -/
def P694235994681302100.Spec : Prop :=
  ∀ n, P694235994681302100.a n = A131948 n

end A131948

/-! ## A131948.P5295799594269261527

`abs(A130595(n))+A131507(n)-1`
-/

namespace A131948.P5295799594269261527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A130595 n| + (A131507 n - 1)

end

end A131948.P5295799594269261527

namespace A131948

/-- `abs(A130595(n))+A131507(n)-1` -/
def P5295799594269261527.Spec : Prop :=
  ∀ n, P5295799594269261527.a n = A131948 n

end A131948

/-! ## A131948.P14913918021863223383

`abs(A108086(n))+2*A003056(n)`
-/

namespace A131948.P14913918021863223383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A108086 n| + 2 * A003056 n

end

end A131948.P14913918021863223383

namespace A131948

/-- `abs(A108086(n))+2*A003056(n)` -/
def P14913918021863223383.Spec : Prop :=
  ∀ n, P14913918021863223383.a n = A131948 n

end A131948

/-! ## A131948.P16982578616634632992

`abs(A130595(n))+2*A003056(n)`
-/

namespace A131948.P16982578616634632992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A130595 n| + 2 * A003056 n

end

end A131948.P16982578616634632992

namespace A131948

/-- `abs(A130595(n))+2*A003056(n)` -/
def P16982578616634632992.Spec : Prop :=
  ∀ n, P16982578616634632992.a n = A131948 n

end A131948

/-! ## A131948.P1174690996910195912

`sqrt(A008459(n))+A131507(n)-1`
-/

namespace A131948.P1174690996910195912
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A008459 n : ℝ) + (A131507 n - 1 : ℝ)

end

end A131948.P1174690996910195912

namespace A131948

/-- `sqrt(A008459(n))+A131507(n)-1` -/
def P1174690996910195912.Spec : Prop :=
  ∀ n, P1174690996910195912.a n = (A131948 n : ℝ)

end A131948

/-! ## A131948.P13931284856342140598

`sqrt(A008459(n))+2*A003056(n)`
-/

namespace A131948.P13931284856342140598
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A008459 n : ℝ) + (2 * A003056 n : ℝ)

end

end A131948.P13931284856342140598

namespace A131948

/-- `sqrt(A008459(n))+2*A003056(n)` -/
def P13931284856342140598.Spec : Prop :=
  ∀ n, P13931284856342140598.a n = (A131948 n : ℝ)

end A131948

/-! ## A131948.P8542801143066076380

`A007318(n)+∑[2*A073424(n)]`
-/

namespace A131948.P8542801143066076380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A073424 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131948.P8542801143066076380

namespace A131948

/-- `A007318(n)+∑[2*A073424(n)]` -/
def P8542801143066076380.Spec : Prop :=
  ∀ n, P8542801143066076380.a n = A131948 n

end A131948

/-! ## A131948.P8202062865945360579

`A007318(n)+Δ[2*A006463(n)]`
-/

namespace A131948.P8202062865945360579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006463 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + (f1 (n + 1) - f1 n)

end

end A131948.P8202062865945360579

namespace A131948

/-- `A007318(n)+Δ[2*A006463(n)]` -/
def P8202062865945360579.Spec : Prop :=
  ∀ n, P8202062865945360579.a n = A131948 n

end A131948

/-! ## A131948.P1786692972950593311

`Δ[A102363(n)]+2*A003056(n)`
-/

namespace A131948.P1786692972950593311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 2 * A003056 n

end

end A131948.P1786692972950593311

namespace A131948

/-- `Δ[A102363(n)]+2*A003056(n)` -/
def P1786692972950593311.Spec : Prop :=
  ∀ n, P1786692972950593311.a n = A131948 n

end A131948

/-! ## A131948.P7749659279135180115

`A002024(n+1)+A131923(n)-1`
-/

namespace A131948.P7749659279135180115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1) + (A131923 n - 1)

end

end A131948.P7749659279135180115

namespace A131948

/-- `A002024(n+1)+A131923(n)-1` -/
def P7749659279135180115.Spec : Prop :=
  ∀ n, P7749659279135180115.a n = A131948 n

end A131948

/-! ## A131948.P6698503077591029400

`A111650(n+1)+A007318(n)-2`
-/

namespace A131948.P6698503077591029400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111650 (n + 1) + (A007318 n - 2)

end

end A131948.P6698503077591029400

namespace A131948

/-- `A111650(n+1)+A007318(n)-2` -/
def P6698503077591029400.Spec : Prop :=
  ∀ n, P6698503077591029400.a n = A131948 n

end A131948

/-!
# A131949: Row sums of triangle A131948.

The programs for A131949, the canonical program `A131949.P15739011632697826144` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131949 has offset 0).

The definition of A131949 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A131949.P15739011632697826144

`2^n+2*n+2*n²`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A131949

/-- `2^n+2*n+2*n²` -/
def P15739011632697826144.Spec : Prop :=
  ∀ n, (P15739011632697826144.a n : ℤ) = A131949 n

theorem P15739011632697826144.correct : P15739011632697826144.Spec := by
  intro n
  simp only [A131949]

end A131949

/-! ## A131949.P3213866106278165942

`∑[∑[2*(a(n-1)-2)]]` with `a(0)=1, a(1)=4, a(2)=5`
-/

namespace A131949.P3213866106278165942
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 5] fun n f2 =>
  2 * (f2 (n - 1) - 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131949.P3213866106278165942

namespace A131949

/-- `∑[∑[2*(a(n-1)-2)]]` -/
def P3213866106278165942.Spec : Prop :=
  ∀ n, P3213866106278165942.a n = A131949 n

end A131949

/-! ## A131949.P16442032474351648350

`2*(a(n-1)+n*(3-n))` with `a(0)=1`
-/

namespace A131949.P16442032474351648350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * (a (n - 1) + (n : ℤ) * (3 - (n : ℤ)))

end

end A131949.P16442032474351648350

namespace A131949

/-- `2*(a(n-1)+n*(3-n))` -/
def P16442032474351648350.Spec : Prop :=
  ∀ n, P16442032474351648350.a n = A131949 n

theorem P16442032474351648350.correct : P16442032474351648350.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A131949, Nat.add_sub_cancel, A131949.P16442032474351648350.a, A131949.P15739011632697826144.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A131949, Nat.add_sub_cancel, A131949.P16442032474351648350.a, A131949.P15739011632697826144.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A131949

/-! ## A131949.P13639553471171776055

`floor(∑[a(n-1)+4]+2^n)` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A131949.P13639553471171776055
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2 ^ n

end

end A131949.P13639553471171776055

namespace A131949

/-- `floor(∑[a(n-1)+4]+2^n)` -/
def P13639553471171776055.Spec : Prop :=
  ∀ n, (P13639553471171776055.a n : ℤ) = A131949 n

end A131949

/-! ## A131949.P14604605239308355198

`floor(2^n-∑[a(n-1)-4])` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A131949.P14604605239308355198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131949.P14604605239308355198

namespace A131949

/-- `floor(2^n-∑[a(n-1)-4])` -/
def P14604605239308355198.Spec : Prop :=
  ∀ n, P14604605239308355198.a n = A131949 n

end A131949

/-! ## A131949.P9015839296727142622

`floor(2*(a(n-1)-n*(n-3)))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A131949.P9015839296727142622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * (a (n - 1) - (n : ℤ) * ((n : ℤ) - 3))

end

end A131949.P9015839296727142622

namespace A131949

/-- `floor(2*(a(n-1)-n*(n-3)))` -/
def P9015839296727142622.Spec : Prop :=
  ∀ n, P9015839296727142622.a n = A131949 n

theorem P9015839296727142622.correct : P9015839296727142622.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A131949, Nat.add_sub_cancel, A131949.P9015839296727142622.a, A131949.P15739011632697826144.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A131949, Nat.add_sub_cancel, A131949.P9015839296727142622.a, A131949.P15739011632697826144.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A131949

/-! ## A131949.P2689345358427865883

`2*(n-(n*(n-2)-a(n-1)))` with `a(0)=1`
-/

namespace A131949.P2689345358427865883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * ((n : ℤ) - ((n : ℤ) * ((n : ℤ) - 2) - a (n - 1)))

end

end A131949.P2689345358427865883

namespace A131949

/-- `2*(n-(n*(n-2)-a(n-1)))` -/
def P2689345358427865883.Spec : Prop :=
  ∀ n, P2689345358427865883.a n = A131949 n

theorem P2689345358427865883.correct : P2689345358427865883.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A131949, Nat.add_sub_cancel, A131949.P2689345358427865883.a, A131949.P15739011632697826144.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A131949, Nat.add_sub_cancel, A131949.P2689345358427865883.a, A131949.P15739011632697826144.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A131949

/-! ## A131949.P18040664052218371292

`∑[∑[a(n-1)+a(n-1)-4]]` with `a(0)=1, a(1)=4, a(2)=5`
-/

namespace A131949.P18040664052218371292
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 5] fun n f2 =>
  f2 (n - 1) + (f2 (n - 1) - 4)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131949.P18040664052218371292

namespace A131949

/-- `∑[∑[a(n-1)+a(n-1)-4]]` -/
def P18040664052218371292.Spec : Prop :=
  ∀ n, P18040664052218371292.a n = A131949 n

end A131949

/-! ## A131949.P5244376372737751992

`∑[∑[a(n-1)-(4-a(n-1))]]` with `a(0)=1, a(1)=4, a(2)=5`
-/

namespace A131949.P5244376372737751992
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 5] fun n f2 =>
  f2 (n - 1) - (4 - f2 (n - 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131949.P5244376372737751992

namespace A131949

/-- `∑[∑[a(n-1)-(4-a(n-1))]]` -/
def P5244376372737751992.Spec : Prop :=
  ∀ n, P5244376372737751992.a n = A131949 n

end A131949

/-! ## A131949.P5156135838077835635

`abs(1-A321123(n))`
-/

namespace A131949.P5156135838077835635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A321123 n|

end

end A131949.P5156135838077835635

namespace A131949

/-- `abs(1-A321123(n))` -/
def P5156135838077835635.Spec : Prop :=
  ∀ n, P5156135838077835635.a n = A131949 n

end A131949

/-! ## A131949.P4921157526420483625

`∑[A011782(n)+4*n]`
-/

namespace A131949.P4921157526420483625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n + (4 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131949.P4921157526420483625

namespace A131949

/-- `∑[A011782(n)+4*n]` -/
def P4921157526420483625.Spec : Prop :=
  ∀ n, P4921157526420483625.a n = A131949 n

end A131949

/-! ## A131949.P2339152943982616533

`abs(1-(A046092(n)+A000051(n)))`
-/

namespace A131949.P2339152943982616533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (A046092 n + A000051 n)|

end

end A131949.P2339152943982616533

namespace A131949

/-- `abs(1-(A046092(n)+A000051(n)))` -/
def P2339152943982616533.Spec : Prop :=
  ∀ n, P2339152943982616533.a n = A131949 n

end A131949

/-! ## A131949.P3209200923897538663

`∑[A131577(n)+A004277(2*n)]`
-/

namespace A131949.P3209200923897538663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n + A004277 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131949.P3209200923897538663

namespace A131949

/-- `∑[A131577(n)+A004277(2*n)]` -/
def P3209200923897538663.Spec : Prop :=
  ∀ n, P3209200923897538663.a n = A131949 n

end A131949

/-! ## A131949.P6863244886872867676

`((2*n+1)²+A000225(n+1))/2`
-/

namespace A131949.P6863244886872867676
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((2 * n + 1) ^ 2 : ℤ) + A000225 (n + 1) : ℚ) / 2

end

end A131949.P6863244886872867676

namespace A131949

/-- `((2*n+1)²+A000225(n+1))/2` -/
def P6863244886872867676.Spec : Prop :=
  ∀ n, P6863244886872867676.a n = (A131949 n : ℚ)

theorem P6863244886872867676.correct : P6863244886872867676.Spec := by
  intro n
  simp only [A131949, Nat.add_sub_cancel, A131949.P6863244886872867676.a, A131949.P15739011632697826144.a, A000225, A000225.P6535533121115206393.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A131949

/-! ## A131949.P13050600757820001451

`((2*n+1)²+A075427(2*n))/2`
-/

namespace A131949.P13050600757820001451
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((2 * n + 1) ^ 2 : ℤ) + A075427 (2 * n) : ℚ) / 2

end

end A131949.P13050600757820001451

namespace A131949

/-- `((2*n+1)²+A075427(2*n))/2` -/
def P13050600757820001451.Spec : Prop :=
  ∀ n, P13050600757820001451.a n = (A131949 n : ℚ)

end A131949

/-! ## A131949.P6900667799248452304

`(A086341(2*n)+(2*n+1)²)/2`
-/

namespace A131949.P6900667799248452304
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A086341 (2 * n) + ((2 * n + 1) ^ 2 : ℤ) : ℚ) / 2

end

end A131949.P6900667799248452304

namespace A131949

/-- `(A086341(2*n)+(2*n+1)²)/2` -/
def P6900667799248452304.Spec : Prop :=
  ∀ n, P6900667799248452304.a n = (A131949 n : ℚ)

end A131949

/-! ## A131949.P9476959969546712017

`(A126646(n)+A005408(n)²)/2`
-/

namespace A131949.P9476959969546712017
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126646 n + A005408 n ^ 2 : ℚ) / 2

end

end A131949.P9476959969546712017

namespace A131949

/-- `(A126646(n)+A005408(n)²)/2` -/
def P9476959969546712017.Spec : Prop :=
  ∀ n, P9476959969546712017.a n = (A131949 n : ℚ)

theorem P9476959969546712017.correct : P9476959969546712017.Spec := by
  intro n
  simp only [A131949, Nat.add_sub_cancel, A131949.P9476959969546712017.a, A131949.P15739011632697826144.a, A005408, A005408.P17437947328870227736.a, A126646, A126646.P3746310572697910447.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A131949

/-! ## A131949.P8296182769691133109

`(A005563(2*n)+A000079(n+1))/2`
-/

namespace A131949.P8296182769691133109
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005563 (2 * n) + A000079 (n + 1) : ℚ) / 2

end

end A131949.P8296182769691133109

namespace A131949

/-- `(A005563(2*n)+A000079(n+1))/2` -/
def P8296182769691133109.Spec : Prop :=
  ∀ n, P8296182769691133109.a n = (A131949 n : ℚ)

theorem P8296182769691133109.correct : P8296182769691133109.Spec := by
  intro n
  simp only [A131949, Nat.add_sub_cancel, A131949.P8296182769691133109.a, A131949.P15739011632697826144.a, A000079, A000079.P10855139691139572931.a, A005563, A005563.P13300161655551567421.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A131949

/-! ## A131949.P13573562126330058634

`abs(∑[A000079(n)+4*n]-A000225(n))`
-/

namespace A131949.P13573562126330058634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n + (4 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j - A000225 n|

end

end A131949.P13573562126330058634

namespace A131949

/-- `abs(∑[A000079(n)+4*n]-A000225(n))` -/
def P13573562126330058634.Spec : Prop :=
  ∀ n, P13573562126330058634.a n = A131949 n

end A131949

/-!
# A131950: A002024 + A131821 + A007318 - 2*A000012 as infinite lower triangular matrices.

The programs for A131950, the canonical program `A131950.P17361915348174357254` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131950 has offset 0).

The definition of A131950 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A131950.P6387845929177749456

`A131830(n)+∑[char[∑[n+1]]]`
-/

namespace A131950.P6387845929177749456
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131830 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A131950.P6387845929177749456

namespace A131950

/-- `A131830(n)+∑[char[∑[n+1]]]` -/
def P6387845929177749456.Spec : Prop :=
  ∀ n, P6387845929177749456.a n = A131950 n

end A131950

/-! ## A131950.P17361915348174357254

`A144217(n+1)+A131923(n)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A131950

/-- `A144217(n+1)+A131923(n)` -/
def P17361915348174357254.Spec : Prop :=
  ∀ n, P17361915348174357254.a n = A131950 n

theorem P17361915348174357254.correct : P17361915348174357254.Spec := by
  intro n
  simp only [A131950]

end A131950

/-! ## A131950.P15049073447522629224

`A002024(n+1)+A131830(n)-1`
-/

namespace A131950.P15049073447522629224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1) + (A131830 n - 1)

end

end A131950.P15049073447522629224

namespace A131950

/-- `A002024(n+1)+A131830(n)-1` -/
def P15049073447522629224.Spec : Prop :=
  ∀ n, P15049073447522629224.a n = A131950 n

end A131950

/-! ## A131950.P13309770659265783172

`A014132(n+1)+A131830(n)-(n+2)`
-/

namespace A131950.P13309770659265783172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014132 (n + 1) + (A131830 n - (n + 2 : ℤ))

end

end A131950.P13309770659265783172

namespace A131950

/-- `A014132(n+1)+A131830(n)-(n+2)` -/
def P13309770659265783172.Spec : Prop :=
  ∀ n, P13309770659265783172.a n = A131950 n

end A131950

/-! ## A131950.P10139466060652007399

`A003056(n)+A051340(n)*A135227(n)`
-/

namespace A131950.P10139466060652007399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n + A051340 n * A135227 n

end

end A131950.P10139466060652007399

namespace A131950

/-- `A003056(n)+A051340(n)*A135227(n)` -/
def P10139466060652007399.Spec : Prop :=
  ∀ n, P10139466060652007399.a n = A131950 n

end A131950

/-!
# A131951: a(n) = 2^n + n*(n+3).

The programs for A131951, the canonical program `A131951.P10523783061505146641` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131951 has offset 0).

The definition of A131951 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^n+n*(n+3)` (program `A131951.P10523783061505146641`, by `A131951.P10523783061505146641.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A131951.P10523783061505146641

`2^n+n*(n+3)`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A131951

/-- `2^n+n*(n+3)` -/
def P10523783061505146641.Spec : Prop :=
  ∀ n, (P10523783061505146641.a n : ℤ) = A131951 n

theorem P10523783061505146641.correct : P10523783061505146641.Spec := by
  intro n
  simp only [A131951]

end A131951

/-! ## A131951.P11758260731037000771

`floor(2^n+n/acot(n+3))`
-/

namespace A131951.P11758260731037000771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 ^ n : ℝ) + (n : ℝ) / SequenceMachineLib.acot (n + 3 : ℝ)⌋

end

end A131951.P11758260731037000771

namespace A131951

/-- `floor(2^n+n/acot(n+3))` -/
def P11758260731037000771.Spec : Prop :=
  ∀ n, P11758260731037000771.a n = A131951 n

end A131951

/-! ## A131951.P8774182001851423847

`∑[∑[2*(a(n-1)-1)]]` with `a(0)=1, a(1)=4, a(2)=3`
-/

namespace A131951.P8774182001851423847
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 3] fun n f2 =>
  2 * (f2 (n - 1) - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131951.P8774182001851423847

namespace A131951

/-- `∑[∑[2*(a(n-1)-1)]]` -/
def P8774182001851423847.Spec : Prop :=
  ∀ n, P8774182001851423847.a n = A131951 n

end A131951

/-! ## A131951.P7953463261041855326

`2*(a(n-1)-(C(n, 2)-2))` with `a(0)=1`
-/

namespace A131951.P7953463261041855326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * (a (n - 1) - ((Nat.choose n 2 : ℤ) - 2))

end

end A131951.P7953463261041855326

namespace A131951

/-- `2*(a(n-1)-(C(n, 2)-2))` -/
def P7953463261041855326.Spec : Prop :=
  ∀ n, P7953463261041855326.a n = A131951 n

end A131951

/-! ## A131951.P16138396180408738330

`floor(2*(a(n-1)+2)+n-n²)` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A131951.P16138396180408738330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * (a (n - 1) + 2) + ((n : ℤ) - (n ^ 2 : ℤ))

end

end A131951.P16138396180408738330

namespace A131951

/-- `floor(2*(a(n-1)+2)+n-n²)` -/
def P16138396180408738330.Spec : Prop :=
  ∀ n, P16138396180408738330.a n = A131951 n

theorem P16138396180408738330.correct : P16138396180408738330.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A131951, Nat.add_sub_cancel, A131951.P16138396180408738330.a, A131951.P10523783061505146641.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A131951, Nat.add_sub_cancel, A131951.P16138396180408738330.a, A131951.P10523783061505146641.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A131951

/-! ## A131951.P3212048442604445951

`∑[∑[a(n-1)+a(n-1)-2]]` with `a(0)=1, a(1)=4, a(2)=3`
-/

namespace A131951.P3212048442604445951
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 3] fun n f2 =>
  f2 (n - 1) + (f2 (n - 1) - 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131951.P3212048442604445951

namespace A131951

/-- `∑[∑[a(n-1)+a(n-1)-2]]` -/
def P3212048442604445951.Spec : Prop :=
  ∀ n, P3212048442604445951.a n = A131951 n

end A131951

/-! ## A131951.P15338833461587958214

`∑[∑[a(n-1)-(2-a(n-1))]]` with `a(0)=1, a(1)=4, a(2)=3`
-/

namespace A131951.P15338833461587958214
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 3] fun n f2 =>
  f2 (n - 1) - (2 - f2 (n - 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131951.P15338833461587958214

namespace A131951

/-- `∑[∑[a(n-1)-(2-a(n-1))]]` -/
def P15338833461587958214.Spec : Prop :=
  ∀ n, P15338833461587958214.a n = A131951 n

end A131951

/-! ## A131951.P4962491927153388736

`floor(n*(1-n)+2*(a(n-1)+2))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A131951.P4962491927153388736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) * (1 - (n : ℤ)) + 2 * (a (n - 1) + 2)

end

end A131951.P4962491927153388736

namespace A131951

/-- `floor(n*(1-n)+2*(a(n-1)+2))` -/
def P4962491927153388736.Spec : Prop :=
  ∀ n, P4962491927153388736.a n = A131951 n

theorem P4962491927153388736.correct : P4962491927153388736.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A131951, Nat.add_sub_cancel, A131951.P4962491927153388736.a, A131951.P10523783061505146641.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A131951, Nat.add_sub_cancel, A131951.P4962491927153388736.a, A131951.P10523783061505146641.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A131951

/-! ## A131951.P14318559498190306158

`∑[A131577(n)+A103517(n)]`
-/

namespace A131951.P14318559498190306158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n + A103517 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131951.P14318559498190306158

namespace A131951

/-- `∑[A131577(n)+A103517(n)]` -/
def P14318559498190306158.Spec : Prop :=
  ∀ n, P14318559498190306158.a n = A131951 n

end A131951

/-!
# A131952: a(n) is the maximal overpseudoprime q to base 2 such that the multiplicative order of 2 mod q equals A143584(n).

The programs for A131952, there is no canonical definition to state claims against.
-/

/-! ## A131952.P13804477172292253558

`A064078(A143584(n+1))`
-/

namespace A131952.P13804477172292253558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064078 (A143584 (n + 1)).toNat

end

end A131952.P13804477172292253558

/-! ## A131952.P6838322872197057954

`A019320(A143584(n+1)%A344515(n+1))`
-/

namespace A131952.P6838322872197057954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019320 (Int.tmod (A143584 (n + 1)) (A344515 (n + 1))).toNat

end

end A131952.P6838322872197057954

/-! ## A131952.P4596396916360151498

`A019320(A143584(n+1)^A152848(n))`
-/

namespace A131952.P4596396916360151498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019320 (SequenceMachineLib.roundAway ((A143584 (n + 1) : ℚ) ^ (A152848 n : ℤ))).toNat

end

end A131952.P4596396916360151498

/-! ## A131952.P2471238739733556130

`A019320(A143584(n+1))/A001221(A144755(n+1))`
-/

namespace A131952.P2471238739733556130
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A019320 (A143584 (n + 1)).toNat : ℚ) / (A001221 (A144755 (n + 1)).toNat : ℚ)

end

end A131952.P2471238739733556130

/-!
# A131953: A130321 + A059268 - A000012(signed).

The programs for A131953, the canonical program `A131953.P6052148491130598522` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131953 has offset 0).

The definition of A131953 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A131953.P513784634409022500

`A271709(n)-(and(2, comp[∑[n]]+n)-1)`
-/

namespace A131953.P513784634409022500
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271709 n - ((Nat.land 2 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + n) : ℤ) - 1)

end

end A131953.P513784634409022500

namespace A131953

/-- `A271709(n)-(and(2, comp[∑[n]]+n)-1)` -/
def P513784634409022500.Spec : Prop :=
  ∀ n, P513784634409022500.a n = A131953 n

end A131953

/-! ## A131953.P13922556179575120030

`A271709(n)-A097807(n)`
-/

namespace A131953.P13922556179575120030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271709 n - A097807 n

end

end A131953.P13922556179575120030

namespace A131953

/-- `A271709(n)-A097807(n)` -/
def P13922556179575120030.Spec : Prop :=
  ∀ n, P13922556179575120030.a n = A131953 n

end A131953

/-! ## A131953.P6052148491130598522

`A131816(n)+1-A097807(n)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A131953

/-- `A131816(n)+1-A097807(n)` -/
def P6052148491130598522.Spec : Prop :=
  ∀ n, P6052148491130598522.a n = A131953 n

theorem P6052148491130598522.correct : P6052148491130598522.Spec := by
  intro n
  simp only [A131953]

end A131953

/-! ## A131953.P9555289739382292213

`A131816(n)+and(2, A099375(n))`
-/

namespace A131953.P9555289739382292213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131816 n + Int.land 2 (A099375 n)

end

end A131953.P9555289739382292213

namespace A131953

/-- `A131816(n)+and(2, A099375(n))` -/
def P9555289739382292213.Spec : Prop :=
  ∀ n, P9555289739382292213.a n = A131953 n

end A131953

/-! ## A131953.P13430721856251280523

`A062510(A025581(n))+A059268(n)`
-/

namespace A131953.P13430721856251280523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062510 (A025581 n).toNat + A059268 n

end

end A131953.P13430721856251280523

namespace A131953

/-- `A062510(A025581(n))+A059268(n)` -/
def P13430721856251280523.Spec : Prop :=
  ∀ n, P13430721856251280523.a n = A131953 n

end A131953

/-! ## A131953.P4388842940933559814

`A131816(n)+A010673(A025581(n))`
-/

namespace A131953.P4388842940933559814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131816 n + A010673 (A025581 n).toNat

end

end A131953.P4388842940933559814

namespace A131953

/-- `A131816(n)+A010673(A025581(n))` -/
def P4388842940933559814.Spec : Prop :=
  ∀ n, P4388842940933559814.a n = A131953 n

end A131953

/-! ## A131953.P99076011448533601

`A350770(n+1)+2-A097807(n)`
-/

namespace A131953.P99076011448533601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350770 (n + 1) + (2 - A097807 n)

end

end A131953.P99076011448533601

namespace A131953

/-- `A350770(n+1)+2-A097807(n)` -/
def P99076011448533601.Spec : Prop :=
  ∀ n, P99076011448533601.a n = A131953 n

end A131953

/-! ## A131953.P15965531096060583826

`A131816(n)+A000038(A050314(n))`
-/

namespace A131953.P15965531096060583826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131816 n + A000038 (A050314 n).toNat

end

end A131953.P15965531096060583826

namespace A131953

/-- `A131816(n)+A000038(A050314(n))` -/
def P15965531096060583826.Spec : Prop :=
  ∀ n, P15965531096060583826.a n = A131953 n

end A131953

/-! ## A131953.P11306229439991322548

`A131816(n)+A000038(A053121(n))`
-/

namespace A131953.P11306229439991322548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131816 n + A000038 (A053121 n).toNat

end

end A131953.P11306229439991322548

namespace A131953

/-- `A131816(n)+A000038(A053121(n))` -/
def P11306229439991322548.Spec : Prop :=
  ∀ n, P11306229439991322548.a n = A131953 n

end A131953

/-! ## A131953.P8066901971321369166

`A131816(n)+A000038(A100749(n))`
-/

namespace A131953.P8066901971321369166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131816 n + A000038 (A100749 n).toNat

end

end A131953.P8066901971321369166

namespace A131953

/-- `A131816(n)+A000038(A100749(n))` -/
def P8066901971321369166.Spec : Prop :=
  ∀ n, P8066901971321369166.a n = A131953 n

end A131953

/-!
# A131954: a(n) = sum of digits of (n! + a(n-1)), with a(1)=1.

The programs for A131954, there is no canonical definition to state claims against.
-/

/-! ## A131954.P4866844678494067831

`A349403(lt[A000073(n), A349423(3*n+1)]+1)`
-/

namespace A131954.P4866844678494067831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349423 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349403 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1)

end

end A131954.P4866844678494067831

/-! ## A131954.P258147834733803416

`A349403(lt[n/5, ∑{e}[n+1, #]])`
-/

namespace A131954.P258147834733803416
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 5

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349403 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n)

end

end A131954.P258147834733803416

/-! ## A131954.P7933830912583920932

`A349403(lt[A218699(n), A349384(2*n+1)])`
-/

namespace A131954.P7933830912583920932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218699 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349384 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349403 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A131954.P7933830912583920932

/-! ## A131954.P14091571727399276036

`A349403(lt[A252930(n+5), A349391(n+1)])`
-/

namespace A131954.P14091571727399276036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252930 (n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349391 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349403 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A131954.P14091571727399276036

/-! ## A131954.P2531018913843225905

`A349403(n+1)*A349410(A349423(2*n+3))`
-/

namespace A131954.P2531018913843225905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349403 (n + 1) * A349410 (A349423 (2 * n + 3)).toNat

end

end A131954.P2531018913843225905

/-!
# A131957: Busy Beaver sigma variation: maximum number of 1's on the final tape, for a 2-state, 2-symbol Turing machine running on a tape which is initialized with the number n in binary and 0's everywhere else. The machine is started at the rightmost bit in the number n.

The programs for A131957, there is no canonical definition to state claims against.
-/

/-! ## A131957.P6473507566822556108

`A029837(3*(n+1))+A000122(A135488(2*(n+1)))`
-/

namespace A131957.P6473507566822556108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (3 * (n + 1)) + A000122 (A135488 (2 * (n + 1))).toNat

end

end A131957.P6473507566822556108

/-! ## A131957.P16957016412557977023

`A106348(A166138(n)+1)+2`
-/

namespace A131957.P16957016412557977023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106348 (A166138 n + 1).toNat + 2

end

end A131957.P16957016412557977023

/-! ## A131957.P4451619815143830855

`A070939(3*n+4)+A010054(A126869(n))`
-/

namespace A131957.P4451619815143830855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (3 * n + 4) + A010054 (A126869 n).toNat

end

end A131957.P4451619815143830855

/-! ## A131957.P6183018789365825557

`A070939(3*n+4)+A047999(2^n)`
-/

namespace A131957.P6183018789365825557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (3 * n + 4) + A047999 (2 ^ n)

end

end A131957.P6183018789365825557

/-!
# A131960: a(n) = A000043(n) * A000668(n).

The programs for A131960, there is no canonical definition to state claims against.
-/

/-! ## A131960.P12106689660991453046

`A000043(n+1)*A000668(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A131960.P12106689660991453046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000043 (n + 1) * A000668 (n + 1)

end

end A131960.P12106689660991453046

/-! ## A131960.P14143278633174368104

`record[(n+2)*A049479(n+2)]`
-/

namespace A131960.P14143278633174368104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A049479 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A131960.P14143278633174368104

/-! ## A131960.P1891190479562181570

`A066524(A000043(n+1))`
-/

namespace A131960.P1891190479562181570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066524 (A000043 (n + 1)).toNat

end

end A131960.P1891190479562181570

/-! ## A131960.P3588297506491489919

`A066524(A366029(n+1))`
-/

namespace A131960.P3588297506491489919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066524 (A366029 (n + 1)).toNat

end

end A131960.P3588297506491489919

/-! ## A131960.P10626544100035968985

`A000043(n+1)*A343733(n+2)`
-/

namespace A131960.P10626544100035968985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000043 (n + 1) * A343733 (n + 2)

end

end A131960.P10626544100035968985

/-!
# A131961: Expansion of f(x, x^2) * f(x^2, x^2) in powers of x where f(, ) is Ramanujan's general theta function.

The programs for A131961, the canonical program `A131961.P4236361226721680594` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131961 has offset 0).

The definition of A131961 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A123484, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A131961.P4236361226721680594

`A123484(24*n+1)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A131961

/-- `A123484(24*n+1)` -/
def P4236361226721680594.Spec : Prop :=
  ∀ n, P4236361226721680594.a n = A131961 n

theorem P4236361226721680594.correct : P4236361226721680594.Spec := by
  intro n
  simp only [A131961]

end A131961

/-! ## A131961.P16323913434733066916

`A123884(2*n)`
-/

namespace A131961.P16323913434733066916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123884 (2 * n)

end

end A131961.P16323913434733066916

namespace A131961

/-- `A123884(2*n)` -/
def P16323913434733066916.Spec : Prop :=
  ∀ n, P16323913434733066916.a n = A131961 n

end A131961

/-! ## A131961.P10446258910428316469

`A248886(2*n)`
-/

namespace A131961.P10446258910428316469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248886 (2 * n)

end

end A131961.P10446258910428316469

namespace A131961

/-- `A248886(2*n)` -/
def P10446258910428316469.Spec : Prop :=
  ∀ n, P10446258910428316469.a n = A131961 n

end A131961

/-! ## A131961.P4916139342122580505

`A123884(A005843(n))%A005563(n+1)`
-/

namespace A131961.P4916139342122580505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A123884 (A005843 n).toNat) (A005563 (n + 1))

end

end A131961.P4916139342122580505

namespace A131961

/-- `A123884(A005843(n))%A005563(n+1)` -/
def P4916139342122580505.Spec : Prop :=
  ∀ n, P4916139342122580505.a n = A131961 n

end A131961

/-! ## A131961.P11997851241362305249

`A112606(3*n)`
-/

namespace A131961.P11997851241362305249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112606 (3 * n)

end

end A131961.P11997851241362305249

namespace A131961

/-- `A112606(3*n)` -/
def P11997851241362305249.Spec : Prop :=
  ∀ n, P11997851241362305249.a n = A131961 n

end A131961

/-! ## A131961.P5080792874047936787

`A260941(3*n)`
-/

namespace A131961.P5080792874047936787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260941 (3 * n)

end

end A131961.P5080792874047936787

namespace A131961

/-- `A260941(3*n)` -/
def P5080792874047936787.Spec : Prop :=
  ∀ n, P5080792874047936787.a n = A131961 n

end A131961

/-! ## A131961.P15068474366800835120

`A097195(4*n)`
-/

namespace A131961.P15068474366800835120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097195 (4 * n)

end

end A131961.P15068474366800835120

namespace A131961

/-- `A097195(4*n)` -/
def P15068474366800835120.Spec : Prop :=
  ∀ n, P15068474366800835120.a n = A131961 n

end A131961

/-! ## A131961.P2678499269716429710

`A129451(4*n)`
-/

namespace A131961.P2678499269716429710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129451 (4 * n)

end

end A131961.P2678499269716429710

namespace A131961

/-- `A129451(4*n)` -/
def P2678499269716429710.Spec : Prop :=
  ∀ n, P2678499269716429710.a n = A131961 n

end A131961

/-! ## A131961.P14963567818090669991

`A112604(6*n)`
-/

namespace A131961.P14963567818090669991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112604 (6 * n)

end

end A131961.P14963567818090669991

namespace A131961

/-- `A112604(6*n)` -/
def P14963567818090669991.Spec : Prop :=
  ∀ n, P14963567818090669991.a n = A131961 n

end A131961

/-! ## A131961.P6355823075385745689

`A253243(6*n)`
-/

namespace A131961.P6355823075385745689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253243 (6 * n)

end

end A131961.P6355823075385745689

namespace A131961

/-- `A253243(6*n)` -/
def P6355823075385745689.Spec : Prop :=
  ∀ n, P6355823075385745689.a n = A131961 n

end A131961

/-! ## A131961.P826054262976530574

`A262774(6*n)`
-/

namespace A131961.P826054262976530574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262774 (6 * n)

end

end A131961.P826054262976530574

namespace A131961

/-- `A262774(6*n)` -/
def P826054262976530574.Spec : Prop :=
  ∀ n, P826054262976530574.a n = A131961 n

end A131961

/-! ## A131961.P5396885040852440582

`A033687(8*n)`
-/

namespace A131961.P5396885040852440582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033687 (8 * n)

end

end A131961.P5396885040852440582

namespace A131961

/-- `A033687(8*n)` -/
def P5396885040852440582.Spec : Prop :=
  ∀ n, P5396885040852440582.a n = A131961 n

end A131961

/-! ## A131961.P849379282572517412

`A122861(8*n)`
-/

namespace A131961.P849379282572517412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122861 (8 * n)

end

end A131961.P849379282572517412

namespace A131961

/-- `A122861(8*n)` -/
def P849379282572517412.Spec : Prop :=
  ∀ n, P849379282572517412.a n = A131961 n

end A131961

/-! ## A131961.P7044584835605607045

`A129576(8*n)`
-/

namespace A131961.P7044584835605607045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129576 (8 * n)

end

end A131961.P7044584835605607045

namespace A131961

/-- `A129576(8*n)` -/
def P7044584835605607045.Spec : Prop :=
  ∀ n, P7044584835605607045.a n = A131961 n

end A131961

/-! ## A131961.P6493259329274627331

`A227696(8*n)`
-/

namespace A131961.P6493259329274627331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227696 (8 * n)

end

end A131961.P6493259329274627331

namespace A131961

/-- `A227696(8*n)` -/
def P6493259329274627331.Spec : Prop :=
  ∀ n, P6493259329274627331.a n = A131961 n

end A131961

/-! ## A131961.P8929864384454631758

`A246650(8*n)`
-/

namespace A131961.P8929864384454631758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246650 (8 * n)

end

end A131961.P8929864384454631758

namespace A131961

/-- `A246650(8*n)` -/
def P8929864384454631758.Spec : Prop :=
  ∀ n, P8929864384454631758.a n = A131961 n

end A131961

/-! ## A131961.P8069412375889060950

`A246752(8*n)`
-/

namespace A131961.P8069412375889060950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246752 (8 * n)

end

end A131961.P8069412375889060950

namespace A131961

/-- `A246752(8*n)` -/
def P8069412375889060950.Spec : Prop :=
  ∀ n, P8069412375889060950.a n = A131961 n

end A131961

/-! ## A131961.P7810647496133053032

`A262709(8*n)`
-/

namespace A131961.P7810647496133053032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262709 (8 * n)

end

end A131961.P7810647496133053032

namespace A131961

/-- `A262709(8*n)` -/
def P7810647496133053032.Spec : Prop :=
  ∀ n, P7810647496133053032.a n = A131961 n

end A131961

/-! ## A131961.P10617328183427488925

`A112608(9*n)`
-/

namespace A131961.P10617328183427488925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112608 (9 * n)

end

end A131961.P10617328183427488925

namespace A131961

/-- `A112608(9*n)` -/
def P10617328183427488925.Spec : Prop :=
  ∀ n, P10617328183427488925.a n = A131961 n

end A131961

/-! ## A131961.P10478011445413309365

`A260943(9*n)`
-/

namespace A131961.P10478011445413309365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260943 (9 * n)

end

end A131961.P10478011445413309365

namespace A131961

/-- `A260943(9*n)` -/
def P10478011445413309365.Spec : Prop :=
  ∀ n, P10478011445413309365.a n = A131961 n

end A131961

/-!
# A131962: Expansion of psi(x) * phi(-x^12) / chi(-x^4) in powers of x where phi(), psi(), chi() are Ramanujan theta functions.

The programs for A131962, the canonical program `A131962.P10633637517023814369` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131962 has offset 0).

The definition of A131962 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A131962.P10633637517023814369

`A121361(2*n)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A131962

/-- `A121361(2*n)` -/
def P10633637517023814369.Spec : Prop :=
  ∀ n, P10633637517023814369.a n = A131962 n

theorem P10633637517023814369.correct : P10633637517023814369.Spec := by
  intro n
  simp only [A131962]

end A131962

/-! ## A131962.P16008706494193136137

`A112609(3*n)`
-/

namespace A131962.P16008706494193136137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112609 (3 * n)

end

end A131962.P16008706494193136137

namespace A131962

/-- `A112609(3*n)` -/
def P16008706494193136137.Spec : Prop :=
  ∀ n, P16008706494193136137.a n = A131962 n

end A131962

/-! ## A131962.P9725861325672942298

`A260944(3*n)`
-/

namespace A131962.P9725861325672942298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260944 (3 * n)

end

end A131962.P9725861325672942298

namespace A131962

/-- `A260944(3*n)` -/
def P9725861325672942298.Spec : Prop :=
  ∀ n, P9725861325672942298.a n = A131962 n

end A131962

/-! ## A131962.P13770426950579739524

`A112609(A008486(n))+A000007(n)`
-/

namespace A131962.P13770426950579739524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112609 (A008486 n).toNat + A000007 n

end

end A131962.P13770426950579739524

namespace A131962

/-- `A112609(A008486(n))+A000007(n)` -/
def P13770426950579739524.Spec : Prop :=
  ∀ n, P13770426950579739524.a n = A131962 n

end A131962

/-! ## A131962.P16842757647740528193

`A097195(A008586(n)+1)/2`
-/

namespace A131962.P16842757647740528193
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A097195 (A008586 n + 1).toNat : ℚ) / 2

end

end A131962.P16842757647740528193

namespace A131962

/-- `A097195(A008586(n)+1)/2` -/
def P16842757647740528193.Spec : Prop :=
  ∀ n, P16842757647740528193.a n = (A131962 n : ℚ)

end A131962

/-! ## A131962.P940321131712933573

`A112605(A008588(n)+1)/2`
-/

namespace A131962.P940321131712933573
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112605 (A008588 n + 1).toNat : ℚ) / 2

end

end A131962.P940321131712933573

namespace A131962

/-- `A112605(A008588(n)+1)/2` -/
def P940321131712933573.Spec : Prop :=
  ∀ n, P940321131712933573.a n = (A131962 n : ℚ)

end A131962

/-! ## A131962.P1313868594295658060

`A033687(A017077(n)+1)/2`
-/

namespace A131962.P1313868594295658060
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033687 (A017077 n + 1).toNat : ℚ) / 2

end

end A131962.P1313868594295658060

namespace A131962

/-- `A033687(A017077(n)+1)/2` -/
def P1313868594295658060.Spec : Prop :=
  ∀ n, P1313868594295658060.a n = (A131962 n : ℚ)

end A131962

/-! ## A131962.P932849418448436925

`A033687(A008590(n)+2)/2`
-/

namespace A131962.P932849418448436925
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033687 (A008590 n + 2).toNat : ℚ) / 2

end

end A131962.P932849418448436925

namespace A131962

/-- `A033687(A008590(n)+2)/2` -/
def P932849418448436925.Spec : Prop :=
  ∀ n, P932849418448436925.a n = (A131962 n : ℚ)

end A131962

/-! ## A131962.P9438880359268915514

`A129576(2*A016813(n))/2`
-/

namespace A131962.P9438880359268915514
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129576 (2 * A016813 n).toNat : ℚ) / 2

end

end A131962.P9438880359268915514

namespace A131962

/-- `A129576(2*A016813(n))/2` -/
def P9438880359268915514.Spec : Prop :=
  ∀ n, P9438880359268915514.a n = (A131962 n : ℚ)

end A131962

/-! ## A131962.P9450380025649140848

`A112607(A017173(n))`
-/

namespace A131962.P9450380025649140848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112607 (A017173 n).toNat

end

end A131962.P9450380025649140848

namespace A131962

/-- `A112607(A017173(n))` -/
def P9450380025649140848.Spec : Prop :=
  ∀ n, P9450380025649140848.a n = A131962 n

end A131962

/-! ## A131962.P1460221358976982764

`A033762(A017533(n)+2)/2`
-/

namespace A131962.P1460221358976982764
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033762 (A017533 n + 2).toNat : ℚ) / 2

end

end A131962.P1460221358976982764

namespace A131962

/-- `A033762(A017533(n)+2)/2` -/
def P1460221358976982764.Spec : Prop :=
  ∀ n, P1460221358976982764.a n = (A131962 n : ℚ)

end A131962

/-! ## A131962.P9886964055098442704

`A033762(A017569(n)-1)/2`
-/

namespace A131962.P9886964055098442704
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033762 (A017569 n - 1).toNat : ℚ) / 2

end

end A131962.P9886964055098442704

namespace A131962

/-- `A033762(A017569(n)-1)/2` -/
def P9886964055098442704.Spec : Prop :=
  ∀ n, P9886964055098442704.a n = (A131962 n : ℚ)

end A131962

/-! ## A131962.P11530516402667518349

`A088534(A135659(n))`
-/

namespace A131962.P11530516402667518349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088534 (A135659 n).toNat

end

end A131962.P11530516402667518349

namespace A131962

/-- `A088534(A135659(n))` -/
def P11530516402667518349.Spec : Prop :=
  ∀ n, P11530516402667518349.a n = A131962 n

end A131962

/-! ## A131962.P8985449125207080722

`A088534(A017605(2*n))`
-/

namespace A131962.P8985449125207080722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088534 (A017605 (2 * n)).toNat

end

end A131962.P8985449125207080722

namespace A131962

/-- `A088534(A017605(2*n))` -/
def P8985449125207080722.Spec : Prop :=
  ∀ n, P8985449125207080722.a n = A131962 n

end A131962

/-! ## A131962.P16548953774465217337

`A112607(A156795(n+1))`
-/

namespace A131962.P16548953774465217337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112607 (A156795 (n + 1)).toNat

end

end A131962.P16548953774465217337

namespace A131962

/-- `A112607(A156795(n+1))` -/
def P16548953774465217337.Spec : Prop :=
  ∀ n, P16548953774465217337.a n = A131962 n

end A131962

/-!
# A131963: Expansion of f(x, x^2) * f(x^4, x^12) in powers of x where f(, ) is Ramanujan's general theta function.

The programs for A131963, the canonical program `A131963.P6830822417454376484` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131963 has offset 0).

The definition of A131963 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A131963.P13478949572098785756

`A123884(Δ[n²])/2`
-/

namespace A131963.P13478949572098785756
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123884 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A131963.P13478949572098785756

namespace A131963

/-- `A123884(Δ[n²])/2` -/
def P13478949572098785756.Spec : Prop :=
  ∀ n, P13478949572098785756.a n = (A131963 n : ℚ)

end A131963

/-! ## A131963.P14308345623354018076

`abs(A248886(2*n+1)/2)`
-/

namespace A131963.P14308345623354018076
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A248886 (2 * n + 1) : ℚ) / 2|

end

end A131963.P14308345623354018076

namespace A131963

/-- `abs(A248886(2*n+1)/2)` -/
def P14308345623354018076.Spec : Prop :=
  ∀ n, P14308345623354018076.a n = (A131963 n : ℚ)

end A131963

/-! ## A131963.P8305989542206611472

`A330015(1-A248886(2*n+1))`
-/

namespace A131963.P8305989542206611472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330015 (1 - A248886 (2 * n + 1)).toNat

end

end A131963.P8305989542206611472

namespace A131963

/-- `A330015(1-A248886(2*n+1))` -/
def P8305989542206611472.Spec : Prop :=
  ∀ n, P8305989542206611472.a n = A131963 n

end A131963

/-! ## A131963.P5118125936667236582

`gcd(A248886(2*n+1)/2, A000038(n))`
-/

namespace A131963.P5118125936667236582
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((A248886 (2 * n + 1) : ℚ) / 2)) (A000038 n)

end

end A131963.P5118125936667236582

namespace A131963

/-- `gcd(A248886(2*n+1)/2, A000038(n))` -/
def P5118125936667236582.Spec : Prop :=
  ∀ n, (P5118125936667236582.a n : ℤ) = A131963 n

end A131963

/-! ## A131963.P2688099245525290314

`A248886(2*n+1)/(A000038(n+1)-2)`
-/

namespace A131963.P2688099245525290314
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A248886 (2 * n + 1) : ℚ) / (A000038 (n + 1) - 2 : ℚ)

end

end A131963.P2688099245525290314

namespace A131963

/-- `A248886(2*n+1)/(A000038(n+1)-2)` -/
def P2688099245525290314.Spec : Prop :=
  ∀ n, P2688099245525290314.a n = (A131963 n : ℚ)

end A131963

/-! ## A131963.P13241675945108158366

`A248886(2*n+1)/(A005926(2*n)-2)`
-/

namespace A131963.P13241675945108158366
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A248886 (2 * n + 1) : ℚ) / (A005926 (2 * n) - 2 : ℚ)

end

end A131963.P13241675945108158366

namespace A131963

/-- `A248886(2*n+1)/(A005926(2*n)-2)` -/
def P13241675945108158366.Spec : Prop :=
  ∀ n, P13241675945108158366.a n = (A131963 n : ℚ)

end A131963

/-! ## A131963.P10721305218531002520

`lcm(A000034(n+1), A248886(2*n+1))/2`
-/

namespace A131963.P10721305218531002520
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A000034 (n + 1)) (A248886 (2 * n + 1)) : ℚ) / 2

end

end A131963.P10721305218531002520

namespace A131963

/-- `lcm(A000034(n+1), A248886(2*n+1))/2` -/
def P10721305218531002520.Spec : Prop :=
  ∀ n, P10721305218531002520.a n = (A131963 n : ℚ)

end A131963

/-! ## A131963.P5033673022456287531

`A248886(2*n+1)/(A033999(2*n+1)-1)`
-/

namespace A131963.P5033673022456287531
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A248886 (2 * n + 1) : ℚ) / (A033999 (2 * n + 1) - 1 : ℚ)

end

end A131963.P5033673022456287531

namespace A131963

/-- `A248886(2*n+1)/(A033999(2*n+1)-1)` -/
def P5033673022456287531.Spec : Prop :=
  ∀ n, P5033673022456287531.a n = (A131963 n : ℚ)

end A131963

/-! ## A131963.P946797143800299361

`gcd(A005926(A005926(n)), A248886(2*n+1))/2`
-/

namespace A131963.P946797143800299361
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A005926 (A005926 n).toNat) (A248886 (2 * n + 1)) : ℚ) / 2

end

end A131963.P946797143800299361

namespace A131963

/-- `gcd(A005926(A005926(n)), A248886(2*n+1))/2` -/
def P946797143800299361.Spec : Prop :=
  ∀ n, P946797143800299361.a n = (A131963 n : ℚ)

end A131963

/-! ## A131963.P1265679632847595528

`A248886(2*n+1)/A000034(2*n+1)-A248886(2*n+1)`
-/

namespace A131963.P1265679632847595528
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A248886 (2 * n + 1) : ℚ) / (A000034 (2 * n + 1) : ℚ) - (A248886 (2 * n + 1) : ℚ)

end

end A131963.P1265679632847595528

namespace A131963

/-- `A248886(2*n+1)/A000034(2*n+1)-A248886(2*n+1)` -/
def P1265679632847595528.Spec : Prop :=
  ∀ n, P1265679632847595528.a n = (A131963 n : ℚ)

end A131963

/-! ## A131963.P12107447895317789796

`A112607(3*n)`
-/

namespace A131963.P12107447895317789796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112607 (3 * n)

end

end A131963.P12107447895317789796

namespace A131963

/-- `A112607(3*n)` -/
def P12107447895317789796.Spec : Prop :=
  ∀ n, P12107447895317789796.a n = A131963 n

end A131963

/-! ## A131963.P6830822417454376484

`A260942(3*n+1)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A131963

/-- `A260942(3*n+1)` -/
def P6830822417454376484.Spec : Prop :=
  ∀ n, P6830822417454376484.a n = A131963 n

theorem P6830822417454376484.correct : P6830822417454376484.Spec := by
  intro n
  simp only [A131963]

end A131963

/-! ## A131963.P18349455861747468603

`A097195(4*n+2)/2`
-/

namespace A131963.P18349455861747468603
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A097195 (4 * n + 2) : ℚ) / 2

end

end A131963.P18349455861747468603

namespace A131963

/-- `A097195(4*n+2)/2` -/
def P18349455861747468603.Spec : Prop :=
  ∀ n, P18349455861747468603.a n = (A131963 n : ℚ)

end A131963

/-! ## A131963.P3364870453312472124

`A129451(4*n+2)/2`
-/

namespace A131963.P3364870453312472124
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129451 (4 * n + 2) : ℚ) / 2

end

end A131963.P3364870453312472124

namespace A131963

/-- `A129451(4*n+2)/2` -/
def P3364870453312472124.Spec : Prop :=
  ∀ n, P3364870453312472124.a n = (A131963 n : ℚ)

end A131963

/-! ## A131963.P6938644896904255825

`A253243(6*n+3)/2`
-/

namespace A131963.P6938644896904255825
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A253243 (6 * n + 3) : ℚ) / 2

end

end A131963.P6938644896904255825

namespace A131963

/-- `A253243(6*n+3)/2` -/
def P6938644896904255825.Spec : Prop :=
  ∀ n, P6938644896904255825.a n = (A131963 n : ℚ)

end A131963

/-! ## A131963.P12529372633095566442

`A112604(A016933(n)+1)/2`
-/

namespace A131963.P12529372633095566442
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112604 (A016933 n + 1).toNat : ℚ) / 2

end

end A131963.P12529372633095566442

namespace A131963

/-- `A112604(A016933(n)+1)/2` -/
def P12529372633095566442.Spec : Prop :=
  ∀ n, P12529372633095566442.a n = (A131963 n : ℚ)

end A131963

/-! ## A131963.P9574003775933941298

`A033687(8*n+4)/2`
-/

namespace A131963.P9574003775933941298
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033687 (8 * n + 4) : ℚ) / 2

end

end A131963.P9574003775933941298

namespace A131963

/-- `A033687(8*n+4)/2` -/
def P9574003775933941298.Spec : Prop :=
  ∀ n, P9574003775933941298.a n = (A131963 n : ℚ)

end A131963

/-! ## A131963.P13996009784243058033

`A112609(A017209(n))`
-/

namespace A131963.P13996009784243058033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112609 (A017209 n).toNat

end

end A131963.P13996009784243058033

namespace A131963

/-- `A112609(A017209(n))` -/
def P13996009784243058033.Spec : Prop :=
  ∀ n, P13996009784243058033.a n = A131963 n

end A131963

/-! ## A131963.P6205888949220169984

`A001221(A123884(2*n+1)!)`
-/

namespace A131963.P6205888949220169984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Nat.factorial (A123884 (2 * n + 1)).toNat)

end

end A131963.P6205888949220169984

namespace A131963

/-- `A001221(A123884(2*n+1)!)` -/
def P6205888949220169984.Spec : Prop :=
  ∀ n, P6205888949220169984.a n = A131963 n

end A131963

/-! ## A131963.P13830626934454796989

`A258940(6*(2*n+1))`
-/

namespace A131963.P13830626934454796989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258940 (6 * (2 * n + 1))

end

end A131963.P13830626934454796989

namespace A131963

/-- `A258940(6*(2*n+1))` -/
def P13830626934454796989.Spec : Prop :=
  ∀ n, P13830626934454796989.a n = A131963 n

end A131963

/-!
# A131964: Expansion of f(x^2, x^10) / f(x, x^3) in powers of x where f(, ) is Ramanujan's general theta function.

The programs for A131964, the canonical program `A131964.P13799590537725457977` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131964 has offset 0).

The definition of A131964 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A131964.P13799590537725457977

`A121361(Δ[n²])`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A131964

/-- `A121361(Δ[n²])` -/
def P13799590537725457977.Spec : Prop :=
  ∀ n, P13799590537725457977.a n = A131964 n

theorem P13799590537725457977.correct : P13799590537725457977.Spec := by
  intro n
  simp only [A131964]

end A131964

/-! ## A131964.P2018675847579236345

`dr(A121361(2*n+1))`
-/

namespace A131964.P2018675847579236345
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A121361 (2 * n + 1))

end

end A131964.P2018675847579236345

namespace A131964

/-- `dr(A121361(2*n+1))` -/
def P2018675847579236345.Spec : Prop :=
  ∀ n, (P2018675847579236345.a n : ℤ) = A131964 n

end A131964

/-! ## A131964.P16250196777870194535

`xor(1, xor(1, A121361(n+1+n)))`
-/

namespace A131964.P16250196777870194535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 (A121361 (n + 1 + n)))

end

end A131964.P16250196777870194535

namespace A131964

/-- `xor(1, xor(1, A121361(n+1+n)))` -/
def P16250196777870194535.Spec : Prop :=
  ∀ n, P16250196777870194535.a n = A131964 n

end A131964

/-! ## A131964.P13966836438337151325

`A121361(2*n+1)+C(n, A020664(n+1))`
-/

namespace A131964.P13966836438337151325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121361 (2 * n + 1) + (Nat.choose n (A020664 (n + 1)).toNat : ℤ)

end

end A131964.P13966836438337151325

namespace A131964

/-- `A121361(2*n+1)+C(n, A020664(n+1))` -/
def P13966836438337151325.Spec : Prop :=
  ∀ n, P13966836438337151325.a n = A131964 n

end A131964

/-! ## A131964.P5165752615156084271

`A089723(A005117(n+1))*A121361(2*n+1)`
-/

namespace A131964.P5165752615156084271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089723 (A005117 (n + 1)).toNat * A121361 (2 * n + 1)

end

end A131964.P5165752615156084271

namespace A131964

/-- `A089723(A005117(n+1))*A121361(2*n+1)` -/
def P5165752615156084271.Spec : Prop :=
  ∀ n, P5165752615156084271.a n = A131964 n

end A131964

/-! ## A131964.P422841559342016579

`A089723(A056059(n+1))*A121361(2*n+1)`
-/

namespace A131964.P422841559342016579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089723 (A056059 (n + 1)).toNat * A121361 (2 * n + 1)

end

end A131964.P422841559342016579

namespace A131964

/-- `A089723(A056059(n+1))*A121361(2*n+1)` -/
def P422841559342016579.Spec : Prop :=
  ∀ n, P422841559342016579.a n = A131964 n

end A131964

/-! ## A131964.P1011071654765672925

`A112608(3*n+2)/2`
-/

namespace A131964.P1011071654765672925
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112608 (3 * n + 2) : ℚ) / 2

end

end A131964.P1011071654765672925

namespace A131964

/-- `A112608(3*n+2)/2` -/
def P1011071654765672925.Spec : Prop :=
  ∀ n, P1011071654765672925.a n = (A131964 n : ℚ)

end A131964

/-! ## A131964.P4172810259903237541

`A002113(1-A260943(3*n+2))`
-/

namespace A131964.P4172810259903237541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (1 - A260943 (3 * n + 2)).toNat

end

end A131964.P4172810259903237541

namespace A131964

/-- `A002113(1-A260943(3*n+2))` -/
def P4172810259903237541.Spec : Prop :=
  ∀ n, P4172810259903237541.a n = A131964 n

end A131964

/-! ## A131964.P13707506428261458919

`A121361(2*n+1)*A349618(A000040(n+1))`
-/

namespace A131964.P13707506428261458919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121361 (2 * n + 1) * A349618 (A000040 (n + 1)).toNat

end

end A131964.P13707506428261458919

namespace A131964

/-- `A121361(2*n+1)*A349618(A000040(n+1))` -/
def P13707506428261458919.Spec : Prop :=
  ∀ n, P13707506428261458919.a n = A131964 n

end A131964

/-! ## A131964.P6206477200921069666

`A258940(A017629(n))`
-/

namespace A131964.P6206477200921069666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258940 (A017629 n).toNat

end

end A131964.P6206477200921069666

namespace A131964

/-- `A258940(A017629(n))` -/
def P6206477200921069666.Spec : Prop :=
  ∀ n, P6206477200921069666.a n = A131964 n

end A131964

/-! ## A131964.P5040211530864897870

`A088534(A350051(n))`
-/

namespace A131964.P5040211530864897870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088534 (A350051 n).toNat

end

end A131964.P5040211530864897870

namespace A131964

/-- `A088534(A350051(n))` -/
def P5040211530864897870.Spec : Prop :=
  ∀ n, P5040211530864897870.a n = A131964 n

end A131964

/-! ## A131964.P6292110715994891356

`A088534(A102603(n)-2)`
-/

namespace A131964.P6292110715994891356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088534 (A102603 n - 2).toNat

end

end A131964.P6292110715994891356

namespace A131964

/-- `A088534(A102603(n)-2)` -/
def P6292110715994891356.Spec : Prop :=
  ∀ n, P6292110715994891356.a n = A131964 n

end A131964

/-! ## A131964.P15397921014663757497

`A088534(A017605(2*n+1))`
-/

namespace A131964.P15397921014663757497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088534 (A017605 (2 * n + 1)).toNat

end

end A131964.P15397921014663757497

namespace A131964

/-- `A088534(A017605(2*n+1))` -/
def P15397921014663757497.Spec : Prop :=
  ∀ n, P15397921014663757497.a n = A131964 n

end A131964

/-! ## A131964.P12432166575978478959

`A258940(4*A017245(n))`
-/

namespace A131964.P12432166575978478959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258940 (4 * A017245 n).toNat

end

end A131964.P12432166575978478959

namespace A131964

/-- `A258940(4*A017245(n))` -/
def P12432166575978478959.Spec : Prop :=
  ∀ n, P12432166575978478959.a n = A131964 n

end A131964

/-!
# A131965: a(n) = 1 + Sum_{i=2..n-1} n*a(i).

The programs for A131965, the canonical program `A131965.P8681466775862888378` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131965 has offset 0).

The definition of A131965 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A131965.P8681466775862888378

`(n²*a(n-1)-1)/(n-1)` with `a(0)=1, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A131965

/-- `(n²*a(n-1)-1)/(n-1)` -/
def P8681466775862888378.Spec : Prop :=
  ∀ n, P8681466775862888378.a n = (A131965 n : ℚ)

end A131965

/-! ## A131965.P10205085532096302583

`abs(Δ[n*(a(n-1)-1)])` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A131965.P10205085532096302583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1] fun n f1 =>
  (n : ℤ) * (f1 (n - 1) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A131965.P10205085532096302583

namespace A131965

/-- `abs(Δ[n*(a(n-1)-1)])` -/
def P10205085532096302583.Spec : Prop :=
  ∀ n, P10205085532096302583.a n = A131965 n

end A131965

/-! ## A131965.P2411775580529703030

`-Δ[n*(a(n-1)-1)]` with `a(0)=3, a(1)=2, a(2)=1`
-/

namespace A131965.P2411775580529703030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 2, 1] fun n f1 =>
  (n : ℤ) * (f1 (n - 1) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(f1 (n + 1) - f1 n)

end

end A131965.P2411775580529703030

namespace A131965

/-- `-Δ[n*(a(n-1)-1)]` -/
def P2411775580529703030.Spec : Prop :=
  ∀ n, P2411775580529703030.a n = A131965 n

end A131965

/-! ## A131965.P3148864848381970657

`Δ[n*a(n-1)-(n-2)]` with `a(0)=-1, a(1)=0, a(2)=1, a(3)=2`
-/

namespace A131965.P3148864848381970657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-1, 0, 1, 2] fun n f1 =>
  (n : ℤ) * f1 (n - 1) - ((n : ℤ) - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A131965.P3148864848381970657

namespace A131965

/-- `Δ[n*a(n-1)-(n-2)]` -/
def P3148864848381970657.Spec : Prop :=
  ∀ n, P3148864848381970657.a n = A131965 n

end A131965

/-! ## A131965.P10519374918536553423

`floor(n/(1-1/n)*a(n-1))` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A131965.P10519374918536553423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  ⌊(n : ℚ) / (1 - 1 / (n : ℚ)) * (a (n - 1) : ℚ)⌋

end

end A131965.P10519374918536553423

namespace A131965

/-- `floor(n/(1-1/n)*a(n-1))` -/
def P10519374918536553423.Spec : Prop :=
  ∀ n, P10519374918536553423.a n = A131965 n

end A131965

/-! ## A131965.P17894811309132863160

`A007808(n)-Δ[A001710(n)]`
-/

namespace A131965.P17894811309132863160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001710 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007808 n - (f1 (n + 1) - f1 n)

end

end A131965.P17894811309132863160

namespace A131965

/-- `A007808(n)-Δ[A001710(n)]` -/
def P17894811309132863160.Spec : Prop :=
  ∀ n, P17894811309132863160.a n = A131965 n

end A131965

/-! ## A131965.P8205244217043999336

`A007808(n)%A074143(A233583(n+1))`
-/

namespace A131965.P8205244217043999336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007808 n) (A074143 (A233583 (n + 1)).toNat)

end

end A131965.P8205244217043999336

namespace A131965

/-- `A007808(n)%A074143(A233583(n+1))` -/
def P8205244217043999336.Spec : Prop :=
  ∀ n, P8205244217043999336.a n = A131965 n

end A131965

/-! ## A131965.P345203336463064570

`A001339(n)%A074143(A233583(n+1))`
-/

namespace A131965.P345203336463064570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001339 n) (A074143 (A233583 (n + 1)).toNat)

end

end A131965.P345203336463064570

namespace A131965

/-- `A001339(n)%A074143(A233583(n+1))` -/
def P345203336463064570.Spec : Prop :=
  ∀ n, P345203336463064570.a n = A131965 n

end A131965

/-! ## A131965.P7166114177785858498

`A007808(n)-A254040(A034856(n+1))`
-/

namespace A131965.P7166114177785858498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007808 n - A254040 (A034856 (n + 1)).toNat

end

end A131965.P7166114177785858498

namespace A131965

/-- `A007808(n)-A254040(A034856(n+1))` -/
def P7166114177785858498.Spec : Prop :=
  ∀ n, P7166114177785858498.a n = A131965 n

end A131965

/-!
# A131966: Interspersion associated with the Cantor fractal sequence, A088370.

The programs for A131966, there is no canonical definition to state claims against.
-/

/-! ## A131966.P6702078547718418111

`A132284(or(A077168(n), A341981(n)))`
-/

namespace A131966.P6702078547718418111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132284 (Int.lor (A077168 n) (A341981 (n + 101))).toNat

end

end A131966.P6702078547718418111

/-! ## A131966.P16278769574982320735

`or(A025466(A084639(n)), A132284(n+1))`
-/

namespace A131966.P16278769574982320735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A025466 (A084639 n).toNat) (A132284 (n + 1))

end

end A131966.P16278769574982320735

/-! ## A131966.P7891528535536632476

`A132284(n+1)+A025466(A084639(n)+1)`
-/

namespace A131966.P7891528535536632476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132284 (n + 1) + A025466 (A084639 n + 1).toNat

end

end A131966.P7891528535536632476

/-! ## A131966.P5591368616756700803

`A341994(A079205(n+2))+A132284(n+1)`
-/

namespace A131966.P5591368616756700803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341994 (A079205 (n + 2)).toNat + A132284 (n + 1)

end

end A131966.P5591368616756700803

/-! ## A131966.P13724450691860669801

`or(A057985(A023293(n+1)), A132284(n+1))`
-/

namespace A131966.P13724450691860669801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A057985 (A023293 (n + 1)).toNat) (A132284 (n + 1))

end

end A131966.P13724450691860669801

/-!
# A131967: Farey fractal sequence.

The programs for A131967, there is no canonical definition to state claims against.
-/

/-! ## A131967.P4944208997858829163

`A133404(n+1)+A102683(A144284(n+1))`
-/

namespace A131967.P4944208997858829163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133404 (n + 1) + A102683 (A144284 (n + 1)).toNat

end

end A131967.P4944208997858829163

/-! ## A131967.P10425360676102052231

`A167265(A133392(n+1))+A133404(n+1)`
-/

namespace A131967.P10425360676102052231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167265 (A133392 (n + 1)).toNat + A133404 (n + 1)

end

end A131967.P10425360676102052231

/-! ## A131967.P16722294977794672395

`A266974(A054471(n+1))+A133404(n+1)`
-/

namespace A131967.P16722294977794672395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266974 (A054471 (n + 1)).toNat + A133404 (n + 1)

end

end A131967.P16722294977794672395

/-! ## A131967.P18147135439471116668

`A178042(A006843(n+1)!*A006842(n+1))`
-/

namespace A131967.P18147135439471116668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178042 ((Nat.factorial (A006843 (n + 1)).toNat : ℤ) * A006842 (n + 1)).toNat

end

end A131967.P18147135439471116668

/-! ## A131967.P10555973330328333609

`A322358(A005648(n))+A064881(n+1)`
-/

namespace A131967.P10555973330328333609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322358 (A005648 n).toNat + A064881 (n + 1)

end

end A131967.P10555973330328333609

/-!
# A131968: Interspersion of the Farey fractal sequence, A131967.

The programs for A131968, there is no canonical definition to state claims against.
-/

/-! ## A131968.P15406013712636815623

`A061579(n)+A060778(A100735(n))`
-/

namespace A131968.P15406013712636815623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061579 n + A060778 (A100735 n).toNat

end

end A131968.P15406013712636815623

/-! ## A131968.P12053189421859234338

`A209332(A016116(n))+A061579(n)`
-/

namespace A131968.P12053189421859234338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209332 (A016116 n).toNat + A061579 n

end

end A131968.P12053189421859234338

/-! ## A131968.P16864365909683229103

`A066522(A038722(n+1)%A156937(n+3))`
-/

namespace A131968.P16864365909683229103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066522 (Int.tmod (A038722 (n + 1)) (A156937 (n + 3))).toNat

end

end A131968.P16864365909683229103

/-!
# A131969: First differences of A020806.

The programs for A131969, the canonical program `A131969.P9064946737604634197` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131969 has offset 0).

The definition of A131969 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A131969.P9064946737604634197

`-a(n-3)` with `a(0)=3, a(1)=-2, a(2)=6`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A131969

/-- `-a(n-3)` -/
def P9064946737604634197.Spec : Prop :=
  ∀ n, P9064946737604634197.a n = A131969 n

theorem P9064946737604634197.correct : P9064946737604634197.Spec := by
  intro n
  simp only [A131969]

end A131969

/-!
# A131970: 1 followed by 2n 2's.

The programs for A131970, the canonical program `A131970.P2832643984179434537` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131970 has offset 0).

The definition of A131970 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A131970.P2832643984179434537

`101*a(n-1)-100*a(n-2)` with `a(0)=1, a(1)=122`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A131970

/-- `101*a(n-1)-100*a(n-2)` -/
def P2832643984179434537.Spec : Prop :=
  ∀ n, P2832643984179434537.a n = A131970 n

theorem P2832643984179434537.correct : P2832643984179434537.Spec := by
  intro n
  simp only [A131970]

end A131970

/-! ## A131970.P9979103892612106270

`2*(10^(2*n)-1)/9+10^(2*n)`
-/

namespace A131970.P9979103892612106270
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * ((10 ^ (2 * n) : ℤ) - 1) : ℚ) / 9 + (10 ^ (2 * n) : ℚ)

end

end A131970.P9979103892612106270

namespace A131970

/-- `2*(10^(2*n)-1)/9+10^(2*n)` -/
def P9979103892612106270.Spec : Prop :=
  ∀ n, P9979103892612106270.a n = (A131970 n : ℚ)

theorem P9979103892612106270.correct : P9979103892612106270.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A131970, Nat.add_sub_cancel, A131970.P9979103892612106270.a, A131970.P2832643984179434537.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A131970, Nat.add_sub_cancel, A131970.P9979103892612106270.a, A131970.P2832643984179434537.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A131970

/-! ## A131970.P7696023338039861732

`A090843(2*n)`
-/

namespace A131970.P7696023338039861732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090843 (2 * n)

end

end A131970.P7696023338039861732

namespace A131970

/-- `A090843(2*n)` -/
def P7696023338039861732.Spec : Prop :=
  ∀ n, P7696023338039861732.a n = A131970 n

end A131970

/-! ## A131970.P13565146274682721879

`∑[A003953(n)²]`
-/

namespace A131970.P13565146274682721879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003953 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131970.P13565146274682721879

namespace A131970

/-- `∑[A003953(n)²]` -/
def P13565146274682721879.Spec : Prop :=
  ∀ n, P13565146274682721879.a n = A131970 n

end A131970

/-! ## A131970.P2845936703220958858

`∑[∑[A105694(n)]²]`
-/

namespace A131970.P2845936703220958858
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105694 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131970.P2845936703220958858

namespace A131970

/-- `∑[∑[A105694(n)]²]` -/
def P2845936703220958858.Spec : Prop :=
  ∀ n, P2845936703220958858.a n = A131970 n

end A131970

/-! ## A131970.P18361806734036685129

`∑[A164851(∑[n])²]`
-/

namespace A131970.P18361806734036685129
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164851 (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131970.P18361806734036685129

namespace A131970

/-- `∑[A164851(∑[n])²]` -/
def P18361806734036685129.Spec : Prop :=
  ∀ n, P18361806734036685129.a n = A131970 n

end A131970

/-! ## A131970.P16071165524292303392

`A094624(4*n+1)`
-/

namespace A131970.P16071165524292303392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094624 (4 * n + 1)

end

end A131970.P16071165524292303392

namespace A131970

/-- `A094624(4*n+1)` -/
def P16071165524292303392.Spec : Prop :=
  ∀ n, P16071165524292303392.a n = A131970 n

end A131970

/-! ## A131970.P14182271149979180894

`A094626(3*n+n+1)`
-/

namespace A131970.P14182271149979180894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094626 (3 * n + (n + 1))

end

end A131970.P14182271149979180894

namespace A131970

/-- `A094626(3*n+n+1)` -/
def P14182271149979180894.Spec : Prop :=
  ∀ n, P14182271149979180894.a n = A131970 n

end A131970

/-! ## A131970.P2677256782490191262

`∑[A109868(2*n+1)²]`
-/

namespace A131970.P2677256782490191262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109868 (2 * n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131970.P2677256782490191262

namespace A131970

/-- `∑[A109868(2*n+1)²]` -/
def P2677256782490191262.Spec : Prop :=
  ∀ n, P2677256782490191262.a n = A131970 n

end A131970

/-! ## A131970.P11131708470333177686

`A164851(A130883(n+1))`
-/

namespace A131970.P11131708470333177686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164851 (A130883 (n + 1)).toNat

end

end A131970.P11131708470333177686

namespace A131970

/-- `A164851(A130883(n+1))` -/
def P11131708470333177686.Spec : Prop :=
  ∀ n, P11131708470333177686.a n = A131970 n

end A131970

/-!
# A131971: a(0) = a(1) = a(2) = 1; a(n) = (a(n-1) + a(n-2) + a(n-3)) mod n.

The programs for A131971, the canonical program `A131971.P7676341210582061460` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131971 has offset 0).

The definition of A131971 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(a(n-1)+a(n-2)+a(n-3))%n` (program `A131971.P7676341210582061460`, by `A131971.P7676341210582061460.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A131971.P7676341210582061460

`(a(n-1)+a(n-2)+a(n-3))%n` with `a(0)=1, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A131971

/-- `(a(n-1)+a(n-2)+a(n-3))%n` -/
def P7676341210582061460.Spec : Prop :=
  ∀ n, (P7676341210582061460.a n : ℤ) = A131971 n

theorem P7676341210582061460.correct : P7676341210582061460.Spec := by
  intro n
  simp only [A131971]

end A131971

/-!
# A131973: Period 8: repeat 121, 242, 363, 484, 605, 726, 847, 968.

The programs for A131973, the canonical program `A131973.P3181388683412395779` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131973 has offset 0).

The definition of A131973 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A131973.P3181388683412395779

`121*(n%8+1)`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A131973

/-- `121*(n%8+1)` -/
def P3181388683412395779.Spec : Prop :=
  ∀ n, (P3181388683412395779.a n : ℤ) = A131973 n

theorem P3181388683412395779.correct : P3181388683412395779.Spec := by
  intro n
  simp only [A131973]

end A131973

/-!
# A131974: Period 8: repeat [1, 2, 3, 4, -5, -4, -3, -2].

The programs for A131974, the canonical program `A131974.P14513149245797308209` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131974 has offset 0).

The definition of A131974 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A131974.P14513149245797308209

`a(n-8)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=4, a(4)=-5, a(5)=-4, a(6)=-3, a(7)=-2`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A131974

/-- `a(n-8)` -/
def P14513149245797308209.Spec : Prop :=
  ∀ n, P14513149245797308209.a n = A131974 n

theorem P14513149245797308209.correct : P14513149245797308209.Spec := by
  intro n
  simp only [A131974]

end A131974

/-!
# A131978: A049614(n)/A131685(n).

The programs for A131978, there is no canonical definition to state claims against.
-/

/-! ## A131978.P2591088457468535132

`A049614(n+1)/A131685(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A131978.P2591088457468535132
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049614 (n + 1) : ℚ) / (A131685 (n + 1) : ℚ)

end

end A131978.P2591088457468535132

/-! ## A131978.P4188999703383672953

`(A117733(n+1)-A034386(n+1))/A131685(n+1)`
-/

namespace A131978.P4188999703383672953
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A117733 (n + 1) - A034386 (n + 1) : ℚ) / (A131685 (n + 1) : ℚ)

end

end A131978.P4188999703383672953

/-! ## A131978.P11656530603348066062

`A000142(n+1)/(A034386(n+1)*A131685(n+1))`
-/

namespace A131978.P11656530603348066062
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 (n + 1) : ℚ) / (A034386 (n + 1) * A131685 (n + 1) : ℚ)

end

end A131978.P11656530603348066062

/-! ## A131978.P9274625027847408256

`∏[gcd(n+1, A104024(n))]`
-/

namespace A131978.P9274625027847408256
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A104024 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A131978.P9274625027847408256

/-! ## A131978.P2483865376210018716

`∏[∏{e}[3^(1-∑{p}[n+1, C(#, n)]+n), #]]`
-/

namespace A131978.P2483865376210018716
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (1 - ((∑ p ∈ Nat.primeFactors (f3 n), Nat.choose p n : ℕ) : ℤ) + (n : ℤ) : ℤ)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f2 n)).natAbs, Nat.factorization (SequenceMachineLib.roundAway (f2 n)).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A131978.P2483865376210018716

/-!
# A131980: A coefficient tree from the list partition transform relating A000129, A000142, A000165, A110327, and A110330.

The programs for A131980, there is no canonical definition to state claims against.
-/

/-! ## A131980.P3072627782311941138

`abs(A076743(n))`
-/

namespace A131980.P3072627782311941138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A076743 n|

end

end A131980.P3072627782311941138

/-! ## A131980.P16775813214530164932

`A219570(comp[n²]+n)`
-/

namespace A131980.P16775813214530164932
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219570 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + n)

end

end A131980.P16775813214530164932

/-! ## A131980.P10575563144801513651

`(floor(1/Δ[sqrt(n)])-1)!*A034867(n)`
-/

namespace A131980.P10575563144801513651
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (⌊1 / (f1 (n + 1) - f1 n)⌋ - 1).toNat : ℤ) * A034867 n

end

end A131980.P10575563144801513651

/-! ## A131980.P2527198609593139540

`gcd(A000038(n), A076743(n))`
-/

namespace A131980.P2527198609593139540
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A076743 n)

end

end A131980.P2527198609593139540

/-! ## A131980.P16403906731980668595

`lcm(A000034(n), A076743(n))`
-/

namespace A131980.P16403906731980668595
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A076743 n)

end

end A131980.P16403906731980668595

/-!
# A131981: Number of early bird numbers <= n.

The programs for A131981, there is no canonical definition to state claims against.
-/

/-! ## A131981.P15801647426011590301

`∑[char[A116700(n+1)-1]]`
-/

namespace A131981.P15801647426011590301
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116700 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131981.P15801647426011590301

/-! ## A131981.P3632379056446249812

`∑[1-char[A131881(n+1)-1]]`
-/

namespace A131981.P3632379056446249812
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131881 (n + 1) - 1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131981.P3632379056446249812

/-! ## A131981.P5294743233744486748

`∑[gcd(n, n+1)%(A333921(n+1)-n)]`
-/

namespace A131981.P5294743233744486748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Nat.gcd n (n + 1) : ℤ) (A333921 (n + 1) - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131981.P5294743233744486748

/-! ## A131981.P4037725560442577510

`∑[char[A023443(A116700(n+1))]]`
-/

namespace A131981.P4037725560442577510
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A116700 (n + 1)).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131981.P4037725560442577510

/-! ## A131981.P8951387001778472848

`∑[A241235(2*n+1)%(n-A333921(n+1))]`
-/

namespace A131981.P8951387001778472848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A241235 (2 * n + 1)) ((n : ℤ) - A333921 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131981.P8951387001778472848

/-! ## A131981.P12296311833713430128

`∑[A179801(n+1)]`
-/

namespace A131981.P12296311833713430128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179801 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131981.P12296311833713430128

/-! ## A131981.P10112588966997479463

`A179801(char[1]+1+n)+a(n-1)` with `a(0)=0`
-/

namespace A131981.P10112588966997479463
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A179801 ((if ∃ j, f1 j = n then 1 else 0) + 1 + n) + a (n - 1)

end

end A131981.P10112588966997479463

/-!
# A131983: Records in A106708.

The programs for A131983, there is no canonical definition to state claims against.
-/

/-! ## A131983.P13539032391760605377

`record[A106708(n+1)]`
-/

namespace A131983.P13539032391760605377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106708 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A131983.P13539032391760605377

/-! ## A131983.P3051069729721160968

`A106708(A131984(n+1))`
-/

namespace A131983.P3051069729721160968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106708 (A131984 (n + 1)).toNat

end

end A131983.P3051069729721160968

/-! ## A131983.P4563118129373238911

`record[A000035(n)*A037279(n+1)]`
-/

namespace A131983.P4563118129373238911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n * A037279 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A131983.P4563118129373238911

/-! ## A131983.P12893247694843647254

`record[A037279(n+1)*A062157(n)]`
-/

namespace A131983.P12893247694843647254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037279 (n + 1) * A062157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A131983.P12893247694843647254

/-! ## A131983.P4303333121757596188

`record[A037279(n+1)*A066247(n+1)]`
-/

namespace A131983.P4303333121757596188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037279 (n + 1) * A066247 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A131983.P4303333121757596188

/-!
# A131984: Where records occur in A106708.

The programs for A131984, there is no canonical definition to state claims against.
-/

/-! ## A131984.P3599221127537963762

`A078769(A032798(n+1))-A000038(n)`
-/

namespace A131984.P3599221127537963762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078769 (A032798 (n + 1)).toNat - A000038 n

end

end A131984.P3599221127537963762

/-! ## A131984.P3461623428121352792

`A078769(A032798(n+1))%A078746(n)`
-/

namespace A131984.P3461623428121352792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A078769 (A032798 (n + 1)).toNat) (A078746 n)

end

end A131984.P3461623428121352792

/-! ## A131984.P11984593628505511047

`∩[A034288(n+1), A184985(A078769(n))]`
-/

namespace A131984.P11984593628505511047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034288 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184985 (A078769 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A131984.P11984593628505511047

/-! ## A131984.P15488135591903343184

`∩[A034288(n+1), A347933(n+1)]`
-/

namespace A131984.P15488135591903343184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034288 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347933 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A131984.P15488135591903343184

/-!
# A131987: Representation of a dense para-sequence.

The programs for A131987, the canonical program `A131987.P10026985928661314180` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131987 has offset 1).

The definition of A131987 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A131987.P10026985928661314180

`(A000265(comp[A000225(n)]+1)-1)/2`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A131987

/-- `(A000265(comp[A000225(n)]+1)-1)/2` -/
def P10026985928661314180.Spec : Prop :=
  ∀ n, P10026985928661314180.a n = (A131987 (n + 1) : ℚ)

end A131987

/-! ## A131987.P11952407282233732599

`A025480(lt[0, floor(n/2^val(n+1, 2))])`
-/

namespace A131987.P11952407282233732599
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A131987.P11952407282233732599

namespace A131987

/-- `A025480(lt[0, floor(n/2^val(n+1, 2))])` -/
def P11952407282233732599.Spec : Prop :=
  ∀ n, P11952407282233732599.a n = A131987 (n + 1)

end A131987

/-! ## A131987.P14177444986839373340

`A025480(lt[0, floor(n/(or(n, n+1)-n))])`
-/

namespace A131987.P14177444986839373340
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / ((Nat.lor n (n + 1) : ℤ) - (n : ℤ) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A131987.P14177444986839373340

namespace A131987

/-- `A025480(lt[0, floor(n/(or(n, n+1)-n))])` -/
def P14177444986839373340.Spec : Prop :=
  ∀ n, P14177444986839373340.a n = A131987 (n + 1)

end A131987

/-! ## A131987.P11513065219689616545

`A025480(lt[0, floor(n/and(n+1, -(n+1)))])`
-/

namespace A131987.P11513065219689616545
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A131987.P11513065219689616545

namespace A131987

/-- `A025480(lt[0, floor(n/and(n+1, -(n+1)))])` -/
def P11513065219689616545.Spec : Prop :=
  ∀ n, P11513065219689616545.a n = A131987 (n + 1)

end A131987

/-! ## A131987.P8989733378463937895

`A025480(lt[1, (n+1)/and(n+1, -(n+1))])`
-/

namespace A131987.P8989733378463937895
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n)

end

end A131987.P8989733378463937895

namespace A131987

/-- `A025480(lt[1, (n+1)/and(n+1, -(n+1))])` -/
def P8989733378463937895.Spec : Prop :=
  ∀ n, P8989733378463937895.a n = A131987 (n + 1)

end A131987

/-! ## A131987.P8764669674295397669

`A025480(lt[0, floor(n/(1-and(n, n+1)+n))])`
-/

namespace A131987.P8764669674295397669
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / (1 - (Nat.land n (n + 1) : ℤ) + (n : ℤ) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A131987.P8764669674295397669

namespace A131987

/-- `A025480(lt[0, floor(n/(1-and(n, n+1)+n))])` -/
def P8764669674295397669.Spec : Prop :=
  ∀ n, P8764669674295397669.a n = A131987 (n + 1)

end A131987

/-! ## A131987.P13684274685935069450

`A025480(lt[1, 2*(n+1)/(xor(n, n+1)+1)])`
-/

namespace A131987.P13684274685935069450
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n)

end

end A131987.P13684274685935069450

namespace A131987

/-- `A025480(lt[1, 2*(n+1)/(xor(n, n+1)+1)])` -/
def P13684274685935069450.Spec : Prop :=
  ∀ n, P13684274685935069450.a n = A131987 (n + 1)

end A131987

/-! ## A131987.P13593425398072852623

`A025480(A062289(n+1))`
-/

namespace A131987.P13593425398072852623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A062289 (n + 1)).toNat

end

end A131987.P13593425398072852623

namespace A131987

/-- `A025480(A062289(n+1))` -/
def P13593425398072852623.Spec : Prop :=
  ∀ n, P13593425398072852623.a n = A131987 (n + 1)

end A131987

/-! ## A131987.P1713771833148960889

`A025480(lt[0, A025480(n)])`
-/

namespace A131987.P1713771833148960889
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A131987.P1713771833148960889

namespace A131987

/-- `A025480(lt[0, A025480(n)])` -/
def P1713771833148960889.Spec : Prop :=
  ∀ n, P1713771833148960889.a n = A131987 (n + 1)

end A131987

/-! ## A131987.P17514723254321621616

`A025480(eq[2, 2%A000265(n+1)])`
-/

namespace A131987.P17514723254321621616
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 2 (A000265 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A131987.P17514723254321621616

namespace A131987

/-- `A025480(eq[2, 2%A000265(n+1)])` -/
def P17514723254321621616.Spec : Prop :=
  ∀ n, P17514723254321621616.a n = A131987 (n + 1)

end A131987

/-! ## A131987.P13948959072252589685

`A101279(A057716(n+1))`
-/

namespace A131987.P13948959072252589685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101279 (A057716 (n + 1)).toNat

end

end A131987.P13948959072252589685

namespace A131987

/-- `A101279(A057716(n+1))` -/
def P13948959072252589685.Spec : Prop :=
  ∀ n, P13948959072252589685.a n = A131987 (n + 1)

end A131987

/-! ## A131987.P16543540752229446048

`A101279(A138591(n+2))`
-/

namespace A131987.P16543540752229446048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101279 (A138591 (n + 2)).toNat

end

end A131987.P16543540752229446048

namespace A131987

/-- `A101279(A138591(n+2))` -/
def P16543540752229446048.Spec : Prop :=
  ∀ n, P16543540752229446048.a n = A131987 (n + 1)

end A131987

/-! ## A131987.P12054617436118055272

`A000720(p?[A181363(n+1)])`
-/

namespace A131987.P12054617436118055272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181363 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A131987.P12054617436118055272

namespace A131987

/-- `A000720(p?[A181363(n+1)])` -/
def P12054617436118055272.Spec : Prop :=
  ∀ n, P12054617436118055272.a n = A131987 (n + 1)

end A131987

/-! ## A131987.P17330671985337754280

`A101279(A177712(n+1)/2)`
-/

namespace A131987.P17330671985337754280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101279 (SequenceMachineLib.roundAway ((A177712 (n + 1) : ℚ) / 2)).toNat

end

end A131987.P17330671985337754280

namespace A131987

/-- `A101279(A177712(n+1)/2)` -/
def P17330671985337754280.Spec : Prop :=
  ∀ n, P17330671985337754280.a n = A131987 (n + 1)

end A131987

/-! ## A131987.P1501398449197263582

`A153733(lt[0, A153733(n)])/2`
-/

namespace A131987.P1501398449197263582
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153733 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153733 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) : ℚ) / 2

end

end A131987.P1501398449197263582

namespace A131987

/-- `A153733(lt[0, A153733(n)])/2` -/
def P1501398449197263582.Spec : Prop :=
  ∀ n, P1501398449197263582.a n = (A131987 (n + 1) : ℚ)

end A131987

/-! ## A131987.P1900961017620774382

`A101279(A177712(n+1))`
-/

namespace A131987.P1900961017620774382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101279 (A177712 (n + 1)).toNat

end

end A131987.P1900961017620774382

namespace A131987

/-- `A101279(A177712(n+1))` -/
def P1900961017620774382.Spec : Prop :=
  ∀ n, P1900961017620774382.a n = A131987 (n + 1)

end A131987

/-! ## A131987.P449869955021421224

`A025480(record[A101279(n+1)+A036987(n+1)])`
-/

namespace A131987.P449869955021421224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101279 (n + 1) + A036987 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A131987.P449869955021421224

namespace A131987

/-- `A025480(record[A101279(n+1)+A036987(n+1)])` -/
def P449869955021421224.Spec : Prop :=
  ∀ n, P449869955021421224.a n = A131987 (n + 1)

end A131987

/-! ## A131987.P9430881899426005922

`A101279(A136724(n+1))`
-/

namespace A131987.P9430881899426005922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101279 (A136724 (n + 1)).toNat

end

end A131987.P9430881899426005922

namespace A131987

/-- `A101279(A136724(n+1))` -/
def P9430881899426005922.Spec : Prop :=
  ∀ n, P9430881899426005922.a n = A131987 (n + 1)

end A131987

/-! ## A131987.P11733327579142690251

`A003963(p?[A181363(n+1)])`
-/

namespace A131987.P11733327579142690251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181363 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A131987.P11733327579142690251

namespace A131987

/-- `A003963(p?[A181363(n+1)])` -/
def P11733327579142690251.Spec : Prop :=
  ∀ n, P11733327579142690251.a n = A131987 (n + 1)

end A131987

/-!
# A131989: Start with the symbol **|* and for each iteration replace * with **|*. This sequence is the number of *'s between each dash.

The programs for A131989, there is no canonical definition to state claims against.
-/

/-! ## A131989.P1790524796970191740

`A106036(n+63)`
-/

namespace A131989.P1790524796970191740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106036 (n + 63)

end

end A131989.P1790524796970191740

/-! ## A131989.P3525653226919750067

`A026181(974+n)`
-/

namespace A131989.P3525653226919750067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026181 (974 + n)

end

end A131989.P3525653226919750067

/-! ## A131989.P18434222952366392721

`Δ[A026227(n+1)]`
-/

namespace A131989.P18434222952366392721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026227 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A131989.P18434222952366392721

/-! ## A131989.P10103378133929017912

`Δ[A026223(n+41)]`
-/

namespace A131989.P10103378133929017912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026223 (n + 41)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A131989.P10103378133929017912

/-! ## A131989.P2389764044442608573

`Δ[lt[A134028(n), 1]]`
-/

namespace A131989.P2389764044442608573
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134028 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A131989.P2389764044442608573

/-!
# A131991: a(n) = 1 + prime(n) + prime(n)^2 + prime(n)^3.

The programs for A131991, the canonical program `A131991.P603388502829985881` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131991 has offset 1).

The definition of A131991 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1+A000040(n+1)+A000040(n+1)²+A000040(n+1)^3` (program `A131991.P603388502829985881`, by `A131991.P603388502829985881.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A131991.P3198630935637377757

`1+A060800(n+1)*A000040(n+1)`
-/

namespace A131991.P3198630935637377757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A060800 (n + 1) * A000040 (n + 1)

end

end A131991.P3198630935637377757

namespace A131991

/-- `1+A060800(n+1)*A000040(n+1)` -/
def P3198630935637377757.Spec : Prop :=
  ∀ n, P3198630935637377757.a n = A131991 (n + 1)

end A131991

/-! ## A131991.P15493339468838761085

`(A030514(n+1)-1)/A006093(n+1)`
-/

namespace A131991.P15493339468838761085
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030514 (n + 1) - 1 : ℚ) / (A006093 (n + 1) : ℚ)

end

end A131991.P15493339468838761085

namespace A131991

/-- `(A030514(n+1)-1)/A006093(n+1)` -/
def P15493339468838761085.Spec : Prop :=
  ∀ n, P15493339468838761085.a n = (A131991 (n + 1) : ℚ)

end A131991

/-! ## A131991.P603388502829985881

`1+A000040(n+1)+A000040(n+1)²+A000040(n+1)^3`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A131991

/-- `1+A000040(n+1)+A000040(n+1)²+A000040(n+1)^3` -/
def P603388502829985881.Spec : Prop :=
  ∀ n, P603388502829985881.a n = A131991 (n + 1)

theorem P603388502829985881.correct : P603388502829985881.Spec := by
  intro n
  simp only [A131991, Nat.add_sub_cancel]

end A131991

/-! ## A131991.P4926218249136025415

`A000203(A000040(n+1)^3)`
-/

namespace A131991.P4926218249136025415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A000040 (n + 1) ^ 3).toNat

end

end A131991.P4926218249136025415

namespace A131991

/-- `A000203(A000040(n+1)^3)` -/
def P4926218249136025415.Spec : Prop :=
  ∀ n, P4926218249136025415.a n = A131991 (n + 1)

end A131991

/-! ## A131991.P11474424265468108824

`A181149(n+1)+1`
-/

namespace A131991.P11474424265468108824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181149 (n + 1) + 1

end

end A131991.P11474424265468108824

namespace A131991

/-- `A181149(n+1)+1` -/
def P11474424265468108824.Spec : Prop :=
  ∀ n, P11474424265468108824.a n = A131991 (n + 1)

theorem P11474424265468108824.correct : P11474424265468108824.Spec := by
  intro n
  simp only [A131991, Nat.add_sub_cancel, A131991.P11474424265468108824.a, A131991.P603388502829985881.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A181149, A181149.P13811606423061194343.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A131991

/-! ## A131991.P3667735917288569650

`A060800(n+1)+A030078(n+1)`
-/

namespace A131991.P3667735917288569650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060800 (n + 1) + A030078 (n + 1)

end

end A131991.P3667735917288569650

namespace A131991

/-- `A060800(n+1)+A030078(n+1)` -/
def P3667735917288569650.Spec : Prop :=
  ∀ n, P3667735917288569650.a n = A131991 (n + 1)

end A131991

/-! ## A131991.P4030347748643533384

`A135178(n+1)+A008864(n+1)`
-/

namespace A131991.P4030347748643533384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135178 (n + 1) + A008864 (n + 1)

end

end A131991.P4030347748643533384

namespace A131991

/-- `A135178(n+1)+A008864(n+1)` -/
def P4030347748643533384.Spec : Prop :=
  ∀ n, P4030347748643533384.a n = A131991 (n + 1)

theorem P4030347748643533384.correct : P4030347748643533384.Spec := by
  intro n
  simp only [A131991, Nat.add_sub_cancel, A131991.P4030347748643533384.a, A131991.P603388502829985881.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A008864, A008864.P9177617808325052279.a, A135178, A135178.P2117100385622879640.a, A001248, A001248.P16278241061688229202.a, A030078, A030078.P13819432151207990454.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A131991

/-! ## A131991.P1177083130645844716

`A181151(n+1)+A000040(n+1)`
-/

namespace A131991.P1177083130645844716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181151 (n + 1) + A000040 (n + 1)

end

end A131991.P1177083130645844716

namespace A131991

/-- `A181151(n+1)+A000040(n+1)` -/
def P1177083130645844716.Spec : Prop :=
  ∀ n, P1177083130645844716.a n = A131991 (n + 1)

theorem P1177083130645844716.correct : P1177083130645844716.Spec := by
  intro n
  simp only [A131991, Nat.add_sub_cancel, A131991.P1177083130645844716.a, A131991.P603388502829985881.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A181151, A181151.P10229429826199384590.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A131991

/-! ## A131991.P7787352596346338941

`A181150(n+1)+A001248(n+1)`
-/

namespace A131991.P7787352596346338941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181150 (n + 1) + A001248 (n + 1)

end

end A131991.P7787352596346338941

namespace A131991

/-- `A181150(n+1)+A001248(n+1)` -/
def P7787352596346338941.Spec : Prop :=
  ∀ n, P7787352596346338941.a n = A131991 (n + 1)

theorem P7787352596346338941.correct : P7787352596346338941.Spec := by
  intro n
  simp only [A131991, Nat.add_sub_cancel, A131991.P7787352596346338941.a, A131991.P603388502829985881.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001248, A001248.P16278241061688229202.a, A181150, A181150.P17848570442886437115.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A131991

/-! ## A131991.P809345611368142012

`A127917(n+1)+A110833(n+1)`
-/

namespace A131991.P809345611368142012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127917 (n + 1) + A110833 (n + 1)

end

end A131991.P809345611368142012

namespace A131991

/-- `A127917(n+1)+A110833(n+1)` -/
def P809345611368142012.Spec : Prop :=
  ∀ n, P809345611368142012.a n = A131991 (n + 1)

theorem P809345611368142012.correct : P809345611368142012.Spec := by
  intro n
  simp only [A131991, Nat.add_sub_cancel, A131991.P809345611368142012.a, A131991.P603388502829985881.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A110833, A110833.P2318291333998140493.a, A127917, A127917.P3075272387178552324.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A131991

/-! ## A131991.P5831734984148627565

`A131992(n+1)-A030514(n+1)`
-/

namespace A131991.P5831734984148627565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131992 (n + 1) - A030514 (n + 1)

end

end A131991.P5831734984148627565

namespace A131991

/-- `A131992(n+1)-A030514(n+1)` -/
def P5831734984148627565.Spec : Prop :=
  ∀ n, P5831734984148627565.a n = A131991 (n + 1)

theorem P5831734984148627565.correct : P5831734984148627565.Spec := by
  intro n
  simp only [A131991, Nat.add_sub_cancel, A131991.P5831734984148627565.a, A131991.P603388502829985881.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A030514, A030514.P11974636125371552077.a, A131992, A131992.P14412535243323881656.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A131991

/-! ## A131991.P12925199123309197738

`A008864(n+1)*A066872(n+1)`
-/

namespace A131991.P12925199123309197738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1) * A066872 (n + 1)

end

end A131991.P12925199123309197738

namespace A131991

/-- `A008864(n+1)*A066872(n+1)` -/
def P12925199123309197738.Spec : Prop :=
  ∀ n, P12925199123309197738.a n = A131991 (n + 1)

theorem P12925199123309197738.correct : P12925199123309197738.Spec := by
  intro n
  simp only [A131991, Nat.add_sub_cancel, A131991.P12925199123309197738.a, A131991.P603388502829985881.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A008864, A008864.P9177617808325052279.a, A066872, A066872.P16166098773502812344.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A131991

/-! ## A131991.P8663284444477676908

`A138424(n+1)/A008837(n+1)`
-/

namespace A131991.P8663284444477676908
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138424 (n + 1) : ℚ) / (A008837 (n + 1) : ℚ)

end

end A131991.P8663284444477676908

namespace A131991

/-- `A138424(n+1)/A008837(n+1)` -/
def P8663284444477676908.Spec : Prop :=
  ∀ n, P8663284444477676908.a n = (A131991 (n + 1) : ℚ)

end A131991

/-! ## A131991.P17597929896915164224

`A138404(n+1)/A036689(n+1)`
-/

namespace A131991.P17597929896915164224
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138404 (n + 1) : ℚ) / (A036689 (n + 1) : ℚ)

end

end A131991.P17597929896915164224

namespace A131991

/-- `A138404(n+1)/A036689(n+1)` -/
def P17597929896915164224.Spec : Prop :=
  ∀ n, P17597929896915164224.a n = (A131991 (n + 1) : ℚ)

end A131991

/-! ## A131991.P6930062653068408867

`A138409(n+1)/A135177(n+1)`
-/

namespace A131991.P6930062653068408867
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138409 (n + 1) : ℚ) / (A135177 (n + 1) : ℚ)

end

end A131991.P6930062653068408867

namespace A131991

/-- `A138409(n+1)/A135177(n+1)` -/
def P6930062653068408867.Spec : Prop :=
  ∀ n, P6930062653068408867.a n = (A131991 (n + 1) : ℚ)

end A131991

/-! ## A131991.P13083617348944754618

`A138441(n+1)/A138416(n+1)`
-/

namespace A131991.P13083617348944754618
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138441 (n + 1) : ℚ) / (A138416 (n + 1) : ℚ)

end

end A131991.P13083617348944754618

namespace A131991

/-- `A138441(n+1)/A138416(n+1)` -/
def P13083617348944754618.Spec : Prop :=
  ∀ n, P13083617348944754618.a n = (A131991 (n + 1) : ℚ)

end A131991

/-! ## A131991.P14046384989859097250

`A131993(n+1)%A030514(n+1)`
-/

namespace A131991.P14046384989859097250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A131993 (n + 1)) (A030514 (n + 1))

end

end A131991.P14046384989859097250

namespace A131991

/-- `A131993(n+1)%A030514(n+1)` -/
def P14046384989859097250.Spec : Prop :=
  ∀ n, P14046384989859097250.a n = A131991 (n + 1)

end A131991

/-! ## A131991.P17548190910607832738

`A127917(n+1)+A008864(n+1)²`
-/

namespace A131991.P17548190910607832738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127917 (n + 1) + A008864 (n + 1) ^ 2

end

end A131991.P17548190910607832738

namespace A131991

/-- `A127917(n+1)+A008864(n+1)²` -/
def P17548190910607832738.Spec : Prop :=
  ∀ n, P17548190910607832738.a n = A131991 (n + 1)

theorem P17548190910607832738.correct : P17548190910607832738.Spec := by
  intro n
  simp only [A131991, Nat.add_sub_cancel, A131991.P17548190910607832738.a, A131991.P603388502829985881.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A008864, A008864.P9177617808325052279.a, A127917, A127917.P3075272387178552324.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A131991

/-! ## A131991.P147567589508830678

`A181150(n+1)+A000040(n+1)²`
-/

namespace A131991.P147567589508830678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181150 (n + 1) + A000040 (n + 1) ^ 2

end

end A131991.P147567589508830678

namespace A131991

/-- `A181150(n+1)+A000040(n+1)²` -/
def P147567589508830678.Spec : Prop :=
  ∀ n, P147567589508830678.a n = A131991 (n + 1)

theorem P147567589508830678.correct : P147567589508830678.Spec := by
  intro n
  simp only [A131991, Nat.add_sub_cancel, A131991.P147567589508830678.a, A131991.P603388502829985881.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A181150, A181150.P17848570442886437115.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A131991

/-! ## A131991.P1958382226634548591

`A131992(n+1)-A001248(n+1)²`
-/

namespace A131991.P1958382226634548591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131992 (n + 1) - A001248 (n + 1) ^ 2

end

end A131991.P1958382226634548591

namespace A131991

/-- `A131992(n+1)-A001248(n+1)²` -/
def P1958382226634548591.Spec : Prop :=
  ∀ n, P1958382226634548591.a n = A131991 (n + 1)

theorem P1958382226634548591.correct : P1958382226634548591.Spec := by
  intro n
  simp only [A131991, Nat.add_sub_cancel, A131991.P1958382226634548591.a, A131991.P603388502829985881.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001248, A001248.P16278241061688229202.a, A131992, A131992.P14412535243323881656.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A131991

/-!
# A131992: a(n) = 1 + prime(n) + prime(n)^2 + prime(n)^3 + prime(n)^4.

The programs for A131992, the canonical program `A131992.P14412535243323881656` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131992 has offset 1).

The definition of A131992 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1+A000040(n+1)+A000040(n+1)²+A000040(n+1)^3+A000040(n+1)^4` (program `A131992.P14412535243323881656`, by `A131992.P14412535243323881656.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A131992.P3845856709627517673

`1+A131991(n+1)*A000040(n+1)`
-/

namespace A131992.P3845856709627517673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A131991 (n + 1) * A000040 (n + 1)

end

end A131992.P3845856709627517673

namespace A131992

/-- `1+A131991(n+1)*A000040(n+1)` -/
def P3845856709627517673.Spec : Prop :=
  ∀ n, P3845856709627517673.a n = A131992 (n + 1)

theorem P3845856709627517673.correct : P3845856709627517673.Spec := by
  intro n
  simp only [A131992, Nat.add_sub_cancel, A131992.P3845856709627517673.a, A131992.P14412535243323881656.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A131991, A131991.P603388502829985881.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A131992

/-! ## A131992.P12424563035582050834

`(A050997(n+1)-1)/A006093(n+1)`
-/

namespace A131992.P12424563035582050834
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050997 (n + 1) - 1 : ℚ) / (A006093 (n + 1) : ℚ)

end

end A131992.P12424563035582050834

namespace A131992

/-- `(A050997(n+1)-1)/A006093(n+1)` -/
def P12424563035582050834.Spec : Prop :=
  ∀ n, P12424563035582050834.a n = (A131992 (n + 1) : ℚ)

end A131992

/-! ## A131992.P14412535243323881656

`1+A000040(n+1)+A000040(n+1)²+A000040(n+1)^3+A000040(n+1)^4`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A131992

/-- `1+A000040(n+1)+A000040(n+1)²+A000040(n+1)^3+A000040(n+1)^4` -/
def P14412535243323881656.Spec : Prop :=
  ∀ n, P14412535243323881656.a n = A131992 (n + 1)

theorem P14412535243323881656.correct : P14412535243323881656.Spec := by
  intro n
  simp only [A131992, Nat.add_sub_cancel]

end A131992

/-! ## A131992.P11129215323266496096

`A053699(A000040(n+1))`
-/

namespace A131992.P11129215323266496096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053699 (A000040 (n + 1)).toNat

end

end A131992.P11129215323266496096

namespace A131992

/-- `A053699(A000040(n+1))` -/
def P11129215323266496096.Spec : Prop :=
  ∀ n, P11129215323266496096.a n = A131992 (n + 1)

end A131992

/-! ## A131992.P160529311414572105

`A131991(n+1)+A030514(n+1)`
-/

namespace A131992.P160529311414572105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131991 (n + 1) + A030514 (n + 1)

end

end A131992.P160529311414572105

namespace A131992

/-- `A131991(n+1)+A030514(n+1)` -/
def P160529311414572105.Spec : Prop :=
  ∀ n, P160529311414572105.a n = A131992 (n + 1)

end A131992

/-! ## A131992.P10157430136573641716

`A131993(n+1)-A050997(n+1)`
-/

namespace A131992.P10157430136573641716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131993 (n + 1) - A050997 (n + 1)

end

end A131992.P10157430136573641716

namespace A131992

/-- `A131993(n+1)-A050997(n+1)` -/
def P10157430136573641716.Spec : Prop :=
  ∀ n, P10157430136573641716.a n = A131992 (n + 1)

theorem P10157430136573641716.correct : P10157430136573641716.Spec := by
  intro n
  simp only [A131992, Nat.add_sub_cancel, A131992.P10157430136573641716.a, A131992.P14412535243323881656.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A050997, A050997.P5231147570234137425.a, A131993, A131993.P9985447541558130858.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A131992

/-! ## A131992.P2700766334104208546

`A138440(n+1)/A008837(n+1)`
-/

namespace A131992.P2700766334104208546
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138440 (n + 1) : ℚ) / (A008837 (n + 1) : ℚ)

end

end A131992.P2700766334104208546

namespace A131992

/-- `A138440(n+1)/A008837(n+1)` -/
def P2700766334104208546.Spec : Prop :=
  ∀ n, P2700766334104208546.a n = (A131992 (n + 1) : ℚ)

end A131992

/-! ## A131992.P6742751792280473091

`A138408(n+1)/A036689(n+1)`
-/

namespace A131992.P6742751792280473091
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138408 (n + 1) : ℚ) / (A036689 (n + 1) : ℚ)

end

end A131992.P6742751792280473091

namespace A131992

/-- `A138408(n+1)/A036689(n+1)` -/
def P6742751792280473091.Spec : Prop :=
  ∀ n, P6742751792280473091.a n = (A131992 (n + 1) : ℚ)

end A131992

/-! ## A131992.P17521045482008928158

`A131991(n+1)+A001248(n+1)²`
-/

namespace A131992.P17521045482008928158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131991 (n + 1) + A001248 (n + 1) ^ 2

end

end A131992.P17521045482008928158

namespace A131992

/-- `A131991(n+1)+A001248(n+1)²` -/
def P17521045482008928158.Spec : Prop :=
  ∀ n, P17521045482008928158.a n = A131992 (n + 1)

theorem P17521045482008928158.correct : P17521045482008928158.Spec := by
  intro n
  simp only [A131992, Nat.add_sub_cancel, A131992.P17521045482008928158.a, A131992.P14412535243323881656.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001248, A001248.P16278241061688229202.a, A131991, A131991.P603388502829985881.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A131992

/-! ## A131992.P12460914482818724397

`A083558(n+1)+A066872(n+1)²`
-/

namespace A131992.P12460914482818724397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083558 (n + 1) + A066872 (n + 1) ^ 2

end

end A131992.P12460914482818724397

namespace A131992

/-- `A083558(n+1)+A066872(n+1)²` -/
def P12460914482818724397.Spec : Prop :=
  ∀ n, P12460914482818724397.a n = A131992 (n + 1)

end A131992

/-! ## A131992.P3291874097059801877

`A060800(n+1)²-A178398(n+1)`
-/

namespace A131992.P3291874097059801877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060800 (n + 1) ^ 2 - A178398 (n + 1)

end

end A131992.P3291874097059801877

namespace A131992

/-- `A060800(n+1)²-A178398(n+1)` -/
def P3291874097059801877.Spec : Prop :=
  ∀ n, P3291874097059801877.a n = A131992 (n + 1)

end A131992

/-! ## A131992.P13128260421237335867

`A138404(n+1)/A006093(n+1)+1`
-/

namespace A131992.P13128260421237335867
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138404 (n + 1) : ℚ) / (A006093 (n + 1) : ℚ) + 1

end

end A131992.P13128260421237335867

namespace A131992

/-- `A138404(n+1)/A006093(n+1)+1` -/
def P13128260421237335867.Spec : Prop :=
  ∀ n, P13128260421237335867.a n = (A131992 (n + 1) : ℚ)

end A131992

/-! ## A131992.P6172458339424044205

`A138441(n+1)/A008837(n+1)+1`
-/

namespace A131992.P6172458339424044205
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138441 (n + 1) : ℚ) / (A008837 (n + 1) : ℚ) + 1

end

end A131992.P6172458339424044205

namespace A131992

/-- `A138441(n+1)/A008837(n+1)+1` -/
def P6172458339424044205.Spec : Prop :=
  ∀ n, P6172458339424044205.a n = (A131992 (n + 1) : ℚ)

end A131992

/-! ## A131992.P18167484794577118545

`A138409(n+1)/A036689(n+1)+1`
-/

namespace A131992.P18167484794577118545
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138409 (n + 1) : ℚ) / (A036689 (n + 1) : ℚ) + 1

end

end A131992.P18167484794577118545

namespace A131992

/-- `A138409(n+1)/A036689(n+1)+1` -/
def P18167484794577118545.Spec : Prop :=
  ∀ n, P18167484794577118545.a n = (A131992 (n + 1) : ℚ)

end A131992

/-! ## A131992.P3968075221068894834

`(A131993(n+1)-1)/A000040(n+1)`
-/

namespace A131992.P3968075221068894834
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131993 (n + 1) - 1 : ℚ) / (A000040 (n + 1) : ℚ)

end

end A131992.P3968075221068894834

namespace A131992

/-- `(A131993(n+1)-1)/A000040(n+1)` -/
def P3968075221068894834.Spec : Prop :=
  ∀ n, P3968075221068894834.a n = (A131992 (n + 1) : ℚ)

end A131992

/-! ## A131992.P1429763719185825502

`2/A036689(n+1)*A138440(n+1)`
-/

namespace A131992.P1429763719185825502
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A036689 (n + 1) : ℚ) * (A138440 (n + 1) : ℚ)

end

end A131992.P1429763719185825502

namespace A131992

/-- `2/A036689(n+1)*A138440(n+1)` -/
def P1429763719185825502.Spec : Prop :=
  ∀ n, P1429763719185825502.a n = (A131992 (n + 1) : ℚ)

end A131992

/-! ## A131992.P3793443683504502361

`A001248(n+1)²+A181149(n+1)+1`
-/

namespace A131992.P3793443683504502361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1) ^ 2 + (A181149 (n + 1) + 1)

end

end A131992.P3793443683504502361

namespace A131992

/-- `A001248(n+1)²+A181149(n+1)+1` -/
def P3793443683504502361.Spec : Prop :=
  ∀ n, P3793443683504502361.a n = A131992 (n + 1)

theorem P3793443683504502361.correct : P3793443683504502361.Spec := by
  intro n
  simp only [A131992, Nat.add_sub_cancel, A131992.P3793443683504502361.a, A131992.P14412535243323881656.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001248, A001248.P16278241061688229202.a, A181149, A181149.P13811606423061194343.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A131992

/-! ## A131992.P13880632167988202209

`A036690(n+1)²+1-A127917(n+1)`
-/

namespace A131992.P13880632167988202209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036690 (n + 1) ^ 2 + (1 - A127917 (n + 1))

end

end A131992.P13880632167988202209

namespace A131992

/-- `A036690(n+1)²+1-A127917(n+1)` -/
def P13880632167988202209.Spec : Prop :=
  ∀ n, P13880632167988202209.a n = A131992 (n + 1)

end A131992

/-! ## A131992.P10970519398830187199

`A030078(n+1)+A060800(n+1)+A030514(n+1)`
-/

namespace A131992.P10970519398830187199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030078 (n + 1) + (A060800 (n + 1) + A030514 (n + 1))

end

end A131992.P10970519398830187199

namespace A131992

/-- `A030078(n+1)+A060800(n+1)+A030514(n+1)` -/
def P10970519398830187199.Spec : Prop :=
  ∀ n, P10970519398830187199.a n = A131992 (n + 1)

end A131992

/-!
# A131993: a(n) = 1 + prime(n) + prime(n)^2 + prime(n)^3 + prime(n)^4 + prime(n)^5.

The programs for A131993, the canonical program `A131993.P9985447541558130858` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131993 has offset 1).

The definition of A131993 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1+A000040(n+1)+A000040(n+1)²+A000040(n+1)^3+A000040(n+1)^4+A000040(n+1)^5` (program `A131993.P9985447541558130858`, by `A131993.P9985447541558130858.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A131993.P10903318436408516009

`(A030516(n+1)-1)/A006093(n+1)`
-/

namespace A131993.P10903318436408516009
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030516 (n + 1) - 1 : ℚ) / (A006093 (n + 1) : ℚ)

end

end A131993.P10903318436408516009

namespace A131993

/-- `(A030516(n+1)-1)/A006093(n+1)` -/
def P10903318436408516009.Spec : Prop :=
  ∀ n, P10903318436408516009.a n = (A131993 (n + 1) : ℚ)

end A131993

/-! ## A131993.P9985447541558130858

`1+A000040(n+1)+A000040(n+1)²+A000040(n+1)^3+A000040(n+1)^4+A000040(n+1)^5`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A131993

/-- `1+A000040(n+1)+A000040(n+1)²+A000040(n+1)^3+A000040(n+1)^4+A000040(n+1)^5` -/
def P9985447541558130858.Spec : Prop :=
  ∀ n, P9985447541558130858.a n = A131993 (n + 1)

theorem P9985447541558130858.correct : P9985447541558130858.Spec := by
  intro n
  simp only [A131993, Nat.add_sub_cancel]

end A131993

/-! ## A131993.P12148048947412800545

`A131992(n+1)+A050997(n+1)`
-/

namespace A131993.P12148048947412800545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131992 (n + 1) + A050997 (n + 1)

end

end A131993.P12148048947412800545

namespace A131993

/-- `A131992(n+1)+A050997(n+1)` -/
def P12148048947412800545.Spec : Prop :=
  ∀ n, P12148048947412800545.a n = A131993 (n + 1)

end A131993

/-! ## A131993.P13212384024183473387

`(A030078(n+1)+1)*A060800(n+1)`
-/

namespace A131993.P13212384024183473387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A030078 (n + 1) + 1) * A060800 (n + 1)

end

end A131993.P13212384024183473387

namespace A131993

/-- `(A030078(n+1)+1)*A060800(n+1)` -/
def P13212384024183473387.Spec : Prop :=
  ∀ n, P13212384024183473387.a n = A131993 (n + 1)

end A131993

/-! ## A131993.P4340980470554319287

`A000040(n+1)*A131992(n+1)+1`
-/

namespace A131993.P4340980470554319287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A131992 (n + 1) + 1

end

end A131993.P4340980470554319287

namespace A131993

/-- `A000040(n+1)*A131992(n+1)+1` -/
def P4340980470554319287.Spec : Prop :=
  ∀ n, P4340980470554319287.a n = A131993 (n + 1)

theorem P4340980470554319287.correct : P4340980470554319287.Spec := by
  intro n
  simp only [A131993, Nat.add_sub_cancel, A131993.P4340980470554319287.a, A131993.P9985447541558130858.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A131992, A131992.P14412535243323881656.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A131993

/-! ## A131993.P10475990318975110355

`(A030078(n+1)²-1)/A006093(n+1)`
-/

namespace A131993.P10475990318975110355
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030078 (n + 1) ^ 2 - 1 : ℚ) / (A006093 (n + 1) : ℚ)

end

end A131993.P10475990318975110355

namespace A131993

/-- `(A030078(n+1)²-1)/A006093(n+1)` -/
def P10475990318975110355.Spec : Prop :=
  ∀ n, P10475990318975110355.a n = (A131993 (n + 1) : ℚ)

end A131993

/-! ## A131993.P10678630292998999994

`A030514(n+1)+A131991(n+1)+A050997(n+1)`
-/

namespace A131993.P10678630292998999994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030514 (n + 1) + (A131991 (n + 1) + A050997 (n + 1))

end

end A131993.P10678630292998999994

namespace A131993

/-- `A030514(n+1)+A131991(n+1)+A050997(n+1)` -/
def P10678630292998999994.Spec : Prop :=
  ∀ n, P10678630292998999994.a n = A131993 (n + 1)

theorem P10678630292998999994.correct : P10678630292998999994.Spec := by
  intro n
  simp only [A131993, Nat.add_sub_cancel, A131993.P10678630292998999994.a, A131993.P9985447541558130858.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A030514, A030514.P11974636125371552077.a, A050997, A050997.P5231147570234137425.a, A131991, A131991.P603388502829985881.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A131993

/-! ## A131993.P12969130048676409797

`A131992(n+1)+A001248(n+1)*A030078(n+1)`
-/

namespace A131993.P12969130048676409797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131992 (n + 1) + A001248 (n + 1) * A030078 (n + 1)

end

end A131993.P12969130048676409797

namespace A131993

/-- `A131992(n+1)+A001248(n+1)*A030078(n+1)` -/
def P12969130048676409797.Spec : Prop :=
  ∀ n, P12969130048676409797.a n = A131993 (n + 1)

theorem P12969130048676409797.correct : P12969130048676409797.Spec := by
  intro n
  simp only [A131993, Nat.add_sub_cancel, A131993.P12969130048676409797.a, A131993.P9985447541558130858.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001248, A001248.P16278241061688229202.a, A030078, A030078.P13819432151207990454.a, A131992, A131992.P14412535243323881656.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A131993

/-! ## A131993.P16482887108404426256

`A131991(n+1)+A008864(n+1)*A030514(n+1)`
-/

namespace A131993.P16482887108404426256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131991 (n + 1) + A008864 (n + 1) * A030514 (n + 1)

end

end A131993.P16482887108404426256

namespace A131993

/-- `A131991(n+1)+A008864(n+1)*A030514(n+1)` -/
def P16482887108404426256.Spec : Prop :=
  ∀ n, P16482887108404426256.a n = A131993 (n + 1)

theorem P16482887108404426256.correct : P16482887108404426256.Spec := by
  intro n
  simp only [A131993, Nat.add_sub_cancel, A131993.P16482887108404426256.a, A131993.P9985447541558130858.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A008864, A008864.P9177617808325052279.a, A030514, A030514.P11974636125371552077.a, A131991, A131991.P603388502829985881.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A131993

/-! ## A131993.P3679165467842380981

`A060800(n+1)+A001248(n+1)*A181149(n+1)`
-/

namespace A131993.P3679165467842380981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060800 (n + 1) + A001248 (n + 1) * A181149 (n + 1)

end

end A131993.P3679165467842380981

namespace A131993

/-- `A060800(n+1)+A001248(n+1)*A181149(n+1)` -/
def P3679165467842380981.Spec : Prop :=
  ∀ n, P3679165467842380981.a n = A131993 (n + 1)

end A131993

/-! ## A131993.P3866511791461463170

`(A181150(n+1)-A000040(n+1))*A060800(n+1)`
-/

namespace A131993.P3866511791461463170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A181150 (n + 1) - A000040 (n + 1)) * A060800 (n + 1)

end

end A131993.P3866511791461463170

namespace A131993

/-- `(A181150(n+1)-A000040(n+1))*A060800(n+1)` -/
def P3866511791461463170.Spec : Prop :=
  ∀ n, P3866511791461463170.a n = A131993 (n + 1)

end A131993

/-! ## A131993.P5027668629311577620

`(A181151(n+1)-A001248(n+1))*A060800(n+1)`
-/

namespace A131993.P5027668629311577620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A181151 (n + 1) - A001248 (n + 1)) * A060800 (n + 1)

end

end A131993.P5027668629311577620

namespace A131993

/-- `(A181151(n+1)-A001248(n+1))*A060800(n+1)` -/
def P5027668629311577620.Spec : Prop :=
  ∀ n, P5027668629311577620.a n = A131993 (n + 1)

end A131993

/-! ## A131993.P15048222909215097718

`A008864(n+1)*A060800(n+1)*A119959(n+1)`
-/

namespace A131993.P15048222909215097718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1) * A060800 (n + 1) * A119959 (n + 1)

end

end A131993.P15048222909215097718

namespace A131993

/-- `A008864(n+1)*A060800(n+1)*A119959(n+1)` -/
def P15048222909215097718.Spec : Prop :=
  ∀ n, P15048222909215097718.a n = A131993 (n + 1)

end A131993

/-! ## A131993.P494125704037295325

`(A050997(n+1)²-A030514(n+1))/A138407(n+1)`
-/

namespace A131993.P494125704037295325
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050997 (n + 1) ^ 2 - A030514 (n + 1) : ℚ) / (A138407 (n + 1) : ℚ)

end

end A131993.P494125704037295325

namespace A131993

/-- `(A050997(n+1)²-A030514(n+1))/A138407(n+1)` -/
def P494125704037295325.Spec : Prop :=
  ∀ n, P494125704037295325.a n = (A131993 (n + 1) : ℚ)

end A131993

/-! ## A131993.P4919589251040712527

`(A131992(n+1)²-A030514(n+1))/A131991(n+1)`
-/

namespace A131993.P4919589251040712527
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131992 (n + 1) ^ 2 - A030514 (n + 1) : ℚ) / (A131991 (n + 1) : ℚ)

end

end A131993.P4919589251040712527

namespace A131993

/-- `(A131992(n+1)²-A030514(n+1))/A131991(n+1)` -/
def P4919589251040712527.Spec : Prop :=
  ∀ n, P4919589251040712527.a n = (A131993 (n + 1) : ℚ)

theorem P4919589251040712527.correct : P4919589251040712527.Spec := by
  intro n
  simp only [A131993, Nat.add_sub_cancel, A131993.P4919589251040712527.a, A131993.P9985447541558130858.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A030514, A030514.P11974636125371552077.a, A131991, A131991.P603388502829985881.a, A131992, A131992.P14412535243323881656.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A131993

/-! ## A131993.P17047296097515562704

`A038993(p?[comp[n²]])`
-/

namespace A131993.P17047296097515562704
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038993 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A131993.P17047296097515562704

namespace A131993

/-- `A038993(p?[comp[n²]])` -/
def P17047296097515562704.Spec : Prop :=
  ∀ n, P17047296097515562704.a n = A131993 (n + 1)

end A131993

/-! ## A131993.P772557685978614815

`A053700(p?[comp[n²]])`
-/

namespace A131993.P772557685978614815
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053700 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A131993.P772557685978614815

namespace A131993

/-- `A053700(p?[comp[n²]])` -/
def P772557685978614815.Spec : Prop :=
  ∀ n, P772557685978614815.a n = A131993 (n + 1)

end A131993

/-! ## A131993.P9080946921385584392

`A160895(p?[comp[n²]])`
-/

namespace A131993.P9080946921385584392
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160895 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A131993.P9080946921385584392

namespace A131993

/-- `A160895(p?[comp[n²]])` -/
def P9080946921385584392.Spec : Prop :=
  ∀ n, P9080946921385584392.a n = A131993 (n + 1)

end A131993

/-! ## A131993.P1056724707361108900

`A203556(p?[comp[n²]])`
-/

namespace A131993.P1056724707361108900
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203556 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A131993.P1056724707361108900

namespace A131993

/-- `A203556(p?[comp[n²]])` -/
def P1056724707361108900.Spec : Prop :=
  ∀ n, P1056724707361108900.a n = A131993 (n + 1)

end A131993

/-! ## A131993.P3509285311780535117

`A038993(A000040(n+1))`
-/

namespace A131993.P3509285311780535117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038993 (A000040 (n + 1)).toNat

end

end A131993.P3509285311780535117

namespace A131993

/-- `A038993(A000040(n+1))` -/
def P3509285311780535117.Spec : Prop :=
  ∀ n, P3509285311780535117.a n = A131993 (n + 1)

end A131993

/-!
# A131995: Number of partitions of n into powers of 2 or of 3.

The programs for A131995, there is no canonical definition to state claims against.
-/

/-! ## A131995.P6439276423926088801

`A000194(A162581(n))%A237043(n+1)`
-/

namespace A131995.P6439276423926088801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000194 (A162581 n).toNat) (A237043 (n + 1))

end

end A131995.P6439276423926088801

/-! ## A131995.P15353505578993287098

`A240026(n)-A011655(A048953(n+1))`
-/

namespace A131995.P15353505578993287098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240026 n - A011655 (A048953 (n + 1)).toNat

end

end A131995.P15353505578993287098

/-! ## A131995.P14062228880304700586

`A121900(A005384(n+1)*A064174(n+1))`
-/

namespace A131995.P14062228880304700586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121900 (A005384 (n + 1) * A064174 (n + 1)).toNat

end

end A131995.P14062228880304700586

/-! ## A131995.P6288660494321002924

`A000194(A162581(n))%A195437(A000225(n))`
-/

namespace A131995.P6288660494321002924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000194 (A162581 n).toNat) (A195437 (A000225 n).toNat)

end

end A131995.P6288660494321002924

/-! ## A131995.P9039098705483507365

`A342515(A238374(n))`
-/

namespace A131995.P9039098705483507365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342515 (A238374 n).toNat

end

end A131995.P9039098705483507365

/-!
# A131996: Number of partitions of n into distinct powers of 2 or of 3.

The programs for A131996, the canonical program `A131996.P6835226825695645018` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131996 has offset 1).

The definition of A131996 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A131996.P6835226825695645018

`A081611(round(n/3))`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A131996

/-- `A081611(round(n/3))` -/
def P6835226825695645018.Spec : Prop :=
  ∀ n, P6835226825695645018.a n = A131996 (n + 1)

theorem P6835226825695645018.correct : P6835226825695645018.Spec := by
  intro n
  simp only [A131996, Nat.add_sub_cancel]

end A131996

/-! ## A131996.P12467941513242156736

`ceil(A081611(n+1)/2)`
-/

namespace A131996.P12467941513242156736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A081611 (n + 1) : ℚ) / 2⌉

end

end A131996.P12467941513242156736

namespace A131996

/-- `ceil(A081611(n+1)/2)` -/
def P12467941513242156736.Spec : Prop :=
  ∀ n, P12467941513242156736.a n = A131996 (n + 1)

end A131996

/-! ## A131996.P5748237455874341765

`floor(A081611(n+2)/2)`
-/

namespace A131996.P5748237455874341765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A081611 (n + 2) : ℚ) / 2⌋

end

end A131996.P5748237455874341765

namespace A131996

/-- `floor(A081611(n+2)/2)` -/
def P5748237455874341765.Spec : Prop :=
  ∀ n, P5748237455874341765.a n = A131996 (n + 1)

end A131996

/-! ## A131996.P11902718478392054966

`ceil(A088564(n+1)/3)`
-/

namespace A131996.P11902718478392054966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A088564 (n + 1) : ℚ) / 3⌉

end

end A131996.P11902718478392054966

namespace A131996

/-- `ceil(A088564(n+1)/3)` -/
def P11902718478392054966.Spec : Prop :=
  ∀ n, P11902718478392054966.a n = A131996 (n + 1)

end A131996

/-! ## A131996.P10683908747756338388

`floor(A088564(n+2)/3)`
-/

namespace A131996.P10683908747756338388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A088564 (n + 2) : ℚ) / 3⌋

end

end A131996.P10683908747756338388

namespace A131996

/-- `floor(A088564(n+2)/3)` -/
def P10683908747756338388.Spec : Prop :=
  ∀ n, P10683908747756338388.a n = A131996 (n + 1)

end A131996

/-! ## A131996.P10093878597339987511

`∑[char[record[A338243(3*n)]]]`
-/

namespace A131996.P10093878597339987511
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338243 (3 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131996.P10093878597339987511

namespace A131996

/-- `∑[char[record[A338243(3*n)]]]` -/
def P10093878597339987511.Spec : Prop :=
  ∀ n, (P10093878597339987511.a n : ℤ) = A131996 (n + 1)

end A131996

/-! ## A131996.P16180369357077495158

`∑[char[A005836(or(1, n))-1]]+1`
-/

namespace A131996.P16180369357077495158
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005836 (Nat.lor 1 n) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A131996.P16180369357077495158

namespace A131996

/-- `∑[char[A005836(or(1, n))-1]]+1` -/
def P16180369357077495158.Spec : Prop :=
  ∀ n, (P16180369357077495158.a n : ℤ) = A131996 (n + 1)

end A131996

/-! ## A131996.P16823631080712062351

`∑[char[A060372(abs(1-3*n))-1]]`
-/

namespace A131996.P16823631080712062351
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060372 |1 - (3 * n : ℤ)|.toNat - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131996.P16823631080712062351

namespace A131996

/-- `∑[char[A060372(abs(1-3*n))-1]]` -/
def P16823631080712062351.Spec : Prop :=
  ∀ n, (P16823631080712062351.a n : ℤ) = A131996 (n + 1)

end A131996

/-! ## A131996.P4407487407558822749

`∑[char[A005836(2*n+1)-1]]+1`
-/

namespace A131996.P4407487407558822749
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005836 (2 * n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A131996.P4407487407558822749

namespace A131996

/-- `∑[char[A005836(2*n+1)-1]]+1` -/
def P4407487407558822749.Spec : Prop :=
  ∀ n, (P4407487407558822749.a n : ℤ) = A131996 (n + 1)

end A131996

/-! ## A131996.P14124764822540429373

`∑[char[A117966(n+1)+Δ[n²]]]+1`
-/

namespace A131996.P14124764822540429373
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117966 (n + 1) + ((f3 (n + 1) : ℤ) - (f3 n : ℤ))

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A131996.P14124764822540429373

namespace A131996

/-- `∑[char[A117966(n+1)+Δ[n²]]]+1` -/
def P14124764822540429373.Spec : Prop :=
  ∀ n, (P14124764822540429373.a n : ℤ) = A131996 (n + 1)

end A131996

/-! ## A131996.P3051608120925860910

`A088564(-(n+1)%3+n+2)/3`
-/

namespace A131996.P3051608120925860910
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A088564 (Int.tmod (-(n + 1 : ℤ)) 3 + (n : ℤ) + 2).toNat : ℚ) / 3

end

end A131996.P3051608120925860910

namespace A131996

/-- `A088564(-(n+1)%3+n+2)/3` -/
def P3051608120925860910.Spec : Prop :=
  ∀ n, P3051608120925860910.a n = (A131996 (n + 1) : ℚ)

end A131996

/-! ## A131996.P15511640080562731350

`A008619(A104406(n+1))`
-/

namespace A131996.P15511640080562731350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A104406 (n + 1)).toNat

end

end A131996.P15511640080562731350

namespace A131996

/-- `A008619(A104406(n+1))` -/
def P15511640080562731350.Spec : Prop :=
  ∀ n, P15511640080562731350.a n = A131996 (n + 1)

end A131996

/-! ## A131996.P9308244908761197632

`A061392(A133310(n+1))`
-/

namespace A131996.P9308244908761197632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061392 (A133310 (n + 1)).toNat

end

end A131996.P9308244908761197632

namespace A131996

/-- `A061392(A133310(n+1))` -/
def P9308244908761197632.Spec : Prop :=
  ∀ n, P9308244908761197632.a n = A131996 (n + 1)

end A131996

/-! ## A131996.P219764643768813219

`A061392(A130823(n+2))`
-/

namespace A131996.P219764643768813219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061392 (A130823 (n + 2)).toNat

end

end A131996.P219764643768813219

namespace A131996

/-- `A061392(A130823(n+2))` -/
def P219764643768813219.Spec : Prop :=
  ∀ n, P219764643768813219.a n = A131996 (n + 1)

end A131996

/-! ## A131996.P13114128165239902442

`A061392(A189730(n+2))`
-/

namespace A131996.P13114128165239902442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061392 (A189730 (n + 2)).toNat

end

end A131996.P13114128165239902442

namespace A131996

/-- `A061392(A189730(n+2))` -/
def P13114128165239902442.Spec : Prop :=
  ∀ n, P13114128165239902442.a n = A131996 (n + 1)

end A131996

/-! ## A131996.P2248056642202113838

`A061392(A008620(2*(n+1)))`
-/

namespace A131996.P2248056642202113838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061392 (A008620 (2 * (n + 1))).toNat

end

end A131996.P2248056642202113838

namespace A131996

/-- `A061392(A008620(2*(n+1)))` -/
def P2248056642202113838.Spec : Prop :=
  ∀ n, P2248056642202113838.a n = A131996 (n + 1)

end A131996

/-! ## A131996.P13466970914072931957

`A061392(2-A008620(n)+n)`
-/

namespace A131996.P13466970914072931957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061392 (2 - A008620 n + (n : ℤ)).toNat

end

end A131996.P13466970914072931957

namespace A131996

/-- `A061392(2-A008620(n)+n)` -/
def P13466970914072931957.Spec : Prop :=
  ∀ n, P13466970914072931957.a n = A131996 (n + 1)

end A131996

/-! ## A131996.P7195710340148104231

`A061392(2-(A008620(n)-n))`
-/

namespace A131996.P7195710340148104231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061392 (2 - (A008620 n - (n : ℤ))).toNat

end

end A131996.P7195710340148104231

namespace A131996

/-- `A061392(2-(A008620(n)-n))` -/
def P7195710340148104231.Spec : Prop :=
  ∀ n, P7195710340148104231.a n = A131996 (n + 1)

end A131996

/-! ## A131996.P10685797387292306524

`∑[char[A003278(A004277(n)+1)-2]]`
-/

namespace A131996.P10685797387292306524
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003278 (A004277 n + 1).toNat - 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131996.P10685797387292306524

namespace A131996

/-- `∑[char[A003278(A004277(n)+1)-2]]` -/
def P10685797387292306524.Spec : Prop :=
  ∀ n, (P10685797387292306524.a n : ℤ) = A131996 (n + 1)

end A131996

/-! ## A131996.P384888589746680396

`A061392(A008620(n+1)+A008620(n))`
-/

namespace A131996.P384888589746680396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061392 (A008620 (n + 1) + A008620 n).toNat

end

end A131996.P384888589746680396

namespace A131996

/-- `A061392(A008620(n+1)+A008620(n))` -/
def P384888589746680396.Spec : Prop :=
  ∀ n, P384888589746680396.a n = A131996 (n + 1)

end A131996

/-!
# A131997: Array read by rows in which the n-th row contains odd numbers of all possible prime signatures with n divisors.

The programs for A131997, there is no canonical definition to state claims against.
-/

/-! ## A131997.P10816858169887003205

`A243501(A131886(A076084(n+1)))-1`
-/

namespace A131997.P10816858169887003205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243501 (A131886 (A076084 (n + 1)).toNat).toNat - 1

end

end A131997.P10816858169887003205

/-! ## A131997.P5633325382998729493

`A079998(A254685(n))+A003961(A131886(n+1))`
-/

namespace A131997.P5633325382998729493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079998 (A254685 n).toNat + A003961 (A131886 (n + 1)).toNat

end

end A131997.P5633325382998729493

/-! ## A131997.P2011109647669771735

`A297166(2*A131886(n+1))`
-/

namespace A131997.P2011109647669771735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297166 (2 * A131886 (n + 1)).toNat

end

end A131997.P2011109647669771735

/-! ## A131997.P17420965919053158703

`A003961(A131886(n+1)^A309913(n))`
-/

namespace A131997.P17420965919053158703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (SequenceMachineLib.roundAway ((A131886 (n + 1) : ℚ) ^ (A309913 n : ℤ))).toNat

end

end A131997.P17420965919053158703

/-!
# A131999: Expansion of eta(q)^2 * eta(q^2) * eta(q^4)^3 / eta(q^8)^2 in powers of q.

The programs for A131999, there is no canonical definition to state claims against.
-/

/-! ## A131999.P8179532506270349976

`(-1)^n*A113416(n)`
-/

namespace A131999.P8179532506270349976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A113416 n

end

end A131999.P8179532506270349976

/-! ## A131999.P5315150537291059649

`A113416(n)*A165326(A269667(n+1))`
-/

namespace A131999.P5315150537291059649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113416 n * A165326 (A269667 (n + 1)).toNat

end

end A131999.P5315150537291059649

/-! ## A131999.P1749399151162700980

`A113416(n)*A165326(n+1)`
-/

namespace A131999.P1749399151162700980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113416 n * A165326 (n + 1)

end

end A131999.P1749399151162700980

/-! ## A131999.P1912915490990571905

`A113416(2*n)`
-/

namespace A131999.P1912915490990571905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113416 (2 * n)

end

end A131999.P1912915490990571905

/-! ## A131999.P8533024522621335164

`2*A236928(n)-A236928(2*n)`
-/

namespace A131999.P8533024522621335164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A236928 n - A236928 (2 * n)

end

end A131999.P8533024522621335164

/-! ## A131999.P5476281889234484818

`A113416(n)²/A113416(A109043(n))`
-/

namespace A131999.P5476281889234484818
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A113416 n ^ 2 : ℚ) / (A113416 (A109043 n).toNat : ℚ)

end

end A131999.P5476281889234484818

/-! ## A131999.P3576777219626865297

`2*A320149(n)-A320149(A005843(n))`
-/

namespace A131999.P3576777219626865297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A320149 n - A320149 (A005843 n).toNat

end

end A131999.P3576777219626865297

/-! ## A131999.P10516638656470035190

`2*A320125(2*n)-A320125(4*n)`
-/

namespace A131999.P10516638656470035190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A320125 (2 * n) - A320125 (4 * n)

end

end A131999.P10516638656470035190

/-! ## A131999.P1944346033072614126

`2*A320193(2*n)-A320193(4*n)`
-/

namespace A131999.P1944346033072614126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A320193 (2 * n) - A320193 (4 * n)

end

end A131999.P1944346033072614126

/-! ## A131999.P4787478137454566212

`A005843(A320149(n))-A320149(A005843(n))`
-/

namespace A131999.P4787478137454566212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A320149 n).toNat - A320149 (A005843 n).toNat

end

end A131999.P4787478137454566212

