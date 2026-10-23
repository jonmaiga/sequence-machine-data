import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C009
import Seq.B000.C010
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
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C008
import Seq.B001.C009
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
import Seq.B006.C001
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
import Seq.Opaque.C014
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023

/-!
# A152200: Complement of A163501.

The programs for A152200, there is no canonical definition to state claims against.
-/

/-! ## A152200.P12719623032690739094

`comp[A163501(n+1)-1]+1`
-/

namespace A152200.P12719623032690739094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163501 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A152200.P12719623032690739094

/-! ## A152200.P8131752977814390739

`eq[char[A163501(n+1)], A000007(n)]`
-/

namespace A152200.P8131752977814390739
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163501 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A152200.P8131752977814390739

/-! ## A152200.P1822706891748386143

`eq[char[A163501(n+1)], A000038(n)]`
-/

namespace A152200.P1822706891748386143
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163501 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A152200.P1822706891748386143

/-! ## A152200.P12728834591933765848

`eq[char[A163501(n+1)], A130706(n)]`
-/

namespace A152200.P12728834591933765848
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163501 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130706 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A152200.P12728834591933765848

/-! ## A152200.P6100255706691686395

`lt[char[A163501(n+1)], A057427(n)]`
-/

namespace A152200.P6100255706691686395
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163501 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n

end

end A152200.P6100255706691686395

/-!
# A152201: Triangle read by rows, A000012 * A152198.

The programs for A152201, there is no canonical definition to state claims against.
-/

/-! ## A152201.P7089543482964264878

`A207974(comp[n²]+n)`
-/

namespace A152201.P7089543482964264878
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207974 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + n)

end

end A152201.P7089543482964264878

/-! ## A152201.P9391989663916488900

`A105438(A091018(n))`
-/

namespace A152201.P9391989663916488900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105438 (A091018 n).toNat

end

end A152201.P9391989663916488900

/-! ## A152201.P14624370885433041953

`A105438(A056536(n+1)-1)`
-/

namespace A152201.P14624370885433041953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105438 (A056536 (n + 1) - 1).toNat

end

end A152201.P14624370885433041953

/-!
# A152202: Triangle read by rows, A000012 * A152201.

The programs for A152202, there is no canonical definition to state claims against.
-/

/-! ## A152202.P3758977318960641344

`A212139(A187829(n+1)+comp[n²])`
-/

namespace A152202.P3758977318960641344
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212139 (A187829 (n + 1) + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)).toNat

end

end A152202.P3758977318960641344

/-!
# A152203: Triangle T(n,k) = (2n+1-2k)*fibonacci(k), read by rows.

The programs for A152203, the canonical program `A152203.P706124118902158050` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152203 has offset 1).

The definition of A152203 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A152203.P5391812169632921520

`(2*(C(comp[∑[n]]-n, 2)-n)-1)*A104763(n+1)`
-/

namespace A152203.P5391812169632921520
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ)) - 1) * A104763 (n + 1)

end

end A152203.P5391812169632921520

namespace A152203

/-- `(2*(C(comp[∑[n]]-n, 2)-n)-1)*A104763(n+1)` -/
def P5391812169632921520.Spec : Prop :=
  ∀ n, P5391812169632921520.a n = A152203 (n + 1)

end A152203

/-! ## A152203.P706124118902158050

`A099375(n)*A104763(n+1)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A152203

/-- `A099375(n)*A104763(n+1)` -/
def P706124118902158050.Spec : Prop :=
  ∀ n, P706124118902158050.a n = A152203 (n + 1)

theorem P706124118902158050.correct : P706124118902158050.Spec := by
  intro n
  simp only [A152203, Nat.add_sub_cancel]

end A152203

/-! ## A152203.P8995972181470193626

`A000045(1-C(∑[char[∑[n]]], 2)+n)*A099375(n)`
-/

namespace A152203.P8995972181470193626
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) + (n : ℤ)).toNat * A099375 n

end

end A152203.P8995972181470193626

namespace A152203

/-- `A000045(1-C(∑[char[∑[n]]], 2)+n)*A099375(n)` -/
def P8995972181470193626.Spec : Prop :=
  ∀ n, P8995972181470193626.a n = A152203 (n + 1)

end A152203

/-! ## A152203.P16316683376762099767

`(n²+1+n)%(comp[C(n, 2)]+1)*A000045(A002260(n+1))`
-/

namespace A152203.P16316683376762099767
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n ^ 2 + 1 + n) % (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1) : ℕ) : ℤ) * A000045 (A002260 (n + 1)).toNat

end

end A152203.P16316683376762099767

namespace A152203

/-- `(n²+1+n)%(comp[C(n, 2)]+1)*A000045(A002260(n+1))` -/
def P16316683376762099767.Spec : Prop :=
  ∀ n, P16316683376762099767.a n = A152203 (n + 1)

end A152203

/-! ## A152203.P9224275522295154422

`A000045(A002260(n+1))*A099375(n)`
-/

namespace A152203.P9224275522295154422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A002260 (n + 1)).toNat * A099375 n

end

end A152203.P9224275522295154422

namespace A152203

/-- `A000045(A002260(n+1))*A099375(n)` -/
def P9224275522295154422.Spec : Prop :=
  ∀ n, P9224275522295154422.a n = A152203 (n + 1)

end A152203

/-! ## A152203.P2997921745132533605

`A000045(A002262(n)+1)*A099375(n)`
-/

namespace A152203.P2997921745132533605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A002262 n + 1).toNat * A099375 n

end

end A152203.P2997921745132533605

namespace A152203

/-- `A000045(A002262(n)+1)*A099375(n)` -/
def P2997921745132533605.Spec : Prop :=
  ∀ n, P2997921745132533605.a n = A152203 (n + 1)

end A152203

/-! ## A152203.P16965281084761472122

`A000045(A134868(n+1))*A099375(n)`
-/

namespace A152203.P16965281084761472122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A134868 (n + 1)).toNat * A099375 n

end

end A152203.P16965281084761472122

namespace A152203

/-- `A000045(A134868(n+1))*A099375(n)` -/
def P16965281084761472122.Spec : Prop :=
  ∀ n, P16965281084761472122.a n = A152203 (n + 1)

end A152203

/-! ## A152203.P2228765060126412640

`A000045(sqrt(A133819(n+1)))*A099375(n)`
-/

namespace A152203.P2228765060126412640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.roundAway (Real.sqrt (A133819 (n + 1) : ℝ))).toNat * A099375 n

end

end A152203.P2228765060126412640

namespace A152203

/-- `A000045(sqrt(A133819(n+1)))*A099375(n)` -/
def P2228765060126412640.Spec : Prop :=
  ∀ n, P2228765060126412640.a n = A152203 (n + 1)

end A152203

/-! ## A152203.P9213134007596372021

`A000045(log2(A059268(n))+1)*A099375(n)`
-/

namespace A152203.P9213134007596372021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.roundAway (Real.logb 2 (A059268 n : ℝ) + 1)).toNat * A099375 n

end

end A152203.P9213134007596372021

namespace A152203

/-- `A000045(log2(A059268(n))+1)*A099375(n)` -/
def P9213134007596372021.Spec : Prop :=
  ∀ n, P9213134007596372021.a n = A152203 (n + 1)

end A152203

/-! ## A152203.P17425825563115977954

`A099375(n)*A141169(comp[∑[n]])`
-/

namespace A152203.P17425825563115977954
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n * A141169 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A152203.P17425825563115977954

namespace A152203

/-- `A099375(n)*A141169(comp[∑[n]])` -/
def P17425825563115977954.Spec : Prop :=
  ∀ n, P17425825563115977954.a n = A152203 (n + 1)

end A152203

/-!
# A152204: Triangle read by rows: T(n,k) = 2*n-4*k+5 (n >= 0, 1 <= k <= 1+floor(n/2)).

The programs for A152204, the canonical program `A152204.P767689205357383764` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152204 has offset 0).

The definition of A152204 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A152204.P767689205357383764

`2*A082375(n)+1`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A152204

/-- `2*A082375(n)+1` -/
def P767689205357383764.Spec : Prop :=
  ∀ n, P767689205357383764.a n = A152204 n

theorem P767689205357383764.correct : P767689205357383764.Spec := by
  intro n
  simp only [A152204]

end A152204

/-! ## A152204.P11018437668404913704

`2*A122196(n+1)-1`
-/

namespace A152204.P11018437668404913704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A122196 (n + 1) - 1

end

end A152204.P11018437668404913704

namespace A152204

/-- `2*A122196(n+1)-1` -/
def P11018437668404913704.Spec : Prop :=
  ∀ n, P11018437668404913704.a n = A152204 n

end A152204

/-! ## A152204.P1276522935027328838

`A005408(A082375(n))`
-/

namespace A152204.P1276522935027328838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A082375 n).toNat

end

end A152204.P1276522935027328838

namespace A152204

/-- `A005408(A082375(n))` -/
def P1276522935027328838.Spec : Prop :=
  ∀ n, P1276522935027328838.a n = A152204 n

end A152204

/-! ## A152204.P5037020917467754750

`A000265(A084346(n+1))`
-/

namespace A152204.P5037020917467754750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A084346 (n + 1)).toNat

end

end A152204.P5037020917467754750

namespace A152204

/-- `A000265(A084346(n+1))` -/
def P5037020917467754750.Spec : Prop :=
  ∀ n, P5037020917467754750.a n = A152204 n

end A152204

/-! ## A152204.P15821135326696540177

`A004273(A082375(n)+1)`
-/

namespace A152204.P15821135326696540177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A082375 n + 1).toNat

end

end A152204.P15821135326696540177

namespace A152204

/-- `A004273(A082375(n)+1)` -/
def P15821135326696540177.Spec : Prop :=
  ∀ n, P15821135326696540177.a n = A152204 n

end A152204

/-! ## A152204.P13640570819134132384

`A004273(A122196(n+1))`
-/

namespace A152204.P13640570819134132384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A122196 (n + 1)).toNat

end

end A152204.P13640570819134132384

namespace A152204

/-- `A004273(A122196(n+1))` -/
def P13640570819134132384.Spec : Prop :=
  ∀ n, P13640570819134132384.a n = A152204 n

end A152204

/-! ## A152204.P4157012479444810406

`A004396(A209634(n+1))`
-/

namespace A152204.P4157012479444810406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A209634 (n + 1)).toNat

end

end A152204.P4157012479444810406

namespace A152204

/-- `A004396(A209634(n+1))` -/
def P4157012479444810406.Spec : Prop :=
  ∀ n, P4157012479444810406.a n = A152204 n

end A152204

/-! ## A152204.P7719118265526431765

`A109613(2*A082375(n))`
-/

namespace A152204.P7719118265526431765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (2 * A082375 n).toNat

end

end A152204.P7719118265526431765

namespace A152204

/-- `A109613(2*A082375(n))` -/
def P7719118265526431765.Spec : Prop :=
  ∀ n, P7719118265526431765.a n = A152204 n

end A152204

/-! ## A152204.P8040134877694341347

`A023443(2*A122196(n+1))`
-/

namespace A152204.P8040134877694341347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (2 * A122196 (n + 1)).toNat

end

end A152204.P8040134877694341347

namespace A152204

/-- `A023443(2*A122196(n+1))` -/
def P8040134877694341347.Spec : Prop :=
  ∀ n, P8040134877694341347.a n = A152204 n

end A152204

/-! ## A152204.P7411537051295787724

`A008620(2*A209634(n+1))`
-/

namespace A152204.P7411537051295787724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (2 * A209634 (n + 1)).toNat

end

end A152204.P7411537051295787724

namespace A152204

/-- `A008620(2*A209634(n+1))` -/
def P7411537051295787724.Spec : Prop :=
  ∀ n, P7411537051295787724.a n = A152204 n

end A152204

/-! ## A152204.P3760474227416404739

`A122196(n+1)+A082375(n)`
-/

namespace A152204.P3760474227416404739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122196 (n + 1) + A082375 n

end

end A152204.P3760474227416404739

namespace A152204

/-- `A122196(n+1)+A082375(n)` -/
def P3760474227416404739.Spec : Prop :=
  ∀ n, P3760474227416404739.a n = A152204 n

end A152204

/-! ## A152204.P3961134086199348153

`A209634(n+1)-A082375(n)`
-/

namespace A152204.P3961134086199348153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209634 (n + 1) - A082375 n

end

end A152204.P3961134086199348153

namespace A152204

/-- `A209634(n+1)-A082375(n)` -/
def P3961134086199348153.Spec : Prop :=
  ∀ n, P3961134086199348153.a n = A152204 n

end A152204

/-! ## A152204.P10322620038300067300

`A168276(2*A122196(n+1))/2`
-/

namespace A152204.P10322620038300067300
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A168276 (2 * A122196 (n + 1)).toNat : ℚ) / 2

end

end A152204.P10322620038300067300

namespace A152204

/-- `A168276(2*A122196(n+1))/2` -/
def P10322620038300067300.Spec : Prop :=
  ∀ n, P10322620038300067300.a n = (A152204 n : ℚ)

end A152204

/-! ## A152204.P3458209493183602609

`gcd(A065803(n+1), A084346(n+1))`
-/

namespace A152204.P3458209493183602609
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A065803 (n + 1)) (A084346 (n + 1))

end

end A152204.P3458209493183602609

namespace A152204

/-- `gcd(A065803(n+1), A084346(n+1))` -/
def P3458209493183602609.Spec : Prop :=
  ∀ n, (P3458209493183602609.a n : ℤ) = A152204 n

end A152204

/-! ## A152204.P18148852865519014089

`abs(3-A004277(A122196(n+1)+1))`
-/

namespace A152204.P18148852865519014089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |3 - A004277 (A122196 (n + 1) + 1).toNat|

end

end A152204.P18148852865519014089

namespace A152204

/-- `abs(3-A004277(A122196(n+1)+1))` -/
def P18148852865519014089.Spec : Prop :=
  ∀ n, P18148852865519014089.a n = A152204 n

end A152204

/-! ## A152204.P15558207065576595198

`A082375(A183299(n+1))+A082375(n)`
-/

namespace A152204.P15558207065576595198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082375 (A183299 (n + 1)).toNat + A082375 n

end

end A152204.P15558207065576595198

namespace A152204

/-- `A082375(A183299(n+1))+A082375(n)` -/
def P15558207065576595198.Spec : Prop :=
  ∀ n, P15558207065576595198.a n = A152204 n

end A152204

/-! ## A152204.P3738563716465269281

`A099375(A091018(n))`
-/

namespace A152204.P3738563716465269281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 (A091018 n).toNat

end

end A152204.P3738563716465269281

namespace A152204

/-- `A099375(A091018(n))` -/
def P3738563716465269281.Spec : Prop :=
  ∀ n, P3738563716465269281.a n = A152204 n

end A152204

/-! ## A152204.P7936258574569892744

`A099375(2*n-A000196(n))`
-/

namespace A152204.P7936258574569892744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 ((2 * n : ℤ) - A000196 n).toNat

end

end A152204.P7936258574569892744

namespace A152204

/-- `A099375(2*n-A000196(n))` -/
def P7936258574569892744.Spec : Prop :=
  ∀ n, P7936258574569892744.a n = A152204 n

end A152204

/-! ## A152204.P2849467757341274839

`A099375(n-A000196(n)+n)`
-/

namespace A152204.P2849467757341274839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 ((n : ℤ) - A000196 n + (n : ℤ)).toNat

end

end A152204.P2849467757341274839

namespace A152204

/-- `A099375(n-A000196(n)+n)` -/
def P2849467757341274839.Spec : Prop :=
  ∀ n, P2849467757341274839.a n = A152204 n

end A152204

/-! ## A152204.P5613846418154525338

`A099375(n-(A000196(n)-n))`
-/

namespace A152204.P5613846418154525338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 ((n : ℤ) - (A000196 n - (n : ℤ))).toNat

end

end A152204.P5613846418154525338

namespace A152204

/-- `A099375(n-(A000196(n)-n))` -/
def P5613846418154525338.Spec : Prop :=
  ∀ n, P5613846418154525338.a n = A152204 n

end A152204

/-!
# A152205: Triangle read by rows, A000012 * A152204.

The programs for A152205, there is no canonical definition to state claims against.
-/

/-! ## A152205.P17311566152724518136

`(C(ceil(2*sqrt(n+1)), 2)-n-(n-floor(sqrt(n))))²`
-/

namespace A152205.P17311566152724518136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.choose ⌈2 * Real.sqrt (n + 1 : ℝ)⌉.toNat 2 : ℤ) - (n : ℤ) - ((n : ℤ) - (Nat.sqrt n : ℤ))) ^ 2

end

end A152205.P17311566152724518136

/-! ## A152205.P3789623987025829927

`(C(ceil(2*sqrt(n+1)), 2)-n-(n-floor(sqrt(n))))^2`
-/

namespace A152205.P3789623987025829927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.choose ⌈2 * Real.sqrt (n + 1 : ℝ)⌉.toNat 2 : ℤ) - (n : ℤ) - ((n : ℤ) - (Nat.sqrt n : ℤ))) ^ 2

end

end A152205.P3789623987025829927

/-! ## A152205.P4015949410932852869

`(C(ceil(2*sqrt(n+1)), 2)-n-(n-floor(sqrt(n))))*(C(ceil(2*sqrt(n+1)), 2)-n-(n-floor(sqrt(n))))`
-/

namespace A152205.P4015949410932852869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.choose ⌈2 * Real.sqrt (n + 1 : ℝ)⌉.toNat 2 : ℤ) - (n : ℤ) - ((n : ℤ) - (Nat.sqrt n : ℤ))) * ((Nat.choose ⌈2 * Real.sqrt (n + 1 : ℝ)⌉.toNat 2 : ℤ) - (n : ℤ) - ((n : ℤ) - (Nat.sqrt n : ℤ)))

end

end A152205.P4015949410932852869

/-! ## A152205.P13304994130062139937

`(A082375(n)+1)²`
-/

namespace A152205.P13304994130062139937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A082375 n + 1) ^ 2

end

end A152205.P13304994130062139937

/-! ## A152205.P6978413133266467146

`A122196(n+1)²`
-/

namespace A152205.P6978413133266467146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122196 (n + 1) ^ 2

end

end A152205.P6978413133266467146

/-!
# A152206: a(n) = sum of base-2 digits of A037308(n) = sum of base-10 digits of A037308(n).

The programs for A152206, there is no canonical definition to state claims against.
-/

/-! ## A152206.P280434170224400730

`∑{digits}[A037308(n+1), #]`
-/

namespace A152206.P280434170224400730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037308 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A152206.P280434170224400730

/-! ## A152206.P12108986695733081124

`∑{e}[A001316(A037308(n+1)), A000027(#)]`
-/

namespace A152206.P12108986695733081124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (A037308 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A000027 (Nat.factorization (f1 n).natAbs p)

end

end A152206.P12108986695733081124

/-! ## A152206.P11152243793601942812

`val(A001316(2*A037308(n+1)), 2)`
-/

namespace A152206.P11152243793601942812
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A001316 (2 * A037308 (n + 1)).toNat).toNat 2

end

end A152206.P11152243793601942812

/-! ## A152206.P8892747685140131759

`A326746(A037308(n+1))`
-/

namespace A152206.P8892747685140131759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326746 (A037308 (n + 1)).toNat

end

end A152206.P8892747685140131759

/-! ## A152206.P4899688518883537717

`∑{d}[A037308(n+1), A297115(#)]`
-/

namespace A152206.P4899688518883537717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037308 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A297115 d

end

end A152206.P4899688518883537717

/-! ## A152206.P10189477310784140646

`A000120(A037308(n+1)/gcd(2, n))`
-/

namespace A152206.P10189477310784140646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (SequenceMachineLib.roundAway ((A037308 (n + 1) : ℚ) / (Nat.gcd 2 n : ℚ))).toNat

end

end A152206.P10189477310784140646

/-! ## A152206.P10074022131323806203

`A000120(A037308(n+1)/A040001(n))`
-/

namespace A152206.P10074022131323806203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (SequenceMachineLib.roundAway ((A037308 (n + 1) : ℚ) / (A040001 n : ℚ))).toNat

end

end A152206.P10074022131323806203

/-! ## A152206.P2432965435224722270

`A000120(A037308(n+1)+char[1])`
-/

namespace A152206.P2432965435224722270
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A037308 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A152206.P2432965435224722270

/-! ## A152206.P10581354507183000359

`A007953(A037308(n+1)+1)-1`
-/

namespace A152206.P10581354507183000359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A037308 (n + 1) + 1).toNat - 1

