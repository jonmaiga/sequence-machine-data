import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C019
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C008
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
import Seq.B005.C000
import Seq.B006.C000
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B010.C000
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
import Seq.Opaque.C024
import Seq.Opaque.C025

/-!
# A018100: Powers of fourth root of 19 rounded to nearest integer.

The programs for A018100, the canonical program `A018100.P1167688119497041151` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018100 has offset 0).

The definition of A018100 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 313 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A018100.P1167688119497041151

`round(19^(n/4))`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A018100

/-- `round(19^(n/4))` -/
def P1167688119497041151.Spec : Prop :=
  ∀ n, P1167688119497041151.a n = A018100 n

theorem P1167688119497041151.correct : P1167688119497041151.Spec := by
  intro n
  simp only [A018100]

end A018100

/-! ## A018100.P7839885133954917421

`floor(A017961(n)/A018099(n))`
-/

namespace A018100.P7839885133954917421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A017961 n : ℚ) / (A018099 n : ℚ)⌋

end

end A018100.P7839885133954917421

namespace A018100

/-- `floor(A017961(n)/A018099(n))` -/
def P7839885133954917421.Spec : Prop :=
  ∀ n, P7839885133954917421.a n = A018100 n

end A018100

/-! ## A018100.P9866998126346536001

`floor(A017962(n)/A018099(n))`
-/

namespace A018100.P9866998126346536001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A017962 n : ℚ) / (A018099 n : ℚ)⌋

end

end A018100.P9866998126346536001

namespace A018100

/-- `floor(A017962(n)/A018099(n))` -/
def P9866998126346536001.Spec : Prop :=
  ∀ n, P9866998126346536001.a n = A018100 n

end A018100

/-! ## A018100.P14312496055451940716

`floor(A017963(n)/A018099(n))`
-/

namespace A018100.P14312496055451940716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A017963 n : ℚ) / (A018099 n : ℚ)⌋

end

end A018100.P14312496055451940716

namespace A018100

/-- `floor(A017963(n)/A018099(n))` -/
def P14312496055451940716.Spec : Prop :=
  ∀ n, P14312496055451940716.a n = A018100 n

end A018100

/-! ## A018100.P15670469816424401511

`ceil(A017961(n)/A018101(n))`
-/

namespace A018100.P15670469816424401511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A017961 n : ℚ) / (A018101 n : ℚ)⌉

end

end A018100.P15670469816424401511

namespace A018100

/-- `ceil(A017961(n)/A018101(n))` -/
def P15670469816424401511.Spec : Prop :=
  ∀ n, P15670469816424401511.a n = A018100 n

end A018100

/-! ## A018100.P3313721313852330230

`ceil(A017963(n)/A018101(n))`
-/

namespace A018100.P3313721313852330230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A017963 n : ℚ) / (A018101 n : ℚ)⌉

end

end A018100.P3313721313852330230

namespace A018100

/-- `ceil(A017963(n)/A018101(n))` -/
def P3313721313852330230.Spec : Prop :=
  ∀ n, P3313721313852330230.a n = A018100 n

end A018100

/-! ## A018100.P22889427108948644

`floor(A018099(2*n)/A018099(n))`
-/

namespace A018100.P22889427108948644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A018099 (2 * n) : ℚ) / (A018099 n : ℚ)⌋

end

end A018100.P22889427108948644

namespace A018100

/-- `floor(A018099(2*n)/A018099(n))` -/
def P22889427108948644.Spec : Prop :=
  ∀ n, P22889427108948644.a n = A018100 n

end A018100

/-! ## A018100.P14096748390202533016

`ceil(A018101(2*n)/A018101(n))`
-/

namespace A018100.P14096748390202533016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A018101 (2 * n) : ℚ) / (A018101 n : ℚ)⌉

end

end A018100.P14096748390202533016

namespace A018100

/-- `ceil(A018101(2*n)/A018101(n))` -/
def P14096748390202533016.Spec : Prop :=
  ∀ n, P14096748390202533016.a n = A018100 n

end A018100

/-!
# A018101: Powers of fourth root of 19 rounded up.

The programs for A018101, the canonical program `A018101.P8812853209003547044` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018101 has offset 0).

The definition of A018101 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 313 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A018101.P17631981213589549109

`ceil(19^(n/4))`
-/

namespace A018101.P17631981213589549109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(19 : ℝ) ^ ((n : ℚ) / 4 : ℝ)⌉

end

end A018101.P17631981213589549109

namespace A018101

/-- `ceil(19^(n/4))` -/
def P17631981213589549109.Spec : Prop :=
  ∀ n, P17631981213589549109.a n = A018101 n

end A018101

/-! ## A018101.P8812853209003547044

`A166486(n)+A018099(n)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A018101

/-- `A166486(n)+A018099(n)` -/
def P8812853209003547044.Spec : Prop :=
  ∀ n, P8812853209003547044.a n = A018101 n

theorem P8812853209003547044.correct : P8812853209003547044.Spec := by
  intro n
  simp only [A018101]

end A018101

/-! ## A018101.P7423585400481329824

`A018099(n)+Δ[A057353(n)]`
-/

namespace A018101.P7423585400481329824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057353 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018099 n + (f1 (n + 1) - f1 n)

end

end A018101.P7423585400481329824

namespace A018101

/-- `A018099(n)+Δ[A057353(n)]` -/
def P7423585400481329824.Spec : Prop :=
  ∀ n, P7423585400481329824.a n = A018101 n

end A018101

/-! ## A018101.P341572217634309098

`A018099(n)+and(1, A142590(n))`
-/

namespace A018101.P341572217634309098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018099 n + Int.land 1 (A142590 n)

end

end A018101.P341572217634309098

namespace A018101

/-- `A018099(n)+and(1, A142590(n))` -/
def P341572217634309098.Spec : Prop :=
  ∀ n, P341572217634309098.a n = A018101 n

end A018101

/-! ## A018101.P8655888236753267146

`A018095(n)+A018099(n)-A018093(n)`
-/

namespace A018101.P8655888236753267146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018095 n + (A018099 n - A018093 n)

end

end A018101.P8655888236753267146

namespace A018101

/-- `A018095(n)+A018099(n)-A018093(n)` -/
def P8655888236753267146.Spec : Prop :=
  ∀ n, P8655888236753267146.a n = A018101 n

end A018101

/-! ## A018101.P11374386064688075592

`A018099(n)+A018107(n)-A018105(n)`
-/

namespace A018101.P11374386064688075592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018099 n + (A018107 n - A018105 n)

end

end A018101.P11374386064688075592

namespace A018101

/-- `A018099(n)+A018107(n)-A018105(n)` -/
def P11374386064688075592.Spec : Prop :=
  ∀ n, P11374386064688075592.a n = A018101 n

end A018101

/-! ## A018101.P16492823462859872135

`A018099(n)+A018110(n)-A018108(n)`
-/

namespace A018101.P16492823462859872135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018099 n + (A018110 n - A018108 n)

end

end A018101.P16492823462859872135

namespace A018101

/-- `A018099(n)+A018110(n)-A018108(n)` -/
def P16492823462859872135.Spec : Prop :=
  ∀ n, P16492823462859872135.a n = A018101 n

end A018101

/-!
# A018102: Powers of fourth root of 20 rounded down.

The programs for A018102, the canonical program `A018102.P12363162314947531818` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018102 has offset 0).

The definition of A018102 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 308 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A018102.P12363162314947531818

`floor(20^(n/4))`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A018102

/-- `floor(20^(n/4))` -/
def P12363162314947531818.Spec : Prop :=
  ∀ n, P12363162314947531818.a n = A018102 n

theorem P12363162314947531818.correct : P12363162314947531818.Spec := by
  intro n
  simp only [A018102]

end A018102

/-! ## A018102.P13047062482441200627

`A018104(n)-A166486(n)`
-/

namespace A018102.P13047062482441200627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018104 n - A166486 n

end

end A018102.P13047062482441200627

namespace A018102

/-- `A018104(n)-A166486(n)` -/
def P13047062482441200627.Spec : Prop :=
  ∀ n, P13047062482441200627.a n = A018102 n

end A018102

/-! ## A018102.P14523480125273958593

`A018104(n)-A000035(A269170(n))`
-/

namespace A018102.P14523480125273958593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018104 n - A000035 (A269170 n).toNat

end

end A018102.P14523480125273958593

namespace A018102

/-- `A018104(n)-A000035(A269170(n))` -/
def P14523480125273958593.Spec : Prop :=
  ∀ n, P14523480125273958593.a n = A018102 n

end A018102

/-! ## A018102.P6640314098351431855

`A018099(n)+A018104(n)-A018101(n)`
-/

namespace A018102.P6640314098351431855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018099 n + (A018104 n - A018101 n)

end

end A018102.P6640314098351431855

namespace A018102

/-- `A018099(n)+A018104(n)-A018101(n)` -/
def P6640314098351431855.Spec : Prop :=
  ∀ n, P6640314098351431855.a n = A018102 n

end A018102

/-! ## A018102.P15341757980124325574

`A018104(n)+A018111(n)-A018113(n)`
-/

namespace A018102.P15341757980124325574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018104 n + (A018111 n - A018113 n)

end

end A018102.P15341757980124325574

namespace A018102

/-- `A018104(n)+A018111(n)-A018113(n)` -/
def P15341757980124325574.Spec : Prop :=
  ∀ n, P15341757980124325574.a n = A018102 n

end A018102

/-!
# A018103: Powers of fourth root of 20 rounded to nearest integer.

The programs for A018103, the canonical program `A018103.P11939854597086477035` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018103 has offset 0).

The definition of A018103 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 308 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A018103.P11939854597086477035

`round(20^(n/4))`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A018103

/-- `round(20^(n/4))` -/
def P11939854597086477035.Spec : Prop :=
  ∀ n, P11939854597086477035.a n = A018103 n

theorem P11939854597086477035.correct : P11939854597086477035.Spec := by
  intro n
  simp only [A018103]

end A018103

/-! ## A018103.P16003822284346501740

`ceil(A017964(n)/A018104(n))`
-/

namespace A018103.P16003822284346501740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A017964 n : ℚ) / (A018104 n : ℚ)⌉

end

end A018103.P16003822284346501740

namespace A018103

/-- `ceil(A017964(n)/A018104(n))` -/
def P16003822284346501740.Spec : Prop :=
  ∀ n, P16003822284346501740.a n = A018103 n

end A018103

/-! ## A018103.P13013271500149136217

`ceil(A017966(n)/A018104(n))`
-/

namespace A018103.P13013271500149136217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A017966 n : ℚ) / (A018104 n : ℚ)⌉

end

end A018103.P13013271500149136217

namespace A018103

/-- `ceil(A017966(n)/A018104(n))` -/
def P13013271500149136217.Spec : Prop :=
  ∀ n, P13013271500149136217.a n = A018103 n

end A018103

/-! ## A018103.P6992103534574658934

`ceil(A018104(2*n)/A018104(n))`
-/

namespace A018103.P6992103534574658934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A018104 (2 * n) : ℚ) / (A018104 n : ℚ)⌉

end

end A018103.P6992103534574658934

namespace A018103

/-- `ceil(A018104(2*n)/A018104(n))` -/
def P6992103534574658934.Spec : Prop :=
  ∀ n, P6992103534574658934.a n = A018103 n

end A018103

/-! ## A018103.P989422773102378555

`round(sqrt(A017966(n)))%A041274(n)`
-/

namespace A018103.P989422773102378555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (A017966 n : ℝ))) (A041274 n)

end

end A018103.P989422773102378555

namespace A018103

/-- `round(sqrt(A017966(n)))%A041274(n)` -/
def P989422773102378555.Spec : Prop :=
  ∀ n, P989422773102378555.a n = A018103 n

end A018103

/-!
# A018104: Powers of fourth root of 20 rounded up.

The programs for A018104, the canonical program `A018104.P12323327033336640985` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018104 has offset 0).

The definition of A018104 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 308 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A018104.P15759087695297082407

`ceil(20^(n/4))`
-/

namespace A018104.P15759087695297082407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(20 : ℝ) ^ ((n : ℚ) / 4 : ℝ)⌉

end

end A018104.P15759087695297082407

namespace A018104

/-- `ceil(20^(n/4))` -/
def P15759087695297082407.Spec : Prop :=
  ∀ n, P15759087695297082407.a n = A018104 n

end A018104

/-! ## A018104.P12323327033336640985

`A166486(n)+A018102(n)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A018104

/-- `A166486(n)+A018102(n)` -/
def P12323327033336640985.Spec : Prop :=
  ∀ n, P12323327033336640985.a n = A018104 n

theorem P12323327033336640985.correct : P12323327033336640985.Spec := by
  intro n
  simp only [A018104]

end A018104

/-! ## A018104.P17171646838313730294

`A019590(A329900(3*n+4))+A018102(n)`
-/

namespace A018104.P17171646838313730294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019590 (A329900 (3 * n + 4)).toNat + A018102 n

end

end A018104.P17171646838313730294

namespace A018104

/-- `A019590(A329900(3*n+4))+A018102(n)` -/
def P17171646838313730294.Spec : Prop :=
  ∀ n, P17171646838313730294.a n = A018104 n

end A018104

/-! ## A018104.P8614179543754589589

`A018102(n)+A018107(n)-A018105(n)`
-/

namespace A018104.P8614179543754589589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018102 n + (A018107 n - A018105 n)

end

end A018104.P8614179543754589589

namespace A018104

/-- `A018102(n)+A018107(n)-A018105(n)` -/
def P8614179543754589589.Spec : Prop :=
  ∀ n, P8614179543754589589.a n = A018104 n

end A018104

/-! ## A018104.P942805981708806105

`A018102(n)+A018113(n)-A018111(n)`
-/

namespace A018104.P942805981708806105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018102 n + (A018113 n - A018111 n)

end

end A018104.P942805981708806105

namespace A018104

/-- `A018102(n)+A018113(n)-A018111(n)` -/
def P942805981708806105.Spec : Prop :=
  ∀ n, P942805981708806105.a n = A018104 n

end A018104

/-!
# A018105: Powers of fourth root of 21 rounded down.

The programs for A018105, the canonical program `A018105.P8639596987832583942` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018105 has offset 0).

The definition of A018105 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A018105.P8639596987832583942

`floor(21^(n/4))`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A018105

/-- `floor(21^(n/4))` -/
def P8639596987832583942.Spec : Prop :=
  ∀ n, P8639596987832583942.a n = A018105 n

theorem P8639596987832583942.correct : P8639596987832583942.Spec := by
  intro n
  simp only [A018105]

end A018105

/-! ## A018105.P5508067245450182427

`A018107(n)-char[comp[4*n]]`
-/

namespace A018105.P5508067245450182427
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018107 n - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A018105.P5508067245450182427

namespace A018105

/-- `A018107(n)-char[comp[4*n]]` -/
def P5508067245450182427.Spec : Prop :=
  ∀ n, P5508067245450182427.a n = A018105 n

end A018105

/-! ## A018105.P1245223315440248469

`abs(A018107(n)-A166486(n))`
-/

namespace A018105.P1245223315440248469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A018107 n - A166486 n|

end

end A018105.P1245223315440248469

namespace A018105

/-- `abs(A018107(n)-A166486(n))` -/
def P1245223315440248469.Spec : Prop :=
  ∀ n, P1245223315440248469.a n = A018105 n

end A018105

/-! ## A018105.P16758157825262767939

`A018093(n)+A018107(n)-A018095(n)`
-/

namespace A018105.P16758157825262767939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018093 n + (A018107 n - A018095 n)

end

end A018105.P16758157825262767939

namespace A018105

/-- `A018093(n)+A018107(n)-A018095(n)` -/
def P16758157825262767939.Spec : Prop :=
  ∀ n, P16758157825262767939.a n = A018105 n

end A018105

/-! ## A018105.P4133504708391812973

`A018099(n)+A018107(n)-A018101(n)`
-/

namespace A018105.P4133504708391812973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018099 n + (A018107 n - A018101 n)

end

end A018105.P4133504708391812973

namespace A018105

/-- `A018099(n)+A018107(n)-A018101(n)` -/
def P4133504708391812973.Spec : Prop :=
  ∀ n, P4133504708391812973.a n = A018105 n

end A018105

/-! ## A018105.P6292969940863889142

`A018102(n)+A018107(n)-A018104(n)`
-/

namespace A018105.P6292969940863889142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018102 n + (A018107 n - A018104 n)

end

end A018105.P6292969940863889142

namespace A018105

/-- `A018102(n)+A018107(n)-A018104(n)` -/
def P6292969940863889142.Spec : Prop :=
  ∀ n, P6292969940863889142.a n = A018105 n

end A018105

/-! ## A018105.P18168644280913384725

`(A018107(n)-A166486(n))*Δ[A329116(n)]²`
-/

namespace A018105.P18168644280913384725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329116 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A018107 n - A166486 n) * (f1 (n + 1) - f1 n) ^ 2

end

end A018105.P18168644280913384725

namespace A018105

/-- `(A018107(n)-A166486(n))*Δ[A329116(n)]²` -/
def P18168644280913384725.Spec : Prop :=
  ∀ n, P18168644280913384725.a n = A018105 n

end A018105

/-! ## A018105.P321779405576954275

`(A018107(n)-A166486(n))*A001221(A000961(n+2))`
-/

namespace A018105.P321779405576954275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A018107 n - A166486 n) * A001221 (A000961 (n + 2)).toNat

end

end A018105.P321779405576954275

namespace A018105

/-- `(A018107(n)-A166486(n))*A001221(A000961(n+2))` -/
def P321779405576954275.Spec : Prop :=
  ∀ n, P321779405576954275.a n = A018105 n

end A018105

/-! ## A018105.P3789058048164496311

`A018111(n)+A018107(n)-A018113(n)`
-/

namespace A018105.P3789058048164496311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018111 n + (A018107 n - A018113 n)

end

end A018105.P3789058048164496311

namespace A018105

/-- `A018111(n)+A018107(n)-A018113(n)` -/
def P3789058048164496311.Spec : Prop :=
  ∀ n, P3789058048164496311.a n = A018105 n

end A018105

/-!
# A018106: Powers of fourth root of 21 rounded to nearest integer.

The programs for A018106, the canonical program `A018106.P4013518639670967208` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018106 has offset 0).

The definition of A018106 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 303 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A018106.P4013518639670967208

`round(21^(n/4))`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A018106

/-- `round(21^(n/4))` -/
def P4013518639670967208.Spec : Prop :=
  ∀ n, P4013518639670967208.a n = A018106 n

theorem P4013518639670967208.correct : P4013518639670967208.Spec := by
  intro n
  simp only [A018106]

end A018106

/-! ## A018106.P14172368153547640322

`floor(ceil(21^(n/2))/A018105(n))`
-/

namespace A018106.P14172368153547640322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(⌈(21 : ℝ) ^ ((n : ℚ) / 2 : ℝ)⌉ : ℚ) / (A018105 n : ℚ)⌋

end

end A018106.P14172368153547640322

namespace A018106

/-- `floor(ceil(21^(n/2))/A018105(n))` -/
def P14172368153547640322.Spec : Prop :=
  ∀ n, P14172368153547640322.a n = A018106 n

end A018106

/-! ## A018106.P13700038833874031209

`floor(A017969(n)/floor(21^(n/4)))`
-/

namespace A018106.P13700038833874031209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A017969 n : ℚ) / (⌊(21 : ℝ) ^ ((n : ℚ) / 4 : ℝ)⌋ : ℚ)⌋

end

end A018106.P13700038833874031209

namespace A018106

/-- `floor(A017969(n)/floor(21^(n/4)))` -/
def P13700038833874031209.Spec : Prop :=
  ∀ n, P13700038833874031209.a n = A018106 n

end A018106

/-! ## A018106.P15445981327629373619

`ceil(ceil(21^(n/2))/A018107(n))`
-/

namespace A018106.P15445981327629373619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(⌈(21 : ℝ) ^ ((n : ℚ) / 2 : ℝ)⌉ : ℚ) / (A018107 n : ℚ)⌉

end

end A018106.P15445981327629373619

namespace A018106

/-- `ceil(ceil(21^(n/2))/A018107(n))` -/
def P15445981327629373619.Spec : Prop :=
  ∀ n, P15445981327629373619.a n = A018106 n

end A018106

/-! ## A018106.P13737328889952944022

`A063524(n+3)+round(root(A009965(n), 4))`
-/

namespace A018106.P13737328889952944022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 (n + 3) + SequenceMachineLib.roundAway ((A009965 n : ℝ) ^ (1 / (4 : ℝ)))

end

end A018106.P13737328889952944022

namespace A018106

/-- `A063524(n+3)+round(root(A009965(n), 4))` -/
def P13737328889952944022.Spec : Prop :=
  ∀ n, P13737328889952944022.a n = A018106 n

end A018106

/-!
# A018107: Powers of fourth root of 21 rounded up.

The programs for A018107, the canonical program `A018107.P12842287637002873207` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018107 has offset 0).

The definition of A018107 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 303 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A018107.P6301934411197694781

`ceil(21^(n/4))`
-/

namespace A018107.P6301934411197694781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(21 : ℝ) ^ ((n : ℚ) / 4 : ℝ)⌉

end

end A018107.P6301934411197694781

namespace A018107

/-- `ceil(21^(n/4))` -/
def P6301934411197694781.Spec : Prop :=
  ∀ n, P6301934411197694781.a n = A018107 n

end A018107

/-! ## A018107.P12842287637002873207

`A166486(n)+A018105(n)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A018107

/-- `A166486(n)+A018105(n)` -/
def P12842287637002873207.Spec : Prop :=
  ∀ n, P12842287637002873207.a n = A018107 n

theorem P12842287637002873207.correct : P12842287637002873207.Spec := by
  intro n
  simp only [A018107]

end A018107

/-! ## A018107.P14020114128185556826

`A018105(n)+A046978(n)²`
-/

namespace A018107.P14020114128185556826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018105 n + A046978 n ^ 2

end

end A018107.P14020114128185556826

namespace A018107

/-- `A018105(n)+A046978(n)²` -/
def P14020114128185556826.Spec : Prop :=
  ∀ n, P14020114128185556826.a n = A018107 n

end A018107

/-! ## A018107.P538926524313515930

`A018105(n)+Δ[A057360(2*n)]`
-/

namespace A018107.P538926524313515930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057360 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018105 n + (f1 (n + 1) - f1 n)

end

end A018107.P538926524313515930

namespace A018107

/-- `A018105(n)+Δ[A057360(2*n)]` -/
def P538926524313515930.Spec : Prop :=
  ∀ n, P538926524313515930.a n = A018107 n

end A018107

/-! ## A018107.P7255677791452209468

`A018105(n)+A000035(A269170(n))`
-/

namespace A018107.P7255677791452209468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018105 n + A000035 (A269170 n).toNat

end

end A018107.P7255677791452209468

namespace A018107

/-- `A018105(n)+A000035(A269170(n))` -/
def P7255677791452209468.Spec : Prop :=
  ∀ n, P7255677791452209468.a n = A018107 n

end A018107

/-! ## A018107.P15513771582977151605

`A018101(n)+A018105(n)-A018099(n)`
-/

namespace A018107.P15513771582977151605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018101 n + (A018105 n - A018099 n)

end

end A018107.P15513771582977151605

namespace A018107

/-- `A018101(n)+A018105(n)-A018099(n)` -/
def P15513771582977151605.Spec : Prop :=
  ∀ n, P15513771582977151605.a n = A018107 n

end A018107

/-! ## A018107.P9032376727031836061

`A018104(n)+A018105(n)-A018102(n)`
-/

namespace A018107.P9032376727031836061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018104 n + (A018105 n - A018102 n)

end

end A018107.P9032376727031836061

namespace A018107

/-- `A018104(n)+A018105(n)-A018102(n)` -/
def P9032376727031836061.Spec : Prop :=
  ∀ n, P9032376727031836061.a n = A018107 n

end A018107

/-! ## A018107.P16943051760916095871

`A018105(n)+A018113(n)-A018111(n)`
-/

namespace A018107.P16943051760916095871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018105 n + (A018113 n - A018111 n)

end

end A018107.P16943051760916095871

namespace A018107

/-- `A018105(n)+A018113(n)-A018111(n)` -/
def P16943051760916095871.Spec : Prop :=
  ∀ n, P16943051760916095871.a n = A018107 n

end A018107

/-!
# A018108: Powers of fourth root of 22 rounded down.

The programs for A018108, the canonical program `A018108.P6337244509870454910` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018108 has offset 0).

The definition of A018108 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 298 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A018108.P6337244509870454910

`floor(22^(n/4))`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A018108

/-- `floor(22^(n/4))` -/
def P6337244509870454910.Spec : Prop :=
  ∀ n, P6337244509870454910.a n = A018108 n

theorem P6337244509870454910.correct : P6337244509870454910.Spec := by
  intro n
  simp only [A018108]

end A018108

/-! ## A018108.P9107709220736996901

`ceil(22^(n/4))-ceil(and(3, n)/3)`
-/

namespace A018108.P9107709220736996901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(22 : ℝ) ^ ((n : ℚ) / 4 : ℝ)⌉ - ⌈(Nat.land 3 n : ℚ) / 3⌉

end

end A018108.P9107709220736996901

namespace A018108

/-- `ceil(22^(n/4))-ceil(and(3, n)/3)` -/
def P9107709220736996901.Spec : Prop :=
  ∀ n, P9107709220736996901.a n = A018108 n

end A018108

/-! ## A018108.P5213441707595570172

`A018110(n)-A166486(n)`
-/

namespace A018108.P5213441707595570172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018110 n - A166486 n

end

end A018108.P5213441707595570172

namespace A018108

/-- `A018110(n)-A166486(n)` -/
def P5213441707595570172.Spec : Prop :=
  ∀ n, P5213441707595570172.a n = A018108 n

end A018108

/-! ## A018108.P4082254340594576940

`A018110(n)-A000035(A269170(n))`
-/

namespace A018108.P4082254340594576940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018110 n - A000035 (A269170 n).toNat

end

end A018108.P4082254340594576940

namespace A018108

/-- `A018110(n)-A000035(A269170(n))` -/
def P4082254340594576940.Spec : Prop :=
  ∀ n, P4082254340594576940.a n = A018108 n

end A018108

/-! ## A018108.P10514935551913652289

`A018093(n)+A018110(n)-A018095(n)`
-/

namespace A018108.P10514935551913652289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018093 n + (A018110 n - A018095 n)

end

end A018108.P10514935551913652289

namespace A018108

/-- `A018093(n)+A018110(n)-A018095(n)` -/
def P10514935551913652289.Spec : Prop :=
  ∀ n, P10514935551913652289.a n = A018108 n

end A018108

/-! ## A018108.P5001304108436625640

`floor(sqrt(A017970(n)))%A217975(n+1)`
-/

namespace A018108.P5001304108436625640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.sqrt (A017970 n)) (A217975 (n + 1))

end

end A018108.P5001304108436625640

namespace A018108

/-- `floor(sqrt(A017970(n)))%A217975(n+1)` -/
def P5001304108436625640.Spec : Prop :=
  ∀ n, P5001304108436625640.a n = A018108 n

end A018108

/-! ## A018108.P4842630953462335006

`floor(sqrt(A017972(n)))%A217975(n+1)`
-/

namespace A018108.P4842630953462335006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.sqrt (A017972 n)) (A217975 (n + 1))

end

end A018108.P4842630953462335006

namespace A018108

/-- `floor(sqrt(A017972(n)))%A217975(n+1)` -/
def P4842630953462335006.Spec : Prop :=
  ∀ n, P4842630953462335006.a n = A018108 n

end A018108

/-!
# A018109: Powers of fourth root of 22 rounded to nearest integer.

The programs for A018109, the canonical program `A018109.P7011005625315940237` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018109 has offset 0).

The definition of A018109 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 298 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A018109.P7011005625315940237

`round(22^(n/4))`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A018109

/-- `round(22^(n/4))` -/
def P7011005625315940237.Spec : Prop :=
  ∀ n, P7011005625315940237.a n = A018109 n

theorem P7011005625315940237.correct : P7011005625315940237.Spec := by
  intro n
  simp only [A018109]

end A018109

/-! ## A018109.P12408139251187827017

`round(sqrt(A017970(n)))%A203570(n)`
-/

namespace A018109.P12408139251187827017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (A017970 n : ℝ))) (A203570 n)

end

end A018109.P12408139251187827017

namespace A018109

/-- `round(sqrt(A017970(n)))%A203570(n)` -/
def P12408139251187827017.Spec : Prop :=
  ∀ n, P12408139251187827017.a n = A018109 n

end A018109

/-! ## A018109.P15466615696213198768

`A033999(n)²*round(sqrt(A017970(n)))`
-/

namespace A018109.P15466615696213198768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ 2 * SequenceMachineLib.roundAway (Real.sqrt (A017970 n : ℝ))

end

end A018109.P15466615696213198768

namespace A018109

/-- `A033999(n)²*round(sqrt(A017970(n)))` -/
def P15466615696213198768.Spec : Prop :=
  ∀ n, P15466615696213198768.a n = A018109 n

end A018109

/-! ## A018109.P12995371473081445898

`round(sqrt(A017970(n)))*A033999(2*n)`
-/

namespace A018109.P12995371473081445898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A017970 n : ℝ)) * A033999 (2 * n)

end

end A018109.P12995371473081445898

namespace A018109

/-- `round(sqrt(A017970(n)))*A033999(2*n)` -/
def P12995371473081445898.Spec : Prop :=
  ∀ n, P12995371473081445898.a n = A018109 n

end A018109

/-! ## A018109.P2644168186077966809

`round(sqrt(A017972(n)))%A217975(n+1)`
-/

namespace A018109.P2644168186077966809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (A017972 n : ℝ))) (A217975 (n + 1))

end

end A018109.P2644168186077966809

namespace A018109

/-- `round(sqrt(A017972(n)))%A217975(n+1)` -/
def P2644168186077966809.Spec : Prop :=
  ∀ n, P2644168186077966809.a n = A018109 n

end A018109

/-!
# A018110: Powers of fourth root of 22 rounded up.

The programs for A018110, the canonical program `A018110.P6128057492059747435` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018110 has offset 0).

The definition of A018110 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 298 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A018110.P16816778735046085835

`ceil(22^(n/4))`
-/

namespace A018110.P16816778735046085835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(22 : ℝ) ^ ((n : ℚ) / 4 : ℝ)⌉

end

end A018110.P16816778735046085835

namespace A018110

/-- `ceil(22^(n/4))` -/
def P16816778735046085835.Spec : Prop :=
  ∀ n, P16816778735046085835.a n = A018110 n

end A018110

/-! ## A018110.P6128057492059747435

`A166486(n)+A018108(n)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A018110

/-- `A166486(n)+A018108(n)` -/
def P6128057492059747435.Spec : Prop :=
  ∀ n, P6128057492059747435.a n = A018110 n

theorem P6128057492059747435.correct : P6128057492059747435.Spec := by
  intro n
  simp only [A018110]

end A018110

/-! ## A018110.P17944120790234864275

`A018108(n)+A000035(A269170(n))`
-/

namespace A018110.P17944120790234864275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018108 n + A000035 (A269170 n).toNat

end

end A018110.P17944120790234864275

namespace A018110

/-- `A018108(n)+A000035(A269170(n))` -/
def P17944120790234864275.Spec : Prop :=
  ∀ n, P17944120790234864275.a n = A018110 n

end A018110

/-! ## A018110.P15401602424608344995

`A018095(n)+A018108(n)-A018093(n)`
-/

namespace A018110.P15401602424608344995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018095 n + (A018108 n - A018093 n)

end

end A018110.P15401602424608344995

namespace A018110

/-- `A018095(n)+A018108(n)-A018093(n)` -/
def P15401602424608344995.Spec : Prop :=
  ∀ n, P15401602424608344995.a n = A018110 n

end A018110

/-! ## A018110.P3330979543053034282

`A018101(n)+A018108(n)-A018099(n)`
-/

namespace A018110.P3330979543053034282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018101 n + (A018108 n - A018099 n)

end

end A018110.P3330979543053034282

namespace A018110

/-- `A018101(n)+A018108(n)-A018099(n)` -/
def P3330979543053034282.Spec : Prop :=
  ∀ n, P3330979543053034282.a n = A018110 n

end A018110

/-! ## A018110.P18092831136143466499

`round(sqrt(A018109(n)+A017972(n)))`
-/

namespace A018110.P18092831136143466499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A018109 n + A017972 n : ℝ))

end

end A018110.P18092831136143466499

namespace A018110

/-- `round(sqrt(A018109(n)+A017972(n)))` -/
def P18092831136143466499.Spec : Prop :=
  ∀ n, P18092831136143466499.a n = A018110 n

end A018110

/-! ## A018110.P10108623107428492112

`ceil(sqrt(A017972(n)))%A217975(n+1)`
-/

namespace A018110.P10108623107428492112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌈Real.sqrt (A017972 n : ℝ)⌉ (A217975 (n + 1))

end

end A018110.P10108623107428492112

namespace A018110

/-- `ceil(sqrt(A017972(n)))%A217975(n+1)` -/
def P10108623107428492112.Spec : Prop :=
  ∀ n, P10108623107428492112.a n = A018110 n

end A018110

/-! ## A018110.P11606015494749803999

`A018108(n)+A000035(A195041(n))`
-/

namespace A018110.P11606015494749803999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018108 n + A000035 (A195041 n).toNat

end

end A018110.P11606015494749803999

namespace A018110

/-- `A018108(n)+A000035(A195041(n))` -/
def P11606015494749803999.Spec : Prop :=
  ∀ n, P11606015494749803999.a n = A018110 n

end A018110

/-!
# A018111: Powers of fourth root of 23 rounded down.

The programs for A018111, the canonical program `A018111.P12977573308699411012` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018111 has offset 0).

The definition of A018111 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 294 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A018111.P12977573308699411012

`floor(23^(n/4))`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A018111

/-- `floor(23^(n/4))` -/
def P12977573308699411012.Spec : Prop :=
  ∀ n, P12977573308699411012.a n = A018111 n

theorem P12977573308699411012.correct : P12977573308699411012.Spec := by
  intro n
  simp only [A018111]

end A018111

/-! ## A018111.P4459300331257688497

`A018113(n)-A166486(n)`
-/

namespace A018111.P4459300331257688497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018113 n - A166486 n

end

end A018111.P4459300331257688497

namespace A018111

/-- `A018113(n)-A166486(n)` -/
def P4459300331257688497.Spec : Prop :=
  ∀ n, P4459300331257688497.a n = A018111 n

end A018111

/-! ## A018111.P213425586156771958

`A018113(n)-A000035(A269170(n))`
-/

namespace A018111.P213425586156771958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018113 n - A000035 (A269170 n).toNat

end

end A018111.P213425586156771958

namespace A018111

/-- `A018113(n)-A000035(A269170(n))` -/
def P213425586156771958.Spec : Prop :=
  ∀ n, P213425586156771958.a n = A018111 n

end A018111

/-! ## A018111.P10338109652935392472

`A018093(n)+A018113(n)-A018095(n)`
-/

namespace A018111.P10338109652935392472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018093 n + (A018113 n - A018095 n)

end

end A018111.P10338109652935392472

namespace A018111

