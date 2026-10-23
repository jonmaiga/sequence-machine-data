import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
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
import Seq.B000.C029
import Seq.B000.C030
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
import Seq.B001.C007
import Seq.B001.C008
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
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B007.C000
import Seq.B007.C001
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
# A024500: a(n) = [ C(2n,n)/n^2 ].

The programs for A024500, the canonical program `A024500.P15189284746984489905` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024500 has offset 1).

The definition of A024500 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A024500.P15189284746984489905

`floor(C(2*(n+1), n+1)/(n+1)²)`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A024500

/-- `floor(C(2*(n+1), n+1)/(n+1)²)` -/
def P15189284746984489905.Spec : Prop :=
  ∀ n, P15189284746984489905.a n = A024500 (n + 1)

theorem P15189284746984489905.correct : P15189284746984489905.Spec := by
  intro n
  simp only [A024500, Nat.add_sub_cancel]

end A024500

/-! ## A024500.P17857356509619782634

`floor(A024498(n+1)/(n+1))`
-/

namespace A024500.P17857356509619782634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A024498 (n + 1) : ℚ) / (n + 1 : ℚ)⌋

end

end A024500.P17857356509619782634

namespace A024500

/-- `floor(A024498(n+1)/(n+1))` -/
def P17857356509619782634.Spec : Prop :=
  ∀ n, P17857356509619782634.a n = A024500 (n + 1)

end A024500

/-! ## A024500.P5811040520590608469

`floor((n+2)/(n+1)²*A000108(n+1))`
-/

namespace A024500.P5811040520590608469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 2 : ℚ) / ((n + 1) ^ 2 : ℚ) * (A000108 (n + 1) : ℚ)⌋

end

end A024500.P5811040520590608469

namespace A024500

/-- `floor((n+2)/(n+1)²*A000108(n+1))` -/
def P5811040520590608469.Spec : Prop :=
  ∀ n, P5811040520590608469.a n = A024500 (n + 1)

end A024500

/-! ## A024500.P13643791600848285190

`floor(A000984(n+1)/(n+1)²)`
-/

namespace A024500.P13643791600848285190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000984 (n + 1) : ℚ) / ((n + 1) ^ 2 : ℚ)⌋

end

end A024500.P13643791600848285190

namespace A024500

/-- `floor(A000984(n+1)/(n+1)²)` -/
def P13643791600848285190.Spec : Prop :=
  ∀ n, P13643791600848285190.a n = A024500 (n + 1)

end A024500

/-! ## A024500.P17856770640086844545

`floor(2*A001700(n)/(n+1)²)`
-/

namespace A024500.P17856770640086844545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 * A001700 n : ℚ) / ((n + 1) ^ 2 : ℚ)⌋

end

end A024500.P17856770640086844545

namespace A024500

/-- `floor(2*A001700(n)/(n+1)²)` -/
def P17856770640086844545.Spec : Prop :=
  ∀ n, P17856770640086844545.a n = A024500 (n + 1)

end A024500

/-! ## A024500.P13365670983794157033

`floor(2/∑[2*n+1]*C(2*n+1, n))`
-/

namespace A024500.P13365670983794157033
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 / ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) * (Nat.choose (2 * n + 1) n : ℚ)⌋

end

end A024500.P13365670983794157033

namespace A024500

/-- `floor(2/∑[2*n+1]*C(2*n+1, n))` -/
def P13365670983794157033.Spec : Prop :=
  ∀ n, P13365670983794157033.a n = A024500 (n + 1)

end A024500

/-! ## A024500.P1339516949526172576

`floor(A007318(∑[4*(n+1)])/(n+1)²)`
-/

namespace A024500.P1339516949526172576
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / ((n + 1) ^ 2 : ℚ)⌋

end

end A024500.P1339516949526172576

namespace A024500

/-- `floor(A007318(∑[4*(n+1)])/(n+1)²)` -/
def P1339516949526172576.Spec : Prop :=
  ∀ n, P1339516949526172576.a n = A024500 (n + 1)

end A024500

/-!
# A024501: a(n) = floor(C(4n,2n)/C(4n,n)).

The programs for A024501, the canonical program `A024501.P5657592723387731127` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024501 has offset 0).

The definition of A024501 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(C(4*n, 2*n)/C(4*n, n))` (program `A024501.P5657592723387731127`, by `A024501.P5657592723387731127.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A024501.P17105066192981010883

`floor(C(3*n, n)/C(2*n, n))`
-/

namespace A024501.P17105066192981010883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.choose (3 * n) n : ℚ) / (Nat.choose (2 * n) n : ℚ)⌋

end

end A024501.P17105066192981010883

namespace A024501

/-- `floor(C(3*n, n)/C(2*n, n))` -/
def P17105066192981010883.Spec : Prop :=
  ∀ n, P17105066192981010883.a n = A024501 n

end A024501

/-! ## A024501.P5657592723387731127

`floor(C(4*n, 2*n)/C(4*n, n))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A024501

/-- `floor(C(4*n, 2*n)/C(4*n, n))` -/
def P5657592723387731127.Spec : Prop :=
  ∀ n, P5657592723387731127.a n = A024501 n

theorem P5657592723387731127.correct : P5657592723387731127.Spec := by
  intro n
  simp only [A024501]

end A024501

/-! ## A024501.P2645887947286377166

`floor(A005809(n)/A000984(n))`
-/

namespace A024501.P2645887947286377166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A005809 n : ℚ) / (A000984 n : ℚ)⌋

end

end A024501.P2645887947286377166

namespace A024501

/-- `floor(A005809(n)/A000984(n))` -/
def P2645887947286377166.Spec : Prop :=
  ∀ n, P2645887947286377166.a n = A024501 n

end A024501

/-! ## A024501.P2041627022211299946

`floor(A264772(∑[n])/A000984(n))`
-/

namespace A024501.P2041627022211299946
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A264772 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / (A000984 n : ℚ)⌋

end

end A024501.P2041627022211299946

namespace A024501

/-- `floor(A264772(∑[n])/A000984(n))` -/
def P2041627022211299946.Spec : Prop :=
  ∀ n, P2041627022211299946.a n = A024501 n

end A024501

/-! ## A024501.P10945149411171610395

`floor(A005809(n)/record[A081668(n)])`
-/

namespace A024501.P10945149411171610395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081668 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A005809 n : ℚ) / (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)⌋

end

end A024501.P10945149411171610395

namespace A024501

/-- `floor(A005809(n)/record[A081668(n)])` -/
def P10945149411171610395.Spec : Prop :=
  ∀ n, P10945149411171610395.a n = A024501 n

end A024501

/-! ## A024501.P12044090326489345473

`floor(A005809(n)/record[A126869(n)])`
-/

namespace A024501.P12044090326489345473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126869 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A005809 n : ℚ) / (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)⌋

end

end A024501.P12044090326489345473

namespace A024501

/-- `floor(A005809(n)/record[A126869(n)])` -/
def P12044090326489345473.Spec : Prop :=
  ∀ n, P12044090326489345473.a n = A024501 n

end A024501

/-! ## A024501.P7214049979187553348

`floor(A005809(n)/record[A126930(n)])`
-/

namespace A024501.P7214049979187553348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126930 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A005809 n : ℚ) / (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)⌋

end

end A024501.P7214049979187553348

namespace A024501

/-- `floor(A005809(n)/record[A126930(n)])` -/
def P7214049979187553348.Spec : Prop :=
  ∀ n, P7214049979187553348.a n = A024501 n

end A024501

/-! ## A024501.P1584404797373897256

`floor(record[A065942(n)/A126930(n)])`
-/

namespace A024501.P1584404797373897256
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065942 n : ℚ) / (A126930 n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)⌋

end

end A024501.P1584404797373897256

namespace A024501

/-- `floor(record[A065942(n)/A126930(n)])` -/
def P1584404797373897256.Spec : Prop :=
  ∀ n, P1584404797373897256.a n = A024501 n

end A024501

/-! ## A024501.P14116653447726295149

`floor(A005809(n)/A001405(2*n))`
-/

namespace A024501.P14116653447726295149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A005809 n : ℚ) / (A001405 (2 * n) : ℚ)⌋

end

end A024501.P14116653447726295149

namespace A024501

/-- `floor(A005809(n)/A001405(2*n))` -/
def P14116653447726295149.Spec : Prop :=
  ∀ n, P14116653447726295149.a n = A024501 n

end A024501

/-! ## A024501.P3395783303633104297

`floor(A065942(2*n)/A000984(n))`
-/

namespace A024501.P3395783303633104297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A065942 (2 * n) : ℚ) / (A000984 n : ℚ)⌋

end

end A024501.P3395783303633104297

namespace A024501

/-- `floor(A065942(2*n)/A000984(n))` -/
def P3395783303633104297.Spec : Prop :=
  ∀ n, P3395783303633104297.a n = A024501 n

end A024501

/-! ## A024501.P2624085644371907258

`floor(A005809(n)/A063886(2*n))`
-/

namespace A024501.P2624085644371907258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A005809 n : ℚ) / (A063886 (2 * n) : ℚ)⌋

end

end A024501.P2624085644371907258

namespace A024501

/-- `floor(A005809(n)/A063886(2*n))` -/
def P2624085644371907258.Spec : Prop :=
  ∀ n, P2624085644371907258.a n = A024501 n

end A024501

/-! ## A024501.P11597267911903428507

`floor(A081204(2*n)/A000984(n))`
-/

namespace A024501.P11597267911903428507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A081204 (2 * n) : ℚ) / (A000984 n : ℚ)⌋

end

end A024501.P11597267911903428507

namespace A024501

/-- `floor(A081204(2*n)/A000984(n))` -/
def P11597267911903428507.Spec : Prop :=
  ∀ n, P11597267911903428507.a n = A024501 n

end A024501

/-! ## A024501.P4255522061822827957

`floor(A005809(n)/A081668(2*n))`
-/

namespace A024501.P4255522061822827957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A005809 n : ℚ) / (A081668 (2 * n) : ℚ)⌋

end

end A024501.P4255522061822827957

namespace A024501

/-- `floor(A005809(n)/A081668(2*n))` -/
def P4255522061822827957.Spec : Prop :=
  ∀ n, P4255522061822827957.a n = A024501 n

end A024501

/-! ## A024501.P18400356407307915851

`floor(A051033(3*n)/A000984(n))`
-/

namespace A024501.P18400356407307915851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A051033 (3 * n) : ℚ) / (A000984 n : ℚ)⌋

end

end A024501.P18400356407307915851

namespace A024501

/-- `floor(A051033(3*n)/A000984(n))` -/
def P18400356407307915851.Spec : Prop :=
  ∀ n, P18400356407307915851.a n = A024501 n

end A024501

/-! ## A024501.P13376506524729360776

`floor(A303259(Δ[n²])/A000984(n))`
-/

namespace A024501.P13376506524729360776
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A303259 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / (A000984 n : ℚ)⌋

end

end A024501.P13376506524729360776

namespace A024501

/-- `floor(A303259(Δ[n²])/A000984(n))` -/
def P13376506524729360776.Spec : Prop :=
  ∀ n, P13376506524729360776.a n = A024501 n

end A024501

/-! ## A024501.P17795524385059139561

`floor(A065942(2*n)/record[A081668(n)])`
-/

namespace A024501.P17795524385059139561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081668 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A065942 (2 * n) : ℚ) / (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)⌋

end

end A024501.P17795524385059139561

namespace A024501

/-- `floor(A065942(2*n)/record[A081668(n)])` -/
def P17795524385059139561.Spec : Prop :=
  ∀ n, P17795524385059139561.a n = A024501 n

end A024501

/-! ## A024501.P1713709211208114861

`floor(A081204(2*n)/record[A081668(n)])`
-/

namespace A024501.P1713709211208114861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081668 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A081204 (2 * n) : ℚ) / (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)⌋

end

end A024501.P1713709211208114861

namespace A024501

/-- `floor(A081204(2*n)/record[A081668(n)])` -/
def P1713709211208114861.Spec : Prop :=
  ∀ n, P1713709211208114861.a n = A024501 n

end A024501

/-! ## A024501.P184916889111122039

`floor(A065942(2*n)/record[A126869(n)])`
-/

namespace A024501.P184916889111122039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126869 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A065942 (2 * n) : ℚ) / (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)⌋

end

end A024501.P184916889111122039

namespace A024501

/-- `floor(A065942(2*n)/record[A126869(n)])` -/
def P184916889111122039.Spec : Prop :=
  ∀ n, P184916889111122039.a n = A024501 n

end A024501

/-! ## A024501.P8434079867975780598

`floor(A065942(2*n)/A001405(2*n))`
-/

namespace A024501.P8434079867975780598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A065942 (2 * n) : ℚ) / (A001405 (2 * n) : ℚ)⌋

end

end A024501.P8434079867975780598

namespace A024501

/-- `floor(A065942(2*n)/A001405(2*n))` -/
def P8434079867975780598.Spec : Prop :=
  ∀ n, P8434079867975780598.a n = A024501 n

end A024501

/-! ## A024501.P13612961634286431269

`floor(A065942(2*n)/A063886(2*n))`
-/

namespace A024501.P13612961634286431269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A065942 (2 * n) : ℚ) / (A063886 (2 * n) : ℚ)⌋

end

end A024501.P13612961634286431269

namespace A024501

/-- `floor(A065942(2*n)/A063886(2*n))` -/
def P13612961634286431269.Spec : Prop :=
  ∀ n, P13612961634286431269.a n = A024501 n

end A024501

/-!
# A024502: a(n) = floor(C(2n,n)/2^n).

The programs for A024502, the canonical program `A024502.P13996512643628191464` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024502 has offset 0).

The definition of A024502 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(C(2*n, n)/2^n)` (program `A024502.P13996512643628191464`, by `A024502.P13996512643628191464.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A024502.P13996512643628191464

`floor(C(2*n, n)/2^n)`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A024502

/-- `floor(C(2*n, n)/2^n)` -/
def P13996512643628191464.Spec : Prop :=
  ∀ n, P13996512643628191464.a n = A024502 n

theorem P13996512643628191464.correct : P13996512643628191464.Spec := by
  intro n
  simp only [A024502]

end A024502

/-! ## A024502.P11305505446867947360

`floor(A001790(n)/A060818(n))`
-/

namespace A024502.P11305505446867947360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001790 n : ℚ) / (A060818 n : ℚ)⌋

end

end A024502.P11305505446867947360

namespace A024502

/-- `floor(A001790(n)/A060818(n))` -/
def P11305505446867947360.Spec : Prop :=
  ∀ n, P11305505446867947360.a n = A024502 n

end A024502

/-! ## A024502.P10880241898191473958

`floor(A000984(n)/2^n)`
-/

namespace A024502.P10880241898191473958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000984 n : ℚ) / (2 ^ n : ℚ)⌋

end

end A024502.P10880241898191473958

namespace A024502

/-- `floor(A000984(n)/2^n)` -/
def P10880241898191473958.Spec : Prop :=
  ∀ n, P10880241898191473958.a n = A024502 n

end A024502

/-! ## A024502.P8596971196650181041

`floor(A244174(n)/2^n)`
-/

namespace A024502.P8596971196650181041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A244174 n : ℚ) / (2 ^ n : ℚ)⌋

end

end A024502.P8596971196650181041

namespace A024502

/-- `floor(A244174(n)/2^n)` -/
def P8596971196650181041.Spec : Prop :=
  ∀ n, P8596971196650181041.a n = A024502 n

end A024502

/-! ## A024502.P11726340642516371545

`floor(A001405(2*n)/2^n)`
-/

namespace A024502.P11726340642516371545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001405 (2 * n) : ℚ) / (2 ^ n : ℚ)⌋

end

end A024502.P11726340642516371545

namespace A024502

/-- `floor(A001405(2*n)/2^n)` -/
def P11726340642516371545.Spec : Prop :=
  ∀ n, P11726340642516371545.a n = A024502 n

end A024502

/-! ## A024502.P6964805845070292339

`floor(A088218(n)/ceil(2^(n-1)))`
-/

namespace A024502.P6964805845070292339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A088218 n : ℚ) / (⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ : ℚ)⌋

end

end A024502.P6964805845070292339

namespace A024502

/-- `floor(A088218(n)/ceil(2^(n-1)))` -/
def P6964805845070292339.Spec : Prop :=
  ∀ n, P6964805845070292339.a n = A024502 n

end A024502

/-! ## A024502.P16222676956399160564

`floor((A260878(n)-1)/A011782(n))`
-/

namespace A024502.P16222676956399160564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A260878 n - 1 : ℚ) / (A011782 n : ℚ)⌋

end

end A024502.P16222676956399160564

namespace A024502

/-- `floor((A260878(n)-1)/A011782(n))` -/
def P16222676956399160564.Spec : Prop :=
  ∀ n, P16222676956399160564.a n = A024502 n

end A024502

/-! ## A024502.P12471477581587769677

`floor(A126930(2*n)/A000079(n))`
-/

namespace A024502.P12471477581587769677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A126930 (2 * n) : ℚ) / (A000079 n : ℚ)⌋

end

end A024502.P12471477581587769677

namespace A024502

/-- `floor(A126930(2*n)/A000079(n))` -/
def P12471477581587769677.Spec : Prop :=
  ∀ n, P12471477581587769677.a n = A024502 n

end A024502

/-! ## A024502.P17007117700046326226

`floor(A210736(2*n)/A011782(n))`
-/

namespace A024502.P17007117700046326226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A210736 (2 * n) : ℚ) / (A011782 n : ℚ)⌋

end

end A024502.P17007117700046326226

namespace A024502

/-- `floor(A210736(2*n)/A011782(n))` -/
def P17007117700046326226.Spec : Prop :=
  ∀ n, P17007117700046326226.a n = A024502 n

end A024502

/-! ## A024502.P3224334907393715414

`floor((A045992(n)+n)/A000079(n))`
-/

namespace A024502.P3224334907393715414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A045992 n + (n : ℤ) : ℚ) / (A000079 n : ℚ)⌋

end

end A024502.P3224334907393715414

namespace A024502

/-- `floor((A045992(n)+n)/A000079(n))` -/
def P3224334907393715414.Spec : Prop :=
  ∀ n, P3224334907393715414.a n = A024502 n

end A024502

/-! ## A024502.P14581207275702057536

`floor(A063886(2*n)/A011782(n+1))`
-/

namespace A024502.P14581207275702057536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A063886 (2 * n) : ℚ) / (A011782 (n + 1) : ℚ)⌋

end

end A024502.P14581207275702057536

namespace A024502

/-- `floor(A063886(2*n)/A011782(n+1))` -/
def P14581207275702057536.Spec : Prop :=
  ∀ n, P14581207275702057536.a n = A024502 n

end A024502

/-! ## A024502.P4964668209109880280

`floor(ceil(A001405(2*n)/2)/A011782(n))`
-/

namespace A024502.P4964668209109880280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(⌈(A001405 (2 * n) : ℚ) / 2⌉ : ℚ) / (A011782 n : ℚ)⌋

end

end A024502.P4964668209109880280

namespace A024502

/-- `floor(ceil(A001405(2*n)/2)/A011782(n))` -/
def P4964668209109880280.Spec : Prop :=
  ∀ n, P4964668209109880280.a n = A024502 n

end A024502

/-! ## A024502.P12921459511413196209

`floor(ceil(A063886(2*n)/2)/A011782(n))`
-/

namespace A024502.P12921459511413196209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(⌈(A063886 (2 * n) : ℚ) / 2⌉ : ℚ) / (A011782 n : ℚ)⌋

end

end A024502.P12921459511413196209

namespace A024502

/-- `floor(ceil(A063886(2*n)/2)/A011782(n))` -/
def P12921459511413196209.Spec : Prop :=
  ∀ n, P12921459511413196209.a n = A024502 n

end A024502

/-! ## A024502.P12542945918627051713

`floor(ceil(A050168(2*n)/3)/A011782(n))`
-/

namespace A024502.P12542945918627051713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(⌈(A050168 (2 * n) : ℚ) / 3⌉ : ℚ) / (A011782 n : ℚ)⌋

end

end A024502.P12542945918627051713

namespace A024502

/-- `floor(ceil(A050168(2*n)/3)/A011782(n))` -/
def P12542945918627051713.Spec : Prop :=
  ∀ n, P12542945918627051713.a n = A024502 n

end A024502

/-! ## A024502.P5394507370873627360

`floor((n+1)*(A263986(n)+A000045(n))/2^n)`
-/

namespace A024502.P5394507370873627360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n + 1 : ℤ) * (A263986 n + A000045 n) : ℚ) / (2 ^ n : ℚ)⌋

end

end A024502.P5394507370873627360

namespace A024502

/-- `floor((n+1)*(A263986(n)+A000045(n))/2^n)` -/
def P5394507370873627360.Spec : Prop :=
  ∀ n, P5394507370873627360.a n = A024502 n

end A024502

/-! ## A024502.P14286733161071101514

`floor(record[A092392(n)]/A000079(n))`
-/

namespace A024502.P14286733161071101514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092392 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (A000079 n : ℚ)⌋

end

end A024502.P14286733161071101514

namespace A024502

/-- `floor(record[A092392(n)]/A000079(n))` -/
def P14286733161071101514.Spec : Prop :=
  ∀ n, P14286733161071101514.a n = A024502 n

end A024502

/-!
# A024503: a(n) = floor(binomial(2*n,n)/3^n).

The programs for A024503, the canonical program `A024503.P16402340720374610809` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024503 has offset 0).

The definition of A024503 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(C(2*n, n)/3^n)` (program `A024503.P16402340720374610809`, by `A024503.P16402340720374610809.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A024503.P16402340720374610809

`floor(C(2*n, n)/3^n)`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A024503

/-- `floor(C(2*n, n)/3^n)` -/
def P16402340720374610809.Spec : Prop :=
  ∀ n, P16402340720374610809.a n = A024503 n

theorem P16402340720374610809.correct : P16402340720374610809.Spec := by
  intro n
  simp only [A024503]

end A024503

/-! ## A024503.P10546644165336394137

`floor((n+1)*A000108(n)/A000244(n))`
-/

namespace A024503.P10546644165336394137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℚ) * ((A000108 n : ℚ) / (A000244 n : ℚ))⌋

end

end A024503.P10546644165336394137

namespace A024503

/-- `floor((n+1)*A000108(n)/A000244(n))` -/
def P10546644165336394137.Spec : Prop :=
  ∀ n, P10546644165336394137.a n = A024503 n

end A024503

/-! ## A024503.P11015042886896906076

`floor(A000984(n)/3^n)`
-/

namespace A024503.P11015042886896906076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000984 n : ℚ) / (3 ^ n : ℚ)⌋

end

end A024503.P11015042886896906076

namespace A024503

/-- `floor(A000984(n)/3^n)` -/
def P11015042886896906076.Spec : Prop :=
  ∀ n, P11015042886896906076.a n = A024503 n

end A024503

/-! ## A024503.P9706996336209650286

`floor(A045992(n)/3^n)`
-/

namespace A024503.P9706996336209650286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A045992 n : ℚ) / (3 ^ n : ℚ)⌋

end

end A024503.P9706996336209650286

namespace A024503

/-- `floor(A045992(n)/3^n)` -/
def P9706996336209650286.Spec : Prop :=
  ∀ n, P9706996336209650286.a n = A024503 n

end A024503

/-! ## A024503.P9907373463915953103

`ceil(A000984(A028310(n))/3^n)-1`
-/

namespace A024503.P9907373463915953103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000984 (A028310 n).toNat : ℚ) / (3 ^ n : ℚ)⌉ - 1

end

end A024503.P9907373463915953103

namespace A024503

/-- `ceil(A000984(A028310(n))/3^n)-1` -/
def P9907373463915953103.Spec : Prop :=
  ∀ n, P9907373463915953103.a n = A024503 n

end A024503

/-! ## A024503.P1513561090538661889

`floor(A002457(n)/A124647(n))`
-/

namespace A024503.P1513561090538661889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A002457 n : ℚ) / (A124647 n : ℚ)⌋

end

end A024503.P1513561090538661889

namespace A024503

/-- `floor(A002457(n)/A124647(n))` -/
def P1513561090538661889.Spec : Prop :=
  ∀ n, P1513561090538661889.a n = A024503 n

end A024503

/-!
# A024504: a(n) = floor(C(2n,n)/2^(n+1)).

The programs for A024504, the canonical program `A024504.P16399340436206739207` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024504 has offset 0).

The definition of A024504 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(C(2*n, n)/2^(n+1))` (program `A024504.P16399340436206739207`, by `A024504.P16399340436206739207.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A024504.P16399340436206739207

`floor(C(2*n, n)/2^(n+1))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A024504

/-- `floor(C(2*n, n)/2^(n+1))` -/
def P16399340436206739207.Spec : Prop :=
  ∀ n, P16399340436206739207.a n = A024504 n

theorem P16399340436206739207.correct : P16399340436206739207.Spec := by
  intro n
  simp only [A024504]

end A024504

/-! ## A024504.P7320462618331347679

`floor(A024502(n)/2)`
-/

namespace A024504.P7320462618331347679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A024502 n : ℚ) / 2⌋

end

end A024504.P7320462618331347679

namespace A024504

/-- `floor(A024502(n)/2)` -/
def P7320462618331347679.Spec : Prop :=
  ∀ n, P7320462618331347679.a n = A024504 n

end A024504

/-! ## A024504.P13333641338574258384

`floor(A001790(n)/(2*A060818(n)))`
-/

namespace A024504.P13333641338574258384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001790 n : ℚ) / (2 * A060818 n : ℚ)⌋

end

end A024504.P13333641338574258384

namespace A024504

/-- `floor(A001790(n)/(2*A060818(n)))` -/
def P13333641338574258384.Spec : Prop :=
  ∀ n, P13333641338574258384.a n = A024504 n

end A024504

/-! ## A024504.P17141371136968035021

`floor(A029651(n)/A007283(n))`
-/

namespace A024504.P17141371136968035021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A029651 n : ℚ) / (A007283 n : ℚ)⌋

end

end A024504.P17141371136968035021

namespace A024504

/-- `floor(A029651(n)/A007283(n))` -/
def P17141371136968035021.Spec : Prop :=
  ∀ n, P17141371136968035021.a n = A024504 n

end A024504

/-! ## A024504.P1313504538343550730

`floor(A000984(n)/A000079(n+1))`
-/

namespace A024504.P1313504538343550730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000984 n : ℚ) / (A000079 (n + 1) : ℚ)⌋

end

end A024504.P1313504538343550730

namespace A024504

/-- `floor(A000984(n)/A000079(n+1))` -/
def P1313504538343550730.Spec : Prop :=
  ∀ n, P1313504538343550730.a n = A024504 n

end A024504

/-! ## A024504.P14749063988611231844

`floor(A045992(n)/A000079(n+1))`
-/

namespace A024504.P14749063988611231844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A045992 n : ℚ) / (A000079 (n + 1) : ℚ)⌋

end

end A024504.P14749063988611231844

namespace A024504

/-- `floor(A045992(n)/A000079(n+1))` -/
def P14749063988611231844.Spec : Prop :=
  ∀ n, P14749063988611231844.a n = A024504 n

end A024504

/-! ## A024504.P5713543688970046441

`floor(A000984(n)/A011782(n+2))`
-/

namespace A024504.P5713543688970046441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000984 n : ℚ) / (A011782 (n + 2) : ℚ)⌋

end

end A024504.P5713543688970046441

namespace A024504

/-- `floor(A000984(n)/A011782(n+2))` -/
def P5713543688970046441.Spec : Prop :=
  ∀ n, P5713543688970046441.a n = A024504 n

end A024504

/-! ## A024504.P2711547432099566174

`floor(A045992(n)/A011782(n+2))`
-/

namespace A024504.P2711547432099566174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A045992 n : ℚ) / (A011782 (n + 2) : ℚ)⌋

end

end A024504.P2711547432099566174

namespace A024504

/-- `floor(A045992(n)/A011782(n+2))` -/
def P2711547432099566174.Spec : Prop :=
  ∀ n, P2711547432099566174.a n = A024504 n

end A024504

/-! ## A024504.P3262530684930859429

`floor((A088218(n)-1)/A000079(n))`
-/

namespace A024504.P3262530684930859429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A088218 n - 1 : ℚ) / (A000079 n : ℚ)⌋

end

end A024504.P3262530684930859429

namespace A024504

/-- `floor((A088218(n)-1)/A000079(n))` -/
def P3262530684930859429.Spec : Prop :=
  ∀ n, P3262530684930859429.a n = A024504 n

end A024504

/-! ## A024504.P7290992159488038084

`floor(A000984(n)/(2*A000079(n)))`
-/

namespace A024504.P7290992159488038084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000984 n : ℚ) / (2 * A000079 n : ℚ)⌋

end

end A024504.P7290992159488038084

namespace A024504

/-- `floor(A000984(n)/(2*A000079(n)))` -/
def P7290992159488038084.Spec : Prop :=
  ∀ n, P7290992159488038084.a n = A024504 n

end A024504

/-! ## A024504.P8866206509994622381

`floor(A045992(n)/(2*A000079(n)))`
-/

namespace A024504.P8866206509994622381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A045992 n : ℚ) / (2 * A000079 n : ℚ)⌋

end

end A024504.P8866206509994622381

namespace A024504

/-- `floor(A045992(n)/(2*A000079(n)))` -/
def P8866206509994622381.Spec : Prop :=
  ∀ n, P8866206509994622381.a n = A024504 n