end

end A152206.P10581354507183000359

/-! ## A152206.P15744925280541314420

`∑{d}[A000120(A037308(n+1)), A000010(#)]`
-/

namespace A152206.P15744925280541314420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A037308 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A152206.P15744925280541314420

/-!
# A152207: Numbers k such that (sum of base-2 digits of k) = (sum of base-10 digits of k) = 10.

The programs for A152207, there is no canonical definition to state claims against.
-/

/-! ## A152207.P8274578833475729662

`∩[A037308(n+1), A038461(n+1)]`
-/

namespace A152207.P8274578833475729662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037308 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038461 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A152207.P8274578833475729662

/-!
# A152208: Lexicographically earliest sequence of distinct nonnegative integers such that a(n) shares no digit with a(a(n)) for all n>=0.

The programs for A152208, there is no canonical definition to state claims against.
-/

/-! ## A152208.P2761400430159649933

`xor(1, A341935(A055646(n)))`
-/

namespace A152208.P2761400430159649933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A341935 (A055646 n).toNat)

end

end A152208.P2761400430159649933

/-! ## A152208.P15791961666933201341

`xor(A246260(A000583(n+2)), A341935(n))`
-/

namespace A152208.P15791961666933201341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A246260 (A000583 (n + 2)).toNat) (A341935 n)

end

end A152208.P15791961666933201341

/-! ## A152208.P10690347322339597908

`xor(A330098(A122111(n+2)), A341935(n))`
-/

namespace A152208.P10690347322339597908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A330098 (A122111 (n + 2)).toNat) (A341935 n)

end

end A152208.P10690347322339597908

/-! ## A152208.P8278488011826341533

`xor(A010686(A341935(2*n)), A341935(n))`
-/

namespace A152208.P8278488011826341533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A010686 (A341935 (2 * n)).toNat) (A341935 n)

end

end A152208.P8278488011826341533

/-! ## A152208.P13690462977165598734

`xor(A330098(A102627(2*n+5)), A341935(n))`
-/

namespace A152208.P13690462977165598734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A330098 (A102627 (2 * n + 5)).toNat) (A341935 n)

end

end A152208.P13690462977165598734

/-!
# A152209: a(n) = A163501(n) - n.

The programs for A152209, there is no canonical definition to state claims against.
-/

/-! ## A152209.P14337775166511556133

`A163501(n+1)-(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A152209.P14337775166511556133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163501 (n + 1) - (n + 1 : ℤ)

end

end A152209.P14337775166511556133

/-! ## A152209.P11668797019520583339

`A163501(-xor(n, -1))-1-n`
-/

namespace A152209.P11668797019520583339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163501 (-Int.xor (n : ℤ) (-1)).toNat - 1 - (n : ℤ)

end

end A152209.P11668797019520583339

/-! ## A152209.P10135328564257354403

`A163501(Δ[n²]-n)-1-n`
-/

namespace A152209.P10135328564257354403
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163501 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat - 1 - (n : ℤ)

end

end A152209.P10135328564257354403

/-! ## A152209.P3473754671884885020

`A023443(A163501(n+1)-n)`
-/

namespace A152209.P3473754671884885020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A163501 (n + 1) - (n : ℤ)).toNat

end

end A152209.P3473754671884885020

/-! ## A152209.P11160655688286526638

`A001478(n+1)+A163501(n+1)`
-/

namespace A152209.P11160655688286526638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001478 (n + 1) + A163501 (n + 1)

end

end A152209.P11160655688286526638

/-! ## A152209.P6058397329743757168

`A196199((n+1)²)+A163501(n+1)`
-/

namespace A152209.P6058397329743757168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196199 ((n + 1) ^ 2) + A163501 (n + 1)

end

end A152209.P6058397329743757168

/-!
# A152211: a(n) = n * sigma_0(n) + sigma_1(n).

The programs for A152211, the canonical program `A152211.P12350050542903153316` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152211 has offset 1).

The definition of A152211 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A038040, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A152211.P12350050542903153316

`A038040(n+1)+A000203(n+1)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A152211

/-- `A038040(n+1)+A000203(n+1)` -/
def P12350050542903153316.Spec : Prop :=
  ∀ n, P12350050542903153316.a n = A152211 (n + 1)

theorem P12350050542903153316.correct : P12350050542903153316.Spec := by
  intro n
  simp only [A152211, Nat.add_sub_cancel]

end A152211

/-! ## A152211.P8934016512484736310

`(n+1)*A000005(n+1)+A000203(n+1)`
-/

namespace A152211.P8934016512484736310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000005 (n + 1) + A000203 (n + 1)

end

end A152211.P8934016512484736310

namespace A152211

/-- `(n+1)*A000005(n+1)+A000203(n+1)` -/
def P8934016512484736310.Spec : Prop :=
  ∀ n, P8934016512484736310.a n = A152211 (n + 1)

end A152211

/-! ## A152211.P7892370522251596439

`∑{d}[n+1, n+1+#]`
-/

namespace A152211.P7892370522251596439
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (n + 1 + d)

end

end A152211.P7892370522251596439

namespace A152211

/-- `∑{d}[n+1, n+1+#]` -/
def P7892370522251596439.Spec : Prop :=
  ∀ n, (P7892370522251596439.a n : ℤ) = A152211 (n + 1)

end A152211

/-! ## A152211.P9990572777141250039

`2/(n+1)*A309732(n+1)`
-/

namespace A152211.P9990572777141250039
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (n + 1 : ℚ) * (A309732 (n + 1) : ℚ)

end

end A152211.P9990572777141250039

namespace A152211

/-- `2/(n+1)*A309732(n+1)` -/
def P9990572777141250039.Spec : Prop :=
  ∀ n, P9990572777141250039.a n = (A152211 (n + 1) : ℚ)

end A152211

/-! ## A152211.P9812488913655856228

`(n+1)*∏{e}[n+1, #+1]+A001065(n+1)+1+n`
-/

namespace A152211.P9812488913655856228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n + 1) * (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1)) : ℕ) : ℤ) + (A001065 (n + 1) + 1 + (n : ℤ))

end

end A152211.P9812488913655856228

namespace A152211

/-- `(n+1)*∏{e}[n+1, #+1]+A001065(n+1)+1+n` -/
def P9812488913655856228.Spec : Prop :=
  ∀ n, P9812488913655856228.a n = A152211 (n + 1)

end A152211

/-! ## A152211.P11183903569463441663

`(n+1)*∏{e}[n+1, #+1]+A155085(n+1)-(n+1)`
-/

namespace A152211.P11183903569463441663
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n + 1) * (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1)) : ℕ) : ℤ) + (A155085 (n + 1) - (n + 1 : ℤ))

end

end A152211.P11183903569463441663

namespace A152211

/-- `(n+1)*∏{e}[n+1, #+1]+A155085(n+1)-(n+1)` -/
def P11183903569463441663.Spec : Prop :=
  ∀ n, P11183903569463441663.a n = A152211 (n + 1)

end A152211

/-! ## A152211.P15311134964804226961

`A064987(n+1)/(n+1)+(n+1)*∏{e}[n+1, #+1]`
-/

namespace A152211.P15311134964804226961
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064987 (n + 1) : ℚ) / (n + 1 : ℚ) + (((n + 1) * (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1)) : ℕ) : ℚ)

end

end A152211.P15311134964804226961

namespace A152211

/-- `A064987(n+1)/(n+1)+(n+1)*∏{e}[n+1, #+1]` -/
def P15311134964804226961.Spec : Prop :=
  ∀ n, P15311134964804226961.a n = (A152211 (n + 1) : ℚ)

end A152211

/-! ## A152211.P12033542218870851227

`A094471(n+1)+A074400(n+1)`
-/

namespace A152211.P12033542218870851227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094471 (n + 1) + A074400 (n + 1)

end

end A152211.P12033542218870851227

namespace A152211

/-- `A094471(n+1)+A074400(n+1)` -/
def P12033542218870851227.Spec : Prop :=
  ∀ n, P12033542218870851227.a n = A152211 (n + 1)

end A152211

/-! ## A152211.P202722120627784249

`A129235(n+1)+A081307(n+1)`
-/

namespace A152211.P202722120627784249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129235 (n + 1) + A081307 (n + 1)

end

end A152211.P202722120627784249

namespace A152211

/-- `A129235(n+1)+A081307(n+1)` -/
def P202722120627784249.Spec : Prop :=
  ∀ n, P202722120627784249.a n = A152211 (n + 1)

end A152211

/-! ## A152211.P6289761901119316902

`A162664(n+1)+A076627(n+1)`
-/

namespace A152211.P6289761901119316902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162664 (n + 1) + A076627 (n + 1)

end

end A152211.P6289761901119316902

namespace A152211

/-- `A162664(n+1)+A076627(n+1)` -/
def P6289761901119316902.Spec : Prop :=
  ∀ n, P6289761901119316902.a n = A152211 (n + 1)

end A152211

/-! ## A152211.P13461491237414220210

`A345741(n+1)+A163163(n+1)`
-/

namespace A152211.P13461491237414220210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345741 (n + 1) + A163163 (n + 1)

end

end A152211.P13461491237414220210

namespace A152211

/-- `A345741(n+1)+A163163(n+1)` -/
def P13461491237414220210.Spec : Prop :=
  ∀ n, P13461491237414220210.a n = A152211 (n + 1)

end A152211

/-! ## A152211.P11021489274748764343

`A337360(n+1)-A343824(n+1)`
-/

namespace A152211.P11021489274748764343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337360 (n + 1) - A343824 (n + 1)

end

end A152211.P11021489274748764343

namespace A152211

/-- `A337360(n+1)-A343824(n+1)` -/
def P11021489274748764343.Spec : Prop :=
  ∀ n, P11021489274748764343.a n = A152211 (n + 1)

end A152211

/-! ## A152211.P2206721535901418116

`A083271(n+1)+A088580(n+1)-2`
-/

namespace A152211.P2206721535901418116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083271 (n + 1) + (A088580 (n + 1) - 2)

end

end A152211.P2206721535901418116

namespace A152211

/-- `A083271(n+1)+A088580(n+1)-2` -/
def P2206721535901418116.Spec : Prop :=
  ∀ n, P2206721535901418116.a n = A152211 (n + 1)

end A152211

/-! ## A152211.P4962732742310003932

`A094471(n+1)+2*A000203(n+1)`
-/

namespace A152211.P4962732742310003932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094471 (n + 1) + 2 * A000203 (n + 1)

end

end A152211.P4962732742310003932

namespace A152211

/-- `A094471(n+1)+2*A000203(n+1)` -/
def P4962732742310003932.Spec : Prop :=
  ∀ n, P4962732742310003932.a n = A152211 (n + 1)

end A152211

/-! ## A152211.P694581945264267409

`A038040(n+1)+A074400(n+1)/2`
-/

namespace A152211.P694581945264267409
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038040 (n + 1) : ℚ) + (A074400 (n + 1) : ℚ) / 2

end

end A152211.P694581945264267409

namespace A152211

/-- `A038040(n+1)+A074400(n+1)/2` -/
def P694581945264267409.Spec : Prop :=
  ∀ n, P694581945264267409.a n = (A152211 (n + 1) : ℚ)

end A152211

/-! ## A152211.P17486534614626183474

`2*A038040(n+1)-A094471(n+1)`
-/

namespace A152211.P17486534614626183474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A038040 (n + 1) - A094471 (n + 1)

end

end A152211.P17486534614626183474

namespace A152211

/-- `2*A038040(n+1)-A094471(n+1)` -/
def P17486534614626183474.Spec : Prop :=
  ∀ n, P17486534614626183474.a n = A152211 (n + 1)

end A152211

/-! ## A152211.P13853742741036736372

`A007503(n+1)+n*A000005(n+1)`
-/

namespace A152211.P13853742741036736372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007503 (n + 1) + (n : ℤ) * A000005 (n + 1)

end

end A152211.P13853742741036736372

namespace A152211

/-- `A007503(n+1)+n*A000005(n+1)` -/
def P13853742741036736372.Spec : Prop :=
  ∀ n, P13853742741036736372.a n = A152211 (n + 1)

end A152211

/-! ## A152211.P14061097481452438159

`A000203(n+1)+A094472(n+1)+A065387(n+1)`
-/

namespace A152211.P14061097481452438159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + (A094472 (n + 1) + A065387 (n + 1))

end

end A152211.P14061097481452438159

namespace A152211

/-- `A000203(n+1)+A094472(n+1)+A065387(n+1)` -/
def P14061097481452438159.Spec : Prop :=
  ∀ n, P14061097481452438159.a n = A152211 (n + 1)

end A152211

/-! ## A152211.P14235232545941732476

`A000203(n+1)+A349130(n+1)+A348980(n+1)`
-/

namespace A152211.P14235232545941732476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + (A349130 (n + 1) + A348980 (n + 1))

end

end A152211.P14235232545941732476

namespace A152211

/-- `A000203(n+1)+A349130(n+1)+A348980(n+1)` -/
def P14235232545941732476.Spec : Prop :=
  ∀ n, P14235232545941732476.a n = A152211 (n + 1)

end A152211

/-! ## A152211.P10720188525803740962

`A065608(n+1)+A349213(n+1)+A349212(n+1)`
-/

namespace A152211.P10720188525803740962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065608 (n + 1) + (A349213 (n + 1) + A349212 (n + 1))

end

end A152211.P10720188525803740962

namespace A152211

/-- `A065608(n+1)+A349213(n+1)+A349212(n+1)` -/
def P10720188525803740962.Spec : Prop :=
  ∀ n, P10720188525803740962.a n = A152211 (n + 1)

end A152211

/-!
# A152212: Numbers k such that sigma_0(k) divides (k*sigma_1(k) - sigma_2(k)).

The programs for A152212, there is no canonical definition to state claims against.
-/

/-! ## A152212.P18132201987675512993

`eq[A000035(A072851(n)), A097587(n+1)]`
-/

namespace A152212.P18132201987675512993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A072851 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097587 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A152212.P18132201987675512993

/-! ## A152212.P1770402862169866931

`∩[A046840(n+1), A046841(n+1)]%A342438(3*n+5)`
-/

namespace A152212.P1770402862169866931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046840 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046841 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) (A342438 (3 * n + 5))

end

end A152212.P1770402862169866931

/-! ## A152212.P9361666360344837278

`A004396(∑[A161189(A298403(n))])`
-/

namespace A152212.P9361666360344837278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161189 (A298403 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A152212.P9361666360344837278

/-!
# A152213: Numbers k such that 7^k + 12 is prime.

The programs for A152213, there is no canonical definition to state claims against.
-/

/-! ## A152213.P10859248872058621510

`A268680((n+1)^(record[and(n+1, xor(n, n+1)-n)]-2))%(3^n)`
-/

namespace A152213.P10859248872058621510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) ((Nat.xor n (n + 1) : ℤ) - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A268680 (SequenceMachineLib.roundAway ((n + 1 : ℚ) ^ (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - 2 : ℤ))).toNat) (3 ^ n : ℤ)

end

end A152213.P10859248872058621510

/-! ## A152213.P2353578594655553778

`A295556(A061092(n))`
-/

namespace A152213.P2353578594655553778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295556 (A061092 n).toNat

end

end A152213.P2353578594655553778

/-!
# A152215: Numbers k such that sigma_2(k)/(sigma_1(k)*sigma_0(k)) = c, c an integer.

The programs for A152215, there is no canonical definition to state claims against.
-/

/-! ## A152215.P11792704245124858574

`∩[A020486(n+1), A046678(n+1)]`
-/

namespace A152215.P11792704245124858574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020486 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046678 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A152215.P11792704245124858574

/-! ## A152215.P12978275468759769983

`∩[A020486(n+1), A298080(n+1)]`
-/

namespace A152215.P12978275468759769983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020486 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298080 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A152215.P12978275468759769983

/-! ## A152215.P13498380617789781708

`∩[A020486(n+1), A330606(n+1)]`
-/

namespace A152215.P13498380617789781708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020486 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330606 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A152215.P13498380617789781708

/-! ## A152215.P17967538434318884918

`∩[A020486(n+1), A338406(n+1)]`
-/

namespace A152215.P17967538434318884918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020486 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338406 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A152215.P17967538434318884918

/-! ## A152215.P7894184378805428835

`∑[A324198(A001523(3*n))]²`
-/

namespace A152215.P7894184378805428835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324198 (A001523 (3 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A152215.P7894184378805428835

/-!
# A152220: Primes p such that p^2 divides m!-1 for some integer m < p.

The programs for A152220, there is no canonical definition to state claims against.
-/

/-! ## A152220.P12320835224654926504

`or(A051345(A087356(n)), A106839(n))`
-/

namespace A152220.P12320835224654926504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A051345 (A087356 n).toNat) (A106839 n)

end

end A152220.P12320835224654926504

/-!
# A152221: a(n) = the largest integer k where the binary representations of both k and of k+1 occur as substrings in the binary representation of n. a(n) = 0 if n = 2^m -1, for m = any positive integer.

The programs for A152221, there is no canonical definition to state claims against.
-/

/-! ## A152221.P10924140767867306538

`n%A151714(A151714(A164874(n+1)))`
-/

namespace A152221.P10924140767867306538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A151714 (A151714 (A164874 (n + 1)).toNat).toNat)

end

end A152221.P10924140767867306538

/-! ## A152221.P3592486335345659287

`A049501(lt[10^(n/8), A255852(n)])`
-/

namespace A152221.P3592486335345659287
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (10 : ℝ) ^ ((n : ℚ) / 8 : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255852 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049501 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n)

end

end A152221.P3592486335345659287

/-! ## A152221.P8447965219492125481

`A039997(A000203(n+1)*A262586(2*n))`
-/

namespace A152221.P8447965219492125481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039997 (A000203 (n + 1) * A262586 (2 * n)).toNat

end

end A152221.P8447965219492125481

/-!
# A152223: a(n) = -4*a(n-1) + 6*a(n-2) for n > 1 with a(0) = 1 and a(1) = -6.

The programs for A152223, the canonical program `A152223.P6278546473586501763` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152223 has offset 0).

