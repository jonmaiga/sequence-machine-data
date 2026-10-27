import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C006
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C021
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
import Seq.B000.C036
import Seq.B000.C038
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C010
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C002
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C005
import Seq.Opaque.C006
import Seq.Opaque.C007
import Seq.Opaque.C008
import Seq.Opaque.C009
import Seq.Opaque.C010
import Seq.Opaque.C011
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A157502: Even numbers without the squares.

The programs for A157502, the canonical program `A157502.P11939738735497661628` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157502 has offset 1).

The definition of A157502 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A157502.P6162927175285682292

`comp[n^gcd(2, n)]`
-/

namespace A157502.P6162927175285682292
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ Nat.gcd 2 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A157502.P6162927175285682292

namespace A157502

/-- `comp[n^gcd(2, n)]` -/
def P6162927175285682292.Spec : Prop :=
  ∀ n, (P6162927175285682292.a n : ℤ) = A157502 (n + 1)

end A157502

/-! ## A157502.P14691767044203687524

`2*comp[2*n²]`
-/

namespace A157502.P14691767044203687524
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A157502.P14691767044203687524

namespace A157502

/-- `2*comp[2*n²]` -/
def P14691767044203687524.Spec : Prop :=
  ∀ n, (P14691767044203687524.a n : ℤ) = A157502 (n + 1)

end A157502

/-! ## A157502.P7264477983718808476

`comp[∪[n+1+n, n²]]`
-/

namespace A157502.P7264477983718808476
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1 + n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = x) ∨ ∃ j, f3 j = x) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A157502.P7264477983718808476

namespace A157502

/-- `comp[∪[n+1+n, n²]]` -/
def P7264477983718808476.Spec : Prop :=
  ∀ n, (P7264477983718808476.a n : ℤ) = A157502 (n + 1)

end A157502

/-! ## A157502.P3521712482206181719

`comp[n^((n+1)%2+1)]`
-/

namespace A157502.P3521712482206181719
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ ((n + 1) % 2 + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A157502.P3521712482206181719

namespace A157502

/-- `comp[n^((n+1)%2+1)]` -/
def P3521712482206181719.Spec : Prop :=
  ∀ n, (P3521712482206181719.a n : ℤ) = A157502 (n + 1)

end A157502

/-! ## A157502.P17930746173759131935

`comp[n^(and(1, n+1)+1)]`
-/

namespace A157502.P17930746173759131935
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ (Nat.land 1 (n + 1) + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A157502.P17930746173759131935

namespace A157502

/-- `comp[n^(and(1, n+1)+1)]` -/
def P17930746173759131935.Spec : Prop :=
  ∀ n, (P17930746173759131935.a n : ℤ) = A157502 (n + 1)

end A157502

/-! ## A157502.P3769662029260193993

`eq[0, A379952(n)]`
-/

namespace A157502.P3769662029260193993
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379952 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A157502.P3769662029260193993

namespace A157502

/-- `eq[0, A379952(n)]` -/
def P3769662029260193993.Spec : Prop :=
  ∀ n, (P3769662029260193993.a n : ℤ) = A157502 (n + 1)

end A157502

/-! ## A157502.P11939738735497661628

`A211197(n+1)+A093995(n+1)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A157502

/-- `A211197(n+1)+A093995(n+1)` -/
def P11939738735497661628.Spec : Prop :=
  ∀ n, P11939738735497661628.a n = A157502 (n + 1)

theorem P11939738735497661628.correct : P11939738735497661628.Spec := by
  intro n
  simp only [A157502, Nat.add_sub_cancel]

end A157502

/-! ## A157502.P12475773249940851597

`A118011(n+1)-A057211(n+1)`
-/

namespace A157502.P12475773249940851597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118011 (n + 1) - A057211 (n + 1)

end

end A157502.P12475773249940851597

namespace A157502

/-- `A118011(n+1)-A057211(n+1)` -/
def P12475773249940851597.Spec : Prop :=
  ∀ n, P12475773249940851597.a n = A157502 (n + 1)

end A157502

/-! ## A157502.P12003986978338966094

`A182664(n+1)-A088828(n+1)`
-/

namespace A157502.P12003986978338966094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182664 (n + 1) - A088828 (n + 1)

end

end A157502.P12003986978338966094

namespace A157502

/-- `A182664(n+1)-A088828(n+1)` -/
def P12003986978338966094.Spec : Prop :=
  ∀ n, P12003986978338966094.a n = A157502 (n + 1)

theorem P12003986978338966094.correct : P12003986978338966094.Spec := by
  intro n
  simp only [A157502, Nat.add_sub_cancel, A157502.P12003986978338966094.a, A157502.P11939738735497661628.a, A088828, A088828.P3999209263796439479.f2, A088828.P3999209263796439479.f1, A088828.P3999209263796439479.a, A093995, A093995.P5594123937363278598.a, A182664, A182664.P15945012330009958967.a, A211197, A211197.P9481613499707772193.a, A002260, A002260.P9170571874073898642.a, A057211, A057211.P13662060525465798747.a, A000035, A000035.P2023072528413494694.a, A002024, A002024.P11700297927830783882.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A157502

/-! ## A157502.P7975147290113717922

`∪[A036554(n+1), A088829(n+1)]`
-/

namespace A157502.P7975147290113717922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036554 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088829 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A157502.P7975147290113717922

namespace A157502

/-- `∪[A036554(n+1), A088829(n+1)]` -/
def P7975147290113717922.Spec : Prop :=
  ∀ n, (P7975147290113717922.a n : ℤ) = A157502 (n + 1)

end A157502

/-! ## A157502.P2403016377000785723

`∪[A046470(n+1), A088829(n+1)]`
-/

namespace A157502.P2403016377000785723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046470 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088829 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A157502.P2403016377000785723

namespace A157502

/-- `∪[A046470(n+1), A088829(n+1)]` -/
def P2403016377000785723.Spec : Prop :=
  ∀ n, (P2403016377000785723.a n : ℤ) = A157502 (n + 1)

end A157502

/-! ## A157502.P3456918997204488093

`∪[A055044(n+1), A088829(n+1)]`
-/

namespace A157502.P3456918997204488093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055044 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088829 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A157502.P3456918997204488093

namespace A157502

/-- `∪[A055044(n+1), A088829(n+1)]` -/
def P3456918997204488093.Spec : Prop :=
  ∀ n, (P3456918997204488093.a n : ℤ) = A157502 (n + 1)

end A157502

/-! ## A157502.P5806605285363199442

`A004277(A183300(n+1))`
-/

namespace A157502.P5806605285363199442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A183300 (n + 1)).toNat

end

end A157502.P5806605285363199442

namespace A157502

/-- `A004277(A183300(n+1))` -/
def P5806605285363199442.Spec : Prop :=
  ∀ n, P5806605285363199442.a n = A157502 (n + 1)

end A157502

/-! ## A157502.P2208842149025759644

`lt[A093178(n), A002828(n)]`
-/

namespace A157502.P2208842149025759644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A157502.P2208842149025759644

namespace A157502

/-- `lt[A093178(n), A002828(n)]` -/
def P2208842149025759644.Spec : Prop :=
  ∀ n, (P2208842149025759644.a n : ℤ) = A157502 (n + 1)

end A157502

/-! ## A157502.P14531938239072548910

`A005843(A351846(n)+n+1)`
-/

namespace A157502.P14531938239072548910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A351846 n + (n + 1 : ℤ)).toNat

end

end A157502.P14531938239072548910

namespace A157502

/-- `A005843(A351846(n)+n+1)` -/
def P14531938239072548910.Spec : Prop :=
  ∀ n, P14531938239072548910.a n = A157502 (n + 1)

end A157502

/-! ## A157502.P8605674579422248760

`filter[A005843(n+1), A049240(#)]`
-/

namespace A157502.P8605674579422248760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A049240 (f1 j).toNat = 1) n)

end

end A157502.P8605674579422248760

namespace A157502

/-- `filter[A005843(n+1), A049240(#)]` -/
def P8605674579422248760.Spec : Prop :=
  ∀ n, P8605674579422248760.a n = A157502 (n + 1)

end A157502

/-!
# A157503: Expansion of e.g.f. det(I - M) where M_{j,k} = (j*x)^k/k! is the generic entry of a square matrix of order n, with 1 <= j,k <= n.

The programs for A157503, there is no canonical definition to state claims against.
-/

/-! ## A157503.P4115777870412192677

`A017887(n)-A057358(A114160(n))`
-/

namespace A157503.P4115777870412192677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017887 n - A057358 (A114160 n).toNat

end

end A157503.P4115777870412192677

/-!
# A157505: a(n) = 1458*n + 18.

The programs for A157505, the canonical program `A157505.P1143201615845951808` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157505 has offset 1).

The definition of A157505 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A157505.P1143201615845951808

`2*9*(81*(n+1)+1)`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A157505

/-- `2*9*(81*(n+1)+1)` -/
def P1143201615845951808.Spec : Prop :=
  ∀ n, (P1143201615845951808.a n : ℤ) = A157505 (n + 1)

theorem P1143201615845951808.correct : P1143201615845951808.Spec := by
  intro n
  simp only [A157505, Nat.add_sub_cancel]

end A157505

/-!
# A157506: a(n) = 13122*n^2 + 324*n + 1.

The programs for A157506, the canonical program `A157506.P2026269780825984186` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157506 has offset 1).

The definition of A157506 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A157506.P2026269780825984186

`2*A158123(n+1)²-1`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A157506

/-- `2*A158123(n+1)²-1` -/
def P2026269780825984186.Spec : Prop :=
  ∀ n, P2026269780825984186.a n = A157506 (n + 1)

theorem P2026269780825984186.correct : P2026269780825984186.Spec := by
  intro n
  simp only [A157506, Nat.add_sub_cancel]

end A157506

/-! ## A157506.P15316489539283801551

`round(sqrt(A177099(n+1))*A157505(n+1))`
-/

namespace A157506.P15316489539283801551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A177099 (n + 1) : ℝ) * (A157505 (n + 1) : ℝ))

end

end A157506.P15316489539283801551

namespace A157506

/-- `round(sqrt(A177099(n+1))*A157505(n+1))` -/
def P15316489539283801551.Spec : Prop :=
  ∀ n, P15316489539283801551.a n = A157506 (n + 1)

end A157506

/-! ## A157506.P17987164087683035791

`A008683(A002373(n+3))+2*A158123(n+1)²`
-/

namespace A157506.P17987164087683035791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A002373 (n + 3)).toNat + 2 * A158123 (n + 1) ^ 2

end

end A157506.P17987164087683035791

namespace A157506

/-- `A008683(A002373(n+3))+2*A158123(n+1)²` -/
def P17987164087683035791.Spec : Prop :=
  ∀ n, P17987164087683035791.a n = A157506 (n + 1)

end A157506

/-! ## A157506.P8885112380821351378

`A157509(n+1)+Δ[A017162(2*n+1)]`
-/

namespace A157506.P8885112380821351378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017162 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157509 (n + 1) + (f1 (n + 1) - f1 n)

end

end A157506.P8885112380821351378

namespace A157506

/-- `A157509(n+1)+Δ[A017162(2*n+1)]` -/
def P8885112380821351378.Spec : Prop :=
  ∀ n, P8885112380821351378.a n = A157506 (n + 1)

end A157506

/-! ## A157506.P14369133812455973550

`A008683(A126204(n))+2*A158123(n+1)²`
-/

namespace A157506.P14369133812455973550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A126204 n).toNat + 2 * A158123 (n + 1) ^ 2

end

end A157506.P14369133812455973550

namespace A157506

/-- `A008683(A126204(n))+2*A158123(n+1)²` -/
def P14369133812455973550.Spec : Prop :=
  ∀ n, P14369133812455973550.a n = A157506 (n + 1)

end A157506

/-! ## A157506.P2039205434300858534

`A081275(A305548(n+1))`
-/

namespace A157506.P2039205434300858534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081275 (A305548 (n + 1)).toNat

end

end A157506.P2039205434300858534

namespace A157506

/-- `A081275(A305548(n+1))` -/
def P2039205434300858534.Spec : Prop :=
  ∀ n, P2039205434300858534.a n = A157506 (n + 1)

end A157506

/-! ## A157506.P1113028586652269149

`A081275(A008585(9*(n+1)))`
-/

namespace A157506.P1113028586652269149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081275 (A008585 (9 * (n + 1))).toNat

end

end A157506.P1113028586652269149

namespace A157506

/-- `A081275(A008585(9*(n+1)))` -/
def P1113028586652269149.Spec : Prop :=
  ∀ n, P1113028586652269149.a n = A157506 (n + 1)

end A157506

/-! ## A157506.P5125501277082469255

`A056220(9*9*(n+1)+1)`
-/

namespace A157506.P5125501277082469255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056220 (9 * (9 * (n + 1)) + 1)

end

end A157506.P5125501277082469255

namespace A157506

/-- `A056220(9*9*(n+1)+1)` -/
def P5125501277082469255.Spec : Prop :=
  ∀ n, P5125501277082469255.a n = A157506 (n + 1)

