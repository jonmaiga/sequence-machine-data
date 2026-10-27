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
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
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
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
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
# A005100: Deficient numbers: numbers k such that sigma(k) < 2k.

The programs for A005100, the canonical program `A005100.P5902118993367235572` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005100 has offset 1).

The definition of A005100 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A005100.P5848962601096883502

`record[A125746(n+1)]`
-/

namespace A005100.P5848962601096883502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125746 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005100.P5848962601096883502

namespace A005100

/-- `record[A125746(n+1)]` -/
def P5848962601096883502.Spec : Prop :=
  ∀ n, P5848962601096883502.a n = A005100 (n + 1)

end A005100

/-! ## A005100.P2054921377382733566

`A225241(n+1)/2`
-/

namespace A005100.P2054921377382733566
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A225241 (n + 1) : ℚ) / 2

end

end A005100.P2054921377382733566

namespace A005100

/-- `A225241(n+1)/2` -/
def P2054921377382733566.Spec : Prop :=
  ∀ n, P2054921377382733566.a n = (A005100 (n + 1) : ℚ)

theorem P2054921377382733566.correct : P2054921377382733566.Spec := by
  intro n
  simp only [A005100, Nat.add_sub_cancel, A005100.P2054921377382733566.a, A005100.P5902118993367235572.f1, A005100.P5902118993367235572.a, A082551, A082551.P4316828637772613674.f1, A082551.P4316828637772613674.f2, A082551.P4316828637772613674.a, A225241, A225241.P5113222394722278636.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A005100

/-! ## A005100.P5902118993367235572

`record[n-A082551(n+1)]`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A005100

/-- `record[n-A082551(n+1)]` -/
def P5902118993367235572.Spec : Prop :=
  ∀ n, P5902118993367235572.a n = A005100 (n + 1)

theorem P5902118993367235572.correct : P5902118993367235572.Spec := by
  intro n
  simp only [A005100, Nat.add_sub_cancel]

end A005100

/-! ## A005100.P13914291940709816937

`eq[0, A294936(n+1)]+1`
-/

namespace A005100.P13914291940709816937
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294936 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A005100.P13914291940709816937

namespace A005100

/-- `eq[0, A294936(n+1)]+1` -/
def P13914291940709816937.Spec : Prop :=
  ∀ n, (P13914291940709816937.a n : ℤ) = A005100 (n + 1)

end A005100

/-! ## A005100.P4408000038378649630

`eq[0, A341620(n+1)]+1`
-/

namespace A005100.P4408000038378649630
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341620 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A005100.P4408000038378649630

namespace A005100

/-- `eq[0, A341620(n+1)]+1` -/
def P4408000038378649630.Spec : Prop :=
  ∀ n, (P4408000038378649630.a n : ℤ) = A005100 (n + 1)

end A005100

/-! ## A005100.P10995001387222521215

`eq[0, A341624(n+1)]+1`
-/

namespace A005100.P10995001387222521215
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341624 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A005100.P10995001387222521215

namespace A005100

/-- `eq[0, A341624(n+1)]+1` -/
def P10995001387222521215.Spec : Prop :=
  ∀ n, (P10995001387222521215.a n : ℤ) = A005100 (n + 1)

end A005100

/-! ## A005100.P12831565595022603055

`lt[0, A033879(n+1)]+1`
-/

namespace A005100.P12831565595022603055
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033879 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A005100.P12831565595022603055

namespace A005100

/-- `lt[0, A033879(n+1)]+1` -/
def P12831565595022603055.Spec : Prop :=
  ∀ n, (P12831565595022603055.a n : ℤ) = A005100 (n + 1)

end A005100

/-! ## A005100.P3531644643190391069

`eq[1, A294934(n+1)]+1`
-/

namespace A005100.P3531644643190391069
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294934 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A005100.P3531644643190391069

namespace A005100

/-- `eq[1, A294934(n+1)]+1` -/
def P3531644643190391069.Spec : Prop :=
  ∀ n, (P3531644643190391069.a n : ℤ) = A005100 (n + 1)

end A005100

/-! ## A005100.P783118520527637000

`eq[1, A300826(n+1)]+1`
-/

namespace A005100.P783118520527637000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300826 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A005100.P783118520527637000

namespace A005100

/-- `eq[1, A300826(n+1)]+1` -/
def P783118520527637000.Spec : Prop :=
  ∀ n, (P783118520527637000.a n : ℤ) = A005100 (n + 1)

end A005100

/-! ## A005100.P6506406214497663181

`eq[1, A378604(n+1)]+1`
-/

namespace A005100.P6506406214497663181
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378604 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A005100.P6506406214497663181

namespace A005100

/-- `eq[1, A378604(n+1)]+1` -/
def P6506406214497663181.Spec : Prop :=
  ∀ n, (P6506406214497663181.a n : ℤ) = A005100 (n + 1)

end A005100

/-! ## A005100.P8311360867933262086

`lt[A060862(n+1), 1]+1`
-/

namespace A005100.P8311360867933262086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060862 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A005100.P8311360867933262086

namespace A005100

/-- `lt[A060862(n+1), 1]+1` -/
def P8311360867933262086.Spec : Prop :=
  ∀ n, (P8311360867933262086.a n : ℤ) = A005100 (n + 1)

end A005100

/-! ## A005100.P15993902745492009819

`lt[A336835(n+1), 1]+1`
-/

namespace A005100.P15993902745492009819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336835 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A005100.P15993902745492009819

namespace A005100

/-- `lt[A336835(n+1), 1]+1` -/
def P15993902745492009819.Spec : Prop :=
  ∀ n, (P15993902745492009819.a n : ℤ) = A005100 (n + 1)

end A005100

/-! ## A005100.P410560713397074193

`lt[A337690(n+1), 1]+1`
-/

namespace A005100.P410560713397074193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337690 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A005100.P410560713397074193

namespace A005100

/-- `lt[A337690(n+1), 1]+1` -/
def P410560713397074193.Spec : Prop :=
  ∀ n, (P410560713397074193.a n : ℤ) = A005100 (n + 1)

end A005100

/-! ## A005100.P15967237029556367909

`A125238(n)+a(n-1)` with `a(0)=1`
-/

namespace A005100.P15967237029556367909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A125238 n + a (n - 1)

end

end A005100.P15967237029556367909

namespace A005100

/-- `A125238(n)+a(n-1)` -/
def P15967237029556367909.Spec : Prop :=
  ∀ n, P15967237029556367909.a n = A005100 (n + 1)

end A005100

/-! ## A005100.P9767004375113188352

`comp[A023196(n+1)-1]+1`
-/

namespace A005100.P9767004375113188352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023196 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A005100.P9767004375113188352

namespace A005100

/-- `comp[A023196(n+1)-1]+1` -/
def P9767004375113188352.Spec : Prop :=
  ∀ n, (P9767004375113188352.a n : ℤ) = A005100 (n + 1)

end A005100

/-! ## A005100.P9457864153480492052

`lt[A000203(abs(1-n)+1), 2*n]`
-/

namespace A005100.P9457864153480492052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (|1 - (n : ℤ)| + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A005100.P9457864153480492052

namespace A005100

/-- `lt[A000203(abs(1-n)+1), 2*n]` -/
def P9457864153480492052.Spec : Prop :=
  ∀ n, (P9457864153480492052.a n : ℤ) = A005100 (n + 1)

end A005100

/-! ## A005100.P16082781123653665426

`lt[A000203(n+1), 2*(n+1)]+1`
-/

namespace A005100.P16082781123653665426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A005100.P16082781123653665426

namespace A005100

/-- `lt[A000203(n+1), 2*(n+1)]+1` -/
def P16082781123653665426.Spec : Prop :=
  ∀ n, (P16082781123653665426.a n : ℤ) = A005100 (n + 1)

end A005100

/-! ## A005100.P6894690908965934308

`A205099(n+1)+A033884(n+1)`
-/

namespace A005100.P6894690908965934308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205099 (n + 1) + A033884 (n + 1)

end

end A005100.P6894690908965934308

namespace A005100

/-- `A205099(n+1)+A033884(n+1)` -/
def P6894690908965934308.Spec : Prop :=
  ∀ n, P6894690908965934308.a n = A005100 (n + 1)

end A005100

/-! ## A005100.P9093694661114947846

`A204823(n+1)-A205099(n+1)`
-/

namespace A005100.P9093694661114947846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204823 (n + 1) - A205099 (n + 1)

end

end A005100.P9093694661114947846

namespace A005100

/-- `A204823(n+1)-A205099(n+1)` -/
def P9093694661114947846.Spec : Prop :=
  ∀ n, P9093694661114947846.a n = A005100 (n + 1)

theorem P9093694661114947846.correct : P9093694661114947846.Spec := by
  intro n
  simp only [A005100, Nat.add_sub_cancel, A005100.P9093694661114947846.a, A005100.P5902118993367235572.f1, A005100.P5902118993367235572.a, A082551, A082551.P4316828637772613674.f1, A082551.P4316828637772613674.f2, A082551.P4316828637772613674.a, A204823, A204823.P4919634814112807220.f1, A204823.P4919634814112807220.a, A205099, A205099.P16915794968075742101.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A005100

/-! ## A005100.P1915154991815778157

`filter[A263837(n+1), A294934(#)]`
-/

namespace A005100.P1915154991815778157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263837 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294934 (f1 j).toNat = 1) n)

end

end A005100.P1915154991815778157

namespace A005100

/-- `filter[A263837(n+1), A294934(#)]` -/
def P1915154991815778157.Spec : Prop :=
  ∀ n, P1915154991815778157.a n = A005100 (n + 1)

end A005100

/-!
# A005101: Abundant numbers (sum of divisors of m exceeds 2m).

The programs for A005101, the canonical program `A005101.P6705997063366613997` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005101 has offset 1).

The definition of A005101 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A005101.P3217408300868382419

`A224907(n+1)/2`
-/

namespace A005101.P3217408300868382419
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A224907 (n + 1) : ℚ) / 2

end

end A005101.P3217408300868382419

namespace A005101

/-- `A224907(n+1)/2` -/
def P3217408300868382419.Spec : Prop :=
  ∀ n, P3217408300868382419.a n = (A005101 (n + 1) : ℚ)

theorem P3217408300868382419.correct : P3217408300868382419.Spec := by
  intro n
  simp only [A005101, Nat.add_sub_cancel, A005101.P3217408300868382419.a, A005101.P6705997063366613997.f1, A005101.P6705997063366613997.f2, A005101.P6705997063366613997.a, A082551, A082551.P4316828637772613674.f1, A082551.P4316828637772613674.f2, A082551.P4316828637772613674.a, A224907, A224907.P17184024121669876912.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A005101

/-! ## A005101.P18220965233765041742

`eq[0, A294935(n+1)]+1`
-/

namespace A005101.P18220965233765041742
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294935 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A005101.P18220965233765041742

namespace A005101

/-- `eq[0, A294935(n+1)]+1` -/
def P18220965233765041742.Spec : Prop :=
  ∀ n, (P18220965233765041742.a n : ℤ) = A005101 (n + 1)

end A005101

/-! ## A005101.P12025818631114741818

`eq[1, A060862(n+1)]+1`
-/

namespace A005101.P12025818631114741818
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060862 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A005101.P12025818631114741818

namespace A005101

/-- `eq[1, A060862(n+1)]+1` -/
def P12025818631114741818.Spec : Prop :=
  ∀ n, (P12025818631114741818.a n : ℤ) = A005101 (n + 1)

end A005101

/-! ## A005101.P6705997063366613997

`eq[1, A082551(n+1)]+1`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A005101

/-- `eq[1, A082551(n+1)]+1` -/
def P6705997063366613997.Spec : Prop :=
  ∀ n, (P6705997063366613997.a n : ℤ) = A005101 (n + 1)

theorem P6705997063366613997.correct : P6705997063366613997.Spec := by
  intro n
  simp only [A005101, Nat.add_sub_cancel]

end A005101

/-! ## A005101.P12959771098132881861

`lt[0, A318679(n+1)]+1`
-/

namespace A005101.P12959771098132881861
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318679 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A005101.P12959771098132881861

namespace A005101

/-- `lt[0, A318679(n+1)]+1` -/
def P12959771098132881861.Spec : Prop :=
  ∀ n, (P12959771098132881861.a n : ℤ) = A005101 (n + 1)

end A005101

/-! ## A005101.P17221757728305376620

`lt[A341621(n+1)², 1]+1`
-/

namespace A005101.P17221757728305376620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341621 (n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A005101.P17221757728305376620

namespace A005101

/-- `lt[A341621(n+1)², 1]+1` -/
def P17221757728305376620.Spec : Prop :=
  ∀ n, (P17221757728305376620.a n : ℤ) = A005101 (n + 1)

end A005101

/-! ## A005101.P11832707961611998295

`lt[2*(n+1), A000203(n+1)]+1`
-/

namespace A005101.P11832707961611998295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A005101.P11832707961611998295

namespace A005101

/-- `lt[2*(n+1), A000203(n+1)]+1` -/
def P11832707961611998295.Spec : Prop :=
  ∀ n, (P11832707961611998295.a n : ℤ) = A005101 (n + 1)

end A005101

/-! ## A005101.P2395006350695600965

`lt[2, A000203(n+2)/(n+2)]+2`
-/

namespace A005101.P2395006350695600965
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 2) : ℚ) / (n + 2 : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n + 2

end

end A005101.P2395006350695600965

namespace A005101

/-- `lt[2, A000203(n+2)/(n+2)]+2` -/
def P2395006350695600965.Spec : Prop :=
  ∀ n, (P2395006350695600965.a n : ℤ) = A005101 (n + 1)

end A005101

/-! ## A005101.P12203682502299979742

`lt[n+3, A000203(n+3)-(n+3)]+3`
-/

namespace A005101.P12203682502299979742
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 3) - (n + 3 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 3

end

end A005101.P12203682502299979742

namespace A005101

/-- `lt[n+3, A000203(n+3)-(n+3)]+3` -/
def P12203682502299979742.Spec : Prop :=
  ∀ n, (P12203682502299979742.a n : ℤ) = A005101 (n + 1)

end A005101

/-! ## A005101.P252999277901735358

`A205098(n+1)-A033881(n+1)`
-/

namespace A005101.P252999277901735358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205098 (n + 1) - A033881 (n + 1)

end

end A005101.P252999277901735358

namespace A005101

/-- `A205098(n+1)-A033881(n+1)` -/
def P252999277901735358.Spec : Prop :=
  ∀ n, P252999277901735358.a n = A005101 (n + 1)

end A005101

/-! ## A005101.P11559435520471221494

`A204822(n+1)-A205098(n+1)`
-/

namespace A005101.P11559435520471221494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204822 (n + 1) - A205098 (n + 1)

end

end A005101.P11559435520471221494

namespace A005101

/-- `A204822(n+1)-A205098(n+1)` -/
def P11559435520471221494.Spec : Prop :=
  ∀ n, P11559435520471221494.a n = A005101 (n + 1)

theorem P11559435520471221494.correct : P11559435520471221494.Spec := by
  intro n
  simp only [A005101, Nat.add_sub_cancel, A005101.P11559435520471221494.a, A005101.P6705997063366613997.f1, A005101.P6705997063366613997.f2, A005101.P6705997063366613997.a, A082551, A082551.P4316828637772613674.f1, A082551.P4316828637772613674.f2, A082551.P4316828637772613674.a, A204822, A204822.P986191513022326355.a, A205098, A205098.P10471539786565330894.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A005101

/-! ## A005101.P4748924196805108842

`∪[A034683(n+1), A087245(n+1)]`
-/

namespace A005101.P4748924196805108842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034683 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087245 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A005101.P4748924196805108842

namespace A005101

/-- `∪[A034683(n+1), A087245(n+1)]` -/
def P4748924196805108842.Spec : Prop :=
  ∀ n, (P4748924196805108842.a n : ℤ) = A005101 (n + 1)

end A005101

/-! ## A005101.P15551924826094951705

`∪[A087245(n+1), A087248(n+1)]`
-/

namespace A005101.P15551924826094951705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087245 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087248 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A005101.P15551924826094951705

namespace A005101

/-- `∪[A087245(n+1), A087248(n+1)]` -/
def P15551924826094951705.Spec : Prop :=
  ∀ n, (P15551924826094951705.a n : ℤ) = A005101 (n + 1)

end A005101

/-! ## A005101.P4365839175441577779

`∪[A091191(n+1), A091192(n+1)]`
-/

namespace A005101.P4365839175441577779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091191 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091192 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A005101.P4365839175441577779

namespace A005101

/-- `∪[A091191(n+1), A091192(n+1)]` -/
def P4365839175441577779.Spec : Prop :=
  ∀ n, (P4365839175441577779.a n : ℤ) = A005101 (n + 1)

end A005101

/-! ## A005101.P4563779548973474709

`∪[A087245(n+1), A129656(n+1)]`
-/

namespace A005101.P4563779548973474709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087245 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129656 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A005101.P4563779548973474709

namespace A005101

/-- `∪[A087245(n+1), A129656(n+1)]` -/
def P4563779548973474709.Spec : Prop :=
  ∀ n, (P4563779548973474709.a n : ℤ) = A005101 (n + 1)

end A005101

/-! ## A005101.P1414926839741607048

`∪[A124626(n+1), A124656(n+1)]`
-/

namespace A005101.P1414926839741607048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124626 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124656 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A005101.P1414926839741607048

namespace A005101

/-- `∪[A124626(n+1), A124656(n+1)]` -/
def P1414926839741607048.Spec : Prop :=
  ∀ n, (P1414926839741607048.a n : ℤ) = A005101 (n + 1)

end A005101

/-! ## A005101.P1274519938446532269

`∪[A181487(n+1), A091192(n+1)]`
-/

namespace A005101.P1274519938446532269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181487 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091192 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A005101.P1274519938446532269

namespace A005101

/-- `∪[A181487(n+1), A091192(n+1)]` -/
def P1274519938446532269.Spec : Prop :=
  ∀ n, (P1274519938446532269.a n : ℤ) = A005101 (n + 1)

end A005101

/-! ## A005101.P8652773841486824873

`∪[A083211(n+1), A204825(n+1)]`
-/

namespace A005101.P8652773841486824873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083211 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204825 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A005101.P8652773841486824873

namespace A005101

/-- `∪[A083211(n+1), A204825(n+1)]` -/
def P8652773841486824873.Spec : Prop :=
  ∀ n, (P8652773841486824873.a n : ℤ) = A005101 (n + 1)

end A005101

/-! ## A005101.P16312348597291503024

`∪[A087245(n+1), A204825(n+1)]`
-/

namespace A005101.P16312348597291503024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087245 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204825 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A005101.P16312348597291503024

namespace A005101

/-- `∪[A087245(n+1), A204825(n+1)]` -/
def P16312348597291503024.Spec : Prop :=
  ∀ n, (P16312348597291503024.a n : ℤ) = A005101 (n + 1)

end A005101

/-! ## A005101.P239954642411889588

`∪[A214408(n+1), A087245(n+1)]`
-/

namespace A005101.P239954642411889588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214408 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087245 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A005101.P239954642411889588

namespace A005101

/-- `∪[A214408(n+1), A087245(n+1)]` -/
def P239954642411889588.Spec : Prop :=
  ∀ n, (P239954642411889588.a n : ℤ) = A005101 (n + 1)

end A005101

/-!
# A005104: Minimal determinant of n-dimensional norm 4 lattice.

The programs for A005104, there is no canonical definition to state claims against.
-/

/-! ## A005104.P686484599606172629

`A028921(∑{digits}[n, #])`
-/

namespace A005104.P686484599606172629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028921 ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum

end

end A005104.P686484599606172629

/-! ## A005104.P15296308374992721990

`A028921(∏{digits}[n, #])`
-/

namespace A005104.P15296308374992721990
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028921 ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).prod

end

end A005104.P15296308374992721990

/-! ## A005104.P11171830932760723968

`A028921(n)+char[9]`
-/

namespace A005104.P11171830932760723968
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028921 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A005104.P11171830932760723968

/-! ## A005104.P6457084936175269426

`2^n*A005102(n)`
-/

namespace A005104.P6457084936175269426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A005102 n

end

end A005104.P6457084936175269426

/-! ## A005104.P13464231177479504241

`2^n*A030241(n)`
-/

namespace A005104.P13464231177479504241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A030241 n

end

end A005104.P13464231177479504241

/-!
# A005105: Class 1+ primes: primes of the form 2^i*3^j - 1 with i, j >= 0.

The programs for A005105, there is no canonical definition to state claims against.
-/

/-! ## A005105.P7648408690461512862

`∩[A219528(n+1), A293074(n+1)]`
-/

namespace A005105.P7648408690461512862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219528 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293074 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A005105.P7648408690461512862

/-! ## A005105.P4887696962253210504

`A069353(A376699(n+1))`
-/

namespace A005105.P4887696962253210504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069353 (A376699 (n + 1)).toNat

end

end A005105.P4887696962253210504

/-! ## A005105.P15687117482452139815

`∩[A069353(n+1), A219528(n+1)]`
-/

namespace A005105.P15687117482452139815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069353 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219528 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A005105.P15687117482452139815

/-! ## A005105.P9694544983019657462

`∩[A069353(n+1), A293074(n+1)]`
-/

namespace A005105.P9694544983019657462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069353 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293074 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A005105.P9694544983019657462

/-! ## A005105.P9107568367063594196

`∩[A003586(n+1)-1, A219528(n+1)]`
-/

namespace A005105.P9107568367063594196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003586 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219528 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A005105.P9107568367063594196

/-! ## A005105.P14317682378463929240

`∩[A055600(n+1)-2, A219528(n+1)]`
-/

namespace A005105.P14317682378463929240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055600 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219528 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A005105.P14317682378463929240

/-! ## A005105.P7035942523365317022

`∩[A069353(n+1), A293194(n+1)]`
-/

namespace A005105.P7035942523365317022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069353 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293194 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A005105.P7035942523365317022

/-! ## A005105.P4621140269479326158

`∩[A293074(n+1), A293194(n+1)]`
-/

namespace A005105.P4621140269479326158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293074 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293194 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A005105.P4621140269479326158

/-! ## A005105.P12410242301489510031

`∩[A069353(n+1), A293199(n+1)]`
-/

namespace A005105.P12410242301489510031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069353 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293199 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A005105.P12410242301489510031

/-! ## A005105.P15369542834665697514

`∩[A293074(n+1), A293199(n+1)]`
-/

namespace A005105.P15369542834665697514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293074 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293199 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A005105.P15369542834665697514

/-! ## A005105.P1627099413767018610

`∩[A293194(n+1), A293199(n+1)]`
-/

namespace A005105.P1627099413767018610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293194 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293199 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A005105.P1627099413767018610

/-! ## A005105.P1750364698360488909

`∩[A069353(n+1), A219669(n+1)]`
-/

namespace A005105.P1750364698360488909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069353 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219669 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A005105.P1750364698360488909

/-! ## A005105.P13763618734556716409

`∩[A055600(n+1)-2, A219669(n+1)]`
-/

namespace A005105.P13763618734556716409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055600 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219669 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A005105.P13763618734556716409

/-! ## A005105.P6555829750596419721

`∩[A069353(n+1), A219697(n+1)]`
-/

namespace A005105.P6555829750596419721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069353 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219697 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A005105.P6555829750596419721

/-! ## A005105.P1612273786549858164

`∩[A055600(n+1)-2, A219697(n+1)]`
-/

namespace A005105.P1612273786549858164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055600 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219697 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A005105.P1612273786549858164

/-!
# A005106: Class 2+ primes (for definition see A005105).

The programs for A005106, there is no canonical definition to state claims against.
-/

/-! ## A005106.P16727749323756987760

`p?[A005408(n)*A019269(A015053(n+1))]`
-/

namespace A005106.P16727749323756987760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n * A019269 (A015053 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A005106.P16727749323756987760

/-! ## A005106.P15291346067162724941

`p?[n*A019269(A007947(n+1))]`
-/

namespace A005106.P15291346067162724941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A019269 (A007947 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A005106.P15291346067162724941

/-! ## A005106.P1879599999713454117

`p?[n*A019269(A015053(n+1))]`
-/

namespace A005106.P1879599999713454117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A019269 (A015053 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A005106.P1879599999713454117

/-! ## A005106.P6757220009717624078

`A045319(eq[2, A126433(n+1)])`
-/

namespace A005106.P6757220009717624078
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126433 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A005106.P6757220009717624078

/-! ## A005106.P1598280415179442415

`A045344(eq[2, A126433(n+1)])`
-/

namespace A005106.P1598280415179442415
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126433 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A005106.P1598280415179442415

/-! ## A005106.P16360850262883183617

`A065091(eq[2, A126433(n+1)])`
-/

namespace A005106.P16360850262883183617
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126433 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A005106.P16360850262883183617

/-! ## A005106.P15646055081962838546

`A000040(eq[2, A126433(n+1)]+1)`
-/

namespace A005106.P15646055081962838546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126433 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A005106.P15646055081962838546

/-! ## A005106.P2637721627773607149

`A006005(eq[2, A126433(n+1)]+1)`
-/

namespace A005106.P2637721627773607149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126433 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A005106.P2637721627773607149

/-! ## A005106.P6829333409512408306

`A008578(eq[2, A126433(n+1)]+2)`
-/

namespace A005106.P6829333409512408306
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126433 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2)

end

end A005106.P6829333409512408306

/-!
# A005107: Class 3+ primes (for definition see A005105).

The programs for A005107, there is no canonical definition to state claims against.
-/

/-! ## A005107.P2658188182448623809

`A045319(eq[3, A126433(n+1)])`
-/

namespace A005107.P2658188182448623809
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126433 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A005107.P2658188182448623809

/-! ## A005107.P3202399719869167584

`A045344(eq[3, A126433(n+1)])`
-/

namespace A005107.P3202399719869167584
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126433 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A005107.P3202399719869167584

/-! ## A005107.P10711733265374091224

`A065091(eq[3, A126433(n+1)])`
-/

namespace A005107.P10711733265374091224
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126433 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A005107.P10711733265374091224

/-! ## A005107.P3947345772129095483

`A000040(eq[3, A126433(n+1)]+1)`
-/

namespace A005107.P3947345772129095483
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126433 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A005107.P3947345772129095483

/-! ## A005107.P8953984357453525255

`A006005(eq[3, A126433(n+1)]+1)`
-/

namespace A005107.P8953984357453525255
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126433 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A005107.P8953984357453525255

/-!
# A005108: Class 4+ primes (for definition see A005105).

The programs for A005108, there is no canonical definition to state claims against.
-/

/-! ## A005108.P4909493212850085755

`A045319(eq[4, A126433(n+1)])`
-/

namespace A005108.P4909493212850085755
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126433 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A005108.P4909493212850085755

/-! ## A005108.P9851096866854341655

`A045344(eq[4, A126433(n+1)])`
-/

namespace A005108.P9851096866854341655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126433 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A005108.P9851096866854341655

/-! ## A005108.P14780561959962882995

`A065091(eq[4, A126433(n+1)])`
-/

namespace A005108.P14780561959962882995
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126433 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A005108.P14780561959962882995

/-! ## A005108.P7726448449402691371

`A000040(eq[4, A126433(n+1)]+1)`
-/

namespace A005108.P7726448449402691371
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126433 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A005108.P7726448449402691371

/-! ## A005108.P6449620367407646459

`A008578(eq[4, A126433(n+1)]+2)`
-/

namespace A005108.P6449620367407646459
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126433 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2)

end

end A005108.P6449620367407646459

/-!
# A005109: Class 1- (or Pierpont) primes: primes of the form 2^t*3^u + 1.

The programs for A005109, there is no canonical definition to state claims against.
-/

/-! ## A005109.P4967434782859938958

`2^A374577(n+1)*3^A374578(n+1)+1`
-/

namespace A005109.P4967434782859938958
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A374577 (n + 1) : ℤ) * (3 : ℚ) ^ (A374578 (n + 1) : ℤ) + 1

end

end A005109.P4967434782859938958

/-! ## A005109.P10492177750257524338

`A055600(A375906(n+1))`
-/

namespace A005109.P10492177750257524338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055600 (A375906 (n + 1)).toNat

end

end A005109.P10492177750257524338

/-! ## A005109.P10820891354219524682

`∩[A055600(n+1), A219528(n+1)]`
-/

namespace A005109.P10820891354219524682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055600 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219528 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A005109.P10820891354219524682

/-! ## A005109.P84545858815729451

`∩[A003586(n+1)+1, A219528(n+1)]`
-/

namespace A005109.P84545858815729451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003586 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219528 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A005109.P84545858815729451

/-! ## A005109.P13526222615237755783

`∩[A069353(n+1)+2, A219528(n+1)]`
-/

namespace A005109.P13526222615237755783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069353 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219528 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A005109.P13526222615237755783

/-! ## A005109.P14646563458349734010

`∩[A002200(n+1), A055600(n+1)]`
-/

namespace A005109.P14646563458349734010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002200 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055600 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A005109.P14646563458349734010

/-! ## A005109.P11709497541136581798

`∩[A002200(n+1), A003586(n+1)+1]`
-/

namespace A005109.P11709497541136581798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002200 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003586 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A005109.P11709497541136581798

/-! ## A005109.P10006366825050025067

`∩[A002200(n+1), A069353(n+1)+2]`
-/

namespace A005109.P10006366825050025067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002200 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069353 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A005109.P10006366825050025067

/-! ## A005109.P823065307825892701

`∩[A055600(n+1), A219669(n+1)]`
-/

namespace A005109.P823065307825892701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055600 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219669 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A005109.P823065307825892701

/-! ## A005109.P18051844160462849696

`∩[A069353(n+1)+2, A219669(n+1)]`
-/

namespace A005109.P18051844160462849696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069353 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219669 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A005109.P18051844160462849696

/-! ## A005109.P4665576772363521685

`∩[A055600(n+1), A174144(n+1)]`
-/

namespace A005109.P4665576772363521685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055600 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174144 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A005109.P4665576772363521685

/-! ## A005109.P17234176974787645702

`∩[A055600(n+1), A219697(n+1)]`
-/

namespace A005109.P17234176974787645702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055600 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219697 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A005109.P17234176974787645702

/-! ## A005109.P4291797937446240862

`∩[A069353(n+1)+2, A219697(n+1)]`
-/

namespace A005109.P4291797937446240862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069353 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219697 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A005109.P4291797937446240862

/-!
# A005110: Class 2- primes (for definition see A005109).

The programs for A005110, there is no canonical definition to state claims against.
-/

/-! ## A005110.P11022068046922677018

`A045319(eq[2, A126805(n+1)])`
-/

namespace A005110.P11022068046922677018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126805 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A005110.P11022068046922677018

/-! ## A005110.P6396316684624125549

`A045344(eq[2, A126805(n+1)])`
-/

namespace A005110.P6396316684624125549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126805 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A005110.P6396316684624125549

/-! ## A005110.P1190835991001259802

`A065091(eq[2, A126805(n+1)])`
-/

namespace A005110.P1190835991001259802
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126805 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A005110.P1190835991001259802

/-! ## A005110.P8065258089444912984

`A004139(eq[2, A126805(n+2)])`
-/

namespace A005110.P8065258089444912984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126805 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A005110.P8065258089444912984

/-! ## A005110.P14879235262022111677

`A000040(eq[2, A126805(n+1)]+1)`
-/

namespace A005110.P14879235262022111677
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126805 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A005110.P14879235262022111677

/-! ## A005110.P15844861824844936869

`A006005(eq[2, A126805(n+1)]+1)`
-/

namespace A005110.P15844861824844936869
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126805 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A005110.P15844861824844936869

/-! ## A005110.P7476341197774822470

`A008578(eq[2, A126805(n+1)]+2)`
-/

namespace A005110.P7476341197774822470
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126805 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2)