/-- `A018093(n)+A018113(n)-A018095(n)` -/
def P10338109652935392472.Spec : Prop :=
  ∀ n, P10338109652935392472.a n = A018111 n

end A018111

/-! ## A018111.P13175671862022322791

`A018102(n)+A018113(n)-A018104(n)`
-/

namespace A018111.P13175671862022322791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018102 n + (A018113 n - A018104 n)

end

end A018111.P13175671862022322791

namespace A018111

/-- `A018102(n)+A018113(n)-A018104(n)` -/
def P13175671862022322791.Spec : Prop :=
  ∀ n, P13175671862022322791.a n = A018111 n

end A018111

/-! ## A018111.P2967877847512201442

`A018108(n)+A018113(n)-A018110(n)`
-/

namespace A018111.P2967877847512201442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018108 n + (A018113 n - A018110 n)

end

end A018111.P2967877847512201442

namespace A018111

/-- `A018108(n)+A018113(n)-A018110(n)` -/
def P2967877847512201442.Spec : Prop :=
  ∀ n, P2967877847512201442.a n = A018111 n

end A018111

/-! ## A018111.P13217190796738068653

`A018113(n)+A018114(n)-A018116(n)`
-/

namespace A018111.P13217190796738068653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018113 n + (A018114 n - A018116 n)

end

end A018111.P13217190796738068653

namespace A018111

/-- `A018113(n)+A018114(n)-A018116(n)` -/
def P13217190796738068653.Spec : Prop :=
  ∀ n, P13217190796738068653.a n = A018111 n

end A018111

/-! ## A018111.P3473653899035257589

`ceil(A017975(n)/(A018112(n)+1))`
-/

namespace A018111.P3473653899035257589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A017975 n : ℚ) / (A018112 n + 1 : ℚ)⌉

end

end A018111.P3473653899035257589

namespace A018111

/-- `ceil(A017975(n)/(A018112(n)+1))` -/
def P3473653899035257589.Spec : Prop :=
  ∀ n, P3473653899035257589.a n = A018111 n

end A018111

/-!
# A018112: Powers of fourth root of 23 rounded to nearest integer.

The programs for A018112, the canonical program `A018112.P5299032250763542590` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018112 has offset 0).

The definition of A018112 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 294 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A018112.P5299032250763542590

`round(sqrt(sqrt(23))^n)`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A018112

/-- `round(sqrt(sqrt(23))^n)` -/
def P5299032250763542590.Spec : Prop :=
  ∀ n, P5299032250763542590.a n = A018112 n

theorem P5299032250763542590.correct : P5299032250763542590.Spec := by
  intro n
  simp only [A018112]

end A018112

/-! ## A018112.P3870979241398924416

`floor(A017973(n)/A018111(n))`
-/

namespace A018112.P3870979241398924416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A017973 n : ℚ) / (A018111 n : ℚ)⌋

end

end A018112.P3870979241398924416

namespace A018112

/-- `floor(A017973(n)/A018111(n))` -/
def P3870979241398924416.Spec : Prop :=
  ∀ n, P3870979241398924416.a n = A018112 n

end A018112

/-! ## A018112.P3145158575399454641

`floor(A017975(n)/A018111(n))`
-/

namespace A018112.P3145158575399454641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A017975 n : ℚ) / (A018111 n : ℚ)⌋

end

end A018112.P3145158575399454641

namespace A018112

/-- `floor(A017975(n)/A018111(n))` -/
def P3145158575399454641.Spec : Prop :=
  ∀ n, P3145158575399454641.a n = A018112 n

end A018112

/-! ## A018112.P2524281921790501986

`ceil(A017975(n)/A018113(n))`
-/

namespace A018112.P2524281921790501986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A017975 n : ℚ) / (A018113 n : ℚ)⌉

end

end A018112.P2524281921790501986

namespace A018112

/-- `ceil(A017975(n)/A018113(n))` -/
def P2524281921790501986.Spec : Prop :=
  ∀ n, P2524281921790501986.a n = A018112 n

end A018112

/-! ## A018112.P10952183095913376042

`floor(A018111(2*n)/A018111(n))`
-/

namespace A018112.P10952183095913376042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A018111 (2 * n) : ℚ) / (A018111 n : ℚ)⌋

end

end A018112.P10952183095913376042

namespace A018112

/-- `floor(A018111(2*n)/A018111(n))` -/
def P10952183095913376042.Spec : Prop :=
  ∀ n, P10952183095913376042.a n = A018112 n

end A018112

/-! ## A018112.P6810391394747334592

`ceil(A018113(2*n)/A018113(n))`
-/

namespace A018112.P6810391394747334592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A018113 (2 * n) : ℚ) / (A018113 n : ℚ)⌉

end

end A018112.P6810391394747334592

namespace A018112

/-- `ceil(A018113(2*n)/A018113(n))` -/
def P6810391394747334592.Spec : Prop :=
  ∀ n, P6810391394747334592.a n = A018112 n

end A018112

/-! ## A018112.P13277609960133849373

`round(sqrt(A017975(n)))/A033999(n)²`
-/

namespace A018112.P13277609960133849373
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.roundAway (Real.sqrt (A017975 n : ℝ)) : ℚ) / (A033999 n ^ 2 : ℚ)

end

end A018112.P13277609960133849373

namespace A018112

/-- `round(sqrt(A017975(n)))/A033999(n)²` -/
def P13277609960133849373.Spec : Prop :=
  ∀ n, P13277609960133849373.a n = (A018112 n : ℚ)

end A018112

/-!
# A018113: Powers of fourth root of 23 rounded up.

The programs for A018113, the canonical program `A018113.P2157205403128814120` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018113 has offset 0).

The definition of A018113 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 294 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A018113.P8325994401704956552

`ceil(23^(n/4))`
-/

namespace A018113.P8325994401704956552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(23 : ℝ) ^ ((n : ℚ) / 4 : ℝ)⌉

end

end A018113.P8325994401704956552

namespace A018113

/-- `ceil(23^(n/4))` -/
def P8325994401704956552.Spec : Prop :=
  ∀ n, P8325994401704956552.a n = A018113 n

end A018113

/-! ## A018113.P2157205403128814120

`A166486(n)+A018111(n)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A018113

/-- `A166486(n)+A018111(n)` -/
def P2157205403128814120.Spec : Prop :=
  ∀ n, P2157205403128814120.a n = A018113 n

theorem P2157205403128814120.correct : P2157205403128814120.Spec := by
  intro n
  simp only [A018113]

end A018113

/-! ## A018113.P15338049754144972242

`A018111(n)+A046978(n)²`
-/

namespace A018113.P15338049754144972242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018111 n + A046978 n ^ 2

end

end A018113.P15338049754144972242

namespace A018113

/-- `A018111(n)+A046978(n)²` -/
def P15338049754144972242.Spec : Prop :=
  ∀ n, P15338049754144972242.a n = A018113 n

end A018113

/-! ## A018113.P18339223966884165739

`A018111(n)+A000035(A269170(n))`
-/

namespace A018113.P18339223966884165739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018111 n + A000035 (A269170 n).toNat

end

end A018113.P18339223966884165739

namespace A018113

/-- `A018111(n)+A000035(A269170(n))` -/
def P18339223966884165739.Spec : Prop :=
  ∀ n, P18339223966884165739.a n = A018113 n

end A018113

/-! ## A018113.P6123189201176320488

`A018104(n)+A018111(n)-A018102(n)`
-/

namespace A018113.P6123189201176320488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018104 n + (A018111 n - A018102 n)

end

end A018113.P6123189201176320488

namespace A018113

/-- `A018104(n)+A018111(n)-A018102(n)` -/
def P6123189201176320488.Spec : Prop :=
  ∀ n, P6123189201176320488.a n = A018113 n

end A018113

/-! ## A018113.P4856539086416111403

`ceil(A017975(n)/A018112(n))%A252427(n+1)`
-/

namespace A018113.P4856539086416111403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌈(A017975 n : ℚ) / (A018112 n : ℚ)⌉ (A252427 (n + 1))

end

end A018113.P4856539086416111403

namespace A018113

/-- `ceil(A017975(n)/A018112(n))%A252427(n+1)` -/
def P4856539086416111403.Spec : Prop :=
  ∀ n, P4856539086416111403.a n = A018113 n

end A018113

/-!
# A018114: Powers of fourth root of 24 rounded down.

The programs for A018114, the canonical program `A018114.P5660574169271950473` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018114 has offset 0).

The definition of A018114 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 290 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A018114.P5660574169271950473

`floor(24^(n/4))`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A018114

/-- `floor(24^(n/4))` -/
def P5660574169271950473.Spec : Prop :=
  ∀ n, P5660574169271950473.a n = A018114 n

theorem P5660574169271950473.correct : P5660574169271950473.Spec := by
  intro n
  simp only [A018114]

end A018114

/-! ## A018114.P1984148572364042149

`A018116(n)-A166486(n)`
-/

namespace A018114.P1984148572364042149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018116 n - A166486 n

end

end A018114.P1984148572364042149

namespace A018114

/-- `A018116(n)-A166486(n)` -/
def P1984148572364042149.Spec : Prop :=
  ∀ n, P1984148572364042149.a n = A018114 n

end A018114

/-! ## A018114.P9546942981524453203

`A018116(n)-Δ[A057353(n)]`
-/

namespace A018114.P9546942981524453203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057353 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018116 n - (f1 (n + 1) - f1 n)

end

end A018114.P9546942981524453203

namespace A018114

/-- `A018116(n)-Δ[A057353(n)]` -/
def P9546942981524453203.Spec : Prop :=
  ∀ n, P9546942981524453203.a n = A018114 n

end A018114

/-! ## A018114.P1711529120320762471

`A018116(n)-char[A042968(n+1)]`
-/

namespace A018114.P1711529120320762471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042968 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018116 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A018114.P1711529120320762471

namespace A018114

/-- `A018116(n)-char[A042968(n+1)]` -/
def P1711529120320762471.Spec : Prop :=
  ∀ n, P1711529120320762471.a n = A018114 n

end A018114

/-! ## A018114.P6560667504446635361

`A018116(n)-A000035(A004525(n))`
-/

namespace A018114.P6560667504446635361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018116 n - A000035 (A004525 n).toNat

end

end A018114.P6560667504446635361

namespace A018114

/-- `A018116(n)-A000035(A004525(n))` -/
def P6560667504446635361.Spec : Prop :=
  ∀ n, P6560667504446635361.a n = A018114 n

end A018114

/-! ## A018114.P13039989885370207546

`A018116(n)-A000035(A269170(n))`
-/

namespace A018114.P13039989885370207546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018116 n - A000035 (A269170 n).toNat

end

end A018114.P13039989885370207546

namespace A018114

/-- `A018116(n)-A000035(A269170(n))` -/
def P13039989885370207546.Spec : Prop :=
  ∀ n, P13039989885370207546.a n = A018114 n

end A018114

/-! ## A018114.P6879465599866694438

`A018093(n)+A018116(n)-A018095(n)`
-/

namespace A018114.P6879465599866694438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018093 n + (A018116 n - A018095 n)

end

end A018114.P6879465599866694438

namespace A018114

/-- `A018093(n)+A018116(n)-A018095(n)` -/
def P6879465599866694438.Spec : Prop :=
  ∀ n, P6879465599866694438.a n = A018114 n

end A018114

/-! ## A018114.P5345410277760085691

`A018108(n)+A018116(n)-A018110(n)`
-/

namespace A018114.P5345410277760085691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018108 n + (A018116 n - A018110 n)

end

end A018114.P5345410277760085691

namespace A018114

/-- `A018108(n)+A018116(n)-A018110(n)` -/
def P5345410277760085691.Spec : Prop :=
  ∀ n, P5345410277760085691.a n = A018114 n

end A018114

/-!
# A018115: Powers of fourth root of 24 rounded to nearest integer.

The programs for A018115, the canonical program `A018115.P2915647392709698732` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018115 has offset 0).

The definition of A018115 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 290 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A018115.P2915647392709698732

`round(24^(n/4))`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A018115

/-- `round(24^(n/4))` -/
def P2915647392709698732.Spec : Prop :=
  ∀ n, P2915647392709698732.a n = A018115 n

theorem P2915647392709698732.correct : P2915647392709698732.Spec := by
  intro n
  simp only [A018115]

end A018115

/-! ## A018115.P3693184587045318243

`abs(round(sqrt(A017978(n)))-1)+1`
-/

namespace A018115.P3693184587045318243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |SequenceMachineLib.roundAway (Real.sqrt (A017978 n : ℝ)) - 1| + 1

end

end A018115.P3693184587045318243

namespace A018115

/-- `abs(round(sqrt(A017978(n)))-1)+1` -/
def P3693184587045318243.Spec : Prop :=
  ∀ n, P3693184587045318243.a n = A018115 n

end A018115

/-! ## A018115.P16499555455445573135

`floor(sqrt(A018114(n)+A017976(n)))`
-/

namespace A018115.P16499555455445573135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A018114 n + A017976 n)

end

end A018115.P16499555455445573135

namespace A018115

/-- `floor(sqrt(A018114(n)+A017976(n)))` -/
def P16499555455445573135.Spec : Prop :=
  ∀ n, P16499555455445573135.a n = A018115 n

end A018115

/-! ## A018115.P12422120726695346272

`floor(sqrt(A018114(n)+A017978(n)))`
-/

namespace A018115.P12422120726695346272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A018114 n + A017978 n)

end

end A018115.P12422120726695346272

namespace A018115

/-- `floor(sqrt(A018114(n)+A017978(n)))` -/
def P12422120726695346272.Spec : Prop :=
  ∀ n, P12422120726695346272.a n = A018115 n

end A018115

/-! ## A018115.P14504208583221515522

`A000007(n+1)+round(sqrt(A017978(n)))`
-/

namespace A018115.P14504208583221515522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + SequenceMachineLib.roundAway (Real.sqrt (A017978 n : ℝ))

end

end A018115.P14504208583221515522

namespace A018115

/-- `A000007(n+1)+round(sqrt(A017978(n)))` -/
def P14504208583221515522.Spec : Prop :=
  ∀ n, P14504208583221515522.a n = A018115 n

end A018115

/-!
# A018116: Powers of fourth root of 24 rounded up.

The programs for A018116, the canonical program `A018116.P13344171312656503620` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018116 has offset 0).

The definition of A018116 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 290 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A018116.P15080192578955679600

`ceil(24^(n/4))`
-/

namespace A018116.P15080192578955679600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(24 : ℝ) ^ ((n : ℚ) / 4 : ℝ)⌉

end

end A018116.P15080192578955679600

namespace A018116

/-- `ceil(24^(n/4))` -/
def P15080192578955679600.Spec : Prop :=
  ∀ n, P15080192578955679600.a n = A018116 n

end A018116

/-! ## A018116.P13344171312656503620

`A166486(n)+A018114(n)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A018116

/-- `A166486(n)+A018114(n)` -/
def P13344171312656503620.Spec : Prop :=
  ∀ n, P13344171312656503620.a n = A018116 n

theorem P13344171312656503620.correct : P13344171312656503620.Spec := by
  intro n
  simp only [A018116]

end A018116

/-! ## A018116.P13025671195039520494

`A018114(n)+A046978(n)²`
-/

namespace A018116.P13025671195039520494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018114 n + A046978 n ^ 2

end

end A018116.P13025671195039520494

namespace A018116

/-- `A018114(n)+A046978(n)²` -/
def P13025671195039520494.Spec : Prop :=
  ∀ n, P13025671195039520494.a n = A018116 n

end A018116

/-! ## A018116.P3508114428945721018

`A018114(n)+A026741(n)%2`
-/

namespace A018116.P3508114428945721018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018114 n + Int.tmod (A026741 n) 2

end

end A018116.P3508114428945721018

namespace A018116

/-- `A018114(n)+A026741(n)%2` -/
def P3508114428945721018.Spec : Prop :=
  ∀ n, P3508114428945721018.a n = A018116 n

end A018116

/-! ## A018116.P12916452893812994100

`A018101(n)+A018114(n)-A018099(n)`
-/

namespace A018116.P12916452893812994100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018101 n + (A018114 n - A018099 n)

end

end A018116.P12916452893812994100

namespace A018116

/-- `A018101(n)+A018114(n)-A018099(n)` -/
def P12916452893812994100.Spec : Prop :=
  ∀ n, P12916452893812994100.a n = A018116 n

end A018116

/-!
# A018117: Powers of fifth root of 2 rounded down.

The programs for A018117, the canonical program `A018117.P2399526085562118991` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018117 has offset 0).

The definition of A018117 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 831 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A018117.P16057573304552521673

`A018119(n)-A011558(n)`
-/

namespace A018117.P16057573304552521673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018119 n - A011558 n

end

end A018117.P16057573304552521673

namespace A018117

/-- `A018119(n)-A011558(n)` -/
def P16057573304552521673.Spec : Prop :=
  ∀ n, P16057573304552521673.a n = A018117 n

end A018117

/-! ## A018117.P6582367825779111906

`A018119(n)-abs(A080891(n))`
-/

namespace A018117.P6582367825779111906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018119 n - |A080891 n|

end

end A018117.P6582367825779111906

namespace A018117

/-- `A018119(n)-abs(A080891(n))` -/
def P6582367825779111906.Spec : Prop :=
  ∀ n, P6582367825779111906.a n = A018117 n

end A018117

/-! ## A018117.P741458131511792113

`A018119(n)-abs(A244895(n))`
-/

namespace A018117.P741458131511792113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018119 n - |A244895 n|

end

end A018117.P741458131511792113

namespace A018117

/-- `A018119(n)-abs(A244895(n))` -/
def P741458131511792113.Spec : Prop :=
  ∀ n, P741458131511792113.a n = A018117 n

end A018117

/-! ## A018117.P14240894282500700179

`A018119(n)-Δ[A090223(n)]`
-/

namespace A018117.P14240894282500700179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090223 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018119 n - (f1 (n + 1) - f1 n)

end

end A018117.P14240894282500700179

namespace A018117

/-- `A018119(n)-Δ[A090223(n)]` -/
def P14240894282500700179.Spec : Prop :=
  ∀ n, P14240894282500700179.a n = A018117 n

end A018117

/-! ## A018117.P2399526085562118991

`floor(sqrt(A018123(n)))`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A018117

/-- `floor(sqrt(A018123(n)))` -/
def P2399526085562118991.Spec : Prop :=
  ∀ n, P2399526085562118991.a n = A018117 n

theorem P2399526085562118991.correct : P2399526085562118991.Spec := by
  intro n
  simp only [A018117]

end A018117

/-! ## A018117.P7836810286207348085

`floor(root(2^n, 5))`
-/

namespace A018117.P7836810286207348085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 ^ n : ℝ) ^ (1 / (5 : ℝ))⌋

end

end A018117.P7836810286207348085

namespace A018117

/-- `floor(root(2^n, 5))` -/
def P7836810286207348085.Spec : Prop :=
  ∀ n, P7836810286207348085.a n = A018117 n

end A018117

/-! ## A018117.P7416212822521815265

`floor(2^(n/5))*A002033(A014574(n+1))`
-/

namespace A018117.P7416212822521815265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 : ℝ) ^ ((n : ℚ) / 5 : ℝ)⌋ * A002033 (A014574 (n + 1)).toNat

end

end A018117.P7416212822521815265

namespace A018117

/-- `floor(2^(n/5))*A002033(A014574(n+1))` -/
def P7416212822521815265.Spec : Prop :=
  ∀ n, P7416212822521815265.a n = A018117 n

end A018117

/-! ## A018117.P5145485064610810214

`A000007(A001694(n+1))+floor(2^(n/5))`
-/

namespace A018117.P5145485064610810214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A001694 (n + 1)).toNat + ⌊(2 : ℝ) ^ ((n : ℚ) / 5 : ℝ)⌋

end

end A018117.P5145485064610810214

namespace A018117

/-- `A000007(A001694(n+1))+floor(2^(n/5))` -/
def P5145485064610810214.Spec : Prop :=
  ∀ n, P5145485064610810214.a n = A018117 n

end A018117

/-! ## A018117.P12332451013103789521

`A000007(A023023(2*n+7))+floor(2^(n/5))`
-/

namespace A018117.P12332451013103789521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A023023 (2 * n + 7)).toNat + ⌊(2 : ℝ) ^ ((n : ℚ) / 5 : ℝ)⌋

end

end A018117.P12332451013103789521

namespace A018117

/-- `A000007(A023023(2*n+7))+floor(2^(n/5))` -/
def P12332451013103789521.Spec : Prop :=
  ∀ n, P12332451013103789521.a n = A018117 n

end A018117

/-! ## A018117.P13658131413094126991

`A018119(n)-A080891(n²)`
-/

namespace A018117.P13658131413094126991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018119 n - A080891 (n ^ 2)

end

end A018117.P13658131413094126991

namespace A018117

/-- `A018119(n)-A080891(n²)` -/
def P13658131413094126991.Spec : Prop :=
  ∀ n, P13658131413094126991.a n = A018117 n

end A018117

/-!
# A018118: Powers of fifth root of 2 rounded to nearest integer.

The programs for A018118, the canonical program `A018118.P2879102399695885870` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018118 has offset 0).

The definition of A018118 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1656 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A018118.P2879102399695885870

`A018117(n+5)-A018117(n)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A018118

/-- `A018117(n+5)-A018117(n)` -/
def P2879102399695885870.Spec : Prop :=
  ∀ n, P2879102399695885870.a n = A018118 n

theorem P2879102399695885870.correct : P2879102399695885870.Spec := by
  intro n
  simp only [A018118]

end A018118

/-! ## A018118.P16852088405533027649

`A018119(n+5)-A018119(n)`
-/

namespace A018118.P16852088405533027649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018119 (n + 5) - A018119 n

end

end A018118.P16852088405533027649

namespace A018118

/-- `A018119(n+5)-A018119(n)` -/
def P16852088405533027649.Spec : Prop :=
  ∀ n, P16852088405533027649.a n = A018118 n

end A018118

/-! ## A018118.P11639607097167452752

`round(2^(n/5))*A211110(A000040(n+1))`
-/

namespace A018118.P11639607097167452752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 : ℝ) ^ ((n : ℚ) / 5 : ℝ)) * A211110 (A000040 (n + 1)).toNat

end

end A018118.P11639607097167452752

namespace A018118

/-- `round(2^(n/5))*A211110(A000040(n+1))` -/
def P11639607097167452752.Spec : Prop :=
  ∀ n, P11639607097167452752.a n = A018118 n

end A018118

/-! ## A018118.P16372429349070846029

`round(sqrt(sqrt(A018161(n))))`
-/

namespace A018118.P16372429349070846029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (Real.sqrt (A018161 n : ℝ)))

end

end A018118.P16372429349070846029

namespace A018118

/-- `round(sqrt(sqrt(A018161(n))))` -/
def P16372429349070846029.Spec : Prop :=
  ∀ n, P16372429349070846029.a n = A018118 n

end A018118

/-! ## A018118.P277932192543475785

`round(sqrt(sqrt(A018160(n)+1)))`
-/

namespace A018118.P277932192543475785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (Real.sqrt (A018160 n + 1 : ℝ)))

end

end A018118.P277932192543475785

namespace A018118

/-- `round(sqrt(sqrt(A018160(n)+1)))` -/
def P277932192543475785.Spec : Prop :=
  ∀ n, P277932192543475785.a n = A018118 n

end A018118

/-! ## A018118.P13258619505372969218

`round(sqrt(sqrt(A018125(2*n))))`
-/

namespace A018118.P13258619505372969218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (Real.sqrt (A018125 (2 * n) : ℝ)))

end

end A018118.P13258619505372969218

namespace A018118

/-- `round(sqrt(sqrt(A018125(2*n))))` -/
def P13258619505372969218.Spec : Prop :=
  ∀ n, P13258619505372969218.a n = A018118 n

end A018118

/-! ## A018118.P5243164445303696111

`round(root(2^n, 5))`
-/

namespace A018118.P5243164445303696111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 ^ n : ℝ) ^ (1 / (5 : ℝ)))

end

end A018118.P5243164445303696111

namespace A018118

/-- `round(root(2^n, 5))` -/
def P5243164445303696111.Spec : Prop :=
  ∀ n, P5243164445303696111.a n = A018118 n

end A018118

/-! ## A018118.P4255168794756596133

`round(2^(n/5))%A102644(n+1)`
-/

namespace A018118.P4255168794756596133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((2 : ℝ) ^ ((n : ℚ) / 5 : ℝ))) (A102644 (n + 1))

end

end A018118.P4255168794756596133

namespace A018118

/-- `round(2^(n/5))%A102644(n+1)` -/
def P4255168794756596133.Spec : Prop :=
  ∀ n, P4255168794756596133.a n = A018118 n

end A018118

/-! ## A018118.P11989162636073764702

`A000027(round(root(A000302(n), 10)))`
-/

namespace A018118.P11989162636073764702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway ((A000302 n : ℝ) ^ (1 / (10 : ℝ)))).toNat

end

end A018118.P11989162636073764702

namespace A018118

/-- `A000027(round(root(A000302(n), 10)))` -/
def P11989162636073764702.Spec : Prop :=
  ∀ n, P11989162636073764702.a n = A018118 n

end A018118

/-! ## A018118.P4933423100051966468

`A008683(A002148(n))²*round(2^(n/5))`
-/

namespace A018118.P4933423100051966468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A002148 n).toNat ^ 2 * SequenceMachineLib.roundAway ((2 : ℝ) ^ ((n : ℚ) / 5 : ℝ))

end

end A018118.P4933423100051966468

namespace A018118

/-- `A008683(A002148(n))²*round(2^(n/5))` -/
def P4933423100051966468.Spec : Prop :=
  ∀ n, P4933423100051966468.a n = A018118 n

end A018118

/-!
# A018119: Powers of fifth root of 2 rounded up.

The programs for A018119, the canonical program `A018119.P8742798569925089374` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018119 has offset 0).

The definition of A018119 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1661 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A018119.P8742798569925089374

`A018117(n)+A011558(n)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A018119

/-- `A018117(n)+A011558(n)` -/
def P8742798569925089374.Spec : Prop :=
  ∀ n, P8742798569925089374.a n = A018119 n

theorem P8742798569925089374.correct : P8742798569925089374.Spec := by
  intro n
  simp only [A018119]

end A018119

/-! ## A018119.P17853716431518809117

`A018117(n)+abs(A080891(n))`
-/

namespace A018119.P17853716431518809117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018117 n + |A080891 n|

end

end A018119.P17853716431518809117

namespace A018119

/-- `A018117(n)+abs(A080891(n))` -/
def P17853716431518809117.Spec : Prop :=
  ∀ n, P17853716431518809117.a n = A018119 n

end A018119

/-! ## A018119.P11398842996998642174

`A018117(n)+abs(A244895(n))`
-/

namespace A018119.P11398842996998642174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018117 n + |A244895 n|

end

end A018119.P11398842996998642174

namespace A018119

/-- `A018117(n)+abs(A244895(n))` -/
def P11398842996998642174.Spec : Prop :=
  ∀ n, P11398842996998642174.a n = A018119 n

end A018119

/-! ## A018119.P6331480350341932470

`A018117(n)+Δ[A090223(n)]`
-/

namespace A018119.P6331480350341932470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090223 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018117 n + (f1 (n + 1) - f1 n)

end

end A018119.P6331480350341932470

namespace A018119

/-- `A018117(n)+Δ[A090223(n)]` -/
def P6331480350341932470.Spec : Prop :=
  ∀ n, P6331480350341932470.a n = A018119 n

end A018119

/-! ## A018119.P17675659468342837245

`ceil(sqrt(A018125(n)))`
-/

namespace A018119.P17675659468342837245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A018125 n : ℝ)⌉

end

end A018119.P17675659468342837245

namespace A018119

/-- `ceil(sqrt(A018125(n)))` -/
def P17675659468342837245.Spec : Prop :=
  ∀ n, P17675659468342837245.a n = A018119 n

end A018119

/-! ## A018119.P9392051941083993879

`ceil(root(A132045(n), 5))`
-/

namespace A018119.P9392051941083993879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A132045 n : ℝ) ^ (1 / (5 : ℝ))⌉

end

end A018119.P9392051941083993879

namespace A018119

/-- `ceil(root(A132045(n), 5))` -/
def P9392051941083993879.Spec : Prop :=
  ∀ n, P9392051941083993879.a n = A018119 n

end A018119

/-! ## A018119.P4158288754662093471

`ceil(root(4^n, 10))`
-/

namespace A018119.P4158288754662093471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(4 ^ n : ℝ) ^ (1 / (10 : ℝ))⌉

end

end A018119.P4158288754662093471

namespace A018119

/-- `ceil(root(4^n, 10))` -/
def P4158288754662093471.Spec : Prop :=
  ∀ n, P4158288754662093471.a n = A018119 n

end A018119

/-! ## A018119.P5388517550612557845

`A080891(n²)+A018117(n)`
-/

namespace A018119.P5388517550612557845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080891 (n ^ 2) + A018117 n

end

end A018119.P5388517550612557845

namespace A018119

/-- `A080891(n²)+A018117(n)` -/
def P5388517550612557845.Spec : Prop :=
  ∀ n, P5388517550612557845.a n = A018119 n

end A018119

/-!
# A018120: Powers of fifth root of 3 rounded down.

The programs for A018120, the canonical program `A018120.P6271314406010207698` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018120 has offset 0).

The definition of A018120 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 524 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A018120.P2848456371905906086

`A018122(n)-A011558(n)`
-/

namespace A018120.P2848456371905906086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018122 n - A011558 n

end

end A018120.P2848456371905906086

namespace A018120

/-- `A018122(n)-A011558(n)` -/
def P2848456371905906086.Spec : Prop :=
  ∀ n, P2848456371905906086.a n = A018120 n

end A018120

/-! ## A018120.P1607301965037030146

`A018122(n)+A018129(n)-A018131(n)`
-/

namespace A018120.P1607301965037030146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018122 n + (A018129 n - A018131 n)

end

end A018120.P1607301965037030146

namespace A018120

/-- `A018122(n)+A018129(n)-A018131(n)` -/
def P1607301965037030146.Spec : Prop :=
  ∀ n, P1607301965037030146.a n = A018120 n

end A018120

/-! ## A018120.P6271314406010207698

`floor(sqrt(A018138(n)))`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A018120

/-- `floor(sqrt(A018138(n)))` -/
def P6271314406010207698.Spec : Prop :=
  ∀ n, P6271314406010207698.a n = A018120 n

theorem P6271314406010207698.correct : P6271314406010207698.Spec := by
  intro n
  simp only [A018120]

end A018120

/-! ## A018120.P14439139296059658727

`floor(sqrt(sqrt(A018139(2*n))))`
-/

namespace A018120.P14439139296059658727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (Real.sqrt (A018139 (2 * n) : ℝ))⌋

end

end A018120.P14439139296059658727

namespace A018120

/-- `floor(sqrt(sqrt(A018139(2*n))))` -/
def P14439139296059658727.Spec : Prop :=
  ∀ n, P14439139296059658727.a n = A018120 n

end A018120

/-! ## A018120.P18064960553683163685

`floor(root(3^n, 5))`
-/

namespace A018120.P18064960553683163685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 ^ n : ℝ) ^ (1 / (5 : ℝ))⌋

end

end A018120.P18064960553683163685

namespace A018120

/-- `floor(root(3^n, 5))` -/
def P18064960553683163685.Spec : Prop :=
  ∀ n, P18064960553683163685.a n = A018120 n

end A018120

/-! ## A018120.P544677420071484804

`floor(root(A000244(n), 5))%A000051(n)`
-/

namespace A018120.P544677420071484804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊(A000244 n : ℝ) ^ (1 / (5 : ℝ))⌋ (A000051 n)

end

end A018120.P544677420071484804

namespace A018120

/-- `floor(root(A000244(n), 5))%A000051(n)` -/
def P544677420071484804.Spec : Prop :=
  ∀ n, P544677420071484804.a n = A018120 n

end A018120

/-! ## A018120.P14684381240105267183

`ceil(3^(n/5)-tanh(n))`
-/

namespace A018120.P14684381240105267183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(3 : ℝ) ^ ((n : ℚ) / 5 : ℝ) - Real.tanh (n : ℝ)⌉

end

end A018120.P14684381240105267183

namespace A018120

/-- `ceil(3^(n/5)-tanh(n))` -/
def P14684381240105267183.Spec : Prop :=
  ∀ n, P14684381240105267183.a n = A018120 n

end A018120

/-!
# A018121: Powers of fifth root of 3 rounded to nearest integer.

The programs for A018121, the canonical program `A018121.P7947034240546211439` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018121 has offset 0).

The definition of A018121 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1048 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A018121.P7947034240546211439

`round(3^(n/5))`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A018121

/-- `round(3^(n/5))` -/
def P7947034240546211439.Spec : Prop :=
  ∀ n, P7947034240546211439.a n = A018121 n

theorem P7947034240546211439.correct : P7947034240546211439.Spec := by
  intro n
  simp only [A018121]

end A018121

/-! ## A018121.P9789776844938027366

`ceil(A018140(n)/A018122(n))`
-/

namespace A018121.P9789776844938027366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A018140 n : ℚ) / (A018122 n : ℚ)⌉

end

end A018121.P9789776844938027366

namespace A018121

/-- `ceil(A018140(n)/A018122(n))` -/
def P9789776844938027366.Spec : Prop :=
  ∀ n, P9789776844938027366.a n = A018121 n

end A018121

/-! ## A018121.P18417377360550033052

`ceil(A018122(2*n)/A018122(n))`
-/

namespace A018121.P18417377360550033052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A018122 (2 * n) : ℚ) / (A018122 n : ℚ)⌉

end

end A018121.P18417377360550033052

namespace A018121

/-- `ceil(A018122(2*n)/A018122(n))` -/
def P18417377360550033052.Spec : Prop :=
  ∀ n, P18417377360550033052.a n = A018121 n

end A018121

/-! ## A018121.P2962734651501921567

`A033999(n)²*round(root(A000244(n), 5))`
-/

namespace A018121.P2962734651501921567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ 2 * SequenceMachineLib.roundAway ((A000244 n : ℝ) ^ (1 / (5 : ℝ)))

end

end A018121.P2962734651501921567

namespace A018121

/-- `A033999(n)²*round(root(A000244(n), 5))` -/
def P2962734651501921567.Spec : Prop :=
  ∀ n, P2962734651501921567.a n = A018121 n

end A018121

/-! ## A018121.P10550683235380517981

`A000007(n+1)+round(root(A000244(n), 5))`
-/

namespace A018121.P10550683235380517981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + SequenceMachineLib.roundAway ((A000244 n : ℝ) ^ (1 / (5 : ℝ)))

end

end A018121.P10550683235380517981

namespace A018121

/-- `A000007(n+1)+round(root(A000244(n), 5))` -/
def P10550683235380517981.Spec : Prop :=
  ∀ n, P10550683235380517981.a n = A018121 n

end A018121

/-! ## A018121.P8440160528214028199

`A056594(2*n+1)+round(root(A000244(n), 5))`
-/

namespace A018121.P8440160528214028199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (2 * n + 1) + SequenceMachineLib.roundAway ((A000244 n : ℝ) ^ (1 / (5 : ℝ)))

end

end A018121.P8440160528214028199

namespace A018121