theorem P5125501277082469255.correct : P5125501277082469255.Spec := by
  intro n
  simp only [A157506, Nat.add_sub_cancel, A157506.P5125501277082469255.a, A157506.P2026269780825984186.a, A056220, A056220.P5045014962229294692.a, A158123, A158123.P7632629272765465271.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A157506

/-! ## A157506.P6206023444168791754

`A005893(81*(n+1)+1)-3`
-/

namespace A157506.P6206023444168791754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005893 (81 * (n + 1) + 1) - 3

end

end A157506.P6206023444168791754

namespace A157506

/-- `A005893(81*(n+1)+1)-3` -/
def P6206023444168791754.Spec : Prop :=
  ∀ n, P6206023444168791754.a n = A157506 (n + 1)

end A157506

/-! ## A157506.P1602450548688917063

`A074148(A157952(n+1))`
-/

namespace A157506.P1602450548688917063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074148 (A157952 (n + 1)).toNat

end

end A157506.P1602450548688917063

namespace A157506

/-- `A074148(A157952(n+1))` -/
def P1602450548688917063.Spec : Prop :=
  ∀ n, P1602450548688917063.a n = A157506 (n + 1)

end A157506

/-!
# A157507: a(n) = 81*n^2 - 2*n.

The programs for A157507, the canonical program `A157507.P2051790061440857362` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157507 has offset 1).