end A024504

/-! ## A024504.P3055451303214535689

`floor(A001405(2*n)/A000079(n+1))`
-/

namespace A024504.P3055451303214535689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001405 (2 * n) : ℚ) / (A000079 (n + 1) : ℚ)⌋

end

end A024504.P3055451303214535689

namespace A024504

/-- `floor(A001405(2*n)/A000079(n+1))` -/
def P3055451303214535689.Spec : Prop :=
  ∀ n, P3055451303214535689.a n = A024504 n

end A024504

/-! ## A024504.P534469973348252928

`floor(A014495(2*n)/A000079(n+1))`
-/

namespace A024504.P534469973348252928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A014495 (2 * n) : ℚ) / (A000079 (n + 1) : ℚ)⌋

end

end A024504.P534469973348252928

namespace A024504

/-- `floor(A014495(2*n)/A000079(n+1))` -/
def P534469973348252928.Spec : Prop :=
  ∀ n, P534469973348252928.a n = A024504 n

end A024504

/-! ## A024504.P3962434992759456777

`floor(A126930(2*n)/A000079(n+1))`
-/

namespace A024504.P3962434992759456777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A126930 (2 * n) : ℚ) / (A000079 (n + 1) : ℚ)⌋

end

end A024504.P3962434992759456777

namespace A024504

/-- `floor(A126930(2*n)/A000079(n+1))` -/
def P3962434992759456777.Spec : Prop :=
  ∀ n, P3962434992759456777.a n = A024504 n

end A024504

/-! ## A024504.P14922350695355528263

`floor((A001405(2*n)-n)/A011782(n+2))`
-/

namespace A024504.P14922350695355528263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001405 (2 * n) - (n : ℤ) : ℚ) / (A011782 (n + 2) : ℚ)⌋

end

end A024504.P14922350695355528263

namespace A024504

/-- `floor((A001405(2*n)-n)/A011782(n+2))` -/
def P14922350695355528263.Spec : Prop :=
  ∀ n, P14922350695355528263.a n = A024504 n

end A024504

/-! ## A024504.P8325221449913368884

`floor((A323230(n+1)-(n+1))/A011782(n+2))`
-/

namespace A024504.P8325221449913368884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A323230 (n + 1) - (n + 1 : ℤ) : ℚ) / (A011782 (n + 2) : ℚ)⌋

end

end A024504.P8325221449913368884

namespace A024504

/-- `floor((A323230(n+1)-(n+1))/A011782(n+2))` -/
def P8325221449913368884.Spec : Prop :=
  ∀ n, P8325221449913368884.a n = A024504 n

end A024504

/-! ## A024504.P15668941606106236088

`floor((A014495(2*n)+1-n)/A011782(n+2))`
-/

namespace A024504.P15668941606106236088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A014495 (2 * n) + 1 - (n : ℤ) : ℚ) / (A011782 (n + 2) : ℚ)⌋

end

end A024504.P15668941606106236088

namespace A024504

/-- `floor((A014495(2*n)+1-n)/A011782(n+2))` -/
def P15668941606106236088.Spec : Prop :=
  ∀ n, P15668941606106236088.a n = A024504 n

end A024504

/-! ## A024504.P11094567756648006544

`floor(((n+1)*A000108(n)-n)/A011782(n+2))`
-/

namespace A024504.P11094567756648006544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n + 1 : ℤ) * A000108 n - (n : ℤ) : ℚ) / (A011782 (n + 2) : ℚ)⌋

end

end A024504.P11094567756648006544

namespace A024504

/-- `floor(((n+1)*A000108(n)-n)/A011782(n+2))` -/
def P11094567756648006544.Spec : Prop :=
  ∀ n, P11094567756648006544.a n = A024504 n

end A024504

/-! ## A024504.P6613362342142462995

`floor(A029609(n)/A020714(n))`
-/

namespace A024504.P6613362342142462995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A029609 n : ℚ) / (A020714 n : ℚ)⌋

end

end A024504.P6613362342142462995

namespace A024504

/-- `floor(A029609(n)/A020714(n))` -/
def P6613362342142462995.Spec : Prop :=
  ∀ n, P6613362342142462995.a n = A024504 n

end A024504

/-! ## A024504.P15755052789200487918

`floor((record[A092392(n)]-n)/A011782(n+2))`
-/

namespace A024504.P15755052789200487918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092392 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n : ℤ) : ℚ) / (A011782 (n + 2) : ℚ)⌋

end

end A024504.P15755052789200487918

namespace A024504

/-- `floor((record[A092392(n)]-n)/A011782(n+2))` -/
def P15755052789200487918.Spec : Prop :=
  ∀ n, P15755052789200487918.a n = A024504 n

end A024504

/-!
# A024505: a(n) = [ C(2n,n)/2^(n+2) ].

The programs for A024505, the canonical program `A024505.P11338017081349591527` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024505 has offset 0).

The definition of A024505 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A024505.P11338017081349591527

`floor(C(2*n, n)/2^(n+2))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A024505

/-- `floor(C(2*n, n)/2^(n+2))` -/
def P11338017081349591527.Spec : Prop :=
  ∀ n, P11338017081349591527.a n = A024505 n

theorem P11338017081349591527.correct : P11338017081349591527.Spec := by
  intro n
  simp only [A024505]

end A024505

/-! ## A024505.P6232145013344462034

`floor(A024504(n)/2)`
-/

namespace A024505.P6232145013344462034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A024504 n : ℚ) / 2⌋

end

end A024505.P6232145013344462034

namespace A024505

/-- `floor(A024504(n)/2)` -/
def P6232145013344462034.Spec : Prop :=
  ∀ n, P6232145013344462034.a n = A024505 n

end A024505

/-! ## A024505.P18299339803335068770

`floor(A024502(n)/4)`
-/

namespace A024505.P18299339803335068770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A024502 n : ℚ) / 4⌋

end

end A024505.P18299339803335068770

namespace A024505

/-- `floor(A024502(n)/4)` -/
def P18299339803335068770.Spec : Prop :=
  ∀ n, P18299339803335068770.a n = A024505 n

end A024505

/-! ## A024505.P6163854649268962911

`floor(A088218(n)/(2^(n+1)-and(1, n)!+1))`
-/

namespace A024505.P6163854649268962911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A088218 n : ℚ) / ((2 ^ (n + 1) : ℤ) - (Nat.factorial (Nat.land 1 n) : ℤ) + 1 : ℚ)⌋

end

end A024505.P6163854649268962911

namespace A024505

/-- `floor(A088218(n)/(2^(n+1)-and(1, n)!+1))` -/
def P6163854649268962911.Spec : Prop :=
  ∀ n, P6163854649268962911.a n = A024505 n

end A024505

/-! ## A024505.P9573853106268695037

`floor(A000984(n)/A171497(n))`
-/

namespace A024505.P9573853106268695037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000984 n : ℚ) / (A171497 n : ℚ)⌋

end

end A024505.P9573853106268695037

namespace A024505

/-- `floor(A000984(n)/A171497(n))` -/
def P9573853106268695037.Spec : Prop :=
  ∀ n, P9573853106268695037.a n = A024505 n

end A024505

/-! ## A024505.P2918930915864114784

`floor(A029651(n)/A007283(n+1))`
-/

namespace A024505.P2918930915864114784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A029651 n : ℚ) / (A007283 (n + 1) : ℚ)⌋

end

end A024505.P2918930915864114784

namespace A024505

/-- `floor(A029651(n)/A007283(n+1))` -/
def P2918930915864114784.Spec : Prop :=
  ∀ n, P2918930915864114784.a n = A024505 n

end A024505

/-! ## A024505.P2754403353624231143

`floor(A088218(n)/A000079(n+1))`
-/

namespace A024505.P2754403353624231143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A088218 n : ℚ) / (A000079 (n + 1) : ℚ)⌋

end

end A024505.P2754403353624231143

namespace A024505

/-- `floor(A088218(n)/A000079(n+1))` -/
def P2754403353624231143.Spec : Prop :=
  ∀ n, P2754403353624231143.a n = A024505 n

end A024505

/-! ## A024505.P257786893689210254

`floor(A000984(n)/A000079(n+2))`
-/

namespace A024505.P257786893689210254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000984 n : ℚ) / (A000079 (n + 2) : ℚ)⌋

end

end A024505.P257786893689210254

namespace A024505

/-- `floor(A000984(n)/A000079(n+2))` -/
def P257786893689210254.Spec : Prop :=
  ∀ n, P257786893689210254.a n = A024505 n

end A024505

/-! ## A024505.P5173309797409209765

`floor(A045992(n)/A000079(n+2))`
-/

namespace A024505.P5173309797409209765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A045992 n : ℚ) / (A000079 (n + 2) : ℚ)⌋

end

end A024505.P5173309797409209765

namespace A024505

/-- `floor(A045992(n)/A000079(n+2))` -/
def P5173309797409209765.Spec : Prop :=
  ∀ n, P5173309797409209765.a n = A024505 n

end A024505

/-! ## A024505.P8524761992262255264

`floor(A029651(n)/(2*A007283(n)))`
-/

namespace A024505.P8524761992262255264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A029651 n : ℚ) / (2 * A007283 n : ℚ)⌋

end

end A024505.P8524761992262255264

namespace A024505

/-- `floor(A029651(n)/(2*A007283(n)))` -/
def P8524761992262255264.Spec : Prop :=
  ∀ n, P8524761992262255264.a n = A024505 n

end A024505

/-! ## A024505.P3665350975240432362

`floor(A088218(n)/(2*A000079(n)))`
-/

namespace A024505.P3665350975240432362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A088218 n : ℚ) / (2 * A000079 n : ℚ)⌋

end

end A024505.P3665350975240432362

namespace A024505

/-- `floor(A088218(n)/(2*A000079(n)))` -/
def P3665350975240432362.Spec : Prop :=
  ∀ n, P3665350975240432362.a n = A024505 n

end A024505

/-! ## A024505.P2840072071383424462

`floor(2/A020707(n)*A088218(n))`
-/

namespace A024505.P2840072071383424462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 / (A020707 n : ℚ) * (A088218 n : ℚ)⌋

end

end A024505.P2840072071383424462

namespace A024505

/-- `floor(2/A020707(n)*A088218(n))` -/
def P2840072071383424462.Spec : Prop :=
  ∀ n, P2840072071383424462.a n = A024505 n

end A024505

/-! ## A024505.P12826396217418819496

`floor(A000984(n)/(4*A000079(n)))`
-/

namespace A024505.P12826396217418819496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000984 n : ℚ) / (4 * A000079 n : ℚ)⌋

end

end A024505.P12826396217418819496

namespace A024505

/-- `floor(A000984(n)/(4*A000079(n)))` -/
def P12826396217418819496.Spec : Prop :=
  ∀ n, P12826396217418819496.a n = A024505 n

end A024505

/-! ## A024505.P16304221705772149681

`floor((A001405(2*n)-n)/A000079(n+2))`
-/

namespace A024505.P16304221705772149681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001405 (2 * n) - (n : ℤ) : ℚ) / (A000079 (n + 2) : ℚ)⌋

end

end A024505.P16304221705772149681

namespace A024505

/-- `floor((A001405(2*n)-n)/A000079(n+2))` -/
def P16304221705772149681.Spec : Prop :=
  ∀ n, P16304221705772149681.a n = A024505 n

end A024505

/-! ## A024505.P8420512392430708562

`floor((A323230(n+1)-(n+1))/A000079(n+2))`
-/

namespace A024505.P8420512392430708562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A323230 (n + 1) - (n + 1 : ℤ) : ℚ) / (A000079 (n + 2) : ℚ)⌋

end

end A024505.P8420512392430708562

namespace A024505

/-- `floor((A323230(n+1)-(n+1))/A000079(n+2))` -/
def P8420512392430708562.Spec : Prop :=
  ∀ n, P8420512392430708562.a n = A024505 n

end A024505

/-! ## A024505.P10447701166483720651

`floor((A014495(2*n)+1-n)/A000079(n+2))`
-/

namespace A024505.P10447701166483720651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A014495 (2 * n) + 1 - (n : ℤ) : ℚ) / (A000079 (n + 2) : ℚ)⌋

end

end A024505.P10447701166483720651

namespace A024505

/-- `floor((A014495(2*n)+1-n)/A000079(n+2))` -/
def P10447701166483720651.Spec : Prop :=
  ∀ n, P10447701166483720651.a n = A024505 n

end A024505

/-! ## A024505.P1251777873453017648

`floor(((n+1)*A000108(n)-n)/A000079(n+2))`
-/

namespace A024505.P1251777873453017648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n + 1 : ℤ) * A000108 n - (n : ℤ) : ℚ) / (A000079 (n + 2) : ℚ)⌋

end

end A024505.P1251777873453017648

namespace A024505

/-- `floor(((n+1)*A000108(n)-n)/A000079(n+2))` -/
def P1251777873453017648.Spec : Prop :=
  ∀ n, P1251777873453017648.a n = A024505 n

end A024505

/-! ## A024505.P9386772202829994729

`floor(A001700(A004273(n)-n)/A000079(n+1))`
-/

namespace A024505.P9386772202829994729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001700 (A004273 n - (n : ℤ)).toNat : ℚ) / (A000079 (n + 1) : ℚ)⌋

end

end A024505.P9386772202829994729

namespace A024505

/-- `floor(A001700(A004273(n)-n)/A000079(n+1))` -/
def P9386772202829994729.Spec : Prop :=
  ∀ n, P9386772202829994729.a n = A024505 n

end A024505

/-! ## A024505.P4449971071476071666

`floor(A029609(n)/A020714(n+1))`
-/

namespace A024505.P4449971071476071666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A029609 n : ℚ) / (A020714 (n + 1) : ℚ)⌋

end

end A024505.P4449971071476071666

namespace A024505

/-- `floor(A029609(n)/A020714(n+1))` -/
def P4449971071476071666.Spec : Prop :=
  ∀ n, P4449971071476071666.a n = A024505 n

end A024505

/-! ## A024505.P8488380989501889062

`floor(A029609(n)/(2*A020714(n)))`
-/

namespace A024505.P8488380989501889062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A029609 n : ℚ) / (2 * A020714 n : ℚ)⌋

end

end A024505.P8488380989501889062

namespace A024505

/-- `floor(A029609(n)/(2*A020714(n)))` -/
def P8488380989501889062.Spec : Prop :=
  ∀ n, P8488380989501889062.a n = A024505 n

end A024505

/-!
# A024506: a(n) = [ C(2n,n)/2^(n+3) ].

The programs for A024506, the canonical program `A024506.P3197979834457958831` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024506 has offset 0).

The definition of A024506 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A024506.P3197979834457958831

`floor(C(2*n, n)/2^(n+3))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A024506

/-- `floor(C(2*n, n)/2^(n+3))` -/
def P3197979834457958831.Spec : Prop :=
  ∀ n, P3197979834457958831.a n = A024506 n

theorem P3197979834457958831.correct : P3197979834457958831.Spec := by
  intro n
  simp only [A024506]

end A024506

/-! ## A024506.P12226791947137119566

`floor(A024505(n)/2)`
-/

namespace A024506.P12226791947137119566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A024505 n : ℚ) / 2⌋

end

end A024506.P12226791947137119566

namespace A024506

/-- `floor(A024505(n)/2)` -/
def P12226791947137119566.Spec : Prop :=
  ∀ n, P12226791947137119566.a n = A024506 n

end A024506

/-! ## A024506.P11692909125692342979

`floor(A024504(n)/4)`
-/

namespace A024506.P11692909125692342979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A024504 n : ℚ) / 4⌋

end

end A024506.P11692909125692342979

namespace A024506

/-- `floor(A024504(n)/4)` -/
def P11692909125692342979.Spec : Prop :=
  ∀ n, P11692909125692342979.a n = A024506 n

end A024506

/-! ## A024506.P12380075522918346608

`floor(A024502(n)/8)`
-/

namespace A024506.P12380075522918346608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A024502 n : ℚ) / 8⌋

end

end A024506.P12380075522918346608

namespace A024506

/-- `floor(A024502(n)/8)` -/
def P12380075522918346608.Spec : Prop :=
  ∀ n, P12380075522918346608.a n = A024506 n

end A024506

/-! ## A024506.P11025253588602221253

`floor(A032123(n)/A020707(n))`
-/

namespace A024506.P11025253588602221253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A032123 n : ℚ) / (A020707 n : ℚ)⌋

end

end A024506.P11025253588602221253

namespace A024506

/-- `floor(A032123(n)/A020707(n))` -/
def P11025253588602221253.Spec : Prop :=
  ∀ n, P11025253588602221253.a n = A024506 n

end A024506

/-! ## A024506.P14462502105643679501

`floor(A088218(n)/A020707(n))`
-/

namespace A024506.P14462502105643679501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A088218 n : ℚ) / (A020707 n : ℚ)⌋

end

end A024506.P14462502105643679501

namespace A024506

/-- `floor(A088218(n)/A020707(n))` -/
def P14462502105643679501.Spec : Prop :=
  ∀ n, P14462502105643679501.a n = A024506 n

end A024506

/-! ## A024506.P16227907991096702697

`floor(A000984(n)/A134067(n+1))`
-/

namespace A024506.P16227907991096702697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000984 n : ℚ) / (A134067 (n + 1) : ℚ)⌋

end

end A024506.P16227907991096702697

namespace A024506

/-- `floor(A000984(n)/A134067(n+1))` -/
def P16227907991096702697.Spec : Prop :=
  ∀ n, P16227907991096702697.a n = A024506 n

end A024506

/-! ## A024506.P8365833632068547540

`ceil(A088218(n)/A000918(n+2))-1`
-/

namespace A024506.P8365833632068547540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A088218 n : ℚ) / (A000918 (n + 2) : ℚ)⌉ - 1

end

end A024506.P8365833632068547540

namespace A024506

/-- `ceil(A088218(n)/A000918(n+2))-1` -/
def P8365833632068547540.Spec : Prop :=
  ∀ n, P8365833632068547540.a n = A024506 n

end A024506

/-! ## A024506.P8199828335821993980

`floor(A126930(2*n)/A000225(n+3))`
-/

namespace A024506.P8199828335821993980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A126930 (2 * n) : ℚ) / (A000225 (n + 3) : ℚ)⌋

end

end A024506.P8199828335821993980

namespace A024506

/-- `floor(A126930(2*n)/A000225(n+3))` -/
def P8199828335821993980.Spec : Prop :=
  ∀ n, P8199828335821993980.a n = A024506 n

end A024506

/-!
# A024507: Numbers that are the sum of 2 distinct nonzero squares (with repetition).

The programs for A024507, there is no canonical definition to state claims against.
-/

/-! ## A024507.P12131728280582297692

`A076520(A159061(n+1))`
-/

namespace A024507.P12131728280582297692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076520 (A159061 (n + 1)).toNat

end

end A024507.P12131728280582297692

/-! ## A024507.P16979724427761931535

`A076520(A002266(A076520(A174028(A139098(n+1)))))`
-/

namespace A024507.P16979724427761931535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076520 (A002266 (A076520 (A174028 (A139098 (n + 1)).toNat).toNat).toNat).toNat

end

end A024507.P16979724427761931535

/-!
# A024508: Numbers that are a sum of 2 distinct nonzero squares in more than one way.

The programs for A024508, there is no canonical definition to state claims against.
-/

/-! ## A024508.P15973067825926390980

`∪[A025294(n+1), A025303(n+1)]`
-/

namespace A024508.P15973067825926390980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025294 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025303 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A024508.P15973067825926390980

/-! ## A024508.P16299931855296692964

`∪[A025303(n+1), A025313(n+1)]`
-/

namespace A024508.P16299931855296692964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025303 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025313 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A024508.P16299931855296692964

/-! ## A024508.P2676913817825621913

`lt[1, A025441(n)]`
-/

namespace A024508.P2676913817825621913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025441 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A024508.P2676913817825621913

/-! ## A024508.P1929522907299589314

`lt[3, A063725(n)]`
-/

namespace A024508.P1929522907299589314
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063725 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A024508.P1929522907299589314

/-! ## A024508.P18257916039803693721

`lt[12, A004018(n)]`
-/

namespace A024508.P18257916039803693721
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004018 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A024508.P18257916039803693721

/-! ## A024508.P2520867787264251860

`lt[3, A002654(A028310(n))]`
-/

namespace A024508.P2520867787264251860
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002654 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A024508.P2520867787264251860

/-! ## A024508.P4811037303711471921

`lt[A000122(n)!, A025435(n)]`
-/

namespace A024508.P4811037303711471921
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A000122 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025435 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A024508.P4811037303711471921

/-! ## A024508.P7937555029587581558

`lt[3, A000925(n)-abs(A002448(n))]`
-/

namespace A024508.P7937555029587581558
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000925 n - |A002448 n|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A024508.P7937555029587581558

/-! ## A024508.P97426643868713597

`lt[A193330(A000925(n)), A025426(n)]`
-/

namespace A024508.P97426643868713597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193330 (A000925 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025426 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A024508.P97426643868713597

/-! ## A024508.P5410850900244604564

`filter[A164282(n+1), A229062(#)]`
-/

namespace A024508.P5410850900244604564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164282 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A229062 (f1 j).toNat = 1) n)

end

end A024508.P5410850900244604564

/-! ## A024508.P11809745996206311256

`filter[A164282(n+1), A353814(#)]`
-/

namespace A024508.P11809745996206311256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164282 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353814 (f1 j).toNat = 1) n)

end

end A024508.P11809745996206311256

/-! ## A024508.P6504797621884955831

`∩[A000404(n+1), A164282(n+1)]`
-/

namespace A024508.P6504797621884955831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000404 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164282 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A024508.P6504797621884955831

/-! ## A024508.P2314739217240315699

`∩[A001481(n+1), A164282(n+1)]`
-/

namespace A024508.P2314739217240315699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001481 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164282 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A024508.P2314739217240315699

/-! ## A024508.P13937930860175031299

`∩[A001983(n+1), A164282(n+1)]`
-/

namespace A024508.P13937930860175031299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001983 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164282 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A024508.P13937930860175031299

/-! ## A024508.P17467576386570218079

`∩[A004431(n+1), A164282(n+1)]`
-/

namespace A024508.P17467576386570218079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164282 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A024508.P17467576386570218079

/-! ## A024508.P2895090541494117273

`∩[A007692(n+1), A164282(n+1)]`
-/

namespace A024508.P2895090541494117273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007692 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164282 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A024508.P2895090541494117273

/-! ## A024508.P13605883468206783104

`∩[A085989(n+1), A164282(n+1)]`
-/

namespace A024508.P13605883468206783104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085989 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164282 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A024508.P13605883468206783104

/-! ## A024508.P15418037624485323788

`∩[A118882(n+1), A164282(n+1)]`
-/

namespace A024508.P15418037624485323788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118882 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164282 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A024508.P15418037624485323788

/-! ## A024508.P286748925552133548

`lt[2, A262689(A104794(2*n))]`
-/

namespace A024508.P286748925552133548
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (A104794 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A024508.P286748925552133548

/-! ## A024508.P13345016763855958630

`lt[6, A342154(n)]`
-/

namespace A024508.P13345016763855958630
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342154 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A024508.P13345016763855958630

/-!
# A024509: Numbers that are the sum of 2 nonzero squares, including repetitions.

The programs for A024509, there is no canonical definition to state claims against.
-/

/-! ## A024509.P995928767330781813

`A076520(A228246(n+1))`
-/

namespace A024509.P995928767330781813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076520 (A228246 (n + 1)).toNat

end

end A024509.P995928767330781813

/-! ## A024509.P6438013097785820386

`A000404(n+1)-A085974(A006171(n))`
-/

namespace A024509.P6438013097785820386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000404 (n + 1) - A085974 (A006171 n).toNat

end

end A024509.P6438013097785820386

/-! ## A024509.P11708678971121735018

`A000404(n+1)-A055668(A199201(n+5))`
-/

namespace A024509.P11708678971121735018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000404 (n + 1) - A055668 (A199201 (n + 5)).toNat

end

end A024509.P11708678971121735018

/-! ## A024509.P5325791888859545578

`A000404(n+1)-A000925(A324819(2*n+3))`
-/

namespace A024509.P5325791888859545578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000404 (n + 1) - A000925 (A324819 (2 * n + 3)).toNat

end

end A024509.P5325791888859545578

/-!
# A024510: Positions of even numbers in A004431 (sums of 2 distinct nonzero squares).

The programs for A024510, the canonical program `A024510.P9053752916774843520` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024510 has offset 1).

The definition of A024510 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5167 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A024510.P9053752916774843520

`eq[0, A004431(n+2)%2]+2`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A024510

/-- `eq[0, A004431(n+2)%2]+2` -/
def P9053752916774843520.Spec : Prop :=
  ∀ n, (P9053752916774843520.a n : ℤ) = A024510 (n + 1)

theorem P9053752916774843520.correct : P9053752916774843520.Spec := by
  intro n
  simp only [A024510, Nat.add_sub_cancel]

end A024510

/-! ## A024510.P16546303848783437236

`eq[0, A004431(A028310(n))%2]`
-/

namespace A024510.P16546303848783437236
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004431 (A028310 n).toNat) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A024510.P16546303848783437236

namespace A024510

/-- `eq[0, A004431(A028310(n))%2]` -/
def P16546303848783437236.Spec : Prop :=
  ∀ n, (P16546303848783437236.a n : ℤ) = A024510 (n + 1)

end A024510

/-! ## A024510.P3740023610072174202

`eq[char[A024511(n+1)], A000007(n)]`
-/

namespace A024510.P3740023610072174202
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024511 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A024510.P3740023610072174202

namespace A024510

/-- `eq[char[A024511(n+1)], A000007(n)]` -/
def P3740023610072174202.Spec : Prop :=
  ∀ n, (P3740023610072174202.a n : ℤ) = A024510 (n + 1)

end A024510

/-! ## A024510.P3470790617511481058

`eq[char[A024511(n+1)], A130706(n)]`
-/

namespace A024510.P3470790617511481058
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024511 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130706 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A024510.P3470790617511481058

namespace A024510

/-- `eq[char[A024511(n+1)], A130706(n)]` -/
def P3470790617511481058.Spec : Prop :=
  ∀ n, (P3470790617511481058.a n : ℤ) = A024510 (n + 1)

end A024510

/-! ## A024510.P3688995051026868222

`eq[2, A020639(A004431(n+1))]+1`
-/

namespace A024510.P3688995051026868222
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A004431 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A024510.P3688995051026868222

namespace A024510

/-- `eq[2, A020639(A004431(n+1))]+1` -/
def P3688995051026868222.Spec : Prop :=
  ∀ n, (P3688995051026868222.a n : ℤ) = A024510 (n + 1)

end A024510

/-!
# A024511: Positions of odd numbers in A004431 (sums of 2 distinct nonzero squares).

The programs for A024511, the canonical program `A024511.P1058289518058299462` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024511 has offset 1).

The definition of A024511 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4832 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A024511.P17660802227747338120

`lt[2, A020639(A004431(n+1))]+1`
-/

namespace A024511.P17660802227747338120
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A004431 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A024511.P17660802227747338120

namespace A024511

/-- `lt[2, A020639(A004431(n+1))]+1` -/
def P17660802227747338120.Spec : Prop :=
  ∀ n, (P17660802227747338120.a n : ℤ) = A024511 (n + 1)

end A024511

/-! ## A024511.P1058289518058299462

