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
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C047
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
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
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
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A082500: a(n) = ceiling(n/2) if n is odd, or prime(n/2) otherwise.

The programs for A082500, the canonical program `A082500.P772488791767380489` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082500 has offset 1).

The definition of A082500 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A082500.P14424316553862661712

`A230849(n)+a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A082500.P14424316553862661712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A230849 n + a (n - 2)

end

end A082500.P14424316553862661712

namespace A082500

/-- `A230849(n)+a(n-2)` -/
def P14424316553862661712.Spec : Prop :=
  ∀ n, P14424316553862661712.a n = A082500 (n + 1)

end A082500

/-! ## A082500.P772488791767380489

`A230850(n)+a(n-2)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A082500

/-- `A230850(n)+a(n-2)` -/
def P772488791767380489.Spec : Prop :=
  ∀ n, P772488791767380489.a n = A082500 (n + 1)

theorem P772488791767380489.correct : P772488791767380489.Spec := by
  intro n
  simp only [A082500, Nat.add_sub_cancel]

end A082500

/-! ## A082500.P8492514317199051188

`A141619(n+1)/A176040(n)`
-/

namespace A082500.P8492514317199051188
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141619 (n + 1) : ℚ) / (A176040 n : ℚ)

end

end A082500.P8492514317199051188

namespace A082500

/-- `A141619(n+1)/A176040(n)` -/
def P8492514317199051188.Spec : Prop :=
  ∀ n, P8492514317199051188.a n = (A082500 (n + 1) : ℚ)

end A082500

/-! ## A082500.P16475962768589331999

`gcd(A027656(n), A141619(n+1))`
-/

namespace A082500.P16475962768589331999
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A027656 n) (A141619 (n + 1))

end

end A082500.P16475962768589331999

namespace A082500

/-- `gcd(A027656(n), A141619(n+1))` -/
def P16475962768589331999.Spec : Prop :=
  ∀ n, (P16475962768589331999.a n : ℤ) = A082500 (n + 1)

end A082500

/-! ## A082500.P2937444963466015180

`A141619(n+1)%A225232(n+3)`
-/

namespace A082500.P2937444963466015180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A141619 (n + 1)) (A225232 (n + 3))

end

end A082500.P2937444963466015180

namespace A082500

/-- `A141619(n+1)%A225232(n+3)` -/
def P2937444963466015180.Spec : Prop :=
  ∀ n, P2937444963466015180.a n = A082500 (n + 1)

end A082500

/-! ## A082500.P3980019389831927648

`A141619(n+1)/A133263(Δ[A110654(n)])`
-/

namespace A082500.P3980019389831927648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141619 (n + 1) : ℚ) / (A133263 (f1 (n + 1) - f1 n).toNat : ℚ)

end

end A082500.P3980019389831927648

namespace A082500

/-- `A141619(n+1)/A133263(Δ[A110654(n)])` -/
def P3980019389831927648.Spec : Prop :=
  ∀ n, P3980019389831927648.a n = (A082500 (n + 1) : ℚ)

end A082500

/-! ## A082500.P7743046339744097124

`A141619(n+1)/Δ[A014601(n)]`
-/

namespace A082500.P7743046339744097124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014601 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141619 (n + 1) : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A082500.P7743046339744097124

namespace A082500

/-- `A141619(n+1)/Δ[A014601(n)]` -/
def P7743046339744097124.Spec : Prop :=
  ∀ n, P7743046339744097124.a n = (A082500 (n + 1) : ℚ)

end A082500

/-! ## A082500.P4364255117275974809

`A008578(A158416(n+1))*A158416(n)`
-/

namespace A082500.P4364255117275974809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A158416 (n + 1)).toNat * A158416 n

end

end A082500.P4364255117275974809

namespace A082500

/-- `A008578(A158416(n+1))*A158416(n)` -/
def P4364255117275974809.Spec : Prop :=
  ∀ n, P4364255117275974809.a n = A082500 (n + 1)

end A082500

/-! ## A082500.P7978146614283202669

`A142150(n)+A008578(A142150(n+1)+1)`
-/

namespace A082500.P7978146614283202669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 n + A008578 (A142150 (n + 1) + 1).toNat

end

end A082500.P7978146614283202669

namespace A082500

/-- `A142150(n)+A008578(A142150(n+1)+1)` -/
def P7978146614283202669.Spec : Prop :=
  ∀ n, P7978146614283202669.a n = A082500 (n + 1)

end A082500

/-! ## A082500.P15459819769082058697

`ceil((n+1)/2)*A000035(n+1)+A000040(ceil((n+1)/2))*A059841(n+1)`
-/

namespace A082500.P15459819769082058697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℚ) / 2⌉ * A000035 (n + 1) + A000040 ⌈(n + 1 : ℚ) / 2⌉.toNat * A059841 (n + 1)

end

end A082500.P15459819769082058697

namespace A082500

/-- `ceil((n+1)/2)*A000035(n+1)+A000040(ceil((n+1)/2))*A059841(n+1)` -/
def P15459819769082058697.Spec : Prop :=
  ∀ n, P15459819769082058697.a n = A082500 (n + 1)

end A082500

/-! ## A082500.P11363426518495754452

`A165634(A110654(n)+p?[A008619(n)])`
-/

namespace A082500.P11363426518495754452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165634 (A110654 n + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A082500.P11363426518495754452

namespace A082500

/-- `A165634(A110654(n)+p?[A008619(n)])` -/
def P11363426518495754452.Spec : Prop :=
  ∀ n, P11363426518495754452.a n = A082500 (n + 1)

end A082500

/-! ## A082500.P9937530143941541382

`A165634(A110654(n)+p?[A110654(n)])`
-/

namespace A082500.P9937530143941541382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165634 (A110654 n + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A082500.P9937530143941541382

namespace A082500

/-- `A165634(A110654(n)+p?[A110654(n)])` -/
def P9937530143941541382.Spec : Prop :=
  ∀ n, P9937530143941541382.a n = A082500 (n + 1)

end A082500

/-! ## A082500.P9292559247493011824

`A109400(∑[∑[(n+1)%2]])`
-/

namespace A082500.P9292559247493011824
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) % 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109400 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A082500.P9292559247493011824

namespace A082500

/-- `A109400(∑[∑[(n+1)%2]])` -/
def P9292559247493011824.Spec : Prop :=
  ∀ n, P9292559247493011824.a n = A082500 (n + 1)

end A082500

/-! ## A082500.P6908405418550352738

`A109400(∑[∑[1-n%2]])`
-/

namespace A082500.P6908405418550352738
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((n % 2 : ℕ) : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109400 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A082500.P6908405418550352738

namespace A082500

/-- `A109400(∑[∑[1-n%2]])` -/
def P6908405418550352738.Spec : Prop :=
  ∀ n, P6908405418550352738.a n = A082500 (n + 1)

end A082500

/-! ## A082500.P11086823570555827527

`A109400(∑[∑[and(1, n+1)]])`
-/

namespace A082500.P11086823570555827527
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109400 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A082500.P11086823570555827527

namespace A082500

/-- `A109400(∑[∑[and(1, n+1)]])` -/
def P11086823570555827527.Spec : Prop :=
  ∀ n, P11086823570555827527.a n = A082500 (n + 1)

end A082500

/-! ## A082500.P14096817145399430402

`A109400(floor((n/2)²)+n+1)`
-/

namespace A082500.P14096817145399430402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109400 (⌊((n : ℚ) / 2) ^ 2⌋ + (n : ℤ) + 1).toNat

end

end A082500.P14096817145399430402

namespace A082500

/-- `A109400(floor((n/2)²)+n+1)` -/
def P14096817145399430402.Spec : Prop :=
  ∀ n, P14096817145399430402.a n = A082500 (n + 1)

end A082500

/-!
# A082501: Grundy numbers for start position in 1 X n closed Dots and Boxes.

The programs for A082501, there is no canonical definition to state claims against.
-/

/-! ## A082501.P11773174498846659126

`A007090(3*(n+1))%A141425(A017913(n))`
-/

namespace A082501.P11773174498846659126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007090 (3 * (n + 1))) (A141425 (A017913 n).toNat)

end

end A082501.P11773174498846659126

/-! ## A082501.P5642173815014467953

`A221167(and(A096246(n+1), A097332(2*(n+1)))+n)`
-/

namespace A082501.P5642173815014467953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221167 (Int.land (A096246 (n + 1)) (A097332 (2 * (n + 1))) + (n : ℤ)).toNat

end

end A082501.P5642173815014467953

/-! ## A082501.P13527978648934255951

`A010873(A153418(3*n+2)+A132862(n))`
-/

namespace A082501.P13527978648934255951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 (A153418 (3 * n + 2) + A132862 n).toNat

end

end A082501.P13527978648934255951

/-! ## A082501.P14526159175112446885

`and(A080859(A002623(3*n+1)), A324782(n))`
-/

namespace A082501.P14526159175112446885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A080859 (A002623 (3 * n + 1)).toNat) (A324782 n)

end

end A082501.P14526159175112446885

/-! ## A082501.P13484526030338673576

`A040001(n)-A087960(A118430(n))`
-/

namespace A082501.P13484526030338673576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 n - A087960 (A118430 n).toNat

end

end A082501.P13484526030338673576

/-!
# A082503: Grundy numbers for start position of 1 X n triangular Dots and Boxes.

The programs for A082503, there is no canonical definition to state claims against.
-/

/-! ## A082503.P1041722062261694887

`A006530(n+1)%A088570(A242129(n+1))`
-/

namespace A082503.P1041722062261694887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006530 (n + 1)) (A088570 (A242129 (n + 1)).toNat)

end

end A082503.P1041722062261694887

/-! ## A082503.P3052491395630450596

`A283208(n)%A060502(A050799(n))`
-/

namespace A082503.P3052491395630450596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A283208 n) (A060502 (A050799 n).toNat)

end

end A082503.P3052491395630450596

/-! ## A082503.P16593123434935740068

`A001221(A113836(gcd(n, A094013(n))))`
-/

namespace A082503.P16593123434935740068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A113836 (Int.gcd (n : ℤ) (A094013 n))).toNat

end

end A082503.P16593123434935740068

/-! ## A082503.P18177787227439160607

`A005811(n+1)%A001222(A001628(n+1))`
-/

namespace A082503.P18177787227439160607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005811 (n + 1)) (A001222 (A001628 (n + 1)).toNat)

end

end A082503.P18177787227439160607

/-!
# A082505: a(n) = sum of (n-1)-th row terms of triangle A134059.

The programs for A082505, the canonical program `A082505.P9746330865414232677` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082505 has offset 0).

The definition of A082505 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A082505.P9746330865414232677

`ogf((x+4x^2)/(1-2x))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A082505

/-- `ogf((x+4x^2)/(1-2x))` -/
def P9746330865414232677.Spec : Prop :=
  ∀ n, P9746330865414232677.a n = A082505 n

theorem P9746330865414232677.correct : P9746330865414232677.Spec := by
  intro n
  simp only [A082505]

end A082505

/-! ## A082505.P18304604742448732555

`2*a(n-1)` with `a(0)=0, a(1)=1, a(2)=6`
-/

namespace A082505.P18304604742448732555
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 6] fun n a =>
  2 * a (n - 1)

end

end A082505.P18304604742448732555

namespace A082505

/-- `2*a(n-1)` -/
def P18304604742448732555.Spec : Prop :=
  ∀ n, (P18304604742448732555.a n : ℤ) = A082505 n

end A082505

/-! ## A082505.P105873056670242898

`a(n-1)+a(n-1)` with `a(0)=0, a(1)=1, a(2)=6`
-/

namespace A082505.P105873056670242898
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 6] fun n a =>
  a (n - 1) + a (n - 1)

end

end A082505.P105873056670242898

namespace A082505

/-- `a(n-1)+a(n-1)` -/
def P105873056670242898.Spec : Prop :=
  ∀ n, (P105873056670242898.a n : ℤ) = A082505 n

end A082505

/-! ## A082505.P17350193411634624854

`A003945(n)-C(2, n²)`
-/

namespace A082505.P17350193411634624854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003945 n - (Nat.choose 2 (n ^ 2) : ℤ)

end

end A082505.P17350193411634624854

namespace A082505

/-- `A003945(n)-C(2, n²)` -/
def P17350193411634624854.Spec : Prop :=
  ∀ n, P17350193411634624854.a n = A082505 n

end A082505

/-! ## A082505.P15733356211010700948

`A003945(n)-A130706(n)`
-/

namespace A082505.P15733356211010700948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003945 n - A130706 n

end

end A082505.P15733356211010700948

namespace A082505

/-- `A003945(n)-A130706(n)` -/
def P15733356211010700948.Spec : Prop :=
  ∀ n, P15733356211010700948.a n = A082505 n

end A082505

/-! ## A082505.P13724233353413629555

`A055010(n)-A134824(n)`
-/

namespace A082505.P13724233353413629555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055010 n - A134824 n

end

end A082505.P13724233353413629555

namespace A082505

/-- `A055010(n)-A134824(n)` -/
def P13724233353413629555.Spec : Prop :=
  ∀ n, P13724233353413629555.a n = A082505 n

end A082505

/-! ## A082505.P11892420981590972378

`and(A003945(n), A083943(n))`
-/

namespace A082505.P11892420981590972378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003945 n) (A083943 n)

end

end A082505.P11892420981590972378

namespace A082505

/-- `and(A003945(n), A083943(n))` -/
def P11892420981590972378.Spec : Prop :=
  ∀ n, P11892420981590972378.a n = A082505 n

end A082505

/-! ## A082505.P16922107088506928419

`and(A003945(n), A101622(n))`
-/

namespace A082505.P16922107088506928419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003945 n) (A101622 n)

end

end A082505.P16922107088506928419

namespace A082505

/-- `and(A003945(n), A101622(n))` -/
def P16922107088506928419.Spec : Prop :=
  ∀ n, P16922107088506928419.a n = A082505 n

end A082505

/-! ## A082505.P15355311716875589009

`and(A003945(n), A109784(n))`
-/

namespace A082505.P15355311716875589009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003945 n) (A109784 n)

end

end A082505.P15355311716875589009

namespace A082505

/-- `and(A003945(n), A109784(n))` -/
def P15355311716875589009.Spec : Prop :=
  ∀ n, P15355311716875589009.a n = A082505 n

end A082505

/-! ## A082505.P15507037946420170420

`and(A042950(n), A083943(n))`
-/

namespace A082505.P15507037946420170420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A042950 n) (A083943 n)

end

end A082505.P15507037946420170420

namespace A082505

/-- `and(A042950(n), A083943(n))` -/
def P15507037946420170420.Spec : Prop :=
  ∀ n, P15507037946420170420.a n = A082505 n

end A082505

/-! ## A082505.P3673311007386239034

`and(A003945(n), A134824(n))`
-/

namespace A082505.P3673311007386239034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003945 n) (A134824 n)

end

end A082505.P3673311007386239034

namespace A082505

/-- `and(A003945(n), A134824(n))` -/
def P3673311007386239034.Spec : Prop :=
  ∀ n, P3673311007386239034.a n = A082505 n

end A082505

/-! ## A082505.P4375885518888596623

`and(A042950(n), A101622(n))`
-/

namespace A082505.P4375885518888596623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A042950 n) (A101622 n)

end

end A082505.P4375885518888596623

namespace A082505

/-- `and(A042950(n), A101622(n))` -/
def P4375885518888596623.Spec : Prop :=
  ∀ n, P4375885518888596623.a n = A082505 n

end A082505

/-! ## A082505.P9675184826197717317

`and(A042950(n), A101677(n))`
-/

namespace A082505.P9675184826197717317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A042950 n) (A101677 n)

end

end A082505.P9675184826197717317

namespace A082505

/-- `and(A042950(n), A101677(n))` -/
def P9675184826197717317.Spec : Prop :=
  ∀ n, P9675184826197717317.a n = A082505 n

end A082505

/-! ## A082505.P9738398933330564475

`and(A042950(n), A134824(n))`
-/

namespace A082505.P9738398933330564475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A042950 n) (A134824 n)

end

end A082505.P9738398933330564475

namespace A082505

/-- `and(A042950(n), A134824(n))` -/
def P9738398933330564475.Spec : Prop :=
  ∀ n, P9738398933330564475.a n = A082505 n

end A082505

/-! ## A082505.P16099682161425275603

`and(A042950(n), A168053(n))`
-/

namespace A082505.P16099682161425275603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A042950 n) (A168053 n)

end

end A082505.P16099682161425275603

namespace A082505

/-- `and(A042950(n), A168053(n))` -/
def P16099682161425275603.Spec : Prop :=
  ∀ n, P16099682161425275603.a n = A082505 n

end A082505

/-! ## A082505.P4231253835876995818

`and(A101622(n), A154589(n))`
-/

namespace A082505.P4231253835876995818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A101622 n) (A154589 n)

end

end A082505.P4231253835876995818

namespace A082505

/-- `and(A101622(n), A154589(n))` -/
def P4231253835876995818.Spec : Prop :=
  ∀ n, P4231253835876995818.a n = A082505 n

end A082505

/-! ## A082505.P13447297440278058844

`and(A101622(n), A157823(n))`
-/

namespace A082505.P13447297440278058844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A101622 n) (A157823 n)

end

end A082505.P13447297440278058844

namespace A082505

/-- `and(A101622(n), A157823(n))` -/
def P13447297440278058844.Spec : Prop :=
  ∀ n, P13447297440278058844.a n = A082505 n

end A082505

/-! ## A082505.P8019324162294239251

`and(A042950(n), A260196(n))`
-/

namespace A082505.P8019324162294239251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A042950 n) (A260196 n)

end

end A082505.P8019324162294239251

namespace A082505

/-- `and(A042950(n), A260196(n))` -/
def P8019324162294239251.Spec : Prop :=
  ∀ n, P8019324162294239251.a n = A082505 n

end A082505

/-! ## A082505.P16849900037105197145

`and(A042950(n), A284353(n))`
-/

namespace A082505.P16849900037105197145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A042950 n) (A284353 n)

end

end A082505.P16849900037105197145

namespace A082505

/-- `and(A042950(n), A284353(n))` -/
def P16849900037105197145.Spec : Prop :=
  ∀ n, P16849900037105197145.a n = A082505 n

end A082505

/-! ## A082505.P14321597069026850200

`and(A154589(n), A284353(n))`
-/

namespace A082505.P14321597069026850200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A154589 n) (A284353 n)

end

end A082505.P14321597069026850200

namespace A082505

/-- `and(A154589(n), A284353(n))` -/
def P14321597069026850200.Spec : Prop :=
  ∀ n, P14321597069026850200.a n = A082505 n

end A082505

/-!
# A082506: a(n) = gcd(2^n, n - phi(n)); largest power of 2 dividing cototient(n) = A051953(n).

The programs for A082506, the canonical program `A082506.P76116564862477502` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082506 has offset 1).

The definition of A082506 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `gcd(2^(n+1), n+1-A000010(n+1))` (program `A082506.P76116564862477502`, by `A082506.P76116564862477502.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A082506.P76116564862477502

`gcd(2^(n+1), n+1-A000010(n+1))`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A082506

/-- `gcd(2^(n+1), n+1-A000010(n+1))` -/
def P76116564862477502.Spec : Prop :=
  ∀ n, (P76116564862477502.a n : ℤ) = A082506 (n + 1)

theorem P76116564862477502.correct : P76116564862477502.Spec := by
  intro n
  simp only [A082506, Nat.add_sub_cancel]

end A082506

/-! ## A082506.P13027537569805615075

`gcd(A051953(n+1), A117973(n))`
-/

namespace A082506.P13027537569805615075
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A051953 (n + 1)) (A117973 n)

end

end A082506.P13027537569805615075

namespace A082506

/-- `gcd(A051953(n+1), A117973(n))` -/
def P13027537569805615075.Spec : Prop :=
  ∀ n, (P13027537569805615075.a n : ℤ) = A082506 (n + 1)

end A082506

/-! ## A082506.P13039955689868205647

`A006519(abs(A000010(n+1)-n)+1)`
-/

namespace A082506.P13039955689868205647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (|A000010 (n + 1) - (n : ℤ)| + 1).toNat

end

end A082506.P13039955689868205647

namespace A082506

/-- `A006519(abs(A000010(n+1)-n)+1)` -/
def P13039955689868205647.Spec : Prop :=
  ∀ n, P13039955689868205647.a n = A082506 (n + 1)

end A082506

/-! ## A082506.P2449513268957201640

`A006519(abs(A109606(n+1)+1-n)+1)`
-/

namespace A082506.P2449513268957201640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (|A109606 (n + 1) + 1 - (n : ℤ)| + 1).toNat

end

end A082506.P2449513268957201640

namespace A082506

/-- `A006519(abs(A109606(n+1)+1-n)+1)` -/
def P2449513268957201640.Spec : Prop :=
  ∀ n, P2449513268957201640.a n = A082506 (n + 1)

end A082506

/-! ## A082506.P9311496663243353329

`2^A007814(abs(A000010(n+1)-n)+1)`
-/

namespace A082506.P9311496663243353329
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A007814 (|A000010 (n + 1) - (n : ℤ)| + 1).toNat : ℤ)

end

end A082506.P9311496663243353329

namespace A082506

/-- `2^A007814(abs(A000010(n+1)-n)+1)` -/
def P9311496663243353329.Spec : Prop :=
  ∀ n, P9311496663243353329.a n = (A082506 (n + 1) : ℚ)

end A082506

/-! ## A082506.P4825950084280986003

`A006519(n-A000010(n+1)+1)^a(n-1)` with `a(0)=2`
-/

namespace A082506.P4825950084280986003
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [2] fun n a =>
  (A006519 ((n : ℤ) - A000010 (n + 1) + 1).toNat : ℝ) ^ (a (n - 1))

end

end A082506.P4825950084280986003

namespace A082506

/-- `A006519(n-A000010(n+1)+1)^a(n-1)` -/
def P4825950084280986003.Spec : Prop :=
  ∀ n, P4825950084280986003.a n = (A082506 (n + 1) : ℝ)

end A082506

/-! ## A082506.P12948342973249664961

`A006519(∑{d}[A000010(n+1)-n, A000010(#)]+1)`
-/

namespace A082506.P12948342973249664961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d + 1).toNat

end

end A082506.P12948342973249664961

namespace A082506

/-- `A006519(∑{d}[A000010(n+1)-n, A000010(#)]+1)` -/
def P12948342973249664961.Spec : Prop :=
  ∀ n, P12948342973249664961.a n = A082506 (n + 1)

end A082506

/-! ## A082506.P5784215729036906322

`gcd(A135530(n)+A051953(n+1), A135530(n))`
-/

namespace A082506.P5784215729036906322
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A135530 n + A051953 (n + 1)) (A135530 n)

end

end A082506.P5784215729036906322

namespace A082506

/-- `gcd(A135530(n)+A051953(n+1), A135530(n))` -/
def P5784215729036906322.Spec : Prop :=
  ∀ n, (P5784215729036906322.a n : ℤ) = A082506 (n + 1)

end A082506

/-! ## A082506.P15304951747812042209

`A006519(lcm(A000010(n+1)-n, a(n-1))+1)` with `a(0)=2`
-/

namespace A082506.P15304951747812042209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A006519 (Int.lcm (A000010 (n + 1) - (n : ℤ)) (a (n - 1)) + 1)

end

end A082506.P15304951747812042209

namespace A082506

/-- `A006519(lcm(A000010(n+1)-n, a(n-1))+1)` -/
def P15304951747812042209.Spec : Prop :=
  ∀ n, P15304951747812042209.a n = A082506 (n + 1)

end A082506

/-! ## A082506.P7215764557768484356

`gcd(A243305(n+1)-1, n-A109606(n+1))`
-/

namespace A082506.P7215764557768484356
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A243305 (n + 1) - 1) ((n : ℤ) - A109606 (n + 1))

end

end A082506.P7215764557768484356

namespace A082506

/-- `gcd(A243305(n+1)-1, n-A109606(n+1))` -/
def P7215764557768484356.Spec : Prop :=
  ∀ n, (P7215764557768484356.a n : ℤ) = A082506 (n + 1)

end A082506

/-! ## A082506.P11312202264244756436

`gcd(n+1-(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1], A060818(n+3))`
-/

namespace A082506.P11312202264244756436
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((n + 1 : ℚ) - (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ))) (A060818 (n + 3))

end

end A082506.P11312202264244756436

namespace A082506

/-- `gcd(n+1-(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1], A060818(n+3))` -/
def P11312202264244756436.Spec : Prop :=
  ∀ n, (P11312202264244756436.a n : ℤ) = A082506 (n + 1)

end A082506

/-! ## A082506.P16258899965913740400

`gcd(A169814(n+1), A352217(n+1))`
-/

namespace A082506.P16258899965913740400
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A169814 (n + 1)) (A352217 (n + 1))

end

end A082506.P16258899965913740400

namespace A082506

/-- `gcd(A169814(n+1), A352217(n+1))` -/
def P16258899965913740400.Spec : Prop :=
  ∀ n, (P16258899965913740400.a n : ℤ) = A082506 (n + 1)

end A082506

/-! ## A082506.P3608057009547119638

`gcd(n-A000010(n+1)+1, A131577(A034448(n+1)+1))`
-/

namespace A082506.P3608057009547119638
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n : ℤ) - A000010 (n + 1) + 1) (A131577 (A034448 (n + 1) + 1).toNat)

end

end A082506.P3608057009547119638

namespace A082506

/-- `gcd(n-A000010(n+1)+1, A131577(A034448(n+1)+1))` -/
def P3608057009547119638.Spec : Prop :=
  ∀ n, (P3608057009547119638.a n : ℤ) = A082506 (n + 1)

end A082506

/-! ## A082506.P14868061452949233814

`gcd(A051953(n+1), A101926(n))`
-/

namespace A082506.P14868061452949233814
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A051953 (n + 1)) (A101926 n)

end

end A082506.P14868061452949233814

namespace A082506

/-- `gcd(A051953(n+1), A101926(n))` -/
def P14868061452949233814.Spec : Prop :=
  ∀ n, (P14868061452949233814.a n : ℤ) = A082506 (n + 1)

end A082506

/-! ## A082506.P15329734103384023467

`gcd(A051953(n+1), A054671(n))`
-/

namespace A082506.P15329734103384023467
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A051953 (n + 1)) (A054671 n)

end

end A082506.P15329734103384023467

namespace A082506

/-- `gcd(A051953(n+1), A054671(n))` -/
def P15329734103384023467.Spec : Prop :=
  ∀ n, (P15329734103384023467.a n : ℤ) = A082506 (n + 1)

end A082506

/-! ## A082506.P16229926121321813058

`gcd(A155543(n), A169814(n+1))`
-/

namespace A082506.P16229926121321813058
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A155543 n) (A169814 (n + 1))

end

end A082506.P16229926121321813058

namespace A082506

/-- `gcd(A155543(n), A169814(n+1))` -/
def P16229926121321813058.Spec : Prop :=
  ∀ n, (P16229926121321813058.a n : ℤ) = A082506 (n + 1)

end A082506

/-! ## A082506.P14549379140934229296

`gcd(A004171(n), A051953(n+1))`
-/

namespace A082506.P14549379140934229296
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A004171 n) (A051953 (n + 1))

end

end A082506.P14549379140934229296

namespace A082506

/-- `gcd(A004171(n), A051953(n+1))` -/
def P14549379140934229296.Spec : Prop :=
  ∀ n, (P14549379140934229296.a n : ℤ) = A082506 (n + 1)

end A082506

/-!
# A082507: Generated by a 3rd-order formal recursion with suitable initial values as follows: a(n) = n - a(n-1) - a(n-2) - a(n-3); a(0)=a(1)=a(2)=0.

The programs for A082507, there is no canonical definition to state claims against.
-/

/-! ## A082507.P12308473629177974411

`n-1-a(n-1)-a(n-2)-a(n-3)` with `a(0)=2, a(1)=0, a(2)=0`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A082507.P12308473629177974411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 0, 0] fun n a =>
  (n : ℤ) - 1 - a (n - 1) - a (n - 2) - a (n - 3)

end

end A082507.P12308473629177974411

/-! ## A082507.P4695172494767204295

`a(n-4)+1` with `a(0)=2, a(1)=0, a(2)=0, a(3)=0`
-/

namespace A082507.P4695172494767204295
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 0, 0, 0] fun n a =>
  a (n - 4) + 1

end

end A082507.P4695172494767204295

/-! ## A082507.P5002419752156991858

`floor(2%gcd(4, n)+n/4)`
-/

namespace A082507.P5002419752156991858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((2 % Nat.gcd 4 n : ℕ) : ℚ) + (n : ℚ) / 4⌋

end

end A082507.P5002419752156991858

/-! ## A082507.P17039941186894461866

`or(3, n)-∑[C(2, (n%4)²)]`
-/

namespace A082507.P17039941186894461866
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 ((n % 4) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 3 n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A082507.P17039941186894461866

/-! ## A082507.P9598619643728219326

`or(3, n)-∑[C(2, and(3, n)²)]`
-/

namespace A082507.P9598619643728219326
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (Nat.land 3 n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 3 n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A082507.P9598619643728219326

/-! ## A082507.P17167138058300424717

`∑[floor(a(n-4))]` with `a(0)=2, a(1)=-2, a(2)=0, a(3)=0, a(4)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A082507.P17167138058300424717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, -2, 0, 0, 3] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082507.P17167138058300424717

/-! ## A082507.P6443039653350009385

`n-∑[a(n-4)^a(n-2)]` with `a(0)=-2, a(1)=3, a(2)=1, a(3)=1`
-/

namespace A082507.P6443039653350009385
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.rec [-2, 3, 1, 1] fun n f1 =>
  f1 (n - 4) ^ (f1 (n - 2))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082507.P6443039653350009385

/-! ## A082507.P14220124405837276320

`ceil(round(cos(A177499(n)))+(n+1)/4)`
-/

namespace A082507.P14220124405837276320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(SequenceMachineLib.roundAway (Real.cos (A177499 n : ℝ)) : ℚ) + (n + 1 : ℚ) / 4⌉

end

end A082507.P14220124405837276320

/-! ## A082507.P15503193387126384921

`A084964(A004525(n))`
-/

namespace A082507.P15503193387126384921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084964 (A004525 n).toNat

end

end A082507.P15503193387126384921

/-! ## A082507.P6824660706855509188

`A262672(n)-A014695(n)`
-/

namespace A082507.P6824660706855509188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262672 n - A014695 n

end

end A082507.P6824660706855509188

/-! ## A082507.P14462781685645416490

`A047331(n+1)-A244953(n)`
-/

namespace A082507.P14462781685645416490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047331 (n + 1) - A244953 n

end

end A082507.P14462781685645416490

/-! ## A082507.P14955410778902999670

`A267182(n)+2-A267184(n)`
-/

namespace A082507.P14955410778902999670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267182 n + (2 - A267184 n)

end

end A082507.P14955410778902999670

/-! ## A082507.P4550006268791717614

`A002265(n)+2*A121262(n)`
-/

namespace A082507.P4550006268791717614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 n + 2 * A121262 n

end

end A082507.P4550006268791717614

/-! ## A082507.P12037983920120208879

`A028835(n+1)-A047485(n+1)`
-/

namespace A082507.P12037983920120208879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028835 (n + 1) - A047485 (n + 1)

end

end A082507.P12037983920120208879

/-! ## A082507.P12323967591226071071

`A047362(n+1)-A047250(n+1)`
-/

namespace A082507.P12323967591226071071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047362 (n + 1) - A047250 (n + 1)

end

end A082507.P12323967591226071071

/-! ## A082507.P16587089856012036637

`A047417(n+1)-A047297(n+1)`
-/

namespace A082507.P16587089856012036637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047417 (n + 1) - A047297 (n + 1)

end

end A082507.P16587089856012036637

/-! ## A082507.P687538531862273093

`A047425(n+1)-A047313(n+1)`
-/

namespace A082507.P687538531862273093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047425 (n + 1) - A047313 (n + 1)

end

end A082507.P687538531862273093

/-! ## A082507.P11549882834413956450

`A047433(n+1)-A047312(n+1)`
-/

namespace A082507.P11549882834413956450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047433 (n + 1) - A047312 (n + 1)

end

end A082507.P11549882834413956450

/-! ## A082507.P14109412963378556221

`A047447(n+1)-A047328(n+1)`
-/

namespace A082507.P14109412963378556221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047447 (n + 1) - A047328 (n + 1)

end

end A082507.P14109412963378556221

/-! ## A082507.P9787458871459482159

`A047596(n+1)-A047365(n+1)`
-/

namespace A082507.P9787458871459482159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047596 (n + 1) - A047365 (n + 1)

end

end A082507.P9787458871459482159

/-!
# A082508: Differences between consecutive primes that are powers of 2 in order of their appearance. Differences that are not powers of 2 are deleted from A001223.

The programs for A082508, the canonical program `A082508.P5152993145593451446` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082508 has offset 1).

The definition of A082508 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A082508.P5152993145593451446

`filter[A001223(n+1), A010055(#)]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A082508

/-- `filter[A001223(n+1), A010055(#)]` -/
def P5152993145593451446.Spec : Prop :=
  ∀ n, P5152993145593451446.a n = A082508 (n + 1)

theorem P5152993145593451446.correct : P5152993145593451446.Spec := by
  intro n
  simp only [A082508, Nat.add_sub_cancel]

end A082508

/-! ## A082508.P571322770154386975

`filter[A001223(n+1), A209229(#)]`
-/

namespace A082508.P571322770154386975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A209229 (f1 j).toNat = 1) n)

end

end A082508.P571322770154386975

namespace A082508

/-- `filter[A001223(n+1), A209229(#)]` -/
def P571322770154386975.Spec : Prop :=
  ∀ n, P571322770154386975.a n = A082508 (n + 1)

end A082508

/-! ## A082508.P7272215803005190073

`filter[A001223(n+1), A324290(#)]`
-/

namespace A082508.P7272215803005190073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324290 (f1 j).toNat = 1) n)

end

end A082508.P7272215803005190073

namespace A082508

/-- `filter[A001223(n+1), A324290(#)]` -/
def P7272215803005190073.Spec : Prop :=
  ∀ n, P7272215803005190073.a n = A082508 (n + 1)

end A082508

/-! ## A082508.P8574876160623776932

`filter[A075526(n+1), A010055(#)]`
-/

namespace A082508.P8574876160623776932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075526 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010055 (f1 j).toNat = 1) n)

end

end A082508.P8574876160623776932

namespace A082508

/-- `filter[A075526(n+1), A010055(#)]` -/
def P8574876160623776932.Spec : Prop :=
  ∀ n, P8574876160623776932.a n = A082508 (n + 1)

end A082508

/-! ## A082508.P17922338065977455682

`filter[A075526(n+1), A209229(#)]`
-/

namespace A082508.P17922338065977455682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075526 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A209229 (f1 j).toNat = 1) n)

end

end A082508.P17922338065977455682

namespace A082508

/-- `filter[A075526(n+1), A209229(#)]` -/
def P17922338065977455682.Spec : Prop :=
  ∀ n, P17922338065977455682.a n = A082508 (n + 1)

end A082508

/-! ## A082508.P13737670696584309383

`filter[A125266(n+1), A209229(#)]`
-/

namespace A082508.P13737670696584309383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125266 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A209229 (f1 j).toNat = 1) n)

end

end A082508.P13737670696584309383

namespace A082508

/-- `filter[A125266(n+1), A209229(#)]` -/
def P13737670696584309383.Spec : Prop :=
  ∀ n, P13737670696584309383.a n = A082508 (n + 1)

end A082508

/-! ## A082508.P10886606310783515951

`A001223(lt[A100375(n+1), 2]+1)`
-/

namespace A082508.P10886606310783515951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100375 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A082508.P10886606310783515951

namespace A082508

/-- `A001223(lt[A100375(n+1), 2]+1)` -/
def P10886606310783515951.Spec : Prop :=
  ∀ n, P10886606310783515951.a n = A082508 (n + 1)

end A082508

/-! ## A082508.P13013162057446370122

`A166597(A061771(n+1))`
-/

namespace A082508.P13013162057446370122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166597 (A061771 (n + 1)).toNat

end

end A082508.P13013162057446370122

namespace A082508

/-- `A166597(A061771(n+1))` -/
def P13013162057446370122.Spec : Prop :=
  ∀ n, P13013162057446370122.a n = A082508 (n + 1)

end A082508

/-! ## A082508.P10115819159186923331

`filter[A134735(n+2), A209229(#)]`
-/

namespace A082508.P10115819159186923331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134735 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A209229 (f1 j).toNat = 1) n)

end

end A082508.P10115819159186923331

namespace A082508

/-- `filter[A134735(n+2), A209229(#)]` -/
def P10115819159186923331.Spec : Prop :=
  ∀ n, P10115819159186923331.a n = A082508 (n + 1)

end A082508

/-! ## A082508.P16317883985766418118

`A096500(A061771(n+1)-1)`
-/

namespace A082508.P16317883985766418118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096500 (A061771 (n + 1) - 1).toNat

end

end A082508.P16317883985766418118

namespace A082508

/-- `A096500(A061771(n+1)-1)` -/
def P16317883985766418118.Spec : Prop :=
  ∀ n, P16317883985766418118.a n = A082508 (n + 1)

end A082508

/-! ## A082508.P8796327493841633811

`filter[A096501(2*n+1), A209229(#)]`
-/

namespace A082508.P8796327493841633811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096501 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A209229 (f1 j).toNat = 1) n)

end

end A082508.P8796327493841633811

namespace A082508

/-- `filter[A096501(2*n+1), A209229(#)]` -/
def P8796327493841633811.Spec : Prop :=
  ∀ n, P8796327493841633811.a n = A082508 (n + 1)

end A082508

/-! ## A082508.P12207882105485510383

`∑{d}[A061771(n+1), A336853(#)]`
-/

namespace A082508.P12207882105485510383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061771 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A336853 d

end

end A082508.P12207882105485510383

namespace A082508

/-- `∑{d}[A061771(n+1), A336853(#)]` -/
def P12207882105485510383.Spec : Prop :=
  ∀ n, P12207882105485510383.a n = A082508 (n + 1)

end A082508

/-! ## A082508.P3676373862289580735

`A013632(A061771(n+1))`
-/

namespace A082508.P3676373862289580735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013632 (A061771 (n + 1)).toNat

end

end A082508.P3676373862289580735

namespace A082508

/-- `A013632(A061771(n+1))` -/
def P3676373862289580735.Spec : Prop :=
  ∀ n, P3676373862289580735.a n = A082508 (n + 1)

end A082508

/-!
# A082509: Differences between consecutive primes that are not powers of 2 in order of their appearance. Differences which are powers of 2 are omitted from A001223.

The programs for A082509, the canonical program `A082509.P14196802049557851940` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082509 has offset 1).

The definition of A082509 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6276 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A082509.P15966388448647475382

`filter[A001223(n+1), A143731(#)]`
-/

namespace A082509.P15966388448647475382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A143731 (f1 j).toNat = 1) n)

end

end A082509.P15966388448647475382

namespace A082509

/-- `filter[A001223(n+1), A143731(#)]` -/
def P15966388448647475382.Spec : Prop :=
  ∀ n, P15966388448647475382.a n = A082509 (n + 1)

end A082509

/-! ## A082509.P11700886873405830987

`filter[A001223(n+1), A202238(#)]`
-/