The definition of A157507 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `81*(n+1)²-2*(n+1)` (program `A157507.P2051790061440857362`, by `A157507.P2051790061440857362.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A157507.P2051790061440857362

`81*(n+1)²-2*(n+1)`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A157507

/-- `81*(n+1)²-2*(n+1)` -/
def P2051790061440857362.Spec : Prop :=
  ∀ n, P2051790061440857362.a n = A157507 (n + 1)

theorem P2051790061440857362.correct : P2051790061440857362.Spec := by
  intro n
  simp only [A157507, Nat.add_sub_cancel]

end A157507

/-! ## A157507.P8450745985621734814

`∑[Δ[A017162(n)]-2]`
-/

namespace A157507.P8450745985621734814
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017162 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A157507.P8450745985621734814

namespace A157507

/-- `∑[Δ[A017162(n)]-2]` -/
def P8450745985621734814.Spec : Prop :=
  ∀ n, P8450745985621734814.a n = A157507 (n + 1)

end A157507

/-! ## A157507.P2403042663665795182

`(n+1)*A362360(n+1)`
-/

namespace A157507.P2403042663665795182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A362360 (n + 1)

end

end A157507.P2403042663665795182

namespace A157507

/-- `(n+1)*A362360(n+1)` -/
def P2403042663665795182.Spec : Prop :=
  ∀ n, P2403042663665795182.a n = A157507 (n + 1)

theorem P2403042663665795182.correct : P2403042663665795182.Spec := by
  intro n
  simp only [A157507, Nat.add_sub_cancel, A157507.P2403042663665795182.a, A157507.P2051790061440857362.a, A362360, A362360.P3423445274838925230.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A157507

/-! ## A157507.P9700270981733228736

`(n+1)*(A158123(n+1)-3)`
-/

namespace A157507.P9700270981733228736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A158123 (n + 1) - 3)

end

end A157507.P9700270981733228736

namespace A157507

/-- `(n+1)*(A158123(n+1)-3)` -/
def P9700270981733228736.Spec : Prop :=
  ∀ n, P9700270981733228736.a n = A157507 (n + 1)

theorem P9700270981733228736.correct : P9700270981733228736.Spec := by
  intro n
  simp only [A157507, Nat.add_sub_cancel, A157507.P9700270981733228736.a, A157507.P2051790061440857362.a, A158123, A158123.P7632629272765465271.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A157507

/-! ## A157507.P13043167823867037629

`abs(2*(n+1)-A017162(n+1))`
-/

namespace A157507.P13043167823867037629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 * (n + 1) : ℤ) - A017162 (n + 1)|

end

end A157507.P13043167823867037629

namespace A157507

/-- `abs(2*(n+1)-A017162(n+1))` -/
def P13043167823867037629.Spec : Prop :=
  ∀ n, P13043167823867037629.a n = A157507 (n + 1)

end A157507

/-! ## A157507.P17083625025629961689

`A158396(n+1)%A158271(n+1)`
-/

namespace A157507.P17083625025629961689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158396 (n + 1)) (A158271 (n + 1))

end

end A157507.P17083625025629961689

namespace A157507

/-- `A158396(n+1)%A158271(n+1)` -/
def P17083625025629961689.Spec : Prop :=
  ∀ n, P17083625025629961689.a n = A157507 (n + 1)

end A157507

/-! ## A157507.P4428555085941449925

`∑[Δ[A008591(n)²]-2]`
-/

namespace A157507.P4428555085941449925
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008591 n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A157507.P4428555085941449925

namespace A157507

/-- `∑[Δ[A008591(n)²]-2]` -/
def P4428555085941449925.Spec : Prop :=
  ∀ n, P4428555085941449925.a n = A157507 (n + 1)

end A157507

/-! ## A157507.P10684736682062571060

`∑[A362360(2*n+1)]`
-/

namespace A157507.P10684736682062571060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362360 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A157507.P10684736682062571060

namespace A157507

/-- `∑[A362360(2*n+1)]` -/
def P10684736682062571060.Spec : Prop :=
  ∀ n, P10684736682062571060.a n = A157507 (n + 1)

end A157507

/-! ## A157507.P6203929006833640601

`A177099(2*(n+1))%A177099(n+1)`
-/

namespace A157507.P6203929006833640601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A177099 (2 * (n + 1))) (A177099 (n + 1))

end

end A157507.P6203929006833640601

namespace A157507

/-- `A177099(2*(n+1))%A177099(n+1)` -/
def P6203929006833640601.Spec : Prop :=
  ∀ n, P6203929006833640601.a n = A157507 (n + 1)

end A157507

/-! ## A157507.P4839637807705577041

`(n+1)*A017245(A017257(n))`
-/

namespace A157507.P4839637807705577041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A017245 (A017257 n).toNat

end

end A157507.P4839637807705577041

namespace A157507

/-- `(n+1)*A017245(A017257(n))` -/
def P4839637807705577041.Spec : Prop :=
  ∀ n, P4839637807705577041.a n = A157507 (n + 1)

end A157507

/-! ## A157507.P9799333964469845481

`(n+1)*A017245(A016789(A016789(n)))`
-/

namespace A157507.P9799333964469845481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A017245 (A016789 (A016789 n).toNat).toNat

end

end A157507.P9799333964469845481

namespace A157507

/-- `(n+1)*A017245(A016789(A016789(n)))` -/
def P9799333964469845481.Spec : Prop :=
  ∀ n, P9799333964469845481.a n = A157507 (n + 1)

end A157507

/-! ## A157507.P7060023914213192469

`∑[A017245(A017257(2*n))]`
-/

namespace A157507.P7060023914213192469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017245 (A017257 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A157507.P7060023914213192469

namespace A157507

/-- `∑[A017245(A017257(2*n))]` -/
def P7060023914213192469.Spec : Prop :=
  ∀ n, P7060023914213192469.a n = A157507 (n + 1)

end A157507

/-! ## A157507.P16946177008886335035

`∑[A017245(A017245(2*n)+1)]`
-/

namespace A157507.P16946177008886335035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017245 (A017245 (2 * n) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A157507.P16946177008886335035

namespace A157507

/-- `∑[A017245(A017245(2*n)+1)]` -/
def P16946177008886335035.Spec : Prop :=
  ∀ n, P16946177008886335035.a n = A157507 (n + 1)

end A157507

/-! ## A157507.P13421443371288482905

`∑[A008591(A008591(2*n+1))-2]`
-/

namespace A157507.P13421443371288482905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008591 (A008591 (2 * n + 1)).toNat - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A157507.P13421443371288482905

namespace A157507

/-- `∑[A008591(A008591(2*n+1))-2]` -/
def P13421443371288482905.Spec : Prop :=
  ∀ n, P13421443371288482905.a n = A157507 (n + 1)

end A157507

/-! ## A157507.P5647545589514276674

`∑[A017245(A016789(A016789(2*n)))]`
-/

namespace A157507.P5647545589514276674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017245 (A016789 (A016789 (2 * n)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A157507.P5647545589514276674

namespace A157507

/-- `∑[A017245(A016789(A016789(2*n)))]` -/
def P5647545589514276674.Spec : Prop :=
  ∀ n, P5647545589514276674.a n = A157507 (n + 1)

end A157507

/-! ## A157507.P15940123336045578216

`(n+1)*A017245(A006370(A350522(n)))`
-/

namespace A157507.P15940123336045578216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A017245 (A006370 (A350522 n).toNat).toNat

end

end A157507.P15940123336045578216

namespace A157507

/-- `(n+1)*A017245(A006370(A350522(n)))` -/
def P15940123336045578216.Spec : Prop :=
  ∀ n, P15940123336045578216.a n = A157507 (n + 1)

end A157507

/-! ## A157507.P10942384700638674987

`(n+1)*A310857(A008486(A008458(n+1)))`
-/

namespace A157507.P10942384700638674987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A310857 (A008486 (A008458 (n + 1)).toNat).toNat

end

end A157507.P10942384700638674987

namespace A157507

/-- `(n+1)*A310857(A008486(A008458(n+1)))` -/
def P10942384700638674987.Spec : Prop :=
  ∀ n, P10942384700638674987.a n = A157507 (n + 1)

end A157507

/-! ## A157507.P11675844713769040029

`∑[A228949(A017209(A017209(n)))]`
-/

namespace A157507.P11675844713769040029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228949 (A017209 (A017209 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A157507.P11675844713769040029

namespace A157507

/-- `∑[A228949(A017209(A017209(n)))]` -/
def P11675844713769040029.Spec : Prop :=
  ∀ n, P11675844713769040029.a n = A157507 (n + 1)

end A157507

/-!
# A157508: a(n) = 1458*n - 18.

The programs for A157508, the canonical program `A157508.P10745701403918910345` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157508 has offset 1).

The definition of A157508 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A157508.P10745701403918910345

`18*(9*9*n+80)`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A157508

/-- `18*(9*9*n+80)` -/
def P10745701403918910345.Spec : Prop :=
  ∀ n, (P10745701403918910345.a n : ℤ) = A157508 (n + 1)

theorem P10745701403918910345.correct : P10745701403918910345.Spec := by
  intro n
  simp only [A157508, Nat.add_sub_cancel]

end A157508

/-!
# A157509: a(n) = 13122*n^2 - 324*n + 1.

The programs for A157509, the canonical program `A157509.P5075584753381153263` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157509 has offset 1).

The definition of A157509 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A157509.P5075584753381153263

`2*(A157953(n+1)/(n+1))²-1`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A157509

/-- `2*(A157953(n+1)/(n+1))²-1` -/
def P5075584753381153263.Spec : Prop :=
  ∀ n, P5075584753381153263.a n = (A157509 (n + 1) : ℚ)

end A157509

/-! ## A157509.P1427825946263273409

`round(sqrt(A157507(n+1))*A157508(n+1))`
-/

namespace A157509.P1427825946263273409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A157507 (n + 1) : ℝ) * (A157508 (n + 1) : ℝ))

end

end A157509.P1427825946263273409

namespace A157509

/-- `round(sqrt(A157507(n+1))*A157508(n+1))` -/
def P1427825946263273409.Spec : Prop :=
  ∀ n, P1427825946263273409.a n = A157509 (n + 1)

end A157509

/-! ## A157509.P3467679128232735981

`2*A017258(A017257(n))-1`
-/

namespace A157509.P3467679128232735981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A017258 (A017257 n).toNat - 1

end

end A157509.P3467679128232735981

namespace A157509

/-- `2*A017258(A017257(n))-1` -/
def P3467679128232735981.Spec : Prop :=
  ∀ n, P3467679128232735981.a n = A157509 (n + 1)

end A157509

/-! ## A157509.P16794704544467127626

`A008683(A215161(n+1))+2*A017258(A017257(n))`
-/

namespace A157509.P16794704544467127626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A215161 (n + 1)).toNat + 2 * A017258 (A017257 n).toNat

end

end A157509.P16794704544467127626

namespace A157509

/-- `A008683(A215161(n+1))+2*A017258(A017257(n))` -/
def P16794704544467127626.Spec : Prop :=
  ∀ n, P16794704544467127626.a n = A157509 (n + 1)

end A157509

/-! ## A157509.P16297356823011087743

`A057078(12*n+11)+2*A017258(A017257(n))`
-/

namespace A157509.P16297356823011087743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057078 (12 * n + 11) + 2 * A017258 (A017257 n).toNat

end

end A157509.P16297356823011087743

namespace A157509

/-- `A057078(12*n+11)+2*A017258(A017257(n))` -/
def P16297356823011087743.Spec : Prop :=
  ∀ n, P16297356823011087743.a n = A157509 (n + 1)

end A157509

/-! ## A157509.P6637112606788808276

`A008683(A197298(n+1))+2*A017258(A017257(n))`
-/

namespace A157509.P6637112606788808276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A197298 (n + 1)).toNat + 2 * A017258 (A017257 n).toNat

end

end A157509.P6637112606788808276

namespace A157509

/-- `A008683(A197298(n+1))+2*A017258(A017257(n))` -/
def P6637112606788808276.Spec : Prop :=
  ∀ n, P6637112606788808276.a n = A157509 (n + 1)

end A157509

/-! ## A157509.P7201243306481569670

`A056220(9*9*(n+1)-1)`
-/

namespace A157509.P7201243306481569670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056220 (9 * (9 * (n + 1)) - 1)

end

end A157509.P7201243306481569670

namespace A157509

/-- `A056220(9*9*(n+1)-1)` -/
def P7201243306481569670.Spec : Prop :=
  ∀ n, P7201243306481569670.a n = A157509 (n + 1)

end A157509

/-! ## A157509.P14573576499606738592

`A005893(81*(n+1)-1)-3`
-/

namespace A157509.P14573576499606738592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005893 (81 * (n + 1) - 1) - 3

end

end A157509.P14573576499606738592

namespace A157509

/-- `A005893(81*(n+1)-1)-3` -/
def P14573576499606738592.Spec : Prop :=
  ∀ n, P14573576499606738592.a n = A157509 (n + 1)

end A157509

/-! ## A157509.P1697538921767754183

`A105638(9*(17*(n+1)+n+1))`
-/

namespace A157509.P1697538921767754183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105638 (9 * (17 * (n + 1) + (n + 1)))

end

end A157509.P1697538921767754183

namespace A157509

/-- `A105638(9*(17*(n+1)+n+1))` -/
def P1697538921767754183.Spec : Prop :=
  ∀ n, P1697538921767754183.a n = A157509 (n + 1)

end A157509

/-! ## A157509.P7708457399729689608

`A213034(A157954(n+1))`
-/

namespace A157509.P7708457399729689608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213034 (A157954 (n + 1)).toNat

end

end A157509.P7708457399729689608

namespace A157509

/-- `A213034(A157954(n+1))` -/
def P7708457399729689608.Spec : Prop :=
  ∀ n, P7708457399729689608.a n = A157509 (n + 1)

end A157509

/-!
# A157510: a(n) = 1000*n + 20.

The programs for A157510, the canonical program `A157510.P4554569333351037083` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157510 has offset 1).

The definition of A157510 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1000*(n+1)+20` (program `A157510.P4554569333351037083`, by `A157510.P4554569333351037083.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A157510.P4554569333351037083

`1000*(n+1)+20`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A157510

/-- `1000*(n+1)+20` -/
def P4554569333351037083.Spec : Prop :=
  ∀ n, (P4554569333351037083.a n : ℤ) = A157510 (n + 1)

theorem P4554569333351037083.correct : P4554569333351037083.Spec := by
  intro n
  simp only [A157510, Nat.add_sub_cancel]

end A157510

/-!
# A157511: a(n) = 5000*n^2 + 200*n + 1.

The programs for A157511, the canonical program `A157511.P14381470877956374521` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157511 has offset 1).

The definition of A157511 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A157511.P14381470877956374521

`2*(5*10*n+51)²-1`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A157511

/-- `2*(5*10*n+51)²-1` -/
def P14381470877956374521.Spec : Prop :=
  ∀ n, P14381470877956374521.a n = A157511 (n + 1)

theorem P14381470877956374521.correct : P14381470877956374521.Spec := by
  intro n
  simp only [A157511, Nat.add_sub_cancel]

end A157511

/-! ## A157511.P2931024007983362163

`A154375(2*(n+1))`
-/

namespace A157511.P2931024007983362163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154375 (2 * (n + 1))

end

end A157511.P2931024007983362163

namespace A157511

/-- `A154375(2*(n+1))` -/
def P2931024007983362163.Spec : Prop :=
  ∀ n, P2931024007983362163.a n = A157511 (n + 1)

end A157511

/-! ## A157511.P14623472160516946820

`record[A154375(A014681(n+1))]`
-/

namespace A157511.P14623472160516946820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154375 (A014681 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A157511.P14623472160516946820

namespace A157511

/-- `record[A154375(A014681(n+1))]` -/
def P14623472160516946820.Spec : Prop :=
  ∀ n, P14623472160516946820.a n = A157511 (n + 1)

end A157511

/-! ## A157511.P5055315360810639696

`A069129(A158060(n+1))`
-/

namespace A157511.P5055315360810639696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069129 (A158060 (n + 1)).toNat

end

end A157511.P5055315360810639696

namespace A157511

/-- `A069129(A158060(n+1))` -/
def P5055315360810639696.Spec : Prop :=
  ∀ n, P5055315360810639696.a n = A157511 (n + 1)

end A157511

/-! ## A157511.P4654999915149758173

`A069129(A008607(n+1)+1)`
-/

namespace A157511.P4654999915149758173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069129 (A008607 (n + 1) + 1).toNat

end

end A157511.P4654999915149758173

namespace A157511

/-- `A069129(A008607(n+1)+1)` -/
def P4654999915149758173.Spec : Prop :=
  ∀ n, P4654999915149758173.a n = A157511 (n + 1)

end A157511

/-! ## A157511.P6747497514004407624

`∩[A069129(n+1), A154375(n+1)]`
-/

namespace A157511.P6747497514004407624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069129 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154375 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A157511.P6747497514004407624

namespace A157511

/-- `∩[A069129(n+1), A154375(n+1)]` -/
def P6747497514004407624.Spec : Prop :=
  ∀ n, (P6747497514004407624.a n : ℤ) = A157511 (n + 1)

end A157511

/-! ## A157511.P1955889610590403212

`∩[A154375(n+1), A249356(n+1)]`
-/

namespace A157511.P1955889610590403212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154375 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249356 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A157511.P1955889610590403212

namespace A157511

/-- `∩[A154375(n+1), A249356(n+1)]` -/
def P1955889610590403212.Spec : Prop :=
  ∀ n, (P1955889610590403212.a n : ℤ) = A157511 (n + 1)

end A157511

/-! ## A157511.P4138337365180708393

`A249356(A215137(2*n)+A158057(n+3))`
-/

namespace A157511.P4138337365180708393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249356 (A215137 (2 * n) + A158057 (n + 3)).toNat

end

end A157511.P4138337365180708393

namespace A157511

/-- `A249356(A215137(2*n)+A158057(n+3))` -/
def P4138337365180708393.Spec : Prop :=
  ∀ n, P4138337365180708393.a n = A157511 (n + 1)

end A157511

/-! ## A157511.P868900221042804094

`A056220(5*10*(n+1)+1)`
-/

namespace A157511.P868900221042804094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056220 (5 * (10 * (n + 1)) + 1)

end

end A157511.P868900221042804094

namespace A157511

/-- `A056220(5*10*(n+1)+1)` -/
def P868900221042804094.Spec : Prop :=
  ∀ n, P868900221042804094.a n = A157511 (n + 1)

theorem P868900221042804094.correct : P868900221042804094.Spec := by
  intro n
  simp only [A157511, Nat.add_sub_cancel, A157511.P868900221042804094.a, A157511.P14381470877956374521.a, A056220, A056220.P5045014962229294692.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A157511

/-! ## A157511.P5190068454987524395

`A077221(2*25*(n+1)+1)`
-/

namespace A157511.P5190068454987524395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077221 (2 * (25 * (n + 1)) + 1)

end

end A157511.P5190068454987524395

namespace A157511

/-- `A077221(2*25*(n+1)+1)` -/
def P5190068454987524395.Spec : Prop :=
  ∀ n, P5190068454987524395.a n = A157511 (n + 1)

end A157511

/-!
# A157512: Partial sums of A157502.

The programs for A157512, the canonical program `A157512.P12851112804959864328` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157512 has offset 1).

The definition of A157512 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A157512.P15466966411633427575

`∑[comp[n^gcd(2, n)]]`
-/

namespace A157512.P15466966411633427575
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ Nat.gcd 2 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A157512.P15466966411633427575

namespace A157512

/-- `∑[comp[n^gcd(2, n)]]` -/
def P15466966411633427575.Spec : Prop :=
  ∀ n, (P15466966411633427575.a n : ℤ) = A157512 (n + 1)

end A157512

/-! ## A157512.P10521672159912294295

`∑[2*comp[2*n²]]`
-/

namespace A157512.P10521672159912294295
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A157512.P10521672159912294295

namespace A157512

/-- `∑[2*comp[2*n²]]` -/
def P10521672159912294295.Spec : Prop :=
  ∀ n, (P10521672159912294295.a n : ℤ) = A157512 (n + 1)

end A157512

/-! ## A157512.P7656235089593058587

`2*∑[comp[(n+1)*∑[n]%(n+1)]]`
-/

namespace A157512.P7656235089593058587
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * ((∑ j ∈ Finset.range (n + 1), f3 j) % (n + 1))

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A157512.P7656235089593058587

namespace A157512

/-- `2*∑[comp[(n+1)*∑[n]%(n+1)]]` -/
def P7656235089593058587.Spec : Prop :=
  ∀ n, (P7656235089593058587.a n : ℤ) = A157512 (n + 1)

end A157512

/-! ## A157512.P17456355999630625972

`2*∑[A183300(n+1)]`
-/

namespace A157512.P17456355999630625972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183300 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A157512.P17456355999630625972

namespace A157512

/-- `2*∑[A183300(n+1)]` -/
def P17456355999630625972.Spec : Prop :=
  ∀ n, P17456355999630625972.a n = A157512 (n + 1)

end A157512

/-! ## A157512.P12851112804959864328

`and(-2, ∑[A157502(n+1)])`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A157512

/-- `and(-2, ∑[A157502(n+1)])` -/
def P12851112804959864328.Spec : Prop :=
  ∀ n, P12851112804959864328.a n = A157512 (n + 1)

theorem P12851112804959864328.correct : P12851112804959864328.Spec := by
  intro n
  simp only [A157512, Nat.add_sub_cancel]

end A157512

/-! ## A157512.P16674387505630406769

`2*∑[comp[n*A004277(n)]]`
-/

namespace A157512.P16674387505630406769
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A004277 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A157512.P16674387505630406769

namespace A157512

/-- `2*∑[comp[n*A004277(n)]]` -/
def P16674387505630406769.Spec : Prop :=
  ∀ n, (P16674387505630406769.a n : ℤ) = A157512 (n + 1)

end A157512

/-! ## A157512.P15343127563444918518

`2*∑[comp[A005893(xor(1, n))-3]+1]`
-/

namespace A157512.P15343127563444918518
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005893 (Nat.xor 1 n) - 3

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A157512.P15343127563444918518

namespace A157512

/-- `2*∑[comp[A005893(xor(1, n))-3]+1]` -/
def P15343127563444918518.Spec : Prop :=
  ∀ n, (P15343127563444918518.a n : ℤ) = A157512 (n + 1)

end A157512

/-! ## A157512.P15588053795966921301

`∑[A004277(comp[A004277(n²)])]+1`
-/

namespace A157512.P15588053795966921301
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (n ^ 2)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A157512.P15588053795966921301

namespace A157512

/-- `∑[A004277(comp[A004277(n²)])]+1` -/
def P15588053795966921301.Spec : Prop :=
  ∀ n, P15588053795966921301.a n = A157512 (n + 1)

end A157512

/-! ## A157512.P6705071961118652206

`2*∑[eq[0, char[2*n²]]]`
-/

namespace A157512.P6705071961118652206
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n ^ 2

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f4 j = n then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A157512.P6705071961118652206

namespace A157512

/-- `2*∑[eq[0, char[2*n²]]]` -/
def P6705071961118652206.Spec : Prop :=
  ∀ n, (P6705071961118652206.a n : ℤ) = A157512 (n + 1)

end A157512

/-! ## A157512.P7172179316379893282

`2*∑[lt[char[2*n²], 1]]`
-/

namespace A157512.P7172179316379893282
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n ^ 2

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f4 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A157512.P7172179316379893282

namespace A157512

/-- `2*∑[lt[char[2*n²], 1]]` -/
def P7172179316379893282.Spec : Prop :=
  ∀ n, (P7172179316379893282.a n : ℤ) = A157512 (n + 1)

end A157512

/-! ## A157512.P13367159174842810787

`A004277(∑[comp[2*n²]])`
-/

namespace A157512.P13367159174842810787
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A157512.P13367159174842810787

namespace A157512

/-- `A004277(∑[comp[2*n²]])` -/
def P13367159174842810787.Spec : Prop :=
  ∀ n, P13367159174842810787.a n = A157512 (n + 1)

end A157512

/-! ## A157512.P13411260888022657000

`A005843(∑[comp[2*n²]])`
-/

namespace A157512.P13411260888022657000
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A157512.P13411260888022657000

namespace A157512

/-- `A005843(∑[comp[2*n²]])` -/
def P13411260888022657000.Spec : Prop :=
  ∀ n, P13411260888022657000.a n = A157512 (n + 1)

end A157512

/-!
# A157514: a(n) = 25*n^2 - n.

The programs for A157514, the canonical program `A157514.P10444114848304295552` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157514 has offset 1).

The definition of A157514 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `25*(n+1)²-(n+1)` (program `A157514.P10444114848304295552`, by `A157514.P10444114848304295552.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A157514.P10444114848304295552

`25*(n+1)²-(n+1)`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A157514

/-- `25*(n+1)²-(n+1)` -/
def P10444114848304295552.Spec : Prop :=
  ∀ n, P10444114848304295552.a n = A157514 (n + 1)

theorem P10444114848304295552.correct : P10444114848304295552.Spec := by
  intro n
  simp only [A157514, Nat.add_sub_cancel]

end A157514

/-! ## A157514.P6933244741972359057

`∑[a(n-1)+50]` with `a(0)=24`
-/

namespace A157514.P6933244741972359057
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [24] fun n f1 =>
  f1 (n - 1) + 50

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A157514.P6933244741972359057

namespace A157514

/-- `∑[a(n-1)+50]` -/
def P6933244741972359057.Spec : Prop :=
  ∀ n, (P6933244741972359057.a n : ℤ) = A157514 (n + 1)

end A157514

/-! ## A157514.P14963228182271576181

`record[(5*(1-n))²-abs(1-n)]`
-/

namespace A157514.P14963228182271576181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * (1 - (n : ℤ))) ^ 2 - |1 - (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A157514.P14963228182271576181

namespace A157514

/-- `record[(5*(1-n))²-abs(1-n)]` -/
def P14963228182271576181.Spec : Prop :=
  ∀ n, P14963228182271576181.a n = A157514 (n + 1)

end A157514

/-! ## A157514.P4410771800695679303

`∑[A053742(n)-1]`
-/

namespace A157514.P4410771800695679303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053742 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A157514.P4410771800695679303

namespace A157514

/-- `∑[A053742(n)-1]` -/
def P4410771800695679303.Spec : Prop :=
  ∀ n, P4410771800695679303.a n = A157514 (n + 1)

end A157514

/-! ## A157514.P12639704239911552794

`∑[A053741(n)+4]`
-/

namespace A157514.P12639704239911552794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053741 n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A157514.P12639704239911552794

namespace A157514

/-- `∑[A053741(n)+4]` -/
def P12639704239911552794.Spec : Prop :=
  ∀ n, P12639704239911552794.a n = A157514 (n + 1)

end A157514

/-! ## A157514.P15630213073106404664

`floor(A157919(n+1)/2-n)`
-/

namespace A157514.P15630213073106404664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A157919 (n + 1) : ℚ) / 2 - (n : ℚ)⌋

end

end A157514.P15630213073106404664

namespace A157514

/-- `floor(A157919(n+1)/2-n)` -/
def P15630213073106404664.Spec : Prop :=
  ∀ n, P15630213073106404664.a n = A157514 (n + 1)

end A157514

/-! ## A157514.P18089963945327268572

`(n+1)*(A008607(n+1)-1)`
-/

namespace A157514.P18089963945327268572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A008607 (n + 1) - 1)