/-- `A056594(2*n+1)+round(root(A000244(n), 5))` -/
def P8440160528214028199.Spec : Prop :=
  ∀ n, P8440160528214028199.a n = A018121 n

end A018121

/-! ## A018121.P7360402940138802681

`A000027(round(root(A000244(n), 5)))`
-/

namespace A018121.P7360402940138802681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway ((A000244 n : ℝ) ^ (1 / (5 : ℝ)))).toNat

end

end A018121.P7360402940138802681

namespace A018121

/-- `A000027(round(root(A000244(n), 5)))` -/
def P7360402940138802681.Spec : Prop :=
  ∀ n, P7360402940138802681.a n = A018121 n

end A018121

/-!
# A018122: Powers of fifth root of 3 rounded up.

The programs for A018122, the canonical program `A018122.P2107038045910433194` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018122 has offset 0).

The definition of A018122 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1048 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A018122.P2107038045910433194

`A018120(n)+A011558(n)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A018122

/-- `A018120(n)+A011558(n)` -/
def P2107038045910433194.Spec : Prop :=
  ∀ n, P2107038045910433194.a n = A018122 n

theorem P2107038045910433194.correct : P2107038045910433194.Spec := by
  intro n
  simp only [A018122]

end A018122

/-! ## A018122.P3965851213126906818

`A018119(n)+A018120(n)-A018117(n)`
-/

namespace A018122.P3965851213126906818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018119 n + (A018120 n - A018117 n)

end

end A018122.P3965851213126906818

namespace A018122

/-- `A018119(n)+A018120(n)-A018117(n)` -/
def P3965851213126906818.Spec : Prop :=
  ∀ n, P3965851213126906818.a n = A018122 n

end A018122

/-! ## A018122.P5323158448936308813

`ceil(sqrt(A018139(n)))`
-/

namespace A018122.P5323158448936308813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A018139 n : ℝ)⌉

end

end A018122.P5323158448936308813

namespace A018122

/-- `ceil(sqrt(A018139(n)))` -/
def P5323158448936308813.Spec : Prop :=
  ∀ n, P5323158448936308813.a n = A018122 n

end A018122

/-! ## A018122.P10143163152415619414

`ceil(sqrt(A018140(n)))`
-/

namespace A018122.P10143163152415619414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A018140 n : ℝ)⌉

end

end A018122.P10143163152415619414

namespace A018122

/-- `ceil(sqrt(A018140(n)))` -/
def P10143163152415619414.Spec : Prop :=
  ∀ n, P10143163152415619414.a n = A018122 n

end A018122

/-! ## A018122.P8808687566830043785

`ceil(sqrt(A018121(2*n)))`
-/

namespace A018122.P8808687566830043785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A018121 (2 * n) : ℝ)⌉

end

end A018122.P8808687566830043785

namespace A018122

/-- `ceil(sqrt(A018121(2*n)))` -/
def P8808687566830043785.Spec : Prop :=
  ∀ n, P8808687566830043785.a n = A018122 n

end A018122

/-! ## A018122.P14380927823416480115

`ceil(root(3^n, 5))`
-/

namespace A018122.P14380927823416480115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(3 ^ n : ℝ) ^ (1 / (5 : ℝ))⌉

end

end A018122.P14380927823416480115

namespace A018122

/-- `ceil(root(3^n, 5))` -/
def P14380927823416480115.Spec : Prop :=
  ∀ n, P14380927823416480115.a n = A018122 n

end A018122

/-!
# A018123: Powers of fifth root of 4 rounded down.

The programs for A018123, the canonical program `A018123.P947965484352094533` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018123 has offset 0).

The definition of A018123 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 831 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A018123.P947965484352094533

`floor(4^(n/5))`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A018123

/-- `floor(4^(n/5))` -/
def P947965484352094533.Spec : Prop :=
  ∀ n, P947965484352094533.a n = A018123 n

theorem P947965484352094533.correct : P947965484352094533.Spec := by
  intro n
  simp only [A018123]

end A018123

/-! ## A018123.P8581858124786957102

`A018117(2*n)`
-/

namespace A018123.P8581858124786957102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018117 (2 * n)

end

end A018123.P8581858124786957102

namespace A018123

/-- `A018117(2*n)` -/
def P8581858124786957102.Spec : Prop :=
  ∀ n, P8581858124786957102.a n = A018123 n

end A018123

/-! ## A018123.P1896714167681749052

`A018125(n)-A011558(n)`
-/

namespace A018123.P1896714167681749052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018125 n - A011558 n

end

end A018123.P1896714167681749052

namespace A018123

/-- `A018125(n)-A011558(n)` -/
def P1896714167681749052.Spec : Prop :=
  ∀ n, P1896714167681749052.a n = A018123 n

end A018123

/-! ## A018123.P5851711423736604287

`A018125(n)-Δ[A090223(n)]`
-/

namespace A018123.P5851711423736604287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090223 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018125 n - (f1 (n + 1) - f1 n)

end

end A018123.P5851711423736604287

namespace A018123

/-- `A018125(n)-Δ[A090223(n)]` -/
def P5851711423736604287.Spec : Prop :=
  ∀ n, P5851711423736604287.a n = A018123 n

end A018123

/-! ## A018123.P4656581406909635211

`A018119(2*n)-A011558(n)`
-/

namespace A018123.P4656581406909635211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018119 (2 * n) - A011558 n

end

end A018123.P4656581406909635211

namespace A018123

/-- `A018119(2*n)-A011558(n)` -/
def P4656581406909635211.Spec : Prop :=
  ∀ n, P4656581406909635211.a n = A018123 n

end A018123

/-! ## A018123.P2929848789186309203

`A018117(A004277(n))^(char[1]+1)`
-/

namespace A018123.P2929848789186309203
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018117 (A004277 n).toNat ^ ((if ∃ j, f1 j = n then 1 else 0) + 1)

end

end A018123.P2929848789186309203

namespace A018123

/-- `A018117(A004277(n))^(char[1]+1)` -/
def P2929848789186309203.Spec : Prop :=
  ∀ n, P2929848789186309203.a n = A018123 n

end A018123

/-! ## A018123.P15690694967309150370

`A018119(2*n)-abs(A080891(n))`
-/

namespace A018123.P15690694967309150370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018119 (2 * n) - |A080891 n|

end

end A018123.P15690694967309150370

namespace A018123

/-- `A018119(2*n)-abs(A080891(n))` -/
def P15690694967309150370.Spec : Prop :=
  ∀ n, P15690694967309150370.a n = A018123 n

end A018123

/-! ## A018123.P8776349280120624078

`A018119(2*n)-abs(A244895(n))`
-/

namespace A018123.P8776349280120624078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018119 (2 * n) - |A244895 n|

end

end A018123.P8776349280120624078

namespace A018123

/-- `A018119(2*n)-abs(A244895(n))` -/
def P8776349280120624078.Spec : Prop :=
  ∀ n, P8776349280120624078.a n = A018123 n

end A018123

/-! ## A018123.P6674616222111800901

`A018119(2*n)-Δ[A090223(n)]`
-/

namespace A018123.P6674616222111800901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090223 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018119 (2 * n) - (f1 (n + 1) - f1 n)

end

end A018123.P6674616222111800901

namespace A018123

/-- `A018119(2*n)-Δ[A090223(n)]` -/
def P6674616222111800901.Spec : Prop :=
  ∀ n, P6674616222111800901.a n = A018123 n

end A018123

/-! ## A018123.P2034096139264986780

`A018119(2*n)+A090223(2*n)-A090223(2*n+1)`
-/

namespace A018123.P2034096139264986780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018119 (2 * n) + (A090223 (2 * n) - A090223 (2 * n + 1))

end

end A018123.P2034096139264986780

namespace A018123

/-- `A018119(2*n)+A090223(2*n)-A090223(2*n+1)` -/
def P2034096139264986780.Spec : Prop :=
  ∀ n, P2034096139264986780.a n = A018123 n

end A018123

/-! ## A018123.P2630684999703752825

`A018125(n)+A018129(n)-A018131(n)`
-/

namespace A018123.P2630684999703752825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018125 n + (A018129 n - A018131 n)

end

end A018123.P2630684999703752825

namespace A018123

/-- `A018125(n)+A018129(n)-A018131(n)` -/
def P2630684999703752825.Spec : Prop :=
  ∀ n, P2630684999703752825.a n = A018123 n

end A018123

/-! ## A018123.P6662251499355883972

`A018117(A005843(n))/A007318(∑[n])`
-/

namespace A018123.P6662251499355883972
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A018117 (A005843 n).toNat : ℚ) / (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A018123.P6662251499355883972

namespace A018123

/-- `A018117(A005843(n))/A007318(∑[n])` -/
def P6662251499355883972.Spec : Prop :=
  ∀ n, P6662251499355883972.a n = (A018123 n : ℚ)

end A018123

/-!
# A018124: Powers of fifth root of 4 rounded to nearest integer.

The programs for A018124, the canonical program `A018124.P7269445987187065060` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018124 has offset 0).

The definition of A018124 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 831 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A018124.P7269445987187065060

`A018118(2*n)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A018124

/-- `A018118(2*n)` -/
def P7269445987187065060.Spec : Prop :=
  ∀ n, P7269445987187065060.a n = A018124 n

theorem P7269445987187065060.correct : P7269445987187065060.Spec := by
  intro n
  simp only [A018124]

end A018124

/-! ## A018124.P15986644094496966436

`round(sqrt(A018160(n)))`
-/

namespace A018124.P15986644094496966436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A018160 n : ℝ))

end

end A018124.P15986644094496966436

namespace A018124

/-- `round(sqrt(A018160(n)))` -/
def P15986644094496966436.Spec : Prop :=
  ∀ n, P15986644094496966436.a n = A018124 n

end A018124

/-! ## A018124.P73335124701365343

`round(sqrt(A018161(n)))`
-/

namespace A018124.P73335124701365343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A018161 n : ℝ))

end

end A018124.P73335124701365343

namespace A018124

/-- `round(sqrt(A018161(n)))` -/
def P73335124701365343.Spec : Prop :=
  ∀ n, P73335124701365343.a n = A018124 n

end A018124

/-! ## A018124.P12307257228814195832

`round(sqrt(A018125(2*n)))`
-/

namespace A018124.P12307257228814195832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A018125 (2 * n) : ℝ))

end

end A018124.P12307257228814195832

namespace A018124

/-- `round(sqrt(A018125(2*n)))` -/
def P12307257228814195832.Spec : Prop :=
  ∀ n, P12307257228814195832.a n = A018124 n

end A018124

/-! ## A018124.P7840412323218366151

`ceil(A018160(n)/A018125(n))`
-/

namespace A018124.P7840412323218366151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A018160 n : ℚ) / (A018125 n : ℚ)⌉

end

end A018124.P7840412323218366151

namespace A018124

/-- `ceil(A018160(n)/A018125(n))` -/
def P7840412323218366151.Spec : Prop :=
  ∀ n, P7840412323218366151.a n = A018124 n

end A018124

/-! ## A018124.P3375672948288124541

`ceil(A018125(2*n)/A018125(n))`
-/

namespace A018124.P3375672948288124541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A018125 (2 * n) : ℚ) / (A018125 n : ℚ)⌉

end

end A018124.P3375672948288124541

namespace A018124

/-- `ceil(A018125(2*n)/A018125(n))` -/
def P3375672948288124541.Spec : Prop :=
  ∀ n, P3375672948288124541.a n = A018124 n

end A018124

/-! ## A018124.P17618715488267062224

`round(root(4^n, 5))`
-/

namespace A018124.P17618715488267062224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((4 ^ n : ℝ) ^ (1 / (5 : ℝ)))

end

end A018124.P17618715488267062224

namespace A018124

/-- `round(root(4^n, 5))` -/
def P17618715488267062224.Spec : Prop :=
  ∀ n, P17618715488267062224.a n = A018124 n

end A018124

/-!
# A018125: Powers of fifth root of 4 rounded up.

The programs for A018125, the canonical program `A018125.P8861796577936828116` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018125 has offset 0).

The definition of A018125 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 831 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A018125.P279937407969013112

`ceil(4^(n/5))`
-/

namespace A018125.P279937407969013112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(4 : ℝ) ^ ((n : ℚ) / 5 : ℝ)⌉

end

end A018125.P279937407969013112

namespace A018125

/-- `ceil(4^(n/5))` -/
def P279937407969013112.Spec : Prop :=
  ∀ n, P279937407969013112.a n = A018125 n

end A018125

/-! ## A018125.P9153611575231081227

`A018119(2*n)`
-/

namespace A018125.P9153611575231081227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018119 (2 * n)

end

end A018125.P9153611575231081227

namespace A018125

/-- `A018119(2*n)` -/
def P9153611575231081227.Spec : Prop :=
  ∀ n, P9153611575231081227.a n = A018125 n

end A018125

/-! ## A018125.P8861796577936828116

`A018123(n)+A011558(n)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A018125

/-- `A018123(n)+A011558(n)` -/
def P8861796577936828116.Spec : Prop :=
  ∀ n, P8861796577936828116.a n = A018125 n

theorem P8861796577936828116.correct : P8861796577936828116.Spec := by
  intro n
  simp only [A018125]

end A018125

/-! ## A018125.P12295335652911619388

`A018123(n)+Δ[A090223(n)]`
-/

namespace A018125.P12295335652911619388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090223 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018123 n + (f1 (n + 1) - f1 n)

end

end A018125.P12295335652911619388

namespace A018125

/-- `A018123(n)+Δ[A090223(n)]` -/
def P12295335652911619388.Spec : Prop :=
  ∀ n, P12295335652911619388.a n = A018125 n

end A018125

/-! ## A018125.P14770652789753407227

`A018117(2*n)+A011558(n)`
-/

namespace A018125.P14770652789753407227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018117 (2 * n) + A011558 n

end

end A018125.P14770652789753407227

namespace A018125

/-- `A018117(2*n)+A011558(n)` -/
def P14770652789753407227.Spec : Prop :=
  ∀ n, P14770652789753407227.a n = A018125 n

end A018125

/-! ## A018125.P18049560080067021224

`A018117(2*n)+abs(A080891(n))`
-/

namespace A018125.P18049560080067021224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018117 (2 * n) + |A080891 n|

end

end A018125.P18049560080067021224

namespace A018125

/-- `A018117(2*n)+abs(A080891(n))` -/
def P18049560080067021224.Spec : Prop :=
  ∀ n, P18049560080067021224.a n = A018125 n

end A018125

/-! ## A018125.P10925948453328278131

`A018117(2*n)+abs(A244895(n))`
-/

namespace A018125.P10925948453328278131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018117 (2 * n) + |A244895 n|

end

end A018125.P10925948453328278131

namespace A018125

/-- `A018117(2*n)+abs(A244895(n))` -/
def P10925948453328278131.Spec : Prop :=
  ∀ n, P10925948453328278131.a n = A018125 n

end A018125

/-! ## A018125.P13619229238074992525

`A018117(2*n)+Δ[A090223(n)]`
-/

namespace A018125.P13619229238074992525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090223 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018117 (2 * n) + (f1 (n + 1) - f1 n)

end

end A018125.P13619229238074992525

namespace A018125

/-- `A018117(2*n)+Δ[A090223(n)]` -/
def P13619229238074992525.Spec : Prop :=
  ∀ n, P13619229238074992525.a n = A018125 n

end A018125

/-! ## A018125.P5979647640034843183

`A018117(2*n)+A244895(2*n)²`
-/

namespace A018125.P5979647640034843183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018117 (2 * n) + A244895 (2 * n) ^ 2

end

end A018125.P5979647640034843183

namespace A018125

/-- `A018117(2*n)+A244895(2*n)²` -/
def P5979647640034843183.Spec : Prop :=
  ∀ n, P5979647640034843183.a n = A018125 n

end A018125

/-! ## A018125.P5708830789361553849

`A090223(2*n+1)+A018117(2*n)-A090223(2*n)`
-/

namespace A018125.P5708830789361553849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090223 (2 * n + 1) + (A018117 (2 * n) - A090223 (2 * n))

end

end A018125.P5708830789361553849

namespace A018125

/-- `A090223(2*n+1)+A018117(2*n)-A090223(2*n)` -/
def P5708830789361553849.Spec : Prop :=
  ∀ n, P5708830789361553849.a n = A018125 n

end A018125

/-! ## A018125.P9080406070749539586

`A080891(n²)+A018117(2*n)`
-/

namespace A018125.P9080406070749539586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080891 (n ^ 2) + A018117 (2 * n)

end

end A018125.P9080406070749539586

namespace A018125

/-- `A080891(n²)+A018117(2*n)` -/
def P9080406070749539586.Spec : Prop :=
  ∀ n, P9080406070749539586.a n = A018125 n

end A018125

/-!
# A018126: Powers of fifth root of 5 rounded down.

The programs for A018126, the canonical program `A018126.P18140258307609111398` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018126 has offset 0).

The definition of A018126 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 716 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A018126.P18140258307609111398

`A018128(n)-A011558(n)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A018126

/-- `A018128(n)-A011558(n)` -/
def P18140258307609111398.Spec : Prop :=
  ∀ n, P18140258307609111398.a n = A018126 n

theorem P18140258307609111398.correct : P18140258307609111398.Spec := by
  intro n
  simp only [A018126]

end A018126

/-! ## A018126.P5088477754235172712

`A018128(n)-Δ[A090223(n)]`
-/

namespace A018126.P5088477754235172712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090223 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018128 n - (f1 (n + 1) - f1 n)

end

end A018126.P5088477754235172712

namespace A018126

/-- `A018128(n)-Δ[A090223(n)]` -/
def P5088477754235172712.Spec : Prop :=
  ∀ n, P5088477754235172712.a n = A018126 n

end A018126

/-! ## A018126.P16049993870073392284

`A018128(n)+A011558(n)*A321804(A001222(n+1))`
-/

namespace A018126.P16049993870073392284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018128 n + A011558 n * A321804 (A001222 (n + 1)).toNat

end

end A018126.P16049993870073392284

namespace A018126

/-- `A018128(n)+A011558(n)*A321804(A001222(n+1))` -/
def P16049993870073392284.Spec : Prop :=
  ∀ n, P16049993870073392284.a n = A018126 n

end A018126

/-! ## A018126.P9325109659861523457

`floor((5^(n/2))^(2/5))`
-/

namespace A018126.P9325109659861523457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((5 : ℝ) ^ ((n : ℚ) / 2 : ℝ)) ^ ((2 : ℚ) / 5 : ℝ)⌋

end

end A018126.P9325109659861523457

namespace A018126

/-- `floor((5^(n/2))^(2/5))` -/
def P9325109659861523457.Spec : Prop :=
  ∀ n, P9325109659861523457.a n = A018126 n

end A018126

/-! ## A018126.P17939419172816843665

`ceil(root(A074606(n)-n, 5))-1`
-/

namespace A018126.P17939419172816843665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A074606 n - (n : ℤ) : ℝ) ^ (1 / (5 : ℝ))⌉ - 1

end

end A018126.P17939419172816843665

namespace A018126

/-- `ceil(root(A074606(n)-n, 5))-1` -/
def P17939419172816843665.Spec : Prop :=
  ∀ n, P17939419172816843665.a n = A018126 n

end A018126

/-! ## A018126.P906596547056622737

`A000007(n+1)+floor(root(A000351(n), 5))`
-/

namespace A018126.P906596547056622737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + ⌊(A000351 n : ℝ) ^ (1 / (5 : ℝ))⌋

end

end A018126.P906596547056622737

namespace A018126

/-- `A000007(n+1)+floor(root(A000351(n), 5))` -/
def P906596547056622737.Spec : Prop :=
  ∀ n, P906596547056622737.a n = A018126 n

end A018126

/-! ## A018126.P8492641498426141964

`floor(root(A000351(n), 5))%A000108(n+2)`
-/

namespace A018126.P8492641498426141964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊(A000351 n : ℝ) ^ (1 / (5 : ℝ))⌋ (A000108 (n + 2))

end

end A018126.P8492641498426141964

namespace A018126

/-- `floor(root(A000351(n), 5))%A000108(n+2)` -/
def P8492641498426141964.Spec : Prop :=
  ∀ n, P8492641498426141964.a n = A018126 n

end A018126

/-!
# A018127: Powers of fifth root of 5 rounded to nearest integer.

The programs for A018127, the canonical program `A018127.P4168323977292389068` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018127 has offset 0).

The definition of A018127 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 716 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A018127.P4168323977292389068

`round(5^(n/5))`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A018127

/-- `round(5^(n/5))` -/
def P4168323977292389068.Spec : Prop :=
  ∀ n, P4168323977292389068.a n = A018127 n

theorem P4168323977292389068.correct : P4168323977292389068.Spec := by
  intro n
  simp only [A018127]

end A018127

/-! ## A018127.P1704261113155995558

`round(root(A024052(n), 5))+(2*n)%2`
-/

namespace A018127.P1704261113155995558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A024052 n : ℝ) ^ (1 / (5 : ℝ))) + ((2 * n % 2 : ℕ) : ℤ)

end

end A018127.P1704261113155995558

namespace A018127

/-- `round(root(A024052(n), 5))+(2*n)%2` -/
def P1704261113155995558.Spec : Prop :=
  ∀ n, P1704261113155995558.a n = A018127 n

end A018127

/-! ## A018127.P1191258028776799275

`round(root(A000351(n), 5))%A000051(n)`
-/

namespace A018127.P1191258028776799275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A000351 n : ℝ) ^ (1 / (5 : ℝ)))) (A000051 n)

end

end A018127.P1191258028776799275

namespace A018127

/-- `round(root(A000351(n), 5))%A000051(n)` -/
def P1191258028776799275.Spec : Prop :=
  ∀ n, P1191258028776799275.a n = A018127 n

end A018127

/-! ## A018127.P4093953540600600885

`round(root(A024052(n), 5))%A048591(n)`
-/

namespace A018127.P4093953540600600885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A024052 n : ℝ) ^ (1 / (5 : ℝ)))) (A048591 n)

end

end A018127.P4093953540600600885

namespace A018127

/-- `round(root(A024052(n), 5))%A048591(n)` -/
def P4093953540600600885.Spec : Prop :=
  ∀ n, P4093953540600600885.a n = A018127 n

end A018127

/-! ## A018127.P13452717633087368379

`round(root(A024052(n), 5))*A014963(30*(n+1))`
-/

namespace A018127.P13452717633087368379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A024052 n : ℝ) ^ (1 / (5 : ℝ))) * A014963 (30 * (n + 1))

end

end A018127.P13452717633087368379

namespace A018127

/-- `round(root(A024052(n), 5))*A014963(30*(n+1))` -/
def P13452717633087368379.Spec : Prop :=
  ∀ n, P13452717633087368379.a n = A018127 n

end A018127

/-! ## A018127.P14572324935999910846

`round(root(A000351(n), 5))/A007318(n²%(n+1))`
-/

namespace A018127.P14572324935999910846
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.roundAway ((A000351 n : ℝ) ^ (1 / (5 : ℝ))) : ℚ) / (A007318 (n ^ 2 % (n + 1)) : ℚ)

end

end A018127.P14572324935999910846

namespace A018127

/-- `round(root(A000351(n), 5))/A007318(n²%(n+1))` -/
def P14572324935999910846.Spec : Prop :=
  ∀ n, P14572324935999910846.a n = (A018127 n : ℚ)

end A018127

/-!
# A018128: Powers of fifth root of 5 rounded up.

The programs for A018128, the canonical program `A018128.P14907345293032255728` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018128 has offset 0).

The definition of A018128 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 358 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A018128.P1788121641946065730

`A018126(n)+A011558(n)`
-/

namespace A018128.P1788121641946065730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018126 n + A011558 n

end

end A018128.P1788121641946065730

namespace A018128

/-- `A018126(n)+A011558(n)` -/
def P1788121641946065730.Spec : Prop :=
  ∀ n, P1788121641946065730.a n = A018128 n

end A018128

/-! ## A018128.P13169701091395599886

`A018126(n)+Δ[A090223(n)]`
-/

namespace A018128.P13169701091395599886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090223 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018126 n + (f1 (n + 1) - f1 n)

end

end A018128.P13169701091395599886

namespace A018128

/-- `A018126(n)+Δ[A090223(n)]` -/
def P13169701091395599886.Spec : Prop :=
  ∀ n, P13169701091395599886.a n = A018128 n

end A018128

/-! ## A018128.P9321974130305697946

`ceil(sqrt(A018127(2*n)))`
-/

namespace A018128.P9321974130305697946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A018127 (2 * n) : ℝ)⌉

end

end A018128.P9321974130305697946

namespace A018128

/-- `ceil(sqrt(A018127(2*n)))` -/
def P9321974130305697946.Spec : Prop :=
  ∀ n, P9321974130305697946.a n = A018128 n

end A018128

/-! ## A018128.P14907345293032255728

`ceil(A018127(2*n)/A018127(n))`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A018128

/-- `ceil(A018127(2*n)/A018127(n))` -/
def P14907345293032255728.Spec : Prop :=
  ∀ n, P14907345293032255728.a n = A018128 n

theorem P14907345293032255728.correct : P14907345293032255728.Spec := by
  intro n
  simp only [A018128]

end A018128

/-! ## A018128.P5421153897717122106

`ceil(root(5^n, 5))`
-/

namespace A018128.P5421153897717122106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(5 ^ n : ℝ) ^ (1 / (5 : ℝ))⌉

end

end A018128.P5421153897717122106

namespace A018128

/-- `ceil(root(5^n, 5))` -/
def P5421153897717122106.Spec : Prop :=
  ∀ n, P5421153897717122106.a n = A018128 n

end A018128

/-! ## A018128.P15290423597936869166

`floor(A178226(2*n)+root(A024052(n), 5))`
-/

namespace A018128.P15290423597936869166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A178226 (2 * n) : ℝ) + (A024052 n : ℝ) ^ (1 / (5 : ℝ))⌋

end

end A018128.P15290423597936869166

namespace A018128

/-- `floor(A178226(2*n)+root(A024052(n), 5))` -/
def P15290423597936869166.Spec : Prop :=
  ∀ n, P15290423597936869166.a n = A018128 n

end A018128

/-!
# A018129: Powers of fifth root of 6 rounded down.

The programs for A018129, there is no canonical definition to state claims against.
-/

/-! ## A018129.P12364582219625264363

`A018131(n)-A011558(n)`
-/

namespace A018129.P12364582219625264363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018131 n - A011558 n

end

end A018129.P12364582219625264363

/-! ## A018129.P3951352814356265214

`A018123(n)+A018131(n)-A018125(n)`
-/

namespace A018129.P3951352814356265214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018123 n + (A018131 n - A018125 n)

end

end A018129.P3951352814356265214

/-! ## A018129.P6158701052914684683

`A018131(n)+A018132(n)-A018134(n)`
-/

namespace A018129.P6158701052914684683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018131 n + (A018132 n - A018134 n)

end

end A018129.P6158701052914684683

/-! ## A018129.P11490611726364306852

`A018131(n)+A018144(n)-A018146(n)`
-/

namespace A018129.P11490611726364306852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018131 n + (A018144 n - A018146 n)

end

end A018129.P11490611726364306852

/-! ## A018129.P232867557139209434

`floor(root(6^n, 5))`
-/

namespace A018129.P232867557139209434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(6 ^ n : ℝ) ^ (1 / (5 : ℝ))⌋

end

end A018129.P232867557139209434

/-!
# A018130: Powers of fifth root of 6 rounded to nearest integer.

The programs for A018130, the canonical program `A018130.P11323371319505450073` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018130 has offset 0).

The definition of A018130 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 474 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A018130.P11323371319505450073

`round(6^(n/5))%A022382(n+1)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A018130

/-- `round(6^(n/5))%A022382(n+1)` -/
def P11323371319505450073.Spec : Prop :=
  ∀ n, P11323371319505450073.a n = A018130 n

theorem P11323371319505450073.correct : P11323371319505450073.Spec := by
  intro n
  simp only [A018130]

end A018130

/-! ## A018130.P11729106517461733207

`round(6^(n/5))%A287439(n)`
-/

namespace A018130.P11729106517461733207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((6 : ℝ) ^ ((n : ℚ) / 5 : ℝ))) (A287439 n)

end

end A018130.P11729106517461733207

namespace A018130

/-- `round(6^(n/5))%A287439(n)` -/
def P11729106517461733207.Spec : Prop :=
  ∀ n, P11729106517461733207.a n = A018130 n

end A018130

/-! ## A018130.P3282083920905971600

`round(sqrt(A018129(2*n)))`
-/

namespace A018130.P3282083920905971600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A018129 (2 * n) : ℝ))

end

end A018130.P3282083920905971600

namespace A018130

/-- `round(sqrt(A018129(2*n)))` -/
def P3282083920905971600.Spec : Prop :=
  ∀ n, P3282083920905971600.a n = A018130 n

end A018130

/-! ## A018130.P5980754241127822552

`ceil(A018129(2*n)/A018131(n))`
-/

namespace A018130.P5980754241127822552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A018129 (2 * n) : ℚ) / (A018131 n : ℚ)⌉

end

end A018130.P5980754241127822552

namespace A018130

/-- `ceil(A018129(2*n)/A018131(n))` -/
def P5980754241127822552.Spec : Prop :=
  ∀ n, P5980754241127822552.a n = A018130 n

end A018130

/-! ## A018130.P14327930259405010918

`round(root(6^n, 5))`
-/

namespace A018130.P14327930259405010918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((6 ^ n : ℝ) ^ (1 / (5 : ℝ)))

end

end A018130.P14327930259405010918

namespace A018130

/-- `round(root(6^n, 5))` -/
def P14327930259405010918.Spec : Prop :=
  ∀ n, P14327930259405010918.a n = A018130 n

end A018130

/-!
# A018131: Powers of fifth root of 6 rounded up.

The programs for A018131, there is no canonical definition to state claims against.
-/

/-! ## A018131.P5080802323997067533

`A018129(n)+A011558(n)`
-/

namespace A018131.P5080802323997067533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018129 n + A011558 n

end

end A018131.P5080802323997067533

/-! ## A018131.P4543409311451926378

`A018129(n)+abs(A080891(n))`
-/

namespace A018131.P4543409311451926378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018129 n + |A080891 n|

end

end A018131.P4543409311451926378

/-! ## A018131.P16193431041424206103

`A018129(n)+Δ[A090223(n)]`
-/

namespace A018131.P16193431041424206103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090223 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018129 n + (f1 (n + 1) - f1 n)

end

end A018131.P16193431041424206103

/-! ## A018131.P12496723449933960222

`A018119(n)+A018129(n)-A018117(n)`
-/

namespace A018131.P12496723449933960222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018119 n + (A018129 n - A018117 n)

end

end A018131.P12496723449933960222

/-! ## A018131.P7728410309687478233

`ceil(sqrt(sqrt(A018129(4*n))))`
-/

namespace A018131.P7728410309687478233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (Real.sqrt (A018129 (4 * n) : ℝ))⌉

end

end A018131.P7728410309687478233

/-! ## A018131.P12986721678246618858

`ceil(root(6^n, 5))`
-/

namespace A018131.P12986721678246618858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(6 ^ n : ℝ) ^ (1 / (5 : ℝ))⌉

end

end A018131.P12986721678246618858

/-! ## A018131.P12506362054342888365

`A080891(n²)+A018129(n)`
-/

namespace A018131.P12506362054342888365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080891 (n ^ 2) + A018129 n

end

end A018131.P12506362054342888365

/-!
# A018132: Powers of fifth root of 7 rounded down.

The programs for A018132, the canonical program `A018132.P14846082595715997503` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018132 has offset 0).

The definition of A018132 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 592 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A018132.P14846082595715997503

`floor(7^(n/5))`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A018132

/-- `floor(7^(n/5))` -/
def P14846082595715997503.Spec : Prop :=
  ∀ n, P14846082595715997503.a n = A018132 n

theorem P14846082595715997503.correct : P14846082595715997503.Spec := by
  intro n
  simp only [A018132]

end A018132

/-! ## A018132.P9167232908484232384

`A018134(n)-A011558(n)`
-/

namespace A018132.P9167232908484232384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018134 n - A011558 n

end

end A018132.P9167232908484232384

namespace A018132

/-- `A018134(n)-A011558(n)` -/
def P9167232908484232384.Spec : Prop :=
  ∀ n, P9167232908484232384.a n = A018132 n

end A018132

/-! ## A018132.P5484466972633464922

`A018134(n)-abs(A080891(n))`
-/

namespace A018132.P5484466972633464922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018134 n - |A080891 n|

end

end A018132.P5484466972633464922

namespace A018132

/-- `A018134(n)-abs(A080891(n))` -/
def P5484466972633464922.Spec : Prop :=
  ∀ n, P5484466972633464922.a n = A018132 n

end A018132

/-! ## A018132.P9654106378711192809

`A018134(n)-abs(A244895(n))`
-/

namespace A018132.P9654106378711192809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018134 n - |A244895 n|

end

end A018132.P9654106378711192809

namespace A018132

/-- `A018134(n)-abs(A244895(n))` -/
def P9654106378711192809.Spec : Prop :=
  ∀ n, P9654106378711192809.a n = A018132 n

end A018132

/-! ## A018132.P5336509789530879711

`A018134(n)-Δ[A090223(n)]`
-/

namespace A018132.P5336509789530879711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090223 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018134 n - (f1 (n + 1) - f1 n)

end

end A018132.P5336509789530879711

namespace A018132

/-- `A018134(n)-Δ[A090223(n)]` -/
def P5336509789530879711.Spec : Prop :=
  ∀ n, P5336509789530879711.a n = A018132 n

end A018132

/-! ## A018132.P6656388966359813967

`A018134(n)-A080891(n²)`
-/

namespace A018132.P6656388966359813967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018134 n - A080891 (n ^ 2)

end

end A018132.P6656388966359813967

namespace A018132

/-- `A018134(n)-A080891(n²)` -/
def P6656388966359813967.Spec : Prop :=
  ∀ n, P6656388966359813967.a n = A018132 n

end A018132

/-!
# A018133: Powers of fifth root of 7 rounded to nearest integer.

The programs for A018133, the canonical program `A018133.P1935935528495860089` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018133 has offset 0).

The definition of A018133 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 477 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A018133.P1935935528495860089

`round(7^(n/5))%A022112(n)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A018133

/-- `round(7^(n/5))%A022112(n)` -/
def P1935935528495860089.Spec : Prop :=
  ∀ n, P1935935528495860089.a n = A018133 n

theorem P1935935528495860089.correct : P1935935528495860089.Spec := by
  intro n
  simp only [A018133]

end A018133

/-! ## A018133.P15097136674713158137

`round(sqrt(7^(2*n/5)))`
-/

namespace A018133.P15097136674713158137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((7 : ℝ) ^ ((2 * n : ℚ) / 5 : ℝ)))

end

end A018133.P15097136674713158137

namespace A018133

/-- `round(sqrt(7^(2*n/5)))` -/
def P15097136674713158137.Spec : Prop :=
  ∀ n, P15097136674713158137.a n = A018133 n

end A018133

/-! ## A018133.P17250456796803134869

`round(7^(n/5))*A054977(∑[2-A079728(n+1)])`
-/

namespace A018133.P17250456796803134869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A079728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((7 : ℝ) ^ ((n : ℚ) / 5 : ℝ)) * A054977 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A018133.P17250456796803134869

