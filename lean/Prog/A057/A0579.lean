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
import Seq.B000.C032
import Seq.B000.C033
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
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
import Seq.B006.C000
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
import Seq.Opaque.C014
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A057901: a(n) = 3^prime(n).

The programs for A057901, the canonical program `A057901.P13324023212543556702` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057901 has offset 1).

The definition of A057901 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A057901.P13324023212543556702

`3^A000040(n+1)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A057901

/-- `3^A000040(n+1)` -/
def P13324023212543556702.Spec : Prop :=
  ∀ n, P13324023212543556702.a n = (A057901 (n + 1) : ℚ)

end A057901

/-! ## A057901.P14194841621549729698

`3^p?[comp[n²]]`
-/

namespace A057901.P14194841621549729698
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A057901.P14194841621549729698

namespace A057901

/-- `3^p?[comp[n²]]` -/
def P14194841621549729698.Spec : Prop :=
  ∀ n, (P14194841621549729698.a n : ℤ) = A057901 (n + 1)

end A057901

/-! ## A057901.P15603095443329408772

`3^eq[1, ∑{e}[n, #]]`
-/

namespace A057901.P15603095443329408772
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A057901.P15603095443329408772

namespace A057901

/-- `3^eq[1, ∑{e}[n, #]]` -/
def P15603095443329408772.Spec : Prop :=
  ∀ n, (P15603095443329408772.a n : ℤ) = A057901 (n + 1)

end A057901

/-! ## A057901.P2969328469693381495

`record[3^∑{p}[n+2, #]]`
-/

namespace A057901.P2969328469693381495
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ (∑ p ∈ Nat.primeFactors (f2 n), p)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A057901.P2969328469693381495

namespace A057901

/-- `record[3^∑{p}[n+2, #]]` -/
def P2969328469693381495.Spec : Prop :=
  ∀ n, (P2969328469693381495.a n : ℤ) = A057901 (n + 1)

end A057901

/-! ## A057901.P7461899824806765504

`record[∑{p}[2-n, 3^#]]`
-/

namespace A057901.P7461899824806765504
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (n : ℤ)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, 3 ^ p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A057901.P7461899824806765504

namespace A057901

/-- `record[∑{p}[2-n, 3^#]]` -/
def P7461899824806765504.Spec : Prop :=
  ∀ n, (P7461899824806765504.a n : ℤ) = A057901 (n + 1)

end A057901

/-!
# A057902: a(n) = 5^prime(n).

The programs for A057902, the canonical program `A057902.P13074004454325797661` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057902 has offset 1).

The definition of A057902 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A057902.P13074004454325797661

`5^A000040(n+1)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A057902

/-- `5^A000040(n+1)` -/
def P13074004454325797661.Spec : Prop :=
  ∀ n, P13074004454325797661.a n = (A057902 (n + 1) : ℚ)

end A057902

/-! ## A057902.P10875381543687561366

`5^p?[comp[n²]]`
-/

namespace A057902.P10875381543687561366
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 ^ f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A057902.P10875381543687561366

namespace A057902

/-- `5^p?[comp[n²]]` -/
def P10875381543687561366.Spec : Prop :=
  ∀ n, (P10875381543687561366.a n : ℤ) = A057902 (n + 1)

end A057902

/-! ## A057902.P14403078935515657265

`5^eq[1, ∑{e}[n, #]]`
-/

namespace A057902.P14403078935515657265
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 ^ SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A057902.P14403078935515657265

namespace A057902

/-- `5^eq[1, ∑{e}[n, #]]` -/
def P14403078935515657265.Spec : Prop :=
  ∀ n, (P14403078935515657265.a n : ℤ) = A057902 (n + 1)

end A057902

/-! ## A057902.P14111431524625967784

`record[5^∑{p}[n+2, #]]`
-/

namespace A057902.P14111431524625967784
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 ^ (∑ p ∈ Nat.primeFactors (f2 n), p)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A057902.P14111431524625967784

namespace A057902

/-- `record[5^∑{p}[n+2, #]]` -/
def P14111431524625967784.Spec : Prop :=
  ∀ n, (P14111431524625967784.a n : ℤ) = A057902 (n + 1)

end A057902

/-! ## A057902.P1937853241544527872

`record[∑{p}[2-n, 5^#]]`
-/

namespace A057902.P1937853241544527872
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (n : ℤ)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, 5 ^ p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A057902.P1937853241544527872

namespace A057902

/-- `record[∑{p}[2-n, 5^#]]` -/
def P1937853241544527872.Spec : Prop :=
  ∀ n, (P1937853241544527872.a n : ℤ) = A057902 (n + 1)

end A057902

/-!
# A057903: Positive integers that are not the sum of exactly two positive cubes.

The programs for A057903, the canonical program `A057903.P7767242056551869797` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057903 has offset 1).

The definition of A057903 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A057903.P4023671895179378114

`lt[n*A025455(n), n]`
-/

namespace A057903.P4023671895179378114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A025455 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A057903.P4023671895179378114

namespace A057903

/-- `lt[n*A025455(n), n]` -/
def P4023671895179378114.Spec : Prop :=
  ∀ n, (P4023671895179378114.a n : ℤ) = A057903 (n + 1)

end A057903

/-! ## A057903.P2412471678454858204

`lt[n*A280618(n), n]`
-/

namespace A057903.P2412471678454858204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A280618 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A057903.P2412471678454858204

namespace A057903

/-- `lt[n*A280618(n), n]` -/
def P2412471678454858204.Spec : Prop :=
  ∀ n, (P2412471678454858204.a n : ℤ) = A057903 (n + 1)

end A057903

/-! ## A057903.P7767242056551869797

`comp[A105125(comp[∑[n+1]])]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A057903

/-- `comp[A105125(comp[∑[n+1]])]` -/
def P7767242056551869797.Spec : Prop :=
  ∀ n, (P7767242056551869797.a n : ℤ) = A057903 (n + 1)

theorem P7767242056551869797.correct : P7767242056551869797.Spec := by
  intro n
  simp only [A057903, Nat.add_sub_cancel]

end A057903

/-! ## A057903.P14624294926689266149

`lt[A025455(n+1), 1]+1`
-/

namespace A057903.P14624294926689266149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025455 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A057903.P14624294926689266149

namespace A057903

/-- `lt[A025455(n+1), 1]+1` -/
def P14624294926689266149.Spec : Prop :=
  ∀ n, (P14624294926689266149.a n : ℤ) = A057903 (n + 1)

end A057903

/-! ## A057903.P17726414537166979929

`lt[A280618(n+1), 1]+1`
-/

namespace A057903.P17726414537166979929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280618 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A057903.P17726414537166979929

namespace A057903

/-- `lt[A280618(n+1), 1]+1` -/
def P17726414537166979929.Spec : Prop :=
  ∀ n, (P17726414537166979929.a n : ℤ) = A057903 (n + 1)

end A057903

/-! ## A057903.P11477247028729200078

`comp[A003325(n+1)-1]+1`
-/

namespace A057903.P11477247028729200078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003325 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A057903.P11477247028729200078

namespace A057903

/-- `comp[A003325(n+1)-1]+1` -/
def P11477247028729200078.Spec : Prop :=
  ∀ n, (P11477247028729200078.a n : ℤ) = A057903 (n + 1)

end A057903

/-! ## A057903.P7115284575898039886

`lt[1, A266230(n)]+1`
-/

namespace A057903.P7115284575898039886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266230 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A057903.P7115284575898039886

namespace A057903

/-- `lt[1, A266230(n)]+1` -/
def P7115284575898039886.Spec : Prop :=
  ∀ n, (P7115284575898039886.a n : ℤ) = A057903 (n + 1)

end A057903

/-! ## A057903.P9785133770894956042

`eq[A000038(n), A025455(n)]`
-/

namespace A057903.P9785133770894956042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025455 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A057903.P9785133770894956042

namespace A057903

/-- `eq[A000038(n), A025455(n)]` -/
def P9785133770894956042.Spec : Prop :=
  ∀ n, (P9785133770894956042.a n : ℤ) = A057903 (n + 1)

end A057903

/-! ## A057903.P7491672870066217229

`eq[A000038(n), A280618(n)]`
-/

namespace A057903.P7491672870066217229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280618 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A057903.P7491672870066217229

namespace A057903

/-- `eq[A000038(n), A280618(n)]` -/
def P7491672870066217229.Spec : Prop :=
  ∀ n, (P7491672870066217229.a n : ℤ) = A057903 (n + 1)

end A057903

/-! ## A057903.P4646937600378225391

`record[A028310(n-A280618(n))]`
-/

namespace A057903.P4646937600378225391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 ((n : ℤ) - A280618 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A057903.P4646937600378225391

namespace A057903

/-- `record[A028310(n-A280618(n))]` -/
def P4646937600378225391.Spec : Prop :=
  ∀ n, P4646937600378225391.a n = A057903 (n + 1)

end A057903

/-! ## A057903.P913080602317440597

`lt[A025455(A000038(n)+n), 1]`
-/

namespace A057903.P913080602317440597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025455 (A000038 n + (n : ℤ)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A057903.P913080602317440597

namespace A057903

/-- `lt[A025455(A000038(n)+n), 1]` -/
def P913080602317440597.Spec : Prop :=
  ∀ n, (P913080602317440597.a n : ℤ) = A057903 (n + 1)

end A057903

/-! ## A057903.P4691669426208791480

`lt[A280618(A000038(n)+n), 1]`
-/

namespace A057903.P4691669426208791480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280618 (A000038 n + (n : ℤ)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A057903.P4691669426208791480

namespace A057903

/-- `lt[A280618(A000038(n)+n), 1]` -/
def P4691669426208791480.Spec : Prop :=
  ∀ n, (P4691669426208791480.a n : ℤ) = A057903 (n + 1)

end A057903

/-! ## A057903.P17926279576721431866

`eq[2*A010057(n), A173677(n)]`
-/

namespace A057903.P17926279576721431866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A010057 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173677 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A057903.P17926279576721431866

namespace A057903

/-- `eq[2*A010057(n), A173677(n)]` -/
def P17926279576721431866.Spec : Prop :=
  ∀ n, (P17926279576721431866.a n : ℤ) = A057903 (n + 1)

end A057903

/-! ## A057903.P14644212560987158813

`eq[A000007(n), A025455(n)]`
-/

namespace A057903.P14644212560987158813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025455 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A057903.P14644212560987158813

namespace A057903

/-- `eq[A000007(n), A025455(n)]` -/
def P14644212560987158813.Spec : Prop :=
  ∀ n, (P14644212560987158813.a n : ℤ) = A057903 (n + 1)

end A057903

/-! ## A057903.P9024373158717581347

`eq[A000007(n), A280618(n)]`
-/

namespace A057903.P9024373158717581347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280618 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A057903.P9024373158717581347

namespace A057903

/-- `eq[A000007(n), A280618(n)]` -/
def P9024373158717581347.Spec : Prop :=
  ∀ n, (P9024373158717581347.a n : ℤ) = A057903 (n + 1)

end A057903

/-! ## A057903.P10062838365238104139

`lt[A025455(n), A057427(n)]`
-/

namespace A057903.P10062838365238104139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025455 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A057903.P10062838365238104139

namespace A057903

/-- `lt[A025455(n), A057427(n)]` -/
def P10062838365238104139.Spec : Prop :=
  ∀ n, (P10062838365238104139.a n : ℤ) = A057903 (n + 1)

end A057903

/-! ## A057903.P1586670302462961319

`lt[A280618(n), A057427(n)]`
-/

namespace A057903.P1586670302462961319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280618 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A057903.P1586670302462961319

namespace A057903

/-- `lt[A280618(n), A057427(n)]` -/
def P1586670302462961319.Spec : Prop :=
  ∀ n, (P1586670302462961319.a n : ℤ) = A057903 (n + 1)

end A057903

/-! ## A057903.P4185933943245749400

`eq[exp(A280618(n)), A054977(n)]`
-/

namespace A057903.P4185933943245749400
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.exp (A280618 n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℝ)) n

end

end A057903.P4185933943245749400

namespace A057903

/-- `eq[exp(A280618(n)), A054977(n)]` -/
def P4185933943245749400.Spec : Prop :=
  ∀ n, (P4185933943245749400.a n : ℤ) = A057903 (n + 1)

end A057903

/-! ## A057903.P11156806400469267320

`lt[C(A008458(n), A280618(n))-n, 1]`
-/

namespace A057903.P11156806400469267320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A008458 n).toNat (A280618 n).toNat : ℤ) - (n : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A057903.P11156806400469267320

namespace A057903

/-- `lt[C(A008458(n), A280618(n))-n, 1]` -/
def P11156806400469267320.Spec : Prop :=
  ∀ n, (P11156806400469267320.a n : ℤ) = A057903 (n + 1)

end A057903

/-! ## A057903.P8553371318948333554

`eq[A025455(n), A329678(n+3)]`
-/

namespace A057903.P8553371318948333554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025455 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329678 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A057903.P8553371318948333554

namespace A057903

/-- `eq[A025455(n), A329678(n+3)]` -/
def P8553371318948333554.Spec : Prop :=
  ∀ n, (P8553371318948333554.a n : ℤ) = A057903 (n + 1)

end A057903

/-!
# A057904: Positive integers that are not the sum of exactly three positive cubes.

The programs for A057904, there is no canonical definition to state claims against.
-/

/-! ## A057904.P15808570405135479991

`comp[A003072(n+1)-1]+1`
-/

namespace A057904.P15808570405135479991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003072 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A057904.P15808570405135479991

/-! ## A057904.P1407817066936379695

`lt[n*A025456(n), n]`
-/

namespace A057904.P1407817066936379695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A025456 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A057904.P1407817066936379695

/-! ## A057904.P379644449652142341

`lt[n*A051344(n), n]`
-/

namespace A057904.P379644449652142341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A051344 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A057904.P379644449652142341

/-! ## A057904.P4957360790521048450

`lt[A025456(n+1), 1]+1`
-/

namespace A057904.P4957360790521048450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025456 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A057904.P4957360790521048450

/-! ## A057904.P17672656645019234034

`lt[A051344(n+1), 1]+1`
-/

namespace A057904.P17672656645019234034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051344 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A057904.P17672656645019234034

/-! ## A057904.P16568646082336196059

`eq[A000007(n), A025456(n)]`
-/

namespace A057904.P16568646082336196059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025456 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A057904.P16568646082336196059

/-! ## A057904.P1021032843523790468

`eq[A000038(n), A025456(n)]`
-/

namespace A057904.P1021032843523790468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025456 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A057904.P1021032843523790468

/-! ## A057904.P7961420651228594135

`eq[A000007(n), A051344(n)]`
-/

namespace A057904.P7961420651228594135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051344 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A057904.P7961420651228594135

/-! ## A057904.P9959326720817994772

`eq[A000038(n), A051344(n)]`
-/

namespace A057904.P9959326720817994772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051344 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A057904.P9959326720817994772

/-! ## A057904.P17567214436344418389

`eq[2, A000601(a(A025456(n)))]` with `a(0)=1`
-/

namespace A057904.P17567214436344418389
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A000601 (f2 (A025456 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A057904.P17567214436344418389

/-! ## A057904.P9296552371762391424

`lt[A025456(n), n/A238531(n)]`
-/

namespace A057904.P9296552371762391424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025456 n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A238531 n : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A057904.P9296552371762391424

/-! ## A057904.P18029994782768678981

`eq[1, A051344(n)+A062157(n)²]`
-/

namespace A057904.P18029994782768678981
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051344 n + A062157 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A057904.P18029994782768678981

/-! ## A057904.P8304630998294928365

`eq[A010057(A010057(n)+n), A025456(n)]`
-/

namespace A057904.P8304630998294928365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010057 (A010057 n + (n : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025456 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A057904.P8304630998294928365

/-! ## A057904.P10996213852083901588

`record[n+1-A000290(lcm(n, A025456(n+1)))]`
-/

namespace A057904.P10996213852083901588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A000290 (Int.lcm (n : ℤ) (A025456 (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A057904.P10996213852083901588

/-! ## A057904.P6297017849592000470

`record[n+1-A000290(n*A025456(n+1))]`
-/

namespace A057904.P6297017849592000470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A000290 ((n : ℤ) * A025456 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A057904.P6297017849592000470

/-! ## A057904.P8686135863498259979

`eq[2, A276087(a(n-1)*A025456(n))]` with `a(0)=1`
-/

namespace A057904.P8686135863498259979
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A276087 (f2 (n - 1) * A025456 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A057904.P8686135863498259979

/-!
# A057905: Positive integers that are not the sum of exactly four positive cubes.

The programs for A057905, there is no canonical definition to state claims against.
-/

/-! ## A057905.P12597000795395663523

`comp[A003327(n+1)-1]+1`
-/

namespace A057905.P12597000795395663523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003327 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A057905.P12597000795395663523

/-! ## A057905.P8398420227904363471

`lt[n*A025457(n), n]`
-/

namespace A057905.P8398420227904363471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A025457 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A057905.P8398420227904363471

/-! ## A057905.P7639156774110514810

`eq[0, A025457(n+1)]+1`
-/

namespace A057905.P7639156774110514810
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025457 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A057905.P7639156774110514810

/-! ## A057905.P15262844414975069170

`eq[A000007(n), A025457(n)]`
-/

namespace A057905.P15262844414975069170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025457 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A057905.P15262844414975069170

/-! ## A057905.P8071975973504726786

`eq[A000038(n), A025457(n)]`
-/

namespace A057905.P8071975973504726786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025457 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A057905.P8071975973504726786

/-! ## A057905.P18401725080068383206

`lt[A025457(n), A057427(n)]`
-/

namespace A057905.P18401725080068383206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025457 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A057905.P18401725080068383206

/-! ## A057905.P9632048664912798638

`eq[1, A158388(n)+A025457(n)]`
-/

namespace A057905.P9632048664912798638
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 n + A025457 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A057905.P9632048664912798638

/-! ## A057905.P5713298617275226431

`lt[A025457(n), n/A064478(n)]`
-/

namespace A057905.P5713298617275226431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025457 n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A064478 n : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A057905.P5713298617275226431

/-! ## A057905.P4929810170877264343

`eq[A025447(n+1), A025448(n+1)]+1`
-/

namespace A057905.P4929810170877264343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025447 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025448 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A057905.P4929810170877264343

/-! ## A057905.P13222263368339251689

`record[n+1-A003963(n+1)*A025457(n+1)]`
-/

namespace A057905.P13222263368339251689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A003963 (n + 1) * A025457 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A057905.P13222263368339251689

/-! ## A057905.P15505783788311879034

`record[n+1-A000196(n*A025457(n+1))]`
-/

namespace A057905.P15505783788311879034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A000196 ((n : ℤ) * A025457 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A057905.P15505783788311879034

/-! ## A057905.P5162983664697500612

`lt[A025457(n), n/A053254(n)²]`
-/

namespace A057905.P5162983664697500612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025457 n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A053254 n ^ 2 : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A057905.P5162983664697500612

/-!
# A057906: Positive integers that are not the sum of exactly five positive cubes.

The programs for A057906, there is no canonical definition to state claims against.
-/

/-! ## A057906.P15522817438915487591

`lt[n*A025458(n), n]`
-/

namespace A057906.P15522817438915487591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A025458 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A057906.P15522817438915487591

/-! ## A057906.P15946998060389802773

`lt[A025458(n+1), 1]+1`
-/

namespace A057906.P15946998060389802773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025458 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A057906.P15946998060389802773

/-! ## A057906.P1121107510872855763

`eq[A000007(n), A025458(n)]`
-/

namespace A057906.P1121107510872855763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025458 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A057906.P1121107510872855763

/-! ## A057906.P10107063258799224279

`eq[A000038(n), A025458(n)]`
-/

namespace A057906.P10107063258799224279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025458 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A057906.P10107063258799224279

/-! ## A057906.P7308178527883673295

`eq[2, A000040(a(A025458(n)))]` with `a(0)=1`
-/

namespace A057906.P7308178527883673295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A000040 (f2 (A025458 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A057906.P7308178527883673295

/-! ## A057906.P18001104168546712605

`eq[1, A025458(a(A025458(n)))]` with `a(0)=5`
-/

namespace A057906.P18001104168546712605
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [5] fun n f2 =>
  A025458 (f2 (A025458 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A057906.P18001104168546712605

/-! ## A057906.P7915473641948841662

`eq[1, A054977(n)+A025458(n)]`
-/

namespace A057906.P7915473641948841662
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n + A025458 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A057906.P7915473641948841662

/-! ## A057906.P11626999859314168453

`eq[1, A158388(n)+A025458(n)]`
-/

namespace A057906.P11626999859314168453
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 n + A025458 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A057906.P11626999859314168453

/-! ## A057906.P12266907369607657184

`eq[∏{d}[n, A025458(#)], A025458(n)]`
-/

namespace A057906.P12266907369607657184
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f2 n), A025458 d

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025458 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f3 j) n

end

end A057906.P12266907369607657184

/-! ## A057906.P6692869796745674326

`eq[val(A000040(n+1), 2), A025458(n)]`
-/

namespace A057906.P6692869796745674326
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000040 (n + 1)).toNat 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025458 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A057906.P6692869796745674326

/-! ## A057906.P15980826512248626997

`eq[A025448(n+1), A025449(n+1)]+1`
-/

namespace A057906.P15980826512248626997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025448 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025449 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A057906.P15980826512248626997

/-! ## A057906.P5670029455969141703

`eq[A010057(A010057(n)+n), A025458(n)]`
-/

namespace A057906.P5670029455969141703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010057 (A010057 n + (n : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025458 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A057906.P5670029455969141703

/-!
# A057907: Positive integers that are not the sum of precisely six positive cubes.

The programs for A057907, there is no canonical definition to state claims against.
-/

/-! ## A057907.P10128629296111214476

`lt[n*A025459(n), n]`
-/

namespace A057907.P10128629296111214476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A025459 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A057907.P10128629296111214476

/-! ## A057907.P17262550062306343582

`eq[0, A025459(n+1)]+1`
-/

namespace A057907.P17262550062306343582
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025459 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A057907.P17262550062306343582

/-! ## A057907.P16932500053845684077

`eq[A000007(n), A025459(n)]`
-/

namespace A057907.P16932500053845684077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025459 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A057907.P16932500053845684077

/-! ## A057907.P3266051960823054222

`eq[A000038(n), A025459(n)]`
-/

namespace A057907.P3266051960823054222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025459 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A057907.P3266051960823054222

/-! ## A057907.P6904417915358350711

`eq[2, A000040(a(A025459(n)))]` with `a(0)=1`
-/

namespace A057907.P6904417915358350711
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A000040 (f2 (A025459 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A057907.P6904417915358350711

/-! ## A057907.P11674308041888220215

`eq[1, A140303(a(A025459(n)))]` with `a(0)=2`
-/

namespace A057907.P11674308041888220215
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f2 =>
  A140303 (f2 (A025459 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A057907.P11674308041888220215

/-! ## A057907.P8111760798316411706

`eq[1, A054977(n)+A025459(n)]`
-/

namespace A057907.P8111760798316411706
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n + A025459 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A057907.P8111760798316411706

/-! ## A057907.P16637503098886556104

`eq[1, A158388(n)+A025459(n)]`
-/

namespace A057907.P16637503098886556104
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 n + A025459 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A057907.P16637503098886556104

/-! ## A057907.P15382733349795474739

`lt[A025459(n), n/A265413(n)]`
-/

namespace A057907.P15382733349795474739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025459 n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A265413 n : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A057907.P15382733349795474739

/-! ## A057907.P1826889556014048190

`lt[A025459(n)^A001221(n+1), 1]`
-/

namespace A057907.P1826889556014048190
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025459 n : ℚ) ^ (A001221 (n + 1) : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n

end

end A057907.P1826889556014048190

/-! ## A057907.P8010121648749096315

`eq[A025449(n+1), A025450(n+1)]+1`
-/

namespace A057907.P8010121648749096315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025449 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025450 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A057907.P8010121648749096315

/-! ## A057907.P13772406831730139861

`record[n+1-A000217(n*A025459(n+1))]`
-/

namespace A057907.P13772406831730139861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A000217 ((n : ℤ) * A025459 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A057907.P13772406831730139861

/-! ## A057907.P4893851059411629456

`record[n+1-A003188(n*A025459(n+1))]`
-/

namespace A057907.P4893851059411629456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A003188 ((n : ℤ) * A025459 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A057907.P4893851059411629456

/-! ## A057907.P15172299980501501733

`lt[A025459(n)^A219640(A219636(n+1)), 1]`
-/

namespace A057907.P15172299980501501733
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025459 n : ℚ) ^ (A219640 (A219636 (n + 1)).toNat : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n

end

end A057907.P15172299980501501733

/-!
# A057908: Numbers k such that 4^k - k is prime.

The programs for A057908, there is no canonical definition to state claims against.
-/

/-! ## A057908.P4843916884411946527

`A060819(A035341(n)+A002522(n))`
-/

namespace A057908.P4843916884411946527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060819 (A035341 n + A002522 n).toNat

end

end A057908.P4843916884411946527

/-! ## A057908.P11113364630238879976

`A335115(A035341(n)+A002522(n))`
-/

namespace A057908.P11113364630238879976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335115 (A035341 n + A002522 n).toNat

end

end A057908.P11113364630238879976

/-!
# A057909: Numbers k such that 4^k + k is prime.

The programs for A057909, there is no canonical definition to state claims against.
-/

/-! ## A057909.P7012724712723032338

`∑[A093489(A246792(n+1))+1]`
-/

namespace A057909.P7012724712723032338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093489 (A246792 (n + 1)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057909.P7012724712723032338

/-! ## A057909.P16381091163356299690

`A373075(A135010(n+1)+A020337(n+1))`
-/

namespace A057909.P16381091163356299690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373075 (A135010 (n + 1) + A020337 (n + 1)).toNat

end

end A057909.P16381091163356299690

/-!
# A057910: Numbers k such that 2*3^k - 5 is prime.

The programs for A057910, there is no canonical definition to state claims against.
-/

/-! ## A057910.P8071196201027044431

`∑[A325276(record[A358309(2*n+3)])]`
-/

namespace A057910.P8071196201027044431
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358309 (2 * n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325276 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057910.P8071196201027044431

/-!
# A057912: Numbers k such that 3*2^k - 5 is prime.

The programs for A057912, there is no canonical definition to state claims against.
-/

/-! ## A057912.P18202884693462734373

`lt[A003108(n), gcd(6, A037444(n))]`
-/

namespace A057912.P18202884693462734373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003108 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 6 (A037444 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A057912.P18202884693462734373

/-! ## A057912.P7313448293730319534

`lt[A318726(A000010(n+5)), A319676(n+1)]`
-/

namespace A057912.P7313448293730319534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318726 (A000010 (n + 5)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319676 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A057912.P7313448293730319534

/-!
# A057913: Numbers k such that 3*2^k + 5 is prime.

The programs for A057913, there is no canonical definition to state claims against.
-/

/-! ## A057913.P6583171559157774166

`val(Δ[A211486(n+1)], 2)`
-/

namespace A057913.P6583171559157774166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211486 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f1 (n + 1) - f1 n).toNat 2

end

end A057913.P6583171559157774166

/-!
# A057916: Numbers k such that 3*5^k + 2 is prime.

The programs for A057916, there is no canonical definition to state claims against.
-/

/-! ## A057916.P13743455182346155205

`lt[A019565(A062401(n+1)), A324086(n)]`
-/

namespace A057916.P13743455182346155205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 (A062401 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324086 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A057916.P13743455182346155205

/-! ## A057916.P6459132366232019184

`record[A082662(A025747(n))%A200370(n+1)]`
-/

namespace A057916.P6459132366232019184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A082662 (A025747 n).toNat) (A200370 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A057916.P6459132366232019184

/-! ## A057916.P8897761681948925510

`eq[A000111(A270969(2*n+3)), A333769(n)]`
-/

namespace A057916.P8897761681948925510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000111 (A270969 (2 * n + 3)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333769 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A057916.P8897761681948925510

/-! ## A057916.P11250804547492159985

`record[A099383(n)%A262981(A099384(3*n+4))]`
-/

namespace A057916.P11250804547492159985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A099383 n) (A262981 (A099384 (3 * n + 4)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A057916.P11250804547492159985

/-! ## A057916.P16477374503070828756

`eq[A133623(n+1), A287695(A000005(3*n+4))]`
-/

namespace A057916.P16477374503070828756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133623 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287695 (A000005 (3 * n + 4)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A057916.P16477374503070828756

/-!
# A057918: Number of pairs of numbers (r,s) each less than n such that (r,s,n) is in geometric progression.

The programs for A057918, the canonical program `A057918.P8779601029509101892` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057918 has offset 1).

The definition of A057918 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000188, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A057918.P8779601029509101892

`A000188(n+1)-1`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A057918

/-- `A000188(n+1)-1` -/
def P8779601029509101892.Spec : Prop :=
  ∀ n, P8779601029509101892.a n = A057918 (n + 1)

theorem P8779601029509101892.correct : P8779601029509101892.Spec := by
  intro n
  simp only [A057918, Nat.add_sub_cancel]

end A057918

/-! ## A057918.P1520708936921092253

`∏{p}[n+1, #^val(n+1, #²)]-1`
-/

namespace A057918.P1520708936921092253
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2) : ℕ) : ℤ) - 1

end

end A057918.P1520708936921092253

namespace A057918

/-- `∏{p}[n+1, #^val(n+1, #²)]-1` -/
def P1520708936921092253.Spec : Prop :=
  ∀ n, P1520708936921092253.a n = A057918 (n + 1)

end A057918

/-! ## A057918.P4121039091617827854

`n%∏{p}[n+1, #^val(n+1, #²)]`
-/

namespace A057918.P4121039091617827854
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % (∏ p ∈ Nat.primeFactors (f1 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2))

end

end A057918.P4121039091617827854

namespace A057918

/-- `n%∏{p}[n+1, #^val(n+1, #²)]` -/
def P4121039091617827854.Spec : Prop :=
  ∀ n, (P4121039091617827854.a n : ℤ) = A057918 (n + 1)

end A057918

/-! ## A057918.P4043518724295122270

`floor(sqrt(A336642(n+1)))`
-/

namespace A057918.P4043518724295122270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A336642 (n + 1))

end

end A057918.P4043518724295122270

namespace A057918

/-- `floor(sqrt(A336642(n+1)))` -/
def P4043518724295122270.Spec : Prop :=
  ∀ n, P4043518724295122270.a n = A057918 (n + 1)

end A057918

/-! ## A057918.P15929963650558253407

`floor(sqrt(A336644(n+1)))`
-/

namespace A057918.P15929963650558253407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A336644 (n + 1))

end

end A057918.P15929963650558253407

namespace A057918

/-- `floor(sqrt(A336644(n+1)))` -/
def P15929963650558253407.Spec : Prop :=
  ∀ n, P15929963650558253407.a n = A057918 (n + 1)

end A057918

/-! ## A057918.P2049125754594674345

`sqrt(A008833(n+1))-1`
-/

namespace A057918.P2049125754594674345
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A008833 (n + 1) : ℝ) - 1

end

end A057918.P2049125754594674345

namespace A057918

/-- `sqrt(A008833(n+1))-1` -/
def P2049125754594674345.Spec : Prop :=
  ∀ n, P2049125754594674345.a n = (A057918 (n + 1) : ℝ)

end A057918

/-! ## A057918.P6245841747940645924

`floor(n/A019554(n+1))`
-/

namespace A057918.P6245841747940645924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / (A019554 (n + 1) : ℚ)⌋

end

end A057918.P6245841747940645924

namespace A057918

/-- `floor(n/A019554(n+1))` -/
def P6245841747940645924.Spec : Prop :=
  ∀ n, P6245841747940645924.a n = A057918 (n + 1)

end A057918

/-! ## A057918.P1959945265666411558

`A337101(2*(n+1))-1`
-/

namespace A057918.P1959945265666411558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337101 (2 * (n + 1)) - 1

end

end A057918.P1959945265666411558

namespace A057918

/-- `A337101(2*(n+1))-1` -/
def P1959945265666411558.Spec : Prop :=
  ∀ n, P1959945265666411558.a n = A057918 (n + 1)

end A057918

/-! ## A057918.P15057131147218241041

`sqrt(abs(A358272(n+1)))-1`
-/

namespace A057918.P15057131147218241041
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (|A358272 (n + 1)| : ℝ) - 1

end

end A057918.P15057131147218241041

namespace A057918

/-- `sqrt(abs(A358272(n+1)))-1` -/
def P15057131147218241041.Spec : Prop :=
  ∀ n, P15057131147218241041.a n = (A057918 (n + 1) : ℝ)

end A057918

/-! ## A057918.P9114683784836842122

`floor(sqrt(n/A007913(n+1)))`
-/

namespace A057918.P9114683784836842122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt ((n : ℚ) / (A007913 (n + 1) : ℚ) : ℝ)⌋

end

end A057918.P9114683784836842122

namespace A057918

/-- `floor(sqrt(n/A007913(n+1)))` -/
def P9114683784836842122.Spec : Prop :=
  ∀ n, P9114683784836842122.a n = A057918 (n + 1)

end A057918

/-! ## A057918.P16103795747510507605

`A355264(n+1)/(n+1)-1`
-/

namespace A057918.P16103795747510507605
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A355264 (n + 1) : ℚ) / (n + 1 : ℚ) - 1

end

end A057918.P16103795747510507605

namespace A057918

/-- `A355264(n+1)/(n+1)-1` -/
def P16103795747510507605.Spec : Prop :=
  ∀ n, P16103795747510507605.a n = (A057918 (n + 1) : ℚ)

end A057918

/-! ## A057918.P17450853834995679438

`A000196(A336642(n+1))`
-/

namespace A057918.P17450853834995679438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A336642 (n + 1)).toNat

end

end A057918.P17450853834995679438

namespace A057918

/-- `A000196(A336642(n+1))` -/
def P17450853834995679438.Spec : Prop :=
  ∀ n, P17450853834995679438.a n = A057918 (n + 1)

end A057918

/-! ## A057918.P12999803685160231985

`A000196(A336644(n+1))`
-/

namespace A057918.P12999803685160231985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A336644 (n + 1)).toNat

end

end A057918.P12999803685160231985

namespace A057918

/-- `A000196(A336644(n+1))` -/
def P12999803685160231985.Spec : Prop :=
  ∀ n, P12999803685160231985.a n = A057918 (n + 1)

end A057918

/-! ## A057918.P5376575321869803791

`A023444(A000188(n+1)+1)`
-/

namespace A057918.P5376575321869803791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A000188 (n + 1) + 1).toNat

end

end A057918.P5376575321869803791

namespace A057918

/-- `A023444(A000188(n+1)+1)` -/
def P5376575321869803791.Spec : Prop :=
  ∀ n, P5376575321869803791.a n = A057918 (n + 1)

end A057918

/-! ## A057918.P7269181597195085350

`A000196(A008833(n+1)-1)`
-/

namespace A057918.P7269181597195085350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A008833 (n + 1) - 1).toNat

end

end A057918.P7269181597195085350

namespace A057918

/-- `A000196(A008833(n+1)-1)` -/
def P7269181597195085350.Spec : Prop :=
  ∀ n, P7269181597195085350.a n = A057918 (n + 1)

end A057918

/-! ## A057918.P215199541650756983

`A019554(A003557(n+1))-1`
-/

namespace A057918.P215199541650756983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019554 (A003557 (n + 1)).toNat - 1

end

end A057918.P215199541650756983

namespace A057918

/-- `A019554(A003557(n+1))-1` -/
def P215199541650756983.Spec : Prop :=
  ∀ n, P215199541650756983.a n = A057918 (n + 1)

end A057918

/-! ## A057918.P9694636381149421566

`A003557(A355261(n+1))-1`
-/

namespace A057918.P9694636381149421566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (A355261 (n + 1)).toNat - 1

end

end A057918.P9694636381149421566

namespace A057918

/-- `A003557(A355261(n+1))-1` -/
def P9694636381149421566.Spec : Prop :=
  ∀ n, P9694636381149421566.a n = A057918 (n + 1)

end A057918

/-! ## A057918.P11219145215563285963

`A000196(n-A326055(n+1))`
-/

namespace A057918.P11219145215563285963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 ((n : ℤ) - A326055 (n + 1)).toNat

end

end A057918.P11219145215563285963

namespace A057918

/-- `A000196(n-A326055(n+1))` -/
def P11219145215563285963.Spec : Prop :=
  ∀ n, P11219145215563285963.a n = A057918 (n + 1)

end A057918

/-! ## A057918.P4261406742734315637

`A000096(n)%A000188(n+1)`
-/

namespace A057918.P4261406742734315637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000096 n) (A000188 (n + 1))

end

end A057918.P4261406742734315637

namespace A057918

/-- `A000096(n)%A000188(n+1)` -/
def P4261406742734315637.Spec : Prop :=
  ∀ n, P4261406742734315637.a n = A057918 (n + 1)

end A057918

/-! ## A057918.P17907573704129540383

`A000447(n)%A000188(n+1)`
-/

namespace A057918.P17907573704129540383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000447 n) (A000188 (n + 1))

end

end A057918.P17907573704129540383

namespace A057918

/-- `A000447(n)%A000188(n+1)` -/
def P17907573704129540383.Spec : Prop :=
  ∀ n, P17907573704129540383.a n = A057918 (n + 1)

end A057918

/-!
# A057919: Numbers k such that phi(k) divides phi(k+1), where phi(k) is the Euler totient function A000010.

The programs for A057919, the canonical program `A057919.P11397683448699479986` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057919 has offset 1).

The definition of A057919 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 123 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A057919.P11397683448699479986

`record[gcd(n+1, A000010(n+2)%A000010(n+1))]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A057919

/-- `record[gcd(n+1, A000010(n+2)%A000010(n+1))]` -/
def P11397683448699479986.Spec : Prop :=
  ∀ n, (P11397683448699479986.a n : ℤ) = A057919 (n + 1)

theorem P11397683448699479986.correct : P11397683448699479986.Spec := by
  intro n
  simp only [A057919, Nat.add_sub_cancel]

end A057919

/-! ## A057919.P14878813147506957681

`eq[1, A282016(n+1)]+1`
-/

namespace A057919.P14878813147506957681
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282016 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A057919.P14878813147506957681

namespace A057919

/-- `eq[1, A282016(n+1)]+1` -/
def P14878813147506957681.Spec : Prop :=
  ∀ n, (P14878813147506957681.a n : ℤ) = A057919 (n + 1)

end A057919

/-! ## A057919.P16989183059263873083

`record[(n+1)/(A069797(n+1)-(n+1))]`
-/

namespace A057919.P16989183059263873083
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A069797 (n + 1) - (n + 1 : ℤ) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A057919.P16989183059263873083

namespace A057919

/-- `record[(n+1)/(A069797(n+1)-(n+1))]` -/
def P16989183059263873083.Spec : Prop :=
  ∀ n, P16989183059263873083.a n = (A057919 (n + 1) : ℚ)

end A057919

/-! ## A057919.P12161195077718187578

`record[A000027(n+1)/A282016(n+1)]`
-/

namespace A057919.P12161195077718187578
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℚ) / (A282016 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A057919.P12161195077718187578

namespace A057919

/-- `record[A000027(n+1)/A282016(n+1)]` -/
def P12161195077718187578.Spec : Prop :=
  ∀ n, P12161195077718187578.a n = (A057919 (n + 1) : ℚ)

end A057919

/-! ## A057919.P11320569680630173106

`eq[A000010(n+1), A058515(n+1)]+1`
-/

namespace A057919.P11320569680630173106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058515 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A057919.P11320569680630173106

namespace A057919

/-- `eq[A000010(n+1), A058515(n+1)]+1` -/
def P11320569680630173106.Spec : Prop :=
  ∀ n, (P11320569680630173106.a n : ℤ) = A057919 (n + 1)

end A057919

/-!
# A057920: Numbers k such that phi(k+1) divides phi(k), where phi is A000010.

The programs for A057920, the canonical program `A057920.P5459412885655340721` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057920 has offset 1).

The definition of A057920 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 433 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A057920.P5459412885655340721

`lt[A000010(n+1)%A000010(n+2), 1]+1`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A057920

/-- `lt[A000010(n+1)%A000010(n+2), 1]+1` -/
def P5459412885655340721.Spec : Prop :=
  ∀ n, (P5459412885655340721.a n : ℤ) = A057920 (n + 1)

theorem P5459412885655340721.correct : P5459412885655340721.Spec := by
  intro n
  simp only [A057920, Nat.add_sub_cancel]

end A057920

/-! ## A057920.P1117294787066136627

`record[A121048(n+1)-A066813(n+1)]`
-/

namespace A057920.P1117294787066136627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121048 (n + 1) - A066813 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A057920.P1117294787066136627

namespace A057920

/-- `record[A121048(n+1)-A066813(n+1)]` -/
def P1117294787066136627.Spec : Prop :=
  ∀ n, P1117294787066136627.a n = A057920 (n + 1)

end A057920

/-! ## A057920.P7176191558209925540

`eq[A000010(n+2), A058515(n+1)]+1`
-/

namespace A057920.P7176191558209925540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058515 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A057920.P7176191558209925540

namespace A057920

/-- `eq[A000010(n+2), A058515(n+1)]+1` -/
def P7176191558209925540.Spec : Prop :=
  ∀ n, (P7176191558209925540.a n : ℤ) = A057920 (n + 1)

end A057920

/-! ## A057920.P6244410554940734652

`record[floor(A002618(n+1)/A066813(n+1))]`
-/

namespace A057920.P6244410554940734652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A002618 (n + 1) : ℚ) / (A066813 (n + 1) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A057920.P6244410554940734652

namespace A057920

/-- `record[floor(A002618(n+1)/A066813(n+1))]` -/
def P6244410554940734652.Spec : Prop :=
  ∀ n, P6244410554940734652.a n = A057920 (n + 1)

end A057920

/-! ## A057920.P9209306365351287458

`lt[A225530(n)%A225530(n+1), 1]`
-/

namespace A057920.P9209306365351287458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A225530 n) (A225530 (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A057920.P9209306365351287458

namespace A057920

/-- `lt[A225530(n)%A225530(n+1), 1]` -/
def P9209306365351287458.Spec : Prop :=
  ∀ n, (P9209306365351287458.a n : ℤ) = A057920 (n + 1)

end A057920

/-!
# A057921: d(n+1) divides d(n), where d(n) is number of positive divisors of n.

The programs for A057921, the canonical program `A057921.P2394616819826387578` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057921 has offset 0).

The definition of A057921 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4385 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A057921.P2394616819826387578

`eq[0, A145154(n)%A145154(n+1)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A057921

/-- `eq[0, A145154(n)%A145154(n+1)]` -/
def P2394616819826387578.Spec : Prop :=
  ∀ n, (P2394616819826387578.a n : ℤ) = A057921 n

theorem P2394616819826387578.correct : P2394616819826387578.Spec := by
  intro n
  simp only [A057921]

end A057921

/-! ## A057921.P14562881420489841762

`eq[A000005(n+1), A060779(n+1)]+1`
-/

namespace A057921.P14562881420489841762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060779 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A057921.P14562881420489841762

namespace A057921

/-- `eq[A000005(n+1), A060779(n+1)]+1` -/
def P14562881420489841762.Spec : Prop :=
  ∀ n, (P14562881420489841762.a n : ℤ) = A057921 n

end A057921

/-! ## A057921.P15300293404132318131

`eq[0, A341062(n+1)%A096737(n+1)]`
-/

namespace A057921.P15300293404132318131
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A341062 (n + 1)) (A096737 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A057921.P15300293404132318131

namespace A057921

/-- `eq[0, A341062(n+1)%A096737(n+1)]` -/
def P15300293404132318131.Spec : Prop :=
  ∀ n, (P15300293404132318131.a n : ℤ) = A057921 n

end A057921

/-! ## A057921.P2951332099376030044

`eq[A001227(A003961(n+1)), A060779(n+1)]+1`
-/

namespace A057921.P2951332099376030044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (A003961 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060779 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A057921.P2951332099376030044

namespace A057921

/-- `eq[A001227(A003961(n+1)), A060779(n+1)]+1` -/
def P2951332099376030044.Spec : Prop :=
  ∀ n, (P2951332099376030044.a n : ℤ) = A057921 n

end A057921

/-!
# A057922: d(n) divides d(n+1), where d(n) is number of positive divisors of n.

The programs for A057922, the canonical program `A057922.P11387328956576665709` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057922 has offset 0).

The definition of A057922 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A057922.P18192697279133414334

`A086552(n+1)-1`
-/

namespace A057922.P18192697279133414334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086552 (n + 1) - 1

end

end A057922.P18192697279133414334

namespace A057922

/-- `A086552(n+1)-1` -/
def P18192697279133414334.Spec : Prop :=
  ∀ n, P18192697279133414334.a n = A057922 n

end A057922

/-! ## A057922.P11387328956576665709

`eq[1, A361022(n+1)]+1`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A057922

/-- `eq[1, A361022(n+1)]+1` -/
def P11387328956576665709.Spec : Prop :=
  ∀ n, (P11387328956576665709.a n : ℤ) = A057922 n

theorem P11387328956576665709.correct : P11387328956576665709.Spec := by
  intro n
  simp only [A057922]

end A057922

/-! ## A057922.P1592987576590665680

`eq[1, A275479(n+1)]+1`
-/

namespace A057922.P1592987576590665680
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275479 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A057922.P1592987576590665680

namespace A057922

/-- `eq[1, A275479(n+1)]+1` -/
def P1592987576590665680.Spec : Prop :=
  ∀ n, (P1592987576590665680.a n : ℤ) = A057922 n

end A057922

/-! ## A057922.P5214838074483650979

`filter[A183299(n+1), A361022(#)]`
-/

namespace A057922.P5214838074483650979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183299 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A361022 (f1 j).toNat = 1) n)

end

end A057922.P5214838074483650979

namespace A057922

/-- `filter[A183299(n+1), A361022(#)]` -/
def P5214838074483650979.Spec : Prop :=
  ∀ n, P5214838074483650979.a n = A057922 n

end A057922

/-! ## A057922.P1358031434703682684

`filter[n+1, A361022(#)]`
-/

namespace A057922.P1358031434703682684
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A361022 (f1 j) = 1) n)