end

end A157514.P18089963945327268572

namespace A157514

/-- `(n+1)*(A008607(n+1)-1)` -/
def P18089963945327268572.Spec : Prop :=
  ∀ n, P18089963945327268572.a n = A157514 (n + 1)

theorem P18089963945327268572.correct : P18089963945327268572.Spec := by
  intro n
  simp only [A157514, Nat.add_sub_cancel, A157514.P18089963945327268572.a, A157514.P10444114848304295552.a, A008607, A008607.P4608234580437606002.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A157514

/-! ## A157514.P6462883295826022979

`2*(A178572(n+1)+n+1)`
-/

namespace A157514.P6462883295826022979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A178572 (n + 1) + (n + 1 : ℤ))

end

end A157514.P6462883295826022979

namespace A157514

/-- `2*(A178572(n+1)+n+1)` -/
def P6462883295826022979.Spec : Prop :=
  ∀ n, P6462883295826022979.a n = A157514 (n + 1)

end A157514

/-! ## A157514.P10160446113144537732

`(n+1)*(A158060(n+1)-2)`
-/

namespace A157514.P10160446113144537732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A158060 (n + 1) - 2)

end

end A157514.P10160446113144537732

namespace A157514

/-- `(n+1)*(A158060(n+1)-2)` -/
def P10160446113144537732.Spec : Prop :=
  ∀ n, P10160446113144537732.a n = A157514 (n + 1)

theorem P10160446113144537732.correct : P10160446113144537732.Spec := by
  intro n
  simp only [A157514, Nat.add_sub_cancel, A157514.P10160446113144537732.a, A157514.P10444114848304295552.a, A158060, A158060.P3137405967941569339.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A157514

/-! ## A157514.P16404997903737622785

`(n+1)*(A183010(n+1)+n+1)`
-/

namespace A157514.P16404997903737622785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A183010 (n + 1) + (n + 1 : ℤ))

end

end A157514.P16404997903737622785

namespace A157514

/-- `(n+1)*(A183010(n+1)+n+1)` -/
def P16404997903737622785.Spec : Prop :=
  ∀ n, P16404997903737622785.a n = A157514 (n + 1)

theorem P16404997903737622785.correct : P16404997903737622785.Spec := by
  intro n
  simp only [A157514, Nat.add_sub_cancel, A157514.P16404997903737622785.a, A157514.P10444114848304295552.a, A183010, A183010.P1615208601139071033.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A157514

/-! ## A157514.P4246807528412760948

`A156814(n+1)%A055438(n+1)`
-/

namespace A157514.P4246807528412760948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A156814 (n + 1)) (A055438 (n + 1))

end

end A157514.P4246807528412760948

namespace A157514

/-- `A156814(n+1)%A055438(n+1)` -/
def P4246807528412760948.Spec : Prop :=
  ∀ n, P4246807528412760948.a n = A157514 (n + 1)

end A157514

/-! ## A157514.P2052480085992796329

`A158218(n+1)%A156635(n+1)`
-/

namespace A157514.P2052480085992796329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158218 (n + 1)) (A156635 (n + 1))

end

end A157514.P2052480085992796329

namespace A157514

/-- `A158218(n+1)%A156635(n+1)` -/
def P2052480085992796329.Spec : Prop :=
  ∀ n, P2052480085992796329.a n = A157514 (n + 1)

end A157514

/-! ## A157514.P401858896892367826

`A157857(n+1)%A165798(n+1)`
-/

namespace A157514.P401858896892367826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A157857 (n + 1)) (A165798 (n + 1))

end

end A157514.P401858896892367826

namespace A157514

/-- `A157857(n+1)%A165798(n+1)` -/
def P401858896892367826.Spec : Prop :=
  ∀ n, P401858896892367826.a n = A157514 (n + 1)

end A157514

/-! ## A157514.P13528983897617747851

`A158127(n+1)%A173089(n+1)`
-/

namespace A157514.P13528983897617747851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158127 (n + 1)) (A173089 (n + 1))

end

end A157514.P13528983897617747851

namespace A157514

/-- `A158127(n+1)%A173089(n+1)` -/
def P13528983897617747851.Spec : Prop :=
  ∀ n, P13528983897617747851.a n = A157514 (n + 1)

end A157514

/-! ## A157514.P8384043096731000194

`A173275(n+1)%A158132(n+1)`
-/

namespace A157514.P8384043096731000194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A173275 (n + 1)) (A158132 (n + 1))

end

end A157514.P8384043096731000194

namespace A157514

/-- `A173275(n+1)%A158132(n+1)` -/
def P8384043096731000194.Spec : Prop :=
  ∀ n, P8384043096731000194.a n = A157514 (n + 1)

end A157514

/-! ## A157514.P7471538255999595793

`A192491(n+1)%A157286(n+1)`
-/

namespace A157514.P7471538255999595793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A192491 (n + 1)) (A157286 (n + 1))

end

end A157514.P7471538255999595793

namespace A157514

/-- `A192491(n+1)%A157286(n+1)` -/
def P7471538255999595793.Spec : Prop :=
  ∀ n, P7471538255999595793.a n = A157514 (n + 1)

end A157514

/-! ## A157514.P5010474080639108356

`2*A022282(n+1)`
-/

namespace A157514.P5010474080639108356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A022282 (n + 1)

end

end A157514.P5010474080639108356

namespace A157514

/-- `2*A022282(n+1)` -/
def P5010474080639108356.Spec : Prop :=
  ∀ n, P5010474080639108356.a n = A157514 (n + 1)

end A157514

/-! ## A157514.P17997853486722127750

`2*(A022283(n+1)-(n+1))`
-/

namespace A157514.P17997853486722127750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A022283 (n + 1) - (n + 1 : ℤ))

end

end A157514.P17997853486722127750

namespace A157514

/-- `2*(A022283(n+1)-(n+1))` -/
def P17997853486722127750.Spec : Prop :=
  ∀ n, P17997853486722127750.a n = A157514 (n + 1)

end A157514

/-! ## A157514.P8622535167003974754

`(n+1)*(A008606(n+1)+n)`
-/

namespace A157514.P8622535167003974754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A008606 (n + 1) + (n : ℤ))

end

end A157514.P8622535167003974754

namespace A157514

/-- `(n+1)*(A008606(n+1)+n)` -/
def P8622535167003974754.Spec : Prop :=
  ∀ n, P8622535167003974754.a n = A157514 (n + 1)

theorem P8622535167003974754.correct : P8622535167003974754.Spec := by
  intro n
  simp only [A157514, Nat.add_sub_cancel, A157514.P8622535167003974754.a, A157514.P10444114848304295552.a, A008606, A008606.P331422733914118461.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A157514

/-! ## A157514.P9799560457961120930

`A154376(2*(n+1))/4`
-/

namespace A157514.P9799560457961120930
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A154376 (2 * (n + 1)) : ℚ) / 4

end

end A157514.P9799560457961120930

namespace A157514

/-- `A154376(2*(n+1))/4` -/
def P9799560457961120930.Spec : Prop :=
  ∀ n, P9799560457961120930.a n = (A157514 (n + 1) : ℚ)

end A157514

/-!
# A157515: a(n) = 1000*n - 20.

The programs for A157515, the canonical program `A157515.P11988214795206402977` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157515 has offset 1).

The definition of A157515 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1000*(n+1)-20` (program `A157515.P11988214795206402977`, by `A157515.P11988214795206402977.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A157515.P11988214795206402977

`1000*(n+1)-20`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A157515

/-- `1000*(n+1)-20` -/
def P11988214795206402977.Spec : Prop :=
  ∀ n, P11988214795206402977.a n = A157515 (n + 1)

theorem P11988214795206402977.correct : P11988214795206402977.Spec := by
  intro n
  simp only [A157515, Nat.add_sub_cancel]

end A157515

/-!
# A157516: a(n) = 5000*n^2 - 200*n + 1.

The programs for A157516, the canonical program `A157516.P9006486574421224165` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157516 has offset 1).

The definition of A157516 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A157516.P9006486574421224165

`2*(5*10*n+49)²-1`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A157516

/-- `2*(5*10*n+49)²-1` -/
def P9006486574421224165.Spec : Prop :=
  ∀ n, P9006486574421224165.a n = A157516 (n + 1)

theorem P9006486574421224165.correct : P9006486574421224165.Spec := by
  intro n
  simp only [A157516, Nat.add_sub_cancel]

end A157516

/-! ## A157516.P12723897090315376099

`A154374(2*(n+1))`
-/

namespace A157516.P12723897090315376099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154374 (2 * (n + 1))

end

end A157516.P12723897090315376099

namespace A157516

/-- `A154374(2*(n+1))` -/
def P12723897090315376099.Spec : Prop :=
  ∀ n, P12723897090315376099.a n = A157516 (n + 1)

end A157516

/-! ## A157516.P14469911541651648404

`record[A154374(lcm(2, n+1)-n)]`
-/