namespace A082509.P11700886873405830987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202238 (f1 j).toNat = 1) n)

end

end A082509.P11700886873405830987

namespace A082509

/-- `filter[A001223(n+1), A202238(#)]` -/
def P11700886873405830987.Spec : Prop :=
  ∀ n, P11700886873405830987.a n = A082509 (n + 1)

end A082509

/-! ## A082509.P14196802049557851940

`A001223(lt[1, A100375(n+1)]+1)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A082509

/-- `A001223(lt[1, A100375(n+1)]+1)` -/
def P14196802049557851940.Spec : Prop :=
  ∀ n, P14196802049557851940.a n = A082509 (n + 1)

theorem P14196802049557851940.correct : P14196802049557851940.Spec := by
  intro n
  simp only [A082509, Nat.add_sub_cancel]

end A082509

/-! ## A082509.P14988762069147158037

`filter[A075526(n), A143731(#)]`
-/

namespace A082509.P14988762069147158037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A143731 (f1 j).toNat = 1) n)

end

end A082509.P14988762069147158037

namespace A082509

/-- `filter[A075526(n), A143731(#)]` -/
def P14988762069147158037.Spec : Prop :=
  ∀ n, P14988762069147158037.a n = A082509 (n + 1)

end A082509

/-! ## A082509.P3151693429680058964

`filter[A075526(n), A202238(#)]`
-/

namespace A082509.P3151693429680058964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202238 (f1 j).toNat = 1) n)

end

end A082509.P3151693429680058964

namespace A082509

/-- `filter[A075526(n), A202238(#)]` -/
def P3151693429680058964.Spec : Prop :=
  ∀ n, P3151693429680058964.a n = A082509 (n + 1)

end A082509

/-! ## A082509.P17351786747560856082

`filter[A075526(n), A323170(#)]`
-/

namespace A082509.P17351786747560856082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323170 (f1 j).toNat = 1) n)

end

end A082509.P17351786747560856082

namespace A082509

/-- `filter[A075526(n), A323170(#)]` -/
def P17351786747560856082.Spec : Prop :=
  ∀ n, P17351786747560856082.a n = A082509 (n + 1)

end A082509

/-! ## A082509.P13519346865822378074

`filter[A075526(n), A347523(#)]`
-/

namespace A082509.P13519346865822378074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A347523 (f1 j).toNat = 1) n)

end

end A082509.P13519346865822378074

namespace A082509

/-- `filter[A075526(n), A347523(#)]` -/
def P13519346865822378074.Spec : Prop :=
  ∀ n, P13519346865822378074.a n = A082509 (n + 1)

end A082509

/-! ## A082509.P2070436557243028379

`filter[A054541(n+1), A143731(#)]`
-/

namespace A082509.P2070436557243028379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A143731 (f1 j).toNat = 1) n)

end

end A082509.P2070436557243028379

namespace A082509

/-- `filter[A054541(n+1), A143731(#)]` -/
def P2070436557243028379.Spec : Prop :=
  ∀ n, P2070436557243028379.a n = A082509 (n + 1)

end A082509

/-! ## A082509.P5309665518657188487

`A013632(A130796(n+1))`
-/

namespace A082509.P5309665518657188487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013632 (A130796 (n + 1)).toNat

end

end A082509.P5309665518657188487

namespace A082509

/-- `A013632(A130796(n+1))` -/
def P5309665518657188487.Spec : Prop :=
  ∀ n, P5309665518657188487.a n = A082509 (n + 1)

end A082509

/-! ## A082509.P14064565550410012705

`A049711(A355161(n+1))`
-/

namespace A082509.P14064565550410012705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049711 (A355161 (n + 1)).toNat

end

end A082509.P14064565550410012705

namespace A082509

/-- `A049711(A355161(n+1))` -/
def P14064565550410012705.Spec : Prop :=
  ∀ n, P14064565550410012705.a n = A082509 (n + 1)

end A082509

/-!
# A082510: Differences of consecutive primes being divisible by 6 in order of their appearance in A001223: terms not divisible by 6 are omitted from A001223.

The programs for A082510, the canonical program `A082510.P15430433622704550580` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082510 has offset 1).

The definition of A082510 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6326 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A082510.P9091769443902462935

`A001223(A270190(n+1))`
-/

namespace A082510.P9091769443902462935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (A270190 (n + 1)).toNat

end

end A082510.P9091769443902462935

namespace A082510

/-- `A001223(A270190(n+1))` -/
def P9091769443902462935.Spec : Prop :=
  ∀ n, P9091769443902462935.a n = A082510 (n + 1)

end A082510

/-! ## A082510.P7138483735415847598

`filter[A001223(n+1), A079978(#)]`
-/

namespace A082510.P7138483735415847598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A079978 (f1 j).toNat = 1) n)

end

end A082510.P7138483735415847598

namespace A082510

/-- `filter[A001223(n+1), A079978(#)]` -/
def P7138483735415847598.Spec : Prop :=
  ∀ n, P7138483735415847598.a n = A082510 (n + 1)

end A082510

/-! ## A082510.P2706177390104863259

`filter[A001223(n+1), A079979(#)]`
-/

namespace A082510.P2706177390104863259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A079979 (f1 j).toNat = 1) n)

end

end A082510.P2706177390104863259

namespace A082510

/-- `filter[A001223(n+1), A079979(#)]` -/
def P2706177390104863259.Spec : Prop :=
  ∀ n, P2706177390104863259.a n = A082510 (n + 1)

end A082510

/-! ## A082510.P4043425759830741516

`A327748(n+3)-A258578(n+1)`
-/

namespace A082510.P4043425759830741516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327748 (n + 3) - A258578 (n + 1)

end

end A082510.P4043425759830741516

namespace A082510

/-- `A327748(n+3)-A258578(n+1)` -/
def P4043425759830741516.Spec : Prop :=
  ∀ n, P4043425759830741516.a n = A082510 (n + 1)

end A082510

/-! ## A082510.P15430433622704550580

`filter[A082509(n+1), A079978(#)]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A082510

/-- `filter[A082509(n+1), A079978(#)]` -/
def P15430433622704550580.Spec : Prop :=
  ∀ n, P15430433622704550580.a n = A082510 (n + 1)

theorem P15430433622704550580.correct : P15430433622704550580.Spec := by
  intro n
  simp only [A082510, Nat.add_sub_cancel]

end A082510

/-! ## A082510.P9744688564707037545

`filter[A082509(n+1), A079979(#)]`
-/

namespace A082510.P9744688564707037545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082509 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A079979 (f1 j).toNat = 1) n)

end

end A082510.P9744688564707037545

namespace A082510

/-- `filter[A082509(n+1), A079979(#)]` -/
def P9744688564707037545.Spec : Prop :=
  ∀ n, P9744688564707037545.a n = A082510 (n + 1)

end A082510

/-! ## A082510.P879890118988493461

`filter[A082509(n+1), A093719(#)]`
-/

namespace A082510.P879890118988493461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082509 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A093719 (f1 j).toNat = 1) n)

end

end A082510.P879890118988493461

namespace A082510

/-- `filter[A082509(n+1), A093719(#)]` -/
def P879890118988493461.Spec : Prop :=
  ∀ n, P879890118988493461.a n = A082510 (n + 1)

end A082510

/-! ## A082510.P16959039970983678018

`filter[A075526(n), A079978(#)]`
-/

namespace A082510.P16959039970983678018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A079978 (f1 j).toNat = 1) n)

end

end A082510.P16959039970983678018

namespace A082510

/-- `filter[A075526(n), A079978(#)]` -/
def P16959039970983678018.Spec : Prop :=
  ∀ n, P16959039970983678018.a n = A082510 (n + 1)

end A082510

/-! ## A082510.P13830757065021937307

`filter[A075526(n), A079979(#)]`
-/

namespace A082510.P13830757065021937307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A079979 (f1 j).toNat = 1) n)

end

end A082510.P13830757065021937307

namespace A082510

/-- `filter[A075526(n), A079979(#)]` -/
def P13830757065021937307.Spec : Prop :=
  ∀ n, P13830757065021937307.a n = A082510 (n + 1)

end A082510

/-! ## A082510.P10977587388365649789

`filter[A075526(n), A296210(#)]`
-/

namespace A082510.P10977587388365649789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A296210 (f1 j).toNat = 1) n)

end

end A082510.P10977587388365649789

namespace A082510

/-- `filter[A075526(n), A296210(#)]` -/
def P10977587388365649789.Spec : Prop :=
  ∀ n, P10977587388365649789.a n = A082510 (n + 1)

end A082510

/-! ## A082510.P7491313321381463731

`filter[A075526(n), A317961(#)]`
-/

namespace A082510.P7491313321381463731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A317961 (f1 j).toNat = 1) n)

end

end A082510.P7491313321381463731

namespace A082510

/-- `filter[A075526(n), A317961(#)]` -/
def P7491313321381463731.Spec : Prop :=
  ∀ n, P7491313321381463731.a n = A082510 (n + 1)

end A082510

/-! ## A082510.P2691726508012443212

`A054541(A270190(n+1)+1)`
-/

namespace A082510.P2691726508012443212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (A270190 (n + 1) + 1).toNat

end

end A082510.P2691726508012443212

namespace A082510

/-- `A054541(A270190(n+1)+1)` -/
def P2691726508012443212.Spec : Prop :=
  ∀ n, P2691726508012443212.a n = A082510 (n + 1)

end A082510

/-! ## A082510.P7285717146170880392

`A166597(A258578(n+1))`
-/

namespace A082510.P7285717146170880392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166597 (A258578 (n + 1)).toNat

end

end A082510.P7285717146170880392

namespace A082510

/-- `A166597(A258578(n+1))` -/
def P7285717146170880392.Spec : Prop :=
  ∀ n, P7285717146170880392.a n = A082510 (n + 1)

end A082510

/-! ## A082510.P5519201279752678131

`A013632(A258578(n+1))`
-/

namespace A082510.P5519201279752678131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013632 (A258578 (n + 1)).toNat

end

end A082510.P5519201279752678131

namespace A082510

/-- `A013632(A258578(n+1))` -/
def P5519201279752678131.Spec : Prop :=
  ∀ n, P5519201279752678131.a n = A082510 (n + 1)

end A082510

/-! ## A082510.P15573461284621551770

`A013633(A258578(n+1)+1)`
-/

namespace A082510.P15573461284621551770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013633 (A258578 (n + 1) + 1).toNat

end

end A082510.P15573461284621551770

namespace A082510

/-- `A013633(A258578(n+1)+1)` -/
def P15573461284621551770.Spec : Prop :=
  ∀ n, P15573461284621551770.a n = A082510 (n + 1)

end A082510

/-! ## A082510.P5892423695225858860

`A349387(2*A258578(n+1))`
-/

namespace A082510.P5892423695225858860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349387 (2 * A258578 (n + 1)).toNat

end

end A082510.P5892423695225858860

namespace A082510

/-- `A349387(2*A258578(n+1))` -/
def P5892423695225858860.Spec : Prop :=
  ∀ n, P5892423695225858860.a n = A082510 (n + 1)

end A082510

/-! ## A082510.P665876726069990627

`A347236(2*A258578(n+1))`
-/

namespace A082510.P665876726069990627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347236 (2 * A258578 (n + 1)).toNat

end

end A082510.P665876726069990627

namespace A082510

/-- `A347236(2*A258578(n+1))` -/
def P665876726069990627.Spec : Prop :=
  ∀ n, P665876726069990627.a n = A082510 (n + 1)

end A082510

/-!
# A082511: a(n) = 3^n mod 2n.

The programs for A082511, the canonical program `A082511.P12870741398205396426` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082511 has offset 1).

The definition of A082511 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A082511.P12870741398205396426

`2*A094918(n+1)+1`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A082511

/-- `2*A094918(n+1)+1` -/
def P12870741398205396426.Spec : Prop :=
  ∀ n, P12870741398205396426.a n = A082511 (n + 1)

theorem P12870741398205396426.correct : P12870741398205396426.Spec := by
  intro n
  simp only [A082511, Nat.add_sub_cancel]

end A082511

/-! ## A082511.P3067554676064514165

`A005408(A094918(n+1))`
-/

namespace A082511.P3067554676064514165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A094918 (n + 1)).toNat

end

end A082511.P3067554676064514165

namespace A082511

/-- `A005408(A094918(n+1))` -/
def P3067554676064514165.Spec : Prop :=
  ∀ n, P3067554676064514165.a n = A082511 (n + 1)

end A082511

/-! ## A082511.P9669641872481768247

`A004273(A094918(n+1)+1)`
-/

namespace A082511.P9669641872481768247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A094918 (n + 1) + 1).toNat

end

end A082511.P9669641872481768247

namespace A082511

/-- `A004273(A094918(n+1)+1)` -/
def P9669641872481768247.Spec : Prop :=
  ∀ n, P9669641872481768247.a n = A082511 (n + 1)

end A082511

/-! ## A082511.P870005070916102536

`A094918(n+1)-A001478(A094918(n+1)+1)`
-/

namespace A082511.P870005070916102536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094918 (n + 1) - A001478 (A094918 (n + 1) + 1).toNat

end

end A082511.P870005070916102536

namespace A082511

/-- `A094918(n+1)-A001478(A094918(n+1)+1)` -/
def P870005070916102536.Spec : Prop :=
  ∀ n, P870005070916102536.a n = A082511 (n + 1)

end A082511

/-! ## A082511.P9420892708847946529

`A263449(2*A094918(n+1))`
-/

namespace A082511.P9420892708847946529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263449 (2 * A094918 (n + 1)).toNat

end

end A082511.P9420892708847946529

namespace A082511

/-- `A263449(2*A094918(n+1))` -/
def P9420892708847946529.Spec : Prop :=
  ∀ n, P9420892708847946529.a n = A082511 (n + 1)

end A082511

/-! ## A082511.P825758481103473230

`A008619(4*A094918(n+1))`
-/

namespace A082511.P825758481103473230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (4 * A094918 (n + 1)).toNat

end

end A082511.P825758481103473230

namespace A082511

/-- `A008619(4*A094918(n+1))` -/
def P825758481103473230.Spec : Prop :=
  ∀ n, P825758481103473230.a n = A082511 (n + 1)

end A082511

/-! ## A082511.P6621286072022488593

`A094918(n+1)+A094918(A003629(n+1))+A094918(n+1)`
-/

namespace A082511.P6621286072022488593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094918 (n + 1) + (A094918 (A003629 (n + 1)).toNat + A094918 (n + 1))

end

end A082511.P6621286072022488593

namespace A082511

/-- `A094918(n+1)+A094918(A003629(n+1))+A094918(n+1)` -/
def P6621286072022488593.Spec : Prop :=
  ∀ n, P6621286072022488593.a n = A082511 (n + 1)

end A082511

/-! ## A082511.P13909659678745509172

`2*∑[3^n]%(n+1)+1`
-/

namespace A082511.P13909659678745509172
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * ((∑ j ∈ Finset.range (n + 1), f1 j) % (n + 1)) + 1

end

end A082511.P13909659678745509172

namespace A082511

/-- `2*∑[3^n]%(n+1)+1` -/
def P13909659678745509172.Spec : Prop :=
  ∀ n, (P13909659678745509172.a n : ℤ) = A082511 (n + 1)

end A082511

/-! ## A082511.P16567270900280610352

`(3^(n+1))%(2*(n+1))`
-/

namespace A082511.P16567270900280610352
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ (n + 1) % (2 * (n + 1))

end

end A082511.P16567270900280610352

namespace A082511

/-- `(3^(n+1))%(2*(n+1))` -/
def P16567270900280610352.Spec : Prop :=
  ∀ n, (P16567270900280610352.a n : ℤ) = A082511 (n + 1)

end A082511

/-! ## A082511.P6613355500055514337

`A024023(n+1)%(2*(n+1))+1`
-/

namespace A082511.P6613355500055514337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A024023 (n + 1)) (2 * (n + 1) : ℤ) + 1

end

end A082511.P6613355500055514337

namespace A082511

/-- `A024023(n+1)%(2*(n+1))+1` -/
def P6613355500055514337.Spec : Prop :=
  ∀ n, P6613355500055514337.a n = A082511 (n + 1)

end A082511

/-!
# A082512: a(n) = p is the smallest prime introducing a consecutive prime-difference pattern as follows: [2,2n,2], i.e., [p, p+2, p+2+2n, p+2+2n+2] are consecutive primes. Increasing middle prime gap in the immediate neighborhood of two small gaps(=2); a(n) = 0 if no such pattern exists.

The programs for A082512, there is no canonical definition to state claims against.
-/

/-! ## A082512.P14491765227851010254

`A156542(A263182(n))*A263171(n+1)`
-/

namespace A082512.P14491765227851010254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156542 (A263182 n).toNat * A263171 (n + 1)

end

end A082512.P14491765227851010254

/-!
# A082513: a(n)=A000720(n)-A000005(n).

The programs for A082513, the canonical program `A082513.P14151738527547448767` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082513 has offset 1).

The definition of A082513 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000720(n+1)-A000005(n+1)` (program `A082513.P14151738527547448767`, by `A082513.P14151738527547448767.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A082513.P14151738527547448767

`A000720(n+1)-A000005(n+1)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A082513

/-- `A000720(n+1)-A000005(n+1)` -/
def P14151738527547448767.Spec : Prop :=
  ∀ n, P14151738527547448767.a n = A082513 (n + 1)

theorem P14151738527547448767.correct : P14151738527547448767.Spec := by
  intro n
  simp only [A082513, Nat.add_sub_cancel]

end A082513

/-! ## A082513.P11254474475066065930

`∑[char[A006530(n+1)-1]]-1-∏{e}[n+1, #+1]`
-/

namespace A082513.P11254474475066065930
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1 - ((∏ p ∈ Nat.primeFactors (f3 n), (Nat.factorization (f3 n) p + 1) : ℕ) : ℤ)

end

end A082513.P11254474475066065930

namespace A082513

/-- `∑[char[A006530(n+1)-1]]-1-∏{e}[n+1, #+1]` -/
def P11254474475066065930.Spec : Prop :=
  ∀ n, P11254474475066065930.a n = A082513 (n + 1)

end A082513

/-! ## A082513.P1492520614886252005

`A033270(n+1)-A325765(n)`
-/

namespace A082513.P1492520614886252005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033270 (n + 1) - A325765 n

end

end A082513.P1492520614886252005

namespace A082513

/-- `A033270(n+1)-A325765(n)` -/
def P1492520614886252005.Spec : Prop :=
  ∀ n, P1492520614886252005.a n = A082513 (n + 1)

end A082513

/-! ## A082513.P7333305982676978194

`A000720(n+1)-Δ[A006218(n)]`
-/

namespace A082513.P7333305982676978194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1) - (f1 (n + 1) - f1 n)

end

end A082513.P7333305982676978194

namespace A082513

/-- `A000720(n+1)-Δ[A006218(n)]` -/
def P7333305982676978194.Spec : Prop :=
  ∀ n, P7333305982676978194.a n = A082513 (n + 1)

end A082513

/-! ## A082513.P13095349487402609864

`A000720(n+1)-Δ[A054519(n)]`
-/

namespace A082513.P13095349487402609864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1) - (f1 (n + 1) - f1 n)

end

end A082513.P13095349487402609864

namespace A082513

/-- `A000720(n+1)-Δ[A054519(n)]` -/
def P13095349487402609864.Spec : Prop :=
  ∀ n, P13095349487402609864.a n = A082513 (n + 1)

end A082513

/-! ## A082513.P1402390036987797468

`A048865(n+1)-A033273(n+1)`
-/

namespace A082513.P1402390036987797468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048865 (n + 1) - A033273 (n + 1)

end

end A082513.P1402390036987797468

namespace A082513

/-- `A048865(n+1)-A033273(n+1)` -/
def P1402390036987797468.Spec : Prop :=
  ∀ n, P1402390036987797468.a n = A082513 (n + 1)