The definition of A152223 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `-4*a(n-1)+6*a(n-2)` (program `A152223.P6278546473586501763`, by `A152223.P6278546473586501763.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A152223.P6278546473586501763

`-4*a(n-1)+6*a(n-2)` with `a(0)=1, a(1)=-6`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A152223

/-- `-4*a(n-1)+6*a(n-2)` -/
def P6278546473586501763.Spec : Prop :=
  ∀ n, P6278546473586501763.a n = A152223 n

theorem P6278546473586501763.correct : P6278546473586501763.Spec := by
  intro n
  simp only [A152223]

end A152223

/-! ## A152223.P10667128618901864946

`ogf((1-2x)/(1+4x-6x^2))`
-/

namespace A152223.P10667128618901864946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2] [1, 4, -6] n

end

end A152223.P10667128618901864946

namespace A152223

/-- `ogf((1-2x)/(1+4x-6x^2))` -/
def P10667128618901864946.Spec : Prop :=
  ∀ n, P10667128618901864946.a n = A152223 n

end A152223

/-! ## A152223.P11804489207092177153

`A033999(n)*A152224(n)`
-/

namespace A152223.P11804489207092177153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A152224 n

end

end A152223.P11804489207092177153

namespace A152223

/-- `A033999(n)*A152224(n)` -/
def P11804489207092177153.Spec : Prop :=
  ∀ n, P11804489207092177153.a n = A152223 n

end A152223

/-! ## A152223.P1109554748106219946

`A009001(2*n)*A152224(n)`
-/

namespace A152223.P1109554748106219946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009001 (2 * n) * A152224 n

end

end A152223.P1109554748106219946

namespace A152223

/-- `A009001(2*n)*A152224(n)` -/
def P1109554748106219946.Spec : Prop :=
  ∀ n, P1109554748106219946.a n = A152223 n

end A152223

/-! ## A152223.P18390108717359638598

`A056594(2*n)*A152224(n)`
-/

namespace A152223.P18390108717359638598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (2 * n) * A152224 n

end

end A152223.P18390108717359638598

namespace A152223

/-- `A056594(2*n)*A152224(n)` -/
def P18390108717359638598.Spec : Prop :=
  ∀ n, P18390108717359638598.a n = A152223 n

end A152223

/-! ## A152223.P11564179227772034215

`A152224(n)*A163649(A000217(n))`
-/

namespace A152223.P11564179227772034215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152224 n * A163649 (A000217 n).toNat

end

end A152223.P11564179227772034215

namespace A152223

/-- `A152224(n)*A163649(A000217(n))` -/
def P11564179227772034215.Spec : Prop :=
  ∀ n, P11564179227772034215.a n = A152223 n

end A152223

/-!
# A152224: a(n)=4*a(n-1)+6*a(n-2), n>1 ; a(0)=1, a(1)=6 .

The programs for A152224, the canonical program `A152224.P7593669638257150845` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152224 has offset 0).

The definition of A152224 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*a(n-1)+6*a(n-2)` (program `A152224.P7593669638257150845`, by `A152224.P7593669638257150845.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A152224.P7593669638257150845

`4*a(n-1)+6*a(n-2)` with `a(0)=1, a(1)=6`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A152224

/-- `4*a(n-1)+6*a(n-2)` -/
def P7593669638257150845.Spec : Prop :=
  ∀ n, (P7593669638257150845.a n : ℤ) = A152224 n

theorem P7593669638257150845.correct : P7593669638257150845.Spec := by
  intro n
  simp only [A152224]

end A152224

/-! ## A152224.P7140034819814326987

`ogf((1+2x)/(1-4x-6x^2))`
-/

namespace A152224.P7140034819814326987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2] [1, -4, -6] n

end

end A152224.P7140034819814326987

namespace A152224

/-- `ogf((1+2x)/(1-4x-6x^2))` -/
def P7140034819814326987.Spec : Prop :=
  ∀ n, P7140034819814326987.a n = A152224 n

end A152224

/-! ## A152224.P16252613929092020134

`abs(A152223(n))`
-/

namespace A152224.P16252613929092020134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A152223 n|

end

end A152224.P16252613929092020134

namespace A152224

/-- `abs(A152223(n))` -/
def P16252613929092020134.Spec : Prop :=
  ∀ n, P16252613929092020134.a n = A152224 n

end A152224

/-! ## A152224.P402131306065671104

`gcd(A000038(n), A152223(n))`
-/

namespace A152224.P402131306065671104
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A152223 n)

end

end A152224.P402131306065671104

namespace A152224

/-- `gcd(A000038(n), A152223(n))` -/
def P402131306065671104.Spec : Prop :=
  ∀ n, (P402131306065671104.a n : ℤ) = A152224 n

end A152224

/-! ## A152224.P6966600139441697786

`A085939(n+1)+2*A085939(n)`
-/

namespace A152224.P6966600139441697786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085939 (n + 1) + 2 * A085939 n

end

end A152224.P6966600139441697786

namespace A152224

/-- `A085939(n+1)+2*A085939(n)` -/
def P6966600139441697786.Spec : Prop :=
  ∀ n, P6966600139441697786.a n = A152224 n

end A152224

/-! ## A152224.P18275371405276498528

`A147518(n+1)/3`
-/

namespace A152224.P18275371405276498528
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A147518 (n + 1) : ℚ) / 3

end

end A152224.P18275371405276498528

namespace A152224

/-- `A147518(n+1)/3` -/
def P18275371405276498528.Spec : Prop :=
  ∀ n, P18275371405276498528.a n = (A152224 n : ℚ)

end A152224

/-! ## A152224.P12514726112874268436

`Δ[A085939(n+1)/3]`
-/

namespace A152224.P12514726112874268436
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085939 (n + 1) : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A152224.P12514726112874268436

namespace A152224

/-- `Δ[A085939(n+1)/3]` -/
def P12514726112874268436.Spec : Prop :=
  ∀ n, P12514726112874268436.a n = (A152224 n : ℚ)

end A152224

/-! ## A152224.P11697972001366746204

`(A138041(n+1)+A084132(n))/2`
-/

namespace A152224.P11697972001366746204
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138041 (n + 1) + A084132 n : ℚ) / 2

end

end A152224.P11697972001366746204

namespace A152224

/-- `(A138041(n+1)+A084132(n))/2` -/
def P11697972001366746204.Spec : Prop :=
  ∀ n, P11697972001366746204.a n = (A152224 n : ℚ)

end A152224

/-!
# A152225: Number of Dyck paths of semilength n with no peaks at height 0 (mod 3) and no valleys at height 2 (mod 3).

The programs for A152225, there is no canonical definition to state claims against.
-/

/-! ## A152225.P9492368648306001745

`A091561(floor(acot(n)+n))`
-/

namespace A152225.P9492368648306001745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091561 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat

end

end A152225.P9492368648306001745

/-! ## A152225.P15658877564974378973

`A091561(or(n, floor(acot(n))))`
-/

namespace A152225.P15658877564974378973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091561 (Int.lor (n : ℤ) ⌊SequenceMachineLib.acot (n : ℝ)⌋).toNat

end

end A152225.P15658877564974378973

/-! ## A152225.P9576343086738639251

`A091561(ceil(abs(sin(1)-n)))`
-/

namespace A152225.P9576343086738639251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091561 ⌈|Real.sin (1 : ℝ) - (n : ℝ)|⌉.toNat

end

end A152225.P9576343086738639251

/-! ## A152225.P3717936982207934069

`A091561(n^ceil(abs(sin(n))))`
-/

namespace A152225.P3717936982207934069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091561 (SequenceMachineLib.roundAway ((n : ℚ) ^ (⌈|Real.sin (n : ℝ)|⌉ : ℤ))).toNat

end

end A152225.P3717936982207934069

/-! ## A152225.P14071118440349108801

`floor(A025247(n+2)+acot(n))`
-/

namespace A152225.P14071118440349108801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A025247 (n + 2) : ℝ) + SequenceMachineLib.acot (n : ℝ)⌋

end

end A152225.P14071118440349108801

/-! ## A152225.P8883142695057113531

`floor(A025265(n+2)+acot(n))`
-/

namespace A152225.P8883142695057113531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A025265 (n + 2) : ℝ) + SequenceMachineLib.acot (n : ℝ)⌋

end

end A152225.P8883142695057113531

/-! ## A152225.P2100755255108874851

`A025265(round(sqrt(n²+1))+2)`
-/

namespace A152225.P2100755255108874851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025265 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ)) + 2).toNat

end

end A152225.P2100755255108874851

/-! ## A152225.P8598468404732484019

`A091561(A028310(n))`
-/

namespace A152225.P8598468404732484019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091561 (A028310 n).toNat

end

end A152225.P8598468404732484019

/-! ## A152225.P1346409739360230336

`A025247(A028310(n)+2)`
-/

namespace A152225.P1346409739360230336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025247 (A028310 n + 2).toNat

end

end A152225.P1346409739360230336

/-! ## A152225.P11758132426815220930

`A025247(A348776(n+2))`
-/

namespace A152225.P11758132426815220930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025247 (A348776 (n + 2)).toNat

end

end A152225.P11758132426815220930

/-! ## A152225.P5654752979869554027

`A025247(A054977(n)+1+n)`
-/

namespace A152225.P5654752979869554027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025247 (A054977 n + 1 + (n : ℤ)).toNat

end

end A152225.P5654752979869554027

/-! ## A152225.P12060237300591088851

`A025247(n+2)+A000007(n)`
-/

namespace A152225.P12060237300591088851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025247 (n + 2) + A000007 n

end

end A152225.P12060237300591088851

/-! ## A152225.P13403158269490096309

`A025265(n+2)+A000007(n)`
-/

namespace A152225.P13403158269490096309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025265 (n + 2) + A000007 n

end

end A152225.P13403158269490096309

/-! ## A152225.P3817397272637758220

`A036987(2*n)+A025265(n+2)`
-/

namespace A152225.P3817397272637758220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 (2 * n) + A025265 (n + 2)

end

end A152225.P3817397272637758220

/-! ## A152225.P13022001698406642074

`A025247(n+2)+A000038(n)/2`
-/

namespace A152225.P13022001698406642074
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025247 (n + 2) : ℚ) + (A000038 n : ℚ) / 2

end

end A152225.P13022001698406642074

/-! ## A152225.P10000604078207755015

`A025247(n+1)+Δ[A025265(n+1)]`
-/

namespace A152225.P10000604078207755015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025265 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025247 (n + 1) + (f1 (n + 1) - f1 n)

end

end A152225.P10000604078207755015

/-! ## A152225.P6723457287540227650

`A141044(n+1)+A025247(n+2)-1`
-/

namespace A152225.P6723457287540227650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141044 (n + 1) + (A025247 (n + 2) - 1)

end

end A152225.P6723457287540227650

/-! ## A152225.P5708005468009226444

`A141044(n+1)+A025265(n+2)-1`
-/

namespace A152225.P5708005468009226444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141044 (n + 1) + (A025265 (n + 2) - 1)

end

end A152225.P5708005468009226444

/-! ## A152225.P15007989490457316834

`A134269(2*n+1)+A025265(n+2)`
-/

namespace A152225.P15007989490457316834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134269 (2 * n + 1) + A025265 (n + 2)

end

end A152225.P15007989490457316834

/-! ## A152225.P16605789461784029860

`A025247(n+2)+A008683(A008574(n))`
-/

namespace A152225.P16605789461784029860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025247 (n + 2) + A008683 (A008574 n).toNat

end

end A152225.P16605789461784029860

/-!
# A152226: Binomial transform of A027826.

The programs for A152226, there is no canonical definition to state claims against.
-/

/-! ## A152226.P14862942200991650969

`A084638(n)+A025480(A006012(n))`
-/

namespace A152226.P14862942200991650969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084638 n + A025480 (A006012 n).toNat

end

end A152226.P14862942200991650969

/-! ## A152226.P9113278720917919582

`A107846(A000244(n))+A024175(n+1)`
-/

namespace A152226.P9113278720917919582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107846 (A000244 n).toNat + A024175 (n + 1)

end

end A152226.P9113278720917919582

/-! ## A152226.P16509357976213665900

`A024175(n+1)+A011730(A114551(n))`
-/

namespace A152226.P16509357976213665900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024175 (n + 1) + A011730 (A114551 n).toNat

end

end A152226.P16509357976213665900

/-! ## A152226.P13908188217719080903

`A024175(n+1)+A011730(A149194(n))`
-/

namespace A152226.P13908188217719080903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024175 (n + 1) + A011730 (A149194 n).toNat

end

end A152226.P13908188217719080903

/-! ## A152226.P14106507017571679810

`A185284(A000124(n))+A024175(n+1)`
-/

namespace A152226.P14106507017571679810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A000124 n).toNat + A024175 (n + 1)

end

end A152226.P14106507017571679810

/-!
# A152228: 2-adic expansion of log(5).

The programs for A152228, there is no canonical definition to state claims against.
-/

/-! ## A152228.P15736181816696532579

`(A321690(n+1)-A321690(n))/2^n`
-/

namespace A152228.P15736181816696532579
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A321690 (n + 1) - A321690 n : ℚ) / (2 ^ n : ℚ)

end

end A152228.P15736181816696532579

/-! ## A152228.P14803467709142449331

`floor(atan(Δ[A321690(n)]))`
-/

namespace A152228.P14803467709142449331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321690 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan (f1 (n + 1) - f1 n : ℝ)⌋

end

end A152228.P14803467709142449331

/-! ## A152228.P3801126306495628452

`Δ[A321690(n)]/A000079(n)`
-/

namespace A152228.P3801126306495628452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321690 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A000079 n : ℚ)

end

end A152228.P3801126306495628452

/-! ## A152228.P5786599333595145795

`Δ[A321690(n)]%A019320(n)`
-/

namespace A152228.P5786599333595145795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321690 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A019320 n)

end

end A152228.P5786599333595145795

/-! ## A152228.P5776940802587339965

`(Δ[A321690(n)]/A122803(n))²`
-/

namespace A152228.P5776940802587339965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321690 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) - f1 n : ℚ) / (A122803 n : ℚ)) ^ 2

end

end A152228.P5776940802587339965

/-!
# A152229: Eigentriangle, row sums = A000984.

The programs for A152229, there is no canonical definition to state claims against.
-/

/-! ## A152229.P6801962626689562862

`A138234(A152252(n))`
-/

namespace A152229.P6801962626689562862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138234 (A152252 n).toNat

end

end A152229.P6801962626689562862

/-! ## A152229.P4048522062892828114

`A199426(A152252(n)%(2^(n+2)))`
-/

namespace A152229.P4048522062892828114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199426 (Int.tmod (A152252 n) (2 ^ (n + 2) : ℤ)).toNat

end

end A152229.P4048522062892828114

/-! ## A152229.P13035318321892949563

`∑{d}[A199426(A152252(n)), A000010(#)]`
-/

namespace A152229.P13035318321892949563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199426 (A152252 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A152229.P13035318321892949563

/-! ## A152229.P9447342832267442544

`A007318(∑[n])*A199426(A152252(n))`
-/

namespace A152229.P9447342832267442544
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A199426 (A152252 n).toNat

end

end A152229.P9447342832267442544

/-! ## A152229.P1822889667447534367

`A199426(A152252(n))%A000040(n+1)`
-/

namespace A152229.P1822889667447534367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A199426 (A152252 n).toNat) (A000040 (n + 1))

end

end A152229.P1822889667447534367

/-!
# A152230: Triangle read by rows, binomial transform of A122196.

The programs for A152230, there is no canonical definition to state claims against.
-/

/-! ## A152230.P689817340359841419

`A055249(comp[comp[n²]+n])`
-/

namespace A152230.P689817340359841419
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055249 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A152230.P689817340359841419

/-! ## A152230.P6955098754741958698

`A055249(A028391(n)+n)%A343967(n+1)`
-/

namespace A152230.P6955098754741958698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A055249 (A028391 n + (n : ℤ)).toNat) (A343967 (n + 1))

end

end A152230.P6955098754741958698

/-! ## A152230.P9161076814921704517

`A055249(A028391(n)+n)+A000007(3*(n+1))`
-/

namespace A152230.P9161076814921704517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055249 (A028391 n + (n : ℤ)).toNat + A000007 (3 * (n + 1))

end

end A152230.P9161076814921704517

/-!
# A152231: Similar to A072921 but starting with 2.

The programs for A152231, there is no canonical definition to state claims against.
-/

/-! ## A152231.P7216196017208929857

`a(n-1)+A062028(a(n-1))-a(n-2)` with `a(0)=2, a(1)=4`
-/

namespace A152231.P7216196017208929857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 4] fun n a =>
  a (n - 1) + (A062028 (a (n - 1)).toNat - a (n - 2))

end

end A152231.P7216196017208929857

/-! ## A152231.P394473539187046308

`A342782(A144119(n+1)+1)`
-/

namespace A152231.P394473539187046308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342782 (A144119 (n + 1) + 1).toNat

end

end A152231.P394473539187046308

/-! ## A152231.P6299966894889823951

`A342782(A084376(n)+A014217(n))`
-/

namespace A152231.P6299966894889823951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342782 (A084376 n + A014217 n).toNat

end

end A152231.P6299966894889823951

/-!
# A152232: Similar to A072921 but starting with 3.

The programs for A152232, there is no canonical definition to state claims against.
-/

/-! ## A152232.P2656921804502364715

`a(n-1)+A062028(a(n-1))-a(n-2)` with `a(0)=3, a(1)=6`
-/

namespace A152232.P2656921804502364715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 6] fun n a =>
  a (n - 1) + (A062028 (a (n - 1)).toNat - a (n - 2))

end

end A152232.P2656921804502364715

/-! ## A152232.P16442863782748376011

`A152233(n+1)-dr(A003056(A006858(n)+2*n+1))`
-/

namespace A152232.P16442863782748376011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152233 (n + 1) - (SequenceMachineLib.digitalRoot (A003056 (A006858 n + (2 * n + 1 : ℤ)).toNat) : ℤ)

end

end A152232.P16442863782748376011

/-! ## A152232.P14784063652241469078

`A328168(A232464(n)+A000217(n))`
-/

namespace A152232.P14784063652241469078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328168 (A232464 n + A000217 n).toNat

end

end A152232.P14784063652241469078

/-!
# A152233: Similar to A072921 but starting with 4.

The programs for A152233, there is no canonical definition to state claims against.
-/

/-! ## A152233.P18187639552017039042

`a(n-1)+A062028(a(n-1))-a(n-2)` with `a(0)=4, a(1)=8`
-/

namespace A152233.P18187639552017039042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 8] fun n a =>
  a (n - 1) + (A062028 (a (n - 1)).toNat - a (n - 2))

end

end A152233.P18187639552017039042

/-! ## A152233.P17286231824038003496

`A152232(n+1)+dr(A003056(A006858(n)+2*n+1))`
-/

namespace A152233.P17286231824038003496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152232 (n + 1) + (SequenceMachineLib.digitalRoot (A003056 (A006858 n + (2 * n + 1 : ℤ)).toNat) : ℤ)

end

end A152233.P17286231824038003496

/-!
# A152234: Similar to A072921 but starting with 5.

The programs for A152234, there is no canonical definition to state claims against.
-/

/-! ## A152234.P1194368565572361299

`a(n-1)+A062028(a(n-1))-a(n-2)` with `a(0)=5, a(1)=10`
-/

namespace A152234.P1194368565572361299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5, 10] fun n a =>
  a (n - 1) + (A062028 (a (n - 1)).toNat - a (n - 2))

end

end A152234.P1194368565572361299

/-!
# A152235: Largest squarefree number dividing the number of divisors n.

The programs for A152235, the canonical program `A152235.P232875130101871600` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152235 has offset 1).

The definition of A152235 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A007947, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A152235.P232875130101871600

`A007947(A000005(n+1))`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A152235

/-- `A007947(A000005(n+1))` -/
def P232875130101871600.Spec : Prop :=
  ∀ n, P232875130101871600.a n = A152235 (n + 1)

theorem P232875130101871600.correct : P232875130101871600.Spec := by
  intro n
  simp only [A152235, Nat.add_sub_cancel]

end A152235

/-! ## A152235.P11473414533357145674

`∏{p}[∏{e}[n+1, #+1], #]`
-/

namespace A152235.P11473414533357145674
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), p

end

end A152235.P11473414533357145674

namespace A152235

/-- `∏{p}[∏{e}[n+1, #+1], #]` -/
def P11473414533357145674.Spec : Prop :=
  ∀ n, (P11473414533357145674.a n : ℤ) = A152235 (n + 1)

end A152235

/-! ## A152235.P12722033015465908696

`∏{p}[∑{d}[n+1, gcd(n, #)], #]`
-/

namespace A152235.P12722033015465908696
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), Nat.gcd n d

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), p

end

end A152235.P12722033015465908696

namespace A152235

/-- `∏{p}[∑{d}[n+1, gcd(n, #)], #]` -/
def P12722033015465908696.Spec : Prop :=
  ∀ n, (P12722033015465908696.a n : ℤ) = A152235 (n + 1)

end A152235

/-! ## A152235.P11038804559931365597

`∏{p}[∑{d}[n+1, ceil(1/#)], #]`
-/

namespace A152235.P11038804559931365597
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), ⌈1 / (d : ℚ)⌉

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A152235.P11038804559931365597

namespace A152235

/-- `∏{p}[∑{d}[n+1, ceil(1/#)], #]` -/
def P11038804559931365597.Spec : Prop :=
  ∀ n, (P11038804559931365597.a n : ℤ) = A152235 (n + 1)

end A152235

/-! ## A152235.P7367262903967784706

`∏{p}[∏{p}[n+1, val(n+1, #)+1], #]`
-/

namespace A152235.P7367262903967784706
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (SequenceMachineLib.valuation (n + 1) p + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), p

end

end A152235.P7367262903967784706

namespace A152235

/-- `∏{p}[∏{p}[n+1, val(n+1, #)+1], #]` -/
def P7367262903967784706.Spec : Prop :=
  ∀ n, (P7367262903967784706.a n : ℤ) = A152235 (n + 1)

end A152235

/-! ## A152235.P611724356014108739