namespace A157516.P14469911541651648404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154374 (Nat.lcm 2 (n + 1) - n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A157516.P14469911541651648404

namespace A157516

/-- `record[A154374(lcm(2, n+1)-n)]` -/
def P14469911541651648404.Spec : Prop :=
  ∀ n, P14469911541651648404.a n = A157516 (n + 1)

end A157516

/-! ## A157516.P6858256796288603359

`record[A154374(3-A020639(n+1)+n)]`
-/

namespace A157516.P6858256796288603359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154374 (3 - A020639 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A157516.P6858256796288603359

namespace A157516

/-- `record[A154374(3-A020639(n+1)+n)]` -/
def P6858256796288603359.Spec : Prop :=
  ∀ n, P6858256796288603359.a n = A157516 (n + 1)

end A157516

/-! ## A157516.P9622186853121415909

`ceil(sqrt(A154376(2*(n+1)))*A154378(2*(n+1)))`
-/

namespace A157516.P9622186853121415909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A154376 (2 * (n + 1)) : ℝ) * (A154378 (2 * (n + 1)) : ℝ)⌉

end

end A157516.P9622186853121415909

namespace A157516

/-- `ceil(sqrt(A154376(2*(n+1)))*A154378(2*(n+1)))` -/
def P9622186853121415909.Spec : Prop :=
  ∀ n, P9622186853121415909.a n = A157516 (n + 1)

end A157516

/-! ## A157516.P5274867353264468574

`A069129(A008607(n+1))`
-/

namespace A157516.P5274867353264468574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069129 (A008607 (n + 1)).toNat

end

end A157516.P5274867353264468574

namespace A157516

/-- `A069129(A008607(n+1))` -/
def P5274867353264468574.Spec : Prop :=
  ∀ n, P5274867353264468574.a n = A157516 (n + 1)

end A157516

/-! ## A157516.P17556103852666149031

`A069129(A158060(n+1)-1)`
-/

namespace A157516.P17556103852666149031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069129 (A158060 (n + 1) - 1).toNat

end

end A157516.P17556103852666149031

namespace A157516

/-- `A069129(A158060(n+1)-1)` -/
def P17556103852666149031.Spec : Prop :=
  ∀ n, P17556103852666149031.a n = A157516 (n + 1)

end A157516

/-! ## A157516.P13148934184899715614

`∩[A069129(n+1), A154374(n+1)]`
-/

namespace A157516.P13148934184899715614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069129 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154374 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A157516.P13148934184899715614

namespace A157516

/-- `∩[A069129(n+1), A154374(n+1)]` -/
def P13148934184899715614.Spec : Prop :=
  ∀ n, (P13148934184899715614.a n : ℤ) = A157516 (n + 1)

end A157516

/-! ## A157516.P4625344855942674473

`A069129(A123296(2*n+1)/(2*n+1))`
-/

namespace A157516.P4625344855942674473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069129 (SequenceMachineLib.roundAway ((A123296 (2 * n + 1) : ℚ) / (2 * n + 1 : ℚ))).toNat

end

end A157516.P4625344855942674473

namespace A157516

/-- `A069129(A123296(2*n+1)/(2*n+1))` -/
def P4625344855942674473.Spec : Prop :=
  ∀ n, P4625344855942674473.a n = A157516 (n + 1)

end A157516

/-! ## A157516.P12963448176961782260

`A069129(A008706(A008706(n+1)))`
-/

namespace A157516.P12963448176961782260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069129 (A008706 (A008706 (n + 1)).toNat).toNat

end

end A157516.P12963448176961782260

namespace A157516

/-- `A069129(A008706(A008706(n+1)))` -/
def P12963448176961782260.Spec : Prop :=
  ∀ n, P12963448176961782260.a n = A157516 (n + 1)

end A157516

/-! ## A157516.P18386416292697496281

`A069129(A164015(n+1)-A164015(n))`
-/

namespace A157516.P18386416292697496281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069129 (A164015 (n + 1) - A164015 n).toNat

end

end A157516.P18386416292697496281

namespace A157516

/-- `A069129(A164015(n+1)-A164015(n))` -/
def P18386416292697496281.Spec : Prop :=
  ∀ n, P18386416292697496281.a n = A157516 (n + 1)

end A157516

/-! ## A157516.P12564866152279821853

`A056220(Δ[A001545(n)]-1)`
-/

namespace A157516.P12564866152279821853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001545 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056220 (f1 (n + 1) - f1 n - 1).toNat

end

end A157516.P12564866152279821853

namespace A157516

/-- `A056220(Δ[A001545(n)]-1)` -/
def P12564866152279821853.Spec : Prop :=
  ∀ n, P12564866152279821853.a n = A157516 (n + 1)

end A157516

/-! ## A157516.P9385659421454258848

`A077221(A090771(10*(n+1)))`
-/

namespace A157516.P9385659421454258848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077221 (A090771 (10 * (n + 1))).toNat

end

end A157516.P9385659421454258848

namespace A157516

/-- `A077221(A090771(10*(n+1)))` -/
def P9385659421454258848.Spec : Prop :=
  ∀ n, P9385659421454258848.a n = A157516 (n + 1)

end A157516

/-! ## A157516.P16022134477752669111

`∩[A154374(n+1), A077221(n)]`
-/

namespace A157516.P16022134477752669111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154374 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077221 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A157516.P16022134477752669111

namespace A157516

/-- `∩[A154374(n+1), A077221(n)]` -/
def P16022134477752669111.Spec : Prop :=
  ∀ n, (P16022134477752669111.a n : ℤ) = A157516 (n + 1)

end A157516

/-! ## A157516.P2451601354824797820

`A056220(A158060(2*(n+1))-2)`
-/

namespace A157516.P2451601354824797820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056220 (A158060 (2 * (n + 1)) - 2).toNat

end

end A157516.P2451601354824797820

namespace A157516

/-- `A056220(A158060(2*(n+1))-2)` -/
def P2451601354824797820.Spec : Prop :=
  ∀ n, P2451601354824797820.a n = A157516 (n + 1)

end A157516

/-! ## A157516.P4059460630507475381

`A056220(A158066(n+1)-1+n)`
-/

namespace A157516.P4059460630507475381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056220 (A158066 (n + 1) - 1 + (n : ℤ)).toNat

end

end A157516.P4059460630507475381

namespace A157516

/-- `A056220(A158066(n+1)-1+n)` -/
def P4059460630507475381.Spec : Prop :=
  ∀ n, P4059460630507475381.a n = A157516 (n + 1)

end A157516

/-! ## A157516.P6471392929159201715

`A105638(A044332(n+1))`
-/

namespace A157516.P6471392929159201715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105638 (A044332 (n + 1)).toNat

end

end A157516.P6471392929159201715

namespace A157516

/-- `A105638(A044332(n+1))` -/
def P6471392929159201715.Spec : Prop :=
  ∀ n, P6471392929159201715.a n = A157516 (n + 1)

end A157516

/-! ## A157516.P1294025656069694740

`A074148(A157924(n+1)+2*n)`
-/

namespace A157516.P1294025656069694740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074148 (A157924 (n + 1) + (2 * n : ℤ)).toNat

end

end A157516.P1294025656069694740

namespace A157516

/-- `A074148(A157924(n+1)+2*n)` -/
def P1294025656069694740.Spec : Prop :=
  ∀ n, P1294025656069694740.a n = A157516 (n + 1)

end A157516

/-! ## A157516.P6577223163543849797

`A074148(A157924(n+1)+n+n)`
-/

namespace A157516.P6577223163543849797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074148 (A157924 (n + 1) + (n : ℤ) + (n : ℤ)).toNat

end

end A157516.P6577223163543849797

namespace A157516

/-- `A074148(A157924(n+1)+n+n)` -/
def P6577223163543849797.Spec : Prop :=
  ∀ n, P6577223163543849797.a n = A157516 (n + 1)

end A157516

/-! ## A157516.P5386064465027189419

`A105638(A102439(2*n+1)-A102439(n))`
-/

namespace A157516.P5386064465027189419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105638 (A102439 (2 * n + 1) - A102439 n).toNat

end

end A157516.P5386064465027189419

namespace A157516

/-- `A105638(A102439(2*n+1)-A102439(n))` -/
def P5386064465027189419.Spec : Prop :=
  ∀ n, P5386064465027189419.a n = A157516 (n + 1)

end A157516

/-!
# A157517: a(n) = 7 + 12*n - 6*n^2.

The programs for A157517, the canonical program `A157517.P12499757383157217649` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157517 has offset 0).