end

end A057922.P1358031434703682684

namespace A057922

/-- `filter[n+1, A361022(#)]` -/
def P1358031434703682684.Spec : Prop :=
  ∀ n, (P1358031434703682684.a n : ℤ) = A057922 n

end A057922

/-! ## A057922.P12277263453968399511

`A023443(A086552(n+1))`
-/

namespace A057922.P12277263453968399511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A086552 (n + 1)).toNat

end

end A057922.P12277263453968399511

namespace A057922

/-- `A023443(A086552(n+1))` -/
def P12277263453968399511.Spec : Prop :=
  ∀ n, P12277263453968399511.a n = A057922 n

end A057922

/-! ## A057922.P9092778600724420100

`eq[A000005(n+1), A060778(n+1)]+1`
-/

namespace A057922.P9092778600724420100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060778 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A057922.P9092778600724420100

namespace A057922

/-- `eq[A000005(n+1), A060778(n+1)]+1` -/
def P9092778600724420100.Spec : Prop :=
  ∀ n, (P9092778600724420100.a n : ℤ) = A057922 n

end A057922

/-! ## A057922.P8458824238253436446

`A114592(A001359(n+1))+A086552(n+1)`
-/

namespace A057922.P8458824238253436446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114592 (A001359 (n + 1)).toNat + A086552 (n + 1)

end

end A057922.P8458824238253436446