`∏{p}[Δ[A006218(n)], #]`
-/

namespace A152235.P611724356014108739
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A152235.P611724356014108739

namespace A152235

/-- `∏{p}[Δ[A006218(n)], #]` -/
def P611724356014108739.Spec : Prop :=
  ∀ n, (P611724356014108739.a n : ℤ) = A152235 (n + 1)

end A152235

/-! ## A152235.P15891636964418376106

`∏{p}[A035116(n+1), #]`
-/

namespace A152235.P15891636964418376106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035116 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A152235.P15891636964418376106

namespace A152235

/-- `∏{p}[A035116(n+1), #]` -/
def P15891636964418376106.Spec : Prop :=
  ∀ n, (P15891636964418376106.a n : ℤ) = A152235 (n + 1)

end A152235

/-! ## A152235.P1132414646888674617

`∏{p}[A319089(n+1), #]`
-/

namespace A152235.P1132414646888674617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319089 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A152235.P1132414646888674617

namespace A152235

/-- `∏{p}[A319089(n+1), #]` -/
def P1132414646888674617.Spec : Prop :=
  ∀ n, (P1132414646888674617.a n : ℤ) = A152235 (n + 1)

end A152235

/-! ## A152235.P5464348268965980561

`∏{p}[A329484(n+1), #]`
-/

namespace A152235.P5464348268965980561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329484 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A152235.P5464348268965980561

namespace A152235

/-- `∏{p}[A329484(n+1), #]` -/
def P5464348268965980561.Spec : Prop :=
  ∀ n, (P5464348268965980561.a n : ℤ) = A152235 (n + 1)

end A152235

/-! ## A152235.P11216126022224931907

`∏{p}[A335841(n+1), #]`
-/

namespace A152235.P11216126022224931907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335841 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A152235.P11216126022224931907

namespace A152235

/-- `∏{p}[A335841(n+1), #]` -/
def P11216126022224931907.Spec : Prop :=
  ∀ n, (P11216126022224931907.a n : ℤ) = A152235 (n + 1)

end A152235

/-! ## A152235.P15750786718471997383

`∏{p}[A062011(n+1)/2, #]`
-/

namespace A152235.P15750786718471997383
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062011 (n + 1) : ℚ) / 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, p

end

end A152235.P15750786718471997383

namespace A152235

/-- `∏{p}[A062011(n+1)/2, #]` -/
def P15750786718471997383.Spec : Prop :=
  ∀ n, (P15750786718471997383.a n : ℤ) = A152235 (n + 1)

end A152235

/-! ## A152235.P12119004301920105943

`A007947(Δ[A006218(n)])`
-/

namespace A152235.P12119004301920105943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (f1 (n + 1) - f1 n).toNat

end

end A152235.P12119004301920105943

namespace A152235

/-- `A007947(Δ[A006218(n)])` -/
def P12119004301920105943.Spec : Prop :=
  ∀ n, P12119004301920105943.a n = A152235 (n + 1)

end A152235

/-! ## A152235.P5142036285579248072

`A007947(Δ[A054519(n)])`
-/

namespace A152235.P5142036285579248072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (f1 (n + 1) - f1 n).toNat

end

end A152235.P5142036285579248072

namespace A152235

/-- `A007947(Δ[A054519(n)])` -/
def P5142036285579248072.Spec : Prop :=
  ∀ n, P5142036285579248072.a n = A152235 (n + 1)

end A152235

/-! ## A152235.P15368926797529803495

`A007947(A035116(n+1))`
-/

namespace A152235.P15368926797529803495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A035116 (n + 1)).toNat

end

end A152235.P15368926797529803495

namespace A152235

/-- `A007947(A035116(n+1))` -/
def P15368926797529803495.Spec : Prop :=
  ∀ n, P15368926797529803495.a n = A152235 (n + 1)

end A152235

/-! ## A152235.P11242550797905201420

`A007947(A335841(n+1))`
-/

namespace A152235.P11242550797905201420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A335841 (n + 1)).toNat

end

end A152235.P11242550797905201420

namespace A152235

/-- `A007947(A335841(n+1))` -/
def P11242550797905201420.Spec : Prop :=
  ∀ n, P11242550797905201420.a n = A152235 (n + 1)

end A152235

/-! ## A152235.P4111724806784587390

`A160014(A184389(n+1))`
-/

namespace A152235.P4111724806784587390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160014 (A184389 (n + 1)).toNat

end

end A152235.P4111724806784587390

namespace A152235

/-- `A160014(A184389(n+1))` -/
def P4111724806784587390.Spec : Prop :=
  ∀ n, P4111724806784587390.a n = A152235 (n + 1)

end A152235

/-! ## A152235.P17949921799625484186

`A071773(A000005(n+1)²)`
-/

namespace A152235.P17949921799625484186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071773 (A000005 (n + 1) ^ 2).toNat

end

end A152235.P17949921799625484186

namespace A152235

/-- `A071773(A000005(n+1)²)` -/
def P17949921799625484186.Spec : Prop :=
  ∀ n, P17949921799625484186.a n = A152235 (n + 1)

end A152235

/-! ## A152235.P11337763609184205058

`A336643(A000005(n+1)²)`
-/

namespace A152235.P11337763609184205058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336643 (A000005 (n + 1) ^ 2).toNat

end

end A152235.P11337763609184205058

namespace A152235

/-- `A336643(A000005(n+1)²)` -/
def P11337763609184205058.Spec : Prop :=
  ∀ n, P11337763609184205058.a n = A152235 (n + 1)

end A152235

/-! ## A152235.P2878672281335617521

`A007947(A032741(n+1)+1)`
-/

namespace A152235.P2878672281335617521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A032741 (n + 1) + 1).toNat

end

end A152235.P2878672281335617521

namespace A152235

/-- `A007947(A032741(n+1)+1)` -/
def P2878672281335617521.Spec : Prop :=
  ∀ n, P2878672281335617521.a n = A152235 (n + 1)

end A152235

/-!
# A152236: A modulo two parity function as a triangle sequence: t(n,m)=Binomial[n,m]+p(n,m); Always even parity function: p(n,m)=If[Mod[Binomial[n, m], 2] == 0, Binomial[n, m], If[Mod[Binomial[ n, m], 2] == 1 && Binomial[n, m] > 1, 1 + Binomial[n, m], 0]].

The programs for A152236, there is no canonical definition to state claims against.
-/

/-! ## A152236.P11641397567548005841

`A003815(A132046(n))`
-/

namespace A152236.P11641397567548005841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003815 (A132046 n).toNat

end

end A152236.P11641397567548005841

/-! ## A152236.P14135037089374850705

`A099479(A132047(n))`
-/

namespace A152236.P14135037089374850705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099479 (A132047 n).toNat

end

end A152236.P14135037089374850705

/-! ## A152236.P3006805998061887258

`A126091(A132731(n))`
-/

namespace A152236.P3006805998061887258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126091 (A132731 n).toNat

end

end A152236.P3006805998061887258

/-! ## A152236.P16716580108599895206

`A098181(A132046(n)-1)`
-/

namespace A152236.P16716580108599895206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098181 (A132046 n - 1).toNat

end

end A152236.P16716580108599895206

/-! ## A152236.P10432688349946242549

`A116966(A132046(n)-1)`
-/

namespace A152236.P10432688349946242549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116966 (A132046 n - 1).toNat

end

end A152236.P10432688349946242549

/-! ## A152236.P6316211510127440816

`A028326(n)-A143200(n)`
-/

namespace A152236.P6316211510127440816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028326 n - A143200 n

end

end A152236.P6316211510127440816

/-! ## A152236.P16827076559574026106

`A132737(n)-A219463(n)`
-/

namespace A152236.P16827076559574026106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132737 n - A219463 n

end

end A152236.P16827076559574026106

/-! ## A152236.P11447203218704192607

`2*A007318(n)-A143200(n)`
-/

namespace A152236.P11447203218704192607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007318 n - A143200 n

end

end A152236.P11447203218704192607

/-! ## A152236.P9443244344053779228

`A028326(n)+(A007318(n)-2)%2`
-/

namespace A152236.P9443244344053779228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028326 n + Int.tmod (A007318 n - 2) 2

end

end A152236.P9443244344053779228

/-! ## A152236.P13218892113948910727

`or(A000045(1-(-1)^A007318(n)), A132046(n))`
-/

namespace A152236.P13218892113948910727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000045 (SequenceMachineLib.roundAway (1 - (-1 : ℚ) ^ (A007318 n : ℤ))).toNat) (A132046 n)

end

end A152236.P13218892113948910727

/-!
# A152237: A modulo two parity function as a triangle sequence:k=1; t(n,m)=Binomial[n,m]+p(n,m); Always even parity function: p(n,m)=If[Mod[Binomial[n, m], 2] == 0, 2^(k - 1)*Binomial[n, m], If[Mod[Binomial[n, m], 2] == 1 && Binomial[n, m] > 1, 2^k* Binomial[n, m], 0]].

The programs for A152237, there is no canonical definition to state claims against.
-/

/-! ## A152237.P7492571913394189035

`abs(xor(1, 1-A146898(n)))`
-/

namespace A152237.P7492571913394189035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor 1 (1 - A146898 n)|

end

end A152237.P7492571913394189035

/-! ## A152237.P1641421086166247685

`A207801(A152236(n))`
-/

namespace A152237.P1641421086166247685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207801 (A152236 n).toNat

end

end A152237.P1641421086166247685

/-! ## A152237.P6487926843296166391

`(2-A143200(n))*A007318(n)`
-/

namespace A152237.P6487926843296166391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A143200 n) * A007318 n

end

end A152237.P6487926843296166391

/-! ## A152237.P2268561633912067453

`(A152238(n)+A007318(n))/2`
-/

namespace A152237.P2268561633912067453
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A152238 n + A007318 n : ℚ) / 2

end

end A152237.P2268561633912067453

/-! ## A152237.P16628340999562472544

`∑{d}[xor(1, 1-A146898(n)), A000010(#)]`
-/

namespace A152237.P16628340999562472544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (1 - A146898 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A152237.P16628340999562472544

/-! ## A152237.P10948867432396230825

`A029578(A152236(n))+A007318(n)`
-/

namespace A152237.P10948867432396230825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (A152236 n).toNat + A007318 n

end

end A152237.P10948867432396230825

/-! ## A152237.P792739576560733101

`A132046(n)+A077814(A132046(n))`
-/

namespace A152237.P792739576560733101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132046 n + A077814 (A132046 n).toNat

end

end A152237.P792739576560733101

/-! ## A152237.P14906715217403596152

`A280497(A152238(n)+A007318(n))`
-/

namespace A152237.P14906715217403596152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280497 (A152238 n + A007318 n).toNat

end

end A152237.P14906715217403596152

/-! ## A152237.P8907304777349441869

`A007318(n)*A020639(A132047(n))`
-/

namespace A152237.P8907304777349441869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A020639 (A132047 n).toNat

end

end A152237.P8907304777349441869

/-! ## A152237.P9512936201891390275

`A006530(A158565(n))*A007318(n)`
-/

namespace A152237.P9512936201891390275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A158565 n).toNat * A007318 n

end

end A152237.P9512936201891390275

/-!
# A152238: A modulo two parity function as a triangle sequence:k=2; t(n,m)=Binomial[n,m]+p(n,m); Always even parity function: p(n,m)=If[Mod[Binomial[n, m], 2] == 0, 2^(k - 1)*Binomial[n, m], If[Mod[Binomial[n, m], 2] == 1 && Binomial[n, m] > 1, 2^k* Binomial[n, m], 0]].

The programs for A152238, there is no canonical definition to state claims against.
-/

/-! ## A152238.P5995919076948735611

`A233570(A152237(n))`
-/

namespace A152238.P5995919076948735611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233570 (A152237 n).toNat

end

end A152238.P5995919076948735611

/-! ## A152238.P15050514158727531572

`2*A152237(n)-A007318(n)`
-/

namespace A152238.P15050514158727531572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A152237 n - A007318 n

end

end A152238.P15050514158727531572

/-! ## A152238.P8754910361573213450

`2*A152237(n)-Δ[A102363(n)]`
-/

namespace A152238.P8754910361573213450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A152237 n - (f1 (n + 1) - f1 n)

end

end A152238.P8754910361573213450

/-! ## A152238.P138088424200697335

`A152237(n)+lcm(2, floor(A132046(n)/2))`
-/

namespace A152238.P138088424200697335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152237 n + (Int.lcm 2 ⌊(A132046 n : ℚ) / 2⌋ : ℤ)

end

end A152238.P138088424200697335

/-! ## A152238.P18176749921405777524

`A152236(n)+A029578(A152237(n))`
-/

namespace A152238.P18176749921405777524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152236 n + A029578 (A152237 n).toNat

end

end A152238.P18176749921405777524

/-! ## A152238.P394170094589801380

`A005843(A152237(n))-A007318(n)`
-/

namespace A152238.P394170094589801380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A152237 n).toNat - A007318 n

end

end A152238.P394170094589801380

/-! ## A152238.P17811143890730570278

`A004273(A152237(n))-A014473(n)`
-/

namespace A152238.P17811143890730570278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A152237 n).toNat - A014473 n

end

end A152238.P17811143890730570278

/-! ## A152238.P493815219154001426

`A007318(n)*A328878(A158565(n))`
-/

namespace A152238.P493815219154001426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A328878 (A158565 n).toNat

end

end A152238.P493815219154001426

/-! ## A152238.P11153330643191985238

`A005843(A152237(n))-Δ[A102363(n)]`
-/

namespace A152238.P11153330643191985238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A152237 n).toNat - (f1 (n + 1) - f1 n)

end

end A152238.P11153330643191985238

/-! ## A152238.P7799171313332242650

`(A014473(n)+1)*A328878(A158565(n))`
-/

namespace A152238.P7799171313332242650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014473 n + 1) * A328878 (A158565 n).toNat

end

end A152238.P7799171313332242650

/-!
# A152239: a(n) = -5*a(n-1) + 7*a(n-2) for n > 1 with a(0) = 1 and a(1) = -7.

The programs for A152239, the canonical program `A152239.P6402728186763657913` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152239 has offset 0).

The definition of A152239 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `-5*a(n-1)+7*a(n-2)` (program `A152239.P6402728186763657913`, by `A152239.P6402728186763657913.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A152239.P6402728186763657913

`-5*a(n-1)+7*a(n-2)` with `a(0)=1, a(1)=-7`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A152239

/-- `-5*a(n-1)+7*a(n-2)` -/
def P6402728186763657913.Spec : Prop :=
  ∀ n, P6402728186763657913.a n = A152239 n

theorem P6402728186763657913.correct : P6402728186763657913.Spec := by
  intro n
  simp only [A152239]

end A152239

/-! ## A152239.P9620161248451147300

`ogf((1-2x)/(1+5x-7x^2))`
-/

namespace A152239.P9620161248451147300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2] [1, 5, -7] n

end

end A152239.P9620161248451147300

namespace A152239

/-- `ogf((1-2x)/(1+5x-7x^2))` -/
def P9620161248451147300.Spec : Prop :=
  ∀ n, P9620161248451147300.a n = A152239 n

end A152239

/-! ## A152239.P2523152894545656056

`(-1)^n*A152240(n)`
-/

namespace A152239.P2523152894545656056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A152240 n

end

end A152239.P2523152894545656056

namespace A152239

/-- `(-1)^n*A152240(n)` -/
def P2523152894545656056.Spec : Prop :=
  ∀ n, P2523152894545656056.a n = A152239 n

end A152239

/-! ## A152239.P1665341017861065506

`A152240(n)/A033999(n)`
-/

namespace A152239.P1665341017861065506
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A152240 n : ℚ) / (A033999 n : ℚ)

end

end A152239.P1665341017861065506

namespace A152239

/-- `A152240(n)/A033999(n)` -/
def P1665341017861065506.Spec : Prop :=
  ∀ n, P1665341017861065506.a n = (A152239 n : ℚ)

end A152239

/-! ## A152239.P14077413729746152677

`A152240(n)/∑[A280560(n)]`
-/

namespace A152239.P14077413729746152677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280560 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A152240 n : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A152239.P14077413729746152677

namespace A152239

/-- `A152240(n)/∑[A280560(n)]` -/
def P14077413729746152677.Spec : Prop :=
  ∀ n, P14077413729746152677.a n = (A152239 n : ℚ)

end A152239

/-! ## A152239.P18073316763527652314

`A152240(n)/A062157(n+1)`
-/

namespace A152239.P18073316763527652314
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A152240 n : ℚ) / (A062157 (n + 1) : ℚ)

end

end A152239.P18073316763527652314

namespace A152239

/-- `A152240(n)/A062157(n+1)` -/
def P18073316763527652314.Spec : Prop :=
  ∀ n, P18073316763527652314.a n = (A152239 n : ℚ)

end A152239

/-! ## A152239.P13175563660675066091

`A152240(n)*A289741(A017377(n))`
-/

namespace A152239.P13175563660675066091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152240 n * A289741 (A017377 n).toNat

end

end A152239.P13175563660675066091

namespace A152239

/-- `A152240(n)*A289741(A017377(n))` -/
def P13175563660675066091.Spec : Prop :=
  ∀ n, P13175563660675066091.a n = A152239 n

end A152239

/-!
# A152240: a(n)=5*a(n-1)+7*a(n-2), n>1 ; a(0)=1, a(1)=7 .

The programs for A152240, the canonical program `A152240.P1055835719810153602` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152240 has offset 0).

The definition of A152240 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5*a(n-1)+7*a(n-2)` (program `A152240.P1055835719810153602`, by `A152240.P1055835719810153602.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A152240.P1055835719810153602

`5*a(n-1)+7*a(n-2)` with `a(0)=1, a(1)=7`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A152240

/-- `5*a(n-1)+7*a(n-2)` -/
def P1055835719810153602.Spec : Prop :=
  ∀ n, (P1055835719810153602.a n : ℤ) = A152240 n

theorem P1055835719810153602.correct : P1055835719810153602.Spec := by
  intro n
  simp only [A152240]

end A152240

/-! ## A152240.P2873224739767202483

`ogf((1+2x)/(1-5x-7x^2))`
-/

namespace A152240.P2873224739767202483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2] [1, -5, -7] n

end

end A152240.P2873224739767202483

namespace A152240

/-- `ogf((1+2x)/(1-5x-7x^2))` -/
def P2873224739767202483.Spec : Prop :=
  ∀ n, P2873224739767202483.a n = A152240 n

end A152240

/-! ## A152240.P14355113456011811215

`abs(A152239(n))`
-/

namespace A152240.P14355113456011811215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A152239 n|

end

end A152240.P14355113456011811215

namespace A152240

/-- `abs(A152239(n))` -/
def P14355113456011811215.Spec : Prop :=
  ∀ n, P14355113456011811215.a n = A152240 n

end A152240

/-! ## A152240.P8197738926020184597

`A180032(n)+A015541(n)`
-/

namespace A152240.P8197738926020184597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180032 n + A015541 n

end

end A152240.P8197738926020184597

namespace A152240

/-- `A180032(n)+A015541(n)` -/
def P8197738926020184597.Spec : Prop :=
  ∀ n, P8197738926020184597.a n = A152240 n

end A152240

/-! ## A152240.P14530360638742575457

`gcd(A000038(n), A152239(n))`
-/

namespace A152240.P14530360638742575457
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A152239 n)

end

end A152240.P14530360638742575457

namespace A152240

/-- `gcd(A000038(n), A152239(n))` -/
def P14530360638742575457.Spec : Prop :=
  ∀ n, (P14530360638742575457.a n : ℤ) = A152240 n

end A152240

/-! ## A152240.P13186341414389861482

`A015541(n+1)+2*A015541(n)`
-/

namespace A152240.P13186341414389861482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015541 (n + 1) + 2 * A015541 n

end

end A152240.P13186341414389861482

namespace A152240

/-- `A015541(n+1)+2*A015541(n)` -/
def P13186341414389861482.Spec : Prop :=
  ∀ n, P13186341414389861482.a n = A152240 n

end A152240

/-!
# A152241: Products of cubes of 2 successive primes.

The programs for A152241, there is no canonical definition to state claims against.
-/

/-! ## A152241.P11895751679973110212

`(p?[xor(1, n)+1]*p?[2*n+1])^3`
-/

namespace A152241.P11895751679973110212
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) * f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)) ^ 3

end

end A152241.P11895751679973110212

/-! ## A152241.P13936639665072381071

`(p?[2*n+1]*p?[floor(2/acot(n))+1])^3`
-/

namespace A152241.P13936639665072381071
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 / SequenceMachineLib.acot (n : ℝ)⌋ + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) * f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)) ^ 3

end

end A152241.P13936639665072381071

/-! ## A152241.P10108866428056323632

`(p?[a(n-1)+2]*p?[n-(-1)^n])^3` with `a(0)=1`
-/

namespace A152241.P10108866428056323632
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) * f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)) ^ 3

end

end A152241.P10108866428056323632

/-! ## A152241.P17337270494553458261

`(p?[2*n+1]*∏{p}[p?[n-(-1)^n], #])^3`
-/

namespace A152241.P17337270494553458261
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (-1) ^ n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) * (∏ p ∈ Nat.primeFactors (f2 n).natAbs, p)) ^ 3

end

end A152241.P17337270494553458261

/-! ## A152241.P9776604129867637436

`record[A116570(n)^3]`
-/

namespace A152241.P9776604129867637436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116570 n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A152241.P9776604129867637436

/-!
# A152242: Integers formed by concatenating primes.

The programs for A152242, there is no canonical definition to state claims against.
-/

/-! ## A152242.P9614469147629029214

`∪[A000040(n+1), A066737(n+1)]`
-/

namespace A152242.P9614469147629029214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066737 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A152242.P9614469147629029214

/-! ## A152242.P4173200702818114703

`A166504(n+1)`
-/

namespace A152242.P4173200702818114703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166504 (n + 1)

end

end A152242.P4173200702818114703

/-! ## A152242.P4186778615028539660

`∪[A000040(n+1), A106582(n+1)]%A361867(n+1)`
-/

namespace A152242.P4186778615028539660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106582 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) (A361867 (n + 1))

end

end A152242.P4186778615028539660

/-! ## A152242.P10996881844543504522

`∪[A049551(n+1), A066737(n+1)]%A166506(n+1)`
-/

namespace A152242.P10996881844543504522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049551 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066737 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) (A166506 (n + 1))