end

end A005110.P7476341197774822470

/-!
# A005111: Class 3- primes (for definition see A005109).

The programs for A005111, there is no canonical definition to state claims against.
-/

/-! ## A005111.P15645177059006565661

`A045344(eq[3, A126805(n+1)])`
-/

namespace A005111.P15645177059006565661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126805 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A005111.P15645177059006565661

/-! ## A005111.P13333065725128333369

`A065091(eq[3, A126805(n+1)])`
-/

namespace A005111.P13333065725128333369
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126805 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A005111.P13333065725128333369

/-! ## A005111.P5827656471300713028

`A000040(eq[3, A126805(n+1)]+1)`
-/

namespace A005111.P5827656471300713028
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126805 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A005111.P5827656471300713028

/-! ## A005111.P15558439683742914196

`A045319(eq[1, A126805(n+1)-2])`
-/

namespace A005111.P15558439683742914196
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126805 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A005111.P15558439683742914196

/-! ## A005111.P15069461560171972199

`A004139(eq[3, A126805(n+1)]-1)`
-/

namespace A005111.P15069461560171972199
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126805 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n - 1)

end

end A005111.P15069461560171972199

/-! ## A005111.P2755452414164956725

`A008578(eq[3, A126805(n+1)]+2)`
-/

namespace A005111.P2755452414164956725
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126805 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2)

end

end A005111.P2755452414164956725

/-!
# A005112: Class 4- primes (for definition see A005109).

The programs for A005112, there is no canonical definition to state claims against.
-/

/-! ## A005112.P4901571913032772979

`A045344(eq[4, A126805(n+1)])`
-/

namespace A005112.P4901571913032772979
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126805 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A005112.P4901571913032772979

/-! ## A005112.P160274735694077556

`A065091(eq[4, A126805(n+1)])`
-/

namespace A005112.P160274735694077556
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126805 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A005112.P160274735694077556

/-! ## A005112.P7836013151597711448

`A000040(eq[4, A126805(n+1)]+1)`
-/

namespace A005112.P7836013151597711448
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126805 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A005112.P7836013151597711448

/-! ## A005112.P10663939119331737009

`A006005(eq[4, A126805(n+1)]+1)`
-/

namespace A005112.P10663939119331737009
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126805 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A005112.P10663939119331737009

/-! ## A005112.P2376755982553643235

`A045319(eq[2, A126805(n+1)-2])`
-/

namespace A005112.P2376755982553643235
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126805 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A005112.P2376755982553643235

/-! ## A005112.P6111597015095749853

`A008578(eq[4, A126805(n+1)]+2)`
-/

namespace A005112.P6111597015095749853
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126805 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2)

end

end A005112.P6111597015095749853

/-! ## A005112.P10771111610876006410

`A045319(eq[2, A126805(n+1)/2])`
-/

namespace A005112.P10771111610876006410
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126805 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n)

end

end A005112.P10771111610876006410

/-!
# A005113: Smallest prime in class n (sometimes written n+) according to the Erdős-Selfridge classification of primes.

The programs for A005113, there is no canonical definition to state claims against.
-/

/-! ## A005113.P16035381809273069392

`p?[A035513(A022370(n))]`
-/

namespace A005113.P16035381809273069392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035513 (A022370 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A005113.P16035381809273069392

/-!
# A005114: Untouchable numbers, also called nonaliquot numbers: impossible values for the sum of aliquot parts function (A001065).

The programs for A005114, there is no canonical definition to state claims against.
-/

/-! ## A005114.P8142168841399172717

`A048995(n+1)+1`
-/

namespace A005114.P8142168841399172717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048995 (n + 1) + 1

end

end A005114.P8142168841399172717

/-! ## A005114.P8369173915524601476

`comp[A078923(n+1)]`
-/

namespace A005114.P8369173915524601476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078923 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A005114.P8369173915524601476

/-! ## A005114.P3004787264878504994

`eq[0, A070015(n)]`
-/

namespace A005114.P3004787264878504994
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070015 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A005114.P3004787264878504994

/-! ## A005114.P16856633101374474792

`eq[0, A359132(n)+1]`
-/

namespace A005114.P16856633101374474792
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359132 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A005114.P16856633101374474792

/-! ## A005114.P17862012205382384061

`eq[0, A070016(n+1)]+2`
-/

namespace A005114.P17862012205382384061
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070016 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A005114.P17862012205382384061

/-! ## A005114.P9024438862785586567

`eq[0, A048138(n+2)]+2`
-/

namespace A005114.P9024438862785586567
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048138 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A005114.P9024438862785586567

/-! ## A005114.P12055687536897960759

`eq[0, A135244(n+2)]+2`
-/

namespace A005114.P12055687536897960759
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135244 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A005114.P12055687536897960759

/-! ## A005114.P2558927201737496768

`A020725(A048995(n+1))`
-/

namespace A005114.P2558927201737496768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A048995 (n + 1)).toNat

end

end A005114.P2558927201737496768

/-! ## A005114.P9874446010708491823

`eq[A057428(n), A359132(n)]`
-/

namespace A005114.P9874446010708491823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359132 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A005114.P9874446010708491823

/-! ## A005114.P13021885159719904451

`eq[A134824(n), A359132(n)]`
-/

namespace A005114.P13021885159719904451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359132 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A005114.P13021885159719904451

/-! ## A005114.P14831549040636788035

`A254667(record[gcd(n+2, A048138(n+2))])`
-/

namespace A005114.P14831549040636788035
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 2 : ℤ) (A048138 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254667 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A005114.P14831549040636788035

/-!
# A005115: Let i, i+d, i+2d, ..., i+(n-1)d be an n-term arithmetic progression of primes; choose the one which minimizes the last term; then a(n) = last term i+(n-1)d.

The programs for A005115, there is no canonical definition to state claims against.
-/

/-! ## A005115.P9698733978945474964

`A113827(n+1)+n*A093364(n+1)`
-/

namespace A005115.P9698733978945474964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113827 (n + 1) + (n : ℤ) * A093364 (n + 1)

end

end A005115.P9698733978945474964

/-! ## A005115.P7371089728825669814

`A133277(∑[n+1])`
-/

namespace A005115.P7371089728825669814
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133277 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A005115.P7371089728825669814

/-! ## A005115.P16586786632085708109

`record[A133277(A133825(n))]`
-/

namespace A005115.P16586786632085708109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133277 (A133825 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005115.P16586786632085708109

/-! ## A005115.P6550537654294189027

`record[A133277(abs(A122432(n)))]`
-/

namespace A005115.P6550537654294189027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133277 |A122432 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005115.P6550537654294189027

/-!
# A005116: Number of protruded partitions of n with largest part at most 10.

The programs for A005116, there is no canonical definition to state claims against.
-/

/-! ## A005116.P5227990567380409265

`A055086(A055099(n))+char[5]`
-/

namespace A005116.P5227990567380409265
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 (A055099 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A005116.P5227990567380409265

/-! ## A005116.P15537139202368897070

`A230441(n)+A003056(A119375(n))`
-/

namespace A005116.P15537139202368897070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230441 n + A003056 (A119375 n).toNat

end

end A005116.P15537139202368897070

/-! ## A005116.P3184634383576158818

`A122311(A236559(n))+A065494(n)`
-/

namespace A005116.P3184634383576158818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122311 (A236559 n).toNat + A065494 n

end

end A005116.P3184634383576158818

/-! ## A005116.P9820174421406108956

`A014172(n)-A124010(A000142(n))`
-/

namespace A005116.P9820174421406108956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014172 n - A124010 (A000142 n).toNat

end

end A005116.P9820174421406108956

/-!
# A005117: Squarefree numbers: numbers that are not divisible by a square greater than 1.

The programs for A005117, the canonical program `A005117.P8954503998193661401` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005117 has offset 1).

The definition of A005117 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A005117.P1656282683679404455

`comp[A105570(n)]`
-/

namespace A005117.P1656282683679404455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A005117.P1656282683679404455

namespace A005117

/-- `comp[A105570(n)]` -/
def P1656282683679404455.Spec : Prop :=
  ∀ n, (P1656282683679404455.a n : ℤ) = A005117 (n + 1)

end A005117

/-! ## A005117.P9795682027517747778

`sqrt(A062503(n+1))`
-/

namespace A005117.P9795682027517747778
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A062503 (n + 1) : ℝ)

end

end A005117.P9795682027517747778

namespace A005117

/-- `sqrt(A062503(n+1))` -/
def P9795682027517747778.Spec : Prop :=
  ∀ n, P9795682027517747778.a n = (A005117 (n + 1) : ℝ)

end A005117

/-! ## A005117.P469435979771403822

`record[A003967(n+1)]`
-/

namespace A005117.P469435979771403822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003967 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005117.P469435979771403822

namespace A005117

/-- `record[A003967(n+1)]` -/
def P469435979771403822.Spec : Prop :=
  ∀ n, P469435979771403822.a n = A005117 (n + 1)

end A005117

/-! ## A005117.P18161819736301206910

`record[A007913(n+1)]`
-/

namespace A005117.P18161819736301206910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005117.P18161819736301206910

namespace A005117

/-- `record[A007913(n+1)]` -/
def P18161819736301206910.Spec : Prop :=
  ∀ n, P18161819736301206910.a n = A005117 (n + 1)

end A005117

/-! ## A005117.P8954503998193661401

`record[A007947(n+1)]`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A005117

/-- `record[A007947(n+1)]` -/
def P8954503998193661401.Spec : Prop :=
  ∀ n, P8954503998193661401.a n = A005117 (n + 1)

theorem P8954503998193661401.correct : P8954503998193661401.Spec := by
  intro n
  simp only [A005117, Nat.add_sub_cancel]

end A005117

/-! ## A005117.P17642468032649694292

`record[A055231(n+1)]`
-/

namespace A005117.P17642468032649694292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055231 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005117.P17642468032649694292

namespace A005117

/-- `record[A055231(n+1)]` -/
def P17642468032649694292.Spec : Prop :=
  ∀ n, P17642468032649694292.a n = A005117 (n + 1)

end A005117

/-! ## A005117.P12209590051616028672

`record[A055653(n+1)]`
-/

namespace A005117.P12209590051616028672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055653 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005117.P12209590051616028672

namespace A005117

/-- `record[A055653(n+1)]` -/
def P12209590051616028672.Spec : Prop :=
  ∀ n, P12209590051616028672.a n = A005117 (n + 1)

end A005117

/-! ## A005117.P17270742994063204408

`record[A083346(n+1)]`
-/

namespace A005117.P17270742994063204408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083346 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005117.P17270742994063204408

namespace A005117

/-- `record[A083346(n+1)]` -/
def P17270742994063204408.Spec : Prop :=
  ∀ n, P17270742994063204408.a n = A005117 (n + 1)

end A005117

/-! ## A005117.P7932785405563101613

`A243348(n+1)+n+1`
-/

namespace A005117.P7932785405563101613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243348 (n + 1) + (n + 1 : ℤ)

end

end A005117.P7932785405563101613

namespace A005117

/-- `A243348(n+1)+n+1` -/
def P7932785405563101613.Spec : Prop :=
  ∀ n, P7932785405563101613.a n = A005117 (n + 1)

end A005117

/-! ## A005117.P13747517874483829690

`eq[1, abs(A008683(n+1))]+1`
-/

namespace A005117.P13747517874483829690
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008683 (n + 1)|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A005117.P13747517874483829690

namespace A005117

/-- `eq[1, abs(A008683(n+1))]+1` -/
def P13747517874483829690.Spec : Prop :=
  ∀ n, (P13747517874483829690.a n : ℤ) = A005117 (n + 1)

end A005117

/-! ## A005117.P12698144245312521442

`eq[0, a(A008683(n)²)²]` with `a(0)=1, a(1)=0`
-/

namespace A005117.P12698144245312521442
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n f2 =>
  f2 (A008683 n ^ 2).toNat ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A005117.P12698144245312521442

namespace A005117

/-- `eq[0, a(A008683(n)²)²]` -/
def P12698144245312521442.Spec : Prop :=
  ∀ n, (P12698144245312521442.a n : ℤ) = A005117 (n + 1)

end A005117

/-! ## A005117.P6531558222696957500

`A161203(n+1)-(n+1)²`
-/

namespace A005117.P6531558222696957500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161203 (n + 1) - ((n + 1) ^ 2 : ℤ)

end

end A005117.P6531558222696957500

namespace A005117

/-- `A161203(n+1)-(n+1)²` -/
def P6531558222696957500.Spec : Prop :=
  ∀ n, P6531558222696957500.a n = A005117 (n + 1)

end A005117

/-! ## A005117.P4244785979579298453

`eq[1, A008683(lcm(2, n+1))²]+1`
-/

namespace A005117.P4244785979579298453
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (Nat.lcm 2 (n + 1)) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A005117.P4244785979579298453

namespace A005117

/-- `eq[1, A008683(lcm(2, n+1))²]+1` -/
def P4244785979579298453.Spec : Prop :=
  ∀ n, (P4244785979579298453.a n : ℤ) = A005117 (n + 1)

end A005117

/-! ## A005117.P15070250461543343239

`eq[1, A008683(C(n+1, n))²]+1`
-/

namespace A005117.P15070250461543343239
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (Nat.choose (n + 1) n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A005117.P15070250461543343239

namespace A005117

/-- `eq[1, A008683(C(n+1, n))²]+1` -/
def P15070250461543343239.Spec : Prop :=
  ∀ n, (P15070250461543343239.a n : ℤ) = A005117 (n + 1)

end A005117

/-! ## A005117.P5873284363027552536

`eq[1, A008683(2*n+1-n)²]+1`
-/

namespace A005117.P5873284363027552536
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (2 * n + 1 - n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A005117.P5873284363027552536

namespace A005117

/-- `eq[1, A008683(2*n+1-n)²]+1` -/
def P5873284363027552536.Spec : Prop :=
  ∀ n, (P5873284363027552536.a n : ℤ) = A005117 (n + 1)

end A005117

/-! ## A005117.P18261172050630388111

`eq[A003982(n), A105570(n)]`
-/

namespace A005117.P18261172050630388111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A005117.P18261172050630388111

namespace A005117

/-- `eq[A003982(n), A105570(n)]` -/
def P18261172050630388111.Spec : Prop :=
  ∀ n, (P18261172050630388111.a n : ℤ) = A005117 (n + 1)

end A005117

/-! ## A005117.P3318032885878795530

`∪[A144338(n+1), A001779(n)]`
-/

namespace A005117.P3318032885878795530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144338 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001779 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A005117.P3318032885878795530

namespace A005117

/-- `∪[A144338(n+1), A001779(n)]` -/
def P3318032885878795530.Spec : Prop :=
  ∀ n, (P3318032885878795530.a n : ℤ) = A005117 (n + 1)

end A005117

/-! ## A005117.P8745032084956939725

`∪[A002604(n), A144338(n+1)]`
-/

namespace A005117.P8745032084956939725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002604 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144338 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A005117.P8745032084956939725

namespace A005117

/-- `∪[A002604(n), A144338(n+1)]` -/
def P8745032084956939725.Spec : Prop :=
  ∀ n, (P8745032084956939725.a n : ℤ) = A005117 (n + 1)

end A005117

/-! ## A005117.P784619730385378819

`∪[A255179(n), A144338(n+1)]`
-/

namespace A005117.P784619730385378819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255179 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144338 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A005117.P784619730385378819

namespace A005117

/-- `∪[A255179(n), A144338(n+1)]` -/
def P784619730385378819.Spec : Prop :=
  ∀ n, (P784619730385378819.a n : ℤ) = A005117 (n + 1)

end A005117

/-! ## A005117.P8524412956918994456

`A243349(n+1)+A243290(n+1)`
-/

namespace A005117.P8524412956918994456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243349 (n + 1) + A243290 (n + 1)

end

end A005117.P8524412956918994456

namespace A005117

/-- `A243349(n+1)+A243290(n+1)` -/
def P8524412956918994456.Spec : Prop :=
  ∀ n, P8524412956918994456.a n = A005117 (n + 1)

end A005117

/-!
# A005118: Number of simple allowable sequences on 1..n containing the permutation 12...n.

The programs for A005118, there is no canonical definition to state claims against.
-/

/-! ## A005118.P2777323388429670518

`A219339(C(n, 2))`
-/

namespace A005118.P2777323388429670518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219339 (Nat.choose n 2)

end

end A005118.P2777323388429670518

/-! ## A005118.P13550597038556907850

`A219339(∑[n]-n)`
-/

namespace A005118.P13550597038556907850
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219339 (∑ j ∈ Finset.range (n + 1), f1 j - n)

end

end A005118.P13550597038556907850

/-! ## A005118.P11256349787383266439

`A219272(∑[A238531(n)-1])`
-/

namespace A005118.P11256349787383266439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238531 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219272 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A005118.P11256349787383266439

/-! ## A005118.P2388081270728804251

`A219274(lt[A219274(n+1), 3])`
-/

namespace A005118.P2388081270728804251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219274 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219274 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A005118.P2388081270728804251

/-! ## A005118.P1224516556769619932

`A193536(A004006(n))`
-/

namespace A005118.P1224516556769619932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193536 (A004006 n).toNat

end

end A005118.P1224516556769619932

/-!
# A005119: Infinitesimal generator of x*(x + 1).

The programs for A005119, there is no canonical definition to state claims against.
-/

/-! ## A005119.P9002235543373599160

`A122031(lcm(2, A013290(n)))`
-/

namespace A005119.P9002235543373599160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122031 (Int.lcm 2 (A013290 n))

end

end A005119.P9002235543373599160

/-!
# A005120: A sixth-order linear divisibility sequence: a(n+6) = -3*a(n+5) - 5*a(n+4) - 5*a(n+3) - 5*a(n+2) - 3*a(n+1) - a(n).

The programs for A005120, the canonical program `A005120.P6021012035630790569` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005120 has offset 0).

The definition of A005120 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 550 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A005120.P6021012035630790569

`Δ[A000931(n+1)*A176971(n+1)]`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A005120

/-- `Δ[A000931(n+1)*A176971(n+1)]` -/
def P6021012035630790569.Spec : Prop :=
  ∀ n, P6021012035630790569.a n = A005120 n

theorem P6021012035630790569.correct : P6021012035630790569.Spec := by
  intro n
  simp only [A005120]

end A005120

/-! ## A005120.P8947616034960417301

`Δ[A078027(n+3)*A176971(n+1)]`
-/

namespace A005120.P8947616034960417301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078027 (n + 3) * A176971 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A005120.P8947616034960417301

namespace A005120

/-- `Δ[A078027(n+3)*A176971(n+1)]` -/
def P8947616034960417301.Spec : Prop :=
  ∀ n, P8947616034960417301.a n = A005120 n

end A005120

/-!
# A005121: Number of ultradissimilarity relations on an n-set.

The programs for A005121, there is no canonical definition to state claims against.
-/

/-! ## A005121.P17813474239619354868

`ceil(A331957(n+1)/2)`
-/

namespace A005121.P17813474239619354868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A331957 (n + 1) : ℚ) / 2⌉

end

end A005121.P17813474239619354868

/-! ## A005121.P4369709018157177575

`A331957(n+1)/(A057427(n)+1)`
-/

namespace A005121.P4369709018157177575
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A331957 (n + 1) : ℚ) / (A057427 n + 1 : ℚ)

end

end A005121.P4369709018157177575

/-! ## A005121.P8624340387339077082

`A330776(∑[n+1])`
-/

namespace A005121.P8624340387339077082
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330776 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A005121.P8624340387339077082

/-! ## A005121.P12960990447615875667

`A330776(A000217(n+1))+char[45]`
-/

namespace A005121.P12960990447615875667
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  45

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330776 (A000217 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A005121.P12960990447615875667

/-!
# A005122: Numbers k such that 8k - 1 is prime.

The programs for A005122, the canonical program `A005122.P2819458909718632145` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005122 has offset 1).

The definition of A005122 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A005122.P2819458909718632145

`ceil(p?[8*n-1]/8)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A005122

/-- `ceil(p?[8*n-1]/8)` -/
def P2819458909718632145.Spec : Prop :=
  ∀ n, P2819458909718632145.a n = A005122 (n + 1)

theorem P2819458909718632145.correct : P2819458909718632145.Spec := by
  intro n
  simp only [A005122, Nat.add_sub_cancel]

end A005122

/-! ## A005122.P15706113566702457852

`(floor(p?[8*n-1]/2)+1)/4`
-/

namespace A005122.P15706113566702457852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * n : ℤ) - 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌊(f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / 2⌋ + 1 : ℚ) / 4

end

end A005122.P15706113566702457852

namespace A005122

/-- `(floor(p?[8*n-1]/2)+1)/4` -/
def P15706113566702457852.Spec : Prop :=
  ∀ n, P15706113566702457852.a n = (A005122 (n + 1) : ℚ)

end A005122

/-! ## A005122.P14303029318745883737

`A139487(n+1)+1`
-/

namespace A005122.P14303029318745883737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139487 (n + 1) + 1

end

end A005122.P14303029318745883737

namespace A005122

/-- `A139487(n+1)+1` -/
def P14303029318745883737.Spec : Prop :=
  ∀ n, P14303029318745883737.a n = A005122 (n + 1)

end A005122

/-! ## A005122.P8672392498852716683

`A153766(n+1)-1`
-/

namespace A005122.P8672392498852716683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153766 (n + 1) - 1

end

end A005122.P8672392498852716683

namespace A005122

/-- `A153766(n+1)-1` -/
def P8672392498852716683.Spec : Prop :=
  ∀ n, P8672392498852716683.a n = A005122 (n + 1)

theorem P8672392498852716683.correct : P8672392498852716683.Spec := by
  intro n
  simp only [A005122, Nat.add_sub_cancel, A005122.P8672392498852716683.a, A005122.P2819458909718632145.f1, A005122.P2819458909718632145.a, A153766, A153766.P15965562508492777775.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A005122

/-! ## A005122.P14927160630382959462

`A186303(n+1)/4`
-/

namespace A005122.P14927160630382959462
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A186303 (n + 1) : ℚ) / 4

end

end A005122.P14927160630382959462

namespace A005122

/-- `A186303(n+1)/4` -/
def P14927160630382959462.Spec : Prop :=
  ∀ n, P14927160630382959462.a n = (A005122 (n + 1) : ℚ)

end A005122

/-! ## A005122.P4174808065670747330

`(A186302(n+1)+1)/4`
-/

namespace A005122.P4174808065670747330
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A186302 (n + 1) + 1 : ℚ) / 4

end

end A005122.P4174808065670747330

namespace A005122

/-- `(A186302(n+1)+1)/4` -/
def P4174808065670747330.Spec : Prop :=
  ∀ n, P4174808065670747330.a n = (A005122 (n + 1) : ℚ)

end A005122

/-! ## A005122.P5357668181272357390

`record[A153766(A328399(n))-1]`
-/

namespace A005122.P5357668181272357390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153766 (A328399 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005122.P5357668181272357390

namespace A005122

/-- `record[A153766(A328399(n))-1]` -/
def P5357668181272357390.Spec : Prop :=
  ∀ n, P5357668181272357390.a n = A005122 (n + 1)

end A005122

/-! ## A005122.P12039046111319943319

`A022762(n+1)-A005123(n+1)`
-/

namespace A005122.P12039046111319943319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022762 (n + 1) - A005123 (n + 1)

end

end A005122.P12039046111319943319

namespace A005122

/-- `A022762(n+1)-A005123(n+1)` -/
def P12039046111319943319.Spec : Prop :=
  ∀ n, P12039046111319943319.a n = A005122 (n + 1)

theorem P12039046111319943319.correct : P12039046111319943319.Spec := by
  intro n
  simp only [A005122, Nat.add_sub_cancel, A005122.P12039046111319943319.a, A005122.P2819458909718632145.f1, A005122.P2819458909718632145.a, A005123, A005123.P4885488379496739982.a, A022762, A022762.P18043620693348096952.a, A007519, A007519.P11660314281699166777.f1, A007519.P11660314281699166777.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A005122

/-! ## A005122.P11040679039209001046

`gcd(A186303(n+1), A282039(n+1))`
-/

namespace A005122.P11040679039209001046
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A186303 (n + 1)) (A282039 (n + 1))

end

end A005122.P11040679039209001046

namespace A005122

/-- `gcd(A186303(n+1), A282039(n+1))` -/
def P11040679039209001046.Spec : Prop :=
  ∀ n, (P11040679039209001046.a n : ℤ) = A005122 (n + 1)

end A005122

/-! ## A005122.P7760368360032886688

`A022762(n+1)-(A153762(n+1)+1)`
-/

namespace A005122.P7760368360032886688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022762 (n + 1) - (A153762 (n + 1) + 1)

end

end A005122.P7760368360032886688

namespace A005122

/-- `A022762(n+1)-(A153762(n+1)+1)` -/
def P7760368360032886688.Spec : Prop :=
  ∀ n, P7760368360032886688.a n = A005122 (n + 1)

end A005122

/-! ## A005122.P2193436139705866240

`record[A005099(n+1)/A020639(A005099(n+1))]`
-/

namespace A005122.P2193436139705866240
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005099 (n + 1) : ℚ) / (A020639 (A005099 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005122.P2193436139705866240

namespace A005122

/-- `record[A005099(n+1)/A020639(A005099(n+1))]` -/
def P2193436139705866240.Spec : Prop :=
  ∀ n, P2193436139705866240.a n = (A005122 (n + 1) : ℚ)

end A005122

/-! ## A005122.P10147527255037641921

`A258835(eq[n+1, A258835(n)])`
-/

namespace A005122.P10147527255037641921
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258835 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258835 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A005122.P10147527255037641921

namespace A005122

/-- `A258835(eq[n+1, A258835(n)])` -/
def P10147527255037641921.Spec : Prop :=
  ∀ n, P10147527255037641921.a n = A005122 (n + 1)

end A005122

/-! ## A005122.P15400646882326291747

`A258835(eq[1, A258835(n)-n])`
-/

namespace A005122.P15400646882326291747
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258835 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258835 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A005122.P15400646882326291747

namespace A005122

/-- `A258835(eq[1, A258835(n)-n])` -/
def P15400646882326291747.Spec : Prop :=
  ∀ n, P15400646882326291747.a n = A005122 (n + 1)

end A005122

/-! ## A005122.P14749212876273783189

`eq[1, A001222(abs(1-8*n))]`
-/

namespace A005122.P14749212876273783189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 |1 - (8 * n : ℤ)|.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A005122.P14749212876273783189

namespace A005122

/-- `eq[1, A001222(abs(1-8*n))]` -/
def P14749212876273783189.Spec : Prop :=
  ∀ n, (P14749212876273783189.a n : ℤ) = A005122 (n + 1)

end A005122

/-! ## A005122.P13225475599358846908

`eq[2, A000005(8*n+7)]+1`
-/

namespace A005122.P13225475599358846908
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (8 * n + 7)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A005122.P13225475599358846908

namespace A005122

/-- `eq[2, A000005(8*n+7)]+1` -/
def P13225475599358846908.Spec : Prop :=
  ∀ n, (P13225475599358846908.a n : ℤ) = A005122 (n + 1)

end A005122

/-! ## A005122.P17757892614961969479

`lt[A001222(8*n+7), 2]+1`
-/

namespace A005122.P17757892614961969479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (8 * n + 7)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A005122.P17757892614961969479

namespace A005122

/-- `lt[A001222(8*n+7), 2]+1` -/
def P17757892614961969479.Spec : Prop :=
  ∀ n, (P17757892614961969479.a n : ℤ) = A005122 (n + 1)

end A005122

/-! ## A005122.P9066301610546249175

`eq[1, A001222(2*(4*(n+1)-1)+1)]+1`
-/

namespace A005122.P9066301610546249175
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (2 * ((4 * (n + 1) : ℤ) - 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A005122.P9066301610546249175

namespace A005122

/-- `eq[1, A001222(2*(4*(n+1)-1)+1)]+1` -/
def P9066301610546249175.Spec : Prop :=
  ∀ n, (P9066301610546249175.a n : ℤ) = A005122 (n + 1)

end A005122

/-! ## A005122.P18106897218310701831

`A000203(A007522(n+1))/8`
-/

namespace A005122.P18106897218310701831
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (A007522 (n + 1)).toNat : ℚ) / 8

end

end A005122.P18106897218310701831

namespace A005122

/-- `A000203(A007522(n+1))/8` -/
def P18106897218310701831.Spec : Prop :=
  ∀ n, P18106897218310701831.a n = (A005122 (n + 1) : ℚ)

end A005122

/-! ## A005122.P3884226094514956760

`A061800(A139487(n+1))`
-/

namespace A005122.P3884226094514956760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061800 (A139487 (n + 1)).toNat

end

end A005122.P3884226094514956760

namespace A005122

/-- `A061800(A139487(n+1))` -/
def P3884226094514956760.Spec : Prop :=
  ∀ n, P3884226094514956760.a n = A005122 (n + 1)

end A005122

/-! ## A005122.P7852495886076309272

`eq[1, A101264(A004767(n))]+1`
-/

namespace A005122.P7852495886076309272
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101264 (A004767 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A005122.P7852495886076309272

namespace A005122

/-- `eq[1, A101264(A004767(n))]+1` -/
def P7852495886076309272.Spec : Prop :=
  ∀ n, (P7852495886076309272.a n : ℤ) = A005122 (n + 1)

end A005122

/-!
# A005123: Numbers k such that 8k + 1 is prime.

The programs for A005123, the canonical program `A005123.P4885488379496739982` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005123 has offset 1).

The definition of A005123 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007519, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A005123.P4885488379496739982

`(A007519(n+1)-1)/8`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A005123

/-- `(A007519(n+1)-1)/8` -/
def P4885488379496739982.Spec : Prop :=
  ∀ n, P4885488379496739982.a n = (A005123 (n + 1) : ℚ)

end A005123

/-! ## A005123.P8319903630203170809

`floor(p?[8*n+1]/2)/4`
-/

namespace A005123.P8319903630203170809
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌊(f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℚ) / 2⌋ : ℚ) / 4

end

end A005123.P8319903630203170809

namespace A005123

/-- `floor(p?[8*n+1]/2)/4` -/
def P8319903630203170809.Spec : Prop :=
  ∀ n, P8319903630203170809.a n = (A005123 (n + 1) : ℚ)

end A005123

/-! ## A005123.P8879485229336557095

`(ceil(p?[8*n+1]/2)-1)/4`
-/

namespace A005123.P8879485229336557095
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌈(f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℚ) / 2⌉ - 1 : ℚ) / 4

end

end A005123.P8879485229336557095

namespace A005123

/-- `(ceil(p?[8*n+1]/2)-1)/4` -/
def P8879485229336557095.Spec : Prop :=
  ∀ n, P8879485229336557095.a n = (A005123 (n + 1) : ℚ)

end A005123

/-! ## A005123.P8273743697477853713

`A153762(n+1)+1`
-/

namespace A005123.P8273743697477853713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153762 (n + 1) + 1

end

end A005123.P8273743697477853713

namespace A005123

/-- `A153762(n+1)+1` -/
def P8273743697477853713.Spec : Prop :=
  ∀ n, P8273743697477853713.a n = A005123 (n + 1)

end A005123

/-! ## A005123.P8022766627361812236

`A186293(n+1)/4`
-/

namespace A005123.P8022766627361812236
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A186293 (n + 1) : ℚ) / 4

end

end A005123.P8022766627361812236

namespace A005123

/-- `A186293(n+1)/4` -/
def P8022766627361812236.Spec : Prop :=
  ∀ n, P8022766627361812236.a n = (A005123 (n + 1) : ℚ)

end A005123

/-! ## A005123.P8299917815467770089

`floor(A186294(n+1)/4)`
-/

namespace A005123.P8299917815467770089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A186294 (n + 1) : ℚ) / 4⌋

end

end A005123.P8299917815467770089

namespace A005123

/-- `floor(A186294(n+1)/4)` -/
def P8299917815467770089.Spec : Prop :=
  ∀ n, P8299917815467770089.a n = A005123 (n + 1)

end A005123

/-! ## A005123.P5862338976127175288

`floor(A007519(n+1)/8)`
-/

namespace A005123.P5862338976127175288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A007519 (n + 1) : ℚ) / 8⌋

end

end A005123.P5862338976127175288

namespace A005123

/-- `floor(A007519(n+1)/8)` -/
def P5862338976127175288.Spec : Prop :=
  ∀ n, P5862338976127175288.a n = A005123 (n + 1)

end A005123

/-! ## A005123.P5267907310918459843

`A022762(n+1)-A005122(n+1)`
-/

namespace A005123.P5267907310918459843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022762 (n + 1) - A005122 (n + 1)

end

end A005123.P5267907310918459843

namespace A005123

/-- `A022762(n+1)-A005122(n+1)` -/
def P5267907310918459843.Spec : Prop :=
  ∀ n, P5267907310918459843.a n = A005123 (n + 1)

end A005123

/-! ## A005123.P15330624814107412018

`A022762(n+1)+1-A153766(n+1)`
-/

namespace A005123.P15330624814107412018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022762 (n + 1) + (1 - A153766 (n + 1))

end

end A005123.P15330624814107412018

namespace A005123

/-- `A022762(n+1)+1-A153766(n+1)` -/
def P15330624814107412018.Spec : Prop :=
  ∀ n, P15330624814107412018.a n = A005123 (n + 1)

end A005123

/-! ## A005123.P4509425662347718076

`eq[1, A237053(4*n)]`
-/

namespace A005123.P4509425662347718076
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237053 (4 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A005123.P4509425662347718076

namespace A005123

/-- `eq[1, A237053(4*n)]` -/
def P4509425662347718076.Spec : Prop :=
  ∀ n, (P4509425662347718076.a n : ℤ) = A005123 (n + 1)

end A005123

/-! ## A005123.P16226080170384184092

`filter[A329269(n+2), A123110(#)]`
-/

namespace A005123.P16226080170384184092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329269 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A123110 (f1 j).toNat = 1) n)