namespace A057922

/-- `A114592(A001359(n+1))+A086552(n+1)` -/
def P8458824238253436446.Spec : Prop :=
  ∀ n, P8458824238253436446.a n = A057922 n

end A057922

/-! ## A057922.P958719535734954046

`eq[0, A275478(n+1)]+1`
-/

namespace A057922.P958719535734954046
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275478 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A057922.P958719535734954046

namespace A057922

/-- `eq[0, A275478(n+1)]+1` -/
def P958719535734954046.Spec : Prop :=
  ∀ n, (P958719535734954046.a n : ℤ) = A057922 n

end A057922

/-!
# A057923: a(0)=0, a(1)=2, a(n) = smallest number such that sequence b(n) = {a(n-1) BITWISE OR a(n)} is strictly monotonically increasing.

The programs for A057923, the canonical program `A057923.P14248268347898393636` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057923 has offset 0).

The definition of A057923 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A057923.P14248268347898393636

`or(a(n-1)+a(n-2)+1, a(n-1))-a(n-1)` with `a(0)=0, a(1)=2`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A057923

/-- `or(a(n-1)+a(n-2)+1, a(n-1))-a(n-1)` -/
def P14248268347898393636.Spec : Prop :=
  ∀ n, P14248268347898393636.a n = A057923 n

theorem P14248268347898393636.correct : P14248268347898393636.Spec := by
  intro n
  simp only [A057923]

end A057923

/-! ## A057923.P3800143374841167902

`A057924(n)-a(n-1)` with `a(0)=0`
-/

namespace A057923.P3800143374841167902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A057924 n - a (n - 1)

end

end A057923.P3800143374841167902

namespace A057923

/-- `A057924(n)-a(n-1)` -/
def P3800143374841167902.Spec : Prop :=
  ∀ n, P3800143374841167902.a n = A057923 n

end A057923

/-!
# A057924: Sequence b(n) mentioned in A057923.

The programs for A057924, the canonical program `A057924.P17885427935178142664` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057924 has offset 1).

The definition of A057924 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A057924.P17885427935178142664

`A057923(n+1)+A057923(n)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A057924

/-- `A057923(n+1)+A057923(n)` -/
def P17885427935178142664.Spec : Prop :=
  ∀ n, P17885427935178142664.a n = A057924 (n + 1)

theorem P17885427935178142664.correct : P17885427935178142664.Spec := by
  intro n
  simp only [A057924, Nat.add_sub_cancel]

end A057924

/-! ## A057924.P3452955540361589417

`xor(A057923(A008619(2*n)), A057923(n))`
-/

namespace A057924.P3452955540361589417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A057923 (A008619 (2 * n)).toNat) (A057923 n)

end

end A057924.P3452955540361589417

namespace A057924

/-- `xor(A057923(A008619(2*n)), A057923(n))` -/
def P3452955540361589417.Spec : Prop :=
  ∀ n, P3452955540361589417.a n = A057924 (n + 1)

end A057924

/-! ## A057924.P5959120479455944553

`or(A057923(A028242(2*n)), A057923(n))`
-/

namespace A057924.P5959120479455944553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A057923 (A028242 (2 * n)).toNat) (A057923 n)

end

end A057924.P5959120479455944553

namespace A057924

/-- `or(A057923(A028242(2*n)), A057923(n))` -/
def P5959120479455944553.Spec : Prop :=
  ∀ n, P5959120479455944553.a n = A057924 (n + 1)

end A057924

/-! ## A057924.P9159296370581286504

`or(A057923(A008611(3*n)), A057923(n))`
-/

namespace A057924.P9159296370581286504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A057923 (A008611 (3 * n)).toNat) (A057923 n)

end

end A057924.P9159296370581286504

namespace A057924

/-- `or(A057923(A008611(3*n)), A057923(n))` -/
def P9159296370581286504.Spec : Prop :=
  ∀ n, P9159296370581286504.a n = A057924 (n + 1)

end A057924

/-! ## A057924.P6398046248231609048

`or(A057923(A008620(3*n)), A057923(n))`
-/

namespace A057924.P6398046248231609048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A057923 (A008620 (3 * n)).toNat) (A057923 n)

end

end A057924.P6398046248231609048

namespace A057924

/-- `or(A057923(A008620(3*n)), A057923(n))` -/
def P6398046248231609048.Spec : Prop :=
  ∀ n, P6398046248231609048.a n = A057924 (n + 1)

end A057924

/-! ## A057924.P12736118597418407742

`or(A014681(a(n-1)), A057923(n))` with `a(0)=2`
-/

namespace A057924.P12736118597418407742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  Int.lor (A014681 (a (n - 1)).toNat) (A057923 n)

end

end A057924.P12736118597418407742

namespace A057924

/-- `or(A014681(a(n-1)), A057923(n))` -/
def P12736118597418407742.Spec : Prop :=
  ∀ n, P12736118597418407742.a n = A057924 (n + 1)

end A057924

/-!
# A057925: Position of first occurrence of 2^n in A057923.

The programs for A057925, there is no canonical definition to state claims against.
-/

/-! ## A057925.P13675579396907327484

`abs(A057928(C(2, C(3, n²))+n))`
-/

namespace A057925.P13675579396907327484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A057928 (Nat.choose 2 (Nat.choose 3 (n ^ 2)) + n)|

end

end A057925.P13675579396907327484

/-! ## A057925.P2056109278510220873

`abs(A057928(A181440(n+1)))`
-/

namespace A057925.P2056109278510220873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A057928 (A181440 (n + 1)).toNat|

end

end A057925.P2056109278510220873

/-! ## A057925.P9271222396401885925

`lcm(A057928(A181440(n+1)), A272901(n+1))`
-/

namespace A057925.P9271222396401885925
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A057928 (A181440 (n + 1)).toNat) (A272901 (n + 1))

end

end A057925.P9271222396401885925

/-! ## A057925.P11825422840541066550

`A071797(A087475(n))+A057931(n)`
-/

namespace A057925.P11825422840541066550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071797 (A087475 n).toNat + A057931 n

end

end A057925.P11825422840541066550

/-!
# A057926: a(0) = 1, a(1) = 3, a(n) = smallest number such that sequence b(n) = a(n) OR a(n+1) is strictly monotonically increasing.

The programs for A057926, the canonical program `A057926.P4204720819430214237` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057926 has offset 0).

The definition of A057926 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A057926.P4204720819430214237

`and(a(n-1)+a(n-2)+1, 1-or(2, a(n-1)))` with `a(0)=1, a(1)=3`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A057926

/-- `and(a(n-1)+a(n-2)+1, 1-or(2, a(n-1)))` -/
def P4204720819430214237.Spec : Prop :=
  ∀ n, P4204720819430214237.a n = A057926 n

theorem P4204720819430214237.correct : P4204720819430214237.Spec := by
  intro n
  simp only [A057926]

end A057926

/-! ## A057926.P517921974647431984

`or(a(n-1)+a(n-2)+1, a(n-1))-a(n-1)` with `a(0)=1, a(1)=3`
-/

namespace A057926.P517921974647431984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  Int.lor (a (n - 1) + (a (n - 2) + 1)) (a (n - 1)) - a (n - 1)

end

end A057926.P517921974647431984

namespace A057926

/-- `or(a(n-1)+a(n-2)+1, a(n-1))-a(n-1)` -/
def P517921974647431984.Spec : Prop :=
  ∀ n, P517921974647431984.a n = A057926 n

end A057926

/-! ## A057926.P4258763598875497040

`A057927(n)-a(n-1)` with `a(0)=1, a(1)=3`
-/

namespace A057926.P4258763598875497040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  A057927 n - a (n - 1)

end

end A057926.P4258763598875497040

namespace A057926

/-- `A057927(n)-a(n-1)` -/
def P4258763598875497040.Spec : Prop :=
  ∀ n, P4258763598875497040.a n = A057926 n

end A057926

/-!
# A057927: Sequence b(n) mentioned in A057926.

The programs for A057927, the canonical program `A057927.P12642065213747382486` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057927 has offset 1).

The definition of A057927 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A057927.P12642065213747382486

`or(a(n-1)+1, A057926(n))` with `a(0)=3`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A057927

/-- `or(a(n-1)+1, A057926(n))` -/
def P12642065213747382486.Spec : Prop :=
  ∀ n, P12642065213747382486.a n = A057927 (n + 1)

theorem P12642065213747382486.correct : P12642065213747382486.Spec := by
  intro n
  simp only [A057927, Nat.add_sub_cancel]

end A057927

/-! ## A057927.P14603973613538491191

`or(A057926(n+1), A057926(n))`
-/

namespace A057927.P14603973613538491191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A057926 (n + 1)) (A057926 n)

end

end A057927.P14603973613538491191

namespace A057927

/-- `or(A057926(n+1), A057926(n))` -/
def P14603973613538491191.Spec : Prop :=
  ∀ n, P14603973613538491191.a n = A057927 (n + 1)

end A057927

/-! ## A057927.P17845850202620356858

`A057926(n+1)+A057926(n)%A271289(n)`
-/

namespace A057927.P17845850202620356858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057926 (n + 1) + Int.tmod (A057926 n) (A271289 n)

end

end A057927.P17845850202620356858

namespace A057927

/-- `A057926(n+1)+A057926(n)%A271289(n)` -/
def P17845850202620356858.Spec : Prop :=
  ∀ n, P17845850202620356858.a n = A057927 (n + 1)

end A057927

/-! ## A057927.P4736751330993926662

`lt[A165199(n), log2(A139622(3*n+4))]`
-/

namespace A057927.P4736751330993926662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165199 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A139622 (3 * n + 4) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A057927.P4736751330993926662

namespace A057927

/-- `lt[A165199(n), log2(A139622(3*n+4))]` -/
def P4736751330993926662.Spec : Prop :=
  ∀ n, (P4736751330993926662.a n : ℤ) = A057927 (n + 1)

end A057927

/-!
# A057928: Position at which 2^n occurs in A057926, or -1 if it does not occur.

The programs for A057928, there is no canonical definition to state claims against.
-/

/-! ## A057928.P8378186271911938422

`A261017(A000032(n))-A270003(n+1)`
-/

namespace A057928.P8378186271911938422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261017 (A000032 n).toNat - A270003 (n + 1)

end

end A057928.P8378186271911938422

/-!
# A057929: a(0)=2, a(1)=5, a(n) = smallest number such that sequence b(n) = a(n) OR a(n+1) is strictly monotonically increasing.

The programs for A057929, the canonical program `A057929.P14549081968536918667` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057929 has offset 0).

The definition of A057929 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9997 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A057929.P3709643561916763478

`A057930(n)-a(n-1)` with `a(0)=2`
-/

namespace A057929.P3709643561916763478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A057930 n - a (n - 1)

end

end A057929.P3709643561916763478

namespace A057929

/-- `A057930(n)-a(n-1)` -/
def P3709643561916763478.Spec : Prop :=
  ∀ n, P3709643561916763478.a n = A057929 n

end A057929

/-! ## A057929.P14549081968536918667

`A057923(n+4)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A057929

/-- `A057923(n+4)` -/
def P14549081968536918667.Spec : Prop :=
  ∀ n, P14549081968536918667.a n = A057929 n

theorem P14549081968536918667.correct : P14549081968536918667.Spec := by
  intro n
  simp only [A057929]

end A057929

/-! ## A057929.P17450716644204092098

`xor(1, xor(1, A057923(A020705(n))))`
-/

namespace A057929.P17450716644204092098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 (A057923 (A020705 n).toNat))

end

end A057929.P17450716644204092098

namespace A057929

/-- `xor(1, xor(1, A057923(A020705(n))))` -/
def P17450716644204092098.Spec : Prop :=
  ∀ n, P17450716644204092098.a n = A057929 n

end A057929

/-! ## A057929.P677627925643542726

`A057923(A020705(n))%A002146(n)`
-/

namespace A057929.P677627925643542726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A057923 (A020705 n).toNat) (A002146 n)

end

end A057929.P677627925643542726

namespace A057929

/-- `A057923(A020705(n))%A002146(n)` -/
def P677627925643542726.Spec : Prop :=
  ∀ n, P677627925643542726.a n = A057929 n

end A057929

/-! ## A057929.P6644996655698623012

`gcd(A000038(n), A057923(A020705(n)))`
-/

namespace A057929.P6644996655698623012
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A057923 (A020705 n).toNat)

end

end A057929.P6644996655698623012

namespace A057929

/-- `gcd(A000038(n), A057923(A020705(n)))` -/
def P6644996655698623012.Spec : Prop :=
  ∀ n, (P6644996655698623012.a n : ℤ) = A057929 n

end A057929

/-! ## A057929.P14606228202658362768

`A057923(A020705(n))^abs(A097807(n))`
-/

namespace A057929.P14606228202658362768
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057923 (A020705 n).toNat : ℚ) ^ (|A097807 n| : ℤ)

end

end A057929.P14606228202658362768

namespace A057929

/-- `A057923(A020705(n))^abs(A097807(n))` -/
def P14606228202658362768.Spec : Prop :=
  ∀ n, P14606228202658362768.a n = (A057929 n : ℚ)

end A057929

/-! ## A057929.P9532854342551924721

`A057923(A020705(n))-C(n, A261010(n))`
-/

namespace A057929.P9532854342551924721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057923 (A020705 n).toNat - (Nat.choose n (A261010 n).toNat : ℤ)

end

end A057929.P9532854342551924721

namespace A057929

/-- `A057923(A020705(n))-C(n, A261010(n))` -/
def P9532854342551924721.Spec : Prop :=
  ∀ n, P9532854342551924721.a n = A057929 n

end A057929

/-! ## A057929.P7545613115439203817

`A057924(A020710(n))-A057923(A020710(n))`
-/

namespace A057929.P7545613115439203817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057924 (A020710 n).toNat - A057923 (A020710 n).toNat

end

end A057929.P7545613115439203817

namespace A057929

/-- `A057924(A020710(n))-A057923(A020710(n))` -/
def P7545613115439203817.Spec : Prop :=
  ∀ n, P7545613115439203817.a n = A057929 n

end A057929

/-! ## A057929.P12456809918813021334

`A057923(A020705(n))^(p?[A248572(n)-24]%2)`
-/

namespace A057929.P12456809918813021334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248572 n - 24

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057923 (A020705 n).toNat : ℚ) ^ (Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) 2 : ℤ)

end

end A057929.P12456809918813021334

namespace A057929

/-- `A057923(A020705(n))^(p?[A248572(n)-24]%2)` -/
def P12456809918813021334.Spec : Prop :=
  ∀ n, P12456809918813021334.a n = (A057929 n : ℚ)

end A057929

/-!
# A057930: Sequence b(n) mentioned in A057929.

The programs for A057930, the canonical program `A057930.P8479828398702324174` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057930 has offset 1).

The definition of A057930 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A057930.P8479828398702324174

`A057929(n+1)+A057929(n)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A057930

/-- `A057929(n+1)+A057929(n)` -/
def P8479828398702324174.Spec : Prop :=
  ∀ n, P8479828398702324174.a n = A057930 (n + 1)

theorem P8479828398702324174.correct : P8479828398702324174.Spec := by
  intro n
  simp only [A057930, Nat.add_sub_cancel]

end A057930

/-! ## A057930.P462823899476094343

`or(A057929(1-(n-2*n)), A057929(n))`
-/

namespace A057930.P462823899476094343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A057929 (1 - ((n : ℤ) - (2 * n : ℤ))).toNat) (A057929 n)

end

end A057930.P462823899476094343

namespace A057930

/-- `or(A057929(1-(n-2*n)), A057929(n))` -/
def P462823899476094343.Spec : Prop :=
  ∀ n, P462823899476094343.a n = A057930 (n + 1)

end A057930

/-! ## A057930.P3858346163028499134

`A057924(n+5)`
-/

namespace A057930.P3858346163028499134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057924 (n + 5)

end

end A057930.P3858346163028499134

namespace A057930

/-- `A057924(n+5)` -/
def P3858346163028499134.Spec : Prop :=
  ∀ n, P3858346163028499134.a n = A057930 (n + 1)

end A057930

/-! ## A057930.P9261251280250054754

`or(char[1], A057924(A020710(n)))`
-/

namespace A057930.P9261251280250054754
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A057924 (A020710 n).toNat)

end

end A057930.P9261251280250054754

namespace A057930

/-- `or(char[1], A057924(A020710(n)))` -/
def P9261251280250054754.Spec : Prop :=
  ∀ n, P9261251280250054754.a n = A057930 (n + 1)

end A057930

/-! ## A057930.P16543688830819269471

`A057924(A020710(n))%A002146(n)²`
-/

namespace A057930.P16543688830819269471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A057924 (A020710 n).toNat) (A002146 n ^ 2)

end

end A057930.P16543688830819269471

namespace A057930

/-- `A057924(A020710(n))%A002146(n)²` -/
def P16543688830819269471.Spec : Prop :=
  ∀ n, P16543688830819269471.a n = A057930 (n + 1)

end A057930

/-! ## A057930.P6832457598043295878

`A057924(A020710(n))^A007318(C(3, n))`
-/

namespace A057930.P6832457598043295878
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057924 (A020710 n).toNat : ℚ) ^ (A007318 (Nat.choose 3 n) : ℤ)

end

end A057930.P6832457598043295878

namespace A057930

/-- `A057924(A020710(n))^A007318(C(3, n))` -/
def P6832457598043295878.Spec : Prop :=
  ∀ n, P6832457598043295878.a n = (A057930 (n + 1) : ℚ)

end A057930

/-! ## A057930.P5814550266096573287

`A007318(C(2, n))²*A057924(A020710(n))`
-/

namespace A057930.P5814550266096573287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) ^ 2 * A057924 (A020710 n).toNat

end

end A057930.P5814550266096573287

namespace A057930

/-- `A007318(C(2, n))²*A057924(A020710(n))` -/
def P5814550266096573287.Spec : Prop :=
  ∀ n, P5814550266096573287.a n = A057930 (n + 1)

end A057930

/-! ## A057930.P7328485004433547243

`∑{d}[A057924(A020710(n)), A000010(#)]`
-/

namespace A057930.P7328485004433547243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057924 (A020710 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A057930.P7328485004433547243

namespace A057930

/-- `∑{d}[A057924(A020710(n)), A000010(#)]` -/
def P7328485004433547243.Spec : Prop :=
  ∀ n, P7328485004433547243.a n = A057930 (n + 1)

end A057930

/-! ## A057930.P18425939622802520284

`A014963(Δ[12*n²])*A057924(A020710(n))`
-/

namespace A057930.P18425939622802520284
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12 * n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat * A057924 (A020710 n).toNat

end

end A057930.P18425939622802520284

namespace A057930

/-- `A014963(Δ[12*n²])*A057924(A020710(n))` -/
def P18425939622802520284.Spec : Prop :=
  ∀ n, P18425939622802520284.a n = A057930 (n + 1)

end A057930

/-! ## A057930.P997194687814144125

`A007318(∑[n])*A057924(A020710(n))`
-/

namespace A057930.P997194687814144125
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A057924 (A020710 n).toNat

end

end A057930.P997194687814144125

namespace A057930

/-- `A007318(∑[n])*A057924(A020710(n))` -/
def P997194687814144125.Spec : Prop :=
  ∀ n, P997194687814144125.a n = A057930 (n + 1)

end A057930

/-!
# A057931: Positions at which powers of 2 occur in A057929. (Or -1 if it does not occur.)

The programs for A057931, there is no canonical definition to state claims against.
-/

/-! ## A057931.P615543953612772684

`A057925(n)-A071797(A087475(n))`
-/

namespace A057931.P615543953612772684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057925 n - A071797 (A087475 n).toNat

end

end A057931.P615543953612772684

/-!
# A057932: a(n) = floor(10^(n+1)/81).

The programs for A057932, the canonical program `A057932.P3371504316785558653` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057932 has offset 0).

The definition of A057932 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(10^(n+1)/81)` (program `A057932.P3371504316785558653`, by `A057932.P3371504316785558653.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A057932.P3371504316785558653

`floor(10^(n+1)/81)`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A057932

/-- `floor(10^(n+1)/81)` -/
def P3371504316785558653.Spec : Prop :=
  ∀ n, P3371504316785558653.a n = A057932 n

theorem P3371504316785558653.correct : P3371504316785558653.Spec := by
  intro n
  simp only [A057932]

end A057932

/-! ## A057932.P6473803146235398684

`A014824(n)+A002264(A002264(n+1))`
-/

namespace A057932.P6473803146235398684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014824 n + A002264 (A002264 (n + 1)).toNat

end

end A057932.P6473803146235398684

namespace A057932

/-- `A014824(n)+A002264(A002264(n+1))` -/
def P6473803146235398684.Spec : Prop :=
  ∀ n, P6473803146235398684.a n = A057932 n

end A057932

/-! ## A057932.P16789692040148752216

`record[floor(A287468(n)/9)]`
-/

namespace A057932.P16789692040148752216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A287468 n : ℚ) / 9⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A057932.P16789692040148752216

namespace A057932

/-- `record[floor(A287468(n)/9)]` -/
def P16789692040148752216.Spec : Prop :=
  ∀ n, P16789692040148752216.a n = A057932 n

end A057932

/-! ## A057932.P3252444623216314018

`record[floor(A290420(n)/9)]`
-/

namespace A057932.P3252444623216314018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A290420 n : ℚ) / 9⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A057932.P3252444623216314018

namespace A057932

/-- `record[floor(A290420(n)/9)]` -/
def P3252444623216314018.Spec : Prop :=
  ∀ n, P3252444623216314018.a n = A057932 n

end A057932

/-! ## A057932.P1307979902183581886

`record[floor(A290676(n)/9)]`
-/

namespace A057932.P1307979902183581886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A290676 n : ℚ) / 9⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A057932.P1307979902183581886

namespace A057932

/-- `record[floor(A290676(n)/9)]` -/
def P1307979902183581886.Spec : Prop :=
  ∀ n, P1307979902183581886.a n = A057932 n

end A057932

/-!
# A057933: Floor[(80/81)*10^n].

The programs for A057933, the canonical program `A057933.P5489646380167776972` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057933 has offset 1).

The definition of A057933 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A057933.P5489646380167776972