theorem P1402390036987797468.correct : P1402390036987797468.Spec := by
  intro n
  simp only [A082513, Nat.add_sub_cancel, A082513.P1402390036987797468.a, A082513.P14151738527547448767.a, A000005, A000005.P16091521709108585461.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A033273, A033273.P18420659424697249895.a, A048865, A048865.P11145010694177444749.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A082513

/-! ## A082513.P17808200273257890644

`A063070(n+1)-A037228(n+1)`
-/

namespace A082513.P17808200273257890644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063070 (n + 1) - A037228 (n + 1)

end

end A082513.P17808200273257890644

namespace A082513

/-- `A063070(n+1)-A037228(n+1)` -/
def P17808200273257890644.Spec : Prop :=
  ∀ n, P17808200273257890644.a n = A082513 (n + 1)

theorem P17808200273257890644.correct : P17808200273257890644.Spec := by
  intro n
  simp only [A082513, Nat.add_sub_cancel, A082513.P17808200273257890644.a, A082513.P14151738527547448767.a, A000005, A000005.P16091521709108585461.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A037228, A037228.P4220557198165153324.a, A063070, A063070.P5416196495209204381.a, A000010, A000010.P4673923239450215316.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A082513

/-! ## A082513.P4809761465604741808

`A049820(n+1)-A062298(n+1)`
-/

namespace A082513.P4809761465604741808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049820 (n + 1) - A062298 (n + 1)

end

end A082513.P4809761465604741808

namespace A082513

/-- `A049820(n+1)-A062298(n+1)` -/
def P4809761465604741808.Spec : Prop :=
  ∀ n, P4809761465604741808.a n = A082513 (n + 1)

theorem P4809761465604741808.correct : P4809761465604741808.Spec := by
  intro n
  simp only [A082513, Nat.add_sub_cancel, A082513.P4809761465604741808.a, A082513.P14151738527547448767.a, A000005, A000005.P16091521709108585461.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A049820, A049820.P9428372222244335888.a, A062298, A062298.P8226643735375377344.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A082513

/-! ## A082513.P13725867109768260330

`A082515(n+1)-A061468(n+1)`
-/

namespace A082513.P13725867109768260330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082515 (n + 1) - A061468 (n + 1)

end

end A082513.P13725867109768260330

namespace A082513

/-- `A082515(n+1)-A061468(n+1)` -/
def P13725867109768260330.Spec : Prop :=
  ∀ n, P13725867109768260330.a n = A082513 (n + 1)

theorem P13725867109768260330.correct : P13725867109768260330.Spec := by
  intro n
  simp only [A082513, Nat.add_sub_cancel, A082513.P13725867109768260330.a, A082513.P14151738527547448767.a, A000005, A000005.P16091521709108585461.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A061468, A061468.P5735709615131522244.a, A082515, A082515.P15614925756413171437.a, A000010, A000010.P4673923239450215316.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A082513

/-! ## A082513.P541683271872865650

`A082514(n+1)-A062011(n+1)`
-/

namespace A082513.P541683271872865650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082514 (n + 1) - A062011 (n + 1)

end

end A082513.P541683271872865650

namespace A082513

/-- `A082514(n+1)-A062011(n+1)` -/
def P541683271872865650.Spec : Prop :=
  ∀ n, P541683271872865650.a n = A082513 (n + 1)

theorem P541683271872865650.correct : P541683271872865650.Spec := by
  intro n
  simp only [A082513, Nat.add_sub_cancel, A082513.P541683271872865650.a, A082513.P14151738527547448767.a, A000005, A000005.P16091521709108585461.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A062011, A062011.P17525320077853469406.a, A082514, A082514.P13229630575248176506.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A082513

/-! ## A082513.P11284084119412652439

`A065608(n+1)-A152991(n+1)`
-/

namespace A082513.P11284084119412652439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065608 (n + 1) - A152991 (n + 1)

end

end A082513.P11284084119412652439

namespace A082513

/-- `A065608(n+1)-A152991(n+1)` -/
def P11284084119412652439.Spec : Prop :=
  ∀ n, P11284084119412652439.a n = A082513 (n + 1)

theorem P11284084119412652439.correct : P11284084119412652439.Spec := by
  intro n
  simp only [A082513, Nat.add_sub_cancel, A082513.P11284084119412652439.a, A082513.P14151738527547448767.a, A000005, A000005.P16091521709108585461.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A065608, A065608.P12445239359989980431.a, A152991, A152991.P96755729766492902.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A082513

/-! ## A082513.P15720353877153610115

`A036234(n+1)-A334954(n+1)`
-/

namespace A082513.P15720353877153610115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (n + 1) - A334954 (n + 1)

end

end A082513.P15720353877153610115

namespace A082513

/-- `A036234(n+1)-A334954(n+1)` -/
def P15720353877153610115.Spec : Prop :=
  ∀ n, P15720353877153610115.a n = A082513 (n + 1)

end A082513

/-! ## A082513.P5600299974678006148

`∑[A010051(n+1)]-Δ[A006218(n)]`
-/

namespace A082513.P5600299974678006148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (f2 (n + 1) - f2 n)

end

end A082513.P5600299974678006148

namespace A082513

/-- `∑[A010051(n+1)]-Δ[A006218(n)]` -/
def P5600299974678006148.Spec : Prop :=
  ∀ n, P5600299974678006148.a n = A082513 (n + 1)

end A082513

/-! ## A082513.P13683896028033890614

`∑[A010051(n+1)]-Δ[A054519(n)]`
-/

namespace A082513.P13683896028033890614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (f2 (n + 1) - f2 n)

end

end A082513.P13683896028033890614

namespace A082513

/-- `∑[A010051(n+1)]-Δ[A054519(n)]` -/
def P13683896028033890614.Spec : Prop :=
  ∀ n, P13683896028033890614.a n = A082513 (n + 1)

end A082513

/-! ## A082513.P5528704906824250782

`∑[A010051(n+1)]-A000005(n+1)`
-/

namespace A082513.P5528704906824250782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000005 (n + 1)

end

end A082513.P5528704906824250782

namespace A082513

/-- `∑[A010051(n+1)]-A000005(n+1)` -/
def P5528704906824250782.Spec : Prop :=
  ∀ n, P5528704906824250782.a n = A082513 (n + 1)

end A082513

/-! ## A082513.P17004861554368750159

`A036234(n+1)-(A000005(n+1)+1)`
-/

namespace A082513.P17004861554368750159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (n + 1) - (A000005 (n + 1) + 1)

end

end A082513.P17004861554368750159

namespace A082513

/-- `A036234(n+1)-(A000005(n+1)+1)` -/
def P17004861554368750159.Spec : Prop :=
  ∀ n, P17004861554368750159.a n = A082513 (n + 1)

theorem P17004861554368750159.correct : P17004861554368750159.Spec := by
  intro n
  simp only [A082513, Nat.add_sub_cancel, A082513.P17004861554368750159.a, A082513.P14151738527547448767.a, A000005, A000005.P16091521709108585461.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A036234, A036234.P2906282677021386800.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A082513

/-! ## A082513.P9333290140672361381

`A048865(n+1)-(A055212(n+1)+1)`
-/

namespace A082513.P9333290140672361381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048865 (n + 1) - (A055212 (n + 1) + 1)

end

end A082513.P9333290140672361381

namespace A082513

/-- `A048865(n+1)-(A055212(n+1)+1)` -/
def P9333290140672361381.Spec : Prop :=
  ∀ n, P9333290140672361381.a n = A082513 (n + 1)

theorem P9333290140672361381.correct : P9333290140672361381.Spec := by
  intro n
  simp only [A082513, Nat.add_sub_cancel, A082513.P9333290140672361381.a, A082513.P14151738527547448767.a, A000005, A000005.P16091521709108585461.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A048865, A048865.P11145010694177444749.a, A055212, A055212.P14412881054625885538.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A033273, A033273.P18420659424697249895.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A082513

/-! ## A082513.P15158931913714721506

`n-(A065855(n+1)+A000005(n+1))`
-/

namespace A082513.P15158931913714721506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A065855 (n + 1) + A000005 (n + 1))

end

end A082513.P15158931913714721506

namespace A082513

/-- `n-(A065855(n+1)+A000005(n+1))` -/
def P15158931913714721506.Spec : Prop :=
  ∀ n, P15158931913714721506.a n = A082513 (n + 1)

theorem P15158931913714721506.correct : P15158931913714721506.Spec := by
  intro n
  simp only [A082513, Nat.add_sub_cancel, A082513.P15158931913714721506.a, A082513.P14151738527547448767.a, A000005, A000005.P16091521709108585461.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A065855, A065855.P16805213270251966039.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A062298, A062298.P8226643735375377344.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A082513

/-! ## A082513.P13505917659057691452

`∑[char[A006093(n+1)]]-A000005(n+1)`
-/

namespace A082513.P13505917659057691452
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A000005 (n + 1)

end

end A082513.P13505917659057691452

namespace A082513

/-- `∑[char[A006093(n+1)]]-A000005(n+1)` -/
def P13505917659057691452.Spec : Prop :=
  ∀ n, P13505917659057691452.a n = A082513 (n + 1)

end A082513

/-! ## A082513.P14795625376939337893

`∑[A080339(n+1)]-(A000005(n+1)+1)`
-/

namespace A082513.P14795625376939337893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080339 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (A000005 (n + 1) + 1)

end

end A082513.P14795625376939337893

namespace A082513

/-- `∑[A080339(n+1)]-(A000005(n+1)+1)` -/
def P14795625376939337893.Spec : Prop :=
  ∀ n, P14795625376939337893.a n = A082513 (n + 1)

end A082513

/-!
# A082514: a(n) = pi(n) + tau(n).

The programs for A082514, the canonical program `A082514.P13229630575248176506` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082514 has offset 1).

The definition of A082514 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000720(n+1)+A000005(n+1)` (program `A082514.P13229630575248176506`, by `A082514.P13229630575248176506.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A082514.P13229630575248176506

`A000720(n+1)+A000005(n+1)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A082514

/-- `A000720(n+1)+A000005(n+1)` -/
def P13229630575248176506.Spec : Prop :=
  ∀ n, P13229630575248176506.a n = A082514 (n + 1)

theorem P13229630575248176506.correct : P13229630575248176506.Spec := by
  intro n
  simp only [A082514, Nat.add_sub_cancel]

end A082514

/-! ## A082514.P606111122417511923

`2-A152993(n+1)+n`
-/

namespace A082514.P606111122417511923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A152993 (n + 1) + (n : ℤ)

end

end A082514.P606111122417511923

namespace A082514

/-- `2-A152993(n+1)+n` -/
def P606111122417511923.Spec : Prop :=
  ∀ n, P606111122417511923.a n = A082514 (n + 1)

theorem P606111122417511923.correct : P606111122417511923.Spec := by
  intro n
  simp only [A082514, Nat.add_sub_cancel, A082514.P606111122417511923.a, A082514.P13229630575248176506.a, A000005, A000005.P16091521709108585461.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A152993, A152993.P5731568849682305493.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A082514

/-! ## A082514.P17516579123444344109

`∏{e}[n+1, #+1]+∑[char[A020639(n+2)-1]]`
-/

namespace A082514.P17516579123444344109
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2) - 1

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A082514.P17516579123444344109

namespace A082514

/-- `∏{e}[n+1, #+1]+∑[char[A020639(n+2)-1]]` -/
def P17516579123444344109.Spec : Prop :=
  ∀ n, (P17516579123444344109.a n : ℤ) = A082514 (n + 1)

end A082514

/-! ## A082514.P12962426695930089114

`∏{e}[n+1, #+1]+∑[char[A006530(n+1)-1]]-1`
-/

namespace A082514.P12962426695930089114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1) - 1

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) + (((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 1)

end

end A082514.P12962426695930089114

namespace A082514

/-- `∏{e}[n+1, #+1]+∑[char[A006530(n+1)-1]]-1` -/
def P12962426695930089114.Spec : Prop :=
  ∀ n, P12962426695930089114.a n = A082514 (n + 1)

end A082514

/-! ## A082514.P7113910305814944242

`A000720(n+1)+Δ[A006218(n)]`
-/

namespace A082514.P7113910305814944242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1) + (f1 (n + 1) - f1 n)

end

end A082514.P7113910305814944242

namespace A082514

/-- `A000720(n+1)+Δ[A006218(n)]` -/
def P7113910305814944242.Spec : Prop :=
  ∀ n, P7113910305814944242.a n = A082514 (n + 1)

end A082514

/-! ## A082514.P5877368506823552781

`A000720(n+1)+Δ[A054519(n)]`
-/

namespace A082514.P5877368506823552781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1) + (f1 (n + 1) - f1 n)

end

end A082514.P5877368506823552781

namespace A082514

/-- `A000720(n+1)+Δ[A054519(n)]` -/
def P5877368506823552781.Spec : Prop :=
  ∀ n, P5877368506823552781.a n = A082514 (n + 1)

end A082514

/-! ## A082514.P17468039555748721059

`A000005(n+1)+A000720(n+1)`
-/

namespace A082514.P17468039555748721059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + A000720 (n + 1)

end

end A082514.P17468039555748721059

namespace A082514

/-- `A000005(n+1)+A000720(n+1)` -/
def P17468039555748721059.Spec : Prop :=
  ∀ n, P17468039555748721059.a n = A082514 (n + 1)

theorem P17468039555748721059.correct : P17468039555748721059.Spec := by
  intro n
  simp only [A082514, Nat.add_sub_cancel, A082514.P17468039555748721059.a, A082514.P13229630575248176506.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A082514

/-! ## A082514.P17588184459149834519

`A036234(n+1)+A032741(n+1)`
-/

namespace A082514.P17588184459149834519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (n + 1) + A032741 (n + 1)

end

end A082514.P17588184459149834519

namespace A082514

/-- `A036234(n+1)+A032741(n+1)` -/
def P17588184459149834519.Spec : Prop :=
  ∀ n, P17588184459149834519.a n = A082514 (n + 1)

theorem P17588184459149834519.correct : P17588184459149834519.Spec := by
  intro n
  simp only [A082514, Nat.add_sub_cancel, A082514.P17588184459149834519.a, A082514.P13229630575248176506.a, A000005, A000005.P16091521709108585461.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A036234, A036234.P2906282677021386800.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A082514

/-! ## A082514.P11566292572541187267

`A082513(n+1)+A062011(n+1)`
-/

namespace A082514.P11566292572541187267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082513 (n + 1) + A062011 (n + 1)

end

end A082514.P11566292572541187267

namespace A082514

/-- `A082513(n+1)+A062011(n+1)` -/
def P11566292572541187267.Spec : Prop :=
  ∀ n, P11566292572541187267.a n = A082514 (n + 1)

theorem P11566292572541187267.correct : P11566292572541187267.Spec := by
  intro n
  simp only [A082514, Nat.add_sub_cancel, A082514.P11566292572541187267.a, A082514.P13229630575248176506.a, A000005, A000005.P16091521709108585461.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A062011, A062011.P17525320077853469406.a, A082513, A082513.P14151738527547448767.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A082514

/-! ## A082514.P105500482161417397

`A163523(n+1)+A048865(n+1)`
-/

namespace A082514.P105500482161417397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163523 (n + 1) + A048865 (n + 1)

end

end A082514.P105500482161417397

namespace A082514

/-- `A163523(n+1)+A048865(n+1)` -/
def P105500482161417397.Spec : Prop :=
  ∀ n, P105500482161417397.a n = A082514 (n + 1)

theorem P105500482161417397.correct : P105500482161417397.Spec := by
  intro n
  simp only [A082514, Nat.add_sub_cancel, A082514.P105500482161417397.a, A082514.P13229630575248176506.a, A000005, A000005.P16091521709108585461.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A048865, A048865.P11145010694177444749.a, A163523, A163523.P17500706477665394313.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A082514

/-! ## A082514.P16506176426286633834

`A351519(n+1)+A001221(n+1)`
-/

namespace A082514.P16506176426286633834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351519 (n + 1) + A001221 (n + 1)

end

end A082514.P16506176426286633834

namespace A082514

/-- `A351519(n+1)+A001221(n+1)` -/
def P16506176426286633834.Spec : Prop :=
  ∀ n, P16506176426286633834.a n = A082514 (n + 1)

theorem P16506176426286633834.correct : P16506176426286633834.Spec := by
  intro n
  simp only [A082514, Nat.add_sub_cancel, A082514.P16506176426286633834.a, A082514.P13229630575248176506.a, A000005, A000005.P16091521709108585461.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A351519, A351519.P5058596728449047522.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A082514

/-! ## A082514.P11064050380677391311

`A061468(n+1)-A037228(n+1)`
-/

namespace A082514.P11064050380677391311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061468 (n + 1) - A037228 (n + 1)

end

end A082514.P11064050380677391311

namespace A082514

/-- `A061468(n+1)-A037228(n+1)` -/
def P11064050380677391311.Spec : Prop :=
  ∀ n, P11064050380677391311.a n = A082514 (n + 1)

theorem P11064050380677391311.correct : P11064050380677391311.Spec := by
  intro n
  simp only [A082514, Nat.add_sub_cancel, A082514.P11064050380677391311.a, A082514.P13229630575248176506.a, A000005, A000005.P16091521709108585461.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A037228, A037228.P4220557198165153324.a, A061468, A061468.P5735709615131522244.a, A000010, A000010.P4673923239450215316.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A082514

/-! ## A082514.P418285707669647665

`A062249(n+1)-A062298(n+1)`
-/

namespace A082514.P418285707669647665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062249 (n + 1) - A062298 (n + 1)

end

end A082514.P418285707669647665

namespace A082514

/-- `A062249(n+1)-A062298(n+1)` -/
def P418285707669647665.Spec : Prop :=
  ∀ n, P418285707669647665.a n = A082514 (n + 1)

theorem P418285707669647665.correct : P418285707669647665.Spec := by
  intro n
  simp only [A082514, Nat.add_sub_cancel, A082514.P418285707669647665.a, A082514.P13229630575248176506.a, A000005, A000005.P16091521709108585461.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A062249, A062249.P5473932307129171226.a, A062298, A062298.P8226643735375377344.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A082514

/-! ## A082514.P6208748971598974445

`A082515(n+1)-A063070(n+1)`
-/

namespace A082514.P6208748971598974445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082515 (n + 1) - A063070 (n + 1)

end

end A082514.P6208748971598974445

namespace A082514

/-- `A082515(n+1)-A063070(n+1)` -/
def P6208748971598974445.Spec : Prop :=
  ∀ n, P6208748971598974445.a n = A082514 (n + 1)

theorem P6208748971598974445.correct : P6208748971598974445.Spec := by
  intro n
  simp only [A082514, Nat.add_sub_cancel, A082514.P6208748971598974445.a, A082514.P13229630575248176506.a, A000005, A000005.P16091521709108585461.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A063070, A063070.P5416196495209204381.a, A082515, A082515.P15614925756413171437.a, A000010, A000010.P4673923239450215316.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A082514

/-! ## A082514.P11084505120106900649

`A000203(n+1)-A152992(n+1)`
-/

namespace A082514.P11084505120106900649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A152992 (n + 1)

end

end A082514.P11084505120106900649

namespace A082514

/-- `A000203(n+1)-A152992(n+1)` -/
def P11084505120106900649.Spec : Prop :=
  ∀ n, P11084505120106900649.a n = A082514 (n + 1)

theorem P11084505120106900649.correct : P11084505120106900649.Spec := by
  intro n
  simp only [A082514, Nat.add_sub_cancel, A082514.P11084505120106900649.a, A082514.P13229630575248176506.a, A000005, A000005.P16091521709108585461.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A152992, A152992.P10206136984884417694.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A065608, A065608.P12445239359989980431.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A082514

/-! ## A082514.P2187142801010406266

`A007503(n+1)-A152991(n+1)`
-/

namespace A082514.P2187142801010406266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007503 (n + 1) - A152991 (n + 1)

end

end A082514.P2187142801010406266

namespace A082514

/-- `A007503(n+1)-A152991(n+1)` -/
def P2187142801010406266.Spec : Prop :=
  ∀ n, P2187142801010406266.a n = A082514 (n + 1)

theorem P2187142801010406266.correct : P2187142801010406266.Spec := by
  intro n
  simp only [A082514, Nat.add_sub_cancel, A082514.P2187142801010406266.a, A082514.P13229630575248176506.a, A000005, A000005.P16091521709108585461.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A007503, A007503.P13484425310514315912.a, A152991, A152991.P96755729766492902.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A082514

/-! ## A082514.P9763705547918276405

`A158907(n+1)-A065855(n+1)`
-/

namespace A082514.P9763705547918276405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158907 (n + 1) - A065855 (n + 1)

end

end A082514.P9763705547918276405

namespace A082514

/-- `A158907(n+1)-A065855(n+1)` -/
def P9763705547918276405.Spec : Prop :=
  ∀ n, P9763705547918276405.a n = A082514 (n + 1)

theorem P9763705547918276405.correct : P9763705547918276405.Spec := by
  intro n
  simp only [A082514, Nat.add_sub_cancel, A082514.P9763705547918276405.a, A082514.P13229630575248176506.a, A000005, A000005.P16091521709108585461.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A065855, A065855.P16805213270251966039.a, A158907, A158907.P7286143353781437512.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A062298, A062298.P8226643735375377344.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A082514

/-! ## A082514.P16063922559533922192

`A229109(n+1)-A279436(n+1)`
-/

namespace A082514.P16063922559533922192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229109 (n + 1) - A279436 (n + 1)

end

end A082514.P16063922559533922192

namespace A082514

/-- `A229109(n+1)-A279436(n+1)` -/
def P16063922559533922192.Spec : Prop :=
  ∀ n, P16063922559533922192.a n = A082514 (n + 1)

theorem P16063922559533922192.correct : P16063922559533922192.Spec := by
  intro n
  simp only [A082514, Nat.add_sub_cancel, A082514.P16063922559533922192.a, A082514.P13229630575248176506.a, A000005, A000005.P16091521709108585461.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A229109, A229109.P7396241872602068631.a, A279436, A279436.P15978742674708459391.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A033273, A033273.P18420659424697249895.a, A062298, A062298.P8226643735375377344.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A082514

/-! ## A082514.P2143679436868673599

`Δ[A006218(n)]+∑[A010051(n+1)]`
-/

namespace A082514.P2143679436868673599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A082514.P2143679436868673599

namespace A082514

/-- `Δ[A006218(n)]+∑[A010051(n+1)]` -/
def P2143679436868673599.Spec : Prop :=
  ∀ n, P2143679436868673599.a n = A082514 (n + 1)

end A082514

/-! ## A082514.P16095537796799246320

`Δ[A054519(n)]+∑[A010051(n+1)]`
-/

namespace A082514.P16095537796799246320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A082514.P16095537796799246320

namespace A082514

/-- `Δ[A054519(n)]+∑[A010051(n+1)]` -/
def P16095537796799246320.Spec : Prop :=
  ∀ n, P16095537796799246320.a n = A082514 (n + 1)

end A082514

/-!
# A082515: a(n)=A000720(n)+A000010(n).

The programs for A082515, the canonical program `A082515.P15614925756413171437` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082515 has offset 1).

The definition of A082515 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000720(n+1)+A000010(n+1)` (program `A082515.P15614925756413171437`, by `A082515.P15614925756413171437.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A082515.P15614925756413171437

`A000720(n+1)+A000010(n+1)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A082515

/-- `A000720(n+1)+A000010(n+1)` -/
def P15614925756413171437.Spec : Prop :=
  ∀ n, P15614925756413171437.a n = A082515 (n + 1)

theorem P15614925756413171437.correct : P15614925756413171437.Spec := by
  intro n
  simp only [A082515, Nat.add_sub_cancel]

end A082515

/-! ## A082515.P8618524506106682885

`A000720(n+1)+Δ[A002088(n)]`
-/

namespace A082515.P8618524506106682885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1) + (f1 (n + 1) - f1 n)

end

end A082515.P8618524506106682885

namespace A082515

/-- `A000720(n+1)+Δ[A002088(n)]` -/
def P8618524506106682885.Spec : Prop :=
  ∀ n, P8618524506106682885.a n = A082515 (n + 1)

end A082515

/-! ## A082515.P12948723434341583211

`A000720(n+1)+Δ[A005728(n)]`
-/

namespace A082515.P12948723434341583211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1) + (f1 (n + 1) - f1 n)

end

end A082515.P12948723434341583211

namespace A082515

/-- `A000720(n+1)+Δ[A005728(n)]` -/
def P12948723434341583211.Spec : Prop :=
  ∀ n, P12948723434341583211.a n = A082515 (n + 1)

end A082515

/-! ## A082515.P10890238195506122114

`A000010(n+1)+A000720(n+1)`
-/

namespace A082515.P10890238195506122114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + A000720 (n + 1)

end

end A082515.P10890238195506122114

namespace A082515

/-- `A000010(n+1)+A000720(n+1)` -/
def P10890238195506122114.Spec : Prop :=
  ∀ n, P10890238195506122114.a n = A082515 (n + 1)

theorem P10890238195506122114.correct : P10890238195506122114.Spec := by
  intro n
  simp only [A082515, Nat.add_sub_cancel, A082515.P10890238195506122114.a, A082515.P15614925756413171437.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A082515

/-! ## A082515.P7077221686591086738

`A057859(n+1)+A048865(n+1)`
-/

namespace A082515.P7077221686591086738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057859 (n + 1) + A048865 (n + 1)

end

end A082515.P7077221686591086738

namespace A082515

/-- `A057859(n+1)+A048865(n+1)` -/
def P7077221686591086738.Spec : Prop :=
  ∀ n, P7077221686591086738.a n = A082515 (n + 1)

theorem P7077221686591086738.correct : P7077221686591086738.Spec := by
  intro n
  simp only [A082515, Nat.add_sub_cancel, A082515.P7077221686591086738.a, A082515.P15614925756413171437.a, A000010, A000010.P4673923239450215316.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A048865, A048865.P11145010694177444749.a, A057859, A057859.P5441024818850006693.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A082515

/-! ## A082515.P8171272900193443388

`A082513(n+1)+A061468(n+1)`
-/

namespace A082515.P8171272900193443388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082513 (n + 1) + A061468 (n + 1)

end

end A082515.P8171272900193443388

namespace A082515

/-- `A082513(n+1)+A061468(n+1)` -/
def P8171272900193443388.Spec : Prop :=
  ∀ n, P8171272900193443388.a n = A082515 (n + 1)

theorem P8171272900193443388.correct : P8171272900193443388.Spec := by
  intro n
  simp only [A082515, Nat.add_sub_cancel, A082515.P8171272900193443388.a, A082515.P15614925756413171437.a, A000010, A000010.P4673923239450215316.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A061468, A061468.P5735709615131522244.a, A082513, A082513.P14151738527547448767.a, A000005, A000005.P16091521709108585461.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A082515

/-! ## A082515.P16873104715497106045

`A082514(n+1)+A063070(n+1)`
-/

namespace A082515.P16873104715497106045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082514 (n + 1) + A063070 (n + 1)

end

end A082515.P16873104715497106045

namespace A082515

/-- `A082514(n+1)+A063070(n+1)` -/
def P16873104715497106045.Spec : Prop :=
  ∀ n, P16873104715497106045.a n = A082515 (n + 1)

theorem P16873104715497106045.correct : P16873104715497106045.Spec := by
  intro n
  simp only [A082515, Nat.add_sub_cancel, A082515.P16873104715497106045.a, A082515.P15614925756413171437.a, A000010, A000010.P4673923239450215316.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A063070, A063070.P5416196495209204381.a, A082514, A082514.P13229630575248176506.a, A000005, A000005.P16091521709108585461.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A082515

/-! ## A082515.P8239481745449662431

`A109606(n+1)+A036234(n+1)`
-/

namespace A082515.P8239481745449662431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109606 (n + 1) + A036234 (n + 1)

end

end A082515.P8239481745449662431

namespace A082515

/-- `A109606(n+1)+A036234(n+1)` -/
def P8239481745449662431.Spec : Prop :=
  ∀ n, P8239481745449662431.a n = A082515 (n + 1)

theorem P8239481745449662431.correct : P8239481745449662431.Spec := by
  intro n
  simp only [A082515, Nat.add_sub_cancel, A082515.P8239481745449662431.a, A082515.P15614925756413171437.a, A000010, A000010.P4673923239450215316.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A036234, A036234.P2906282677021386800.a, A109606, A109606.P2415810041766612210.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A082515

/-! ## A082515.P11960511326034616876

`A099802(n+1)+A077150(n+1)`
-/

namespace A082515.P11960511326034616876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099802 (n + 1) + A077150 (n + 1)

end

end A082515.P11960511326034616876

namespace A082515

/-- `A099802(n+1)+A077150(n+1)` -/
def P11960511326034616876.Spec : Prop :=
  ∀ n, P11960511326034616876.a n = A082515 (n + 1)

end A082515

/-! ## A082515.P16254246148937011592

`A121048(n+1)-A062298(n+1)`
-/

namespace A082515.P16254246148937011592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121048 (n + 1) - A062298 (n + 1)

end

end A082515.P16254246148937011592

namespace A082515

/-- `A121048(n+1)-A062298(n+1)` -/
def P16254246148937011592.Spec : Prop :=
  ∀ n, P16254246148937011592.a n = A082515 (n + 1)

theorem P16254246148937011592.correct : P16254246148937011592.Spec := by
  intro n
  simp only [A082515, Nat.add_sub_cancel, A082515.P16254246148937011592.a, A082515.P15614925756413171437.a, A000010, A000010.P4673923239450215316.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A062298, A062298.P8226643735375377344.a, A121048, A121048.P10222907602682812102.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A082515

/-! ## A082515.P1958740102809363000

`A100486(n+1)-A104192(n+1)`
-/

namespace A082515.P1958740102809363000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100486 (n + 1) - A104192 (n + 1)

end

end A082515.P1958740102809363000

namespace A082515

/-- `A100486(n+1)-A104192(n+1)` -/
def P1958740102809363000.Spec : Prop :=
  ∀ n, P1958740102809363000.a n = A082515 (n + 1)

theorem P1958740102809363000.correct : P1958740102809363000.Spec := by
  intro n
  simp only [A082515, Nat.add_sub_cancel, A082515.P1958740102809363000.a, A082515.P15614925756413171437.a, A000010, A000010.P4673923239450215316.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A100486, A100486.P14505039985477023089.a, A104192, A104192.P13256349872724568781.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A082515

/-! ## A082515.P12812091582106405974

`A065387(n+1)-A152991(n+1)`
-/

namespace A082515.P12812091582106405974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065387 (n + 1) - A152991 (n + 1)

end

end A082515.P12812091582106405974

namespace A082515

/-- `A065387(n+1)-A152991(n+1)` -/
def P12812091582106405974.Spec : Prop :=
  ∀ n, P12812091582106405974.a n = A082515 (n + 1)

theorem P12812091582106405974.correct : P12812091582106405974.Spec := by
  intro n
  simp only [A082515, Nat.add_sub_cancel, A082515.P12812091582106405974.a, A082515.P15614925756413171437.a, A000010, A000010.P4673923239450215316.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A065387, A065387.P11284875715279330998.a, A152991, A152991.P96755729766492902.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A082515

/-! ## A082515.P4559095012316492296

`A255385(n+1)-A152992(n+1)`
-/

namespace A082515.P4559095012316492296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255385 (n + 1) - A152992 (n + 1)

end

end A082515.P4559095012316492296

namespace A082515

/-- `A255385(n+1)-A152992(n+1)` -/
def P4559095012316492296.Spec : Prop :=
  ∀ n, P4559095012316492296.a n = A082515 (n + 1)

theorem P4559095012316492296.correct : P4559095012316492296.Spec := by
  intro n
  simp only [A082515, Nat.add_sub_cancel, A082515.P4559095012316492296.a, A082515.P15614925756413171437.a, A000010, A000010.P4673923239450215316.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A152992, A152992.P10206136984884417694.a, A255385, A255385.P15739975789967617263.a, A000005, A000005.P16091521709108585461.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A003557, A003557.P6364735403900941810.a, A065608, A065608.P12445239359989980431.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A082515

/-! ## A082515.P1898917307555846915

`A000720(n+1)+sqrt(A127473(n+1))`
-/

namespace A082515.P1898917307555846915
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A000720 (n + 1) : ℝ) + Real.sqrt (A127473 (n + 1) : ℝ)

end

end A082515.P1898917307555846915

namespace A082515

/-- `A000720(n+1)+sqrt(A127473(n+1))` -/
def P1898917307555846915.Spec : Prop :=
  ∀ n, P1898917307555846915.a n = (A082515 (n + 1) : ℝ)

end A082515

/-! ## A082515.P7370516946721027500

`A000010(n+1)+∑[A010051(n+1)]`
-/

namespace A082515.P7370516946721027500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082515.P7370516946721027500

namespace A082515

/-- `A000010(n+1)+∑[A010051(n+1)]` -/
def P7370516946721027500.Spec : Prop :=
  ∀ n, P7370516946721027500.a n = A082515 (n + 1)

end A082515

/-! ## A082515.P2050284699224357162

`A000720(n+1)+A109606(n+1)+1`
-/

namespace A082515.P2050284699224357162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1) + (A109606 (n + 1) + 1)

end

end A082515.P2050284699224357162

namespace A082515

/-- `A000720(n+1)+A109606(n+1)+1` -/
def P2050284699224357162.Spec : Prop :=
  ∀ n, P2050284699224357162.a n = A082515 (n + 1)

theorem P2050284699224357162.correct : P2050284699224357162.Spec := by
  intro n
  simp only [A082515, Nat.add_sub_cancel, A082515.P2050284699224357162.a, A082515.P15614925756413171437.a, A000010, A000010.P4673923239450215316.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A109606, A109606.P2415810041766612210.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A082515

/-! ## A082515.P10269465126504426768

`A000010(n+1)+A036234(n+1)-1`
-/

namespace A082515.P10269465126504426768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + (A036234 (n + 1) - 1)

end

end A082515.P10269465126504426768

namespace A082515

/-- `A000010(n+1)+A036234(n+1)-1` -/
def P10269465126504426768.Spec : Prop :=
  ∀ n, P10269465126504426768.a n = A082515 (n + 1)

theorem P10269465126504426768.correct : P10269465126504426768.Spec := by
  intro n
  simp only [A082515, Nat.add_sub_cancel, A082515.P10269465126504426768.a, A082515.P15614925756413171437.a, A000010, A000010.P4673923239450215316.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A036234, A036234.P2906282677021386800.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A082515

/-! ## A082515.P13111280729691647377

`A000720(n+1)+A039649(n+1)-1`
-/

namespace A082515.P13111280729691647377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1) + (A039649 (n + 1) - 1)

end

end A082515.P13111280729691647377

namespace A082515

/-- `A000720(n+1)+A039649(n+1)-1` -/
def P13111280729691647377.Spec : Prop :=
  ∀ n, P13111280729691647377.a n = A082515 (n + 1)

theorem P13111280729691647377.correct : P13111280729691647377.Spec := by
  intro n
  simp only [A082515, Nat.add_sub_cancel, A082515.P13111280729691647377.a, A082515.P15614925756413171437.a, A000010, A000010.P4673923239450215316.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A039649, A039649.P16717312505280968063.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A082515

/-! ## A082515.P5767290828716668043

`A036234(n+1)+A039649(n+1)-2`
-/

namespace A082515.P5767290828716668043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (n + 1) + (A039649 (n + 1) - 2)

end

end A082515.P5767290828716668043

namespace A082515

/-- `A036234(n+1)+A039649(n+1)-2` -/
def P5767290828716668043.Spec : Prop :=
  ∀ n, P5767290828716668043.a n = A082515 (n + 1)

theorem P5767290828716668043.correct : P5767290828716668043.Spec := by
  intro n
  simp only [A082515, Nat.add_sub_cancel, A082515.P5767290828716668043.a, A082515.P15614925756413171437.a, A000010, A000010.P4673923239450215316.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A036234, A036234.P2906282677021386800.a, A039649, A039649.P16717312505280968063.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A082515

/-! ## A082515.P7493492763058500904

`A037228(n+1)+2*A000720(n+1)`
-/

namespace A082515.P7493492763058500904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037228 (n + 1) + 2 * A000720 (n + 1)

end

end A082515.P7493492763058500904

namespace A082515

/-- `A037228(n+1)+2*A000720(n+1)` -/
def P7493492763058500904.Spec : Prop :=
  ∀ n, P7493492763058500904.a n = A082515 (n + 1)

theorem P7493492763058500904.correct : P7493492763058500904.Spec := by
  intro n
  simp only [A082515, Nat.add_sub_cancel, A082515.P7493492763058500904.a, A082515.P15614925756413171437.a, A000010, A000010.P4673923239450215316.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A037228, A037228.P4220557198165153324.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A082515

/-!
# A082516: Differences between consecutive Niven (or Harshad) numbers.

The programs for A082516, there is no canonical definition to state claims against.
-/

/-! ## A082516.P640733728930259819

`A005349(n+2)-A005349(n+1)`
-/

namespace A082516.P640733728930259819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005349 (n + 2) - A005349 (n + 1)

end

end A082516.P640733728930259819

/-! ## A082516.P7576515895828089383

`Δ[A005349(n+1)]`
-/

namespace A082516.P7576515895828089383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005349 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A082516.P7576515895828089383

/-! ## A082516.P8785092591654380737

`Δ[∪[A051004(n+1), A087141(n+1)]]`
-/

namespace A082516.P8785092591654380737
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051004 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087141 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A082516.P8785092591654380737

/-! ## A082516.P3994989706251600697

`Δ[∪[A101813(n+1), A101814(n+1)]]`
-/

namespace A082516.P3994989706251600697
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101813 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101814 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A082516.P3994989706251600697

/-! ## A082516.P10405807468404538128

`Δ[∪[A087141(n+1), A217973(n+1)]]`
-/

namespace A082516.P10405807468404538128
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087141 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217973 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A082516.P10405807468404538128

/-! ## A082516.P17340206501671625965

`Δ[A113315(n+1)*A325454(n+1)]`
-/

namespace A082516.P17340206501671625965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113315 (n + 1) * A325454 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A082516.P17340206501671625965

/-! ## A082516.P4537146777721595482

`Δ[lt[(n+1)%∑{digits}[n+1, #], 1]]`
-/

namespace A082516.P4537146777721595482
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) % ((SequenceMachineLib.digits10 (f3 n)).map fun (x : ℕ) => x).sum

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f4 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A082516.P4537146777721595482

/-! ## A082516.P7686887407603139772

`Δ[record[A360074(n+1)]]`
-/

namespace A082516.P7686887407603139772
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360074 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A082516.P7686887407603139772

/-! ## A082516.P8252372431047670438

`Δ[eq[0, A070635(n+1)]]`
-/

namespace A082516.P8252372431047670438
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070635 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A082516.P8252372431047670438

/-! ## A082516.P14430771946218530224

`Δ[lt[A065518(n+1), 2]]`
-/

namespace A082516.P14430771946218530224
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065518 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A082516.P14430771946218530224

/-!
# A082517: Numbers n such that N(n+1) - N(n) sets a new record, where N(n) = A005349.

The programs for A082517, there is no canonical definition to state claims against.
-/

/-! ## A082517.P8445173773255882551

`A086706(A337076(n+1))`
-/

namespace A082517.P8445173773255882551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086706 (A337076 (n + 1)).toNat

end

end A082517.P8445173773255882551

/-!
# A082519: Number of times that k^2 + (n-k)^2 is prime for 1 <= k <= n-1.

The programs for A082519, there is no canonical definition to state claims against.
-/

/-! ## A082519.P8373287656735738733

`and(A218859(n+2), A280560(n))`
-/

namespace A082519.P8373287656735738733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A218859 (n + 2)) (A280560 n)

end

end A082519.P8373287656735738733

/-! ## A082519.P2867740593531759814

`and(-A000034(n), A218859(n+2))`
-/

namespace A082519.P2867740593531759814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A000034 n) (A218859 (n + 2))

end

end A082519.P2867740593531759814

/-! ## A082519.P1393153242264164724

`or(A028920(n+1), A218859(n+2))-A028920(n+1)`
-/

namespace A082519.P1393153242264164724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A028920 (n + 1)) (A218859 (n + 2)) - A028920 (n + 1)

end

end A082519.P1393153242264164724

/-! ## A082519.P9388960856938208391

`and(A095121(n), A218859(n+2))`
-/

namespace A082519.P9388960856938208391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A095121 n) (A218859 (n + 2))

end

end A082519.P9388960856938208391

/-! ## A082519.P13198618800175867802

`and(∑[A007679(n+1)], A218859(n+2))`
-/

namespace A082519.P13198618800175867802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007679 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (∑ j ∈ Finset.range (n + 1), f1 j) (A218859 (n + 2))

end

end A082519.P13198618800175867802

/-!
# A082520: Palindromic Sophie Germain primes: both p and 2p+1 are palindromic primes.

The programs for A082520, there is no canonical definition to state claims against.
-/

/-! ## A082520.P9832007515535595461

`floor(A082565(n+1)/2)`
-/

namespace A082520.P9832007515535595461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A082565 (n + 1) : ℚ) / 2⌋

end

end A082520.P9832007515535595461

/-! ## A082520.P3683490514423663171

`ceil(or(-1, A067992(n))+A082565(n+1)/2)`
-/

namespace A082520.P3683490514423663171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Int.lor (-1) (A067992 n) : ℚ) + (A082565 (n + 1) : ℚ) / 2⌉

end

end A082520.P3683490514423663171

/-! ## A082520.P9498135478009675789

`(A082565(n+1)-1)/A000005(A030460(n+1))`
-/

namespace A082520.P9498135478009675789
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A082565 (n + 1) - 1 : ℚ) / (A000005 (A030460 (n + 1)).toNat : ℚ)

end

end A082520.P9498135478009675789

/-! ## A082520.P7941372871009543607

`(A082565(n+1)-1)/A000034(A043904(n+1))`
-/

namespace A082520.P7941372871009543607
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A082565 (n + 1) - 1 : ℚ) / (A000034 (A043904 (n + 1)).toNat : ℚ)

end

end A082520.P7941372871009543607

/-! ## A082520.P15040098043951030113

`(A082565(n+1)-A014963(A000010(33*(n+1))))/2`
-/

namespace A082520.P15040098043951030113
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A082565 (n + 1) - A014963 (A000010 (33 * (n + 1))).toNat : ℚ) / 2

end

end A082520.P15040098043951030113

/-! ## A082520.P18272846009200497717

`∩[A051835(n+1), A069881(n+1)]`
-/

namespace A082520.P18272846009200497717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051835 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069881 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A082520.P18272846009200497717

/-!
# A082522: Numbers of the form p^(2^k) with p prime and k>0.

The programs for A082522, the canonical program `A082522.P5892597509266673484` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082522 has offset 1).

The definition of A082522 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A050376, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A082522.P5892597509266673484

`A050376(n+1)²`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A082522

/-- `A050376(n+1)²` -/
def P5892597509266673484.Spec : Prop :=
  ∀ n, P5892597509266673484.a n = A082522 (n + 1)

theorem P5892597509266673484.correct : P5892597509266673484.Spec := by
  intro n
  simp only [A082522, Nat.add_sub_cancel]

end A082522

/-! ## A082522.P9382782611959821554

`A050376(A181970(n+1))`
-/

namespace A082522.P9382782611959821554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050376 (A181970 (n + 1)).toNat

end

end A082522.P9382782611959821554

namespace A082522

/-- `A050376(A181970(n+1))` -/
def P9382782611959821554.Spec : Prop :=
  ∀ n, P9382782611959821554.a n = A082522 (n + 1)

end A082522

/-! ## A082522.P2605228666636292478

`A050376(A000027(n+1))^2`
-/

namespace A082522.P2605228666636292478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050376 (A000027 (n + 1)).toNat ^ 2

end

end A082522.P2605228666636292478

namespace A082522

/-- `A050376(A000027(n+1))^2` -/
def P2605228666636292478.Spec : Prop :=
  ∀ n, P2605228666636292478.a n = A082522 (n + 1)

end A082522

/-! ## A082522.P11133944564431078732

`A050376(n+1)^(2%A278041(n))`
-/

namespace A082522.P11133944564431078732
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050376 (n + 1) : ℚ) ^ (Int.tmod 2 (A278041 n) : ℤ)

end

end A082522.P11133944564431078732

namespace A082522

/-- `A050376(n+1)^(2%A278041(n))` -/
def P11133944564431078732.Spec : Prop :=
  ∀ n, P11133944564431078732.a n = (A082522 (n + 1) : ℚ)

end A082522

/-! ## A082522.P17735456963580147194

`A050376(n+1)^A353486(or(1, n))`
-/

namespace A082522.P17735456963580147194
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050376 (n + 1) : ℚ) ^ (A353486 (Nat.lor 1 n) : ℤ)

end

end A082522.P17735456963580147194

namespace A082522

/-- `A050376(n+1)^A353486(or(1, n))` -/
def P17735456963580147194.Spec : Prop :=
  ∀ n, P17735456963580147194.a n = (A082522 (n + 1) : ℚ)

end A082522

/-! ## A082522.P9220359342468143636

`A050376(n+1)^A118821(A093178(n))`
-/

namespace A082522.P9220359342468143636
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050376 (n + 1) : ℚ) ^ (A118821 (A093178 n).toNat : ℤ)

end

end A082522.P9220359342468143636

namespace A082522

/-- `A050376(n+1)^A118821(A093178(n))` -/
def P9220359342468143636.Spec : Prop :=
  ∀ n, P9220359342468143636.a n = (A082522 (n + 1) : ℚ)

end A082522

/-! ## A082522.P17750193770260569034

`A050376(A000027(n+1))*A050376(n+1)`
-/

namespace A082522.P17750193770260569034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050376 (A000027 (n + 1)).toNat * A050376 (n + 1)

end

end A082522.P17750193770260569034

namespace A082522

/-- `A050376(A000027(n+1))*A050376(n+1)` -/
def P17750193770260569034.Spec : Prop :=
  ∀ n, P17750193770260569034.a n = A082522 (n + 1)

end A082522

/-! ## A082522.P13605199281467062201

`A084400(n+2)²`
-/

namespace A082522.P13605199281467062201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084400 (n + 2) ^ 2

end

end A082522.P13605199281467062201

namespace A082522

/-- `A084400(n+2)²` -/
def P13605199281467062201.Spec : Prop :=
  ∀ n, P13605199281467062201.a n = A082522 (n + 1)

end A082522

/-! ## A082522.P4949024554820827759

`A050376(n+1)*A084400(n+2)`
-/

namespace A082522.P4949024554820827759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050376 (n + 1) * A084400 (n + 2)

end

end A082522.P4949024554820827759

namespace A082522

/-- `A050376(n+1)*A084400(n+2)` -/
def P4949024554820827759.Spec : Prop :=
  ∀ n, P4949024554820827759.a n = A082522 (n + 1)

theorem P4949024554820827759.correct : P4949024554820827759.Spec := by
  intro n
  simp only [A082522, Nat.add_sub_cancel, A082522.P4949024554820827759.a, A082522.P5892597509266673484.a, A050376, A050376.P8445497075527543903.a, A084400, A084400.P13046145720619798035.f1, A084400.P13046145720619798035.a, A302777, A302777.P12979743537694390003.a, A100995, A100995.P9596901243079307024.f1, A100995.P9596901243079307024.a, A209229, A209229.P14119267658822519212.f1, A209229.P14119267658822519212.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A082522

/-! ## A082522.P1643897905652049523

`record[(A340087(n+1)+1)²]`
-/

namespace A082522.P1643897905652049523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A340087 (n + 1) + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A082522.P1643897905652049523

namespace A082522

/-- `record[(A340087(n+1)+1)²]` -/
def P1643897905652049523.Spec : Prop :=
  ∀ n, P1643897905652049523.a n = A082522 (n + 1)

end A082522

/-! ## A082522.P266221591924767569

`record[A300840(n+3)²]`
-/

namespace A082522.P266221591924767569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300840 (n + 3) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A082522.P266221591924767569

namespace A082522

/-- `record[A300840(n+3)²]` -/
def P266221591924767569.Spec : Prop :=
  ∀ n, P266221591924767569.a n = A082522 (n + 1)

end A082522

/-! ## A082522.P14733540138516507109

`(eq[1, A302777(n+1)]+1)²`
-/

namespace A082522.P14733540138516507109
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302777 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) ^ 2

end

end A082522.P14733540138516507109

namespace A082522

/-- `(eq[1, A302777(n+1)]+1)²` -/
def P14733540138516507109.Spec : Prop :=
  ∀ n, (P14733540138516507109.a n : ℤ) = A082522 (n + 1)

end A082522

/-! ## A082522.P2915064662489172125

`(eq[1, A318306(n+1)]+1)²`
-/

namespace A082522.P2915064662489172125
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318306 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) ^ 2

end

end A082522.P2915064662489172125

namespace A082522

/-- `(eq[1, A318306(n+1)]+1)²` -/
def P2915064662489172125.Spec : Prop :=
  ∀ n, (P2915064662489172125.a n : ℤ) = A082522 (n + 1)

end A082522

/-! ## A082522.P10261537074843999579

`(eq[2, A293444(n+1)]+1)²`
-/

namespace A082522.P10261537074843999579
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293444 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) ^ 2

end

end A082522.P10261537074843999579

namespace A082522

/-- `(eq[2, A293444(n+1)]+1)²` -/
def P10261537074843999579.Spec : Prop :=
  ∀ n, (P10261537074843999579.a n : ℤ) = A082522 (n + 1)

end A082522

/-! ## A082522.P4888390466122736864

`(eq[2, A305979(n+1)]+1)²`
-/

namespace A082522.P4888390466122736864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305979 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) ^ 2

end

end A082522.P4888390466122736864

namespace A082522

/-- `(eq[2, A305979(n+1)]+1)²` -/
def P4888390466122736864.Spec : Prop :=
  ∀ n, (P4888390466122736864.a n : ℤ) = A082522 (n + 1)

end A082522

/-! ## A082522.P18445337221199488095

`(eq[1, A064547(n+1)]+1)²`
-/

namespace A082522.P18445337221199488095
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064547 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) ^ 2

end

end A082522.P18445337221199488095

namespace A082522

/-- `(eq[1, A064547(n+1)]+1)²` -/
def P18445337221199488095.Spec : Prop :=
  ∀ n, (P18445337221199488095.a n : ℤ) = A082522 (n + 1)

end A082522

/-! ## A082522.P12550819313404727778

`∩[A025475(n+1), A340674(n+1)]`
-/

namespace A082522.P12550819313404727778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025475 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340674 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A082522.P12550819313404727778

namespace A082522

/-- `∩[A025475(n+1), A340674(n+1)]` -/
def P12550819313404727778.Spec : Prop :=
  ∀ n, (P12550819313404727778.a n : ℤ) = A082522 (n + 1)

end A082522

/-! ## A082522.P9217913881547255457

`∩[A056798(n+1), A340674(n+1)]`
-/

namespace A082522.P9217913881547255457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056798 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340674 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A082522.P9217913881547255457

namespace A082522

/-- `∩[A056798(n+1), A340674(n+1)]` -/
def P9217913881547255457.Spec : Prop :=
  ∀ n, (P9217913881547255457.a n : ℤ) = A082522 (n + 1)

end A082522

/-! ## A082522.P16176115565254340487

`∩[A073540(n+1), A340674(n+1)]`
-/

namespace A082522.P16176115565254340487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073540 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340674 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A082522.P16176115565254340487

namespace A082522

/-- `∩[A073540(n+1), A340674(n+1)]` -/
def P16176115565254340487.Spec : Prop :=
  ∀ n, (P16176115565254340487.a n : ℤ) = A082522 (n + 1)

end A082522

/-! ## A082522.P4682690372975424337

`∩[A134611(n+1), A340674(n+1)]`
-/

namespace A082522.P4682690372975424337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134611 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340674 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A082522.P4682690372975424337

namespace A082522

/-- `∩[A134611(n+1), A340674(n+1)]` -/
def P4682690372975424337.Spec : Prop :=
  ∀ n, (P4682690372975424337.a n : ℤ) = A082522 (n + 1)

end A082522

/-!
# A082523: Number of times k^2 + (n-k)^2 is a square for 1 <= k <= n-1.

The programs for A082523, the canonical program `A082523.P18246598000840909039` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082523 has offset 2).

The definition of A082523 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A082523.P18246598000840909039

`2*A331671(n+2)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A082523

/-- `2*A331671(n+2)` -/
def P18246598000840909039.Spec : Prop :=
  ∀ n, P18246598000840909039.a n = A082523 (n + 2)

theorem P18246598000840909039.correct : P18246598000840909039.Spec := by
  intro n
  simp only [A082523, Nat.add_sub_cancel]

end A082523

/-! ## A082523.P6602122112342119276

`A005843(A331671(n+2))`
-/

namespace A082523.P6602122112342119276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A331671 (n + 2)).toNat

end

end A082523.P6602122112342119276

namespace A082523

/-- `A005843(A331671(n+2))` -/
def P6602122112342119276.Spec : Prop :=
  ∀ n, P6602122112342119276.a n = A082523 (n + 2)

end A082523

/-! ## A082523.P10109162751565594598

`A331671(char[1]+2+n)+A331671(n+2)`
-/

namespace A082523.P10109162751565594598
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331671 ((if ∃ j, f1 j = n then 1 else 0) + 2 + n) + A331671 (n + 2)

end

end A082523.P10109162751565594598

namespace A082523

/-- `A331671(char[1]+2+n)+A331671(n+2)` -/
def P10109162751565594598.Spec : Prop :=
  ∀ n, P10109162751565594598.a n = A082523 (n + 2)

end A082523

/-! ## A082523.P16718700271559466993

`A001222(4^A331671(n+2))`
-/

namespace A082523.P16718700271559466993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((4 : ℚ) ^ (A331671 (n + 2) : ℤ))).toNat

end

end A082523.P16718700271559466993

namespace A082523

/-- `A001222(4^A331671(n+2))` -/
def P16718700271559466993.Spec : Prop :=
  ∀ n, P16718700271559466993.a n = A082523 (n + 2)

end A082523

/-! ## A082523.P1555193439897576643

`∑{d}[4^A331671(n+2), A001221(#)]`
-/

namespace A082523.P1555193439897576643
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) ^ (A331671 (n + 2) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, A001221 d

end

end A082523.P1555193439897576643

namespace A082523

/-- `∑{d}[4^A331671(n+2), A001221(#)]` -/
def P1555193439897576643.Spec : Prop :=
  ∀ n, P1555193439897576643.a n = A082523 (n + 2)

end A082523

/-! ## A082523.P1657609185039084198

`2*A374061(A140215(n+2))`
-/

namespace A082523.P1657609185039084198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A374061 (A140215 (n + 2)).toNat

end

end A082523.P1657609185039084198

namespace A082523

/-- `2*A374061(A140215(n+2))` -/
def P1657609185039084198.Spec : Prop :=
  ∀ n, P1657609185039084198.a n = A082523 (n + 2)

end A082523

/-! ## A082523.P23849509135766388

`2*A374061(A140651(n+2))`
-/

namespace A082523.P23849509135766388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A374061 (A140651 (n + 2)).toNat

end

end A082523.P23849509135766388

namespace A082523

/-- `2*A374061(A140651(n+2))` -/
def P23849509135766388.Spec : Prop :=
  ∀ n, P23849509135766388.a n = A082523 (n + 2)

end A082523

/-! ## A082523.P4396341278064520404

`2*A374061(A170826(n+2))`
-/

namespace A082523.P4396341278064520404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A374061 (A170826 (n + 2)).toNat

end

end A082523.P4396341278064520404

namespace A082523

/-- `2*A374061(A170826(n+2))` -/
def P4396341278064520404.Spec : Prop :=
  ∀ n, P4396341278064520404.a n = A082523 (n + 2)

end A082523

/-! ## A082523.P15395015884721856750

`A331671((n+2)²)`
-/

namespace A082523.P15395015884721856750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331671 ((n + 2) ^ 2)

end

end A082523.P15395015884721856750

namespace A082523

/-- `A331671((n+2)²)` -/
def P15395015884721856750.Spec : Prop :=
  ∀ n, P15395015884721856750.a n = A082523 (n + 2)

end A082523

/-! ## A082523.P11954310023388216047

`A035185((n+2)²)-1`
-/

namespace A082523.P11954310023388216047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035185 ((n + 2) ^ 2) - 1

end

end A082523.P11954310023388216047

namespace A082523

/-- `A035185((n+2)²)-1` -/
def P11954310023388216047.Spec : Prop :=
  ∀ n, P11954310023388216047.a n = A082523 (n + 2)

end A082523

/-!
# A082524: a(1)=1, a(2)=2, then use the rule when a(n) is the end of a run, n appears a(n) times.

The programs for A082524, the canonical program `A082524.P7353352112192645601` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082524 has offset 1).

The definition of A082524 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A082524.P7709759923550371346

`eq[1, round(a(floor(n/ϕ)))]-n+1` with `a(0)=1, a(1)=5, a(2)=1, a(3)=1, a(4)=2`

`round` is left out, it is the identity on integers.
-/

namespace A082524.P7709759923550371346
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 5, 1, 1, 2] fun n f2 =>
  f2 ⌊(n : ℝ) / Real.goldenRatio⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℤ) - (n : ℤ) + 1

end

end A082524.P7709759923550371346

namespace A082524

/-- `eq[1, round(a(floor(n/ϕ)))]-n+1` -/
def P7709759923550371346.Spec : Prop :=
  ∀ n, P7709759923550371346.a n = A082524 (n + 1)

end A082524

/-! ## A082524.P7353352112192645601

`(a(n-1)-n)%a(a(n-1)-2)+n` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A082524

/-- `(a(n-1)-n)%a(a(n-1)-2)+n` -/
def P7353352112192645601.Spec : Prop :=
  ∀ n, P7353352112192645601.a n = A082524 (n + 1)

theorem P7353352112192645601.correct : P7353352112192645601.Spec := by
  intro n
  simp only [A082524, Nat.add_sub_cancel]

end A082524

/-! ## A082524.P1283910161034548138

`n-(n-a(n-1))%a(a(n-1)-2)` with `a(0)=1, a(1)=2`
-/

namespace A082524.P1283910161034548138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  (n : ℤ) - Int.tmod ((n : ℤ) - a (n - 1)) (a (a (n - 1) - 2).toNat)

end

end A082524.P1283910161034548138

namespace A082524

/-- `n-(n-a(n-1))%a(a(n-1)-2)` -/
def P1283910161034548138.Spec : Prop :=
  ∀ n, P1283910161034548138.a n = A082524 (n + 1)

end A082524

/-! ## A082524.P13011812866677366316

`A256654(A005378(n+1))`
-/

namespace A082524.P13011812866677366316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256654 (A005378 (n + 1)).toNat

end