end

end A005123.P16226080170384184092

namespace A005123

/-- `filter[A329269(n+2), A123110(#)]` -/
def P16226080170384184092.Spec : Prop :=
  ∀ n, P16226080170384184092.a n = A005123 (n + 1)

end A005123

/-! ## A005123.P7540646510548772110

`eq[2, A305973(4*n+1)]`
-/

namespace A005123.P7540646510548772110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305973 (4 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A005123.P7540646510548772110

namespace A005123

/-- `eq[2, A305973(4*n+1)]` -/
def P7540646510548772110.Spec : Prop :=
  ∀ n, (P7540646510548772110.a n : ℤ) = A005123 (n + 1)

end A005123

/-! ## A005123.P11428282057140962109

`eq[1, A101264(4*n)]`
-/

namespace A005123.P11428282057140962109
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101264 (4 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A005123.P11428282057140962109

namespace A005123

/-- `eq[1, A101264(4*n)]` -/
def P11428282057140962109.Spec : Prop :=
  ∀ n, (P11428282057140962109.a n : ℤ) = A005123 (n + 1)

end A005123

/-! ## A005123.P13505013573598186171

`eq[1, A001222(8*n+1)]`
-/

namespace A005123.P13505013573598186171
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (8 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A005123.P13505013573598186171

namespace A005123

/-- `eq[1, A001222(8*n+1)]` -/
def P13505013573598186171.Spec : Prop :=
  ∀ n, (P13505013573598186171.a n : ℤ) = A005123 (n + 1)

end A005123

/-! ## A005123.P12277816438007605906

`eq[2, A000005(8*n+1)]`
-/

namespace A005123.P12277816438007605906
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (8 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A005123.P12277816438007605906

namespace A005123

/-- `eq[2, A000005(8*n+1)]` -/
def P12277816438007605906.Spec : Prop :=
  ∀ n, (P12277816438007605906.a n : ℤ) = A005123 (n + 1)

end A005123

/-! ## A005123.P844488351285560989

`lt[n+2, A020639(8*n+1)]`
-/

namespace A005123.P844488351285560989
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (8 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A005123.P844488351285560989

namespace A005123

/-- `lt[n+2, A020639(8*n+1)]` -/
def P844488351285560989.Spec : Prop :=
  ∀ n, (P844488351285560989.a n : ℤ) = A005123 (n + 1)

end A005123

/-! ## A005123.P4879451747119155444

`∩[A014132(n+1), A329269(n+1)]`
-/

namespace A005123.P4879451747119155444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014132 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329269 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A005123.P4879451747119155444

namespace A005123

/-- `∩[A014132(n+1), A329269(n+1)]` -/
def P4879451747119155444.Spec : Prop :=
  ∀ n, (P4879451747119155444.a n : ℤ) = A005123 (n + 1)

end A005123

/-! ## A005123.P6559802195062348375

`eq[1, A365958(n+1)]+1`
-/

namespace A005123.P6559802195062348375
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365958 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A005123.P6559802195062348375

namespace A005123

/-- `eq[1, A365958(n+1)]+1` -/
def P6559802195062348375.Spec : Prop :=
  ∀ n, (P6559802195062348375.a n : ℤ) = A005123 (n + 1)

end A005123

/-! ## A005123.P4395811532331379488

`A020725(A153762(n+1))`
-/

namespace A005123.P4395811532331379488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A153762 (n + 1)).toNat

end

end A005123.P4395811532331379488

namespace A005123

/-- `A020725(A153762(n+1))` -/
def P4395811532331379488.Spec : Prop :=
  ∀ n, P4395811532331379488.a n = A005123 (n + 1)

end A005123

/-! ## A005123.P3860013651370527300

`eq[1, A001222(A004768(n))]+1`
-/

namespace A005123.P3860013651370527300
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A004768 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A005123.P3860013651370527300

namespace A005123

/-- `eq[1, A001222(A004768(n))]+1` -/
def P3860013651370527300.Spec : Prop :=
  ∀ n, (P3860013651370527300.a n : ℤ) = A005123 (n + 1)

end A005123

/-!
# A005124: Numbers k such that 8k + 3 is prime.

The programs for A005124, the canonical program `A005124.P2963219177605090959` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005124 has offset 1).

The definition of A005124 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A005124.P17542706196921518181

`(floor(p?[8*n+3]/2)-1)/4`
-/

namespace A005124.P17542706196921518181
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n + 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌊(f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℚ) / 2⌋ - 1 : ℚ) / 4

end

end A005124.P17542706196921518181

namespace A005124

/-- `(floor(p?[8*n+3]/2)-1)/4` -/
def P17542706196921518181.Spec : Prop :=
  ∀ n, P17542706196921518181.a n = (A005124 (n + 1) : ℚ)

end A005124

/-! ## A005124.P4704732572955484104

`(ceil(p?[8*n+3]/2)-2)/4`
-/

namespace A005124.P4704732572955484104
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n + 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌈(f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℚ) / 2⌉ - 2 : ℚ) / 4

end

end A005124.P4704732572955484104

namespace A005124

/-- `(ceil(p?[8*n+3]/2)-2)/4` -/
def P4704732572955484104.Spec : Prop :=
  ∀ n, P4704732572955484104.a n = (A005124 (n + 1) : ℚ)

end A005124

/-! ## A005124.P2963219177605090959

`floor(A186296(n+1)/4)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A005124

/-- `floor(A186296(n+1)/4)` -/
def P2963219177605090959.Spec : Prop :=
  ∀ n, P2963219177605090959.a n = A005124 (n + 1)

theorem P2963219177605090959.correct : P2963219177605090959.Spec := by
  intro n
  simp only [A005124, Nat.add_sub_cancel]

end A005124

/-! ## A005124.P3122688451175522927

`floor(A007520(n+1)/8)`
-/

namespace A005124.P3122688451175522927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A007520 (n + 1) : ℚ) / 8⌋

end

end A005124.P3122688451175522927

namespace A005124

/-- `floor(A007520(n+1)/8)` -/
def P3122688451175522927.Spec : Prop :=
  ∀ n, P3122688451175522927.a n = A005124 (n + 1)

end A005124

/-! ## A005124.P11507149189412316705

`(A186297(n+1)-1)/4`
-/

namespace A005124.P11507149189412316705
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A186297 (n + 1) - 1 : ℚ) / 4

end

end A005124.P11507149189412316705

namespace A005124

/-- `(A186297(n+1)-1)/4` -/
def P11507149189412316705.Spec : Prop :=
  ∀ n, P11507149189412316705.a n = (A005124 (n + 1) : ℚ)

end A005124

/-! ## A005124.P8873586043932799856

`A022764(n+1)-A005125(n+1)`
-/

namespace A005124.P8873586043932799856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022764 (n + 1) - A005125 (n + 1)

end

end A005124.P8873586043932799856

namespace A005124

/-- `A022764(n+1)-A005125(n+1)` -/
def P8873586043932799856.Spec : Prop :=
  ∀ n, P8873586043932799856.a n = A005124 (n + 1)

end A005124

/-! ## A005124.P1937594601030659853

`eq[1, A001222(8*n+3)]`
-/

namespace A005124.P1937594601030659853
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (8 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A005124.P1937594601030659853

namespace A005124

/-- `eq[1, A001222(8*n+3)]` -/
def P1937594601030659853.Spec : Prop :=
  ∀ n, (P1937594601030659853.a n : ℤ) = A005124 (n + 1)

end A005124

/-! ## A005124.P2992810430702232461

`eq[2, A000005(8*n+3)]`
-/

namespace A005124.P2992810430702232461
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (8 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A005124.P2992810430702232461

namespace A005124

/-- `eq[2, A000005(8*n+3)]` -/
def P2992810430702232461.Spec : Prop :=
  ∀ n, (P2992810430702232461.a n : ℤ) = A005124 (n + 1)

end A005124

/-! ## A005124.P8300566718645705655

`lt[n+1, A020639(8*n+3)]`
-/

namespace A005124.P8300566718645705655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (8 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A005124.P8300566718645705655

namespace A005124

/-- `lt[n+1, A020639(8*n+3)]` -/
def P8300566718645705655.Spec : Prop :=
  ∀ n, (P8300566718645705655.a n : ℤ) = A005124 (n + 1)

end A005124

/-! ## A005124.P10671564457191976958

`lt[A001222(4*(2*n+1)-1), 2]`
-/

namespace A005124.P10671564457191976958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (4 * (2 * n + 1) - 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A005124.P10671564457191976958

namespace A005124

/-- `lt[A001222(4*(2*n+1)-1), 2]` -/
def P10671564457191976958.Spec : Prop :=
  ∀ n, (P10671564457191976958.a n : ℤ) = A005124 (n + 1)

end A005124

/-! ## A005124.P9762482040839150799

`lt[A000005(4*(2*n+1)-1), 3]`
-/

namespace A005124.P9762482040839150799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (4 * (2 * n + 1) - 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A005124.P9762482040839150799

namespace A005124

/-- `lt[A000005(4*(2*n+1)-1), 3]` -/
def P9762482040839150799.Spec : Prop :=
  ∀ n, (P9762482040839150799.a n : ℤ) = A005124 (n + 1)

end A005124

/-! ## A005124.P3858789630994488122

`comp[A153236(n+1)]`
-/

namespace A005124.P3858789630994488122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153236 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A005124.P3858789630994488122

namespace A005124

/-- `comp[A153236(n+1)]` -/
def P3858789630994488122.Spec : Prop :=
  ∀ n, (P3858789630994488122.a n : ℤ) = A005124 (n + 1)

end A005124

/-! ## A005124.P1035397281121631436

`eq[1, A101264(A004767(n)-2)]`
-/

namespace A005124.P1035397281121631436
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101264 (A004767 n - 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A005124.P1035397281121631436

namespace A005124

/-- `eq[1, A101264(A004767(n)-2)]` -/
def P1035397281121631436.Spec : Prop :=
  ∀ n, (P1035397281121631436.a n : ℤ) = A005124 (n + 1)

end A005124

/-! ## A005124.P14734550368715513691

`eq[0, A245203(2*n)]`
-/

namespace A005124.P14734550368715513691
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245203 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A005124.P14734550368715513691

namespace A005124

/-- `eq[0, A245203(2*n)]` -/
def P14734550368715513691.Spec : Prop :=
  ∀ n, (P14734550368715513691.a n : ℤ) = A005124 (n + 1)

end A005124

/-! ## A005124.P15297329464194887545

`eq[0, A095808(2*n+1)]`
-/

namespace A005124.P15297329464194887545
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095808 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A005124.P15297329464194887545

namespace A005124

/-- `eq[0, A095808(2*n+1)]` -/
def P15297329464194887545.Spec : Prop :=
  ∀ n, (P15297329464194887545.a n : ℤ) = A005124 (n + 1)

end A005124

/-! ## A005124.P14771455018806040528

`eq[1, A037034(2*n+1)]`
-/

namespace A005124.P14771455018806040528
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037034 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A005124.P14771455018806040528

namespace A005124

/-- `eq[1, A037034(2*n+1)]` -/
def P14771455018806040528.Spec : Prop :=
  ∀ n, (P14771455018806040528.a n : ℤ) = A005124 (n + 1)

end A005124

/-! ## A005124.P336089667587657651

`eq[1, A078703(2*n+1)]`
-/

namespace A005124.P336089667587657651
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078703 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A005124.P336089667587657651

namespace A005124

/-- `eq[1, A078703(2*n+1)]` -/
def P336089667587657651.Spec : Prop :=
  ∀ n, (P336089667587657651.a n : ℤ) = A005124 (n + 1)

end A005124

/-! ## A005124.P8777408831400880745

`eq[1, A363291(2*n+1)]`
-/

namespace A005124.P8777408831400880745
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363291 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A005124.P8777408831400880745

namespace A005124

/-- `eq[1, A363291(2*n+1)]` -/
def P8777408831400880745.Spec : Prop :=
  ∀ n, (P8777408831400880745.a n : ℤ) = A005124 (n + 1)

end A005124

/-! ## A005124.P12820634266926073100

`eq[1, A364082(2*n+1)]`
-/

namespace A005124.P12820634266926073100
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364082 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A005124.P12820634266926073100

namespace A005124

/-- `eq[1, A364082(2*n+1)]` -/
def P12820634266926073100.Spec : Prop :=
  ∀ n, (P12820634266926073100.a n : ℤ) = A005124 (n + 1)

end A005124

/-! ## A005124.P13759611093354377775

`eq[A214834(2*(n+1)), 3]`
-/

namespace A005124.P13759611093354377775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214834 (2 * (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A005124.P13759611093354377775

namespace A005124

/-- `eq[A214834(2*(n+1)), 3]` -/
def P13759611093354377775.Spec : Prop :=
  ∀ n, (P13759611093354377775.a n : ℤ) = A005124 (n + 1)

end A005124

/-!
# A005125: Numbers k such that 8k - 3 is prime.

The programs for A005125, the canonical program `A005125.P7000315845692693430` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005125 has offset 1).

The definition of A005125 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A005125.P7000315845692693430

`round(ceil(p?[7*n+5+n]/2)/4)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A005125

/-- `round(ceil(p?[7*n+5+n]/2)/4)` -/
def P7000315845692693430.Spec : Prop :=
  ∀ n, P7000315845692693430.a n = A005125 (n + 1)

theorem P7000315845692693430.correct : P7000315845692693430.Spec := by
  intro n
  simp only [A005125, Nat.add_sub_cancel]

end A005125

/-! ## A005125.P505661802459894116

`(ceil(p?[7*n+5+n]/2)+1)/4`
-/

namespace A005125.P505661802459894116
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * n + 5 + n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌈(f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℚ) / 2⌉ + 1 : ℚ) / 4

end

end A005125.P505661802459894116

namespace A005125

/-- `(ceil(p?[7*n+5+n]/2)+1)/4` -/
def P505661802459894116.Spec : Prop :=
  ∀ n, P505661802459894116.a n = (A005125 (n + 1) : ℚ)

end A005125

/-! ## A005125.P11287360580250902856

`A105133(n+1)+1`
-/

namespace A005125.P11287360580250902856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105133 (n + 1) + 1

end

end A005125.P11287360580250902856

namespace A005125

/-- `A105133(n+1)+1` -/
def P11287360580250902856.Spec : Prop :=
  ∀ n, P11287360580250902856.a n = A005125 (n + 1)

end A005125

/-! ## A005125.P5765673786688291641

`ceil(A186300(n+1)/4)`
-/

namespace A005125.P5765673786688291641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A186300 (n + 1) : ℚ) / 4⌉

end

end A005125.P5765673786688291641

namespace A005125

/-- `ceil(A186300(n+1)/4)` -/
def P5765673786688291641.Spec : Prop :=
  ∀ n, P5765673786688291641.a n = A005125 (n + 1)

end A005125

/-! ## A005125.P8830709485169180181

`ceil(A007521(n+1)/8)`
-/

namespace A005125.P8830709485169180181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A007521 (n + 1) : ℚ) / 8⌉

end

end A005125.P8830709485169180181

namespace A005125

/-- `ceil(A007521(n+1)/8)` -/
def P8830709485169180181.Spec : Prop :=
  ∀ n, P8830709485169180181.a n = A005125 (n + 1)

end A005125

/-! ## A005125.P9162728860206298872

`(A230076(n+1)+1)/2`
-/

namespace A005125.P9162728860206298872
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A230076 (n + 1) + 1 : ℚ) / 2

end

end A005125.P9162728860206298872

namespace A005125

/-- `(A230076(n+1)+1)/2` -/
def P9162728860206298872.Spec : Prop :=
  ∀ n, P9162728860206298872.a n = (A005125 (n + 1) : ℚ)

end A005125

/-! ## A005125.P8654925528322811819

`(A186299(n+1)+2)/4`
-/

namespace A005125.P8654925528322811819
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A186299 (n + 1) + 2 : ℚ) / 4

end

end A005125.P8654925528322811819

namespace A005125

/-- `(A186299(n+1)+2)/4` -/
def P8654925528322811819.Spec : Prop :=
  ∀ n, P8654925528322811819.a n = (A005125 (n + 1) : ℚ)

end A005125

/-! ## A005125.P3090515751399047072

`A022764(n+1)-A005124(n+1)`
-/

namespace A005125.P3090515751399047072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022764 (n + 1) - A005124 (n + 1)

end

end A005125.P3090515751399047072

namespace A005125

/-- `A022764(n+1)-A005124(n+1)` -/
def P3090515751399047072.Spec : Prop :=
  ∀ n, P3090515751399047072.a n = A005125 (n + 1)

end A005125

/-! ## A005125.P10782086286217080896

`eq[2, A000005(8*n+5)]+1`
-/

namespace A005125.P10782086286217080896
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (8 * n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A005125.P10782086286217080896

namespace A005125

/-- `eq[2, A000005(8*n+5)]+1` -/
def P10782086286217080896.Spec : Prop :=
  ∀ n, (P10782086286217080896.a n : ℤ) = A005125 (n + 1)

end A005125

/-! ## A005125.P11844786404409635315

`lt[A001222(8*n+5), 2]+1`
-/

namespace A005125.P11844786404409635315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (8 * n + 5)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A005125.P11844786404409635315

namespace A005125

/-- `lt[A001222(8*n+5), 2]+1` -/
def P11844786404409635315.Spec : Prop :=
  ∀ n, (P11844786404409635315.a n : ℤ) = A005125 (n + 1)

end A005125

/-! ## A005125.P5339211187980668990

`lt[A000005(7*n+5+n), 3]+1`
-/

namespace A005125.P5339211187980668990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (7 * n + 5 + n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A005125.P5339211187980668990

namespace A005125

/-- `lt[A000005(7*n+5+n), 3]+1` -/
def P5339211187980668990.Spec : Prop :=
  ∀ n, (P5339211187980668990.a n : ℤ) = A005125 (n + 1)

end A005125

/-! ## A005125.P18071835919133307364

`eq[1, A001222(2*(4*n+2)+1)]+1`
-/

namespace A005125.P18071835919133307364
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (2 * (4 * n + 2) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A005125.P18071835919133307364

namespace A005125

/-- `eq[1, A001222(2*(4*n+2)+1)]+1` -/
def P18071835919133307364.Spec : Prop :=
  ∀ n, (P18071835919133307364.a n : ℤ) = A005125 (n + 1)

end A005125

/-! ## A005125.P16656564420586105652

`eq[2, A175462(n)]+1`
-/

namespace A005125.P16656564420586105652
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175462 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A005125.P16656564420586105652

namespace A005125

/-- `eq[2, A175462(n)]+1` -/
def P16656564420586105652.Spec : Prop :=
  ∀ n, (P16656564420586105652.a n : ℤ) = A005125 (n + 1)

end A005125

/-! ## A005125.P13330619580474598471

`A004482(A105133(n+1))`
-/

namespace A005125.P13330619580474598471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004482 (A105133 (n + 1)).toNat

end

end A005125.P13330619580474598471

namespace A005125

/-- `A004482(A105133(n+1))` -/
def P13330619580474598471.Spec : Prop :=
  ∀ n, P13330619580474598471.a n = A005125 (n + 1)

end A005125

/-! ## A005125.P2806556685782672977

`A028310(round(A007521(n+1)/8)+1)-1`
-/

namespace A005125.P2806556685782672977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.roundAway ((A007521 (n + 1) : ℚ) / 8) + 1).toNat - 1

end

end A005125.P2806556685782672977

namespace A005125

/-- `A028310(round(A007521(n+1)/8)+1)-1` -/
def P2806556685782672977.Spec : Prop :=
  ∀ n, P2806556685782672977.a n = A005125 (n + 1)

end A005125

/-! ## A005125.P11820621104556686271

`A117358(A017101(n)+A007521(n+1))-n`
-/

namespace A005125.P11820621104556686271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117358 (A017101 n + A007521 (n + 1)).toNat - (n : ℤ)

end

end A005125.P11820621104556686271

namespace A005125

/-- `A117358(A017101(n)+A007521(n+1))-n` -/
def P11820621104556686271.Spec : Prop :=
  ∀ n, P11820621104556686271.a n = A005125 (n + 1)

end A005125

/-! ## A005125.P14354397493896507734

`eq[1, A037039(2*n+1)]+1`
-/

namespace A005125.P14354397493896507734
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037039 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A005125.P14354397493896507734

namespace A005125

/-- `eq[1, A037039(2*n+1)]+1` -/
def P14354397493896507734.Spec : Prop :=
  ∀ n, (P14354397493896507734.a n : ℤ) = A005125 (n + 1)

end A005125

/-! ## A005125.P10748495699718331037

`eq[1, A345468(2*n+1)]+1`
-/

namespace A005125.P10748495699718331037
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345468 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A005125.P10748495699718331037

namespace A005125

/-- `eq[1, A345468(2*n+1)]+1` -/
def P10748495699718331037.Spec : Prop :=
  ∀ n, (P10748495699718331037.a n : ℤ) = A005125 (n + 1)

end A005125

/-! ## A005125.P7370089863001891419

`eq[2, A051686(2*n+1)]+1`
-/

namespace A005125.P7370089863001891419
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051686 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A005125.P7370089863001891419

namespace A005125

/-- `eq[2, A051686(2*n+1)]+1` -/
def P7370089863001891419.Spec : Prop :=
  ∀ n, (P7370089863001891419.a n : ℤ) = A005125 (n + 1)

end A005125

/-! ## A005125.P2756822336818981413

`A000463(A230076(n+1))`
-/

namespace A005125.P2756822336818981413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A230076 (n + 1)).toNat

end

end A005125.P2756822336818981413

namespace A005125

/-- `A000463(A230076(n+1))` -/
def P2756822336818981413.Spec : Prop :=
  ∀ n, P2756822336818981413.a n = A005125 (n + 1)

end A005125

/-!
# A005126: a(n) = 2^n + n + 1.

The programs for A005126, the canonical program `A005126.P13923731135522732508` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005126 has offset 0).

The definition of A005126 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^n+n+1` (program `A005126.P13923731135522732508`, by `A005126.P13923731135522732508.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A005126.P13923731135522732508

`2^n+n+1`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A005126

/-- `2^n+n+1` -/
def P13923731135522732508.Spec : Prop :=
  ∀ n, (P13923731135522732508.a n : ℤ) = A005126 n

theorem P13923731135522732508.correct : P13923731135522732508.Spec := by
  intro n
  simp only [A005126]

end A005126

/-! ## A005126.P9293331339217969544

`∑[ogf((2-4x+x^2)/(1-3x+2x^2))]`
-/

namespace A005126.P9293331339217969544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -4, 1] [1, -3, 2] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005126.P9293331339217969544

namespace A005126

/-- `∑[ogf((2-4x+x^2)/(1-3x+2x^2))]` -/
def P9293331339217969544.Spec : Prop :=
  ∀ n, P9293331339217969544.a n = A005126 n

end A005126

/-! ## A005126.P10938467790686106430

`ogf((2-4x+x^2)/(1-4x+5x^2-2x^3))`
-/

namespace A005126.P10938467790686106430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -4, 1] [1, -4, 5, -2] n

end

end A005126.P10938467790686106430

namespace A005126

/-- `ogf((2-4x+x^2)/(1-4x+5x^2-2x^3))` -/
def P10938467790686106430.Spec : Prop :=
  ∀ n, P10938467790686106430.a n = A005126 n

end A005126

/-! ## A005126.P6880653178318422166

`∑[2*a(n-1)-1]` with `a(0)=2, a(1)=2`
-/