`A002283(n+1)-A057932(n)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A057933

/-- `A002283(n+1)-A057932(n)` -/
def P5489646380167776972.Spec : Prop :=
  ∀ n, P5489646380167776972.a n = A057933 (n + 1)

theorem P5489646380167776972.correct : P5489646380167776972.Spec := by
  intro n
  simp only [A057933, Nat.add_sub_cancel]

end A057933

/-! ## A057933.P11671453384196617655

`A064617(n+1)+A014824(n)-A057932(n)`
-/

namespace A057933.P11671453384196617655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064617 (n + 1) + (A014824 n - A057932 n)

end

end A057933.P11671453384196617655

namespace A057933

/-- `A064617(n+1)+A014824(n)-A057932(n)` -/
def P11671453384196617655.Spec : Prop :=
  ∀ n, P11671453384196617655.a n = A057933 (n + 1)

end A057933

/-! ## A057933.P12741111044020378267

`A002275(n+1)+A002282(n+1)-A057932(n)`
-/

namespace A057933.P12741111044020378267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 (n + 1) + (A002282 (n + 1) - A057932 n)

end

end A057933.P12741111044020378267

namespace A057933

/-- `A002275(n+1)+A002282(n+1)-A057932(n)` -/
def P12741111044020378267.Spec : Prop :=
  ∀ n, P12741111044020378267.a n = A057933 (n + 1)

end A057933

/-! ## A057933.P6782409934312005596

`A002276(n+1)+A002281(n+1)-A057932(n)`
-/

namespace A057933.P6782409934312005596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002276 (n + 1) + (A002281 (n + 1) - A057932 n)

end

end A057933.P6782409934312005596

namespace A057933

/-- `A002276(n+1)+A002281(n+1)-A057932(n)` -/
def P6782409934312005596.Spec : Prop :=
  ∀ n, P6782409934312005596.a n = A057933 (n + 1)

end A057933

/-! ## A057933.P4856305280030306102

`floor(A002282(n+2)/9)`
-/

namespace A057933.P4856305280030306102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A002282 (n + 2) : ℚ) / 9⌋

end

end A057933.P4856305280030306102

namespace A057933

/-- `floor(A002282(n+2)/9)` -/
def P4856305280030306102.Spec : Prop :=
  ∀ n, P4856305280030306102.a n = A057933 (n + 1)

end A057933

/-! ## A057933.P14016512740476677099

`round(A002282(n+2)/9-A007318(∑[n])/2)`
-/

namespace A057933.P14016512740476677099
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A002282 (n + 2) : ℚ) / 9 - (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 2)

end

end A057933.P14016512740476677099

namespace A057933

/-- `round(A002282(n+2)/9-A007318(∑[n])/2)` -/
def P14016512740476677099.Spec : Prop :=
  ∀ n, P14016512740476677099.a n = A057933 (n + 1)

end A057933

/-! ## A057933.P11115943434810925557

`floor(A246058(n+2)/18)`
-/

namespace A057933.P11115943434810925557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A246058 (n + 2) : ℚ) / 18⌋

end

end A057933.P11115943434810925557

namespace A057933

/-- `floor(A246058(n+2)/18)` -/
def P11115943434810925557.Spec : Prop :=
  ∀ n, P11115943434810925557.a n = A057933 (n + 1)

end A057933

/-!
# A057934: Number of prime factors of 10^n + 1 (counted with multiplicity).

The programs for A057934, there is no canonical definition to state claims against.
-/

/-! ## A057934.P13480798962880825134

`A046053(2*(n+1))-A046053(n+1)`
-/

namespace A057934.P13480798962880825134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046053 (2 * (n + 1)) - A046053 (n + 1)

end

end A057934.P13480798962880825134

/-! ## A057934.P17943078965833137230

`A057951(2*(n+1))-A057951(n+1)`
-/

namespace A057934.P17943078965833137230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057951 (2 * (n + 1)) - A057951 (n + 1)

end

end A057934.P17943078965833137230

/-! ## A057934.P5126211560993110995

`A057951(n+2+n)-(A046053(n+1)+2)`
-/

namespace A057934.P5126211560993110995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057951 (n + 2 + n) - (A046053 (n + 1) + 2)

end

end A057934.P5126211560993110995

/-! ## A057934.P10679283385988456386

`A046053(2*n+2)+A001489(A046053(n+1))`
-/

namespace A057934.P10679283385988456386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046053 (2 * n + 2) + A001489 (A046053 (n + 1)).toNat

end

end A057934.P10679283385988456386

/-! ## A057934.P1914075050294996566

`A057951(2*n+2)+A001489(A057951(n+1))`
-/

namespace A057934.P1914075050294996566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057951 (2 * n + 2) + A001489 (A057951 (n + 1)).toNat

end

end A057934.P1914075050294996566

/-! ## A057934.P3971996690900897387

`A004257(A344897(n+1))`
-/

namespace A057934.P3971996690900897387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004257 (A344897 (n + 1)).toNat

end

end A057934.P3971996690900897387

/-! ## A057934.P6988158043657646776

`A070939(A344897(n+1)-1)`
-/

namespace A057934.P6988158043657646776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A344897 (n + 1) - 1).toNat

end

end A057934.P6988158043657646776

/-!
# A057935: Number of prime factors of 9^n + 1 (counted with multiplicity).

The programs for A057935, there is no canonical definition to state claims against.
-/

/-! ## A057935.P9690342251828909179

`A057941(2*(n+1))`
-/

namespace A057935.P9690342251828909179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057941 (2 * (n + 1))

end

end A057935.P9690342251828909179

/-! ## A057935.P5503858642731668810

`A044923(A057941(n+2+n))`
-/

namespace A057935.P5503858642731668810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044923 (A057941 (n + 2 + n)).toNat

end

end A057935.P5503858642731668810

/-! ## A057935.P12385972090944701825

`A057941(n+2+n)%A017222(n)`
-/

namespace A057935.P12385972090944701825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A057941 (n + 2 + n)) (A017222 n)

end

end A057935.P12385972090944701825

/-! ## A057935.P16732101303788389981

`A057941(n+2+n)+char[A017224(n)]`
-/

namespace A057935.P16732101303788389981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017224 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057941 (n + 2 + n) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A057935.P16732101303788389981

/-! ## A057935.P13410096999715823634

`A057941(n+2+n)+char[A017236(n)]`
-/

namespace A057935.P13410096999715823634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017236 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057941 (n + 2 + n) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A057935.P13410096999715823634

/-! ## A057935.P12258238795029714216

`A057941(n+2+n)+char[A017238(n)]`
-/

namespace A057935.P12258238795029714216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017238 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057941 (n + 2 + n) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A057935.P12258238795029714216

/-! ## A057935.P10738519708816357299

`lcm(A008683(A007918(n)), A057941(n+2+n))`
-/

namespace A057935.P10738519708816357299
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008683 (A007918 n).toNat) (A057941 (n + 2 + n))

end

end A057935.P10738519708816357299

/-! ## A057935.P16524126036905002189

`A057941(n+2+n)/A001221(A008578(n+2))`
-/

namespace A057935.P16524126036905002189
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057941 (n + 2 + n) : ℚ) / (A001221 (A008578 (n + 2)).toNat : ℚ)

end

end A057935.P16524126036905002189

/-! ## A057935.P11223199971369772459

`A057952(2*(n+1))-A057952(n+1)`
-/

namespace A057935.P11223199971369772459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057952 (2 * (n + 1)) - A057952 (n + 1)

end

end A057935.P11223199971369772459

/-! ## A057935.P2421590698539936562

`A057958(4*(n+1))-A057958(2*(n+1))`
-/

namespace A057935.P2421590698539936562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057958 (4 * (n + 1)) - A057958 (2 * (n + 1))

end

end A057935.P2421590698539936562

/-!
# A057936: Number of prime factors of 8^n + 1 (counted with multiplicity).

The programs for A057936, there is no canonical definition to state claims against.
-/

/-! ## A057936.P3593453616802084817

`A054992(3*(n+1))`
-/

namespace A057936.P3593453616802084817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054992 (3 * (n + 1))

end

end A057936.P3593453616802084817

/-! ## A057936.P7048578999893457190

`gcd(A000038(n), A054992(A008585(n+1)))`
-/

namespace A057936.P7048578999893457190
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A054992 (A008585 (n + 1)).toNat)

end

end A057936.P7048578999893457190

/-! ## A057936.P9592803155736590745

`∑{d}[A054992(A008585(n+1)), A000010(#)]`
-/

namespace A057936.P9592803155736590745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054992 (A008585 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A057936.P9592803155736590745

/-! ## A057936.P16001988826688534423

`lcm(A033999(n+1), A054992(A008585(n+1)))`
-/

namespace A057936.P16001988826688534423
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 (n + 1)) (A054992 (A008585 (n + 1)).toNat)

end

end A057936.P16001988826688534423

/-! ## A057936.P9089978786694480868

`A054992(A008585(n+1))+and(1, A008594(n))`
-/

namespace A057936.P9089978786694480868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054992 (A008585 (n + 1)).toNat + Int.land 1 (A008594 n)

end

end A057936.P9089978786694480868

/-! ## A057936.P12130069733143710246

`A054992(A008585(n+1))/A000005(gcd(n, n+1))`
-/

namespace A057936.P12130069733143710246
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054992 (A008585 (n + 1)).toNat : ℚ) / (A000005 (Nat.gcd n (n + 1)) : ℚ)

end

end A057936.P12130069733143710246

/-! ## A057936.P14929585377406115935

`A054992(A008585(n+1))^A001222(A165667(n+1))`
-/

namespace A057936.P14929585377406115935
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054992 (A008585 (n + 1)).toNat : ℚ) ^ (A001222 (A165667 (n + 1)).toNat : ℤ)

end

end A057936.P14929585377406115935

/-! ## A057936.P7058350343034474315

`A057953(2*(n+1))-A057953(n+1)`
-/

namespace A057936.P7058350343034474315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057953 (2 * (n + 1)) - A057953 (n + 1)

end

end A057936.P7058350343034474315

/-! ## A057936.P16814898492391938532

`A332219(A332217(n+2))+A054992(A008585(n+1))`
-/

namespace A057936.P16814898492391938532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332219 (A332217 (n + 2)).toNat + A054992 (A008585 (n + 1)).toNat

end

end A057936.P16814898492391938532

/-! ## A057936.P4995954302893214448

`A342655(A073582(3*(n+1)))`
-/

namespace A057936.P4995954302893214448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342655 (A073582 (3 * (n + 1))).toNat

end

end A057936.P4995954302893214448

/-! ## A057936.P16211684756809393927

`A342655(A100484(3*(n+1)))`
-/

namespace A057936.P16211684756809393927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342655 (A100484 (3 * (n + 1))).toNat

end

end A057936.P16211684756809393927

/-!
# A057937: Number of prime factors of 7^n + 1 (counted with multiplicity).

The programs for A057937, there is no canonical definition to state claims against.
-/

/-! ## A057937.P16522808619290424918

`A057954(2*(n+1))-A057954(n+1)`
-/

namespace A057937.P16522808619290424918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057954 (2 * (n + 1)) - A057954 (n + 1)

end

end A057937.P16522808619290424918

/-!
# A057938: Number of prime factors of 6^n + 1 (counted with multiplicity).

The programs for A057938, there is no canonical definition to state claims against.
-/

/-! ## A057938.P17229740140755577519

`A057955(2*(n+1))-A057955(n+1)`
-/

namespace A057938.P17229740140755577519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057955 (2 * (n + 1)) - A057955 (n + 1)

end

end A057938.P17229740140755577519

/-! ## A057938.P545625577326425718

`A028310(A057955(A103517(n))-A057955(n+1))`
-/

namespace A057938.P545625577326425718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A057955 (A103517 n).toNat - A057955 (n + 1)).toNat

end

end A057938.P545625577326425718

/-! ## A057938.P13235445933979010426

`A023416(7*A366628(n+1))`
-/

namespace A057938.P13235445933979010426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (7 * A366628 (n + 1)).toNat

end

end A057938.P13235445933979010426

/-! ## A057938.P16352503947375641234

`A276085(A366628(n+1))`
-/

namespace A057938.P16352503947375641234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276085 (A366628 (n + 1)).toNat

end

end A057938.P16352503947375641234

/-!
# A057939: Number of prime factors of 5^n + 1 (counted with multiplicity).

The programs for A057939, there is no canonical definition to state claims against.
-/

/-! ## A057939.P15302545288208151989

`A057956(2*(n+1))-A057956(n+1)`
-/

namespace A057939.P15302545288208151989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057956 (2 * (n + 1)) - A057956 (n + 1)

end

end A057939.P15302545288208151989

/-! ## A057939.P5134847191193946748

`A057956(2*n+2)+A001489(A057956(n+1))`
-/

namespace A057939.P5134847191193946748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057956 (2 * n + 2) + A001489 (A057956 (n + 1)).toNat

end

end A057939.P5134847191193946748

/-! ## A057939.P2112734753564098480

`∑{e}[A288415(n)+n+1, #]+1`
-/

namespace A057939.P2112734753564098480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288415 n + (n + 1 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p + 1

end

end A057939.P2112734753564098480

/-! ## A057939.P796302618237462255

`A073093(∑{d}[n+1, 2^(#-1)]*A077610(n+5))`
-/

namespace A057939.P796302618237462255
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073093 (SequenceMachineLib.roundAway ((∑ d ∈ Nat.divisors (f1 n), (2 : ℚ) ^ ((d : ℤ) - 1 : ℤ)) * (A077610 (n + 5) : ℚ))).toNat

end

end A057939.P796302618237462255

/-! ## A057939.P14590203206249175563

`A072084(n+1)+A000002(A001934(n))`
-/

namespace A057939.P14590203206249175563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072084 (n + 1) + A000002 (A001934 n).toNat

end

end A057939.P14590203206249175563

/-!
# A057940: Number of prime factors of 4^n + 1 (counted with multiplicity).

The programs for A057940, there is no canonical definition to state claims against.
-/

/-! ## A057940.P11439325196055229877

`A054992(2*(n+1))`
-/

namespace A057940.P11439325196055229877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054992 (2 * (n + 1))

end

end A057940.P11439325196055229877

/-! ## A057940.P9061970814105806350

`A057957(2*(n+1))-A057957(n+1)`
-/

namespace A057940.P9061970814105806350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057957 (2 * (n + 1)) - A057957 (n + 1)

end

end A057940.P9061970814105806350

/-! ## A057940.P565803685989686048

`A342655(A073582(2*(n+1)))`
-/

namespace A057940.P565803685989686048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342655 (A073582 (2 * (n + 1))).toNat

end

end A057940.P565803685989686048

/-! ## A057940.P757093130079088076

`A342655(A100484(2*(n+1)))`
-/

namespace A057940.P757093130079088076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342655 (A100484 (2 * (n + 1))).toNat

end

end A057940.P757093130079088076

/-! ## A057940.P8954717862338092142

`A277892(A001747(2*(n+2)))`
-/

namespace A057940.P8954717862338092142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277892 (A001747 (2 * (n + 2))).toNat

end

end A057940.P8954717862338092142

/-! ## A057940.P11078418515186051603

`A342655(2*A000040(2*(n+1)))`
-/

namespace A057940.P11078418515186051603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342655 (2 * A000040 (2 * (n + 1))).toNat

end

end A057940.P11078418515186051603

/-! ## A057940.P12724935950386534615

`A342656(2*A000040(2*(n+1)))`
-/

namespace A057940.P12724935950386534615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342656 (2 * A000040 (2 * (n + 1))).toNat

end

end A057940.P12724935950386534615

/-! ## A057940.P2148155118516761543

`A277892(2*A065091(2*(n+1)))`
-/

namespace A057940.P2148155118516761543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277892 (2 * A065091 (2 * (n + 1))).toNat

end

end A057940.P2148155118516761543

/-! ## A057940.P7009611260736090095

`A046051(4*(n+1))-A046051(2*(n+1))`
-/

namespace A057940.P7009611260736090095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046051 (4 * (n + 1)) - A046051 (2 * (n + 1))

end

end A057940.P7009611260736090095

/-! ## A057940.P17195909388145883838

`A086257(A086258(A054992(n+2+n)))`
-/

namespace A057940.P17195909388145883838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086257 (A086258 (A054992 (n + 2 + n)).toNat).toNat

end

end A057940.P17195909388145883838

/-!
# A057941: Number of prime factors of 3^n + 1 (counted with multiplicity).

The programs for A057941, there is no canonical definition to state claims against.
-/

/-! ## A057941.P4971984150753092331

`A057952(n+1)-A057958(n+1)`
-/

namespace A057941.P4971984150753092331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057952 (n + 1) - A057958 (n + 1)

end

end A057941.P4971984150753092331

/-! ## A057941.P14937629830724715534

`A057952(n+1)-∑{d}[n+1, A085028(#)]`
-/

namespace A057941.P14937629830724715534
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057952 (n + 1) - ∑ d ∈ Nat.divisors (f1 n), A085028 d

end

end A057941.P14937629830724715534

/-! ## A057941.P14860009674669716323

`A057958(2*(n+1))-A057958(n+1)`
-/

namespace A057941.P14860009674669716323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057958 (2 * (n + 1)) - A057958 (n + 1)

end

end A057941.P14860009674669716323

/-! ## A057941.P7233975938088976452

`∑{e}[A000040(n+1), A057958(n+1+n+#)]-A057958(n+1)`
-/

namespace A057941.P7233975938088976452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A057958 (n + 1 + n + Nat.factorization (f1 n).natAbs p) - A057958 (n + 1)

end

end A057941.P7233975938088976452

/-! ## A057941.P311275416647420464

`A057958(n+2+n)/A008683(A006881(n+1))-A057958(n+1)`
-/

namespace A057941.P311275416647420464
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057958 (n + 2 + n) : ℚ) / (A008683 (A006881 (n + 1)).toNat : ℚ) - (A057958 (n + 1) : ℚ)

end

end A057941.P311275416647420464

/-!
# A057942: Pseudoprimes k to base 2 such that k-2 and k+2 are primes.

The programs for A057942, there is no canonical definition to state claims against.
-/

/-! ## A057942.P2956621640666316266

`∩[A137198(n+1), A265684(n+1)]`
-/

namespace A057942.P2956621640666316266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137198 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265684 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A057942.P2956621640666316266

/-! ## A057942.P5021678649335598015

`∩[A230808(n+1)+2, A265684(n+1)]`
-/

namespace A057942.P5021678649335598015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230808 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265684 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A057942.P5021678649335598015

/-! ## A057942.P15777403038180914463

`∩[A100873(n+1), A137198(n+1)]`
-/

namespace A057942.P15777403038180914463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100873 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137198 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A057942.P15777403038180914463

/-! ## A057942.P16792233204433184329

`∩[A100873(n+1), A265684(n+1)]`
-/

namespace A057942.P16792233204433184329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100873 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265684 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A057942.P16792233204433184329

/-! ## A057942.P7560068528506851883

`∩[A224695(n+1), A265684(n+1)]`
-/

namespace A057942.P7560068528506851883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224695 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265684 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A057942.P7560068528506851883

/-!
# A057944: Largest triangular number less than or equal to n; write m-th triangular number m+1 times.

The programs for A057944, the canonical program `A057944.P16851463738746886639` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057944 has offset 0).

The definition of A057944 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A057944.P14358460831414102463

`floor((sqrt(1+8*n)-1)/2)*floor((sqrt(1+8*n)+1)/2)/2`
-/

namespace A057944.P14358460831414102463
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌊(Real.sqrt (1 + 8 * n : ℝ) - 1) / 2⌋ * ⌊(Real.sqrt (1 + 8 * n : ℝ) + 1) / 2⌋ : ℚ) / 2

end

end A057944.P14358460831414102463

namespace A057944

/-- `floor((sqrt(1+8*n)-1)/2)*floor((sqrt(1+8*n)+1)/2)/2` -/
def P14358460831414102463.Spec : Prop :=
  ∀ n, P14358460831414102463.a n = (A057944 n : ℚ)

end A057944

/-! ## A057944.P13512004256516387939

`n-A002262(n)`
-/

namespace A057944.P13512004256516387939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A002262 n

end

end A057944.P13512004256516387939

namespace A057944

/-- `n-A002262(n)` -/
def P13512004256516387939.Spec : Prop :=
  ∀ n, P13512004256516387939.a n = A057944 n

end A057944

/-! ## A057944.P16851463738746886639

`A000217(A003056(n))`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A057944

/-- `A000217(A003056(n))` -/
def P16851463738746886639.Spec : Prop :=
  ∀ n, P16851463738746886639.a n = A057944 n

theorem P16851463738746886639.correct : P16851463738746886639.Spec := by
  intro n
  simp only [A057944]

end A057944

/-! ## A057944.P186308435992809211

`C(∑[char[∑[n]]], 2)`
-/

namespace A057944.P186308435992809211
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2

end

end A057944.P186308435992809211

namespace A057944

/-- `C(∑[char[∑[n]]], 2)` -/
def P186308435992809211.Spec : Prop :=
  ∀ n, (P186308435992809211.a n : ℤ) = A057944 n

end A057944

/-! ## A057944.P16866455913792645826

`comp[C(comp[∑[n]]-n, 2)+n]-n`
-/

namespace A057944.P16866455913792645826
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 + n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)

end

end A057944.P16866455913792645826

namespace A057944

/-- `comp[C(comp[∑[n]]-n, 2)+n]-n` -/
def P16866455913792645826.Spec : Prop :=
  ∀ n, P16866455913792645826.a n = A057944 n

end A057944

/-! ## A057944.P9053836421394870915

`eq[0, ceil(2*sqrt(n+1))%2]-n`
-/

namespace A057944.P9053836421394870915
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌈2 * Real.sqrt (n + 1 : ℝ)⌉ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - (n : ℤ)

end

end A057944.P9053836421394870915

namespace A057944

/-- `eq[0, ceil(2*sqrt(n+1))%2]-n` -/
def P9053836421394870915.Spec : Prop :=
  ∀ n, P9053836421394870915.a n = A057944 n

end A057944

/-! ## A057944.P4888889048321702697

`lt[(ceil(sqrt(n))²-n)², n]-(n+1)`
-/

namespace A057944.P4888889048321702697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (⌈Real.sqrt (n : ℝ)⌉ ^ 2 - (n : ℤ)) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n : ℤ) - (n + 1 : ℤ)

end

end A057944.P4888889048321702697

namespace A057944

/-- `lt[(ceil(sqrt(n))²-n)², n]-(n+1)` -/
def P4888889048321702697.Spec : Prop :=
  ∀ n, P4888889048321702697.a n = A057944 n

end A057944

/-! ## A057944.P10760263370549490398

`lt[(ceil(sqrt(n))²-n)², n]-1-n`
-/

namespace A057944.P10760263370549490398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (⌈Real.sqrt (n : ℝ)⌉ ^ 2 - (n : ℤ)) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n : ℤ) - 1 - (n : ℤ)

end

end A057944.P10760263370549490398

namespace A057944

/-- `lt[(ceil(sqrt(n))²-n)², n]-1-n` -/
def P10760263370549490398.Spec : Prop :=
  ∀ n, P10760263370549490398.a n = A057944 n

end A057944

/-! ## A057944.P3513167356347636370

`A061885(n)-n`
-/

namespace A057944.P3513167356347636370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061885 n - (n : ℤ)

end

end A057944.P3513167356347636370

namespace A057944

/-- `A061885(n)-n` -/
def P3513167356347636370.Spec : Prop :=
  ∀ n, P3513167356347636370.a n = A057944 n

end A057944

/-! ## A057944.P13476153354986668228

`∑[val(A099627(n), 2)]`
-/

namespace A057944.P13476153354986668228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A099627 n).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057944.P13476153354986668228

namespace A057944

/-- `∑[val(A099627(n), 2)]` -/
def P13476153354986668228.Spec : Prop :=
  ∀ n, (P13476153354986668228.a n : ℤ) = A057944 n

end A057944

/-! ## A057944.P5202604531188516274

`n-sqrt(A143844(n))`
-/

namespace A057944.P5202604531188516274
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) - Real.sqrt (A143844 n : ℝ)

end

end A057944.P5202604531188516274

namespace A057944

/-- `n-sqrt(A143844(n))` -/
def P5202604531188516274.Spec : Prop :=
  ∀ n, P5202604531188516274.a n = (A057944 n : ℝ)

end A057944

/-! ## A057944.P15912133965817745886

`n-log2(A059268(n))`
-/

namespace A057944.P15912133965817745886
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) - Real.logb 2 (A059268 n : ℝ)

end

end A057944.P15912133965817745886

namespace A057944

/-- `n-log2(A059268(n))` -/
def P15912133965817745886.Spec : Prop :=
  ∀ n, P15912133965817745886.a n = (A057944 n : ℝ)

end A057944

/-! ## A057944.P5833188418649663680

`n-val(A130328(n), 2)`
-/

namespace A057944.P5833188418649663680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (SequenceMachineLib.valuation (A130328 n).toNat 2 : ℤ)

end

end A057944.P5833188418649663680

namespace A057944

/-- `n-val(A130328(n), 2)` -/
def P5833188418649663680.Spec : Prop :=
  ∀ n, P5833188418649663680.a n = A057944 n

end A057944

/-! ## A057944.P4878559177845275565

`n-val(A175840(n), 2)`
-/

namespace A057944.P4878559177845275565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (SequenceMachineLib.valuation (A175840 n).toNat 2 : ℤ)

end

end A057944.P4878559177845275565

namespace A057944

/-- `n-val(A175840(n), 2)` -/
def P4878559177845275565.Spec : Prop :=
  ∀ n, P4878559177845275565.a n = A057944 n