end A082524.P13011812866677366316

namespace A082524

/-- `A256654(A005378(n+1))` -/
def P13011812866677366316.Spec : Prop :=
  ∀ n, P13011812866677366316.a n = A082524 (n + 1)

end A082524

/-! ## A082524.P7911426757656963990

`A087172(n+1-A003849(n+2))`
-/

namespace A082524.P7911426757656963990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087172 ((n + 1 : ℤ) - A003849 (n + 2)).toNat

end

end A082524.P7911426757656963990

namespace A082524

/-- `A087172(n+1-A003849(n+2))` -/
def P7911426757656963990.Spec : Prop :=
  ∀ n, P7911426757656963990.a n = A082524 (n + 1)

end A082524

/-! ## A082524.P3822093989181321101

`A087172(n+2-A280521(n+1))`
-/

namespace A082524.P3822093989181321101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087172 ((n + 2 : ℤ) - A280521 (n + 1)).toNat

end

end A082524.P3822093989181321101

namespace A082524

/-- `A087172(n+2-A280521(n+1))` -/
def P3822093989181321101.Spec : Prop :=
  ∀ n, P3822093989181321101.a n = A082524 (n + 1)

end A082524

/-! ## A082524.P4259538726654772433

`A087172(n+2-A007895(n+2))`
-/

namespace A082524.P4259538726654772433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087172 ((n + 2 : ℤ) - A007895 (n + 2)).toNat

end

end A082524.P4259538726654772433

namespace A082524

/-- `A087172(n+2-A007895(n+2))` -/
def P4259538726654772433.Spec : Prop :=
  ∀ n, P4259538726654772433.a n = A082524 (n + 1)

end A082524

/-! ## A082524.P16108822838695847254

`A130312(A256654(n+1)+1)`
-/

namespace A082524.P16108822838695847254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130312 (A256654 (n + 1) + 1).toNat

end

end A082524.P16108822838695847254

namespace A082524

/-- `A130312(A256654(n+1)+1)` -/
def P16108822838695847254.Spec : Prop :=
  ∀ n, P16108822838695847254.a n = A082524 (n + 1)

end A082524

/-! ## A082524.P17812274993585205415

`A130312(A130312(n+2)+n)`
-/

namespace A082524.P17812274993585205415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130312 (A130312 (n + 2) + (n : ℤ)).toNat

end

end A082524.P17812274993585205415

namespace A082524

/-- `A130312(A130312(n+2)+n)` -/
def P17812274993585205415.Spec : Prop :=
  ∀ n, P17812274993585205415.a n = A082524 (n + 1)

end A082524

/-! ## A082524.P13357472402994856224

`A130312(A247425(n+1))`
-/

namespace A082524.P13357472402994856224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130312 (A247425 (n + 1)).toNat

end

end A082524.P13357472402994856224

namespace A082524

/-- `A130312(A247425(n+1))` -/
def P13357472402994856224.Spec : Prop :=
  ∀ n, P13357472402994856224.a n = A082524 (n + 1)

end A082524

/-! ## A082524.P6633411612041989285

`A130312(a(n-1)+n)` with `a(0)=1, a(1)=2`
-/

namespace A082524.P6633411612041989285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A130312 (a (n - 1) + (n : ℤ)).toNat

end

end A082524.P6633411612041989285

namespace A082524

/-- `A130312(a(n-1)+n)` -/
def P6633411612041989285.Spec : Prop :=
  ∀ n, P6633411612041989285.a n = A082524 (n + 1)

end A082524

/-! ## A082524.P3742233569355031988

`A087172(A241422(2*n+1)+n)`
-/

namespace A082524.P3742233569355031988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087172 (A241422 (2 * n + 1) + (n : ℤ)).toNat

end

end A082524.P3742233569355031988

namespace A082524

/-- `A087172(A241422(2*n+1)+n)` -/
def P3742233569355031988.Spec : Prop :=
  ∀ n, P3742233569355031988.a n = A082524 (n + 1)

end A082524

/-! ## A082524.P7234041653284886218

`A280686(n*a(n-1))` with `a(0)=1, a(1)=2`
-/

namespace A082524.P7234041653284886218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A280686 ((n : ℤ) * a (n - 1)).toNat

end

end A082524.P7234041653284886218

namespace A082524

/-- `A280686(n*a(n-1))` -/
def P7234041653284886218.Spec : Prop :=
  ∀ n, P7234041653284886218.a n = A082524 (n + 1)

end A082524

/-! ## A082524.P1878252781848979399

`A054494(n*a(n-1))` with `a(0)=1, a(1)=2`
-/

namespace A082524.P1878252781848979399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A054494 ((n : ℤ) * a (n - 1)).toNat

end

end A082524.P1878252781848979399

namespace A082524

/-- `A054494(n*a(n-1))` -/
def P1878252781848979399.Spec : Prop :=
  ∀ n, P1878252781848979399.a n = A082524 (n + 1)

end A082524

/-!
# A082525: Numerators of coefficients in (1+x)^(1+x) power series.

The programs for A082525, there is no canonical definition to state claims against.
-/

/-! ## A082525.P14914053635817891242

`A005727(n)/gcd(A000142(n), A005727(n))`
-/

namespace A082525.P14914053635817891242
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005727 n : ℚ) / (Int.gcd (A000142 n) (A005727 n) : ℚ)

end

end A082525.P14914053635817891242

/-! ## A082525.P6785435469416674596

`or(1, Δ[A336014(A206268(n))])`
-/

namespace A082525.P6785435469416674596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336014 (A206268 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (n + 1) - f1 n)

end

end A082525.P6785435469416674596

/-! ## A082525.P4774022333528050592

`Δ[A305749(A163493(n)+1)]+1`
-/

namespace A082525.P4774022333528050592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305749 (A163493 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A082525.P4774022333528050592

/-! ## A082525.P4491220824103420818

`A168377(A309468(∑[gcd(3, n)]-3))`
-/

namespace A082525.P4491220824103420818
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168377 (A309468 (∑ j ∈ Finset.range (n + 1), f1 j - 3)).toNat

end

end A082525.P4491220824103420818

/-! ## A082525.P8004971237283053658

`A309564(C(A309530(n), A306846(n)))`
-/

namespace A082525.P8004971237283053658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309564 (Nat.choose (A309530 n).toNat (A306846 n).toNat)

end

end A082525.P8004971237283053658

/-!
# A082526: Denominators of coefficients in (1+x)^(1+x) power series.

The programs for A082526, there is no canonical definition to state claims against.
-/

/-! ## A082526.P17130780420849091429

`n!/gcd(A000142(n), A005727(n))`
-/

namespace A082526.P17130780420849091429
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) / (Int.gcd (A000142 n) (A005727 n) : ℚ)

end

end A082526.P17130780420849091429

/-! ## A082526.P10547652426809834688

`A000142(n)/A005727(n)*A082525(n)`
-/

namespace A082526.P10547652426809834688
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n : ℚ) / (A005727 n : ℚ) * (A082525 n : ℚ)

end

end A082526.P10547652426809834688

/-! ## A082526.P10418801028821390398

`A096115(A036717(n))`
-/

namespace A082526.P10418801028821390398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096115 (A036717 n).toNat

end

end A082526.P10418801028821390398

/-! ## A082526.P17478877724406493142

`A025452(A357923(n))`
-/

namespace A082526.P17478877724406493142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025452 (A357923 n).toNat

end

end A082526.P17478877724406493142

/-!
# A082527: Least k such that x(k)=0 where x(1)=n and x(k)=k^2*floor(x(k-1)/k^2).

The programs for A082527, there is no canonical definition to state claims against.
-/

/-! ## A082527.P17069264921559695327

`∑[val(A133906(n+3), A133945(n+5))]`
-/

namespace A082527.P17069264921559695327
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A133906 (n + 3)).toNat (A133945 (n + 5)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082527.P17069264921559695327

/-! ## A082527.P3647388681669204856

`∑[and(1, A256282(A151747(n)))]`
-/

namespace A082527.P3647388681669204856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A256282 (A151747 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082527.P3647388681669204856

/-! ## A082527.P16499791747354451982

`∑[A178225(∑{d}[A151747(n), #])]`
-/

namespace A082527.P16499791747354451982
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151747 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178225 (∑ d ∈ Nat.divisors (f2 n).natAbs, d)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082527.P16499791747354451982

/-! ## A082527.P13066872654195506298

`A005185(ceil(sqrt(A342733(n+1))))`
-/

namespace A082527.P13066872654195506298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005185 ⌈Real.sqrt (A342733 (n + 1) : ℝ)⌉.toNat

end

end A082527.P13066872654195506298

/-! ## A082527.P772009231832199839

`∑[A053866(A112269(n+1))]+1`
-/

namespace A082527.P772009231832199839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053866 (A112269 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A082527.P772009231832199839

/-! ## A082527.P2287202638105296823

`∑[A046920(A005555(n)*A069177(n+1))]`
-/

namespace A082527.P2287202638105296823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046920 (A005555 n * A069177 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082527.P2287202638105296823

/-!
# A082528: Least k such that x(k)=0 where x(1)=n x(k)=k^3*floor(x(k-1)/k^3).

The programs for A082528, there is no canonical definition to state claims against.
-/

/-! ## A082528.P10975911921584978642

`A055642((A006068(n)+1)*(n+4))`
-/

namespace A082528.P10975911921584978642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 ((A006068 n + 1) * (n + 4 : ℤ)).toNat

end

end A082528.P10975911921584978642

/-! ## A082528.P14103288069166149850

`A055642(A333255(n+1)+A079544(n+1))`
-/

namespace A082528.P14103288069166149850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A333255 (n + 1) + A079544 (n + 1)).toNat

end

end A082528.P14103288069166149850

/-! ## A082528.P6689126232440426247

`A356852(A057265(n+1)-A227320(n+1))`
-/

namespace A082528.P6689126232440426247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356852 (A057265 (n + 1) - A227320 (n + 1)).toNat

end

end A082528.P6689126232440426247

/-! ## A082528.P3965381007268339899

`A356852(A065091(2*(n+1))-A319656(n))`
-/

namespace A082528.P3965381007268339899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356852 (A065091 (2 * (n + 1)) - A319656 n).toNat

end

end A082528.P3965381007268339899

/-! ## A082528.P4139089949491411653

`A055642(∑[A005940(n+5)+1])`
-/

namespace A082528.P4139089949491411653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (n + 5) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A082528.P4139089949491411653

/-! ## A082528.P4941939583593355133

`A055642(∑[∑[A373403(n+1)]+3])`
-/

namespace A082528.P4941939583593355133
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373403 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A082528.P4941939583593355133

/-! ## A082528.P12951174481270227843

`A055642(A382288(n)+A072502(n+1))`
-/

namespace A082528.P12951174481270227843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A382288 n + A072502 (n + 1)).toNat

end

end A082528.P12951174481270227843

/-! ## A082528.P16761298794890654909

`A055642(A333766(n)+A324855(n+3))`
-/

namespace A082528.P16761298794890654909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A333766 n + A324855 (n + 3)).toNat

end

end A082528.P16761298794890654909

/-! ## A082528.P15958260788837397731

`A055642(A191113(n+5)*A333766(n))`
-/

namespace A082528.P15958260788837397731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A191113 (n + 5) * A333766 n).toNat

end

end A082528.P15958260788837397731

/-! ## A082528.P10877413453268624264

`A105783(A090792(n))`
-/

namespace A082528.P10877413453268624264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105783 (A090792 n).toNat

end

end A082528.P10877413453268624264

/-!
# A082530: a(1)=1, a(n)=5*a(n-1)+1 if a(n-1) is odd, a(n)=a(n-1)/2+1 otherwise.

The programs for A082530, the canonical program `A082530.P17575170684115903491` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082530 has offset 1).

The definition of A082530 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A082530.P17575170684115903491

`A004151(5*a(n-1))+1` with `a(0)=1`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A082530

/-- `A004151(5*a(n-1))+1` -/
def P17575170684115903491.Spec : Prop :=
  ∀ n, P17575170684115903491.a n = A082530 (n + 1)

theorem P17575170684115903491.correct : P17575170684115903491.Spec := by
  intro n
  simp only [A082530, Nat.add_sub_cancel]

end A082530

/-!
# A082531: (-1)^n * coefficient of x^n in 1/x-1/(1-eta(x)) power series.

The programs for A082531, there is no canonical definition to state claims against.
-/

/-! ## A082531.P5872041958489913295

`A356944(A120446(n+1))`
-/

namespace A082531.P5872041958489913295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356944 (A120446 (n + 1)).toNat

end

end A082531.P5872041958489913295

/-! ## A082531.P14397669884014351672

`A000194(A052962(n))-A102681(n)`
-/

namespace A082531.P14397669884014351672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A052962 n).toNat - A102681 n

end

end A082531.P14397669884014351672

/-! ## A082531.P6196401545359973521

`A083375(A370718(n))`
-/

namespace A082531.P6196401545359973521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083375 (A370718 n).toNat

end

end A082531.P6196401545359973521

/-! ## A082531.P2606854871540693050

`A083375(A383495(n))`
-/

namespace A082531.P2606854871540693050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083375 (A383495 n).toNat

end

end A082531.P2606854871540693050

/-! ## A082531.P3722210927175642743

`A083375(A014267(n+1))`
-/

namespace A082531.P3722210927175642743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083375 (A014267 (n + 1)).toNat

end

end A082531.P3722210927175642743

/-!
# A082532: a(n) = n^2 - 2*floor(n/sqrt(2))^2.

The programs for A082532, the canonical program `A082532.P12556044979059913067` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082532 has offset 1).

The definition of A082532 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)²-2*floor((n+1)/sqrt(2))²` (program `A082532.P12556044979059913067`, by `A082532.P12556044979059913067.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A082532.P12556044979059913067

`(n+1)²-2*floor((n+1)/sqrt(2))²`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A082532

/-- `(n+1)²-2*floor((n+1)/sqrt(2))²` -/
def P12556044979059913067.Spec : Prop :=
  ∀ n, P12556044979059913067.a n = A082532 (n + 1)

theorem P12556044979059913067.correct : P12556044979059913067.Spec := by
  intro n
  simp only [A082532, Nat.add_sub_cancel]

end A082532

/-! ## A082532.P4352674767353887249

`A087056(A003152(n+1))`
-/

namespace A082532.P4352674767353887249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087056 (A003152 (n + 1)).toNat

end

end A082532.P4352674767353887249

namespace A082532

/-- `A087056(A003152(n+1))` -/
def P4352674767353887249.Spec : Prop :=
  ∀ n, P4352674767353887249.a n = A082532 (n + 1)

end A082532

/-! ## A082532.P313414814355012862

`A087059(A187971(n+1))`
-/

namespace A082532.P313414814355012862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087059 (A187971 (n + 1)).toNat

end

end A082532.P313414814355012862

namespace A082532

/-- `A087059(A187971(n+1))` -/
def P313414814355012862.Spec : Prop :=
  ∀ n, P313414814355012862.a n = A082532 (n + 1)

end A082532

/-!
# A082533: Number of primes p such that p can be expressed as the sum of consecutive primes with largest prime in the sum = n-th prime.

The programs for A082533, there is no canonical definition to state claims against.
-/

/-! ## A082533.P14475141166536841298

`A076905(A000120(∑[A166450(n+1)]))`
-/

namespace A082533.P14475141166536841298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166450 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076905 (A000120 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A082533.P14475141166536841298

/-! ## A082533.P9300720974858360364

`A339365(n)+A165633(A002088(n+4))`
-/

namespace A082533.P9300720974858360364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339365 n + A165633 (A002088 (n + 4)).toNat

end

end A082533.P9300720974858360364

/-! ## A082533.P9386355744533645810

`A257839(n+3)-A000161(A000071(n+6))`
-/

namespace A082533.P9386355744533645810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257839 (n + 3) - A000161 (A000071 (n + 6)).toNat

end

end A082533.P9386355744533645810

/-! ## A082533.P2505350279390406446

`A058978(A104080(n)+A043717(n+1))`
-/

namespace A082533.P2505350279390406446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058978 (A104080 n + A043717 (n + 1)).toNat

end

end A082533.P2505350279390406446

/-! ## A082533.P7080875891054055741

`A334440(A022569(n)+A003309(n+5))`
-/

namespace A082533.P7080875891054055741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334440 (A022569 n + A003309 (n + 5)).toNat

end

end A082533.P7080875891054055741

/-!
# A082536: a(1) = 1; for n > 1, a(n) = smallest number greater than a(n-1) such that a(n-1)*a(n)+1 is a cube.

The programs for A082536, there is no canonical definition to state claims against.
-/

/-! ## A082536.P16950567311270217684

`A365661(A029471(n+1)-A100439(n+1))`
-/

namespace A082536.P16950567311270217684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365661 (A029471 (n + 1) - A100439 (n + 1)).toNat

end

end A082536.P16950567311270217684

/-!
# A082537: Cubes arising in A082536.

The programs for A082537, there is no canonical definition to state claims against.
-/

/-! ## A082537.P11887228925720107463

`(A082536(n+1)*A082536(n+2)+1)^(1/3)`
-/

namespace A082537.P11887228925720107463
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A082536 (n + 1) * A082536 (n + 2) + 1 : ℝ) ^ ((1 : ℚ) / 3 : ℝ)

end

end A082537.P11887228925720107463

/-!
# A082538: Number of numbers k which give 1 after applying exactly n iterations of the 3k+1 algorithm (if a number is even, divide it by 2; if it is odd, multiply by 3 and add 1). This total includes numbers k which also give 1 for a smaller number of iterations (i.e., for this sequence we do not assume the algorithm halts when 1 is reached).

The programs for A082538, there is no canonical definition to state claims against.
-/

/-! ## A082538.P15247646375683005558

`A005186(n)+a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A082538.P15247646375683005558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  A005186 n + a (n - 3)

end

end A082538.P15247646375683005558

/-! ## A082538.P1454083497303966916

`A131532(A095008(n+1))+A094991(n)`
-/

namespace A082538.P1454083497303966916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131532 (A095008 (n + 1)).toNat + A094991 n

end

end A082538.P1454083497303966916

/-! ## A082538.P8645269310151051169

`floor(root(A213907(2*n), 8))`
-/

namespace A082538.P8645269310151051169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A213907 (2 * n) : ℝ) ^ (1 / (8 : ℝ))⌋

end

end A082538.P8645269310151051169

/-! ## A082538.P2590055621822816223

`A048766(∑[a(n-1)+2^(n-1)])` with `a(0)=1, a(1)=0`
-/

namespace A082538.P2590055621822816223
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  f1 (n - 1) + (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A082538.P2590055621822816223

/-! ## A082538.P7873346392443354796

`A048766(A132732(n))`
-/

namespace A082538.P7873346392443354796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A132732 n).toNat

end

end A082538.P7873346392443354796

/-!
# A082539: Primes p such that there is no prime q, q < p with q+1 dividing p+1.

The programs for A082539, the canonical program `A082539.P16555288702611882584` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082539 has offset 1).

The definition of A082539 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1557 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A082539.P16555288702611882584

`A000040(lt[A084196(n+1), 1]+1)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A082539

/-- `A000040(lt[A084196(n+1), 1]+1)` -/
def P16555288702611882584.Spec : Prop :=
  ∀ n, P16555288702611882584.a n = A082539 (n + 1)

theorem P16555288702611882584.correct : P16555288702611882584.Spec := by
  intro n
  simp only [A082539, Nat.add_sub_cancel]

end A082539

/-! ## A082539.P4961989047852987275

`A000040(record[gcd(n+1, A084196(n+1))])`
-/

namespace A082539.P4961989047852987275
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A084196 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A082539.P4961989047852987275

namespace A082539

/-- `A000040(record[gcd(n+1, A084196(n+1))])` -/
def P4961989047852987275.Spec : Prop :=
  ∀ n, P4961989047852987275.a n = A082539 (n + 1)

end A082539

/-! ## A082539.P13900004014192925212

`p?[A000040(n+1)*A105235(A084196(n+1))]`
-/