namespace A018133

/-- `round(7^(n/5))*A054977(∑[2-A079728(n+1)])` -/
def P17250456796803134869.Spec : Prop :=
  ∀ n, P17250456796803134869.a n = A018133 n

end A018133

/-! ## A018133.P8681970053529861492

`A007814(A119653(n+1))+round(7^(n/5))`
-/

namespace A018133.P8681970053529861492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A119653 (n + 1)).toNat + SequenceMachineLib.roundAway ((7 : ℝ) ^ ((n : ℚ) / 5 : ℝ))

end

end A018133.P8681970053529861492

namespace A018133

/-- `A007814(A119653(n+1))+round(7^(n/5))` -/
def P8681970053529861492.Spec : Prop :=
  ∀ n, P8681970053529861492.a n = A018133 n

end A018133

/-! ## A018133.P3665588556943487063

`A050370(A352954(n+2))+round(7^(n/5))`
-/

namespace A018133.P3665588556943487063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050370 (A352954 (n + 2)).toNat + SequenceMachineLib.roundAway ((7 : ℝ) ^ ((n : ℚ) / 5 : ℝ))

end

end A018133.P3665588556943487063

namespace A018133

/-- `A050370(A352954(n+2))+round(7^(n/5))` -/
def P3665588556943487063.Spec : Prop :=
  ∀ n, P3665588556943487063.a n = A018133 n

end A018133

/-! ## A018133.P17915528196431569718

`A169735(19*(9*n+1))+round(7^(n/5))`
-/

namespace A018133.P17915528196431569718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169735 (19 * (9 * n + 1)) + SequenceMachineLib.roundAway ((7 : ℝ) ^ ((n : ℚ) / 5 : ℝ))

end

end A018133.P17915528196431569718

namespace A018133

/-- `A169735(19*(9*n+1))+round(7^(n/5))` -/
def P17915528196431569718.Spec : Prop :=
  ∀ n, P17915528196431569718.a n = A018133 n

end A018133

/-! ## A018133.P13107633697312463041

`round(7^(n/5))*A054977(A329630(n+1))`
-/

namespace A018133.P13107633697312463041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((7 : ℝ) ^ ((n : ℚ) / 5 : ℝ)) * A054977 (A329630 (n + 1)).toNat

end

end A018133.P13107633697312463041

namespace A018133

/-- `round(7^(n/5))*A054977(A329630(n+1))` -/
def P13107633697312463041.Spec : Prop :=
  ∀ n, P13107633697312463041.a n = A018133 n

end A018133

/-! ## A018133.P8945848362811741287

`round(7^(n/5))*A001222(A054690(n+2))`
-/

namespace A018133.P8945848362811741287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((7 : ℝ) ^ ((n : ℚ) / 5 : ℝ)) * A001222 (A054690 (n + 2)).toNat

end

end A018133.P8945848362811741287

namespace A018133

/-- `round(7^(n/5))*A001222(A054690(n+2))` -/
def P8945848362811741287.Spec : Prop :=
  ∀ n, P8945848362811741287.a n = A018133 n

end A018133

/-!
# A018134: Powers of fifth root of 7 rounded up.

The programs for A018134, the canonical program `A018134.P9317719804498158701` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018134 has offset 0).

The definition of A018134 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 592 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A018134.P14528358184015139823

`ceil(7^(n/5))`
-/

namespace A018134.P14528358184015139823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(7 : ℝ) ^ ((n : ℚ) / 5 : ℝ)⌉

end

end A018134.P14528358184015139823

namespace A018134

/-- `ceil(7^(n/5))` -/
def P14528358184015139823.Spec : Prop :=
  ∀ n, P14528358184015139823.a n = A018134 n

end A018134

/-! ## A018134.P9317719804498158701

`A018132(n)+A011558(n)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A018134

/-- `A018132(n)+A011558(n)` -/
def P9317719804498158701.Spec : Prop :=
  ∀ n, P9317719804498158701.a n = A018134 n

theorem P9317719804498158701.correct : P9317719804498158701.Spec := by
  intro n
  simp only [A018134]

end A018134

/-! ## A018134.P13689925822062523935

`A018132(n)+abs(A244895(n))`
-/

namespace A018134.P13689925822062523935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018132 n + |A244895 n|

end

end A018134.P13689925822062523935

namespace A018134

/-- `A018132(n)+abs(A244895(n))` -/
def P13689925822062523935.Spec : Prop :=
  ∀ n, P13689925822062523935.a n = A018134 n

end A018134

/-! ## A018134.P1553702597597006526

`A018132(n)+Δ[A090223(n)]`
-/

namespace A018134.P1553702597597006526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090223 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018132 n + (f1 (n + 1) - f1 n)

end

end A018134.P1553702597597006526

namespace A018134

/-- `A018132(n)+Δ[A090223(n)]` -/
def P1553702597597006526.Spec : Prop :=
  ∀ n, P1553702597597006526.a n = A018134 n

end A018134

/-! ## A018134.P9935831148273975934

`A018132(n)+A018143(n)-A018141(n)`
-/

namespace A018134.P9935831148273975934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018132 n + (A018143 n - A018141 n)

end

end A018134.P9935831148273975934

namespace A018134

/-- `A018132(n)+A018143(n)-A018141(n)` -/
def P9935831148273975934.Spec : Prop :=
  ∀ n, P9935831148273975934.a n = A018134 n

end A018134

/-!
# A018135: Powers of fifth root of 8 rounded down.

The programs for A018135, the canonical program `A018135.P5969121266142873838` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018135 has offset 0).

The definition of A018135 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 554 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A018135.P5969121266142873838

`floor(8^(n/5))`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A018135

/-- `floor(8^(n/5))` -/
def P5969121266142873838.Spec : Prop :=
  ∀ n, P5969121266142873838.a n = A018135 n

theorem P5969121266142873838.correct : P5969121266142873838.Spec := by
  intro n
  simp only [A018135]

end A018135

/-! ## A018135.P339742956668117386

`A018117(3*n)`
-/

namespace A018135.P339742956668117386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018117 (3 * n)

end

end A018135.P339742956668117386

namespace A018135

/-- `A018117(3*n)` -/
def P339742956668117386.Spec : Prop :=
  ∀ n, P339742956668117386.a n = A018135 n

end A018135

/-! ## A018135.P4900272829363736933

`A018137(n)-A011558(n)`
-/

namespace A018135.P4900272829363736933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018137 n - A011558 n

end

end A018135.P4900272829363736933

namespace A018135

/-- `A018137(n)-A011558(n)` -/
def P4900272829363736933.Spec : Prop :=
  ∀ n, P4900272829363736933.a n = A018135 n

end A018135

/-! ## A018135.P15978666577084431391

`A018137(n)-abs(A244895(n))`
-/

namespace A018135.P15978666577084431391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018137 n - |A244895 n|

end

end A018135.P15978666577084431391

namespace A018135

/-- `A018137(n)-abs(A244895(n))` -/
def P15978666577084431391.Spec : Prop :=
  ∀ n, P15978666577084431391.a n = A018135 n

end A018135

/-! ## A018135.P4001056788731078137

`A018137(n)-Δ[A090223(n)]`
-/

namespace A018135.P4001056788731078137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090223 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018137 n - (f1 (n + 1) - f1 n)

end

end A018135.P4001056788731078137

namespace A018135

/-- `A018137(n)-Δ[A090223(n)]` -/
def P4001056788731078137.Spec : Prop :=
  ∀ n, P4001056788731078137.a n = A018135 n

end A018135

/-! ## A018135.P4278091645315672382

`A018132(n)+A018137(n)-A018134(n)`
-/

namespace A018135.P4278091645315672382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018132 n + (A018137 n - A018134 n)

end

end A018135.P4278091645315672382

namespace A018135

/-- `A018132(n)+A018137(n)-A018134(n)` -/
def P4278091645315672382.Spec : Prop :=
  ∀ n, P4278091645315672382.a n = A018135 n

end A018135

/-! ## A018135.P13309203687975539019

`A018137(n)+A018141(n)-A018143(n)`
-/

namespace A018135.P13309203687975539019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018137 n + (A018141 n - A018143 n)

end

end A018135.P13309203687975539019

namespace A018135

/-- `A018137(n)+A018141(n)-A018143(n)` -/
def P13309203687975539019.Spec : Prop :=
  ∀ n, P13309203687975539019.a n = A018135 n

end A018135

/-! ## A018135.P17621034493242834935

`A018137(n)+A018144(n)-A018146(n)`
-/

namespace A018135.P17621034493242834935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018137 n + (A018144 n - A018146 n)

end

end A018135.P17621034493242834935

namespace A018135

/-- `A018137(n)+A018144(n)-A018146(n)` -/
def P17621034493242834935.Spec : Prop :=
  ∀ n, P17621034493242834935.a n = A018135 n

end A018135

/-!
# A018136: Powers of fifth root of 8 rounded to nearest integer.

The programs for A018136, the canonical program `A018136.P3960294426787492481` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018136 has offset 0).

The definition of A018136 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 554 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A018136.P3960294426787492481

`A018118(3*n)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A018136

/-- `A018118(3*n)` -/
def P3960294426787492481.Spec : Prop :=
  ∀ n, P3960294426787492481.a n = A018136 n

theorem P3960294426787492481.correct : P3960294426787492481.Spec := by
  intro n
  simp only [A018136]

end A018136

/-! ## A018136.P2145063747471216690

`gcd(A000038(n), A018118(A008486(n)))`
-/

namespace A018136.P2145063747471216690
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A018118 (A008486 n).toNat)

end

end A018136.P2145063747471216690

namespace A018136

/-- `gcd(A000038(n), A018118(A008486(n)))` -/
def P2145063747471216690.Spec : Prop :=
  ∀ n, (P2145063747471216690.a n : ℤ) = A018136 n

end A018136

/-! ## A018136.P13255854722830111122

`A018118(A008486(n))+A000038(n+1)`
-/

namespace A018136.P13255854722830111122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018118 (A008486 n).toNat + A000038 (n + 1)

end

end A018136.P13255854722830111122

namespace A018136

/-- `A018118(A008486(n))+A000038(n+1)` -/
def P13255854722830111122.Spec : Prop :=
  ∀ n, P13255854722830111122.a n = A018136 n

end A018136

/-! ## A018136.P6937807359922535177

`round(root(A000079(n), 5/3))`
-/

namespace A018136.P6937807359922535177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000079 n : ℝ) ^ (1 / ((5 : ℚ) / 3 : ℝ)))

end

end A018136.P6937807359922535177

namespace A018136

/-- `round(root(A000079(n), 5/3))` -/
def P6937807359922535177.Spec : Prop :=
  ∀ n, P6937807359922535177.a n = A018136 n

end A018136

/-! ## A018136.P1881931788652333960

`round(sqrt(8^(2*n/5)))`
-/

namespace A018136.P1881931788652333960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((8 : ℝ) ^ ((2 * n : ℚ) / 5 : ℝ)))

end

end A018136.P1881931788652333960

namespace A018136

/-- `round(sqrt(8^(2*n/5)))` -/
def P1881931788652333960.Spec : Prop :=
  ∀ n, P1881931788652333960.a n = A018136 n

end A018136

/-! ## A018136.P3648363155897592662

`A018118(A008486(n))/A007318(∑[n])`
-/

namespace A018136.P3648363155897592662
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A018118 (A008486 n).toNat : ℚ) / (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A018136.P3648363155897592662

namespace A018136

/-- `A018118(A008486(n))/A007318(∑[n])` -/
def P3648363155897592662.Spec : Prop :=
  ∀ n, P3648363155897592662.a n = (A018136 n : ℚ)

end A018136

/-! ## A018136.P2282238473200939160

`A018118(A008585(n))/A007318(∑[n])`
-/

namespace A018136.P2282238473200939160
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A018118 (A008585 n).toNat : ℚ) / (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A018136.P2282238473200939160

namespace A018136

/-- `A018118(A008585(n))/A007318(∑[n])` -/
def P2282238473200939160.Spec : Prop :=
  ∀ n, P2282238473200939160.a n = (A018136 n : ℚ)

end A018136

/-! ## A018136.P4727730309442956950

`A018118(A008486(n))-A000038(A018118(n))²`
-/

namespace A018136.P4727730309442956950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018118 (A008486 n).toNat - A000038 (A018118 n).toNat ^ 2

end

end A018136.P4727730309442956950

namespace A018136

/-- `A018118(A008486(n))-A000038(A018118(n))²` -/
def P4727730309442956950.Spec : Prop :=
  ∀ n, P4727730309442956950.a n = A018136 n

end A018136

/-!
# A018137: Powers of fifth root of 8 rounded up.

The programs for A018137, the canonical program `A018137.P15763535359869717710` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018137 has offset 0).

The definition of A018137 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 554 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A018137.P322008146995425272

`ceil(8^(n/5))`
-/

namespace A018137.P322008146995425272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(8 : ℝ) ^ ((n : ℚ) / 5 : ℝ)⌉

end

end A018137.P322008146995425272

namespace A018137

/-- `ceil(8^(n/5))` -/
def P322008146995425272.Spec : Prop :=
  ∀ n, P322008146995425272.a n = A018137 n

end A018137

/-! ## A018137.P15888169786111010983

`A018119(3*n)`
-/

namespace A018137.P15888169786111010983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018119 (3 * n)

end

end A018137.P15888169786111010983

namespace A018137

/-- `A018119(3*n)` -/
def P15888169786111010983.Spec : Prop :=
  ∀ n, P15888169786111010983.a n = A018137 n

end A018137

/-! ## A018137.P15763535359869717710

`A018135(n)+A011558(n)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A018137

/-- `A018135(n)+A011558(n)` -/
def P15763535359869717710.Spec : Prop :=
  ∀ n, P15763535359869717710.a n = A018137 n

theorem P15763535359869717710.correct : P15763535359869717710.Spec := by
  intro n
  simp only [A018137]

end A018137

/-! ## A018137.P16697063568821910857

`A018135(n)+abs(A244895(n))`
-/

namespace A018137.P16697063568821910857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018135 n + |A244895 n|

end

end A018137.P16697063568821910857

namespace A018137

/-- `A018135(n)+abs(A244895(n))` -/
def P16697063568821910857.Spec : Prop :=
  ∀ n, P16697063568821910857.a n = A018137 n

end A018137

/-! ## A018137.P7237504354200866680

`A018135(n)+Δ[A090223(n)]`
-/

namespace A018137.P7237504354200866680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090223 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018135 n + (f1 (n + 1) - f1 n)

end

end A018137.P7237504354200866680

namespace A018137

/-- `A018135(n)+Δ[A090223(n)]` -/
def P7237504354200866680.Spec : Prop :=
  ∀ n, P7237504354200866680.a n = A018137 n

end A018137

/-! ## A018137.P10384834320608572235

`A018119(n)+A018135(n)-A018117(n)`
-/

namespace A018137.P10384834320608572235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018119 n + (A018135 n - A018117 n)

end

end A018137.P10384834320608572235

namespace A018137

/-- `A018119(n)+A018135(n)-A018117(n)` -/
def P10384834320608572235.Spec : Prop :=
  ∀ n, P10384834320608572235.a n = A018137 n

end A018137

/-!
# A018138: Powers of fifth root of 9 rounded down.

The programs for A018138, the canonical program `A018138.P10780805456287121430` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018138 has offset 0).

The definition of A018138 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 524 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A018138.P10475449339348257735

`A018120(2*n)`
-/

namespace A018138.P10475449339348257735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018120 (2 * n)

end

end A018138.P10475449339348257735

namespace A018138

/-- `A018120(2*n)` -/
def P10475449339348257735.Spec : Prop :=
  ∀ n, P10475449339348257735.a n = A018138 n

end A018138

/-! ## A018138.P10780805456287121430

`A018140(n)-A011558(n)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A018138

/-- `A018140(n)-A011558(n)` -/
def P10780805456287121430.Spec : Prop :=
  ∀ n, P10780805456287121430.a n = A018138 n

theorem P10780805456287121430.correct : P10780805456287121430.Spec := by
  intro n
  simp only [A018138]

end A018138

/-! ## A018138.P15333471349685191712

`A018122(2*n)-A011558(n)`
-/

namespace A018138.P15333471349685191712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018122 (2 * n) - A011558 n

end

end A018138.P15333471349685191712

namespace A018138

/-- `A018122(2*n)-A011558(n)` -/
def P15333471349685191712.Spec : Prop :=
  ∀ n, P15333471349685191712.a n = A018138 n

end A018138

/-! ## A018138.P17379742626334205648

`A018140(n)+A018156(n)-A018158(n)`
-/

namespace A018138.P17379742626334205648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018140 n + (A018156 n - A018158 n)

end

end A018138.P17379742626334205648

namespace A018138

/-- `A018140(n)+A018156(n)-A018158(n)` -/
def P17379742626334205648.Spec : Prop :=
  ∀ n, P17379742626334205648.a n = A018138 n

end A018138

/-! ## A018138.P13459833977914034310

`A018122(2*n)+A018129(2*n)-A018131(2*n)`
-/

namespace A018138.P13459833977914034310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018122 (2 * n) + (A018129 (2 * n) - A018131 (2 * n))

end

end A018138.P13459833977914034310

namespace A018138

/-- `A018122(2*n)+A018129(2*n)-A018131(2*n)` -/
def P13459833977914034310.Spec : Prop :=
  ∀ n, P13459833977914034310.a n = A018138 n

end A018138

/-! ## A018138.P2364732319262783073

`floor(sqrt(A018139(2*n)))`
-/

namespace A018138.P2364732319262783073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A018139 (2 * n))

end

end A018138.P2364732319262783073

namespace A018138

/-- `floor(sqrt(A018139(2*n)))` -/
def P2364732319262783073.Spec : Prop :=
  ∀ n, P2364732319262783073.a n = A018138 n

end A018138

/-! ## A018138.P5310595304546683663

`floor(3^(lcm(2*n, A349542(3*n+2))/5))`
-/

namespace A018138.P5310595304546683663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 : ℝ) ^ ((Int.lcm (2 * n : ℤ) (A349542 (3 * n + 2)) : ℚ) / 5 : ℝ)⌋

end

end A018138.P5310595304546683663

namespace A018138

/-- `floor(3^(lcm(2*n, A349542(3*n+2))/5))` -/
def P5310595304546683663.Spec : Prop :=
  ∀ n, P5310595304546683663.a n = A018138 n

end A018138

/-! ## A018138.P10149999076671217435

`floor((3^n)^(2/5))`
-/

namespace A018138.P10149999076671217435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 ^ n : ℝ) ^ ((2 : ℚ) / 5 : ℝ)⌋

end

end A018138.P10149999076671217435

namespace A018138

/-- `floor((3^n)^(2/5))` -/
def P10149999076671217435.Spec : Prop :=
  ∀ n, P10149999076671217435.a n = A018138 n

end A018138

/-!
# A018139: Powers of fifth root of 9 rounded to nearest integer.

The programs for A018139, the canonical program `A018139.P12614381874718071357` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018139 has offset 0).

The definition of A018139 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 524 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A018139.P17992531356213658392

`round(9^(n/5))`
-/

namespace A018139.P17992531356213658392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((9 : ℝ) ^ ((n : ℚ) / 5 : ℝ))

end

end A018139.P17992531356213658392

namespace A018139

/-- `round(9^(n/5))` -/
def P17992531356213658392.Spec : Prop :=
  ∀ n, P17992531356213658392.a n = A018139 n

end A018139

/-! ## A018139.P12614381874718071357

`A018121(2*n)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A018139

/-- `A018121(2*n)` -/
def P12614381874718071357.Spec : Prop :=
  ∀ n, P12614381874718071357.a n = A018139 n

theorem P12614381874718071357.correct : P12614381874718071357.Spec := by
  intro n
  simp only [A018139]

end A018139

/-! ## A018139.P10104033819290475143

`gcd(A000038(n), A018121(A004277(n)))`
-/

namespace A018139.P10104033819290475143
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A018121 (A004277 n).toNat)

end

end A018139.P10104033819290475143

namespace A018139

/-- `gcd(A000038(n), A018121(A004277(n)))` -/
def P10104033819290475143.Spec : Prop :=
  ∀ n, (P10104033819290475143.a n : ℤ) = A018139 n

end A018139

/-! ## A018139.P5172067375750776592

`lcm(A018121(A004277(n)), A020985(n))`
-/

namespace A018139.P5172067375750776592
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A018121 (A004277 n).toNat) (A020985 n)

end

end A018139.P5172067375750776592

namespace A018139

/-- `lcm(A018121(A004277(n)), A020985(n))` -/
def P5172067375750776592.Spec : Prop :=
  ∀ n, (P5172067375750776592.a n : ℤ) = A018139 n

end A018139

/-! ## A018139.P14748486378490787277

`A018121(A004277(n))%A000051(n)`
-/

namespace A018139.P14748486378490787277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A018121 (A004277 n).toNat) (A000051 n)

end

end A018139.P14748486378490787277

namespace A018139

/-- `A018121(A004277(n))%A000051(n)` -/
def P14748486378490787277.Spec : Prop :=
  ∀ n, P14748486378490787277.a n = A018139 n

end A018139

/-! ## A018139.P3622756944502216327

`ceil(A018140(2*n)/A018140(n))`
-/

namespace A018139.P3622756944502216327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A018140 (2 * n) : ℚ) / (A018140 n : ℚ)⌉

end

end A018139.P3622756944502216327

namespace A018139

/-- `ceil(A018140(2*n)/A018140(n))` -/
def P3622756944502216327.Spec : Prop :=
  ∀ n, P3622756944502216327.a n = A018139 n

end A018139

/-! ## A018139.P4980132931992730404

`round(root(A000244(n), 5)²)%A000918(n+4)`
-/

namespace A018139.P4980132931992730404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (((A000244 n : ℝ) ^ (1 / (5 : ℝ))) ^ 2)) (A000918 (n + 4))

end

end A018139.P4980132931992730404

namespace A018139

/-- `round(root(A000244(n), 5)²)%A000918(n+4)` -/
def P4980132931992730404.Spec : Prop :=
  ∀ n, P4980132931992730404.a n = A018139 n

end A018139

/-!
# A018140: Powers of the fifth root of 9 rounded up.

The programs for A018140, the canonical program `A018140.P17425176080909874737` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018140 has offset 0).

The definition of A018140 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 524 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A018140.P17425176080909874737

`ceil((3^(2/5))^n)`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A018140

/-- `ceil((3^(2/5))^n)` -/
def P17425176080909874737.Spec : Prop :=
  ∀ n, P17425176080909874737.a n = A018140 n

theorem P17425176080909874737.correct : P17425176080909874737.Spec := by
  intro n
  simp only [A018140]

end A018140

/-! ## A018140.P7552552194232233219

`A018122(2*n)`
-/

namespace A018140.P7552552194232233219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018122 (2 * n)

end

end A018140.P7552552194232233219

namespace A018140

/-- `A018122(2*n)` -/
def P7552552194232233219.Spec : Prop :=
  ∀ n, P7552552194232233219.a n = A018140 n

end A018140

/-! ## A018140.P12758884401899602416

`record[A018122(A014681(n))]`
-/

namespace A018140.P12758884401899602416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018122 (A014681 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018140.P12758884401899602416

namespace A018140

/-- `record[A018122(A014681(n))]` -/
def P12758884401899602416.Spec : Prop :=
  ∀ n, P12758884401899602416.a n = A018140 n

end A018140

/-! ## A018140.P11583016715050075777

`A018138(n)+A011558(n)`
-/

namespace A018140.P11583016715050075777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018138 n + A011558 n

end

end A018140.P11583016715050075777

namespace A018140

/-- `A018138(n)+A011558(n)` -/
def P11583016715050075777.Spec : Prop :=
  ∀ n, P11583016715050075777.a n = A018140 n

end A018140

/-! ## A018140.P16402137800236479673

`record[A018122(n)/A000034(n)]`
-/

namespace A018140.P16402137800236479673
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A018122 n : ℚ) / (A000034 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018140.P16402137800236479673

namespace A018140

/-- `record[A018122(n)/A000034(n)]` -/
def P16402137800236479673.Spec : Prop :=
  ∀ n, P16402137800236479673.a n = (A018140 n : ℚ)

end A018140

/-! ## A018140.P9241934901687507495

`record[A018122(n)/A033999(n)]`
-/

namespace A018140.P9241934901687507495
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A018122 n : ℚ) / (A033999 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018140.P9241934901687507495

namespace A018140

/-- `record[A018122(n)/A033999(n)]` -/
def P9241934901687507495.Spec : Prop :=
  ∀ n, P9241934901687507495.a n = (A018140 n : ℚ)

end A018140

/-! ## A018140.P14858401568111364263

`A018120(2*n)+A011558(n)`
-/

namespace A018140.P14858401568111364263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018120 (2 * n) + A011558 n

end

end A018140.P14858401568111364263

namespace A018140

/-- `A018120(2*n)+A011558(n)` -/
def P14858401568111364263.Spec : Prop :=
  ∀ n, P14858401568111364263.a n = A018140 n

end A018140

/-! ## A018140.P17372459234568680922

`record[A018122(n)/A001511(n+1)]`
-/

namespace A018140.P17372459234568680922
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A018122 n : ℚ) / (A001511 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018140.P17372459234568680922

namespace A018140

/-- `record[A018122(n)/A001511(n+1)]` -/
def P17372459234568680922.Spec : Prop :=
  ∀ n, P17372459234568680922.a n = (A018140 n : ℚ)

end A018140

/-! ## A018140.P7588725950862479788

`A018122(A004277(n))-A000007(n)`
-/

namespace A018140.P7588725950862479788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018122 (A004277 n).toNat - A000007 n

end

end A018140.P7588725950862479788

namespace A018140

/-- `A018122(A004277(n))-A000007(n)` -/
def P7588725950862479788.Spec : Prop :=
  ∀ n, P7588725950862479788.a n = A018140 n

end A018140

/-! ## A018140.P6010657279230901500

`A018138(n)+A018149(n)-A018147(n)`
-/

namespace A018140.P6010657279230901500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018138 n + (A018149 n - A018147 n)

end

end A018140.P6010657279230901500

namespace A018140

/-- `A018138(n)+A018149(n)-A018147(n)` -/
def P6010657279230901500.Spec : Prop :=
  ∀ n, P6010657279230901500.a n = A018140 n

end A018140

/-! ## A018140.P12752660735813816106

`A018122(A005843(n))%A000051(n)`
-/

namespace A018140.P12752660735813816106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A018122 (A005843 n).toNat) (A000051 n)

end

end A018140.P12752660735813816106

namespace A018140

/-- `A018122(A005843(n))%A000051(n)` -/
def P12752660735813816106.Spec : Prop :=
  ∀ n, P12752660735813816106.a n = A018140 n

end A018140

/-! ## A018140.P6838856600019697058

`A018122(A005843(n))/A007318(∑[n])`
-/

namespace A018140.P6838856600019697058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A018122 (A005843 n).toNat : ℚ) / (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A018140.P6838856600019697058

namespace A018140

/-- `A018122(A005843(n))/A007318(∑[n])` -/
def P6838856600019697058.Spec : Prop :=
  ∀ n, P6838856600019697058.a n = (A018140 n : ℚ)

end A018140

/-!
# A018141: Powers of fifth root of 10 rounded down.

The programs for A018141, the canonical program `A018141.P16818335478403762386` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018141 has offset 0).

The definition of A018141 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 500 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A018141.P11881651587048133031

`A018143(n)-A011558(n)`
-/

namespace A018141.P11881651587048133031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018143 n - A011558 n

end

end A018141.P11881651587048133031

namespace A018141

/-- `A018143(n)-A011558(n)` -/
def P11881651587048133031.Spec : Prop :=
  ∀ n, P11881651587048133031.a n = A018141 n

end A018141

/-! ## A018141.P11004107415143589545

`A130084(2*n+1)-A011558(n)`
-/

namespace A018141.P11004107415143589545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130084 (2 * n + 1) - A011558 n

end

end A018141.P11004107415143589545

namespace A018141

/-- `A130084(2*n+1)-A011558(n)` -/
def P11004107415143589545.Spec : Prop :=
  ∀ n, P11004107415143589545.a n = A018141 n

end A018141

/-! ## A018141.P3379719553155334456

`A018117(n)+A018143(n)-A018119(n)`
-/

namespace A018141.P3379719553155334456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018117 n + (A018143 n - A018119 n)

end

end A018141.P3379719553155334456

namespace A018141

/-- `A018117(n)+A018143(n)-A018119(n)` -/
def P3379719553155334456.Spec : Prop :=
  ∀ n, P3379719553155334456.a n = A018141 n

end A018141

/-! ## A018141.P16818335478403762386

`floor(root(10, 5)^n)`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A018141

/-- `floor(root(10, 5)^n)` -/
def P16818335478403762386.Spec : Prop :=
  ∀ n, P16818335478403762386.a n = A018141 n

theorem P16818335478403762386.correct : P16818335478403762386.Spec := by
  intro n
  simp only [A018141]

end A018141

/-! ## A018141.P9557481019130292266

`A018143(n)+A018144(n)-A018146(n)`
-/

namespace A018141.P9557481019130292266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018143 n + (A018144 n - A018146 n)

end

end A018141.P9557481019130292266

namespace A018141

/-- `A018143(n)+A018144(n)-A018146(n)` -/
def P9557481019130292266.Spec : Prop :=
  ∀ n, P9557481019130292266.a n = A018141 n

end A018141

/-! ## A018141.P10527434966032327202

`A018143(n)+A018165(n)-A018167(n)`
-/

namespace A018141.P10527434966032327202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018143 n + (A018165 n - A018167 n)

end

end A018141.P10527434966032327202

namespace A018141

/-- `A018143(n)+A018165(n)-A018167(n)` -/
def P10527434966032327202.Spec : Prop :=
  ∀ n, P10527434966032327202.a n = A018141 n

end A018141

/-! ## A018141.P17954578903362530214

`A018143(n)+A018168(n)-A018170(n)`
-/

namespace A018141.P17954578903362530214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018143 n + (A018168 n - A018170 n)

end

end A018141.P17954578903362530214

namespace A018141

/-- `A018143(n)+A018168(n)-A018170(n)` -/
def P17954578903362530214.Spec : Prop :=
  ∀ n, P17954578903362530214.a n = A018141 n

end A018141

/-!
# A018142: Powers of fifth root of 10 rounded to nearest integer.

The programs for A018142, the canonical program `A018142.P16654255527489301174` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018142 has offset 0).

The definition of A018142 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 500 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A018142.P16654255527489301174

`round(root(10, 5)^n)`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A018142

/-- `round(root(10, 5)^n)` -/
def P16654255527489301174.Spec : Prop :=
  ∀ n, P16654255527489301174.a n = A018142 n

theorem P16654255527489301174.correct : P16654255527489301174.Spec := by
  intro n
  simp only [A018142]

end A018142

/-! ## A018142.P1356699457951983798

`round(10^(n/5))%A000045(n+6)`
-/

namespace A018142.P1356699457951983798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((10 : ℝ) ^ ((n : ℚ) / 5 : ℝ))) (A000045 (n + 6))

end

end A018142.P1356699457951983798

namespace A018142

/-- `round(10^(n/5))%A000045(n+6)` -/
def P1356699457951983798.Spec : Prop :=
  ∀ n, P1356699457951983798.a n = A018142 n

end A018142

/-! ## A018142.P4880829045781609691

`ceil(A018143(2*n)/A018143(n))`
-/

namespace A018142.P4880829045781609691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A018143 (2 * n) : ℚ) / (A018143 n : ℚ)⌉

end

end A018142.P4880829045781609691

namespace A018142

/-- `ceil(A018143(2*n)/A018143(n))` -/
def P4880829045781609691.Spec : Prop :=
  ∀ n, P4880829045781609691.a n = A018142 n

end A018142

/-! ## A018142.P18364416618522797868

`round(10^(n/5))*A074909(∑[n])`
-/

namespace A018142.P18364416618522797868
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((10 : ℝ) ^ ((n : ℚ) / 5 : ℝ)) * A074909 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A018142.P18364416618522797868

namespace A018142

/-- `round(10^(n/5))*A074909(∑[n])` -/
def P18364416618522797868.Spec : Prop :=
  ∀ n, P18364416618522797868.a n = A018142 n

end A018142

/-! ## A018142.P11126635277758595928

`A091866(∑[n+1])+round(10^(n/5))`
-/

namespace A018142.P11126635277758595928
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091866 (∑ j ∈ Finset.range (n + 1), f1 j) + SequenceMachineLib.roundAway ((10 : ℝ) ^ ((n : ℚ) / 5 : ℝ))

end

end A018142.P11126635277758595928

namespace A018142

/-- `A091866(∑[n+1])+round(10^(n/5))` -/
def P11126635277758595928.Spec : Prop :=
  ∀ n, P11126635277758595928.a n = A018142 n

end A018142

/-! ## A018142.P3665199381041610794

`or(round(10^(n/5)), A245963(n²))`
-/

namespace A018142.P3665199381041610794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (SequenceMachineLib.roundAway ((10 : ℝ) ^ ((n : ℚ) / 5 : ℝ))) (A245963 (n ^ 2))

end

end A018142.P3665199381041610794

namespace A018142

/-- `or(round(10^(n/5)), A245963(n²))` -/
def P3665199381041610794.Spec : Prop :=
  ∀ n, P3665199381041610794.a n = A018142 n

end A018142

/-! ## A018142.P12966106009651011968

`A245963(A028387(n))+round(10^(n/5))`
-/

namespace A018142.P12966106009651011968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245963 (A028387 n).toNat + SequenceMachineLib.roundAway ((10 : ℝ) ^ ((n : ℚ) / 5 : ℝ))

end

end A018142.P12966106009651011968

namespace A018142

/-- `A245963(A028387(n))+round(10^(n/5))` -/
def P12966106009651011968.Spec : Prop :=
  ∀ n, P12966106009651011968.a n = A018142 n

end A018142

/-! ## A018142.P8145631219128393133

`lcm(round(10^(n/5)), A057077(A353355(n+1)))`
-/

namespace A018142.P8145631219128393133
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.roundAway ((10 : ℝ) ^ ((n : ℚ) / 5 : ℝ))) (A057077 (A353355 (n + 1)).toNat)

end

end A018142.P8145631219128393133

namespace A018142

/-- `lcm(round(10^(n/5)), A057077(A353355(n+1)))` -/
def P8145631219128393133.Spec : Prop :=
  ∀ n, (P8145631219128393133.a n : ℤ) = A018142 n

end A018142

/-! ## A018142.P2277207125028380349

`n*A084938(∑[n])+round(10^(n/5))`
-/

namespace A018142.P2277207125028380349
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A084938 (∑ j ∈ Finset.range (n + 1), f1 j) + SequenceMachineLib.roundAway ((10 : ℝ) ^ ((n : ℚ) / 5 : ℝ))

end

end A018142.P2277207125028380349

namespace A018142

/-- `n*A084938(∑[n])+round(10^(n/5))` -/
def P2277207125028380349.Spec : Prop :=
  ∀ n, P2277207125028380349.a n = A018142 n

end A018142

/-! ## A018142.P5261389551528434805

`A084938(∑[n+1])+round(10^(n/5))`
-/

namespace A018142.P5261389551528434805
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084938 (∑ j ∈ Finset.range (n + 1), f1 j) + SequenceMachineLib.roundAway ((10 : ℝ) ^ ((n : ℚ) / 5 : ℝ))

end

end A018142.P5261389551528434805

namespace A018142

/-- `A084938(∑[n+1])+round(10^(n/5))` -/
def P5261389551528434805.Spec : Prop :=
  ∀ n, P5261389551528434805.a n = A018142 n

end A018142

/-!
# A018143: Powers of fifth root of 10 rounded up.

The programs for A018143, the canonical program `A018143.P16710984044551120495` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018143 has offset 0).

The definition of A018143 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 501 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A018143.P4082029274684301264

`A130084(Δ[n²])`
-/

namespace A018143.P4082029274684301264
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130084 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A018143.P4082029274684301264

namespace A018143

/-- `A130084(Δ[n²])` -/
def P4082029274684301264.Spec : Prop :=
  ∀ n, P4082029274684301264.a n = A018143 n

end A018143

/-! ## A018143.P11969812313051897898

`A216655(n)+a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A018143.P11969812313051897898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A216655 n + a (n - 1)