`eq[char[A024510(n+1)], A000007(n)]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A024511

/-- `eq[char[A024510(n+1)], A000007(n)]` -/
def P1058289518058299462.Spec : Prop :=
  ∀ n, (P1058289518058299462.a n : ℤ) = A024511 (n + 1)

theorem P1058289518058299462.correct : P1058289518058299462.Spec := by
  intro n
  simp only [A024511, Nat.add_sub_cancel]

end A024511

/-! ## A024511.P15491541970918819418

`record[A000027(n+1)*A000035(A004431(n+1))]`
-/

namespace A024511.P15491541970918819418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) * A000035 (A004431 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024511.P15491541970918819418

namespace A024511

/-- `record[A000027(n+1)*A000035(A004431(n+1))]` -/
def P15491541970918819418.Spec : Prop :=
  ∀ n, P15491541970918819418.a n = A024511 (n + 1)

end A024511

/-! ## A024511.P2328182769041149009

`record[A000035(A004431(n+1))*A008619(2*n)]`
-/

namespace A024511.P2328182769041149009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A004431 (n + 1)).toNat * A008619 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024511.P2328182769041149009

namespace A024511

/-- `record[A000035(A004431(n+1))*A008619(2*n)]` -/
def P2328182769041149009.Spec : Prop :=
  ∀ n, P2328182769041149009.a n = A024511 (n + 1)

end A024511

/-! ## A024511.P2496995854140713702

`record[(n+1)%A201560(2*A004431(n+1))]`
-/

namespace A024511.P2496995854140713702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A201560 (2 * A004431 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024511.P2496995854140713702

namespace A024511

/-- `record[(n+1)%A201560(2*A004431(n+1))]` -/
def P2496995854140713702.Spec : Prop :=
  ∀ n, P2496995854140713702.a n = A024511 (n + 1)

end A024511

/-!
# A024512: Position of 1 + n^2 in A004431 (sums of 2 distinct nonzero squares).

The programs for A024512, there is no canonical definition to state claims against.
-/

/-! ## A024512.P16256407108078334847

`eq[1, A003285(A004431(n+1))]+1`
-/

namespace A024512.P16256407108078334847
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (A004431 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A024512.P16256407108078334847

/-! ## A024512.P14808883193587373659

`A287372(A281217(n))+A076268(n+1)`
-/

namespace A024512.P14808883193587373659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287372 (A281217 n).toNat + A076268 (n + 1)

end

end A024512.P14808883193587373659

/-! ## A024512.P14178444461877314670

`A007980(n)-A333382(A146606(n+1))`
-/

namespace A024512.P14178444461877314670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007980 n - A333382 (A146606 (n + 1)).toNat

end

end A024512.P14178444461877314670

/-! ## A024512.P2281732613742296292

`or(A076268(n+1), A242830(A350273(n)))`
-/

namespace A024512.P2281732613742296292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A076268 (n + 1)) (A242830 (A350273 n).toNat)

end

end A024512.P2281732613742296292

/-! ## A024512.P8712845284762668066

`∑[A086833(∑[A037225(n)])]`
-/

namespace A024512.P8712845284762668066
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037225 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086833 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024512.P8712845284762668066

/-!
# A024513: a(n) = position of n^2 + (n+1)^2 in A004431 (sums of 2 distinct nonzero squares).

The programs for A024513, there is no canonical definition to state claims against.
-/

/-! ## A024513.P1378729178470277632

`xor(A027379(n), A334040(A082217(n+1)))`
-/

namespace A024513.P1378729178470277632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A027379 n) (A334040 (A082217 (n + 1)).toNat)

end

end A024513.P1378729178470277632

/-! ## A024513.P12789977244470295337

`A077169(n)+∑[A001222(A269228(n+1))]`
-/

namespace A024513.P12789977244470295337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A269228 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077169 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024513.P12789977244470295337

/-!
# A024514: Positions of primes in A004431 (sums of 2 distinct nonzero squares).

The programs for A024514, the canonical program `A024514.P16553037796526444321` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024514 has offset 1).

The definition of A024514 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2102 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A024514.P16553037796526444321

`eq[2, A000005(A004431(n+1))]+1`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A024514

/-- `eq[2, A000005(A004431(n+1))]+1` -/
def P16553037796526444321.Spec : Prop :=
  ∀ n, (P16553037796526444321.a n : ℤ) = A024514 (n + 1)

theorem P16553037796526444321.correct : P16553037796526444321.Spec := by
  intro n
  simp only [A024514, Nat.add_sub_cancel]

end A024514

/-! ## A024514.P7111347827748466760

`lt[A026351(n), A020639(A004431(n+1))]+1`
-/

namespace A024514.P7111347827748466760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026351 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A004431 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A024514.P7111347827748466760

namespace A024514

/-- `lt[A026351(n), A020639(A004431(n+1))]+1` -/
def P7111347827748466760.Spec : Prop :=
  ∀ n, (P7111347827748466760.a n : ℤ) = A024514 (n + 1)

end A024514

/-! ## A024514.P956019105489798279

`lt[A260307(n), A020639(A004431(n+1))]+1`
-/

namespace A024514.P956019105489798279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260307 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A004431 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A024514.P956019105489798279

namespace A024514

/-- `lt[A260307(n), A020639(A004431(n+1))]+1` -/
def P956019105489798279.Spec : Prop :=
  ∀ n, (P956019105489798279.a n : ℤ) = A024514 (n + 1)

end A024514

/-! ## A024514.P3142641017266854032

`record[A000027(n+1)/A001222(A004431(n+1))]`
-/

namespace A024514.P3142641017266854032
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℚ) / (A001222 (A004431 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024514.P3142641017266854032

namespace A024514

/-- `record[A000027(n+1)/A001222(A004431(n+1))]` -/
def P3142641017266854032.Spec : Prop :=
  ∀ n, P3142641017266854032.a n = (A024514 (n + 1) : ℚ)

end A024514

/-! ## A024514.P810975192557730820

`record[A005843(n+1)/A000005(A004431(n+1))]`
-/

namespace A024514.P810975192557730820
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005843 (n + 1) : ℚ) / (A000005 (A004431 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024514.P810975192557730820

namespace A024514

/-- `record[A005843(n+1)/A000005(A004431(n+1))]` -/
def P810975192557730820.Spec : Prop :=
  ∀ n, P810975192557730820.a n = (A024514 (n + 1) : ℚ)

end A024514

/-! ## A024514.P11189659316729336138

`record[(A005408(n)-n)/A001222(A004431(n+1))]`
-/

namespace A024514.P11189659316729336138
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005408 n - (n : ℤ) : ℚ) / (A001222 (A004431 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024514.P11189659316729336138

namespace A024514

/-- `record[(A005408(n)-n)/A001222(A004431(n+1))]` -/
def P11189659316729336138.Spec : Prop :=
  ∀ n, P11189659316729336138.a n = (A024514 (n + 1) : ℚ)

end A024514

/-! ## A024514.P6093618443456557854

`lt[A186219(n+1), A020639(A004431(n+1))]+1`
-/

namespace A024514.P6093618443456557854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186219 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A004431 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A024514.P6093618443456557854

namespace A024514

/-- `lt[A186219(n+1), A020639(A004431(n+1))]+1` -/
def P6093618443456557854.Spec : Prop :=
  ∀ n, (P6093618443456557854.a n : ℤ) = A024514 (n + 1)

end A024514

/-! ## A024514.P1064598056644742527

`record[A008619(2*n)/A001222(A004431(n+1))]`
-/

namespace A024514.P1064598056644742527
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008619 (2 * n) : ℚ) / (A001222 (A004431 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024514.P1064598056644742527

namespace A024514

/-- `record[A008619(2*n)/A001222(A004431(n+1))]` -/
def P1064598056644742527.Spec : Prop :=
  ∀ n, P1064598056644742527.a n = (A024514 (n + 1) : ℚ)

end A024514

/-! ## A024514.P17388233986580479056

`lt[A000005(lt[4, A004018(n)]), 3]+1`
-/

namespace A024514.P17388233986580479056
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004018 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f4 j : ℤ)) n + 1

end

end A024514.P17388233986580479056

namespace A024514

/-- `lt[A000005(lt[4, A004018(n)]), 3]+1` -/
def P17388233986580479056.Spec : Prop :=
  ∀ n, (P17388233986580479056.a n : ℤ) = A024514 (n + 1)

end A024514

/-!
# A024515: Positions of even numbers in A000404 (sums of 2 nonzero squares).

The programs for A024515, the canonical program `A024515.P16075268455996270968` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024515 has offset 1).

The definition of A024515 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5206 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A024515.P16075268455996270968

`eq[0, A135786(n+1)%2]+1`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A024515

/-- `eq[0, A135786(n+1)%2]+1` -/
def P16075268455996270968.Spec : Prop :=
  ∀ n, (P16075268455996270968.a n : ℤ) = A024515 (n + 1)

theorem P16075268455996270968.correct : P16075268455996270968.Spec := by
  intro n
  simp only [A024515, Nat.add_sub_cancel]

end A024515

/-! ## A024515.P4111731738029722285

`eq[2, A020639(A000404(n+1))]+1`
-/

namespace A024515.P4111731738029722285
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A000404 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A024515.P4111731738029722285

namespace A024515

/-- `eq[2, A020639(A000404(n+1))]+1` -/
def P4111731738029722285.Spec : Prop :=
  ∀ n, (P4111731738029722285.a n : ℤ) = A024515 (n + 1)

end A024515

/-! ## A024515.P18268392320259870456

`record[A005843(n+1)/A020639(A000404(n+1))]`
-/

namespace A024515.P18268392320259870456
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005843 (n + 1) : ℚ) / (A020639 (A000404 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024515.P18268392320259870456

namespace A024515

/-- `record[A005843(n+1)/A020639(A000404(n+1))]` -/
def P18268392320259870456.Spec : Prop :=
  ∀ n, P18268392320259870456.a n = (A024515 (n + 1) : ℚ)

end A024515

/-! ## A024515.P10165285533690052063

`record[A000027(n+1)/A019425(A000404(n+1))]`
-/

namespace A024515.P10165285533690052063
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℚ) / (A019425 (A000404 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024515.P10165285533690052063

namespace A024515

/-- `record[A000027(n+1)/A019425(A000404(n+1))]` -/
def P10165285533690052063.Spec : Prop :=
  ∀ n, P10165285533690052063.a n = (A024515 (n + 1) : ℚ)

end A024515

/-! ## A024515.P3428514834135227753

`record[A008619(2*n)/A019425(A000404(n+1))]`
-/

namespace A024515.P3428514834135227753
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008619 (2 * n) : ℚ) / (A019425 (A000404 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024515.P3428514834135227753

namespace A024515

/-- `record[A008619(2*n)/A019425(A000404(n+1))]` -/
def P3428514834135227753.Spec : Prop :=
  ∀ n, P3428514834135227753.a n = (A024515 (n + 1) : ℚ)

end A024515

/-! ## A024515.P2500997358827286428

`record[(n+1)*A007814(∏{p}[A000404(n+1), #])]`
-/

namespace A024515.P2500997358827286428
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000404 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A007814 (∏ p ∈ Nat.primeFactors (f2 n).natAbs, p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024515.P2500997358827286428

namespace A024515

/-- `record[(n+1)*A007814(∏{p}[A000404(n+1), #])]` -/
def P2500997358827286428.Spec : Prop :=
  ∀ n, P2500997358827286428.a n = A024515 (n + 1)

end A024515

/-! ## A024515.P15514946264794906043

`record[gcd(n+1, A007814(A000404(n+1)+1))]`
-/

namespace A024515.P15514946264794906043
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A007814 (A000404 (n + 1) + 1).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024515.P15514946264794906043

namespace A024515

/-- `record[gcd(n+1, A007814(A000404(n+1)+1))]` -/
def P15514946264794906043.Spec : Prop :=
  ∀ n, (P15514946264794906043.a n : ℤ) = A024515 (n + 1)

end A024515

/-! ## A024515.P9420531637488286816

`eq[2, A020639(A135784(n+1))]+1`
-/

namespace A024515.P9420531637488286816
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A135784 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A024515.P9420531637488286816

namespace A024515

/-- `eq[2, A020639(A135784(n+1))]+1` -/
def P9420531637488286816.Spec : Prop :=
  ∀ n, (P9420531637488286816.a n : ℤ) = A024515 (n + 1)

end A024515

/-!
# A024516: Positions of odd numbers in A000404 (sums of 2 nonzero squares).

The programs for A024516, the canonical program `A024516.P5773989287278470041` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024516 has offset 1).

The definition of A024516 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4794 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A024516.P4457127399168319185

`eq[1, A135786(n+1)%2]+1`
-/

namespace A024516.P4457127399168319185
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A135786 (n + 1)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A024516.P4457127399168319185

namespace A024516

/-- `eq[1, A135786(n+1)%2]+1` -/
def P4457127399168319185.Spec : Prop :=
  ∀ n, (P4457127399168319185.a n : ℤ) = A024516 (n + 1)

end A024516

/-! ## A024516.P5773989287278470041

`eq[0, val(A000404(n+1), 2)]+1`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A024516

/-- `eq[0, val(A000404(n+1), 2)]+1` -/
def P5773989287278470041.Spec : Prop :=
  ∀ n, (P5773989287278470041.a n : ℤ) = A024516 (n + 1)

theorem P5773989287278470041.correct : P5773989287278470041.Spec := by
  intro n
  simp only [A024516, Nat.add_sub_cancel]

end A024516

/-! ## A024516.P3667377167369377439

`eq[1, gcd(4, A135784(n+1))]+1`
-/

namespace A024516.P3667377167369377439
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 4 (A135784 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A024516.P3667377167369377439

namespace A024516

/-- `eq[1, gcd(4, A135784(n+1))]+1` -/
def P3667377167369377439.Spec : Prop :=
  ∀ n, (P3667377167369377439.a n : ℤ) = A024516 (n + 1)

end A024516

/-! ## A024516.P10376715466303667052

`eq[1, and(1, A135788(n+1))]+1`
-/

namespace A024516.P10376715466303667052
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A135788 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A024516.P10376715466303667052

namespace A024516

/-- `eq[1, and(1, A135788(n+1))]+1` -/
def P10376715466303667052.Spec : Prop :=
  ∀ n, (P10376715466303667052.a n : ℤ) = A024516 (n + 1)

end A024516

/-! ## A024516.P369464823514848601

`eq[1, and(1, A135784(n+2))]+2`
-/

namespace A024516.P369464823514848601
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A135784 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A024516.P369464823514848601

namespace A024516

/-- `eq[1, and(1, A135784(n+2))]+2` -/
def P369464823514848601.Spec : Prop :=
  ∀ n, (P369464823514848601.a n : ℤ) = A024516 (n + 1)

end A024516

/-! ## A024516.P15111925828508825369

`eq[1, A006519(A000404(n+1))]+1`
-/

namespace A024516.P15111925828508825369
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (A000404 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A024516.P15111925828508825369

namespace A024516

/-- `eq[1, A006519(A000404(n+1))]+1` -/
def P15111925828508825369.Spec : Prop :=
  ∀ n, (P15111925828508825369.a n : ℤ) = A024516 (n + 1)

end A024516

/-! ## A024516.P7507654747871885025

`eq[1, A007814(A000404(n+1)+1)]+1`
-/

namespace A024516.P7507654747871885025
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A000404 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A024516.P7507654747871885025

namespace A024516

/-- `eq[1, A007814(A000404(n+1)+1)]+1` -/
def P7507654747871885025.Spec : Prop :=
  ∀ n, (P7507654747871885025.a n : ℤ) = A024516 (n + 1)

end A024516

/-! ## A024516.P10657670632380508697

`A397450(A339952(n+1))`
-/

namespace A024516.P10657670632380508697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397450 (A339952 (n + 1)).toNat

end

end A024516.P10657670632380508697

namespace A024516

/-- `A397450(A339952(n+1))` -/
def P10657670632380508697.Spec : Prop :=
  ∀ n, P10657670632380508697.a n = A024516 (n + 1)

end A024516

/-!
# A024517: Position of 2*n^2 in A000404 (sums of 2 nonzero squares).

The programs for A024517, there is no canonical definition to state claims against.
-/

/-! ## A024517.P9562267463231135050

`A397450(2*(n+1)²)`
-/

namespace A024517.P9562267463231135050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397450 (2 * (n + 1) ^ 2)

end

end A024517.P9562267463231135050

/-! ## A024517.P10245897444341513552

`eq[0, A344463(A000404(n+1))]+1`
-/

namespace A024517.P10245897444341513552
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344463 (A000404 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A024517.P10245897444341513552

/-! ## A024517.P1901298587318548543

`lt[A344463(A000404(n+1)), A067032(n)]+1`
-/

namespace A024517.P1901298587318548543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344463 (A000404 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067032 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A024517.P1901298587318548543

/-! ## A024517.P9509405867869759874

`eq[1, and(1, A229904(n+1))]+1`
-/

namespace A024517.P9509405867869759874
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A229904 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A024517.P9509405867869759874

/-! ## A024517.P15982570329957499784

`eq[1, A033999(A229904(n+1)+1)]+1`
-/

namespace A024517.P15982570329957499784
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A229904 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A024517.P15982570329957499784

/-! ## A024517.P2211433916568525722

`record[and(1, A229904(n+1))*A000027(n+1)]`
-/

namespace A024517.P2211433916568525722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A229904 (n + 1)) * A000027 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024517.P2211433916568525722

/-!
# A024518: a(n) = position of 1 + n^2 in A000404 (sums of 2 nonzero squares).

The programs for A024518, there is no canonical definition to state claims against.
-/

/-! ## A024518.P3952293918181521776

`eq[1, A169782(A000404(n+1))]+1`
-/

namespace A024518.P3952293918181521776
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169782 (A000404 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A024518.P3952293918181521776

/-! ## A024518.P11890936721554025001

`A397450((n+1)²+1)`
-/

namespace A024518.P11890936721554025001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397450 ((n + 1) ^ 2 + 1)

end

end A024518.P11890936721554025001

/-! ## A024518.P9026823841506037078

`eq[1, A160006(n+1)]+1`
-/

namespace A024518.P9026823841506037078
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160006 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A024518.P9026823841506037078

/-! ## A024518.P15556544807608694574

`record[A000027(n+1)/A160006(n+1)]`
-/

namespace A024518.P15556544807608694574
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℚ) / (A160006 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024518.P15556544807608694574

/-! ## A024518.P14490127681777485668

`record[A007948(n+1)/A160006(n+1)]`
-/

namespace A024518.P14490127681777485668
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007948 (n + 1) : ℚ) / (A160006 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024518.P14490127681777485668

/-!
# A024519: Position of n^2 + (n+1)^2 in A000404 (sums of 2 nonzero squares).

The programs for A024519, there is no canonical definition to state claims against.
-/

/-! ## A024519.P15931390864869283063

`A397450(A001844(n+1))`
-/

namespace A024519.P15931390864869283063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397450 (A001844 (n + 1)).toNat

end

end A024519.P15931390864869283063

/-! ## A024519.P5874045131206856663

`A397450(A099776(n+1))`
-/

namespace A024519.P5874045131206856663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397450 (A099776 (n + 1)).toNat

end

end A024519.P5874045131206856663

/-! ## A024519.P2957270291421987310

`A397450(A363080(n+1))`
-/

namespace A024519.P2957270291421987310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397450 (A363080 (n + 1)).toNat

end

end A024519.P2957270291421987310

/-! ## A024519.P16795839635382833734

`eq[2, -A114327(A000404(n+1))]+1`
-/

namespace A024519.P16795839635382833734
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A114327 (A000404 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A024519.P16795839635382833734

/-!
# A024520: Positions of primes in A000404 (sums of 2 nonzero squares).

The programs for A024520, the canonical program `A024520.P11215576376255656208` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024520 has offset 1).

The definition of A024520 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2089 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A024520.P11215576376255656208

`eq[1, ∑{e}[A339273(n+1)/4, #]]+1`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A024520

/-- `eq[1, ∑{e}[A339273(n+1)/4, #]]+1` -/
def P11215576376255656208.Spec : Prop :=
  ∀ n, (P11215576376255656208.a n : ℤ) = A024520 (n + 1)

theorem P11215576376255656208.correct : P11215576376255656208.Spec := by
  intro n
  simp only [A024520, Nat.add_sub_cancel]

end A024520

/-! ## A024520.P2111392153739435443

`eq[1, A001222(A000404(n+1))]+1`
-/

namespace A024520.P2111392153739435443
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A000404 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A024520.P2111392153739435443

namespace A024520

/-- `eq[1, A001222(A000404(n+1))]+1` -/
def P2111392153739435443.Spec : Prop :=
  ∀ n, (P2111392153739435443.a n : ℤ) = A024520 (n + 1)

end A024520

/-! ## A024520.P3659206971659755801

`eq[1, A001222(sqrt(A135784(n+1)))]+1`
-/

namespace A024520.P3659206971659755801
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway (Real.sqrt (A135784 (n + 1) : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A024520.P3659206971659755801

namespace A024520

/-- `eq[1, A001222(sqrt(A135784(n+1)))]+1` -/
def P3659206971659755801.Spec : Prop :=
  ∀ n, (P3659206971659755801.a n : ℤ) = A024520 (n + 1)

end A024520

/-! ## A024520.P491651322433828197

`record[A000027(n+1)/A001222(A000404(n+1))]`
-/

namespace A024520.P491651322433828197
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℚ) / (A001222 (A000404 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024520.P491651322433828197

namespace A024520

/-- `record[A000027(n+1)/A001222(A000404(n+1))]` -/
def P491651322433828197.Spec : Prop :=
  ∀ n, P491651322433828197.a n = (A024520 (n + 1) : ℚ)

end A024520

/-! ## A024520.P15261908646740465980

`record[A005843(n+1)/A000005(A000404(n+1))]`
-/

namespace A024520.P15261908646740465980
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005843 (n + 1) : ℚ) / (A000005 (A000404 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024520.P15261908646740465980

namespace A024520

/-- `record[A005843(n+1)/A000005(A000404(n+1))]` -/
def P15261908646740465980.Spec : Prop :=
  ∀ n, P15261908646740465980.a n = (A024520 (n + 1) : ℚ)

end A024520

/-! ## A024520.P1081626953294622846

`record[A008619(2*n)/A001222(A000404(n+1))]`
-/

namespace A024520.P1081626953294622846
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008619 (2 * n) : ℚ) / (A001222 (A000404 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024520.P1081626953294622846

namespace A024520

/-- `record[A008619(2*n)/A001222(A000404(n+1))]` -/
def P1081626953294622846.Spec : Prop :=
  ∀ n, P1081626953294622846.a n = (A024520 (n + 1) : ℚ)

end A024520

/-! ## A024520.P6472582979366595256

`A397450(A002313(n+1))`
-/

namespace A024520.P6472582979366595256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397450 (A002313 (n + 1)).toNat

end

end A024520.P6472582979366595256

namespace A024520

/-- `A397450(A002313(n+1))` -/
def P6472582979366595256.Spec : Prop :=
  ∀ n, P6472582979366595256.a n = A024520 (n + 1)

end A024520

/-! ## A024520.P12502144857722828715

`record[(n+1)%A014963(sqrt(A135784(n+1)))]`
-/

namespace A024520.P12502144857722828715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A014963 (SequenceMachineLib.roundAway (Real.sqrt (A135784 (n + 1) : ℝ))).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024520.P12502144857722828715

namespace A024520

/-- `record[(n+1)%A014963(sqrt(A135784(n+1)))]` -/
def P12502144857722828715.Spec : Prop :=
  ∀ n, P12502144857722828715.a n = A024520 (n + 1)

end A024520

/-!
# A024522: a(n) = 2nd elementary symmetric function of {1, prime(1), prime(2), ..., prime(n-1)}, where prime(0) = 1.

The programs for A024522, the canonical program `A024522.P10251569603433964511` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024522 has offset 2).

The definition of A024522 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A024522.P6851976842398066958

`A024447(n+1)+A007504(n+1)`
-/

namespace A024522.P6851976842398066958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024447 (n + 1) + A007504 (n + 1)

end

end A024522.P6851976842398066958

namespace A024522

/-- `A024447(n+1)+A007504(n+1)` -/
def P6851976842398066958.Spec : Prop :=
  ∀ n, P6851976842398066958.a n = A024522 (n + 2)

end A024522

/-! ## A024522.P10251569603433964511

`A024447(n+1)+∑[A000040(n+1)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A024522

/-- `A024447(n+1)+∑[A000040(n+1)]` -/
def P10251569603433964511.Spec : Prop :=
  ∀ n, P10251569603433964511.a n = A024522 (n + 2)

theorem P10251569603433964511.correct : P10251569603433964511.Spec := by
  intro n
  simp only [A024522, Nat.add_sub_cancel]

end A024522

/-! ## A024522.P1918410191822484465

`∑[A339194(n+1)+A000040(n+1)]`
-/

namespace A024522.P1918410191822484465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339194 (n + 1) + A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024522.P1918410191822484465

namespace A024522

/-- `∑[A339194(n+1)+A000040(n+1)]` -/
def P1918410191822484465.Spec : Prop :=
  ∀ n, P1918410191822484465.a n = A024522 (n + 2)

end A024522

/-! ## A024522.P8203796073624156799

`∑[A034956(n+1)-A008837(n+1)]`
-/

namespace A024522.P8203796073624156799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034956 (n + 1) - A008837 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024522.P8203796073624156799

namespace A024522

/-- `∑[A034956(n+1)-A008837(n+1)]` -/
def P8203796073624156799.Spec : Prop :=
  ∀ n, P8203796073624156799.a n = A024522 (n + 2)

end A024522

/-! ## A024522.P5886513391720298050

`∑[(A007504(n)+1)*A000040(n+1)]`
-/

namespace A024522.P5886513391720298050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A007504 n + 1) * A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024522.P5886513391720298050

namespace A024522

/-- `∑[(A007504(n)+1)*A000040(n+1)]` -/
def P5886513391720298050.Spec : Prop :=
  ∀ n, P5886513391720298050.a n = A024522 (n + 2)

end A024522

/-! ## A024522.P12802059444913871339

`∑[A000040(n+1)*A014284(n+1)]`
-/

namespace A024522.P12802059444913871339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A014284 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024522.P12802059444913871339

namespace A024522

/-- `∑[A000040(n+1)*A014284(n+1)]` -/
def P12802059444913871339.Spec : Prop :=
  ∀ n, P12802059444913871339.a n = A024522 (n + 2)

end A024522

/-! ## A024522.P4363615874807933670

`∑[A000040(n+1)*∑[A008578(n+1)]]`
-/

namespace A024522.P4363615874807933670
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024522.P4363615874807933670

namespace A024522

/-- `∑[A000040(n+1)*∑[A008578(n+1)]]` -/
def P4363615874807933670.Spec : Prop :=
  ∀ n, P4363615874807933670.a n = A024522 (n + 2)

end A024522

/-! ## A024522.P3909378722218943146

`A024447(n+1)+∑[A040976(n+1)+2]`
-/

namespace A024522.P3909378722218943146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024447 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024522.P3909378722218943146

namespace A024522

/-- `A024447(n+1)+∑[A040976(n+1)+2]` -/
def P3909378722218943146.Spec : Prop :=
  ∀ n, P3909378722218943146.a n = A024522 (n + 2)

end A024522

/-! ## A024522.P6028363028552244893

`(n+1)²+A108754(n+1)+A024447(n+1)`
-/

namespace A024522.P6028363028552244893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) + (A108754 (n + 1) + A024447 (n + 1))

end

end A024522.P6028363028552244893

namespace A024522

/-- `(n+1)²+A108754(n+1)+A024447(n+1)` -/
def P6028363028552244893.Spec : Prop :=
  ∀ n, P6028363028552244893.a n = A024522 (n + 2)

end A024522

/-! ## A024522.P13471552109816921182

`A024447(n+1)+A122515(n+1)+A046992(n+1)`
-/

namespace A024522.P13471552109816921182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024447 (n + 1) + (A122515 (n + 1) + A046992 (n + 1))

end

end A024522.P13471552109816921182

namespace A024522

/-- `A024447(n+1)+A122515(n+1)+A046992(n+1)` -/
def P13471552109816921182.Spec : Prop :=
  ∀ n, P13471552109816921182.a n = A024522 (n + 2)

end A024522

/-! ## A024522.P17379598077799426618

`A006450(n+1)+A239731(n+1)+A024447(n+1)`
-/

namespace A024522.P17379598077799426618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (n + 1) + (A239731 (n + 1) + A024447 (n + 1))

end

end A024522.P17379598077799426618

namespace A024522

/-- `A006450(n+1)+A239731(n+1)+A024447(n+1)` -/
def P17379598077799426618.Spec : Prop :=
  ∀ n, P17379598077799426618.a n = A024522 (n + 2)

end A024522

/-! ## A024522.P5750121292611795279

`A024447(n+1)+A131740(n+1)-A077354(n+1)`
-/

namespace A024522.P5750121292611795279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024447 (n + 1) + (A131740 (n + 1) - A077354 (n + 1))

end

end A024522.P5750121292611795279

namespace A024522

/-- `A024447(n+1)+A131740(n+1)-A077354(n+1)` -/
def P5750121292611795279.Spec : Prop :=
  ∀ n, P5750121292611795279.a n = A024522 (n + 2)

end A024522

/-! ## A024522.P6473550592073478304

`A007504(n+1)+A357251(n+1)-A024450(n+1)`
-/

namespace A024522.P6473550592073478304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (n + 1) + (A357251 (n + 1) - A024450 (n + 1))

end

end A024522.P6473550592073478304

namespace A024522

/-- `A007504(n+1)+A357251(n+1)-A024450(n+1)` -/
def P6473550592073478304.Spec : Prop :=
  ∀ n, P6473550592073478304.a n = A024522 (n + 2)

end A024522

/-! ## A024522.P436595333546205266

`A024447(n+1)+∑[A151800(a(n-1))]` with `a(0)=2`
-/

namespace A024522.P436595333546205266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  A151800 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024447 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024522.P436595333546205266

namespace A024522

/-- `A024447(n+1)+∑[A151800(a(n-1))]` -/
def P436595333546205266.Spec : Prop :=
  ∀ n, P436595333546205266.a n = A024522 (n + 2)

end A024522

/-! ## A024522.P9492340575510652173

`A024447(n+1)+∑[record[A006530(n+2)]]`
-/

namespace A024522.P9492340575510652173
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024447 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024522.P9492340575510652173

namespace A024522

/-- `A024447(n+1)+∑[record[A006530(n+2)]]` -/
def P9492340575510652173.Spec : Prop :=
  ∀ n, P9492340575510652173.a n = A024522 (n + 2)

end A024522

/-! ## A024522.P14915907416441844365

`A024447(n+1)+∑[record[A020639(n+2)]]`
-/

namespace A024522.P14915907416441844365
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024447 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024522.P14915907416441844365

namespace A024522

/-- `A024447(n+1)+∑[record[A020639(n+2)]]` -/
def P14915907416441844365.Spec : Prop :=
  ∀ n, P14915907416441844365.a n = A024522 (n + 2)

end A024522

/-! ## A024522.P3993117464861268332

`∑[record[A006530(n+2)]*A014284(n+1)]`
-/

namespace A024522.P3993117464861268332
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) * A014284 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024522.P3993117464861268332

namespace A024522

/-- `∑[record[A006530(n+2)]*A014284(n+1)]` -/
def P3993117464861268332.Spec : Prop :=
  ∀ n, P3993117464861268332.a n = A024522 (n + 2)

end A024522

/-! ## A024522.P18107667622887586216

`∑[(A007504(n)+1)*record[A020639(n+2)]]`
-/

namespace A024522.P18107667622887586216
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A007504 n + 1) * f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024522.P18107667622887586216

namespace A024522

/-- `∑[(A007504(n)+1)*record[A020639(n+2)]]` -/
def P18107667622887586216.Spec : Prop :=
  ∀ n, P18107667622887586216.a n = A024522 (n + 2)

end A024522

/-! ## A024522.P939873625516756929

`∑[record[A020639(n+2)]*A014284(n+1)]`
-/

namespace A024522.P939873625516756929
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) * A014284 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024522.P939873625516756929

namespace A024522

/-- `∑[record[A020639(n+2)]*A014284(n+1)]` -/
def P939873625516756929.Spec : Prop :=
  ∀ n, P939873625516756929.a n = A024522 (n + 2)

end A024522

/-! ## A024522.P14655246958702610395

`A024447(n+1)+∑[record[A014963(n+2)]]`
-/

namespace A024522.P14655246958702610395
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024447 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024522.P14655246958702610395

namespace A024522

/-- `A024447(n+1)+∑[record[A014963(n+2)]]` -/
def P14655246958702610395.Spec : Prop :=
  ∀ n, P14655246958702610395.a n = A024522 (n + 2)

end A024522

/-!
# A024523: a(n) = 3rd elementary symmetric function of {1, p(1), p(2), ..., p(n-1)}, where p(0) = 1.

The programs for A024523, the canonical program `A024523.P15062515241422550493` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024523 has offset 3).

The definition of A024523 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2724 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A024523.P15062515241422550493

`∑[A024522(n+2)*A065091(n+1)]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A024523

/-- `∑[A024522(n+2)*A065091(n+1)]` -/
def P15062515241422550493.Spec : Prop :=
  ∀ n, P15062515241422550493.a n = A024523 (n + 3)

theorem P15062515241422550493.correct : P15062515241422550493.Spec := by
  intro n
  simp only [A024523, Nat.add_sub_cancel]

end A024523

/-! ## A024523.P10535459038243893288

`∑[A000040(n+2)*A024522(n+2)]`
-/

namespace A024523.P10535459038243893288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2) * A024522 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024523.P10535459038243893288

namespace A024523

/-- `∑[A000040(n+2)*A024522(n+2)]` -/
def P10535459038243893288.Spec : Prop :=
  ∀ n, P10535459038243893288.a n = A024523 (n + 3)

end A024523

/-! ## A024523.P6773964639841438468

`∑[p?[A005408(n)]*A024522(n+2)]`
-/

namespace A024523.P6773964639841438468
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) * A024522 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024523.P6773964639841438468

namespace A024523

/-- `∑[p?[A005408(n)]*A024522(n+2)]` -/
def P6773964639841438468.Spec : Prop :=
  ∀ n, P6773964639841438468.a n = A024523 (n + 3)

end A024523

/-! ## A024523.P2732894824772902018

`∑[p?[A002808(n+1)-1]*A024522(n+2)]`
-/

namespace A024523.P2732894824772902018
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) * A024522 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024523.P2732894824772902018

namespace A024523

/-- `∑[p?[A002808(n+1)-1]*A024522(n+2)]` -/
def P2732894824772902018.Spec : Prop :=
  ∀ n, P2732894824772902018.a n = A024523 (n + 3)

end A024523

/-! ## A024523.P12180810240483189471

`∑[p?[A097362(n+1)+2]*A024522(n+2)]`
-/

namespace A024523.P12180810240483189471
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097362 (n + 1) + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) * A024522 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024523.P12180810240483189471

namespace A024523

/-- `∑[p?[A097362(n+1)+2]*A024522(n+2)]` -/
def P12180810240483189471.Spec : Prop :=
  ∀ n, P12180810240483189471.a n = A024523 (n + 3)

end A024523

/-!
# A024524: 4th elementary symmetric function of {1, p(1), p(2), ..., p(n-1)}, where p(0) = 1.

The programs for A024524, the canonical program `A024524.P1283342088011010465` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024524 has offset 4).

The definition of A024524 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 534 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A024524.P1283342088011010465

`∑[A008578(n+4)*A024523(n+3)]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A024524

/-- `∑[A008578(n+4)*A024523(n+3)]` -/
def P1283342088011010465.Spec : Prop :=
  ∀ n, P1283342088011010465.a n = A024524 (n + 4)

theorem P1283342088011010465.correct : P1283342088011010465.Spec := by
  intro n
  simp only [A024524, Nat.add_sub_cancel]

end A024524

/-!
# A024525: a(n) = 1^2 + prime(1)^2 + prime(2)^2 + ... + prime(n)^2.

The programs for A024525, the canonical program `A024525.P3676493652697660217` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024525 has offset 0).

The definition of A024525 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A024525.P14400493424282957023

`∑[A280076(n+1)]`
-/

namespace A024525.P14400493424282957023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280076 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024525.P14400493424282957023

namespace A024525

/-- `∑[A280076(n+1)]` -/
def P14400493424282957023.Spec : Prop :=
  ∀ n, P14400493424282957023.a n = A024525 n

end A024525

/-! ## A024525.P16619499849578339413

`∑[A008578(n+1)²]`
-/

namespace A024525.P16619499849578339413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024525.P16619499849578339413

namespace A024525

/-- `∑[A008578(n+1)²]` -/
def P16619499849578339413.Spec : Prop :=
  ∀ n, P16619499849578339413.a n = A024525 n

end A024525

/-! ## A024525.P11024584347991166738

`∑[(1-A028815(n))²]`
-/

namespace A024525.P11024584347991166738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A028815 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024525.P11024584347991166738

namespace A024525

/-- `∑[(1-A028815(n))²]` -/
def P11024584347991166738.Spec : Prop :=
  ∀ n, P11024584347991166738.a n = A024525 n

end A024525

/-! ## A024525.P10265218490665727957

`∑[record[A259153(n+1)²]]`
-/

namespace A024525.P10265218490665727957
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259153 (n + 1) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024525.P10265218490665727957

namespace A024525

/-- `∑[record[A259153(n+1)²]]` -/
def P10265218490665727957.Spec : Prop :=
  ∀ n, P10265218490665727957.a n = A024525 n

end A024525

/-! ## A024525.P3676493652697660217

`A001248(n)+a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A024525

/-- `A001248(n)+a(n-1)` -/
def P3676493652697660217.Spec : Prop :=
  ∀ n, P3676493652697660217.a n = A024525 n

theorem P3676493652697660217.correct : P3676493652697660217.Spec := by
  intro n
  simp only [A024525]

end A024525

/-! ## A024525.P12545526699201325985

`∑[A182986(n+1)²]+1`
-/

namespace A024525.P12545526699201325985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A024525.P12545526699201325985

namespace A024525

/-- `∑[A182986(n+1)²]+1` -/
def P12545526699201325985.Spec : Prop :=
  ∀ n, P12545526699201325985.a n = A024525 n

end A024525

/-! ## A024525.P16687688987055367736

`∑[(A001747(n+1)/2)²]`
-/

namespace A024525.P16687688987055367736
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A001747 (n + 1) : ℚ) / 2) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024525.P16687688987055367736

namespace A024525

/-- `∑[(A001747(n+1)/2)²]` -/
def P16687688987055367736.Spec : Prop :=
  ∀ n, P16687688987055367736.a n = (A024525 n : ℚ)

end A024525

/-! ## A024525.P2342075293284422411

`∑[(A112773(n+1)/3)²]`
-/

namespace A024525.P2342075293284422411
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A112773 (n + 1) : ℚ) / 3) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024525.P2342075293284422411

namespace A024525

/-- `∑[(A112773(n+1)/3)²]` -/
def P2342075293284422411.Spec : Prop :=
  ∀ n, P2342075293284422411.a n = (A024525 n : ℚ)

end A024525

/-! ## A024525.P1331404255754825537

`∑[(A167136(n+1)-n)²]`
-/

namespace A024525.P1331404255754825537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A167136 (n + 1) - (n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024525.P1331404255754825537

namespace A024525

/-- `∑[(A167136(n+1)-n)²]` -/
def P1331404255754825537.Spec : Prop :=
  ∀ n, P1331404255754825537.a n = A024525 n

end A024525

/-! ## A024525.P5273851692083464791

`a(n-1)+A000040(n)²` with `a(0)=1`
-/

namespace A024525.P5273851692083464791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A000040 n ^ 2

end

end A024525.P5273851692083464791

namespace A024525

/-- `a(n-1)+A000040(n)²` -/
def P5273851692083464791.Spec : Prop :=
  ∀ n, P5273851692083464791.a n = A024525 n

end A024525

/-! ## A024525.P10424979328941345662

`∑[(A162177(n+1)+n+1)²]`
-/

namespace A024525.P10424979328941345662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A162177 (n + 1) + (n + 1 : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024525.P10424979328941345662

namespace A024525

/-- `∑[(A162177(n+1)+n+1)²]` -/
def P10424979328941345662.Spec : Prop :=
  ∀ n, P10424979328941345662.a n = A024525 n

end A024525

/-! ## A024525.P15350236566121667152

`∑[(n+1-A090178(n+1))²]`
-/

namespace A024525.P15350236566121667152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) - A090178 (n + 1)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024525.P15350236566121667152

namespace A024525

/-- `∑[(n+1-A090178(n+1))²]` -/
def P15350236566121667152.Spec : Prop :=
  ∀ n, P15350236566121667152.a n = A024525 n

end A024525

/-! ## A024525.P16547467522460798606

`∑[(A164931(n+1)/(n+1))²]`
-/

namespace A024525.P16547467522460798606
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A164931 (n + 1) : ℚ) / (n + 1 : ℚ)) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024525.P16547467522460798606

namespace A024525

/-- `∑[(A164931(n+1)/(n+1))²]` -/
def P16547467522460798606.Spec : Prop :=
  ∀ n, P16547467522460798606.a n = (A024525 n : ℚ)

end A024525

/-! ## A024525.P18092973771783637810

`A024450(n+1)-A084920(n+1)`
-/

namespace A024525.P18092973771783637810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024450 (n + 1) - A084920 (n + 1)

end

end A024525.P18092973771783637810

namespace A024525

/-- `A024450(n+1)-A084920(n+1)` -/
def P18092973771783637810.Spec : Prop :=
  ∀ n, P18092973771783637810.a n = A024525 n

end A024525

/-! ## A024525.P8481622186730191454

`A024450(n+1)+1-A000040(n+1)²`
-/

namespace A024525.P8481622186730191454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024450 (n + 1) + (1 - A000040 (n + 1) ^ 2)

end

end A024525.P8481622186730191454

namespace A024525

/-- `A024450(n+1)+1-A000040(n+1)²` -/
def P8481622186730191454.Spec : Prop :=
  ∀ n, P8481622186730191454.a n = A024525 n

end A024525

/-! ## A024525.P11989157150399207481

`∑[A001248(n+1)]+1-A001248(n+1)`
-/

namespace A024525.P11989157150399207481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A001248 (n + 1))