end

end A152242.P10996881844543504522

/-! ## A152242.P3670136818607880608

`∪[A000040(n+1), A121609(n+1)]%A166506(n+1)`
-/

namespace A152242.P3670136818607880608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121609 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) (A166506 (n + 1))

end

end A152242.P3670136818607880608

/-!
# A152243: Expansion of a(q) * f(-q)^4 where f() is a Ramanujan theta function and a() is a cubic AGM function.

The programs for A152243, there is no canonical definition to state claims against.
-/

/-! ## A152243.P1277954004899535712

`A030208(3*n)`
-/

namespace A152243.P1277954004899535712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030208 (3 * n)

end

end A152243.P1277954004899535712

/-! ## A152243.P3375970168073522072

`A152244(3*n)`
-/

namespace A152243.P3375970168073522072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152244 (3 * n)

end

end A152243.P3375970168073522072

/-! ## A152243.P11755065943472925566

`A033999(n)*A209939(A008585(n))`
-/

namespace A152243.P11755065943472925566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A209939 (A008585 n).toNat

end

end A152243.P11755065943472925566

/-! ## A152243.P8733911186001900128

`A030208(A008585(n))+A000007(n+1)`
-/

namespace A152243.P8733911186001900128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030208 (A008585 n).toNat + A000007 (n + 1)

end

end A152243.P8733911186001900128

/-! ## A152243.P9354085948997831673

`A030208(A008585(n))%A004803(n+1)`
-/

namespace A152243.P9354085948997831673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030208 (A008585 n).toNat) (A004803 (n + 1))

end

end A152243.P9354085948997831673

/-! ## A152243.P5343683638522768642

`or(A000007(n), A152244(A008585(n)))`
-/

namespace A152243.P5343683638522768642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A152244 (A008585 n).toNat)

end

end A152243.P5343683638522768642

/-! ## A152243.P17604361446020563233

`A152244(A008585(n))%A017353(n)²`
-/

namespace A152243.P17604361446020563233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A152244 (A008585 n).toNat) (A017353 n ^ 2)

end

end A152243.P17604361446020563233

/-!
# A152244: Expansion of a(x) * f(-x^3)^4 in powers of x where f() is a Ramanujan theta function and a() is a cubic AGM function.

The programs for A152244, there is no canonical definition to state claims against.
-/

/-! ## A152244.P2179569429661751176

`A030208(n)*A131713(n)`
-/

namespace A152244.P2179569429661751176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030208 n * A131713 n

end

end A152244.P2179569429661751176

/-! ## A152244.P15821140216269102313

`A057079(n)*A209939(n)`
-/

namespace A152244.P15821140216269102313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057079 n * A209939 n

end

end A152244.P15821140216269102313

/-! ## A152244.P622077871054171777

`A132954(n)*A209939(n)`
-/

namespace A152244.P622077871054171777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132954 n * A209939 n

end

end A152244.P622077871054171777

/-! ## A152244.P10864925915599863879

`∑[A100051(n)]*A209939(n)`
-/

namespace A152244.P10864925915599863879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100051 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A209939 n

end

end A152244.P10864925915599863879

/-! ## A152244.P10460749427322369

`Δ[A117966(n)]*A030208(n)`
-/

namespace A152244.P10460749427322369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117966 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A030208 n

end

end A152244.P10460749427322369

/-! ## A152244.P11977537386674380581

`A030208(n)*A098554(2*n+1)`
-/

namespace A152244.P11977537386674380581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030208 n * A098554 (2 * n + 1)

end

end A152244.P11977537386674380581

/-! ## A152244.P6168467846030045316

`A030208(n)*A100051(2*n+1)`
-/

namespace A152244.P6168467846030045316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030208 n * A100051 (2 * n + 1)

end

end A152244.P6168467846030045316

/-! ## A152244.P15879127296891733776

`(A236348(n)-A064429(n))*A030208(n)`
-/

namespace A152244.P15879127296891733776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A236348 n - A064429 n) * A030208 n

end

end A152244.P15879127296891733776

/-!
# A152245: Primes p where |p-m| = 1, where m is any of the smallest positive integers with their number of divisors. (m belongs to sequence A007416.)

The programs for A152245, there is no canonical definition to state claims against.
-/

/-! ## A152245.P13002260894767839597

`A197300(∑[A084938(n)!])`
-/

namespace A152245.P13002260894767839597
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A084938 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197300 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A152245.P13002260894767839597

/-! ## A152245.P8473368538671920403

`A077500(lt[A361860(n+1), A255445(n)])`
-/

namespace A152245.P8473368538671920403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361860 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255445 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077500 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A152245.P8473368538671920403

/-!
# A152247: a(1) = 1, a(2) = 3; thereafter a(n) is the smallest odd positive integer not yet occurring in the sequence such that gcd(a(n), a(n-1)) > 1.

The programs for A152247, there is no canonical definition to state claims against.
-/

/-! ## A152247.P9539703432201683245

`2*A152248(n+1)-1`
-/

namespace A152247.P9539703432201683245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A152248 (n + 1) - 1

end

end A152247.P9539703432201683245

/-! ## A152247.P2095369552026997076

`A004273(A152248(n+1))`
-/

namespace A152247.P2095369552026997076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A152248 (n + 1)).toNat

end

end A152247.P2095369552026997076

/-! ## A152247.P4643327035510337782

`A005408(A152248(n+1)-1)`
-/

namespace A152247.P4643327035510337782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A152248 (n + 1) - 1).toNat

end

end A152247.P4643327035510337782

/-! ## A152247.P10415207825973305952

`A014681(2*A152248(n+1))`
-/

namespace A152247.P10415207825973305952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (2 * A152248 (n + 1)).toNat

end

end A152247.P10415207825973305952

/-! ## A152247.P6228832374077472352

`A023443(2*A152248(n+1))`
-/

namespace A152247.P6228832374077472352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (2 * A152248 (n + 1)).toNat

end

end A152247.P6228832374077472352

/-! ## A152247.P10753404249277430954

`A005843(A152248(n+1)-1)+1`
-/

namespace A152247.P10753404249277430954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A152248 (n + 1) - 1).toNat + 1

end

end A152247.P10753404249277430954

/-! ## A152247.P10439729055986958975

`or(1, A004277(A152248(n+1)-1))`
-/

namespace A152247.P10439729055986958975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A004277 (A152248 (n + 1) - 1).toNat)

end

end A152247.P10439729055986958975

/-!
# A152248: a(n) = (A152247(n) +1)/2.

The programs for A152248, there is no canonical definition to state claims against.
-/

/-! ## A152248.P13137552723142651938

`(A152247(n+1)+1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A152248.P13137552723142651938
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A152247 (n + 1) + 1 : ℚ) / 2

end

end A152248.P13137552723142651938

/-! ## A152248.P2515470476587668835

`ceil(A152247(n+1)/2)`
-/

namespace A152248.P2515470476587668835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A152247 (n + 1) : ℚ) / 2⌉

end

end A152248.P2515470476587668835

/-! ## A152248.P13712202016709279383

`round(A152247(Δ[n²]-n)/2)`
-/

namespace A152248.P13712202016709279383
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A152247 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat : ℚ) / 2)

end

end A152248.P13712202016709279383

/-! ## A152248.P16672760181790825674

`A000463(A152247(n+1))`
-/

namespace A152248.P16672760181790825674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A152247 (n + 1)).toNat

end

end A152248.P16672760181790825674

/-! ## A152248.P11019079192893732368

`A001281(A152247(n+1)+1)`
-/

namespace A152248.P11019079192893732368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A152247 (n + 1) + 1).toNat

end

end A152248.P11019079192893732368

/-! ## A152248.P8593920220349186005

`A004525(A152247(n+1)+1)`
-/

namespace A152248.P8593920220349186005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A152247 (n + 1) + 1).toNat

end

end A152248.P8593920220349186005

/-! ## A152248.P8402372765950275797

`A004526(A152247(n+1)+1)`
-/

namespace A152248.P8402372765950275797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A152247 (n + 1) + 1).toNat

end

end A152248.P8402372765950275797

/-! ## A152248.P1865914861608306452

`A014682(A152247(n+1)+1)`
-/

namespace A152248.P1865914861608306452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A152247 (n + 1) + 1).toNat

end

end A152248.P1865914861608306452

/-! ## A152248.P16501885135419778333

`A029578(A152247(n+1)+1)`
-/

namespace A152248.P16501885135419778333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (A152247 (n + 1) + 1).toNat

end

end A152248.P16501885135419778333

/-!
# A152251: Eigentriangle, row sums = A001519, odd-indexed Fibonacci numbers.

The programs for A152251, there is no canonical definition to state claims against.
-/

/-! ## A152251.P14474383015059633513

`A001519(A002262(n))*A155038(n+1)`
-/

namespace A152251.P14474383015059633513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001519 (A002262 n).toNat * A155038 (n + 1)

end

end A152251.P14474383015059633513

/-! ## A152251.P18283161912222820855

`A001519(A002260(n+1)-1)*A155038(n+1)`
-/

namespace A152251.P18283161912222820855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001519 (A002260 (n + 1) - 1).toNat * A155038 (n + 1)

end

end A152251.P18283161912222820855

/-! ## A152251.P15674157376079019841

`A001519(A002262(n))*A011782(A025581(n))`
-/

namespace A152251.P15674157376079019841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001519 (A002262 n).toNat * A011782 (A025581 n).toNat

end

end A152251.P15674157376079019841

/-! ## A152251.P12814218760868799957

`A117119(A141476(n)+1)`
-/

namespace A152251.P12814218760868799957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117119 (A141476 n + 1).toNat

end

end A152251.P12814218760868799957

/-! ## A152251.P4604977341972593159

`A144025(n)-A244465(A026665(n))`
-/

namespace A152251.P4604977341972593159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144025 n - A244465 (A026665 n).toNat

end

end A152251.P4604977341972593159

/-!
# A152252: Triangle read by rows, M*Q, where M = an infinite lower triangular matrix with powers of 3 prefaced by a 1 in every row: (1, 1, 3, 9, 27, ...) and Q = a matrix with A006012 prefaced by a 1 as the main diagonal and the rest zeros.

The programs for A152252, there is no canonical definition to state claims against.
-/

/-! ## A152252.P11879054420729996813

`A199426(A152229(n))`
-/

namespace A152252.P11879054420729996813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199426 (A152229 n).toNat

end

end A152252.P11879054420729996813

/-! ## A152252.P11656997584538398820

`A098488(A152229(n)%A002982(2*n+3))`
-/

namespace A152252.P11656997584538398820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098488 (Int.tmod (A152229 n) (A002982 (2 * n + 3))).toNat

end

end A152252.P11656997584538398820

/-!
# A152254: Twice A084773.

The programs for A152254, there is no canonical definition to state claims against.
-/

/-! ## A152254.P15202033131978133316

`A326237(n+1)`
-/

namespace A152254.P15202033131978133316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326237 (n + 1)

end

end A152254.P15202033131978133316

/-! ## A152254.P4385482830485578135

`2*A084773(n)`
-/

namespace A152254.P4385482830485578135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A084773 n

end

end A152254.P4385482830485578135

/-! ## A152254.P18149351160404059401

`record[A326237(abs(1-n))]`
-/

namespace A152254.P18149351160404059401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326237 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A152254.P18149351160404059401

/-! ## A152254.P11970735063883101349

`2^(n+1)*A001850(n)`
-/

namespace A152254.P11970735063883101349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) * A001850 n

end

end A152254.P11970735063883101349

/-! ## A152254.P13567299269879887501

`lcm(2^(n+1), A052141(n))`
-/

namespace A152254.P13567299269879887501
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (2 ^ (n + 1) : ℤ) (A052141 n)

end

end A152254.P13567299269879887501

/-! ## A152254.P13402454843228332198

`2*2^n*∑[A110170(n)]`
-/

namespace A152254.P13402454843228332198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110170 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((2 ^ n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A152254.P13402454843228332198

/-! ## A152254.P10911694418787631611

`2^(n+1)*A026003(2*n)`
-/

namespace A152254.P10911694418787631611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) * A026003 (2 * n)

end

end A152254.P10911694418787631611

/-! ## A152254.P1636468476494393547

`A001850(n)*A011782(n+2)`
-/

namespace A152254.P1636468476494393547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001850 n * A011782 (n + 2)

end

end A152254.P1636468476494393547

/-! ## A152254.P11043289848600706492

`A001850(n)*A131577(n+2)`
-/

namespace A152254.P11043289848600706492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001850 n * A131577 (n + 2)

end

end A152254.P11043289848600706492

/-! ## A152254.P3993307957820200911

`2*A000079(n)*A001850(n)`
-/

namespace A152254.P3993307957820200911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A000079 n * A001850 n)

end

end A152254.P3993307957820200911

/-!
# A152256: a(n) = (3^n - 1)*(3^n + 1)^2/32.

The programs for A152256, the canonical program `A152256.P1269937882417657870` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152256 has offset 0).

The definition of A152256 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A152256.P1269937882417657870

`(9^n-1)*(3^n+1)/32`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A152256

/-- `(9^n-1)*(3^n+1)/32` -/
def P1269937882417657870.Spec : Prop :=
  ∀ n, P1269937882417657870.a n = (A152256 n : ℚ)

end A152256

/-! ## A152256.P7347727943600908565

`(3^n-1)*(3^n+1)²/32`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A152256.P7347727943600908565
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((3 ^ n : ℤ) - 1) * ((3 ^ n + 1) ^ 2 : ℤ) : ℚ) / 32

end

end A152256.P7347727943600908565

namespace A152256

/-- `(3^n-1)*(3^n+1)²/32` -/
def P7347727943600908565.Spec : Prop :=
  ∀ n, P7347727943600908565.a n = (A152256 n : ℚ)

end A152256

/-!
# A152257: a(n) = (3^n - 1)^2*(3^n + 1)/16.

The programs for A152257, the canonical program `A152257.P13657246783167169929` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152257 has offset 0).

The definition of A152257 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A152257.P13657246783167169929

`A002452(n)*A003462(n)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A152257

/-- `A002452(n)*A003462(n)` -/
def P13657246783167169929.Spec : Prop :=
  ∀ n, P13657246783167169929.a n = A152257 n

theorem P13657246783167169929.correct : P13657246783167169929.Spec := by
  intro n
  simp only [A152257]

end A152257

/-! ## A152257.P5998417386628963951

`(9^n-1)*(3^n-1)/16`
-/

namespace A152257.P5998417386628963951
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((9 ^ n : ℤ) - 1) * ((3 ^ n : ℤ) - 1) : ℚ) / 16

end

end A152257.P5998417386628963951

namespace A152257

/-- `(9^n-1)*(3^n-1)/16` -/
def P5998417386628963951.Spec : Prop :=
  ∀ n, P5998417386628963951.a n = (A152257 n : ℚ)

end A152257

/-! ## A152257.P7557636658447882477

`(3^n-1)²*(3^n+1)/16`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A152257.P7557636658447882477
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((3 ^ n : ℤ) - 1) ^ 2 * (3 ^ n + 1 : ℤ) : ℚ) / 16

end

end A152257.P7557636658447882477

namespace A152257

/-- `(3^n-1)²*(3^n+1)/16` -/
def P7557636658447882477.Spec : Prop :=
  ∀ n, P7557636658447882477.a n = (A152257 n : ℚ)

end A152257

/-! ## A152257.P15267057678862371021

`abs(A002452(n)*A076040(n))`
-/

namespace A152257.P15267057678862371021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A002452 n * A076040 n|

end

end A152257.P15267057678862371021

namespace A152257

/-- `abs(A002452(n)*A076040(n))` -/
def P15267057678862371021.Spec : Prop :=
  ∀ n, P15267057678862371021.a n = A152257 n

end A152257

/-!
# A152258: a(n) = ((3^n - 1)*(3^n + 1))^2 / 2^(7 - (n mod 2)).

The programs for A152258, the canonical program `A152258.P13165345052803307942` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152258 has offset 0).

The definition of A152258 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A152258.P13165345052803307942