end

end A018143.P11969812313051897898

namespace A018143

/-- `A216655(n)+a(n-1)` -/
def P11969812313051897898.Spec : Prop :=
  ∀ n, P11969812313051897898.a n = A018143 n

end A018143

/-! ## A018143.P16710984044551120495

`A018141(n)+A011558(n)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A018143

/-- `A018141(n)+A011558(n)` -/
def P16710984044551120495.Spec : Prop :=
  ∀ n, P16710984044551120495.a n = A018143 n

theorem P16710984044551120495.correct : P16710984044551120495.Spec := by
  intro n
  simp only [A018143]

end A018143

/-! ## A018143.P678937562303292858

`record[A130084(n+1)/A000034(n)]`
-/

namespace A018143.P678937562303292858
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A130084 (n + 1) : ℚ) / (A000034 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018143.P678937562303292858

namespace A018143

/-- `record[A130084(n+1)/A000034(n)]` -/
def P678937562303292858.Spec : Prop :=
  ∀ n, P678937562303292858.a n = (A018143 n : ℚ)

end A018143

/-! ## A018143.P2998958314071987398

`ceil(sqrt(10^(2*n/5)))`
-/

namespace A018143.P2998958314071987398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt ((10 : ℝ) ^ ((2 * n : ℚ) / 5 : ℝ))⌉

end

end A018143.P2998958314071987398

namespace A018143

/-- `ceil(sqrt(10^(2*n/5)))` -/
def P2998958314071987398.Spec : Prop :=
  ∀ n, P2998958314071987398.a n = A018143 n

end A018143

/-!
# A018144: Powers of fifth root of 11 rounded down.

The programs for A018144, the canonical program `A018144.P16588412719325347141` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018144 has offset 0).

The definition of A018144 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 481 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A018144.P16588412719325347141

`floor(11^(n/5))`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A018144

/-- `floor(11^(n/5))` -/
def P16588412719325347141.Spec : Prop :=
  ∀ n, P16588412719325347141.a n = A018144 n

theorem P16588412719325347141.correct : P16588412719325347141.Spec := by
  intro n
  simp only [A018144]

end A018144

/-! ## A018144.P3361751970902588972

`A018146(n)-A011558(n)`
-/

namespace A018144.P3361751970902588972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018146 n - A011558 n

end

end A018144.P3361751970902588972

namespace A018144

/-- `A018146(n)-A011558(n)` -/
def P3361751970902588972.Spec : Prop :=
  ∀ n, P3361751970902588972.a n = A018144 n

end A018144

/-! ## A018144.P4155366556882772099

`A018123(n)+A018146(n)-A018125(n)`
-/

namespace A018144.P4155366556882772099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018123 n + (A018146 n - A018125 n)

end

end A018144.P4155366556882772099

namespace A018144

/-- `A018123(n)+A018146(n)-A018125(n)` -/
def P4155366556882772099.Spec : Prop :=
  ∀ n, P4155366556882772099.a n = A018144 n

end A018144

/-! ## A018144.P10624510836832633215

`A018146(n)+A018156(n)-A018158(n)`
-/

namespace A018144.P10624510836832633215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018146 n + (A018156 n - A018158 n)

end

end A018144.P10624510836832633215

namespace A018144

/-- `A018146(n)+A018156(n)-A018158(n)` -/
def P10624510836832633215.Spec : Prop :=
  ∀ n, P10624510836832633215.a n = A018144 n

end A018144

/-! ## A018144.P1574866744699509293

`A018146(n)+A018168(n)-A018170(n)`
-/

namespace A018144.P1574866744699509293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018146 n + (A018168 n - A018170 n)

end

end A018144.P1574866744699509293

namespace A018144

/-- `A018146(n)+A018168(n)-A018170(n)` -/
def P1574866744699509293.Spec : Prop :=
  ∀ n, P1574866744699509293.a n = A018144 n

end A018144

/-!
# A018145: Powers of fifth root of 11 rounded to nearest integer.

The programs for A018145, the canonical program `A018145.P3977841845538844577` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018145 has offset 0).

The definition of A018145 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 241 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A018145.P13962531299208579414

`round(sqrt(A018146(2*n)))`
-/

namespace A018145.P13962531299208579414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A018146 (2 * n) : ℝ))

end

end A018145.P13962531299208579414

namespace A018145

/-- `round(sqrt(A018146(2*n)))` -/
def P13962531299208579414.Spec : Prop :=
  ∀ n, P13962531299208579414.a n = A018145 n

end A018145

/-! ## A018145.P3977841845538844577

`ceil(A018146(2*n)/A018146(n))`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A018145

/-- `ceil(A018146(2*n)/A018146(n))` -/
def P3977841845538844577.Spec : Prop :=
  ∀ n, P3977841845538844577.a n = A018145 n

theorem P3977841845538844577.correct : P3977841845538844577.Spec := by
  intro n
  simp only [A018145]

end A018145

/-! ## A018145.P18203213493863445032

`round(11^(n/5))*A054977(A141601(n+1))`
-/

namespace A018145.P18203213493863445032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((11 : ℝ) ^ ((n : ℚ) / 5 : ℝ)) * A054977 (A141601 (n + 1)).toNat

end

end A018145.P18203213493863445032

namespace A018145

/-- `round(11^(n/5))*A054977(A141601(n+1))` -/
def P18203213493863445032.Spec : Prop :=
  ∀ n, P18203213493863445032.a n = A018145 n

end A018145

/-! ## A018145.P17209949508610240302

`round(11^(n/5))%A206143(n+1)`
-/

namespace A018145.P17209949508610240302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((11 : ℝ) ^ ((n : ℚ) / 5 : ℝ))) (A206143 (n + 1))

end

end A018145.P17209949508610240302

namespace A018145

/-- `round(11^(n/5))%A206143(n+1)` -/
def P17209949508610240302.Spec : Prop :=
  ∀ n, P17209949508610240302.a n = A018145 n

end A018145

/-! ## A018145.P9351214330395470626

`round(root(11^n, 5))`
-/

namespace A018145.P9351214330395470626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((11 ^ n : ℝ) ^ (1 / (5 : ℝ)))

end

end A018145.P9351214330395470626

namespace A018145

/-- `round(root(11^n, 5))` -/
def P9351214330395470626.Spec : Prop :=
  ∀ n, P9351214330395470626.a n = A018145 n

end A018145

/-! ## A018145.P18393561712344504420

`round(11^(n/5))-A276435(n+1)%2+1`
-/

namespace A018145.P18393561712344504420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((11 : ℝ) ^ ((n : ℚ) / 5 : ℝ)) - Int.tmod (A276435 (n + 1)) 2 + 1

end

end A018145.P18393561712344504420

namespace A018145

/-- `round(11^(n/5))-A276435(n+1)%2+1` -/
def P18393561712344504420.Spec : Prop :=
  ∀ n, P18393561712344504420.a n = A018145 n

end A018145

/-! ## A018145.P9551296919553531485

`A000038(A007504(n+1))+round(11^(n/5))`
-/

namespace A018145.P9551296919553531485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A007504 (n + 1)).toNat + SequenceMachineLib.roundAway ((11 : ℝ) ^ ((n : ℚ) / 5 : ℝ))

end

end A018145.P9551296919553531485

namespace A018145

/-- `A000038(A007504(n+1))+round(11^(n/5))` -/
def P9551296919553531485.Spec : Prop :=
  ∀ n, P9551296919553531485.a n = A018145 n

end A018145

/-! ## A018145.P7029043221945553795

`A294905(A166256(n+1))+round(11^(n/5))`
-/

namespace A018145.P7029043221945553795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294905 (A166256 (n + 1)).toNat + SequenceMachineLib.roundAway ((11 : ℝ) ^ ((n : ℚ) / 5 : ℝ))

end

end A018145.P7029043221945553795

namespace A018145

/-- `A294905(A166256(n+1))+round(11^(n/5))` -/
def P7029043221945553795.Spec : Prop :=
  ∀ n, P7029043221945553795.a n = A018145 n

end A018145

/-!
# A018146: Powers of fifth root of 11 rounded up.

The programs for A018146, the canonical program `A018146.P17360370714240723720` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018146 has offset 0).

The definition of A018146 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 481 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A018146.P11080463913667380429

`ceil(11^(n/5))`
-/

namespace A018146.P11080463913667380429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(11 : ℝ) ^ ((n : ℚ) / 5 : ℝ)⌉

end

end A018146.P11080463913667380429

namespace A018146

/-- `ceil(11^(n/5))` -/
def P11080463913667380429.Spec : Prop :=
  ∀ n, P11080463913667380429.a n = A018146 n

end A018146

/-! ## A018146.P17360370714240723720

`A018144(n)+A011558(n)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A018146

/-- `A018144(n)+A011558(n)` -/
def P17360370714240723720.Spec : Prop :=
  ∀ n, P17360370714240723720.a n = A018146 n

theorem P17360370714240723720.correct : P17360370714240723720.Spec := by
  intro n
  simp only [A018146]

end A018146

/-! ## A018146.P15669013165406789006

`A018143(n)+A018144(n)-A018141(n)`
-/

namespace A018146.P15669013165406789006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018143 n + (A018144 n - A018141 n)

end

end A018146.P15669013165406789006

namespace A018146

/-- `A018143(n)+A018144(n)-A018141(n)` -/
def P15669013165406789006.Spec : Prop :=
  ∀ n, P15669013165406789006.a n = A018146 n

end A018146

/-! ## A018146.P12989276740187225029

`A018144(n)+A018167(n)-A018165(n)`
-/

namespace A018146.P12989276740187225029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018144 n + (A018167 n - A018165 n)

end

end A018146.P12989276740187225029

namespace A018146

/-- `A018144(n)+A018167(n)-A018165(n)` -/
def P12989276740187225029.Spec : Prop :=
  ∀ n, P12989276740187225029.a n = A018146 n

end A018146

/-! ## A018146.P5527550557924577903

`A018144(n)+A018170(n)-A018168(n)`
-/

namespace A018146.P5527550557924577903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018144 n + (A018170 n - A018168 n)

end

end A018146.P5527550557924577903

namespace A018146

/-- `A018144(n)+A018170(n)-A018168(n)` -/
def P5527550557924577903.Spec : Prop :=
  ∀ n, P5527550557924577903.a n = A018146 n

end A018146

/-!
# A018147: Powers of fifth root of 12 rounded down.

The programs for A018147, the canonical program `A018147.P13576852104828781867` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018147 has offset 0).

The definition of A018147 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 232 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A018147.P6807474306655174882

`A018149(n)-A011558(n)`
-/

namespace A018147.P6807474306655174882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018149 n - A011558 n

end

end A018147.P6807474306655174882

namespace A018147

/-- `A018149(n)-A011558(n)` -/
def P6807474306655174882.Spec : Prop :=
  ∀ n, P6807474306655174882.a n = A018147 n

end A018147

/-! ## A018147.P2334578320055822310

`A018144(n)+A018149(n)-A018146(n)`
-/

namespace A018147.P2334578320055822310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018144 n + (A018149 n - A018146 n)

end

end A018147.P2334578320055822310

namespace A018147

/-- `A018144(n)+A018149(n)-A018146(n)` -/
def P2334578320055822310.Spec : Prop :=
  ∀ n, P2334578320055822310.a n = A018147 n

end A018147

/-! ## A018147.P9542120132979255017

`A018149(n)+A018156(n)-A018158(n)`
-/

namespace A018147.P9542120132979255017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018149 n + (A018156 n - A018158 n)

end

end A018147.P9542120132979255017

namespace A018147

/-- `A018149(n)+A018156(n)-A018158(n)` -/
def P9542120132979255017.Spec : Prop :=
  ∀ n, P9542120132979255017.a n = A018147 n

end A018147

/-! ## A018147.P13576852104828781867

`floor(sqrt(A018148(2*n)))`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A018147

/-- `floor(sqrt(A018148(2*n)))` -/
def P13576852104828781867.Spec : Prop :=
  ∀ n, P13576852104828781867.a n = A018147 n

theorem P13576852104828781867.correct : P13576852104828781867.Spec := by
  intro n
  simp only [A018147]

end A018147

/-! ## A018147.P12681463080226339278

`floor(sqrt(A018149(2*n)))`
-/

namespace A018147.P12681463080226339278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A018149 (2 * n))

end

end A018147.P12681463080226339278

namespace A018147

/-- `floor(sqrt(A018149(2*n)))` -/
def P12681463080226339278.Spec : Prop :=
  ∀ n, P12681463080226339278.a n = A018147 n

end A018147

/-! ## A018147.P244842617902100416

`floor(root(A034660(n), 5))`
-/

namespace A018147.P244842617902100416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A034660 n : ℝ) ^ (1 / (5 : ℝ))⌋

end

end A018147.P244842617902100416

namespace A018147

/-- `floor(root(A034660(n), 5))` -/
def P244842617902100416.Spec : Prop :=
  ∀ n, P244842617902100416.a n = A018147 n

end A018147

/-!
# A018148: Powers of fifth root of 12 rounded to nearest integer.

The programs for A018148, the canonical program `A018148.P14232182123024688494` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018148 has offset 0).

The definition of A018148 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 464 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A018148.P14232182123024688494

`round(12^(n/5))`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A018148

/-- `round(12^(n/5))` -/
def P14232182123024688494.Spec : Prop :=
  ∀ n, P14232182123024688494.a n = A018148 n

theorem P14232182123024688494.correct : P14232182123024688494.Spec := by
  intro n
  simp only [A018148]

end A018148

/-! ## A018148.P16010101292383129070

`floor(A018147(2*n)/A018147(n))`
-/

namespace A018148.P16010101292383129070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A018147 (2 * n) : ℚ) / (A018147 n : ℚ)⌋

end

end A018148.P16010101292383129070

namespace A018148

/-- `floor(A018147(2*n)/A018147(n))` -/
def P16010101292383129070.Spec : Prop :=
  ∀ n, P16010101292383129070.a n = A018148 n

end A018148

/-! ## A018148.P14928956511539371478

`ceil(A018149(2*n)/A018149(n))`
-/

namespace A018148.P14928956511539371478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A018149 (2 * n) : ℚ) / (A018149 n : ℚ)⌉

end

end A018148.P14928956511539371478

namespace A018148

/-- `ceil(A018149(2*n)/A018149(n))` -/
def P14928956511539371478.Spec : Prop :=
  ∀ n, P14928956511539371478.a n = A018148 n

end A018148

/-! ## A018148.P14416988565439507656

`A054846(A136298(n)*A242784(n))`
-/

namespace A018148.P14416988565439507656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054846 (A136298 n * A242784 n).toNat

end

end A018148.P14416988565439507656

namespace A018148

/-- `A054846(A136298(n)*A242784(n))` -/
def P14416988565439507656.Spec : Prop :=
  ∀ n, P14416988565439507656.a n = A018148 n

end A018148

/-! ## A018148.P877436223905158437

`A054846(A136298(n)^A242784(n))`
-/

namespace A018148.P877436223905158437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054846 (SequenceMachineLib.roundAway ((A136298 n : ℚ) ^ (A242784 n : ℤ))).toNat

end

end A018148.P877436223905158437

namespace A018148

/-- `A054846(A136298(n)^A242784(n))` -/
def P877436223905158437.Spec : Prop :=
  ∀ n, P877436223905158437.a n = A018148 n

end A018148

/-!
# A018149: Powers of fifth root of 12 rounded up.

The programs for A018149, the canonical program `A018149.P13010487118839459935` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018149 has offset 0).

The definition of A018149 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 464 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A018149.P13010487118839459935

`A018147(n)+A011558(n)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A018149

/-- `A018147(n)+A011558(n)` -/
def P13010487118839459935.Spec : Prop :=
  ∀ n, P13010487118839459935.a n = A018149 n

theorem P13010487118839459935.correct : P13010487118839459935.Spec := by
  intro n
  simp only [A018149]

end A018149

/-! ## A018149.P13134187603618920500

`A018143(n)+A018147(n)-A018141(n)`
-/

namespace A018149.P13134187603618920500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018143 n + (A018147 n - A018141 n)

end

end A018149.P13134187603618920500

namespace A018149

/-- `A018143(n)+A018147(n)-A018141(n)` -/
def P13134187603618920500.Spec : Prop :=
  ∀ n, P13134187603618920500.a n = A018149 n

end A018149

/-! ## A018149.P2063932109610016318

`A018146(n)+A018147(n)-A018144(n)`
-/

namespace A018149.P2063932109610016318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018146 n + (A018147 n - A018144 n)

end

end A018149.P2063932109610016318

namespace A018149

/-- `A018146(n)+A018147(n)-A018144(n)` -/
def P2063932109610016318.Spec : Prop :=
  ∀ n, P2063932109610016318.a n = A018149 n

end A018149

/-! ## A018149.P15572063885103147234

`A018147(n)+A018167(n)-A018165(n)`
-/

namespace A018149.P15572063885103147234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018147 n + (A018167 n - A018165 n)

end

end A018149.P15572063885103147234

namespace A018149

/-- `A018147(n)+A018167(n)-A018165(n)` -/
def P15572063885103147234.Spec : Prop :=
  ∀ n, P15572063885103147234.a n = A018149 n

end A018149

/-! ## A018149.P13231569029930113600

`ceil(sqrt(A018147(2*n)))`
-/

namespace A018149.P13231569029930113600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A018147 (2 * n) : ℝ)⌉

end

end A018149.P13231569029930113600

namespace A018149

/-- `ceil(sqrt(A018147(2*n)))` -/
def P13231569029930113600.Spec : Prop :=
  ∀ n, P13231569029930113600.a n = A018149 n

end A018149

/-! ## A018149.P14490198408274931703

`ceil(sqrt(A018148(2*n)))`
-/

namespace A018149.P14490198408274931703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A018148 (2 * n) : ℝ)⌉

end

end A018149.P14490198408274931703

namespace A018149

/-- `ceil(sqrt(A018148(2*n)))` -/
def P14490198408274931703.Spec : Prop :=
  ∀ n, P14490198408274931703.a n = A018149 n

end A018149

/-! ## A018149.P10560223629611120358

`ceil(A018148(2*n)/A018148(n))`
-/

namespace A018149.P10560223629611120358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A018148 (2 * n) : ℚ) / (A018148 n : ℚ)⌉

end

end A018149.P10560223629611120358

namespace A018149

/-- `ceil(A018148(2*n)/A018148(n))` -/
def P10560223629611120358.Spec : Prop :=
  ∀ n, P10560223629611120358.a n = A018149 n

end A018149

/-! ## A018149.P1157914779331453552

`ceil(root(A221580(n), 5))`
-/

namespace A018149.P1157914779331453552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A221580 n : ℝ) ^ (1 / (5 : ℝ))⌉

end

end A018149.P1157914779331453552

namespace A018149

/-- `ceil(root(A221580(n), 5))` -/
def P1157914779331453552.Spec : Prop :=
  ∀ n, P1157914779331453552.a n = A018149 n

end A018149

/-!
# A018150: Powers of fifth root of 13 rounded down.

The programs for A018150, the canonical program `A018150.P18437596113459788837` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018150 has offset 0).

The definition of A018150 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 449 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A018150.P18437596113459788837

`A018152(n)-A011558(n)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A018150

/-- `A018152(n)-A011558(n)` -/
def P18437596113459788837.Spec : Prop :=
  ∀ n, P18437596113459788837.a n = A018150 n

theorem P18437596113459788837.correct : P18437596113459788837.Spec := by
  intro n
  simp only [A018150]

end A018150

/-! ## A018150.P1459428209478177540

`A018152(n)-abs(A080891(n))`
-/

namespace A018150.P1459428209478177540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018152 n - |A080891 n|

end

end A018150.P1459428209478177540

namespace A018150

/-- `A018152(n)-abs(A080891(n))` -/
def P1459428209478177540.Spec : Prop :=
  ∀ n, P1459428209478177540.a n = A018150 n

end A018150

/-! ## A018150.P4143212153512933320

`A018152(n)-Δ[A090223(n)]`
-/

namespace A018150.P4143212153512933320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090223 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018152 n - (f1 (n + 1) - f1 n)

end

end A018150.P4143212153512933320

namespace A018150

/-- `A018152(n)-Δ[A090223(n)]` -/
def P4143212153512933320.Spec : Prop :=
  ∀ n, P4143212153512933320.a n = A018150 n

end A018150

/-! ## A018150.P9038508149499880035

`A018144(n)+A018152(n)-A018146(n)`
-/

namespace A018150.P9038508149499880035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018144 n + (A018152 n - A018146 n)

end

end A018150.P9038508149499880035

namespace A018150

/-- `A018144(n)+A018152(n)-A018146(n)` -/
def P9038508149499880035.Spec : Prop :=
  ∀ n, P9038508149499880035.a n = A018150 n

end A018150

/-! ## A018150.P13370675997055108841

`A018152(n)+A018156(n)-A018158(n)`
-/

namespace A018150.P13370675997055108841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018152 n + (A018156 n - A018158 n)

end

end A018150.P13370675997055108841

namespace A018150

/-- `A018152(n)+A018156(n)-A018158(n)` -/
def P13370675997055108841.Spec : Prop :=
  ∀ n, P13370675997055108841.a n = A018150 n

end A018150

/-! ## A018150.P13881946546422014337

`floor(sqrt(A018151(2*n)))`
-/

namespace A018150.P13881946546422014337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A018151 (2 * n))

end

end A018150.P13881946546422014337

namespace A018150

/-- `floor(sqrt(A018151(2*n)))` -/
def P13881946546422014337.Spec : Prop :=
  ∀ n, P13881946546422014337.a n = A018150 n

end A018150

/-! ## A018150.P1511905629337263187

`floor(sqrt(A018152(2*n)))`
-/

namespace A018150.P1511905629337263187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A018152 (2 * n))

end

end A018150.P1511905629337263187

namespace A018150

/-- `floor(sqrt(A018152(2*n)))` -/
def P1511905629337263187.Spec : Prop :=
  ∀ n, P1511905629337263187.a n = A018150 n

end A018150

/-! ## A018150.P9115883249747593535

`floor(A018151(2*n)/A018151(n))`
-/

namespace A018150.P9115883249747593535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A018151 (2 * n) : ℚ) / (A018151 n : ℚ)⌋

end

end A018150.P9115883249747593535

namespace A018150

/-- `floor(A018151(2*n)/A018151(n))` -/
def P9115883249747593535.Spec : Prop :=
  ∀ n, P9115883249747593535.a n = A018150 n

end A018150

/-! ## A018150.P3295792643111482675

`A018152(n)-A080891(n²)`
-/

namespace A018150.P3295792643111482675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018152 n - A080891 (n ^ 2)

end

end A018150.P3295792643111482675

namespace A018150

/-- `A018152(n)-A080891(n²)` -/
def P3295792643111482675.Spec : Prop :=
  ∀ n, P3295792643111482675.a n = A018150 n

end A018150

/-!
# A018151: Powers of fifth root of 13 rounded to nearest integer.

The programs for A018151, the canonical program `A018151.P1581584185306457396` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018151 has offset 0).

The definition of A018151 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 180 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A018151.P16216798055583248434

`round(sqrt(A018152(2*n)))`
-/

namespace A018151.P16216798055583248434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A018152 (2 * n) : ℝ))

end

end A018151.P16216798055583248434

namespace A018151

/-- `round(sqrt(A018152(2*n)))` -/
def P16216798055583248434.Spec : Prop :=
  ∀ n, P16216798055583248434.a n = A018151 n

end A018151

/-! ## A018151.P3359723584439815987

`floor(A018150(2*n)/A018150(n))`
-/

namespace A018151.P3359723584439815987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A018150 (2 * n) : ℚ) / (A018150 n : ℚ)⌋

end

end A018151.P3359723584439815987

namespace A018151

/-- `floor(A018150(2*n)/A018150(n))` -/
def P3359723584439815987.Spec : Prop :=
  ∀ n, P3359723584439815987.a n = A018151 n

end A018151

/-! ## A018151.P1581584185306457396

`round(root(A017943(n), 5)²)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A018151

/-- `round(root(A017943(n), 5)²)` -/
def P1581584185306457396.Spec : Prop :=
  ∀ n, P1581584185306457396.a n = A018151 n

theorem P1581584185306457396.correct : P1581584185306457396.Spec := by
  intro n
  simp only [A018151]

end A018151

/-! ## A018151.P4160612911214779107

`round(root(A001022(n), 5))`
-/

namespace A018151.P4160612911214779107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A001022 n : ℝ) ^ (1 / (5 : ℝ)))

end

end A018151.P4160612911214779107

namespace A018151

/-- `round(root(A001022(n), 5))` -/
def P4160612911214779107.Spec : Prop :=
  ∀ n, P4160612911214779107.a n = A018151 n

end A018151

/-! ## A018151.P9030740112668266887

`round(root(A153079(n), 5))`
-/

namespace A018151.P9030740112668266887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A153079 n : ℝ) ^ (1 / (5 : ℝ)))

end

end A018151.P9030740112668266887

namespace A018151

/-- `round(root(A153079(n), 5))` -/
def P9030740112668266887.Spec : Prop :=
  ∀ n, P9030740112668266887.a n = A018151 n

end A018151

/-! ## A018151.P14573178128067684033

`round(root(A182606(n), 5))`
-/

namespace A018151.P14573178128067684033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A182606 n : ℝ) ^ (1 / (5 : ℝ)))

end

end A018151.P14573178128067684033

namespace A018151

/-- `round(root(A182606(n), 5))` -/
def P14573178128067684033.Spec : Prop :=
  ∀ n, P14573178128067684033.a n = A018151 n

end A018151

/-!
# A018152: Powers of fifth root of 13 rounded up.

The programs for A018152, the canonical program `A018152.P17244962921930450128` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018152 has offset 0).

The definition of A018152 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 225 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A018152.P16023250728244278328

`A018150(n)+A011558(n)`
-/

namespace A018152.P16023250728244278328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018150 n + A011558 n

end

end A018152.P16023250728244278328

namespace A018152

/-- `A018150(n)+A011558(n)` -/
def P16023250728244278328.Spec : Prop :=
  ∀ n, P16023250728244278328.a n = A018152 n

end A018152

/-! ## A018152.P10254895855445217175

`A018150(n)+abs(A080891(n))`
-/

namespace A018152.P10254895855445217175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018150 n + |A080891 n|

end

end A018152.P10254895855445217175

namespace A018152

/-- `A018150(n)+abs(A080891(n))` -/
def P10254895855445217175.Spec : Prop :=
  ∀ n, P10254895855445217175.a n = A018152 n

end A018152

/-! ## A018152.P703174882979058080

`A018150(n)+abs(A330025(n))`
-/

namespace A018152.P703174882979058080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018150 n + |A330025 n|

end

end A018152.P703174882979058080

namespace A018152

/-- `A018150(n)+abs(A330025(n))` -/
def P703174882979058080.Spec : Prop :=
  ∀ n, P703174882979058080.a n = A018152 n

end A018152

/-! ## A018152.P14614838022124421254

`A018150(n)+Δ[A090223(n)]`
-/

namespace A018152.P14614838022124421254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090223 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018150 n + (f1 (n + 1) - f1 n)

end

end A018152.P14614838022124421254

namespace A018152

/-- `A018150(n)+Δ[A090223(n)]` -/
def P14614838022124421254.Spec : Prop :=
  ∀ n, P14614838022124421254.a n = A018152 n

end A018152

/-! ## A018152.P842222546590673683

`ceil(sqrt(A018150(2*n)))`
-/

namespace A018152.P842222546590673683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A018150 (2 * n) : ℝ)⌉

end

end A018152.P842222546590673683

namespace A018152

/-- `ceil(sqrt(A018150(2*n)))` -/
def P842222546590673683.Spec : Prop :=
  ∀ n, P842222546590673683.a n = A018152 n

end A018152

/-! ## A018152.P14496660037718911252

`ceil(sqrt(A018151(2*n)))`
-/

namespace A018152.P14496660037718911252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A018151 (2 * n) : ℝ)⌉

end

end A018152.P14496660037718911252

namespace A018152

/-- `ceil(sqrt(A018151(2*n)))` -/
def P14496660037718911252.Spec : Prop :=
  ∀ n, P14496660037718911252.a n = A018152 n

end A018152

/-! ## A018152.P17244962921930450128

`ceil(A018151(2*n)/A018151(n))`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A018152

/-- `ceil(A018151(2*n)/A018151(n))` -/
def P17244962921930450128.Spec : Prop :=
  ∀ n, P17244962921930450128.a n = A018152 n

theorem P17244962921930450128.correct : P17244962921930450128.Spec := by
  intro n
  simp only [A018152]

end A018152

/-! ## A018152.P6711563425379223079

`A080891(n²)+A018150(n)`
-/

namespace A018152.P6711563425379223079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080891 (n ^ 2) + A018150 n

end

end A018152.P6711563425379223079

namespace A018152

/-- `A080891(n²)+A018150(n)` -/
def P6711563425379223079.Spec : Prop :=
  ∀ n, P6711563425379223079.a n = A018152 n

end A018152

/-! ## A018152.P1226664112444594338

`ceil(root(A182606(n), 5))`
-/

namespace A018152.P1226664112444594338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A182606 n : ℝ) ^ (1 / (5 : ℝ))⌉

end

end A018152.P1226664112444594338

namespace A018152

/-- `ceil(root(A182606(n), 5))` -/
def P1226664112444594338.Spec : Prop :=
  ∀ n, P1226664112444594338.a n = A018152 n

end A018152

/-!
# A018153: Powers of fifth root of 14 rounded down.

The programs for A018153, the canonical program `A018153.P18247953681839362182` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018153 has offset 0).

The definition of A018153 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 219 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A018153.P3188683668730701750

`A018155(n)-A011558(n)`
-/

namespace A018153.P3188683668730701750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018155 n - A011558 n

end

end A018153.P3188683668730701750

namespace A018153

/-- `A018155(n)-A011558(n)` -/
def P3188683668730701750.Spec : Prop :=
  ∀ n, P3188683668730701750.a n = A018153 n

end A018153

/-! ## A018153.P3139052979154798178

`A018155(n)-abs(A080891(n))`
-/

namespace A018153.P3139052979154798178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018155 n - |A080891 n|

end

end A018153.P3139052979154798178

namespace A018153

/-- `A018155(n)-abs(A080891(n))` -/
def P3139052979154798178.Spec : Prop :=
  ∀ n, P3139052979154798178.a n = A018153 n

end A018153

/-! ## A018153.P10044052431571760219

`A018155(n)-Δ[A090223(n)]`
-/

namespace A018153.P10044052431571760219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090223 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018155 n - (f1 (n + 1) - f1 n)

end

end A018153.P10044052431571760219

namespace A018153

/-- `A018155(n)-Δ[A090223(n)]` -/
def P10044052431571760219.Spec : Prop :=
  ∀ n, P10044052431571760219.a n = A018153 n

end A018153

/-! ## A018153.P12416223852498265429

`A018141(n)+A018155(n)-A018143(n)`
-/

namespace A018153.P12416223852498265429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018141 n + (A018155 n - A018143 n)

end

end A018153.P12416223852498265429

namespace A018153

/-- `A018141(n)+A018155(n)-A018143(n)` -/
def P12416223852498265429.Spec : Prop :=
  ∀ n, P12416223852498265429.a n = A018153 n

end A018153

/-! ## A018153.P6726025548043345411

`A018144(n)+A018155(n)-A018146(n)`
-/

namespace A018153.P6726025548043345411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018144 n + (A018155 n - A018146 n)

end

end A018153.P6726025548043345411

namespace A018153

/-- `A018144(n)+A018155(n)-A018146(n)` -/
def P6726025548043345411.Spec : Prop :=
  ∀ n, P6726025548043345411.a n = A018153 n

end A018153

/-! ## A018153.P3121268008373047421

`A018155(n)+A018156(n)-A018158(n)`
-/

namespace A018153.P3121268008373047421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018155 n + (A018156 n - A018158 n)

end

end A018153.P3121268008373047421

namespace A018153

/-- `A018155(n)+A018156(n)-A018158(n)` -/
def P3121268008373047421.Spec : Prop :=
  ∀ n, P3121268008373047421.a n = A018153 n

end A018153

/-! ## A018153.P18247953681839362182

`floor(sqrt(A018154(2*n)))`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A018153

/-- `floor(sqrt(A018154(2*n)))` -/
def P18247953681839362182.Spec : Prop :=
  ∀ n, P18247953681839362182.a n = A018153 n

theorem P18247953681839362182.correct : P18247953681839362182.Spec := by
  intro n
  simp only [A018153]

end A018153

/-! ## A018153.P7310170870873412209

`floor(A018154(2*n)/A018154(n))`
-/

namespace A018153.P7310170870873412209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A018154 (2 * n) : ℚ) / (A018154 n : ℚ)⌋

end

end A018153.P7310170870873412209

namespace A018153

/-- `floor(A018154(2*n)/A018154(n))` -/
def P7310170870873412209.Spec : Prop :=
  ∀ n, P7310170870873412209.a n = A018153 n

end A018153

/-! ## A018153.P14627367623010320672

`A018155(n)-A080891(n²)`
-/

namespace A018153.P14627367623010320672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018155 n - A080891 (n ^ 2)

end

end A018153.P14627367623010320672

namespace A018153

/-- `A018155(n)-A080891(n²)` -/
def P14627367623010320672.Spec : Prop :=
  ∀ n, P14627367623010320672.a n = A018153 n

end A018153

/-!
# A018154: Powers of fifth root of 14 rounded to nearest integer.

The programs for A018154, the canonical program `A018154.P12656226651126346357` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018154 has offset 0).

The definition of A018154 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 437 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A018154.P12656226651126346357

`round(14^(n/5))`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A018154

/-- `round(14^(n/5))` -/
def P12656226651126346357.Spec : Prop :=
  ∀ n, P12656226651126346357.a n = A018154 n

theorem P12656226651126346357.correct : P12656226651126346357.Spec := by
  intro n
  simp only [A018154]

end A018154

/-! ## A018154.P14656200008259229036

`ceil(A018155(2*n)/A018155(n))`
-/

namespace A018154.P14656200008259229036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A018155 (2 * n) : ℚ) / (A018155 n : ℚ)⌉

end

end A018154.P14656200008259229036

namespace A018154

/-- `ceil(A018155(2*n)/A018155(n))` -/
def P14656200008259229036.Spec : Prop :=
  ∀ n, P14656200008259229036.a n = A018154 n

end A018154

/-! ## A018154.P16692362561067748608

`A100196(ceil(sqrt(A150869(n+1))))`
-/

namespace A018154.P16692362561067748608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 ⌈Real.sqrt (A150869 (n + 1) : ℝ)⌉.toNat

end

end A018154.P16692362561067748608

namespace A018154

/-- `A100196(ceil(sqrt(A150869(n+1))))` -/
def P16692362561067748608.Spec : Prop :=
  ∀ n, P16692362561067748608.a n = A018154 n

end A018154

/-! ## A018154.P9459795708877817775

`A100196(round(sqrt(A150869(n+1))))`
-/

namespace A018154.P9459795708877817775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (SequenceMachineLib.roundAway (Real.sqrt (A150869 (n + 1) : ℝ))).toNat

end

end A018154.P9459795708877817775

namespace A018154

/-- `A100196(round(sqrt(A150869(n+1))))` -/
def P9459795708877817775.Spec : Prop :=
  ∀ n, P9459795708877817775.a n = A018154 n

end A018154

/-! ## A018154.P10316972540102116916

`A018155(n)-A332029(A022168(n))`
-/

namespace A018154.P10316972540102116916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018155 n - A332029 (A022168 n).toNat

end

end A018154.P10316972540102116916

namespace A018154

/-- `A018155(n)-A332029(A022168(n))` -/
def P10316972540102116916.Spec : Prop :=
  ∀ n, P10316972540102116916.a n = A018154 n

end A018154

/-!
# A018155: Powers of fifth root of 14 rounded up.

The programs for A018155, the canonical program `A018155.P10237962941858563623` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018155 has offset 0).

The definition of A018155 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 437 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A018155.P10237962941858563623

`A018153(n)+A011558(n)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A018155