namespace A005126.P6880653178318422166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n f1 =>
  2 * f1 (n - 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005126.P6880653178318422166

namespace A005126

/-- `∑[2*a(n-1)-1]` -/
def P6880653178318422166.Spec : Prop :=
  ∀ n, P6880653178318422166.a n = A005126 n

end A005126

/-! ## A005126.P16441007040700441430

`abs(2*a(n-1)-(n-1))` with `a(0)=2`
-/

namespace A005126.P16441007040700441430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  |2 * a (n - 1) - ((n : ℤ) - 1)|

end

end A005126.P16441007040700441430

namespace A005126

/-- `abs(2*a(n-1)-(n-1))` -/
def P16441007040700441430.Spec : Prop :=
  ∀ n, P16441007040700441430.a n = A005126 n

end A005126

/-! ## A005126.P1916377433256315914

`floor(2*a(n-1)+1-n)` with `a(0)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A005126.P1916377433256315914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  2 * a (n - 1) + (1 - (n : ℤ))

end

end A005126.P1916377433256315914

namespace A005126

/-- `floor(2*a(n-1)+1-n)` -/
def P1916377433256315914.Spec : Prop :=
  ∀ n, P1916377433256315914.a n = A005126 n

theorem P1916377433256315914.correct : P1916377433256315914.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A005126, Nat.add_sub_cancel, A005126.P1916377433256315914.a, A005126.P13923731135522732508.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A005126, Nat.add_sub_cancel, A005126.P1916377433256315914.a, A005126.P13923731135522732508.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A005126

/-! ## A005126.P6196624663112895519

`ceil(2*a(n-1)-(n-1))` with `a(0)=2`

`ceil` is left out, it is the identity on integers.
-/

namespace A005126.P6196624663112895519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  2 * a (n - 1) - ((n : ℤ) - 1)

end

end A005126.P6196624663112895519

namespace A005126

/-- `ceil(2*a(n-1)-(n-1))` -/
def P6196624663112895519.Spec : Prop :=
  ∀ n, P6196624663112895519.a n = A005126 n

theorem P6196624663112895519.correct : P6196624663112895519.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A005126, Nat.add_sub_cancel, A005126.P6196624663112895519.a, A005126.P13923731135522732508.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A005126, Nat.add_sub_cancel, A005126.P6196624663112895519.a, A005126.P13923731135522732508.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A005126

/-! ## A005126.P11656145800086730149

`round(2*a(n-1)-(n-1))` with `a(0)=2`

`round` is left out, it is the identity on integers.
-/

namespace A005126.P11656145800086730149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  2 * a (n - 1) - ((n : ℤ) - 1)

end

end A005126.P11656145800086730149

namespace A005126

/-- `round(2*a(n-1)-(n-1))` -/
def P11656145800086730149.Spec : Prop :=
  ∀ n, P11656145800086730149.a n = A005126 n

theorem P11656145800086730149.correct : P11656145800086730149.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A005126, Nat.add_sub_cancel, A005126.P11656145800086730149.a, A005126.P13923731135522732508.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A005126, Nat.add_sub_cancel, A005126.P11656145800086730149.a, A005126.P13923731135522732508.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A005126

/-! ## A005126.P588769671367393989

`abs(xor(n-1-2*n, 2^n))`
-/

namespace A005126.P588769671367393989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor ((n : ℤ) - 1 - (2 * n : ℤ)) (2 ^ n : ℤ)|

end

end A005126.P588769671367393989

namespace A005126

/-- `abs(xor(n-1-2*n, 2^n))` -/
def P588769671367393989.Spec : Prop :=
  ∀ n, P588769671367393989.a n = A005126 n

end A005126

/-! ## A005126.P17910893662263639035

`-xor(n-1-2*n, 2^n)`
-/

namespace A005126.P17910893662263639035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor ((n : ℤ) - 1 - (2 * n : ℤ)) (2 ^ n : ℤ)

end

end A005126.P17910893662263639035

namespace A005126

/-- `-xor(n-1-2*n, 2^n)` -/
def P17910893662263639035.Spec : Prop :=
  ∀ n, P17910893662263639035.a n = A005126 n

end A005126

/-! ## A005126.P9185179116371107417

`2*(a(n-1)+(1-n)/2)` with `a(0)=2`
-/

namespace A005126.P9185179116371107417
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2] fun n a =>
  2 * (a (n - 1) + (1 - (n : ℤ) : ℚ) / 2)

end

end A005126.P9185179116371107417

namespace A005126

/-- `2*(a(n-1)+(1-n)/2)` -/
def P9185179116371107417.Spec : Prop :=
  ∀ n, P9185179116371107417.a n = (A005126 n : ℚ)

theorem P9185179116371107417.correct : P9185179116371107417.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A005126, Nat.add_sub_cancel, A005126.P9185179116371107417.a, A005126.P13923731135522732508.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A005126, Nat.add_sub_cancel, A005126.P9185179116371107417.a, A005126.P13923731135522732508.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A005126

/-! ## A005126.P7637313205660704942

`floor(2*(a(n-1)-1)-(n-3))` with `a(0)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A005126.P7637313205660704942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  2 * (a (n - 1) - 1) - ((n : ℤ) - 3)

end

end A005126.P7637313205660704942

namespace A005126

/-- `floor(2*(a(n-1)-1)-(n-3))` -/
def P7637313205660704942.Spec : Prop :=
  ∀ n, P7637313205660704942.a n = A005126 n

theorem P7637313205660704942.correct : P7637313205660704942.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A005126, Nat.add_sub_cancel, A005126.P7637313205660704942.a, A005126.P13923731135522732508.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A005126, Nat.add_sub_cancel, A005126.P7637313205660704942.a, A005126.P13923731135522732508.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A005126

/-! ## A005126.P15007088079645628351

`∑[a(n-1)+a(n-1)-1]` with `a(0)=2, a(1)=2`
-/

namespace A005126.P15007088079645628351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n f1 =>
  f1 (n - 1) + (f1 (n - 1) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005126.P15007088079645628351

namespace A005126

/-- `∑[a(n-1)+a(n-1)-1]` -/
def P15007088079645628351.Spec : Prop :=
  ∀ n, P15007088079645628351.a n = A005126 n

end A005126

/-! ## A005126.P17920603035399513641

`∑[a(n-1)-(1-a(n-1))]` with `a(0)=2, a(1)=2`
-/

namespace A005126.P17920603035399513641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n f1 =>
  f1 (n - 1) - (1 - f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005126.P17920603035399513641

namespace A005126

/-- `∑[a(n-1)-(1-a(n-1))]` -/
def P17920603035399513641.Spec : Prop :=
  ∀ n, P17920603035399513641.a n = A005126 n

end A005126

/-! ## A005126.P12057527645784074904

`2*(1/2-(n/2-a(n-1)))` with `a(0)=2`
-/

namespace A005126.P12057527645784074904
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2] fun n a =>
  2 * ((1 : ℚ) / 2 - ((n : ℚ) / 2 - a (n - 1)))

end

end A005126.P12057527645784074904

namespace A005126

/-- `2*(1/2-(n/2-a(n-1)))` -/
def P12057527645784074904.Spec : Prop :=
  ∀ n, P12057527645784074904.a n = (A005126 n : ℚ)

theorem P12057527645784074904.correct : P12057527645784074904.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A005126, Nat.add_sub_cancel, A005126.P12057527645784074904.a, A005126.P13923731135522732508.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A005126, Nat.add_sub_cancel, A005126.P12057527645784074904.a, A005126.P13923731135522732508.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A005126

/-! ## A005126.P17296769689254396097

`floor(a(n-1)+a(n-1)+1-n)` with `a(0)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A005126.P17296769689254396097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + (a (n - 1) + (1 - (n : ℤ)))

end

end A005126.P17296769689254396097

namespace A005126

/-- `floor(a(n-1)+a(n-1)+1-n)` -/
def P17296769689254396097.Spec : Prop :=
  ∀ n, P17296769689254396097.a n = A005126 n

theorem P17296769689254396097.correct : P17296769689254396097.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A005126, Nat.add_sub_cancel, A005126.P17296769689254396097.a, A005126.P13923731135522732508.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A005126, Nat.add_sub_cancel, A005126.P17296769689254396097.a, A005126.P13923731135522732508.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A005126

/-! ## A005126.P13069850093527620161

`floor(a(n-1)-(n-1-a(n-1)))` with `a(0)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A005126.P13069850093527620161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) - ((n : ℤ) - 1 - a (n - 1))

end

end A005126.P13069850093527620161

namespace A005126

/-- `floor(a(n-1)-(n-1-a(n-1)))` -/
def P13069850093527620161.Spec : Prop :=
  ∀ n, P13069850093527620161.a n = A005126 n

theorem P13069850093527620161.correct : P13069850093527620161.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A005126, Nat.add_sub_cancel, A005126.P13069850093527620161.a, A005126.P13923731135522732508.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A005126, Nat.add_sub_cancel, A005126.P13069850093527620161.a, A005126.P13923731135522732508.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A005126

/-! ## A005126.P441698712036980830

`A288133(n+2)`
-/

namespace A005126.P441698712036980830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288133 (n + 2)

end

end A005126.P441698712036980830

namespace A005126

/-- `A288133(n+2)` -/
def P441698712036980830.Spec : Prop :=
  ∀ n, P441698712036980830.a n = A005126 n

end A005126

/-! ## A005126.P6240707207440124122

`∑[A011782(n)+1]`
-/

namespace A005126.P6240707207440124122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005126.P6240707207440124122

namespace A005126

/-- `∑[A011782(n)+1]` -/
def P6240707207440124122.Spec : Prop :=
  ∀ n, P6240707207440124122.a n = A005126 n

end A005126

/-! ## A005126.P821397158623583192

`∑[3-A122958(n)]`
-/

namespace A005126.P821397158623583192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A122958 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005126.P821397158623583192

namespace A005126

/-- `∑[3-A122958(n)]` -/
def P821397158623583192.Spec : Prop :=
  ∀ n, P821397158623583192.a n = A005126 n

end A005126

/-!
# A005127: Number of k for which n does not divide Stirling cycle numbers [ {n \atop k} ].

The programs for A005127, there is no canonical definition to state claims against.
-/

/-! ## A005127.P731834281143996783

`A188578(A011782(n))+A007012(n)`
-/

namespace A005127.P731834281143996783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188578 (A011782 n).toNat + A007012 n

end

end A005127.P731834281143996783

/-! ## A005127.P3437498493216085213

`A284533(A120105(n))+A007012(n)`
-/

namespace A005127.P3437498493216085213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284533 (A120105 n).toNat + A007012 n

end

end A005127.P3437498493216085213

/-! ## A005127.P1128836355834430769

`A062892(A073404(A023996(n)))+A007012(n)`
-/

namespace A005127.P1128836355834430769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062892 (A073404 (A023996 n).toNat).toNat + A007012 n

end

end A005127.P1128836355834430769

/-! ## A005127.P9606442144258140810

`A188037(A088022(n))+A007012(n)`
-/

namespace A005127.P9606442144258140810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188037 (A088022 n).toNat + A007012 n

end

end A005127.P9606442144258140810

/-! ## A005127.P8127385090576325104

`A102683(A172282(n))+A007012(n)`
-/

namespace A005127.P8127385090576325104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102683 (A172282 n).toNat + A007012 n

end

end A005127.P8127385090576325104

/-!
# A005129: Theta series of {E_6}* lattice.

The programs for A005129, there is no canonical definition to state claims against.
-/

/-! ## A005129.P1687178393661274080

`abs(A130196(n)*A181976(n))`
-/

namespace A005129.P1687178393661274080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A130196 n * A181976 n|

end

end A005129.P1687178393661274080

/-! ## A005129.P944897319315120887

`abs(A181976(n)*A280048(n))`
-/

namespace A005129.P944897319315120887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A181976 n * A280048 n|

end

end A005129.P944897319315120887

/-! ## A005129.P2246328612842242482

`Δ[A117967(n)]*A181976(n)`
-/

namespace A005129.P2246328612842242482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117967 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A181976 n

end

end A005129.P2246328612842242482

/-! ## A005129.P1244608159208816228

`A061347(n+1)*A181976(n)`
-/

namespace A005129.P1244608159208816228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061347 (n + 1) * A181976 n

end

end A005129.P1244608159208816228

/-! ## A005129.P14398157274894969261

`A131713(n+2)*A181976(n)`
-/

namespace A005129.P14398157274894969261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131713 (n + 2) * A181976 n

end

end A005129.P14398157274894969261

/-! ## A005129.P16869760435173474417

`2*A109041(n)-A231962(n)`
-/

namespace A005129.P16869760435173474417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A109041 n - A231962 n

end

end A005129.P16869760435173474417

/-! ## A005129.P611136873276691811

`A117188(4*n)*A181976(n)`
-/

namespace A005129.P611136873276691811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117188 (4 * n) * A181976 n

end

end A005129.P611136873276691811

/-! ## A005129.P10266499585791071408

`A131713(A004092(n))*A131713(n)*A181976(n)`
-/

namespace A005129.P10266499585791071408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131713 (A004092 n).toNat * A131713 n * A181976 n

end

end A005129.P10266499585791071408

/-! ## A005129.P18394849635667281279

`A100051(A017353(n))*A181976(n)`
-/

namespace A005129.P18394849635667281279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100051 (A017353 n).toNat * A181976 n

end

end A005129.P18394849635667281279

/-!
# A005130: Robbins numbers: a(n) = Product_{k=0..n-1} (3k+1)!/(n+k)!; also the number of descending plane partitions whose parts do not exceed n; also the number of n X n alternating sign matrices (ASM's).

The programs for A005130, there is no canonical definition to state claims against.
-/

/-! ## A005130.P6840498117189066304

`A048601(∑[n]+1)`
-/

namespace A005130.P6840498117189066304
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048601 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A005130.P6840498117189066304

/-! ## A005130.P13977068273373868024

`A321511(n)+n!`
-/

namespace A005130.P13977068273373868024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321511 n + (Nat.factorial n : ℤ)

end

end A005130.P13977068273373868024

/-! ## A005130.P15251384831884059081

`A321511(n)+A000142(n)`
-/

namespace A005130.P15251384831884059081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321511 n + A000142 n

end

end A005130.P15251384831884059081

/-! ## A005130.P17906072258049165115

`A049505(n)/A005157(n)`
-/

namespace A005130.P17906072258049165115
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049505 n : ℚ) / (A005157 n : ℚ)

end

end A005130.P17906072258049165115

/-! ## A005130.P15735464119009900794

`sqrt(A049503(n))`
-/

namespace A005130.P15735464119009900794
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A049503 n : ℝ)

end

end A005130.P15735464119009900794

/-!
# A005131: A generalized continued fraction for Euler's number e.

The programs for A005131, the canonical program `A005131.P1677996525373342361` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005131 has offset 0).

The definition of A005131 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A005131.P1677996525373342361

`Δ[floor((n-2)/3)²]+1`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A005131

/-- `Δ[floor((n-2)/3)²]+1` -/
def P1677996525373342361.Spec : Prop :=
  ∀ n, P1677996525373342361.a n = A005131 n

theorem P1677996525373342361.correct : P1677996525373342361.Spec := by
  intro n
  simp only [A005131]

end A005131

/-! ## A005131.P4362103849914055726

`abs(xor(-2, a(n-3)))` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A005131.P4362103849914055726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1] fun n a =>
  |Int.xor (-2) (a (n - 3))|

end

end A005131.P4362103849914055726

namespace A005131

/-- `abs(xor(-2, a(n-3)))` -/
def P4362103849914055726.Spec : Prop :=
  ∀ n, P4362103849914055726.a n = A005131 n

end A005131

/-! ## A005131.P9255051409275650739

`-xor(-2, a(n-3))` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A005131.P9255051409275650739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1] fun n a =>
  -Int.xor (-2) (a (n - 3))

end

end A005131.P9255051409275650739

namespace A005131

/-- `-xor(-2, a(n-3))` -/
def P9255051409275650739.Spec : Prop :=
  ∀ n, P9255051409275650739.a n = A005131 n

end A005131

/-! ## A005131.P8087506051665458017

`xor(1, ∑[n²]%(2*n+1))`
-/

namespace A005131.P8087506051665458017
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 ((∑ j ∈ Finset.range (n + 1), f1 j) % (2 * n + 1))

end

end A005131.P8087506051665458017

namespace A005131

/-- `xor(1, ∑[n²]%(2*n+1))` -/
def P8087506051665458017.Spec : Prop :=
  ∀ n, (P8087506051665458017.a n : ℤ) = A005131 n

end A005131

/-! ## A005131.P11250602451351439048

`abs(round((n+1)/gcd(3, 1-n))-n)`
-/

namespace A005131.P11250602451351439048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Int.gcd 3 (1 - (n : ℤ)) : ℚ)) - (n : ℤ)|

end

end A005131.P11250602451351439048

namespace A005131

/-- `abs(round((n+1)/gcd(3, 1-n))-n)` -/
def P11250602451351439048.Spec : Prop :=
  ∀ n, P11250602451351439048.a n = A005131 n

end A005131

/-! ## A005131.P11180409703525481224

`gcd(a(n-3)+2, a(n-3)%2)` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A005131.P11180409703525481224
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 1] fun n a =>
  Nat.gcd (a (n - 3) + 2) (a (n - 3) % 2)

end

end A005131.P11180409703525481224

namespace A005131

/-- `gcd(a(n-3)+2, a(n-3)%2)` -/
def P11180409703525481224.Spec : Prop :=
  ∀ n, (P11180409703525481224.a n : ℤ) = A005131 n

end A005131

/-! ## A005131.P4018152561331864095

`abs(1-C(2*n+1, 3)%(2*n+1))`
-/

namespace A005131.P4018152561331864095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - ((Nat.choose (2 * n + 1) 3 % (2 * n + 1) : ℕ) : ℤ)|

end

end A005131.P4018152561331864095

namespace A005131

/-- `abs(1-C(2*n+1, 3)%(2*n+1))` -/
def P4018152561331864095.Spec : Prop :=
  ∀ n, P4018152561331864095.a n = A005131 n

end A005131

/-! ## A005131.P2877229091216544607

`A014681(a(n-3)+1)` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A005131.P2877229091216544607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1] fun n a =>
  A014681 (a (n - 3) + 1).toNat

end

end A005131.P2877229091216544607

namespace A005131

/-- `A014681(a(n-3)+1)` -/
def P2877229091216544607.Spec : Prop :=
  ∀ n, P2877229091216544607.a n = A005131 n

end A005131

/-! ## A005131.P5969674064333703957

`A159966(a(n-3)+2)` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A005131.P5969674064333703957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1] fun n a =>
  A159966 (a (n - 3) + 2).toNat

end

end A005131.P5969674064333703957

namespace A005131

/-- `A159966(a(n-3)+2)` -/
def P5969674064333703957.Spec : Prop :=
  ∀ n, P5969674064333703957.a n = A005131 n

end A005131

/-! ## A005131.P11059550201940786591

`A186421(a(n-3)+2)` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A005131.P11059550201940786591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1] fun n a =>
  A186421 (a (n - 3) + 2).toNat

end

end A005131.P11059550201940786591

namespace A005131

/-- `A186421(a(n-3)+2)` -/
def P11059550201940786591.Spec : Prop :=
  ∀ n, P11059550201940786591.a n = A005131 n

end A005131

/-! ## A005131.P13364780158575807946

`A124625(A322042(n+1))`
-/

namespace A005131.P13364780158575807946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124625 (A322042 (n + 1)).toNat

end

end A005131.P13364780158575807946

namespace A005131

/-- `A124625(A322042(n+1))` -/
def P13364780158575807946.Spec : Prop :=
  ∀ n, P13364780158575807946.a n = A005131 n

end A005131

/-! ## A005131.P7679417767963236633

`A078688(n)%A136289(n)`
-/

namespace A005131.P7679417767963236633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A078688 n) (A136289 n)

end

end A005131.P7679417767963236633

namespace A005131

/-- `A078688(n)%A136289(n)` -/
def P7679417767963236633.Spec : Prop :=
  ∀ n, P7679417767963236633.a n = A005131 n

end A005131

/-! ## A005131.P9051063733327585371

`A058281(n)%A173773(n)`
-/

namespace A005131.P9051063733327585371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A058281 n) (A173773 n)

end

end A005131.P9051063733327585371

namespace A005131

/-- `A058281(n)%A173773(n)` -/
def P9051063733327585371.Spec : Prop :=
  ∀ n, P9051063733327585371.a n = A005131 n

end A005131

/-! ## A005131.P3880362493919592400

`A078689(n)%A173773(n)`
-/

namespace A005131.P3880362493919592400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A078689 n) (A173773 n)

end

end A005131.P3880362493919592400

namespace A005131

/-- `A078689(n)%A173773(n)` -/
def P3880362493919592400.Spec : Prop :=
  ∀ n, P3880362493919592400.a n = A005131 n

end A005131

/-! ## A005131.P4878853284439190279

`A267318(n)%A173773(n)`
-/

namespace A005131.P4878853284439190279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A267318 n) (A173773 n)

end

end A005131.P4878853284439190279

namespace A005131

/-- `A267318(n)%A173773(n)` -/
def P4878853284439190279.Spec : Prop :=
  ∀ n, P4878853284439190279.a n = A005131 n

end A005131

/-! ## A005131.P18396466860263314642

`gcd(A004523(n), A057078(n))`
-/

namespace A005131.P18396466860263314642
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A004523 n) (A057078 n)

end

end A005131.P18396466860263314642

namespace A005131

/-- `gcd(A004523(n), A057078(n))` -/
def P18396466860263314642.Spec : Prop :=
  ∀ n, (P18396466860263314642.a n : ℤ) = A005131 n

end A005131

/-! ## A005131.P17758935259436368532

`gcd(A260190(n), A261557(n))`
-/

namespace A005131.P17758935259436368532
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A260190 n) (A261557 n)

end

end A005131.P17758935259436368532

namespace A005131

/-- `gcd(A260190(n), A261557(n))` -/
def P17758935259436368532.Spec : Prop :=
  ∀ n, (P17758935259436368532.a n : ℤ) = A005131 n

end A005131

/-! ## A005131.P550755531969490479

`and(A130823(n+1), A131713(n))`
-/

namespace A005131.P550755531969490479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A130823 (n + 1)) (A131713 n)

end

end A005131.P550755531969490479

namespace A005131

/-- `and(A130823(n+1), A131713(n))` -/
def P550755531969490479.Spec : Prop :=
  ∀ n, P550755531969490479.a n = A005131 n

end A005131

/-! ## A005131.P11285877322473272737

`and(A131713(n), A146535(n+1))`
-/

namespace A005131.P11285877322473272737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A131713 n) (A146535 (n + 1))

end

end A005131.P11285877322473272737

namespace A005131

/-- `and(A131713(n), A146535(n+1))` -/
def P11285877322473272737.Spec : Prop :=
  ∀ n, P11285877322473272737.a n = A005131 n

end A005131

/-! ## A005131.P9213529988092989155

`and(A131713(n), A349407(n+1))`
-/

namespace A005131.P9213529988092989155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A131713 n) (A349407 (n + 1))

end

end A005131.P9213529988092989155

namespace A005131

/-- `and(A131713(n), A349407(n+1))` -/
def P9213529988092989155.Spec : Prop :=
  ∀ n, P9213529988092989155.a n = A005131 n

end A005131

/-!
# A005132: Recamán's sequence (or Recaman's sequence): a(0) = 0; for n > 0, a(n) = a(n-1) - n if nonnegative and not already in the sequence, otherwise a(n) = a(n-1) + n.

The programs for A005132, there is no canonical definition to state claims against.
-/

/-! ## A005132.P12448535332203229857

`A209386(n)/2`
-/

namespace A005132.P12448535332203229857
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A209386 n : ℚ) / 2

end

end A005132.P12448535332203229857

/-! ## A005132.P14185173095551778404

`floor(A209387(n)/2)`
-/

namespace A005132.P14185173095551778404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A209387 n : ℚ) / 2⌋

end

end A005132.P14185173095551778404

/-! ## A005132.P11174537937886988720

`∑[n*A160357(n)]`
-/

namespace A005132.P11174537937886988720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A160357 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005132.P11174537937886988720

/-! ## A005132.P10654828513452082097

`A063733(n+1)-1`
-/

namespace A005132.P10654828513452082097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063733 (n + 1) - 1

end

end A005132.P10654828513452082097

/-! ## A005132.P13010097160348786773

`A334951(n+1)+1+n`
-/

namespace A005132.P13010097160348786773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334951 (n + 1) + 1 + (n : ℤ)

end

end A005132.P13010097160348786773

/-! ## A005132.P15323963073596036202

`∑[A160356(abs(1-n)+1)]-2`
-/

namespace A005132.P15323963073596036202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160356 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A005132.P15323963073596036202

/-! ## A005132.P12453118348042824369

`A378120(n)-A377748(n)`
-/

namespace A005132.P12453118348042824369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378120 n - A377748 n

end

end A005132.P12453118348042824369

/-! ## A005132.P4671871450180412706

`Δ[A065056(A028310(n)-1)]`
-/

namespace A005132.P4671871450180412706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065056 (A028310 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A005132.P4671871450180412706

/-! ## A005132.P8773304170844017277

`Δ[A065056(A004273(n)-n)]`
-/

namespace A005132.P8773304170844017277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065056 (A004273 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A005132.P8773304170844017277

/-! ## A005132.P9437559215030568273

`A000217(n)-2*A377748(n)`
-/

namespace A005132.P9437559215030568273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n - 2 * A377748 n

end

end A005132.P9437559215030568273

/-! ## A005132.P1282457848342567882

`2*A378120(n)-A000217(n)`
-/

namespace A005132.P1282457848342567882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A378120 n - A000217 n

end

end A005132.P1282457848342567882

/-! ## A005132.P10778878069927608983

`Δ[A065056(n)]-A160356(n+1)`
-/

namespace A005132.P10778878069927608983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065056 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A160356 (n + 1)

end

end A005132.P10778878069927608983

/-! ## A005132.P9599213308416507891

`∑[n/(A160357(n)+A000007(n))]`
-/

namespace A005132.P9599213308416507891
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A160357 n + A000007 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005132.P9599213308416507891

/-! ## A005132.P13108992151738130522

`A065056(n+1)-(A160356(n+1)+A065056(n))`
-/

namespace A005132.P13108992151738130522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065056 (n + 1) - (A160356 (n + 1) + A065056 n)

end

end A005132.P13108992151738130522

/-! ## A005132.P526705791759221483

`Δ[∑[A063733(n)]-n]`
-/

namespace A005132.P526705791759221483
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063733 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A005132.P526705791759221483

/-! ## A005132.P675880825169441534

`A382128(Δ[n²])`
-/

namespace A005132.P675880825169441534
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382128 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A005132.P675880825169441534

/-! ## A005132.P10087836043322616669

`A160357(A057166(n+1))+A063733(n+1)`
-/

namespace A005132.P10087836043322616669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160357 (A057166 (n + 1)).toNat + A063733 (n + 1)

end

end A005132.P10087836043322616669

/-! ## A005132.P12012824738211967532

`A023443(A063733(n+1))`
-/

namespace A005132.P12012824738211967532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A063733 (n + 1)).toNat

end

end A005132.P12012824738211967532

/-! ## A005132.P16115902972822520153

`A001281(A209386(n))`
-/

namespace A005132.P16115902972822520153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A209386 n).toNat

end

end A005132.P16115902972822520153

/-! ## A005132.P17723807105002038154

`A004524(A209387(n))`
-/

namespace A005132.P17723807105002038154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A209387 n).toNat

end

end A005132.P17723807105002038154

/-!
# A005133: Number of index n subgroups of modular group PSL_2(Z).

The programs for A005133, there is no canonical definition to state claims against.
-/

/-! ## A005133.P15925402552709075228

`A121355(n+1)/n!`
-/

namespace A005133.P15925402552709075228
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A121355 (n + 1) : ℚ) / (Nat.factorial n : ℚ)

end

end A005133.P15925402552709075228

/-! ## A005133.P2817117907397782175

`A121356(n+1)/(n+1)!`
-/

namespace A005133.P2817117907397782175
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A121356 (n + 1) : ℚ) / (Nat.factorial (n + 1) : ℚ)

end

end A005133.P2817117907397782175

/-! ## A005133.P6811531495425942934

`A121355(n+1)/A000142(n)`
-/

namespace A005133.P6811531495425942934
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A121355 (n + 1) : ℚ) / (A000142 n : ℚ)

end

end A005133.P6811531495425942934

/-! ## A005133.P6091167435950352392

`A121355(n+1)/∏[A028310(n)]`
-/

namespace A005133.P6091167435950352392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A121355 (n + 1) : ℚ) / ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A005133.P6091167435950352392

/-! ## A005133.P4862668392045201420

`A121355(n+1)/A130534(A000217(n))`
-/

namespace A005133.P4862668392045201420
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A121355 (n + 1) : ℚ) / (A130534 (A000217 n).toNat : ℚ)

end

end A005133.P4862668392045201420

/-!
# A005134: Number of n-dimensional unimodular lattices (or quadratic forms).

The programs for A005134, there is no canonical definition to state claims against.
-/

/-! ## A005134.P15317494073935910960

`∑[A054907(n)]`
-/

namespace A005134.P15317494073935910960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054907 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005134.P15317494073935910960

/-! ## A005134.P17277473222573338369