namespace A082539.P13900004014192925212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A105235 (A084196 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A082539.P13900004014192925212

namespace A082539

/-- `p?[A000040(n+1)*A105235(A084196(n+1))]` -/
def P13900004014192925212.Spec : Prop :=
  ∀ n, P13900004014192925212.a n = A082539 (n + 1)

end A082539

/-! ## A082539.P11078104346932395345

`p?[A008578(n+2)*A105235(A084196(n+1))]`
-/

namespace A082539.P11078104346932395345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2) * A105235 (A084196 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A082539.P11078104346932395345

namespace A082539

/-- `p?[A008578(n+2)*A105235(A084196(n+1))]` -/
def P11078104346932395345.Spec : Prop :=
  ∀ n, P11078104346932395345.a n = A082539 (n + 1)

end A082539

/-! ## A082539.P16088142545809729384

`eq[A323155(n+1), A351233(n)]`
-/

namespace A082539.P16088142545809729384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323155 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351233 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A082539.P16088142545809729384

namespace A082539

/-- `eq[A323155(n+1), A351233(n)]` -/
def P16088142545809729384.Spec : Prop :=
  ∀ n, (P16088142545809729384.a n : ℤ) = A082539 (n + 1)

end A082539

/-! ## A082539.P9675549331188919041

`eq[A038700(n+1), A323155(n+1)]`
-/

namespace A082539.P9675549331188919041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038700 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323155 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A082539.P9675549331188919041

namespace A082539

/-- `eq[A038700(n+1), A323155(n+1)]` -/
def P9675549331188919041.Spec : Prop :=
  ∀ n, (P9675549331188919041.a n : ℤ) = A082539 (n + 1)

end A082539

/-! ## A082539.P15427773727412052976

`p?[eq[1, A072627(n+1)]]`
-/

namespace A082539.P15427773727412052976
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072627 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A082539.P15427773727412052976

namespace A082539

/-- `p?[eq[1, A072627(n+1)]]` -/
def P15427773727412052976.Spec : Prop :=
  ∀ n, (P15427773727412052976.a n : ℤ) = A082539 (n + 1)

end A082539

/-! ## A082539.P6766190079127963473

`eq[A072627(n+1), A143862(n)]`
-/

namespace A082539.P6766190079127963473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143862 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A082539.P6766190079127963473

namespace A082539

/-- `eq[A072627(n+1), A143862(n)]` -/
def P6766190079127963473.Spec : Prop :=
  ∀ n, (P6766190079127963473.a n : ℤ) = A082539 (n + 1)

end A082539

/-! ## A082539.P2956272858269214761

`eq[n, A322702(A007918(n)+1)]`
-/

namespace A082539.P2956272858269214761
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322702 (A007918 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A082539.P2956272858269214761

namespace A082539

/-- `eq[n, A322702(A007918(n)+1)]` -/
def P2956272858269214761.Spec : Prop :=
  ∀ n, (P2956272858269214761.a n : ℤ) = A082539 (n + 1)

end A082539

/-! ## A082539.P16456536863182404326

`eq[n, A323155(A007918(n)+1)]`
-/

namespace A082539.P16456536863182404326
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323155 (A007918 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A082539.P16456536863182404326

namespace A082539

/-- `eq[n, A323155(A007918(n)+1)]` -/
def P16456536863182404326.Spec : Prop :=
  ∀ n, (P16456536863182404326.a n : ℤ) = A082539 (n + 1)

end A082539

/-! ## A082539.P12883859079811928727

`eq[n, A322702(A051697(n)+1)]`
-/

namespace A082539.P12883859079811928727
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322702 (A051697 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A082539.P12883859079811928727

namespace A082539

/-- `eq[n, A322702(A051697(n)+1)]` -/
def P12883859079811928727.Spec : Prop :=
  ∀ n, (P12883859079811928727.a n : ℤ) = A082539 (n + 1)

end A082539

/-! ## A082539.P11226883613884102306

`eq[n, A323155(A051697(n)+1)]`
-/

namespace A082539.P11226883613884102306
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323155 (A051697 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A082539.P11226883613884102306

namespace A082539

/-- `eq[n, A323155(A051697(n)+1)]` -/
def P11226883613884102306.Spec : Prop :=
  ∀ n, (P11226883613884102306.a n : ℤ) = A082539 (n + 1)

end A082539

/-! ## A082539.P16620993493798370394

`eq[A062584(n), A322702(n+1)]`
-/

namespace A082539.P16620993493798370394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062584 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322702 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A082539.P16620993493798370394

namespace A082539

/-- `eq[A062584(n), A322702(n+1)]` -/
def P16620993493798370394.Spec : Prop :=
  ∀ n, (P16620993493798370394.a n : ℤ) = A082539 (n + 1)

end A082539

/-! ## A082539.P13425914365850933538

`eq[A062584(n), A323155(n+1)]`
-/

namespace A082539.P13425914365850933538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062584 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323155 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A082539.P13425914365850933538

namespace A082539

/-- `eq[A062584(n), A323155(n+1)]` -/
def P13425914365850933538.Spec : Prop :=
  ∀ n, (P13425914365850933538.a n : ℤ) = A082539 (n + 1)

end A082539

/-! ## A082539.P6040289990364223538

`eq[A077018(n), A322702(n+1)]`
-/

namespace A082539.P6040289990364223538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077018 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322702 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A082539.P6040289990364223538

namespace A082539

/-- `eq[A077018(n), A322702(n+1)]` -/
def P6040289990364223538.Spec : Prop :=
  ∀ n, (P6040289990364223538.a n : ℤ) = A082539 (n + 1)

end A082539

/-! ## A082539.P14610949618548609639

`eq[A077018(n), A323155(n+1)]`
-/

namespace A082539.P14610949618548609639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077018 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323155 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A082539.P14610949618548609639

namespace A082539

/-- `eq[A077018(n), A323155(n+1)]` -/
def P14610949618548609639.Spec : Prop :=
  ∀ n, (P14610949618548609639.a n : ℤ) = A082539 (n + 1)

end A082539

/-! ## A082539.P1147344342922878438

`eq[A072627(n+1), A327642(n)]`
-/

namespace A082539.P1147344342922878438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327642 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A082539.P1147344342922878438

namespace A082539

/-- `eq[A072627(n+1), A327642(n)]` -/
def P1147344342922878438.Spec : Prop :=
  ∀ n, (P1147344342922878438.a n : ℤ) = A082539 (n + 1)

end A082539

/-! ## A082539.P8887449286863517616

`eq[A084413(n), A322702(n+1)]`
-/

namespace A082539.P8887449286863517616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084413 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322702 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A082539.P8887449286863517616

namespace A082539

/-- `eq[A084413(n), A322702(n+1)]` -/
def P8887449286863517616.Spec : Prop :=
  ∀ n, (P8887449286863517616.a n : ℤ) = A082539 (n + 1)

end A082539

/-! ## A082539.P12434447240565047394

`eq[A084413(n), A323155(n+1)]`
-/

namespace A082539.P12434447240565047394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084413 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323155 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A082539.P12434447240565047394

namespace A082539

/-- `eq[A084413(n), A323155(n+1)]` -/
def P12434447240565047394.Spec : Prop :=
  ∀ n, (P12434447240565047394.a n : ℤ) = A082539 (n + 1)

end A082539

/-! ## A082539.P11895098688202773650

`eq[A168014(n), A322702(n+1)]`
-/

namespace A082539.P11895098688202773650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168014 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322702 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A082539.P11895098688202773650

namespace A082539

/-- `eq[A168014(n), A322702(n+1)]` -/
def P11895098688202773650.Spec : Prop :=
  ∀ n, (P11895098688202773650.a n : ℤ) = A082539 (n + 1)

end A082539

/-!
# A082540: Number of ordered quadruples (a,b,c,d) with gcd(a,b,c,d)=1 (1 <= {a,b,c,d} <= n).

The programs for A082540, the canonical program `A082540.P8473853889500920757` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082540 has offset 1).

The definition of A082540 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A082540.P8473853889500920757

`∑{#}[n, A008683(#+1)*floor((n+1)/(#+1))^4]`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A082540

/-- `∑{#}[n, A008683(#+1)*floor((n+1)/(#+1))^4]` -/
def P8473853889500920757.Spec : Prop :=
  ∀ n, P8473853889500920757.a n = A082540 (n + 1)

theorem P8473853889500920757.correct : P8473853889500920757.Spec := by
  intro n
  simp only [A082540, Nat.add_sub_cancel]

end A082540

/-! ## A082540.P12863845608616268656

`∑[A344597(n+1)]`
-/

namespace A082540.P12863845608616268656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344597 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082540.P12863845608616268656

namespace A082540

/-- `∑[A344597(n+1)]` -/
def P12863845608616268656.Spec : Prop :=
  ∀ n, P12863845608616268656.a n = A082540 (n + 1)

end A082540

/-! ## A082540.P18305186732665035207

`∑[∑{d}[n+1, A008683(#)*A005917((n+1)/#)]]`
-/

namespace A082540.P18305186732665035207
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A008683 d * A005917 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082540.P18305186732665035207

namespace A082540

/-- `∑[∑{d}[n+1, A008683(#)*A005917((n+1)/#)]]` -/
def P18305186732665035207.Spec : Prop :=
  ∀ n, P18305186732665035207.a n = A082540 (n + 1)

end A082540

/-! ## A082540.P9166429952607434516

`A344527(A055998(n+2))`
-/

namespace A082540.P9166429952607434516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344527 (A055998 (n + 2)).toNat

end

end A082540.P9166429952607434516

namespace A082540

/-- `A344527(A055998(n+2))` -/
def P9166429952607434516.Spec : Prop :=
  ∀ n, P9166429952607434516.a n = A082540 (n + 1)

end A082540

/-! ## A082540.P8018617162037123909

`A344527(A046691(n+2)+1)`
-/

namespace A082540.P8018617162037123909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344527 (A046691 (n + 2) + 1).toNat

end

end A082540.P8018617162037123909

namespace A082540

/-- `A344527(A046691(n+2)+1)` -/
def P8018617162037123909.Spec : Prop :=
  ∀ n, P8018617162037123909.a n = A082540 (n + 1)

end A082540

/-! ## A082540.P15309656196103625132

`A344527(A052905(n+1)+2)`
-/

namespace A082540.P15309656196103625132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344527 (A052905 (n + 1) + 2).toNat

end

end A082540.P15309656196103625132

namespace A082540

/-- `A344527(A052905(n+1)+2)` -/
def P15309656196103625132.Spec : Prop :=
  ∀ n, P15309656196103625132.a n = A082540 (n + 1)

end A082540

/-! ## A082540.P6721943145970559780

`A344527(A034856(n+3)-1)`
-/

namespace A082540.P6721943145970559780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344527 (A034856 (n + 3) - 1).toNat

end

end A082540.P6721943145970559780

namespace A082540

/-- `A344527(A034856(n+3)-1)` -/
def P6721943145970559780.Spec : Prop :=
  ∀ n, P6721943145970559780.a n = A082540 (n + 1)

end A082540

/-! ## A082540.P5870966082759320311

`A344527(eq[4, A185782(n+1)])`
-/

namespace A082540.P5870966082759320311
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344527 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A082540.P5870966082759320311

namespace A082540

/-- `A344527(eq[4, A185782(n+1)])` -/
def P5870966082759320311.Spec : Prop :=
  ∀ n, P5870966082759320311.a n = A082540 (n + 1)

end A082540

/-! ## A082540.P3623794333245516300

`A344527(A000217(n+3)+n+1)`
-/

namespace A082540.P3623794333245516300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344527 (A000217 (n + 3) + (n + 1 : ℤ)).toNat

end

end A082540.P3623794333245516300

namespace A082540

/-- `A344527(A000217(n+3)+n+1)` -/
def P3623794333245516300.Spec : Prop :=
  ∀ n, P3623794333245516300.a n = A082540 (n + 1)

end A082540

/-! ## A082540.P16154726282731332956

`A344527(A004273(n+2)+A000124(n+2))`
-/

namespace A082540.P16154726282731332956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344527 (A004273 (n + 2) + A000124 (n + 2)).toNat

end

end A082540.P16154726282731332956

namespace A082540

/-- `A344527(A004273(n+2)+A000124(n+2))` -/
def P16154726282731332956.Spec : Prop :=
  ∀ n, P16154726282731332956.a n = A082540 (n + 1)

end A082540

/-!
# A082541: a(n) = (7*3^n - 4*0^n)/3.

The programs for A082541, the canonical program `A082541.P15801730606019490767` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082541 has offset 0).

The definition of A082541 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(7*3^n-4*0^n)/3` (program `A082541.P2272216912662901726`, by `A082541.P2272216912662901726.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A082541.P16852593618992748496

`ogf((1+4x)/(1-3x))`
-/

namespace A082541.P16852593618992748496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 4] [1, -3] n

end

end A082541.P16852593618992748496

namespace A082541

/-- `ogf((1+4x)/(1-3x))` -/
def P16852593618992748496.Spec : Prop :=
  ∀ n, P16852593618992748496.a n = A082541 n

end A082541

/-! ## A082541.P2272216912662901726

`(7*3^n-4*0^n)/3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A082541.P2272216912662901726
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((7 * 3 ^ n : ℤ) - (4 * 0 ^ n : ℤ) : ℚ) / 3

end

end A082541.P2272216912662901726

namespace A082541

/-- `(7*3^n-4*0^n)/3` -/
def P2272216912662901726.Spec : Prop :=
  ∀ n, P2272216912662901726.a n = (A082541 n : ℚ)

theorem P2272216912662901726.correct : P2272216912662901726.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A082541, Nat.add_sub_cancel, A082541.P2272216912662901726.a, A082541.P15801730606019490767.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      simp only [A082541, Nat.add_sub_cancel, A082541.P2272216912662901726.a, A082541.P15801730606019490767.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 1 < m + 2 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A082541

/-! ## A082541.P15801730606019490767

`3*a(n-1)` with `a(0)=1, a(1)=7`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A082541

/-- `3*a(n-1)` -/
def P15801730606019490767.Spec : Prop :=
  ∀ n, (P15801730606019490767.a n : ℤ) = A082541 n

theorem P15801730606019490767.correct : P15801730606019490767.Spec := by
  intro n
  simp only [A082541]

end A082541

/-! ## A082541.P11881849863231194357

`abs(∏[-a(n-1)])` with `a(0)=1, a(1)=7, a(2)=3`
-/

namespace A082541.P11881849863231194357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 7, 3] fun n f1 =>
  -f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∏ j ∈ Finset.range (n + 1), f1 j|

end

end A082541.P11881849863231194357

namespace A082541

/-- `abs(∏[-a(n-1)])` -/
def P11881849863231194357.Spec : Prop :=
  ∀ n, P11881849863231194357.a n = A082541 n

end A082541

/-! ## A082541.P9455604259241737137

`lcm(3^(n-1), a(n-1))` with `a(0)=1, a(1)=7`
-/

namespace A082541.P9455604259241737137
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 7] fun n a =>
  Int.lcm (SequenceMachineLib.roundAway ((3 : ℚ) ^ ((n : ℤ) - 1 : ℤ))) (a (n - 1) : ℤ)

end

end A082541.P9455604259241737137

namespace A082541

/-- `lcm(3^(n-1), a(n-1))` -/
def P9455604259241737137.Spec : Prop :=
  ∀ n, (P9455604259241737137.a n : ℤ) = A082541 n

end A082541

/-! ## A082541.P11727613335842005866

`record[a(n-2)+lcm(2, a(n-2))]` with `a(0)=1, a(1)=7`
-/

namespace A082541.P11727613335842005866
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 7] fun n f1 =>
  f1 (n - 2) + Nat.lcm 2 (f1 (n - 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A082541.P11727613335842005866

namespace A082541

/-- `record[a(n-2)+lcm(2, a(n-2))]` -/
def P11727613335842005866.Spec : Prop :=
  ∀ n, (P11727613335842005866.a n : ℤ) = A082541 n

end A082541

/-! ## A082541.P1766656936236813382

`a(n-1)+a(n-1)+a(n-1)` with `a(0)=1, a(1)=7`
-/

namespace A082541.P1766656936236813382
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 7] fun n a =>
  a (n - 1) + (a (n - 1) + a (n - 1))

end

end A082541.P1766656936236813382

namespace A082541

/-- `a(n-1)+a(n-1)+a(n-1)` -/
def P1766656936236813382.Spec : Prop :=
  ∀ n, (P1766656936236813382.a n : ℤ) = A082541 n

theorem P1766656936236813382.correct : P1766656936236813382.Spec := by
  intro n
  simp only [A082541, Nat.add_sub_cancel, A082541.P1766656936236813382.a, A082541.P15801730606019490767.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A082541

/-! ## A082541.P12537085459727794136

`A072985(2*n)`
-/

namespace A082541.P12537085459727794136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072985 (2 * n)

end

end A082541.P12537085459727794136

namespace A082541

/-- `A072985(2*n)` -/
def P12537085459727794136.Spec : Prop :=
  ∀ n, P12537085459727794136.a n = A082541 n

end A082541

/-! ## A082541.P332304674251807416

`or(1, A027107(n))`
-/

namespace A082541.P332304674251807416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A027107 n)

end

end A082541.P332304674251807416

namespace A082541

/-- `or(1, A027107(n))` -/
def P332304674251807416.Spec : Prop :=
  ∀ n, P332304674251807416.a n = A082541 n

end A082541

/-! ## A082541.P4438026157679742298

`record[A166481(n+1)]`
-/

namespace A082541.P4438026157679742298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166481 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A082541.P4438026157679742298

namespace A082541

/-- `record[A166481(n+1)]` -/
def P4438026157679742298.Spec : Prop :=
  ∀ n, P4438026157679742298.a n = A082541 n

end A082541

/-! ## A082541.P4697376212619931721

`A246080(6*n+1)`
-/

namespace A082541.P4697376212619931721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246080 (6 * n + 1)

end

end A082541.P4697376212619931721

namespace A082541

/-- `A246080(6*n+1)` -/
def P4697376212619931721.Spec : Prop :=
  ∀ n, P4697376212619931721.a n = A082541 n

end A082541

/-! ## A082541.P14725474722718892167

`∑[2*A141495(n)]-1`
-/

namespace A082541.P14725474722718892167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A141495 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A082541.P14725474722718892167

namespace A082541

/-- `∑[2*A141495(n)]-1` -/
def P14725474722718892167.Spec : Prop :=
  ∀ n, P14725474722718892167.a n = A082541 n

end A082541

/-! ## A082541.P310222082162343440

`record[or(1, A072985(n)-1)]`
-/

namespace A082541.P310222082162343440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A072985 n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A082541.P310222082162343440

namespace A082541

/-- `record[or(1, A072985(n)-1)]` -/
def P310222082162343440.Spec : Prop :=
  ∀ n, P310222082162343440.a n = A082541 n

end A082541

/-! ## A082541.P10981214951804260424

`A141495((n+1)%(2*n+1))`
-/

namespace A082541.P10981214951804260424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141495 ((n + 1) % (2 * n + 1))

end

end A082541.P10981214951804260424

namespace A082541

/-- `A141495((n+1)%(2*n+1))` -/
def P10981214951804260424.Spec : Prop :=
  ∀ n, P10981214951804260424.a n = A082541 n

end A082541

/-! ## A082541.P13417244061844457077

`A166481(A004277(n))`
-/

namespace A082541.P13417244061844457077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166481 (A004277 n).toNat

end

end A082541.P13417244061844457077

namespace A082541

/-- `A166481(A004277(n))` -/
def P13417244061844457077.Spec : Prop :=
  ∀ n, P13417244061844457077.a n = A082541 n

end A082541

/-! ## A082541.P15690007577365043782

`A166481(A004275(n+1))`
-/

namespace A082541.P15690007577365043782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166481 (A004275 (n + 1)).toNat

end

end A082541.P15690007577365043782

namespace A082541

/-- `A166481(A004275(n+1))` -/
def P15690007577365043782.Spec : Prop :=
  ∀ n, P15690007577365043782.a n = A082541 n

end A082541

/-! ## A082541.P10972877551224581755

`A141495(A087156(n+1))`
-/

namespace A082541.P10972877551224581755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141495 (A087156 (n + 1)).toNat

end

end A082541.P10972877551224581755

namespace A082541

/-- `A141495(A087156(n+1))` -/
def P10972877551224581755.Spec : Prop :=
  ∀ n, P10972877551224581755.a n = A082541 n

end A082541

/-! ## A082541.P12775543717480405411

`A246085(A160912(n+1))`
-/

namespace A082541.P12775543717480405411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246085 (A160912 (n + 1)).toNat

end

end A082541.P12775543717480405411

namespace A082541

/-- `A246085(A160912(n+1))` -/
def P12775543717480405411.Spec : Prop :=
  ∀ n, P12775543717480405411.a n = A082541 n

end A082541

/-! ## A082541.P12430521217876472502

`A141495(A199969(n+2))`
-/

namespace A082541.P12430521217876472502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141495 (A199969 (n + 2)).toNat

end

end A082541.P12430521217876472502

namespace A082541

/-- `A141495(A199969(n+2))` -/
def P12430521217876472502.Spec : Prop :=
  ∀ n, P12430521217876472502.a n = A082541 n

end A082541

/-! ## A082541.P11618440530214126555

`A057427(n)+A027107(n)`
-/

namespace A082541.P11618440530214126555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + A027107 n

end

end A082541.P11618440530214126555

namespace A082541

/-- `A057427(n)+A027107(n)` -/
def P11618440530214126555.Spec : Prop :=
  ∀ n, P11618440530214126555.a n = A082541 n

end A082541

/-!
# A082542: a(n) = prime(n) + 2 - (prime(n) mod 4).

The programs for A082542, the canonical program `A082542.P17184651886074543973` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082542 has offset 1).

The definition of A082542 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(n+1)+2-A000040(n+1)%4` (program `A082542.P17184651886074543973`, by `A082542.P17184651886074543973.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A082542.P3253226966033198615

`A000040(n+1)+A070750(n+1)`
-/

namespace A082542.P3253226966033198615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + A070750 (n + 1)

end

end A082542.P3253226966033198615

namespace A082542

/-- `A000040(n+1)+A070750(n+1)` -/
def P3253226966033198615.Spec : Prop :=
  ∀ n, P3253226966033198615.a n = A082542 (n + 1)

theorem P3253226966033198615.correct : P3253226966033198615.Spec := by
  intro n
  simp only [A082542, Nat.add_sub_cancel, A082542.P3253226966033198615.a, A082542.P17184651886074543973.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A070750, A070750.P13196581040963341553.a, A039702, A039702.P9525350324369181383.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A082542

/-! ## A082542.P18173147124868264535

`A100484(n+1)-A076342(n+1)`
-/

namespace A082542.P18173147124868264535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (n + 1) - A076342 (n + 1)

end

end A082542.P18173147124868264535

namespace A082542

/-- `A100484(n+1)-A076342(n+1)` -/
def P18173147124868264535.Spec : Prop :=
  ∀ n, P18173147124868264535.a n = A082542 (n + 1)

theorem P18173147124868264535.correct : P18173147124868264535.Spec := by
  intro n
  simp only [A082542, Nat.add_sub_cancel, A082542.P18173147124868264535.a, A082542.P17184651886074543973.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A076342, A076342.P17182392044292318344.a, A100484, A100484.P9678625670825099636.a, A070750, A070750.P13196581040963341553.a, A039702, A039702.P9525350324369181383.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A082542

/-! ## A082542.P17184651886074543973

`A000040(n+1)+2-A000040(n+1)%4`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A082542

/-- `A000040(n+1)+2-A000040(n+1)%4` -/
def P17184651886074543973.Spec : Prop :=
  ∀ n, P17184651886074543973.a n = A082542 (n + 1)

theorem P17184651886074543973.correct : P17184651886074543973.Spec := by
  intro n
  simp only [A082542, Nat.add_sub_cancel]

end A082542

/-! ## A082542.P452979926837785075

`or(3, Δ[A007504(n)])-1`
-/

namespace A082542.P452979926837785075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 3 (f1 (n + 1) - f1 n) - 1

end

end A082542.P452979926837785075

namespace A082542

/-- `or(3, Δ[A007504(n)])-1` -/
def P452979926837785075.Spec : Prop :=
  ∀ n, P452979926837785075.a n = A082542 (n + 1)

end A082542

/-! ## A082542.P2988048471737361838

`4*A075518(n+1)+2`
-/

namespace A082542.P2988048471737361838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A075518 (n + 1) + 2

end

end A082542.P2988048471737361838

namespace A082542

/-- `4*A075518(n+1)+2` -/
def P2988048471737361838.Spec : Prop :=
  ∀ n, P2988048471737361838.a n = A082542 (n + 1)

end A082542

/-! ## A082542.P7313580082897663144

`lcm(2, A073579(n+1)+1)`
-/

namespace A082542.P7313580082897663144
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A073579 (n + 1) + 1)

end

end A082542.P7313580082897663144

namespace A082542

/-- `lcm(2, A073579(n+1)+1)` -/
def P7313580082897663144.Spec : Prop :=
  ∀ n, (P7313580082897663144.a n : ℤ) = A082542 (n + 1)

end A082542

/-! ## A082542.P3731640565360418638

`or(2, A006005(n+1)-1)`
-/

namespace A082542.P3731640565360418638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A006005 (n + 1) - 1)

end

end A082542.P3731640565360418638

namespace A082542

/-- `or(2, A006005(n+1)-1)` -/
def P3731640565360418638.Spec : Prop :=
  ∀ n, P3731640565360418638.a n = A082542 (n + 1)

end A082542

/-! ## A082542.P8079290235248100617

`or(3, A000040(n+1))-1`
-/

namespace A082542.P8079290235248100617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 3 (A000040 (n + 1)) - 1

end

end A082542.P8079290235248100617

namespace A082542

/-- `or(3, A000040(n+1))-1` -/
def P8079290235248100617.Spec : Prop :=
  ∀ n, P8079290235248100617.a n = A082542 (n + 1)

end A082542

/-! ## A082542.P15393392438490509408

`2*or(1, A102781(n+1))`
-/

namespace A082542.P15393392438490509408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * Int.lor 1 (A102781 (n + 1))

end

end A082542.P15393392438490509408

namespace A082542

/-- `2*or(1, A102781(n+1))` -/
def P15393392438490509408.Spec : Prop :=
  ∀ n, P15393392438490509408.a n = A082542 (n + 1)

end A082542

/-! ## A082542.P1477002220167360047

`2*or(1, A130290(n+1))`
-/

namespace A082542.P1477002220167360047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * Int.lor 1 (A130290 (n + 1))

end

end A082542.P1477002220167360047

namespace A082542

/-- `2*or(1, A130290(n+1))` -/
def P1477002220167360047.Spec : Prop :=
  ∀ n, P1477002220167360047.a n = A082542 (n + 1)

end A082542

/-! ## A082542.P6039481536508217721

`A052147(n+1)-A039702(n+1)`
-/

namespace A082542.P6039481536508217721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052147 (n + 1) - A039702 (n + 1)

end

end A082542.P6039481536508217721

namespace A082542

/-- `A052147(n+1)-A039702(n+1)` -/
def P6039481536508217721.Spec : Prop :=
  ∀ n, P6039481536508217721.a n = A082542 (n + 1)

end A082542

/-! ## A082542.P17554782758956069740

`A089241(n+1)-A267573(n+1)`
-/

namespace A082542.P17554782758956069740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089241 (n + 1) - A267573 (n + 1)

end

end A082542.P17554782758956069740

namespace A082542

/-- `A089241(n+1)-A267573(n+1)` -/
def P17554782758956069740.Spec : Prop :=
  ∀ n, P17554782758956069740.a n = A082542 (n + 1)

theorem P17554782758956069740.correct : P17554782758956069740.Spec := by
  intro n
  simp only [A082542, Nat.add_sub_cancel, A082542.P17554782758956069740.a, A082542.P17184651886074543973.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A089241, A089241.P14705987553220613803.a, A267573, A267573.P5530432348318331570.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A082542

/-! ## A082542.P7530152956662053117

`A360323(n+1)%A100484(n+1)`
-/

namespace A082542.P7530152956662053117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A360323 (n + 1)) (A100484 (n + 1))

end

end A082542.P7530152956662053117

namespace A082542

/-- `A360323(n+1)%A100484(n+1)` -/
def P7530152956662053117.Spec : Prop :=
  ∀ n, P7530152956662053117.a n = A082542 (n + 1)

end A082542

/-! ## A082542.P2174256902686263679

`or(2, A006093(n+1)+A000007(n))`
-/

namespace A082542.P2174256902686263679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A006093 (n + 1) + A000007 n)

end

end A082542.P2174256902686263679

namespace A082542

/-- `or(2, A006093(n+1)+A000007(n))` -/
def P2174256902686263679.Spec : Prop :=
  ∀ n, P2174256902686263679.a n = A082542 (n + 1)

end A082542

/-! ## A082542.P6353670719473556346

`A006093(n+1)+A070750(n+1)+1`
-/

namespace A082542.P6353670719473556346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) + (A070750 (n + 1) + 1)

end

end A082542.P6353670719473556346

namespace A082542

/-- `A006093(n+1)+A070750(n+1)+1` -/
def P6353670719473556346.Spec : Prop :=
  ∀ n, P6353670719473556346.a n = A082542 (n + 1)

theorem P6353670719473556346.correct : P6353670719473556346.Spec := by
  intro n
  simp only [A082542, Nat.add_sub_cancel, A082542.P6353670719473556346.a, A082542.P17184651886074543973.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006093, A006093.P2906174024863549003.a, A070750, A070750.P13196581040963341553.a, A039702, A039702.P9525350324369181383.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A082542

/-! ## A082542.P3629077399145986683

`A000040(n+1)+2-A039702(n+1)`
-/

namespace A082542.P3629077399145986683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + (2 - A039702 (n + 1))

end

end A082542.P3629077399145986683

namespace A082542

/-- `A000040(n+1)+2-A039702(n+1)` -/
def P3629077399145986683.Spec : Prop :=
  ∀ n, P3629077399145986683.a n = A082542 (n + 1)

theorem P3629077399145986683.correct : P3629077399145986683.Spec := by
  intro n
  simp only [A082542, Nat.add_sub_cancel, A082542.P3629077399145986683.a, A082542.P17184651886074543973.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A039702, A039702.P9525350324369181383.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A082542

/-! ## A082542.P17004881277495709646

`A052147(n+1)+A070750(n+1)-2`
-/

namespace A082542.P17004881277495709646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052147 (n + 1) + (A070750 (n + 1) - 2)

end

end A082542.P17004881277495709646

namespace A082542

/-- `A052147(n+1)+A070750(n+1)-2` -/
def P17004881277495709646.Spec : Prop :=
  ∀ n, P17004881277495709646.a n = A082542 (n + 1)

theorem P17004881277495709646.correct : P17004881277495709646.Spec := by
  intro n
  simp only [A082542, Nat.add_sub_cancel, A082542.P17004881277495709646.a, A082542.P17184651886074543973.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A052147, A052147.P15217781913070555828.a, A070750, A070750.P13196581040963341553.a, A039702, A039702.P9525350324369181383.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A082542

/-! ## A082542.P16284714852878803327

`A076342(n+1)+2*A070750(n+1)`
-/

namespace A082542.P16284714852878803327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076342 (n + 1) + 2 * A070750 (n + 1)

end

end A082542.P16284714852878803327

namespace A082542

/-- `A076342(n+1)+2*A070750(n+1)` -/
def P16284714852878803327.Spec : Prop :=
  ∀ n, P16284714852878803327.a n = A082542 (n + 1)

theorem P16284714852878803327.correct : P16284714852878803327.Spec := by
  intro n
  simp only [A082542, Nat.add_sub_cancel, A082542.P16284714852878803327.a, A082542.P17184651886074543973.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A070750, A070750.P13196581040963341553.a, A076342, A076342.P17182392044292318344.a, A039702, A039702.P9525350324369181383.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A082542

/-! ## A082542.P13255268397916854736

`2*A000040(n+1)-A076342(n+1)`
-/

namespace A082542.P13255268397916854736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000040 (n + 1) - A076342 (n + 1)

end

end A082542.P13255268397916854736

namespace A082542

/-- `2*A000040(n+1)-A076342(n+1)` -/
def P13255268397916854736.Spec : Prop :=
  ∀ n, P13255268397916854736.a n = A082542 (n + 1)

theorem P13255268397916854736.correct : P13255268397916854736.Spec := by
  intro n
  simp only [A082542, Nat.add_sub_cancel, A082542.P13255268397916854736.a, A082542.P17184651886074543973.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A076342, A076342.P17182392044292318344.a, A070750, A070750.P13196581040963341553.a, A039702, A039702.P9525350324369181383.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A082542

/-! ## A082542.P15731819957194823778

`A000040(n+1)+A098033(n+1)-A100672(n+1)`
-/

namespace A082542.P15731819957194823778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + (A098033 (n + 1) - A100672 (n + 1))

end

end A082542.P15731819957194823778

namespace A082542

/-- `A000040(n+1)+A098033(n+1)-A100672(n+1)` -/
def P15731819957194823778.Spec : Prop :=
  ∀ n, P15731819957194823778.a n = A082542 (n + 1)

end A082542

/-!
# A082544: Number of ordered quintuples (a,b,c,d,e) with gcd(a,b,c,d,e)=1 (1<= {a,b,c,d,e} <= n).

The programs for A082544, the canonical program `A082544.P4606720943213757848` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082544 has offset 1).

The definition of A082544 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1024 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A082544.P4606720943213757848

`∑{#}[n, A008683(#+1)*floor((n+1)/(#+1))^5]`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A082544

/-- `∑{#}[n, A008683(#+1)*floor((n+1)/(#+1))^5]` -/
def P4606720943213757848.Spec : Prop :=
  ∀ n, P4606720943213757848.a n = A082544 (n + 1)

theorem P4606720943213757848.correct : P4606720943213757848.Spec := by
  intro n
  simp only [A082544, Nat.add_sub_cancel]

end A082544

/-! ## A082544.P4465407156733279555

`A344527(A046691(n+3))`
-/

namespace A082544.P4465407156733279555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344527 (A046691 (n + 3)).toNat

end

end A082544.P4465407156733279555

namespace A082544

/-- `A344527(A046691(n+3))` -/
def P4465407156733279555.Spec : Prop :=
  ∀ n, P4465407156733279555.a n = A082544 (n + 1)

end A082544

/-! ## A082544.P17090990557356369885

`A344527(Δ[A023545(n+1)])`
-/

namespace A082544.P17090990557356369885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344527 (f1 (n + 1) - f1 n).toNat

end

end A082544.P17090990557356369885

namespace A082544

/-- `A344527(Δ[A023545(n+1)])` -/
def P17090990557356369885.Spec : Prop :=
  ∀ n, P17090990557356369885.a n = A082544 (n + 1)

end A082544

/-! ## A082544.P2824051028040619293

`A344527(A000217(n+5)-4)`
-/

namespace A082544.P2824051028040619293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344527 (A000217 (n + 5) - 4).toNat

end

end A082544.P2824051028040619293

namespace A082544

/-- `A344527(A000217(n+5)-4)` -/
def P2824051028040619293.Spec : Prop :=
  ∀ n, P2824051028040619293.a n = A082544 (n + 1)

end A082544

/-! ## A082544.P4573992898579034878

`record[A344527(n+2)/A343510(n+7)]`
-/

namespace A082544.P4573992898579034878
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A344527 (n + 2) : ℚ) / (A343510 (n + 7) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A082544.P4573992898579034878

namespace A082544

/-- `record[A344527(n+2)/A343510(n+7)]` -/
def P4573992898579034878.Spec : Prop :=
  ∀ n, P4573992898579034878.a n = (A082544 (n + 1) : ℚ)

end A082544

/-! ## A082544.P8378826117828133574

`record[A344527(n+2)/A344479(n+7)]`
-/

namespace A082544.P8378826117828133574
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A344527 (n + 2) : ℚ) / (A344479 (n + 7) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A082544.P8378826117828133574

namespace A082544

/-- `record[A344527(n+2)/A344479(n+7)]` -/
def P8378826117828133574.Spec : Prop :=
  ∀ n, P8378826117828133574.a n = (A082544 (n + 1) : ℚ)

end A082544

/-! ## A082544.P17793388043656469860

`record[gcd(A185782(n+5), A344527(n+1))]`
-/

namespace A082544.P17793388043656469860
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A185782 (n + 5)) (A344527 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A082544.P17793388043656469860

namespace A082544

/-- `record[gcd(A185782(n+5), A344527(n+1))]` -/
def P17793388043656469860.Spec : Prop :=
  ∀ n, (P17793388043656469860.a n : ℤ) = A082544 (n + 1)

end A082544

/-! ## A082544.P9858505167416981037

`A344527(A161680(n)+A016969(n+1))`
-/

namespace A082544.P9858505167416981037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344527 (A161680 n + A016969 (n + 1)).toNat

end

end A082544.P9858505167416981037

namespace A082544

/-- `A344527(A161680(n)+A016969(n+1))` -/
def P9858505167416981037.Spec : Prop :=
  ∀ n, P9858505167416981037.a n = A082544 (n + 1)

end A082544

/-! ## A082544.P16332060085709807265

`A344527(eq[A135223(n+1)+1, A052146(n+1)])`
-/

namespace A082544.P16332060085709807265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135223 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052146 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344527 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A082544.P16332060085709807265

namespace A082544

/-- `A344527(eq[A135223(n+1)+1, A052146(n+1)])` -/
def P16332060085709807265.Spec : Prop :=
  ∀ n, P16332060085709807265.a n = A082544 (n + 1)

end A082544

/-!
# A082545: a(n) = (2*n)! * Sum_{k=0..n} binomial(n,k)/(n+k)!.

The programs for A082545, the canonical program `A082545.P17128817289061928032` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082545 has offset 0).

The definition of A082545 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A082545.P17128817289061928032

`(2*n)!*∑{#}[n, C(n, #)/(n+#)!]`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A082545

/-- `(2*n)!*∑{#}[n, C(n, #)/(n+#)!]` -/
def P17128817289061928032.Spec : Prop :=
  ∀ n, P17128817289061928032.a n = (A082545 n : ℚ)

end A082545

/-! ## A082545.P5644843371975284327

`A088699(A062725(n))`
-/

namespace A082545.P5644843371975284327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088699 (A062725 n).toNat

end

end A082545.P5644843371975284327

namespace A082545

/-- `A088699(A062725(n))` -/
def P5644843371975284327.Spec : Prop :=
  ∀ n, P5644843371975284327.a n = A082545 n

end A082545

/-! ## A082545.P15262476952131700148

`A088699(A062728(n))`
-/

namespace A082545.P15262476952131700148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088699 (A062728 n).toNat

end

end A082545.P15262476952131700148

namespace A082545

/-- `A088699(A062728(n))` -/
def P15262476952131700148.Spec : Prop :=
  ∀ n, P15262476952131700148.a n = A082545 n

end A082545

/-! ## A082545.P4991989742322957343

`A176120(∑[4*n])`
-/

namespace A082545.P4991989742322957343
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176120 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A082545.P4991989742322957343

namespace A082545

/-- `A176120(∑[4*n])` -/
def P4991989742322957343.Spec : Prop :=
  ∀ n, P4991989742322957343.a n = A082545 n

end A082545

/-! ## A082545.P2523372380337486104

`A293985(∑[a(n-1)+4])` with `a(0)=1, a(1)=6`
-/

namespace A082545.P2523372380337486104
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 6] fun n f1 =>
  f1 (n - 1) + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293985 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A082545.P2523372380337486104

namespace A082545

/-- `A293985(∑[a(n-1)+4])` -/
def P2523372380337486104.Spec : Prop :=
  ∀ n, P2523372380337486104.a n = A082545 n

end A082545

/-!
# A082548: a(n) is the number of values of k such that k can be expressed as the sum of distinct primes with largest prime in the sum equal to prime(n).

The programs for A082548, the canonical program `A082548.P10587941178877347751` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082548 has offset 1).

The definition of A082548 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A082548.P10587941178877347751

`∑[A008578(A185115(n)+n)]`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A082548

/-- `∑[A008578(A185115(n)+n)]` -/
def P10587941178877347751.Spec : Prop :=
  ∀ n, P10587941178877347751.a n = A082548 (n + 1)

theorem P10587941178877347751.correct : P10587941178877347751.Spec := by
  intro n
  simp only [A082548, Nat.add_sub_cancel]

end A082548

/-! ## A082548.P6221837842062450089

`∑[A161344(n+1)-A161346(n+2)]+1`
-/

namespace A082548.P6221837842062450089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161344 (n + 1) - A161346 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A082548.P6221837842062450089

namespace A082548

/-- `∑[A161344(n+1)-A161346(n+2)]+1` -/
def P6221837842062450089.Spec : Prop :=
  ∀ n, P6221837842062450089.a n = A082548 (n + 1)

end A082548

/-! ## A082548.P1078067325339348494

`∑[A000040(n-A010051(a(n-2)+1))]` with `a(0)=1, a(1)=1`
-/

namespace A082548.P1078067325339348494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  A000040 ((n : ℤ) - A010051 (f1 (n - 2) + 1).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082548.P1078067325339348494

namespace A082548

/-- `∑[A000040(n-A010051(a(n-2)+1))]` -/
def P1078067325339348494.Spec : Prop :=
  ∀ n, P1078067325339348494.a n = A082548 (n + 1)

end A082548

/-! ## A082548.P16907287638116635808

`∑[A158611(A185119(2*n)+n+1)]`
-/

namespace A082548.P16907287638116635808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (A185119 (2 * n) + (n : ℤ) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082548.P16907287638116635808

namespace A082548

/-- `∑[A158611(A185119(2*n)+n+1)]` -/
def P16907287638116635808.Spec : Prop :=
  ∀ n, P16907287638116635808.a n = A082548 (n + 1)

end A082548

/-! ## A082548.P11756226752235920003

`∑[A000040(n-A195470(a(n-2)+1))]` with `a(0)=1, a(1)=1`
-/

namespace A082548.P11756226752235920003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  A000040 ((n : ℤ) - A195470 (f1 (n - 2) + 1).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082548.P11756226752235920003

namespace A082548

/-- `∑[A000040(n-A195470(a(n-2)+1))]` -/
def P11756226752235920003.Spec : Prop :=
  ∀ n, P11756226752235920003.a n = A082548 (n + 1)

end A082548

/-! ## A082548.P6590954421266384643

`∑[A106608(A051724(A162786(n+1)))]`
-/

namespace A082548.P6590954421266384643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106608 (A051724 (A162786 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082548.P6590954421266384643

namespace A082548

/-- `∑[A106608(A051724(A162786(n+1)))]` -/
def P6590954421266384643.Spec : Prop :=
  ∀ n, P6590954421266384643.a n = A082548 (n + 1)

end A082548

/-! ## A082548.P12528392545806371012

`∑[record[A027748(n+2)%(n+1)]]+1`
-/

namespace A082548.P12528392545806371012
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A027748 (n + 2)) (n + 1 : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A082548.P12528392545806371012

namespace A082548

/-- `∑[record[A027748(n+2)%(n+1)]]+1` -/
def P12528392545806371012.Spec : Prop :=
  ∀ n, P12528392545806371012.a n = A082548 (n + 1)

end A082548

/-!
# A082550: Number of sets of distinct positive integers whose arithmetic mean is an integer, the largest integer of the set being n.

The programs for A082550, the canonical program `A082550.P6841504247689330333` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082550 has offset 1).

The definition of A082550 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A063776, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A082550.P6841504247689330333

`A063776(n+1)-1`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A082550

/-- `A063776(n+1)-1` -/
def P6841504247689330333.Spec : Prop :=
  ∀ n, P6841504247689330333.a n = A082550 (n + 1)

theorem P6841504247689330333.correct : P6841504247689330333.Spec := by
  intro n
  simp only [A082550, Nat.add_sub_cancel]

end A082550

/-! ## A082550.P2558433636988448338

`A283843(n+1)-2`
-/

namespace A082550.P2558433636988448338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283843 (n + 1) - 2

end

end A082550.P2558433636988448338

namespace A082550

/-- `A283843(n+1)-2` -/
def P2558433636988448338.Spec : Prop :=
  ∀ n, P2558433636988448338.a n = A082550 (n + 1)

theorem P2558433636988448338.correct : P2558433636988448338.Spec := by
  intro n
  simp only [A082550, Nat.add_sub_cancel, A082550.P2558433636988448338.a, A082550.P6841504247689330333.a, A063776, A063776.P17139330215910369702.a, A283843, A283843.P15067060620591103805.a, A053636, A053636.P10200428342403151043.f1, A053636.P10200428342403151043.a, A000010, A000010.P4673923239450215316.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A082550

/-! ## A082550.P9256904894167202781

`2*Δ[A133670(n)]-1`
-/

namespace A082550.P9256904894167202781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133670 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (n + 1) - f1 n) - 1

end

end A082550.P9256904894167202781

namespace A082550

/-- `2*Δ[A133670(n)]-1` -/
def P9256904894167202781.Spec : Prop :=
  ∀ n, P9256904894167202781.a n = A082550 (n + 1)

end A082550

/-! ## A082550.P1744677460920142856

`2*A000016(n+1)-1`
-/

namespace A082550.P1744677460920142856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000016 (n + 1) - 1

end

end A082550.P1744677460920142856

namespace A082550

/-- `2*A000016(n+1)-1` -/
def P1744677460920142856.Spec : Prop :=
  ∀ n, P1744677460920142856.a n = A082550 (n + 1)

end A082550

/-! ## A082550.P10364171651023534930

`2*A096010(n+1)-3`
-/

namespace A082550.P10364171651023534930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A096010 (n + 1) - 3

end

end A082550.P10364171651023534930

namespace A082550

/-- `2*A096010(n+1)-3` -/
def P10364171651023534930.Spec : Prop :=
  ∀ n, P10364171651023534930.a n = A082550 (n + 1)

end A082550

/-! ## A082550.P12796864771350598751

`Δ[A327475(n)]`
-/

namespace A082550.P12796864771350598751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327475 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A082550.P12796864771350598751

namespace A082550

/-- `Δ[A327475(n)]` -/
def P12796864771350598751.Spec : Prop :=
  ∀ n, P12796864771350598751.a n = A082550 (n + 1)

end A082550

/-! ## A082550.P1941565092063213101

`A327475(n+1)-A327475(n)`
-/

namespace A082550.P1941565092063213101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327475 (n + 1) - A327475 n

end

end A082550.P1941565092063213101

namespace A082550

/-- `A327475(n+1)-A327475(n)` -/
def P1941565092063213101.Spec : Prop :=
  ∀ n, P1941565092063213101.a n = A082550 (n + 1)

end A082550

/-! ## A082550.P12240785894404146999

`A053636(n+1)/(n+1)-1`
-/

namespace A082550.P12240785894404146999
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053636 (n + 1) : ℚ) / (n + 1 : ℚ) - 1

end

end A082550.P12240785894404146999

namespace A082550

/-- `A053636(n+1)/(n+1)-1` -/
def P12240785894404146999.Spec : Prop :=
  ∀ n, P12240785894404146999.a n = (A082550 (n + 1) : ℚ)

end A082550

/-! ## A082550.P4284883479692713557

`2*A053633(∑[n])-1`
-/

namespace A082550.P4284883479692713557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A053633 (∑ j ∈ Finset.range (n + 1), f1 j) - 1

end

end A082550.P4284883479692713557

namespace A082550

/-- `2*A053633(∑[n])-1` -/
def P4284883479692713557.Spec : Prop :=
  ∀ n, P4284883479692713557.a n = A082550 (n + 1)

end A082550

/-! ## A082550.P2685398213848008155

`∑[A147980(n+1)]`
-/

namespace A082550.P2685398213848008155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147980 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082550.P2685398213848008155

namespace A082550

/-- `∑[A147980(n+1)]` -/
def P2685398213848008155.Spec : Prop :=
  ∀ n, P2685398213848008155.a n = A082550 (n + 1)

end A082550

/-!
# A082551: Denote sigma(n)-n by s(n); a(n)=1 if s(n)>n, a(n)=0 if s(n)=n, a(n)=-1 if s(n)<n.

The programs for A082551, the canonical program `A082551.P4316828637772613674` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082551 has offset 1).

The definition of A082551 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A082551.P4316828637772613674

`1-round((n+1)/∑{d}[n+1, #])-round((n+1)/(∑{d}[n+1, #]+1))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A082551

/-- `1-round((n+1)/∑{d}[n+1, #])-round((n+1)/(∑{d}[n+1, #]+1))` -/
def P4316828637772613674.Spec : Prop :=
  ∀ n, P4316828637772613674.a n = A082551 (n + 1)

theorem P4316828637772613674.correct : P4316828637772613674.Spec := by
  intro n
  simp only [A082551, Nat.add_sub_cancel]

end A082551

/-! ## A082551.P11670021562763707137

`round(acot(exp(A060862(n+1))-2))`
-/

namespace A082551.P11670021562763707137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (SequenceMachineLib.acot (Real.exp (A060862 (n + 1) : ℝ) - 2))

end

end A082551.P11670021562763707137

namespace A082551

/-- `round(acot(exp(A060862(n+1))-2))` -/
def P11670021562763707137.Spec : Prop :=
  ∀ n, P11670021562763707137.a n = A082551 (n + 1)

end A082551

/-! ## A082551.P11506048321318316296

`A294936(n+1)-A294935(n+1)`
-/

namespace A082551.P11506048321318316296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294936 (n + 1) - A294935 (n + 1)

end

end A082551.P11506048321318316296

namespace A082551

/-- `A294936(n+1)-A294935(n+1)` -/
def P11506048321318316296.Spec : Prop :=
  ∀ n, P11506048321318316296.a n = A082551 (n + 1)

end A082551

/-! ## A082551.P5587099438446244400

`A294937(n+1)-A294934(n+1)`
-/

namespace A082551.P5587099438446244400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294937 (n + 1) - A294934 (n + 1)

end

end A082551.P5587099438446244400

namespace A082551

/-- `A294937(n+1)-A294934(n+1)` -/
def P5587099438446244400.Spec : Prop :=
  ∀ n, P5587099438446244400.a n = A082551 (n + 1)

end A082551

/-! ## A082551.P2775232757422436149

`1-(A294935(n+1)+A294934(n+1))`
-/

namespace A082551.P2775232757422436149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A294935 (n + 1) + A294934 (n + 1))

end

end A082551.P2775232757422436149

namespace A082551

/-- `1-(A294935(n+1)+A294934(n+1))` -/
def P2775232757422436149.Spec : Prop :=
  ∀ n, P2775232757422436149.a n = A082551 (n + 1)

end A082551

/-! ## A082551.P3609090119922809259

`A294936(n+1)+A294937(n+1)-1`
-/

namespace A082551.P3609090119922809259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294936 (n + 1) + (A294937 (n + 1) - 1)

end

end A082551.P3609090119922809259

namespace A082551

/-- `A294936(n+1)+A294937(n+1)-1` -/
def P3609090119922809259.Spec : Prop :=
  ∀ n, P3609090119922809259.a n = A082551 (n + 1)

end A082551

/-! ## A082551.P8506674594890989221

`∑{d}[A033880(n+1), A000010(#)/A033880(n+1)]`
-/

namespace A082551.P8506674594890989221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033880 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (A000010 d : ℚ) / (A033880 (n + 1) : ℚ)

end

end A082551.P8506674594890989221

namespace A082551

/-- `∑{d}[A033880(n+1), A000010(#)/A033880(n+1)]` -/
def P8506674594890989221.Spec : Prop :=
  ∀ n, P8506674594890989221.a n = (A082551 (n + 1) : ℚ)

end A082551

/-! ## A082551.P11832110499727186535

`A252742(n+1)-(A341612(n+1)+A294934(n+1))`
-/

namespace A082551.P11832110499727186535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252742 (n + 1) - (A341612 (n + 1) + A294934 (n + 1))

end

end A082551.P11832110499727186535

namespace A082551

/-- `A252742(n+1)-(A341612(n+1)+A294934(n+1))` -/
def P11832110499727186535.Spec : Prop :=
  ∀ n, P11832110499727186535.a n = A082551 (n + 1)

end A082551

/-! ## A082551.P8725738124304902978

`A252742(n+1)-(A341613(n+1)+A294935(n+1))`
-/

namespace A082551.P8725738124304902978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252742 (n + 1) - (A341613 (n + 1) + A294935 (n + 1))

end

end A082551.P8725738124304902978

namespace A082551

/-- `A252742(n+1)-(A341613(n+1)+A294935(n+1))` -/
def P8725738124304902978.Spec : Prop :=
  ∀ n, P8725738124304902978.a n = A082551 (n + 1)

end A082551

/-! ## A082551.P3976381155028806534

`A001281(A060862(n+1)^A103406(n+1))-1`
-/

namespace A082551.P3976381155028806534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (SequenceMachineLib.roundAway ((A060862 (n + 1) : ℚ) ^ (A103406 (n + 1) : ℤ))).toNat - 1

end

end A082551.P3976381155028806534

namespace A082551

/-- `A001281(A060862(n+1)^A103406(n+1))-1` -/
def P3976381155028806534.Spec : Prop :=
  ∀ n, P3976381155028806534.a n = A082551 (n + 1)

end A082551

/-! ## A082551.P2100650909164303591

`1-(A294935(A033286(n+1))+A294935(n+1))`
-/

namespace A082551.P2100650909164303591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A294935 (A033286 (n + 1)).toNat + A294935 (n + 1))

end

end A082551.P2100650909164303591

namespace A082551

/-- `1-(A294935(A033286(n+1))+A294935(n+1))` -/
def P2100650909164303591.Spec : Prop :=
  ∀ n, P2100650909164303591.a n = A082551 (n + 1)

end A082551

/-!
# A082552: Number of sets of distinct primes, the greatest of which is prime(n), whose arithmetic mean is an integer.

The programs for A082552, there is no canonical definition to state claims against.
-/

/-! ## A082552.P15334074921761666334

`A182220(A046678(n+1)+1)`
-/

namespace A082552.P15334074921761666334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182220 (A046678 (n + 1) + 1).toNat

end

end A082552.P15334074921761666334

/-! ## A082552.P2201615816582971174

`A182220(A330606(n+1)+1)`
-/

namespace A082552.P2201615816582971174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182220 (A330606 (n + 1) + 1).toNat

end

end A082552.P2201615816582971174

/-! ## A082552.P10550074005880534519

`A328928(or(A000108(n), A197459(n+3)))`
-/

namespace A082552.P10550074005880534519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328928 (Int.lor (A000108 n) (A197459 (n + 3))).toNat

end

end A082552.P10550074005880534519

/-!
# A082553: Number of sets of distinct positive integers whose geometric mean is an integer, the largest integer of a set is n.

The programs for A082553, there is no canonical definition to state claims against.
-/

/-! ## A082553.P7720603034855952547

`Δ[A326027(n)]`
-/

namespace A082553.P7720603034855952547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326027 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A082553.P7720603034855952547

/-! ## A082553.P12708417347488376037

`Δ[A357414(n)+A357413(n)]`
-/

namespace A082553.P12708417347488376037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357414 n + A357413 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A082553.P12708417347488376037

/-! ## A082553.P5898021602426110329

`A326027(n+1)-A326027(n)`
-/

namespace A082553.P5898021602426110329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326027 (n + 1) - A326027 n

end

end A082553.P5898021602426110329

/-! ## A082553.P10626088848614530045

`record[A326027(abs(1-n))]-A326027(n)`
-/

namespace A082553.P10626088848614530045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326027 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A326027 n

end

end A082553.P10626088848614530045

/-!
# A082554: Primes whose base-2 representation is a block of 1's, followed by a block of 0's, followed by a block of 1's.

The programs for A082554, there is no canonical definition to state claims against.
-/

/-! ## A082554.P9344370838274005086

`∩[A043682(n+1), A100724(n+1)]`
-/

namespace A082554.P9344370838274005086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043682 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100724 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A082554.P9344370838274005086

/-! ## A082554.P7581980151487955023

`p?[A043570(n+1)]`
-/

namespace A082554.P7581980151487955023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043570 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A082554.P7581980151487955023

/-! ## A082554.P414745382086735610

`p?[A043682(n+1)]`
-/

namespace A082554.P414745382086735610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043682 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A082554.P414745382086735610

/-! ## A082554.P4714221047334738054

`p?[A043687(n+2)]`
-/

namespace A082554.P4714221047334738054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043687 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A082554.P4714221047334738054

/-! ## A082554.P3476971810723235275

`p?[A087118(n+3)]`
-/

namespace A082554.P3476971810723235275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087118 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A082554.P3476971810723235275

/-! ## A082554.P8532866145955867348

`p?[A238246(n+2)-1]`
-/

namespace A082554.P8532866145955867348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238246 (n + 2) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A082554.P8532866145955867348

/-! ## A082554.P13515617683137919629

`∩[A043570(n+1), A380468(n+1)]`
-/

namespace A082554.P13515617683137919629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043570 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A082554.P13515617683137919629

/-! ## A082554.P12331552615072071252

`record[A006530(A043682(n+3))]`
-/

namespace A082554.P12331552615072071252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A043682 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A082554.P12331552615072071252

/-! ## A082554.P3994097111244794875

`record[A006530(A043687(n+3))]`
-/

namespace A082554.P3994097111244794875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A043687 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A082554.P3994097111244794875

/-! ## A082554.P7118305574910552464

`filter[A043570(n+1), A010051(#)]`
-/

namespace A082554.P7118305574910552464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043570 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A082554.P7118305574910552464

/-! ## A082554.P7607971282121917715

`filter[A043682(n+1), A010051(#)]`
-/

namespace A082554.P7607971282121917715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043682 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A082554.P7607971282121917715

/-! ## A082554.P7419108208166869199

`filter[A043687(n+2), A010051(#)]`
-/

namespace A082554.P7419108208166869199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043687 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A082554.P7419108208166869199

/-! ## A082554.P3224445156023962666

`filter[A087118(n+3), A010051(#)]`
-/

namespace A082554.P3224445156023962666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087118 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A082554.P3224445156023962666

/-! ## A082554.P8859487640136585803

`record[A006530(A043571(n+1)/2)]`
-/

namespace A082554.P8859487640136585803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway ((A043571 (n + 1) : ℚ) / 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A082554.P8859487640136585803

/-! ## A082554.P4468491463611056970

`∩[A000040(n+1), A043570(n+1)]`
-/

namespace A082554.P4468491463611056970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043570 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A082554.P4468491463611056970

/-! ## A082554.P2610818318374476096

`∩[A000040(n+1), A043682(n+1)]`
-/

namespace A082554.P2610818318374476096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043682 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A082554.P2610818318374476096

/-! ## A082554.P13911899932127555933

`∩[A006005(n+1), A043570(n+1)]`
-/

namespace A082554.P13911899932127555933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043570 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A082554.P13911899932127555933

/-!
# A082555: Primes whose base-3 representation does not contain a 0.

The programs for A082555, the canonical program `A082555.P269021292616838060` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082555 has offset 1).

The definition of A082555 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1394 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A082555.P269021292616838060

`p?[A371239(n+1)]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A082555

/-- `p?[A371239(n+1)]` -/
def P269021292616838060.Spec : Prop :=
  ∀ n, P269021292616838060.a n = A082555 (n + 1)

theorem P269021292616838060.correct : P269021292616838060.Spec := by
  intro n
  simp only [A082555, Nat.add_sub_cancel]

end A082555

/-! ## A082555.P165500390507874480

`p?[A032924(n+1)]`
-/

namespace A082555.P165500390507874480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032924 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A082555.P165500390507874480

namespace A082555

/-- `p?[A032924(n+1)]` -/
def P165500390507874480.Spec : Prop :=
  ∀ n, P165500390507874480.a n = A082555 (n + 1)

end A082555

/-! ## A082555.P4818223167255867924

`p?[A153775(n+1)-1]`
-/

namespace A082555.P4818223167255867924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153775 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A082555.P4818223167255867924

namespace A082555

/-- `p?[A153775(n+1)-1]` -/
def P4818223167255867924.Spec : Prop :=
  ∀ n, P4818223167255867924.a n = A082555 (n + 1)

end A082555

/-! ## A082555.P14043653280156902422

`∩[A009087(n+1), A371239(n+1)]`
-/

namespace A082555.P14043653280156902422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371239 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A082555.P14043653280156902422

namespace A082555

/-- `∩[A009087(n+1), A371239(n+1)]` -/
def P14043653280156902422.Spec : Prop :=
  ∀ n, (P14043653280156902422.a n : ℤ) = A082555 (n + 1)

end A082555

/-! ## A082555.P5894632451315617518

`record[A006530(A032924(n+2))]`
-/

namespace A082555.P5894632451315617518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A032924 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A082555.P5894632451315617518

namespace A082555

/-- `record[A006530(A032924(n+2))]` -/
def P5894632451315617518.Spec : Prop :=
  ∀ n, P5894632451315617518.a n = A082555 (n + 1)

end A082555

/-! ## A082555.P4434398688144472246

`record[A020639(A032924(n+3))]`
-/

namespace A082555.P4434398688144472246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A032924 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A082555.P4434398688144472246

namespace A082555

/-- `record[A020639(A032924(n+3))]` -/
def P4434398688144472246.Spec : Prop :=
  ∀ n, P4434398688144472246.a n = A082555 (n + 1)

end A082555

/-! ## A082555.P15943561156669913013

`filter[A032924(n+1), A010051(#)]`
-/

namespace A082555.P15943561156669913013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032924 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A082555.P15943561156669913013

namespace A082555

/-- `filter[A032924(n+1), A010051(#)]` -/
def P15943561156669913013.Spec : Prop :=
  ∀ n, P15943561156669913013.a n = A082555 (n + 1)

end A082555

/-! ## A082555.P6408768684073028743

`filter[A371239(n+1), A010051(#)]`
-/

namespace A082555.P6408768684073028743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371239 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A082555.P6408768684073028743

namespace A082555

/-- `filter[A371239(n+1), A010051(#)]` -/
def P6408768684073028743.Spec : Prop :=
  ∀ n, P6408768684073028743.a n = A082555 (n + 1)

end A082555

/-! ## A082555.P9804960814114724162

`filter[A371239(n+1), A069513(#)]`
-/

namespace A082555.P9804960814114724162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371239 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A069513 (f1 j).toNat = 1) n)

end

end A082555.P9804960814114724162

namespace A082555

/-- `filter[A371239(n+1), A069513(#)]` -/
def P9804960814114724162.Spec : Prop :=
  ∀ n, P9804960814114724162.a n = A082555 (n + 1)

end A082555

/-! ## A082555.P4996330362858389687

`filter[A371239(n+1), A358769(#)]`
-/

namespace A082555.P4996330362858389687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371239 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358769 (f1 j).toNat = 1) n)

end

end A082555.P4996330362858389687

namespace A082555

/-- `filter[A371239(n+1), A358769(#)]` -/
def P4996330362858389687.Spec : Prop :=
  ∀ n, P4996330362858389687.a n = A082555 (n + 1)

end A082555

/-! ## A082555.P1054444431923025107

`∩[A000040(n+1), A032924(n+1)]`
-/

namespace A082555.P1054444431923025107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032924 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A082555.P1054444431923025107

namespace A082555

/-- `∩[A000040(n+1), A032924(n+1)]` -/
def P1054444431923025107.Spec : Prop :=
  ∀ n, (P1054444431923025107.a n : ℤ) = A082555 (n + 1)

end A082555

/-! ## A082555.P10506321257938398836

`∩[A032924(n+1), A045344(n+1)]`
-/

namespace A082555.P10506321257938398836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032924 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A082555.P10506321257938398836

namespace A082555

/-- `∩[A032924(n+1), A045344(n+1)]` -/
def P10506321257938398836.Spec : Prop :=
  ∀ n, (P10506321257938398836.a n : ℤ) = A082555 (n + 1)

end A082555

/-! ## A082555.P841975292448414396

`∩[A032924(n+1), A053813(n+1)]`
-/

namespace A082555.P841975292448414396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032924 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A082555.P841975292448414396

namespace A082555

/-- `∩[A032924(n+1), A053813(n+1)]` -/
def P841975292448414396.Spec : Prop :=
  ∀ n, (P841975292448414396.a n : ℤ) = A082555 (n + 1)

end A082555

/-! ## A082555.P2604774808578320589

`∩[A032924(n+1), A116974(n+1)]`
-/

namespace A082555.P2604774808578320589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032924 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A082555.P2604774808578320589

namespace A082555

/-- `∩[A032924(n+1), A116974(n+1)]` -/
def P2604774808578320589.Spec : Prop :=
  ∀ n, (P2604774808578320589.a n : ℤ) = A082555 (n + 1)

end A082555

/-! ## A082555.P11002141330363916849

`∩[A032924(n+1), A182140(n+1)]`
-/

namespace A082555.P11002141330363916849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032924 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182140 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A082555.P11002141330363916849

namespace A082555

/-- `∩[A032924(n+1), A182140(n+1)]` -/
def P11002141330363916849.Spec : Prop :=
  ∀ n, (P11002141330363916849.a n : ℤ) = A082555 (n + 1)

end A082555

/-! ## A082555.P7961356791241534222

`∩[A032924(n+1), A182986(n+1)]`
-/

namespace A082555.P7961356791241534222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032924 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A082555.P7961356791241534222

namespace A082555

/-- `∩[A032924(n+1), A182986(n+1)]` -/
def P7961356791241534222.Spec : Prop :=
  ∀ n, (P7961356791241534222.a n : ℤ) = A082555 (n + 1)

end A082555

/-! ## A082555.P73559802496352160

`∩[A032924(n+1), A257974(n+1)]`
-/

namespace A082555.P73559802496352160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032924 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257974 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A082555.P73559802496352160

namespace A082555

/-- `∩[A032924(n+1), A257974(n+1)]` -/
def P73559802496352160.Spec : Prop :=
  ∀ n, (P73559802496352160.a n : ℤ) = A082555 (n + 1)

end A082555

/-! ## A082555.P15951058079478485863

`∩[A000040(n+1), A371239(n+1)]`
-/

namespace A082555.P15951058079478485863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371239 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A082555.P15951058079478485863

namespace A082555

/-- `∩[A000040(n+1), A371239(n+1)]` -/
def P15951058079478485863.Spec : Prop :=
  ∀ n, (P15951058079478485863.a n : ℤ) = A082555 (n + 1)

end A082555

/-! ## A082555.P2251486172890657996

`∩[A000430(n+1), A371239(n+1)]`
-/

namespace A082555.P2251486172890657996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371239 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A082555.P2251486172890657996

namespace A082555

/-- `∩[A000430(n+1), A371239(n+1)]` -/
def P2251486172890657996.Spec : Prop :=
  ∀ n, (P2251486172890657996.a n : ℤ) = A082555 (n + 1)

end A082555

/-!
# A082556: Expansion of g.f. Product_{m>=1} 1/(1-x^m)^30.

The programs for A082556, there is no canonical definition to state claims against.
-/

/-! ## A082556.P5276588879773327513

`A144064(eq[30, A025581(n)])`
-/

namespace A082556.P5276588879773327513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  30

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144064 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A082556.P5276588879773327513

/-!
# A082557: G.f.: Product_{m>=1} 1/(1-x^m)^32.

The programs for A082557, there is no canonical definition to state claims against.
-/

/-! ## A082557.P17484631136096668832

`record[A144064(A132336(n+1))]`
-/

namespace A082557.P17484631136096668832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144064 (A132336 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A082557.P17484631136096668832

/-!
# A082560: a(1)=1, a(n)=2*a(n-1) if n is odd, or a(n)=a(n/2)+1 if n is even.

The programs for A082560, the canonical program `A082560.P3511378537859311582` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082560 has offset 1).

The definition of A082560 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A082560.P3511378537859311582

`A059841(n)+gcd(2, n)*a(floor((n+1)/2)-1)+1` with `a(0)=1`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A082560

/-- `A059841(n)+gcd(2, n)*a(floor((n+1)/2)-1)+1` -/
def P3511378537859311582.Spec : Prop :=
  ∀ n, P3511378537859311582.a n = A082560 (n + 1)

theorem P3511378537859311582.correct : P3511378537859311582.Spec := by
  intro n
  simp only [A082560, Nat.add_sub_cancel]

end A082560

/-! ## A082560.P137326848394193827

`A135529(n+1)+A071055(n)`
-/

namespace A082560.P137326848394193827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135529 (n + 1) + A071055 n

end

end A082560.P137326848394193827

namespace A082560

/-- `A135529(n+1)+A071055(n)` -/
def P137326848394193827.Spec : Prop :=
  ∀ n, P137326848394193827.a n = A082560 (n + 1)

end A082560

/-! ## A082560.P2027469540396708415

`2*A135533(n+1)-A135529(n+1)`
-/

namespace A082560.P2027469540396708415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A135533 (n + 1) - A135529 (n + 1)

end

end A082560.P2027469540396708415

namespace A082560

/-- `2*A135533(n+1)-A135529(n+1)` -/
def P2027469540396708415.Spec : Prop :=
  ∀ n, P2027469540396708415.a n = A082560 (n + 1)

end A082560

/-! ## A082560.P2330105896484217824

`A135533(n+1)+A038573(A025480(n))`
-/

namespace A082560.P2330105896484217824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135533 (n + 1) + A038573 (A025480 n).toNat

end

end A082560.P2330105896484217824

namespace A082560

/-- `A135533(n+1)+A038573(A025480(n))` -/
def P2330105896484217824.Spec : Prop :=
  ∀ n, P2330105896484217824.a n = A082560 (n + 1)

end A082560

/-! ## A082560.P4643089041980677327

`A135529(n+1)+A054429(A048896(n))-1`
-/

namespace A082560.P4643089041980677327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135529 (n + 1) + (A054429 (A048896 n).toNat - 1)

end

end A082560.P4643089041980677327

namespace A082560

/-- `A135529(n+1)+A054429(A048896(n))-1` -/
def P4643089041980677327.Spec : Prop :=
  ∀ n, P4643089041980677327.a n = A082560 (n + 1)

end A082560

/-! ## A082560.P7038787208458185055

`A038573(n+1)+A135529(n+1)-1`
-/

namespace A082560.P7038787208458185055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038573 (n + 1) + (A135529 (n + 1) - 1)

end

end A082560.P7038787208458185055

namespace A082560

/-- `A038573(n+1)+A135529(n+1)-1` -/
def P7038787208458185055.Spec : Prop :=
  ∀ n, P7038787208458185055.a n = A082560 (n + 1)

end A082560

/-! ## A082560.P4519021231565613535

`A135533(A004754(n+1))-1`
-/

namespace A082560.P4519021231565613535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135533 (A004754 (n + 1)).toNat - 1

end

end A082560.P4519021231565613535

namespace A082560

/-- `A135533(A004754(n+1))-1` -/
def P4519021231565613535.Spec : Prop :=
  ∀ n, P4519021231565613535.a n = A082560 (n + 1)

end A082560

/-! ## A082560.P3280882602836554757

`A135529(A048678(n+1))`
-/

namespace A082560.P3280882602836554757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135529 (A048678 (n + 1)).toNat

end

end A082560.P3280882602836554757

namespace A082560

/-- `A135529(A048678(n+1))` -/
def P3280882602836554757.Spec : Prop :=
  ∀ n, P3280882602836554757.a n = A082560 (n + 1)

end A082560

/-! ## A082560.P15541920829532300276

`A135542(A370762(n))`
-/

namespace A082560.P15541920829532300276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135542 (A370762 n).toNat

end

end A082560.P15541920829532300276

namespace A082560

/-- `A135542(A370762(n))` -/
def P15541920829532300276.Spec : Prop :=
  ∀ n, P15541920829532300276.a n = A082560 (n + 1)

end A082560

/-!
# A082562: a(n) = number of values of m such that m can be expressed as the sum of distinct odd numbers with largest odd number in the sum = 2n+1.

The programs for A082562, the canonical program `A082562.P15739801837211833529` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082562 has offset 0).