The definition of A157517 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `7+12*n-6*n²` (program `A157517.P12499757383157217649`, by `A157517.P12499757383157217649.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A157517.P13806260200993644852

`7-6*n*(n-2)`
-/

namespace A157517.P13806260200993644852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 - (6 * n : ℤ) * ((n : ℤ) - 2)

end

end A157517.P13806260200993644852

namespace A157517

/-- `7-6*n*(n-2)` -/
def P13806260200993644852.Spec : Prop :=
  ∀ n, P13806260200993644852.a n = A157517 n

theorem P13806260200993644852.correct : P13806260200993644852.Spec := by
  intro n
  simp only [A157517, Nat.add_sub_cancel, A157517.P13806260200993644852.a, A157517.P12499757383157217649.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A157517

/-! ## A157517.P12499757383157217649

`7+12*n-6*n²`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A157517

/-- `7+12*n-6*n²` -/
def P12499757383157217649.Spec : Prop :=
  ∀ n, P12499757383157217649.a n = A157517 n

theorem P12499757383157217649.correct : P12499757383157217649.Spec := by
  intro n
  simp only [A157517]

end A157517

/-! ## A157517.P17403541049109502369

`∑[a(n-1)-12]` with `a(0)=7, a(1)=6`
-/

namespace A157517.P17403541049109502369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [7, 6] fun n f1 =>
  f1 (n - 1) - 12

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A157517.P17403541049109502369

namespace A157517

/-- `∑[a(n-1)-12]` -/
def P17403541049109502369.Spec : Prop :=
  ∀ n, P17403541049109502369.a n = A157517 n

end A157517

/-! ## A157517.P9954864578686553556

`Δ[-A015243(n)]`
-/

namespace A157517.P9954864578686553556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A015243 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A157517.P9954864578686553556

namespace A157517

/-- `Δ[-A015243(n)]` -/
def P9954864578686553556.Spec : Prop :=
  ∀ n, P9954864578686553556.a n = A157517 n

theorem P9954864578686553556.correct : P9954864578686553556.Spec := by
  intro n
  simp only [A157517, Nat.add_sub_cancel, A157517.P9954864578686553556.f1, A157517.P9954864578686553556.a, A157517.P12499757383157217649.a, A015243, A015243.P656564678258870490.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A157517

/-! ## A157517.P10500180345976993454

`Δ[A140811(n)-A152064(n)]`
-/

namespace A157517.P10500180345976993454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140811 n - A152064 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A157517.P10500180345976993454

namespace A157517

/-- `Δ[A140811(n)-A152064(n)]` -/
def P10500180345976993454.Spec : Prop :=
  ∀ n, P10500180345976993454.a n = A157517 n

theorem P10500180345976993454.correct : P10500180345976993454.Spec := by
  intro n
  simp only [A157517, Nat.add_sub_cancel, A157517.P10500180345976993454.f1, A157517.P10500180345976993454.a, A157517.P12499757383157217649.a, A140811, A140811.P17716776478933671421.a, A152064, A152064.P7157481000966837633.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A157517

/-! ## A157517.P2563138089120429326

`Δ[Δ[A015238(n)]-A015238(n)]`
-/

namespace A157517.P2563138089120429326
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015238 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A015238 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A157517.P2563138089120429326

namespace A157517

/-- `Δ[Δ[A015238(n)]-A015238(n)]` -/
def P2563138089120429326.Spec : Prop :=
  ∀ n, P2563138089120429326.a n = A157517 n

theorem P2563138089120429326.correct : P2563138089120429326.Spec := by
  intro n
  simp only [A157517, Nat.add_sub_cancel, A157517.P2563138089120429326.f2, A157517.P2563138089120429326.f1, A157517.P2563138089120429326.a, A157517.P12499757383157217649.a, A015238, A015238.P18123639342462093912.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A157517

/-! ## A157517.P13742950139961610609

`Δ[n²*A022965(2*n)]`
-/

namespace A157517.P13742950139961610609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A022965 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A157517.P13742950139961610609

namespace A157517

/-- `Δ[n²*A022965(2*n)]` -/
def P13742950139961610609.Spec : Prop :=
  ∀ n, P13742950139961610609.a n = A157517 n

theorem P13742950139961610609.correct : P13742950139961610609.Spec := by
  intro n
  simp only [A157517, Nat.add_sub_cancel, A157517.P13742950139961610609.f1, A157517.P13742950139961610609.a, A157517.P12499757383157217649.a, A022965, A022965.P10341752570683700963.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A157517

/-! ## A157517.P12153046783189453944

`Δ[n²*A022966(2*n+1)]`
-/

namespace A157517.P12153046783189453944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A022966 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A157517.P12153046783189453944

namespace A157517

/-- `Δ[n²*A022966(2*n+1)]` -/
def P12153046783189453944.Spec : Prop :=
  ∀ n, P12153046783189453944.a n = A157517 n

theorem P12153046783189453944.correct : P12153046783189453944.Spec := by
  intro n
  simp only [A157517, Nat.add_sub_cancel, A157517.P12153046783189453944.f1, A157517.P12153046783189453944.a, A157517.P12499757383157217649.a, A022966, A022966.P4427188668348917034.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A157517

/-!
# A157519: Number of three-dimensional prudent n-step walks.

The programs for A157519, there is no canonical definition to state claims against.
-/

/-! ## A157519.P606130522174059999

`or(A002913(n), A173068(A347356(n+1)))`
-/

namespace A157519.P606130522174059999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A002913 n) (A173068 (A347356 (n + 1)).toNat)

end

end A157519.P606130522174059999

/-! ## A157519.P15084477966607097688

`or(A001223(A005809(n)), A002913(n))`
-/

namespace A157519.P15084477966607097688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001223 (A005809 n).toNat) (A002913 n)

end

end A157519.P15084477966607097688

/-! ## A157519.P7802439116703219197

`or(A002913(n), A173068(A001045(n)))`
-/

namespace A157519.P7802439116703219197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A002913 n) (A173068 (A001045 n).toNat)

end

end A157519.P7802439116703219197

/-!
# A157520: Table T(n,2) read by row with T(n,2)=least j<k, T(n,1)=k such that sum j+k is the least such that 6*p(k)*p(j)^n -1 and +1 are twin primes with p(i)=i-th prime.

The programs for A157520, there is no canonical definition to state claims against.
-/

/-! ## A157520.P9019437619597621507

`gcd(A195119(n), A351444(A283748(n+1)))`
-/

namespace A157520.P9019437619597621507
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A195119 n) (A351444 (A283748 (n + 1)).toNat)

end

end A157520.P9019437619597621507

/-! ## A157520.P9858006441854408696

`A001222(A061712(n+3)+A035363(3*n))`
-/

namespace A157520.P9858006441854408696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A061712 (n + 3) + A035363 (3 * n)).toNat

end

end A157520.P9858006441854408696

/-! ## A157520.P9076854974378641590

`A084580(A224670(n+2))`
-/

namespace A157520.P9076854974378641590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084580 (A224670 (n + 2)).toNat

end

end A157520.P9076854974378641590

/-! ## A157520.P13771541093017579904

`A057021(A145071(n+1)+9)`
-/

namespace A157520.P13771541093017579904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057021 (A145071 (n + 1) + 9).toNat

end

end A157520.P13771541093017579904

/-! ## A157520.P17522856990823481425

`gcd(A112658(n+1), A335458(A217764(n+3)))`
-/

namespace A157520.P17522856990823481425
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A112658 (n + 1)) (A335458 (A217764 (n + 3)).toNat)

end

end A157520.P17522856990823481425

/-!
# A157521: Triangle T(n, k) = n! * binomial(n, k)*( psi(n-k+1) - psi(k+1) ), read by rows.

The programs for A157521, there is no canonical definition to state claims against.
-/

/-! ## A157521.P3363253555187422625

`A007318(n)*A157525(n)`
-/

namespace A157521.P3363253555187422625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A157525 n

end

end A157521.P3363253555187422625

/-! ## A157521.P692749004986686944

`abs(A108086(n))*A157525(n)`
-/

namespace A157521.P692749004986686944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A108086 n| * A157525 n

end

end A157521.P692749004986686944

/-! ## A157521.P8571443435905187252

`abs(A117440(n))*A157525(n)`
-/

namespace A157521.P8571443435905187252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A117440 n| * A157525 n

end

end A157521.P8571443435905187252

/-! ## A157521.P14231319424895565656

`abs(A130595(n))*A157525(n)`
-/

namespace A157521.P14231319424895565656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A130595 n| * A157525 n

end

end A157521.P14231319424895565656

/-! ## A157521.P13344725055158880068

`sqrt(A008459(n))*A157525(n)`
-/

namespace A157521.P13344725055158880068
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A008459 n : ℝ) * (A157525 n : ℝ)

end

end A157521.P13344725055158880068

/-! ## A157521.P15041460232273731223

`Δ[A102363(n)]*A157525(n)`
-/

namespace A157521.P15041460232273731223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A157525 n

end

end A157521.P15041460232273731223

/-! ## A157521.P1407415491965760414

`A028326(n)/2*A157525(n)`
-/

namespace A157521.P1407415491965760414
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028326 n : ℚ) / 2 * (A157525 n : ℚ)

end

end A157521.P1407415491965760414

/-! ## A157521.P6973167641703906522

`A004525(A028326(n))*A157525(n)`
-/

namespace A157521.P6973167641703906522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A028326 n).toNat * A157525 n

end

end A157521.P6973167641703906522

/-! ## A157521.P6406615075434127627

`A008619(A109128(n))*A157525(n)`
-/

namespace A157521.P6406615075434127627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A109128 n).toNat * A157525 n

end

end A157521.P6406615075434127627

/-!
# A157522: Triangle T(n, k) = f(n, k) + f(n, n-k) - 1, where f(n, k) = k if k <= floor(n/4), floor(n/2) - k if floor(n/4) < k <= floor(n/2), k - floor(n/2) if floor(n/2) < k <= floor(3*n/4), otherwise n-k, read by rows.

The programs for A157522, the canonical program `A157522.P11153422520438621454` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157522 has offset 0).

The definition of A157522 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A157522.P12687921044832314318

`A003983(A143182(n)+A057944(n))`
-/

namespace A157522.P12687921044832314318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003983 (A143182 n + A057944 n).toNat

end

end A157522.P12687921044832314318

namespace A157522

/-- `A003983(A143182(n)+A057944(n))` -/
def P12687921044832314318.Spec : Prop :=
  ∀ n, P12687921044832314318.a n = A157522 n

end A157522

/-! ## A157522.P11153422520438621454

`A053616(A143182(n)+A127739(n+1))`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A157522

/-- `A053616(A143182(n)+A127739(n+1))` -/
def P11153422520438621454.Spec : Prop :=
  ∀ n, P11153422520438621454.a n = A157522 n

theorem P11153422520438621454.correct : P11153422520438621454.Spec := by
  intro n
  simp only [A157522]

end A157522

/-! ## A157522.P14489020558776911371

`A003983(A127739(n+1)-A049581(n))`
-/

namespace A157522.P14489020558776911371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003983 (A127739 (n + 1) - A049581 n).toNat

end

end A157522.P14489020558776911371

namespace A157522

/-- `A003983(A127739(n+1)-A049581(n))` -/
def P14489020558776911371.Spec : Prop :=
  ∀ n, P14489020558776911371.a n = A157522 n

end A157522

/-! ## A157522.P4782855347378348873

`A088431(A124976(n+1)+1)`
-/

namespace A157522.P4782855347378348873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088431 (A124976 (n + 1) + 1).toNat

end

end A157522.P4782855347378348873

namespace A157522

/-- `A088431(A124976(n+1)+1)` -/
def P4782855347378348873.Spec : Prop :=
  ∀ n, P4782855347378348873.a n = A157522 n

end A157522

/-! ## A157522.P17742540753790196295

`A110628(A174669(n))`
-/

namespace A157522.P17742540753790196295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110628 (A174669 n).toNat

end

end A157522.P17742540753790196295

namespace A157522

/-- `A110628(A174669(n))` -/
def P17742540753790196295.Spec : Prop :=
  ∀ n, P17742540753790196295.a n = A157522 n

end A157522

/-!
# A157523: Triangle T(n, k, q) = (q*(n-k) +1)*T(n-1, k-1, q) + (q*k+1)*T(n-1, k, q) + q*A157522(n, k)*T(n-2, k-1, q), with T(n, 0, q) = T(n, n, q) = 1 and q = 1, read by rows.

The programs for A157523, there is no canonical definition to state claims against.
-/

/-! ## A157523.P9797398443684644234

`floor(log2(exp(A008292(n+1))))`
-/

namespace A157523.P9797398443684644234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.logb 2 (Real.exp (A008292 (n + 1) : ℝ))⌋

end

end A157523.P9797398443684644234

/-! ## A157523.P528104681834338007

`A330116(A008292(n+1))`
-/

namespace A157523.P528104681834338007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330116 (A008292 (n + 1)).toNat

end

end A157523.P528104681834338007

/-! ## A157523.P7296700841817468597

`A257839(3*A141690(n))`
-/

namespace A157523.P7296700841817468597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257839 (3 * A141690 n).toNat

end

end A157523.P7296700841817468597

/-! ## A157523.P14818499736996215139

`A137735(C(A176488(n), 2))`
-/

namespace A157523.P14818499736996215139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137735 (Nat.choose (A176488 n).toNat 2)

end

end A157523.P14818499736996215139

/-! ## A157523.P4043096304030914553

`A320829(A008292(n+1)-1)`
-/

namespace A157523.P4043096304030914553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320829 (A008292 (n + 1) - 1).toNat

end

end A157523.P4043096304030914553

/-!
# A157524: a(n) = A140783(n+4)/9.

The programs for A157524, there is no canonical definition to state claims against.
-/

/-! ## A157524.P10463142843404775143

`A140783(n+4)/9`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A157524.P10463142843404775143
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A140783 (n + 4) : ℚ) / 9

end

end A157524.P10463142843404775143

/-!
# A157525: Triangle T(n, k) = n! * (Harmonic number(n-k) - Harmonic number(k)), read by rows.

The programs for A157525, there is no canonical definition to state claims against.
-/

/-! ## A157525.P6477922626100514323

`A157521(n)/A007318(n)`
-/

namespace A157525.P6477922626100514323
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A157521 n : ℚ) / (A007318 n : ℚ)

end

end A157525.P6477922626100514323

/-! ## A157525.P5802273435619769902

`A157521(n)/abs(A117440(n))`
-/

namespace A157525.P5802273435619769902
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A157521 n : ℚ) / (|A117440 n| : ℚ)

end

end A157525.P5802273435619769902

/-! ## A157525.P509417056801867709

`A157521(n)/sqrt(A008459(n))`
-/

namespace A157525.P509417056801867709
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A157521 n : ℝ) / Real.sqrt (A008459 n : ℝ)

end

end A157525.P509417056801867709

/-! ## A157525.P8417282437720574280

`A157521(n)/Δ[A102363(n)]`
-/

namespace A157525.P8417282437720574280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A157521 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A157525.P8417282437720574280

/-! ## A157525.P9684021305689613861

`2/A028326(n)*A157521(n)`
-/

namespace A157525.P9684021305689613861
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A028326 n : ℚ) * (A157521 n : ℚ)

end

end A157525.P9684021305689613861

/-! ## A157525.P9598559371868254995

`A157521(n)/A004525(A028326(n))`
-/

namespace A157525.P9598559371868254995
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A157521 n : ℚ) / (A004525 (A028326 n).toNat : ℚ)

end

end A157525.P9598559371868254995

/-! ## A157525.P158269795910350497

`A157521(n)/A008619(A109128(n))`
-/

namespace A157525.P158269795910350497
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A157521 n : ℚ) / (A008619 (A109128 n).toNat : ℚ)

end

end A157525.P158269795910350497

/-!
# A157526: Triangular sequence from coefficients of the polynomial recursion: p(x,n)=Sum[Binomial[n, m]*p[x, m]*p[x, n - m - 1], {m, 0, n - 1}].

The programs for A157526, there is no canonical definition to state claims against.
-/

/-! ## A157526.P2068125934610592102

`A134059(A181815(n+2)%A293993(n))`
-/

namespace A157526.P2068125934610592102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134059 (Int.tmod (A181815 (n + 2)) (A293993 n)).toNat

end

end A157526.P2068125934610592102

/-!
# A157528: Triangle read by rows: T(n, k) = 2*k*(n - k) with T(n, 0) = T(n, n) = 1.

The programs for A157528, the canonical program `A157528.P869269647061177937` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157528 has offset 0).

The definition of A157528 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A157528.P869269647061177937

`A004277(A004247(n))`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A157528

/-- `A004277(A004247(n))` -/
def P869269647061177937.Spec : Prop :=
  ∀ n, P869269647061177937.a n = A157528 n

theorem P869269647061177937.correct : P869269647061177937.Spec := by
  intro n
  simp only [A157528]

end A157528

/-! ## A157528.P15491962274485764132

`A004275(A077028(n))`
-/

namespace A157528.P15491962274485764132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A077028 n).toNat

end

end A157528.P15491962274485764132

namespace A157528

/-- `A004275(A077028(n))` -/
def P15491962274485764132.Spec : Prop :=
  ∀ n, P15491962274485764132.a n = A157528 n

end A157528

/-! ## A157528.P13840353046693838269

`A004275(A004247(n)+1)`
-/

namespace A157528.P13840353046693838269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A004247 n + 1).toNat

end

end A157528.P13840353046693838269

namespace A157528

/-- `A004275(A004247(n)+1)` -/
def P13840353046693838269.Spec : Prop :=
  ∀ n, P13840353046693838269.a n = A157528 n

end A157528

/-! ## A157528.P70746421951790218

`A055456(A130154(n+1))`
-/

namespace A157528.P70746421951790218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055456 (A130154 (n + 1)).toNat

end

end A157528.P70746421951790218

namespace A157528

/-- `A055456(A130154(n+1))` -/
def P70746421951790218.Spec : Prop :=
  ∀ n, P70746421951790218.a n = A157528 n

end A157528

/-! ## A157528.P10204337739789981014

`A004277(A077028(n)-1)`
-/

namespace A157528.P10204337739789981014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A077028 n - 1).toNat

end

end A157528.P10204337739789981014

namespace A157528

/-- `A004277(A077028(n)-1)` -/
def P10204337739789981014.Spec : Prop :=
  ∀ n, P10204337739789981014.a n = A157528 n

theorem P10204337739789981014.correct : P10204337739789981014.Spec := by
  intro n
  simp only [A157528, Nat.add_sub_cancel, A157528.P10204337739789981014.a, A157528.P869269647061177937.a, A004247, A004247.P2751605162508615148.a, A004277, A004277.P16255821370285667660.a, A077028, A077028.P18404356772921913843.a, A000007, A000007.P6599383543502402472.a, A005843, A005843.P3167286115683555970.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A157528

/-! ## A157528.P3944645717168619647

`A028310(2*A004247(n))`
-/

namespace A157528.P3944645717168619647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (2 * A004247 n).toNat

end

end A157528.P3944645717168619647

namespace A157528

/-- `A028310(2*A004247(n))` -/
def P3944645717168619647.Spec : Prop :=
  ∀ n, P3944645717168619647.a n = A157528 n

end A157528

/-! ## A157528.P11762621288112675553

`A004273(A077028(n)-1)+1`
-/

namespace A157528.P11762621288112675553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A077028 n - 1).toNat + 1

end

end A157528.P11762621288112675553

namespace A157528

/-- `A004273(A077028(n)-1)+1` -/
def P11762621288112675553.Spec : Prop :=
  ∀ n, P11762621288112675553.a n = A157528 n

end A157528

/-! ## A157528.P10512707829973976275

`A028310(A130154(n+1)-1)`
-/

namespace A157528.P10512707829973976275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A130154 (n + 1) - 1).toNat

end

end A157528.P10512707829973976275

namespace A157528

/-- `A028310(A130154(n+1)-1)` -/
def P10512707829973976275.Spec : Prop :=
  ∀ n, P10512707829973976275.a n = A157528 n

end A157528

/-! ## A157528.P6438178905806429387

`A014681(2*A004247(n))+1`
-/

namespace A157528.P6438178905806429387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (2 * A004247 n).toNat + 1

end

end A157528.P6438178905806429387

namespace A157528

/-- `A014681(2*A004247(n))+1` -/
def P6438178905806429387.Spec : Prop :=
  ∀ n, P6438178905806429387.a n = A157528 n

end A157528

/-! ## A157528.P9315973924451156198

`A028310(2*(1-A176270(n)))`
-/

namespace A157528.P9315973924451156198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (2 * (1 - A176270 n)).toNat

end

end A157528.P9315973924451156198

namespace A157528

/-- `A028310(2*(1-A176270(n)))` -/
def P9315973924451156198.Spec : Prop :=
  ∀ n, P9315973924451156198.a n = A157528 n

end A157528

/-! ## A157528.P15433778074930439034

`A274922(2*(A077028(n)-1))`
-/

namespace A157528.P15433778074930439034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274922 (2 * (A077028 n - 1)).toNat

end

end A157528.P15433778074930439034

namespace A157528

/-- `A274922(2*(A077028(n)-1))` -/
def P15433778074930439034.Spec : Prop :=
  ∀ n, P15433778074930439034.a n = A157528 n

end A157528

/-! ## A157528.P8689782636412301297

`A028310(xor(1, A130154(n+1)))`
-/

namespace A157528.P8689782636412301297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (Int.xor 1 (A130154 (n + 1))).toNat

end

end A157528.P8689782636412301297

namespace A157528

/-- `A028310(xor(1, A130154(n+1)))` -/
def P8689782636412301297.Spec : Prop :=
  ∀ n, P8689782636412301297.a n = A157528 n

end A157528

/-! ## A157528.P2980578743717500992

`A103451(n)+2*A004247(n)`
-/

namespace A157528.P2980578743717500992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 n + 2 * A004247 n

end

end A157528.P2980578743717500992

namespace A157528

/-- `A103451(n)+2*A004247(n)` -/
def P2980578743717500992.Spec : Prop :=
  ∀ n, P2980578743717500992.a n = A157528 n

end A157528

/-! ## A157528.P4822385182194225270

`gcd(2*A004247(n), A103452(n))`
-/

namespace A157528.P4822385182194225270
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * A004247 n) (A103452 n)

end

end A157528.P4822385182194225270

namespace A157528

/-- `gcd(2*A004247(n), A103452(n))` -/
def P4822385182194225270.Spec : Prop :=
  ∀ n, (P4822385182194225270.a n : ℤ) = A157528 n

end A157528

/-! ## A157528.P9168708581553569015

`∏{d}[2*A004247(n), A014963(#)]`
-/

namespace A157528.P9168708581553569015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A004247 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A014963 d

end

end A157528.P9168708581553569015

namespace A157528

/-- `∏{d}[2*A004247(n), A014963(#)]` -/
def P9168708581553569015.Spec : Prop :=
  ∀ n, P9168708581553569015.a n = A157528 n

end A157528

/-! ## A157528.P9470091666229458854

`A130154(n+1)-log2(A154325(n))`
-/

namespace A157528.P9470091666229458854
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A130154 (n + 1) : ℝ) - Real.logb 2 (A154325 n : ℝ)

end

end A157528.P9470091666229458854

namespace A157528

/-- `A130154(n+1)-log2(A154325(n))` -/
def P9470091666229458854.Spec : Prop :=
  ∀ n, P9470091666229458854.a n = (A157528 n : ℝ)

end A157528

/-! ## A157528.P4546957665367300709

`A004277(A057554(2*n+1)*A057554(2*(n+1)))`
-/

namespace A157528.P4546957665367300709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A057554 (2 * n + 1) * A057554 (2 * (n + 1))).toNat

end

end A157528.P4546957665367300709

namespace A157528

/-- `A004277(A057554(2*n+1)*A057554(2*(n+1)))` -/
def P4546957665367300709.Spec : Prop :=
  ∀ n, P4546957665367300709.a n = A157528 n

end A157528

/-! ## A157528.P14372007875673358533

`A028310(A004247(n))+A004247(A028310(n))`
-/

namespace A157528.P14372007875673358533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A004247 n).toNat + A004247 (A028310 n).toNat