`A054907(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A005134.P17277473222573338369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A054907 n + a (A023443 n).toNat

end

end A005134.P17277473222573338369

/-! ## A005134.P14431345361994702051

`a(n-1)+A339579(11*n+12)+A054907(n)` with `a(0)=1`
-/

namespace A005134.P14431345361994702051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A339579 (11 * n + 12) + A054907 n)

end

end A005134.P14431345361994702051

/-! ## A005134.P1021275531959125885

`A054907(n)+A054911(n)-A054908(n)`
-/

namespace A005134.P1021275531959125885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054907 n + (A054911 n - A054908 n)

end

end A005134.P1021275531959125885

/-! ## A005134.P17983683855050438424

`A054911(n+1)-A054908(n+1)`
-/

namespace A005134.P17983683855050438424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054911 (n + 1) - A054908 (n + 1)

end

end A005134.P17983683855050438424

/-!
# A005136: Highest minimal norm of n-dimensional unimodular lattice.

The programs for A005136, there is no canonical definition to state claims against.
-/

/-! ## A005136.P132246152038154288

`A028950(n)+char[A051062(n)]`
-/

namespace A005136.P132246152038154288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051062 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028950 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A005136.P132246152038154288

/-! ## A005136.P18220584966426528008

`A028950(n)+char[A333173(n)]`
-/

namespace A005136.P18220584966426528008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333173 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028950 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A005136.P18220584966426528008

/-! ## A005136.P3314820827148794035

`A353639(n+1)+A028950(n)`
-/

namespace A005136.P3314820827148794035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353639 (n + 1) + A028950 n

end

end A005136.P3314820827148794035

/-! ## A005136.P5108228413455794121

`A028950(n)+char[A044450(n+1)]`
-/

namespace A005136.P5108228413455794121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044450 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028950 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A005136.P5108228413455794121

/-!
# A005139: Number of n-dimensional determinant 3 lattices.

The programs for A005139, there is no canonical definition to state claims against.
-/

/-! ## A005139.P11160142680119315757

`A243113(∑[A003214(n)]-A007427(n+1))`
-/

namespace A005139.P11160142680119315757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003214 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243113 (∑ j ∈ Finset.range (n + 1), f1 j - A007427 (n + 1)).toNat

end

end A005139.P11160142680119315757

/-!
# A005142: Number of connected bipartite graphs with n nodes.

The programs for A005142, there is no canonical definition to state claims against.
-/

/-! ## A005142.P14027341120765207494

`A001349(n)-A157051(n)`
-/

namespace A005142.P14027341120765207494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001349 n - A157051 n

end

end A005142.P14027341120765207494

/-! ## A005142.P15125325556839975047

`A304311(∑[n])-A157051(n)`
-/

namespace A005142.P15125325556839975047
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304311 (∑ j ∈ Finset.range (n + 1), f1 j) - A157051 n

end

end A005142.P15125325556839975047

/-! ## A005142.P13611637342618661717

`A201922(C(n, 2)+1)-A157051(n)`
-/

namespace A005142.P13611637342618661717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201922 (Nat.choose n 2 + 1) - A157051 n

end

end A005142.P13611637342618661717

/-! ## A005142.P5760351453105227116

`A201922(A152947(n+1))-A157051(n)`
-/

namespace A005142.P5760351453105227116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201922 (A152947 (n + 1)).toNat - A157051 n

end

end A005142.P5760351453105227116

/-! ## A005142.P12718657029185194323

`A000088(n)-(A157051(n)+A000719(n))`
-/

namespace A005142.P12718657029185194323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000088 n - (A157051 n + A000719 n)

end

end A005142.P12718657029185194323

/-!
# A005143: Number of sub-Eulerian graphs with n nodes.

The programs for A005143, there is no canonical definition to state claims against.
-/

/-! ## A005143.P14564383697534950431

`floor((floor(Δ[e*n!]/2)+n)/3)+1`
-/

namespace A005143.P14564383697534950431
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.exp 1 * (Nat.factorial n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(⌊(f1 (n + 1) - f1 n) / 2⌋ + (n : ℤ) : ℚ) / 3⌋ + 1

end

end A005143.P14564383697534950431

/-!
# A005144: Number of sub-Hamiltonian graphs with n nodes.

The programs for A005144, there is no canonical definition to state claims against.
-/

/-! ## A005144.P841153243224556439

`∑[A332900(lcm(10, a(n-1))+1)]` with `a(0)=1, a(1)=0`
-/

namespace A005144.P841153243224556439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  A332900 (Int.lcm 10 (f1 (n - 1)) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005144.P841153243224556439

/-!
# A005145: n copies of n-th prime.

The programs for A005145, the canonical program `A005145.P7903299518883907964` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005145 has offset 1).

The definition of A005145 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A005145.P7903299518883907964

`A000040(row(n)+1)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A005145

/-- `A000040(row(n)+1)` -/
def P7903299518883907964.Spec : Prop :=
  ∀ n, P7903299518883907964.a n = A005145 (n + 1)

theorem P7903299518883907964.correct : P7903299518883907964.Spec := by
  intro n
  simp only [A005145, Nat.add_sub_cancel]

end A005145

/-! ## A005145.P16672103290486343142

`A000040(round(sqrt(2*(n+1))))`
-/

namespace A005145.P16672103290486343142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ))).toNat

end

end A005145.P16672103290486343142

namespace A005145

/-- `A000040(round(sqrt(2*(n+1))))` -/
def P16672103290486343142.Spec : Prop :=
  ∀ n, P16672103290486343142.a n = A005145 (n + 1)

end A005145

/-! ## A005145.P2116996880082020200

`A008578(row(n)+2)`
-/

namespace A005145.P2116996880082020200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (SequenceMachineLib.triRow n + 2)

end

end A005145.P2116996880082020200

namespace A005145

/-- `A008578(row(n)+2)` -/
def P2116996880082020200.Spec : Prop :=
  ∀ n, P2116996880082020200.a n = A005145 (n + 1)

end A005145

/-! ## A005145.P13501618020829529212

`A008578(comp[∑[n]]-n)`
-/

namespace A005145.P13501618020829529212
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n - n)

end

end A005145.P13501618020829529212

namespace A005145

/-- `A008578(comp[∑[n]]-n)` -/
def P13501618020829529212.Spec : Prop :=
  ∀ n, P13501618020829529212.a n = A005145 (n + 1)

end A005145

/-! ## A005145.P6625953512460512551

`A006093(∑[char[∑[n]]])+1`
-/

namespace A005145.P6625953512460512551
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A005145.P6625953512460512551

namespace A005145

/-- `A006093(∑[char[∑[n]]])+1` -/
def P6625953512460512551.Spec : Prop :=
  ∀ n, P6625953512460512551.a n = A005145 (n + 1)

end A005145

/-! ## A005145.P1347471447658861633

`A182986(∑[char[∑[n]]]+1)`
-/

namespace A005145.P1347471447658861633
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A005145.P1347471447658861633

namespace A005145

/-- `A182986(∑[char[∑[n]]]+1)` -/
def P1347471447658861633.Spec : Prop :=
  ∀ n, P1347471447658861633.a n = A005145 (n + 1)

end A005145

/-! ## A005145.P16723706920995889869

`A008864(∑[char[∑[n]]])-1`
-/

namespace A005145.P16723706920995889869
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (∑ j ∈ Finset.range (n + 1), f1 j) - 1

end

end A005145.P16723706920995889869

namespace A005145

/-- `A008864(∑[char[∑[n]]])-1` -/
def P16723706920995889869.Spec : Prop :=
  ∀ n, P16723706920995889869.a n = A005145 (n + 1)

end A005145

/-! ## A005145.P16312380301351502149

`A028815(∑[char[∑[n]]])-1`
-/

namespace A005145.P16312380301351502149
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028815 (∑ j ∈ Finset.range (n + 1), f1 j) - 1

end

end A005145.P16312380301351502149

namespace A005145

/-- `A028815(∑[char[∑[n]]])-1` -/
def P16312380301351502149.Spec : Prop :=
  ∀ n, P16312380301351502149.a n = A005145 (n + 1)

end A005145

/-! ## A005145.P2464798085427947476

`A207790(∑[2*char[∑[n]]])`
-/

namespace A005145.P2464798085427947476
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (if ∃ j, f2 j = n then 1 else 0)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207790 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A005145.P2464798085427947476

namespace A005145

/-- `A207790(∑[2*char[∑[n]]])` -/
def P2464798085427947476.Spec : Prop :=
  ∀ n, P2464798085427947476.a n = A005145 (n + 1)

end A005145

/-! ## A005145.P14542806747302617305

`A051599(A057944(n))`
-/

namespace A005145.P14542806747302617305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051599 (A057944 n).toNat

end

end A005145.P14542806747302617305

namespace A005145

/-- `A051599(A057944(n))` -/
def P14542806747302617305.Spec : Prop :=
  ∀ n, P14542806747302617305.a n = A005145 (n + 1)

end A005145

/-! ## A005145.P12128569472551474921

`A067747(A131507(n))`
-/

namespace A005145.P12128569472551474921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067747 (A131507 n).toNat

end

end A005145.P12128569472551474921

namespace A005145

/-- `A067747(A131507(n))` -/
def P12128569472551474921.Spec : Prop :=
  ∀ n, P12128569472551474921.a n = A005145 (n + 1)

end A005145

/-! ## A005145.P5927512512867885992

`A026239(A111653(n+1))`
-/

namespace A005145.P5927512512867885992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026239 (A111653 (n + 1)).toNat

end

end A005145.P5927512512867885992

namespace A005145

/-- `A026239(A111653(n+1))` -/
def P5927512512867885992.Spec : Prop :=
  ∀ n, P5927512512867885992.a n = A005145 (n + 1)

end A005145

/-! ## A005145.P10355134961192918126

`A073846(A111650(n+1))`
-/

namespace A005145.P10355134961192918126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (A111650 (n + 1)).toNat

end

end A005145.P10355134961192918126

namespace A005145

/-- `A073846(A111650(n+1))` -/
def P10355134961192918126.Spec : Prop :=
  ∀ n, P10355134961192918126.a n = A005145 (n + 1)

end A005145

/-! ## A005145.P17998976915551145601

`A129131(A131507(n)+1)`
-/

namespace A005145.P17998976915551145601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129131 (A131507 n + 1).toNat

end

end A005145.P17998976915551145601

namespace A005145

/-- `A129131(A131507(n)+1)` -/
def P17998976915551145601.Spec : Prop :=
  ∀ n, P17998976915551145601.a n = A005145 (n + 1)

end A005145

/-! ## A005145.P1102638651453645188

`A158611(A133196(n+1))`
-/

namespace A005145.P1102638651453645188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (A133196 (n + 1)).toNat

end

end A005145.P1102638651453645188

namespace A005145

/-- `A158611(A133196(n+1))` -/
def P1102638651453645188.Spec : Prop :=
  ∀ n, P1102638651453645188.a n = A005145 (n + 1)

end A005145

/-! ## A005145.P15448943856162327523

`A067747(A111650(n+1)-1)`
-/

namespace A005145.P15448943856162327523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067747 (A111650 (n + 1) - 1).toNat

end

end A005145.P15448943856162327523

namespace A005145

/-- `A067747(A111650(n+1)-1)` -/
def P15448943856162327523.Spec : Prop :=
  ∀ n, P15448943856162327523.a n = A005145 (n + 1)

end A005145

/-! ## A005145.P2430193063532398308

`A162620(n+1)+A025581(n)`
-/

namespace A005145.P2430193063532398308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162620 (n + 1) + A025581 n

end

end A005145.P2430193063532398308

namespace A005145

/-- `A162620(n+1)+A025581(n)` -/
def P2430193063532398308.Spec : Prop :=
  ∀ n, P2430193063532398308.a n = A005145 (n + 1)

end A005145

/-! ## A005145.P15151315569437967496

`A341606(A004736(n+1)+n)`
-/

namespace A005145.P15151315569437967496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341606 (A004736 (n + 1) + (n : ℤ)).toNat

end

end A005145.P15151315569437967496

namespace A005145

/-- `A341606(A004736(n+1)+n)` -/
def P15151315569437967496.Spec : Prop :=
  ∀ n, P15151315569437967496.a n = A005145 (n + 1)

end A005145

/-! ## A005145.P13382041927453051564

`A104887(1-A002262(n)+n)`
-/

namespace A005145.P13382041927453051564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104887 (1 - A002262 n + (n : ℤ)).toNat

end

end A005145.P13382041927453051564

namespace A005145

/-- `A104887(1-A002262(n)+n)` -/
def P13382041927453051564.Spec : Prop :=
  ∀ n, P13382041927453051564.a n = A005145 (n + 1)

end A005145

/-!
# A005149: Sequence of coefficients arising in connection with a rapidly converging series for Pi.

The programs for A005149, there is no canonical definition to state claims against.
-/

/-! ## A005149.P13760032777696917337

`A033999(n)*A195130(n+1)`
-/

namespace A005149.P13760032777696917337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A195130 (n + 1)

end

end A005149.P13760032777696917337

/-! ## A005149.P8207599410053614300

`A062157(n+1)*A195130(n+1)`
-/

namespace A005149.P8207599410053614300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (n + 1) * A195130 (n + 1)

end

end A005149.P8207599410053614300

/-! ## A005149.P16916996277487480099

`A195130(n+1)/A000367(Δ[or(1, n)])`
-/

namespace A005149.P16916996277487480099
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A195130 (n + 1) : ℚ) / (A000367 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ)

end

end A005149.P16916996277487480099

/-! ## A005149.P14680296651478395976

`A049310(A000217(2*n))*A195130(n+1)`
-/

namespace A005149.P14680296651478395976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049310 (A000217 (2 * n)).toNat * A195130 (n + 1)

end

end A005149.P14680296651478395976

/-! ## A005149.P14610974072446475763

`A049347(A195049(n))*A195130(n+1)`
-/

namespace A005149.P14610974072446475763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049347 (A195049 n).toNat * A195130 (n + 1)

end

end A005149.P14610974072446475763

/-!
# A005150: Look and Say sequence: describe the previous term! (method A - initial term is 1).

The programs for A005150, there is no canonical definition to state claims against.
-/

/-! ## A005150.P6966968086630950060

`A007090(A098097(n+1))`
-/

namespace A005150.P6966968086630950060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 (A098097 (n + 1)).toNat

end

end A005150.P6966968086630950060

/-! ## A005150.P3870645383315857488

`A084544(or(1, A098097(n+1)))`
-/

namespace A005150.P3870645383315857488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084544 (Int.lor 1 (A098097 (n + 1))).toNat

end

end A005150.P3870645383315857488

/-!
# A005151: Summarize the previous term (digits in increasing order), starting with a(1) = 1.

The programs for A005151, there is no canonical definition to state claims against.
-/

/-! ## A005151.P11093439675297842861

`A098155(n+1)+A000007(A001075(n))`
-/

namespace A005151.P11093439675297842861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098155 (n + 1) + A000007 (A001075 n).toNat

end

end A005151.P11093439675297842861

/-!
# A005152: Rotation distance between binary trees on n nodes.

The programs for A005152, the canonical program `A005152.P269090230189671273` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005152 has offset 1).

The definition of A005152 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A005152.P269090230189671273

`floor(2*(a(n-1)/(1-n)+n))` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A005152

/-- `floor(2*(a(n-1)/(1-n)+n))` -/
def P269090230189671273.Spec : Prop :=
  ∀ n, P269090230189671273.a n = A005152 (n + 1)

theorem P269090230189671273.correct : P269090230189671273.Spec := by
  intro n
  simp only [A005152, Nat.add_sub_cancel]

end A005152

/-!
# A005153: Practical numbers: positive integers m such that every k <= sigma(m) is a sum of distinct divisors of m. Also called panarithmic numbers.

The programs for A005153, there is no canonical definition to state claims against.
-/

/-! ## A005153.P2878508395784692769

`A179651(n)+a(n-1)` with `a(0)=1`
-/

namespace A005153.P2878508395784692769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A179651 n + a (n - 1)

end

end A005153.P2878508395784692769

/-! ## A005153.P3587176277757428842

`∑[A179651(n+1)]+1-A179651(n+1)`
-/

namespace A005153.P3587176277757428842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179651 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A179651 (n + 1))

end

end A005153.P3587176277757428842

/-! ## A005153.P18429401032040374409

`record[(n+1)*A322860(n+1)]`
-/

namespace A005153.P18429401032040374409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A322860 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005153.P18429401032040374409

/-! ## A005153.P11682186951016050470

`filter[A093891(n+1), A322860(#)]`
-/

namespace A005153.P11682186951016050470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093891 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A322860 (f1 j).toNat = 1) n)

end

end A005153.P11682186951016050470

/-! ## A005153.P12724281904480818967

`filter[A094229(n+1), A322860(#)]`
-/

namespace A005153.P12724281904480818967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094229 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A322860 (f1 j).toNat = 1) n)

end

end A005153.P12724281904480818967

/-! ## A005153.P3177668479425426968

`filter[A196149(n+1), A322860(#)]`
-/

namespace A005153.P3177668479425426968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196149 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A322860 (f1 j).toNat = 1) n)

end

end A005153.P3177668479425426968

/-! ## A005153.P18177921566638472205

`eq[1, A322860(n+1)]+1`
-/

namespace A005153.P18177921566638472205
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322860 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A005153.P18177921566638472205

/-! ## A005153.P1663174042213351499

`filter[A377929(n+1), A322860(#)]`
-/

namespace A005153.P1663174042213351499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377929 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A322860 (f1 j).toNat = 1) n)

end

end A005153.P1663174042213351499

/-! ## A005153.P1541064452848809747

`filter[A377929(n+1), A354034(#)]`
-/

namespace A005153.P1541064452848809747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377929 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354034 (f1 j).toNat = 1) n)

end

end A005153.P1541064452848809747

/-! ## A005153.P1035057829951587567

`filter[A377929(n+1), A378550(#)]`
-/

namespace A005153.P1035057829951587567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377929 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A378550 (f1 j).toNat = 1) n)

end

end A005153.P1035057829951587567

/-! ## A005153.P619450346362182746

`filter[A363227(n+1), A322860(#)]`
-/

namespace A005153.P619450346362182746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363227 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A322860 (f1 j).toNat = 1) n)

end

end A005153.P619450346362182746

/-! ## A005153.P9145282604817888529

`filter[A103288(n+1), A322860(#)]`
-/

namespace A005153.P9145282604817888529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103288 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A322860 (f1 j).toNat = 1) n)

end

end A005153.P9145282604817888529

/-! ## A005153.P16227519066335867116

`filter[A175495(n+1), A322860(#)]`
-/

namespace A005153.P16227519066335867116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175495 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A322860 (f1 j).toNat = 1) n)

end

end A005153.P16227519066335867116

/-! ## A005153.P6941005369411874938

`filter[A004277(n), A322860(#)]`
-/

namespace A005153.P6941005369411874938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A322860 (f1 j).toNat = 1) n)

end

end A005153.P6941005369411874938

/-! ## A005153.P10006284262705073670

`∩[A377929(n+1), A004277(n)]`
-/

namespace A005153.P10006284262705073670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377929 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A005153.P10006284262705073670

/-! ## A005153.P12629340301037025522

`eq[A000203(n+1), A119347(n+1)]+1`
-/

namespace A005153.P12629340301037025522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119347 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A005153.P12629340301037025522

/-! ## A005153.P18153777231993564896

`filter[A004275(n+1), A322860(#)]`
-/

namespace A005153.P18153777231993564896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A322860 (f1 j).toNat = 1) n)

end

end A005153.P18153777231993564896

/-! ## A005153.P3561743801055415160

`∩[A004275(n), A377929(n+1)]`
-/

namespace A005153.P3561743801055415160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377929 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A005153.P3561743801055415160

/-! ## A005153.P3782016771511240667

`filter[A185048(2*n+1), A322860(#)]`
-/

namespace A005153.P3782016771511240667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185048 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A322860 (f1 j).toNat = 1) n)

end

end A005153.P3782016771511240667

/-! ## A005153.P7930092270502400198

`filter[A004279(n), A322860(#)]`
-/

namespace A005153.P7930092270502400198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004279 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A322860 (f1 j).toNat = 1) n)

end

end A005153.P7930092270502400198

/-!
# A005154: a(0) = 1, a(1) = 2; thereafter a(n) = 3*a(n-1)^2 - 2*a(n-2)^4.

The programs for A005154, the canonical program `A005154.P14603038172768554452` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005154 has offset 0).

The definition of A005154 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-1)²-2*a(n-2)^4` (program `A005154.P14603038172768554452`, by `A005154.P14603038172768554452.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A005154.P14603038172768554452

`3*a(n-1)²-2*a(n-2)^4` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A005154

/-- `3*a(n-1)²-2*a(n-2)^4` -/
def P14603038172768554452.Spec : Prop :=
  ∀ n, P14603038172768554452.a n = A005154 n

theorem P14603038172768554452.correct : P14603038172768554452.Spec := by
  intro n
  simp only [A005154]

end A005154

/-!
# A005155: Number of degree sequences of n-node graphs.

The programs for A005155, there is no canonical definition to state claims against.
-/

/-! ## A005155.P3279718282217550710

`A060143((∑[n]+1)*a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A005155.P3279718282217550710
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A060143 (((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℤ) * a (n - 1)).toNat

end

end A005155.P3279718282217550710

/-! ## A005155.P8971455759738078138

`A008620(∑[A244432(n)])`
-/

namespace A005155.P8971455759738078138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244432 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A005155.P8971455759738078138

/-!
# A005156: Number of alternating sign 2n+1 X 2n+1 matrices symmetric about the vertical axis (VSASM's); also 2n X 2n off-diagonally symmetric alternating sign matrices (OSASM's).

The programs for A005156, there is no canonical definition to state claims against.
-/

/-! ## A005156.P16862067842240720938

`sqrt(A059492(n))`
-/

namespace A005156.P16862067842240720938
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A059492 n : ℝ)

end

end A005156.P16862067842240720938

/-! ## A005156.P2134895201761908944

`A005161(2*n)/A051255(n)`
-/

namespace A005156.P2134895201761908944
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005161 (2 * n) : ℚ) / (A051255 n : ℚ)

end

end A005156.P2134895201761908944

/-! ## A005156.P1990877935410679424

`root(A059492(n), A178780(n)+2)`
-/

namespace A005156.P1990877935410679424
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A059492 n : ℝ) ^ (1 / (A178780 n + 2 : ℝ))

end

end A005156.P1990877935410679424

/-! ## A005156.P18374415411844904065

`A059492(n)^(A177849(n)/2)`
-/

namespace A005156.P18374415411844904065
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A059492 n : ℝ) ^ ((A177849 n : ℚ) / 2 : ℝ)

end

end A005156.P18374415411844904065

/-! ## A005156.P10195584295440837319

`root(A059492(n), gcd(2, A059488(n)))`
-/

namespace A005156.P10195584295440837319
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A059492 n : ℝ) ^ (1 / (Int.gcd 2 (A059488 n) : ℝ))

end

end A005156.P10195584295440837319

/-!
# A005157: Number of totally symmetric plane partitions that fit in an n X n X n box.

The programs for A005157, there is no canonical definition to state claims against.
-/

/-! ## A005157.P923631937233200426

`A049505(n)/A005130(n)`
-/

namespace A005157.P923631937233200426
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049505 n : ℚ) / (A005130 n : ℚ)

end

end A005157.P923631937233200426

/-! ## A005157.P4235446000685022395

`A049505(n)/A048601(∑[n+1])`
-/

namespace A005157.P4235446000685022395
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049505 n : ℚ) / (A048601 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A005157.P4235446000685022395

/-! ## A005157.P6383238631403280074

`A049505(n)/(A321511(n)+n!)`
-/

namespace A005157.P6383238631403280074
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049505 n : ℚ) / (A321511 n + (Nat.factorial n : ℤ) : ℚ)

end

end A005157.P6383238631403280074

/-! ## A005157.P9565758349724968355

`A049505(n)/(A321511(n)+A000142(n))`
-/

namespace A005157.P9565758349724968355
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049505 n : ℚ) / (A321511 n + A000142 n : ℚ)

end

end A005157.P9565758349724968355

/-! ## A005157.P11425006544215171377

`A049505(n)/sqrt(A049503(n))`
-/

namespace A005157.P11425006544215171377
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A049505 n : ℝ) / Real.sqrt (A049503 n : ℝ)

end

end A005157.P11425006544215171377

/-!
# A005158: Number of alternating sign n X n matrices invariant under a half-turn.

The programs for A005158, there is no canonical definition to state claims against.
-/

/-! ## A005158.P12589397522283151160

`∏[A081204(n)/A001405(n)]`
-/

namespace A005158.P12589397522283151160
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081204 n : ℚ) / (A001405 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A005158.P12589397522283151160

/-! ## A005158.P379902282162274293

`A222757(A284010(n+1)+A002931(n+1))`
-/

namespace A005158.P379902282162274293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222757 (A284010 (n + 1) + A002931 (n + 1)).toNat

end

end A005158.P379902282162274293

/-!
# A005159: a(n) = 3^n*Catalan(n).

The programs for A005159, the canonical program `A005159.P13336724963119829101` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005159 has offset 0).

The definition of A005159 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3^n*A000108(n)` (program `A005159.P13336724963119829101`, by `A005159.P13336724963119829101.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A005159.P13336724963119829101

`3^n*A000108(n)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A005159

/-- `3^n*A000108(n)` -/
def P13336724963119829101.Spec : Prop :=
  ∀ n, P13336724963119829101.a n = A005159 n

theorem P13336724963119829101.correct : P13336724963119829101.Spec := by
  intro n
  simp only [A005159]

end A005159

/-! ## A005159.P9458949694125651378

`3^n*C(2*n, n)/(n+1)`
-/

namespace A005159.P9458949694125651378
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 ^ n * Nat.choose (2 * n) n : ℚ) / (n + 1 : ℚ)

end

end A005159.P9458949694125651378

namespace A005159

/-- `3^n*C(2*n, n)/(n+1)` -/
def P9458949694125651378.Spec : Prop :=
  ∀ n, P9458949694125651378.a n = (A005159 n : ℚ)

end A005159

/-! ## A005159.P1965576017911808022

`3*(4-6/(n+1))*a(n-1)` with `a(0)=1`
-/

namespace A005159.P1965576017911808022
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  3 * ((4 - 6 / (n + 1 : ℚ)) * a (n - 1))

end

end A005159.P1965576017911808022

namespace A005159

/-- `3*(4-6/(n+1))*a(n-1)` -/
def P1965576017911808022.Spec : Prop :=
  ∀ n, P1965576017911808022.a n = (A005159 n : ℚ)

end A005159

/-! ## A005159.P7095557961810456448

`record[A110518(n)]`
-/

namespace A005159.P7095557961810456448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110518 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005159.P7095557961810456448

namespace A005159

/-- `record[A110518(n)]` -/
def P7095557961810456448.Spec : Prop :=
  ∀ n, P7095557961810456448.a n = A005159 n

end A005159

/-! ## A005159.P7659026423547164828

`A156909(2*(n+1))`
-/

namespace A005159.P7659026423547164828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156909 (2 * (n + 1))

end

end A005159.P7659026423547164828

namespace A005159

/-- `A156909(2*(n+1))` -/
def P7659026423547164828.Spec : Prop :=
  ∀ n, P7659026423547164828.a n = A005159 n

end A005159

/-! ## A005159.P17303058921775466124

`A025226(n+1)/3`
-/

namespace A005159.P17303058921775466124
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025226 (n + 1) : ℚ) / 3

end

end A005159.P17303058921775466124

namespace A005159

/-- `A025226(n+1)/3` -/
def P17303058921775466124.Spec : Prop :=
  ∀ n, P17303058921775466124.a n = (A005159 n : ℚ)

theorem P17303058921775466124.correct : P17303058921775466124.Spec := by
  intro n
  simp only [A005159, Nat.add_sub_cancel, A005159.P17303058921775466124.a, A005159.P13336724963119829101.a, A000108, A000108.P17551949696095299361.a, A025226, A025226.P14671766639672924576.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A005159

/-! ## A005159.P17410391820883112582

`A110518(∑[n+1]+1)`
-/

namespace A005159.P17410391820883112582
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110518 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A005159.P17410391820883112582

namespace A005159

/-- `A110518(∑[n+1]+1)` -/
def P17410391820883112582.Spec : Prop :=
  ∀ n, P17410391820883112582.a n = A005159 n

end A005159

/-! ## A005159.P9630029189391868817

`abs(A168491(n))*3^n`
-/

namespace A005159.P9630029189391868817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A168491 n| * (3 ^ n : ℤ)

end

end A005159.P9630029189391868817

namespace A005159

/-- `abs(A168491(n))*3^n` -/
def P9630029189391868817.Spec : Prop :=
  ∀ n, P9630029189391868817.a n = A005159 n

end A005159

/-! ## A005159.P9194755809013982462

`3^n*A120588(n+1)`
-/

namespace A005159.P9194755809013982462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * A120588 (n + 1)

end

end A005159.P9194755809013982462

namespace A005159

/-- `3^n*A120588(n+1)` -/
def P9194755809013982462.Spec : Prop :=
  ∀ n, P9194755809013982462.a n = A005159 n

end A005159

/-! ## A005159.P7327463946805561480

`A168491(n)*A352779(n)`
-/

namespace A005159.P7327463946805561480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168491 n * A352779 n

end

end A005159.P7327463946805561480

namespace A005159

/-- `A168491(n)*A352779(n)` -/
def P7327463946805561480.Spec : Prop :=
  ∀ n, P7327463946805561480.a n = A005159 n

end A005159

/-!
# A005161: Number of alternating sign 2n+1 X 2n+1 matrices symmetric with respect to both horizontal and vertical axes (VHSASM's).

The programs for A005161, there is no canonical definition to state claims against.
-/

/-! ## A005161.P12586743620356319436

`A005156(floor(n/2))*A051255(ceil(n/2))`
-/

namespace A005161.P12586743620356319436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005156 ⌊(n : ℚ) / 2⌋.toNat * A051255 ⌈(n : ℚ) / 2⌉.toNat

end

end A005161.P12586743620356319436

/-! ## A005161.P4715739306425354489

`Δ[A164830(a(n-1))]` with `a(0)=0, a(1)=1`
-/

namespace A005161.P4715739306425354489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  A164830 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A005161.P4715739306425354489

/-! ## A005161.P4788649896077740384

`A298363(A114297(n))`
-/

namespace A005161.P4788649896077740384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298363 (A114297 n).toNat

end

end A005161.P4788649896077740384

/-!
# A005162: Number of alternating sign n X n matrices symmetric with respect to both diagonals.

The programs for A005162, there is no canonical definition to state claims against.
-/

/-! ## A005162.P15169470726911030296

`A134478(A134478(n)*A343406(n))`
-/

namespace A005162.P15169470726911030296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134478 (A134478 n * A343406 n).toNat

end

end A005162.P15169470726911030296

/-! ## A005162.P976174808177118185

`A055224(lcm(A072706(n), A081673(n)))`
-/

namespace A005162.P976174808177118185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055224 (Int.lcm (A072706 n) (A081673 n))

end

end A005162.P976174808177118185

/-!
# A005163: Number of alternating sign n X n matrices that are symmetric about a diagonal.

The programs for A005163, there is no canonical definition to state claims against.
-/

/-! ## A005163.P7758278539815959076

`A090234(a(n-1))+n*a(n-1)` with `a(0)=1`
-/

namespace A005163.P7758278539815959076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A090234 (a (n - 1)).toNat + (n : ℤ) * a (n - 1)

end

end A005163.P7758278539815959076

/-! ## A005163.P11114782357208297032

`A351005(A038410(n))`
-/

namespace A005163.P11114782357208297032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351005 (A038410 n).toNat

end

end A005163.P11114782357208297032

/-!
# A005164: Number of alternating sign 2n+1 X 2n+1 matrices invariant under all symmetries of the square.

The programs for A005164, there is no canonical definition to state claims against.
-/

/-! ## A005164.P16141971720564981638

`A096182(A296231(n))`
-/

namespace A005164.P16141971720564981638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096182 (A296231 n).toNat

end

end A005164.P16141971720564981638

/-! ## A005164.P2274744705923878506

`A356737(A331554(n))`
-/

namespace A005164.P2274744705923878506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356737 (A331554 n).toNat

end

end A005164.P2274744705923878506

/-! ## A005164.P4266382924659823109

`A122651(A345697(n)+A065358(n))`
-/

namespace A005164.P4266382924659823109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122651 (A345697 n + A065358 n).toNat

end

end A005164.P4266382924659823109

/-! ## A005164.P11962382473754755301

`A356737(A001523(n)-A217831(n))`
-/

namespace A005164.P11962382473754755301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356737 (A001523 n - A217831 n).toNat

end

end A005164.P11962382473754755301

/-!
# A005165: Alternating factorials: n! - (n-1)! + (n-2)! - ... 1!.

The programs for A005165, the canonical program `A005165.P2730884794680852253` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005165 has offset 0).