/-- `A018153(n)+A011558(n)` -/
def P10237962941858563623.Spec : Prop :=
  ∀ n, P10237962941858563623.a n = A018155 n

theorem P10237962941858563623.correct : P10237962941858563623.Spec := by
  intro n
  simp only [A018155]

end A018155

/-! ## A018155.P8425998277473103062

`A018153(n)+abs(A080891(n))`
-/

namespace A018155.P8425998277473103062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018153 n + |A080891 n|

end

end A018155.P8425998277473103062

namespace A018155

/-- `A018153(n)+abs(A080891(n))` -/
def P8425998277473103062.Spec : Prop :=
  ∀ n, P8425998277473103062.a n = A018155 n

end A018155

/-! ## A018155.P7597585684970481622

`A018153(n)+abs(A330025(n))`
-/

namespace A018155.P7597585684970481622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018153 n + |A330025 n|

end

end A018155.P7597585684970481622

namespace A018155

/-- `A018153(n)+abs(A330025(n))` -/
def P7597585684970481622.Spec : Prop :=
  ∀ n, P7597585684970481622.a n = A018155 n

end A018155

/-! ## A018155.P9345609993437158863

`A018153(n)+Δ[A090223(n)]`
-/

namespace A018155.P9345609993437158863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090223 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018153 n + (f1 (n + 1) - f1 n)

end

end A018155.P9345609993437158863

namespace A018155

/-- `A018153(n)+Δ[A090223(n)]` -/
def P9345609993437158863.Spec : Prop :=
  ∀ n, P9345609993437158863.a n = A018155 n

end A018155

/-! ## A018155.P3317171744645477062

`ceil(sqrt(A018153(2*n)))`
-/

namespace A018155.P3317171744645477062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A018153 (2 * n) : ℝ)⌉

end

end A018155.P3317171744645477062

namespace A018155

/-- `ceil(sqrt(A018153(2*n)))` -/
def P3317171744645477062.Spec : Prop :=
  ∀ n, P3317171744645477062.a n = A018155 n

end A018155

/-! ## A018155.P11704375640161436482

`ceil(sqrt(A018154(2*n)))`
-/

namespace A018155.P11704375640161436482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A018154 (2 * n) : ℝ)⌉

end

end A018155.P11704375640161436482

namespace A018155

/-- `ceil(sqrt(A018154(2*n)))` -/
def P11704375640161436482.Spec : Prop :=
  ∀ n, P11704375640161436482.a n = A018155 n

end A018155

/-! ## A018155.P8250943769000147991

`ceil(A018154(2*n)/A018154(n))`
-/

namespace A018155.P8250943769000147991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A018154 (2 * n) : ℚ) / (A018154 n : ℚ)⌉

end

end A018155.P8250943769000147991

namespace A018155

/-- `ceil(A018154(2*n)/A018154(n))` -/
def P8250943769000147991.Spec : Prop :=
  ∀ n, P8250943769000147991.a n = A018155 n

end A018155

/-! ## A018155.P9722144168227494676

`A080891(n²)+A018153(n)`
-/

namespace A018155.P9722144168227494676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080891 (n ^ 2) + A018153 n

end

end A018155.P9722144168227494676

namespace A018155

/-- `A080891(n²)+A018153(n)` -/
def P9722144168227494676.Spec : Prop :=
  ∀ n, P9722144168227494676.a n = A018155 n

end A018155

/-! ## A018155.P4353782089286593942

`ceil(root(A221581(n), 5))`
-/

namespace A018155.P4353782089286593942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A221581 n : ℝ) ^ (1 / (5 : ℝ))⌉

end

end A018155.P4353782089286593942

namespace A018155

/-- `ceil(root(A221581(n), 5))` -/
def P4353782089286593942.Spec : Prop :=
  ∀ n, P4353782089286593942.a n = A018155 n

end A018155

/-!
# A018156: Powers of fifth root of 15 rounded down.

The programs for A018156, the canonical program `A018156.P7569426342522992677` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018156 has offset 0).

The definition of A018156 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 426 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A018156.P7569426342522992677

`A018158(n)-A011558(n)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A018156

/-- `A018158(n)-A011558(n)` -/
def P7569426342522992677.Spec : Prop :=
  ∀ n, P7569426342522992677.a n = A018156 n

theorem P7569426342522992677.correct : P7569426342522992677.Spec := by
  intro n
  simp only [A018156]

end A018156

/-! ## A018156.P2084381277561190076

`A018158(n)-abs(A080891(n))`
-/

namespace A018156.P2084381277561190076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018158 n - |A080891 n|

end

end A018156.P2084381277561190076

namespace A018156

/-- `A018158(n)-abs(A080891(n))` -/
def P2084381277561190076.Spec : Prop :=
  ∀ n, P2084381277561190076.a n = A018156 n

end A018156

/-! ## A018156.P13883400747784765906

`A018158(n)-abs(A330025(n))`
-/

namespace A018156.P13883400747784765906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018158 n - |A330025 n|

end

end A018156.P13883400747784765906

namespace A018156

/-- `A018158(n)-abs(A330025(n))` -/
def P13883400747784765906.Spec : Prop :=
  ∀ n, P13883400747784765906.a n = A018156 n

end A018156

/-! ## A018156.P6058334993416308558

`A018158(n)-Δ[A090223(n)]`
-/

namespace A018156.P6058334993416308558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090223 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018158 n - (f1 (n + 1) - f1 n)

end

end A018156.P6058334993416308558

namespace A018156

/-- `A018158(n)-Δ[A090223(n)]` -/
def P6058334993416308558.Spec : Prop :=
  ∀ n, P6058334993416308558.a n = A018156 n

end A018156

/-! ## A018156.P3344458697764593033

`A018158(n)-A080891(n²)`
-/

namespace A018156.P3344458697764593033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018158 n - A080891 (n ^ 2)

end

end A018156.P3344458697764593033

namespace A018156

/-- `A018158(n)-A080891(n²)` -/
def P3344458697764593033.Spec : Prop :=
  ∀ n, P3344458697764593033.a n = A018156 n

end A018156

/-!
# A018157: Powers of fifth root of 15 rounded to nearest integer.

The programs for A018157, the canonical program `A018157.P1069620189047636789` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018157 has offset 0).

The definition of A018157 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 426 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A018157.P1069620189047636789

`round(15^(n/5))`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A018157

/-- `round(15^(n/5))` -/
def P1069620189047636789.Spec : Prop :=
  ∀ n, P1069620189047636789.a n = A018157 n

theorem P1069620189047636789.correct : P1069620189047636789.Spec := by
  intro n
  simp only [A018157]

end A018157

/-! ## A018157.P12883180516511117328

`ceil(A018158(2*n)/A018158(n))`
-/

namespace A018157.P12883180516511117328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A018158 (2 * n) : ℚ) / (A018158 n : ℚ)⌉

end

end A018157.P12883180516511117328

namespace A018157

/-- `ceil(A018158(2*n)/A018158(n))` -/
def P12883180516511117328.Spec : Prop :=
  ∀ n, P12883180516511117328.a n = A018157 n

end A018157

/-! ## A018157.P3331521334342734099

`A018158(n)-A055641(A109886(n))`
-/

namespace A018157.P3331521334342734099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018158 n - A055641 (A109886 n).toNat

end

end A018157.P3331521334342734099

namespace A018157

/-- `A018158(n)-A055641(A109886(n))` -/
def P3331521334342734099.Spec : Prop :=
  ∀ n, P3331521334342734099.a n = A018157 n

end A018157

/-! ## A018157.P7142976192140037045

`A001462(ceil(sqrt(A001541(n))))`
-/

namespace A018157.P7142976192140037045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 ⌈Real.sqrt (A001541 n : ℝ)⌉.toNat

end

end A018157.P7142976192140037045

namespace A018157

/-- `A001462(ceil(sqrt(A001541(n))))` -/
def P7142976192140037045.Spec : Prop :=
  ∀ n, P7142976192140037045.a n = A018157 n

end A018157

/-! ## A018157.P6245031824036313472

`A001462(Δ[A001333(n)]+1)`
-/

namespace A018157.P6245031824036313472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (f1 (n + 1) - f1 n + 1).toNat

end

end A018157.P6245031824036313472

namespace A018157

/-- `A001462(Δ[A001333(n)]+1)` -/
def P6245031824036313472.Spec : Prop :=
  ∀ n, P6245031824036313472.a n = A018157 n

end A018157

/-!
# A018158: Powers of fifth root of 15 rounded up.

The programs for A018158, the canonical program `A018158.P18139790836956322692` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018158 has offset 0).

The definition of A018158 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 213 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A018158.P14150307057560866498

`A018156(n)+A011558(n)`
-/

namespace A018158.P14150307057560866498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018156 n + A011558 n

end

end A018158.P14150307057560866498

namespace A018158

/-- `A018156(n)+A011558(n)` -/
def P14150307057560866498.Spec : Prop :=
  ∀ n, P14150307057560866498.a n = A018158 n

end A018158

/-! ## A018158.P14388624437255241511

`A018156(n)+abs(A080891(n))`
-/

namespace A018158.P14388624437255241511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018156 n + |A080891 n|

end

end A018158.P14388624437255241511

namespace A018158

/-- `A018156(n)+abs(A080891(n))` -/
def P14388624437255241511.Spec : Prop :=
  ∀ n, P14388624437255241511.a n = A018158 n

end A018158

/-! ## A018158.P10290217462161015015

`A018156(n)+abs(A330025(n))`
-/

namespace A018158.P10290217462161015015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018156 n + |A330025 n|

end

end A018158.P10290217462161015015

namespace A018158

/-- `A018156(n)+abs(A330025(n))` -/
def P10290217462161015015.Spec : Prop :=
  ∀ n, P10290217462161015015.a n = A018158 n

end A018158

/-! ## A018158.P17677383473432350624

`A018156(n)+Δ[A090223(n)]`
-/

namespace A018158.P17677383473432350624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090223 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018156 n + (f1 (n + 1) - f1 n)

end

end A018158.P17677383473432350624

namespace A018158

/-- `A018156(n)+Δ[A090223(n)]` -/
def P17677383473432350624.Spec : Prop :=
  ∀ n, P17677383473432350624.a n = A018158 n

end A018158

/-! ## A018158.P6115628321222497403

`A018156(n)+A000035(A047486(n+1))`
-/

namespace A018158.P6115628321222497403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018156 n + A000035 (A047486 (n + 1)).toNat

end

end A018158.P6115628321222497403

namespace A018158

/-- `A018156(n)+A000035(A047486(n+1))` -/
def P6115628321222497403.Spec : Prop :=
  ∀ n, P6115628321222497403.a n = A018158 n

end A018158

/-! ## A018158.P12320686159012927007

`ceil(sqrt(A018157(2*n)))`
-/

namespace A018158.P12320686159012927007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A018157 (2 * n) : ℝ)⌉

end

end A018158.P12320686159012927007

namespace A018158

/-- `ceil(sqrt(A018157(2*n)))` -/
def P12320686159012927007.Spec : Prop :=
  ∀ n, P12320686159012927007.a n = A018158 n

end A018158

/-! ## A018158.P6836031338930704868

`ceil(record[sqrt((A040224(n)/2)^(n/5))])`
-/

namespace A018158.P6836031338930704868
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (((A040224 n : ℚ) / 2 : ℝ) ^ ((n : ℚ) / 5 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)⌉

end

end A018158.P6836031338930704868

namespace A018158

/-- `ceil(record[sqrt((A040224(n)/2)^(n/5))])` -/
def P6836031338930704868.Spec : Prop :=
  ∀ n, P6836031338930704868.a n = A018158 n

end A018158

/-! ## A018158.P18139790836956322692

`ceil(A018157(2*n)/A018157(n))`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A018158

/-- `ceil(A018157(2*n)/A018157(n))` -/
def P18139790836956322692.Spec : Prop :=
  ∀ n, P18139790836956322692.a n = A018158 n

theorem P18139790836956322692.correct : P18139790836956322692.Spec := by
  intro n
  simp only [A018158]

end A018158

/-! ## A018158.P7728326948437439413

`A080891(n²)+A018156(n)`
-/

namespace A018158.P7728326948437439413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080891 (n ^ 2) + A018156 n

end

end A018158.P7728326948437439413

namespace A018158

/-- `A080891(n²)+A018156(n)` -/
def P7728326948437439413.Spec : Prop :=
  ∀ n, P7728326948437439413.a n = A018158 n

end A018158

/-! ## A018158.P4676476743470773936

`ceil(root(A221582(n), 5))`
-/

namespace A018158.P4676476743470773936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A221582 n : ℝ) ^ (1 / (5 : ℝ))⌉

end

end A018158.P4676476743470773936

namespace A018158

/-- `ceil(root(A221582(n), 5))` -/
def P4676476743470773936.Spec : Prop :=
  ∀ n, P4676476743470773936.a n = A018158 n

end A018158

/-!
# A018159: Powers of fifth root of 16 rounded down.

The programs for A018159, the canonical program `A018159.P10237429046590111371` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018159 has offset 0).

The definition of A018159 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 416 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A018159.P15674867675326688703

`floor(16^(n/5))`
-/

namespace A018159.P15674867675326688703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(16 : ℝ) ^ ((n : ℚ) / 5 : ℝ)⌋

end

end A018159.P15674867675326688703

namespace A018159

/-- `floor(16^(n/5))` -/
def P15674867675326688703.Spec : Prop :=
  ∀ n, P15674867675326688703.a n = A018159 n

end A018159

/-! ## A018159.P10237429046590111371

`A018123(2*n)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A018159

/-- `A018123(2*n)` -/
def P10237429046590111371.Spec : Prop :=
  ∀ n, P10237429046590111371.a n = A018159 n

theorem P10237429046590111371.correct : P10237429046590111371.Spec := by
  intro n
  simp only [A018159]

end A018159

/-! ## A018159.P8845126134631886314

`A018117(4*n)`
-/

namespace A018159.P8845126134631886314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018117 (4 * n)

end

end A018159.P8845126134631886314

namespace A018159

/-- `A018117(4*n)` -/
def P8845126134631886314.Spec : Prop :=
  ∀ n, P8845126134631886314.a n = A018159 n

end A018159

/-! ## A018159.P15740643582176193900

`ceil(16^(n/5)-A011558(n))`
-/

namespace A018159.P15740643582176193900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(16 : ℝ) ^ ((n : ℚ) / 5 : ℝ) - (A011558 n : ℝ)⌉

end

end A018159.P15740643582176193900

namespace A018159

/-- `ceil(16^(n/5)-A011558(n))` -/
def P15740643582176193900.Spec : Prop :=
  ∀ n, P15740643582176193900.a n = A018159 n

end A018159

/-! ## A018159.P16515078565423074408

`A018161(n)-A011558(n)`
-/

namespace A018159.P16515078565423074408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018161 n - A011558 n

end

end A018159.P16515078565423074408

namespace A018159

/-- `A018161(n)-A011558(n)` -/
def P16515078565423074408.Spec : Prop :=
  ∀ n, P16515078565423074408.a n = A018159 n

end A018159

/-! ## A018159.P4339405739567477347

`A018125(2*n)-A011558(n)`
-/

namespace A018159.P4339405739567477347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018125 (2 * n) - A011558 n

end

end A018159.P4339405739567477347

namespace A018159

/-- `A018125(2*n)-A011558(n)` -/
def P4339405739567477347.Spec : Prop :=
  ∀ n, P4339405739567477347.a n = A018159 n

end A018159

/-! ## A018159.P2282216992702563524

`A018125(2*n)-Δ[A090223(n)]`
-/

namespace A018159.P2282216992702563524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090223 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018125 (2 * n) - (f1 (n + 1) - f1 n)

end

end A018159.P2282216992702563524

namespace A018159

/-- `A018125(2*n)-Δ[A090223(n)]` -/
def P2282216992702563524.Spec : Prop :=
  ∀ n, P2282216992702563524.a n = A018159 n

end A018159

/-! ## A018159.P13018138476676842216

`A018156(n)+A018161(n)-A018158(n)`
-/

namespace A018159.P13018138476676842216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018156 n + (A018161 n - A018158 n)

end

end A018159.P13018138476676842216

namespace A018159

/-- `A018156(n)+A018161(n)-A018158(n)` -/
def P13018138476676842216.Spec : Prop :=
  ∀ n, P13018138476676842216.a n = A018159 n

end A018159

/-! ## A018159.P10863386547888395050

`A018125(2*n)+A090223(2*n)-A090223(2*n+1)`
-/

namespace A018159.P10863386547888395050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018125 (2 * n) + (A090223 (2 * n) - A090223 (2 * n + 1))

end

end A018159.P10863386547888395050

namespace A018159

/-- `A018125(2*n)+A090223(2*n)-A090223(2*n+1)` -/
def P10863386547888395050.Spec : Prop :=
  ∀ n, P10863386547888395050.a n = A018159 n

end A018159

/-! ## A018159.P16654251976061823538

`A018125(2*n)+A018129(2*n)-A018131(2*n)`
-/

namespace A018159.P16654251976061823538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018125 (2 * n) + (A018129 (2 * n) - A018131 (2 * n))

end

end A018159.P16654251976061823538

namespace A018159

/-- `A018125(2*n)+A018129(2*n)-A018131(2*n)` -/
def P16654251976061823538.Spec : Prop :=
  ∀ n, P16654251976061823538.a n = A018159 n

end A018159

/-!
# A018160: Powers of fifth root of 16 rounded to nearest integer.

The programs for A018160, the canonical program `A018160.P17934605926536604901` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018160 has offset 0).

The definition of A018160 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 416 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A018160.P17934605926536604901

`A018124(2*n)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A018160

/-- `A018124(2*n)` -/
def P17934605926536604901.Spec : Prop :=
  ∀ n, P17934605926536604901.a n = A018160 n

theorem P17934605926536604901.correct : P17934605926536604901.Spec := by
  intro n
  simp only [A018160]

end A018160

/-! ## A018160.P14903191906609868829

`A018118(4*n)`
-/

namespace A018160.P14903191906609868829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018118 (4 * n)

end

end A018160.P14903191906609868829

namespace A018160

/-- `A018118(4*n)` -/
def P14903191906609868829.Spec : Prop :=
  ∀ n, P14903191906609868829.a n = A018160 n

end A018160

/-! ## A018160.P3954836387525568194

`record[A018124(n)/A000034(n)]`
-/

namespace A018160.P3954836387525568194
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A018124 n : ℚ) / (A000034 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018160.P3954836387525568194

namespace A018160

/-- `record[A018124(n)/A000034(n)]` -/
def P3954836387525568194.Spec : Prop :=
  ∀ n, P3954836387525568194.a n = (A018160 n : ℚ)

end A018160

/-! ## A018160.P856873383384752888

`gcd(A000038(n), A018118(A008486(n)+n))`
-/

namespace A018160.P856873383384752888
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A018118 (A008486 n + (n : ℤ)).toNat)

end

end A018160.P856873383384752888

namespace A018160

/-- `gcd(A000038(n), A018118(A008486(n)+n))` -/
def P856873383384752888.Spec : Prop :=
  ∀ n, (P856873383384752888.a n : ℤ) = A018160 n

end A018160

/-! ## A018160.P4880360327612188867

`round(A000079(n)^(4/5))`
-/

namespace A018160.P4880360327612188867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000079 n : ℝ) ^ ((4 : ℚ) / 5 : ℝ))

end

end A018160.P4880360327612188867

namespace A018160

/-- `round(A000079(n)^(4/5))` -/
def P4880360327612188867.Spec : Prop :=
  ∀ n, P4880360327612188867.a n = A018160 n

end A018160

/-! ## A018160.P14639334762346533012

`round(sqrt(A018161(2*n)))`
-/

namespace A018160.P14639334762346533012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A018161 (2 * n) : ℝ))

end

end A018160.P14639334762346533012

namespace A018160

/-- `round(sqrt(A018161(2*n)))` -/
def P14639334762346533012.Spec : Prop :=
  ∀ n, P14639334762346533012.a n = A018160 n

end A018160

/-! ## A018160.P9531012870048372215

`ceil(A018161(2*n)/A018161(n))`
-/

namespace A018160.P9531012870048372215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A018161 (2 * n) : ℚ) / (A018161 n : ℚ)⌉

end

end A018160.P9531012870048372215

namespace A018160

/-- `ceil(A018161(2*n)/A018161(n))` -/
def P9531012870048372215.Spec : Prop :=
  ∀ n, P9531012870048372215.a n = A018160 n

end A018160

/-! ## A018160.P18330454629507795096

`round((4^n)^(2/5))`
-/

namespace A018160.P18330454629507795096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((4 ^ n : ℝ) ^ ((2 : ℚ) / 5 : ℝ))

end

end A018160.P18330454629507795096

namespace A018160

/-- `round((4^n)^(2/5))` -/
def P18330454629507795096.Spec : Prop :=
  ∀ n, P18330454629507795096.a n = A018160 n

end A018160

/-!
# A018161: Powers of fifth root of 16 rounded up.

The programs for A018161, the canonical program `A018161.P6356870683678075885` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018161 has offset 0).

The definition of A018161 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 416 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A018161.P10053952307879380430

`ceil(16^(n/5))`
-/

namespace A018161.P10053952307879380430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(16 : ℝ) ^ ((n : ℚ) / 5 : ℝ)⌉

end

end A018161.P10053952307879380430

namespace A018161

/-- `ceil(16^(n/5))` -/
def P10053952307879380430.Spec : Prop :=
  ∀ n, P10053952307879380430.a n = A018161 n

end A018161

/-! ## A018161.P6356870683678075885

`A018125(2*n)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A018161

/-- `A018125(2*n)` -/
def P6356870683678075885.Spec : Prop :=
  ∀ n, P6356870683678075885.a n = A018161 n

theorem P6356870683678075885.correct : P6356870683678075885.Spec := by
  intro n
  simp only [A018161]

end A018161

/-! ## A018161.P6885766932159461199

`A018119(4*n)`
-/

namespace A018161.P6885766932159461199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018119 (4 * n)

end

end A018161.P6885766932159461199

namespace A018161

/-- `A018119(4*n)` -/
def P6885766932159461199.Spec : Prop :=
  ∀ n, P6885766932159461199.a n = A018161 n

end A018161

/-! ## A018161.P5626977103596128494

`A018159(n)+A011558(n)`
-/

namespace A018161.P5626977103596128494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018159 n + A011558 n

end

end A018161.P5626977103596128494

namespace A018161

/-- `A018159(n)+A011558(n)` -/
def P5626977103596128494.Spec : Prop :=
  ∀ n, P5626977103596128494.a n = A018161 n

end A018161

/-! ## A018161.P17995096205672232061

`A018159(n)+Δ[A090223(n)]`
-/

namespace A018161.P17995096205672232061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090223 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018159 n + (f1 (n + 1) - f1 n)

end

end A018161.P17995096205672232061

namespace A018161

/-- `A018159(n)+Δ[A090223(n)]` -/
def P17995096205672232061.Spec : Prop :=
  ∀ n, P17995096205672232061.a n = A018161 n

end A018161

/-! ## A018161.P13458497717417772863

`A018123(2*n)+A011558(n)`
-/

namespace A018161.P13458497717417772863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018123 (2 * n) + A011558 n

end

end A018161.P13458497717417772863

namespace A018161

/-- `A018123(2*n)+A011558(n)` -/
def P13458497717417772863.Spec : Prop :=
  ∀ n, P13458497717417772863.a n = A018161 n

end A018161

/-! ## A018161.P6658737084245900559

`A018123(2*n)+Δ[A090223(n)]`
-/

namespace A018161.P6658737084245900559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090223 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018123 (2 * n) + (f1 (n + 1) - f1 n)

end

end A018161.P6658737084245900559

namespace A018161

/-- `A018123(2*n)+Δ[A090223(n)]` -/
def P6658737084245900559.Spec : Prop :=
  ∀ n, P6658737084245900559.a n = A018161 n

end A018161

/-! ## A018161.P5585009929705365886

`A018146(n)+A018159(n)-A018144(n)`
-/

namespace A018161.P5585009929705365886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018146 n + (A018159 n - A018144 n)

end

end A018161.P5585009929705365886

namespace A018161

/-- `A018146(n)+A018159(n)-A018144(n)` -/
def P5585009929705365886.Spec : Prop :=
  ∀ n, P5585009929705365886.a n = A018161 n

end A018161

/-! ## A018161.P8875620317508891062

`A090223(2*n+1)+A018123(2*n)-A090223(2*n)`
-/

namespace A018161.P8875620317508891062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090223 (2 * n + 1) + (A018123 (2 * n) - A090223 (2 * n))

end

end A018161.P8875620317508891062

namespace A018161

/-- `A090223(2*n+1)+A018123(2*n)-A090223(2*n)` -/
def P8875620317508891062.Spec : Prop :=
  ∀ n, P8875620317508891062.a n = A018161 n

end A018161

/-!
# A018162: Powers of fifth root of 17 rounded down.

The programs for A018162, the canonical program `A018162.P18189621660395438062` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018162 has offset 0).

The definition of A018162 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 407 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A018162.P18189621660395438062

`floor(17^(n/5))`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A018162

/-- `floor(17^(n/5))` -/
def P18189621660395438062.Spec : Prop :=
  ∀ n, P18189621660395438062.a n = A018162 n

theorem P18189621660395438062.correct : P18189621660395438062.Spec := by
  intro n
  simp only [A018162]

end A018162

/-! ## A018162.P11425168222671536452

`A018164(n)-A011558(n)`
-/

namespace A018162.P11425168222671536452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018164 n - A011558 n

end

end A018162.P11425168222671536452

namespace A018162

/-- `A018164(n)-A011558(n)` -/
def P11425168222671536452.Spec : Prop :=
  ∀ n, P11425168222671536452.a n = A018162 n

end A018162

/-! ## A018162.P12015969779138046106

`A018164(n)-abs(A080891(n))`
-/

namespace A018162.P12015969779138046106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018164 n - |A080891 n|

end

end A018162.P12015969779138046106

namespace A018162

/-- `A018164(n)-abs(A080891(n))` -/
def P12015969779138046106.Spec : Prop :=
  ∀ n, P12015969779138046106.a n = A018162 n

end A018162

/-! ## A018162.P18088650003702609646

`A018164(n)-Δ[A090223(n)]`
-/

namespace A018162.P18088650003702609646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090223 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018164 n - (f1 (n + 1) - f1 n)

end

end A018162.P18088650003702609646

namespace A018162

/-- `A018164(n)-Δ[A090223(n)]` -/
def P18088650003702609646.Spec : Prop :=
  ∀ n, P18088650003702609646.a n = A018162 n

end A018162

/-! ## A018162.P18187655895431071290

`A018147(n)+A018164(n)-A018149(n)`
-/

namespace A018162.P18187655895431071290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018147 n + (A018164 n - A018149 n)

end

end A018162.P18187655895431071290

namespace A018162

/-- `A018147(n)+A018164(n)-A018149(n)` -/
def P18187655895431071290.Spec : Prop :=
  ∀ n, P18187655895431071290.a n = A018162 n

end A018162

/-! ## A018162.P5708579836717309238

`A018156(n)+A018164(n)-A018158(n)`
-/

namespace A018162.P5708579836717309238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018156 n + (A018164 n - A018158 n)

end

end A018162.P5708579836717309238

namespace A018162

/-- `A018156(n)+A018164(n)-A018158(n)` -/
def P5708579836717309238.Spec : Prop :=
  ∀ n, P5708579836717309238.a n = A018162 n

end A018162

/-! ## A018162.P17526252957860219620

`A018164(n)-A080891(n²)`
-/

namespace A018162.P17526252957860219620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018164 n - A080891 (n ^ 2)

end

end A018162.P17526252957860219620

namespace A018162

/-- `A018164(n)-A080891(n²)` -/
def P17526252957860219620.Spec : Prop :=
  ∀ n, P17526252957860219620.a n = A018162 n

end A018162

/-!
# A018163: Powers of fifth root of 17 rounded to nearest integer.

The programs for A018163, the canonical program `A018163.P15061714037692496368` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018163 has offset 0).

The definition of A018163 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 378 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A018163.P15061714037692496368

`round(17^(n/5))%∑[A066481(n+3)+A000213(n)]`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A018163

/-- `round(17^(n/5))%∑[A066481(n+3)+A000213(n)]` -/
def P15061714037692496368.Spec : Prop :=
  ∀ n, P15061714037692496368.a n = A018163 n

theorem P15061714037692496368.correct : P15061714037692496368.Spec := by
  intro n
  simp only [A018163]

end A018163

/-! ## A018163.P15546026459274671929

`floor(17^(n/5)+A001222(A181848(n+1))/2)`
-/

namespace A018163.P15546026459274671929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(17 : ℝ) ^ ((n : ℚ) / 5 : ℝ) + ((A001222 (A181848 (n + 1)).toNat : ℚ) / 2 : ℝ)⌋

end

end A018163.P15546026459274671929

namespace A018163

/-- `floor(17^(n/5)+A001222(A181848(n+1))/2)` -/
def P15546026459274671929.Spec : Prop :=
  ∀ n, P15546026459274671929.a n = A018163 n

end A018163

/-! ## A018163.P6252334333358495375

`round(sqrt(A018162(2*n)))`
-/

namespace A018163.P6252334333358495375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A018162 (2 * n) : ℝ))

end

end A018163.P6252334333358495375

namespace A018163

/-- `round(sqrt(A018162(2*n)))` -/
def P6252334333358495375.Spec : Prop :=
  ∀ n, P6252334333358495375.a n = A018163 n

end A018163

/-! ## A018163.P11686382865293969456

`round(sqrt(A018164(2*n)))`
-/

namespace A018163.P11686382865293969456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A018164 (2 * n) : ℝ))

end

end A018163.P11686382865293969456

namespace A018163

/-- `round(sqrt(A018164(2*n)))` -/
def P11686382865293969456.Spec : Prop :=
  ∀ n, P11686382865293969456.a n = A018163 n

end A018163

/-! ## A018163.P11622540852241462700

`ceil(A018162(2*n)/A018164(n))`
-/

namespace A018163.P11622540852241462700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A018162 (2 * n) : ℚ) / (A018164 n : ℚ)⌉

end

end A018163.P11622540852241462700

namespace A018163

/-- `ceil(A018162(2*n)/A018164(n))` -/
def P11622540852241462700.Spec : Prop :=
  ∀ n, P11622540852241462700.a n = A018163 n

end A018163

/-! ## A018163.P17825017337008354434

`ceil(A018164(2*n)/A018164(n))`
-/

namespace A018163.P17825017337008354434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A018164 (2 * n) : ℚ) / (A018164 n : ℚ)⌉

end

end A018163.P17825017337008354434

namespace A018163

/-- `ceil(A018164(2*n)/A018164(n))` -/
def P17825017337008354434.Spec : Prop :=
  ∀ n, P17825017337008354434.a n = A018163 n

end A018163

/-! ## A018163.P9515570224612582653

`A007318(∑[n+1])*round(17^(n/5))`
-/

namespace A018163.P9515570224612582653
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * SequenceMachineLib.roundAway ((17 : ℝ) ^ ((n : ℚ) / 5 : ℝ))

end

end A018163.P9515570224612582653

namespace A018163

/-- `A007318(∑[n+1])*round(17^(n/5))` -/
def P9515570224612582653.Spec : Prop :=
  ∀ n, P9515570224612582653.a n = A018163 n

end A018163

/-!
# A018164: Powers of fifth root of 17 rounded up.

The programs for A018164, the canonical program `A018164.P3391283248975529223` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018164 has offset 0).

The definition of A018164 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 407 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A018164.P2198717907206430115

`ceil(17^(n/5))`
-/

namespace A018164.P2198717907206430115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(17 : ℝ) ^ ((n : ℚ) / 5 : ℝ)⌉

end

end A018164.P2198717907206430115

namespace A018164

/-- `ceil(17^(n/5))` -/
def P2198717907206430115.Spec : Prop :=
  ∀ n, P2198717907206430115.a n = A018164 n

end A018164

/-! ## A018164.P3391283248975529223