The definition of A082562 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A082562.P17311124373178997221

`ogf((1-x+x^2+x^3+x^4-x^5)/(1-3x+3x^2-x^3))`
-/

namespace A082562.P17311124373178997221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, 1, 1, 1, -1] [1, -3, 3, -1] n

end

end A082562.P17311124373178997221

namespace A082562

/-- `ogf((1-x+x^2+x^3+x^4-x^5)/(1-3x+3x^2-x^3))` -/
def P17311124373178997221.Spec : Prop :=
  ∀ n, P17311124373178997221.a n = A082562 n

end A082562

/-! ## A082562.P15739801837211833529

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=8, a(4)=15, a(5)=24`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A082562

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P15739801837211833529.Spec : Prop :=
  ∀ n, P15739801837211833529.a n = A082562 n

theorem P15739801837211833529.correct : P15739801837211833529.Spec := by
  intro n
  simp only [A082562]

end A082562

/-! ## A082562.P13930965778781584064

`round(sqrt(n²²+6))-1`
-/

namespace A082562.P13930965778781584064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((n ^ 2) ^ 2 + 6 : ℝ)) - 1

end

end A082562.P13930965778781584064

namespace A082562

/-- `round(sqrt(n²²+6))-1` -/
def P13930965778781584064.Spec : Prop :=
  ∀ n, P13930965778781584064.a n = A082562 n

end A082562

/-! ## A082562.P16639264649917311709

`floor((n+1)/cos(atan(n-1)))`
-/

namespace A082562.P16639264649917311709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) / Real.cos (Real.arctan ((n : ℤ) - 1 : ℝ))⌋

end

end A082562.P16639264649917311709

namespace A082562

/-- `floor((n+1)/cos(atan(n-1)))` -/
def P16639264649917311709.Spec : Prop :=
  ∀ n, P16639264649917311709.a n = A082562 n

end A082562

/-! ## A082562.P16565149329041633086

`∑[a(n-1)+2]` with `a(0)=1, a(1)=1, a(2)=2, a(3)=4, a(4)=7`
-/

namespace A082562.P16565149329041633086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2, 4, 7] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082562.P16565149329041633086

namespace A082562

/-- `∑[a(n-1)+2]` -/
def P16565149329041633086.Spec : Prop :=
  ∀ n, (P16565149329041633086.a n : ℤ) = A082562 n

end A082562

/-! ## A082562.P135210005330093752

`(n²-1)%a(n-1)²` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A082562.P135210005330093752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4] fun n a =>
  Int.tmod ((n ^ 2 : ℤ) - 1) (a (n - 1) ^ 2)

end

end A082562.P135210005330093752

namespace A082562

/-- `(n²-1)%a(n-1)²` -/
def P135210005330093752.Spec : Prop :=
  ∀ n, P135210005330093752.a n = A082562 n

end A082562

/-! ## A082562.P8804324371259083284

`(n+1)*ceil(sqrt(a(n-1)))` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A082562.P8804324371259083284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4] fun n a =>
  (n + 1 : ℤ) * ⌈Real.sqrt (a (n - 1) : ℝ)⌉

end

end A082562.P8804324371259083284

namespace A082562

/-- `(n+1)*ceil(sqrt(a(n-1)))` -/
def P8804324371259083284.Spec : Prop :=
  ∀ n, P8804324371259083284.a n = A082562 n

end A082562

/-! ## A082562.P15949160222407997145

`floor(n²-1/a(n-1))` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A082562.P15949160222407997145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4] fun n a =>
  ⌊(n ^ 2 : ℚ) - 1 / (a (n - 1) : ℚ)⌋

end

end A082562.P15949160222407997145

namespace A082562

/-- `floor(n²-1/a(n-1))` -/
def P15949160222407997145.Spec : Prop :=
  ∀ n, P15949160222407997145.a n = A082562 n

end A082562

/-! ## A082562.P12605384093453786044

`(a(floor(2/n))+n)*(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A082562.P12605384093453786044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  (a ⌊2 / (n : ℚ)⌋.toNat + (n : ℤ)) * ((n : ℤ) - 1)

end

end A082562.P12605384093453786044

namespace A082562

/-- `(a(floor(2/n))+n)*(n-1)` -/
def P12605384093453786044.Spec : Prop :=
  ∀ n, P12605384093453786044.a n = A082562 n

end A082562

/-! ## A082562.P2501773524505275381

`∑[floor(n*(2-1/a(n-1)))]` with `a(0)=1`
-/

namespace A082562.P2501773524505275381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  ⌊(n : ℚ) * (2 - 1 / (f1 (n - 1) : ℚ))⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082562.P2501773524505275381

namespace A082562

/-- `∑[floor(n*(2-1/a(n-1)))]` -/
def P2501773524505275381.Spec : Prop :=
  ∀ n, P2501773524505275381.a n = A082562 n

end A082562

/-! ## A082562.P9260529534709262421

`∑[floor(n-(n/a(n-1)-n))]` with `a(0)=1`
-/

namespace A082562.P9260529534709262421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  ⌊(n : ℚ) - ((n : ℚ) / (f1 (n - 1) : ℚ) - (n : ℚ))⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082562.P9260529534709262421

namespace A082562

/-- `∑[floor(n-(n/a(n-1)-n))]` -/
def P9260529534709262421.Spec : Prop :=
  ∀ n, P9260529534709262421.a n = A082562 n

end A082562

/-! ## A082562.P13900633757036345611

`∑[floor(n*(2-a(n-1)^(-1)))]` with `a(0)=1`
-/

namespace A082562.P13900633757036345611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  ⌊(n : ℚ) * (2 - (f1 (n - 1) : ℚ) ^ (-1 : ℤ))⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082562.P13900633757036345611

namespace A082562

/-- `∑[floor(n*(2-a(n-1)^(-1)))]` -/
def P13900633757036345611.Spec : Prop :=
  ∀ n, P13900633757036345611.a n = A082562 n

end A082562

/-! ## A082562.P14647172226398658832

`floor(n*(n-1/a(n-1)))` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A082562.P14647172226398658832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4] fun n a =>
  ⌊(n : ℚ) * ((n : ℚ) - 1 / (a (n - 1) : ℚ))⌋

end

end A082562.P14647172226398658832

namespace A082562

/-- `floor(n*(n-1/a(n-1)))` -/
def P14647172226398658832.Spec : Prop :=
  ∀ n, P14647172226398658832.a n = A082562 n

end A082562

/-! ## A082562.P6721281390353401715

`(n%a(n-1)+1)*(n-1)` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A082562.P6721281390353401715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4] fun n a =>
  (Int.tmod (n : ℤ) (a (n - 1)) + 1) * ((n : ℤ) - 1)

end

end A082562.P6721281390353401715

namespace A082562

/-- `(n%a(n-1)+1)*(n-1)` -/
def P6721281390353401715.Spec : Prop :=
  ∀ n, P6721281390353401715.a n = A082562 n

end A082562

/-! ## A082562.P9189102360637293017

`∑[2*n-gcd(n-1, a(n-1))]` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A082562.P9189102360637293017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n f1 =>
  (2 * n : ℤ) - (Int.gcd ((n : ℤ) - 1) (f1 (n - 1)) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082562.P9189102360637293017

namespace A082562

/-- `∑[2*n-gcd(n-1, a(n-1))]` -/
def P9189102360637293017.Spec : Prop :=
  ∀ n, P9189102360637293017.a n = A082562 n

end A082562

/-! ## A082562.P1011301807867461590

`∑[2*n-1-C(n-1, a(n-1))]` with `a(0)=1`
-/

namespace A082562.P1011301807867461590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  (2 * n : ℤ) - 1 - (Nat.choose ((n : ℤ) - 1).toNat (f1 (n - 1)).toNat : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082562.P1011301807867461590

namespace A082562

/-- `∑[2*n-1-C(n-1, a(n-1))]` -/
def P1011301807867461590.Spec : Prop :=
  ∀ n, P1011301807867461590.a n = A082562 n

end A082562

/-! ## A082562.P3279151883757844090

`∑[n-1-(C(n-1, a(n-1))-n)]` with `a(0)=1`
-/

namespace A082562.P3279151883757844090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  (n : ℤ) - 1 - ((Nat.choose ((n : ℤ) - 1).toNat (f1 (n - 1)).toNat : ℤ) - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082562.P3279151883757844090

namespace A082562

/-- `∑[n-1-(C(n-1, a(n-1))-n)]` -/
def P3279151883757844090.Spec : Prop :=
  ∀ n, P3279151883757844090.a n = A082562 n

end A082562

/-! ## A082562.P14752439791049010933

`floor((2/A000045(2*n+1)+n-1)*(n+1))`
-/

namespace A082562.P14752439791049010933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 / (A000045 (2 * n + 1) : ℚ) + ((n : ℤ) - 1 : ℚ)) * (n + 1 : ℚ)⌋

end

end A082562.P14752439791049010933

namespace A082562

/-- `floor((2/A000045(2*n+1)+n-1)*(n+1))` -/
def P14752439791049010933.Spec : Prop :=
  ∀ n, P14752439791049010933.a n = A082562 n

end A082562

/-! ## A082562.P4264323012094955932

`A181851(A054254(n+1))`
-/

namespace A082562.P4264323012094955932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181851 (A054254 (n + 1)).toNat

end

end A082562.P4264323012094955932

namespace A082562

/-- `A181851(A054254(n+1))` -/
def P4264323012094955932.Spec : Prop :=
  ∀ n, P4264323012094955932.a n = A082562 n

end A082562

/-! ## A082562.P9292253245386665672

`A100345(A089071(n+1))`
-/

namespace A082562.P9292253245386665672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100345 (A089071 (n + 1)).toNat

end

end A082562.P9292253245386665672

namespace A082562

/-- `A100345(A089071(n+1))` -/
def P9292253245386665672.Spec : Prop :=
  ∀ n, P9292253245386665672.a n = A082562 n

end A082562

/-!
# A082564: Expansion of eta(q)^2 * eta(q^2) / eta(q^4) in powers of q.

The programs for A082564, the canonical program `A082564.P11824028736242301290` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082564 has offset 0).

The definition of A082564 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A033715, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A082564.P11824028736242301290

`(-1)^floor((n+1)/2)*A033715(n)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A082564

/-- `(-1)^floor((n+1)/2)*A033715(n)` -/
def P11824028736242301290.Spec : Prop :=
  ∀ n, P11824028736242301290.a n = (A082564 n : ℚ)

end A082564

/-! ## A082564.P8188308021709610434

`A033715(n)*A087960(n)`
-/

namespace A082564.P8188308021709610434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033715 n * A087960 n

end

end A082564.P8188308021709610434

namespace A082564

/-- `A033715(n)*A087960(n)` -/
def P8188308021709610434.Spec : Prop :=
  ∀ n, P8188308021709610434.a n = A082564 n

end A082564

/-! ## A082564.P10826225842264098469

`A033999(n)*A139093(n)`
-/

namespace A082564.P10826225842264098469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A139093 n

end

end A082564.P10826225842264098469

namespace A082564

/-- `A033999(n)*A139093(n)` -/
def P10826225842264098469.Spec : Prop :=
  ∀ n, P10826225842264098469.a n = A082564 n

end A082564

/-! ## A082564.P3676954491274615717

`A057077(n)*A133692(n)`
-/

namespace A082564.P3676954491274615717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 n * A133692 n

end

end A082564.P3676954491274615717

namespace A082564

/-- `A057077(n)*A133692(n)` -/
def P3676954491274615717.Spec : Prop :=
  ∀ n, P3676954491274615717.a n = A082564 n

end A082564

/-! ## A082564.P9063449050043452311

`2*A028572(n)-A033715(n)`
-/

namespace A082564.P9063449050043452311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028572 n - A033715 n

end

end A082564.P9063449050043452311

namespace A082564

/-- `2*A028572(n)-A033715(n)` -/
def P9063449050043452311.Spec : Prop :=
  ∀ n, P9063449050043452311.a n = A082564 n

end A082564

/-! ## A082564.P4131711519776062364

`A245572(n)-2*A226225(n)`
-/

namespace A082564.P4131711519776062364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245572 n - 2 * A226225 n

end

end A082564.P4131711519776062364

namespace A082564

/-- `A245572(n)-2*A226225(n)` -/
def P4131711519776062364.Spec : Prop :=
  ∀ n, P4131711519776062364.a n = A082564 n

end A082564

/-! ## A082564.P14677330688125064604

`A033715(n)*A057077(n+1)`
-/

namespace A082564.P14677330688125064604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033715 n * A057077 (n + 1)

end

end A082564.P14677330688125064604

namespace A082564

/-- `A033715(n)*A057077(n+1)` -/
def P14677330688125064604.Spec : Prop :=
  ∀ n, P14677330688125064604.a n = A082564 n

end A082564

/-! ## A082564.P15902922214153980916

`A057077(n)*A139093(2*n)`
-/

namespace A082564.P15902922214153980916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 n * A139093 (2 * n)

end

end A082564.P15902922214153980916

namespace A082564

/-- `A057077(n)*A139093(2*n)` -/
def P15902922214153980916.Spec : Prop :=
  ∀ n, P15902922214153980916.a n = A082564 n

end A082564

/-! ## A082564.P1804731294341988415

`A087960(n)*A133692(2*n)`
-/

namespace A082564.P1804731294341988415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 n * A133692 (2 * n)

end

end A082564.P1804731294341988415

namespace A082564

/-- `A087960(n)*A133692(2*n)` -/
def P1804731294341988415.Spec : Prop :=
  ∀ n, P1804731294341988415.a n = A082564 n

end A082564

/-! ## A082564.P5090179007694549096

`A087960(2*n)*A139093(n)`
-/

namespace A082564.P5090179007694549096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 (2 * n) * A139093 n

end

end A082564.P5090179007694549096

namespace A082564

/-- `A087960(2*n)*A139093(n)` -/
def P5090179007694549096.Spec : Prop :=
  ∀ n, P5090179007694549096.a n = A082564 n

end A082564

/-! ## A082564.P1596420699445430475

`A033715(n)*A046980(2*n+1)`
-/

namespace A082564.P1596420699445430475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033715 n * A046980 (2 * n + 1)

end

end A082564.P1596420699445430475

namespace A082564

/-- `A033715(n)*A046980(2*n+1)` -/
def P1596420699445430475.Spec : Prop :=
  ∀ n, P1596420699445430475.a n = A082564 n

end A082564

/-! ## A082564.P8125979995178891589

`A033715(n)*A091337(2*n+1)`
-/

namespace A082564.P8125979995178891589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033715 n * A091337 (2 * n + 1)

end

end A082564.P8125979995178891589

namespace A082564

/-- `A033715(n)*A091337(2*n+1)` -/
def P8125979995178891589.Spec : Prop :=
  ∀ n, P8125979995178891589.a n = A082564 n

end A082564

/-! ## A082564.P15711092577944617590

`A139093(n*∏{e}[A003484(n+1)², #])`
-/

namespace A082564.P15711092577944617590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003484 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139093 (n * (∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p))

end

end A082564.P15711092577944617590

namespace A082564

/-- `A139093(n*∏{e}[A003484(n+1)², #])` -/
def P15711092577944617590.Spec : Prop :=
  ∀ n, P15711092577944617590.a n = A082564 n

end A082564

/-! ## A082564.P7181785746301826350

`A260486(A305548(n))`
-/

namespace A082564.P7181785746301826350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260486 (A305548 n).toNat

end

end A082564.P7181785746301826350

namespace A082564

/-- `A260486(A305548(n))` -/
def P7181785746301826350.Spec : Prop :=
  ∀ n, P7181785746301826350.a n = A082564 n

end A082564

/-! ## A082564.P13061082198655920690

`A139093(n)*A219977(n²)`
-/

namespace A082564.P13061082198655920690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139093 n * A219977 (n ^ 2)

end

end A082564.P13061082198655920690

namespace A082564

/-- `A139093(n)*A219977(n²)` -/
def P13061082198655920690.Spec : Prop :=
  ∀ n, P13061082198655920690.a n = A082564 n

end A082564

/-! ## A082564.P1745110577014454829

`A139093(n)/A087960(n²)`
-/

namespace A082564.P1745110577014454829
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139093 n : ℚ) / (A087960 (n ^ 2) : ℚ)

end

end A082564.P1745110577014454829

namespace A082564

/-- `A139093(n)/A087960(n²)` -/
def P1745110577014454829.Spec : Prop :=
  ∀ n, P1745110577014454829.a n = (A082564 n : ℚ)

end A082564

/-!
# A082565: Palindromic primes associated with A082520.

The programs for A082565, there is no canonical definition to state claims against.
-/

/-! ## A082565.P10664587774600177064

`2*A082520(n+1)+1`
-/

namespace A082565.P10664587774600177064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A082520 (n + 1) + 1

end

end A082565.P10664587774600177064

/-! ## A082565.P133063045003076831

`xor(1, 2*A082520(Δ[n²]-n))`
-/

namespace A082565.P133063045003076831
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (2 * A082520 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat)

end

end A082565.P133063045003076831

/-! ## A082565.P9601113403228136637

`A082520(-xor(n, -1))+A082520(n+1)+1`
-/

namespace A082565.P9601113403228136637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082520 (-Int.xor (n : ℤ) (-1)).toNat + (A082520 (n + 1) + 1)

end

end A082565.P9601113403228136637

/-! ## A082565.P3152641007176073314

`A082520(Δ[n²]-n)+A082520(n+1)+1`
-/

namespace A082565.P3152641007176073314
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082520 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat + (A082520 (n + 1) + 1)

end

end A082565.P3152641007176073314

/-! ## A082565.P5763740337717085217

`A119788(A000040(n+1))+A082520(n+1)+A082520(n+1)`
-/

namespace A082565.P5763740337717085217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119788 (A000040 (n + 1)).toNat + (A082520 (n + 1) + A082520 (n + 1))

end

end A082565.P5763740337717085217

/-!
# A082567: Palindromic time display in hours, minutes, seconds on a six spaced 24-hour digital clock, using hours 1-24.

The programs for A082567, there is no canonical definition to state claims against.
-/

/-! ## A082567.P10440580834249053257

`A222620((4/2+8)²+n)`
-/

namespace A082567.P10440580834249053257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222620 (SequenceMachineLib.roundAway (((4 : ℚ) / 2 + 8) ^ 2 + (n : ℚ))).toNat

end

end A082567.P10440580834249053257

/-! ## A082567.P12456538426165231433

`A222620(A135600(n+1))^A007318(C(3, n))`
-/

namespace A082567.P12456538426165231433
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A222620 (A135600 (n + 1)).toNat : ℚ) ^ (A007318 (Nat.choose 3 n) : ℤ)

end

end A082567.P12456538426165231433

/-! ## A082567.P3000657806184293109

`A222620(A135600(n+1))+A008683(4*(n+1))`
-/

namespace A082567.P3000657806184293109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222620 (A135600 (n + 1)).toNat + A008683 (4 * (n + 1))

end

end A082567.P3000657806184293109

/-! ## A082567.P9906591064445583222

`A222620(A135600(n+1))-A307686(C(3, n)+1)`
-/

namespace A082567.P9906591064445583222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222620 (A135600 (n + 1)).toNat - A307686 (Nat.choose 3 n + 1)

end

end A082567.P9906591064445583222

/-! ## A082567.P5763481141737513378

`A222620(A135600(n+1))+char[A014284(3*n+37)]`
-/

namespace A082567.P5763481141737513378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014284 (3 * n + 37)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222620 (A135600 (n + 1)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A082567.P5763481141737513378

/-! ## A082567.P12043452711472684562

`A222620(A135600(n+1))%(3-A289156(2*n+5))`
-/

namespace A082567.P12043452711472684562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A222620 (A135600 (n + 1)).toNat) (3 - A289156 (2 * n + 5))

end

end A082567.P12043452711472684562

/-! ## A082567.P288538006087223657

`A344876(A243153(n+1))+A222620(A135600(n+1))`
-/

namespace A082567.P288538006087223657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344876 (A243153 (n + 1)).toNat + A222620 (A135600 (n + 1)).toNat

end

end A082567.P288538006087223657

/-! ## A082567.P15192514588095563230

`A007318(∑[n])*A222620(A135600(n+1))`
-/

namespace A082567.P15192514588095563230
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A222620 (A135600 (n + 1)).toNat

end

end A082567.P15192514588095563230

/-! ## A082567.P10489115610706600576

`record[A056525(A112382(n)+99)]`
-/

namespace A082567.P10489115610706600576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056525 (A112382 n + 99).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A082567.P10489115610706600576

/-!
# A082568: First nontrivial square root of unity mod A033949(n); i.e., smallest x > 1 such that x^2 == 1 mod A033949(n).

The programs for A082568, there is no canonical definition to state claims against.
-/

/-! ## A082568.P12784803611550756658

`A033949(n+1)-A277777(n+1)`
-/

namespace A082568.P12784803611550756658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033949 (n + 1) - A277777 (n + 1)

end

end A082568.P12784803611550756658

/-! ## A082568.P11294011617957052836

`A175594(n+2)-A277777(n+1)`
-/

namespace A082568.P11294011617957052836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175594 (n + 2) - A277777 (n + 1)

end

end A082568.P11294011617957052836

/-! ## A082568.P14514615906431368725

`A070667(A033949(n+1))`
-/

namespace A082568.P14514615906431368725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070667 (A033949 (n + 1)).toNat

end

end A082568.P14514615906431368725

/-! ## A082568.P3179506985797039984

`A070667(A175594(n+2))`
-/

namespace A082568.P3179506985797039984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070667 (A175594 (n + 2)).toNat

end

end A082568.P3179506985797039984

/-! ## A082568.P639748367376445844

`A215653(A033949(xor(1, xor(1, n+1))))`
-/

namespace A082568.P639748367376445844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215653 (A033949 (Nat.xor 1 (Nat.xor 1 (n + 1)))).toNat

end

end A082568.P639748367376445844

/-! ## A082568.P6523826437590780627

`A215653(A033949(2*n+1-n))`
-/

namespace A082568.P6523826437590780627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215653 (A033949 (2 * n + 1 - n)).toNat

end

end A082568.P6523826437590780627

/-! ## A082568.P8021705462321672711

`A070667(lt[A046146(n), A072273(n+1)])`
-/

namespace A082568.P8021705462321672711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046146 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072273 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070667 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A082568.P8021705462321672711

/-! ## A082568.P4922053628496414200

`A215653(A033949(n+1)%A033949(n+2))`
-/

namespace A082568.P4922053628496414200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215653 (Int.tmod (A033949 (n + 1)) (A033949 (n + 2))).toNat

end

end A082568.P4922053628496414200

/-!
# A082569: a(1)=2; a(n)=ceiling(n*(a(n-1)-1/a(n-1))).

The programs for A082569, the canonical program `A082569.P7665349069469247786` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082569 has offset 1).

The definition of A082569 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)*a(n-1)` (program `A082569.P7665349069469247786`, by `A082569.P7665349069469247786.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A082569.P7665349069469247786

`(n+1)*a(n-1)` with `a(0)=2, a(1)=3, a(2)=8`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A082569

/-- `(n+1)*a(n-1)` -/
def P7665349069469247786.Spec : Prop :=
  ∀ n, (P7665349069469247786.a n : ℤ) = A082569 (n + 1)

theorem P7665349069469247786.correct : P7665349069469247786.Spec := by
  intro n
  simp only [A082569, Nat.add_sub_cancel]

end A082569

/-! ## A082569.P7922290241630185321

`ceil((n+1)*a(n-1))` with `a(0)=2, a(1)=3, a(2)=8`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).

`ceil` is left out, it is the identity on integers.
-/

namespace A082569.P7922290241630185321
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 3, 8] fun n a =>
  (n + 1) * a (n - 1)

end

end A082569.P7922290241630185321

namespace A082569

/-- `ceil((n+1)*a(n-1))` -/
def P7922290241630185321.Spec : Prop :=
  ∀ n, (P7922290241630185321.a n : ℤ) = A082569 (n + 1)

theorem P7922290241630185321.correct : P7922290241630185321.Spec := by
  intro n
  simp only [A082569, Nat.add_sub_cancel, A082569.P7922290241630185321.a, A082569.P7665349069469247786.a, SequenceMachineLib.memo_apply]

end A082569

/-! ## A082569.P14314370659226005463