end A057944

/-! ## A057944.P7556282497780519777

`n-val(A247936(n), 2)`
-/

namespace A057944.P7556282497780519777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (SequenceMachineLib.valuation (A247936 n).toNat 2 : ℤ)

end

end A057944.P7556282497780519777

namespace A057944

/-- `n-val(A247936(n), 2)` -/
def P7556282497780519777.Spec : Prop :=
  ∀ n, P7556282497780519777.a n = A057944 n

end A057944

/-! ## A057944.P1225020048887232829

`∑[A127648(abs(1-n))]`
-/

namespace A057944.P1225020048887232829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127648 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057944.P1225020048887232829

namespace A057944

/-- `∑[A127648(abs(1-n))]` -/
def P1225020048887232829.Spec : Prop :=
  ∀ n, P1225020048887232829.a n = A057944 n

end A057944

/-! ## A057944.P4441842749787168632

`∑[A130296(n+1)-1]`
-/

namespace A057944.P4441842749787168632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130296 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057944.P4441842749787168632

namespace A057944

/-- `∑[A130296(n+1)-1]` -/
def P4441842749787168632.Spec : Prop :=
  ∀ n, P4441842749787168632.a n = A057944 n

end A057944

/-! ## A057944.P14101021415067085084

`comp[A064801(n+1)]-n`
-/

namespace A057944.P14101021415067085084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064801 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A057944.P14101021415067085084

namespace A057944

/-- `comp[A064801(n+1)]-n` -/
def P14101021415067085084.Spec : Prop :=
  ∀ n, P14101021415067085084.a n = A057944 n

end A057944

/-! ## A057944.P4131390274384815964

`A000217(∑[char[∑[n+1]]])`
-/

namespace A057944.P4131390274384815964
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A057944.P4131390274384815964

namespace A057944

/-- `A000217(∑[char[∑[n+1]]])` -/
def P4131390274384815964.Spec : Prop :=
  ∀ n, P4131390274384815964.a n = A057944 n

end A057944

/-! ## A057944.P2351718456426761317

`1-A002260(n+1)+n`
-/

namespace A057944.P2351718456426761317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A002260 (n + 1) + (n : ℤ)

end

end A057944.P2351718456426761317

namespace A057944

/-- `1-A002260(n+1)+n` -/
def P2351718456426761317.Spec : Prop :=
  ∀ n, P2351718456426761317.a n = A057944 n

end A057944

/-!
# A057945: Number of triangular numbers needed to represent n with greedy algorithm.

The programs for A057945, the canonical program `A057945.P8114443607598857798` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057945 has offset 0).

The definition of A057945 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A057945.P8114443607598857798

`a(A002262(n))+1` with `a(0)=0`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A057945

/-- `a(A002262(n))+1` -/
def P8114443607598857798.Spec : Prop :=
  ∀ n, (P8114443607598857798.a n : ℤ) = A057945 n

theorem P8114443607598857798.correct : P8114443607598857798.Spec := by
  intro n
  simp only [A057945]

end A057945

/-! ## A057945.P12839345377273847950

`a(n-C(round(sqrt(2*n+1)), 2))+1` with `a(0)=0`
-/

namespace A057945.P12839345377273847950
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - Nat.choose (SequenceMachineLib.roundAway (Real.sqrt (2 * n + 1 : ℝ))).toNat 2) + 1

end

end A057945.P12839345377273847950

namespace A057945

/-- `a(n-C(round(sqrt(2*n+1)), 2))+1` -/
def P12839345377273847950.Spec : Prop :=
  ∀ n, (P12839345377273847950.a n : ℤ) = A057945 n

end A057945

/-! ## A057945.P13015636258623120531

`a(A048151(n))+1` with `a(0)=0`
-/

namespace A057945.P13015636258623120531
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (A048151 n).toNat + 1

end

end A057945.P13015636258623120531

namespace A057945

/-- `a(A048151(n))+1` -/
def P13015636258623120531.Spec : Prop :=
  ∀ n, (P13015636258623120531.a n : ℤ) = A057945 n

end A057945

/-! ## A057945.P504532275644771490

`a(n-A057944(n))+1` with `a(0)=0`
-/

namespace A057945.P504532275644771490
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a ((n : ℤ) - A057944 n).toNat + 1

end

end A057945.P504532275644771490

namespace A057945

/-- `a(n-A057944(n))+1` -/
def P504532275644771490.Spec : Prop :=
  ∀ n, (P504532275644771490.a n : ℤ) = A057945 n

end A057945

/-! ## A057945.P17382791055173556782

`a(A002260(n+1)-1)+1` with `a(0)=0`
-/

namespace A057945.P17382791055173556782
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (A002260 (n + 1) - 1).toNat + 1

end

end A057945.P17382791055173556782

namespace A057945

/-- `a(A002260(n+1)-1)+1` -/
def P17382791055173556782.Spec : Prop :=
  ∀ n, (P17382791055173556782.a n : ℤ) = A057945 n

end A057945

/-! ## A057945.P6677327322262885684

`A087465(a(A002262(n)))` with `a(0)=0`
-/

namespace A057945.P6677327322262885684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A087465 (a (A002262 n).toNat).toNat

end

end A057945.P6677327322262885684

namespace A057945

/-- `A087465(a(A002262(n)))` -/
def P6677327322262885684.Spec : Prop :=
  ∀ n, P6677327322262885684.a n = A057945 n

end A057945

/-! ## A057945.P6034046004624771762

`A247714(a(A002262(n)))` with `a(0)=0`
-/

namespace A057945.P6034046004624771762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A247714 (a (A002262 n).toNat).toNat

end

end A057945.P6034046004624771762

namespace A057945

/-- `A247714(a(A002262(n)))` -/
def P6034046004624771762.Spec : Prop :=
  ∀ n, P6034046004624771762.a n = A057945 n

end A057945

/-! ## A057945.P144055070076167272

`A002262(or(16, a(A002262(n))))` with `a(0)=0`
-/

namespace A057945.P144055070076167272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A002262 (Int.lor 16 (a (A002262 n).toNat)).toNat

end

end A057945.P144055070076167272

namespace A057945

/-- `A002262(or(16, a(A002262(n))))` -/
def P144055070076167272.Spec : Prop :=
  ∀ n, P144055070076167272.a n = A057945 n

end A057945

/-! ## A057945.P10835764887593759144

`a(A003056(n)-(A004736(n+1)-1))+1` with `a(0)=0`
-/

namespace A057945.P10835764887593759144
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (A003056 n - (A004736 (n + 1) - 1)).toNat + 1

end

end A057945.P10835764887593759144

namespace A057945

/-- `a(A003056(n)-(A004736(n+1)-1))+1` -/
def P10835764887593759144.Spec : Prop :=
  ∀ n, (P10835764887593759144.a n : ℤ) = A057945 n

end A057945

/-! ## A057945.P17248746201239305071

`a(A057555(2*n+1)-1)+1` with `a(0)=0`
-/

namespace A057945.P17248746201239305071
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (A057555 (2 * n + 1) - 1).toNat + 1

end

end A057945.P17248746201239305071

namespace A057945

/-- `a(A057555(2*n+1)-1)+1` -/
def P17248746201239305071.Spec : Prop :=
  ∀ n, (P17248746201239305071.a n : ℤ) = A057945 n

end A057945

/-!
# A057947: n has ambiguous representations in "bad hexadecimal": numbers with the digit 1 followed by a digit less than 6.

The programs for A057947, there is no canonical definition to state claims against.
-/

/-! ## A057947.P5912590767133261985

`A098760(lt[n+3, A098760(n)])`
-/

namespace A057947.P5912590767133261985
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098760 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098760 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A057947.P5912590767133261985

/-! ## A057947.P13394309342260443817

`∩[A225683(2*(n+1))-n, A225683(n+2)]`
-/

namespace A057947.P13394309342260443817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225683 (2 * (n + 1)) - (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225683 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A057947.P13394309342260443817

/-! ## A057947.P12564144100063603503

`∩[A133506(n+1), A055645(n)]`
-/

namespace A057947.P12564144100063603503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133506 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055645 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A057947.P12564144100063603503

/-! ## A057947.P11296403269829603642

`∩[A225683(n+2), A055645(n)]`
-/

namespace A057947.P11296403269829603642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225683 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055645 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A057947.P11296403269829603642

/-! ## A057947.P3320190996961152362

`∩[A055645(n+1), record[A098760(n)]]`
-/

namespace A057947.P3320190996961152362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055645 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098760 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A057947.P3320190996961152362

/-!
# A057948: S-primes: let S = {1,5,9, ... 4i+1, ...}; then an S-prime is in S but is not divisible by any members of S except itself and 1.

The programs for A057948, the canonical program `A057948.P3389524961642337781` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057948 has offset 1).

The definition of A057948 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A057948.P3389524961642337781

`2*A327260(n+2)-1`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A057948

/-- `2*A327260(n+2)-1` -/
def P3389524961642337781.Spec : Prop :=
  ∀ n, P3389524961642337781.a n = A057948 (n + 1)

theorem P3389524961642337781.correct : P3389524961642337781.Spec := by
  intro n
  simp only [A057948, Nat.add_sub_cancel]

end A057948

/-! ## A057948.P12351906056048375739

`filter[A291180(n+1), A101040(#)]`
-/

namespace A057948.P12351906056048375739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291180 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101040 (f1 j).toNat = 1) n)

end

end A057948.P12351906056048375739

namespace A057948

/-- `filter[A291180(n+1), A101040(#)]` -/
def P12351906056048375739.Spec : Prop :=
  ∀ n, P12351906056048375739.a n = A057948 (n + 1)

end A057948

/-! ## A057948.P13657602097912431846

`filter[A291180(n+1), A340369(#)]`
-/

namespace A057948.P13657602097912431846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291180 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340369 (f1 j).toNat = 1) n)

end

end A057948.P13657602097912431846

namespace A057948

/-- `filter[A291180(n+1), A340369(#)]` -/
def P13657602097912431846.Spec : Prop :=
  ∀ n, P13657602097912431846.a n = A057948 (n + 1)

end A057948

/-! ## A057948.P14623207461114868816

`filter[A291180(n+1), A353799(#)]`
-/

namespace A057948.P14623207461114868816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291180 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353799 (f1 j).toNat = 1) n)

end

end A057948.P14623207461114868816

namespace A057948

/-- `filter[A291180(n+1), A353799(#)]` -/
def P14623207461114868816.Spec : Prop :=
  ∀ n, P14623207461114868816.a n = A057948 (n + 1)

end A057948

/-! ## A057948.P7454859949697210768

`∩[A037143(n+1), A291180(n+1)]`
-/

namespace A057948.P7454859949697210768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037143 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291180 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A057948.P7454859949697210768

namespace A057948

/-- `∩[A037143(n+1), A291180(n+1)]` -/
def P7454859949697210768.Spec : Prop :=
  ∀ n, (P7454859949697210768.a n : ℤ) = A057948 (n + 1)

end A057948

/-! ## A057948.P12943377668518858875

`∩[A007964(n+1), A291180(n+1)]`
-/

namespace A057948.P12943377668518858875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007964 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291180 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A057948.P12943377668518858875

namespace A057948

/-- `∩[A007964(n+1), A291180(n+1)]` -/
def P12943377668518858875.Spec : Prop :=
  ∀ n, (P12943377668518858875.a n : ℤ) = A057948 (n + 1)

end A057948

/-! ## A057948.P5377733043801969217

`lt[A326049(n+1)², n]+1`
-/

namespace A057948.P5377733043801969217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326049 (n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A057948.P5377733043801969217

namespace A057948

/-- `lt[A326049(n+1)², n]+1` -/
def P5377733043801969217.Spec : Prop :=
  ∀ n, (P5377733043801969217.a n : ℤ) = A057948 (n + 1)

end A057948

/-! ## A057948.P17895160340147898190

`A004273(A327260(n+2))`
-/

namespace A057948.P17895160340147898190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A327260 (n + 2)).toNat

end

end A057948.P17895160340147898190

namespace A057948

/-- `A004273(A327260(n+2))` -/
def P17895160340147898190.Spec : Prop :=
  ∀ n, P17895160340147898190.a n = A057948 (n + 1)

end A057948

/-! ## A057948.P14128831672516216745

`∩[A037144(n+1), A291180(n+1)]`
-/

namespace A057948.P14128831672516216745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291180 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A057948.P14128831672516216745

namespace A057948

/-- `∩[A037144(n+1), A291180(n+1)]` -/
def P14128831672516216745.Spec : Prop :=
  ∀ n, (P14128831672516216745.a n : ℤ) = A057948 (n + 1)

end A057948

/-! ## A057948.P9895435293115625203

`eq[n+2, A050449(n+1)]+1`
-/

namespace A057948.P9895435293115625203
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050449 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A057948.P9895435293115625203

namespace A057948

/-- `eq[n+2, A050449(n+1)]+1` -/
def P9895435293115625203.Spec : Prop :=
  ∀ n, (P9895435293115625203.a n : ℤ) = A057948 (n + 1)

end A057948

/-! ## A057948.P10125052234764820825

`eq[n+2, A050460(n+1)]+1`
-/

namespace A057948.P10125052234764820825
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050460 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A057948.P10125052234764820825

namespace A057948

/-- `eq[n+2, A050460(n+1)]+1` -/
def P10125052234764820825.Spec : Prop :=
  ∀ n, (P10125052234764820825.a n : ℤ) = A057948 (n + 1)

end A057948

/-! ## A057948.P4974055184033765317

`eq[n, A326049(2*(n+1))]+1`
-/

namespace A057948.P4974055184033765317
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326049 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A057948.P4974055184033765317

namespace A057948

/-- `eq[n, A326049(2*(n+1))]+1` -/
def P4974055184033765317.Spec : Prop :=
  ∀ n, (P4974055184033765317.a n : ℤ) = A057948 (n + 1)

end A057948

/-! ## A057948.P12674719482136827175

`A109613(lt[A326049(n+1)², n])`
-/

namespace A057948.P12674719482136827175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326049 (n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A057948.P12674719482136827175

namespace A057948

/-- `A109613(lt[A326049(n+1)², n])` -/
def P12674719482136827175.Spec : Prop :=
  ∀ n, P12674719482136827175.a n = A057948 (n + 1)

end A057948

/-!
# A057949: Numbers with more than one factorization into S-primes. See A054520 and A057948 for definition.

The programs for A057949, there is no canonical definition to state claims against.
-/

/-! ## A057949.P10407930692406093217

`A154470(A057950(n+1))`
-/

namespace A057949.P10407930692406093217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154470 (A057950 (n + 1)).toNat

end

end A057949.P10407930692406093217

/-! ## A057949.P550624285327063444

`A154470(A343827(n+1))`
-/

namespace A057949.P550624285327063444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154470 (A343827 (n + 1)).toNat

end

end A057949.P550624285327063444

/-! ## A057949.P14723018071975571571

`A057950(A000005(5^n))`
-/

namespace A057949.P14723018071975571571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057950 (A000005 (5 ^ n)).toNat

end

end A057949.P14723018071975571571

/-! ## A057949.P3511387454321681973

`A057950(A093178(n!)+n)`
-/

namespace A057949.P3511387454321681973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057950 (A093178 (Nat.factorial n) + (n : ℤ)).toNat

end

end A057949.P3511387454321681973

/-!
# A057950: Numbers primitive with respect to having more than one factorization into S-primes. See related sequences for definition.

The programs for A057950, there is no canonical definition to state claims against.
-/

/-! ## A057950.P7942200424129869263

`∩[A046317(n+1), A057949(n+1)]`
-/

namespace A057950.P7942200424129869263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046317 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057949 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A057950.P7942200424129869263

/-! ## A057950.P10693807060608604562

`filter[A057949(n+1), A101637(#)]`
-/

namespace A057950.P10693807060608604562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057949 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101637 (f1 j).toNat = 1) n)

end

end A057950.P10693807060608604562

/-! ## A057950.P11628570549756026023

`A343827(C(A250246(n+1), n))`
-/

namespace A057950.P11628570549756026023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343827 (Nat.choose (A250246 (n + 1)).toNat n)

end

end A057950.P11628570549756026023

/-! ## A057950.P2031082653758844107

`A343827(n%A001215(n+1)+1)`
-/

namespace A057950.P2031082653758844107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343827 (Int.tmod (n : ℤ) (A001215 (n + 1)) + 1).toNat

end

end A057950.P2031082653758844107

/-!
# A057951: Number of prime factors of 10^n - 1 (counted with multiplicity).

The programs for A057951, there is no canonical definition to state claims against.
-/

/-! ## A057951.P12316731895196090000

`A046053(n+1)+2`
-/

namespace A057951.P12316731895196090000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046053 (n + 1) + 2

end

end A057951.P12316731895196090000

/-! ## A057951.P5058980950236525832

`∑{d}[n+1, A085035(#)]`
-/

namespace A057951.P5058980950236525832
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A085035 d

end

end A057951.P5058980950236525832

/-! ## A057951.P997052640609906533

`A326191(A063750(n+1))+2`
-/

namespace A057951.P997052640609906533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326191 (A063750 (n + 1)).toNat + 2

end

end A057951.P997052640609906533

/-! ## A057951.P12245991006289576924

`A331410(5*A063750(n+1))`
-/

namespace A057951.P12245991006289576924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331410 (5 * A063750 (n + 1)).toNat

end

end A057951.P12245991006289576924

/-! ## A057951.P868956386153025179

`A335904(5*A063750(n+1))`
-/

namespace A057951.P868956386153025179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335904 (5 * A063750 (n + 1)).toNat

end

end A057951.P868956386153025179

/-!
# A057952: Number of prime factors of 9^n - 1 (counted with multiplicity).

The programs for A057952, there is no canonical definition to state claims against.
-/

/-! ## A057952.P1718049116915575133

`A057941(n+1)+A057958(n+1)`
-/

namespace A057952.P1718049116915575133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057941 (n + 1) + A057958 (n + 1)

end

end A057952.P1718049116915575133

/-! ## A057952.P10340464857620829067

`∑{d}[n+1, A085034(#)]`
-/

namespace A057952.P10340464857620829067
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A085034 d

end

end A057952.P10340464857620829067

/-! ## A057952.P5139943330690784847

`A057958(2*(n+1))`
-/

namespace A057952.P5139943330690784847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057958 (2 * (n + 1))

end

end A057952.P5139943330690784847

/-! ## A057952.P14830442681601727991

`A057958(n+2+n)%(n+2)²`
-/

namespace A057952.P14830442681601727991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A057958 (n + 2 + n)) ((n + 2) ^ 2 : ℤ)

end

end A057952.P14830442681601727991

/-! ## A057952.P13084780183606811962

`∑{e}[A000040(n+1), A057958(n+1+n+#)]`
-/

namespace A057952.P13084780183606811962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A057958 (n + 1 + n + Nat.factorization (f1 n).natAbs p)

end

end A057952.P13084780183606811962

/-! ## A057952.P12912825927267525834

`A321797(A008437(n))+A057958(n+2+n)`
-/

namespace A057952.P12912825927267525834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321797 (A008437 n).toNat + A057958 (n + 2 + n)

end

end A057952.P12912825927267525834

/-! ## A057952.P12342456845408724485

`A321797(A183094(n+1))+A057958(n+2+n)`
-/

namespace A057952.P12342456845408724485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321797 (A183094 (n + 1)).toNat + A057958 (n + 2 + n)

end

end A057952.P12342456845408724485

/-! ## A057952.P16068661142989123540

`A057958(n+2+n)/A008683(A006881(n+1))`
-/

namespace A057952.P16068661142989123540
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057958 (n + 2 + n) : ℚ) / (A008683 (A006881 (n + 1)).toNat : ℚ)

end

end A057952.P16068661142989123540

/-! ## A057952.P17425262988899950667

`A057958(n+2+n)/A001222(A333353(n+1))`
-/

namespace A057952.P17425262988899950667
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057958 (n + 2 + n) : ℚ) / (A001222 (A333353 (n + 1)).toNat : ℚ)

end

end A057952.P17425262988899950667

/-! ## A057952.P4592899522810156021

`A185238(A319394(n))+A057958(A005408(n)+1)`
-/

namespace A057952.P4592899522810156021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185238 (A319394 n).toNat + A057958 (A005408 n + 1).toNat

end

end A057952.P4592899522810156021

/-! ## A057952.P15972572069924263269

`A063377(A103517(n+1))+A057958(A005408(n)+1)`
-/

namespace A057952.P15972572069924263269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063377 (A103517 (n + 1)).toNat + A057958 (A005408 n + 1).toNat

end

end A057952.P15972572069924263269

/-! ## A057952.P3946510932676655376

`A318652(A318650(n+1))+A057958(A005408(n)+1)`
-/

namespace A057952.P3946510932676655376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318652 (A318650 (n + 1)).toNat + A057958 (A005408 n + 1).toNat

end

end A057952.P3946510932676655376

/-!
# A057953: Number of prime factors of 8^n - 1 (counted with multiplicity).

The programs for A057953, there is no canonical definition to state claims against.
-/

/-! ## A057953.P15661035165603541200

`A046051(3*(n+1))`
-/

namespace A057953.P15661035165603541200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046051 (3 * (n + 1))

end

end A057953.P15661035165603541200

/-! ## A057953.P11616782174230992915

`∑{d}[3*(n+1), A085021(#)]`
-/

namespace A057953.P11616782174230992915
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A085021 d

end

end A057953.P11616782174230992915

/-! ## A057953.P13884880014058921598

`and(63, A046051(A008486(n+1)))`
-/

namespace A057953.P13884880014058921598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 63 (A046051 (A008486 (n + 1)).toNat)

end

end A057953.P13884880014058921598

/-! ## A057953.P6261793458779202023

`A046051(A016789(n)+1)%92`
-/

namespace A057953.P6261793458779202023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A046051 (A016789 n + 1).toNat) 92

end

end A057953.P6261793458779202023

/-! ## A057953.P16873971521221489339

`A046051(A005843(n+1)+n+1)%(n+3)`
-/

namespace A057953.P16873971521221489339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A046051 (A005843 (n + 1) + (n + 1 : ℤ)).toNat) (n + 3 : ℤ)

end

end A057953.P16873971521221489339

/-! ## A057953.P5319895304033875995

`or(A000007(n), A046051(A016789(n)+1))`
-/

namespace A057953.P5319895304033875995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A046051 (A016789 n + 1).toNat)

end

end A057953.P5319895304033875995

/-! ## A057953.P14495471512617818722

`A046051(A016789(n)+1)/A001222(A038872(n+1))`
-/

namespace A057953.P14495471512617818722
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046051 (A016789 n + 1).toNat : ℚ) / (A001222 (A038872 (n + 1)).toNat : ℚ)

end

end A057953.P14495471512617818722

/-! ## A057953.P11693591461101893100

`A046051(A016789(n)+1)/A001222(A042993(n+1))`
-/

namespace A057953.P11693591461101893100
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046051 (A016789 n + 1).toNat : ℚ) / (A001222 (A042993 (n + 1)).toNat : ℚ)

end

end A057953.P11693591461101893100

/-! ## A057953.P201307576582485480

`A057957(3*(n+1))-A057936(n+1)`
-/

namespace A057953.P201307576582485480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057957 (3 * (n + 1)) - A057936 (n + 1)

end

end A057953.P201307576582485480

/-!
# A057954: Number of prime factors of 7^n - 1 (counted with multiplicity).

The programs for A057954, there is no canonical definition to state claims against.
-/

/-! ## A057954.P7268891429856813409

`∑{d}[n+1, A085032(#)]`
-/

namespace A057954.P7268891429856813409
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A085032 d

end

end A057954.P7268891429856813409

/-!
# A057955: Number of prime factors of 6^n - 1 (counted with multiplicity).

The programs for A057955, there is no canonical definition to state claims against.
-/

/-! ## A057955.P10679491227444385753

`∑{d}[n+1, A085031(#)]`
-/