The definition of A005165 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A005165.P2730884794680852253

`n!-a(n-1)` with `a(0)=0`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A005165

/-- `n!-a(n-1)` -/
def P2730884794680852253.Spec : Prop :=
  ∀ n, P2730884794680852253.a n = A005165 n

theorem P2730884794680852253.correct : P2730884794680852253.Spec := by
  intro n
  simp only [A005165]

end A005165

/-! ## A005165.P12382202684991459014

`abs(1-∑[(-1)^n*n!])`
-/

namespace A005165.P12382202684991459014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * (Nat.factorial n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - ∑ j ∈ Finset.range (n + 1), f1 j|

end

end A005165.P12382202684991459014

namespace A005165

/-- `abs(1-∑[(-1)^n*n!])` -/
def P12382202684991459014.Spec : Prop :=
  ∀ n, P12382202684991459014.a n = A005165 n

end A005165

/-! ## A005165.P3650444025779666646

`abs(1-∑[-(n*a(n-1))])` with `a(0)=1`
-/

namespace A005165.P3650444025779666646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  -((n : ℤ) * f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - ∑ j ∈ Finset.range (n + 1), f1 j|

end

end A005165.P3650444025779666646

namespace A005165

/-- `abs(1-∑[-(n*a(n-1))])` -/
def P3650444025779666646.Spec : Prop :=
  ∀ n, P3650444025779666646.a n = A005165 n

end A005165

/-! ## A005165.P7923413298529829342

`∏[round(1/acot(n))]-a(n-1)` with `a(0)=0`
-/

namespace A005165.P7923413298529829342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ∏ j ∈ Finset.range (n + 1), f1 j - a (n - 1)

end

end A005165.P7923413298529829342

namespace A005165

/-- `∏[round(1/acot(n))]-a(n-1)` -/
def P7923413298529829342.Spec : Prop :=
  ∀ n, P7923413298529829342.a n = A005165 n

end A005165

/-! ## A005165.P3715832783253040988

`∏[ceil(abs(γ-n))]-a(n-1)` with `a(0)=0`
-/

namespace A005165.P3715832783253040988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈|Real.eulerMascheroniConstant - (n : ℝ)|⌉

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ∏ j ∈ Finset.range (n + 1), f1 j - a (n - 1)

end

end A005165.P3715832783253040988

namespace A005165

/-- `∏[ceil(abs(γ-n))]-a(n-1)` -/
def P3715832783253040988.Spec : Prop :=
  ∀ n, P3715832783253040988.a n = A005165 n

end A005165

/-! ## A005165.P10443068448354180451

`(n-1)*a(n-1)+n*a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A005165.P10443068448354180451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  ((n : ℤ) - 1) * a (n - 1) + (n : ℤ) * a (n - 2)

end

end A005165.P10443068448354180451

namespace A005165

/-- `(n-1)*a(n-1)+n*a(n-2)` -/
def P10443068448354180451.Spec : Prop :=
  ∀ n, P10443068448354180451.a n = A005165 n

end A005165

/-! ## A005165.P3225588298181546600

`n*a(n-1)-(a(n-1)-n*a(n-2))` with `a(0)=0, a(1)=1`
-/

namespace A005165.P3225588298181546600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  (n : ℤ) * a (n - 1) - (a (n - 1) - (n : ℤ) * a (n - 2))

end

end A005165.P3225588298181546600

namespace A005165

/-- `n*a(n-1)-(a(n-1)-n*a(n-2))` -/
def P3225588298181546600.Spec : Prop :=
  ∀ n, P3225588298181546600.a n = A005165 n

end A005165

/-! ## A005165.P5427989438549012209

`abs(1-A058006(n))`
-/

namespace A005165.P5427989438549012209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A058006 n|

end

end A005165.P5427989438549012209

namespace A005165

/-- `abs(1-A058006(n))` -/
def P5427989438549012209.Spec : Prop :=
  ∀ n, P5427989438549012209.a n = A005165 n

end A005165

/-! ## A005165.P6836299730515350477

`abs(1-∑[A133942(n)])`
-/

namespace A005165.P6836299730515350477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133942 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - ∑ j ∈ Finset.range (n + 1), f1 j|

end

end A005165.P6836299730515350477

namespace A005165

/-- `abs(1-∑[A133942(n)])` -/
def P6836299730515350477.Spec : Prop :=
  ∀ n, P6836299730515350477.a n = A005165 n

end A005165

/-! ## A005165.P8659631968262352165

`A033312(n)+1-a(n-1)` with `a(0)=0`
-/

namespace A005165.P8659631968262352165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A033312 n + (1 - a (n - 1))

end

end A005165.P8659631968262352165

namespace A005165

/-- `A033312(n)+1-a(n-1)` -/
def P8659631968262352165.Spec : Prop :=
  ∀ n, P8659631968262352165.a n = A005165 n

theorem P8659631968262352165.correct : P8659631968262352165.Spec := by
  intro n
  simp only [A005165, Nat.add_sub_cancel, A005165.P8659631968262352165.a, A005165.P2730884794680852253.a, A033312, A033312.P12652974073192440444.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A005165

/-!
# A005166: a(0) = 1; a(n) = (1 + a(0)^3 + ... + a(n-1)^3)/n (not always integral!).

The programs for A005166, there is no canonical definition to state claims against.
-/

/-! ## A005166.P10061821853456126622

`((a(n-1)*a(n-1)-1)/n+1)*a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A005166.P10061821853456126622
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n a =>
  ((a (n - 1) * a (n - 1) - 1) / (n : ℚ) + 1) * a (n - 1)

end

end A005166.P10061821853456126622

/-! ## A005166.P4752337073302562616

`(1-(1-a(n-1)*a(n-1))/n)*a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A005166.P4752337073302562616
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n a =>
  (1 - (1 - a (n - 1) * a (n - 1)) / (n : ℚ)) * a (n - 1)

end

end A005166.P4752337073302562616

/-!
# A005168: n-th derivative of x^x at 1, divided by n.

The programs for A005168, there is no canonical definition to state claims against.
-/

/-! ## A005168.P4249627030438785027

`A005727(n+1)/(n+1)`
-/

namespace A005168.P4249627030438785027
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005727 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A005168.P4249627030438785027

/-! ## A005168.P17632626751307100217

`A215703(∑[n+3]+1)/(n+1)`
-/

namespace A005168.P17632626751307100217
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A215703 (∑ j ∈ Finset.range (n + 1), f1 j + 1) : ℚ) / (n + 1 : ℚ)

end

end A005168.P17632626751307100217

/-! ## A005168.P4662426971565600271

`A295028(∑[n+2])`
-/

namespace A005168.P4662426971565600271
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295028 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A005168.P4662426971565600271

/-! ## A005168.P11718710012379778363

`A277537(A046691(n+2)+1)/(n+1)`
-/

namespace A005168.P11718710012379778363
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A277537 (A046691 (n + 2) + 1).toNat : ℚ) / (n + 1 : ℚ)

end

end A005168.P11718710012379778363

/-! ## A005168.P2071374933847653119

`A295027(A133263(n))`
-/

namespace A005168.P2071374933847653119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295027 (A133263 n).toNat

end

end A005168.P2071374933847653119

/-! ## A005168.P16282605926308645822

`A295027(A238531(n+1))`
-/

namespace A005168.P16282605926308645822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295027 (A238531 (n + 1)).toNat

end

end A005168.P16282605926308645822

/-! ## A005168.P5515251574633219307

`A295027(A178334(n)+A000124(n))`
-/

namespace A005168.P5515251574633219307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295027 (A178334 n + A000124 n).toNat

end

end A005168.P5515251574633219307

/-! ## A005168.P11111444902966117210

`A295027(2-(A178334(n)-A000124(n)))`
-/

namespace A005168.P11111444902966117210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295027 (2 - (A178334 n - A000124 n)).toNat

end

end A005168.P11111444902966117210

/-!
# A005169: Number of fountains of n coins.

The programs for A005169, there is no canonical definition to state claims against.
-/

/-! ## A005169.P8319975744578738032

`∑[A289080(n)]`
-/

namespace A005169.P8319975744578738032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289080 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005169.P8319975744578738032

/-! ## A005169.P4748447765425896338

`A288267(A075349(n+1))`
-/

namespace A005169.P4748447765425896338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288267 (A075349 (n + 1)).toNat

end

end A005169.P4748447765425896338

/-! ## A005169.P15610764446772055435

`A288267(A006463(n)+n)`
-/

namespace A005169.P15610764446772055435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288267 (A006463 n + (n : ℤ)).toNat

end

end A005169.P15610764446772055435

/-! ## A005169.P3071484000578584837

`2*A288006(n)-A288005(n)`
-/

namespace A005169.P3071484000578584837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A288006 n - A288005 n

end

end A005169.P3071484000578584837

/-! ## A005169.P2297382062516610793

`A291652(∑[n+2]-1)`
-/

namespace A005169.P2297382062516610793
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291652 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A005169.P2297382062516610793

/-! ## A005169.P16747054935138336037

`A168396(∑[abs(1-n)])`
-/

namespace A005169.P16747054935138336037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168396 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A005169.P16747054935138336037

/-! ## A005169.P12008610737360017906

`A185646(2*n²)`
-/

namespace A005169.P12008610737360017906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185646 (2 * n ^ 2)

end

end A005169.P12008610737360017906

/-!
# A005171: Characteristic function of nonprimes: 0 if n is prime, else 1.

The programs for A005171, the canonical program `A005171.P15860856746370777121` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005171 has offset 1).

The definition of A005171 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010051, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A005171.P15860856746370777121

`1-A010051(n+1)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A005171

/-- `1-A010051(n+1)` -/
def P15860856746370777121.Spec : Prop :=
  ∀ n, P15860856746370777121.a n = A005171 (n + 1)

theorem P15860856746370777121.correct : P15860856746370777121.Spec := by
  intro n
  simp only [A005171, Nat.add_sub_cancel]

end A005171

/-! ## A005171.P9420996407637377008

`A057427(A239968(n+1))`
-/

namespace A005171.P9420996407637377008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A239968 (n + 1)).toNat

end

end A005171.P9420996407637377008

namespace A005171

/-- `A057427(A239968(n+1))` -/
def P9420996407637377008.Spec : Prop :=
  ∀ n, P9420996407637377008.a n = A005171 (n + 1)

end A005171

/-! ## A005171.P5627040534539136458

`∏{p}[n+1, C(#%n, #)]`
-/

namespace A005171.P5627040534539136458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), Nat.choose (p % n) p

end

end A005171.P5627040534539136458

namespace A005171

/-- `∏{p}[n+1, C(#%n, #)]` -/
def P5627040534539136458.Spec : Prop :=
  ∀ n, (P5627040534539136458.a n : ℤ) = A005171 (n + 1)

end A005171

/-! ## A005171.P1178327795116707694

`C(n, ∑{p}[n+1, C(#, n)])`
-/

namespace A005171.P1178327795116707694
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (∑ p ∈ Nat.primeFactors (f1 n), Nat.choose p n)

end

end A005171.P1178327795116707694

namespace A005171

/-- `C(n, ∑{p}[n+1, C(#, n)])` -/
def P1178327795116707694.Spec : Prop :=
  ∀ n, (P1178327795116707694.a n : ℤ) = A005171 (n + 1)

end A005171

/-! ## A005171.P5240715433233561006

`∏{p}[n+1, C(n, C(#, n))]`
-/

namespace A005171.P5240715433233561006
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), Nat.choose n (Nat.choose p n)

end

end A005171.P5240715433233561006

namespace A005171

/-- `∏{p}[n+1, C(n, C(#, n))]` -/
def P5240715433233561006.Spec : Prop :=
  ∀ n, (P5240715433233561006.a n : ℤ) = A005171 (n + 1)

end A005171

/-! ## A005171.P650963930649718388

`2-C(2, ∑{e}[n+1, #])!`
-/

namespace A005171.P650963930649718388
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (Nat.factorial (Nat.choose 2 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)) : ℤ)

end

end A005171.P650963930649718388

namespace A005171

/-- `2-C(2, ∑{e}[n+1, #])!` -/
def P650963930649718388.Spec : Prop :=
  ∀ n, P650963930649718388.a n = A005171 (n + 1)

end A005171

/-! ## A005171.P15899715114945593128

`2-∏{p}[n+1, ceil(#/n)]`
-/

namespace A005171.P15899715114945593128
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ∏ p ∈ Nat.primeFactors (f1 n), ⌈(p : ℚ) / (n : ℚ)⌉

end

end A005171.P15899715114945593128

namespace A005171

/-- `2-∏{p}[n+1, ceil(#/n)]` -/
def P15899715114945593128.Spec : Prop :=
  ∀ n, P15899715114945593128.a n = A005171 (n + 1)

end A005171

/-! ## A005171.P10980300962248358446

`char[lt[∑{p}[n+1, #], n+1]]`
-/

namespace A005171.P10980300962248358446
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), p

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f4 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A005171.P10980300962248358446

namespace A005171

/-- `char[lt[∑{p}[n+1, #], n+1]]` -/
def P10980300962248358446.Spec : Prop :=
  ∀ n, (P10980300962248358446.a n : ℤ) = A005171 (n + 1)

end A005171

/-! ## A005171.P17022401304643393913

`∏{p}[n+1, round(n/(#+n))]`
-/

namespace A005171.P17022401304643393913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.roundAway ((n : ℚ) / (p + n : ℚ))

end

end A005171.P17022401304643393913

namespace A005171

/-- `∏{p}[n+1, round(n/(#+n))]` -/
def P17022401304643393913.Spec : Prop :=
  ∀ n, P17022401304643393913.a n = A005171 (n + 1)

end A005171

/-! ## A005171.P9125940093844090039

`1-∑{p}[n+1, val(#, n+1)]`
-/

namespace A005171.P9125940093844090039
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((∑ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.valuation p (n + 1) : ℕ) : ℤ)

end

end A005171.P9125940093844090039

namespace A005171

/-- `1-∑{p}[n+1, val(#, n+1)]` -/
def P9125940093844090039.Spec : Prop :=
  ∀ n, P9125940093844090039.a n = A005171 (n + 1)

end A005171

/-! ## A005171.P12272584715168141752

`(1-C(n+2, ∑{d}[n+1, #]))²`
-/

namespace A005171.P12272584715168141752
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (Nat.choose (n + 2) (∑ d ∈ Nat.divisors (f1 n), d) : ℤ)) ^ 2

end

end A005171.P12272584715168141752

namespace A005171

/-- `(1-C(n+2, ∑{d}[n+1, #]))²` -/
def P12272584715168141752.Spec : Prop :=
  ∀ n, P12272584715168141752.a n = A005171 (n + 1)

end A005171

/-! ## A005171.P10598104909125873704

`∏{p}[n+1, 1-val(#, n+1)]²`
-/

namespace A005171.P10598104909125873704
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f1 n), (1 - (SequenceMachineLib.valuation p (n + 1) : ℤ))) ^ 2

end

end A005171.P10598104909125873704

namespace A005171

/-- `∏{p}[n+1, 1-val(#, n+1)]²` -/
def P10598104909125873704.Spec : Prop :=
  ∀ n, P10598104909125873704.a n = A005171 (n + 1)

end A005171

/-! ## A005171.P13386258346171944235

`1-∑{p}[n+1, floor(#/(n+1))]`
-/

namespace A005171.P13386258346171944235
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ p ∈ Nat.primeFactors (f1 n), ⌊(p : ℚ) / (n + 1 : ℚ)⌋

end

end A005171.P13386258346171944235

namespace A005171

/-- `1-∑{p}[n+1, floor(#/(n+1))]` -/
def P13386258346171944235.Spec : Prop :=
  ∀ n, P13386258346171944235.a n = A005171 (n + 1)

end A005171

/-! ## A005171.P2739780883879711691

`a(n-1)!%∑{e}[n+1, #]` with `a(0)=1`
-/

namespace A005171.P2739780883879711691
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.factorial (a (n - 1)) % (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A005171.P2739780883879711691

namespace A005171

/-- `a(n-1)!%∑{e}[n+1, #]` -/
def P2739780883879711691.Spec : Prop :=
  ∀ n, (P2739780883879711691.a n : ℤ) = A005171 (n + 1)

end A005171

/-! ## A005171.P6428122753495965104

`1-round(∑{p}[n+1, #/(2*n+1)])`
-/

namespace A005171.P6428122753495965104
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - SequenceMachineLib.roundAway (∑ p ∈ Nat.primeFactors (f1 n), (p : ℚ) / (2 * n + 1 : ℚ))

end

end A005171.P6428122753495965104

namespace A005171

/-- `1-round(∑{p}[n+1, #/(2*n+1)])` -/
def P6428122753495965104.Spec : Prop :=
  ∀ n, P6428122753495965104.a n = A005171 (n + 1)

end A005171

/-! ## A005171.P8528880364813873951

`ceil((n+1-∑{p}[n+1, #])/(n+1))`
-/

namespace A005171.P8528880364813873951
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n + 1 : ℤ) - ((∑ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℤ) : ℚ) / (n + 1 : ℚ)⌉

end

end A005171.P8528880364813873951

namespace A005171

/-- `ceil((n+1-∑{p}[n+1, #])/(n+1))` -/
def P8528880364813873951.Spec : Prop :=
  ∀ n, P8528880364813873951.a n = A005171 (n + 1)

end A005171

/-! ## A005171.P13481422900834142971

`floor((2*n+1)/(∑{p}[n+1, #]+n+1))`
-/

namespace A005171.P13481422900834142971
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 * n + 1 : ℚ) / ((∑ p ∈ Nat.primeFactors (f1 n), p + (n + 1) : ℕ) : ℚ)⌋

end

end A005171.P13481422900834142971

namespace A005171

/-- `floor((2*n+1)/(∑{p}[n+1, #]+n+1))` -/
def P13481422900834142971.Spec : Prop :=
  ∀ n, P13481422900834142971.a n = A005171 (n + 1)

end A005171

/-! ## A005171.P11236037652867870468

`A073898(n+1)%2`
-/

namespace A005171.P11236037652867870468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A073898 (n + 1)) 2

end

end A005171.P11236037652867870468

namespace A005171

/-- `A073898(n+1)%2` -/
def P11236037652867870468.Spec : Prop :=
  ∀ n, P11236037652867870468.a n = A005171 (n + 1)

end A005171

/-! ## A005171.P11267901379631235127

`A105560(n+1)%2`
-/

namespace A005171.P11267901379631235127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A105560 (n + 1)) 2

end

end A005171.P11267901379631235127

namespace A005171

/-- `A105560(n+1)%2` -/
def P11267901379631235127.Spec : Prop :=
  ∀ n, P11267901379631235127.a n = A005171 (n + 1)

end A005171

/-! ## A005171.P5545067361857333970

`A135141(n+1)%2`
-/

namespace A005171.P5545067361857333970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A135141 (n + 1)) 2

end

end A005171.P5545067361857333970

namespace A005171

/-- `A135141(n+1)%2` -/
def P5545067361857333970.Spec : Prop :=
  ∀ n, P5545067361857333970.a n = A005171 (n + 1)

end A005171

/-!
# A005172: Number of labeled rooted trees of subsets of an n-set.

The programs for A005172, there is no canonical definition to state claims against.
-/

/-! ## A005172.P13299838180372726508

`A224766(n+1)/2`
-/

namespace A005172.P13299838180372726508
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A224766 (n + 1) : ℚ) / 2

end

end A005172.P13299838180372726508

/-! ## A005172.P368248455945779377

`A005640(n+2)/2`
-/

namespace A005172.P368248455945779377
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005640 (n + 2) : ℚ) / 2

end

end A005172.P368248455945779377

/-! ## A005172.P17886750111417572665

`2^n*A006351(n+1)`
-/

namespace A005172.P17886750111417572665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A006351 (n + 1)

end

end A005172.P17886750111417572665

/-! ## A005172.P9044577310990270261

`A225170(n+1)-floor(acot(n))`
-/

namespace A005172.P9044577310990270261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225170 (n + 1) - ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A005172.P9044577310990270261

/-! ## A005172.P9966628903562319193

`A000079(n)*A278458(∑[n+1])`
-/

namespace A005172.P9966628903562319193
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A278458 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A005172.P9966628903562319193

/-! ## A005172.P17620923364857391792

`Δ[A000051(n)]*A278458(∑[n+1])`
-/

namespace A005172.P17620923364857391792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A278458 (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A005172.P17620923364857391792

/-! ## A005172.P3182922110765093553

`(A000225(n)+1)*A278458(∑[n+1])`
-/

namespace A005172.P3182922110765093553
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000225 n + 1) * A278458 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A005172.P3182922110765093553

/-! ## A005172.P12246155757707953639

`A011782(n+1)*A278458(∑[n+1])`
-/

namespace A005172.P12246155757707953639
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (n + 1) * A278458 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A005172.P12246155757707953639

/-! ## A005172.P4404771882958235126

`A006351(n+1)*A036561(A000217(n))`
-/

namespace A005172.P4404771882958235126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006351 (n + 1) * A036561 (A000217 n).toNat

end

end A005172.P4404771882958235126

/-! ## A005172.P12510347829727379793

`A006351(n+1)*A074323(A005408(n))`
-/

namespace A005172.P12510347829727379793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006351 (n + 1) * A074323 (A005408 n).toNat

end

end A005172.P12510347829727379793

/-!
# A005173: Number of rooted trees with 3 nodes of disjoint sets of labels with union {1..n}. If a node has an empty set of labels then it must have at least two children.

The programs for A005173, the canonical program `A005173.P938176805152167195` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005173 has offset 1).

The definition of A005173 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A005173.P938176805152167195

`(3^(n+2)-2^(n+4)+7)/2`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A005173

/-- `(3^(n+2)-2^(n+4)+7)/2` -/
def P938176805152167195.Spec : Prop :=
  ∀ n, P938176805152167195.a n = (A005173 (n + 1) : ℚ)

end A005173

/-! ## A005173.P12018268474020583694

`∑[ogf((x+6x^2)/(1-5x+6x^2))]`
-/

namespace A005173.P12018268474020583694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 6] [1, -5, 6] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005173.P12018268474020583694

namespace A005173

/-- `∑[ogf((x+6x^2)/(1-5x+6x^2))]` -/
def P12018268474020583694.Spec : Prop :=
  ∀ n, P12018268474020583694.a n = A005173 (n + 1)

end A005173

/-! ## A005173.P8008075552340283317

`∑[3^n+2*a(n-1)]` with `a(0)=0, a(1)=1`
-/

namespace A005173.P8008075552340283317
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  3 ^ n + 2 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005173.P8008075552340283317

namespace A005173

/-- `∑[3^n+2*a(n-1)]` -/
def P8008075552340283317.Spec : Prop :=
  ∀ n, (P8008075552340283317.a n : ℤ) = A005173 (n + 1)

end A005173

/-! ## A005173.P1887811099150340343

`∑[lcm(3, a(n-1))+2^(n+1)]` with `a(0)=0, a(1)=1`
-/