`ceil((n+1)*(a(n-1)-1/a(n-1)))` with `a(0)=2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A082569.P14314370659226005463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  ⌈(n + 1 : ℚ) * ((a (n - 1) : ℚ) - 1 / (a (n - 1) : ℚ))⌉

end

end A082569.P14314370659226005463

namespace A082569

/-- `ceil((n+1)*(a(n-1)-1/a(n-1)))` -/
def P14314370659226005463.Spec : Prop :=
  ∀ n, P14314370659226005463.a n = A082569 (n + 1)

end A082569

/-! ## A082569.P15747837858002333872

`ceil(4/3*(n+1)!)`
-/

namespace A082569.P15747837858002333872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(4 : ℚ) / 3 * (Nat.factorial (n + 1) : ℚ)⌉

end

end A082569.P15747837858002333872

namespace A082569

/-- `ceil(4/3*(n+1)!)` -/
def P15747837858002333872.Spec : Prop :=
  ∀ n, P15747837858002333872.a n = A082569 (n + 1)

end A082569

/-! ## A082569.P10842917063700559762

`record[n*a(n-1)]` with `a(0)=2, a(1)=0, a(2)=3, a(3)=8`
-/

namespace A082569.P10842917063700559762
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 0, 3, 8] fun n f1 =>
  n * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A082569.P10842917063700559762

namespace A082569

/-- `record[n*a(n-1)]` -/
def P10842917063700559762.Spec : Prop :=
  ∀ n, (P10842917063700559762.a n : ℤ) = A082569 (n + 1)

end A082569

/-! ## A082569.P13860392349114576170

`round((4*(n+1)!+1)/3)`
-/

namespace A082569.P13860392349114576170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((4 * Nat.factorial (n + 1) + 1 : ℚ) / 3)

end

end A082569.P13860392349114576170

namespace A082569

/-- `round((4*(n+1)!+1)/3)` -/
def P13860392349114576170.Spec : Prop :=
  ∀ n, P13860392349114576170.a n = A082569 (n + 1)

end A082569

/-! ## A082569.P383725403567865178

`ceil((n+1)!/3)+(n+1)!`
-/

namespace A082569.P383725403567865178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.factorial (n + 1) : ℚ) / 3⌉ + (Nat.factorial (n + 1) : ℤ)

end

end A082569.P383725403567865178

namespace A082569

/-- `ceil((n+1)!/3)+(n+1)!` -/
def P383725403567865178.Spec : Prop :=
  ∀ n, P383725403567865178.a n = A082569 (n + 1)

end A082569

/-! ## A082569.P5426929634053157372

`ceil(∏[n+1]+∏[n+1]/3)`
-/

namespace A082569.P5426929634053157372
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) + ((∏ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ) / 3⌉

end

end A082569.P5426929634053157372

namespace A082569

/-- `ceil(∏[n+1]+∏[n+1]/3)` -/
def P5426929634053157372.Spec : Prop :=
  ∀ n, P5426929634053157372.a n = A082569 (n + 1)

end A082569

/-! ## A082569.P13350439225235151359

`a(n-1)-n*(floor(2/n)/2-a(n-1))` with `a(0)=2`
-/

namespace A082569.P13350439225235151359
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) - (n : ℚ) * ((⌊2 / (n : ℚ)⌋ : ℚ) / 2 - a (n - 1))

end

end A082569.P13350439225235151359

namespace A082569

/-- `a(n-1)-n*(floor(2/n)/2-a(n-1))` -/
def P13350439225235151359.Spec : Prop :=
  ∀ n, P13350439225235151359.a n = (A082569 (n + 1) : ℚ)

end A082569

/-! ## A082569.P8627201017082662020

`a(n-1)-(a(n-1)%2-n*a(n-1))` with `a(0)=2, a(1)=3`
-/

namespace A082569.P8627201017082662020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  a (n - 1) - (Int.tmod (a (n - 1)) 2 - (n : ℤ) * a (n - 1))

end

end A082569.P8627201017082662020

namespace A082569

/-- `a(n-1)-(a(n-1)%2-n*a(n-1))` -/
def P8627201017082662020.Spec : Prop :=
  ∀ n, P8627201017082662020.a n = A082569 (n + 1)

end A082569

/-!
# A082570: a(1)=1, a(n)=ceiling(n*(a(n-1)+1/a(n-1))).

The programs for A082570, there is no canonical definition to state claims against.
-/

/-! ## A082570.P3793994489826136004

`1+(n+1)*a(n-1)` with `a(0)=1, a(1)=4`
-/

namespace A082570.P3793994489826136004
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n a =>
  1 + (n + 1) * a (n - 1)

end

end A082570.P3793994489826136004

/-! ## A082570.P7094021222212634021

`a(n-1)/(n+1)^(-1)+1` with `a(0)=1, a(1)=4`
-/

namespace A082570.P7094021222212634021
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 4] fun n a =>
  a (n - 1) / (n + 1 : ℚ) ^ (-1 : ℤ) + 1

end

end A082570.P7094021222212634021

/-! ## A082570.P6502585176268577290

`A070960(n+1)+A056542(n+1)`
-/

namespace A082570.P6502585176268577290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070960 (n + 1) + A056542 (n + 1)

end

end A082570.P6502585176268577290

/-! ## A082570.P14963516105864697634

`A000522(n+1)-A001710(n+1)`
-/

namespace A082570.P14963516105864697634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000522 (n + 1) - A001710 (n + 1)

end

end A082570.P14963516105864697634

/-! ## A082570.P12575760192833024926

`A000166(n+1)+A306150(n+1)-A001710(n+1)`
-/

namespace A082570.P12575760192833024926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000166 (n + 1) + (A306150 (n + 1) - A001710 (n + 1))

end

end A082570.P12575760192833024926

/-!
# A082572: a(n) is the least number m such that the arithmetic mean of the distinct primes dividing m equals n.

The programs for A082572, there is no canonical definition to state claims against.
-/

/-! ## A082572.P6623065125474407283

`gcd(A238711(n+2)²², A266618(n+2))`
-/

namespace A082572.P6623065125474407283
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((A238711 (n + 2) ^ 2) ^ 2) (A266618 (n + 2))

end

end A082572.P6623065125474407283

/-! ## A082572.P11511983382616146076

`or(A266588(A008279(n)), A266618(n+2))`
-/

namespace A082572.P11511983382616146076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A266588 (A008279 n).toNat) (A266618 (n + 2))

end

end A082572.P11511983382616146076

/-! ## A082572.P16393469750364239228

`A266618(n+2)%A002762(n)`
-/

namespace A082572.P16393469750364239228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A266618 (n + 2)) (A002762 n)

end

end A082572.P16393469750364239228

/-! ## A082572.P5283945395454386086

`and(A266618(n+2), A359085(n+1))`
-/

namespace A082572.P5283945395454386086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A266618 (n + 2)) (A359085 (n + 1))

end

end A082572.P5283945395454386086

/-! ## A082572.P18149926615824401625

`and(A152388(n+1), A266618(n+2))`
-/

namespace A082572.P18149926615824401625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A152388 (n + 1)) (A266618 (n + 2))

end

end A082572.P18149926615824401625

/-!
# A082573: a(1)=1, a(n)=ceiling(n*(a(n-1)+3/a(n-1))).

The programs for A082573, there is no canonical definition to state claims against.
-/

/-! ## A082573.P14734640893283990360

`(n+1)*a(n-1)+1` with `a(0)=1, a(1)=8, a(2)=26`
-/

namespace A082573.P14734640893283990360
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 8, 26] fun n a =>
  (n + 1) * a (n - 1) + 1

end

end A082573.P14734640893283990360

/-!
# A082574: a(1)=1, a(n) = ceiling(r(3)*a(n-1)) where r(3) = (1/2)*(3 + sqrt(13)) is the positive root of X^2 = 3*X + 1.

The programs for A082574, the canonical program `A082574.P12761810020937530114` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082574 has offset 1).

The definition of A082574 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A082574.P17782291013832021014

`ogf(1/(1-4x+2x^2+x^3))`
-/

namespace A082574.P17782291013832021014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -4, 2, 1] n

end

end A082574.P17782291013832021014

namespace A082574

/-- `ogf(1/(1-4x+2x^2+x^3))` -/
def P17782291013832021014.Spec : Prop :=
  ∀ n, P17782291013832021014.a n = A082574 (n + 1)

end A082574

/-! ## A082574.P12761810020937530114

`4*a(n-1)-2*a(n-2)-a(n-3)` with `a(0)=1, a(1)=4, a(2)=14`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A082574

/-- `4*a(n-1)-2*a(n-2)-a(n-3)` -/
def P12761810020937530114.Spec : Prop :=
  ∀ n, P12761810020937530114.a n = A082574 (n + 1)

theorem P12761810020937530114.correct : P12761810020937530114.Spec := by
  intro n
  simp only [A082574, Nat.add_sub_cancel]

end A082574

/-! ## A082574.P11851250935240579995

`∑[a(n-2)+3*a(n-1)]` with `a(0)=1, a(1)=3`
-/

namespace A082574.P11851250935240579995
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  f1 (n - 2) + 3 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082574.P11851250935240579995

namespace A082574

/-- `∑[a(n-2)+3*a(n-1)]` -/
def P11851250935240579995.Spec : Prop :=
  ∀ n, (P11851250935240579995.a n : ℤ) = A082574 (n + 1)

end A082574

/-! ## A082574.P13915005204087117107

`3*a(n-1)+a(n-2)+1` with `a(0)=1, a(1)=4`
-/

namespace A082574.P13915005204087117107
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n a =>
  3 * a (n - 1) + (a (n - 2) + 1)

end

end A082574.P13915005204087117107

namespace A082574

/-- `3*a(n-1)+a(n-2)+1` -/
def P13915005204087117107.Spec : Prop :=
  ∀ n, (P13915005204087117107.a n : ℤ) = A082574 (n + 1)

end A082574

/-! ## A082574.P13646515470338744950

`∑[3*a(n-1)-floor(-a(n-2))]` with `a(0)=1, a(1)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A082574.P13646515470338744950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  3 * f1 (n - 1) - (-f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082574.P13646515470338744950

namespace A082574

/-- `∑[3*a(n-1)-floor(-a(n-2))]` -/
def P13646515470338744950.Spec : Prop :=
  ∀ n, P13646515470338744950.a n = A082574 (n + 1)

end A082574

/-! ## A082574.P6869333922243001506

`4-(3*(1-a(n-1))-a(n-2))` with `a(0)=1, a(1)=4`
-/

namespace A082574.P6869333922243001506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  4 - (3 * (1 - a (n - 1)) - a (n - 2))

end

end A082574.P6869333922243001506

namespace A082574

/-- `4-(3*(1-a(n-1))-a(n-2))` -/
def P6869333922243001506.Spec : Prop :=
  ∀ n, P6869333922243001506.a n = A082574 (n + 1)

end A082574

/-! ## A082574.P12359672780383544799

`a(n-2)+a(n-1)/(1-2/3)+1` with `a(0)=1, a(1)=4`
-/

namespace A082574.P12359672780383544799
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 4] fun n a =>
  a (n - 2) + a (n - 1) / (1 - (2 : ℚ) / 3) + 1

end

end A082574.P12359672780383544799

namespace A082574

/-- `a(n-2)+a(n-1)/(1-2/3)+1` -/
def P12359672780383544799.Spec : Prop :=
  ∀ n, P12359672780383544799.a n = (A082574 (n + 1) : ℚ)

end A082574

/-! ## A082574.P7300085045446091826

`∑[a(n-1)+a(n-1)+a(n-1)+a(n-2)]` with `a(0)=1, a(1)=3`
-/

namespace A082574.P7300085045446091826
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  f1 (n - 1) + (f1 (n - 1) + (f1 (n - 1) + f1 (n - 2)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082574.P7300085045446091826

namespace A082574

/-- `∑[a(n-1)+a(n-1)+a(n-1)+a(n-2)]` -/
def P7300085045446091826.Spec : Prop :=
  ∀ n, (P7300085045446091826.a n : ℤ) = A082574 (n + 1)

end A082574

/-! ## A082574.P8753596954763272095

`a(n-1)+1+a(n-1)+a(n-1)+a(n-2)` with `a(0)=1, a(1)=4`
-/

namespace A082574.P8753596954763272095
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n a =>
  a (n - 1) + 1 + (a (n - 1) + (a (n - 1) + a (n - 2)))

end

end A082574.P8753596954763272095

namespace A082574

/-- `a(n-1)+1+a(n-1)+a(n-1)+a(n-2)` -/
def P8753596954763272095.Spec : Prop :=
  ∀ n, (P8753596954763272095.a n : ℤ) = A082574 (n + 1)

end A082574

/-! ## A082574.P2486435042444698094

`∑[∑[A052924(n)]]`
-/

namespace A082574.P2486435042444698094
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052924 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082574.P2486435042444698094

namespace A082574

/-- `∑[∑[A052924(n)]]` -/
def P2486435042444698094.Spec : Prop :=
  ∀ n, P2486435042444698094.a n = A082574 (n + 1)

end A082574

/-! ## A082574.P4289143789384108220

`∑[A006190(n+1)]`
-/

namespace A082574.P4289143789384108220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006190 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082574.P4289143789384108220

namespace A082574

/-- `∑[A006190(n+1)]` -/
def P4289143789384108220.Spec : Prop :=
  ∀ n, P4289143789384108220.a n = A082574 (n + 1)

end A082574

/-! ## A082574.P3355306270995633955

`∑[record[Δ[A249579(n)]]]`
-/

namespace A082574.P3355306270995633955
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249579 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082574.P3355306270995633955

namespace A082574

/-- `∑[record[Δ[A249579(n)]]]` -/
def P3355306270995633955.Spec : Prop :=
  ∀ n, P3355306270995633955.a n = A082574 (n + 1)

end A082574

/-! ## A082574.P18044644498715227367

`∑[A305889(2*(n+1))]`
-/

namespace A082574.P18044644498715227367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305889 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082574.P18044644498715227367

namespace A082574

/-- `∑[A305889(2*(n+1))]` -/
def P18044644498715227367.Spec : Prop :=
  ∀ n, P18044644498715227367.a n = A082574 (n + 1)

end A082574

/-! ## A082574.P17025278697699408822

`∑[A052991(n+1)/2]`
-/

namespace A082574.P17025278697699408822
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052991 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082574.P17025278697699408822

namespace A082574

/-- `∑[A052991(n+1)/2]` -/
def P17025278697699408822.Spec : Prop :=
  ∀ n, P17025278697699408822.a n = (A082574 (n + 1) : ℚ)

end A082574

/-! ## A082574.P14287348815960054312

`∑[A107855(2*(n+3))]`
-/

namespace A082574.P14287348815960054312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107855 (2 * (n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082574.P14287348815960054312

namespace A082574

/-- `∑[A107855(2*(n+3))]` -/
def P14287348815960054312.Spec : Prop :=
  ∀ n, P14287348815960054312.a n = A082574 (n + 1)

end A082574

/-! ## A082574.P8668949402247085951

`∑[A249579(4*(n+1))]`
-/

namespace A082574.P8668949402247085951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249579 (4 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082574.P8668949402247085951

namespace A082574

/-- `∑[A249579(4*(n+1))]` -/
def P8668949402247085951.Spec : Prop :=
  ∀ n, P8668949402247085951.a n = A082574 (n + 1)

end A082574

/-! ## A082574.P18313099191321650272

`A020704(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A082574.P18313099191321650272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A020704 (n - 1) + a (n - 1)

end

end A082574.P18313099191321650272

namespace A082574

/-- `A020704(n-1)+a(n-1)` -/
def P18313099191321650272.Spec : Prop :=
  ∀ n, P18313099191321650272.a n = A082574 (n + 1)

end A082574

/-! ## A082574.P9295697283003825533

`A033538(n+1)-A006190(n)`
-/

namespace A082574.P9295697283003825533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033538 (n + 1) - A006190 n

end

end A082574.P9295697283003825533

namespace A082574

/-- `A033538(n+1)-A006190(n)` -/
def P9295697283003825533.Spec : Prop :=
  ∀ n, P9295697283003825533.a n = A082574 (n + 1)

end A082574

/-! ## A082574.P7249744606415050938

`∑[A052906(n+1)/3]`
-/

namespace A082574.P7249744606415050938
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052906 (n + 1) : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082574.P7249744606415050938

namespace A082574

/-- `∑[A052906(n+1)/3]` -/
def P7249744606415050938.Spec : Prop :=
  ∀ n, P7249744606415050938.a n = (A082574 (n + 1) : ℚ)

end A082574

/-! ## A082574.P4035369131773594070

`(A003688(n+2)-1)/3`
-/

namespace A082574.P4035369131773594070
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003688 (n + 2) - 1 : ℚ) / 3

end

end A082574.P4035369131773594070

namespace A082574

/-- `(A003688(n+2)-1)/3` -/
def P4035369131773594070.Spec : Prop :=
  ∀ n, P4035369131773594070.a n = (A082574 (n + 1) : ℚ)

end A082574

/-!
# A082575: Nonnegative numbers in (3*A005836) union (3*A005836 - 2) [A005836 lists the numbers with base-3 representation containing no 2].

The programs for A082575, the canonical program `A082575.P12036589704592862583` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082575 has offset 1).

The definition of A082575 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A082575.P12036589704592862583

`∑[ceil(3^val(n+1, 2)/2)]-(3^(n%2)-n%2)`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A082575

/-- `∑[ceil(3^val(n+1, 2)/2)]-(3^(n%2)-n%2)` -/
def P12036589704592862583.Spec : Prop :=
  ∀ n, P12036589704592862583.a n = A082575 (n + 1)

theorem P12036589704592862583.correct : P12036589704592862583.Spec := by
  intro n
  simp only [A082575, Nat.add_sub_cancel]

end A082575

/-! ## A082575.P9962830690492895115

`A186776(n+2)-2`
-/

namespace A082575.P9962830690492895115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186776 (n + 2) - 2

end

end A082575.P9962830690492895115

namespace A082575

/-- `A186776(n+2)-2` -/
def P9962830690492895115.Spec : Prop :=
  ∀ n, P9962830690492895115.a n = A082575 (n + 1)

end A082575

/-! ## A082575.P15803401639898643069

`A004793(n+2)-3`
-/

namespace A082575.P15803401639898643069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004793 (n + 2) - 3

end

end A082575.P15803401639898643069

namespace A082575

/-- `A004793(n+2)-3` -/
def P15803401639898643069.Spec : Prop :=
  ∀ n, P15803401639898643069.a n = A082575 (n + 1)

end A082575

/-! ## A082575.P12560911092507522697

`A033160(n+2)-4`
-/

namespace A082575.P12560911092507522697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033160 (n + 2) - 4

end

end A082575.P12560911092507522697

namespace A082575

/-- `A033160(n+2)-4` -/
def P12560911092507522697.Spec : Prop :=
  ∀ n, P12560911092507522697.a n = A082575 (n + 1)

end A082575

/-! ## A082575.P2224122577544751413

`A033163(n+2)-5`
-/

namespace A082575.P2224122577544751413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033163 (n + 2) - 5

end

end A082575.P2224122577544751413

namespace A082575

/-- `A033163(n+2)-5` -/
def P2224122577544751413.Spec : Prop :=
  ∀ n, P2224122577544751413.a n = A082575 (n + 1)

end A082575

/-! ## A082575.P10214179049465426646

`A005836(n+2)-A000034(n)`
-/

namespace A082575.P10214179049465426646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005836 (n + 2) - A000034 n

end

end A082575.P10214179049465426646

namespace A082575

/-- `A005836(n+2)-A000034(n)` -/
def P10214179049465426646.Spec : Prop :=
  ∀ n, P10214179049465426646.a n = A082575 (n + 1)

end A082575

/-! ## A082575.P16198231394409286045

`A003278(n+2)-A010693(n)`
-/

namespace A082575.P16198231394409286045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003278 (n + 2) - A010693 n

end

end A082575.P16198231394409286045

namespace A082575

/-- `A003278(n+2)-A010693(n)` -/
def P16198231394409286045.Spec : Prop :=
  ∀ n, P16198231394409286045.a n = A082575 (n + 1)

end A082575

/-! ## A082575.P15929610940048352958

`A005836(n+2)-Δ[A032766(n)]`
-/

namespace A082575.P15929610940048352958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005836 (n + 2) - (f1 (n + 1) - f1 n)

end

end A082575.P15929610940048352958

namespace A082575

/-- `A005836(n+2)-Δ[A032766(n)]` -/
def P15929610940048352958.Spec : Prop :=
  ∀ n, P15929610940048352958.a n = A082575 (n + 1)

end A082575

/-! ## A082575.P15225737267327738921

`A003278(n+2)-(3-A059841(n))`
-/

namespace A082575.P15225737267327738921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003278 (n + 2) - (3 - A059841 n)

end

end A082575.P15225737267327738921

namespace A082575

/-- `A003278(n+2)-(3-A059841(n))` -/
def P15225737267327738921.Spec : Prop :=
  ∀ n, P15225737267327738921.a n = A082575 (n + 1)

end A082575

/-! ## A082575.P1274185417171308365

`A033162(n+2)-(7-A176059(n))`
-/

namespace A082575.P1274185417171308365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033162 (n + 2) - (7 - A176059 n)

end

end A082575.P1274185417171308365

namespace A082575

/-- `A033162(n+2)-(7-A176059(n))` -/
def P1274185417171308365.Spec : Prop :=
  ∀ n, P1274185417171308365.a n = A082575 (n + 1)

end A082575

/-! ## A082575.P9587269610495764505

`A005836(n+2)-Δ[A007494(n+1)]`
-/

namespace A082575.P9587269610495764505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005836 (n + 2) - (f1 (n + 1) - f1 n)

end

end A082575.P9587269610495764505

namespace A082575

/-- `A005836(n+2)-Δ[A007494(n+1)]` -/
def P9587269610495764505.Spec : Prop :=
  ∀ n, P9587269610495764505.a n = A082575 (n + 1)

end A082575

/-! ## A082575.P11082469266248680363

`A000035(n+1)+A005836(n+2)-2`
-/

namespace A082575.P11082469266248680363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (n + 1) + (A005836 (n + 2) - 2)

end

end A082575.P11082469266248680363

namespace A082575

/-- `A000035(n+1)+A005836(n+2)-2` -/
def P11082469266248680363.Spec : Prop :=
  ∀ n, P11082469266248680363.a n = A082575 (n + 1)

end A082575

/-! ## A082575.P3141090542491643991

`A185256(n+2)-(A140081(n+1)+2)`
-/

namespace A082575.P3141090542491643991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185256 (n + 2) - (A140081 (n + 1) + 2)

end

end A082575.P3141090542491643991

namespace A082575

/-- `A185256(n+2)-(A140081(n+1)+2)` -/
def P3141090542491643991.Spec : Prop :=
  ∀ n, P3141090542491643991.a n = A082575 (n + 1)

end A082575

/-! ## A082575.P7817882401147872838

`A191107(n+2)-(A055247(n+2)+2)`
-/

namespace A082575.P7817882401147872838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191107 (n + 2) - (A055247 (n + 2) + 2)

end

end A082575.P7817882401147872838

namespace A082575

/-- `A191107(n+2)-(A055247(n+2)+2)` -/
def P7817882401147872838.Spec : Prop :=
  ∀ n, P7817882401147872838.a n = A082575 (n + 1)

end A082575

/-! ## A082575.P6109166325132250741

`A354047(A327492(n+1))-2`
-/

namespace A082575.P6109166325132250741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354047 (A327492 (n + 1)).toNat - 2

end

end A082575.P6109166325132250741

namespace A082575

/-- `A354047(A327492(n+1))-2` -/
def P6109166325132250741.Spec : Prop :=
  ∀ n, P6109166325132250741.a n = A082575 (n + 1)

end A082575

/-! ## A082575.P4598376388816447514

`eq[2, A039973(2*n+1)]-1`
-/

namespace A082575.P4598376388816447514
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039973 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - 1

end

end A082575.P4598376388816447514

namespace A082575

/-- `eq[2, A039973(2*n+1)]-1` -/
def P4598376388816447514.Spec : Prop :=
  ∀ n, P4598376388816447514.a n = A082575 (n + 1)

end A082575

/-! ## A082575.P4858605029107187960

`eq[2, A117966(2*n+1)+A117966(n+1)]`
-/

namespace A082575.P4858605029107187960
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117966 (2 * n + 1) + A117966 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A082575.P4858605029107187960

namespace A082575

/-- `eq[2, A117966(2*n+1)+A117966(n+1)]` -/
def P4858605029107187960.Spec : Prop :=
  ∀ n, (P4858605029107187960.a n : ℤ) = A082575 (n + 1)

end A082575

/-! ## A082575.P10261349893660275672

`record[A060372(n)-n%3]`
-/

namespace A082575.P10261349893660275672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060372 n - ((n % 3 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A082575.P10261349893660275672

namespace A082575

/-- `record[A060372(n)-n%3]` -/
def P10261349893660275672.Spec : Prop :=
  ∀ n, P10261349893660275672.a n = A082575 (n + 1)

end A082575

/-! ## A082575.P7935728213673488555

`eq[1, A039964(n)]`
-/

namespace A082575.P7935728213673488555
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039964 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A082575.P7935728213673488555

namespace A082575

/-- `eq[1, A039964(n)]` -/
def P7935728213673488555.Spec : Prop :=
  ∀ n, (P7935728213673488555.a n : ℤ) = A082575 (n + 1)

end A082575

/-! ## A082575.P3410663531234824518

`eq[2, A039965(n+2)]`
-/

namespace A082575.P3410663531234824518
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039965 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A082575.P3410663531234824518

namespace A082575

/-- `eq[2, A039965(n+2)]` -/
def P3410663531234824518.Spec : Prop :=
  ∀ n, (P3410663531234824518.a n : ℤ) = A082575 (n + 1)

end A082575

/-!
# A082576: Numbers k such that k^k has final digits the same as all the digits of k.

The programs for A082576, there is no canonical definition to state claims against.
-/

/-! ## A082576.P10375788967745010877

`record[A371048(n+1)]`
-/

namespace A082576.P10375788967745010877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371048 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A082576.P10375788967745010877

/-! ## A082576.P12312284979467334239

`A371048(lt[A004526(n), A371048(n)])`
-/

namespace A082576.P12312284979467334239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371048 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371048 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A082576.P12312284979467334239

/-! ## A082576.P6170419627279201443

`A371048(lt[A106249(n), A371048(n)])`
-/

namespace A082576.P6170419627279201443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106249 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371048 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371048 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A082576.P6170419627279201443

/-! ## A082576.P10300512322599445726

`A371048(lt[A226107(n+1), A371048(n)])`
-/

namespace A082576.P10300512322599445726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226107 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371048 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371048 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A082576.P10300512322599445726

/-! ## A082576.P2089826135254311636

`eq[n, A371048(A028310(n))]`
-/

namespace A082576.P2089826135254311636
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371048 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A082576.P2089826135254311636

/-!
# A082577: a(n) = first digit to the right of decimal point of n*(sqrt(5)-1)/2.

The programs for A082577, the canonical program `A082577.P3049613782673690896` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082577 has offset 1).

The definition of A082577 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A082577.P3049613782673690896

`floor(10*(n+1)/ϕ)%10`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A082577

/-- `floor(10*(n+1)/ϕ)%10` -/
def P3049613782673690896.Spec : Prop :=
  ∀ n, P3049613782673690896.a n = A082577 (n + 1)

theorem P3049613782673690896.correct : P3049613782673690896.Spec := by
  intro n
  simp only [A082577, Nat.add_sub_cancel]

end A082577

/-! ## A082577.P10641165293396385579

`floor(10*∑[ϕ-A001468(n)])`
-/

namespace A082577.P10641165293396385579
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.goldenRatio - (A001468 n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊10 * (∑ j ∈ Finset.range (n + 1), f1 j)⌋

end

end A082577.P10641165293396385579

namespace A082577

/-- `floor(10*∑[ϕ-A001468(n)])` -/
def P10641165293396385579.Spec : Prop :=
  ∀ n, P10641165293396385579.a n = A082577 (n + 1)

end A082577

/-! ## A082577.P4421256918930958678

`A009993(ceil(10*∑[ϕ-A001468(n)]))`
-/

namespace A082577.P4421256918930958678
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.goldenRatio - (A001468 n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009993 ⌈10 * (∑ j ∈ Finset.range (n + 1), f1 j)⌉.toNat

end

end A082577.P4421256918930958678

namespace A082577

/-- `A009993(ceil(10*∑[ϕ-A001468(n)]))` -/
def P4421256918930958678.Spec : Prop :=
  ∀ n, P4421256918930958678.a n = A082577 (n + 1)

end A082577

/-! ## A082577.P7687419659273045870

`A009994(ceil(10*∑[ϕ-A001468(n)]))`
-/

namespace A082577.P7687419659273045870
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.goldenRatio - (A001468 n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009994 ⌈10 * (∑ j ∈ Finset.range (n + 1), f1 j)⌉.toNat

end

end A082577.P7687419659273045870

namespace A082577

/-- `A009994(ceil(10*∑[ϕ-A001468(n)]))` -/
def P7687419659273045870.Spec : Prop :=
  ∀ n, P7687419659273045870.a n = A082577 (n + 1)

end A082577

/-! ## A082577.P2209189047040746216

`A009995(ceil(10*∑[ϕ-A001468(n)]))`
-/

namespace A082577.P2209189047040746216
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.goldenRatio - (A001468 n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009995 ⌈10 * (∑ j ∈ Finset.range (n + 1), f1 j)⌉.toNat

end

end A082577.P2209189047040746216

namespace A082577

/-- `A009995(ceil(10*∑[ϕ-A001468(n)]))` -/
def P2209189047040746216.Spec : Prop :=
  ∀ n, P2209189047040746216.a n = A082577 (n + 1)

end A082577

/-! ## A082577.P5473082868785554094

`A005206(A017377(n))-A008592(A005206(n))`
-/

namespace A082577.P5473082868785554094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (A017377 n).toNat - A008592 (A005206 n).toNat

end

end A082577.P5473082868785554094

namespace A082577

/-- `A005206(A017377(n))-A008592(A005206(n))` -/
def P5473082868785554094.Spec : Prop :=
  ∀ n, P5473082868785554094.a n = A082577 (n + 1)

end A082577

/-! ## A082577.P2384756740713294803

`A010879(floor(10*(n+1)*ϕ²))`
-/

namespace A082577.P2384756740713294803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 ⌊(10 * (n + 1) : ℝ) * Real.goldenRatio ^ 2⌋.toNat

end

end A082577.P2384756740713294803

namespace A082577

/-- `A010879(floor(10*(n+1)*ϕ²))` -/
def P2384756740713294803.Spec : Prop :=
  ∀ n, P2384756740713294803.a n = A082577 (n + 1)

end A082577

/-!
# A082578: a(n) = Sum_{k=0..n} binomial(2*k, k) * binomial(2*k+1,k).

The programs for A082578, there is no canonical definition to state claims against.
-/

/-! ## A082578.P6203242669450826688

`∑[C(2*n, n)*C(Δ[n²], n)]`
-/

namespace A082578.P6203242669450826688
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n) n * Nat.choose ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082578.P6203242669450826688

/-! ## A082578.P15461060846797021814

`∑[∏[(4*n+2)/(n+1)]/2*C(2*n, n)]`
-/

namespace A082578.P15461060846797021814
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 * n + 2 : ℚ) / (n + 1 : ℚ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f2 j) / 2 * (Nat.choose (2 * n) n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082578.P15461060846797021814

/-! ## A082578.P7937445248377912912

`a(n-1)+(2*n+1)*C(2*n, n)²/(n+1)` with `a(0)=1`
-/

namespace A082578.P7937445248377912912
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (2 * n + 1 : ℚ) * ((Nat.choose (2 * n) n ^ 2 : ℚ) / (n + 1 : ℚ))

end

end A082578.P7937445248377912912

/-! ## A082578.P8464546735741879665

`∑[A000894(n)]`
-/

namespace A082578.P8464546735741879665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000894 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082578.P8464546735741879665

/-! ## A082578.P10211074929806374788

`∑[A005566(2*n)]`
-/

namespace A082578.P10211074929806374788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005566 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082578.P10211074929806374788

/-! ## A082578.P3561003528690962498

`∑[(n+1)*A000891(n)]`
-/

namespace A082578.P3561003528690962498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000891 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082578.P3561003528690962498

/-! ## A082578.P4187993589261384202

`∑[∑[n+1]*A005568(n)]`
-/

namespace A082578.P4187993589261384202
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) * A005568 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082578.P4187993589261384202

/-! ## A082578.P4362580196339567399

`∑[A241530(2*n+1)/2]`
-/

namespace A082578.P4362580196339567399
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A241530 (2 * n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082578.P4362580196339567399

/-! ## A082578.P405409049303113152

`∑[A000108(n)*A002457(n)]`
-/

namespace A082578.P405409049303113152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * A002457 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082578.P405409049303113152

/-! ## A082578.P246375628851527090

`∑[A000984(n)*A001700(n)]`
-/

namespace A082578.P246375628851527090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n * A001700 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082578.P246375628851527090

/-!
# A082579: Expansion of e.g.f.: exp( x/(1-x)^2 ).

The programs for A082579, there is no canonical definition to state claims against.
-/

/-! ## A082579.P3807168717697601461

`A293012(∑[n+3])`
-/

namespace A082579.P3807168717697601461
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293012 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A082579.P3807168717697601461

/-! ## A082579.P13353321273191544010

`A293785(∑[n+3])`
-/

namespace A082579.P13353321273191544010
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293785 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A082579.P13353321273191544010

/-! ## A082579.P15894330550733072968

`A293785(A027379(n+1))/A160467(A186424(n))`
-/

namespace A082579.P15894330550733072968
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A293785 (A027379 (n + 1)).toNat : ℚ) / (A160467 (A186424 n).toNat : ℚ)

end

end A082579.P15894330550733072968

/-! ## A082579.P12956398919366570794

`A293718(2*n²)`
-/

namespace A082579.P12956398919366570794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293718 (2 * n ^ 2)

end

end A082579.P12956398919366570794

/-! ## A082579.P2223801941827837908

`or(1, A293718(A001105(n)))`
-/

namespace A082579.P2223801941827837908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A293718 (A001105 n).toNat)

end

end A082579.P2223801941827837908

/-!
# A082580: A sum of Lah numbers and binomial coefficients.

The programs for A082580, there is no canonical definition to state claims against.
-/

/-! ## A082580.P18387766959863712555

`A004396(A174493(n+1))`
-/

namespace A082580.P18387766959863712555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A174493 (n + 1)).toNat

end

end A082580.P18387766959863712555

/-! ## A082580.P16788615789808902476

`A004523(A174493(n+1)+1)`
-/

namespace A082580.P16788615789808902476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 (A174493 (n + 1) + 1).toNat

end

end A082580.P16788615789808902476

/-!
# A082581: Binomial coefficients C(p, k), 2<=k<=p-2, sorted, with duplicates removed, p being prime.

The programs for A082581, there is no canonical definition to state claims against.
-/

/-! ## A082581.P13146615223301394384

`filter[A011973(3*n), A155899(#)]`
-/

namespace A082581.P13146615223301394384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011973 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A155899 (f1 j).toNat = 1) n)

end

end A082581.P13146615223301394384

/-! ## A082581.P9211155631746285353

`A263005(A262975(n)+A262972(n+1))`
-/

namespace A082581.P9211155631746285353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263005 (A262975 n + A262972 (n + 1)).toNat

end

end A082581.P9211155631746285353

/-!
# A082582: Expansion of (1 + x^2 - sqrt( 1 - 4*x + 2*x^2 + x^4)) / (2*x) in powers of x.

The programs for A082582, there is no canonical definition to state claims against.
-/

/-! ## A082582.P18330745961890820482

`A086581(abs(1-n))`
-/

namespace A082582.P18330745961890820482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086581 |1 - (n : ℤ)|.toNat

end

end A082582.P18330745961890820482

/-! ## A082582.P5802754390090638232

`A025242(floor(n-atan(n))+3)`
-/

namespace A082582.P5802754390090638232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025242 (⌊(n : ℝ) - Real.arctan (n : ℝ)⌋ + 3).toNat

end

end A082582.P5802754390090638232

/-! ## A082582.P13899654201903314863

`A025242(floor(acot(n))+n+1)`
-/

namespace A082582.P13899654201903314863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025242 (⌊SequenceMachineLib.acot (n : ℝ)⌋ + (n + 1 : ℤ)).toNat

end

end A082582.P13899654201903314863

/-! ## A082582.P2123516972458927909

`A025242(round(acot(n)+n)+1)`
-/

namespace A082582.P2123516972458927909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025242 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ)) + 1).toNat

end

end A082582.P2123516972458927909

/-! ## A082582.P12720162938681188858

`A025242(round(sqrt(n²+1))+1)`
-/

namespace A082582.P12720162938681188858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025242 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ)) + 1).toNat

end

end A082582.P12720162938681188858

/-! ## A082582.P1331058611482363847

`A025242(n+1)-A000007(n)`
-/

namespace A082582.P1331058611482363847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025242 (n + 1) - A000007 n

end

end A082582.P1331058611482363847

/-! ## A082582.P9667229037161864985

`A025242(n+1)/A054977(n)`
-/

namespace A082582.P9667229037161864985
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025242 (n + 1) : ℚ) / (A054977 n : ℚ)

end

end A082582.P9667229037161864985

/-! ## A082582.P5927949615505027402

`A025242(n+1)/A014963(4*n+2)`
-/

namespace A082582.P5927949615505027402
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025242 (n + 1) : ℚ) / (A014963 (4 * n + 2) : ℚ)

end

end A082582.P5927949615505027402

/-! ## A082582.P14467840208462892708

`A025242(n+1)-A008281(A057944(n))`
-/

namespace A082582.P14467840208462892708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025242 (n + 1) - A008281 (A057944 n).toNat

end

end A082582.P14467840208462892708

/-! ## A082582.P15300658787014859831

`A025242(n+2)-Δ[A025242(A254667(n+1))]`
-/

namespace A082582.P15300658787014859831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025242 (A254667 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025242 (n + 2) - (f1 (n + 1) - f1 n)

end

end A082582.P15300658787014859831

/-! ## A082582.P17992358847517337448

`A025242(n+2)-Δ[A025242(A233583(n+2))]`
-/

namespace A082582.P17992358847517337448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025242 (A233583 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025242 (n + 2) - (f1 (n + 1) - f1 n)

end

end A082582.P17992358847517337448

/-! ## A082582.P8603677341208189390

`A025242(n+1)/A108626(A000007(n)*A108626(n))`
-/

namespace A082582.P8603677341208189390
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025242 (n + 1) : ℚ) / (A108626 (A000007 n * A108626 n).toNat : ℚ)

end

end A082582.P8603677341208189390

/-! ## A082582.P18011748436613079780

`A025242(n+1)/A108626(A000007(n)/A108626(n))`
-/

namespace A082582.P18011748436613079780
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025242 (n + 1) : ℚ) / (A108626 (SequenceMachineLib.roundAway ((A000007 n : ℚ) / (A108626 n : ℚ))).toNat : ℚ)

end

end A082582.P18011748436613079780

/-! ## A082582.P8980859591835120927

`A098978(A002620(n+1))`
-/

namespace A082582.P8980859591835120927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098978 (A002620 (n + 1)).toNat

end

end A082582.P8980859591835120927

/-! ## A082582.P15573663241574129687

`A098978(A076921(n+1))`
-/

namespace A082582.P15573663241574129687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098978 (A076921 (n + 1)).toNat

end

end A082582.P15573663241574129687

/-! ## A082582.P8663180421146324122

`A098978(A182531(n+1))`
-/

namespace A082582.P8663180421146324122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098978 (A182531 (n + 1)).toNat

end

end A082582.P8663180421146324122

/-! ## A082582.P9865315819891096778

`A098978(∑[A004526(n+1)])`
-/

namespace A082582.P9865315819891096778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098978 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A082582.P9865315819891096778

/-! ## A082582.P4233065372265481872

`A098978(Δ[A266464(n)]-1)`
-/

namespace A082582.P4233065372265481872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266464 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098978 (f1 (n + 1) - f1 n - 1).toNat

end

end A082582.P4233065372265481872

/-! ## A082582.P4259578350792758065

`A098978(∑[n]-A002620(n))`
-/

namespace A082582.P4259578350792758065
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098978 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A002620 n).toNat

end

end A082582.P4259578350792758065

/-! ## A082582.P17553938058958145823

`A098978(∑[n-A004526(n)])`
-/

namespace A082582.P17553938058958145823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A004526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098978 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A082582.P17553938058958145823

/-!
# A082583: Quotients C(p, k)/p sorted, with duplicates removed, p being prime.

The programs for A082583, there is no canonical definition to state claims against.
-/

/-! ## A082583.P9928155384514233028

`lt[A329273(2*n+1), A000010(A329322(3*n+4))]`
-/

namespace A082583.P9928155384514233028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329273 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A329322 (3 * n + 4)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A082583.P9928155384514233028

/-! ## A082583.P7539263588169310759

`record[A046073(n+1)*A111620(A326135(n+1))]`
-/