end

end A024525.P11989157150399207481

namespace A024525

/-- `∑[A001248(n+1)]+1-A001248(n+1)` -/
def P11989157150399207481.Spec : Prop :=
  ∀ n, P11989157150399207481.a n = A024525 n

end A024525

/-! ## A024525.P2720221362423488992

`∑[A158611(n+2)²]`
-/

namespace A024525.P2720221362423488992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024525.P2720221362423488992

namespace A024525

/-- `∑[A158611(n+2)²]` -/
def P2720221362423488992.Spec : Prop :=
  ∀ n, P2720221362423488992.a n = A024525 n

end A024525

/-! ## A024525.P8636641278049464017

`∑[Δ[A175965(n+1)]²]`
-/

namespace A024525.P8636641278049464017
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175965 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024525.P8636641278049464017

namespace A024525

/-- `∑[Δ[A175965(n+1)]²]` -/
def P8636641278049464017.Spec : Prop :=
  ∀ n, P8636641278049464017.a n = A024525 n

end A024525

/-! ## A024525.P2702758357668001770

`∑[record[A025473(n+1)²]]`
-/

namespace A024525.P2702758357668001770
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025473 (n + 1) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024525.P2702758357668001770

namespace A024525

/-- `∑[record[A025473(n+1)²]]` -/
def P2702758357668001770.Spec : Prop :=
  ∀ n, P2702758357668001770.a n = A024525 n

end A024525

/-! ## A024525.P7960763757792773017

`∑[record[A006530(n+1)²]]`
-/

namespace A024525.P7960763757792773017
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024525.P7960763757792773017

namespace A024525

/-- `∑[record[A006530(n+1)²]]` -/
def P7960763757792773017.Spec : Prop :=
  ∀ n, P7960763757792773017.a n = A024525 n

end A024525

/-!
# A024526: a(n) = Sum_{0 <= i < j <= n} (prime(j) - prime(i))^2, where prime(0) = 1.

The programs for A024526, the canonical program `A024526.P216027257778899538` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024526 has offset 1).

The definition of A024526 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A024526.P5622928371741327977

`A062022(n+1)+∑[A005722(n+1)]`
-/

namespace A024526.P5622928371741327977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005722 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062022 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024526.P5622928371741327977

namespace A024526

/-- `A062022(n+1)+∑[A005722(n+1)]` -/
def P5622928371741327977.Spec : Prop :=
  ∀ n, P5622928371741327977.a n = A024526 (n + 1)

end A024526

/-! ## A024526.P16757753995500707488

`A062022(n+1)+∑[A006093(n+1)²]`
-/

namespace A024526.P16757753995500707488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062022 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024526.P16757753995500707488

namespace A024526

/-- `A062022(n+1)+∑[A006093(n+1)²]` -/
def P16757753995500707488.Spec : Prop :=
  ∀ n, P16757753995500707488.a n = A024526 (n + 1)

end A024526

/-! ## A024526.P216027257778899538

`∑[A005722(n+1)]+n*A024450(n+1)-A065595(n+1)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A024526

/-- `∑[A005722(n+1)]+n*A024450(n+1)-A065595(n+1)` -/
def P216027257778899538.Spec : Prop :=
  ∀ n, P216027257778899538.a n = A024526 (n + 1)

theorem P216027257778899538.correct : P216027257778899538.Spec := by
  intro n
  simp only [A024526, Nat.add_sub_cancel]

end A024526

/-! ## A024526.P5513972815064135353

`∑[A005722(n+1)]+(n+1)*A024450(n+1)-A007504(n+1)²`
-/

namespace A024526.P5513972815064135353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005722 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((n + 1 : ℤ) * A024450 (n + 1) - A007504 (n + 1) ^ 2)

end

end A024526.P5513972815064135353

namespace A024526

/-- `∑[A005722(n+1)]+(n+1)*A024450(n+1)-A007504(n+1)²` -/
def P5513972815064135353.Spec : Prop :=
  ∀ n, P5513972815064135353.a n = A024526 (n + 1)

end A024526

/-!
# A024528: a(n) = n-th elementary symmetric function of {1, prime(1), prime(2), ..., prime(n)}.

The programs for A024528, there is no canonical definition to state claims against.
-/

/-! ## A024528.P11729440654111446191

`A000040(n)*a(n-1)+A002110(n-1)` with `a(0)=1`
-/

namespace A024528.P11729440654111446191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000040 n * a (n - 1) + A002110 (n - 1)

end

end A024528.P11729440654111446191

/-! ## A024528.P8729923146564771778

`A024451(n)+A002110(n)`
-/

namespace A024528.P8729923146564771778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024451 n + A002110 n

end

end A024528.P8729923146564771778

/-! ## A024528.P16302138661671613990

`A024451(n)+∏[A008578(n+1)]`
-/

namespace A024528.P16302138661671613990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024451 n + ∏ j ∈ Finset.range (n + 1), f1 j

end

end A024528.P16302138661671613990

/-! ## A024528.P6757774830847568469

`A024451(n)+∏[A015919(n+1)]`
-/

namespace A024528.P6757774830847568469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015919 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024451 n + ∏ j ∈ Finset.range (n + 1), f1 j

end

end A024528.P6757774830847568469

/-! ## A024528.P18362290043901211751

`A024451(n)+∏[A064555(n+1)]`
-/

namespace A024528.P18362290043901211751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064555 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024451 n + ∏ j ∈ Finset.range (n + 1), f1 j

end

end A024528.P18362290043901211751

/-! ## A024528.P7111164873851473649

`A024451(n)+∏[A158611(n+2)]`
-/

namespace A024528.P7111164873851473649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024451 n + ∏ j ∈ Finset.range (n + 1), f1 j

end

end A024528.P7111164873851473649

/-! ## A024528.P6969934641049277977

`A024451(n)+record[A108951(n+1)]`
-/

namespace A024528.P6969934641049277977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108951 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024451 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024528.P6969934641049277977

/-! ## A024528.P3722033493818088289

`A024451(n)+∏[record[A006530(n+1)]]`
-/

namespace A024528.P3722033493818088289
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024451 n + ∏ j ∈ Finset.range (n + 1), f1 j

end

end A024528.P3722033493818088289

/-! ## A024528.P14041005073251209184

`A024451(n)+∏[record[A014963(n+1)]]`
-/

namespace A024528.P14041005073251209184
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024451 n + ∏ j ∈ Finset.range (n + 1), f1 j

end

end A024528.P14041005073251209184

/-! ## A024528.P16688678006008917015

`A024451(n)+∏[record[A020639(n+1)]]`
-/

namespace A024528.P16688678006008917015
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024451 n + ∏ j ∈ Finset.range (n + 1), f1 j

end

end A024528.P16688678006008917015

/-!
# A024529: a(n) = s(1)*s(2)*...*s(n)*(1/s(1) - 1/s(2) + ... + c/s(n)), where s(1) = 1, s(k) = p(k-1) for k >= 2 and c = (-1)^(n+1).

The programs for A024529, there is no canonical definition to state claims against.
-/

/-! ## A024529.P5276793222109185471

`A002110(n)-A024530(n)`
-/

namespace A024529.P5276793222109185471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 n - A024530 n

end

end A024529.P5276793222109185471

/-! ## A024529.P8216632928098583588

`record[A096334(n)]-A024530(n)`
-/

namespace A024529.P8216632928098583588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096334 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A024530 n

end

end A024529.P8216632928098583588

/-! ## A024529.P16799087883060127860

`record[A121281(n)]-A024530(n)`
-/

namespace A024529.P16799087883060127860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121281 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A024530 n

end

end A024529.P16799087883060127860

/-! ## A024529.P16772218635608515767

`∏[A008578(n+1)]-A024530(n)`
-/

namespace A024529.P16772218635608515767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - A024530 n

end

end A024529.P16772218635608515767

/-! ## A024529.P7832459504814331573

`A024528(n)-(A024530(n)+A024451(n))`
-/

namespace A024529.P7832459504814331573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024528 n - (A024530 n + A024451 n)

end

end A024529.P7832459504814331573

/-!
# A024530: Numerator of -Sum_{k=1..n} (-1)^k / prime(k).

The programs for A024530, there is no canonical definition to state claims against.
-/

/-! ## A024530.P8773441860814173897

`A002110(n)-A024529(n+1)`
-/

namespace A024530.P8773441860814173897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 n - A024529 (n + 1)

end

end A024530.P8773441860814173897

/-! ## A024530.P1621517025755795251

`record[A096334(n)]-A024529(n+1)`
-/

namespace A024530.P1621517025755795251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096334 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A024529 (n + 1)

end

end A024530.P1621517025755795251

/-! ## A024530.P5901844211923423380

`record[A121281(n)]-A024529(n+1)`
-/

namespace A024530.P5901844211923423380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121281 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A024529 (n + 1)

end

end A024530.P5901844211923423380

/-! ## A024530.P18174210191273051366

`∏[A008578(n+1)]-A024529(n+1)`
-/

namespace A024530.P18174210191273051366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - A024529 (n + 1)

end

end A024530.P18174210191273051366

/-! ## A024530.P17461268785604673821

`A024528(n)-(A024529(n+1)+A024451(n))`
-/

namespace A024530.P17461268785604673821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024528 n - (A024529 (n + 1) + A024451 n)

end

end A024530.P17461268785604673821

/-!
# A024531: a(n) = [ (2nd elementary symmetric function of P(n))/(first elementary symmetric function of P(n)) ], where P(n) = {1, p(1), p(2), ..., p(n-1)}, where p(0) = 1.

The programs for A024531, the canonical program `A024531.P4098472389079834350` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024531 has offset 2).

The definition of A024531 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A024531.P4098472389079834350

`floor(A024522(n+2)/A014284(n+2))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A024531

/-- `floor(A024522(n+2)/A014284(n+2))` -/
def P4098472389079834350.Spec : Prop :=
  ∀ n, P4098472389079834350.a n = A024531 (n + 2)

theorem P4098472389079834350.correct : P4098472389079834350.Spec := by
  intro n
  simp only [A024531, Nat.add_sub_cancel]

end A024531

/-! ## A024531.P10286964198454179402

`∑[lt[A261423(n), A182973(2*n+3)]]`
-/

namespace A024531.P10286964198454179402
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261423 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182973 (2 * n + 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024531.P10286964198454179402

namespace A024531

/-- `∑[lt[A261423(n), A182973(2*n+3)]]` -/
def P10286964198454179402.Spec : Prop :=
  ∀ n, (P10286964198454179402.a n : ℤ) = A024531 (n + 2)

end A024531

/-! ## A024531.P4876158213544607860

`∑[∑[A055090(A290990(n))]]`
-/

namespace A024531.P4876158213544607860
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055090 (A290990 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024531.P4876158213544607860

namespace A024531

/-- `∑[∑[A055090(A290990(n))]]` -/
def P4876158213544607860.Spec : Prop :=
  ∀ n, P4876158213544607860.a n = A024531 (n + 2)

end A024531

/-! ## A024531.P14505218145046696562

`∑[A358370(∑[A000010(n+4)])]`
-/

namespace A024531.P14505218145046696562
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 4)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358370 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024531.P14505218145046696562

namespace A024531

/-- `∑[A358370(∑[A000010(n+4)])]` -/
def P14505218145046696562.Spec : Prop :=
  ∀ n, P14505218145046696562.a n = A024531 (n + 2)

end A024531

/-! ## A024531.P619473503798094699

`∑[A071689(n)%A085146(2*(n+1))]`
-/

namespace A024531.P619473503798094699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A071689 n) (A085146 (2 * (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024531.P619473503798094699

namespace A024531

/-- `∑[A071689(n)%A085146(2*(n+1))]` -/
def P619473503798094699.Spec : Prop :=
  ∀ n, P619473503798094699.a n = A024531 (n + 2)

end A024531

/-!
# A024532: a(n) = [ (3rd elementary symmetric function of P(n))/(first elementary symmetric function of P(n)) ], where P(n) = {1, p(1), p(2), ..., p(n-1)}, where p(0) = 1.

The programs for A024532, there is no canonical definition to state claims against.
-/

/-! ## A024532.P13442595659270398289

`∑[∑[A085089(A176336(2*n+1))]]`
-/

namespace A024532.P13442595659270398289
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085089 (A176336 (2 * n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024532.P13442595659270398289

/-!
# A024534: a(n) = [ (3rd elementary symmetric function of P(n))/(2nd elementary symmetric function of P(n)) ], where P(n) = {1, p(1), p(2), ..., p(n-1)}, where p(0) = 1.

The programs for A024534, there is no canonical definition to state claims against.
-/

/-! ## A024534.P508160847614771214

`A097010(record[A120913(n+1)])-n`
-/

namespace A024534.P508160847614771214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120913 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097010 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat - (n : ℤ)

end

end A024534.P508160847614771214

/-! ## A024534.P12162496422485257329

`A334541(A025423(n)+C(n², 2))+∑[n]`
-/

namespace A024534.P12162496422485257329
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334541 (A025423 n + (Nat.choose (n ^ 2) 2 : ℤ)).toNat + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A024534.P12162496422485257329

/-! ## A024534.P15222119128410450044

`∑[A299230(A111954(n)+A026720(n))]`
-/

namespace A024534.P15222119128410450044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299230 (A111954 n + A026720 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024534.P15222119128410450044

/-! ## A024534.P2828177656331692199

`A232753(A005783(n)+1)`
-/

namespace A024534.P2828177656331692199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232753 (A005783 n + 1).toNat

end

end A024534.P2828177656331692199

/-! ## A024534.P10101331550363462065

`∑[∑[A156542(A074587(n+2))]]`
-/

namespace A024534.P10101331550363462065
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156542 (A074587 (n + 2)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024534.P10101331550363462065

/-!
# A024535: [ (4th elementary symmetric function of P(n))/(2nd elementary symmetric function of P(n)) ], where P(n) = {1, p(1), p(2), ..., p(n-1)}, where p(0) = 1.

The programs for A024535, the canonical program `A024535.P15474277784430025051` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024535 has offset 4).

The definition of A024535 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 529 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A024535.P15474277784430025051

`floor(A024524(n+4)/A024522(n+4))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A024535

/-- `floor(A024524(n+4)/A024522(n+4))` -/
def P15474277784430025051.Spec : Prop :=
  ∀ n, P15474277784430025051.a n = A024535 (n + 4)

theorem P15474277784430025051.correct : P15474277784430025051.Spec := by
  intro n
  simp only [A024535, Nat.add_sub_cancel]

end A024535

/-! ## A024535.P6226043617381489980

`A330123(A328858(n+1))`
-/

namespace A024535.P6226043617381489980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330123 (A328858 (n + 1)).toNat

end

end A024535.P6226043617381489980

namespace A024535

/-- `A330123(A328858(n+1))` -/
def P6226043617381489980.Spec : Prop :=
  ∀ n, P6226043617381489980.a n = A024535 (n + 4)

end A024535

/-!
# A024536: [ (4th elementary symmetric function of P(n))/(3rd elementary symmetric function of P(n)) ], where P(n) = {1, p(1), p(2), ..., p(n-1)}, p(0) = 1.

The programs for A024536, the canonical program `A024536.P2823935426376740183` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024536 has offset 4).

The definition of A024536 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A024523, A024524, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A024536.P2823935426376740183

`floor(A024524(n+4)/A024523(n+4))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A024536

/-- `floor(A024524(n+4)/A024523(n+4))` -/
def P2823935426376740183.Spec : Prop :=
  ∀ n, P2823935426376740183.a n = A024536 (n + 4)

theorem P2823935426376740183.correct : P2823935426376740183.Spec := by
  intro n
  simp only [A024536, Nat.add_sub_cancel]

end A024536

/-! ## A024536.P493408607472410559

`floor(A024533(n+4)/A024532(n+4))`
-/

namespace A024536.P493408607472410559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A024533 (n + 4) : ℚ) / (A024532 (n + 4) : ℚ)⌋

end

end A024536.P493408607472410559

namespace A024536

/-- `floor(A024533(n+4)/A024532(n+4))` -/
def P493408607472410559.Spec : Prop :=
  ∀ n, P493408607472410559.a n = A024536 (n + 4)

end A024536

/-! ## A024536.P3889080332575810837

`A008621(A007504(n+1))-A321649(A321625(n))`
-/

namespace A024536.P3889080332575810837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A007504 (n + 1)).toNat - A321649 (A321625 n).toNat

end

end A024536.P3889080332575810837

namespace A024536

/-- `A008621(A007504(n+1))-A321649(A321625(n))` -/
def P3889080332575810837.Spec : Prop :=
  ∀ n, P3889080332575810837.a n = A024536 (n + 4)

end A024536

/-! ## A024536.P14405942482403149159

`∑[ceil(A332891(A000040(n+1))/4)]`
-/

namespace A024536.P14405942482403149159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A332891 (A000040 (n + 1)).toNat : ℚ) / 4⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024536.P14405942482403149159

namespace A024536

/-- `∑[ceil(A332891(A000040(n+1))/4)]` -/
def P14405942482403149159.Spec : Prop :=
  ∀ n, P14405942482403149159.a n = A024536 (n + 4)

end A024536

/-! ## A024536.P10423291379265971443

`floor(∑[A000040(n+1)%A171255(n+1)/4])`
-/

namespace A024536.P10423291379265971443
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.tmod (A000040 (n + 1)) (A171255 (n + 1)) : ℚ) / 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A024536.P10423291379265971443

namespace A024536

/-- `floor(∑[A000040(n+1)%A171255(n+1)/4])` -/
def P10423291379265971443.Spec : Prop :=
  ∀ n, P10423291379265971443.a n = A024536 (n + 4)

end A024536

/-!
# A024537: a(n) = floor( a(n-1)/(sqrt(2) - 1) ), with a(0) = 1.

The programs for A024537, the canonical program `A024537.P13996438915032775300` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024537 has offset 0).

The definition of A024537 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A024537.P13996438915032775300

`2*a(n-1)+a(n-2)-1` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A024537

/-- `2*a(n-1)+a(n-2)-1` -/
def P13996438915032775300.Spec : Prop :=
  ∀ n, P13996438915032775300.a n = A024537 n

theorem P13996438915032775300.correct : P13996438915032775300.Spec := by
  intro n
  simp only [A024537]

end A024537

/-! ## A024537.P8300949248514836392

`A171842(n+1)`
-/

namespace A024537.P8300949248514836392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171842 (n + 1)

end

end A024537.P8300949248514836392

namespace A024537

/-- `A171842(n+1)` -/
def P8300949248514836392.Spec : Prop :=
  ∀ n, P8300949248514836392.a n = A024537 n

end A024537

/-! ## A024537.P3067494758234632650

`∑[ogf((-1+x+x^2)/(-1+2x+x^2))]`
-/

namespace A024537.P3067494758234632650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, -1] [1, -2, -1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024537.P3067494758234632650

namespace A024537

/-- `∑[ogf((-1+x+x^2)/(-1+2x+x^2))]` -/
def P3067494758234632650.Spec : Prop :=
  ∀ n, P3067494758234632650.a n = A024537 n

end A024537

/-! ## A024537.P18065623855540088528

`ogf((1-x-x^2)/(1-3x+x^2+x^3))`
-/

namespace A024537.P18065623855540088528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, -1] [1, -3, 1, 1] n