`A018162(n)+A011558(n)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A018164

/-- `A018162(n)+A011558(n)` -/
def P3391283248975529223.Spec : Prop :=
  ∀ n, P3391283248975529223.a n = A018164 n

theorem P3391283248975529223.correct : P3391283248975529223.Spec := by
  intro n
  simp only [A018164]

end A018164

/-! ## A018164.P9202173755734718401

`A018162(n)+Δ[A090223(n)]`
-/

namespace A018164.P9202173755734718401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090223 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018162 n + (f1 (n + 1) - f1 n)

end

end A018164.P9202173755734718401

namespace A018164

/-- `A018162(n)+Δ[A090223(n)]` -/
def P9202173755734718401.Spec : Prop :=
  ∀ n, P9202173755734718401.a n = A018164 n

end A018164

/-! ## A018164.P15574381416428100664

`A018162(n)-A272693(Δ[A090223(n)])`
-/

namespace A018164.P15574381416428100664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090223 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018162 n - A272693 (f1 (n + 1) - f1 n).toNat

end

end A018164.P15574381416428100664

namespace A018164

/-- `A018162(n)-A272693(Δ[A090223(n)])` -/
def P15574381416428100664.Spec : Prop :=
  ∀ n, P15574381416428100664.a n = A018164 n

end A018164

/-! ## A018164.P9941014522409177937

`A018162(n)+A018167(n)-A018165(n)`
-/

namespace A018164.P9941014522409177937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018162 n + (A018167 n - A018165 n)

end

end A018164.P9941014522409177937

namespace A018164

/-- `A018162(n)+A018167(n)-A018165(n)` -/
def P9941014522409177937.Spec : Prop :=
  ∀ n, P9941014522409177937.a n = A018164 n

end A018164

/-!
# A018165: Powers of fifth root of 18 rounded down.

The programs for A018165, the canonical program `A018165.P1256256754059875637` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018165 has offset 0).

The definition of A018165 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 399 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A018165.P1256256754059875637

`floor(18^(n/5))`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A018165

/-- `floor(18^(n/5))` -/
def P1256256754059875637.Spec : Prop :=
  ∀ n, P1256256754059875637.a n = A018165 n

theorem P1256256754059875637.correct : P1256256754059875637.Spec := by
  intro n
  simp only [A018165]

end A018165

/-! ## A018165.P7147630544396177704

`A018167(n)-A011558(n)`
-/

namespace A018165.P7147630544396177704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018167 n - A011558 n

end

end A018165.P7147630544396177704

namespace A018165

/-- `A018167(n)-A011558(n)` -/
def P7147630544396177704.Spec : Prop :=
  ∀ n, P7147630544396177704.a n = A018165 n

end A018165

/-! ## A018165.P14372408276821835999

`A018167(n)-abs(A080891(n))`
-/

namespace A018165.P14372408276821835999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018167 n - |A080891 n|

end

end A018165.P14372408276821835999

namespace A018165

/-- `A018167(n)-abs(A080891(n))` -/
def P14372408276821835999.Spec : Prop :=
  ∀ n, P14372408276821835999.a n = A018165 n

end A018165

/-! ## A018165.P15707652968346289882

`A018167(n)-Δ[A090223(n)]`
-/

namespace A018165.P15707652968346289882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090223 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018167 n - (f1 (n + 1) - f1 n)

end

end A018165.P15707652968346289882

namespace A018165

/-- `A018167(n)-Δ[A090223(n)]` -/
def P15707652968346289882.Spec : Prop :=
  ∀ n, P15707652968346289882.a n = A018165 n

end A018165

/-! ## A018165.P1377074825153732287

`A018167(n)+A018180(n)-A018182(n)`
-/

namespace A018165.P1377074825153732287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018167 n + (A018180 n - A018182 n)

end

end A018165.P1377074825153732287

namespace A018165

/-- `A018167(n)+A018180(n)-A018182(n)` -/
def P1377074825153732287.Spec : Prop :=
  ∀ n, P1377074825153732287.a n = A018165 n

end A018165

/-!
# A018166: Powers of fifth root of 18 rounded to nearest integer.

The programs for A018166, the canonical program `A018166.P6810236982058479144` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018166 has offset 0).

The definition of A018166 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 200 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A018166.P6810236982058479144

`round(sqrt(A018165(2*n)))`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A018166

/-- `round(sqrt(A018165(2*n)))` -/
def P6810236982058479144.Spec : Prop :=
  ∀ n, P6810236982058479144.a n = A018166 n

theorem P6810236982058479144.correct : P6810236982058479144.Spec := by
  intro n
  simp only [A018166]

end A018166

/-! ## A018166.P1357671745654331912

`round(sqrt(A018167(2*n)))`
-/

namespace A018166.P1357671745654331912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A018167 (2 * n) : ℝ))

end

end A018166.P1357671745654331912

namespace A018166

/-- `round(sqrt(A018167(2*n)))` -/
def P1357671745654331912.Spec : Prop :=
  ∀ n, P1357671745654331912.a n = A018166 n

end A018166

/-! ## A018166.P14568849224975634503

`round(root(A017958(n), 5)²)`
-/

namespace A018166.P14568849224975634503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((A017958 n : ℝ) ^ (1 / (5 : ℝ))) ^ 2)

end

end A018166.P14568849224975634503

namespace A018166

/-- `round(root(A017958(n), 5)²)` -/
def P14568849224975634503.Spec : Prop :=
  ∀ n, P14568849224975634503.a n = A018166 n

end A018166

/-! ## A018166.P11372257330959347282

`round(root(A017959(n), 5)²)`
-/

namespace A018166.P11372257330959347282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((A017959 n : ℝ) ^ (1 / (5 : ℝ))) ^ 2)

end

end A018166.P11372257330959347282

namespace A018166

/-- `round(root(A017959(n), 5)²)` -/
def P11372257330959347282.Spec : Prop :=
  ∀ n, P11372257330959347282.a n = A018166 n

end A018166

/-! ## A018166.P17532395502555692205

`round(root(A017960(n), 5)²)`
-/

namespace A018166.P17532395502555692205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((A017960 n : ℝ) ^ (1 / (5 : ℝ))) ^ 2)

end

end A018166.P17532395502555692205

namespace A018166

/-- `round(root(A017960(n), 5)²)` -/
def P17532395502555692205.Spec : Prop :=
  ∀ n, P17532395502555692205.a n = A018166 n

end A018166

/-! ## A018166.P3280416993324886013

`round(root(A001027(n), 5))`
-/

namespace A018166.P3280416993324886013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A001027 n : ℝ) ^ (1 / (5 : ℝ)))

end

end A018166.P3280416993324886013

namespace A018166

/-- `round(root(A001027(n), 5))` -/
def P3280416993324886013.Spec : Prop :=
  ∀ n, P3280416993324886013.a n = A018166 n

end A018166

/-! ## A018166.P14808011123972590674

`round(root(A034661(n), 5))`
-/

namespace A018166.P14808011123972590674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A034661 n : ℝ) ^ (1 / (5 : ℝ)))

end

end A018166.P14808011123972590674

namespace A018166

/-- `round(root(A034661(n), 5))` -/
def P14808011123972590674.Spec : Prop :=
  ∀ n, P14808011123972590674.a n = A018166 n

end A018166

/-! ## A018166.P8307081636811201451

`round(root(A221583(n), 5))`
-/

namespace A018166.P8307081636811201451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A221583 n : ℝ) ^ (1 / (5 : ℝ)))

end

end A018166.P8307081636811201451

namespace A018166

/-- `round(root(A221583(n), 5))` -/
def P8307081636811201451.Spec : Prop :=
  ∀ n, P8307081636811201451.a n = A018166 n

end A018166

/-!
# A018167: Powers of fifth root of 18 rounded up.

The programs for A018167, the canonical program `A018167.P16975993885813898639` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018167 has offset 0).

The definition of A018167 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 399 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A018167.P5850274560659064244

`ceil(18^(n/5))`
-/

namespace A018167.P5850274560659064244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(18 : ℝ) ^ ((n : ℚ) / 5 : ℝ)⌉

end

end A018167.P5850274560659064244

namespace A018167

/-- `ceil(18^(n/5))` -/
def P5850274560659064244.Spec : Prop :=
  ∀ n, P5850274560659064244.a n = A018167 n

end A018167

/-! ## A018167.P16975993885813898639

`A018165(n)+A011558(n)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A018167

/-- `A018165(n)+A011558(n)` -/
def P16975993885813898639.Spec : Prop :=
  ∀ n, P16975993885813898639.a n = A018167 n

theorem P16975993885813898639.correct : P16975993885813898639.Spec := by
  intro n
  simp only [A018167]

end A018167

/-! ## A018167.P6198173401871335686

`A018165(n)+abs(A080891(n))`
-/

namespace A018167.P6198173401871335686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018165 n + |A080891 n|

end

end A018167.P6198173401871335686

namespace A018167

/-- `A018165(n)+abs(A080891(n))` -/
def P6198173401871335686.Spec : Prop :=
  ∀ n, P6198173401871335686.a n = A018167 n

end A018167

/-! ## A018167.P16885908282871396255

`A018165(n)+Δ[A090223(n)]`
-/

namespace A018167.P16885908282871396255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090223 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018165 n + (f1 (n + 1) - f1 n)

end

end A018167.P16885908282871396255

namespace A018167

/-- `A018165(n)+Δ[A090223(n)]` -/
def P16885908282871396255.Spec : Prop :=
  ∀ n, P16885908282871396255.a n = A018167 n

end A018167

/-! ## A018167.P18135747326758498278

`A018146(n)+A018165(n)-A018144(n)`
-/

namespace A018167.P18135747326758498278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018146 n + (A018165 n - A018144 n)

end

end A018167.P18135747326758498278

namespace A018167

/-- `A018146(n)+A018165(n)-A018144(n)` -/
def P18135747326758498278.Spec : Prop :=
  ∀ n, P18135747326758498278.a n = A018167 n

end A018167

/-!
# A018168: Powers of fifth root of 19 rounded down.

The programs for A018168, the canonical program `A018168.P1486902536757321213` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018168 has offset 0).

The definition of A018168 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 392 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A018168.P1486902536757321213

`floor(19^(n/5))`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A018168

/-- `floor(19^(n/5))` -/
def P1486902536757321213.Spec : Prop :=
  ∀ n, P1486902536757321213.a n = A018168 n

theorem P1486902536757321213.correct : P1486902536757321213.Spec := by
  intro n
  simp only [A018168]

end A018168

/-! ## A018168.P13955910508498198356

`A018170(n)-A011558(n)`
-/

namespace A018168.P13955910508498198356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018170 n - A011558 n

end

end A018168.P13955910508498198356

namespace A018168

/-- `A018170(n)-A011558(n)` -/
def P13955910508498198356.Spec : Prop :=
  ∀ n, P13955910508498198356.a n = A018168 n

end A018168

/-! ## A018168.P18311327325800312951

`A018170(n)-abs(A244895(n))`
-/

namespace A018168.P18311327325800312951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018170 n - |A244895 n|

end

end A018168.P18311327325800312951

namespace A018168

/-- `A018170(n)-abs(A244895(n))` -/
def P18311327325800312951.Spec : Prop :=
  ∀ n, P18311327325800312951.a n = A018168 n

end A018168

/-! ## A018168.P12720920653323877812

`A018170(n)-Δ[A090223(n)]`
-/

namespace A018168.P12720920653323877812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090223 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018170 n - (f1 (n + 1) - f1 n)

end

end A018168.P12720920653323877812

namespace A018168

/-- `A018170(n)-Δ[A090223(n)]` -/
def P12720920653323877812.Spec : Prop :=
  ∀ n, P12720920653323877812.a n = A018168 n

end A018168

/-! ## A018168.P1673978817556476323

`A018144(n)+A018170(n)-A018146(n)`
-/

namespace A018168.P1673978817556476323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018144 n + (A018170 n - A018146 n)

end

end A018168.P1673978817556476323

namespace A018168

/-- `A018144(n)+A018170(n)-A018146(n)` -/
def P1673978817556476323.Spec : Prop :=
  ∀ n, P1673978817556476323.a n = A018168 n

end A018168

/-!
# A018169: Powers of fifth root of 19 rounded to nearest integer.

The programs for A018169, the canonical program `A018169.P17188329938784537795` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018169 has offset 0).

The definition of A018169 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A018169.P17188329938784537795

`round(19^(n/5))%A000079(n+1)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A018169

/-- `round(19^(n/5))%A000079(n+1)` -/
def P17188329938784537795.Spec : Prop :=
  ∀ n, P17188329938784537795.a n = A018169 n

theorem P17188329938784537795.correct : P17188329938784537795.Spec := by
  intro n
  simp only [A018169]

end A018169

/-! ## A018169.P12898156268064348274

`round(sqrt(A018168(2*n)))`
-/

namespace A018169.P12898156268064348274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A018168 (2 * n) : ℝ))

end

end A018169.P12898156268064348274

namespace A018169

/-- `round(sqrt(A018168(2*n)))` -/
def P12898156268064348274.Spec : Prop :=
  ∀ n, P12898156268064348274.a n = A018169 n

end A018169

/-! ## A018169.P8200219280361900944

`round(sqrt(A018170(2*n)))`
-/

namespace A018169.P8200219280361900944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A018170 (2 * n) : ℝ))

end

end A018169.P8200219280361900944

namespace A018169

/-- `round(sqrt(A018170(2*n)))` -/
def P8200219280361900944.Spec : Prop :=
  ∀ n, P8200219280361900944.a n = A018169 n

end A018169

/-! ## A018169.P12093362914122516070

`ceil(A018170(2*n)/A018170(n))`
-/

namespace A018169.P12093362914122516070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A018170 (2 * n) : ℚ) / (A018170 n : ℚ)⌉

end

end A018169.P12093362914122516070

namespace A018169

/-- `ceil(A018170(2*n)/A018170(n))` -/
def P12093362914122516070.Spec : Prop :=
  ∀ n, P12093362914122516070.a n = A018169 n

end A018169

/-! ## A018169.P10836594375314420565

`round(root(A182609(n), 5))`
-/

namespace A018169.P10836594375314420565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A182609 n : ℝ) ^ (1 / (5 : ℝ)))

end

end A018169.P10836594375314420565

namespace A018169

/-- `round(root(A182609(n), 5))` -/
def P10836594375314420565.Spec : Prop :=
  ∀ n, P10836594375314420565.a n = A018169 n

end A018169

/-!
# A018170: Powers of fifth root of 19 rounded up.

The programs for A018170, the canonical program `A018170.P5132066639009175930` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018170 has offset 0).

The definition of A018170 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 392 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A018170.P2394343407571269638

`ceil(19^(n/5))`
-/

namespace A018170.P2394343407571269638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(19 : ℝ) ^ ((n : ℚ) / 5 : ℝ)⌉

end

end A018170.P2394343407571269638

namespace A018170

/-- `ceil(19^(n/5))` -/
def P2394343407571269638.Spec : Prop :=
  ∀ n, P2394343407571269638.a n = A018170 n

end A018170

/-! ## A018170.P5132066639009175930

`A018168(n)+A011558(n)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A018170

/-- `A018168(n)+A011558(n)` -/
def P5132066639009175930.Spec : Prop :=
  ∀ n, P5132066639009175930.a n = A018170 n

theorem P5132066639009175930.correct : P5132066639009175930.Spec := by
  intro n
  simp only [A018170]

end A018170

/-! ## A018170.P5915798415854632650

`A018168(n)+abs(A080891(n))`
-/

namespace A018170.P5915798415854632650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018168 n + |A080891 n|

end

end A018170.P5915798415854632650

namespace A018170

/-- `A018168(n)+abs(A080891(n))` -/
def P5915798415854632650.Spec : Prop :=
  ∀ n, P5915798415854632650.a n = A018170 n

end A018170

/-! ## A018170.P17109799082278849076

`A018168(n)+abs(A226162(n))`
-/

namespace A018170.P17109799082278849076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018168 n + |A226162 n|

end

end A018170.P17109799082278849076

namespace A018170

/-- `A018168(n)+abs(A226162(n))` -/
def P17109799082278849076.Spec : Prop :=
  ∀ n, P17109799082278849076.a n = A018170 n

end A018170

/-! ## A018170.P5966648898319617864

`A018168(n)+A100047(n)²`
-/

namespace A018170.P5966648898319617864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018168 n + A100047 n ^ 2

end

end A018170.P5966648898319617864

namespace A018170

/-- `A018168(n)+A100047(n)²` -/
def P5966648898319617864.Spec : Prop :=
  ∀ n, P5966648898319617864.a n = A018170 n

end A018170

/-! ## A018170.P13039454418916807159

`A018168(n)+Δ[A090223(n)]`
-/

namespace A018170.P13039454418916807159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090223 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018168 n + (f1 (n + 1) - f1 n)

end

end A018170.P13039454418916807159

namespace A018170

/-- `A018168(n)+Δ[A090223(n)]` -/
def P13039454418916807159.Spec : Prop :=
  ∀ n, P13039454418916807159.a n = A018170 n

end A018170

/-! ## A018170.P10237101802389364859

`A080891(n²)+A018168(n)`
-/

namespace A018170.P10237101802389364859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080891 (n ^ 2) + A018168 n

end

end A018170.P10237101802389364859

namespace A018170

/-- `A080891(n²)+A018168(n)` -/
def P10237101802389364859.Spec : Prop :=
  ∀ n, P10237101802389364859.a n = A018170 n

end A018170

/-! ## A018170.P17710596982052663814

`A226162(n²)+A018168(n)`
-/

namespace A018170.P17710596982052663814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226162 (n ^ 2) + A018168 n

end

end A018170.P17710596982052663814

namespace A018170

/-- `A226162(n²)+A018168(n)` -/
def P17710596982052663814.Spec : Prop :=
  ∀ n, P17710596982052663814.a n = A018170 n

end A018170

/-!
# A018171: Powers of fifth root of 20 rounded down.

The programs for A018171, there is no canonical definition to state claims against.
-/

/-! ## A018171.P3760110821535961758

`A018173(n)-A011558(n)`
-/

namespace A018171.P3760110821535961758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018173 n - A011558 n

end

end A018171.P3760110821535961758

/-! ## A018171.P16847402432565954386

`A018173(n)-abs(A080891(n))`
-/

namespace A018171.P16847402432565954386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018173 n - |A080891 n|

end

end A018171.P16847402432565954386

/-! ## A018171.P1316611996400112134

`A018173(n)-abs(A244895(n))`
-/

namespace A018171.P1316611996400112134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018173 n - |A244895 n|

end

end A018171.P1316611996400112134

/-! ## A018171.P14317625653314007475

`A018173(n)-Δ[A090223(n)]`
-/

namespace A018171.P14317625653314007475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090223 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018173 n - (f1 (n + 1) - f1 n)

end

end A018171.P14317625653314007475

/-! ## A018171.P8868585882980556120

`A018173(n)+A018180(n)-A018182(n)`
-/

namespace A018171.P8868585882980556120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018173 n + (A018180 n - A018182 n)

end

end A018171.P8868585882980556120

/-! ## A018171.P16342014474716344381

`A018173(n)-A080891(n²)`
-/

namespace A018171.P16342014474716344381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018173 n - A080891 (n ^ 2)

end

end A018171.P16342014474716344381

/-! ## A018171.P11397046913796750640

`floor(root(20^n, 5))`
-/

namespace A018171.P11397046913796750640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(20 ^ n : ℝ) ^ (1 / (5 : ℝ))⌋

end

end A018171.P11397046913796750640

/-!
# A018172: Powers of fifth root of 20 rounded to nearest integer.

The programs for A018172, there is no canonical definition to state claims against.
-/

/-! ## A018172.P1688597755219259335

`round(sqrt(A018171(2*n)))`
-/

namespace A018172.P1688597755219259335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A018171 (2 * n) : ℝ))

end

end A018172.P1688597755219259335

/-! ## A018172.P7448697488226683432

`round(sqrt(A018173(2*n)))`
-/

namespace A018172.P7448697488226683432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A018173 (2 * n) : ℝ))

end

end A018172.P7448697488226683432

/-! ## A018172.P9161794994258246844

`ceil(A018173(2*n)/A018173(n))`
-/

namespace A018172.P9161794994258246844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A018173 (2 * n) : ℚ) / (A018173 n : ℚ)⌉

end

end A018172.P9161794994258246844

/-! ## A018172.P9355374285115557048

`round(root(A009964(n), 5))`
-/

namespace A018172.P9355374285115557048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A009964 n : ℝ) ^ (1 / (5 : ℝ)))

end

end A018172.P9355374285115557048

/-! ## A018172.P9094929220231513

`round(root(A221584(n), 5))`
-/

namespace A018172.P9094929220231513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A221584 n : ℝ) ^ (1 / (5 : ℝ)))

end

end A018172.P9094929220231513

/-!
# A018173: Powers of fifth root of 20 rounded up.

The programs for A018173, there is no canonical definition to state claims against.
-/

/-! ## A018173.P10285182982512868182

`A018171(n)+A011558(n)`
-/

namespace A018173.P10285182982512868182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018171 n + A011558 n

end

end A018173.P10285182982512868182

/-! ## A018173.P10107831474082235671

`A018171(n)+abs(A080891(n))`
-/

namespace A018173.P10107831474082235671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018171 n + |A080891 n|

end

end A018173.P10107831474082235671

/-! ## A018173.P10584042142834252965

`A018171(n)+abs(A330025(n))`
-/

namespace A018173.P10584042142834252965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018171 n + |A330025 n|

end

end A018173.P10584042142834252965

/-! ## A018173.P8455956039519863439

`A018171(n)+Δ[A090223(n)]`
-/

namespace A018173.P8455956039519863439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090223 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018171 n + (f1 (n + 1) - f1 n)

end

end A018173.P8455956039519863439

/-! ## A018173.P17919112605662569597

`A018155(n)+A018171(n)-A018153(n)`
-/

namespace A018173.P17919112605662569597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018155 n + (A018171 n - A018153 n)

end

end A018173.P17919112605662569597

/-! ## A018173.P4241746913862211635

`A018161(n)+A018171(n)-A018159(n)`
-/

namespace A018173.P4241746913862211635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018161 n + (A018171 n - A018159 n)

end

end A018173.P4241746913862211635

/-! ## A018173.P5667283586510191105

`A018164(n)+A018171(n)-A018162(n)`
-/

namespace A018173.P5667283586510191105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018164 n + (A018171 n - A018162 n)

end

end A018173.P5667283586510191105

/-! ## A018173.P10191609219529704715

`A018170(n)+A018171(n)-A018168(n)`
-/

namespace A018173.P10191609219529704715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018170 n + (A018171 n - A018168 n)

end

end A018173.P10191609219529704715

/-! ## A018173.P10704664576705864021

`A018171(n)+A018176(n)-A018174(n)`
-/

namespace A018173.P10704664576705864021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018171 n + (A018176 n - A018174 n)

end

end A018173.P10704664576705864021

/-! ## A018173.P11542505228170832980

`A080891(n²)+A018171(n)`
-/

namespace A018173.P11542505228170832980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080891 (n ^ 2) + A018171 n

end

end A018173.P11542505228170832980

/-!
# A018174: Powers of fifth root of 21 rounded down.

The programs for A018174, the canonical program `A018174.P12326779818066994304` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018174 has offset 0).

The definition of A018174 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 190 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A018174.P5011869772870547002

`A018176(n)-A011558(n)`
-/

namespace A018174.P5011869772870547002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018176 n - A011558 n

end

end A018174.P5011869772870547002

namespace A018174

/-- `A018176(n)-A011558(n)` -/
def P5011869772870547002.Spec : Prop :=
  ∀ n, P5011869772870547002.a n = A018174 n

end A018174

/-! ## A018174.P15638945680564097131

`A018176(n)-abs(A226162(n))`
-/

namespace A018174.P15638945680564097131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018176 n - |A226162 n|

end

end A018174.P15638945680564097131

namespace A018174

/-- `A018176(n)-abs(A226162(n))` -/
def P15638945680564097131.Spec : Prop :=
  ∀ n, P15638945680564097131.a n = A018174 n

end A018174

/-! ## A018174.P16271347022048493787

`A018176(n)-Δ[A090223(n)]`
-/

namespace A018174.P16271347022048493787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090223 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018176 n - (f1 (n + 1) - f1 n)

end

end A018174.P16271347022048493787

namespace A018174

/-- `A018176(n)-Δ[A090223(n)]` -/
def P16271347022048493787.Spec : Prop :=
  ∀ n, P16271347022048493787.a n = A018174 n

end A018174

/-! ## A018174.P12326779818066994304

`floor(sqrt(A018175(2*n)))`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A018174

/-- `floor(sqrt(A018175(2*n)))` -/
def P12326779818066994304.Spec : Prop :=
  ∀ n, P12326779818066994304.a n = A018174 n

theorem P12326779818066994304.correct : P12326779818066994304.Spec := by
  intro n
  simp only [A018174]

end A018174

/-! ## A018174.P17540658467066782387

`floor(A018175(2*n)/A018175(n))`
-/

namespace A018174.P17540658467066782387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A018175 (2 * n) : ℚ) / (A018175 n : ℚ)⌋

end

end A018174.P17540658467066782387

namespace A018174

/-- `floor(A018175(2*n)/A018175(n))` -/
def P17540658467066782387.Spec : Prop :=
  ∀ n, P17540658467066782387.a n = A018174 n

end A018174

/-! ## A018174.P12893888771277187342

`A018176(n)-A226162(n²)`
-/

namespace A018174.P12893888771277187342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018176 n - A226162 (n ^ 2)

end

end A018174.P12893888771277187342

namespace A018174

/-- `A018176(n)-A226162(n²)` -/
def P12893888771277187342.Spec : Prop :=
  ∀ n, P12893888771277187342.a n = A018174 n

end A018174

/-!
# A018175: Powers of fifth root of 21 rounded to nearest integer.

The programs for A018175, the canonical program `A018175.P7538646468649582105` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018175 has offset 0).

The definition of A018175 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 379 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A018175.P7538646468649582105

`round(21^(n/5))`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A018175

/-- `round(21^(n/5))` -/
def P7538646468649582105.Spec : Prop :=
  ∀ n, P7538646468649582105.a n = A018175 n

theorem P7538646468649582105.correct : P7538646468649582105.Spec := by
  intro n
  simp only [A018175]

end A018175

/-! ## A018175.P2923401449233889964

`(abs(1-n)-n)²*round(sqrt(A018176(2*n)))`
-/

namespace A018175.P2923401449233889964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (|1 - (n : ℤ)| - (n : ℤ)) ^ 2 * SequenceMachineLib.roundAway (Real.sqrt (A018176 (2 * n) : ℝ))

end

end A018175.P2923401449233889964

namespace A018175

/-- `(abs(1-n)-n)²*round(sqrt(A018176(2*n)))` -/
def P2923401449233889964.Spec : Prop :=
  ∀ n, P2923401449233889964.a n = A018175 n

end A018175

/-! ## A018175.P14830954418257360502

`round(sqrt(A018176(2*n)))%A000051(n)`
-/

namespace A018175.P14830954418257360502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (A018176 (2 * n) : ℝ))) (A000051 n)

end

end A018175.P14830954418257360502

namespace A018175

/-- `round(sqrt(A018176(2*n)))%A000051(n)` -/
def P14830954418257360502.Spec : Prop :=
  ∀ n, P14830954418257360502.a n = A018175 n

end A018175

/-! ## A018175.P12857742674379501370

`A000007(n+1)+round(sqrt(A018176(2*n)))`
-/

namespace A018175.P12857742674379501370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + SequenceMachineLib.roundAway (Real.sqrt (A018176 (2 * n) : ℝ))

end

end A018175.P12857742674379501370

namespace A018175

/-- `A000007(n+1)+round(sqrt(A018176(2*n)))` -/
def P12857742674379501370.Spec : Prop :=
  ∀ n, P12857742674379501370.a n = A018175 n

end A018175

/-! ## A018175.P4533186133904705855

`round(sqrt(A018176(2*n)))+2%A000034(n)`
-/

namespace A018175.P4533186133904705855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A018176 (2 * n) : ℝ)) + Int.tmod 2 (A000034 n)

end

end A018175.P4533186133904705855

namespace A018175

/-- `round(sqrt(A018176(2*n)))+2%A000034(n)` -/
def P4533186133904705855.Spec : Prop :=
  ∀ n, P4533186133904705855.a n = A018175 n

end A018175

/-! ## A018175.P5878880649628657023

`round(sqrt(A018176(2*n)))+A006659(n+1)%2`
-/

namespace A018175.P5878880649628657023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A018176 (2 * n) : ℝ)) + Int.tmod (A006659 (n + 1)) 2

end

end A018175.P5878880649628657023

namespace A018175

/-- `round(sqrt(A018176(2*n)))+A006659(n+1)%2` -/
def P5878880649628657023.Spec : Prop :=
  ∀ n, P5878880649628657023.a n = A018175 n

end A018175

/-!
# A018176: Powers of fifth root of 21 rounded up.

The programs for A018176, the canonical program `A018176.P918138688999406290` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018176 has offset 0).

The definition of A018176 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 379 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A018176.P918138688999406290

`A018174(n)+A011558(n)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A018176

/-- `A018174(n)+A011558(n)` -/
def P918138688999406290.Spec : Prop :=
  ∀ n, P918138688999406290.a n = A018176 n

theorem P918138688999406290.correct : P918138688999406290.Spec := by
  intro n
  simp only [A018176]

end A018176

/-! ## A018176.P9558765802895827113

`A018174(n)+abs(A226162(n))`
-/

namespace A018176.P9558765802895827113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018174 n + |A226162 n|

end

end A018176.P9558765802895827113

namespace A018176

/-- `A018174(n)+abs(A226162(n))` -/
def P9558765802895827113.Spec : Prop :=
  ∀ n, P9558765802895827113.a n = A018176 n

end A018176

/-! ## A018176.P1335688331865290662

`A018174(n)+Δ[A090223(n)]`
-/

namespace A018176.P1335688331865290662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090223 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018174 n + (f1 (n + 1) - f1 n)

end

end A018176.P1335688331865290662

namespace A018176

/-- `A018174(n)+Δ[A090223(n)]` -/
def P1335688331865290662.Spec : Prop :=
  ∀ n, P1335688331865290662.a n = A018176 n

end A018176

/-! ## A018176.P536326752065004814

`ceil(sqrt(A018174(2*n)))`
-/

namespace A018176.P536326752065004814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A018174 (2 * n) : ℝ)⌉

end

end A018176.P536326752065004814

namespace A018176

/-- `ceil(sqrt(A018174(2*n)))` -/
def P536326752065004814.Spec : Prop :=
  ∀ n, P536326752065004814.a n = A018176 n

end A018176

/-! ## A018176.P5835481000533986602

`ceil(sqrt(A018175(2*n)))`
-/

namespace A018176.P5835481000533986602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A018175 (2 * n) : ℝ)⌉

end

end A018176.P5835481000533986602

namespace A018176

/-- `ceil(sqrt(A018175(2*n)))` -/
def P5835481000533986602.Spec : Prop :=
  ∀ n, P5835481000533986602.a n = A018176 n

end A018176

/-! ## A018176.P8108792155766427500

`ceil(A018175(2*n)/A018175(n))`
-/

namespace A018176.P8108792155766427500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A018175 (2 * n) : ℚ) / (A018175 n : ℚ)⌉

end

end A018176.P8108792155766427500

namespace A018176

/-- `ceil(A018175(2*n)/A018175(n))` -/
def P8108792155766427500.Spec : Prop :=
  ∀ n, P8108792155766427500.a n = A018176 n

end A018176

/-! ## A018176.P17858781522705954760

`A226162(n²)+A018174(n)`
-/

namespace A018176.P17858781522705954760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226162 (n ^ 2) + A018174 n

end

end A018176.P17858781522705954760

namespace A018176

/-- `A226162(n²)+A018174(n)` -/
def P17858781522705954760.Spec : Prop :=
  ∀ n, P17858781522705954760.a n = A018176 n

end A018176

/-!
# A018177: Powers of fifth root of 22 rounded down.

The programs for A018177, the canonical program `A018177.P5745912587314525532` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018177 has offset 0).

The definition of A018177 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 373 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A018177.P5745912587314525532

`floor(22^(n/5))`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A018177

/-- `floor(22^(n/5))` -/
def P5745912587314525532.Spec : Prop :=
  ∀ n, P5745912587314525532.a n = A018177 n

theorem P5745912587314525532.correct : P5745912587314525532.Spec := by
  intro n
  simp only [A018177]

end A018177

/-! ## A018177.P9710441225778985642

`A018179(n)-A011558(n)`
-/

namespace A018177.P9710441225778985642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018179 n - A011558 n

end

end A018177.P9710441225778985642

namespace A018177

/-- `A018179(n)-A011558(n)` -/
def P9710441225778985642.Spec : Prop :=
  ∀ n, P9710441225778985642.a n = A018177 n

end A018177

/-! ## A018177.P13634336474508706814

`A018179(n)-abs(A080891(n))`
-/

namespace A018177.P13634336474508706814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018179 n - |A080891 n|

end

end A018177.P13634336474508706814

namespace A018177

/-- `A018179(n)-abs(A080891(n))` -/
def P13634336474508706814.Spec : Prop :=
  ∀ n, P13634336474508706814.a n = A018177 n

end A018177

/-! ## A018177.P18080806800864648389

`A018179(n)-abs(A226162(n))`
-/

namespace A018177.P18080806800864648389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018179 n - |A226162 n|

end

end A018177.P18080806800864648389

namespace A018177

/-- `A018179(n)-abs(A226162(n))` -/
def P18080806800864648389.Spec : Prop :=
  ∀ n, P18080806800864648389.a n = A018177 n

end A018177

/-! ## A018177.P4910050012728569920

`A018179(n)-Δ[A090223(n)]`
-/

namespace A018177.P4910050012728569920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090223 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018179 n - (f1 (n + 1) - f1 n)

end

end A018177.P4910050012728569920

namespace A018177

/-- `A018179(n)-Δ[A090223(n)]` -/
def P4910050012728569920.Spec : Prop :=
  ∀ n, P4910050012728569920.a n = A018177 n

end A018177

/-! ## A018177.P18122857248573634768

`A018179(n)-A080891(n²)`
-/

namespace A018177.P18122857248573634768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018179 n - A080891 (n ^ 2)

end

end A018177.P18122857248573634768

namespace A018177

/-- `A018179(n)-A080891(n²)` -/
def P18122857248573634768.Spec : Prop :=
  ∀ n, P18122857248573634768.a n = A018177 n

end A018177

/-! ## A018177.P3348420072419730374

`A018179(n)-A226162(n²)`
-/

namespace A018177.P3348420072419730374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018179 n - A226162 (n ^ 2)

end

end A018177.P3348420072419730374

namespace A018177

/-- `A018179(n)-A226162(n²)` -/
def P3348420072419730374.Spec : Prop :=
  ∀ n, P3348420072419730374.a n = A018177 n

end A018177

/-!
# A018178: Powers of fifth root of 22 rounded to nearest integer.

The programs for A018178, the canonical program `A018178.P8186179901445619379` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018178 has offset 0).

The definition of A018178 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 187 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A018178.P8186179901445619379

`round(sqrt(A018177(2*n)))`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A018178

/-- `round(sqrt(A018177(2*n)))` -/
def P8186179901445619379.Spec : Prop :=
  ∀ n, P8186179901445619379.a n = A018178 n

theorem P8186179901445619379.correct : P8186179901445619379.Spec := by
  intro n
  simp only [A018178]

end A018178

/-! ## A018178.P2061075172306576578

`round(sqrt(A018179(2*n)))`
-/

namespace A018178.P2061075172306576578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A018179 (2 * n) : ℝ))

end

end A018178.P2061075172306576578

namespace A018178

/-- `round(sqrt(A018179(2*n)))` -/
def P2061075172306576578.Spec : Prop :=
  ∀ n, P2061075172306576578.a n = A018178 n

end A018178

/-! ## A018178.P16139751461997807694

`ceil(A018177(2*n)/A018179(n))`
-/

namespace A018178.P16139751461997807694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A018177 (2 * n) : ℚ) / (A018179 n : ℚ)⌉

end

end A018178.P16139751461997807694

namespace A018178

/-- `ceil(A018177(2*n)/A018179(n))` -/
def P16139751461997807694.Spec : Prop :=
  ∀ n, P16139751461997807694.a n = A018178 n

end A018178

/-! ## A018178.P14287491401437377181

`ceil(A018179(2*n)/A018179(n))`
-/

namespace A018178.P14287491401437377181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A018179 (2 * n) : ℚ) / (A018179 n : ℚ)⌉

end

end A018178.P14287491401437377181

namespace A018178

/-- `ceil(A018179(2*n)/A018179(n))` -/
def P14287491401437377181.Spec : Prop :=
  ∀ n, P14287491401437377181.a n = A018178 n

end A018178

/-! ## A018178.P15124220196866114168

`round(root(A009966(n), 5))`
-/

namespace A018178.P15124220196866114168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A009966 n : ℝ) ^ (1 / (5 : ℝ)))

end

end A018178.P15124220196866114168

namespace A018178

/-- `round(root(A009966(n), 5))` -/
def P15124220196866114168.Spec : Prop :=
  ∀ n, P15124220196866114168.a n = A018178 n

end A018178

/-!
# A018179: Powers of fifth root of 22 rounded up.

The programs for A018179, the canonical program `A018179.P8087356966683218819` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018179 has offset 0).

The definition of A018179 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 373 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A018179.P9592621282911671642

`ceil(22^(n/5))`
-/

namespace A018179.P9592621282911671642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(22 : ℝ) ^ ((n : ℚ) / 5 : ℝ)⌉

end

end A018179.P9592621282911671642

namespace A018179

/-- `ceil(22^(n/5))` -/
def P9592621282911671642.Spec : Prop :=
  ∀ n, P9592621282911671642.a n = A018179 n

end A018179

/-! ## A018179.P8087356966683218819

`A018177(n)+A011558(n)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A018179