end

end A157528.P14372007875673358533

namespace A157528

/-- `A028310(A004247(n))+A004247(A028310(n))` -/
def P14372007875673358533.Spec : Prop :=
  ∀ n, P14372007875673358533.a n = A157528 n

end A157528

/-! ## A157528.P4428642059211429327

`A096607(A296180(n))`
-/

namespace A157528.P4428642059211429327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096607 (A296180 n).toNat

end

end A157528.P4428642059211429327

namespace A157528

/-- `A096607(A296180(n))` -/
def P4428642059211429327.Spec : Prop :=
  ∀ n, P4428642059211429327.a n = A157528 n

end A157528

/-! ## A157528.P14319479548894024946

`A065033(4*A004247(n))`
-/

namespace A157528.P14319479548894024946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (4 * A004247 n).toNat

end

end A157528.P14319479548894024946

namespace A157528

/-- `A065033(4*A004247(n))` -/
def P14319479548894024946.Spec : Prop :=
  ∀ n, P14319479548894024946.a n = A157528 n

end A157528

/-!
# A157529: Composite numbers whose first digit is equal to the sum of all the other digits.

The programs for A157529, the canonical program `A157529.P6599670001113276478` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157529 has offset 1).

The definition of A157529 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 451 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A157529.P8751281937591629997

`filter[A193772(n+2), A005171(#)]`
-/

namespace A157529.P8751281937591629997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193772 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A157529.P8751281937591629997

namespace A157529

/-- `filter[A193772(n+2), A005171(#)]` -/
def P8751281937591629997.Spec : Prop :=
  ∀ n, P8751281937591629997.a n = A157529 (n + 1)

end A157529

/-! ## A157529.P6599670001113276478

`filter[A193772(n+2), A066247(#)]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A157529

/-- `filter[A193772(n+2), A066247(#)]` -/
def P6599670001113276478.Spec : Prop :=
  ∀ n, P6599670001113276478.a n = A157529 (n + 1)

theorem P6599670001113276478.correct : P6599670001113276478.Spec := by
  intro n
  simp only [A157529, Nat.add_sub_cancel]

end A157529

/-! ## A157529.P17878516022736177641

`filter[A193772(n+2), A202238(#)]`
-/

namespace A157529.P17878516022736177641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193772 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202238 (f1 j).toNat = 1) n)

end

end A157529.P17878516022736177641

namespace A157529

/-- `filter[A193772(n+2), A202238(#)]` -/
def P17878516022736177641.Spec : Prop :=
  ∀ n, P17878516022736177641.a n = A157529 (n + 1)

end A157529

/-! ## A157529.P465489480602927903

`∩[A154387(n+1), A193772(n+1)]`
-/

namespace A157529.P465489480602927903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154387 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193772 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A157529.P465489480602927903

namespace A157529

/-- `∩[A154387(n+1), A193772(n+1)]` -/
def P465489480602927903.Spec : Prop :=
  ∀ n, (P465489480602927903.a n : ℤ) = A157529 (n + 1)

end A157529

/-! ## A157529.P9657157204559688536

`filter[A193772(n+2), A174898(#)]`
-/

namespace A157529.P9657157204559688536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193772 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A174898 (f1 j).toNat = 1) n)

end

end A157529.P9657157204559688536

namespace A157529

/-- `filter[A193772(n+2), A174898(#)]` -/
def P9657157204559688536.Spec : Prop :=
  ∀ n, P9657157204559688536.a n = A157529 (n + 1)

end A157529

/-! ## A157529.P8289211828605464110

`∩[A002808(n+1), A193772(n+1)]`
-/

namespace A157529.P8289211828605464110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193772 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A157529.P8289211828605464110

namespace A157529

/-- `∩[A002808(n+1), A193772(n+1)]` -/
def P8289211828605464110.Spec : Prop :=
  ∀ n, (P8289211828605464110.a n : ℤ) = A157529 (n + 1)

end A157529

/-! ## A157529.P18362959434349436858

`∩[A018252(n+1), A193772(n+1)]`
-/

namespace A157529.P18362959434349436858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193772 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A157529.P18362959434349436858

namespace A157529

/-- `∩[A018252(n+1), A193772(n+1)]` -/
def P18362959434349436858.Spec : Prop :=
  ∀ n, (P18362959434349436858.a n : ℤ) = A157529 (n + 1)

end A157529

/-! ## A157529.P15468689451076031669

`∩[A056653(n+1), A193772(n+1)]`
-/

namespace A157529.P15468689451076031669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056653 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193772 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A157529.P15468689451076031669

namespace A157529

/-- `∩[A056653(n+1), A193772(n+1)]` -/
def P15468689451076031669.Spec : Prop :=
  ∀ n, (P15468689451076031669.a n : ℤ) = A157529 (n + 1)

end A157529

/-! ## A157529.P4258581007493697912

`∩[A062973(n+1), A193772(n+1)]`
-/

namespace A157529.P4258581007493697912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062973 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193772 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A157529.P4258581007493697912

namespace A157529

/-- `∩[A062973(n+1), A193772(n+1)]` -/
def P4258581007493697912.Spec : Prop :=
  ∀ n, (P4258581007493697912.a n : ℤ) = A157529 (n + 1)

end A157529

/-! ## A157529.P14016322340801599869

`∩[A065090(n+1), A193772(n+1)]`
-/

namespace A157529.P14016322340801599869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065090 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193772 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A157529.P14016322340801599869

namespace A157529

/-- `∩[A065090(n+1), A193772(n+1)]` -/
def P14016322340801599869.Spec : Prop :=
  ∀ n, (P14016322340801599869.a n : ℤ) = A157529 (n + 1)

end A157529

/-! ## A157529.P5405950812883531236

`∩[A138592(n+1), A193772(n+1)]`
-/

namespace A157529.P5405950812883531236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138592 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193772 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A157529.P5405950812883531236

namespace A157529

/-- `∩[A138592(n+1), A193772(n+1)]` -/
def P5405950812883531236.Spec : Prop :=
  ∀ n, (P5405950812883531236.a n : ℤ) = A157529 (n + 1)

end A157529

/-! ## A157529.P347609001005111198

`∩[A171581(n+1), A193772(n+1)]`
-/

namespace A157529.P347609001005111198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171581 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193772 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A157529.P347609001005111198

namespace A157529

/-- `∩[A171581(n+1), A193772(n+1)]` -/
def P347609001005111198.Spec : Prop :=
  ∀ n, (P347609001005111198.a n : ℤ) = A157529 (n + 1)

end A157529

/-! ## A157529.P10713797489597641012

`∩[A176423(n+1), A193772(n+1)]`
-/

namespace A157529.P10713797489597641012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176423 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193772 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A157529.P10713797489597641012

namespace A157529

/-- `∩[A176423(n+1), A193772(n+1)]` -/
def P10713797489597641012.Spec : Prop :=
  ∀ n, (P10713797489597641012.a n : ℤ) = A157529 (n + 1)

end A157529

/-! ## A157529.P4694877002277385319

`∩[A193772(n+1), A343311(n+1)]`
-/

namespace A157529.P4694877002277385319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193772 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343311 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A157529.P4694877002277385319

namespace A157529

/-- `∩[A193772(n+1), A343311(n+1)]` -/
def P4694877002277385319.Spec : Prop :=
  ∀ n, (P4694877002277385319.a n : ℤ) = A157529 (n + 1)

end A157529

/-! ## A157529.P7375616713610816135

`∩[A193772(n+1), A387319(n+1)]`
-/

namespace A157529.P7375616713610816135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193772 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387319 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A157529.P7375616713610816135

namespace A157529

/-- `∩[A193772(n+1), A387319(n+1)]` -/
def P7375616713610816135.Spec : Prop :=
  ∀ n, (P7375616713610816135.a n : ℤ) = A157529 (n + 1)

end A157529

/-! ## A157529.P9393321087925144441

`∩[A193772(n+1), A391939(n+1)]`
-/

namespace A157529.P9393321087925144441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193772 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391939 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A157529.P9393321087925144441

namespace A157529

/-- `∩[A193772(n+1), A391939(n+1)]` -/
def P9393321087925144441.Spec : Prop :=
  ∀ n, (P9393321087925144441.a n : ℤ) = A157529 (n + 1)

end A157529

/-! ## A157529.P16902319358778582577

`eq[A040997(abs(2-n)+2), A055671(n)]`
-/

namespace A157529.P16902319358778582577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040997 (|2 - (n : ℤ)| + 2).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055671 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A157529.P16902319358778582577

namespace A157529

/-- `eq[A040997(abs(2-n)+2), A055671(n)]` -/
def P16902319358778582577.Spec : Prop :=
  ∀ n, (P16902319358778582577.a n : ℤ) = A157529 (n + 1)

end A157529

/-!
# A157531: Triangle T(n, k) = binomial(2*n, n) + binomial(n, k)^2, read by rows.

The programs for A157531, the canonical program `A157531.P17680280055221853877` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157531 has offset 0).

The definition of A157531 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(2*row(n), row(n))+C(row(n), col(n))²` (program `A157531.P17680280055221853877`, by `A157531.P17680280055221853877.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A157531.P17680280055221853877

`C(2*row(n), row(n))+C(row(n), col(n))²`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A157531

/-- `C(2*row(n), row(n))+C(row(n), col(n))²` -/
def P17680280055221853877.Spec : Prop :=
  ∀ n, (P17680280055221853877.a n : ℤ) = A157531 n

theorem P17680280055221853877.correct : P17680280055221853877.Spec := by
  intro n
  simp only [A157531]

end A157531

/-! ## A157531.P12353891917184055220

`A008459(n)+A000984(A003056(n))`
-/

namespace A157531.P12353891917184055220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008459 n + A000984 (A003056 n).toNat

end

end A157531.P12353891917184055220

namespace A157531

/-- `A008459(n)+A000984(A003056(n))` -/
def P12353891917184055220.Spec : Prop :=
  ∀ n, P12353891917184055220.a n = A157531 n

end A157531

/-! ## A157531.P9467915512777858766

`A117852(A057944(n))+A008459(n)`
-/

namespace A157531.P9467915512777858766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117852 (A057944 n).toNat + A008459 n

end

end A157531.P9467915512777858766

namespace A157531

/-- `A117852(A057944(n))+A008459(n)` -/
def P9467915512777858766.Spec : Prop :=
  ∀ n, P9467915512777858766.a n = A157531 n

end A157531

/-! ## A157531.P15744225504679495838

`A000984(A003056(n))+A007318(n)²`
-/

namespace A157531.P15744225504679495838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 (A003056 n).toNat + A007318 n ^ 2

end

end A157531.P15744225504679495838

namespace A157531

/-- `A000984(A003056(n))+A007318(n)²` -/
def P15744225504679495838.Spec : Prop :=
  ∀ n, P15744225504679495838.a n = A157531 n

end A157531

/-! ## A157531.P8738923322288277378

`A124428(A061885(n))+A092392(A057944(n))`
-/

namespace A157531.P8738923322288277378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124428 (A061885 n).toNat + A092392 (A057944 n).toNat

end

end A157531.P8738923322288277378

namespace A157531

/-- `A124428(A061885(n))+A092392(A057944(n))` -/
def P8738923322288277378.Spec : Prop :=
  ∀ n, P8738923322288277378.a n = A157531 n

end A157531

/-! ## A157531.P644921283977285474

`A008459(n)+A069466(n)/A008459(n)`
-/