namespace A082583.P7539263588169310759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046073 (n + 1) * A111620 (A326135 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A082583.P7539263588169310759

/-! ## A082583.P5211860951171300483

`lt[A054055(floor(n/2)), A304464(2*n+1)]`
-/

namespace A082583.P5211860951171300483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 ⌊(n : ℚ) / 2⌋.toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304464 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A082583.P5211860951171300483

/-! ## A082583.P706168182817429661

`lt[A055615(2*n+1), A144765(2*n+5)]`
-/

namespace A082583.P706168182817429661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055615 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144765 (2 * n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A082583.P706168182817429661

/-! ## A082583.P14882723845810732548

`eq[A088705(A046590(n+1)), A101264(n)]`
-/

namespace A082583.P14882723845810732548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088705 (A046590 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101264 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A082583.P14882723845810732548

/-!
# A082584: Fractal palindromic primes of first order.

The programs for A082584, there is no canonical definition to state claims against.
-/

/-! ## A082584.P11763807387867350591

`∩[A077798(n+1), A125525(n+1)]`
-/

namespace A082584.P11763807387867350591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077798 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125525 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A082584.P11763807387867350591

/-! ## A082584.P2868414159954462247

`∩[A125525(n+1), A261453(n+1)]`
-/

namespace A082584.P2868414159954462247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125525 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261453 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A082584.P2868414159954462247

/-! ## A082584.P7835440880227855044

`A069217(A047842(n+2))`
-/

namespace A082584.P7835440880227855044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069217 (A047842 (n + 2)).toNat

end

end A082584.P7835440880227855044

/-! ## A082584.P17758843590518331762

`A273049(A171644(n)+5)`
-/

namespace A082584.P17758843590518331762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273049 (A171644 n + 5).toNat

end

end A082584.P17758843590518331762

/-!
# A082585: a(1)=1, a(n) = ceiling(r(5)*a(n-1)) where r(5) = (1/2)*(5 + sqrt(29)) is the positive root of X^2 = 5*X + 1.

The programs for A082585, the canonical program `A082585.P11018937910113928341` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082585 has offset 1).

The definition of A082585 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A082585.P11367438373657576422

`ogf(1/(1-6x+4x^2+x^3))`
-/

namespace A082585.P11367438373657576422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -6, 4, 1] n

end

end A082585.P11367438373657576422

namespace A082585

/-- `ogf(1/(1-6x+4x^2+x^3))` -/
def P11367438373657576422.Spec : Prop :=
  ∀ n, P11367438373657576422.a n = A082585 (n + 1)

end A082585

/-! ## A082585.P11018937910113928341

`6*a(n-1)-4*a(n-2)-a(n-3)` with `a(0)=1, a(1)=6, a(2)=32`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A082585

/-- `6*a(n-1)-4*a(n-2)-a(n-3)` -/
def P11018937910113928341.Spec : Prop :=
  ∀ n, P11018937910113928341.a n = A082585 (n + 1)

theorem P11018937910113928341.correct : P11018937910113928341.Spec := by
  intro n
  simp only [A082585, Nat.add_sub_cancel]

end A082585

/-! ## A082585.P6140296107099296309

`∑[a(n-2)+5*a(n-1)]` with `a(0)=1, a(1)=5`
-/

namespace A082585.P6140296107099296309
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 5] fun n f1 =>
  f1 (n - 2) + 5 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082585.P6140296107099296309

namespace A082585

/-- `∑[a(n-2)+5*a(n-1)]` -/
def P6140296107099296309.Spec : Prop :=
  ∀ n, (P6140296107099296309.a n : ℤ) = A082585 (n + 1)

end A082585

/-! ## A082585.P15544357249809003572

`5*a(n-1)+a(n-2)+1` with `a(0)=1, a(1)=6`
-/

namespace A082585.P15544357249809003572
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 6] fun n a =>
  5 * a (n - 1) + (a (n - 2) + 1)

end

end A082585.P15544357249809003572

namespace A082585

/-- `5*a(n-1)+a(n-2)+1` -/
def P15544357249809003572.Spec : Prop :=
  ∀ n, (P15544357249809003572.a n : ℤ) = A082585 (n + 1)

end A082585

/-! ## A082585.P12233098037287320442

`∑[A052918(n)]`
-/

namespace A082585.P12233098037287320442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052918 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082585.P12233098037287320442

namespace A082585

/-- `∑[A052918(n)]` -/
def P12233098037287320442.Spec : Prop :=
  ∀ n, P12233098037287320442.a n = A082585 (n + 1)

end A082585

/-! ## A082585.P11634838267440612674

`∑[∑[A100237(n)]]`
-/

namespace A082585.P11634838267440612674
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100237 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082585.P11634838267440612674

namespace A082585

/-- `∑[∑[A100237(n)]]` -/
def P11634838267440612674.Spec : Prop :=
  ∀ n, P11634838267440612674.a n = A082585 (n + 1)

end A082585

/-! ## A082585.P16114842023330574474

`∑[∑[A087130(n)-A015449(n)]]`
-/

namespace A082585.P16114842023330574474
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087130 n - A015449 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082585.P16114842023330574474

namespace A082585

/-- `∑[∑[A087130(n)-A015449(n)]]` -/
def P16114842023330574474.Spec : Prop :=
  ∀ n, P16114842023330574474.a n = A082585 (n + 1)

end A082585

/-! ## A082585.P15253373052950885246

`∑[abs(Δ[A015449(n+1)/5])]`
-/

namespace A082585.P15253373052950885246
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A015449 (n + 1) : ℚ) / 5

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082585.P15253373052950885246

namespace A082585

/-- `∑[abs(Δ[A015449(n+1)/5])]` -/
def P15253373052950885246.Spec : Prop :=
  ∀ n, P15253373052950885246.a n = (A082585 (n + 1) : ℚ)

end A082585

/-! ## A082585.P13547597673479503902

`∑[floor((a(n-1)²+1)/a(n-2))]` with `a(0)=1, a(1)=5`
-/

namespace A082585.P13547597673479503902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n f1 =>
  ⌊(f1 (n - 1) ^ 2 + 1 : ℚ) / (f1 (n - 2) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082585.P13547597673479503902

namespace A082585

/-- `∑[floor((a(n-1)²+1)/a(n-2))]` -/
def P13547597673479503902.Spec : Prop :=
  ∀ n, P13547597673479503902.a n = A082585 (n + 1)

end A082585

/-! ## A082585.P9275771897020781844

`∑[sqrt(A099365(n+1))]`
-/

namespace A082585.P9275771897020781844
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A099365 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082585.P9275771897020781844

namespace A082585

/-- `∑[sqrt(A099365(n+1))]` -/
def P9275771897020781844.Spec : Prop :=
  ∀ n, P9275771897020781844.a n = (A082585 (n + 1) : ℝ)

end A082585

/-!
# A082586: Length of the run of consecutive equal digits in the decimal expansion of Pi beginning at position n and ignoring any immediately-previous equal digits.

The programs for A082586, there is no canonical definition to state claims against.
-/

/-! ## A082586.P2019878934199153059

`floor(root(2, A094581(n+1)))`
-/

namespace A082586.P2019878934199153059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 : ℝ) ^ (1 / (A094581 (n + 1) : ℝ))⌋

end

end A082586.P2019878934199153059

/-! ## A082586.P5837730933810323699

`A005867(C(2, A094581(n+1)))`
-/

namespace A082586.P5837730933810323699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005867 (Nat.choose 2 (A094581 (n + 1)).toNat)

end

end A082586.P5837730933810323699

/-! ## A082586.P4201390776562533139

`A056040(C(2, A094581(n+1)))`
-/

namespace A082586.P4201390776562533139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056040 (Nat.choose 2 (A094581 (n + 1)).toNat)

end

end A082586.P4201390776562533139

/-! ## A082586.P9401608107869718582

`A006384(floor(1/A094581(n+1)))`
-/

namespace A082586.P9401608107869718582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006384 ⌊1 / (A094581 (n + 1) : ℚ)⌋.toNat

end

end A082586.P9401608107869718582

/-! ## A082586.P4651362489805045067

`A097042(floor(1/A094581(n+1)))`
-/

namespace A082586.P4651362489805045067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097042 ⌊1 / (A094581 (n + 1) : ℚ)⌋.toNat

end

end A082586.P4651362489805045067

/-! ## A082586.P3514953498054020970

`2-A178334(A094581(n+1)-1)`
-/

namespace A082586.P3514953498054020970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A178334 (A094581 (n + 1) - 1).toNat

end

end A082586.P3514953498054020970

/-! ## A082586.P15257489219742386041

`gcd(A001086(n), A177706(n))`
-/

namespace A082586.P15257489219742386041
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001086 n) (A177706 n)

end

end A082586.P15257489219742386041

/-! ## A082586.P7177288771538780710

`A324907(gcd(A047662(n+3), A308771(3*(n+1))))`
-/

namespace A082586.P7177288771538780710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324907 (Int.gcd (A047662 (n + 3)) (A308771 (3 * (n + 1))))

end

end A082586.P7177288771538780710

/-! ## A082586.P3110773129309513320

`A177706(A011849(n))`
-/

namespace A082586.P3110773129309513320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177706 (A011849 n).toNat

end

end A082586.P3110773129309513320

/-! ## A082586.P11758285222486914845

`A115574(gcd(A333220(n+1), A357980(n+1)))`
-/

namespace A082586.P11758285222486914845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115574 (Int.gcd (A333220 (n + 1)) (A357980 (n + 1)))

end

end A082586.P11758285222486914845

/-!
# A082587: G.f.: (3+x+x^2+2*x^3)/(1-x^2-x^4).

The programs for A082587, the canonical program `A082587.P17279859216624551375` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082587 has offset 0).

The definition of A082587 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A082587.P17279859216624551375

`A000204(floor(n/2)+2-n%2)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A082587

/-- `A000204(floor(n/2)+2-n%2)` -/
def P17279859216624551375.Spec : Prop :=
  ∀ n, P17279859216624551375.a n = A082587 n

theorem P17279859216624551375.correct : P17279859216624551375.Spec := by
  intro n
  simp only [A082587]

end A082587

/-! ## A082587.P12983471505880369247

`ogf((3+x+x^2+2x^3)/(1-x^2-x^4))`
-/

namespace A082587.P12983471505880369247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 1, 1, 2] [1, 0, -1, 0, -1] n

end

end A082587.P12983471505880369247

namespace A082587

/-- `ogf((3+x+x^2+2x^3)/(1-x^2-x^4))` -/
def P12983471505880369247.Spec : Prop :=
  ∀ n, P12983471505880369247.a n = A082587 n

end A082587

/-! ## A082587.P2613074826527079213

`a(n-2)+a(n-4)` with `a(0)=3, a(1)=1, a(2)=4, a(3)=3`
-/

namespace A082587.P2613074826527079213
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 1, 4, 3] fun n a =>
  a (n - 2) + a (n - 4)

end

end A082587.P2613074826527079213

namespace A082587

/-- `a(n-2)+a(n-4)` -/
def P2613074826527079213.Spec : Prop :=
  ∀ n, (P2613074826527079213.a n : ℤ) = A082587 n

end A082587

/-! ## A082587.P6494624638067931600

`A090244(n+2)`
-/

namespace A082587.P6494624638067931600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090244 (n + 2)

end

end A082587.P6494624638067931600

namespace A082587

/-- `A090244(n+2)` -/
def P6494624638067931600.Spec : Prop :=
  ∀ n, P6494624638067931600.a n = A082587 n

end A082587

/-! ## A082587.P6008332917461296537

`A000032(∑[gcd(2, n)²-2])`
-/

namespace A082587.P6008332917461296537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 n ^ 2 : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A082587.P6008332917461296537

namespace A082587

/-- `A000032(∑[gcd(2, n)²-2])` -/
def P6008332917461296537.Spec : Prop :=
  ∀ n, P6008332917461296537.a n = A082587 n

end A082587

/-! ## A082587.P8329239791846623924

`A000032(round(xor(1, n)/2)+1)`
-/

namespace A082587.P8329239791846623924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (SequenceMachineLib.roundAway ((Nat.xor 1 n : ℚ) / 2) + 1).toNat

end

end A082587.P8329239791846623924

namespace A082587

/-- `A000032(round(xor(1, n)/2)+1)` -/
def P8329239791846623924.Spec : Prop :=
  ∀ n, P8329239791846623924.a n = A082587 n

end A082587

/-! ## A082587.P14531854820055585705

`A000032(∑[2-3*n%2])`
-/

namespace A082587.P14531854820055585705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((3 * (n % 2) : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A082587.P14531854820055585705

namespace A082587

/-- `A000032(∑[2-3*n%2])` -/
def P14531854820055585705.Spec : Prop :=
  ∀ n, P14531854820055585705.a n = A082587 n

end A082587

/-! ## A082587.P18121530604290635444

`A000032(∑[1-a(n-1)])` with `a(0)=2`
-/

namespace A082587.P18121530604290635444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  1 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A082587.P18121530604290635444

namespace A082587

/-- `A000032(∑[1-a(n-1)])` -/
def P18121530604290635444.Spec : Prop :=
  ∀ n, P18121530604290635444.a n = A082587 n

end A082587

/-! ## A082587.P7243737582392016576

`A000032(∑[∑[ogf((2-x)/(1+x))]])`
-/

namespace A082587.P7243737582392016576
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -1] [1, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A082587.P7243737582392016576

namespace A082587

/-- `A000032(∑[∑[ogf((2-x)/(1+x))]])` -/
def P7243737582392016576.Spec : Prop :=
  ∀ n, P7243737582392016576.a n = A082587 n

end A082587

/-! ## A082587.P16623253175695645535

`A000032(Δ[a(n-2)+1+n])` with `a(0)=0, a(1)=2`
-/

namespace A082587.P16623253175695645535
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  f1 (n - 2) + 1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A082587.P16623253175695645535

namespace A082587

/-- `A000032(Δ[a(n-2)+1+n])` -/
def P16623253175695645535.Spec : Prop :=
  ∀ n, P16623253175695645535.a n = A082587 n

end A082587

/-! ## A082587.P7725418255892265663

`A000032(floor(and(1, n+1)+(n+2)/2))`
-/

namespace A082587.P7725418255892265663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 ⌊(Nat.land 1 (n + 1) : ℚ) + (n + 2 : ℚ) / 2⌋.toNat

end

end A082587.P7725418255892265663

namespace A082587

/-- `A000032(floor(and(1, n+1)+(n+2)/2))` -/
def P7725418255892265663.Spec : Prop :=
  ∀ n, P7725418255892265663.a n = A082587 n

end A082587

/-! ## A082587.P2408917491748036771

`A000032((gcd(2*n, (n+2)²)+n)/2)`
-/

namespace A082587.P2408917491748036771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (SequenceMachineLib.roundAway ((Nat.gcd (2 * n) ((n + 2) ^ 2) + n : ℚ) / 2)).toNat

end

end A082587.P2408917491748036771

namespace A082587

/-- `A000032((gcd(2*n, (n+2)²)+n)/2)` -/
def P2408917491748036771.Spec : Prop :=
  ∀ n, P2408917491748036771.a n = A082587 n

end A082587

/-! ## A082587.P15507555776023991969

`A000032(1-Δ[a(n-2)-(n-1)])` with `a(0)=1, a(1)=0`
-/

namespace A082587.P15507555776023991969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  f1 (n - 2) - ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (1 - (f1 (n + 1) - f1 n)).toNat

end

end A082587.P15507555776023991969

namespace A082587

/-- `A000032(1-Δ[a(n-2)-(n-1)])` -/
def P15507555776023991969.Spec : Prop :=
  ∀ n, P15507555776023991969.a n = A082587 n

end A082587

/-! ## A082587.P4866861501992966966

`A000032(A028242(n)+1)`
-/

namespace A082587.P4866861501992966966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (A028242 n + 1).toNat

end

end A082587.P4866861501992966966

namespace A082587

/-- `A000032(A028242(n)+1)` -/
def P4866861501992966966.Spec : Prop :=
  ∀ n, P4866861501992966966.a n = A082587 n

end A082587

/-! ## A082587.P17022737087700971086

`A000204(A028242(n)+1)`
-/

namespace A082587.P17022737087700971086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000204 (A028242 n + 1).toNat

end

end A082587.P17022737087700971086

namespace A082587

/-- `A000204(A028242(n)+1)` -/
def P17022737087700971086.Spec : Prop :=
  ∀ n, P17022737087700971086.a n = A082587 n

end A082587

/-! ## A082587.P3204612722640378683

`A000032(A030451(n+1))`
-/

namespace A082587.P3204612722640378683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (A030451 (n + 1)).toNat

end

end A082587.P3204612722640378683

namespace A082587

/-- `A000032(A030451(n+1))` -/
def P3204612722640378683.Spec : Prop :=
  ∀ n, P3204612722640378683.a n = A082587 n

end A082587

/-! ## A082587.P9532744573805598890

`A000032(∑[A168361(n+1)])`
-/

namespace A082587.P9532744573805598890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168361 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A082587.P9532744573805598890

namespace A082587

/-- `A000032(∑[A168361(n+1)])` -/
def P9532744573805598890.Spec : Prop :=
  ∀ n, P9532744573805598890.a n = A082587 n

end A082587

/-! ## A082587.P346148292299370446

`A000032(∑[A280193(n)]+1)`
-/

namespace A082587.P346148292299370446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280193 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A082587.P346148292299370446

namespace A082587

/-- `A000032(∑[A280193(n)]+1)` -/
def P346148292299370446.Spec : Prop :=
  ∀ n, P346148292299370446.a n = A082587 n

end A082587

/-! ## A082587.P6497955647432886063

`A001610(∑[A280193(n)])+1`
-/

namespace A082587.P6497955647432886063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280193 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001610 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + 1

end

end A082587.P6497955647432886063

namespace A082587

/-- `A001610(∑[A280193(n)])+1` -/
def P6497955647432886063.Spec : Prop :=
  ∀ n, P6497955647432886063.a n = A082587 n

end A082587

/-! ## A082587.P17604442669340153315

`A000032(Δ[A004652(n)]+1)`
-/

namespace A082587.P17604442669340153315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004652 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (f1 (n + 1) - f1 n + 1).toNat

end

end A082587.P17604442669340153315

namespace A082587

/-- `A000032(Δ[A004652(n)]+1)` -/
def P17604442669340153315.Spec : Prop :=
  ∀ n, P17604442669340153315.a n = A082587 n

end A082587

/-!
# A082588: a(1) = 1, a(n) = Sum_{d | n and d < n} a(d)^2 for n > 1.

The programs for A082588, there is no canonical definition to state claims against.
-/

/-! ## A082588.P8869700766640574922

`A000196(A108014(sqrt(A278254(n+1))))`
-/

namespace A082588.P8869700766640574922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A108014 (SequenceMachineLib.roundAway (Real.sqrt (A278254 (n + 1) : ℝ))).toNat).toNat

end

end A082588.P8869700766640574922

/-! ## A082588.P14962702445289987630

`A195119(A000196(A181819(n+1)!))`
-/

namespace A082588.P14962702445289987630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195119 (A000196 (Nat.factorial (A181819 (n + 1)).toNat)).toNat

end

end A082588.P14962702445289987630

/-! ## A082588.P12613123345057300843

`A325681(A046523(n+1)%A256473(2*n+1))`
-/

namespace A082588.P12613123345057300843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325681 (Int.tmod (A046523 (n + 1)) (A256473 (2 * n + 1))).toNat

end

end A082588.P12613123345057300843

/-! ## A082588.P11533298650380625559

`A218153(A334033(n+1))%A128165(3*n+4)`
-/

namespace A082588.P11533298650380625559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A218153 (A334033 (n + 1)).toNat) (A128165 (3 * n + 4))

end

end A082588.P11533298650380625559

/-! ## A082588.P13105613216868495939

`A194057(A006241(n+1))`
-/

namespace A082588.P13105613216868495939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194057 (A006241 (n + 1)).toNat

end

end A082588.P13105613216868495939

/-!
# A082590: Expansion of 1/((1 - 2*x)*sqrt(1 - 4*x)).

The programs for A082590, the canonical program `A082590.P7859453275478296131` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082590 has offset 0).

The definition of A082590 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A082590.P7859453275478296131

`∑{#}[floor(n/2), C(2*#, #)*C(n-#, #)*4^(n-2*#)*(-1)^#]`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A082590

/-- `∑{#}[floor(n/2), C(2*#, #)*C(n-#, #)*4^(n-2*#)*(-1)^#]` -/
def P7859453275478296131.Spec : Prop :=
  ∀ n, P7859453275478296131.a n = (A082590 n : ℚ)

end A082590

/-! ## A082590.P1329243686002098078

`∑{#}[n, 2^(n-#)*C(2*#, #)]`
-/

namespace A082590.P1329243686002098078
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (2 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose (2 * k) k : ℚ)

end

end A082590.P1329243686002098078

namespace A082590

/-- `∑{#}[n, 2^(n-#)*C(2*#, #)]` -/
def P1329243686002098078.Spec : Prop :=
  ∀ n, P1329243686002098078.a n = (A082590 n : ℚ)

end A082590

/-! ## A082590.P2859325151388180680

`∑{#}[n+1, C(2*n+2, #)*sin((n-#+1)*π/2)]`
-/

namespace A082590.P2859325151388180680
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose (2 * n + 2) k : ℝ) * Real.sin (((n : ℤ) - (k : ℤ) + 1 : ℝ) * Real.pi / 2)

end

end A082590.P2859325151388180680

namespace A082590

/-- `∑{#}[n+1, C(2*n+2, #)*sin((n-#+1)*π/2)]` -/
def P2859325151388180680.Spec : Prop :=
  ∀ n, P2859325151388180680.a n = (A082590 n : ℝ)

end A082590

/-! ## A082590.P18015403410882232812

`∑{#}[n, C(2*n, n)*C(n, #)/C(2*n, 2*#)]`
-/

namespace A082590.P18015403410882232812
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose (2 * n) n * Nat.choose n k : ℚ) / (Nat.choose (2 * n) (2 * k) : ℚ)

end

end A082590.P18015403410882232812

namespace A082590

/-- `∑{#}[n, C(2*n, n)*C(n, #)/C(2*n, 2*#)]` -/
def P18015403410882232812.Spec : Prop :=
  ∀ n, P18015403410882232812.a n = (A082590 n : ℚ)

end A082590

/-! ## A082590.P900539836028501261

`∑{#}[n, (2*#)!*(2*(n-#))!/(n!*#!*(n-#)!)]`
-/

namespace A082590.P900539836028501261
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.factorial (2 * k) * Nat.factorial (2 * ((n : ℤ) - (k : ℤ))).toNat : ℚ) / (Nat.factorial n * Nat.factorial k * Nat.factorial ((n : ℤ) - (k : ℤ)).toNat : ℚ)

end

end A082590.P900539836028501261

namespace A082590

/-- `∑{#}[n, (2*#)!*(2*(n-#))!/(n!*#!*(n-#)!)]` -/
def P900539836028501261.Spec : Prop :=
  ∀ n, P900539836028501261.a n = (A082590 n : ℚ)

end A082590

/-! ## A082590.P9471900774629256183

`record[a(n-1)/(floor(n/2)/n-1)]+2*a(n-1)` with `a(0)=1`
-/

namespace A082590.P9471900774629256183
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) / ((⌊(n : ℚ) / 2⌋ : ℚ) / (n : ℚ) - 1)

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 2 * a (n - 1)

end

end A082590.P9471900774629256183

namespace A082590

/-- `record[a(n-1)/(floor(n/2)/n-1)]+2*a(n-1)` -/
def P9471900774629256183.Spec : Prop :=
  ∀ n, P9471900774629256183.a n = (A082590 n : ℚ)

end A082590

/-! ## A082590.P6984674239569332506

`∑[A188622(n)]`
-/

namespace A082590.P6984674239569332506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188622 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082590.P6984674239569332506

namespace A082590

/-- `∑[A188622(n)]` -/
def P6984674239569332506.Spec : Prop :=
  ∀ n, P6984674239569332506.a n = A082590 n

end A082590

/-! ## A082590.P8481111956658844980

`record[-A226302(n+3)]`
-/

namespace A082590.P8481111956658844980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A226302 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A082590.P8481111956658844980

namespace A082590

/-- `record[-A226302(n+3)]` -/
def P8481111956658844980.Spec : Prop :=
  ∀ n, P8481111956658844980.a n = A082590 n

end A082590

/-! ## A082590.P17396058391350320490

`abs(A226302(2*n+3))`
-/

namespace A082590.P17396058391350320490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A226302 (2 * n + 3)|

end

end A082590.P17396058391350320490

namespace A082590

/-- `abs(A226302(2*n+3))` -/
def P17396058391350320490.Spec : Prop :=
  ∀ n, P17396058391350320490.a n = A082590 n

end A082590

/-! ## A082590.P15097657672677094068

`-A226302(n+3+n)`
-/

namespace A082590.P15097657672677094068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A226302 (n + 3 + n)

end

end A082590.P15097657672677094068

namespace A082590

/-- `-A226302(n+3+n)` -/
def P15097657672677094068.Spec : Prop :=
  ∀ n, P15097657672677094068.a n = A082590 n

end A082590

/-! ## A082590.P8653646483140790434

`A372420(n)-a(n-1)` with `a(0)=1`
-/

namespace A082590.P8653646483140790434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A372420 n - a (n - 1)

end

end A082590.P8653646483140790434

namespace A082590

/-- `A372420(n)-a(n-1)` -/
def P8653646483140790434.Spec : Prop :=
  ∀ n, P8653646483140790434.a n = A082590 n

end A082590

/-! ## A082590.P7174176292408782637

`A000984(n)+2*a(n-1)` with `a(0)=1`
-/

namespace A082590.P7174176292408782637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000984 n + 2 * a (n - 1)

end

end A082590.P7174176292408782637

namespace A082590

/-- `A000984(n)+2*a(n-1)` -/
def P7174176292408782637.Spec : Prop :=
  ∀ n, P7174176292408782637.a n = A082590 n

end A082590

/-! ## A082590.P17783313040416173952

`2*(A088218(n)+a(n-1))` with `a(0)=1`
-/

namespace A082590.P17783313040416173952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * (A088218 n + a (n - 1))

end

end A082590.P17783313040416173952

namespace A082590

/-- `2*(A088218(n)+a(n-1))` -/
def P17783313040416173952.Spec : Prop :=
  ∀ n, P17783313040416173952.a n = A082590 n

end A082590

/-! ## A082590.P8878100605175014937

`(n+1)*A000108(n)+2*a(n-1)` with `a(0)=1`
-/

namespace A082590.P8878100605175014937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n + 1 : ℤ) * A000108 n + 2 * a (n - 1)

end

end A082590.P8878100605175014937

namespace A082590

/-- `(n+1)*A000108(n)+2*a(n-1)` -/
def P8878100605175014937.Spec : Prop :=
  ∀ n, P8878100605175014937.a n = A082590 n

end A082590

/-! ## A082590.P18437769002000328444

`A162551(n)+A134635(n)`
-/

namespace A082590.P18437769002000328444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162551 n + A134635 n

end

end A082590.P18437769002000328444

namespace A082590

/-- `A162551(n)+A134635(n)` -/
def P18437769002000328444.Spec : Prop :=
  ∀ n, P18437769002000328444.a n = A082590 n

end A082590

/-! ## A082590.P12276640184423596824

`A028329(n)-A126966(n)`
-/

namespace A082590.P12276640184423596824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028329 n - A126966 n

end

end A082590.P12276640184423596824

namespace A082590

/-- `A028329(n)-A126966(n)` -/
def P12276640184423596824.Spec : Prop :=
  ∀ n, P12276640184423596824.a n = A082590 n

end A082590

/-! ## A082590.P4498964878117344013

`∑[A028329(n)-A029759(n)]`
-/

namespace A082590.P4498964878117344013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028329 n - A029759 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082590.P4498964878117344013

namespace A082590

/-- `∑[A028329(n)-A029759(n)]` -/
def P4498964878117344013.Spec : Prop :=
  ∀ n, P4498964878117344013.a n = A082590 n

end A082590

/-! ## A082590.P2073282608005798267

`A162551(n)-Δ[A126966(n)]`
-/

namespace A082590.P2073282608005798267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126966 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162551 n - (f1 (n + 1) - f1 n)

end

end A082590.P2073282608005798267

namespace A082590

/-- `A162551(n)-Δ[A126966(n)]` -/
def P2073282608005798267.Spec : Prop :=
  ∀ n, P2073282608005798267.a n = A082590 n

end A082590

/-! ## A082590.P2314441308707972210

`A108958(n+1)+A014318(n)`
-/

namespace A082590.P2314441308707972210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108958 (n + 1) + A014318 n

end

end A082590.P2314441308707972210

namespace A082590

/-- `A108958(n+1)+A014318(n)` -/
def P2314441308707972210.Spec : Prop :=
  ∀ n, P2314441308707972210.a n = A082590 n

end A082590

/-! ## A082590.P14641968705297789548

`A088854(n+1)-A001700(n)`
-/

namespace A082590.P14641968705297789548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088854 (n + 1) - A001700 n

end

end A082590.P14641968705297789548

namespace A082590

/-- `A088854(n+1)-A001700(n)` -/
def P14641968705297789548.Spec : Prop :=
  ∀ n, P14641968705297789548.a n = A082590 n

end A082590

/-!
# A082591: Starting position of the first occurrence of n in the decimal expansion of Pi such that a(n) > a(n-1) for n >= 1.

The programs for A082591, there is no canonical definition to state claims against.
-/

/-! ## A082591.P10690513040752358196

`∑[A120584(n)]-1`
-/

namespace A082591.P10690513040752358196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120584 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A082591.P10690513040752358196

/-! ## A082591.P9336051514571691325

`A023443(∑[A120584(n)])`
-/

namespace A082591.P9336051514571691325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120584 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A082591.P9336051514571691325

/-! ## A082591.P3919355588556793778

`abs(A024000(∑[A120584(n)]))`
-/

namespace A082591.P3919355588556793778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120584 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A024000 (∑ j ∈ Finset.range (n + 1), f1 j).toNat|

end

end A082591.P3919355588556793778

/-! ## A082591.P15996042347416113318

`∑[xor(A000007(n), A120584(n))]`
-/

namespace A082591.P15996042347416113318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000007 n) (A120584 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082591.P15996042347416113318

/-! ## A082591.P15691471555216820663

`∑[xor(A120584(n), A151933(n))]`
-/

namespace A082591.P15691471555216820663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A120584 n) (A151933 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082591.P15691471555216820663

/-!
# A082592: A077389 sorted and duplicates removed.

The programs for A082592, there is no canonical definition to state claims against.
-/

/-! ## A082592.P3548011894245718225

`eq[1, char[A077389(n+1)]]`
-/

namespace A082592.P3548011894245718225
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077389 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A082592.P3548011894245718225

/-! ## A082592.P13307006086426331211

`lt[A000007(n), char[A077389(n+1)]]`
-/

namespace A082592.P13307006086426331211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077389 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A082592.P13307006086426331211

/-! ## A082592.P4460130056514389958

`lt[A000038(n), char[A077389(n+1)]]`
-/

namespace A082592.P4460130056514389958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077389 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A082592.P4460130056514389958

/-! ## A082592.P10938641177477713966

`lt[A266974(n)/4, char[A077389(n+1)]]`
-/

namespace A082592.P10938641177477713966
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A266974 n : ℚ) / 4

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077389 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n

end

end A082592.P10938641177477713966

/-! ## A082592.P14303868909795903422

`lt[A266982(n)/4, char[A077389(n+1)]]`
-/

namespace A082592.P14303868909795903422
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A266982 n : ℚ) / 4

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077389 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n

end

end A082592.P14303868909795903422

/-!
# A082593: Values in Pfennigs of German money before the introduction of the Euro.

The programs for A082593, there is no canonical definition to state claims against.
-/

/-! ## A082593.P840782089302003946

`A051109(comp[Δ[5^n]])`
-/

namespace A082593.P840782089302003946
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051109 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A082593.P840782089302003946

/-! ## A082593.P5000116373190097488

`A194350(A121539(n+2))`
-/

namespace A082593.P5000116373190097488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194350 (A121539 (n + 2)).toNat

end

end A082593.P5000116373190097488

/-! ## A082593.P9842880340469750636

`A194350(A161579(n+2))`
-/

namespace A082593.P9842880340469750636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194350 (A161579 (n + 2)).toNat

end

end A082593.P9842880340469750636

/-! ## A082593.P7964083043436689404

`record[A194350(A194315(n+1))]`
-/

namespace A082593.P7964083043436689404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194350 (A194315 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A082593.P7964083043436689404

/-! ## A082593.P1033393103240545623

`A004647(A053241(n+1))/2`
-/

namespace A082593.P1033393103240545623
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004647 (A053241 (n + 1)).toNat : ℚ) / 2

end

end A082593.P1033393103240545623

/-!
# A082594: Constant term when a polynomial of degree n-1 is fitted to the first n primes.

The programs for A082594, the canonical program `A082594.P12951204783454048432` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082594 has offset 1).

The definition of A082594 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A082594.P12951204783454048432

`∑[A007442(n+1)*A033999(n)]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A082594

/-- `∑[A007442(n+1)*A033999(n)]` -/
def P12951204783454048432.Spec : Prop :=
  ∀ n, P12951204783454048432.a n = A082594 (n + 1)

theorem P12951204783454048432.correct : P12951204783454048432.Spec := by
  intro n
  simp only [A082594, Nat.add_sub_cancel]

end A082594

/-! ## A082594.P8078846005439602871

`∑[A007442(n+1)*A253414(2*n)]`
-/

namespace A082594.P8078846005439602871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007442 (n + 1) * A253414 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082594.P8078846005439602871

namespace A082594

/-- `∑[A007442(n+1)*A253414(2*n)]` -/
def P8078846005439602871.Spec : Prop :=
  ∀ n, P8078846005439602871.a n = A082594 (n + 1)

end A082594

/-! ## A082594.P3188337697560872754

`∑[A007442(n+1)*A034947(2*n+1)]`
-/

namespace A082594.P3188337697560872754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007442 (n + 1) * A034947 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082594.P3188337697560872754

namespace A082594

/-- `∑[A007442(n+1)*A034947(2*n+1)]` -/
def P3188337697560872754.Spec : Prop :=
  ∀ n, P3188337697560872754.a n = A082594 (n + 1)

end A082594

/-! ## A082594.P8333182864571141721

`∑[A033999(n)*A095195(∑[n+1])]`
-/

namespace A082594.P8333182864571141721
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A095195 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082594.P8333182864571141721

namespace A082594

/-- `∑[A033999(n)*A095195(∑[n+1])]` -/
def P8333182864571141721.Spec : Prop :=
  ∀ n, P8333182864571141721.a n = A082594 (n + 1)

end A082594

/-! ## A082594.P17708970100019261858

`∑[A007442(n+1)*A094267(n²)]`
-/

namespace A082594.P17708970100019261858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007442 (n + 1) * A094267 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082594.P17708970100019261858

namespace A082594

/-- `∑[A007442(n+1)*A094267(n²)]` -/
def P17708970100019261858.Spec : Prop :=
  ∀ n, P17708970100019261858.a n = A082594 (n + 1)

end A082594

/-!
# A082596: a(n) is the number of values of k such that A077389(k) = A060863(n).

The programs for A082596, there is no canonical definition to state claims against.
-/

/-! ## A082596.P3114070948799619438

`A183174(n+1)%A152735(A053381(n))`
-/

namespace A082596.P3114070948799619438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A183174 (n + 1)) (A152735 (A053381 n).toNat)

end

end A082596.P3114070948799619438

/-! ## A082596.P8495322920354428342

`A289322(A079072(n))%A079729(3*n+5)`
-/

namespace A082596.P8495322920354428342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A289322 (A079072 n).toNat) (A079729 (3 * n + 5))

end

end A082596.P8495322920354428342

/-! ## A082596.P13760852324636114608

`A128616(record[A278083(A278083(n+1))])`
-/

namespace A082596.P13760852324636114608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278083 (A278083 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128616 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A082596.P13760852324636114608

/-! ## A082596.P16383764565480380589

`A305936(A303750(n+3))%A303710(2*(n+2))`
-/

namespace A082596.P16383764565480380589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A305936 (A303750 (n + 3)).toNat) (A303710 (2 * (n + 2)))

end

end A082596.P16383764565480380589

/-! ## A082596.P17837460451165782319

`A118268(A085360(n+1))`
-/

namespace A082596.P17837460451165782319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118268 (A085360 (n + 1)).toNat

end

end A082596.P17837460451165782319

/-!
# A082597: Number of sets of consecutive primes whose arithmetic mean is an integer, the largest prime of a set is n-th prime.

The programs for A082597, there is no canonical definition to state claims against.
-/

/-! ## A082597.P8043297660894099160

`A125173(lcm(A032742(n+1), A059389(n+1)))`
-/

namespace A082597.P8043297660894099160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125173 (Int.lcm (A032742 (n + 1)) (A059389 (n + 1)))

end

end A082597.P8043297660894099160

/-! ## A082597.P4981523121153554706

`A000120(or(A161951(n+1), A304544(n+1)))`
-/

namespace A082597.P4981523121153554706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Int.lor (A161951 (n + 1)) (A304544 (n + 1))).toNat

end

end A082597.P4981523121153554706

/-! ## A082597.P6274420230734121624

`A000120(or(A161951(n+1), A306129(n+1)))`
-/

namespace A082597.P6274420230734121624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Int.lor (A161951 (n + 1)) (A306129 (n + 1))).toNat

end

end A082597.P6274420230734121624

/-! ## A082597.P6877561233939108404

`A072491(A077559(n+1))+A001221(A131132(n))`
-/

namespace A082597.P6877561233939108404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072491 (A077559 (n + 1)).toNat + A001221 (A131132 n).toNat

end

end A082597.P6877561233939108404

/-! ## A082597.P3448487985699395175

`A319269(n+1)+A001221(A027998(n))`
-/

namespace A082597.P3448487985699395175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319269 (n + 1) + A001221 (A027998 n).toNat

end

end A082597.P3448487985699395175

/-!
# A082598: Palindromic prime units W appearing twice in first-order fractal palindromic primes WmW.

The programs for A082598, there is no canonical definition to state claims against.
-/

/-! ## A082598.P182056284121975263

`filter[A071240(n), A079261(#)]`
-/

namespace A082598.P182056284121975263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071240 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A079261 (f1 j).toNat = 1) n)

end

end A082598.P182056284121975263

/-! ## A082598.P4150004502337642187

`record[A082052(A159471(n+1))]`
-/

namespace A082598.P4150004502337642187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082052 (A159471 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A082598.P4150004502337642187

/-! ## A082598.P10494579193698835172

`filter[A082806(n+1), A038189(#)]`
-/

namespace A082598.P10494579193698835172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082806 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A038189 (f1 j).toNat = 1) n)

end

end A082598.P10494579193698835172

/-!
# A082599: Palindromic prime units W appearing four times in second-order fractal palindromic primes WxWmWxW, where part WxW is also a palindromic prime.

The programs for A082599, there is no canonical definition to state claims against.
-/

/-! ## A082599.P15691952530498071494

`A082598(A051772(n+1)%A082618(n+1))`
-/

namespace A082599.P15691952530498071494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082598 (Int.tmod (A051772 (n + 1)) (A082618 (n + 1))).toNat

end

end A082599.P15691952530498071494