namespace A005173.P1887811099150340343
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  Nat.lcm 3 (f1 (n - 1)) + 2 ^ (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005173.P1887811099150340343

namespace A005173

/-- `∑[lcm(3, a(n-1))+2^(n+1)]` -/
def P1887811099150340343.Spec : Prop :=
  ∀ n, (P1887811099150340343.a n : ℤ) = A005173 (n + 1)

end A005173

/-! ## A005173.P4847769112263131482

`∑[a(n-1)+a(n-1)+3^n]` with `a(0)=0, a(1)=1`
-/

namespace A005173.P4847769112263131482
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 (n - 1) + (f1 (n - 1) + 3 ^ n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005173.P4847769112263131482

namespace A005173

/-- `∑[a(n-1)+a(n-1)+3^n]` -/
def P4847769112263131482.Spec : Prop :=
  ∀ n, (P4847769112263131482.a n : ℤ) = A005173 (n + 1)

end A005173

/-! ## A005173.P12272638241468139572

`∑[∑[A056182(n)]]-n`
-/

namespace A005173.P12272638241468139572
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056182 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A005173.P12272638241468139572

namespace A005173

/-- `∑[∑[A056182(n)]]-n` -/
def P12272638241468139572.Spec : Prop :=
  ∀ n, P12272638241468139572.a n = A005173 (n + 1)

end A005173

/-! ## A005173.P15062949036575729969

`∑[A003063(n+2)]+1`
-/

namespace A005173.P15062949036575729969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003063 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A005173.P15062949036575729969

namespace A005173

/-- `∑[A003063(n+2)]+1` -/
def P15062949036575729969.Spec : Prop :=
  ∀ n, P15062949036575729969.a n = A005173 (n + 1)

end A005173

/-! ## A005173.P18318142136425289928

`∑[A028243(n+2)]-n`
-/

namespace A005173.P18318142136425289928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028243 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A005173.P18318142136425289928

namespace A005173

/-- `∑[A028243(n+2)]-n` -/
def P18318142136425289928.Spec : Prop :=
  ∀ n, P18318142136425289928.a n = A005173 (n + 1)

end A005173

/-! ## A005173.P5541075630833271995

`∑[∑[2*A001047(n)]]-n`
-/

namespace A005173.P5541075630833271995
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001047 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A005173.P5541075630833271995

namespace A005173

/-- `∑[∑[2*A001047(n)]]-n` -/
def P5541075630833271995.Spec : Prop :=
  ∀ n, P5541075630833271995.a n = A005173 (n + 1)

end A005173

/-! ## A005173.P14180868584039169687

`∑[∑[A304973(2*(n+1))]]-n`
-/

namespace A005173.P14180868584039169687
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304973 (2 * (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A005173.P14180868584039169687

namespace A005173

/-- `∑[∑[A304973(2*(n+1))]]-n` -/
def P14180868584039169687.Spec : Prop :=
  ∀ n, P14180868584039169687.a n = A005173 (n + 1)

end A005173

/-! ## A005173.P10418305577089303371

`∑[∑[2*A304973(Δ[n²])]]-n`
-/

namespace A005173.P10418305577089303371
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A304973 ((f3 (n + 1) : ℤ) - (f3 n : ℤ)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A005173.P10418305577089303371

namespace A005173

/-- `∑[∑[2*A304973(Δ[n²])]]-n` -/
def P10418305577089303371.Spec : Prop :=
  ∀ n, P10418305577089303371.a n = A005173 (n + 1)

end A005173

/-! ## A005173.P16274791755001861091

`∑[A101052(n+1)]-(2*n+1)`
-/

namespace A005173.P16274791755001861091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101052 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (2 * n + 1 : ℤ)

end

end A005173.P16274791755001861091

namespace A005173

/-- `∑[A101052(n+1)]-(2*n+1)` -/
def P16274791755001861091.Spec : Prop :=
  ∀ n, P16274791755001861091.a n = A005173 (n + 1)

end A005173

/-! ## A005173.P9231134550491394159

`A116970(n+2)-A048490(n)`
-/

namespace A005173.P9231134550491394159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116970 (n + 2) - A048490 n

end

end A005173.P9231134550491394159

namespace A005173

/-- `A116970(n+2)-A048490(n)` -/
def P9231134550491394159.Spec : Prop :=
  ∀ n, P9231134550491394159.a n = A005173 (n + 1)

end A005173

/-! ## A005173.P12312152332041757312

`A001117(n+1)+A000392(n+2)`
-/

namespace A005173.P12312152332041757312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001117 (n + 1) + A000392 (n + 2)

end

end A005173.P12312152332041757312

namespace A005173

/-- `A001117(n+1)+A000392(n+2)` -/
def P12312152332041757312.Spec : Prop :=
  ∀ n, P12312152332041757312.a n = A005173 (n + 1)

end A005173

/-! ## A005173.P17892403656395317660

`A067771(n+1)-A095121(n+2)`
-/

namespace A005173.P17892403656395317660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067771 (n + 1) - A095121 (n + 2)

end

end A005173.P17892403656395317660

namespace A005173

/-- `A067771(n+1)-A095121(n+2)` -/
def P17892403656395317660.Spec : Prop :=
  ∀ n, P17892403656395317660.a n = A005173 (n + 1)

end A005173

/-! ## A005173.P14828453394630908676

`A134063(n+2)-A027383(2*n+1)`
-/

namespace A005173.P14828453394630908676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134063 (n + 2) - A027383 (2 * n + 1)

end

end A005173.P14828453394630908676

namespace A005173

/-- `A134063(n+2)-A027383(2*n+1)` -/
def P14828453394630908676.Spec : Prop :=
  ∀ n, P14828453394630908676.a n = A005173 (n + 1)

end A005173

/-! ## A005173.P7337375709932248256

`A134063(n+2)-A075427(2*n+1)`
-/

namespace A005173.P7337375709932248256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134063 (n + 2) - A075427 (2 * n + 1)

end

end A005173.P7337375709932248256

namespace A005173

/-- `A134063(n+2)-A075427(2*n+1)` -/
def P7337375709932248256.Spec : Prop :=
  ∀ n, P7337375709932248256.a n = A005173 (n + 1)

end A005173

/-! ## A005173.P11946976979976660609

`∑[∑[2*(A024023(n)-A000225(n))]]-n`
-/

namespace A005173.P11946976979976660609
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A024023 n - A000225 n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A005173.P11946976979976660609

namespace A005173

/-- `∑[∑[2*(A024023(n)-A000225(n))]]-n` -/
def P11946976979976660609.Spec : Prop :=
  ∀ n, P11946976979976660609.a n = A005173 (n + 1)

end A005173

/-! ## A005173.P3975495268683666873

`A000392(n+1)+A260217(n+1)+A091344(n)`
-/

namespace A005173.P3975495268683666873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000392 (n + 1) + (A260217 (n + 1) + A091344 n)

end

end A005173.P3975495268683666873

namespace A005173

/-- `A000392(n+1)+A260217(n+1)+A091344(n)` -/
def P3975495268683666873.Spec : Prop :=
  ∀ n, P3975495268683666873.a n = A005173 (n + 1)

end A005173

/-! ## A005173.P5616714664816588729

`A101052(n+1)+A101052(n+1)-A007051(n+1)`
-/

namespace A005173.P5616714664816588729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101052 (n + 1) + (A101052 (n + 1) - A007051 (n + 1))

end

end A005173.P5616714664816588729

namespace A005173

/-- `A101052(n+1)+A101052(n+1)-A007051(n+1)` -/
def P5616714664816588729.Spec : Prop :=
  ∀ n, P5616714664816588729.a n = A005173 (n + 1)

end A005173

/-!
# A005174: Number of rooted trees with 4 nodes of disjoint sets of labels with union {1..n}. If a node has an empty set of labels then it must have at least two children.

The programs for A005174, the canonical program `A005174.P2352094586939220480` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005174 has offset 1).

The definition of A005174 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A005174.P2352094586939220480

`8/3*(4^(n+1)-4)-9*3^(n+1)+11*2^(n+1)+5`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A005174

/-- `8/3*(4^(n+1)-4)-9*3^(n+1)+11*2^(n+1)+5` -/
def P2352094586939220480.Spec : Prop :=
  ∀ n, P2352094586939220480.a n = (A005174 (n + 1) : ℚ)

end A005174

/-!
# A005175: Number of rooted trees with 5 nodes of disjoint sets of labels with union {1..n}. If a node has an empty set of labels then it must have at least two children.

The programs for A005175, there is no canonical definition to state claims against.
-/

/-! ## A005175.P4039184597461756305

`A011371(A014626(n²))`
-/

namespace A005175.P4039184597461756305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 (A014626 (n ^ 2)).toNat

end

end A005175.P4039184597461756305

/-!
# A005176: Number of regular graphs with n unlabeled nodes.

The programs for A005176, there is no canonical definition to state claims against.
-/

/-! ## A005176.P12172429698310243344

`A005177(n)+A068932(n)`
-/

namespace A005176.P12172429698310243344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005177 n + A068932 n

end

end A005176.P12172429698310243344

/-! ## A005176.P830465672857135785

`A054916(A028310(n))+2*A068932(n)`
-/

namespace A005176.P830465672857135785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054916 (A028310 n).toNat + 2 * A068932 n

end

end A005176.P830465672857135785

/-! ## A005176.P16913604711799082001

`A005177(n)+A210713(n)+A185214(n)`
-/

namespace A005176.P16913604711799082001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005177 n + (A210713 n + A185214 n)

end

end A005176.P16913604711799082001

/-! ## A005176.P8363570407928485857

`A005177(n)-(A184946(n)-A068932(n))`
-/

namespace A005176.P8363570407928485857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005177 n - (A184946 n - A068932 n)

end

end A005176.P8363570407928485857

/-! ## A005176.P171456942803078626

`A005177(n)-(A185246(n)-A068932(n))`
-/

namespace A005176.P171456942803078626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005177 n - (A185246 n - A068932 n)

end

end A005176.P171456942803078626

/-!
# A005177: Number of connected regular graphs with n nodes.

The programs for A005177, there is no canonical definition to state claims against.
-/

/-! ## A005177.P11390896178122338384

`A275420(∑[abs(1-n)])`
-/

namespace A005177.P11390896178122338384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275420 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A005177.P11390896178122338384

/-! ## A005177.P2162677481741415014

`A005176(n)-A068932(n)`
-/

namespace A005177.P2162677481741415014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005176 n - A068932 n

end

end A005177.P2162677481741415014

/-! ## A005177.P10041008075279364350

`A068932(n)+A054916(A028310(n))`
-/

namespace A005177.P10041008075279364350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068932 n + A054916 (A028310 n).toNat

end

end A005177.P10041008075279364350

/-! ## A005177.P5717890554039534035

`A005176(n)-(A210713(n)+A185214(n))`
-/

namespace A005177.P5717890554039534035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005176 n - (A210713 n + A185214 n)

end

end A005177.P5717890554039534035

/-! ## A005177.P9581947174618115185

`A005176(n)-(A185214(n)-(A025439(n)-A210713(n)))`
-/

namespace A005177.P9581947174618115185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005176 n - (A185214 n - (A025439 n - A210713 n))

end

end A005177.P9581947174618115185

/-!
# A005178: Number of domino tilings of 4 X (n-1) board.

The programs for A005178, the canonical program `A005178.P3206878968015354233` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005178 has offset 0).

The definition of A005178 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A005178.P3206878968015354233

`a(n-1)+5*a(n-2)+a(n-3)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=5`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A005178

/-- `a(n-1)+5*a(n-2)+a(n-3)-a(n-4)` -/
def P3206878968015354233.Spec : Prop :=
  ∀ n, P3206878968015354233.a n = A005178 n

theorem P3206878968015354233.correct : P3206878968015354233.Spec := by
  intro n
  simp only [A005178]

end A005178

/-! ## A005178.P991297636135100896

`A129113(n+2)-A129113(n)`
-/

namespace A005178.P991297636135100896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129113 (n + 2) - A129113 n

end

end A005178.P991297636135100896

namespace A005178

/-- `A129113(n+2)-A129113(n)` -/
def P991297636135100896.Spec : Prop :=
  ∀ n, P991297636135100896.a n = A005178 n

end A005178

/-! ## A005178.P1022061087057690944

`ogf((-x+x^3)/(-1+x+5x^2+x^3-x^4))`
-/

namespace A005178.P1022061087057690944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 0, -1] [1, -1, -5, -1, 1] n

end

end A005178.P1022061087057690944

namespace A005178

/-- `ogf((-x+x^3)/(-1+x+5x^2+x^3-x^4))` -/
def P1022061087057690944.Spec : Prop :=
  ∀ n, P1022061087057690944.a n = A005178 n

end A005178

/-! ## A005178.P6171804243623411488

`Δ[A129113(n+1)+A129113(n)]`
-/

namespace A005178.P6171804243623411488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129113 (n + 1) + A129113 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A005178.P6171804243623411488

namespace A005178

/-- `Δ[A129113(n+1)+A129113(n)]` -/
def P6171804243623411488.Spec : Prop :=
  ∀ n, P6171804243623411488.a n = A005178 n

end A005178

/-! ## A005178.P15873573530406831554

`A250662(A027379(n))%(4^n)`
-/

namespace A005178.P15873573530406831554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A250662 (A027379 n).toNat) (4 ^ n : ℤ)

end

end A005178.P15873573530406831554

namespace A005178

/-- `A250662(A027379(n))%(4^n)` -/
def P15873573530406831554.Spec : Prop :=
  ∀ n, P15873573530406831554.a n = A005178 n

end A005178

/-! ## A005178.P8977992038605512809

`A250662(A027379(n))-A000007(n)`
-/

namespace A005178.P8977992038605512809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250662 (A027379 n).toNat - A000007 n

end

end A005178.P8977992038605512809

namespace A005178

/-- `A250662(A027379(n))-A000007(n)` -/
def P8977992038605512809.Spec : Prop :=
  ∀ n, P8977992038605512809.a n = A005178 n

end A005178

/-! ## A005178.P13386063374717789353

`A250662(A055998(n))-A000007(n)`
-/

namespace A005178.P13386063374717789353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250662 (A055998 n).toNat - A000007 n

end

end A005178.P13386063374717789353

namespace A005178

/-- `A250662(A055998(n))-A000007(n)` -/
def P13386063374717789353.Spec : Prop :=
  ∀ n, P13386063374717789353.a n = A005178 n

end A005178

/-! ## A005178.P11136869030568583985

`A250662(A055998(n))%A041557(n)`
-/

namespace A005178.P11136869030568583985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A250662 (A055998 n).toNat) (A041557 n)

end

end A005178.P11136869030568583985

namespace A005178

/-- `A250662(A055998(n))%A041557(n)` -/
def P11136869030568583985.Spec : Prop :=
  ∀ n, P11136869030568583985.a n = A005178 n

end A005178

/-! ## A005178.P18193695125008757057

`A057428(n)²*A250662(A027379(n))`
-/

namespace A005178.P18193695125008757057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n ^ 2 * A250662 (A027379 n).toNat

end

end A005178.P18193695125008757057

namespace A005178

/-- `A057428(n)²*A250662(A027379(n))` -/
def P18193695125008757057.Spec : Prop :=
  ∀ n, P18193695125008757057.a n = A005178 n

end A005178

/-! ## A005178.P2997532415552472584

`char[A060000(n+1)]*A250662(A055998(n))`
-/

namespace A005178.P2997532415552472584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060000 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A250662 (A055998 n).toNat

end

end A005178.P2997532415552472584

namespace A005178

/-- `char[A060000(n+1)]*A250662(A055998(n))` -/
def P2997532415552472584.Spec : Prop :=
  ∀ n, P2997532415552472584.a n = A005178 n

end A005178

/-! ## A005178.P15295650626650285729

`A250662(A034856(n+1)-1)%A267274(n)`
-/

namespace A005178.P15295650626650285729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A250662 (A034856 (n + 1) - 1).toNat) (A267274 n)

end

end A005178.P15295650626650285729

namespace A005178

/-- `A250662(A034856(n+1)-1)%A267274(n)` -/
def P15295650626650285729.Spec : Prop :=
  ∀ n, P15295650626650285729.a n = A005178 n

end A005178

/-! ## A005178.P8975127581902927659

`char[A060000(n+1)]*A250662(A034856(n+1)-1)`
-/

namespace A005178.P8975127581902927659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060000 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A250662 (A034856 (n + 1) - 1).toNat

end

end A005178.P8975127581902927659

namespace A005178

/-- `char[A060000(n+1)]*A250662(A034856(n+1)-1)` -/
def P8975127581902927659.Spec : Prop :=
  ∀ n, P8975127581902927659.a n = A005178 n

end A005178

/-!
# A005179: Smallest number with exactly n divisors.

The programs for A005179, there is no canonical definition to state claims against.
-/

/-! ## A005179.P6785862433683594603

`A003680(n+1)/A140605(n+1)`
-/

namespace A005179.P6785862433683594603
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003680 (n + 1) : ℚ) / (A140605 (n + 1) : ℚ)

end

end A005179.P6785862433683594603

/-! ## A005179.P799628652145169450

`A077569(A096276(n)+1)`
-/

namespace A005179.P799628652145169450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077569 (A096276 n + 1).toNat

end

end A005179.P799628652145169450

/-! ## A005179.P11024440859247441615

`A081532(∑[n+1])`
-/

namespace A005179.P11024440859247441615
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081532 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A005179.P11024440859247441615

/-! ## A005179.P11875661593144812668

`A007416(A064787(n+1))`
-/

namespace A005179.P11875661593144812668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007416 (A064787 (n + 1)).toNat

end

end A005179.P11875661593144812668

/-! ## A005179.P703762782458542132

`sqrt(A130279(n+1))`
-/

namespace A005179.P703762782458542132
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A130279 (n + 1) : ℝ)

end

end A005179.P703762782458542132

/-! ## A005179.P17249523197424596417

`A187941(n+1)/2`
-/

namespace A005179.P17249523197424596417
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A187941 (n + 1) : ℚ) / 2

end

end A005179.P17249523197424596417

/-! ## A005179.P11643499924509094827

`A305183(n+1)/4`
-/

namespace A005179.P11643499924509094827
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A305183 (n + 1) : ℚ) / 4

end

end A005179.P11643499924509094827

/-!
# A005180: Orders of simple groups.

The programs for A005180, there is no canonical definition to state claims against.
-/

/-! ## A005180.P12209066810786421202

`∪[A001034(n+1), A008578(n+1)]`
-/

namespace A005180.P12209066810786421202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001034 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A005180.P12209066810786421202

/-! ## A005180.P6292757901435012006

`∪[A001034(n+1), record[A064989(n+1)]]`
-/

namespace A005180.P6292757901435012006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001034 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A005180.P6292757901435012006

/-! ## A005180.P820178234391575020

`∪[∑{d}[n+1, A030013(#)], A001034(n+1)]`
-/

namespace A005180.P820178234391575020
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A030013 d

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001034 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

end

end A005180.P820178234391575020

/-! ## A005180.P13268636707500539259

`∪[A001034(n+1), A162177(n+1)+1+n]`
-/

namespace A005180.P13268636707500539259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001034 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162177 (n + 1) + 1 + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A005180.P13268636707500539259

/-! ## A005180.P15732129792182958272

`∪[A001034(n+1), A090178(n+1)-(n+1)]`
-/

namespace A005180.P15732129792182958272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001034 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090178 (n + 1) - (n + 1 : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A005180.P15732129792182958272

/-! ## A005180.P15272548272416206097

`∪[A001034(n+1), A112773(n+1)-A001747(n+1)]`
-/

namespace A005180.P15272548272416206097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001034 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112773 (n + 1) - A001747 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A005180.P15272548272416206097

/-!
# A005181: a(n) = ceiling(exp((n-1)/2)).

The programs for A005181, the canonical program `A005181.P8418560770788744835` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005181 has offset 0).

The definition of A005181 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 462 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A005181.P15874057626344891832

`ceil(exp((n-1)/2))`
-/

namespace A005181.P15874057626344891832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.exp (((n : ℤ) - 1 : ℚ) / 2 : ℝ)⌉

end

end A005181.P15874057626344891832

namespace A005181

/-- `ceil(exp((n-1)/2))` -/
def P15874057626344891832.Spec : Prop :=
  ∀ n, P15874057626344891832.a n = A005181 n

end A005181

/-! ## A005181.P8418560770788744835

`∑[A306486(abs(1-n))]`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A005181

/-- `∑[A306486(abs(1-n))]` -/
def P8418560770788744835.Spec : Prop :=
  ∀ n, P8418560770788744835.a n = A005181 n

theorem P8418560770788744835.correct : P8418560770788744835.Spec := by
  intro n
  simp only [A005181]

end A005181

/-! ## A005181.P11910471860708755385

`A005182(n)+1-char[1]`
-/

namespace A005181.P11910471860708755385
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005182 n + (1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ))

end

end A005181.P11910471860708755385

namespace A005181

/-- `A005182(n)+1-char[1]` -/
def P11910471860708755385.Spec : Prop :=
  ∀ n, P11910471860708755385.a n = A005181 n

end A005181

/-! ## A005181.P8661495946925307592

`A306486(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A005181.P8661495946925307592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A306486 (n - 1) + a (n - 1)

end

end A005181.P8661495946925307592

namespace A005181

/-- `A306486(n-1)+a(n-1)` -/
def P8661495946925307592.Spec : Prop :=
  ∀ n, P8661495946925307592.a n = A005181 n

end A005181

/-! ## A005181.P10888381316224719753

`A060576(n)+A005182(n)`
-/

namespace A005181.P10888381316224719753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 n + A005182 n

end

end A005181.P10888381316224719753

namespace A005181

/-- `A060576(n)+A005182(n)` -/
def P10888381316224719753.Spec : Prop :=
  ∀ n, P10888381316224719753.a n = A005181 n

end A005181

/-! ## A005181.P17953975626596040623

`A096766(n+1)+A000045(n+1)`
-/

namespace A005181.P17953975626596040623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096766 (n + 1) + A000045 (n + 1)

end

end A005181.P17953975626596040623

namespace A005181

/-- `A096766(n+1)+A000045(n+1)` -/
def P17953975626596040623.Spec : Prop :=
  ∀ n, P17953975626596040623.a n = A005181 n

end A005181

/-! ## A005181.P3631084579841751673

`∑[A306486(n)]+1-A306486(n)`
-/

namespace A005181.P3631084579841751673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306486 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A306486 n)

end

end A005181.P3631084579841751673

namespace A005181

/-- `∑[A306486(n)]+1-A306486(n)` -/
def P3631084579841751673.Spec : Prop :=
  ∀ n, P3631084579841751673.a n = A005181 n

end A005181

/-! ## A005181.P4321930368458504127

`A096766(n+1)+A229194(n+1)-A229198(n+1)`
-/

namespace A005181.P4321930368458504127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096766 (n + 1) + (A229194 (n + 1) - A229198 (n + 1))

end

end A005181.P4321930368458504127

namespace A005181

/-- `A096766(n+1)+A229194(n+1)-A229198(n+1)` -/
def P4321930368458504127.Spec : Prop :=
  ∀ n, P4321930368458504127.a n = A005181 n

end A005181

/-!
# A005182: a(n) = floor(e^((n-1)/2)).

The programs for A005182, the canonical program `A005182.P15554511706419880685` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005182 has offset 0).

The definition of A005182 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 462 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A005182.P4902948495316699803

`floor(exp((n-1)/2))`
-/

namespace A005182.P4902948495316699803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.exp (((n : ℤ) - 1 : ℚ) / 2 : ℝ)⌋

end

end A005182.P4902948495316699803

namespace A005182

/-- `floor(exp((n-1)/2))` -/
def P4902948495316699803.Spec : Prop :=
  ∀ n, P4902948495316699803.a n = A005182 n

end A005182

/-! ## A005182.P9636923182501849870

`A005181(char[1]+n)-1`
-/

namespace A005182.P9636923182501849870
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005181 ((if ∃ j, f1 j = n then 1 else 0) + n) - 1

end

end A005182.P9636923182501849870

namespace A005182

/-- `A005181(char[1]+n)-1` -/
def P9636923182501849870.Spec : Prop :=
  ∀ n, P9636923182501849870.a n = A005182 n

end A005182

/-! ## A005182.P15554511706419880685

`A057428(xor(1, n))+A005181(n)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A005182

/-- `A057428(xor(1, n))+A005181(n)` -/
def P15554511706419880685.Spec : Prop :=
  ∀ n, P15554511706419880685.a n = A005182 n

theorem P15554511706419880685.correct : P15554511706419880685.Spec := by
  intro n
  simp only [A005182]

end A005182

/-! ## A005182.P142815952499346712

`A057428(A008611(n))+A005181(n)`
-/

namespace A005182.P142815952499346712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A008611 n).toNat + A005181 n

end

end A005182.P142815952499346712

namespace A005182

/-- `A057428(A008611(n))+A005181(n)` -/
def P142815952499346712.Spec : Prop :=
  ∀ n, P142815952499346712.a n = A005182 n

end A005182

/-! ## A005182.P12893431463424256969

`A057428(A028242(n))+A005181(n)`
-/

namespace A005182.P12893431463424256969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A028242 n).toNat + A005181 n

end

end A005182.P12893431463424256969

namespace A005182

/-- `A057428(A028242(n))+A005181(n)` -/
def P12893431463424256969.Spec : Prop :=
  ∀ n, P12893431463424256969.a n = A005182 n

end A005182

/-! ## A005182.P12152236187254544012

`A057428(A123108(n))+A005181(n)`
-/

namespace A005182.P12152236187254544012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A123108 n).toNat + A005181 n

end

end A005182.P12152236187254544012

namespace A005182

/-- `A057428(A123108(n))+A005181(n)` -/
def P12152236187254544012.Spec : Prop :=
  ∀ n, P12152236187254544012.a n = A005182 n

end A005182

/-! ## A005182.P1242957571661827642

`ceil(sqrt(A055876(n+1)))-1`
-/

namespace A005182.P1242957571661827642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A055876 (n + 1) : ℝ)⌉ - 1

end

end A005182.P1242957571661827642

namespace A005182

/-- `ceil(sqrt(A055876(n+1)))-1` -/
def P1242957571661827642.Spec : Prop :=
  ∀ n, P1242957571661827642.a n = A005182 n

end A005182

/-!
# A005183: a(n) = n*2^(n-1) + 1.

The programs for A005183, the canonical program `A005183.P7490407037919719007` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005183 has offset 0).

The definition of A005183 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A005183.P7490407037919719007

`2^(n-1)*n+1`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A005183

/-- `2^(n-1)*n+1` -/
def P7490407037919719007.Spec : Prop :=
  ∀ n, P7490407037919719007.a n = (A005183 n : ℚ)

end A005183

/-! ## A005183.P11103730710581706714

`n*2^(n-1)+1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A005183.P11103730710581706714
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) + 1

end

end A005183.P11103730710581706714

namespace A005183

/-- `n*2^(n-1)+1` -/
def P11103730710581706714.Spec : Prop :=
  ∀ n, P11103730710581706714.a n = (A005183 n : ℚ)

end A005183

/-! ## A005183.P7235563372222953113

`A000788(2^n)`
-/

namespace A005183.P7235563372222953113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000788 (2 ^ n)

end

end A005183.P7235563372222953113

namespace A005183

/-- `A000788(2^n)` -/
def P7235563372222953113.Spec : Prop :=
  ∀ n, P7235563372222953113.a n = A005183 n

end A005183

/-! ## A005183.P1477536880794199895

`∑[ogf((1-3x+3x^2)/(1-4x+4x^2))]`
-/

namespace A005183.P1477536880794199895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -3, 3] [1, -4, 4] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005183.P1477536880794199895

namespace A005183

/-- `∑[ogf((1-3x+3x^2)/(1-4x+4x^2))]` -/
def P1477536880794199895.Spec : Prop :=
  ∀ n, P1477536880794199895.a n = A005183 n

end A005183

/-! ## A005183.P15335476944307640006

`ogf((1-3x+3x^2)/(1-5x+8x^2-4x^3))`
-/

namespace A005183.P15335476944307640006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -3, 3] [1, -5, 8, -4] n

end

end A005183.P15335476944307640006

namespace A005183

/-- `ogf((1-3x+3x^2)/(1-5x+8x^2-4x^3))` -/
def P15335476944307640006.Spec : Prop :=
  ∀ n, P15335476944307640006.a n = A005183 n

end A005183

/-! ## A005183.P1261581721281478355

`∑[(2/n+2)*a(n-1)]` with `a(0)=1, a(1)=1`
-/

namespace A005183.P1261581721281478355
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  (2 / (n : ℚ) + 2) * f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005183.P1261581721281478355

namespace A005183

/-- `∑[(2/n+2)*a(n-1)]` -/
def P1261581721281478355.Spec : Prop :=
  ∀ n, P1261581721281478355.a n = (A005183 n : ℚ)

end A005183

/-! ## A005183.P1362078886076641182

`∑[4*(a(n-1)-a(n-2))]` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A005183.P1362078886076641182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3] fun n f1 =>
  4 * (f1 (n - 1) - f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005183.P1362078886076641182

namespace A005183

/-- `∑[4*(a(n-1)-a(n-2))]` -/
def P1362078886076641182.Spec : Prop :=
  ∀ n, P1362078886076641182.a n = A005183 n

end A005183

/-! ## A005183.P14247628664918857224

`or(1, 4*(a(n-1)-a(n-2)))` with `a(0)=1, a(1)=2, a(2)=5`
-/

namespace A005183.P14247628664918857224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 5] fun n a =>
  Int.lor 1 (4 * (a (n - 1) - a (n - 2)))

end

end A005183.P14247628664918857224

namespace A005183

/-- `or(1, 4*(a(n-1)-a(n-2)))` -/
def P14247628664918857224.Spec : Prop :=
  ∀ n, P14247628664918857224.a n = A005183 n

end A005183

/-! ## A005183.P8284756946214135116

`xor(1, 4*(a(n-1)-a(n-2)))` with `a(0)=1, a(1)=2, a(2)=5`
-/

namespace A005183.P8284756946214135116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 5] fun n a =>
  Int.xor 1 (4 * (a (n - 1) - a (n - 2)))

end

end A005183.P8284756946214135116

namespace A005183

/-- `xor(1, 4*(a(n-1)-a(n-2)))` -/
def P8284756946214135116.Spec : Prop :=
  ∀ n, P8284756946214135116.a n = A005183 n

end A005183

/-! ## A005183.P16971019414589045266

`4*(1/4+a(n-1)-a(n-2))` with `a(0)=1, a(1)=2`
-/

namespace A005183.P16971019414589045266
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n a =>
  4 * ((1 : ℚ) / 4 + (a (n - 1) - a (n - 2)))

end

end A005183.P16971019414589045266

namespace A005183

/-- `4*(1/4+a(n-1)-a(n-2))` -/
def P16971019414589045266.Spec : Prop :=
  ∀ n, P16971019414589045266.a n = (A005183 n : ℚ)

end A005183

/-! ## A005183.P14681588164603689275

`4*(a(n-1)-(a(n-2)-1/4))` with `a(0)=1, a(1)=2`
-/

namespace A005183.P14681588164603689275
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n a =>
  4 * (a (n - 1) - (a (n - 2) - (1 : ℚ) / 4))

end

end A005183.P14681588164603689275

namespace A005183

/-- `4*(a(n-1)-(a(n-2)-1/4))` -/
def P14681588164603689275.Spec : Prop :=
  ∀ n, P14681588164603689275.a n = (A005183 n : ℚ)

end A005183

/-! ## A005183.P4217594549187713167

`∑[abs(A168150(n+1))]`
-/

namespace A005183.P4217594549187713167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A168150 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005183.P4217594549187713167

namespace A005183

/-- `∑[abs(A168150(n+1))]` -/
def P4217594549187713167.Spec : Prop :=
  ∀ n, P4217594549187713167.a n = A005183 n

end A005183

/-! ## A005183.P9553190497127864556

`record[A329033(n+1)+1]`
-/

namespace A005183.P9553190497127864556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329033 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005183.P9553190497127864556

namespace A005183

/-- `record[A329033(n+1)+1]` -/
def P9553190497127864556.Spec : Prop :=
  ∀ n, P9553190497127864556.a n = A005183 n

end A005183

/-! ## A005183.P4160434452597485420

`xor(A004442(n), A215149(n))`
-/

namespace A005183.P4160434452597485420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A004442 n) (A215149 n)

end

end A005183.P4160434452597485420

namespace A005183

/-- `xor(A004442(n), A215149(n))` -/
def P4160434452597485420.Spec : Prop :=
  ∀ n, P4160434452597485420.a n = A005183 n

end A005183

/-! ## A005183.P13782864333549524799

`∑[A001792(A057428(n)+n)]`
-/

namespace A005183.P13782864333549524799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001792 (A057428 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005183.P13782864333549524799

namespace A005183

/-- `∑[A001792(A057428(n)+n)]` -/
def P13782864333549524799.Spec : Prop :=
  ∀ n, P13782864333549524799.a n = A005183 n

end A005183

/-! ## A005183.P12045516388970987373

`∑[A139756(n)+A011782(n)]`
-/

namespace A005183.P12045516388970987373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139756 n + A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005183.P12045516388970987373

namespace A005183

/-- `∑[A139756(n)+A011782(n)]` -/
def P12045516388970987373.Spec : Prop :=
  ∀ n, P12045516388970987373.a n = A005183 n

end A005183

/-! ## A005183.P29279100726538363

`∑[A001792(n-A057427(n))]`
-/

namespace A005183.P29279100726538363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001792 ((n : ℤ) - A057427 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005183.P29279100726538363

namespace A005183

/-- `∑[A001792(n-A057427(n))]` -/
def P29279100726538363.Spec : Prop :=
  ∀ n, P29279100726538363.a n = A005183 n

end A005183

/-! ## A005183.P13576449906367629800

`Δ[A343291(n)]`
-/

namespace A005183.P13576449906367629800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343291 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A005183.P13576449906367629800

namespace A005183

/-- `Δ[A343291(n)]` -/
def P13576449906367629800.Spec : Prop :=
  ∀ n, P13576449906367629800.a n = A005183 n

end A005183

/-! ## A005183.P8164368374606807857

`ceil(A002064(n)/2)`
-/

namespace A005183.P8164368374606807857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A002064 n : ℚ) / 2⌉

end

end A005183.P8164368374606807857

namespace A005183

/-- `ceil(A002064(n)/2)` -/
def P8164368374606807857.Spec : Prop :=
  ∀ n, P8164368374606807857.a n = A005183 n

end A005183

/-! ## A005183.P18433713720883843152

`(A048474(n)+2)/3`
-/

namespace A005183.P18433713720883843152
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048474 n + 2 : ℚ) / 3

end

end A005183.P18433713720883843152

namespace A005183

/-- `(A048474(n)+2)/3` -/
def P18433713720883843152.Spec : Prop :=
  ∀ n, P18433713720883843152.a n = (A005183 n : ℚ)

end A005183

/-!
# A005184: Self-contained numbers: odd numbers k whose Collatz sequence contains a higher multiple of k.

The programs for A005184, there is no canonical definition to state claims against.
-/

/-! ## A005184.P7063299777631599019

`A303698(∑[A304649(n+1)])`
-/

namespace A005184.P7063299777631599019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304649 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303698 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A005184.P7063299777631599019

/-! ## A005184.P12146658230081514252

`A303698(∑[2^A303708(n+1)])`
-/

namespace A005184.P12146658230081514252
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A303708 (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303698 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A005184.P12146658230081514252

/-! ## A005184.P3362633287697984244

`A303698(lt[A000837(n), A303699(n)])`
-/

namespace A005184.P3362633287697984244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000837 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303699 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303698 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A005184.P3362633287697984244

/-!
# A005185: Hofstadter Q-sequence: a(1) = a(2) = 1; a(n) = a(n-a(n-1)) + a(n-a(n-2)) for n > 2.

The programs for A005185, the canonical program `A005185.P15523785795587217945` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005185 has offset 1).

The definition of A005185 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-a(n-1))+a(n-a(n-2))` (program `A005185.P15523785795587217945`, by `A005185.P15523785795587217945.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A005185.P15523785795587217945

`a(n-a(n-1))+a(n-a(n-2))` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A005185

/-- `a(n-a(n-1))+a(n-a(n-2))` -/
def P15523785795587217945.Spec : Prop :=
  ∀ n, (P15523785795587217945.a n : ℤ) = A005185 (n + 1)

theorem P15523785795587217945.correct : P15523785795587217945.Spec := by
  intro n
  simp only [A005185, Nat.add_sub_cancel]

end A005185

/-! ## A005185.P8106509660478833297

`1-A239913(n+1)+n`
-/

namespace A005185.P8106509660478833297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A239913 (n + 1) + (n : ℤ)

end

end A005185.P8106509660478833297

namespace A005185

/-- `1-A239913(n+1)+n` -/
def P8106509660478833297.Spec : Prop :=
  ∀ n, P8106509660478833297.a n = A005185 (n + 1)

end A005185

/-! ## A005185.P919665083557230867

`A081827(n)+a(n-1)` with `a(0)=1`
-/

namespace A005185.P919665083557230867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A081827 n + a (n - 1)

end

end A005185.P919665083557230867

namespace A005185

/-- `A081827(n)+a(n-1)` -/
def P919665083557230867.Spec : Prop :=
  ∀ n, P919665083557230867.a n = A005185 (n + 1)

end A005185

/-! ## A005185.P2081930989418007549

`∑[A081827(A028310(n))]+1`
-/

namespace A005185.P2081930989418007549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081827 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A005185.P2081930989418007549

namespace A005185

/-- `∑[A081827(A028310(n))]+1` -/
def P2081930989418007549.Spec : Prop :=
  ∀ n, P2081930989418007549.a n = A005185 (n + 1)

end A005185

/-! ## A005185.P17326063246812825864

`A284478(n+1)+A055748(n+1)`
-/

namespace A005185.P17326063246812825864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284478 (n + 1) + A055748 (n + 1)

end

end A005185.P17326063246812825864

namespace A005185

/-- `A284478(n+1)+A055748(n+1)` -/
def P17326063246812825864.Spec : Prop :=
  ∀ n, P17326063246812825864.a n = A005185 (n + 1)

theorem P17326063246812825864.correct : P17326063246812825864.Spec := by
  intro n
  simp only [A005185, Nat.add_sub_cancel, A005185.P17326063246812825864.a, A005185.P15523785795587217945.a, A055748, A055748.P8898530340644746947.a, A284478, A284478.P17703318329199154233.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A005185

/-! ## A005185.P13095479436429103183

`A004001(n+1)-A284019(n+1)`
-/

namespace A005185.P13095479436429103183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004001 (n + 1) - A284019 (n + 1)

end

end A005185.P13095479436429103183

namespace A005185

/-- `A004001(n+1)-A284019(n+1)` -/
def P13095479436429103183.Spec : Prop :=
  ∀ n, P13095479436429103183.a n = A005185 (n + 1)

theorem P13095479436429103183.correct : P13095479436429103183.Spec := by
  intro n
  simp only [A005185, Nat.add_sub_cancel, A005185.P13095479436429103183.a, A005185.P15523785795587217945.a, A004001, A004001.P15027099775036681873.a, A284019, A284019.P8425388726725023330.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A005185

/-! ## A005185.P1052657576583121258

`∑[A081827(n+1)]+1-A081827(n+1)`
-/

namespace A005185.P1052657576583121258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081827 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A081827 (n + 1))

end

end A005185.P1052657576583121258

namespace A005185

/-- `∑[A081827(n+1)]+1-A081827(n+1)` -/
def P1052657576583121258.Spec : Prop :=
  ∀ n, P1052657576583121258.a n = A005185 (n + 1)

end A005185

/-! ## A005185.P8833957261529335940

`A283469(n+1)+A283472(n+1)-A284019(n+1)`
-/

namespace A005185.P8833957261529335940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283469 (n + 1) + (A283472 (n + 1) - A284019 (n + 1))

end

end A005185.P8833957261529335940

namespace A005185

/-- `A283469(n+1)+A283472(n+1)-A284019(n+1)` -/
def P8833957261529335940.Spec : Prop :=
  ∀ n, P8833957261529335940.a n = A005185 (n + 1)

end A005185

/-! ## A005185.P13679660177059691831

`Δ[A076268(n+1)]-A081827(n+1)`
-/

namespace A005185.P13679660177059691831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076268 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A081827 (n + 1)

end

end A005185.P13679660177059691831

namespace A005185

/-- `Δ[A076268(n+1)]-A081827(n+1)` -/
def P13679660177059691831.Spec : Prop :=
  ∀ n, P13679660177059691831.a n = A005185 (n + 1)

end A005185

/-! ## A005185.P13493351910160902725

`A008619(A004074(n+1)+n)-A284019(n+1)`
-/

namespace A005185.P13493351910160902725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A004074 (n + 1) + (n : ℤ)).toNat - A284019 (n + 1)

end

end A005185.P13493351910160902725

namespace A005185

/-- `A008619(A004074(n+1)+n)-A284019(n+1)` -/
def P13493351910160902725.Spec : Prop :=
  ∀ n, P13493351910160902725.a n = A005185 (n + 1)

end A005185

/-! ## A005185.P9857533652911142964

`A109168(A004074(n+1)+n)-A284019(n+1)`
-/

namespace A005185.P9857533652911142964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109168 (A004074 (n + 1) + (n : ℤ)).toNat - A284019 (n + 1)

end

end A005185.P9857533652911142964

namespace A005185

/-- `A109168(A004074(n+1)+n)-A284019(n+1)` -/
def P9857533652911142964.Spec : Prop :=
  ∀ n, P9857533652911142964.a n = A005185 (n + 1)

end A005185

/-! ## A005185.P5412031459958812298

`A140472(A004074(n+1)+n)-A284019(n+1)`
-/

namespace A005185.P5412031459958812298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140472 (A004074 (n + 1) + (n : ℤ)).toNat - A284019 (n + 1)

end

end A005185.P5412031459958812298

namespace A005185

/-- `A140472(A004074(n+1)+n)-A284019(n+1)` -/
def P5412031459958812298.Spec : Prop :=
  ∀ n, P5412031459958812298.a n = A005185 (n + 1)

end A005185

/-! ## A005185.P333452557032108585

`∑[A081827(A065033(2*n))]+1`
-/

namespace A005185.P333452557032108585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081827 (A065033 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A005185.P333452557032108585

namespace A005185

/-- `∑[A081827(A065033(2*n))]+1` -/
def P333452557032108585.Spec : Prop :=
  ∀ n, P333452557032108585.a n = A005185 (n + 1)

end A005185

/-! ## A005185.P6766715232579546126

`∑[A081827(A123108(2*n))]+1`
-/

namespace A005185.P6766715232579546126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081827 (A123108 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A005185.P6766715232579546126

namespace A005185

/-- `∑[A081827(A123108(2*n))]+1` -/
def P6766715232579546126.Spec : Prop :=
  ∀ n, P6766715232579546126.a n = A005185 (n + 1)

end A005185

/-!
# A005186: a(n) is the number of integers m which take n steps to reach 1 in '3x+1' problem.

The programs for A005186, there is no canonical definition to state claims against.
-/

/-! ## A005186.P1899493669051103018

`∑[A176866(n)]`
-/

namespace A005186.P1899493669051103018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176866 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005186.P1899493669051103018

/-! ## A005186.P4596003374215030129

`A176866(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A005186.P4596003374215030129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A176866 n + a (A023443 n).toNat

end

end A005186.P4596003374215030129

/-! ## A005186.P15542593923632668516

`A176866(n)+a(A028310(n)-1)` with `a(0)=1`
-/

namespace A005186.P15542593923632668516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A176866 n + a (A028310 n - 1).toNat

end

end A005186.P15542593923632668516

/-! ## A005186.P17780665443811989177

`A176866(n)+a(n-A057427(n))` with `a(0)=1`
-/

namespace A005186.P17780665443811989177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A176866 n + a ((n : ℤ) - A057427 n).toNat

end

end A005186.P17780665443811989177

/-! ## A005186.P13235326459559262583

`A176866(n)+a(n-A033999(n)²)` with `a(0)=1`
-/

namespace A005186.P13235326459559262583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A176866 n + a ((n : ℤ) - A033999 n ^ 2).toNat

end

end A005186.P13235326459559262583

/-! ## A005186.P14871980568387147061

`a(n-1)+A176866(n)+A000007(n)` with `a(0)=1`
-/

namespace A005186.P14871980568387147061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A176866 n + A000007 n)

end

end A005186.P14871980568387147061

/-! ## A005186.P16808943869738341153

`a(n-1)+A176866(n)/A141044(n)` with `a(0)=1`
-/

namespace A005186.P16808943869738341153
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A176866 n : ℚ) / (A141044 n : ℚ)