end

end A024537.P18065623855540088528

namespace A024537

/-- `ogf((1-x-x^2)/(1-3x+x^2+x^3))` -/
def P18065623855540088528.Spec : Prop :=
  ∀ n, P18065623855540088528.a n = A024537 n

end A024537

/-! ## A024537.P13601763615332200083

`floor((sqrt(2)+1)*a(n-1))` with `a(0)=1`
-/

namespace A024537.P13601763615332200083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(Real.sqrt (2 : ℝ) + 1) * (a (n - 1) : ℝ)⌋

end

end A024537.P13601763615332200083

namespace A024537

/-- `floor((sqrt(2)+1)*a(n-1))` -/
def P13601763615332200083.Spec : Prop :=
  ∀ n, P13601763615332200083.a n = A024537 n

end A024537

/-! ## A024537.P860446960542061707

`floor(a(n-1)/(sqrt(2)-1))` with `a(0)=1`
-/

namespace A024537.P860446960542061707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(a (n - 1) : ℝ) / (Real.sqrt (2 : ℝ) - 1)⌋

end

end A024537.P860446960542061707

namespace A024537

/-- `floor(a(n-1)/(sqrt(2)-1))` -/
def P860446960542061707.Spec : Prop :=
  ∀ n, P860446960542061707.a n = A024537 n

end A024537

/-! ## A024537.P7708639201455816381

`2*a(n-1)-(1-a(n-2))` with `a(0)=1, a(1)=2`
-/

namespace A024537.P7708639201455816381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  2 * a (n - 1) - (1 - a (n - 2))

end

end A024537.P7708639201455816381

namespace A024537

/-- `2*a(n-1)-(1-a(n-2))` -/
def P7708639201455816381.Spec : Prop :=
  ∀ n, P7708639201455816381.a n = A024537 n

theorem P7708639201455816381.correct : P7708639201455816381.Spec := by
  intro n
  simp only [A024537, Nat.add_sub_cancel, A024537.P7708639201455816381.a, A024537.P13996438915032775300.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A024537

/-! ## A024537.P18312431446605893605

`a(n-1)-1+a(n-1)+a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A024537.P18312431446605893605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) - 1 + (a (n - 1) + a (n - 2))

end

end A024537.P18312431446605893605

namespace A024537

/-- `a(n-1)-1+a(n-1)+a(n-2)` -/
def P18312431446605893605.Spec : Prop :=
  ∀ n, P18312431446605893605.a n = A024537 n

theorem P18312431446605893605.correct : P18312431446605893605.Spec := by
  intro n
  simp only [A024537, Nat.add_sub_cancel, A024537.P18312431446605893605.a, A024537.P13996438915032775300.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A024537

/-! ## A024537.P10460868750256730761

`a(n-1)-(1-a(n-1)-a(n-2))` with `a(0)=1, a(1)=2`
-/

namespace A024537.P10460868750256730761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) - (1 - a (n - 1) - a (n - 2))

end

end A024537.P10460868750256730761

namespace A024537

/-- `a(n-1)-(1-a(n-1)-a(n-2))` -/
def P10460868750256730761.Spec : Prop :=
  ∀ n, P10460868750256730761.a n = A024537 n

theorem P10460868750256730761.correct : P10460868750256730761.Spec := by
  intro n
  simp only [A024537, Nat.add_sub_cancel, A024537.P10460868750256730761.a, A024537.P13996438915032775300.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A024537

/-! ## A024537.P10156683083750866960

`∑[A215928(n)]`
-/

namespace A024537.P10156683083750866960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215928 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024537.P10156683083750866960

namespace A024537

/-- `∑[A215928(n)]` -/
def P10156683083750866960.Spec : Prop :=
  ∀ n, P10156683083750866960.a n = A024537 n

end A024537

/-! ## A024537.P15373580809064687194

`Δ[A100131(n)]`
-/

namespace A024537.P15373580809064687194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100131 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A024537.P15373580809064687194

namespace A024537

/-- `Δ[A100131(n)]` -/
def P15373580809064687194.Spec : Prop :=
  ∀ n, P15373580809064687194.a n = A024537 n

end A024537

/-! ## A024537.P2087743387482376119

`A182780(n)/2`
-/

namespace A024537.P2087743387482376119
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A182780 n : ℚ) / 2

end

end A024537.P2087743387482376119

namespace A024537

/-- `A182780(n)/2` -/
def P2087743387482376119.Spec : Prop :=
  ∀ n, P2087743387482376119.a n = (A024537 n : ℚ)

end A024537

/-! ## A024537.P982160347784673303

`ceil(A078057(n)/2)`
-/

namespace A024537.P982160347784673303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A078057 n : ℚ) / 2⌉

end

end A024537.P982160347784673303

namespace A024537

/-- `ceil(A078057(n)/2)` -/
def P982160347784673303.Spec : Prop :=
  ∀ n, P982160347784673303.a n = A024537 n

end A024537

/-! ## A024537.P8392824628882516548

`ceil(A100828(n)/2)`
-/

namespace A024537.P8392824628882516548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A100828 n : ℚ) / 2⌉

end

end A024537.P8392824628882516548

namespace A024537

/-- `ceil(A100828(n)/2)` -/
def P8392824628882516548.Spec : Prop :=
  ∀ n, P8392824628882516548.a n = A024537 n

end A024537

/-! ## A024537.P16970620942898516360

`∑[A000129(n)]+1`
-/

namespace A024537.P16970620942898516360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A024537.P16970620942898516360

namespace A024537

/-- `∑[A000129(n)]+1` -/
def P16970620942898516360.Spec : Prop :=
  ∀ n, P16970620942898516360.a n = A024537 n

end A024537

/-! ## A024537.P9785079842113392935

`Δ[A307465(n)]+1`
-/

namespace A024537.P9785079842113392935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307465 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A024537.P9785079842113392935

namespace A024537

/-- `Δ[A307465(n)]+1` -/
def P9785079842113392935.Spec : Prop :=
  ∀ n, P9785079842113392935.a n = A024537 n

end A024537

/-! ## A024537.P2793624243887701707

`∑[A174191(n)]-n`
-/

namespace A024537.P2793624243887701707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174191 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A024537.P2793624243887701707

namespace A024537

/-- `∑[A174191(n)]-n` -/
def P2793624243887701707.Spec : Prop :=
  ∀ n, P2793624243887701707.a n = A024537 n

end A024537

/-! ## A024537.P14845050419645194069

`A247311(3*(n+1))`
-/

namespace A024537.P14845050419645194069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247311 (3 * (n + 1))

end

end A024537.P14845050419645194069

namespace A024537

/-- `A247311(3*(n+1))` -/
def P14845050419645194069.Spec : Prop :=
  ∀ n, P14845050419645194069.a n = A024537 n

end A024537

/-! ## A024537.P11692721822942614088

`ceil(A001333(n+1)/2)`
-/

namespace A024537.P11692721822942614088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A001333 (n + 1) : ℚ) / 2⌉

end

end A024537.P11692721822942614088

namespace A024537

/-- `ceil(A001333(n+1)/2)` -/
def P11692721822942614088.Spec : Prop :=
  ∀ n, P11692721822942614088.a n = A024537 n

end A024537

/-! ## A024537.P18440954847803686963

`1-∑[A176981(n+1)]`
-/

namespace A024537.P18440954847803686963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176981 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024537.P18440954847803686963

namespace A024537

/-- `1-∑[A176981(n+1)]` -/
def P18440954847803686963.Spec : Prop :=
  ∀ n, P18440954847803686963.a n = A024537 n

end A024537

/-!
# A024538: a(n) = [ n/{n*sqrt(2)} ], where {x} := x - [ x ].

The programs for A024538, there is no canonical definition to state claims against.
-/

/-! ## A024538.P7567759486557564137

`floor(A024543(2*(n+1))/2)`
-/

namespace A024538.P7567759486557564137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A024543 (2 * (n + 1)) : ℚ) / 2⌋

end

end A024538.P7567759486557564137

/-! ## A024538.P10624172331447665786

`ceil((A024543(2*(n+1))-A057427(n))/2)`
-/

namespace A024538.P10624172331447665786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A024543 (2 * (n + 1)) - A057427 n : ℚ) / 2⌉

end

end A024538.P10624172331447665786

/-! ## A024538.P6156409357932725100

`A004526(A024543(2*(n+1)))`
-/

namespace A024538.P6156409357932725100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A024543 (2 * (n + 1))).toNat

end

end A024538.P6156409357932725100

/-! ## A024538.P18368641793830102899

`A123108(A024543(2*n+2))`
-/

namespace A024538.P18368641793830102899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A024543 (2 * n + 2)).toNat

end

end A024538.P18368641793830102899

/-! ## A024538.P17408337788019117428

`A065033(A024543(2*(n+1))-1)`
-/

namespace A024538.P17408337788019117428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A024543 (2 * (n + 1)) - 1).toNat

end

end A024538.P17408337788019117428

/-! ## A024538.P9555657984829143014

`A008619(A024543(2*(n+1))-2)`
-/

namespace A024538.P9555657984829143014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A024543 (2 * (n + 1)) - 2).toNat

end

end A024538.P9555657984829143014

/-!
# A024539: a(n) = [ 1/{n*sqrt(2)} ], where {x} := x - [ x ].

The programs for A024539, there is no canonical definition to state claims against.
-/

/-! ## A024539.P15746926048639469829

`floor(A024538(n+1)/(n+1))`
-/

namespace A024539.P15746926048639469829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A024538 (n + 1) : ℚ) / (n + 1 : ℚ)⌋

end

end A024539.P15746926048639469829

/-! ## A024539.P1903998222559115105

`A024544(2*(n+1))`
-/

namespace A024539.P1903998222559115105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024544 (2 * (n + 1))

end

end A024539.P1903998222559115105

/-! ## A024539.P289678031953329018

`floor(A024543(2*(n+1))/(2*(n+1)))`
-/

namespace A024539.P289678031953329018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A024543 (2 * (n + 1)) : ℚ) / (2 * (n + 1) : ℚ)⌋

end

end A024539.P289678031953329018

/-! ## A024539.P3728304900935788562

`A024545(2*(n+1))-A024545(2*n+1)`
-/

namespace A024539.P3728304900935788562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024545 (2 * (n + 1)) - A024545 (2 * n + 1)

end

end A024539.P3728304900935788562

/-! ## A024539.P10927241666434575436

`A024544(record[2*A263274(n)])%A103145(n)`
-/

namespace A024539.P10927241666434575436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A263274 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A024544 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat) (A103145 n)

end

end A024539.P10927241666434575436

/-! ## A024539.P5128955810511406597

`A091453(2*(n+1)²)`
-/

namespace A024539.P5128955810511406597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091453 (2 * (n + 1) ^ 2)

end

end A024539.P5128955810511406597

/-!
# A024540: a(n) = Sum_{k=1..n} floor( 1/{k*sqrt(2)} ), where {x} := x - floor(x).

The programs for A024540, there is no canonical definition to state claims against.
-/

/-! ## A024540.P14126881055800967665

`∑[A024539(n+1)]`
-/

namespace A024540.P14126881055800967665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024539 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024540.P14126881055800967665

/-! ## A024540.P9853893972748527117

`∑[floor(A024538(n+1)/(n+1))]`
-/

namespace A024540.P9853893972748527117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A024538 (n + 1) : ℚ) / (n + 1 : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024540.P9853893972748527117

/-! ## A024540.P3973249217008175261

`∑[A024544(2*(n+1))]`
-/

namespace A024540.P3973249217008175261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024544 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024540.P3973249217008175261

/-! ## A024540.P15534888894663266217

`A024544(Δ[n²]+1)+a(n-1)` with `a(0)=2`
-/

namespace A024540.P15534888894663266217
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A024544 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 1).toNat + a (n - 1)

end

end A024540.P15534888894663266217

/-! ## A024540.P816943303940624480

`∑[A024544(Δ[n²]+1)%A000124(n+11)]`
-/

namespace A024540.P816943303940624480
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A024544 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) + 1).toNat) (A000124 (n + 11))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024540.P816943303940624480

/-! ## A024540.P17056306103050467136

`A028310(a(n-1))+A024539(n+1)` with `a(0)=2`
-/

namespace A024540.P17056306103050467136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A028310 (a (n - 1)).toNat + A024539 (n + 1)

end

end A024540.P17056306103050467136

/-! ## A024540.P13370365126198992971

`∑[A000188(A024544(Δ[n²]+1)²)]`
-/

namespace A024540.P13370365126198992971
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A024544 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) + 1).toNat ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024540.P13370365126198992971

/-! ## A024540.P5923490701713946329

`∑[A091453(2*(n+1)²)]`
-/

namespace A024540.P5923490701713946329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091453 (2 * (n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024540.P5923490701713946329

/-!
# A024542: Lower bound on cumulative mean of distances between cards after n shuffles in A024222.

The programs for A024542, there is no canonical definition to state claims against.
-/

/-! ## A024542.P8644325903213335184

`∑[A337690(A296603(n+1)²+4)]`
-/

namespace A024542.P8644325903213335184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337690 (A296603 (n + 1) ^ 2 + 4).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024542.P8644325903213335184

/-!
# A024544: a(n) = [ 1/{n/sqrt(2)} ], where {x} := x - [ x ].

The programs for A024544, there is no canonical definition to state claims against.
-/

/-! ## A024544.P461338458060088344

`floor(A024543(n+1)/(n+1))`
-/

namespace A024544.P461338458060088344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A024543 (n + 1) : ℚ) / (n + 1 : ℚ)⌋

end

end A024544.P461338458060088344

/-! ## A024544.P9789527586386452038

`A028310(Δ[A024545(A028310(n))])`
-/

namespace A024544.P9789527586386452038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024545 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (f1 (n + 1) - f1 n).toNat

end

end A024544.P9789527586386452038

/-! ## A024544.P3863203272697426304

`A028310(A024545(n+1)-A024545(A028310(n)))`
-/

namespace A024544.P3863203272697426304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A024545 (n + 1) - A024545 (A028310 n).toNat).toNat

end

end A024544.P3863203272697426304

/-! ## A024544.P7669971562774544788

`A033420(A087075(n+1)%A298720(2*n+1))`
-/

namespace A024544.P7669971562774544788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033420 (Int.tmod (A087075 (n + 1)) (A298720 (2 * n + 1))).toNat

end

end A024544.P7669971562774544788

/-!
# A024545: a(n) = Sum_{k=1..n} floor( 1/{k/sqrt(2)} ), where {x} := x - floor(x).

The programs for A024545, there is no canonical definition to state claims against.
-/

/-! ## A024545.P3842702711747724347

`∑[A024544(n+1)]`
-/

namespace A024545.P3842702711747724347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024544 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024545.P3842702711747724347

/-! ## A024545.P1053927820855138312

`∑[floor(A024543(n+1)/(n+1))]`
-/

namespace A024545.P1053927820855138312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A024543 (n + 1) : ℚ) / (n + 1 : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024545.P1053927820855138312

/-! ## A024545.P11743539475541569868

`A028310(a(n-1))+A024544(n+1)` with `a(0)=1`
-/

namespace A024545.P11743539475541569868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A028310 (a (n - 1)).toNat + A024544 (n + 1)

end

end A024545.P11743539475541569868

/-! ## A024545.P9014747758913389934

`A028310(∑[A024544(Δ[n²]-n)])`
-/

namespace A024545.P9014747758913389934
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024544 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A024545.P9014747758913389934

/-! ## A024545.P16602348209001290476

`a(n-1)+A024544(n+1)%A024535(n+4)` with `a(0)=1`
-/

namespace A024545.P16602348209001290476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A024544 (n + 1)) (A024535 (n + 4))

end

end A024545.P16602348209001290476

/-! ## A024545.P4235962194186190849

`a(n-1)+A024544(n+1)%A017998(n)` with `a(0)=1`
-/

namespace A024545.P4235962194186190849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A024544 (n + 1)) (A017998 n)

end

end A024545.P4235962194186190849

/-!
# A024548: [ 1/{n*sqrt(3)} ], where {x} := x - [ x ].

The programs for A024548, the canonical program `A024548.P12287716097256940790` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024548 has offset 1).

The definition of A024548 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A024548.P10238275517651369270

`floor(A024547(n+1)/(n+1))`
-/

namespace A024548.P10238275517651369270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A024547 (n + 1) : ℚ) / (n + 1 : ℚ)⌋

end

end A024548.P10238275517651369270

namespace A024548

/-- `floor(A024547(n+1)/(n+1))` -/
def P10238275517651369270.Spec : Prop :=
  ∀ n, P10238275517651369270.a n = A024548 (n + 1)

end A024548

/-! ## A024548.P12287716097256940790

`floor(A194028(n+1)/A120864(n+1))`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A024548

/-- `floor(A194028(n+1)/A120864(n+1))` -/
def P12287716097256940790.Spec : Prop :=
  ∀ n, P12287716097256940790.a n = A024548 (n + 1)

theorem P12287716097256940790.correct : P12287716097256940790.Spec := by
  intro n
  simp only [A024548, Nat.add_sub_cancel]

end A024548

/-! ## A024548.P13848109880122038804

`ceil(A120865(n+1)/A120864(n+1))`
-/

namespace A024548.P13848109880122038804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A120865 (n + 1) : ℚ) / (A120864 (n + 1) : ℚ)⌉

end

end A024548.P13848109880122038804

namespace A024548

/-- `ceil(A120865(n+1)/A120864(n+1))` -/
def P13848109880122038804.Spec : Prop :=
  ∀ n, P13848109880122038804.a n = A024548 (n + 1)

end A024548

/-! ## A024548.P12363775493124531871

`ceil(A120865(n+1)/A227790(n+1))`
-/

namespace A024548.P12363775493124531871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A120865 (n + 1) : ℚ) / (A227790 (n + 1) : ℚ)⌉

end

end A024548.P12363775493124531871

namespace A024548

/-- `ceil(A120865(n+1)/A227790(n+1))` -/
def P12363775493124531871.Spec : Prop :=
  ∀ n, P12363775493124531871.a n = A024548 (n + 1)

end A024548

/-! ## A024548.P921761073477186115

`floor(2*A022838(n+1)/A120864(n+1))`
-/

namespace A024548.P921761073477186115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 * ((A022838 (n + 1) : ℚ) / (A120864 (n + 1) : ℚ))⌋

end

end A024548.P921761073477186115

namespace A024548

/-- `floor(2*A022838(n+1)/A120864(n+1))` -/
def P921761073477186115.Spec : Prop :=
  ∀ n, P921761073477186115.a n = A024548 (n + 1)

end A024548

/-! ## A024548.P15936403853132262567

`ceil(A120865(n+1)/(3*(n+1)²-A022838(n+1)²))`
-/

namespace A024548.P15936403853132262567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A120865 (n + 1) : ℚ) / ((3 * (n + 1) ^ 2 : ℤ) - A022838 (n + 1) ^ 2 : ℚ)⌉

end

end A024548.P15936403853132262567

namespace A024548

/-- `ceil(A120865(n+1)/(3*(n+1)²-A022838(n+1)²))` -/
def P15936403853132262567.Spec : Prop :=
  ∀ n, P15936403853132262567.a n = A024548 (n + 1)

end A024548

/-! ## A024548.P16528101743578689238

`ceil((n+1)²%A188069(n+2)/A120864(n+1))`
-/

namespace A024548.P16528101743578689238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Int.tmod ((n + 1) ^ 2 : ℤ) (A188069 (n + 2)) : ℚ) / (A120864 (n + 1) : ℚ)⌉

end

end A024548.P16528101743578689238

namespace A024548

/-- `ceil((n+1)²%A188069(n+2)/A120864(n+1))` -/
def P16528101743578689238.Spec : Prop :=
  ∀ n, P16528101743578689238.a n = A024548 (n + 1)

end A024548

/-! ## A024548.P16614657461700555348

`A024549(n+1)-∑[A091453(A033428(n))]`
-/

namespace A024548.P16614657461700555348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091453 (A033428 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024549 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024548.P16614657461700555348

namespace A024548

/-- `A024549(n+1)-∑[A091453(A033428(n))]` -/
def P16614657461700555348.Spec : Prop :=
  ∀ n, P16614657461700555348.a n = A024548 (n + 1)

end A024548

/-! ## A024548.P12312885104725529441

`A091453(3*(n+1)²)`
-/

namespace A024548.P12312885104725529441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091453 (3 * (n + 1) ^ 2)

end

end A024548.P12312885104725529441

namespace A024548

/-- `A091453(3*(n+1)²)` -/
def P12312885104725529441.Spec : Prop :=
  ∀ n, P12312885104725529441.a n = A024548 (n + 1)

end A024548

/-!
# A024549: Sum of [ 1/{k*sqrt(3)} ], k = 1,2,...,n, where {x} := x - [ x ].

The programs for A024549, the canonical program `A024549.P15398664414193032257` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024549 has offset 1).

The definition of A024549 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A024549.P15398664414193032257

`∑[A024548(n+1)]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A024549

/-- `∑[A024548(n+1)]` -/
def P15398664414193032257.Spec : Prop :=
  ∀ n, P15398664414193032257.a n = A024549 (n + 1)

theorem P15398664414193032257.correct : P15398664414193032257.Spec := by
  intro n
  simp only [A024549, Nat.add_sub_cancel]

end A024549

/-! ## A024549.P9881609345992332310

`∑[floor(A024547(n+1)/(n+1))]`
-/

namespace A024549.P9881609345992332310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A024547 (n + 1) : ℚ) / (n + 1 : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024549.P9881609345992332310

namespace A024549

/-- `∑[floor(A024547(n+1)/(n+1))]` -/
def P9881609345992332310.Spec : Prop :=
  ∀ n, P9881609345992332310.a n = A024549 (n + 1)

end A024549

/-! ## A024549.P10635980265744059856

`A024548(n+1)+a(A023443(n))` with `a(0)=1`
-/

namespace A024549.P10635980265744059856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A024548 (n + 1) + a (A023443 n).toNat

end

end A024549.P10635980265744059856

namespace A024549

/-- `A024548(n+1)+a(A023443(n))` -/
def P10635980265744059856.Spec : Prop :=
  ∀ n, P10635980265744059856.a n = A024549 (n + 1)

end A024549

/-! ## A024549.P8459803276188254864

`∑[floor(A194028(n+1)/A120864(n+1))]`
-/

namespace A024549.P8459803276188254864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A194028 (n + 1) : ℚ) / (A120864 (n + 1) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024549.P8459803276188254864

namespace A024549

/-- `∑[floor(A194028(n+1)/A120864(n+1))]` -/
def P8459803276188254864.Spec : Prop :=
  ∀ n, P8459803276188254864.a n = A024549 (n + 1)

end A024549

/-! ## A024549.P6890849145901641495

`∑[ceil(A120865(n+1)/A120864(n+1))]`
-/

namespace A024549.P6890849145901641495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A120865 (n + 1) : ℚ) / (A120864 (n + 1) : ℚ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024549.P6890849145901641495

namespace A024549

/-- `∑[ceil(A120865(n+1)/A120864(n+1))]` -/
def P6890849145901641495.Spec : Prop :=
  ∀ n, P6890849145901641495.a n = A024549 (n + 1)

end A024549

/-! ## A024549.P10730274876928481510

`a(n-1)+A001221(A008578(n+1))*A024548(n+1)` with `a(0)=1`
-/

namespace A024549.P10730274876928481510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A001221 (A008578 (n + 1)).toNat * A024548 (n + 1)

end

end A024549.P10730274876928481510

namespace A024549

/-- `a(n-1)+A001221(A008578(n+1))*A024548(n+1)` -/
def P10730274876928481510.Spec : Prop :=
  ∀ n, P10730274876928481510.a n = A024549 (n + 1)

end A024549

/-! ## A024549.P17942099047906640757

`a(n-1)+A024548(n+1)%A024535(n+4)` with `a(0)=1`
-/

namespace A024549.P17942099047906640757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A024548 (n + 1)) (A024535 (n + 4))

end

end A024549.P17942099047906640757

namespace A024549

/-- `a(n-1)+A024548(n+1)%A024535(n+4)` -/
def P17942099047906640757.Spec : Prop :=
  ∀ n, P17942099047906640757.a n = A024549 (n + 1)

end A024549

/-! ## A024549.P10279784897655975671

`∑[A091453(3*(n+1)²)]`
-/

namespace A024549.P10279784897655975671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091453 (3 * (n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024549.P10279784897655975671

namespace A024549

/-- `∑[A091453(3*(n+1)²)]` -/
def P10279784897655975671.Spec : Prop :=
  ∀ n, P10279784897655975671.a n = A024549 (n + 1)

end A024549

/-!
# A024551: a(n) = floor(a(n-1)/(sqrt(5) - 2)) for n > 0 and a(0) = 1.

The programs for A024551, the canonical program `A024551.P15292051677606475972` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024551 has offset 0).

The definition of A024551 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A024551.P15292051677606475972

`5*a(n-1)-3*a(n-2)-a(n-3)` with `a(0)=1, a(1)=4, a(2)=16`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A024551

/-- `5*a(n-1)-3*a(n-2)-a(n-3)` -/
def P15292051677606475972.Spec : Prop :=
  ∀ n, P15292051677606475972.a n = A024551 n

theorem P15292051677606475972.correct : P15292051677606475972.Spec := by
  intro n
  simp only [A024551]

end A024551

/-! ## A024551.P3634419109759057188

`floor(a(n-1)²/a(n-2))+3` with `a(0)=1, a(1)=4, a(2)=16`
-/

namespace A024551.P3634419109759057188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 16] fun n a =>
  ⌊(a (n - 1) ^ 2 : ℚ) / (a (n - 2) : ℚ)⌋ + 3

end

end A024551.P3634419109759057188

namespace A024551

/-- `floor(a(n-1)²/a(n-2))+3` -/
def P3634419109759057188.Spec : Prop :=
  ∀ n, P3634419109759057188.a n = A024551 n

end A024551

/-! ## A024551.P4732864482712366114

`∑[ogf((-1+x+x^2)/(-1+4x+x^2))]`
-/

namespace A024551.P4732864482712366114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, -1] [1, -4, -1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024551.P4732864482712366114

namespace A024551

/-- `∑[ogf((-1+x+x^2)/(-1+4x+x^2))]` -/
def P4732864482712366114.Spec : Prop :=
  ∀ n, P4732864482712366114.a n = A024551 n

end A024551

/-! ## A024551.P10791783341750805466

`ogf((1-x-x^2)/(1-5x+3x^2+x^3))`
-/

namespace A024551.P10791783341750805466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, -1] [1, -5, 3, 1] n

end

end A024551.P10791783341750805466

namespace A024551

/-- `ogf((1-x-x^2)/(1-5x+3x^2+x^3))` -/
def P10791783341750805466.Spec : Prop :=
  ∀ n, P10791783341750805466.a n = A024551 n

end A024551

/-! ## A024551.P4744095996922671809

`floor(ϕ^3*a(n-1))` with `a(0)=1`
-/

namespace A024551.P4744095996922671809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊Real.goldenRatio ^ 3 * (a (n - 1) : ℝ)⌋

end

end A024551.P4744095996922671809

namespace A024551

/-- `floor(ϕ^3*a(n-1))` -/
def P4744095996922671809.Spec : Prop :=
  ∀ n, P4744095996922671809.a n = A024551 n

end A024551

/-! ## A024551.P1520465762991254278

`floor(a(n-1)/(sqrt(5)-2))` with `a(0)=1`
-/

namespace A024551.P1520465762991254278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(a (n - 1) : ℝ) / (Real.sqrt (5 : ℝ) - 2)⌋

end

end A024551.P1520465762991254278

namespace A024551

/-- `floor(a(n-1)/(sqrt(5)-2))` -/
def P1520465762991254278.Spec : Prop :=
  ∀ n, P1520465762991254278.a n = A024551 n

end A024551

/-! ## A024551.P16898441446020026460

`floor(ϕ*ϕ²*a(n-1))` with `a(0)=1`
-/

namespace A024551.P16898441446020026460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊Real.goldenRatio * (Real.goldenRatio ^ 2 * (a (n - 1) : ℝ))⌋

end

end A024551.P16898441446020026460

namespace A024551

/-- `floor(ϕ*ϕ²*a(n-1))` -/
def P16898441446020026460.Spec : Prop :=
  ∀ n, P16898441446020026460.a n = A024551 n

end A024551