`A152299(n)*A002452(n)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A152258

/-- `A152299(n)*A002452(n)` -/
def P13165345052803307942.Spec : Prop :=
  ∀ n, P13165345052803307942.a n = A152258 n

theorem P13165345052803307942.correct : P13165345052803307942.Spec := by
  intro n
  simp only [A152258]

end A152258

/-! ## A152258.P14286133822878987360

`(9^n-1)²/2^(7-n%2)`
-/

namespace A152258.P14286133822878987360
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((9 ^ n : ℤ) - 1) ^ 2 : ℚ) / (2 : ℚ) ^ (7 - ((n % 2 : ℕ) : ℤ) : ℤ)

end

end A152258.P14286133822878987360

namespace A152258

/-- `(9^n-1)²/2^(7-n%2)` -/
def P14286133822878987360.Spec : Prop :=
  ∀ n, P14286133822878987360.a n = (A152258 n : ℚ)

end A152258

/-! ## A152258.P14765289710687880906

`A099583(2*n)²/gcd(2, n)`
-/

namespace A152258.P14765289710687880906
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099583 (2 * n) ^ 2 : ℚ) / (Nat.gcd 2 n : ℚ)

end

end A152258.P14765289710687880906

namespace A152258

/-- `A099583(2*n)²/gcd(2, n)` -/
def P14765289710687880906.Spec : Prop :=
  ∀ n, P14765289710687880906.a n = (A152258 n : ℚ)

end A152258

/-! ## A152258.P16498905470173526257

`A002452(n)²/A040001(n)`
-/

namespace A152258.P16498905470173526257
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002452 n ^ 2 : ℚ) / (A040001 n : ℚ)

end

end A152258.P16498905470173526257

namespace A152258

/-- `A002452(n)²/A040001(n)` -/
def P16498905470173526257.Spec : Prop :=
  ∀ n, P16498905470173526257.a n = (A152258 n : ℚ)

end A152258

/-! ## A152258.P10418588819979275686

`A099583(2*n)²/A040001(n)`
-/

namespace A152258.P10418588819979275686
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099583 (2 * n) ^ 2 : ℚ) / (A040001 n : ℚ)

end

end A152258.P10418588819979275686

namespace A152258

/-- `A099583(2*n)²/A040001(n)` -/
def P10418588819979275686.Spec : Prop :=
  ∀ n, P10418588819979275686.a n = (A152258 n : ℚ)

end A152258

/-! ## A152258.P12541032359307216764

`A152298(2*n)²/A040001(n)`
-/

namespace A152258.P12541032359307216764
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A152298 (2 * n) ^ 2 : ℚ) / (A040001 n : ℚ)

end

end A152258.P12541032359307216764

namespace A152258

/-- `A152298(2*n)²/A040001(n)` -/
def P12541032359307216764.Spec : Prop :=
  ∀ n, P12541032359307216764.a n = (A152258 n : ℚ)

end A152258

/-!
# A152259: Union of values: A147568(n) and 2*A147568(n) - 1.

The programs for A152259, there is no canonical definition to state claims against.
-/

/-! ## A152259.P13835712045858566190

`eq[Δ[A267496(n+1)], A098725(2*n)]`
-/

namespace A152259.P13835712045858566190
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267496 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098725 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f3 j) n

end

end A152259.P13835712045858566190

/-! ## A152259.P13520556760404300256

`A051699(A000079(n+4))+A002491(n+2)`
-/

namespace A152259.P13520556760404300256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051699 (A000079 (n + 4)).toNat + A002491 (n + 2)

end

end A152259.P13520556760404300256

/-! ## A152259.P7109936185347319956

`A023201(n+1)-A000120(A108951(3*(n+1)))`
-/

namespace A152259.P7109936185347319956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023201 (n + 1) - A000120 (A108951 (3 * (n + 1))).toNat

end

end A152259.P7109936185347319956

/-! ## A152259.P11938553206059830962

`A023201(n+1)-A000005(A205444(3*n+5))`
-/

namespace A152259.P11938553206059830962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023201 (n + 1) - A000005 (A205444 (3 * n + 5)).toNat

end

end A152259.P11938553206059830962

/-! ## A152259.P4137201667297696579

`record[A028882(n+1)-A139250(n)]`
-/

namespace A152259.P4137201667297696579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028882 (n + 1) - A139250 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A152259.P4137201667297696579

/-!
# A152261: a(n) = ((9 + sqrt(5))^n + (9 - sqrt(5))^n)/2.

The programs for A152261, the canonical program `A152261.P10175622032653470910` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152261 has offset 0).

The definition of A152261 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A152261.P10175622032653470910

`18*a(n-1)-76*a(n-2)` with `a(0)=1, a(1)=9`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A152261

/-- `18*a(n-1)-76*a(n-2)` -/
def P10175622032653470910.Spec : Prop :=
  ∀ n, P10175622032653470910.a n = A152261 n

theorem P10175622032653470910.correct : P10175622032653470910.Spec := by
  intro n
  simp only [A152261]

end A152261

/-! ## A152261.P1424345838842308620

`((9+sqrt(5))^n+(9-sqrt(5))^n)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A152261.P1424345838842308620
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((9 + Real.sqrt (5 : ℝ)) ^ n + (9 - Real.sqrt (5 : ℝ)) ^ n) / 2

end

end A152261.P1424345838842308620

namespace A152261

/-- `((9+sqrt(5))^n+(9-sqrt(5))^n)/2` -/
def P1424345838842308620.Spec : Prop :=
  ∀ n, P1424345838842308620.a n = (A152261 n : ℝ)

end A152261

/-!
# A152262: a(n) = 14*a(n-1) - 43*a(n-2), n > 1; a(0)=1, a(1)=7.

The programs for A152262, the canonical program `A152262.P16493490297676399967` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152262 has offset 0).

The definition of A152262 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `14*a(n-1)-43*a(n-2)` (program `A152262.P16493490297676399967`, by `A152262.P16493490297676399967.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A152262.P16493490297676399967

`14*a(n-1)-43*a(n-2)` with `a(0)=1, a(1)=7`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A152262

/-- `14*a(n-1)-43*a(n-2)` -/
def P16493490297676399967.Spec : Prop :=
  ∀ n, P16493490297676399967.a n = A152262 n

theorem P16493490297676399967.correct : P16493490297676399967.Spec := by
  intro n
  simp only [A152262]

end A152262

/-! ## A152262.P5803488928014725712

`((sqrt(6)+7)^n+(7-sqrt(6))^n)/2`
-/

namespace A152262.P5803488928014725712
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((Real.sqrt (6 : ℝ) + 7) ^ n + (7 - Real.sqrt (6 : ℝ)) ^ n) / 2

end

end A152262.P5803488928014725712

namespace A152262

/-- `((sqrt(6)+7)^n+(7-sqrt(6))^n)/2` -/
def P5803488928014725712.Spec : Prop :=
  ∀ n, P5803488928014725712.a n = (A152262 n : ℝ)

end A152262

/-!
# A152263: a(n) = ((8 + sqrt(6))^n + (8 - sqrt(6))^n)/2.

The programs for A152263, the canonical program `A152263.P13205121550215463882` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152263 has offset 0).

The definition of A152263 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A152263.P13205121550215463882

`16*a(n-1)-58*a(n-2)` with `a(0)=1, a(1)=8`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A152263

/-- `16*a(n-1)-58*a(n-2)` -/
def P13205121550215463882.Spec : Prop :=
  ∀ n, P13205121550215463882.a n = A152263 n

theorem P13205121550215463882.correct : P13205121550215463882.Spec := by
  intro n
  simp only [A152263]

end A152263

/-! ## A152263.P17227193347858838641

`((8+sqrt(6))^n+(8-sqrt(6))^n)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A152263.P17227193347858838641
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((8 + Real.sqrt (6 : ℝ)) ^ n + (8 - Real.sqrt (6 : ℝ)) ^ n) / 2

end

end A152263.P17227193347858838641

namespace A152263

/-- `((8+sqrt(6))^n+(8-sqrt(6))^n)/2` -/
def P17227193347858838641.Spec : Prop :=
  ∀ n, P17227193347858838641.a n = (A152263 n : ℝ)

end A152263

/-!
# A152264: a(n) = ((9+sqrt(6))^n + (9-sqrt(6))^n)/2.

The programs for A152264, the canonical program `A152264.P8132368977732432937` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152264 has offset 0).

The definition of A152264 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A152264.P8132368977732432937

`18*a(n-1)-75*a(n-2)` with `a(0)=1, a(1)=9`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A152264

/-- `18*a(n-1)-75*a(n-2)` -/
def P8132368977732432937.Spec : Prop :=
  ∀ n, P8132368977732432937.a n = A152264 n

theorem P8132368977732432937.correct : P8132368977732432937.Spec := by
  intro n
  simp only [A152264]

end A152264

/-! ## A152264.P10320667186238264156

`((sqrt(6)+9)^n+(9-sqrt(6))^n)/2`
-/

namespace A152264.P10320667186238264156
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((Real.sqrt (6 : ℝ) + 9) ^ n + (9 - Real.sqrt (6 : ℝ)) ^ n) / 2

end

end A152264.P10320667186238264156

namespace A152264

/-- `((sqrt(6)+9)^n+(9-sqrt(6))^n)/2` -/
def P10320667186238264156.Spec : Prop :=
  ∀ n, P10320667186238264156.a n = (A152264 n : ℝ)

end A152264

/-!
# A152265: a(n) = ((8 + sqrt(7))^n + (8 - sqrt(7))^n)/2.

The programs for A152265, the canonical program `A152265.P2963396802364947522` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152265 has offset 0).

The definition of A152265 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A152265.P2963396802364947522

`16*a(n-1)-57*a(n-2)` with `a(0)=1, a(1)=8`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A152265

/-- `16*a(n-1)-57*a(n-2)` -/
def P2963396802364947522.Spec : Prop :=
  ∀ n, P2963396802364947522.a n = A152265 n

theorem P2963396802364947522.correct : P2963396802364947522.Spec := by
  intro n
  simp only [A152265]

end A152265

/-! ## A152265.P12359847781189093410

`((sqrt(7)+8)^n+(8-sqrt(7))^n)/2`
-/

namespace A152265.P12359847781189093410
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((Real.sqrt (7 : ℝ) + 8) ^ n + (8 - Real.sqrt (7 : ℝ)) ^ n) / 2

end

end A152265.P12359847781189093410

namespace A152265

/-- `((sqrt(7)+8)^n+(8-sqrt(7))^n)/2` -/
def P12359847781189093410.Spec : Prop :=
  ∀ n, P12359847781189093410.a n = (A152265 n : ℝ)

end A152265

/-!
# A152266: a(n) = ((9 + sqrt(7))^n + (9 - sqrt(7))^n)/2.

The programs for A152266, the canonical program `A152266.P4743549971745932042` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152266 has offset 0).

The definition of A152266 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A152266.P4743549971745932042

`18*a(n-1)-74*a(n-2)` with `a(0)=1, a(1)=9`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A152266

/-- `18*a(n-1)-74*a(n-2)` -/
def P4743549971745932042.Spec : Prop :=
  ∀ n, P4743549971745932042.a n = A152266 n

theorem P4743549971745932042.correct : P4743549971745932042.Spec := by
  intro n
  simp only [A152266]

end A152266

/-! ## A152266.P6588081108205781067

`((9+sqrt(7))^n+(9-sqrt(7))^n)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A152266.P6588081108205781067
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((9 + Real.sqrt (7 : ℝ)) ^ n + (9 - Real.sqrt (7 : ℝ)) ^ n) / 2

end

end A152266.P6588081108205781067

namespace A152266

/-- `((9+sqrt(7))^n+(9-sqrt(7))^n)/2` -/
def P6588081108205781067.Spec : Prop :=
  ∀ n, P6588081108205781067.a n = (A152266 n : ℝ)

end A152266

/-!
# A152267: a(n) = ((9 + sqrt(8))^n + (9 - sqrt(8))^n)/2.

The programs for A152267, the canonical program `A152267.P1387343784829101944` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152267 has offset 0).

The definition of A152267 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A152267.P1387343784829101944

`18*a(n-1)-73*a(n-2)` with `a(0)=1, a(1)=9`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A152267

/-- `18*a(n-1)-73*a(n-2)` -/
def P1387343784829101944.Spec : Prop :=
  ∀ n, P1387343784829101944.a n = A152267 n

theorem P1387343784829101944.correct : P1387343784829101944.Spec := by
  intro n
  simp only [A152267]

end A152267

/-! ## A152267.P8420289931625028609

`((9+sqrt(8))^n+(9-sqrt(8))^n)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A152267.P8420289931625028609
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((9 + Real.sqrt (8 : ℝ)) ^ n + (9 - Real.sqrt (8 : ℝ)) ^ n) / 2

end

end A152267.P8420289931625028609

namespace A152267

/-- `((9+sqrt(8))^n+(9-sqrt(8))^n)/2` -/
def P8420289931625028609.Spec : Prop :=
  ∀ n, P8420289931625028609.a n = (A152267 n : ℝ)

end A152267

/-!
# A152268: Expansion of g.f. x/(1-7*x+8*x^2).

The programs for A152268, the canonical program `A152268.P1221201134775001929` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152268 has offset 0).

The definition of A152268 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(x/(1-7x+8x^2))` (program `A152268.P1221201134775001929`, by `A152268.P1221201134775001929.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A152268.P1221201134775001929

`ogf(x/(1-7x+8x^2))`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A152268

/-- `ogf(x/(1-7x+8x^2))` -/
def P1221201134775001929.Spec : Prop :=
  ∀ n, P1221201134775001929.a n = A152268 n

theorem P1221201134775001929.correct : P1221201134775001929.Spec := by
  intro n
  simp only [A152268]

end A152268

/-! ## A152268.P14148710635307914023

`7*a(n-1)-8*a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A152268.P14148710635307914023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  7 * a (n - 1) - 8 * a (n - 2)

end

end A152268.P14148710635307914023

namespace A152268

/-- `7*a(n-1)-8*a(n-2)` -/
def P14148710635307914023.Spec : Prop :=
  ∀ n, P14148710635307914023.a n = A152268 n

end A152268

/-! ## A152268.P18237677559395225460

`1/17*sqrt(17)*((7/2+1/2*sqrt(17))^n-(7/2-1/2*sqrt(17))^n)`
-/

namespace A152268.P18237677559395225460
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((1 : ℚ) / 17 : ℝ) * Real.sqrt (17 : ℝ) * ((((7 : ℚ) / 2 : ℝ) + ((1 : ℚ) / 2 : ℝ) * Real.sqrt (17 : ℝ)) ^ n - (((7 : ℚ) / 2 : ℝ) - ((1 : ℚ) / 2 : ℝ) * Real.sqrt (17 : ℝ)) ^ n)

end

end A152268.P18237677559395225460

namespace A152268

/-- `1/17*sqrt(17)*((7/2+1/2*sqrt(17))^n-(7/2-1/2*sqrt(17))^n)` -/
def P18237677559395225460.Spec : Prop :=
  ∀ n, P18237677559395225460.a n = (A152268 n : ℝ)

end A152268

/-! ## A152268.P9252477325989593446

`A301836(n+1)%A208044(n+1)`
-/

namespace A152268.P9252477325989593446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A301836 (n + 1)) (A208044 (n + 1))

end

end A152268.P9252477325989593446

namespace A152268

/-- `A301836(n+1)%A208044(n+1)` -/
def P9252477325989593446.Spec : Prop :=
  ∀ n, P9252477325989593446.a n = A152268 n

end A152268

/-! ## A152268.P17963263422491509984

`A275229(n+1)-∑[A208044(n+1)]`
-/

namespace A152268.P17963263422491509984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208044 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275229 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152268.P17963263422491509984

namespace A152268

/-- `A275229(n+1)-∑[A208044(n+1)]` -/
def P17963263422491509984.Spec : Prop :=
  ∀ n, P17963263422491509984.a n = A152268 n

end A152268

/-!
# A152269: Expansion of g.f. x*(1-3*x-8*x^2)/(1+5*x^2-32*x^4).

The programs for A152269, the canonical program `A152269.P6637876673626883490` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152269 has offset 0).

The definition of A152269 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((x-3x^2-8x^3)/(1+5x^2-32x^4))` (program `A152269.P6637876673626883490`, by `A152269.P6637876673626883490.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A152269.P6637876673626883490

`ogf((x-3x^2-8x^3)/(1+5x^2-32x^4))`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A152269

/-- `ogf((x-3x^2-8x^3)/(1+5x^2-32x^4))` -/
def P6637876673626883490.Spec : Prop :=
  ∀ n, P6637876673626883490.a n = A152269 n

theorem P6637876673626883490.correct : P6637876673626883490.Spec := by
  intro n
  simp only [A152269]

end A152269

/-!
# A152271: a(n)=1 for even n and (n+1)/2 for odd n.

The programs for A152271, the canonical program `A152271.P6659965972248271911` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152271 has offset 0).

The definition of A152271 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A152271.P5569555270860498053

`gcd(floor((n+1)/2), n+1)`
-/

namespace A152271.P5569555270860498053
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ⌊(n + 1 : ℚ) / 2⌋ (n + 1 : ℤ)

end

end A152271.P5569555270860498053

namespace A152271

/-- `gcd(floor((n+1)/2), n+1)` -/
def P5569555270860498053.Spec : Prop :=
  ∀ n, (P5569555270860498053.a n : ℤ) = A152271 n

end A152271

/-! ## A152271.P6659965972248271911

`2*a(n-2)-a(n-4)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=2`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A152271

/-- `2*a(n-2)-a(n-4)` -/
def P6659965972248271911.Spec : Prop :=
  ∀ n, P6659965972248271911.a n = A152271 n

theorem P6659965972248271911.correct : P6659965972248271911.Spec := by
  intro n
  simp only [A152271]

end A152271

/-! ## A152271.P12888189204232996276

`(a(n-2)+a(n-3))/a(n-1)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A152271.P12888189204232996276
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  (a (n - 2) + a (n - 3)) / a (n - 1)

end

end A152271.P12888189204232996276

namespace A152271

/-- `(a(n-2)+a(n-3))/a(n-1)` -/
def P12888189204232996276.Spec : Prop :=
  ∀ n, P12888189204232996276.a n = (A152271 n : ℚ)

end A152271

/-! ## A152271.P2436022665720500267

`A057979(n+2)`
-/

namespace A152271.P2436022665720500267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (n + 2)

end

end A152271.P2436022665720500267

namespace A152271

/-- `A057979(n+2)` -/
def P2436022665720500267.Spec : Prop :=
  ∀ n, P2436022665720500267.a n = A152271 n

end A152271

/-! ## A152271.P7079664168211004351

`ceil((n/2)^(n%2))`
-/

namespace A152271.P7079664168211004351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n : ℚ) / 2) ^ (n % 2)⌉

end

end A152271.P7079664168211004351

namespace A152271

/-- `ceil((n/2)^(n%2))` -/
def P7079664168211004351.Spec : Prop :=
  ∀ n, P7079664168211004351.a n = A152271 n

end A152271

/-! ## A152271.P13968590436664559590

`ceil(n^and(1, n)/2)`
-/

namespace A152271.P13968590436664559590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n ^ Nat.land 1 n : ℚ) / 2⌉

end

end A152271.P13968590436664559590

namespace A152271

/-- `ceil(n^and(1, n)/2)` -/
def P13968590436664559590.Spec : Prop :=
  ∀ n, P13968590436664559590.a n = A152271 n

end A152271

/-! ## A152271.P9953052297830803042

`round(n^and(1, n)/2)`
-/

namespace A152271.P9953052297830803042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n ^ Nat.land 1 n : ℚ) / 2)

end

end A152271.P9953052297830803042

namespace A152271

/-- `round(n^and(1, n)/2)` -/
def P9953052297830803042.Spec : Prop :=
  ∀ n, P9953052297830803042.a n = A152271 n

end A152271

/-! ## A152271.P5069683459553322429

`∑[and(1, n)]^and(1, n)`
-/

namespace A152271.P5069683459553322429
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ Nat.land 1 n

end

end A152271.P5069683459553322429

namespace A152271

/-- `∑[and(1, n)]^and(1, n)` -/
def P5069683459553322429.Spec : Prop :=
  ∀ n, (P5069683459553322429.a n : ℤ) = A152271 n

end A152271

/-! ## A152271.P2417641259956393859

`C(∑[and(1, n)], and(1, n))`
-/

namespace A152271.P2417641259956393859
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) (Nat.land 1 n)

end

end A152271.P2417641259956393859

namespace A152271

/-- `C(∑[and(1, n)], and(1, n))` -/
def P2417641259956393859.Spec : Prop :=
  ∀ n, (P2417641259956393859.a n : ℤ) = A152271 n

end A152271

/-! ## A152271.P7048257896620926640

`Δ[∪[∑[n+2], ∑[n]]]`
-/

namespace A152271.P7048257896620926640
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = x) ∨ ∃ j, f4 j = x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A152271.P7048257896620926640

namespace A152271

/-- `Δ[∪[∑[n+2], ∑[n]]]` -/
def P7048257896620926640.Spec : Prop :=
  ∀ n, P7048257896620926640.a n = A152271 n

end A152271

/-! ## A152271.P13068004655886914496

`((n+1)/2)^and(1, n)`
-/

namespace A152271.P13068004655886914496
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℚ) / 2) ^ Nat.land 1 n

end

end A152271.P13068004655886914496

namespace A152271

/-- `((n+1)/2)^and(1, n)` -/
def P13068004655886914496.Spec : Prop :=
  ∀ n, P13068004655886914496.a n = (A152271 n : ℚ)

end A152271

/-! ## A152271.P3404160588023605857

`(C(n, and(1, n))+1)/2`
-/

namespace A152271.P3404160588023605857
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose n (Nat.land 1 n) + 1 : ℚ) / 2

end

end A152271.P3404160588023605857

namespace A152271

/-- `(C(n, and(1, n))+1)/2` -/
def P3404160588023605857.Spec : Prop :=
  ∀ n, P3404160588023605857.a n = (A152271 n : ℚ)

end A152271

/-! ## A152271.P1502252821679281398

`Δ[C(floor(n/2), 2)]+1`
-/

namespace A152271.P1502252821679281398
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ⌊(n : ℚ) / 2⌋.toNat 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + 1