namespace A057955.P10679491227444385753
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A085031 d

end

end A057955.P10679491227444385753

/-! ## A057955.P992254864981491059

`A001414(A366621(n+1))-A366620(n+1)`
-/

namespace A057955.P992254864981491059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A366621 (n + 1)).toNat - A366620 (n + 1)

end

end A057955.P992254864981491059

/-! ## A057955.P17881815079821397628

`A056239(A366621(n+1))%A213721(2*(n+1))`
-/

namespace A057955.P17881815079821397628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056239 (A366621 (n + 1)).toNat) (A213721 (2 * (n + 1)))

end

end A057955.P17881815079821397628

/-! ## A057955.P15018172860318945550

`A070939(A059888(n+1)%A116428(n))`
-/

namespace A057955.P15018172860318945550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (Int.tmod (A059888 (n + 1)) (A116428 n)).toNat

end

end A057955.P15018172860318945550

/-! ## A057955.P4398922527875387950

`A056239(A366621(n+1))%A167495(n+1)`
-/

namespace A057955.P4398922527875387950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056239 (A366621 (n + 1)).toNat) (A167495 (n + 1))

end

end A057955.P4398922527875387950

/-!
# A057956: Number of prime factors of 5^n - 1 (counted with multiplicity).

The programs for A057956, there is no canonical definition to state claims against.
-/

/-! ## A057956.P18301118006289129000

`∑{d}[n+1, A085030(#)]`
-/

namespace A057956.P18301118006289129000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A085030 d

end

end A057956.P18301118006289129000

/-!
# A057957: Number of prime factors of 4^n - 1 (counted with multiplicity).

The programs for A057957, there is no canonical definition to state claims against.
-/

/-! ## A057957.P6080675372387094055

`A054992(n+1)+A046051(n+1)`
-/

namespace A057957.P6080675372387094055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054992 (n + 1) + A046051 (n + 1)

end

end A057957.P6080675372387094055

/-! ## A057957.P6033278797136834840

`A342656(A073582(n+1))+A046051(n+1)`
-/

namespace A057957.P6033278797136834840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342656 (A073582 (n + 1)).toNat + A046051 (n + 1)

end

end A057957.P6033278797136834840

/-! ## A057957.P12567244104339688596

`A342656(A074845(n+2))+A046051(n+1)`
-/

namespace A057957.P12567244104339688596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342656 (A074845 (n + 2)).toNat + A046051 (n + 1)

end

end A057957.P12567244104339688596

/-! ## A057957.P934619715951020570

`A342655(2*A000040(n+1))+A046051(n+1)`
-/

namespace A057957.P934619715951020570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342655 (2 * A000040 (n + 1)).toNat + A046051 (n + 1)

end

end A057957.P934619715951020570

/-! ## A057957.P6245186643594829785

`A342656(2*(A040976(n+1)+2))+A046051(n+1)`
-/

namespace A057957.P6245186643594829785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342656 (2 * (A040976 (n + 1) + 2)).toNat + A046051 (n + 1)

end

end A057957.P6245186643594829785

/-! ## A057957.P4819836497716490875

`A342656(2*A001748(n+1)/3)+A046051(n+1)`
-/

namespace A057957.P4819836497716490875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342656 (SequenceMachineLib.roundAway (2 * ((A001748 (n + 1) : ℚ) / 3))).toNat + A046051 (n + 1)

end

end A057957.P4819836497716490875

/-! ## A057957.P2044955254362379841

`A046051(2*(n+1))`
-/

namespace A057957.P2044955254362379841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046051 (2 * (n + 1))

end

end A057957.P2044955254362379841

/-! ## A057957.P14890005938862761656

`∑{d}[2*(n+1), A085021(#)]`
-/

namespace A057957.P14890005938862761656
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A085021 d

end

end A057957.P14890005938862761656

/-! ## A057957.P3823847038739866520

`A046051(Δ[A002378(n)])%60`
-/

namespace A057957.P3823847038739866520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A046051 (f1 (n + 1) - f1 n).toNat) 60

end

end A057957.P3823847038739866520

/-! ## A057957.P11209732523102533395

`A046051(A016789(n)-n)%(n+2)`
-/

namespace A057957.P11209732523102533395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A046051 (A016789 n - (n : ℤ)).toNat) (n + 2 : ℤ)

end

end A057957.P11209732523102533395

/-! ## A057957.P12132894727096542603

`or(A000007(n), A046051(A016789(n)-n))`
-/

namespace A057957.P12132894727096542603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A046051 (A016789 n - (n : ℤ)).toNat)

end

end A057957.P12132894727096542603

/-! ## A057957.P2845678094846783118

`A366770(2*(n+1))+1`
-/

namespace A057957.P2845678094846783118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366770 (2 * (n + 1)) + 1

end

end A057957.P2845678094846783118

/-!
# A057958: Number of prime factors of 3^n - 1 (counted with multiplicity).

The programs for A057958, there is no canonical definition to state claims against.
-/

/-! ## A057958.P8962150226695918218

`∑{d}[n+1, A085028(#)]`
-/

namespace A057958.P8962150226695918218
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A085028 d

end

end A057958.P8962150226695918218

/-! ## A057958.P1791749481815799879

`A057952(n+1)-A057941(n+1)`
-/

namespace A057958.P1791749481815799879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057952 (n + 1) - A057941 (n + 1)

end

end A057958.P1791749481815799879

/-! ## A057958.P1829897178424781666

`∑{d}[n+1, A085034(#)]-A057941(n+1)`
-/

namespace A057958.P1829897178424781666
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A085034 d - A057941 (n + 1)

end

end A057958.P1829897178424781666

/-! ## A057958.P13801783024082707517

`A057952(n+1)-(A279060(A056797(n+1))+A001227(n+1))`
-/

namespace A057958.P13801783024082707517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057952 (n + 1) - (A279060 (A056797 (n + 1)).toNat + A001227 (n + 1))

end

end A057958.P13801783024082707517

/-! ## A057958.P5739161094408486638

`A007949(A166644(n+1))+A000005(n+1)`
-/

namespace A057958.P5739161094408486638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (A166644 (n + 1)).toNat + A000005 (n + 1)

end

end A057958.P5739161094408486638

/-!
# A057959: Sum of composite numbers up to n is palindromic.

The programs for A057959, there is no canonical definition to state claims against.
-/

/-! ## A057959.P1326725951489885108

`A002808(A053779(n+1))`
-/

namespace A057959.P1326725951489885108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (A053779 (n + 1)).toNat

end

end A057959.P1326725951489885108

/-! ## A057959.P1888707303197216889

`A018252(A053779(n+1)+1)`
-/

namespace A057959.P1888707303197216889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (A053779 (n + 1) + 1).toNat

end

end A057959.P1888707303197216889

/-! ## A057959.P17460176296608517630

`A141468(A053779(n+1)+2)`
-/

namespace A057959.P17460176296608517630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (A053779 (n + 1) + 2).toNat

end

end A057959.P17460176296608517630

/-! ## A057959.P13891929811431020917

`A065090(A053779(n+1)+2)`
-/

namespace A057959.P13891929811431020917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065090 (A053779 (n + 1) + 2).toNat

end

end A057959.P13891929811431020917

/-!
# A057960: Number of base-5 (n+1)-digit numbers starting with a zero and with adjacent digits differing by one or less.

The programs for A057960, the canonical program `A057960.P10809419106970232820` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057960 has offset 0).

The definition of A057960 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A057960.P17425838965989185696

`floor(a(n-1)*(1+sqrt(3)))` with `a(0)=1`
-/

namespace A057960.P17425838965989185696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(a (n - 1) : ℝ) * (1 + Real.sqrt (3 : ℝ))⌋

end

end A057960.P17425838965989185696

namespace A057960

/-- `floor(a(n-1)*(1+sqrt(3)))` -/
def P17425838965989185696.Spec : Prop :=
  ∀ n, P17425838965989185696.a n = A057960 n

end A057960

/-! ## A057960.P10809419106970232820

`3*a(n-1)-2*a(n-3)` with `a(0)=1, a(1)=2, a(2)=5`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A057960

/-- `3*a(n-1)-2*a(n-3)` -/
def P10809419106970232820.Spec : Prop :=
  ∀ n, P10809419106970232820.a n = A057960 n

theorem P10809419106970232820.correct : P10809419106970232820.Spec := by
  intro n
  simp only [A057960]

end A057960

/-! ## A057960.P4407244712050262367

`ceil((1+sqrt(3))^(n+2)/12)`
-/

namespace A057960.P4407244712050262367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(1 + Real.sqrt (3 : ℝ)) ^ (n + 2) / 12⌉

end

end A057960.P4407244712050262367

namespace A057960

/-- `ceil((1+sqrt(3))^(n+2)/12)` -/
def P4407244712050262367.Spec : Prop :=
  ∀ n, P4407244712050262367.a n = A057960 n

end A057960

/-! ## A057960.P5550318648265018631

`ceil((sqrt(3)+1)*a(n-1))-1` with `a(0)=1`
-/

namespace A057960.P5550318648265018631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌈(Real.sqrt (3 : ℝ) + 1) * (a (n - 1) : ℝ)⌉ - 1

end

end A057960.P5550318648265018631

namespace A057960

/-- `ceil((sqrt(3)+1)*a(n-1))-1` -/
def P5550318648265018631.Spec : Prop :=
  ∀ n, P5550318648265018631.a n = A057960 n

end A057960

/-! ## A057960.P14676230851259725452

`∑[round((sqrt(3)+1)*a(n-1))]` with `a(0)=1, a(1)=1`
-/