/-! ## A024551.P217186616119081958

`ceil(ϕ^3*a(n-1))-1` with `a(0)=1`
-/

namespace A024551.P217186616119081958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌈Real.goldenRatio ^ 3 * (a (n - 1) : ℝ)⌉ - 1

end

end A024551.P217186616119081958

namespace A024551

/-- `ceil(ϕ^3*a(n-1))-1` -/
def P217186616119081958.Spec : Prop :=
  ∀ n, P217186616119081958.a n = A024551 n

end A024551

/-! ## A024551.P12515276963090978776

`floor(ϕ*ϕ*ϕ*a(n-1))` with `a(0)=1`
-/

namespace A024551.P12515276963090978776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊Real.goldenRatio * (Real.goldenRatio * (Real.goldenRatio * (a (n - 1) : ℝ)))⌋

end

end A024551.P12515276963090978776

namespace A024551

/-- `floor(ϕ*ϕ*ϕ*a(n-1))` -/
def P12515276963090978776.Spec : Prop :=
  ∀ n, P12515276963090978776.a n = A024551 n

end A024551

/-! ## A024551.P3753177037371388366

`4*a(n-1)+a(n-2)-1` with `a(0)=1, a(1)=4`
-/

namespace A024551.P3753177037371388366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  4 * a (n - 1) + (a (n - 2) - 1)

end

end A024551.P3753177037371388366

namespace A024551

/-- `4*a(n-1)+a(n-2)-1` -/
def P3753177037371388366.Spec : Prop :=
  ∀ n, P3753177037371388366.a n = A024551 n

end A024551

/-! ## A024551.P242032647620589009

`4*a(n-1)-(1-a(n-2))` with `a(0)=1, a(1)=4`
-/

namespace A024551.P242032647620589009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  4 * a (n - 1) - (1 - a (n - 2))

end

end A024551.P242032647620589009

namespace A024551

/-- `4*a(n-1)-(1-a(n-2))` -/
def P242032647620589009.Spec : Prop :=
  ∀ n, P242032647620589009.a n = A024551 n

end A024551

/-! ## A024551.P15387406479007516090

`∑[A155179(n)]`
-/

namespace A024551.P15387406479007516090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155179 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024551.P15387406479007516090

namespace A024551

/-- `∑[A155179(n)]` -/
def P15387406479007516090.Spec : Prop :=
  ∀ n, P15387406479007516090.a n = A024551 n

end A024551

/-! ## A024551.P11877467315368026150

`Δ[A271388(n+1)]`
-/

namespace A024551.P11877467315368026150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271388 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A024551.P11877467315368026150

namespace A024551

/-- `Δ[A271388(n+1)]` -/
def P11877467315368026150.Spec : Prop :=
  ∀ n, P11877467315368026150.a n = A024551 n

end A024551

/-! ## A024551.P13317401148389158385

`3*A049652(n)+1`
-/

namespace A024551.P13317401148389158385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A049652 n + 1

end

end A024551.P13317401148389158385

namespace A024551

/-- `3*A049652(n)+1` -/
def P13317401148389158385.Spec : Prop :=
  ∀ n, P13317401148389158385.a n = A024551 n

end A024551

/-! ## A024551.P12382199558360079813

`A128429(3*(n+1))`
-/

namespace A024551.P12382199558360079813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128429 (3 * (n + 1))

end

end A024551.P12382199558360079813

namespace A024551

/-- `A128429(3*(n+1))` -/
def P12382199558360079813.Spec : Prop :=
  ∀ n, P12382199558360079813.a n = A024551 n

end A024551

/-! ## A024551.P16996542584799042020

`A293632(3*n+2)`
-/

namespace A024551.P16996542584799042020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293632 (3 * n + 2)

end

end A024551.P16996542584799042020

namespace A024551

/-- `A293632(3*n+2)` -/
def P16996542584799042020.Spec : Prop :=
  ∀ n, P16996542584799042020.a n = A024551 n

end A024551

/-! ## A024551.P11196307787039557856

`A293633(3*n+2)`
-/

namespace A024551.P11196307787039557856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293633 (3 * n + 2)

end

end A024551.P11196307787039557856

namespace A024551

/-- `A293633(3*n+2)` -/
def P11196307787039557856.Spec : Prop :=
  ∀ n, P11196307787039557856.a n = A024551 n

end A024551

/-! ## A024551.P3439030877367281107

`A390351(3*n)/2`
-/

namespace A024551.P3439030877367281107
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A390351 (3 * n) : ℚ) / 2

end

end A024551.P3439030877367281107

namespace A024551

/-- `A390351(3*n)/2` -/
def P3439030877367281107.Spec : Prop :=
  ∀ n, P3439030877367281107.a n = (A024551 n : ℚ)

end A024551

/-! ## A024551.P7945526506991154714

`∑[3*A001076(n)]+1`
-/

namespace A024551.P7945526506991154714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A001076 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A024551.P7945526506991154714

namespace A024551

/-- `∑[3*A001076(n)]+1` -/
def P7945526506991154714.Spec : Prop :=
  ∀ n, P7945526506991154714.a n = A024551 n

end A024551

/-! ## A024551.P2908773333662760190

`A286311(3*n)+a(n-1)` with `a(0)=1`
-/

namespace A024551.P2908773333662760190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A286311 (3 * n) + a (n - 1)

end

end A024551.P2908773333662760190

namespace A024551

/-- `A286311(3*n)+a(n-1)` -/
def P2908773333662760190.Spec : Prop :=
  ∀ n, P2908773333662760190.a n = A024551 n

end A024551

/-!
# A024552: a(n) = [ n/{n*sqrt(5)} ], where {x} := x - [ x ].

The programs for A024552, the canonical program `A024552.P1560158251074081305` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024552 has offset 1).

The definition of A024552 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A024552.P1560158251074081305

`floor(A024568(2*(n+1))/2)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A024552

/-- `floor(A024568(2*(n+1))/2)` -/
def P1560158251074081305.Spec : Prop :=
  ∀ n, P1560158251074081305.a n = A024552 (n + 1)

theorem P1560158251074081305.correct : P1560158251074081305.Spec := by
  intro n
  simp only [A024552, Nat.add_sub_cancel]

end A024552

/-! ## A024552.P12367265536882624271

`A004526(A024568(2*(n+1)))`
-/

namespace A024552.P12367265536882624271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A024568 (2 * (n + 1))).toNat

end

end A024552.P12367265536882624271

namespace A024552

/-- `A004526(A024568(2*(n+1)))` -/
def P12367265536882624271.Spec : Prop :=
  ∀ n, P12367265536882624271.a n = A024552 (n + 1)

end A024552

/-! ## A024552.P12353981192024234540

`A065033(A024568(2*(n+1))-1)`
-/

namespace A024552.P12353981192024234540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A024568 (2 * (n + 1)) - 1).toNat

end

end A024552.P12353981192024234540

namespace A024552

/-- `A065033(A024568(2*(n+1))-1)` -/
def P12353981192024234540.Spec : Prop :=
  ∀ n, P12353981192024234540.a n = A024552 (n + 1)

end A024552

/-! ## A024552.P12019845387373848674

`A008619(A024568(2*(n+1))-2)`
-/

namespace A024552.P12019845387373848674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A024568 (2 * (n + 1)) - 2).toNat

end

end A024552.P12019845387373848674

namespace A024552

/-- `A008619(A024568(2*(n+1))-2)` -/
def P12019845387373848674.Spec : Prop :=
  ∀ n, P12019845387373848674.a n = A024552 (n + 1)

end A024552

/-! ## A024552.P12535017912354487501

`A002265(2*A024568(2*(n+1)))`
-/

namespace A024552.P12535017912354487501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * A024568 (2 * (n + 1))).toNat

end

end A024552.P12535017912354487501

namespace A024552

/-- `A002265(2*A024568(2*(n+1)))` -/
def P12535017912354487501.Spec : Prop :=
  ∀ n, P12535017912354487501.a n = A024552 (n + 1)

end A024552

/-! ## A024552.P6933576282506314478

`A057979(or(1, A024568(2*(n+1))))`
-/

namespace A024552.P6933576282506314478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (Int.lor 1 (A024568 (2 * (n + 1)))).toNat

end

end A024552.P6933576282506314478

namespace A024552

/-- `A057979(or(1, A024568(2*(n+1))))` -/
def P6933576282506314478.Spec : Prop :=
  ∀ n, P6933576282506314478.a n = A024552 (n + 1)

end A024552

/-!
# A024553: [ 1/{n*sqrt(5)} ], where {x} := x - [ x ].

The programs for A024553, the canonical program `A024553.P1583672994999301604` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024553 has offset 1).

The definition of A024553 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A024553.P1583672994999301604

`floor(A024552(n+1)/(n+1))`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A024553

/-- `floor(A024552(n+1)/(n+1))` -/
def P1583672994999301604.Spec : Prop :=
  ∀ n, P1583672994999301604.a n = A024553 (n + 1)

theorem P1583672994999301604.correct : P1583672994999301604.Spec := by
  intro n
  simp only [A024553, Nat.add_sub_cancel]

end A024553

/-! ## A024553.P10098041722017063582

`A024569(2*(n+1))`
-/

namespace A024553.P10098041722017063582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024569 (2 * (n + 1))

end

end A024553.P10098041722017063582

namespace A024553

/-- `A024569(2*(n+1))` -/
def P10098041722017063582.Spec : Prop :=
  ∀ n, P10098041722017063582.a n = A024553 (n + 1)

end A024553

/-! ## A024553.P5196333360961872010

`A024569(n+2+n)%(n+6)²`
-/

namespace A024553.P5196333360961872010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A024569 (n + 2 + n)) ((n + 6) ^ 2 : ℤ)

end

end A024553.P5196333360961872010

namespace A024553

/-- `A024569(n+2+n)%(n+6)²` -/
def P5196333360961872010.Spec : Prop :=
  ∀ n, P5196333360961872010.a n = A024553 (n + 1)

end A024553

/-! ## A024553.P17126051557564500796

`A024570(2*(n+1))-A024570(2*n+1)`
-/

namespace A024553.P17126051557564500796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024570 (2 * (n + 1)) - A024570 (2 * n + 1)

end

end A024553.P17126051557564500796

namespace A024553

/-- `A024570(2*(n+1))-A024570(2*n+1)` -/
def P17126051557564500796.Spec : Prop :=
  ∀ n, P17126051557564500796.a n = A024553 (n + 1)

end A024553

/-! ## A024553.P6142583370324478106

`A025439(A032741(n))+A024569(n+2+n)`
-/

namespace A024553.P6142583370324478106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025439 (A032741 n).toNat + A024569 (n + 2 + n)

end

end A024553.P6142583370324478106

namespace A024553

/-- `A025439(A032741(n))+A024569(n+2+n)` -/
def P6142583370324478106.Spec : Prop :=
  ∀ n, P6142583370324478106.a n = A024553 (n + 1)

end A024553

/-!
# A024554: a(n) = Sum_{k=1..n} floor( 1/{k*sqrt(5)} ), where {x} := x - floor(x).

The programs for A024554, the canonical program `A024554.P10151573056255696748` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024554 has offset 1).

The definition of A024554 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A024554.P10151573056255696748

`∑[A024553(n+1)]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A024554

/-- `∑[A024553(n+1)]` -/
def P10151573056255696748.Spec : Prop :=
  ∀ n, P10151573056255696748.a n = A024554 (n + 1)

theorem P10151573056255696748.correct : P10151573056255696748.Spec := by
  intro n
  simp only [A024554, Nat.add_sub_cancel]

end A024554

/-! ## A024554.P11002267331448225241

`∑[A024569(2*(n+1))]`
-/

namespace A024554.P11002267331448225241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024569 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024554.P11002267331448225241

namespace A024554

/-- `∑[A024569(2*(n+1))]` -/
def P11002267331448225241.Spec : Prop :=
  ∀ n, P11002267331448225241.a n = A024554 (n + 1)

end A024554

/-! ## A024554.P5264542379043411359

`∑[A024569(n+2+n)%A000124(n+6)]`
-/

namespace A024554.P5264542379043411359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A024569 (n + 2 + n)) (A000124 (n + 6))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024554.P5264542379043411359

namespace A024554

/-- `∑[A024569(n+2+n)%A000124(n+6)]` -/
def P5264542379043411359.Spec : Prop :=
  ∀ n, P5264542379043411359.a n = A024554 (n + 1)

end A024554

/-! ## A024554.P6996409776627121891

`∑[A024570(2*(n+1))-A024570(2*n+1)]`
-/

namespace A024554.P6996409776627121891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024570 (2 * (n + 1)) - A024570 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024554.P6996409776627121891

namespace A024554

/-- `∑[A024570(2*(n+1))-A024570(2*n+1)]` -/
def P6996409776627121891.Spec : Prop :=
  ∀ n, P6996409776627121891.a n = A024554 (n + 1)

end A024554

/-! ## A024554.P3685937264706994743

`a(n-1)+A024569(2*(n+1))+A000007(n)` with `a(0)=4`
-/

namespace A024554.P3685937264706994743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  a (n - 1) + (A024569 (2 * (n + 1)) + A000007 n)

end

end A024554.P3685937264706994743

namespace A024554

/-- `a(n-1)+A024569(2*(n+1))+A000007(n)` -/
def P3685937264706994743.Spec : Prop :=
  ∀ n, P3685937264706994743.a n = A024554 (n + 1)

end A024554

/-! ## A024554.P12519358541259247294

`A028310(∑[A024569(n+2+n)])`
-/

namespace A024554.P12519358541259247294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024569 (n + 2 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A024554.P12519358541259247294

namespace A024554

/-- `A028310(∑[A024569(n+2+n)])` -/
def P12519358541259247294.Spec : Prop :=
  ∀ n, P12519358541259247294.a n = A024554 (n + 1)

end A024554

/-! ## A024554.P10478800143344205009

`∑[A056926(A024569(n+2+n)²)]`
-/

namespace A024554.P10478800143344205009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (A024569 (n + 2 + n) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024554.P10478800143344205009

namespace A024554

/-- `∑[A056926(A024569(n+2+n)²)]` -/
def P10478800143344205009.Spec : Prop :=
  ∀ n, P10478800143344205009.a n = A024554 (n + 1)

end A024554

/-!
# A024556: Odd squarefree composite numbers.

The programs for A024556, the canonical program `A024556.P10614028685495330531` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024556 has offset 1).

The definition of A024556 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7633 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A024556.P14789321004908326709

`A392009(n+1)/2`
-/

namespace A024556.P14789321004908326709
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A392009 (n + 1) : ℚ) / 2

end

end A024556.P14789321004908326709

namespace A024556

/-- `A392009(n+1)/2` -/
def P14789321004908326709.Spec : Prop :=
  ∀ n, P14789321004908326709.a n = (A024556 (n + 1) : ℚ)

end A024556

/-! ## A024556.P2756649762189121800

`∩[2*n+1, A380470(n+1)]`
-/

namespace A024556.P2756649762189121800
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380470 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A024556.P2756649762189121800

namespace A024556

/-- `∩[2*n+1, A380470(n+1)]` -/
def P2756649762189121800.Spec : Prop :=
  ∀ n, (P2756649762189121800.a n : ℤ) = A024556 (n + 1)

end A024556

/-! ## A024556.P17645035361984480771

`A000265(A392009(n+1))`
-/

namespace A024556.P17645035361984480771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A392009 (n + 1)).toNat

end

end A024556.P17645035361984480771

namespace A024556

/-- `A000265(A392009(n+1))` -/
def P17645035361984480771.Spec : Prop :=
  ∀ n, P17645035361984480771.a n = A024556 (n + 1)

end A024556

/-! ## A024556.P13057231540774320035

`eq[(A087049(n)+1)², A107393(n)]`
-/

namespace A024556.P13057231540774320035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A087049 n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107393 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A024556.P13057231540774320035

namespace A024556

/-- `eq[(A087049(n)+1)², A107393(n)]` -/
def P13057231540774320035.Spec : Prop :=
  ∀ n, (P13057231540774320035.a n : ℤ) = A024556 (n + 1)

end A024556

/-! ## A024556.P7720427920697528378

`eq[A087049(2*n), A339579(n+1)]`
-/

namespace A024556.P7720427920697528378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087049 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339579 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A024556.P7720427920697528378

namespace A024556

/-- `eq[A087049(2*n), A339579(n+1)]` -/
def P7720427920697528378.Spec : Prop :=
  ∀ n, (P7720427920697528378.a n : ℤ) = A024556 (n + 1)

end A024556

/-! ## A024556.P6774547182511062649

`eq[A105570(2*n), A339579(n+1)]`
-/

namespace A024556.P6774547182511062649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339579 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A024556.P6774547182511062649

namespace A024556

/-- `eq[A105570(2*n), A339579(n+1)]` -/
def P6774547182511062649.Spec : Prop :=
  ∀ n, (P6774547182511062649.a n : ℤ) = A024556 (n + 1)

end A024556

/-! ## A024556.P9164448520133248198

`filter[A082686(n+1), A008966(#)]`
-/

namespace A024556.P9164448520133248198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082686 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A024556.P9164448520133248198

namespace A024556

/-- `filter[A082686(n+1), A008966(#)]` -/
def P9164448520133248198.Spec : Prop :=
  ∀ n, P9164448520133248198.a n = A024556 (n + 1)

end A024556

/-! ## A024556.P10614028685495330531

`filter[A082686(n+1), A323154(#)]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A024556

/-- `filter[A082686(n+1), A323154(#)]` -/
def P10614028685495330531.Spec : Prop :=
  ∀ n, P10614028685495330531.a n = A024556 (n + 1)

theorem P10614028685495330531.correct : P10614028685495330531.Spec := by
  intro n
  simp only [A024556, Nat.add_sub_cancel]

end A024556

/-! ## A024556.P15473431887189214341

`filter[A082686(n+1), A323239(#)]`
-/

namespace A024556.P15473431887189214341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082686 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323239 (f1 j).toNat = 1) n)

end

end A024556.P15473431887189214341

namespace A024556

/-- `filter[A082686(n+1), A323239(#)]` -/
def P15473431887189214341.Spec : Prop :=
  ∀ n, P15473431887189214341.a n = A024556 (n + 1)

end A024556

/-! ## A024556.P4335146725226979658

`filter[A082686(n+1), A353559(#)]`
-/

namespace A024556.P4335146725226979658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082686 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353559 (f1 j).toNat = 1) n)

end

end A024556.P4335146725226979658

namespace A024556

/-- `filter[A082686(n+1), A353559(#)]` -/
def P4335146725226979658.Spec : Prop :=
  ∀ n, P4335146725226979658.a n = A024556 (n + 1)

end A024556

/-! ## A024556.P1559602587068442782

`filter[A082686(n+1), A353627(#)]`
-/

namespace A024556.P1559602587068442782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082686 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353627 (f1 j).toNat = 1) n)

end

end A024556.P1559602587068442782

namespace A024556

/-- `filter[A082686(n+1), A353627(#)]` -/
def P1559602587068442782.Spec : Prop :=
  ∀ n, P1559602587068442782.a n = A024556 (n + 1)

end A024556

/-! ## A024556.P5551063832755098682

`filter[A082686(n+1), A354819(#)]`
-/

namespace A024556.P5551063832755098682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082686 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354819 (f1 j).toNat = 1) n)

end

end A024556.P5551063832755098682

namespace A024556

/-- `filter[A082686(n+1), A354819(#)]` -/
def P5551063832755098682.Spec : Prop :=
  ∀ n, P5551063832755098682.a n = A024556 (n + 1)

end A024556

/-! ## A024556.P17245863760945739156

`filter[A082686(n+1), A359590(#)]`
-/

namespace A024556.P17245863760945739156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082686 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359590 (f1 j).toNat = 1) n)

end

end A024556.P17245863760945739156

namespace A024556

/-- `filter[A082686(n+1), A359590(#)]` -/
def P17245863760945739156.Spec : Prop :=
  ∀ n, P17245863760945739156.a n = A024556 (n + 1)

end A024556

/-! ## A024556.P9415740779768127334

`filter[A082686(n+1), A359592(#)]`
-/

namespace A024556.P9415740779768127334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082686 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359592 (f1 j).toNat = 1) n)

end

end A024556.P9415740779768127334

namespace A024556

/-- `filter[A082686(n+1), A359592(#)]` -/
def P9415740779768127334.Spec : Prop :=
  ∀ n, P9415740779768127334.a n = A024556 (n + 1)

end A024556

/-! ## A024556.P11914159104128307616

`filter[A082686(n+1), A359834(#)]`
-/

namespace A024556.P11914159104128307616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082686 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359834 (f1 j).toNat = 1) n)

end

end A024556.P11914159104128307616

namespace A024556

/-- `filter[A082686(n+1), A359834(#)]` -/
def P11914159104128307616.Spec : Prop :=
  ∀ n, P11914159104128307616.a n = A024556 (n + 1)

end A024556

/-! ## A024556.P5000003126456740275

`filter[A082686(n+1), A380469(#)]`
-/

namespace A024556.P5000003126456740275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082686 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380469 (f1 j).toNat = 1) n)

end

end A024556.P5000003126456740275

namespace A024556

/-- `filter[A082686(n+1), A380469(#)]` -/
def P5000003126456740275.Spec : Prop :=
  ∀ n, P5000003126456740275.a n = A024556 (n + 1)

end A024556

/-! ## A024556.P9367715738878948070

`filter[A061346(n+1), A008966(#)]`
-/

namespace A024556.P9367715738878948070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061346 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A024556.P9367715738878948070

namespace A024556

/-- `filter[A061346(n+1), A008966(#)]` -/
def P9367715738878948070.Spec : Prop :=
  ∀ n, P9367715738878948070.a n = A024556 (n + 1)

end A024556

/-! ## A024556.P1426997449168088265

`filter[A061346(n+1), A323154(#)]`
-/

namespace A024556.P1426997449168088265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061346 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323154 (f1 j).toNat = 1) n)

end

end A024556.P1426997449168088265

namespace A024556

/-- `filter[A061346(n+1), A323154(#)]` -/
def P1426997449168088265.Spec : Prop :=
  ∀ n, P1426997449168088265.a n = A024556 (n + 1)

end A024556

/-! ## A024556.P10820958668611023382

`filter[A061346(n+1), A323239(#)]`
-/

namespace A024556.P10820958668611023382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061346 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323239 (f1 j).toNat = 1) n)

end

end A024556.P10820958668611023382

namespace A024556

/-- `filter[A061346(n+1), A323239(#)]` -/
def P10820958668611023382.Spec : Prop :=
  ∀ n, P10820958668611023382.a n = A024556 (n + 1)

end A024556

/-! ## A024556.P15912007531481628097

`filter[A061346(n+1), A353559(#)]`
-/

namespace A024556.P15912007531481628097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061346 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353559 (f1 j).toNat = 1) n)

end

end A024556.P15912007531481628097

namespace A024556

/-- `filter[A061346(n+1), A353559(#)]` -/
def P15912007531481628097.Spec : Prop :=
  ∀ n, P15912007531481628097.a n = A024556 (n + 1)

end A024556

/-!
# A024557: a(n) = [ a(n-1)/(sqrt(6) - 2) ], where a(0) = 1.

The programs for A024557, the canonical program `A024557.P5292644803416980571` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024557 has offset 0).

The definition of A024557 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 289 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A024557.P16146665932505270710

`floor(a(n-1)/(sqrt(6)-2))` with `a(0)=1`
-/

namespace A024557.P16146665932505270710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(a (n - 1) : ℝ) / (Real.sqrt (6 : ℝ) - 2)⌋

end

end A024557.P16146665932505270710

namespace A024557

/-- `floor(a(n-1)/(sqrt(6)-2))` -/
def P16146665932505270710.Spec : Prop :=
  ∀ n, P16146665932505270710.a n = A024557 n

end A024557

/-! ## A024557.P5292644803416980571

`floor((a(n-2)-1)/2)+2*a(n-1)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A024557

/-- `floor((a(n-2)-1)/2)+2*a(n-1)` -/
def P5292644803416980571.Spec : Prop :=
  ∀ n, P5292644803416980571.a n = A024557 n

theorem P5292644803416980571.correct : P5292644803416980571.Spec := by
  intro n
  simp only [A024557]

end A024557

/-! ## A024557.P16257259811368658002

`2*a(n-1)-floor((2-a(n-2))/2)` with `a(0)=1, a(1)=2`
-/

namespace A024557.P16257259811368658002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  2 * a (n - 1) - ⌊(2 - a (n - 2) : ℚ) / 2⌋

end

end A024557.P16257259811368658002

namespace A024557

/-- `2*a(n-1)-floor((2-a(n-2))/2)` -/
def P16257259811368658002.Spec : Prop :=
  ∀ n, P16257259811368658002.a n = A024557 n

end A024557

/-! ## A024557.P3161059689798481096

`a(n-1)+floor(a(n-1)+(a(n-2)-1)/2)` with `a(0)=1, a(1)=2`
-/

namespace A024557.P3161059689798481096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) + ⌊(a (n - 1) : ℚ) + (a (n - 2) - 1 : ℚ) / 2⌋

end

end A024557.P3161059689798481096

namespace A024557

/-- `a(n-1)+floor(a(n-1)+(a(n-2)-1)/2)` -/
def P3161059689798481096.Spec : Prop :=
  ∀ n, P3161059689798481096.a n = A024557 n

end A024557

/-! ## A024557.P3718925407580855392

`a(n-1)-floor(1-a(n-1)-a(n-2)/2)` with `a(0)=1, a(1)=2`
-/

namespace A024557.P3718925407580855392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) - ⌊(1 - a (n - 1) : ℚ) - (a (n - 2) : ℚ) / 2⌋

end

end A024557.P3718925407580855392

namespace A024557

/-- `a(n-1)-floor(1-a(n-1)-a(n-2)/2)` -/
def P3718925407580855392.Spec : Prop :=
  ∀ n, P3718925407580855392.a n = A024557 n

end A024557

/-!
# A024559: a(n) = [ 1/{n*sqrt(6)} ], where {x} := x - [ x ].

The programs for A024559, there is no canonical definition to state claims against.
-/

/-! ## A024559.P16130935096169392323

`floor(A024558(n+1)/(n+1))`
-/

namespace A024559.P16130935096169392323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A024558 (n + 1) : ℚ) / (n + 1 : ℚ)⌋

end

end A024559.P16130935096169392323

/-! ## A024559.P10544036057549395604

`A000038(n)+Δ[A024560(A123108(2*n))]`
-/

namespace A024559.P10544036057549395604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024560 (A123108 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n + (f1 (n + 1) - f1 n)

end

end A024559.P10544036057549395604

/-! ## A024559.P17978956631409907407

`Δ[A024560(A123108(2*n))*A057427(n)]`
-/

namespace A024559.P17978956631409907407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024560 (A123108 (2 * n)).toNat * A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A024559.P17978956631409907407

/-! ## A024559.P13077613265723572215

`Δ[A024560(A123108(2*n))%A057321(n)]`
-/

namespace A024559.P13077613265723572215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A024560 (A123108 (2 * n)).toNat) (A057321 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A024559.P13077613265723572215

/-! ## A024559.P3360078771566179170

`Δ[A024560(A123108(2*n))]+2*A000007(n)`
-/

namespace A024559.P3360078771566179170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024560 (A123108 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 2 * A000007 n

end

end A024559.P3360078771566179170

/-!
# A024560: a(n) = Sum_{k=1..n} floor(1/{k*sqrt(6)}) where {x} := x - floor(x).

The programs for A024560, there is no canonical definition to state claims against.
-/

/-! ## A024560.P3291920287047319751

`∑[A024559(n+1)]`
-/

namespace A024560.P3291920287047319751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024559 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024560.P3291920287047319751

/-! ## A024560.P10678683545253099560

`∑[floor(A024558(n+1)/(n+1))]`
-/

namespace A024560.P10678683545253099560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A024558 (n + 1) : ℚ) / (n + 1 : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024560.P10678683545253099560

/-! ## A024560.P3162530897014955201

`∑[A091453(6*(n+1)²)]`
-/

namespace A024560.P3162530897014955201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091453 (6 * (n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024560.P3162530897014955201

/-! ## A024560.P15295582498186715769

`∑[A091453(A005897(n+1)-2)%A158685(n)]`
-/

namespace A024560.P15295582498186715769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A091453 (A005897 (n + 1) - 2).toNat) (A158685 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024560.P15295582498186715769

/-! ## A024560.P2514577489602518523

`A000038(2*(n+1))+∑[A091453(A005897(n+1)-2)]`
-/

namespace A024560.P2514577489602518523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091453 (A005897 (n + 1) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (2 * (n + 1)) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024560.P2514577489602518523

/-!
# A024562: a(n) = integer nearest a(n-1)/(sqrt(6) - 2), where a(0) = 1.

The programs for A024562, the canonical program `A024562.P2220291545782868710` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024562 has offset 0).

The definition of A024562 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 289 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A024562.P2220291545782868710

`round(a(n-1)/(sqrt(6)-2))` with `a(0)=1`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A024562

/-- `round(a(n-1)/(sqrt(6)-2))` -/
def P2220291545782868710.Spec : Prop :=
  ∀ n, P2220291545782868710.a n = A024562 n

theorem P2220291545782868710.correct : P2220291545782868710.Spec := by
  intro n
  simp only [A024562]

end A024562

/-! ## A024562.P7006608110308942082

`A184809(a(n-1)+1)-2` with `a(0)=1`
-/

namespace A024562.P7006608110308942082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A184809 (a (n - 1) + 1).toNat - 2

end

end A024562.P7006608110308942082

namespace A024562

/-- `A184809(a(n-1)+1)-2` -/
def P7006608110308942082.Spec : Prop :=
  ∀ n, P7006608110308942082.a n = A024562 n

end A024562

/-! ## A024562.P3726093812104093539

`A059537(A024557(n))`
-/

namespace A024562.P3726093812104093539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059537 (A024557 n).toNat

end

end A024562.P3726093812104093539

namespace A024562

/-- `A059537(A024557(n))` -/
def P3726093812104093539.Spec : Prop :=
  ∀ n, P3726093812104093539.a n = A024562 n

end A024562

/-! ## A024562.P7064082210184372914

`A172264(7*a(n-1)+1)` with `a(0)=1`
-/

namespace A024562.P7064082210184372914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A172264 (7 * a (n - 1) + 1).toNat

end

end A024562.P7064082210184372914

namespace A024562

/-- `A172264(7*a(n-1)+1)` -/
def P7064082210184372914.Spec : Prop :=
  ∀ n, P7064082210184372914.a n = A024562 n

end A024562

/-! ## A024562.P10522666699720940650

`A004526(a(n-2)+4*a(n-1))` with `a(0)=1, a(1)=2`
-/

namespace A024562.P10522666699720940650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A004526 (a (n - 2) + 4 * a (n - 1)).toNat

end

end A024562.P10522666699720940650

namespace A024562

/-- `A004526(a(n-2)+4*a(n-1))` -/
def P10522666699720940650.Spec : Prop :=
  ∀ n, P10522666699720940650.a n = A024562 n

end A024562

/-!
# A024564: a(n) = [ 1/{n*sqrt(7)} ], where {x} := x - [ x ].

The programs for A024564, there is no canonical definition to state claims against.
-/

/-! ## A024564.P16595691906405519057

`floor(A024563(n+1)/(n+1))`
-/

namespace A024564.P16595691906405519057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A024563 (n + 1) : ℚ) / (n + 1 : ℚ)⌋

end

end A024564.P16595691906405519057

/-! ## A024564.P13865814439198181280

`A000007(n)+Δ[A024565(A028310(n))]`
-/

namespace A024564.P13865814439198181280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024565 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (f1 (n + 1) - f1 n)

end

end A024564.P13865814439198181280

/-! ## A024564.P8958196424505708093

`A024565(n+1)+A000007(n)-A024565(A028310(n))`
-/

namespace A024564.P8958196424505708093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024565 (n + 1) + (A000007 n - A024565 (A028310 n).toNat)

end

end A024564.P8958196424505708093

/-! ## A024564.P11371523480714430308

`A028310(Δ[A024565(A028310(n))])`
-/

namespace A024564.P11371523480714430308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024565 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (f1 (n + 1) - f1 n).toNat

end

end A024564.P11371523480714430308

/-! ## A024564.P4676814469068640679

`A024565(n+1)-∑[A091453(A033582(n))]`
-/

namespace A024564.P4676814469068640679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091453 (A033582 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024565 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024564.P4676814469068640679

/-!
# A024565: a(n) = Sum_{k=1..n} [ 1/{k*sqrt(7)} ] where {x} := x - [ x ].

The programs for A024565, there is no canonical definition to state claims against.
-/

/-! ## A024565.P3220483948791161555

`∑[A024564(n+1)]`
-/

namespace A024565.P3220483948791161555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024564 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024565.P3220483948791161555

/-! ## A024565.P14734429432456456269

`∑[floor(A024563(n+1)/(n+1))]`
-/

namespace A024565.P14734429432456456269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A024563 (n + 1) : ℚ) / (n + 1 : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024565.P14734429432456456269

/-! ## A024565.P7665675227962361312

`A024564(n+1)+a(A023443(n))` with `a(0)=1`
-/

namespace A024565.P7665675227962361312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A024564 (n + 1) + a (A023443 n).toNat

end

end A024565.P7665675227962361312

/-! ## A024565.P15388436453488388475

`A024564(n+1)+a(A004273(n)-n)` with `a(0)=1`
-/

namespace A024565.P15388436453488388475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A024564 (n + 1) + a (A004273 n - (n : ℤ)).toNat

end

end A024565.P15388436453488388475

/-! ## A024565.P17407124446683891592

`A028310(a(n-1))+A024564(n+1)` with `a(0)=1`
-/

namespace A024565.P17407124446683891592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A028310 (a (n - 1)).toNat + A024564 (n + 1)

end

end A024565.P17407124446683891592

/-!
# A024567: a(n) = integer nearest a(n-1)/(sqrt(7) - 2), where a(1) = 1.

The programs for A024567, the canonical program `A024567.P6883693949227885228` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024567 has offset 1).

The definition of A024567 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 526 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A024567.P6883693949227885228

`round(a(n-1)/(sqrt(7)-2))` with `a(0)=1`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A024567

/-- `round(a(n-1)/(sqrt(7)-2))` -/
def P6883693949227885228.Spec : Prop :=
  ∀ n, P6883693949227885228.a n = A024567 (n + 1)

theorem P6883693949227885228.correct : P6883693949227885228.Spec := by
  intro n
  simp only [A024567, Nat.add_sub_cancel]

end A024567

/-! ## A024567.P8413222939948224567

`A002264(4*a(n-1)-floor(-a(n-2))+1)` with `a(0)=1, a(1)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A024567.P8413222939948224567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A002264 (4 * a (n - 1) - (-a (n - 2)) + 1).toNat