end

end A005186.P16808943869738341153

/-! ## A005186.P1372286039476852773

`A176866(n)+a(n-A001221(A001316(n)))` with `a(0)=1`
-/

namespace A005186.P1372286039476852773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A176866 n + a ((n : ℤ) - A001221 (A001316 n).toNat).toNat

end

end A005186.P1372286039476852773

/-!
# A005187: a(n) = a(floor(n/2)) + n; also denominators in expansion of 1/sqrt(1-x) are 2^a(n); also 2n - number of 1's in binary expansion of 2n.

The programs for A005187, the canonical program `A005187.P3874015513960485494` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005187 has offset 0).

The definition of A005187 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(floor(n/2))+n` (program `A005187.P3874015513960485494`, by `A005187.P3874015513960485494.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A005187.P3874015513960485494

`a(floor(n/2))+n` with `a(0)=0`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A005187

/-- `a(floor(n/2))+n` -/
def P3874015513960485494.Spec : Prop :=
  ∀ n, (P3874015513960485494.a n : ℤ) = A005187 n

theorem P3874015513960485494.correct : P3874015513960485494.Spec := by
  intro n
  simp only [A005187]

end A005187

/-! ## A005187.P17035303687713367404

`n+A011371(n)`
-/

namespace A005187.P17035303687713367404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) + A011371 n

end

end A005187.P17035303687713367404

namespace A005187

/-- `n+A011371(n)` -/
def P17035303687713367404.Spec : Prop :=
  ∀ n, P17035303687713367404.a n = A005187 n

end A005187

/-! ## A005187.P7311659284146873618

`A004134(n)-n`
-/

namespace A005187.P7311659284146873618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004134 n - (n : ℤ)

end

end A005187.P7311659284146873618

namespace A005187

/-- `A004134(n)-n` -/
def P7311659284146873618.Spec : Prop :=
  ∀ n, P7311659284146873618.a n = A005187 n

theorem P7311659284146873618.correct : P7311659284146873618.Spec := by
  intro n
  simp only [A005187, Nat.add_sub_cancel, A005187.P7311659284146873618.a, A005187.P3874015513960485494.a, A004134, A004134.P15858984416175637375.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A005187

/-! ## A005187.P2030078629339781446

`2*n-A000120(n)`
-/

namespace A005187.P2030078629339781446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A000120 n

end

end A005187.P2030078629339781446

namespace A005187

/-- `2*n-A000120(n)` -/
def P2030078629339781446.Spec : Prop :=
  ∀ n, P2030078629339781446.a n = A005187 n

theorem P2030078629339781446.correct : P2030078629339781446.Spec := by
  intro n
  simp only [A005187, Nat.add_sub_cancel, A005187.P2030078629339781446.a, A005187.P3874015513960485494.a, A000120, A000120.P2816527436160941581.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A005187

/-! ## A005187.P4749109977083784897

`A011371(2*n)`
-/

namespace A005187.P4749109977083784897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 (2 * n)

end

end A005187.P4749109977083784897

namespace A005187

/-- `A011371(2*n)` -/
def P4749109977083784897.Spec : Prop :=
  ∀ n, P4749109977083784897.a n = A005187 n

end A005187

/-! ## A005187.P16111315070489677542

`n+val(n!, 2)`
-/

namespace A005187.P16111315070489677542
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + SequenceMachineLib.valuation (Nat.factorial n) 2

end

end A005187.P16111315070489677542

namespace A005187

/-- `n+val(n!, 2)` -/
def P16111315070489677542.Spec : Prop :=
  ∀ n, (P16111315070489677542.a n : ℤ) = A005187 n

end A005187

/-! ## A005187.P255987733352875670

`∑[a(∑[n]%n)+1]` with `a(0)=0`
-/

namespace A005187.P255987733352875670
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 ((∑ j ∈ Finset.range (n + 1), f2 j) % n) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005187.P255987733352875670

namespace A005187

/-- `∑[a(∑[n]%n)+1]` -/
def P255987733352875670.Spec : Prop :=
  ∀ n, (P255987733352875670.a n : ℤ) = A005187 n

end A005187

/-! ## A005187.P2214884050525315915

`∑[∏{e}[xor(n, -n), #]]-1`
-/

namespace A005187.P2214884050525315915
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-(n : ℤ))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A005187.P2214884050525315915

namespace A005187

/-- `∑[∏{e}[xor(n, -n), #]]-1` -/
def P2214884050525315915.Spec : Prop :=
  ∀ n, P2214884050525315915.a n = A005187 n

end A005187

/-! ## A005187.P15068973708352214679

`record[val(n, 2)-a(n-1)]` with `a(0)=0`
-/

namespace A005187.P15068973708352214679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  (SequenceMachineLib.valuation n 2 : ℤ) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005187.P15068973708352214679

namespace A005187

/-- `record[val(n, 2)-a(n-1)]` -/
def P15068973708352214679.Spec : Prop :=
  ∀ n, P15068973708352214679.a n = A005187 n

end A005187

/-! ## A005187.P6859776959878198595

`a(n-1)+val(n, 2)+1` with `a(0)=0`
-/

namespace A005187.P6859776959878198595
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + SequenceMachineLib.valuation n 2 + 1

end

end A005187.P6859776959878198595

namespace A005187

/-- `a(n-1)+val(n, 2)+1` -/
def P6859776959878198595.Spec : Prop :=
  ∀ n, (P6859776959878198595.a n : ℤ) = A005187 n

end A005187

/-! ## A005187.P10139531145732597482

`2*n-(n-a(floor(n/2)))` with `a(0)=0`
-/

namespace A005187.P10139531145732597482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (2 * n : ℤ) - ((n : ℤ) - a ⌊(n : ℚ) / 2⌋.toNat)

end

end A005187.P10139531145732597482

namespace A005187

/-- `2*n-(n-a(floor(n/2)))` -/
def P10139531145732597482.Spec : Prop :=
  ∀ n, P10139531145732597482.a n = A005187 n

end A005187

/-! ## A005187.P4007318134422453441

`A101925(n)-1`
-/

namespace A005187.P4007318134422453441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101925 n - 1

end

end A005187.P4007318134422453441

namespace A005187

/-- `A101925(n)-1` -/
def P4007318134422453441.Spec : Prop :=
  ∀ n, P4007318134422453441.a n = A005187 n

theorem P4007318134422453441.correct : P4007318134422453441.Spec := by
  intro n
  simp only [A005187, Nat.add_sub_cancel, A005187.P4007318134422453441.a, A005187.P3874015513960485494.a, A101925, A101925.P9724492527127448858.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A005187

/-! ## A005187.P12127014692802085340

`∑{d}[n, A297111(#)]`
-/

namespace A005187.P12127014692802085340
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A297111 d

end

end A005187.P12127014692802085340

namespace A005187

/-- `∑{d}[n, A297111(#)]` -/
def P12127014692802085340.Spec : Prop :=
  ∀ n, P12127014692802085340.a n = A005187 n

end A005187

/-! ## A005187.P2753509136255641657

`comp[A055938(n+1)]`
-/

namespace A005187.P2753509136255641657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055938 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A005187.P2753509136255641657

namespace A005187

/-- `comp[A055938(n+1)]` -/
def P2753509136255641657.Spec : Prop :=
  ∀ n, (P2753509136255641657.a n : ℤ) = A005187 n

end A005187

/-! ## A005187.P3018973384841988725

`∑[val(A004277(n), 2)]`
-/

namespace A005187.P3018973384841988725
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A004277 n).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005187.P3018973384841988725

namespace A005187

/-- `∑[val(A004277(n), 2)]` -/
def P3018973384841988725.Spec : Prop :=
  ∀ n, (P3018973384841988725.a n : ℤ) = A005187 n

end A005187

/-! ## A005187.P17501497385346660089

`∑[val(A008458(n), 2)]`
-/

namespace A005187.P17501497385346660089
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A008458 n).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005187.P17501497385346660089

namespace A005187

/-- `∑[val(A008458(n), 2)]` -/
def P17501497385346660089.Spec : Prop :=
  ∀ n, (P17501497385346660089.a n : ℤ) = A005187 n

end A005187

/-! ## A005187.P2125285401408601246

`∑[val(A255177(n), 2)]`
-/

namespace A005187.P2125285401408601246
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A255177 n).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005187.P2125285401408601246

namespace A005187

/-- `∑[val(A255177(n), 2)]` -/
def P2125285401408601246.Spec : Prop :=
  ∀ n, (P2125285401408601246.a n : ℤ) = A005187 n

end A005187

/-! ## A005187.P5854901290814889388

`∑[n-A093049(n)]`
-/

namespace A005187.P5854901290814889388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A093049 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005187.P5854901290814889388

namespace A005187

/-- `∑[n-A093049(n)]` -/
def P5854901290814889388.Spec : Prop :=
  ∀ n, P5854901290814889388.a n = A005187 n

end A005187

/-! ## A005187.P18059428679810243443

`∑[n]-A127944(n)`
-/

namespace A005187.P18059428679810243443
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A127944 n

end

end A005187.P18059428679810243443

namespace A005187

/-- `∑[n]-A127944(n)` -/
def P18059428679810243443.Spec : Prop :=
  ∀ n, P18059428679810243443.a n = A005187 n

end A005187

/-!
# A005188: Armstrong (or pluperfect, or Plus Perfect, or narcissistic) numbers: m-digit nonnegative numbers equal to sum of the m-th powers of their digits.

The programs for A005188, there is no canonical definition to state claims against.
-/

/-! ## A005188.P6319984267650214411

`A023052(A043320(n+1))`
-/

namespace A005188.P6319984267650214411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023052 (A043320 (n + 1)).toNat

end

end A005188.P6319984267650214411

/-! ## A005188.P4579370287645768167

`A023052(A044917(n+1))`
-/

namespace A005188.P4579370287645768167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023052 (A044917 (n + 1)).toNat

end

end A005188.P4579370287645768167

/-! ## A005188.P2453668028290738726

`A127287(A023052(n+1))`
-/

namespace A005188.P2453668028290738726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127287 (A023052 (n + 1)).toNat

end

end A005188.P2453668028290738726

/-! ## A005188.P1488696105732488637

`A023052(A161953(n+1))`
-/

namespace A005188.P1488696105732488637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023052 (A161953 (n + 1)).toNat

end

end A005188.P1488696105732488637

/-! ## A005188.P5916764240320551353

`A023052(A187829(n+1))`
-/

namespace A005188.P5916764240320551353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023052 (A187829 (n + 1)).toNat

end

end A005188.P5916764240320551353

/-!
# A005189: Number of n-term 2-sided generalized Fibonacci sequences.

The programs for A005189, the canonical program `A005189.P17210067191998774666` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005189 has offset 0).

The definition of A005189 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A005189.P17210067191998774666

`2*(n-1)*a(n-1)-(n-2)²*a(n-2)` with `a(0)=1, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A005189

/-- `2*(n-1)*a(n-1)-(n-2)²*a(n-2)` -/
def P17210067191998774666.Spec : Prop :=
  ∀ n, P17210067191998774666.a n = A005189 n

theorem P17210067191998774666.correct : P17210067191998774666.Spec := by
  intro n
  simp only [A005189]

end A005189

/-! ## A005189.P8248457223013226458

`A005185(A230253(n)-∑{e}[n+1, #])`
-/

namespace A005189.P8248457223013226458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005185 (A230253 n - ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ)).toNat

end

end A005189.P8248457223013226458

namespace A005189

/-- `A005185(A230253(n)-∑{e}[n+1, #])` -/
def P8248457223013226458.Spec : Prop :=
  ∀ n, P8248457223013226458.a n = A005189 n

end A005189

/-! ## A005189.P8157362392770253916

`A008620(round(2*n/3)*A012258(n))`
-/

namespace A005189.P8157362392770253916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (SequenceMachineLib.roundAway (2 * ((n : ℚ) / 3)) * A012258 n).toNat

end

end A005189.P8157362392770253916

namespace A005189

/-- `A008620(round(2*n/3)*A012258(n))` -/
def P8157362392770253916.Spec : Prop :=
  ∀ n, P8157362392770253916.a n = A005189 n

end A005189

/-!
# A005190: Central quadrinomial coefficients: largest coefficient of (1 + x + x^2 + x^3)^n.

The programs for A005190, there is no canonical definition to state claims against.
-/

/-! ## A005190.P11044301786091358113

`A008287(floor(n*(n/2+n+1)))`
-/

namespace A005190.P11044301786091358113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008287 ⌊(n : ℚ) * ((n : ℚ) / 2 + (n + 1 : ℚ))⌋.toNat

end

end A005190.P11044301786091358113

/-! ## A005190.P3604888559981824319

`A077042(A155212(n)+12)`
-/

namespace A005190.P3604888559981824319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077042 (A155212 n + 12).toNat

end

end A005190.P3604888559981824319

/-! ## A005190.P7545936359197345700

`A077042(eq[4, A002262(n)])`
-/

namespace A005190.P7545936359197345700
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077042 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A005190.P7545936359197345700

/-! ## A005190.P6982974566724024160

`A077042(A167614(n+3)+1)`
-/

namespace A005190.P6982974566724024160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077042 (A167614 (n + 3) + 1).toNat

end

end A005190.P6982974566724024160

/-! ## A005190.P13709195673703546140

`A077042(A000124(n+4)+3)`
-/

namespace A005190.P13709195673703546140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077042 (A000124 (n + 4) + 3).toNat

end

end A005190.P13709195673703546140

/-!
# A005191: Central pentanomial coefficients: largest coefficient of (1 + x + ... + x^4)^n.

The programs for A005191, there is no canonical definition to state claims against.
-/

/-! ## A005191.P72812102746083530

`A104631(n)+A007043(n)`
-/

namespace A005191.P72812102746083530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104631 n + A007043 n

end

end A005191.P72812102746083530

/-! ## A005191.P13000488150176240600

`A201552(A212342(n+1))`
-/

namespace A005191.P13000488150176240600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201552 (A212342 (n + 1)).toNat

end

end A005191.P13000488150176240600

/-! ## A005191.P4181958056758166255

`A201552(A347553(n+3))`
-/

namespace A005191.P4181958056758166255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201552 (A347553 (n + 3)).toNat

end

end A005191.P4181958056758166255

/-! ## A005191.P13205698914156812759

`A201552(A027379(n)-n)`
-/

namespace A005191.P13205698914156812759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201552 (A027379 n - (n : ℤ)).toNat

end

end A005191.P13205698914156812759

/-! ## A005191.P7316240227222194139

`A201552(A179865(n+1)+n)`
-/

namespace A005191.P7316240227222194139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201552 (A179865 (n + 1) + (n : ℤ)).toNat

end

end A005191.P7316240227222194139

/-! ## A005191.P17514968363643608335

`A201552(record[A296067(A238531(n))])`
-/

namespace A005191.P17514968363643608335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296067 (A238531 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201552 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A005191.P17514968363643608335

/-! ## A005191.P12168161308428333864

`A201552(A000096(A000007(n)+n))`
-/

namespace A005191.P12168161308428333864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201552 (A000096 (A000007 n + (n : ℤ)).toNat).toNat

end

end A005191.P12168161308428333864

/-! ## A005191.P3905671670371572204

`A201552(A028310(A000217(n)+n))`
-/

namespace A005191.P3905671670371572204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201552 (A028310 (A000217 n + (n : ℤ)).toNat).toNat

end

end A005191.P3905671670371572204

/-! ## A005191.P8281505208414061790

`A201552(xor(A000007(n), A000096(n)))`
-/

namespace A005191.P8281505208414061790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201552 (Int.xor (A000007 n) (A000096 n)).toNat

end

end A005191.P8281505208414061790

/-! ## A005191.P15309207173596779924

`A201552(∑[A005408(n)-A254667(n)])`
-/

namespace A005191.P15309207173596779924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n - A254667 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201552 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A005191.P15309207173596779924

/-!
# A005192: Finite difference measurements.

The programs for A005192, there is no canonical definition to state claims against.
-/

/-! ## A005192.P13891107631808025253

`∑[∑[A056530(A308333(n))]]`
-/

namespace A005192.P13891107631808025253
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056530 (A308333 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005192.P13891107631808025253

/-!
# A005193: a(n) is the number of alpha-labelings of graphs with n edges.

The programs for A005193, there is no canonical definition to state claims against.
-/

/-! ## A005193.P12880019816085688466

`A347041(n)+A002024(A200222(n))`
-/

namespace A005193.P12880019816085688466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347041 n + A002024 (A200222 n).toNat

end

end A005193.P12880019816085688466

/-! ## A005193.P4166526804625898481

`A131154(∑[∏[A047994(n+1)]])`
-/

namespace A005193.P4166526804625898481
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047994 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131154 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A005193.P4166526804625898481

/-! ## A005193.P17700421038274887186

`2*(A141204(a(n-1))+a(n-1))-A000079(n)` with `a(0)=1`
-/

namespace A005193.P17700421038274887186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * (A141204 (a (n - 1)).toNat + a (n - 1)) - A000079 n

end

end A005193.P17700421038274887186

/-!
# A005194: Number of balanced symmetric graphs.

The programs for A005194, there is no canonical definition to state claims against.
-/

/-! ## A005194.P9758584840095747011

`∑[A167489(A090365(n))]`
-/

namespace A005194.P9758584840095747011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167489 (A090365 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005194.P9758584840095747011

/-! ## A005194.P4390657444370718262

`∑[A275928(A208354(n))]`
-/

namespace A005194.P4390657444370718262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275928 (A208354 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005194.P4390657444370718262

/-! ## A005194.P17341942968755964833

`∑[A320111(A288953(n))]`
-/

namespace A005194.P17341942968755964833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320111 (A288953 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005194.P17341942968755964833

/-! ## A005194.P11279228077487685244

`∑[A000010(A169693(a(n-1)+n)+1)]` with `a(0)=1, a(1)=1`
-/

namespace A005194.P11279228077487685244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  A000010 (A169693 (f1 (n - 1) + (n : ℤ)).toNat + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005194.P11279228077487685244

/-!
# A005195: Number of forests with n unlabeled nodes.

The programs for A005195, there is no canonical definition to state claims against.
-/

/-! ## A005195.P6878580217183631689

`∑[A144958(n)]`
-/

namespace A005195.P6878580217183631689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144958 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005195.P6878580217183631689

/-! ## A005195.P17865649505638079715

`A144215(A028310(∑[n]))`
-/

namespace A005195.P17865649505638079715
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144215 (A028310 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A005195.P17865649505638079715

/-! ## A005195.P9859006320189366546

`A144215(A179865(n+1))`
-/

namespace A005195.P9859006320189366546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144215 (A179865 (n + 1)).toNat

end

end A005195.P9859006320189366546

/-! ## A005195.P11319603457533915962

`A144215(record[A276956(n+1)])`
-/

namespace A005195.P11319603457533915962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276956 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144215 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A005195.P11319603457533915962

/-! ## A005195.P4512841622857875309

`A144215(A000007(n)+∑[n])`
-/

namespace A005195.P4512841622857875309
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144215 (A000007 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A005195.P4512841622857875309

/-! ## A005195.P16117410715951889950

`A144215(or(∑[n], A000007(n)))`
-/

namespace A005195.P16117410715951889950
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144215 (Int.lor ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A000007 n)).toNat

end

end A005195.P16117410715951889950

/-! ## A005195.P3939411990866931101

`A144215(A000217(A000007(n)+n))`
-/

namespace A005195.P3939411990866931101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144215 (A000217 (A000007 n + (n : ℤ)).toNat).toNat

end

end A005195.P3939411990866931101

/-! ## A005195.P9486255866089945927

`A144215(A000124(n)-A057427(n))`
-/

namespace A005195.P9486255866089945927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144215 (A000124 n - A057427 n).toNat

end

end A005195.P9486255866089945927

/-! ## A005195.P2373249958148434464

`A144215(or(A000007(n), A000217(n)))`
-/

namespace A005195.P2373249958148434464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144215 (Int.lor (A000007 n) (A000217 n)).toNat

end

end A005195.P2373249958148434464

/-! ## A005195.P8799534525645447379

`A144215(A000124(n)-char[A331300(n)])`
-/

namespace A005195.P8799534525645447379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331300 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144215 (A000124 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)).toNat

end

end A005195.P8799534525645447379

/-!
# A005196: a(n) = Sum_t t*F(n,t), where F(n,t) (see A095133) is the number of forests with n (unlabeled) nodes and exactly t trees.

The programs for A005196, there is no canonical definition to state claims against.
-/

/-! ## A005196.P18195950090616306403

`A005195(n+1)*A095131(n+1)/A095132(n+1)`
-/

namespace A005196.P18195950090616306403
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005195 (n + 1) * A095131 (n + 1) : ℚ) / (A095132 (n + 1) : ℚ)

end

end A005196.P18195950090616306403

/-! ## A005196.P11675261563763025728

`A177143(n+1)+A001842(A177133(n+1))`
-/

namespace A005196.P11675261563763025728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177143 (n + 1) + A001842 (A177133 (n + 1)).toNat

end

end A005196.P11675261563763025728

/-! ## A005196.P14624048805379382142

`A351290(A018499(n+1))+A018487(n+1)`
-/

namespace A005196.P14624048805379382142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351290 (A018499 (n + 1)).toNat + A018487 (n + 1)

end

end A005196.P14624048805379382142

/-!
# A005197: a(n) = Sum_t t*F(n,t), where F(n,t) (see A033185) is the number of rooted forests with n (unlabeled) nodes and exactly t rooted trees.

The programs for A005197, there is no canonical definition to state claims against.
-/

/-! ## A005197.P16899062093258903077

`record[A008651(A105635(n))]`
-/

namespace A005197.P16899062093258903077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008651 (A105635 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005197.P16899062093258903077

/-! ## A005197.P6515506518697318152

`A087846(A095929(n+1))`
-/

namespace A005197.P6515506518697318152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087846 (A095929 (n + 1)).toNat

end

end A005197.P6515506518697318152

/-! ## A005197.P815360575379599352

`record[A008651(∑[A097076(n)])]`
-/

namespace A005197.P815360575379599352
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097076 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008651 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005197.P815360575379599352