end

end A152271.P1502252821679281398

namespace A152271

/-- `Δ[C(floor(n/2), 2)]+1` -/
def P1502252821679281398.Spec : Prop :=
  ∀ n, P1502252821679281398.a n = A152271 n

end A152271

/-! ## A152271.P8885287702530828717

`C(ceil(n/2), floor(n/2))`
-/

namespace A152271.P8885287702530828717
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ⌈(n : ℚ) / 2⌉.toNat ⌊(n : ℚ) / 2⌋.toNat

end

end A152271.P8885287702530828717

namespace A152271

/-- `C(ceil(n/2), floor(n/2))` -/
def P8885287702530828717.Spec : Prop :=
  ∀ n, (P8885287702530828717.a n : ℤ) = A152271 n

end A152271

/-! ## A152271.P5455096537081499422

`a(n-2)+and(1, n)` with `a(0)=1, a(1)=1`
-/

namespace A152271.P5455096537081499422
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) + Nat.land 1 n

end

end A152271.P5455096537081499422

namespace A152271

/-- `a(n-2)+and(1, n)` -/
def P5455096537081499422.Spec : Prop :=
  ∀ n, (P5455096537081499422.a n : ℤ) = A152271 n

end A152271

/-! ## A152271.P6433848694516633804

`abs(lcm(2, 1-n)/2-n)`
-/

namespace A152271.P6433848694516633804
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(Int.lcm 2 (1 - (n : ℤ)) : ℚ) / 2 - (n : ℚ)|

end

end A152271.P6433848694516633804

namespace A152271

/-- `abs(lcm(2, 1-n)/2-n)` -/
def P6433848694516633804.Spec : Prop :=
  ∀ n, P6433848694516633804.a n = (A152271 n : ℚ)

end A152271

/-! ## A152271.P12839815460852144744

`(2/(n+1))^(-n%2)`
-/

namespace A152271.P12839815460852144744
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 / (n + 1 : ℚ)) ^ (Int.tmod (-(n : ℤ)) 2 : ℤ)

end

end A152271.P12839815460852144744

namespace A152271

/-- `(2/(n+1))^(-n%2)` -/
def P12839815460852144744.Spec : Prop :=
  ∀ n, P12839815460852144744.a n = (A152271 n : ℚ)

end A152271

/-! ## A152271.P110291406966575149

`ceil(n/(2*a(n-1)))` with `a(0)=1`
-/

namespace A152271.P110291406966575149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌈(n : ℚ) / (2 * a (n - 1) : ℚ)⌉

end

end A152271.P110291406966575149

namespace A152271

/-- `ceil(n/(2*a(n-1)))` -/
def P110291406966575149.Spec : Prop :=
  ∀ n, P110291406966575149.a n = A152271 n

end A152271

/-! ## A152271.P4178926560405007135

`round(n/(2*a(n-1)))` with `a(0)=1`
-/

namespace A152271.P4178926560405007135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.roundAway ((n : ℚ) / (2 * a (n - 1) : ℚ))

end

end A152271.P4178926560405007135

namespace A152271

/-- `round(n/(2*a(n-1)))` -/
def P4178926560405007135.Spec : Prop :=
  ∀ n, P4178926560405007135.a n = A152271 n

end A152271

/-! ## A152271.P12477449668131781197

`ceil(n/2)/a(n-1)` with `a(0)=1`
-/

namespace A152271.P12477449668131781197
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (⌈(n : ℚ) / 2⌉ : ℚ) / a (n - 1)

end

end A152271.P12477449668131781197

namespace A152271

/-- `ceil(n/2)/a(n-1)` -/
def P12477449668131781197.Spec : Prop :=
  ∀ n, P12477449668131781197.a n = (A152271 n : ℚ)

end A152271

/-!
# A152272: Number of 0's among the digits of all n-digit primes.

The programs for A152272, there is no canonical definition to state claims against.
-/

/-! ## A152272.P5427159922048239970

`Δ[A231411(round(acot(n)+n))]`
-/

namespace A152272.P5427159922048239970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231411 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A152272.P5427159922048239970

/-! ## A152272.P288683592612276773

`Δ[A231411(round(sqrt(n²+1)))]`
-/

namespace A152272.P288683592612276773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231411 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A152272.P288683592612276773

/-! ## A152272.P163344806603651746

`abs(Δ[A231411(A028310(n))])`
-/

namespace A152272.P163344806603651746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231411 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A152272.P163344806603651746

/-! ## A152272.P15647649428682166998

`A231411(n+1)-A231411(round(acot(n)+n))`
-/

namespace A152272.P15647649428682166998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231411 (n + 1) - A231411 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

end

end A152272.P15647649428682166998

/-! ## A152272.P7813778561207459695

`A231411(n+1)-A231411(round(sqrt(n²+1)))`
-/

namespace A152272.P7813778561207459695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231411 (n + 1) - A231411 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

end

end A152272.P7813778561207459695

/-!
# A152273: Number of 1's among the digits of all n-digit primes.

The programs for A152273, there is no canonical definition to state claims against.
-/

/-! ## A152273.P16735982575704099500

`Δ[A231590(round(sqrt(n²+1)))]`
-/

namespace A152273.P16735982575704099500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231590 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A152273.P16735982575704099500

/-! ## A152273.P5396467760038785644

`record[Δ[A231590(ceil((n+2)/3))]]`
-/

namespace A152273.P5396467760038785644
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231590 ⌈(n + 2 : ℚ) / 3⌉.toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A152273.P5396467760038785644

/-! ## A152273.P3611928928037577310

`abs(Δ[A231590(A028310(n))])`
-/

namespace A152273.P3611928928037577310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231590 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A152273.P3611928928037577310

/-! ## A152273.P13585031478821324441

`A231590(n+1)-A231590(round(sqrt(n²+1)))`
-/

namespace A152273.P13585031478821324441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231590 (n + 1) - A231590 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

end

end A152273.P13585031478821324441

/-!
# A152274: Number of 2's among the digits of all n-digit primes.

The programs for A152274, there is no canonical definition to state claims against.
-/

/-! ## A152274.P5891498151136602017

`A335548(3*n+1)+A194832(A355112(n))`
-/

namespace A152274.P5891498151136602017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335548 (3 * n + 1) + A194832 (A355112 n).toNat

end

end A152274.P5891498151136602017

/-!
# A152276: Number of 4's among the digits of all n-digit primes.

The programs for A152276, there is no canonical definition to state claims against.
-/

/-! ## A152276.P17860634065433186753

`Δ[A231593(round(sqrt(n²+1)))]`
-/

namespace A152276.P17860634065433186753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231593 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A152276.P17860634065433186753

/-! ## A152276.P452671484449160832

`record[Δ[A231593(ceil((n+2)/3))]]`
-/

namespace A152276.P452671484449160832
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231593 ⌈(n + 2 : ℚ) / 3⌉.toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A152276.P452671484449160832

/-! ## A152276.P15412673145316683302

`abs(Δ[A231593(A028310(n))])`
-/

namespace A152276.P15412673145316683302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231593 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A152276.P15412673145316683302

/-! ## A152276.P7142199621699409505

`A231593(n+1)-A231593(round(sqrt(n²+1)))`
-/

namespace A152276.P7142199621699409505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231593 (n + 1) - A231593 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

end

end A152276.P7142199621699409505

/-!
# A152277: Number of 5's among the digits of all n-digit primes.

The programs for A152277, there is no canonical definition to state claims against.
-/

/-! ## A152277.P1133870058810253763

`A058933(A155654(n)+A097861(n))`
-/

namespace A152277.P1133870058810253763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058933 (A155654 n + A097861 n).toNat

end

end A152277.P1133870058810253763

/-!
# A152278: Number of 6's among the digits of all n-digit primes.

The programs for A152278, there is no canonical definition to state claims against.
-/

/-! ## A152278.P1621020813542724610

`Δ[A231595(round(sqrt(n²+1)))]`
-/

namespace A152278.P1621020813542724610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231595 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A152278.P1621020813542724610

/-! ## A152278.P17164194549443910948

`record[Δ[A231595(ceil((n+2)/3))]]`
-/

namespace A152278.P17164194549443910948
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231595 ⌈(n + 2 : ℚ) / 3⌉.toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A152278.P17164194549443910948

/-! ## A152278.P14958056551360891390

`abs(Δ[A231595(A028310(n))])`
-/

namespace A152278.P14958056551360891390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231595 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A152278.P14958056551360891390

/-! ## A152278.P6234436503640332959

`A231595(n+1)-A231595(round(sqrt(n²+1)))`
-/

namespace A152278.P6234436503640332959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231595 (n + 1) - A231595 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

end

end A152278.P6234436503640332959

/-!
# A152280: Number of 8's among the digits of all n-digit primes.

The programs for A152280, there is no canonical definition to state claims against.
-/

/-! ## A152280.P18131626334267773273

`Δ[A231597(round(sqrt(n²+1)))]`
-/

namespace A152280.P18131626334267773273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231597 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A152280.P18131626334267773273

/-! ## A152280.P415065101421380392

`record[Δ[A231597(ceil((n+2)/3))]]`
-/

namespace A152280.P415065101421380392
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231597 ⌈(n + 2 : ℚ) / 3⌉.toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A152280.P415065101421380392

/-! ## A152280.P571759055356067003

`abs(Δ[A231597(A028310(n))])`
-/

namespace A152280.P571759055356067003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231597 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A152280.P571759055356067003

/-! ## A152280.P4074783173419275696

`A231597(n+1)-A231597(round(sqrt(n²+1)))`
-/

namespace A152280.P4074783173419275696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231597 (n + 1) - A231597 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

end

end A152280.P4074783173419275696

/-!
# A152281: Number of 9's among the digits of all n-digit primes.

The programs for A152281, there is no canonical definition to state claims against.
-/

/-! ## A152281.P6235200871414118411

`Δ[A231598(round(sqrt(n²+1)))]`
-/

namespace A152281.P6235200871414118411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231598 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A152281.P6235200871414118411

/-! ## A152281.P12530344437592130500

`record[Δ[A231598(ceil((n+2)/3))]]`
-/

namespace A152281.P12530344437592130500
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231598 ⌈(n + 2 : ℚ) / 3⌉.toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A152281.P12530344437592130500

/-! ## A152281.P5418786858890267881

`abs(Δ[A231598(A028310(n))])`
-/

namespace A152281.P5418786858890267881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231598 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A152281.P5418786858890267881

/-! ## A152281.P17605242579194911725

`A231598(n+1)-A231598(round(sqrt(n²+1)))`
-/

namespace A152281.P17605242579194911725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231598 (n + 1) - A231598 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

end

end A152281.P17605242579194911725

/-!
# A152282: Coefficients in a q-analog of the LambertW function at q=2: A(x) = Sum_{n>=0} a(n)*x^n/faq(n,2) where faq(n,q) = q-factorial of n.

The programs for A152282, there is no canonical definition to state claims against.
-/

/-! ## A152282.P16303152618971486636

`A047206(A005156(n))`
-/

namespace A152282.P16303152618971486636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047206 (A005156 n).toNat

end

end A152282.P16303152618971486636

/-!
# A152283: Coefficients in a q-analog of the LambertW function at q=3: A(x) = Sum_{n>=0} a(n)*x^n/faq(n,3) where faq(n,q) = q-factorial of n.

The programs for A152283, there is no canonical definition to state claims against.
-/

/-! ## A152283.P7048835572690333768

`A301726(∑[A022559(n)^A064364(n+1)])`
-/

namespace A152283.P7048835572690333768
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022559 n : ℚ) ^ (A064364 (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301726 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A152283.P7048835572690333768

/-!
# A152284: E.g.f.: A(x) = Sum_{n>=0} x^n*faq(n,x)/n!, where faq(n,q) = q-factorial of n.

The programs for A152284, there is no canonical definition to state claims against.
-/

/-! ## A152284.P4547770183824469561

`∑{d}[A064098(n+1), A154458(#)]`
-/

namespace A152284.P4547770183824469561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064098 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A154458 d

end

end A152284.P4547770183824469561

/-! ## A152284.P14651545249075041029

`A360189(∑[A077622(n+1)]-n)`
-/

namespace A152284.P14651545249075041029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077622 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360189 (∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)).toNat

end

end A152284.P14651545249075041029

/-! ## A152284.P14408949785275323750

`A193020(A193038(n)+∑[∑{e}[n, #]])`
-/

namespace A152284.P14408949785275323750
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193020 (A193038 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A152284.P14408949785275323750

/-!
# A152286: Column 0 of triangle A152285.

The programs for A152286, there is no canonical definition to state claims against.
-/

/-! ## A152286.P6079719644944517549

`A152285(∑[n])`
-/

namespace A152286.P6079719644944517549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152285 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A152286.P6079719644944517549

/-! ## A152286.P10832333263890326399

`and(-1, A152285(A000217(n)))`
-/

namespace A152286.P10832333263890326399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A152285 (A000217 n).toNat)

end

end A152286.P10832333263890326399

/-! ## A152286.P1037304596196511434

`A152285(n*(n+1)/2)*A329314(n)`
-/

namespace A152286.P1037304596196511434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152285 (SequenceMachineLib.roundAway ((n : ℚ) * ((n + 1 : ℚ) / 2))).toNat * A329314 n

end

end A152286.P1037304596196511434

/-! ## A152286.P15560318753553793132

`or(floor(1/(n+1)), A152285(A245467(2*n)))`
-/

namespace A152286.P15560318753553793132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ⌊1 / (n + 1 : ℚ)⌋ (A152285 (A245467 (2 * n)).toNat)

end

end A152286.P15560318753553793132

/-! ## A152286.P2704973418485088754

`A152285(C(n+1, 2))%A171780(2*n+5)`
-/

namespace A152286.P2704973418485088754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A152285 (Nat.choose (n + 1) 2)) (A171780 (2 * n + 5))

end

end A152286.P2704973418485088754

/-!
# A152287: Column 1 of triangle A152285.

The programs for A152287, there is no canonical definition to state claims against.
-/

/-! ## A152287.P11249742037835693209

`A152285(∑[n+1]+1)`
-/

namespace A152287.P11249742037835693209
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152285 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A152287.P11249742037835693209

/-! ## A152287.P15598142971792146146

`A152285(A134869(n+1))+char[9]`
-/

namespace A152287.P15598142971792146146
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152285 (A134869 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A152287.P15598142971792146146

/-! ## A152287.P7485827100369189254

`A000164(n)*A152285(A134869(n+1))`
-/

namespace A152287.P7485827100369189254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000164 n * A152285 (A134869 (n + 1)).toNat

end

end A152287.P7485827100369189254

/-!
# A152288: Column 2 of triangle A152285.

The programs for A152288, there is no canonical definition to state claims against.
-/

/-! ## A152288.P7281327462950143742

`A152285(∑[n+2]+3)`
-/

namespace A152288.P7281327462950143742
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152285 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A152288.P7281327462950143742

/-!
# A152291: a(n) = (n+1)^floor((n-1)/2).

The programs for A152291, the canonical program `A152291.P2700532159758174755` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152291 has offset 0).

The definition of A152291 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A152291.P2700532159758174755

`(n+1)^floor((n-1)/2)`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A152291

/-- `(n+1)^floor((n-1)/2)` -/
def P2700532159758174755.Spec : Prop :=
  ∀ n, P2700532159758174755.a n = (A152291 n : ℚ)

end A152291

/-! ## A152291.P10107039502511166342

`floor((n+1)^floor(n*tan(79)))`
-/

namespace A152291.P10107039502511166342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℚ) ^ (⌊(n : ℝ) * Real.tan (79 : ℝ)⌋ : ℤ)⌋

end

end A152291.P10107039502511166342

namespace A152291

/-- `floor((n+1)^floor(n*tan(79)))` -/
def P10107039502511166342.Spec : Prop :=
  ∀ n, P10107039502511166342.a n = A152291 n

end A152291

/-! ## A152291.P6374376016745587942

`floor((n+1)^(∑[n%2]-1))`
-/

namespace A152291.P6374376016745587942
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℚ) ^ (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1 : ℤ)⌋

end

end A152291.P6374376016745587942

namespace A152291

/-- `floor((n+1)^(∑[n%2]-1))` -/
def P6374376016745587942.Spec : Prop :=
  ∀ n, P6374376016745587942.a n = A152291 n

end A152291

/-! ## A152291.P8871926867059334440

`floor((n+1)^∑[1-a(n-1)])` with `a(0)=0, a(1)=0, a(2)=0`
-/

namespace A152291.P8871926867059334440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0] fun n f1 =>
  1 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j : ℤ)⌋

end

end A152291.P8871926867059334440

namespace A152291

/-- `floor((n+1)^∑[1-a(n-1)])` -/
def P8871926867059334440.Spec : Prop :=
  ∀ n, P8871926867059334440.a n = A152291 n

end A152291

/-! ## A152291.P10237804790342458024

`A092503(n+1)/(n+1)`
-/

namespace A152291.P10237804790342458024
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A092503 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A152291.P10237804790342458024

namespace A152291

/-- `A092503(n+1)/(n+1)` -/
def P10237804790342458024.Spec : Prop :=
  ∀ n, P10237804790342458024.a n = (A152291 n : ℚ)

end A152291

/-! ## A152291.P15051165099044354493

`(n+1)^A065033(n)/(n+1)`
-/

namespace A152291.P15051165099044354493
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A065033 n : ℤ) / (n + 1 : ℚ)

end

end A152291.P15051165099044354493

namespace A152291

/-- `(n+1)^A065033(n)/(n+1)` -/
def P15051165099044354493.Spec : Prop :=
  ∀ n, P15051165099044354493.a n = (A152291 n : ℚ)

end A152291

/-! ## A152291.P6149156871368946660

`(n+1)^A110654(n)/(n+1)`
-/

namespace A152291.P6149156871368946660
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A110654 n : ℤ) / (n + 1 : ℚ)

end

end A152291.P6149156871368946660

namespace A152291

/-- `(n+1)^A110654(n)/(n+1)` -/
def P6149156871368946660.Spec : Prop :=
  ∀ n, P6149156871368946660.a n = (A152291 n : ℚ)

end A152291

/-! ## A152291.P15862261142458690359

`(n+1)^A004526(n+1)/(n+1)`
-/

namespace A152291.P15862261142458690359
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A004526 (n + 1) : ℤ) / (n + 1 : ℚ)

end

end A152291.P15862261142458690359

namespace A152291

/-- `(n+1)^A004526(n+1)/(n+1)` -/
def P15862261142458690359.Spec : Prop :=
  ∀ n, P15862261142458690359.a n = (A152291 n : ℚ)

end A152291

/-! ## A152291.P1560146773213431194

`(n+1)^A123108(n+1)/(n+1)`
-/

namespace A152291.P1560146773213431194
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A123108 (n + 1) : ℤ) / (n + 1 : ℚ)

end

end A152291.P1560146773213431194

namespace A152291

/-- `(n+1)^A123108(n+1)/(n+1)` -/
def P1560146773213431194.Spec : Prop :=
  ∀ n, P1560146773213431194.a n = (A152291 n : ℚ)

end A152291

/-! ## A152291.P12877105318375853067

`sqrt((n+1)^(n-gcd(2, n)))`
-/

namespace A152291.P12877105318375853067
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((n + 1 : ℚ) ^ ((n : ℤ) - (Nat.gcd 2 n : ℤ) : ℤ) : ℝ)

end

end A152291.P12877105318375853067

namespace A152291

/-- `sqrt((n+1)^(n-gcd(2, n)))` -/
def P12877105318375853067.Spec : Prop :=
  ∀ n, P12877105318375853067.a n = (A152291 n : ℝ)

end A152291

/-!
# A152292: Primes p of the form : (p-n)/(n+1)=prime and (n+1)*p+n=prime. n=2.

The programs for A152292, there is no canonical definition to state claims against.
-/

/-! ## A152292.P3759720702242779760

`3*A023246(n+1)+2`
-/

namespace A152292.P3759720702242779760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A023246 (n + 1) + 2

end

end A152292.P3759720702242779760

/-! ## A152292.P12747853603349386974

`p?[floor(A136073(n+1)/3)]`
-/

namespace A152292.P12747853603349386974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A136073 (n + 1) : ℚ) / 3⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A152292.P12747853603349386974