end

end A024567.P8413222939948224567

namespace A024567

/-- `A002264(4*a(n-1)-floor(-a(n-2))+1)` -/
def P8413222939948224567.Spec : Prop :=
  ∀ n, P8413222939948224567.a n = A024567 (n + 1)

end A024567

/-! ## A024567.P17421782675201952322

`A100196(∑[record[A191788(n)]]+1)`
-/

namespace A024567.P17421782675201952322
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191788 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A024567.P17421782675201952322

namespace A024567

/-- `A100196(∑[record[A191788(n)]]+1)` -/
def P17421782675201952322.Spec : Prop :=
  ∀ n, P17421782675201952322.a n = A024567 (n + 1)

end A024567

/-! ## A024567.P17717087622923071938

`A100196(A288231(n)+A000621(n+2))`
-/

namespace A024567.P17717087622923071938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (A288231 n + A000621 (n + 2)).toNat

end

end A024567.P17717087622923071938

namespace A024567

/-- `A100196(A288231(n)+A000621(n+2))` -/
def P17717087622923071938.Spec : Prop :=
  ∀ n, P17717087622923071938.a n = A024567 (n + 1)

end A024567

/-! ## A024567.P3305920635976150774

`floor(root(A281548(n+2), 4))`
-/

namespace A024567.P3305920635976150774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A281548 (n + 2) : ℝ) ^ (1 / (4 : ℝ))⌋

end

end A024567.P3305920635976150774

namespace A024567

/-- `floor(root(A281548(n+2), 4))` -/
def P3305920635976150774.Spec : Prop :=
  ∀ n, P3305920635976150774.a n = A024567 (n + 1)

end A024567

/-!
# A024568: a(n) = [ n/{n*r} ], where r = (1 + sqrt(5))/2 and {x} := x - [ x ].

The programs for A024568, the canonical program `A024568.P6762558251547547592` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024568 has offset 1).

The definition of A024568 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A024568.P6762558251547547592

`floor((n+1)/∑[ϕ-A001468(n)])`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A024568

/-- `floor((n+1)/∑[ϕ-A001468(n)])` -/
def P6762558251547547592.Spec : Prop :=
  ∀ n, P6762558251547547592.a n = A024568 (n + 1)

theorem P6762558251547547592.correct : P6762558251547547592.Spec := by
  intro n
  simp only [A024568, Nat.add_sub_cancel]

end A024568

/-!
# A024569: [ 1/{n*r} ], where r = (1 + sqrt(5))/2 and {x} := x - [ x ].

The programs for A024569, the canonical program `A024569.P1182552740229390554` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024569 has offset 1).

The definition of A024569 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A024569.P8612528941741725433

`floor(1/∑[ϕ-A001468(n)])`
-/

namespace A024569.P8612528941741725433
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.goldenRatio - (A001468 n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (∑ j ∈ Finset.range (n + 1), f1 j)⌋

end

end A024569.P8612528941741725433

namespace A024569

/-- `floor(1/∑[ϕ-A001468(n)])` -/
def P8612528941741725433.Spec : Prop :=
  ∀ n, P8612528941741725433.a n = A024569 (n + 1)

end A024569

/-! ## A024569.P1182552740229390554

`floor(A024568(n+1)/(n+1))`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A024569

/-- `floor(A024568(n+1)/(n+1))` -/
def P1182552740229390554.Spec : Prop :=
  ∀ n, P1182552740229390554.a n = A024569 (n + 1)

theorem P1182552740229390554.correct : P1182552740229390554.Spec := by
  intro n
  simp only [A024569, Nat.add_sub_cancel]

end A024569

/-! ## A024569.P5264622180864250777

`A000007(n)+Δ[A024570(A028310(n))]`
-/

namespace A024569.P5264622180864250777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024570 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (f1 (n + 1) - f1 n)

end

end A024569.P5264622180864250777

namespace A024569

/-- `A000007(n)+Δ[A024570(A028310(n))]` -/
def P5264622180864250777.Spec : Prop :=
  ∀ n, P5264622180864250777.a n = A024569 (n + 1)

end A024569

/-! ## A024569.P14441521705659256618

`Δ[A024570(A028310(n))%A000132(n)]`
-/

namespace A024569.P14441521705659256618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A024570 (A028310 n).toNat) (A000132 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A024569.P14441521705659256618

namespace A024569

/-- `Δ[A024570(A028310(n))%A000132(n)]` -/
def P14441521705659256618.Spec : Prop :=
  ∀ n, P14441521705659256618.a n = A024569 (n + 1)

end A024569

/-! ## A024569.P15040922619685664325

`A024570(n+1)+A000007(n)-A024570(A028310(n))`
-/

namespace A024569.P15040922619685664325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024570 (n + 1) + (A000007 n - A024570 (A028310 n).toNat)

end

end A024569.P15040922619685664325

namespace A024569

/-- `A024570(n+1)+A000007(n)-A024570(A028310(n))` -/
def P15040922619685664325.Spec : Prop :=
  ∀ n, P15040922619685664325.a n = A024569 (n + 1)

end A024569

/-! ## A024569.P10140857190889963494

`A024570(n+1)-A024570(A028310(n))*A057427(n)`
-/

namespace A024569.P10140857190889963494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024570 (n + 1) - A024570 (A028310 n).toNat * A057427 n

end

end A024569.P10140857190889963494

namespace A024569

/-- `A024570(n+1)-A024570(A028310(n))*A057427(n)` -/
def P10140857190889963494.Spec : Prop :=
  ∀ n, P10140857190889963494.a n = A024569 (n + 1)

end A024569

/-! ## A024569.P15874176920978101565

`Δ[A057427(n)+A024570(A028310(n))]`
-/

namespace A024569.P15874176920978101565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + A024570 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A024569.P15874176920978101565

namespace A024569

/-- `Δ[A057427(n)+A024570(A028310(n))]` -/
def P15874176920978101565.Spec : Prop :=
  ∀ n, P15874176920978101565.a n = A024569 (n + 1)

end A024569

/-!
# A024570: a(n) = Sum_{k=1..n} [ 1/{k*r} ] where r = (1 + sqrt(5))/2 and {x} := x - [ x ].

The programs for A024570, the canonical program `A024570.P17001101844212374106` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024570 has offset 1).

The definition of A024570 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A024570.P17001101844212374106

`∑[A024569(n+1)]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A024570

/-- `∑[A024569(n+1)]` -/
def P17001101844212374106.Spec : Prop :=
  ∀ n, P17001101844212374106.a n = A024570 (n + 1)

theorem P17001101844212374106.correct : P17001101844212374106.Spec := by
  intro n
  simp only [A024570, Nat.add_sub_cancel]

end A024570

/-! ## A024570.P3364821138263679225

`floor(a(n-1)+A024568(n+1)/(n+1))` with `a(0)=1`
-/

namespace A024570.P3364821138263679225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(a (n - 1) : ℚ) + (A024568 (n + 1) : ℚ) / (n + 1 : ℚ)⌋

end

end A024570.P3364821138263679225

namespace A024570

/-- `floor(a(n-1)+A024568(n+1)/(n+1))` -/
def P3364821138263679225.Spec : Prop :=
  ∀ n, P3364821138263679225.a n = A024570 (n + 1)

end A024570

/-! ## A024570.P14984026107652051944

`A024569(n*A089809(n+1)+1)+a(n-1)` with `a(0)=1`
-/

namespace A024570.P14984026107652051944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A024569 ((n : ℤ) * A089809 (n + 1) + 1).toNat + a (n - 1)

end

end A024570.P14984026107652051944

namespace A024570

/-- `A024569(n*A089809(n+1)+1)+a(n-1)` -/
def P14984026107652051944.Spec : Prop :=
  ∀ n, P14984026107652051944.a n = A024570 (n + 1)

end A024570

/-! ## A024570.P8857291688244858433

`a(n-1)+A024569(n+1)%A002313(n+1)` with `a(0)=1`
-/

namespace A024570.P8857291688244858433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A024569 (n + 1)) (A002313 (n + 1))

end

end A024570.P8857291688244858433

namespace A024570

/-- `a(n-1)+A024569(n+1)%A002313(n+1)` -/
def P8857291688244858433.Spec : Prop :=
  ∀ n, P8857291688244858433.a n = A024570 (n + 1)

end A024570

/-! ## A024570.P1432632418154609032

`A024569(n+1)+a(n-A089809(A005653(n)))` with `a(0)=1`
-/

namespace A024570.P1432632418154609032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A024569 (n + 1) + a ((n : ℤ) - A089809 (A005653 n).toNat).toNat

end

end A024570.P1432632418154609032

namespace A024570

/-- `A024569(n+1)+a(n-A089809(A005653(n)))` -/
def P1432632418154609032.Spec : Prop :=
  ∀ n, P1432632418154609032.a n = A024570 (n + 1)

end A024570

/-!
# A024571: a(n) = [ sum of 1/{k*r} ] for k = 1,2,...,n, where r = (1 + sqrt(5))/2 and {x} := x - [ x ].

The programs for A024571, the canonical program `A024571.P16384369190772260006` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024571 has offset 1).

The definition of A024571 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2719 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A024571.P16384369190772260006

`floor(∑[1/∑[ϕ-A001468(n)]])`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A024571

/-- `floor(∑[1/∑[ϕ-A001468(n)]])` -/
def P16384369190772260006.Spec : Prop :=
  ∀ n, P16384369190772260006.a n = A024571 (n + 1)

theorem P16384369190772260006.correct : P16384369190772260006.Spec := by
  intro n
  simp only [A024571, Nat.add_sub_cancel]

end A024571

/-!
# A024573: a(n) = floor(1/frac(n*e)).

The programs for A024573, there is no canonical definition to state claims against.
-/

/-! ## A024573.P14368446062759422061

`floor(A024572(n+1)/(n+1))`
-/

namespace A024573.P14368446062759422061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A024572 (n + 1) : ℚ) / (n + 1 : ℚ)⌋

end

end A024573.P14368446062759422061

/-! ## A024573.P5620907005204213630

`A000007(n)+Δ[A024574(A028310(n))]`
-/

namespace A024573.P5620907005204213630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024574 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (f1 (n + 1) - f1 n)

end

end A024573.P5620907005204213630

/-! ## A024573.P12126424771141757082

`A010051(2*(n+1))+Δ[A024574(A028310(n))]`
-/

namespace A024573.P12126424771141757082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024574 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (2 * (n + 1)) + (f1 (n + 1) - f1 n)

end

end A024573.P12126424771141757082

/-! ## A024573.P16794468212589192049

`A024574(n+1)+A000007(n)-A024574(A028310(n))`
-/

namespace A024573.P16794468212589192049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024574 (n + 1) + (A000007 n - A024574 (A028310 n).toNat)

end

end A024573.P16794468212589192049

/-! ## A024573.P1445152154347529021

`A024574(n+1)+A024574(A028310(n))*A057428(n)`
-/

namespace A024573.P1445152154347529021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024574 (n + 1) + A024574 (A028310 n).toNat * A057428 n

end

end A024573.P1445152154347529021

/-! ## A024573.P6610677579266272333

`A024574(n+1)*A054977(n)-A024574(A028310(n))`
-/

namespace A024573.P6610677579266272333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024574 (n + 1) * A054977 n - A024574 (A028310 n).toNat

end

end A024573.P6610677579266272333

/-! ## A024573.P12412418235772984867

`A024574(n+1)-A024574(A028310(n))*A057427(n)`
-/

namespace A024573.P12412418235772984867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024574 (n + 1) - A024574 (A028310 n).toNat * A057427 n

end

end A024573.P12412418235772984867

/-! ## A024573.P11861022448021884541

`Δ[A057427(n)+A024574(A028310(n))]`
-/

namespace A024573.P11861022448021884541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + A024574 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A024573.P11861022448021884541

/-! ## A024573.P10589023717885510642

`Δ[A024574(A028310(n))-A054977(n)]`
-/

namespace A024573.P10589023717885510642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024574 (A028310 n).toNat - A054977 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A024573.P10589023717885510642

/-! ## A024573.P3446885075103495760

`Δ[A024574(A028310(n))-A057428(n)]`
-/

namespace A024573.P3446885075103495760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024574 (A028310 n).toNat - A057428 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A024573.P3446885075103495760

/-!
# A024574: a(n) = Sum_{k=1..n} [ 1/{k*e} ] where {x} := x - [ x ].

The programs for A024574, there is no canonical definition to state claims against.
-/

/-! ## A024574.P10491317210133769180

`∑[A024573(n+1)]`
-/

namespace A024574.P10491317210133769180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024573 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024574.P10491317210133769180

/-! ## A024574.P8948003705807002577

`∑[floor(A024572(n+1)/(n+1))]`
-/

namespace A024574.P8948003705807002577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A024572 (n + 1) : ℚ) / (n + 1 : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024574.P8948003705807002577

/-! ## A024574.P10253686043199604281

`A028310(a(n-1))+A024573(n+1)` with `a(0)=1`
-/

namespace A024574.P10253686043199604281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A028310 (a (n - 1)).toNat + A024573 (n + 1)

end

end A024574.P10253686043199604281

/-! ## A024574.P7281645822914263083

`A028310(∑[A024573(-xor(n, -1))])`
-/

namespace A024574.P7281645822914263083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024573 (-Int.xor (n : ℤ) (-1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A024574.P7281645822914263083

/-! ## A024574.P6131802501014169524

`A004525(2*∑[A024573(-xor(n, -1))])`
-/

namespace A024574.P6131802501014169524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024573 (-Int.xor (n : ℤ) (-1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (2 * (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A024574.P6131802501014169524

/-! ## A024574.P11662857962033874297

`A004526(2*∑[A024573(-xor(n, -1))])`
-/

namespace A024574.P11662857962033874297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024573 (-Int.xor (n : ℤ) (-1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (2 * (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A024574.P11662857962033874297

/-!
# A024576: a(n) = [ e*a(n-1) ], where a(0) = 1.

The programs for A024576, the canonical program `A024576.P8919205874509487709` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024576 has offset 0).

The definition of A024576 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A024576.P8919205874509487709

`floor(e*a(n-1))` with `a(0)=1`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A024576

/-- `floor(e*a(n-1))` -/
def P8919205874509487709.Spec : Prop :=
  ∀ n, P8919205874509487709.a n = A024576 n

theorem P8919205874509487709.correct : P8919205874509487709.Spec := by
  intro n
  simp only [A024576]

end A024576

/-! ## A024576.P6245816511765759903

`ceil(e*a(n-1))-1` with `a(0)=1`
-/

namespace A024576.P6245816511765759903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌈Real.exp 1 * (a (n - 1) : ℝ)⌉ - 1

end

end A024576.P6245816511765759903

namespace A024576

/-- `ceil(e*a(n-1))-1` -/
def P6245816511765759903.Spec : Prop :=
  ∀ n, P6245816511765759903.a n = A024576 n

end A024576

/-! ## A024576.P12138601360931544003

`record[floor(exp(n%2)*a(n-2))]` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A024576.P12138601360931544003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n f1 =>
  ⌊Real.exp ((n % 2 : ℕ) : ℝ) * (f1 (n - 2) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024576.P12138601360931544003

namespace A024576

/-- `record[floor(exp(n%2)*a(n-2))]` -/
def P12138601360931544003.Spec : Prop :=
  ∀ n, P12138601360931544003.a n = A024576 n

end A024576

/-!
# A024578: a(n) = [ 1/{n/e} ], {x} := x - [ x ].

The programs for A024578, there is no canonical definition to state claims against.
-/

/-! ## A024578.P9437122333484162136

`floor(A024577(n+1)/(n+1))`
-/

namespace A024578.P9437122333484162136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A024577 (n + 1) : ℚ) / (n + 1 : ℚ)⌋

end

end A024578.P9437122333484162136

/-! ## A024578.P9964449304658924234

`Δ[A024579(A028310(n))%A024579(n+1)]`
-/

namespace A024578.P9964449304658924234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A024579 (A028310 n).toNat) (A024579 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A024578.P9964449304658924234

/-!
# A024579: a(n) = Sum_{k=1..n} [ 1/{k/e} ], where {x} := x - [ x ].

The programs for A024579, there is no canonical definition to state claims against.
-/

/-! ## A024579.P13483398835347946271

`∑[A024578(n+1)]`
-/

namespace A024579.P13483398835347946271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024578 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024579.P13483398835347946271

/-! ## A024579.P15843330233527975472

`∑[floor(A024577(n+1)/(n+1))]`
-/

namespace A024579.P15843330233527975472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A024577 (n + 1) : ℚ) / (n + 1 : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024579.P15843330233527975472

/-! ## A024579.P10380930489040959736

`A024578(n+1)+a(A023443(n))` with `a(0)=2`
-/

namespace A024579.P10380930489040959736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A024578 (n + 1) + a (A023443 n).toNat

end

end A024579.P10380930489040959736

/-! ## A024579.P4935804265375241507

`A024578(n+1)+a(n-(A000007(n)+1))` with `a(0)=2`
-/

namespace A024579.P4935804265375241507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A024578 (n + 1) + a ((n : ℤ) - (A000007 n + 1)).toNat

end

end A024579.P4935804265375241507

/-! ## A024579.P7802585680414156130

`a(A023443(n))+floor(A024577(n+1)/(n+1))` with `a(0)=2`
-/

namespace A024579.P7802585680414156130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (A023443 n).toNat + ⌊(A024577 (n + 1) : ℚ) / (n + 1 : ℚ)⌋

end

end A024579.P7802585680414156130

/-!
# A024581: a(n) = integer nearest e*a(n-1), where a(0) = 1.

The programs for A024581, the canonical program `A024581.P11576527021898010990` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024581 has offset 0).

The definition of A024581 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 231 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A024581.P11576527021898010990

`round(e*a(n-1))` with `a(0)=1`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A024581

/-- `round(e*a(n-1))` -/
def P11576527021898010990.Spec : Prop :=
  ∀ n, P11576527021898010990.a n = A024581 n

theorem P11576527021898010990.correct : P11576527021898010990.Spec := by
  intro n
  simp only [A024581]

end A024581

/-! ## A024581.P1197144185695146041

`round(a(n-1)/exp(-1))` with `a(0)=1`
-/

namespace A024581.P1197144185695146041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.roundAway ((a (n - 1) : ℝ) / Real.exp (-1 : ℝ))

end

end A024581.P1197144185695146041

namespace A024581

/-- `round(a(n-1)/exp(-1))` -/
def P1197144185695146041.Spec : Prop :=
  ∀ n, P1197144185695146041.a n = A024581 n

end A024581

/-! ## A024581.P7802550852765715810

`∑[∑[A153582(n)]]`
-/

namespace A024581.P7802550852765715810
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153582 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024581.P7802550852765715810

namespace A024581

/-- `∑[∑[A153582(n)]]` -/
def P7802550852765715810.Spec : Prop :=
  ∀ n, P7802550852765715810.a n = A024581 n

end A024581

/-! ## A024581.P6195855367630295779

`A022852(a(n-1))` with `a(0)=1`
-/

namespace A024581.P6195855367630295779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A022852 (a (n - 1)).toNat

end

end A024581.P6195855367630295779

namespace A024581

/-- `A022852(a(n-1))` -/
def P6195855367630295779.Spec : Prop :=
  ∀ n, P6195855367630295779.a n = A024581 n

end A024581

/-!
# A024582: a(n) = floor( a(n-1)/(Pi - 3) ) with n>0, a(0)=1.

The programs for A024582, the canonical program `A024582.P15784624663011857839` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024582 has offset 0).

The definition of A024582 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 118 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A024582.P15784624663011857839

`floor(a(n-1)/(π-3))` with `a(0)=1`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A024582

/-- `floor(a(n-1)/(π-3))` -/
def P15784624663011857839.Spec : Prop :=
  ∀ n, P15784624663011857839.a n = A024582 n

theorem P15784624663011857839.correct : P15784624663011857839.Spec := by
  intro n
  simp only [A024582]

end A024582

/-! ## A024582.P12576794387152127582

`A186544(a(n-1))-a(n-1)` with `a(0)=1`
-/

namespace A024582.P12576794387152127582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A186544 (a (n - 1)).toNat - a (n - 1)

end

end A024582.P12576794387152127582

namespace A024582

/-- `A186544(a(n-1))-a(n-1)` -/
def P12576794387152127582.Spec : Prop :=
  ∀ n, P12576794387152127582.a n = A024582 n

end A024582

/-!
# A024583: a(n) = floor(n/{n*Pi}), where { } = fractional part.

The programs for A024583, there is no canonical definition to state claims against.
-/

/-! ## A024583.P37006902104417298

`A076673(A273734(n)^A007913(n+1))`
-/

namespace A024583.P37006902104417298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076673 (SequenceMachineLib.roundAway ((A273734 n : ℚ) ^ (A007913 (n + 1) : ℤ))).toNat

end

end A024583.P37006902104417298

/-!
# A024584: a(n) = floor(1/frac(n*Pi)).

The programs for A024584, there is no canonical definition to state claims against.
-/

/-! ## A024584.P3230815179176821633

`floor(A024583(n+1)/(n+1))`
-/

namespace A024584.P3230815179176821633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A024583 (n + 1) : ℚ) / (n + 1 : ℚ)⌋

end

end A024584.P3230815179176821633

/-! ## A024584.P11016635418278552477

`A084794(4*(n+1))`
-/

namespace A024584.P11016635418278552477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084794 (4 * (n + 1))

end

end A024584.P11016635418278552477

/-! ## A024584.P7690043045486783265

`A084794(Δ[A294774(n)])%(n+10)`
-/

namespace A024584.P7690043045486783265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294774 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A084794 (f1 (n + 1) - f1 n).toNat) (n + 10 : ℤ)

end

end A024584.P7690043045486783265

/-! ## A024584.P2286053233920834214

`A084794(Δ[A294774(n)])^A033999(n)²`
-/

namespace A024584.P2286053233920834214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294774 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084794 (f1 (n + 1) - f1 n).toNat : ℚ) ^ (A033999 n ^ 2 : ℤ)

end

end A024584.P2286053233920834214

/-! ## A024584.P5463599539852847204

`A084794(Δ[A294774(n)])-n*A000007(n)`
-/

namespace A024584.P5463599539852847204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294774 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084794 (f1 (n + 1) - f1 n).toNat - (n : ℤ) * A000007 n

end

end A024584.P5463599539852847204

/-! ## A024584.P5314108235752399087

`A084794(Δ[A294774(n)])^A053164(n²+1)²`
-/

namespace A024584.P5314108235752399087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294774 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084794 (f1 (n + 1) - f1 n).toNat : ℚ) ^ (A053164 (n ^ 2 + 1) ^ 2 : ℤ)

end

end A024584.P5314108235752399087

/-!
# A024585: a(n) = Sum_{k=1..n} [ 1/{k*Pi} ], where {x} := x - [ x ].

The programs for A024585, there is no canonical definition to state claims against.
-/

/-! ## A024585.P10971511776121463225

`∑[A024584(n+1)]`
-/

namespace A024585.P10971511776121463225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024584 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024585.P10971511776121463225

/-! ## A024585.P13989037547413385476

`∑[floor(A024583(n+1)/(n+1))]`
-/

namespace A024585.P13989037547413385476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A024583 (n + 1) : ℚ) / (n + 1 : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024585.P13989037547413385476

/-! ## A024585.P6056664849529721836

`∑[A084794(4*(n+1))]`
-/

namespace A024585.P6056664849529721836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084794 (4 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024585.P6056664849529721836

/-! ## A024585.P17527931645404193562

`∑[A084794(Δ[A294774(n)])%(n+10)]`
-/

namespace A024585.P17527931645404193562
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294774 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A084794 (f2 (n + 1) - f2 n).toNat) (n + 10 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024585.P17527931645404193562

/-! ## A024585.P5265025563118699967

`A028310(a(n-1))+A024584(n+1)` with `a(0)=7, a(1)=10`
-/

namespace A024585.P5265025563118699967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7, 10] fun n a =>
  A028310 (a (n - 1)).toNat + A024584 (n + 1)

end

end A024585.P5265025563118699967

/-!
# A024587: Integer nearest a(n-1)/(Pi - 3), where a(0) = 1.

The programs for A024587, there is no canonical definition to state claims against.
-/

/-! ## A024587.P7053383748342029140

`A004197(A057138(n))+7^n`
-/

namespace A024587.P7053383748342029140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004197 (A057138 n).toNat + (7 ^ n : ℤ)

end

end A024587.P7053383748342029140

/-!
# A024588: a(n) = s(1)s(n) + s(2)s(n-1) + ... + s(k)s(n+1-k), where k = [ (n+1)/2 ], s = (composite numbers).

The programs for A024588, there is no canonical definition to state claims against.
-/

/-! ## A024588.P1564942088810980623

`∑[A251546(A242194(n+5)+1)-2]`
-/

namespace A024588.P1564942088810980623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251546 (A242194 (n + 5) + 1).toNat - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024588.P1564942088810980623

/-!
# A024589: s(1)t(n) + s(2)t(n-1) + ... + s(k)t(n+1-k), where k = [ (n+1)/2 ], s = (composite numbers), t = (F(2), F(3), ...).

The programs for A024589, there is no canonical definition to state claims against.
-/

/-! ## A024589.P8642555930537550951

`A025103(A014681(n+1))%A025103(n+1)`
-/

namespace A024589.P8642555930537550951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A025103 (A014681 (n + 1)).toNat) (A025103 (n + 1))

end

end A024589.P8642555930537550951

/-! ## A024589.P911103103421223330

`∪[A025103(2*n+1), A025103(2*(n+1))-A025103(2*n+1)]`
-/

namespace A024589.P911103103421223330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025103 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025103 (2 * (n + 1)) - A025103 (2 * n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A024589.P911103103421223330

/-!
# A024590: a(n) = s(1)t(n) + s(2)t(n-1) + ... + s(k)t(n+1-k), where k = [ (n+1)/2 ], s = (composite numbers), t = (odd natural numbers).

The programs for A024590, there is no canonical definition to state claims against.
-/

/-! ## A024590.P7800983416242930651

`A131179(3*n+2)+A128227(A201627(n))`
-/

namespace A024590.P7800983416242930651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131179 (3 * n + 2) + A128227 (A201627 n).toNat

end

end A024590.P7800983416242930651

/-!
# A024591: a(n) = s(1)s(n) + s(2)s(n-1) + ... + s(k)s(n+1-k), where k = [ (n+1)/2 ], s = (F(2), F(3), ...).

The programs for A024591, the canonical program `A024591.P8048384923733651491` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024591 has offset 1).

The definition of A024591 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 467 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A024591.P16222312927535981321

`A025082(n+1)-A006498(n)`
-/

namespace A024591.P16222312927535981321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025082 (n + 1) - A006498 n

end

end A024591.P16222312927535981321

namespace A024591

/-- `A025082(n+1)-A006498(n)` -/
def P16222312927535981321.Spec : Prop :=
  ∀ n, P16222312927535981321.a n = A024591 (n + 1)

end A024591

/-! ## A024591.P5615094161403861475

`A025082(n+1)-A074677(n+1)`
-/

namespace A024591.P5615094161403861475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025082 (n + 1) - A074677 (n + 1)

end

end A024591.P5615094161403861475

namespace A024591

/-- `A025082(n+1)-A074677(n+1)` -/
def P5615094161403861475.Spec : Prop :=
  ∀ n, P5615094161403861475.a n = A024591 (n + 1)

end A024591

/-! ## A024591.P8048384923733651491

`A024458(n+3)-A000045(n+3)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A024591