/-- `A018177(n)+A011558(n)` -/
def P8087356966683218819.Spec : Prop :=
  ∀ n, P8087356966683218819.a n = A018179 n

theorem P8087356966683218819.correct : P8087356966683218819.Spec := by
  intro n
  simp only [A018179]

end A018179

/-! ## A018179.P17390171840570652969

`A018177(n)+abs(A080891(n))`
-/

namespace A018179.P17390171840570652969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018177 n + |A080891 n|

end

end A018179.P17390171840570652969

namespace A018179

/-- `A018177(n)+abs(A080891(n))` -/
def P17390171840570652969.Spec : Prop :=
  ∀ n, P17390171840570652969.a n = A018179 n

end A018179

/-! ## A018179.P8546615880236750396

`A018177(n)+A226162(n)²`
-/

namespace A018179.P8546615880236750396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018177 n + A226162 n ^ 2

end

end A018179.P8546615880236750396

namespace A018179

/-- `A018177(n)+A226162(n)²` -/
def P8546615880236750396.Spec : Prop :=
  ∀ n, P8546615880236750396.a n = A018179 n

end A018179

/-! ## A018179.P1982071270402978252

`A080891(n²)+A018177(n)`
-/

namespace A018179.P1982071270402978252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080891 (n ^ 2) + A018177 n

end

end A018179.P1982071270402978252

namespace A018179

/-- `A080891(n²)+A018177(n)` -/
def P1982071270402978252.Spec : Prop :=
  ∀ n, P1982071270402978252.a n = A018179 n

end A018179

/-!
# A018180: Powers of fifth root of 23 rounded down.

The programs for A018180, the canonical program `A018180.P526590853399527022` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018180 has offset 0).

The definition of A018180 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 368 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A018180.P526590853399527022

`A018182(n)-A011558(n)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A018180

/-- `A018182(n)-A011558(n)` -/
def P526590853399527022.Spec : Prop :=
  ∀ n, P526590853399527022.a n = A018180 n

theorem P526590853399527022.correct : P526590853399527022.Spec := by
  intro n
  simp only [A018180]

end A018180

/-! ## A018180.P7101178990488934747

`A018182(n)-abs(A330025(n))`
-/

namespace A018180.P7101178990488934747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018182 n - |A330025 n|

end

end A018180.P7101178990488934747

namespace A018180

/-- `A018182(n)-abs(A330025(n))` -/
def P7101178990488934747.Spec : Prop :=
  ∀ n, P7101178990488934747.a n = A018180 n

end A018180

/-! ## A018180.P1129515397962234439

`A018182(n)-A080891(n)²`
-/

namespace A018180.P1129515397962234439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018182 n - A080891 n ^ 2

end

end A018180.P1129515397962234439

namespace A018180

/-- `A018182(n)-A080891(n)²` -/
def P1129515397962234439.Spec : Prop :=
  ∀ n, P1129515397962234439.a n = A018180 n

end A018180

/-! ## A018180.P14478614036109592013

`A018182(n)-Δ[A090223(n)]`
-/

namespace A018180.P14478614036109592013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090223 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018182 n - (f1 (n + 1) - f1 n)

end

end A018180.P14478614036109592013

namespace A018180

/-- `A018182(n)-Δ[A090223(n)]` -/
def P14478614036109592013.Spec : Prop :=
  ∀ n, P14478614036109592013.a n = A018180 n

end A018180

/-! ## A018180.P14644684415916110827

`A018132(n)+A018182(n)-A018134(n)`
-/

namespace A018180.P14644684415916110827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018132 n + (A018182 n - A018134 n)

end

end A018180.P14644684415916110827

namespace A018180

/-- `A018132(n)+A018182(n)-A018134(n)` -/
def P14644684415916110827.Spec : Prop :=
  ∀ n, P14644684415916110827.a n = A018180 n

end A018180

/-!
# A018181: Powers of fifth root of 23 rounded to nearest integer.

The programs for A018181, the canonical program `A018181.P1639594874919561374` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018181 has offset 0).

The definition of A018181 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 147 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A018181.P9508988982210173110

`round(sqrt(A018182(2*n)))`
-/

namespace A018181.P9508988982210173110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A018182 (2 * n) : ℝ))

end

end A018181.P9508988982210173110

namespace A018181

/-- `round(sqrt(A018182(2*n)))` -/
def P9508988982210173110.Spec : Prop :=
  ∀ n, P9508988982210173110.a n = A018181 n

end A018181

/-! ## A018181.P7053178249880466478

`ceil(A018182(2*n)/A018182(n))`
-/

namespace A018181.P7053178249880466478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A018182 (2 * n) : ℚ) / (A018182 n : ℚ)⌉

end

end A018181.P7053178249880466478

namespace A018181

/-- `ceil(A018182(2*n)/A018182(n))` -/
def P7053178249880466478.Spec : Prop :=
  ∀ n, P7053178249880466478.a n = A018181 n

end A018181

/-! ## A018181.P1639594874919561374

`round(root(A017973(n), 5)²)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A018181

/-- `round(root(A017973(n), 5)²)` -/
def P1639594874919561374.Spec : Prop :=
  ∀ n, P1639594874919561374.a n = A018181 n

theorem P1639594874919561374.correct : P1639594874919561374.Spec := by
  intro n
  simp only [A018181]

end A018181

/-! ## A018181.P15738163782439518340

`round(root(A009967(n), 5))`
-/

namespace A018181.P15738163782439518340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A009967 n : ℝ) ^ (1 / (5 : ℝ)))

end

end A018181.P15738163782439518340

namespace A018181

/-- `round(root(A009967(n), 5))` -/
def P15738163782439518340.Spec : Prop :=
  ∀ n, P15738163782439518340.a n = A018181 n

end A018181

/-! ## A018181.P5958137186802516836

`round(root(A182610(n), 5))`
-/

namespace A018181.P5958137186802516836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A182610 n : ℝ) ^ (1 / (5 : ℝ)))

end

end A018181.P5958137186802516836

namespace A018181

/-- `round(root(A182610(n), 5))` -/
def P5958137186802516836.Spec : Prop :=
  ∀ n, P5958137186802516836.a n = A018181 n

end A018181

/-!
# A018182: Powers of fifth root of 23 rounded up.

The programs for A018182, the canonical program `A018182.P9553968348427495281` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018182 has offset 0).

The definition of A018182 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 184 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A018182.P2203106734121352916

`A018180(n)+A011558(n)`
-/

namespace A018182.P2203106734121352916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018180 n + A011558 n

end

end A018182.P2203106734121352916

namespace A018182

/-- `A018180(n)+A011558(n)` -/
def P2203106734121352916.Spec : Prop :=
  ∀ n, P2203106734121352916.a n = A018182 n

end A018182

/-! ## A018182.P14884449830706797343

`A018180(n)+Δ[A090223(n)]`
-/

namespace A018182.P14884449830706797343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090223 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018180 n + (f1 (n + 1) - f1 n)

end

end A018182.P14884449830706797343

namespace A018182

/-- `A018180(n)+Δ[A090223(n)]` -/
def P14884449830706797343.Spec : Prop :=
  ∀ n, P14884449830706797343.a n = A018182 n

end A018182

/-! ## A018182.P17857894696355183593

`ceil(sqrt(A018180(2*n)))`
-/

namespace A018182.P17857894696355183593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A018180 (2 * n) : ℝ)⌉

end

end A018182.P17857894696355183593

namespace A018182

/-- `ceil(sqrt(A018180(2*n)))` -/
def P17857894696355183593.Spec : Prop :=
  ∀ n, P17857894696355183593.a n = A018182 n

end A018182

/-! ## A018182.P9553968348427495281

`ceil(sqrt(A018181(2*n)))`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A018182

/-- `ceil(sqrt(A018181(2*n)))` -/
def P9553968348427495281.Spec : Prop :=
  ∀ n, P9553968348427495281.a n = A018182 n

theorem P9553968348427495281.correct : P9553968348427495281.Spec := by
  intro n
  simp only [A018182]

end A018182

/-! ## A018182.P10986009642607470268

`ceil(root(A182610(n), 5))`
-/

namespace A018182.P10986009642607470268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A182610 n : ℝ) ^ (1 / (5 : ℝ))⌉

end

end A018182.P10986009642607470268

namespace A018182

/-- `ceil(root(A182610(n), 5))` -/
def P10986009642607470268.Spec : Prop :=
  ∀ n, P10986009642607470268.a n = A018182 n

end A018182

/-!
# A018183: Powers of fifth root of 24 rounded down.

The programs for A018183, the canonical program `A018183.P689843559182131155` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018183 has offset 0).

The definition of A018183 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 363 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A018183.P689843559182131155

`floor(24^(n/5))`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A018183

/-- `floor(24^(n/5))` -/
def P689843559182131155.Spec : Prop :=
  ∀ n, P689843559182131155.a n = A018183 n

theorem P689843559182131155.correct : P689843559182131155.Spec := by
  intro n
  simp only [A018183]

end A018183

/-! ## A018183.P9345764790390280836

`A018185(n)-A011558(n)`
-/

namespace A018183.P9345764790390280836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018185 n - A011558 n

end

end A018183.P9345764790390280836

namespace A018183

/-- `A018185(n)-A011558(n)` -/
def P9345764790390280836.Spec : Prop :=
  ∀ n, P9345764790390280836.a n = A018183 n

end A018183

/-! ## A018183.P4644254991004465533

`A018185(n)-abs(A330025(n))`
-/

namespace A018183.P4644254991004465533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018185 n - |A330025 n|

end

end A018183.P4644254991004465533

namespace A018183

/-- `A018185(n)-abs(A330025(n))` -/
def P4644254991004465533.Spec : Prop :=
  ∀ n, P4644254991004465533.a n = A018183 n

end A018183

/-! ## A018183.P9110191811521825218

`A018185(n)-Δ[A090223(n)]`
-/

namespace A018183.P9110191811521825218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090223 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018185 n - (f1 (n + 1) - f1 n)

end

end A018183.P9110191811521825218

namespace A018183

/-- `A018185(n)-Δ[A090223(n)]` -/
def P9110191811521825218.Spec : Prop :=
  ∀ n, P9110191811521825218.a n = A018183 n

end A018183

/-! ## A018183.P14851502651197989966

`A018185(n)-A109720(A235199(n))`
-/

namespace A018183.P14851502651197989966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018185 n - A109720 (A235199 n).toNat

end

end A018183.P14851502651197989966

namespace A018183

/-- `A018185(n)-A109720(A235199(n))` -/
def P14851502651197989966.Spec : Prop :=
  ∀ n, P14851502651197989966.a n = A018183 n

end A018183

/-! ## A018183.P8875125791375196820

`A018180(n)+A018185(n)-A018182(n)`
-/

namespace A018183.P8875125791375196820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018180 n + (A018185 n - A018182 n)

end

end A018183.P8875125791375196820

namespace A018183

/-- `A018180(n)+A018185(n)-A018182(n)` -/
def P8875125791375196820.Spec : Prop :=
  ∀ n, P8875125791375196820.a n = A018183 n

end A018183

/-!
# A018184: Powers of fifth root of 24 rounded to nearest integer.

The programs for A018184, the canonical program `A018184.P13875373849819010364` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018184 has offset 0).

The definition of A018184 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 329 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A018184.P13875373849819010364

`round(24^(n/5))%(A048488(n+1)+8)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A018184

/-- `round(24^(n/5))%(A048488(n+1)+8)` -/
def P13875373849819010364.Spec : Prop :=
  ∀ n, P13875373849819010364.a n = A018184 n

theorem P13875373849819010364.correct : P13875373849819010364.Spec := by
  intro n
  simp only [A018184]

end A018184

/-! ## A018184.P1552827995331501547

`round(24^(n/5))%A159696(n+1)`
-/

namespace A018184.P1552827995331501547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((24 : ℝ) ^ ((n : ℚ) / 5 : ℝ))) (A159696 (n + 1))

end

end A018184.P1552827995331501547

namespace A018184

/-- `round(24^(n/5))%A159696(n+1)` -/
def P1552827995331501547.Spec : Prop :=
  ∀ n, P1552827995331501547.a n = A018184 n

end A018184

/-! ## A018184.P2317626450586813977

`round(sqrt(A018185(2*n)))`
-/

namespace A018184.P2317626450586813977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A018185 (2 * n) : ℝ))

end

end A018184.P2317626450586813977

namespace A018184

/-- `round(sqrt(A018185(2*n)))` -/
def P2317626450586813977.Spec : Prop :=
  ∀ n, P2317626450586813977.a n = A018184 n

end A018184

/-! ## A018184.P9355040382713854389

`ceil(A018185(2*n)/A018185(n))`
-/

namespace A018184.P9355040382713854389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A018185 (2 * n) : ℚ) / (A018185 n : ℚ)⌉

end

end A018184.P9355040382713854389

namespace A018184

/-- `ceil(A018185(2*n)/A018185(n))` -/
def P9355040382713854389.Spec : Prop :=
  ∀ n, P9355040382713854389.a n = A018184 n

end A018184

/-! ## A018184.P12928121531403632016

`round(root(A017977(n), 5)²)`
-/

namespace A018184.P12928121531403632016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((A017977 n : ℝ) ^ (1 / (5 : ℝ))) ^ 2)

end

end A018184.P12928121531403632016

namespace A018184

/-- `round(root(A017977(n), 5)²)` -/
def P12928121531403632016.Spec : Prop :=
  ∀ n, P12928121531403632016.a n = A018184 n

end A018184

/-! ## A018184.P12337734562711113838

`round(root(A017978(n), 5)²)`
-/

namespace A018184.P12337734562711113838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((A017978 n : ℝ) ^ (1 / (5 : ℝ))) ^ 2)

end

end A018184.P12337734562711113838

namespace A018184

/-- `round(root(A017978(n), 5)²)` -/
def P12337734562711113838.Spec : Prop :=
  ∀ n, P12337734562711113838.a n = A018184 n

end A018184

/-! ## A018184.P17429233521665527310

`round(root(A009968(n), 5))`
-/

namespace A018184.P17429233521665527310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A009968 n : ℝ) ^ (1 / (5 : ℝ)))

end

end A018184.P17429233521665527310

namespace A018184

/-- `round(root(A009968(n), 5))` -/
def P17429233521665527310.Spec : Prop :=
  ∀ n, P17429233521665527310.a n = A018184 n

end A018184

/-!
# A018185: Powers of fifth root of 24 rounded up.

The programs for A018185, the canonical program `A018185.P5277193147444695055` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018185 has offset 0).

The definition of A018185 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 363 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A018185.P6325864586771700975

`ceil(24^(n/5))`
-/

namespace A018185.P6325864586771700975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(24 : ℝ) ^ ((n : ℚ) / 5 : ℝ)⌉

end

end A018185.P6325864586771700975

namespace A018185

/-- `ceil(24^(n/5))` -/
def P6325864586771700975.Spec : Prop :=
  ∀ n, P6325864586771700975.a n = A018185 n

end A018185

/-! ## A018185.P5277193147444695055

`A018183(n)+A011558(n)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A018185

/-- `A018183(n)+A011558(n)` -/
def P5277193147444695055.Spec : Prop :=
  ∀ n, P5277193147444695055.a n = A018185 n

theorem P5277193147444695055.correct : P5277193147444695055.Spec := by
  intro n
  simp only [A018185]

end A018185

/-! ## A018185.P15868233326604175628

`A018183(n)+abs(A330025(n))`
-/

namespace A018185.P15868233326604175628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018183 n + |A330025 n|

end

end A018185.P15868233326604175628

namespace A018185

/-- `A018183(n)+abs(A330025(n))` -/
def P15868233326604175628.Spec : Prop :=
  ∀ n, P15868233326604175628.a n = A018185 n

end A018185

/-! ## A018185.P11785199500783924512

`A018183(n)+A080891(n)²`
-/

namespace A018185.P11785199500783924512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018183 n + A080891 n ^ 2

end

end A018185.P11785199500783924512

namespace A018185

/-- `A018183(n)+A080891(n)²` -/
def P11785199500783924512.Spec : Prop :=
  ∀ n, P11785199500783924512.a n = A018185 n

end A018185

/-! ## A018185.P8412998142775741468

`A018183(n)+Δ[A090223(n)]`
-/

namespace A018185.P8412998142775741468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090223 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018183 n + (f1 (n + 1) - f1 n)

end

end A018185.P8412998142775741468

namespace A018185

/-- `A018183(n)+Δ[A090223(n)]` -/
def P8412998142775741468.Spec : Prop :=
  ∀ n, P8412998142775741468.a n = A018185 n

end A018185

/-!
# A018186: a(n+2) = 3*a(n) - a(n-2) with a(0) = 1, a(1) = 3, a(2) = 6.

The programs for A018186, the canonical program `A018186.P12887403914497736875` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018186 has offset 0).

The definition of A018186 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 385 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A018186.P2836814432005662956

`ogf((1+3x+3x^2)/(1-3x^2-x^4))`
-/

namespace A018186.P2836814432005662956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3, 3] [1, 0, -3, 0, -1] n

end

end A018186.P2836814432005662956

namespace A018186

/-- `ogf((1+3x+3x^2)/(1-3x^2-x^4))` -/
def P2836814432005662956.Spec : Prop :=
  ∀ n, P2836814432005662956.a n = A018186 n

end A018186

/-! ## A018186.P12887403914497736875

`3*a(n-2)+a(n-4)` with `a(0)=1, a(1)=3, a(2)=6, a(3)=9`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A018186

/-- `3*a(n-2)+a(n-4)` -/
def P12887403914497736875.Spec : Prop :=
  ∀ n, (P12887403914497736875.a n : ℤ) = A018186 n

theorem P12887403914497736875.correct : P12887403914497736875.Spec := by
  intro n
  simp only [A018186]

end A018186

/-! ## A018186.P11514131971645741170

`A249579(2*(n+3))-Δ[A249579(2*n)]`
-/

namespace A018186.P11514131971645741170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249579 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249579 (2 * (n + 3)) - (f1 (n + 1) - f1 n)

end

end A018186.P11514131971645741170

namespace A018186

/-- `A249579(2*(n+3))-Δ[A249579(2*n)]` -/
def P11514131971645741170.Spec : Prop :=
  ∀ n, P11514131971645741170.a n = A018186 n

end A018186

/-! ## A018186.P2372078174080301164

`A305889(n+2)+A249579(A014601(n+1))`
-/

namespace A018186.P2372078174080301164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305889 (n + 2) + A249579 (A014601 (n + 1)).toNat

end

end A018186.P2372078174080301164

namespace A018186

/-- `A305889(n+2)+A249579(A014601(n+1))` -/
def P2372078174080301164.Spec : Prop :=
  ∀ n, P2372078174080301164.a n = A018186 n

end A018186

/-! ## A018186.P8790323298842452569

`A305889(n+1)+∪[A249579(4*n+5), A052991(n)]`
-/

namespace A018186.P8790323298842452569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249579 (4 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052991 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305889 (n + 1) + (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ)

end

end A018186.P8790323298842452569

namespace A018186

/-- `A305889(n+1)+∪[A249579(4*n+5), A052991(n)]` -/
def P8790323298842452569.Spec : Prop :=
  ∀ n, P8790323298842452569.a n = A018186 n

end A018186

/-! ## A018186.P15367152889752851461

`A249579(2*(n+1))+A249579(2*n+3)+A249579(2*n)`
-/

namespace A018186.P15367152889752851461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249579 (2 * (n + 1)) + (A249579 (2 * n + 3) + A249579 (2 * n))

end

end A018186.P15367152889752851461

namespace A018186

/-- `A249579(2*(n+1))+A249579(2*n+3)+A249579(2*n)` -/
def P15367152889752851461.Spec : Prop :=
  ∀ n, P15367152889752851461.a n = A018186 n

end A018186

/-!
# A018188: The $620 prime list.

The programs for A018188, there is no canonical definition to state claims against.
-/

/-! ## A018188.P1495584671302399322

`A348845(A092153(n+1))`
-/

namespace A018188.P1495584671302399322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348845 (A092153 (n + 1)).toNat

end

end A018188.P1495584671302399322

/-!
# A018189: Population of "Triangle" cellular automaton at n-th generation.

The programs for A018189, there is no canonical definition to state claims against.
-/

/-! ## A018189.P17826828195034291862

`A023995(record[A170980(n)])`
-/

namespace A018189.P17826828195034291862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170980 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023995 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A018189.P17826828195034291862

/-! ## A018189.P17309738775838440800

`A023995(A087027(n+1))`
-/

namespace A018189.P17309738775838440800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023995 (A087027 (n + 1)).toNat

end

end A018189.P17309738775838440800

/-! ## A018189.P7403160599221075870

`filter[A023995(n+1), A105470(#)]`
-/

namespace A018189.P7403160599221075870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023995 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A105470 (f1 j).toNat = 1) n)

end

end A018189.P7403160599221075870

/-! ## A018189.P5293075683238175637

`filter[A023995(n+1), A303300(#)]`
-/

namespace A018189.P5293075683238175637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023995 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A303300 (f1 j).toNat = 1) n)

end

end A018189.P5293075683238175637

/-! ## A018189.P8491540246657378237

`∩[A023995(n+1), A101771(n)]`
-/

namespace A018189.P8491540246657378237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023995 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101771 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A018189.P8491540246657378237

/-!
# A018190: Number of planar simply-connected polyhexes (or benzenoid hydrocarbons) with n hexagons.

The programs for A018190, there is no canonical definition to state claims against.
-/

/-! ## A018190.P10392892995618885576

`A000228(n+1)-A038144(n+1)`
-/

namespace A018190.P10392892995618885576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000228 (n + 1) - A038144 (n + 1)

end

end A018190.P10392892995618885576

/-! ## A018190.P1742262956136116495

`A000228(n+1)+A038144(n+1)*A057428(n)`
-/

namespace A018190.P1742262956136116495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000228 (n + 1) + A038144 (n + 1) * A057428 n

end

end A018190.P1742262956136116495

/-! ## A018190.P10996480135710599905

`A030225(n+1)+A030226(n+1)-A038144(n+1)`
-/

namespace A018190.P10996480135710599905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030225 (n + 1) + (A030226 (n + 1) - A038144 (n + 1))

end

end A018190.P10996480135710599905

/-! ## A018190.P7982051949885510125

`A006535(n+1)-A030226(n+1)-A038144(n+1)`
-/

namespace A018190.P7982051949885510125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006535 (n + 1) - A030226 (n + 1) - A038144 (n + 1)

end

end A018190.P7982051949885510125

/-! ## A018190.P5467075392955454683

`(A030225(n+1)+A006535(n+1))/2-A038144(n+1)`
-/

namespace A018190.P5467075392955454683
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030225 (n + 1) + A006535 (n + 1) : ℚ) / 2 - (A038144 (n + 1) : ℚ)

end

end A018190.P5467075392955454683

/-!
# A018191: a(n) = Sum_{k=0..n} binomial(n, k) * k! / floor(k/2)!.

The programs for A018191, the canonical program `A018191.P5198761685577893535` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018191 has offset 0).

The definition of A018191 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 103 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A018191.P5198761685577893535

`A291632(n)+A047974(n)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A018191

/-- `A291632(n)+A047974(n)` -/
def P5198761685577893535.Spec : Prop :=
  ∀ n, P5198761685577893535.a n = A018191 n

theorem P5198761685577893535.correct : P5198761685577893535.Spec := by
  intro n
  simp only [A018191]

end A018191

/-! ## A018191.P978025367572680332

`A291632(n)+A122832(A000217(n))`
-/

namespace A018191.P978025367572680332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291632 n + A122832 (A000217 n).toNat

end

end A018191.P978025367572680332

namespace A018191

/-- `A291632(n)+A122832(A000217(n))` -/
def P978025367572680332.Spec : Prop :=
  ∀ n, P978025367572680332.a n = A018191 n

end A018191

/-! ## A018191.P10627679573363274478

`A291632(n)+A291632(n+1)/(n+1)`
-/

namespace A018191.P10627679573363274478
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A291632 n : ℚ) + (A291632 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A018191.P10627679573363274478

namespace A018191

/-- `A291632(n)+A291632(n+1)/(n+1)` -/
def P10627679573363274478.Spec : Prop :=
  ∀ n, P10627679573363274478.a n = (A018191 n : ℚ)

end A018191

/-! ## A018191.P11510738731095233616

`A293669(∑[n+2]-1)+A291632(n)`
-/

namespace A018191.P11510738731095233616
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293669 (∑ j ∈ Finset.range (n + 1), f1 j - 1) + A291632 n

end

end A018191.P11510738731095233616

namespace A018191

/-- `A293669(∑[n+2]-1)+A291632(n)` -/
def P11510738731095233616.Spec : Prop :=
  ∀ n, P11510738731095233616.a n = A018191 n

end A018191

/-! ## A018191.P10318072644756516152

`A291632(n)+or(1, A261764(A133263(n)))`
-/

namespace A018191.P10318072644756516152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291632 n + Int.lor 1 (A261764 (A133263 n).toNat)

end

end A018191.P10318072644756516152

namespace A018191

/-- `A291632(n)+or(1, A261764(A133263(n)))` -/
def P10318072644756516152.Spec : Prop :=
  ∀ n, P10318072644756516152.a n = A018191 n

end A018191

/-! ## A018191.P12853722169869439442

`A291632(n)+A261764(A133263(n)%A027379(n))`
-/

namespace A018191.P12853722169869439442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291632 n + A261764 (Int.tmod (A133263 n) (A027379 n)).toNat

end

end A018191.P12853722169869439442

namespace A018191

/-- `A291632(n)+A261764(A133263(n)%A027379(n))` -/
def P12853722169869439442.Spec : Prop :=
  ∀ n, P12853722169869439442.a n = A018191 n

end A018191

/-! ## A018191.P3704368785003180914

`A054499(n+1)-A054938(n+1)`
-/

namespace A018191.P3704368785003180914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054499 (n + 1) - A054938 (n + 1)

end

end A018191.P3704368785003180914

namespace A018191

/-- `A054499(n+1)-A054938(n+1)` -/
def P3704368785003180914.Spec : Prop :=
  ∀ n, P3704368785003180914.a n = A018191 n

end A018191

/-! ## A018191.P18125069446941074705

`2*A054499(n+1)-A007769(n+1)`
-/

namespace A018191.P18125069446941074705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A054499 (n + 1) - A007769 (n + 1)

end

end A018191.P18125069446941074705

namespace A018191

/-- `2*A054499(n+1)-A007769(n+1)` -/
def P18125069446941074705.Spec : Prop :=
  ∀ n, P18125069446941074705.a n = A018191 n

end A018191

/-! ## A018191.P12159719309818263901

`A007769(n+1)-(A054938(n+1)+A054938(n+1))`
-/

namespace A018191.P12159719309818263901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007769 (n + 1) - (A054938 (n + 1) + A054938 (n + 1))

end

end A018191.P12159719309818263901

namespace A018191

/-- `A007769(n+1)-(A054938(n+1)+A054938(n+1))` -/
def P12159719309818263901.Spec : Prop :=
  ∀ n, P12159719309818263901.a n = A018191 n

end A018191

/-!
# A018192: Number of chord diagrams of degree n with an isolated chord.

The programs for A018192, there is no canonical definition to state claims against.
-/

/-! ## A018192.P16054602633032672796

`or(A068499(A076325(n+1)), A126736(n))`
-/

namespace A018192.P16054602633032672796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A068499 (A076325 (n + 1)).toNat) (A126736 n)

end

end A018192.P16054602633032672796

/-! ## A018192.P13858752947190881878

`or(n, A007737(A060946(n+1)))`
-/

namespace A018192.P13858752947190881878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A007737 (A060946 (n + 1)).toNat)

end

end A018192.P13858752947190881878

/-!
# A018193: Number of chord diagrams of degree n with an isolated chord of length 1.

The programs for A018193, there is no canonical definition to state claims against.
-/

/-! ## A018193.P9176647274969795254

`A007769(n+1)-A007474(n+1)`
-/

namespace A018193.P9176647274969795254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007769 (n + 1) - A007474 (n + 1)

end

end A018193.P9176647274969795254

/-! ## A018193.P2508962064295734046

`A004524(A007788(n))+ceil(∏{e}[n+1, #+1]/2)`
-/

namespace A018193.P2508962064295734046
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A007788 n).toNat + ⌈((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℚ) / 2⌉

end

end A018193.P2508962064295734046

/-!
# A018194: Number of steps for S(S(..S(n)..)) to converge, where S is the Kempner function A002034.

The programs for A018194, there is no canonical definition to state claims against.
-/

/-! ## A018194.P3027832570364906611

`A055640(C(A213356(n+3), A334107(n+1)))`
-/

namespace A018194.P3027832570364906611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055640 (Nat.choose (A213356 (n + 3)).toNat (A334107 (n + 1)).toNat)

end

end A018194.P3027832570364906611

/-! ## A018194.P17493817148979130537

`A260311(A005187(A000188(n+1)*A329620(n+1)))`
-/

namespace A018194.P17493817148979130537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260311 (A005187 (A000188 (n + 1) * A329620 (n + 1)).toNat).toNat

end

end A018194.P17493817148979130537

/-! ## A018194.P5090769893183809261

`A095248(A339010(n+1)!)`
-/

namespace A018194.P5090769893183809261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095248 (Nat.factorial (A339010 (n + 1)).toNat)

end

end A018194.P5090769893183809261

/-! ## A018194.P9500973341843000810

`A348043(∏{p}[n+1, #^val(n+1, #²)]*A294873(n+1))`
-/

namespace A018194.P9500973341843000810
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348043 (((∏ p ∈ Nat.primeFactors (f1 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2) : ℕ) : ℤ) * A294873 (n + 1)).toNat

end

end A018194.P9500973341843000810

/-! ## A018194.P8564252085249932770

`A393547(A334205(n+1))`
-/

namespace A018194.P8564252085249932770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393547 (A334205 (n + 1)).toNat

end

end A018194.P8564252085249932770

/-!
# A018195: Possible numbers of complements of topologies on 4 points.

The programs for A018195, there is no canonical definition to state claims against.
-/

/-! ## A018195.P15462147466876193464

`record[A340583(∑[A187038(n)])]`
-/

namespace A018195.P15462147466876193464
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187038 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340583 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018195.P15462147466876193464

/-! ## A018195.P14422872804620844189

`record[gcd(A023435(n), A171848(n+1))]`
-/

namespace A018195.P14422872804620844189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A023435 n) (A171848 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018195.P14422872804620844189

/-! ## A018195.P13107085208458585440

`∑[gcd(A159183(n+7), A288938(n+1))]`
-/

namespace A018195.P13107085208458585440
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A159183 (n + 7)) (A288938 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A018195.P13107085208458585440

/-! ## A018195.P10311106342200687429

`record[gcd(A126290(n+1), A308738(n+2))]`
-/

namespace A018195.P10311106342200687429
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A126290 (n + 1)) (A308738 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018195.P10311106342200687429

/-! ## A018195.P17293246053339553619

`A326082(A265070(n))+A007090(n)`
-/

namespace A018195.P17293246053339553619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326082 (A265070 n).toNat + A007090 n

end

end A018195.P17293246053339553619

/-!
# A018196: Possible numbers of complements of topologies on 5 points.

The programs for A018196, the canonical program `A018196.P10655049329318647614` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018196 has offset 0).

The definition of A018196 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A018196.P10655049329318647614

`ogf((-1-2x+7x^3+3x^4-2x^5)/(-1+2x))`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A018196

/-- `ogf((-1-2x+7x^3+3x^4-2x^5)/(-1+2x))` -/
def P10655049329318647614.Spec : Prop :=
  ∀ n, P10655049329318647614.a n = A018196 n

theorem P10655049329318647614.correct : P10655049329318647614.Spec := by
  intro n
  simp only [A018196]

end A018196

/-! ## A018196.P5949938203645772766

`record[A266412(A183296(n+1))]`
-/

namespace A018196.P5949938203645772766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266412 (A183296 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018196.P5949938203645772766

namespace A018196

/-- `record[A266412(A183296(n+1))]` -/
def P5949938203645772766.Spec : Prop :=
  ∀ n, P5949938203645772766.a n = A018196 n

end A018196

/-! ## A018196.P17391456824992977889

`record[A093879(2*(n+2))*A266412(n+1)]`
-/

namespace A018196.P17391456824992977889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093879 (2 * (n + 2)) * A266412 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018196.P17391456824992977889

namespace A018196

/-- `record[A093879(2*(n+2))*A266412(n+1)]` -/
def P17391456824992977889.Spec : Prop :=
  ∀ n, P17391456824992977889.a n = A018196 n

end A018196

/-! ## A018196.P17305555316162754933

`record[A266412(n+1)/A051135(2*n+5)]`
-/

namespace A018196.P17305555316162754933
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A266412 (n + 1) : ℚ) / (A051135 (2 * n + 5) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018196.P17305555316162754933

namespace A018196

/-- `record[A266412(n+1)/A051135(2*n+5)]` -/
def P17305555316162754933.Spec : Prop :=
  ∀ n, P17305555316162754933.a n = (A018196 n : ℚ)

end A018196

/-! ## A018196.P72828717109977593

`eq[A114164(A127446(n+1)), A160588(n)]`
-/

namespace A018196.P72828717109977593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114164 (A127446 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160588 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A018196.P72828717109977593

namespace A018196

/-- `eq[A114164(A127446(n+1)), A160588(n)]` -/
def P72828717109977593.Spec : Prop :=
  ∀ n, (P72828717109977593.a n : ℤ) = A018196 n

end A018196

/-!
# A018199: Possible numbers of complements of topologies on 8 points.

The programs for A018199, there is no canonical definition to state claims against.
-/

/-! ## A018199.P13600957173136816264

`A383515(a(n-1))` with `a(0)=1, a(1)=7, a(2)=36`
-/

namespace A018199.P13600957173136816264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 7, 36] fun n a =>
  A383515 (a (n - 1)).toNat

end

end A018199.P13600957173136816264