namespace A057960.P14676230851259725452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  SequenceMachineLib.roundAway ((Real.sqrt (3 : ℝ) + 1) * (f1 (n - 1) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057960.P14676230851259725452

namespace A057960

/-- `∑[round((sqrt(3)+1)*a(n-1))]` -/
def P14676230851259725452.Spec : Prop :=
  ∀ n, P14676230851259725452.a n = A057960 n

end A057960

/-! ## A057960.P7751348659923037676

`2*(a(n-1)+a(n-2))-1` with `a(0)=1, a(1)=2`
-/

namespace A057960.P7751348659923037676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  2 * (a (n - 1) + a (n - 2)) - 1

end

end A057960.P7751348659923037676

namespace A057960

/-- `2*(a(n-1)+a(n-2))-1` -/
def P7751348659923037676.Spec : Prop :=
  ∀ n, P7751348659923037676.a n = A057960 n

end A057960

/-! ## A057960.P16469942643353207050

`a(n-1)-1+a(n-2)+a(n-1)+a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A057960.P16469942643353207050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) - 1 + (a (n - 2) + (a (n - 1) + a (n - 2)))

end

end A057960.P16469942643353207050

namespace A057960

/-- `a(n-1)-1+a(n-2)+a(n-1)+a(n-2)` -/
def P16469942643353207050.Spec : Prop :=
  ∀ n, P16469942643353207050.a n = A057960 n

end A057960

/-! ## A057960.P4469245651064971944

`a(n-1)-(1-a(n-1)-a(n-2)-a(n-2))` with `a(0)=1, a(1)=2`
-/

namespace A057960.P4469245651064971944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) - (1 - a (n - 1) - a (n - 2) - a (n - 2))

end

end A057960.P4469245651064971944

namespace A057960

/-- `a(n-1)-(1-a(n-1)-a(n-2)-a(n-2))` -/
def P4469245651064971944.Spec : Prop :=
  ∀ n, P4469245651064971944.a n = A057960 n

end A057960

/-! ## A057960.P8768618602631592002

`∑[A155020(n)]`
-/

namespace A057960.P8768618602631592002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155020 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057960.P8768618602631592002

namespace A057960

/-- `∑[A155020(n)]` -/
def P8768618602631592002.Spec : Prop :=
  ∀ n, P8768618602631592002.a n = A057960 n

end A057960

/-! ## A057960.P13306959481373155911

`A293005(n)+1`
-/

namespace A057960.P13306959481373155911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293005 n + 1

end

end A057960.P13306959481373155911

namespace A057960

/-- `A293005(n)+1` -/
def P13306959481373155911.Spec : Prop :=
  ∀ n, P13306959481373155911.a n = A057960 n

end A057960

/-! ## A057960.P6713857169510531494

`∑[ceil(∑[A026150(n)/2])]`
-/

namespace A057960.P6713857169510531494
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026150 n : ℚ) / 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f2 j⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057960.P6713857169510531494

namespace A057960

/-- `∑[ceil(∑[A026150(n)/2])]` -/
def P6713857169510531494.Spec : Prop :=
  ∀ n, P6713857169510531494.a n = A057960 n

end A057960

/-! ## A057960.P13907496923136040879

`∑[ceil(A002605(n+1)/2)]`
-/

namespace A057960.P13907496923136040879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A002605 (n + 1) : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057960.P13907496923136040879

namespace A057960

/-- `∑[ceil(A002605(n+1)/2)]` -/
def P13907496923136040879.Spec : Prop :=
  ∀ n, P13907496923136040879.a n = A057960 n

end A057960

/-! ## A057960.P995696073268938088

`A028859(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A057960.P995696073268938088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A028859 (n - 1) + a (n - 1)

end

end A057960.P995696073268938088

namespace A057960

/-- `A028859(n-1)+a(n-1)` -/
def P995696073268938088.Spec : Prop :=
  ∀ n, P995696073268938088.a n = A057960 n

end A057960

/-! ## A057960.P6560738835891132729

`A052948(n)+A002605(n)`
-/

namespace A057960.P6560738835891132729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052948 n + A002605 n

end

end A057960.P6560738835891132729

namespace A057960

/-- `A052948(n)+A002605(n)` -/
def P6560738835891132729.Spec : Prop :=
  ∀ n, P6560738835891132729.a n = A057960 n

end A057960

/-! ## A057960.P13327506229593872323

`A028859(n)-∑[A002605(n)]`
-/

namespace A057960.P13327506229593872323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002605 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028859 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057960.P13327506229593872323

namespace A057960

/-- `A028859(n)-∑[A002605(n)]` -/
def P13327506229593872323.Spec : Prop :=
  ∀ n, P13327506229593872323.a n = A057960 n

end A057960

/-! ## A057960.P17473197837839204014

`∑[A052945(n)-A002605(n)]`
-/

namespace A057960.P17473197837839204014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052945 n - A002605 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057960.P17473197837839204014

namespace A057960

/-- `∑[A052945(n)-A002605(n)]` -/
def P17473197837839204014.Spec : Prop :=
  ∀ n, P17473197837839204014.a n = A057960 n

end A057960

/-! ## A057960.P8949471844182488149

`A094286(n+2)-A000079(n)`
-/

namespace A057960.P8949471844182488149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094286 (n + 2) - A000079 n

end

end A057960.P8949471844182488149

namespace A057960

/-- `A094286(n+2)-A000079(n)` -/
def P8949471844182488149.Spec : Prop :=
  ∀ n, P8949471844182488149.a n = A057960 n

end A057960

/-! ## A057960.P2918688285742605320

`A002605(n)+∑[A028860(n+1)]`
-/

namespace A057960.P2918688285742605320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028860 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002605 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057960.P2918688285742605320

namespace A057960

/-- `A002605(n)+∑[A028860(n+1)]` -/
def P2918688285742605320.Spec : Prop :=
  ∀ n, P2918688285742605320.a n = A057960 n

end A057960

/-!
# A057961: Number of points in square lattice covered by a disc centered at (0,0) as its radius increases.

The programs for A057961, there is no canonical definition to state claims against.
-/

/-! ## A057961.P15364447886190951943

`∑[A105352(n+1)]`
-/

namespace A057961.P15364447886190951943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105352 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057961.P15364447886190951943

/-! ## A057961.P6866874174164036371

`∑[A004018(A001481(n+1))]`
-/

namespace A057961.P6866874174164036371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004018 (A001481 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057961.P6866874174164036371

/-! ## A057961.P815685303892573902

`∑[A004018(eq[0, A070176(n)])]`
-/

namespace A057961.P815685303892573902
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070176 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004018 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057961.P815685303892573902

/-! ## A057961.P6032297027259847999

`∑[A004018(lt[0, A000161(n)])]`
-/

namespace A057961.P6032297027259847999
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000161 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004018 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057961.P6032297027259847999

/-! ## A057961.P11859988679116260222

`∑[A004018(lt[0, A000925(n)])]`
-/

namespace A057961.P11859988679116260222
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000925 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004018 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057961.P11859988679116260222

/-! ## A057961.P7414084940603315712

`∑[A004018(eq[1, A229062(n)])]`
-/

namespace A057961.P7414084940603315712
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229062 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004018 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057961.P7414084940603315712

/-! ## A057961.P18412772596330034722

`∑[A004018(comp[A022544(n+1)])]`
-/

namespace A057961.P18412772596330034722
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022544 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004018 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057961.P18412772596330034722

/-! ## A057961.P14143772736743285670

`∑[A004018(A166687(n+1)-1)]`
-/

namespace A057961.P14143772736743285670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004018 (A166687 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057961.P14143772736743285670

/-! ## A057961.P16358009646391863030

`∑[A004018(eq[1, gcd(17, A004018(n))])]`
-/

namespace A057961.P16358009646391863030
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 17 (A004018 n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004018 (SequenceMachineLib.nth (fun j => f2 j = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057961.P16358009646391863030

/-! ## A057961.P16819514978863539144

`A057655(A001481(n+1))`
-/

namespace A057961.P16819514978863539144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057655 (A001481 (n + 1)).toNat

end

end A057961.P16819514978863539144

/-! ## A057961.P12536892430401628038

`record[A057655(n)%A057655(n+1)]`
-/

namespace A057961.P12536892430401628038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A057655 n) (A057655 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A057961.P12536892430401628038

/-! ## A057961.P12498194125977554786

`record[A057655(n-A305117(n))]`
-/

namespace A057961.P12498194125977554786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057655 ((n : ℤ) - A305117 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A057961.P12498194125977554786

/-! ## A057961.P10859898172103826236

`lt[0, char[A057655(n)]]`
-/

namespace A057961.P10859898172103826236
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057655 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A057961.P10859898172103826236

/-! ## A057961.P1844104015608454340

`∑[A004531(4*A001481(n+1))]`
-/

namespace A057961.P1844104015608454340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004531 (4 * A001481 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057961.P1844104015608454340

/-!
# A057962: Number of points (x,y) in square lattice with (x-1/2)^2+(y-1/2)^2 <= n.

The programs for A057962, the canonical program `A057962.P10638733739306461883` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057962 has offset 1).

The definition of A057962 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4834 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A057962.P10638733739306461883

`∑[A005883(A020756(n+1))]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A057962

/-- `∑[A005883(A020756(n+1))]` -/
def P10638733739306461883.Spec : Prop :=
  ∀ n, P10638733739306461883.a n = A057962 (n + 1)

theorem P10638733739306461883.correct : P10638733739306461883.Spec := by
  intro n
  simp only [A057962, Nat.add_sub_cancel]

end A057962

/-! ## A057962.P2960372025273038190

`record[4*A199015(A025480(n))]`
-/

namespace A057962.P2960372025273038190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A199015 (A025480 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A057962.P2960372025273038190

namespace A057962

/-- `record[4*A199015(A025480(n))]` -/
def P2960372025273038190.Spec : Prop :=
  ∀ n, P2960372025273038190.a n = A057962 (n + 1)

end A057962

/-! ## A057962.P3607428469939414817

`record[4*A199015(A078898(n))]`
-/

namespace A057962.P3607428469939414817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A199015 (A078898 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A057962.P3607428469939414817

namespace A057962

/-- `record[4*A199015(A078898(n))]` -/
def P3607428469939414817.Spec : Prop :=
  ∀ n, P3607428469939414817.a n = A057962 (n + 1)

end A057962

/-! ## A057962.P16900980218411397375

`record[4*A199015(A142150(n))]`
-/

namespace A057962.P16900980218411397375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A199015 (A142150 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A057962.P16900980218411397375

namespace A057962

/-- `record[4*A199015(A142150(n))]` -/
def P16900980218411397375.Spec : Prop :=
  ∀ n, P16900980218411397375.a n = A057962 (n + 1)

end A057962

/-! ## A057962.P8651180194066731460

`record[a(n-2)-A104794(n)]` with `a(0)=4, a(1)=4`
-/

namespace A057962.P8651180194066731460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4, 4] fun n f1 =>
  f1 (n - 2) - A104794 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A057962.P8651180194066731460

namespace A057962

/-- `record[a(n-2)-A104794(n)]` -/
def P8651180194066731460.Spec : Prop :=
  ∀ n, P8651180194066731460.a n = A057962 (n + 1)

end A057962

/-! ## A057962.P11927931404300840286

`record[3-(a(n-1)-A004018(2*n+1))]` with `a(0)=4`
-/

namespace A057962.P11927931404300840286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f1 =>
  3 - (f1 (n - 1) - A004018 (2 * n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A057962.P11927931404300840286

namespace A057962

/-- `record[3-(a(n-1)-A004018(2*n+1))]` -/
def P11927931404300840286.Spec : Prop :=
  ∀ n, P11927931404300840286.a n = A057962 (n + 1)

end A057962

/-! ## A057962.P14354880279702371631

`∑[A004018(A057653(n+1))]`
-/

namespace A057962.P14354880279702371631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004018 (A057653 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057962.P14354880279702371631

namespace A057962

/-- `∑[A004018(A057653(n+1))]` -/
def P14354880279702371631.Spec : Prop :=
  ∀ n, P14354880279702371631.a n = A057962 (n + 1)

end A057962

/-! ## A057962.P6253426908937840166

`record[4*A199015(A008615(n))]`
-/

namespace A057962.P6253426908937840166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A199015 (A008615 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A057962.P6253426908937840166

namespace A057962

/-- `record[4*A199015(A008615(n))]` -/
def P6253426908937840166.Spec : Prop :=
  ∀ n, P6253426908937840166.a n = A057962 (n + 1)

end A057962

/-! ## A057962.P2706674440762250585

`∑[A004018(A097269(n+1))]`
-/

namespace A057962.P2706674440762250585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004018 (A097269 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057962.P2706674440762250585

namespace A057962

/-- `∑[A004018(A097269(n+1))]` -/
def P2706674440762250585.Spec : Prop :=
  ∀ n, P2706674440762250585.a n = A057962 (n + 1)

end A057962

/-! ## A057962.P16880456535577982965

`∑[A004018(A286636(n+1)-1)]`
-/

namespace A057962.P16880456535577982965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004018 (A286636 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057962.P16880456535577982965

namespace A057962

/-- `∑[A004018(A286636(n+1)-1)]` -/
def P16880456535577982965.Spec : Prop :=
  ∀ n, P16880456535577982965.a n = A057962 (n + 1)

end A057962

/-!
# A057963: Triangle T(n,k) of number of minimal 2-covers of a labeled n-set that cover k points of that set uniquely (k=2,..,n).

The programs for A057963, the canonical program `A057963.P10501732461278672615` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057963 has offset 2).

The definition of A057963 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A057963.P10501732461278672615

`A104712(n+2)*A126646(A002262(n))`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A057963

/-- `A104712(n+2)*A126646(A002262(n))` -/
def P10501732461278672615.Spec : Prop :=
  ∀ n, P10501732461278672615.a n = A057963 (n + 2)

theorem P10501732461278672615.correct : P10501732461278672615.Spec := by
  intro n
  simp only [A057963, Nat.add_sub_cancel]

end A057963

/-! ## A057963.P3940005090038668014

`A104712(n+2)*A130330(A061579(n))`
-/

namespace A057963.P3940005090038668014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104712 (n + 2) * A130330 (A061579 n).toNat

end

end A057963.P3940005090038668014

namespace A057963

/-- `A104712(n+2)*A130330(A061579(n))` -/
def P3940005090038668014.Spec : Prop :=
  ∀ n, P3940005090038668014.a n = A057963 (n + 2)

end A057963

/-! ## A057963.P10133466143651123534

`A000225(A002260(n+1))*A104712(n+2)`
-/

namespace A057963.P10133466143651123534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (A002260 (n + 1)).toNat * A104712 (n + 2)

end

end A057963.P10133466143651123534

namespace A057963

/-- `A000225(A002260(n+1))*A104712(n+2)` -/
def P10133466143651123534.Spec : Prop :=
  ∀ n, P10133466143651123534.a n = A057963 (n + 2)

end A057963

/-! ## A057963.P12082831917293561847

`A000225(A002262(n)+1)*A104712(n+2)`
-/

namespace A057963.P12082831917293561847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (A002262 n + 1).toNat * A104712 (n + 2)

end

end A057963.P12082831917293561847

namespace A057963

/-- `A000225(A002262(n)+1)*A104712(n+2)` -/
def P12082831917293561847.Spec : Prop :=
  ∀ n, P12082831917293561847.a n = A057963 (n + 2)

end A057963

/-! ## A057963.P5603009890282289378

`A007318(A131507(n)+4+n)*A000225(A002260(n+1))`
-/

namespace A057963.P5603009890282289378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A131507 n + 4 + (n : ℤ)).toNat * A000225 (A002260 (n + 1)).toNat

end

end A057963.P5603009890282289378

namespace A057963

/-- `A007318(A131507(n)+4+n)*A000225(A002260(n+1))` -/
def P5603009890282289378.Spec : Prop :=
  ∀ n, P5603009890282289378.a n = A057963 (n + 2)

end A057963

/-! ## A057963.P13006379284906997849

`A000203(A059268(n))*A104712(n+2)`
-/

namespace A057963.P13006379284906997849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A059268 n).toNat * A104712 (n + 2)

end

end A057963.P13006379284906997849

namespace A057963

/-- `A000203(A059268(n))*A104712(n+2)` -/
def P13006379284906997849.Spec : Prop :=
  ∀ n, P13006379284906997849.a n = A057963 (n + 2)

end A057963

/-! ## A057963.P12313713142684578466

`A259569(A007401(n+1))/2`
-/

namespace A057963.P12313713142684578466
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A259569 (A007401 (n + 1)).toNat : ℚ) / 2

end

end A057963.P12313713142684578466

namespace A057963

/-- `A259569(A007401(n+1))/2` -/
def P12313713142684578466.Spec : Prop :=
  ∀ n, P12313713142684578466.a n = (A057963 (n + 2) : ℚ)

end A057963

/-!
# A057964: Triangle T(n,k) of number of minimal 3-covers of a labeled n-set that cover k points of that set uniquely (k=3,..,n).

The programs for A057964, there is no canonical definition to state claims against.
-/

/-! ## A057964.P17347391548332056501

`A325795(A244982(3*n+2)-1)`
-/

namespace A057964.P17347391548332056501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325795 (A244982 (3 * n + 2) - 1).toNat

end

end A057964.P17347391548332056501

/-!
# A057969: 5 x n binary matrices without unit columns up to row and column permutations.

The programs for A057969, there is no canonical definition to state claims against.
-/

/-! ## A057969.P5839847493981961950

`∑[A057968(∑[n])]`
-/

namespace A057969.P5839847493981961950
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057968 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057969.P5839847493981961950

/-!
# A057970: 5 x n binary matrices with 1 unit column up to row and column permutations.

The programs for A057970, there is no canonical definition to state claims against.
-/

/-! ## A057970.P9665552789921826636

`∑[A057968(A000124(n+1))]`
-/

namespace A057970.P9665552789921826636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057968 (A000124 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057970.P9665552789921826636

/-! ## A057970.P9593883999261732637

`∑[A057968(A000096(n)+2)]`
-/

namespace A057970.P9593883999261732637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057968 (A000096 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057970.P9593883999261732637

/-! ## A057970.P10770249509002306600

`∑[A057968(A000217(n+1)+1)]`
-/

namespace A057970.P10770249509002306600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057968 (A000217 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057970.P10770249509002306600

/-!
# A057971: Number of 5 x n binary matrices with 2 unit columns up to row and column permutations.

The programs for A057971, there is no canonical definition to state claims against.
-/

/-! ## A057971.P15678860786063212621

`∑[A057968(A167614(n+1)-1)]`
-/

namespace A057971.P15678860786063212621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057968 (A167614 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057971.P15678860786063212621

/-!
# A057972: Number of 5 X n binary matrices with 3 unit columns up to row and column permutations.

The programs for A057972, there is no canonical definition to state claims against.
-/

/-! ## A057972.P6194792081129384035

`∑[A057968(A167614(n+2))]`
-/

namespace A057972.P6194792081129384035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057968 (A167614 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057972.P6194792081129384035

/-!
# A057973: Number of polybricks: number of ways to arrange n 1 X 2 "bricks" in a wall (see illustrations).

The programs for A057973, there is no canonical definition to state claims against.
-/

/-! ## A057973.P11727904676992487660

`(A197550(n+1)+A030225(n+1))/2`
-/

namespace A057973.P11727904676992487660
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A197550 (n + 1) + A030225 (n + 1) : ℚ) / 2

end

end A057973.P11727904676992487660

/-! ## A057973.P12973423601582959691

`A004525(A197550(n+1)+A030225(n+1))`
-/

namespace A057973.P12973423601582959691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A197550 (n + 1) + A030225 (n + 1)).toNat

end

end A057973.P12973423601582959691

/-! ## A057973.P15857881019356857513

`A004526(A197550(n+1)+A030225(n+1))`
-/

namespace A057973.P15857881019356857513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A197550 (n + 1) + A030225 (n + 1)).toNat

end

end A057973.P15857881019356857513

/-! ## A057973.P15349751453401050654

`A004525(A197959(n+1)+A030225(n+1))`
-/

namespace A057973.P15349751453401050654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A197959 (n + 1) + A030225 (n + 1)).toNat

end

end A057973.P15349751453401050654

/-!
# A057975: Record depths reached by card 1 in the shuffle in A035485.

The programs for A057975, the canonical program `A057975.P8489787724040253602` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057975 has offset 0).

The definition of A057975 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 408 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A057975.P8489787724040253602

`record[(2*a(n-2))%n]` with `a(0)=2, a(1)=1`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A057975

/-- `record[(2*a(n-2))%n]` -/
def P8489787724040253602.Spec : Prop :=
  ∀ n, (P8489787724040253602.a n : ℤ) = A057975 n

theorem P8489787724040253602.correct : P8489787724040253602.Spec := by
  intro n
  simp only [A057975]

end A057975

/-! ## A057975.P6709942294538869805

`record[(a(n-2)+a(n-2))%n]` with `a(0)=2, a(1)=1`
-/

namespace A057975.P6709942294538869805
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 1] fun n f1 =>
  (f1 (n - 2) + f1 (n - 2)) % n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A057975.P6709942294538869805

namespace A057975

/-- `record[(a(n-2)+a(n-2))%n]` -/
def P6709942294538869805.Spec : Prop :=
  ∀ n, (P6709942294538869805.a n : ℤ) = A057975 n

theorem P6709942294538869805.correct : P6709942294538869805.Spec := by
  intro n
  simp only [A057975, Nat.add_sub_cancel, A057975.P6709942294538869805.f1, A057975.P6709942294538869805.a, A057975.P8489787724040253602.f1, A057975.P8489787724040253602.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A057975

/-! ## A057975.P2179801355272664650

`record[A035492(n+1)]`
-/

namespace A057975.P2179801355272664650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035492 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A057975.P2179801355272664650

namespace A057975

/-- `record[A035492(n+1)]` -/
def P2179801355272664650.Spec : Prop :=
  ∀ n, P2179801355272664650.a n = A057975 n

end A057975

/-! ## A057975.P543817122702293739

`A035492(A057976(n))`
-/

namespace A057975.P543817122702293739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035492 (A057976 n).toNat

end

end A057975.P543817122702293739

namespace A057975

/-- `A035492(A057976(n))` -/
def P543817122702293739.Spec : Prop :=
  ∀ n, P543817122702293739.a n = A057975 n

end A057975

/-! ## A057975.P10161434884352189152

`record[A035492(n)*A054977(n)]`
-/

namespace A057975.P10161434884352189152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035492 n * A054977 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A057975.P10161434884352189152

namespace A057975

/-- `record[A035492(n)*A054977(n)]` -/
def P10161434884352189152.Spec : Prop :=
  ∀ n, P10161434884352189152.a n = A057975 n

end A057975

/-! ## A057975.P6792652416483686514

`record[A004277(a(n-1))%A004273(n+2)]` with `a(0)=2`
-/

namespace A057975.P6792652416483686514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  Int.tmod (A004277 (f1 (n - 1)).toNat) (A004273 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A057975.P6792652416483686514

namespace A057975

/-- `record[A004277(a(n-1))%A004273(n+2)]` -/
def P6792652416483686514.Spec : Prop :=
  ∀ n, P6792652416483686514.a n = A057975 n

end A057975

/-!
# A057976: Number of shuffles where card 1 reaches a record depth (A057975) under the shuffle in A035485.

The programs for A057976, there is no canonical definition to state claims against.
-/

/-! ## A057976.P7037655198648127026

`A010064(n+1)-A001222(A192808(n))`
-/

namespace A057976.P7037655198648127026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010064 (n + 1) - A001222 (A192808 n).toNat

end

end A057976.P7037655198648127026

/-! ## A057976.P16147695186419819913

`A310853(n)-A001222(A155435(n+4))`
-/

namespace A057976.P16147695186419819913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310853 n - A001222 (A155435 (n + 4)).toNat

end

end A057976.P16147695186419819913

/-! ## A057976.P3206231064225384156

`or(A192326(2*(n+2)), A265577(A192366(n)))`
-/

namespace A057976.P3206231064225384156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A192326 (2 * (n + 2))) (A265577 (A192366 n).toNat)

end

end A057976.P3206231064225384156

/-!
# A057977: GCD of consecutive central binomial coefficients: a(n) = gcd(A001405(n+1), A001405(n)).

The programs for A057977, the canonical program `A057977.P9126153292899327250` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057977 has offset 0).

The definition of A057977 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 337 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A057977.P17232949630481024549

`A241543(n+2)/2`
-/

namespace A057977.P17232949630481024549
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A241543 (n + 2) : ℚ) / 2

end

end A057977.P17232949630481024549

namespace A057977

/-- `A241543(n+2)/2` -/
def P17232949630481024549.Spec : Prop :=
  ∀ n, P17232949630481024549.a n = (A057977 n : ℚ)

end A057977

/-! ## A057977.P9126153292899327250

`A063549(A028310(n))`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A057977

/-- `A063549(A028310(n))` -/
def P9126153292899327250.Spec : Prop :=
  ∀ n, P9126153292899327250.a n = A057977 n

theorem P9126153292899327250.correct : P9126153292899327250.Spec := by
  intro n
  simp only [A057977]

end A057977

/-! ## A057977.P3008643683250693574

`A063549(A233583(n+1))`
-/

namespace A057977.P3008643683250693574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063549 (A233583 (n + 1)).toNat

end

end A057977.P3008643683250693574

namespace A057977

/-- `A063549(A233583(n+1))` -/
def P3008643683250693574.Spec : Prop :=
  ∀ n, P3008643683250693574.a n = A057977 n

end A057977

/-! ## A057977.P6720341307855259713

`A063549(A000007(n)+n)`
-/

namespace A057977.P6720341307855259713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063549 (A000007 n + (n : ℤ)).toNat

end

end A057977.P6720341307855259713

namespace A057977

/-- `A063549(A000007(n)+n)` -/
def P6720341307855259713.Spec : Prop :=
  ∀ n, P6720341307855259713.a n = A057977 n

end A057977

/-! ## A057977.P5641769040912589747

`A138364(n)+A126120(n)`
-/

namespace A057977.P5641769040912589747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138364 n + A126120 n

end

end A057977.P5641769040912589747

namespace A057977

/-- `A138364(n)+A126120(n)` -/
def P5641769040912589747.Spec : Prop :=
  ∀ n, P5641769040912589747.a n = A057977 n

end A057977

/-! ## A057977.P16747550607749841916

`A001405(n)/A158416(n)`
-/

namespace A057977.P16747550607749841916
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001405 n : ℚ) / (A158416 n : ℚ)

end

end A057977.P16747550607749841916

namespace A057977

/-- `A001405(n)/A158416(n)` -/
def P16747550607749841916.Spec : Prop :=
  ∀ n, P16747550607749841916.a n = (A057977 n : ℚ)

end A057977

/-! ## A057977.P8630500466108903283

`gcd(A001405(n), A037952(n))`
-/

namespace A057977.P8630500466108903283
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001405 n) (A037952 n)

end

end A057977.P8630500466108903283

namespace A057977

/-- `gcd(A001405(n), A037952(n))` -/
def P8630500466108903283.Spec : Prop :=
  ∀ n, (P8630500466108903283.a n : ℤ) = A057977 n

end A057977

/-! ## A057977.P17499501562917102750

`gcd(A126120(n), A126930(n))`
-/

namespace A057977.P17499501562917102750
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A126120 n) (A126930 n)

end

end A057977.P17499501562917102750

namespace A057977

/-- `gcd(A126120(n), A126930(n))` -/
def P17499501562917102750.Spec : Prop :=
  ∀ n, (P17499501562917102750.a n : ℤ) = A057977 n

end A057977

/-! ## A057977.P8125683856053970885

`A138364(n)+Δ[A166588(n)]`
-/

namespace A057977.P8125683856053970885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166588 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138364 n + (f1 (n + 1) - f1 n)

end

end A057977.P8125683856053970885

namespace A057977

/-- `A138364(n)+Δ[A166588(n)]` -/
def P8125683856053970885.Spec : Prop :=
  ∀ n, P8125683856053970885.a n = A057977 n

end A057977

/-! ## A057977.P8544803874388107437

`A128014(n+1)-A037952(n)`
-/

namespace A057977.P8544803874388107437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128014 (n + 1) - A037952 n

end

end A057977.P8544803874388107437

namespace A057977

/-- `A128014(n+1)-A037952(n)` -/
def P8544803874388107437.Spec : Prop :=
  ∀ n, P8544803874388107437.a n = A057977 n

end A057977

/-! ## A057977.P8518369719679020139

`A089849(n+1)-A138364(n)`
-/

namespace A057977.P8518369719679020139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089849 (n + 1) - A138364 n

end

end A057977.P8518369719679020139

namespace A057977

/-- `A089849(n+1)-A138364(n)` -/
def P8518369719679020139.Spec : Prop :=
  ∀ n, P8518369719679020139.a n = A057977 n

end A057977

/-! ## A057977.P15514459198103982603

`A001405(n)/(A142150(n)+1)`
-/

namespace A057977.P15514459198103982603
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001405 n : ℚ) / (A142150 n + 1 : ℚ)

end

end A057977.P15514459198103982603

namespace A057977

/-- `A001405(n)/(A142150(n)+1)` -/
def P15514459198103982603.Spec : Prop :=
  ∀ n, P15514459198103982603.a n = (A057977 n : ℚ)

end A057977

/-! ## A057977.P17143428727309417606

`A001405(n)/A152271(n+1)`
-/

namespace A057977.P17143428727309417606
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001405 n : ℚ) / (A152271 (n + 1) : ℚ)

end

end A057977.P17143428727309417606

namespace A057977

/-- `A001405(n)/A152271(n+1)` -/
def P17143428727309417606.Spec : Prop :=
  ∀ n, P17143428727309417606.a n = (A057977 n : ℚ)

end A057977

/-! ## A057977.P14665403271658314843

`gcd(A105523(n+1), A138364(n))`
-/

namespace A057977.P14665403271658314843
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A105523 (n + 1)) (A138364 n)

end

end A057977.P14665403271658314843

namespace A057977

/-- `gcd(A105523(n+1), A138364(n))` -/
def P14665403271658314843.Spec : Prop :=
  ∀ n, (P14665403271658314843.a n : ℤ) = A057977 n

end A057977

/-! ## A057977.P14184118619595954020

`A126120(n)+n*A097331(n)`
-/

namespace A057977.P14184118619595954020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126120 n + (n : ℤ) * A097331 n

end

end A057977.P14184118619595954020

namespace A057977

/-- `A126120(n)+n*A097331(n)` -/
def P14184118619595954020.Spec : Prop :=
  ∀ n, P14184118619595954020.a n = A057977 n

end A057977

/-! ## A057977.P8261007946754889193

`A126120(n)-n*A210628(n)`
-/

namespace A057977.P8261007946754889193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126120 n - (n : ℤ) * A210628 n

end

end A057977.P8261007946754889193

namespace A057977

/-- `A126120(n)-n*A210628(n)` -/
def P8261007946754889193.Spec : Prop :=
  ∀ n, P8261007946754889193.a n = A057977 n

end A057977

/-! ## A057977.P7724825148761171967

`A097331(n+1)+n*A097331(n)`
-/

namespace A057977.P7724825148761171967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097331 (n + 1) + (n : ℤ) * A097331 n

end

end A057977.P7724825148761171967

namespace A057977

/-- `A097331(n+1)+n*A097331(n)` -/
def P7724825148761171967.Spec : Prop :=
  ∀ n, P7724825148761171967.a n = A057977 n

end A057977

/-! ## A057977.P12053974800049470088

`A097331(n+1)+A126869(n+1)/2`
-/

namespace A057977.P12053974800049470088
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A097331 (n + 1) : ℚ) + (A126869 (n + 1) : ℚ) / 2

end

end A057977.P12053974800049470088

namespace A057977

/-- `A097331(n+1)+A126869(n+1)/2` -/
def P12053974800049470088.Spec : Prop :=
  ∀ n, P12053974800049470088.a n = (A057977 n : ℚ)

end A057977

/-! ## A057977.P16393059070992503834

`A001405(n)/A032742(A141310(n)+1)`
-/

namespace A057977.P16393059070992503834
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001405 n : ℚ) / (A032742 (A141310 n + 1).toNat : ℚ)

end

end A057977.P16393059070992503834

namespace A057977

/-- `A001405(n)/A032742(A141310(n)+1)` -/
def P16393059070992503834.Spec : Prop :=
  ∀ n, P16393059070992503834.a n = (A057977 n : ℚ)

end A057977

/-! ## A057977.P16151549287864796197

`gcd(A001405(A028310(n)), A097331(n+1))`
-/

namespace A057977.P16151549287864796197
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001405 (A028310 n).toNat) (A097331 (n + 1))

end

end A057977.P16151549287864796197

namespace A057977

/-- `gcd(A001405(A028310(n)), A097331(n+1))` -/
def P16151549287864796197.Spec : Prop :=
  ∀ n, (P16151549287864796197.a n : ℤ) = A057977 n

end A057977

/-!
# A057979: a(n) = 1 for even n and (n-1)/2 for odd n.

The programs for A057979, the canonical program `A057979.P16537735927241777837` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057979 has offset 0).

The definition of A057979 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A057979.P16537735927241777837

`2*a(n-2)-a(n-4)` with `a(0)=1, a(1)=0, a(2)=1, a(3)=1`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A057979

/-- `2*a(n-2)-a(n-4)` -/
def P16537735927241777837.Spec : Prop :=
  ∀ n, P16537735927241777837.a n = A057979 n

theorem P16537735927241777837.correct : P16537735927241777837.Spec := by
  intro n
  simp only [A057979]

end A057979

/-! ## A057979.P2870511694015479051

`(a(n-2)+a(n-3))/a(n-1)` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A057979.P2870511694015479051
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 0, 1] fun n a =>
  (a (n - 2) + a (n - 3)) / a (n - 1)

end

end A057979.P2870511694015479051

namespace A057979

/-- `(a(n-2)+a(n-3))/a(n-1)` -/
def P2870511694015479051.Spec : Prop :=
  ∀ n, P2870511694015479051.a n = (A057979 n : ℚ)

end A057979

/-! ## A057979.P5486622692440700189

`gcd(C(n, 2), xor(1, n))`
-/

namespace A057979.P5486622692440700189
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (Nat.choose n 2) (Nat.xor 1 n)

end

end A057979.P5486622692440700189

namespace A057979

/-- `gcd(C(n, 2), xor(1, n))` -/
def P5486622692440700189.Spec : Prop :=
  ∀ n, (P5486622692440700189.a n : ℤ) = A057979 n

end A057979

/-! ## A057979.P6118255129346654615

`gcd(1-n, floor(n/2))`
-/

namespace A057979.P6118255129346654615
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (1 - (n : ℤ)) ⌊(n : ℚ) / 2⌋

end

end A057979.P6118255129346654615

namespace A057979

/-- `gcd(1-n, floor(n/2))` -/
def P6118255129346654615.Spec : Prop :=
  ∀ n, (P6118255129346654615.a n : ℤ) = A057979 n

end A057979

/-! ## A057979.P3164121513214562399

`floor((n/2)^(n%2))`
-/

namespace A057979.P3164121513214562399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n : ℚ) / 2) ^ (n % 2)⌋

end

end A057979.P3164121513214562399

namespace A057979

/-- `floor((n/2)^(n%2))` -/
def P3164121513214562399.Spec : Prop :=
  ∀ n, P3164121513214562399.a n = A057979 n

end A057979

/-! ## A057979.P14216854385350899182

`floor((n/2)^and(1, n))`
-/

namespace A057979.P14216854385350899182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n : ℚ) / 2) ^ Nat.land 1 n⌋

end

end A057979.P14216854385350899182

namespace A057979

/-- `floor((n/2)^and(1, n))` -/
def P14216854385350899182.Spec : Prop :=
  ∀ n, P14216854385350899182.a n = A057979 n

end A057979

/-! ## A057979.P6034579206550274505

`C(floor(n/2), and(1, n))`
-/

namespace A057979.P6034579206550274505
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ⌊(n : ℚ) / 2⌋.toNat (Nat.land 1 n)

end

end A057979.P6034579206550274505

namespace A057979

/-- `C(floor(n/2), and(1, n))` -/
def P6034579206550274505.Spec : Prop :=
  ∀ n, (P6034579206550274505.a n : ℤ) = A057979 n

end A057979

/-! ## A057979.P11627140482067974812

`((n-1)/2)^and(1, n)`
-/

namespace A057979.P11627140482067974812
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n : ℤ) - 1 : ℚ) / 2) ^ Nat.land 1 n

end

end A057979.P11627140482067974812

namespace A057979

/-- `((n-1)/2)^and(1, n)` -/
def P11627140482067974812.Spec : Prop :=
  ∀ n, P11627140482067974812.a n = (A057979 n : ℚ)

end A057979

/-! ## A057979.P15297733466917743568

`abs(1-∑[n]%(n+1))`
-/

namespace A057979.P15297733466917743568
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (((∑ j ∈ Finset.range (n + 1), f1 j) % (n + 1) : ℕ) : ℤ)|

end

end A057979.P15297733466917743568

namespace A057979

/-- `abs(1-∑[n]%(n+1))` -/
def P15297733466917743568.Spec : Prop :=
  ∀ n, P15297733466917743568.a n = A057979 n

end A057979

/-! ## A057979.P3601850990276715206

`abs(gcd(n+1, ∑[n])-n)`
-/

namespace A057979.P3601850990276715206
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Nat.gcd (n + 1) (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ) - (n : ℤ)|

end

end A057979.P3601850990276715206

namespace A057979

/-- `abs(gcd(n+1, ∑[n])-n)` -/
def P3601850990276715206.Spec : Prop :=
  ∀ n, P3601850990276715206.a n = A057979 n

end A057979

/-! ## A057979.P15628841401001163181

`a(n-2)+and(1, n)` with `a(0)=1, a(1)=0`
-/

namespace A057979.P15628841401001163181
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n a =>
  a (n - 2) + Nat.land 1 n

end

end A057979.P15628841401001163181

namespace A057979

/-- `a(n-2)+and(1, n)` -/
def P15628841401001163181.Spec : Prop :=
  ∀ n, (P15628841401001163181.a n : ℤ) = A057979 n

end A057979

/-! ## A057979.P4591079462060232068

`abs(lcm(2, n+1)/2-n)`
-/

namespace A057979.P4591079462060232068
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(Nat.lcm 2 (n + 1) : ℚ) / 2 - (n : ℚ)|

end

end A057979.P4591079462060232068

namespace A057979

/-- `abs(lcm(2, n+1)/2-n)` -/
def P4591079462060232068.Spec : Prop :=
  ∀ n, P4591079462060232068.a n = (A057979 n : ℚ)

end A057979

/-! ## A057979.P78883508128169912

`((n-1)/2)^(n²%2)`
-/

namespace A057979.P78883508128169912
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n : ℤ) - 1 : ℚ) / 2) ^ (n ^ 2 % 2)

end

end A057979.P78883508128169912

namespace A057979

/-- `((n-1)/2)^(n²%2)` -/
def P78883508128169912.Spec : Prop :=
  ∀ n, P78883508128169912.a n = (A057979 n : ℚ)

end A057979

/-! ## A057979.P9818987385498305434

`ceil(n/2-a(n-1))` with `a(0)=1`
-/

namespace A057979.P9818987385498305434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌈(n : ℚ) / 2 - (a (n - 1) : ℚ)⌉

end

end A057979.P9818987385498305434

namespace A057979

/-- `ceil(n/2-a(n-1))` -/
def P9818987385498305434.Spec : Prop :=
  ∀ n, P9818987385498305434.a n = A057979 n

end A057979

/-! ## A057979.P16791975756710643315

`round(n/2)-a(n-1)` with `a(0)=1`
-/

namespace A057979.P16791975756710643315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.roundAway ((n : ℚ) / 2) - a (n - 1)

end

end A057979.P16791975756710643315

namespace A057979

/-- `round(n/2)-a(n-1)` -/
def P16791975756710643315.Spec : Prop :=
  ∀ n, P16791975756710643315.a n = A057979 n

end A057979

/-! ## A057979.P16749662983766162158

`(n-3)*and(1, n)/2+1`
-/

namespace A057979.P16749662983766162158
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 3 : ℚ) * ((Nat.land 1 n : ℚ) / 2) + 1

end

end A057979.P16749662983766162158

namespace A057979

/-- `(n-3)*and(1, n)/2+1` -/
def P16749662983766162158.Spec : Prop :=
  ∀ n, P16749662983766162158.a n = (A057979 n : ℚ)

end A057979

/-! ## A057979.P6644842146484733459

`-floor(a(n-1)-n/2)` with `a(0)=1`
-/

namespace A057979.P6644842146484733459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  -⌊(a (n - 1) : ℚ) - (n : ℚ) / 2⌋

end

end A057979.P6644842146484733459

namespace A057979

/-- `-floor(a(n-1)-n/2)` -/
def P6644842146484733459.Spec : Prop :=
  ∀ n, P6644842146484733459.a n = A057979 n

end A057979

/-! ## A057979.P9964734847875409159

`a(n-2)+val(∑[n], n)` with `a(0)=1, a(1)=0`
-/

namespace A057979.P9964734847875409159
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n a =>
  a (n - 2) + SequenceMachineLib.valuation (∑ j ∈ Finset.range (n + 1), f1 j) n

end

end A057979.P9964734847875409159

namespace A057979

/-- `a(n-2)+val(∑[n], n)` -/
def P9964734847875409159.Spec : Prop :=
  ∀ n, (P9964734847875409159.a n : ℤ) = A057979 n

end A057979

/-! ## A057979.P11718095055339192282

`floor(∑[n]/n-a(n-1))` with `a(0)=1`
-/

namespace A057979.P11718095055339192282
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (n : ℚ) - (a (n - 1) : ℚ)⌋

end

end A057979.P11718095055339192282

namespace A057979

/-- `floor(∑[n]/n-a(n-1))` -/
def P11718095055339192282.Spec : Prop :=
  ∀ n, P11718095055339192282.a n = A057979 n

end A057979

/-! ## A057979.P163388587197484480

`(-1)^n-∑[∑[n*(-1)^n]]`
-/

namespace A057979.P163388587197484480
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (-1) ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057979.P163388587197484480

namespace A057979

/-- `(-1)^n-∑[∑[n*(-1)^n]]` -/
def P163388587197484480.Spec : Prop :=
  ∀ n, P163388587197484480.a n = A057979 n

end A057979

/-!
# A057981: Number of singular n X n (-1,0,1)-matrices.

The programs for A057981, there is no canonical definition to state claims against.
-/

/-! ## A057981.P7264566234691717654

`A060722(n)-A056989(n)`
-/

namespace A057981.P7264566234691717654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060722 n - A056989 n

end

end A057981.P7264566234691717654

/-!
# A057982: Number of singular n X n (-1,1)-matrices.

The programs for A057982, there is no canonical definition to state claims against.
-/

/-! ## A057982.P17200865439388446307

`∏[A004171(n)]-A056990(n+1)`
-/

namespace A057982.P17200865439388446307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004171 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - A056990 (n + 1)

end

end A057982.P17200865439388446307

/-! ## A057982.P13592302622974942700

`A002416(n+1)-A056990(n+1)`
-/

namespace A057982.P13592302622974942700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002416 (n + 1) - A056990 (n + 1)

end

end A057982.P13592302622974942700

/-! ## A057982.P10538740238179728335

`(A002416(n)-A055165(n))*A004171(n)`
-/

namespace A057982.P10538740238179728335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002416 n - A055165 n) * A004171 n

end

end A057982.P10538740238179728335

/-! ## A057982.P9988849952713967080

`∏[A004171(n)]-2*A000079(n)²*A055165(n)`
-/

namespace A057982.P9988849952713967080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004171 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - 2 * (A000079 n ^ 2 * A055165 n)

end

end A057982.P9988849952713967080

/-! ## A057982.P2051632891429154503

`∏[A004171(n)]-n!*A088389(n)*A004171(n)`
-/

namespace A057982.P2051632891429154503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004171 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - (Nat.factorial n : ℤ) * A088389 n * A004171 n

end

end A057982.P2051632891429154503

/-!
# A057983: These numbers take a record number of steps to reach the top of the deck in Guy's shuffle (see A035485).

The programs for A057983, there is no canonical definition to state claims against.
-/

/-! ## A057983.P9496973996761086193

`∪[A060751(n+2), A035485(A057984(n))]`
-/

namespace A057983.P9496973996761086193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060751 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035485 (A057984 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A057983.P9496973996761086193

/-! ## A057983.P16793212009602170894

`∪[A035485(A057984(n)), A060751(n)]`
-/

namespace A057983.P16793212009602170894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035485 (A057984 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060751 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A057983.P16793212009602170894

/-! ## A057983.P5375799926558136338

`A088725(A289436(n+2)+A100066(n))`
-/

namespace A057983.P5375799926558136338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088725 (A289436 (n + 2) + A100066 n).toNat

end

end A057983.P5375799926558136338

/-! ## A057983.P11431235860334987716

`lt[A350647(A350668(n)), A350672(n+1)]`
-/

namespace A057983.P11431235860334987716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350647 (A350668 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350672 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A057983.P11431235860334987716

/-!
# A057984: These numbers are the record number of steps for the numbers in A057983 to reach the top of the deck in Guy's shuffle (see A035485).

The programs for A057984, there is no canonical definition to state claims against.
-/

/-! ## A057984.P13903104225662310507

`∪[A060752(n+1), A035490(A057983(n))]`
-/

namespace A057984.P13903104225662310507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060752 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035490 (A057983 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A057984.P13903104225662310507

/-! ## A057984.P9339575454090594590

`record[A035490(n+1)]`
-/

namespace A057984.P9339575454090594590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035490 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A057984.P9339575454090594590

/-! ## A057984.P5199927378658671758

`A035490(A057983(n))`
-/

namespace A057984.P5199927378658671758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035490 (A057983 n).toNat

end

end A057984.P5199927378658671758

/-! ## A057984.P14650820047542059146

`record[ceil(n/98)*A060750(n+1)]`
-/

namespace A057984.P14650820047542059146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 98⌉ * A060750 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A057984.P14650820047542059146

/-! ## A057984.P14236903277929956387

`record[A060750(n+1)*A178334(n)]`
-/

namespace A057984.P14236903277929956387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060750 (n + 1) * A178334 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A057984.P14236903277929956387

/-!
# A057985: Start with 0 and repeatedly substitute: 0->01, 1->12, 2->0.

The programs for A057985, there is no canonical definition to state claims against.
-/

/-! ## A057985.P12603618350728342175

`A007423(A008864(A327991(n)))`
-/

namespace A057985.P12603618350728342175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007423 (A008864 (A327991 n).toNat).toNat

end

end A057985.P12603618350728342175

/-! ## A057985.P13418055963935044652

`A331466(A104324(A104326(A331192(A104324(n+1)))))`
-/

namespace A057985.P13418055963935044652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331466 (A104324 (A104326 (A331192 (A104324 (n + 1)).toNat).toNat).toNat).toNat

end

end A057985.P13418055963935044652

/-! ## A057985.P7674417776421498737

`and(∑{e}[n+1, #], A083513(A067061(n+1)))`
-/

namespace A057985.P7674417776421498737
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ) (A083513 (A067061 (n + 1)).toNat)

end

end A057985.P7674417776421498737

/-! ## A057985.P14590316563110384106

`and(∑{e}[n+1, #], A275814(A297853(n+1)))`
-/

namespace A057985.P14590316563110384106
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ) (A275814 (A297853 (n + 1)).toNat)

end

end A057985.P14590316563110384106

/-!
# A057986: Positions of 0 in A057985.

The programs for A057986, there is no canonical definition to state claims against.
-/

/-! ## A057986.P12047229276657294421

`A287069(n+1)-(n+1)`
-/

namespace A057986.P12047229276657294421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287069 (n + 1) - (n + 1 : ℤ)

end

end A057986.P12047229276657294421

/-! ## A057986.P203791131873755431

`A057987(A287068(n+1))-A287068(n+1)`
-/

namespace A057986.P203791131873755431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057987 (A287068 (n + 1)).toNat - A287068 (n + 1)

end

end A057986.P203791131873755431

/-! ## A057986.P3235849397667748935

`A287067(A287068(n+1))%A287069(n+1)`
-/

namespace A057986.P3235849397667748935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A287067 (A287068 (n + 1)).toNat) (A287069 (n + 1))

end

end A057986.P3235849397667748935

/-! ## A057986.P13509579619115260944

`eq[0, A057985(n+1)]+1`
-/

namespace A057986.P13509579619115260944
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057985 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A057986.P13509579619115260944

/-! ## A057986.P2602636898966225257

`eq[2, A287066(n+1)]-n`
-/

namespace A057986.P2602636898966225257
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287066 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - (n : ℤ)

end

end A057986.P2602636898966225257

/-!
# A057987: Positions of 1 in A057985.

The programs for A057987, there is no canonical definition to state claims against.
-/

/-! ## A057987.P5140340447648534920

`eq[1, A057985(n+1)]+1`
-/

namespace A057987.P5140340447648534920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057985 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A057987.P5140340447648534920

/-! ## A057987.P891621779464953193

`eq[1, A057985(A028310(n))]`
-/

namespace A057987.P891621779464953193
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057985 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A057987.P891621779464953193

/-! ## A057987.P8138272664908756995

`eq[1, A000931(a(A057985(n)))]` with `a(0)=2`
-/

namespace A057987.P8138272664908756995
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f2 =>
  A000931 (f2 (A057985 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A057987.P8138272664908756995

/-! ## A057987.P12528449468085282314

`eq[1, A001222(a(A057985(n)))]` with `a(0)=4`
-/

namespace A057987.P12528449468085282314
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f2 =>
  A001222 (f2 (A057985 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A057987.P12528449468085282314

/-! ## A057987.P2765075387574779952

`eq[6, A217001(a(A057985(n)))]` with `a(0)=1`
-/

namespace A057987.P2765075387574779952
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A217001 (f2 (A057985 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A057987.P2765075387574779952

/-! ## A057987.P16121540365012251497

`eq[6, A287067(a(A057985(n)))]` with `a(0)=1`
-/

namespace A057987.P16121540365012251497
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A287067 (f2 (A057985 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A057987.P16121540365012251497

/-! ## A057987.P5050365975458219066

`eq[1, A057985(A008619(A004275(n)))]`
-/

namespace A057987.P5050365975458219066
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057985 (A008619 (A004275 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A057987.P5050365975458219066

/-! ## A057987.P15696906207683457460

`eq[1, A057985(A065033(2*n))]`
-/

namespace A057987.P15696906207683457460
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057985 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A057987.P15696906207683457460

/-! ## A057987.P2840841942149743324

`eq[1, A057985(A123108(2*n))]`
-/

namespace A057987.P2840841942149743324
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057985 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A057987.P2840841942149743324

/-!
# A057988: Positions of 2 in A057985.

The programs for A057988, there is no canonical definition to state claims against.
-/

/-! ## A057988.P17096890948377817681

`A287067(n+1)+1+n`
-/

namespace A057988.P17096890948377817681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287067 (n + 1) + 1 + (n : ℤ)

end

end A057988.P17096890948377817681

/-! ## A057988.P10451833991197591785

`eq[0, A287066(n+1)]+2+n`
-/

namespace A057988.P10451833991197591785
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287066 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2 + n

end

end A057988.P10451833991197591785

/-! ## A057988.P15242217426921466736

`lt[1, A057985(n+1)]+1`
-/

namespace A057988.P15242217426921466736
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057985 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A057988.P15242217426921466736

/-! ## A057988.P570348516456645699

`eq[2, A057985(A028310(n))]`
-/

namespace A057988.P570348516456645699
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057985 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A057988.P570348516456645699

/-! ## A057988.P2618460811735506108

`eq[2, A057985(A000038(n)+n)]`
-/

namespace A057988.P2618460811735506108
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057985 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A057988.P2618460811735506108

/-! ## A057988.P12306442242510373343

`eq[1, A000931(a(A057985(n)))]` with `a(0)=2, a(1)=2`
-/

namespace A057988.P12306442242510373343
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n f2 =>
  A000931 (f2 (A057985 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A057988.P12306442242510373343

/-! ## A057988.P8131836370730542253

`eq[2, A057985(A065033(2*n))]`
-/

namespace A057988.P8131836370730542253
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057985 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A057988.P8131836370730542253

/-! ## A057988.P5313670785256686950

`eq[2, A057985(A123108(2*n))]`
-/

namespace A057988.P5313670785256686950
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057985 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A057988.P5313670785256686950

/-! ## A057988.P12719357467099551209

`record[A287067(A263275(n))+A263275(n)]`
-/

namespace A057988.P12719357467099551209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287067 (A263275 n).toNat + A263275 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A057988.P12719357467099551209

/-!
# A057989: Positions of 00 or 11 or 22 in A057985.

The programs for A057989, there is no canonical definition to state claims against.
-/

/-! ## A057989.P2994672682586341118

`eq[A057985(n+2), A057985(n+1)]+1`
-/

namespace A057989.P2994672682586341118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057985 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057985 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A057989.P2994672682586341118

/-! ## A057989.P15993764418560426024

`eq[A057985(n+1), A057985(A000038(n)+n)]`
-/

namespace A057989.P15993764418560426024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057985 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057985 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A057989.P15993764418560426024

/-!
# A057990: Positions of 00 in A057985.

The programs for A057990, there is no canonical definition to state claims against.
-/

/-! ## A057990.P7114569482392516616

`∩[A057986(n+1), A057989(n+1)]`
-/

namespace A057990.P7114569482392516616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057989 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A057990.P7114569482392516616

/-! ## A057990.P16980193158065197769

`∩[A057986(n+2)-1, A057986(n+2)]`
-/

namespace A057990.P16980193158065197769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057986 (n + 2) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057986 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A057990.P16980193158065197769

/-! ## A057990.P2049778981279342536

`A057986(eq[1, A057986(n+2)-A057986(n+1)]+1)`
-/

namespace A057990.P2049778981279342536
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057986 (n + 2) - A057986 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057986 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A057990.P2049778981279342536

/-! ## A057990.P4060398877915402054

`A057986(eq[1, A057986(n+2)%A057986(n+1)]+1)`
-/

namespace A057990.P4060398877915402054
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A057986 (n + 2)) (A057986 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057986 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A057990.P4060398877915402054

/-! ## A057990.P1570912085020408521

`eq[0, A057985(n+1)+A057985(A000038(n)+n)]`
-/

namespace A057990.P1570912085020408521
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057985 (n + 1) + A057985 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A057990.P1570912085020408521

/-!
# A057991: Number of quasigroups of order n.

The programs for A057991, there is no canonical definition to state claims against.
-/

/-! ## A057991.P3080083986915322721

`2*A058171(n)-A057993(n)`
-/

namespace A057991.P3080083986915322721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A058171 n - A057993 n

end

end A057991.P3080083986915322721

/-! ## A057991.P7237727168944685762

`lcm(4, A330663(n+1))/4`
-/

namespace A057991.P7237727168944685762
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 4 (A330663 (n + 1)) : ℚ) / 4

end

end A057991.P7237727168944685762

/-!
# A057992: Number of commutative quasigroups of order n.

The programs for A057992, there is no canonical definition to state claims against.
-/

/-! ## A057992.P16819153241478276394

`A130823(∑[A239946(n)!])`
-/

namespace A057992.P16819153241478276394
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A239946 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130823 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A057992.P16819153241478276394

/-! ## A057992.P5574062838084376793

`or(∑{e}[n+1, #], A109296(A099960(n)))`
-/

namespace A057992.P5574062838084376793
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ) (A109296 (A099960 n).toNat)

end

end A057992.P5574062838084376793

/-! ## A057992.P12211452717880333791

`or(a(n-3), A329619(A261421(n)))` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A057992.P12211452717880333791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  Int.lor (a (n - 3)) (A329619 (A261421 n).toNat)

end

end A057992.P12211452717880333791

/-!
# A057993: Number of self-converse quasigroups of order n.

The programs for A057993, there is no canonical definition to state claims against.
-/

/-! ## A057993.P5328241204812766740

`2*A058171(n)-A057991(n)`
-/

namespace A057993.P5328241204812766740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A058171 n - A057991 n

end

end A057993.P5328241204812766740

/-!
# A057994: Number of asymmetric quasigroups of order n.

The programs for A057994, there is no canonical definition to state claims against.
-/

/-! ## A057994.P16080593758756043785

`2*A058174(n)-A058173(n)`
-/

namespace A057994.P16080593758756043785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A058174 n - A058173 n

end

end A057994.P16080593758756043785

/-! ## A057994.P11486590265007264658

`abs(1-A057357(A072445(n)))`
-/

namespace A057994.P11486590265007264658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A057357 (A072445 n).toNat|

end

end A057994.P11486590265007264658

/-!
# A057995: Coefficient triangle of polynomials (rising powers) related to Fibonacci convolutions. Companion triangle to A057280.

The programs for A057995, there is no canonical definition to state claims against.
-/

/-! ## A057995.P17486108521785051847

`A057281(∑[2*n]%comp[∑[n]])`
-/

namespace A057995.P17486108521785051847
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057281 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A057995.P17486108521785051847

/-! ## A057995.P5908651322619598625

`A057281(∑[char[∑[n]]]²-(n+1))`
-/

namespace A057995.P5908651322619598625
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057281 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n + 1))

end

end A057995.P5908651322619598625

/-! ## A057995.P6946016032898871884

`A057281(A061579(n))%A061182(n)`
-/

namespace A057995.P6946016032898871884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A057281 (A061579 n).toNat) (A061182 n)

end

end A057995.P6946016032898871884

/-! ## A057995.P12645581212504119483

`A007318(∑[n])*A057281(A061579(n))`
-/

namespace A057995.P12645581212504119483
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A057281 (A061579 n).toNat

end

end A057995.P12645581212504119483

/-! ## A057995.P14494256010786221127

`A057281(A061579(n))/A319101(n+1)`
-/

namespace A057995.P14494256010786221127
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057281 (A061579 n).toNat : ℚ) / (A319101 (n + 1) : ℚ)

end

end A057995.P14494256010786221127

/-!
# A057996: Number of self-converse loops (quasigroups with an identity element) of order n.

The programs for A057996, there is no canonical definition to state claims against.
-/

/-! ## A057996.P8104084110535016656

`2*A328746(n)-A057771(n)`
-/

namespace A057996.P8104084110535016656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A328746 n - A057771 n

end

end A057996.P8104084110535016656

/-! ## A057996.P7491622776087388488

`A328746(n)-(A318986(n)+A000001(n)-A328746(n))`
-/

namespace A057996.P7491622776087388488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328746 n - (A318986 n + A000001 n - A328746 n)

end

end A057996.P7491622776087388488

/-! ## A057996.P4595229064469367551

`A373073(A373098(n)+A373089(n))`
-/

namespace A057996.P4595229064469367551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373073 (A373098 n + A373089 n).toNat

end

end A057996.P4595229064469367551

/-!
# A057997: Number of labeled loops (quasigroups with an identity element).

The programs for A057997, there is no canonical definition to state claims against.
-/

/-! ## A057997.P13025421752421826142

`(n+1)*A000315(n+1)`
-/

namespace A057997.P13025421752421826142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000315 (n + 1)

end

end A057997.P13025421752421826142

/-! ## A057997.P4276174953367914508

`A002860(n+1)/n!²`
-/

namespace A057997.P4276174953367914508
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002860 (n + 1) : ℚ) / (Nat.factorial n ^ 2 : ℚ)

end

end A057997.P4276174953367914508

/-! ## A057997.P18365521698497431028

`(n+1)*A001009(∑[n+1])`
-/

namespace A057997.P18365521698497431028
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A001009 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A057997.P18365521698497431028

/-! ## A057997.P1050557696024770373

`A000315(n+1)*A008730(n)`
-/

namespace A057997.P1050557696024770373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000315 (n + 1) * A008730 n

end

end A057997.P1050557696024770373

/-! ## A057997.P9756315771141767794

`A002860(n+1)/A001044(n)`
-/

namespace A057997.P9756315771141767794
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002860 (n + 1) : ℚ) / (A001044 n : ℚ)

end

end A057997.P9756315771141767794

/-!
# A057999: a(n) is smallest prime such that a(n)-1 is a proper multiple of a(n-1)-1, with a(0) = 2.

The programs for A057999, there is no canonical definition to state claims against.
-/

/-! ## A057999.P16041525162653394050

`a(n-1)*A036012(n)+1-A036012(n)` with `a(0)=2`
-/

namespace A057999.P16041525162653394050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) * A036012 n + (1 - A036012 n)

end

end A057999.P16041525162653394050

/-! ## A057999.P11941114257395439315

`A084716(n+1)+1`
-/

namespace A057999.P11941114257395439315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084716 (n + 1) + 1

end

end A057999.P11941114257395439315

/-! ## A057999.P2704315220440895726

`∏[A084401(n+1)]+1`
-/

namespace A057999.P2704315220440895726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084401 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j + 1

end

end A057999.P2704315220440895726

/-! ## A057999.P1459624967697825032

`∏[A036012(A028310(n))]/2+1`
-/

namespace A057999.P1459624967697825032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036012 (A028310 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2 + 1

end

end A057999.P1459624967697825032

/-! ## A057999.P11589798048996397122

`∏[A036012(A233583(n+1))]/2+1`
-/

namespace A057999.P11589798048996397122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036012 (A233583 (n + 1)).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2 + 1

end

end A057999.P11589798048996397122

/-! ## A057999.P18364824940311857479

`∏[A036012(A028310(n))-A000007(n)]+1`
-/

namespace A057999.P18364824940311857479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036012 (A028310 n).toNat - A000007 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j + 1

end

end A057999.P18364824940311857479

/-! ## A057999.P4023317822141236184

`∏[A036012(n+1)]/A036012(n+1)+1`
-/

namespace A057999.P4023317822141236184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036012 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A036012 (n + 1) : ℚ) + 1

end

end A057999.P4023317822141236184