/-- `A024458(n+3)-A000045(n+3)` -/
def P8048384923733651491.Spec : Prop :=
  ∀ n, P8048384923733651491.a n = A024591 (n + 1)

theorem P8048384923733651491.correct : P8048384923733651491.Spec := by
  intro n
  simp only [A024591, Nat.add_sub_cancel]

end A024591

/-! ## A024591.P14931362681719720559

`round(A025105(n+1)/ϕ)`
-/

namespace A024591.P14931362681719720559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A025105 (n + 1) : ℝ) / Real.goldenRatio)

end

end A024591.P14931362681719720559

namespace A024591

/-- `round(A025105(n+1)/ϕ)` -/
def P14931362681719720559.Spec : Prop :=
  ∀ n, P14931362681719720559.a n = A024591 (n + 1)

end A024591

/-! ## A024591.P6573929493964584708

`A025105(A103889(n+1))%A025105(n+1)`
-/

namespace A024591.P6573929493964584708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A025105 (A103889 (n + 1)).toNat) (A025105 (n + 1))

end

end A024591.P6573929493964584708

namespace A024591

/-- `A025105(A103889(n+1))%A025105(n+1)` -/
def P6573929493964584708.Spec : Prop :=
  ∀ n, P6573929493964584708.a n = A024591 (n + 1)

end A024591

/-! ## A024591.P2690365860794895300

`A213587(A080827(n+1))`
-/

namespace A024591.P2690365860794895300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213587 (A080827 (n + 1)).toNat

end

end A024591.P2690365860794895300

namespace A024591

/-- `A213587(A080827(n+1))` -/
def P2690365860794895300.Spec : Prop :=
  ∀ n, P2690365860794895300.a n = A024591 (n + 1)

end A024591

/-! ## A024591.P8858944320839064923

`A213587(A099392(n+2))`
-/

namespace A024591.P8858944320839064923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213587 (A099392 (n + 2)).toNat

end

end A024591.P8858944320839064923

namespace A024591

/-- `A213587(A099392(n+2))` -/
def P8858944320839064923.Spec : Prop :=
  ∀ n, P8858944320839064923.a n = A024591 (n + 1)

end A024591

/-!
# A024592: a(n) = s(1)t(n) + s(2)t(n-1) + ... + s(k)t(n+1-k), where k = [ (n+1)/2 ], s = (F(2), F(3), ...), t = (odd natural numbers).

The programs for A024592, the canonical program `A024592.P4824825726536328379` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024592 has offset 1).

The definition of A024592 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 141 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A024592.P4824825726536328379

`A213774(∑[n+1]-(or(1, n)-1)/2)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A024592

/-- `A213774(∑[n+1]-(or(1, n)-1)/2)` -/
def P4824825726536328379.Spec : Prop :=
  ∀ n, P4824825726536328379.a n = A024592 (n + 1)

theorem P4824825726536328379.correct : P4824825726536328379.Spec := by
  intro n
  simp only [A024592, Nat.add_sub_cancel]

end A024592

/-! ## A024592.P15188965596130137967

`A213774(A080827(n+1))`
-/

namespace A024592.P15188965596130137967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213774 (A080827 (n + 1)).toNat

end

end A024592.P15188965596130137967

namespace A024592

/-- `A213774(A080827(n+1))` -/
def P15188965596130137967.Spec : Prop :=
  ∀ n, P15188965596130137967.a n = A024592 (n + 1)

end A024592

/-! ## A024592.P15898615961785860134

`A213774(A099392(n+2))`
-/

namespace A024592.P15898615961785860134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213774 (A099392 (n + 2)).toNat

end

end A024592.P15898615961785860134

namespace A024592

/-- `A213774(A099392(n+2))` -/
def P15898615961785860134.Spec : Prop :=
  ∀ n, P15898615961785860134.a n = A024592 (n + 1)

end A024592

/-! ## A024592.P8488268081837618550

`A213774(A061925(n)+n)`
-/

namespace A024592.P8488268081837618550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213774 (A061925 n + (n : ℤ)).toNat

end

end A024592.P8488268081837618550

namespace A024592

/-- `A213774(A061925(n)+n)` -/
def P8488268081837618550.Spec : Prop :=
  ∀ n, P8488268081837618550.a n = A024592 (n + 1)

end A024592

/-! ## A024592.P16007962291869130887

`A213774((A080335(n)+1)/2)`
-/

namespace A024592.P16007962291869130887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213774 (SequenceMachineLib.roundAway ((A080335 n + 1 : ℚ) / 2)).toNat

end

end A024592.P16007962291869130887

namespace A024592

/-- `A213774((A080335(n)+1)/2)` -/
def P16007962291869130887.Spec : Prop :=
  ∀ n, P16007962291869130887.a n = A024592 (n + 1)

end A024592

/-! ## A024592.P5786690600320430867

`A213774(A000982(n)+1+n)`
-/

namespace A024592.P5786690600320430867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213774 (A000982 n + 1 + (n : ℤ)).toNat

end

end A024592.P5786690600320430867

namespace A024592

/-- `A213774(A000982(n)+1+n)` -/
def P5786690600320430867.Spec : Prop :=
  ∀ n, P5786690600320430867.a n = A024592 (n + 1)

end A024592

/-! ## A024592.P1294330779271478890

`A213774(A074148(n+1)-n)`
-/

namespace A024592.P1294330779271478890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213774 (A074148 (n + 1) - (n : ℤ)).toNat

end

end A024592.P1294330779271478890

namespace A024592

/-- `A213774(A074148(n+1)-n)` -/
def P1294330779271478890.Spec : Prop :=
  ∀ n, P1294330779271478890.a n = A024592 (n + 1)

end A024592

/-! ## A024592.P11378528360054333004

`A213774(A116940(n)+1-n)`
-/

namespace A024592.P11378528360054333004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213774 (A116940 n + (1 - (n : ℤ))).toNat

end

end A024592.P11378528360054333004

namespace A024592

/-- `A213774(A116940(n)+1-n)` -/
def P11378528360054333004.Spec : Prop :=
  ∀ n, P11378528360054333004.a n = A024592 (n + 1)

end A024592

/-! ## A024592.P12115327025195816849

`A213774(1-(n-A116940(n)))`
-/

namespace A024592.P12115327025195816849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213774 (1 - ((n : ℤ) - A116940 n)).toNat

end

end A024592.P12115327025195816849

namespace A024592

/-- `A213774(1-(n-A116940(n)))` -/
def P12115327025195816849.Spec : Prop :=
  ∀ n, P12115327025195816849.a n = A024592 (n + 1)

end A024592

/-! ## A024592.P1643522900291724454

`A213774(∑[n+1]-A004526(n))`
-/

namespace A024592.P1643522900291724454
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213774 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A004526 n).toNat

end

end A024592.P1643522900291724454

namespace A024592

/-- `A213774(∑[n+1]-A004526(n))` -/
def P1643522900291724454.Spec : Prop :=
  ∀ n, P1643522900291724454.a n = A024592 (n + 1)

end A024592

/-! ## A024592.P3197386817464366836

`A213774(A000982(n)-(n-Δ[n²]))`
-/

namespace A024592.P3197386817464366836
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213774 (A000982 n - ((n : ℤ) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ)))).toNat

end

end A024592.P3197386817464366836

namespace A024592

/-- `A213774(A000982(n)-(n-Δ[n²]))` -/
def P3197386817464366836.Spec : Prop :=
  ∀ n, P3197386817464366836.a n = A024592 (n + 1)

end A024592

/-! ## A024592.P16982671344214192800

`A213774(A008619((n+1)²))`
-/

namespace A024592.P16982671344214192800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213774 (A008619 ((n + 1) ^ 2)).toNat

end

end A024592.P16982671344214192800

namespace A024592

/-- `A213774(A008619((n+1)²))` -/
def P16982671344214192800.Spec : Prop :=
  ∀ n, P16982671344214192800.a n = A024592 (n + 1)

end A024592

/-!
# A024593: a(n) = s(1)t(n) + s(2)t(n-1) + ... + s(k)t(n+1-k), where k = [ (n+1)/2 ], s = (F(2), F(3), ...), t = A000201 (lower Wythoff sequence).

The programs for A024593, there is no canonical definition to state claims against.
-/

/-! ## A024593.P1418430763725952403

`(A024474(n+1)+A024464(n+1))/2`
-/

namespace A024593.P1418430763725952403
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024474 (n + 1) + A024464 (n + 1) : ℚ) / 2

end

end A024593.P1418430763725952403

/-! ## A024593.P10003283782310368827

`A024464(n+1)+A014682(A024474(n+1)-A024464(n+1))`
-/

namespace A024593.P10003283782310368827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024464 (n + 1) + A014682 (A024474 (n + 1) - A024464 (n + 1)).toNat

end

end A024593.P10003283782310368827

/-! ## A024593.P11088605702537491740

`A014682(A024474(n+1)+A024464(n+1))`
-/

namespace A024593.P11088605702537491740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A024474 (n + 1) + A024464 (n + 1)).toNat

end

end A024593.P11088605702537491740

/-! ## A024593.P17682304051646830998

`A318516(A024474(n+1)+A024464(n+1))`
-/

namespace A024593.P17682304051646830998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318516 (A024474 (n + 1) + A024464 (n + 1)).toNat

end

end A024593.P17682304051646830998

/-! ## A024593.P12192280569098881421

`A318518(A024474(n+1)+A024464(n+1))`
-/

namespace A024593.P12192280569098881421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318518 (A024474 (n + 1) + A024464 (n + 1)).toNat

end

end A024593.P12192280569098881421

/-!
# A024594: s(1)t(n) + s(2)t(n-1) + ... + s(k)t(n+1-k), where k = [ (n+1)/2 ], s = (F(2), F(3), ...), t = A001950 (upper Wythoff sequence).

The programs for A024594, there is no canonical definition to state claims against.
-/

/-! ## A024594.P18017345847848542337

`A025085(round(sqrt(n²+1)))+A024465(n+1)`
-/

namespace A024594.P18017345847848542337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025085 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat + A024465 (n + 1)

end

end A024594.P18017345847848542337

/-! ## A024594.P1264480176113358284

`A024475(n+1)-A025085(A028310(n))`
-/

namespace A024594.P1264480176113358284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024475 (n + 1) - A025085 (A028310 n).toNat

end

end A024594.P1264480176113358284

/-! ## A024594.P15343875129242743501

`(A024475(n+1)+A024465(n+1))/2`
-/

namespace A024594.P15343875129242743501
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024475 (n + 1) + A024465 (n + 1) : ℚ) / 2

end

end A024594.P15343875129242743501

/-! ## A024594.P1800210004703038508

`A024465(n+1)+A014682(A024475(n+1)-A024465(n+1))`
-/

namespace A024594.P1800210004703038508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024465 (n + 1) + A014682 (A024475 (n + 1) - A024465 (n + 1)).toNat

end

end A024594.P1800210004703038508

/-! ## A024594.P17419715147516146836

`A014682(A024475(n+1)+A024465(n+1))`
-/

namespace A024594.P17419715147516146836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A024475 (n + 1) + A024465 (n + 1)).toNat

end

end A024594.P17419715147516146836

/-!
# A024595: a(n) = s(1)*t(n) + s(2)*t(n-1) + ... + s(k)*t(n+1-k), where k = floor((n+1)/2), s = (F(2), F(3), ...), t = A023533.

The programs for A024595, there is no canonical definition to state claims against.
-/

/-! ## A024595.P7335346953369525652

`(A024476(n+1)+A024466(n+1))/2`
-/

namespace A024595.P7335346953369525652
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024476 (n + 1) + A024466 (n + 1) : ℚ) / 2

end

end A024595.P7335346953369525652

/-! ## A024595.P17027041352209722010

`A001911(∑[(n+1)%2])-A024596(n+1)`
-/

namespace A024595.P17027041352209722010
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) % 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001911 (∑ j ∈ Finset.range (n + 1), f1 j) - A024596 (n + 1)

end

end A024595.P17027041352209722010

/-! ## A024595.P14336125056252150800

`A001911(A008619(n))-A024596(n+1)`
-/

namespace A024595.P14336125056252150800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001911 (A008619 n).toNat - A024596 (n + 1)

end

end A024595.P14336125056252150800

/-! ## A024595.P1339486293871927843

`A001911(A004526(n)+1)-A024596(n+1)`
-/

namespace A024595.P1339486293871927843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001911 (A004526 n + 1).toNat - A024596 (n + 1)

end

end A024595.P1339486293871927843

/-! ## A024595.P12443069267659919309

`A001911(A008619(n))-(A024477(n+1)+A024467(n+1))/2`
-/

namespace A024595.P12443069267659919309
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001911 (A008619 n).toNat : ℚ) - (A024477 (n + 1) + A024467 (n + 1) : ℚ) / 2

end

end A024595.P12443069267659919309

/-! ## A024595.P14475377705108066160

`A024466(n+1)+A014682(A024476(n+1)-A024466(n+1))`
-/

namespace A024595.P14475377705108066160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024466 (n + 1) + A014682 (A024476 (n + 1) - A024466 (n + 1)).toNat

end

end A024595.P14475377705108066160

/-! ## A024595.P13356412253996892664

`A014682(A024476(n+1)+A024466(n+1))`
-/

namespace A024595.P13356412253996892664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A024476 (n + 1) + A024466 (n + 1)).toNat

end

end A024595.P13356412253996892664

/-!
# A024596: a(n) = s(1)t(n) + s(2)t(n-1) + ... + s(k)t(n+1-k), where k = [ (n+1)/2 ], s = (F(2), F(3), ...), t = A014306.

The programs for A024596, there is no canonical definition to state claims against.
-/

/-! ## A024596.P14301982075651215650

`∑[A079977(n+2)]-A024595(n+1)`
-/

namespace A024596.P14301982075651215650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079977 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A024595 (n + 1)

end

end A024596.P14301982075651215650

/-! ## A024596.P13368516765700543958

`A001911(ceil((n+1)/2))-A024595(n+1)`
-/

namespace A024596.P13368516765700543958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001911 ⌈(n + 1 : ℚ) / 2⌉.toNat - A024595 (n + 1)

end

end A024596.P13368516765700543958

/-! ## A024596.P1623850646280978412

`(A024477(n+1)+A024467(n+1))/2`
-/

namespace A024596.P1623850646280978412
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024477 (n + 1) + A024467 (n + 1) : ℚ) / 2

end

end A024596.P1623850646280978412

/-! ## A024596.P7790561538420451351

`(A024477(n+1)+∑[A079977(n)]-A024466(n+1))/2`
-/

namespace A024596.P7790561538420451351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079977 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A024477 (n + 1) + (∑ j ∈ Finset.range (n + 1), f1 j - A024466 (n + 1)) : ℤ) : ℚ) / 2

end

end A024596.P7790561538420451351

/-! ## A024596.P11171771053737135004

`A014682(A024477(n+1)+A024467(n+1))`
-/

namespace A024596.P11171771053737135004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A024477 (n + 1) + A024467 (n + 1)).toNat

end

end A024596.P11171771053737135004

/-!
# A024597: a(n) = s(1)t(n) + s(2)t(n-1) + ... + s(k)t(n+1-k), where k = [ (n+1)/2 ], s = (F(2), F(3), ...), t = (primes).

The programs for A024597, there is no canonical definition to state claims against.
-/

/-! ## A024597.P4193551999596963299

`A024460(n+3)-p?[A004273(n)]`
-/

namespace A024597.P4193551999596963299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024460 (n + 3) - f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A024597.P4193551999596963299

/-! ## A024597.P3168252221656428815

`A024460(n+3)-p?[A005408(n)]`
-/

namespace A024597.P3168252221656428815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024460 (n + 3) - f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A024597.P3168252221656428815

/-! ## A024597.P7838639226363380478

`A024460(n+3)-p?[A022998(n)]`
-/

namespace A024597.P7838639226363380478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022998 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024460 (n + 3) - f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A024597.P7838639226363380478

/-! ## A024597.P6740517584297217368

`A024460(n+3)-p?[A093178(n)]`
-/

namespace A024597.P6740517584297217368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024460 (n + 3) - f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A024597.P6740517584297217368

/-! ## A024597.P6333097961648263754

`A024460(n+3)-A000040(n+2)`
-/

namespace A024597.P6333097961648263754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024460 (n + 3) - A000040 (n + 2)

end

end A024597.P6333097961648263754

/-! ## A024597.P10041492174528749690

`A024460(n+3)-p?[A003961(n+1)]`
-/

namespace A024597.P10041492174528749690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024460 (n + 3) - f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A024597.P10041492174528749690

/-! ## A024597.P10900458302071652567

`A024460(n+3)-p?[A079097(n)]`
-/

namespace A024597.P10900458302071652567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079097 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024460 (n + 3) - f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A024597.P10900458302071652567

/-!
# A024598: a(n) = s(1)*s(n) + s(2)*s(n-1) + ... + s(k)*s(n+1-k), where k = floor((n+1)/2), s = (odd natural numbers).

The programs for A024598, the canonical program `A024598.P13765707724390965101` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024598 has offset 1).

The definition of A024598 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A024598.P13765707724390965101

`(4*(n+1)^3+3*(n+1)²+2*(n+1)-3*(n+1)²*(-1)^(n+1))/12`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A024598

/-- `(4*(n+1)^3+3*(n+1)²+2*(n+1)-3*(n+1)²*(-1)^(n+1))/12` -/
def P13765707724390965101.Spec : Prop :=
  ∀ n, P13765707724390965101.a n = (A024598 (n + 1) : ℚ)

end A024598

/-! ## A024598.P3482381055716230472

`∑[n²]+(n+1)²/gcd(2, n+1)`
-/

namespace A024598.P3482381055716230472
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) + ((n + 1) ^ 2 : ℚ) / (Nat.gcd 2 (n + 1) : ℚ)

end

end A024598.P3482381055716230472

namespace A024598

/-- `∑[n²]+(n+1)²/gcd(2, n+1)` -/
def P3482381055716230472.Spec : Prop :=
  ∀ n, P3482381055716230472.a n = (A024598 (n + 1) : ℚ)

end A024598

/-! ## A024598.P14339803858305119462

`∑[2*n*or(1, n)+1-a(n-1)]` with `a(0)=1`
-/

namespace A024598.P14339803858305119462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  (2 * n * Nat.lor 1 n + 1 : ℤ) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024598.P14339803858305119462

namespace A024598

/-- `∑[2*n*or(1, n)+1-a(n-1)]` -/
def P14339803858305119462.Spec : Prop :=
  ∀ n, P14339803858305119462.a n = A024598 (n + 1)

end A024598

/-! ## A024598.P4266905025017662265

`∑[(n+1)²]-(n+1)*∑[n]%(n+1)`
-/

namespace A024598.P4266905025017662265
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (((n + 1) * ((∑ j ∈ Finset.range (n + 1), f2 j) % (n + 1)) : ℕ) : ℤ)

end

end A024598.P4266905025017662265

namespace A024598

/-- `∑[(n+1)²]-(n+1)*∑[n]%(n+1)` -/
def P4266905025017662265.Spec : Prop :=
  ∀ n, P4266905025017662265.a n = A024598 (n + 1)

end A024598

/-! ## A024598.P8201449806881111131

`A130656(n+1)-∑[∑[n]]`
-/

namespace A024598.P8201449806881111131
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130656 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A024598.P8201449806881111131

namespace A024598

/-- `A130656(n+1)-∑[∑[n]]` -/
def P8201449806881111131.Spec : Prop :=
  ∀ n, P8201449806881111131.a n = A024598 (n + 1)

end A024598

/-! ## A024598.P9266171764712064821

`A136047(n+1)+∑[A007590(n)]`
-/

namespace A024598.P9266171764712064821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007590 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136047 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024598.P9266171764712064821

namespace A024598

/-- `A136047(n+1)+∑[A007590(n)]` -/
def P9266171764712064821.Spec : Prop :=
  ∀ n, P9266171764712064821.a n = A024598 (n + 1)

end A024598

/-! ## A024598.P9583203016700511073

`Δ[A131474(n)]+2*A131941(n)`
-/

namespace A024598.P9583203016700511073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131474 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 2 * A131941 n

end

end A024598.P9583203016700511073

namespace A024598

/-- `Δ[A131474(n)]+2*A131941(n)` -/
def P9583203016700511073.Spec : Prop :=
  ∀ n, P9583203016700511073.a n = A024598 (n + 1)

end A024598

/-! ## A024598.P10285565402803991779

`A005993(n)+n*A008619(n)²`
-/

namespace A024598.P10285565402803991779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005993 n + (n : ℤ) * A008619 n ^ 2

end

end A024598.P10285565402803991779

namespace A024598

/-- `A005993(n)+n*A008619(n)²` -/
def P10285565402803991779.Spec : Prop :=
  ∀ n, P10285565402803991779.a n = A024598 (n + 1)

end A024598

/-! ## A024598.P14543823768690225079

`A303692(n+1)+A081498(n+1)`
-/

namespace A024598.P14543823768690225079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303692 (n + 1) + A081498 (n + 1)

end

end A024598.P14543823768690225079

namespace A024598

/-- `A303692(n+1)+A081498(n+1)` -/
def P14543823768690225079.Spec : Prop :=
  ∀ n, P14543823768690225079.a n = A024598 (n + 1)

end A024598

/-! ## A024598.P2477428581356533717

`A294473(n+1)+A179297(n+1)`
-/

namespace A024598.P2477428581356533717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294473 (n + 1) + A179297 (n + 1)

end

end A024598.P2477428581356533717

namespace A024598

/-- `A294473(n+1)+A179297(n+1)` -/
def P2477428581356533717.Spec : Prop :=
  ∀ n, P2477428581356533717.a n = A024598 (n + 1)

end A024598

/-! ## A024598.P12793974769896194614

`Δ[n*∑[∑[n%2]²]]`
-/

namespace A024598.P12793974769896194614
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f3 j) ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A024598.P12793974769896194614

namespace A024598

/-- `Δ[n*∑[∑[n%2]²]]` -/
def P12793974769896194614.Spec : Prop :=
  ∀ n, P12793974769896194614.a n = A024598 (n + 1)

end A024598

/-! ## A024598.P9471680795932632439

`A129194(n+1)+∑[n²]`
-/

namespace A024598.P9471680795932632439
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129194 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A024598.P9471680795932632439

namespace A024598

/-- `A129194(n+1)+∑[n²]` -/
def P9471680795932632439.Spec : Prop :=
  ∀ n, P9471680795932632439.a n = A024598 (n + 1)

end A024598

/-! ## A024598.P1900522635164722389

`A295286(2*(n+1))`
-/

namespace A024598.P1900522635164722389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295286 (2 * (n + 1))

end

end A024598.P1900522635164722389

namespace A024598

/-- `A295286(2*(n+1))` -/
def P1900522635164722389.Spec : Prop :=
  ∀ n, P1900522635164722389.a n = A024598 (n + 1)

end A024598

/-! ## A024598.P3909092396559367

`A295292(2*(n+1))`
-/

namespace A024598.P3909092396559367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295292 (2 * (n + 1))

end

end A024598.P3909092396559367

namespace A024598

/-- `A295292(2*(n+1))` -/
def P3909092396559367.Spec : Prop :=
  ∀ n, P3909092396559367.a n = A024598 (n + 1)

end A024598

/-! ## A024598.P17889975825397622509

`A008610(or(1, n)+n)`
-/

namespace A024598.P17889975825397622509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008610 (Nat.lor 1 n + n)

end

end A024598.P17889975825397622509

namespace A024598

/-- `A008610(or(1, n)+n)` -/
def P17889975825397622509.Spec : Prop :=
  ∀ n, P17889975825397622509.a n = A024598 (n + 1)

end A024598

/-! ## A024598.P2237545003414493277

`A008610(A042963(n+1))`
-/

namespace A024598.P2237545003414493277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008610 (A042963 (n + 1)).toNat

end

end A024598.P2237545003414493277

namespace A024598

/-- `A008610(A042963(n+1))` -/
def P2237545003414493277.Spec : Prop :=
  ∀ n, P2237545003414493277.a n = A024598 (n + 1)

end A024598

/-! ## A024598.P14907539956841134431

`A008610(record[A004443(n)-1])`
-/

namespace A024598.P14907539956841134431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004443 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008610 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A024598.P14907539956841134431

namespace A024598

/-- `A008610(record[A004443(n)-1])` -/
def P14907539956841134431.Spec : Prop :=
  ∀ n, P14907539956841134431.a n = A024598 (n + 1)

end A024598

/-! ## A024598.P1539130194656788003

`A008610(A042964(n+1)-1)`
-/

namespace A024598.P1539130194656788003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008610 (A042964 (n + 1) - 1).toNat

end

end A024598.P1539130194656788003

namespace A024598

/-- `A008610(A042964(n+1)-1)` -/
def P1539130194656788003.Spec : Prop :=
  ∀ n, P1539130194656788003.a n = A024598 (n + 1)

end A024598

/-! ## A024598.P18045501600985519941

`A296161(2*(n+1))+A295287(2*n+1)`
-/

namespace A024598.P18045501600985519941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296161 (2 * (n + 1)) + A295287 (2 * n + 1)

end

end A024598.P18045501600985519941

namespace A024598

/-- `A296161(2*(n+1))+A295287(2*n+1)` -/
def P18045501600985519941.Spec : Prop :=
  ∀ n, P18045501600985519941.a n = A024598 (n + 1)

end A024598

/-! ## A024598.P1998279759856393189

`A213752(A080827(n+1))`
-/

namespace A024598.P1998279759856393189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213752 (A080827 (n + 1)).toNat

end

end A024598.P1998279759856393189

namespace A024598

/-- `A213752(A080827(n+1))` -/
def P1998279759856393189.Spec : Prop :=
  ∀ n, P1998279759856393189.a n = A024598 (n + 1)

end A024598