/-! ## A152292.P12440821668666935512

`p?[3*A023235(n+1)+2]`
-/

namespace A152292.P12440821668666935512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A023235 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A152292.P12440821668666935512

/-! ## A152292.P12877870911594412014

`∩[A023208(n+1), A094524(n+1)]`
-/

namespace A152292.P12877870911594412014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023208 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094524 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A152292.P12877870911594412014

/-! ## A152292.P14605805838985990023

`∩[A094524(n+1), A162338(n+1)]`
-/

namespace A152292.P14605805838985990023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094524 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162338 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A152292.P14605805838985990023

/-! ## A152292.P6300700899918074311

`A014682(A023246(n+1)+A023246(n+1)+1)`
-/

namespace A152292.P6300700899918074311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A023246 (n + 1) + (A023246 (n + 1) + 1)).toNat

end

end A152292.P6300700899918074311

/-! ## A152292.P14115572603697969747

`A151800(3*A023246(n+1))`
-/

namespace A152292.P14115572603697969747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (3 * A023246 (n + 1)).toNat

end

end A152292.P14115572603697969747

/-! ## A152292.P15413587455923186591

`A151800(lcm(3, A023246(n+1)))`
-/

namespace A152292.P15413587455923186591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (Int.lcm 3 (A023246 (n + 1)))

end

end A152292.P15413587455923186591

/-! ## A152292.P1435921824318033024

`record[A020639(floor(A136073(n+1)/3))]`
-/

namespace A152292.P1435921824318033024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 ⌊(A136073 (n + 1) : ℚ) / 3⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A152292.P1435921824318033024

/-! ## A152292.P6799609051222543744

`∩[A024893(n+1), A094524(n+1)]`
-/

namespace A152292.P6799609051222543744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024893 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094524 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A152292.P6799609051222543744

/-!
# A152293: Primes of the form : (p-n)/(n+1)=prime and (n+1)*p+n=prime. n=3.

The programs for A152293, there is no canonical definition to state claims against.
-/

/-! ## A152293.P10206122654655788970

`4*A023250(n+1)+3`
-/

namespace A152293.P10206122654655788970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A023250 (n + 1) + 3

end

end A152293.P10206122654655788970

/-! ## A152293.P18153127097289751909

`4*p?[A192638(n+1)]+3`
-/

namespace A152293.P18153127097289751909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192638 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 3

end

end A152293.P18153127097289751909

/-! ## A152293.P9606183465547477675

`A004767(A023250(n+1))`
-/

namespace A152293.P9606183465547477675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 (A023250 (n + 1)).toNat

end

end A152293.P9606183465547477675

/-! ## A152293.P15187779243942171859

`A004767(p?[A192638(n+1)])`
-/

namespace A152293.P15187779243942171859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192638 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A152293.P15187779243942171859

/-! ## A152293.P15239020986295073104

`A131098(A023250(n+1)+2)`
-/

namespace A152293.P15239020986295073104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131098 (A023250 (n + 1) + 2).toNat

end

end A152293.P15239020986295073104

/-!
# A152294: Primes of the form : (p-n)/(n+1)=prime and (n+1)*p+n=prime. n=4.

The programs for A152294, there is no canonical definition to state claims against.
-/

/-! ## A152294.P17377116283664818188

`5*A023253(n+1)+4`
-/

namespace A152294.P17377116283664818188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A023253 (n + 1) + 4

end

end A152294.P17377116283664818188

/-! ## A152294.P13696385395211832939

`A016897(A023253(n+1))`
-/

namespace A152294.P13696385395211832939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016897 (A023253 (n + 1)).toNat

end

end A152294.P13696385395211832939

/-! ## A152294.P15359484065437444250

`p?[A016897(A136089(n+1))]`
-/

namespace A152294.P15359484065437444250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016897 (A136089 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A152294.P15359484065437444250

/-! ## A152294.P15627381973104831927

`A161365(p?[A023253(n+1)])`
-/

namespace A152294.P15627381973104831927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023253 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161365 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A152294.P15627381973104831927

/-! ## A152294.P5043100302139530906

`A090771(A023253(n+1)+1)`
-/

namespace A152294.P5043100302139530906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090771 (A023253 (n + 1) + 1).toNat

end

end A152294.P5043100302139530906

/-!
# A152295: Primes of the form : (p-n)/(n+1)=prime and (n+1)*p+n=prime. n=5.

The programs for A152295, there is no canonical definition to state claims against.
-/

/-! ## A152295.P6806661564488006734

`6*A023257(n+1)+5`
-/

namespace A152295.P6806661564488006734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A023257 (n + 1) + 5

end

end A152295.P6806661564488006734

/-! ## A152295.P13074964951310114176

`∩[A023221(n+1), A126329(n+1)]`
-/

namespace A152295.P13074964951310114176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023221 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126329 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A152295.P13074964951310114176

/-! ## A152295.P15825595604224026525

`A000203(lcm(5, A023257(n+1)))-1`
-/

namespace A152295.P15825595604224026525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (Int.lcm 5 (A023257 (n + 1))) - 1

end

end A152295.P15825595604224026525

/-! ## A152295.P4343024467808317887

`A016969(A023257(n+1))`
-/

namespace A152295.P4343024467808317887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016969 (A023257 (n + 1)).toNat

end

end A152295.P4343024467808317887

/-! ## A152295.P6988058777337562471

`A166646(p?[A023257(n+1)])-1`
-/

namespace A152295.P6988058777337562471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023257 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166646 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat - 1

end

end A152295.P6988058777337562471

/-! ## A152295.P180052317831106993

`A299149(A166646(A023257(n+1))-1)`
-/

namespace A152295.P180052317831106993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299149 (A166646 (A023257 (n + 1)).toNat - 1).toNat

end

end A152295.P180052317831106993

/-! ## A152295.P7043764528305577675

`A007310(A023257(n+1)+A023257(n+1)+2)`
-/

namespace A152295.P7043764528305577675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007310 (A023257 (n + 1) + (A023257 (n + 1) + 2)).toNat

end

end A152295.P7043764528305577675

/-! ## A152295.P17159825437742891983

`A326184(5*A023257(n+1))`
-/

namespace A152295.P17159825437742891983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326184 (5 * A023257 (n + 1)).toNat

end

end A152295.P17159825437742891983

/-! ## A152295.P480564231729969239

`A326184(lcm(5, A023257(n+1)))`
-/

namespace A152295.P480564231729969239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326184 (Int.lcm 5 (A023257 (n + 1)))

end

end A152295.P480564231729969239

/-! ## A152295.P4266191535259918793

`A014963(A166646(A023257(n+1))-1)`
-/

namespace A152295.P4266191535259918793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A166646 (A023257 (n + 1)).toNat - 1).toNat

end

end A152295.P4266191535259918793

/-!
# A152298: a(n) = (3^n-1)/2 if n odd, (3^n-1)/8 if n even.

The programs for A152298, the canonical program `A152298.P10352576904058738727` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152298 has offset 0).

The definition of A152298 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A152298.P10352576904058738727

`10*a(n-2)-9*a(n-4)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=13`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A152298

/-- `10*a(n-2)-9*a(n-4)` -/
def P10352576904058738727.Spec : Prop :=
  ∀ n, P10352576904058738727.a n = A152298 n

theorem P10352576904058738727.correct : P10352576904058738727.Spec := by
  intro n
  simp only [A152298]

end A152298

/-! ## A152298.P12365254108468255195

`(3^n-1)/2^(3-2*n%2)`
-/

namespace A152298.P12365254108468255195
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 ^ n : ℤ) - 1 : ℚ) / (2 : ℚ) ^ (3 - ((2 * (n % 2) : ℕ) : ℤ) : ℤ)

end

end A152298.P12365254108468255195

namespace A152298

/-- `(3^n-1)/2^(3-2*n%2)` -/
def P12365254108468255195.Spec : Prop :=
  ∀ n, P12365254108468255195.a n = (A152298 n : ℚ)

end A152298

/-! ## A152298.P11375813565991441261

`A003462(n)/gcd(2, n)²`
-/

namespace A152298.P11375813565991441261
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003462 n : ℚ) / (Nat.gcd 2 n ^ 2 : ℚ)

end

end A152298.P11375813565991441261

namespace A152298

/-- `A003462(n)/gcd(2, n)²` -/
def P11375813565991441261.Spec : Prop :=
  ∀ n, P11375813565991441261.a n = (A152298 n : ℚ)

end A152298

/-! ## A152298.P6701367344141663955

`∑[floor(3^(n-1))]/A000034(n+1)²`
-/

namespace A152298.P6701367344141663955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A000034 (n + 1) ^ 2 : ℚ)

end

end A152298.P6701367344141663955

namespace A152298

/-- `∑[floor(3^(n-1))]/A000034(n+1)²` -/
def P6701367344141663955.Spec : Prop :=
  ∀ n, P6701367344141663955.a n = (A152298 n : ℚ)

end A152298

/-! ## A152298.P914867455400586607

`A003462(n)/A040005(n)`
-/

namespace A152298.P914867455400586607
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003462 n : ℚ) / (A040005 n : ℚ)

end

end A152298.P914867455400586607

namespace A152298

/-- `A003462(n)/A040005(n)` -/
def P914867455400586607.Spec : Prop :=
  ∀ n, P914867455400586607.a n = (A152298 n : ℚ)

end A152298

/-! ## A152298.P11828536751598771439

`A003462(n)/A010685(n+1)`
-/

namespace A152298.P11828536751598771439
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003462 n : ℚ) / (A010685 (n + 1) : ℚ)

end

end A152298.P11828536751598771439

namespace A152298

/-- `A003462(n)/A010685(n+1)` -/
def P11828536751598771439.Spec : Prop :=
  ∀ n, P11828536751598771439.a n = (A152298 n : ℚ)

end A152298

/-! ## A152298.P15540719441223720595

`A003462(n)/(A059841(n)+1)²`
-/

namespace A152298.P15540719441223720595
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003462 n : ℚ) / ((A059841 n + 1) ^ 2 : ℚ)

end

end A152298.P15540719441223720595

namespace A152298

/-- `A003462(n)/(A059841(n)+1)²` -/
def P15540719441223720595.Spec : Prop :=
  ∀ n, P15540719441223720595.a n = (A152298 n : ℚ)

end A152298

/-! ## A152298.P1777193734946810458

`(A007051(n)-1)/A280193(n)²`
-/

namespace A152298.P1777193734946810458
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007051 n - 1 : ℚ) / (A280193 n ^ 2 : ℚ)

end

end A152298.P1777193734946810458

namespace A152298

/-- `(A007051(n)-1)/A280193(n)²` -/
def P1777193734946810458.Spec : Prop :=
  ∀ n, P1777193734946810458.a n = (A152298 n : ℚ)

end A152298

/-! ## A152298.P2023525636512663332

`A003462(n)/(2-A000035(n))²`
-/

namespace A152298.P2023525636512663332
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003462 n : ℚ) / ((2 - A000035 n) ^ 2 : ℚ)

end

end A152298.P2023525636512663332

namespace A152298

/-- `A003462(n)/(2-A000035(n))²` -/
def P2023525636512663332.Spec : Prop :=
  ∀ n, P2023525636512663332.a n = (A152298 n : ℚ)

end A152298

/-! ## A152298.P2790805779921002920

`(A115098(n)-2)/A040001(n)²`
-/

namespace A152298.P2790805779921002920
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A115098 n - 2 : ℚ) / (A040001 n ^ 2 : ℚ)

end

end A152298.P2790805779921002920

namespace A152298

/-- `(A115098(n)-2)/A040001(n)²` -/
def P2790805779921002920.Spec : Prop :=
  ∀ n, P2790805779921002920.a n = (A152298 n : ℚ)

end A152298

/-! ## A152298.P14788089916215331670

`(A000034(n)/2)²*A003462(n)`
-/

namespace A152298.P14788089916215331670
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A000034 n : ℚ) / 2) ^ 2 * (A003462 n : ℚ)

end

end A152298.P14788089916215331670

namespace A152298

/-- `(A000034(n)/2)²*A003462(n)` -/
def P14788089916215331670.Spec : Prop :=
  ∀ n, P14788089916215331670.a n = (A152298 n : ℚ)

end A152298

/-! ## A152298.P10412790553504161368

`A232801(2*n)/A040001(n)²`
-/

namespace A152298.P10412790553504161368
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A232801 (2 * n) : ℚ) / (A040001 n ^ 2 : ℚ)

end

end A152298.P10412790553504161368

namespace A152298

/-- `A232801(2*n)/A040001(n)²` -/
def P10412790553504161368.Spec : Prop :=
  ∀ n, P10412790553504161368.a n = (A152298 n : ℚ)

end A152298

/-! ## A152298.P12327672903707506710

`(A007051(n)-1)/A168361(n+1)²`
-/

namespace A152298.P12327672903707506710
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007051 n - 1 : ℚ) / (A168361 (n + 1) ^ 2 : ℚ)

end

end A152298.P12327672903707506710

namespace A152298

/-- `(A007051(n)-1)/A168361(n+1)²` -/
def P12327672903707506710.Spec : Prop :=
  ∀ n, P12327672903707506710.a n = (A152298 n : ℚ)

end A152298

/-! ## A152298.P6908148050427835816

`A003462(n)/(2-A135528(n+1))²`
-/

namespace A152298.P6908148050427835816
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003462 n : ℚ) / ((2 - A135528 (n + 1)) ^ 2 : ℚ)

end

end A152298.P6908148050427835816

namespace A152298

/-- `A003462(n)/(2-A135528(n+1))²` -/
def P6908148050427835816.Spec : Prop :=
  ∀ n, P6908148050427835816.a n = (A152298 n : ℚ)

end A152298

/-! ## A152298.P5165947577381463223

`A003462(n)/A123684(∑[-a(n-1)]+1)` with `a(0)=2`
-/

namespace A152298.P5165947577381463223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  -f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003462 n : ℚ) / (A123684 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat : ℚ)

end

end A152298.P5165947577381463223

namespace A152298

/-- `A003462(n)/A123684(∑[-a(n-1)]+1)` -/
def P5165947577381463223.Spec : Prop :=
  ∀ n, P5165947577381463223.a n = (A152298 n : ℚ)

end A152298

/-! ## A152298.P12293820444688873212

`A003462(n)/(A000034(n+1)*A000034(n+1))`
-/

namespace A152298.P12293820444688873212
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003462 n : ℚ) / (A000034 (n + 1) * A000034 (n + 1) : ℚ)

end

end A152298.P12293820444688873212

namespace A152298

/-- `A003462(n)/(A000034(n+1)*A000034(n+1))` -/
def P12293820444688873212.Spec : Prop :=
  ∀ n, P12293820444688873212.a n = (A152298 n : ℚ)

end A152298

/-! ## A152298.P2928265662806957207

`A024023(n)/A040015(n)`
-/

namespace A152298.P2928265662806957207
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024023 n : ℚ) / (A040015 n : ℚ)

end

end A152298.P2928265662806957207

namespace A152298

/-- `A024023(n)/A040015(n)` -/
def P2928265662806957207.Spec : Prop :=
  ∀ n, P2928265662806957207.a n = (A152298 n : ℚ)

end A152298

/-! ## A152298.P13377913296492886873

`A029858(n+1)/A040033(n)`
-/

namespace A152298.P13377913296492886873
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029858 (n + 1) : ℚ) / (A040033 n : ℚ)

end

end A152298.P13377913296492886873

namespace A152298

/-- `A029858(n+1)/A040033(n)` -/
def P13377913296492886873.Spec : Prop :=
  ∀ n, P13377913296492886873.a n = (A152298 n : ℚ)

end A152298

/-! ## A152298.P12458171943007373911

`lcm(8, 1-A000244(n))/8`
-/

namespace A152298.P12458171943007373911
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 8 (1 - A000244 n) : ℚ) / 8

end

end A152298.P12458171943007373911

namespace A152298

/-- `lcm(8, 1-A000244(n))/8` -/
def P12458171943007373911.Spec : Prop :=
  ∀ n, P12458171943007373911.a n = (A152298 n : ℚ)

end A152298

/-! ## A152298.P54903777316228405

`A100774(n)/A040059(n)`
-/

namespace A152298.P54903777316228405
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100774 n : ℚ) / (A040059 n : ℚ)

end

end A152298.P54903777316228405

namespace A152298

/-- `A100774(n)/A040059(n)` -/
def P54903777316228405.Spec : Prop :=
  ∀ n, P54903777316228405.a n = (A152298 n : ℚ)

end A152298

/-!
# A152299: A threes sequence that gets more even factors out: a(n) = (3^n - 1)*(3^n + 1)/2^(4 - (n mod 2)).

The programs for A152299, the canonical program `A152299.P9637715305975065806` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152299 has offset 0).

The definition of A152299 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A152299.P9637715305975065806

`82*a(n-2)-81*a(n-4)` with `a(0)=0, a(1)=1, a(2)=5, a(3)=91`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A152299

/-- `82*a(n-2)-81*a(n-4)` -/
def P9637715305975065806.Spec : Prop :=
  ∀ n, P9637715305975065806.a n = A152299 n

theorem P9637715305975065806.correct : P9637715305975065806.Spec := by
  intro n
  simp only [A152299]

end A152299

/-! ## A152299.P13359573863225957759

`(3^n-1)*(3^n+1)/2^(4-n%2)`
-/

namespace A152299.P13359573863225957759
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((3 ^ n : ℤ) - 1) * (3 ^ n + 1 : ℤ) : ℚ) / (2 : ℚ) ^ (4 - ((n % 2 : ℕ) : ℤ) : ℤ)

end

end A152299.P13359573863225957759

namespace A152299

/-- `(3^n-1)*(3^n+1)/2^(4-n%2)` -/
def P13359573863225957759.Spec : Prop :=
  ∀ n, P13359573863225957759.a n = (A152299 n : ℚ)

end A152299

/-! ## A152299.P2467815945290023913

`A152298(n)*A167205(n)`
-/

namespace A152299.P2467815945290023913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152298 n * A167205 n

end

end A152299.P2467815945290023913

namespace A152299

/-- `A152298(n)*A167205(n)` -/
def P2467815945290023913.Spec : Prop :=
  ∀ n, P2467815945290023913.a n = A152299 n

end A152299

/-! ## A152299.P9716512432965757090

`A002452(n)/gcd(2, ∏{p}[n, #])`
-/

namespace A152299.P9716512432965757090
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002452 n : ℚ) / (Nat.gcd 2 (∏ p ∈ Nat.primeFactors (f1 n), p) : ℚ)

end

end A152299.P9716512432965757090

namespace A152299

/-- `A002452(n)/gcd(2, ∏{p}[n, #])` -/
def P9716512432965757090.Spec : Prop :=
  ∀ n, P9716512432965757090.a n = (A152299 n : ℚ)

end A152299

/-! ## A152299.P1424629380184009018

`A002452(n)/A040491(3*n+4)`
-/

namespace A152299.P1424629380184009018
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002452 n : ℚ) / (A040491 (3 * n + 4) : ℚ)

end

end A152299.P1424629380184009018

namespace A152299

/-- `A002452(n)/A040491(3*n+4)` -/
def P1424629380184009018.Spec : Prop :=
  ∀ n, P1424629380184009018.a n = (A152299 n : ℚ)

end A152299

/-! ## A152299.P14892594425884125080

`A002452(n)/A001511(A124781(n+1))`
-/

namespace A152299.P14892594425884125080
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002452 n : ℚ) / (A001511 (A124781 (n + 1)).toNat : ℚ)

end

end A152299.P14892594425884125080

namespace A152299

/-- `A002452(n)/A001511(A124781(n+1))` -/
def P14892594425884125080.Spec : Prop :=
  ∀ n, P14892594425884125080.a n = (A152299 n : ℚ)

end A152299

/-! ## A152299.P5817664235018607899

`A002452(n)/A001285(A336173(n))`
-/

namespace A152299.P5817664235018607899
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002452 n : ℚ) / (A001285 (A336173 n).toNat : ℚ)

end

end A152299.P5817664235018607899

namespace A152299

/-- `A002452(n)/A001285(A336173(n))` -/
def P5817664235018607899.Spec : Prop :=
  ∀ n, P5817664235018607899.a n = (A152299 n : ℚ)

end A152299