namespace A157531.P644921283977285474
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008459 n : ℚ) + (A069466 n : ℚ) / (A008459 n : ℚ)

end

end A157531.P644921283977285474

namespace A157531

/-- `A008459(n)+A069466(n)/A008459(n)` -/
def P644921283977285474.Spec : Prop :=
  ∀ n, P644921283977285474.a n = (A157531 n : ℚ)

end A157531

/-!
# A157532: a(1) = 2; for n > 1, a(n) = 3.

The programs for A157532, the canonical program `A157532.P29477037761168156` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157532 has offset 1).

The definition of A157532 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(1)` (program `A157532.P29477037761168156`, by `A157532.P29477037761168156.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A157532.P29477037761168156

`a(1)` with `a(0)=2, a(1)=3`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A157532

/-- `a(1)` -/
def P29477037761168156.Spec : Prop :=
  ∀ n, (P29477037761168156.a n : ℤ) = A157532 (n + 1)

theorem P29477037761168156.correct : P29477037761168156.Spec := by
  intro n
  simp only [A157532, Nat.add_sub_cancel]

end A157532

/-!
# A157534: Half the number of length n integer sequences with sum zero and sum of squares 8.

The programs for A157534, there is no canonical definition to state claims against.
-/

/-! ## A157534.P2049563894659844688

`gcd(A000027(A157538(n+2)), A157542(n+2))`
-/

namespace A157534.P2049563894659844688
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000027 (A157538 (n + 2)).toNat) (A157542 (n + 2))

end

end A157534.P2049563894659844688

/-! ## A157534.P9158756580408967818

`record[A049777(A001250(n))]`
-/

namespace A157534.P9158756580408967818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049777 (A001250 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A157534.P9158756580408967818

/-!
# A157538: Half the number of length n integer sequences with sum zero and sum of squares 72.

The programs for A157538, there is no canonical definition to state claims against.
-/

/-! ## A157538.P10626040834944598071

`A000027(lcm(A157534(n+2), A157535(n+2)))`
-/

namespace A157538.P10626040834944598071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (Int.lcm (A157534 (n + 2)) (A157535 (n + 2)))

end

end A157538.P10626040834944598071

/-!
# A157542: Half the number of length n integer sequences with sum zero and sum of squares 200.

The programs for A157542, there is no canonical definition to state claims against.
-/

/-! ## A157542.P7700814966117013794

`lcm(A000265(A157537(n+2)), A157534(n+2))`
-/

namespace A157542.P7700814966117013794
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000265 (A157537 (n + 2)).toNat) (A157534 (n + 2))

end

end A157542.P7700814966117013794

/-!
# A157544: Half the number of length n integer sequences with sum zero and sum of squares 288.

The programs for A157544, there is no canonical definition to state claims against.
-/

/-! ## A157544.P14276069432584626331

`lcm(A028310(A157536(n+2)), A157535(n+2))`
-/

namespace A157544.P14276069432584626331
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A028310 (A157536 (n + 2)).toNat) (A157535 (n + 2))

end

end A157544.P14276069432584626331

/-!
# A157545: Half the number of length n integer sequences with sum zero and sum of squares 338.

The programs for A157545, there is no canonical definition to state claims against.
-/

/-! ## A157545.P6664946780109290365

`A157558(n+2)/A259367(A001096(n))`
-/

namespace A157545.P6664946780109290365
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A157558 (n + 2) : ℚ) / (A259367 (A001096 n).toNat : ℚ)

end

end A157545.P6664946780109290365

/-!
# A157547: Half the number of length n integer sequences with sum zero and sum of squares 450.

The programs for A157547, there is no canonical definition to state claims against.
-/

/-! ## A157547.P15708945838027017966

`lcm(A000027(A157537(n+2)), A157535(n+2))`
-/

namespace A157547.P15708945838027017966
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000027 (A157537 (n + 2)).toNat) (A157535 (n + 2))

end

end A157547.P15708945838027017966

/-!
# A157549: Half the number of length n integer sequences with sum zero and sum of squares 578.

The programs for A157549, there is no canonical definition to state claims against.
-/

/-! ## A157549.P598100003444344145

`∏{p}[A157566(n+2), #]`
-/

namespace A157549.P598100003444344145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157566 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A157549.P598100003444344145

/-!
# A157550: Half the number of length n integer sequences with sum zero and sum of squares 648.

The programs for A157550, there is no canonical definition to state claims against.
-/

/-! ## A157550.P15426639534432881346

`lcm(A000027(A157541(n+2)), A157534(n+2))`
-/

namespace A157550.P15426639534432881346
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000027 (A157541 (n + 2)).toNat) (A157534 (n + 2))

end

end A157550.P15426639534432881346

/-!
# A157552: Half the number of length n integer sequences with sum zero and sum of squares 800.

The programs for A157552, there is no canonical definition to state claims against.
-/

/-! ## A157552.P18256626677267769893

`lcm(A000265(A157537(n+2)), A157536(n+2))`
-/

namespace A157552.P18256626677267769893
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000265 (A157537 (n + 2)).toNat) (A157536 (n + 2))

end

end A157552.P18256626677267769893

/-!
# A157556: Half the number of length n integer sequences with sum zero and sum of squares 1152.

The programs for A157556, there is no canonical definition to state claims against.
-/

/-! ## A157556.P2064393961665462628

`lcm(A000027(A157540(n+2)), A157535(n+2))`
-/

namespace A157556.P2064393961665462628
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000027 (A157540 (n + 2)).toNat) (A157535 (n + 2))

end

end A157556.P2064393961665462628

/-!
# A157558: Half the number of length n integer sequences with sum zero and sum of squares 1352.

The programs for A157558, there is no canonical definition to state claims against.
-/

/-! ## A157558.P4506405567017195585

`A157545(n+2)*A259367(A001096(n))`
-/

namespace A157558.P4506405567017195585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157545 (n + 2) * A259367 (A001096 n).toNat

end

end A157558.P4506405567017195585

/-! ## A157558.P13050117921166753819

`A157545(n+2)*A259367(n)/A014963(A110731(2^n))`
-/

namespace A157558.P13050117921166753819
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A157545 (n + 2) * A259367 n : ℚ) / (A014963 (A110731 (2 ^ n)).toNat : ℚ)

end

end A157558.P13050117921166753819

/-!
# A157560: Half the number of length n integer sequences with sum zero and sum of squares 1568.

The programs for A157560, there is no canonical definition to state claims against.
-/

/-! ## A157560.P15608005963847842426

`lcm(A000265(A157539(n+2)), A157536(n+2))`
-/

namespace A157560.P15608005963847842426
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000265 (A157539 (n + 2)).toNat) (A157536 (n + 2))

end

end A157560.P15608005963847842426

/-!
# A157562: Half the number of length n integer sequences with sum zero and sum of squares 1800.

The programs for A157562, there is no canonical definition to state claims against.
-/

/-! ## A157562.P43715766716701605

`lcm(A000027(A157538(n+2)), A157542(n+2))`
-/

namespace A157562.P43715766716701605
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000027 (A157538 (n + 2)).toNat) (A157542 (n + 2))

end

end A157562.P43715766716701605

/-! ## A157562.P14437906119036169730

`lcm(A000265(A157537(n+2)), A157538(n+2))`
-/

namespace A157562.P14437906119036169730
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000265 (A157537 (n + 2)).toNat) (A157538 (n + 2))

end

end A157562.P14437906119036169730

/-!
# A157563: Half the number of length n integer sequences with sum zero and sum of squares 1922.

The programs for A157563, there is no canonical definition to state claims against.
-/

/-! ## A157563.P2257198944570808933

`A157594(n+2)/A327192(A039719(n+1))`
-/

namespace A157563.P2257198944570808933
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A157594 (n + 2) : ℚ) / (A327192 (A039719 (n + 1)).toNat : ℚ)

end

end A157563.P2257198944570808933

/-!
# A157567: Half the number of length n integer sequences with sum zero and sum of squares 2450.

The programs for A157567, there is no canonical definition to state claims against.
-/

/-! ## A157567.P7652856332943096160

`lcm(A000027(A157537(n+2)), A157539(n+2))`
-/

namespace A157567.P7652856332943096160
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000027 (A157537 (n + 2)).toNat) (A157539 (n + 2))

end

end A157567.P7652856332943096160

/-!
# A157568: Half the number of length n integer sequences with sum zero and sum of squares 2592.

The programs for A157568, there is no canonical definition to state claims against.
-/

/-! ## A157568.P4351554844777434539

`lcm(A000027(A157541(n+2)), A157536(n+2))`
-/

namespace A157568.P4351554844777434539
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000027 (A157541 (n + 2)).toNat) (A157536 (n + 2))

end

end A157568.P4351554844777434539

/-!
# A157572: Half the number of length n integer sequences with sum zero and sum of squares 3200.

The programs for A157572, there is no canonical definition to state claims against.
-/

/-! ## A157572.P14947988694616478247

`lcm(A000265(A157537(n+2)), A157540(n+2))`
-/

namespace A157572.P14947988694616478247
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000265 (A157537 (n + 2)).toNat) (A157540 (n + 2))

end

end A157572.P14947988694616478247

/-!
# A157576: Half the number of length n integer sequences with sum zero and sum of squares 3872.

The programs for A157576, there is no canonical definition to state claims against.
-/

/-! ## A157576.P15321354676359621989

`lcm(A000027(A157543(n+2)), A157536(n+2))`
-/

namespace A157576.P15321354676359621989
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000027 (A157543 (n + 2)).toNat) (A157536 (n + 2))

end

end A157576.P15321354676359621989

/-!
# A157577: Half the number of length n integer sequences with sum zero and sum of squares 4050.

The programs for A157577, there is no canonical definition to state claims against.
-/

/-! ## A157577.P9688710325516334727

`lcm(A000027(A157537(n+2)), A157541(n+2))`
-/

namespace A157577.P9688710325516334727
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000027 (A157537 (n + 2)).toNat) (A157541 (n + 2))

end

end A157577.P9688710325516334727

/-!
# A157580: Half the number of length n integer sequences with sum zero and sum of squares 4608.

The programs for A157580, there is no canonical definition to state claims against.
-/

/-! ## A157580.P10440961165714287190

`lcm(A000027(A157548(n+2)), A157535(n+2))`
-/

namespace A157580.P10440961165714287190
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000027 (A157548 (n + 2)).toNat) (A157535 (n + 2))

end

end A157580.P10440961165714287190

/-!
# A157584: Half the number of length n integer sequences with sum zero and sum of squares 5408.

The programs for A157584, there is no canonical definition to state claims against.
-/

/-! ## A157584.P9794345297774497179

`lcm(A051176(A157536(n+2)), A157545(n+2))`
-/

namespace A157584.P9794345297774497179
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A051176 (A157536 (n + 2)).toNat) (A157545 (n + 2))

end

end A157584.P9794345297774497179

/-!
# A157587: Half the number of length n integer sequences with sum zero and sum of squares 6050.

The programs for A157587, there is no canonical definition to state claims against.
-/

/-! ## A157587.P7929136917288444796

`lcm(A000027(A157537(n+2)), A157543(n+2))`
-/

namespace A157587.P7929136917288444796
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000027 (A157537 (n + 2)).toNat) (A157543 (n + 2))

end

end A157587.P7929136917288444796

/-!
# A157589: Half the number of length n integer sequences with sum zero and sum of squares 6498.

The programs for A157589, there is no canonical definition to state claims against.
-/

/-! ## A157589.P18265324576255512049

`lcm(A028310(A157535(n+2)), A157551(n+2))`
-/

namespace A157589.P18265324576255512049
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A028310 (A157535 (n + 2)).toNat) (A157551 (n + 2))

end

end A157589.P18265324576255512049

/-!
# A157590: Half the number of length n integer sequences with sum zero and sum of squares 6728.

The programs for A157590, there is no canonical definition to state claims against.
-/

/-! ## A157590.P5975516016438460554

`lcm(A157561(n+2), A321409(A011782(n)))`
-/

namespace A157590.P5975516016438460554
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A157561 (n + 2)) (A321409 (A011782 n).toNat)

end

end A157590.P5975516016438460554

/-!
# A157592: Half the number of length n integer sequences with sum zero and sum of squares 7200.

The programs for A157592, there is no canonical definition to state claims against.
-/

/-! ## A157592.P3339708414231396155

`lcm(A028310(A157536(n+2)), A157547(n+2))`
-/

namespace A157592.P3339708414231396155
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A028310 (A157536 (n + 2)).toNat) (A157547 (n + 2))

end

end A157592.P3339708414231396155

/-! ## A157592.P796844477197317513

`lcm(A055231(A157537(n+2)), A157544(n+2))`
-/

namespace A157592.P796844477197317513
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A055231 (A157537 (n + 2)).toNat) (A157544 (n + 2))

end

end A157592.P796844477197317513

/-!
# A157594: Half the number of length n integer sequences with sum zero and sum of squares 7688.

The programs for A157594, there is no canonical definition to state claims against.
-/

/-! ## A157594.P6343532596901921192

`A157522(A000798(n))*A157563(n+2)`
-/

namespace A157594.P6343532596901921192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157522 (A000798 n).toNat * A157563 (n + 2)

end

end A157594.P6343532596901921192

/-!
# A157597: Half the number of length n integer sequences with sum zero and sum of squares 8450.

The programs for A157597, there is no canonical definition to state claims against.
-/

/-! ## A157597.P9405041926359029705

`lcm(A000027(A157537(n+2)), A157545(n+2))`
-/

namespace A157597.P9405041926359029705
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000027 (A157537 (n + 2)).toNat) (A157545 (n + 2))

end

end A157597.P9405041926359029705

