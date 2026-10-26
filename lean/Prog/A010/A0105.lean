import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C024
import Seq.B000.C027
import Seq.B001.C000
import Seq.B001.C002
import Seq.B001.C004
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B006.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
import Seq.B013.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C008
import Seq.Opaque.C009
import Seq.Opaque.C010
import Seq.Opaque.C012
import Seq.Opaque.C013
import Seq.Opaque.C014
import Seq.Opaque.C016
import Seq.Opaque.C020
import Seq.Opaque.C022
import Seq.Opaque.C024
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A010503: Decimal expansion of 1/sqrt(2).

The programs for A010503, there is no canonical definition to state claims against.
-/

/-! ## A010503.P16474239392804937357

`9-A268682(n)`
-/

namespace A010503.P16474239392804937357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A268682 n

end

end A010503.P16474239392804937357

/-! ## A010503.P1580209646096120421

`A174968(abs(1-n)+2)`
-/

namespace A010503.P1580209646096120421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174968 ((|1 - (n : ℤ)| + 2).toNat + 1)

end

end A010503.P1580209646096120421

/-! ## A010503.P6594831662658605471

`A174968(n+1)+A020761(n)`
-/

namespace A010503.P6594831662658605471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174968 (n + 1 + 1) + A020761 n

end

end A010503.P6594831662658605471

/-! ## A010503.P2786701400808740704

`9-(A157215(n+1)+A000038(n))`
-/

namespace A010503.P2786701400808740704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - (A157215 (n + 1 + 2) + A000038 n)

end

end A010503.P2786701400808740704

/-! ## A010503.P15416354964963376172

`A165326(2*(n+1))*A268682(n)+9`
-/

namespace A010503.P15416354964963376172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165326 (2 * (n + 1)) * A268682 n + 9

end

end A010503.P15416354964963376172

/-!
# A010527: Decimal expansion of sqrt(3)/2.

The programs for A010527, there is no canonical definition to state claims against.
-/

/-! ## A010527.P1402590532327267335

`9-A375069(n)`
-/

namespace A010527.P1402590532327267335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A375069 n

end

end A010527.P1402590532327267335

/-! ## A010527.P470099911585353643

`A375193(n+1)`
-/

namespace A010527.P470099911585353643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375193 (n + 1 + 1)

end

end A010527.P470099911585353643

/-!
# A010532: Decimal expansion of square root of 80.

The programs for A010532, there is no canonical definition to state claims against.
-/

/-! ## A010532.P7292637275373109291

`9-A393801(n)`
-/

namespace A010532.P7292637275373109291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A393801 n

end

end A010532.P7292637275373109291

/-!
# A010547: Decimal expansion of square root of 96.

The programs for A010547, there is no canonical definition to state claims against.
-/

/-! ## A010547.P5796063888055910534

`A177705(A000038(n)+1+n)`
-/

namespace A010547.P5796063888055910534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177705 ((A000038 n + 1 + (n : ℤ)).toNat + 1)

end

end A010547.P5796063888055910534

/-! ## A010547.P7137720631270912554

`A177705(C(4, ∑[A177705(n)])+n+1)`
-/

namespace A010547.P7137720631270912554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177705 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177705 (Nat.choose 4 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + (n + 1) + 1)

end

end A010547.P7137720631270912554

/-!
# A010551: Multiply successively by 1,1,2,2,3,3,4,4,..., n >= 1, a(0) = 1.

The programs for A010551, the canonical program `A010551.P12648470647083764591` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010551 has offset 0).

The definition of A010551 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A010551.P12648470647083764591

`floor(n/2)!*floor((n+1)/2)!`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A010551

/-- `floor(n/2)!*floor((n+1)/2)!` -/
def P12648470647083764591.Spec : Prop :=
  ∀ n, (P12648470647083764591.a n : ℤ) = A010551 n

theorem P12648470647083764591.correct : P12648470647083764591.Spec := by
  intro n
  simp only [A010551]

end A010551

/-! ## A010551.P11158714088432429915

`n!/C(n, floor(n/2))`
-/

namespace A010551.P11158714088432429915
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) / (Nat.choose n ⌊(n : ℚ) / 2⌋.toNat : ℚ)

end

end A010551.P11158714088432429915

namespace A010551

/-- `n!/C(n, floor(n/2))` -/
def P11158714088432429915.Spec : Prop :=
  ∀ n, P11158714088432429915.a n = (A010551 n : ℚ)

end A010551

/-! ## A010551.P15775561294221947849

`a(n-1)*(a(n-2)+a(n-3))/a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A010551.P15775561294221947849
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  a (n - 1) * (a (n - 2) + a (n - 3)) / a (n - 3)

end

end A010551.P15775561294221947849

namespace A010551

/-- `a(n-1)*(a(n-2)+a(n-3))/a(n-3)` -/
def P15775561294221947849.Spec : Prop :=
  ∀ n, P15775561294221947849.a n = (A010551 n : ℚ)

end A010551

/-! ## A010551.P16283027714222254550

`∏[round(cosh(log(acot(n))))]`
-/

namespace A010551.P16283027714222254550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cosh (Real.log (SequenceMachineLib.acot (n : ℝ))))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A010551.P16283027714222254550

namespace A010551

/-- `∏[round(cosh(log(acot(n))))]` -/
def P16283027714222254550.Spec : Prop :=
  ∀ n, P16283027714222254550.a n = A010551 n

end A010551

/-! ## A010551.P10475488827242516169

`∏[floor(cosh(log(n+1)))]`
-/

namespace A010551.P10475488827242516169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cosh (Real.log (n + 1 : ℝ))⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A010551.P10475488827242516169

namespace A010551

/-- `∏[floor(cosh(log(n+1)))]` -/
def P10475488827242516169.Spec : Prop :=
  ∀ n, P10475488827242516169.a n = A010551 n

end A010551

/-! ## A010551.P15361804087639551425

`∏[round(1/acot(n/2))]`
-/

namespace A010551.P15361804087639551425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot ((n : ℚ) / 2 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A010551.P15361804087639551425

namespace A010551

/-- `∏[round(1/acot(n/2))]` -/
def P15361804087639551425.Spec : Prop :=
  ∀ n, P15361804087639551425.a n = A010551 n

end A010551

/-! ## A010551.P18056124859072822833

`∏[n-a(n-1)]` with `a(0)=1, a(1)=1`
-/

namespace A010551.P18056124859072822833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  (n : ℤ) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A010551.P18056124859072822833

namespace A010551

/-- `∏[n-a(n-1)]` -/
def P18056124859072822833.Spec : Prop :=
  ∀ n, P18056124859072822833.a n = A010551 n

end A010551

/-! ## A010551.P7312531670580117699

`∏[n-round((n-1)/2)]`
-/

namespace A010551.P7312531670580117699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - SequenceMachineLib.roundAway (((n : ℤ) - 1 : ℚ) / 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A010551.P7312531670580117699

namespace A010551

/-- `∏[n-round((n-1)/2)]` -/
def P7312531670580117699.Spec : Prop :=
  ∀ n, P7312531670580117699.a n = A010551 n

end A010551

/-! ## A010551.P11447755023124791334

`a(n-1)*ceil(n/2)` with `a(0)=1`
-/

namespace A010551.P11447755023124791334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * ⌈(n : ℚ) / 2⌉

end

end A010551.P11447755023124791334

namespace A010551

/-- `a(n-1)*ceil(n/2)` -/
def P11447755023124791334.Spec : Prop :=
  ∀ n, P11447755023124791334.a n = A010551 n

end A010551

/-! ## A010551.P10571960100053276341

`round(a(n-1))*round(n/2)` with `a(0)=1`

`round` is left out, it is the identity on integers.
-/

namespace A010551.P10571960100053276341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * SequenceMachineLib.roundAway ((n : ℚ) / 2)

end

end A010551.P10571960100053276341

namespace A010551

/-- `round(a(n-1))*round(n/2)` -/
def P10571960100053276341.Spec : Prop :=
  ∀ n, P10571960100053276341.a n = A010551 n

end A010551

/-!
# A010552: Multiply successively by 1 (once), 2 (twice), 3 (thrice), etc.

The programs for A010552, the canonical program `A010552.P6574515605083764491` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010552 has offset 0).

The definition of A010552 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A010552.P6574515605083764491

`a(n-1)*floor(sqrt(2*n)+1/2)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A010552

/-- `a(n-1)*floor(sqrt(2*n)+1/2)` -/
def P6574515605083764491.Spec : Prop :=
  ∀ n, P6574515605083764491.a n = A010552 n

theorem P6574515605083764491.correct : P6574515605083764491.Spec := by
  intro n
  simp only [A010552]

end A010552

/-! ## A010552.P1257389662145440174

`∏[∑[char[∑[char[1]+n]]]]`
-/

namespace A010552.P1257389662145440174
noncomputable section

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f5 j = n then 1 else 0) + n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A010552.P1257389662145440174

namespace A010552

/-- `∏[∑[char[∑[char[1]+n]]]]` -/
def P1257389662145440174.Spec : Prop :=
  ∀ n, (P1257389662145440174.a n : ℤ) = A010552 n

end A010552

/-! ## A010552.P12436061213428986607

`round(sqrt(2*n))*a(n-1)` with `a(0)=1`
-/

namespace A010552.P12436061213428986607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ)) * a (n - 1)

end

end A010552.P12436061213428986607

namespace A010552

/-- `round(sqrt(2*n))*a(n-1)` -/
def P12436061213428986607.Spec : Prop :=
  ∀ n, P12436061213428986607.a n = A010552 n

end A010552

/-! ## A010552.P17550118065868153693

`floor(∏[a(n-a(n-1))+1])` with `a(0)=1, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A010552.P17550118065868153693
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  f1 (n - f1 (n - 1)) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A010552.P17550118065868153693

namespace A010552

/-- `floor(∏[a(n-a(n-1))+1])` -/
def P17550118065868153693.Spec : Prop :=
  ∀ n, (P17550118065868153693.a n : ℤ) = A010552 n

end A010552

/-! ## A010552.P8911554030857022165

`ceil(∏[a(n-a(n-1))+1])` with `a(0)=1, a(1)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A010552.P8911554030857022165
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  f1 (n - f1 (n - 1)) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A010552.P8911554030857022165

namespace A010552

/-- `ceil(∏[a(n-a(n-1))+1])` -/
def P8911554030857022165.Spec : Prop :=
  ∀ n, (P8911554030857022165.a n : ℤ) = A010552 n

end A010552

/-! ## A010552.P7093302223672131703

`floor((comp[∑[n+1]]-n)*a(n-1))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A010552.P7093302223672131703
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)) * a (n - 1)

end

end A010552.P7093302223672131703

namespace A010552

/-- `floor((comp[∑[n+1]]-n)*a(n-1))` -/
def P7093302223672131703.Spec : Prop :=
  ∀ n, P7093302223672131703.a n = A010552 n

end A010552

/-! ## A010552.P555135625634485580

`round((comp[∑[n+1]]-n)*a(n-1))` with `a(0)=1`

`round` is left out, it is the identity on integers.
-/

namespace A010552.P555135625634485580
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)) * a (n - 1)

end

end A010552.P555135625634485580

namespace A010552

/-- `round((comp[∑[n+1]]-n)*a(n-1))` -/
def P555135625634485580.Spec : Prop :=
  ∀ n, P555135625634485580.a n = A010552 n

end A010552

/-! ## A010552.P1151507304921229499

`abs(∏[-A107436(n+1)])`
-/

namespace A010552.P1151507304921229499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A107436 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∏ j ∈ Finset.range (n + 1), f1 j|

end

end A010552.P1151507304921229499

namespace A010552

/-- `abs(∏[-A107436(n+1)])` -/
def P1151507304921229499.Spec : Prop :=
  ∀ n, P1151507304921229499.a n = A010552 n

end A010552

/-! ## A010552.P10340777590024504915

`lcm(A007318(n), ∏[A107436(n+1)])`
-/

namespace A010552.P10340777590024504915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107436 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A007318 n) (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A010552.P10340777590024504915

namespace A010552

/-- `lcm(A007318(n), ∏[A107436(n+1)])` -/
def P10340777590024504915.Spec : Prop :=
  ∀ n, (P10340777590024504915.a n : ℤ) = A010552 n

end A010552

/-! ## A010552.P16132176483473599325

`∏[A002024(n+1)]/A002024(n+1)`
-/

namespace A010552.P16132176483473599325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A002024 (n + 1) : ℚ)

end

end A010552.P16132176483473599325

namespace A010552

/-- `∏[A002024(n+1)]/A002024(n+1)` -/
def P16132176483473599325.Spec : Prop :=
  ∀ n, P16132176483473599325.a n = (A010552 n : ℚ)

end A010552

/-! ## A010552.P14565374363457495086

`∏[A123578(n+1)]/A123578(n+1)`
-/

namespace A010552.P14565374363457495086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123578 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A123578 (n + 1) : ℚ)

end

end A010552.P14565374363457495086

namespace A010552

/-- `∏[A123578(n+1)]/A123578(n+1)` -/
def P14565374363457495086.Spec : Prop :=
  ∀ n, P14565374363457495086.a n = (A010552 n : ℚ)

end A010552

/-! ## A010552.P11476015827577644639

`∏[A107436(n+2)]/A107436(n+2)`
-/

namespace A010552.P11476015827577644639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107436 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A107436 (n + 2) : ℚ)

end

end A010552.P11476015827577644639

namespace A010552

/-- `∏[A107436(n+2)]/A107436(n+2)` -/
def P11476015827577644639.Spec : Prop :=
  ∀ n, P11476015827577644639.a n = (A010552 n : ℚ)

end A010552

/-! ## A010552.P17372534767882158563

`∏[A000194(2*(n+1))]/A000194(2*(n+1))`
-/

namespace A010552.P17372534767882158563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (2 * (n + 1))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A000194 (2 * (n + 1)) : ℚ)

end

end A010552.P17372534767882158563

namespace A010552

/-- `∏[A000194(2*(n+1))]/A000194(2*(n+1))` -/
def P17372534767882158563.Spec : Prop :=
  ∀ n, P17372534767882158563.a n = (A010552 n : ℚ)

end A010552

/-! ## A010552.P9101018823175129090

`∏[A349520(2*(n+1))]/A349520(2*(n+1))`
-/

namespace A010552.P9101018823175129090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349520 (2 * (n + 1))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A349520 (2 * (n + 1)) : ℚ)

end

end A010552.P9101018823175129090

namespace A010552

/-- `∏[A349520(2*(n+1))]/A349520(2*(n+1))` -/
def P9101018823175129090.Spec : Prop :=
  ∀ n, P9101018823175129090.a n = (A010552 n : ℚ)

end A010552

/-!
# A010553: a(n) = tau(tau(n)).

The programs for A010553, the canonical program `A010553.P11932377395426747626` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010553 has offset 1).

The definition of A010553 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000005(A000005(n+1))` (program `A010553.P11932377395426747626`, by `A010553.P11932377395426747626.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A010553.P11932377395426747626

`A000005(A000005(n+1))`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A010553

/-- `A000005(A000005(n+1))` -/
def P11932377395426747626.Spec : Prop :=
  ∀ n, P11932377395426747626.a n = A010553 (n + 1)

theorem P11932377395426747626.correct : P11932377395426747626.Spec := by
  intro n
  simp only [A010553, Nat.add_sub_cancel]

end A010553

/-! ## A010553.P12152378303799732007

`∏{e}[∏{e}[n+1, #+1], #+1]`
-/

namespace A010553.P12152378303799732007
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1)

end

end A010553.P12152378303799732007

namespace A010553

/-- `∏{e}[∏{e}[n+1, #+1], #+1]` -/
def P12152378303799732007.Spec : Prop :=
  ∀ n, (P12152378303799732007.a n : ℤ) = A010553 (n + 1)

end A010553

/-! ## A010553.P18049326486422685177

`∑[A111407(n)]`
-/

namespace A010553.P18049326486422685177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111407 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A010553.P18049326486422685177

namespace A010553

/-- `∑[A111407(n)]` -/
def P18049326486422685177.Spec : Prop :=
  ∀ n, P18049326486422685177.a n = A010553 (n + 1)

end A010553

/-! ## A010553.P9260070858661096592

`∏{e}[A329484(n+1), #+1]`
-/

namespace A010553.P9260070858661096592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329484 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A010553.P9260070858661096592

namespace A010553

/-- `∏{e}[A329484(n+1), #+1]` -/
def P9260070858661096592.Spec : Prop :=
  ∀ n, (P9260070858661096592.a n : ℤ) = A010553 (n + 1)

end A010553

/-! ## A010553.P1739571321433071971

`A322483(∏{e}[n+1, #+1]²)`
-/

namespace A010553.P1739571321433071971
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322483 ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1)) ^ 2)

end

end A010553.P1739571321433071971

namespace A010553

/-- `A322483(∏{e}[n+1, #+1]²)` -/
def P1739571321433071971.Spec : Prop :=
  ∀ n, P1739571321433071971.a n = A010553 (n + 1)

end A010553

/-! ## A010553.P15065558125557854776

`A032741(∏{e}[n+1, #+1])+1`
-/

namespace A010553.P15065558125557854776
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1)) + 1

end

end A010553.P15065558125557854776

namespace A010553

/-- `A032741(∏{e}[n+1, #+1])+1` -/
def P15065558125557854776.Spec : Prop :=
  ∀ n, P15065558125557854776.a n = A010553 (n + 1)

end A010553

/-! ## A010553.P16871905654403798778

`∑{d}[∏{e}[n+1, #+1], A057427(#)]`
-/

namespace A010553.P16871905654403798778
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A057427 d

end

end A010553.P16871905654403798778

namespace A010553

/-- `∑{d}[∏{e}[n+1, #+1], A057427(#)]` -/
def P16871905654403798778.Spec : Prop :=
  ∀ n, P16871905654403798778.a n = A010553 (n + 1)

end A010553

/-! ## A010553.P13475216437868988732

`A000005(Δ[A006218(n)])`
-/

namespace A010553.P13475216437868988732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (f1 (n + 1) - f1 n).toNat

end

end A010553.P13475216437868988732

namespace A010553

/-- `A000005(Δ[A006218(n)])` -/
def P13475216437868988732.Spec : Prop :=
  ∀ n, P13475216437868988732.a n = A010553 (n + 1)

end A010553

/-! ## A010553.P17195851129604291105

`A000005(Δ[A054519(n)])`
-/

namespace A010553.P17195851129604291105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (f1 (n + 1) - f1 n).toNat

end

end A010553.P17195851129604291105

namespace A010553

/-- `A000005(Δ[A054519(n)])` -/
def P17195851129604291105.Spec : Prop :=
  ∀ n, P17195851129604291105.a n = A010553 (n + 1)

end A010553

/-! ## A010553.P14541762134602505379

`A046951(A035116(n+1))`
-/

namespace A010553.P14541762134602505379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (A035116 (n + 1)).toNat

end

end A010553.P14541762134602505379

namespace A010553

/-- `A046951(A035116(n+1))` -/
def P14541762134602505379.Spec : Prop :=
  ∀ n, P14541762134602505379.a n = A010553 (n + 1)

end A010553

/-! ## A010553.P13178364013131810377

`A069157(A062011(n+1))`
-/

namespace A010553.P13178364013131810377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069157 (A062011 (n + 1)).toNat

end

end A010553.P13178364013131810377

namespace A010553

/-- `A069157(A062011(n+1))` -/
def P13178364013131810377.Spec : Prop :=
  ∀ n, P13178364013131810377.a n = A010553 (n + 1)

end A010553

/-! ## A010553.P7620033542220800069

`A109974(A066446(n+1))`
-/

namespace A010553.P7620033542220800069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109974 (A066446 (n + 1)).toNat

end

end A010553.P7620033542220800069

namespace A010553

/-- `A109974(A066446(n+1))` -/
def P7620033542220800069.Spec : Prop :=
  ∀ n, P7620033542220800069.a n = A010553 (n + 1)

end A010553

/-! ## A010553.P12430433383040352923

`A051194(A184389(n+1))`
-/

namespace A010553.P12430433383040352923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051194 (A184389 (n + 1)).toNat

end

end A010553.P12430433383040352923

namespace A010553

/-- `A051194(A184389(n+1))` -/
def P12430433383040352923.Spec : Prop :=
  ∀ n, P12430433383040352923.a n = A010553 (n + 1)

end A010553

/-! ## A010553.P11667088646192657245

`A112329(A145154(n+1))`
-/

namespace A010553.P11667088646192657245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112329 (A145154 (n + 1)).toNat

end

end A010553.P11667088646192657245

namespace A010553

/-- `A112329(A145154(n+1))` -/
def P11667088646192657245.Spec : Prop :=
  ∀ n, P11667088646192657245.a n = A010553 (n + 1)

end A010553

/-! ## A010553.P16978351375412636716

`A046951(Δ[A006218(n)]²)`
-/

namespace A010553.P16978351375412636716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A010553.P16978351375412636716

namespace A010553

/-- `A046951(Δ[A006218(n)]²)` -/
def P16978351375412636716.Spec : Prop :=
  ∀ n, P16978351375412636716.a n = A010553 (n + 1)

end A010553

/-! ## A010553.P1706213990166898682

`A322483(Δ[A054519(n)]²)`
-/

namespace A010553.P1706213990166898682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322483 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A010553.P1706213990166898682

namespace A010553

/-- `A322483(Δ[A054519(n)]²)` -/
def P1706213990166898682.Spec : Prop :=
  ∀ n, P1706213990166898682.a n = A010553 (n + 1)

end A010553

/-! ## A010553.P731725426452000578

`A046951(A329484(n+1)²)`
-/

namespace A010553.P731725426452000578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (A329484 (n + 1) ^ 2).toNat

end

end A010553.P731725426452000578

namespace A010553

/-- `A046951(A329484(n+1)²)` -/
def P731725426452000578.Spec : Prop :=
  ∀ n, P731725426452000578.a n = A010553 (n + 1)

end A010553

/-! ## A010553.P15294824429287249750

`A369308(A329484(n+1)²)`
-/

namespace A010553.P15294824429287249750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369308 (A329484 (n + 1) ^ 2).toNat

end

end A010553.P15294824429287249750

namespace A010553

/-- `A369308(A329484(n+1)²)` -/
def P15294824429287249750.Spec : Prop :=
  ∀ n, P15294824429287249750.a n = A010553 (n + 1)

end A010553

/-! ## A010553.P8159311811884128582

`A130210(2*A035116(n+1))`
-/

namespace A010553.P8159311811884128582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130210 (2 * A035116 (n + 1)).toNat

end

end A010553.P8159311811884128582

namespace A010553

/-- `A130210(2*A035116(n+1))` -/
def P8159311811884128582.Spec : Prop :=
  ∀ n, P8159311811884128582.a n = A010553 (n + 1)

end A010553

/-!
# A010554: a(n) = phi(phi(n)), where phi is the Euler totient function.

The programs for A010554, the canonical program `A010554.P11993721654035451912` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010554 has offset 1).

The definition of A010554 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A010554.P11993721654035451912

`A000010(A000010(n+1))`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A010554

/-- `A000010(A000010(n+1))` -/
def P11993721654035451912.Spec : Prop :=
  ∀ n, P11993721654035451912.a n = A010554 (n + 1)

theorem P11993721654035451912.correct : P11993721654035451912.Spec := by
  intro n
  simp only [A010554, Nat.add_sub_cancel]

end A010554

/-! ## A010554.P14526308088592919646

`∑[A111409(n)]`
-/

namespace A010554.P14526308088592919646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111409 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A010554.P14526308088592919646

namespace A010554

/-- `∑[A111409(n)]` -/
def P14526308088592919646.Spec : Prop :=
  ∀ n, P14526308088592919646.a n = A010554 (n + 1)

end A010554

/-! ## A010554.P12729935970701920276

`n-A219029(n+1)`
-/

namespace A010554.P12729935970701920276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A219029 (n + 1)

end

end A010554.P12729935970701920276

namespace A010554

/-- `n-A219029(n+1)` -/
def P12729935970701920276.Spec : Prop :=
  ∀ n, P12729935970701920276.a n = A010554 (n + 1)

theorem P12729935970701920276.correct : P12729935970701920276.Spec := by
  intro n
  simp only [A010554, Nat.add_sub_cancel, A010554.P12729935970701920276.a, A010554.P11993721654035451912.a, A000010, A000010.P4673923239450215316.a, A219029, A219029.P12345475859855343114.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P15666735857375843373.a, A001221, A001221.P10258181745752134128.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A059841, A059841.P7264174615531153985.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A010554

/-! ## A010554.P7846732771915503959

`A000010(Δ[A002088(n)])`
-/

namespace A010554.P7846732771915503959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (f1 (n + 1) - f1 n).toNat

end

end A010554.P7846732771915503959

namespace A010554

/-- `A000010(Δ[A002088(n)])` -/
def P7846732771915503959.Spec : Prop :=
  ∀ n, P7846732771915503959.a n = A010554 (n + 1)

end A010554

/-! ## A010554.P1358162059541384371

`A000010(Δ[A005728(n)])`
-/

namespace A010554.P1358162059541384371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (f1 (n + 1) - f1 n).toNat

end

end A010554.P1358162059541384371

namespace A010554

/-- `A000010(Δ[A005728(n)])` -/
def P1358162059541384371.Spec : Prop :=
  ∀ n, P1358162059541384371.a n = A010554 (n + 1)

end A010554

/-! ## A010554.P14447879716039945254

`A055034(Δ[A002088(n)])`
-/

namespace A010554.P14447879716039945254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055034 (f1 (n + 1) - f1 n).toNat

end

end A010554.P14447879716039945254

namespace A010554

/-- `A055034(Δ[A002088(n)])` -/
def P14447879716039945254.Spec : Prop :=
  ∀ n, P14447879716039945254.a n = A010554 (n + 1)

end A010554

/-! ## A010554.P14881165929709779681

`A055034(Δ[A005728(n)])`
-/

namespace A010554.P14881165929709779681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055034 (f1 (n + 1) - f1 n).toNat

end

end A010554.P14881165929709779681

namespace A010554

/-- `A055034(Δ[A005728(n)])` -/
def P14881165929709779681.Spec : Prop :=
  ∀ n, P14881165929709779681.a n = A010554 (n + 1)

end A010554

/-! ## A010554.P18204214469947855581

`A109606(Δ[A002088(n)])+1`
-/

namespace A010554.P18204214469947855581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109606 (f1 (n + 1) - f1 n).toNat + 1

end

end A010554.P18204214469947855581

namespace A010554

/-- `A109606(Δ[A002088(n)])+1` -/
def P18204214469947855581.Spec : Prop :=
  ∀ n, P18204214469947855581.a n = A010554 (n + 1)

end A010554

/-! ## A010554.P9506379503197776714

`A055034(A349137(2*n+1))`
-/

namespace A010554.P9506379503197776714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055034 (A349137 (2 * n + 1)).toNat

end

end A010554.P9506379503197776714

namespace A010554

/-- `A055034(A349137(2*n+1))` -/
def P9506379503197776714.Spec : Prop :=
  ∀ n, P9506379503197776714.a n = A010554 (n + 1)

end A010554

/-! ## A010554.P7174889087165898423

`A349137(A083254(n+1)+n)`
-/

namespace A010554.P7174889087165898423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349137 (A083254 (n + 1) + (n : ℤ)).toNat

end

end A010554.P7174889087165898423

namespace A010554

/-- `A349137(A083254(n+1)+n)` -/
def P7174889087165898423.Spec : Prop :=
  ∀ n, P7174889087165898423.a n = A010554 (n + 1)

end A010554

/-! ## A010554.P10194018227357718535

`sqrt(A127473(sqrt(A127473(n+1))))`
-/

namespace A010554.P10194018227357718535
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A127473 (SequenceMachineLib.roundAway (Real.sqrt (A127473 (n + 1) : ℝ))).toNat : ℝ)

end

end A010554.P10194018227357718535

namespace A010554

/-- `sqrt(A127473(sqrt(A127473(n+1))))` -/
def P10194018227357718535.Spec : Prop :=
  ∀ n, P10194018227357718535.a n = (A010554 (n + 1) : ℝ)

end A010554

/-! ## A010554.P14399414210123777364

`A109606(A109606(n+1)+1)+1`
-/

namespace A010554.P14399414210123777364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109606 (A109606 (n + 1) + 1).toNat + 1

end

end A010554.P14399414210123777364

namespace A010554

/-- `A109606(A109606(n+1)+1)+1` -/
def P14399414210123777364.Spec : Prop :=
  ∀ n, P14399414210123777364.a n = A010554 (n + 1)

theorem P14399414210123777364.correct : P14399414210123777364.Spec := by
  intro n
  simp only [A010554, Nat.add_sub_cancel, A010554.P14399414210123777364.a, A010554.P11993721654035451912.a, A000010, A000010.P4673923239450215316.a, A109606, A109606.P2415810041766612210.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P15666735857375843373.a, A001221, A001221.P10258181745752134128.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A059841, A059841.P7264174615531153985.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A010554

/-! ## A010554.P12986050303976811703

`A039649(A039649(n+1)-1)-1`
-/

namespace A010554.P12986050303976811703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (A039649 (n + 1) - 1).toNat - 1

end

end A010554.P12986050303976811703

namespace A010554

/-- `A039649(A039649(n+1)-1)-1` -/
def P12986050303976811703.Spec : Prop :=
  ∀ n, P12986050303976811703.a n = A010554 (n + 1)

theorem P12986050303976811703.correct : P12986050303976811703.Spec := by
  intro n
  simp only [A010554, Nat.add_sub_cancel, A010554.P12986050303976811703.a, A010554.P11993721654035451912.a, A000010, A000010.P4673923239450215316.a, A039649, A039649.P16717312505280968063.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P15666735857375843373.a, A001221, A001221.P10258181745752134128.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A059841, A059841.P7264174615531153985.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A010554

/-! ## A010554.P10047310163064620296

`A319998(A319998(2*(n+1)))/2`
-/

namespace A010554.P10047310163064620296
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A319998 (A319998 (2 * (n + 1))).toNat : ℚ) / 2

end

end A010554.P10047310163064620296

namespace A010554

/-- `A319998(A319998(2*(n+1)))/2` -/
def P10047310163064620296.Spec : Prop :=
  ∀ n, P10047310163064620296.a n = (A010554 (n + 1) : ℚ)

end A010554

/-! ## A010554.P1223924157982970474

`A070556(n+1)-A293516(n+1)`
-/

namespace A010554.P1223924157982970474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070556 (n + 1) - A293516 (n + 1)

end

end A010554.P1223924157982970474

namespace A010554

/-- `A070556(n+1)-A293516(n+1)` -/
def P1223924157982970474.Spec : Prop :=
  ∀ n, P1223924157982970474.a n = A010554 (n + 1)

end A010554

/-! ## A010554.P13947498394773478567

`A346692(n+1)-A065152(n+1)`
-/

namespace A010554.P13947498394773478567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346692 (n + 1) - A065152 (n + 1)

end

end A010554.P13947498394773478567

namespace A010554

/-- `A346692(n+1)-A065152(n+1)` -/
def P13947498394773478567.Spec : Prop :=
  ∀ n, P13947498394773478567.a n = A010554 (n + 1)

end A010554

/-! ## A010554.P6275829344787859906

`A034380(n+1)*A206941(n+1)`
-/

namespace A010554.P6275829344787859906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034380 (n + 1) * A206941 (n + 1)

end

end A010554.P6275829344787859906

namespace A010554

/-- `A034380(n+1)*A206941(n+1)` -/
def P6275829344787859906.Spec : Prop :=
  ∀ n, P6275829344787859906.a n = A010554 (n + 1)

end A010554

/-! ## A010554.P6049326986585021923

`A055034(gcd(2, n)*A055034(n+1))`
-/

namespace A010554.P6049326986585021923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055034 ((Nat.gcd 2 n : ℤ) * A055034 (n + 1)).toNat

end

end A010554.P6049326986585021923

namespace A010554

/-- `A055034(gcd(2, n)*A055034(n+1))` -/
def P6049326986585021923.Spec : Prop :=
  ∀ n, P6049326986585021923.a n = A010554 (n + 1)

end A010554

/-! ## A010554.P2322024769450974822

`A000010(lcm(2, A000010(1-(n-2*n))))`
-/

namespace A010554.P2322024769450974822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (Int.lcm 2 (A000010 (1 - ((n : ℤ) - (2 * n : ℤ))).toNat))

end

end A010554.P2322024769450974822

namespace A010554

/-- `A000010(lcm(2, A000010(1-(n-2*n))))` -/
def P2322024769450974822.Spec : Prop :=
  ∀ n, P2322024769450974822.a n = A010554 (n + 1)

end A010554

/-! ## A010554.P1251861525205030281

`n-(A219428(n+1)+A070556(n+1))`
-/

namespace A010554.P1251861525205030281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A219428 (n + 1) + A070556 (n + 1))

end

end A010554.P1251861525205030281

namespace A010554

/-- `n-(A219428(n+1)+A070556(n+1))` -/
def P1251861525205030281.Spec : Prop :=
  ∀ n, P1251861525205030281.a n = A010554 (n + 1)

end A010554

/-!
# A010555: a(n) = 1 if n is the product of an even number of distinct primes, otherwise a(n) = -1.

The programs for A010555, the canonical program `A010555.P8824829674371752059` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010555 has offset 1).

The definition of A010555 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A353629, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A010555.P8824829674371752059

`(-1)^(1-A353629(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A010555

/-- `(-1)^(1-A353629(n+1))` -/
def P8824829674371752059.Spec : Prop :=
  ∀ n, P8824829674371752059.a n = (A010555 (n + 1) : ℚ)

end A010555

/-! ## A010555.P7996782094307768135

`(∏{p}[n+1, -#]-n)%2`
-/

namespace A010555.P7996782094307768135
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∏ p ∈ Nat.primeFactors (f1 n), (-(p : ℤ)) - (n : ℤ)) 2

end

end A010555.P7996782094307768135

namespace A010555

/-- `(∏{p}[n+1, -#]-n)%2` -/
def P7996782094307768135.Spec : Prop :=
  ∀ n, P7996782094307768135.a n = A010555 (n + 1)

end A010555

/-! ## A010555.P5183981800864227197

`A133695(n+1)%2`
-/

namespace A010555.P5183981800864227197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A133695 (n + 1)) 2

end

end A010555.P5183981800864227197

namespace A010555

/-- `A133695(n+1)%2` -/
def P5183981800864227197.Spec : Prop :=
  ∀ n, P5183981800864227197.a n = A010555 (n + 1)

end A010555

/-! ## A010555.P15668911155065268607

`2*A353629(n+1)-1`
-/

namespace A010555.P15668911155065268607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A353629 (n + 1) - 1

end

end A010555.P15668911155065268607

namespace A010555

/-- `2*A353629(n+1)-1` -/
def P15668911155065268607.Spec : Prop :=
  ∀ n, P15668911155065268607.a n = A010555 (n + 1)

end A010555

/-! ## A010555.P16356485002342747368

`and(2, A007423(n+1))-1`
-/

namespace A010555.P16356485002342747368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (A007423 (n + 1)) - 1

end

end A010555.P16356485002342747368

namespace A010555

/-- `and(2, A007423(n+1))-1` -/
def P16356485002342747368.Spec : Prop :=
  ∀ n, P16356485002342747368.a n = A010555 (n + 1)

end A010555

/-! ## A010555.P5715232085663635099

`or(1, A008683(n+1)-1)`
-/

namespace A010555.P5715232085663635099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A008683 (n + 1) - 1)

end

end A010555.P5715232085663635099

namespace A010555

/-- `or(1, A008683(n+1)-1)` -/
def P5715232085663635099.Spec : Prop :=
  ∀ n, P5715232085663635099.a n = A010555 (n + 1)

end A010555

/-! ## A010555.P11166538968300532410

`-or(1, -A008683(C(n+1, n)))`
-/

namespace A010555.P11166538968300532410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.lor 1 (-A008683 (Nat.choose (n + 1) n))

end

end A010555.P11166538968300532410

namespace A010555

/-- `-or(1, -A008683(C(n+1, n)))` -/
def P11166538968300532410.Spec : Prop :=
  ∀ n, P11166538968300532410.a n = A010555 (n + 1)

end A010555

/-! ## A010555.P10123753151825471989

`-or(1, -A008683(2*n-(n-1)))`
-/

namespace A010555.P10123753151825471989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.lor 1 (-A008683 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat)

end

end A010555.P10123753151825471989

namespace A010555

/-- `-or(1, -A008683(2*n-(n-1)))` -/
def P10123753151825471989.Spec : Prop :=
  ∀ n, P10123753151825471989.a n = A010555 (n + 1)

end A010555

/-! ## A010555.P15101644001781561370

`A106400(A293227(n+1))`
-/

namespace A010555.P15101644001781561370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106400 (A293227 (n + 1)).toNat

end

end A010555.P15101644001781561370

namespace A010555

/-- `A106400(A293227(n+1))` -/
def P15101644001781561370.Spec : Prop :=
  ∀ n, P15101644001781561370.a n = A010555 (n + 1)

end A010555

/-! ## A010555.P3081250895607190668

`A007423(n+1)-A007424(n+1)`
-/

namespace A010555.P3081250895607190668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007423 (n + 1) - A007424 (n + 1)

end

end A010555.P3081250895607190668

namespace A010555

/-- `A007423(n+1)-A007424(n+1)` -/
def P3081250895607190668.Spec : Prop :=
  ∀ n, P3081250895607190668.a n = A010555 (n + 1)

end A010555

/-! ## A010555.P14910074783116847482

`A076544(n+1)-A008966(n+1)`
-/

namespace A010555.P14910074783116847482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076544 (n + 1) - A008966 (n + 1)

end

end A010555.P14910074783116847482

namespace A010555

/-- `A076544(n+1)-A008966(n+1)` -/
def P14910074783116847482.Spec : Prop :=
  ∀ n, P14910074783116847482.a n = A010555 (n + 1)

end A010555

/-! ## A010555.P9696480327187717038

`A008683(n+1)-A107078(n+1)`
-/

namespace A010555.P9696480327187717038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) - A107078 (n + 1)

end

end A010555.P9696480327187717038

namespace A010555

/-- `A008683(n+1)-A107078(n+1)` -/
def P9696480327187717038.Spec : Prop :=
  ∀ n, P9696480327187717038.a n = A010555 (n + 1)

end A010555

/-! ## A010555.P12564366276304796410

`A076544(n+1)-A008683(n+1)²`
-/

namespace A010555.P12564366276304796410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076544 (n + 1) - A008683 (n + 1) ^ 2

end

end A010555.P12564366276304796410

namespace A010555

/-- `A076544(n+1)-A008683(n+1)²` -/
def P12564366276304796410.Spec : Prop :=
  ∀ n, P12564366276304796410.a n = A010555 (n + 1)

end A010555

/-! ## A010555.P8175735276220176396

`A008683(n^abs(A008683(n+1))+1)`
-/

namespace A010555.P8175735276220176396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (SequenceMachineLib.roundAway ((n : ℚ) ^ (|A008683 (n + 1)| : ℤ) + 1)).toNat

end

end A010555.P8175735276220176396

namespace A010555

/-- `A008683(n^abs(A008683(n+1))+1)` -/
def P8175735276220176396.Spec : Prop :=
  ∀ n, P8175735276220176396.a n = A010555 (n + 1)

end A010555

/-! ## A010555.P3798954813767967952

`A008683(n^A008683(n+1)²+1)`
-/

namespace A010555.P3798954813767967952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A008683 (n + 1) ^ 2 : ℤ) + 1)).toNat

end

end A010555.P3798954813767967952

namespace A010555

/-- `A008683(n^A008683(n+1)²+1)` -/
def P3798954813767967952.Spec : Prop :=
  ∀ n, P3798954813767967952.a n = A010555 (n + 1)

end A010555

/-! ## A010555.P16750975773958668667

`A008683(C(n, A008683(n+1)²)+1)`
-/

namespace A010555.P16750975773958668667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (Nat.choose n (A008683 (n + 1) ^ 2).toNat + 1)

end

end A010555.P16750975773958668667

namespace A010555

/-- `A008683(C(n, A008683(n+1)²)+1)` -/
def P16750975773958668667.Spec : Prop :=
  ∀ n, P16750975773958668667.a n = A010555 (n + 1)

end A010555

/-! ## A010555.P15010924523714007152

`A008683(n^dr(A008683(n+1))+1)`
-/

namespace A010555.P15010924523714007152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n ^ SequenceMachineLib.digitalRoot (A008683 (n + 1)) + 1)

end

end A010555.P15010924523714007152

namespace A010555

/-- `A008683(n^dr(A008683(n+1))+1)` -/
def P15010924523714007152.Spec : Prop :=
  ∀ n, P15010924523714007152.a n = A010555 (n + 1)

end A010555

/-! ## A010555.P2031184633355054808

`A008683(ceil(n^A008683(n+1))+1)`
-/

namespace A010555.P2031184633355054808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (⌈(n : ℚ) ^ (A008683 (n + 1) : ℤ)⌉ + 1).toNat

end

end A010555.P2031184633355054808

namespace A010555

/-- `A008683(ceil(n^A008683(n+1))+1)` -/
def P2031184633355054808.Spec : Prop :=
  ∀ n, P2031184633355054808.a n = A010555 (n + 1)

end A010555

/-! ## A010555.P16397781850103720386

`A008683(n+1)+A008966(n+1)-1`
-/

namespace A010555.P16397781850103720386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) + (A008966 (n + 1) - 1)

end

end A010555.P16397781850103720386

namespace A010555

/-- `A008683(n+1)+A008966(n+1)-1` -/
def P16397781850103720386.Spec : Prop :=
  ∀ n, P16397781850103720386.a n = A010555 (n + 1)

end A010555

/-! ## A010555.P8164047857176334732

`A007423(n+1)*A008683(n+1)-1`
-/

namespace A010555.P8164047857176334732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007423 (n + 1) * A008683 (n + 1) - 1

end

end A010555.P8164047857176334732

namespace A010555

/-- `A007423(n+1)*A008683(n+1)-1` -/
def P8164047857176334732.Spec : Prop :=
  ∀ n, P8164047857176334732.a n = A010555 (n + 1)

end A010555

/-!
# A010556: High temperature series for spin-1/2 Ising magnetic susceptibility on 4D simple cubic lattice.

The programs for A010556, there is no canonical definition to state claims against.
-/

/-! ## A010556.P4046266161101526971

`8*A037915(a(n-1)+a(n-2))` with `a(0)=1, a(1)=8`
-/

namespace A010556.P4046266161101526971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 8] fun n a =>
  8 * A037915 (a (n - 1) + a (n - 2)).toNat

end

end A010556.P4046266161101526971

/-! ## A010556.P1136316173467791882

`A022144(∑[6*(a(n-1)+a(n-2))])` with `a(0)=0, a(1)=1`
-/

namespace A010556.P1136316173467791882
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  6 * (f1 (n - 1) + f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022144 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A010556.P1136316173467791882

/-!
# A010563: High-temperature expansion for Ising model spin-spin correlation function on 4-d cubic lattice.

The programs for A010563, there is no canonical definition to state claims against.
-/

/-! ## A010563.P13771736505913434527

`A010572(n)/4`
-/

namespace A010563.P13771736505913434527
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010572 n : ℚ) / 4

end

end A010563.P13771736505913434527

/-!
# A010566: Number of 2n-step 2-dimensional closed self-avoiding paths on square lattice.

The programs for A010566, there is no canonical definition to state claims against.
-/

/-! ## A010566.P8023296127085411969

`2*A019266(n+1)`
-/

namespace A010566.P8023296127085411969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A019266 (n + 1)

end

end A010566.P8023296127085411969

/-! ## A010566.P7329713033491163075

`4*(n+1)*A002931(n+1)`
-/

namespace A010566.P7329713033491163075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * ((n + 1 : ℤ) * A002931 (n + 1))

end

end A010566.P7329713033491163075

/-! ## A010566.P11646002523795985665

`Δ[A046092(n)]*A002931(n+1)`
-/

namespace A010566.P11646002523795985665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046092 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A002931 (n + 1)

end

end A010566.P11646002523795985665

/-! ## A010566.P6219536047309135953

`A002931(n+1)*A008574(n+1)`
-/

namespace A010566.P6219536047309135953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002931 (n + 1) * A008574 (n + 1)

end

end A010566.P6219536047309135953

/-! ## A010566.P9198864591299855573

`A002931(n+1)*A008586(n+1)`
-/

namespace A010566.P9198864591299855573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002931 (n + 1) * A008586 (n + 1)

end

end A010566.P9198864591299855573

/-! ## A010566.P3655233965309085145

`2*A002931(n+1)*A103517(n)`
-/

namespace A010566.P3655233965309085145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A002931 (n + 1) * A103517 n)

end

end A010566.P3655233965309085145

/-! ## A010566.P4330925152963779475

`4*A178334(n)*A225877(n+1)`
-/

namespace A010566.P4330925152963779475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A178334 n * A225877 (n + 1)

end

end A010566.P4330925152963779475

/-! ## A010566.P7291485187635201292

`A002931(n+1)*A005843(A103517(n))`
-/

namespace A010566.P7291485187635201292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002931 (n + 1) * A005843 (A103517 n).toNat

end

end A010566.P7291485187635201292

/-! ## A010566.P13105867804542259452

`A008586(A178334(n))*A225877(n+1)`
-/

namespace A010566.P13105867804542259452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 (A178334 n).toNat * A225877 (n + 1)

end

end A010566.P13105867804542259452

/-!
# A010567: Number of 2n-step self-avoiding closed paths (or cycles) on the 3-dimensional cubic lattice.

The programs for A010567, there is no canonical definition to state claims against.
-/

/-! ## A010567.P10578484857607976306

`A001413(floor((n+1)²/(a(n-1)+2))+n+1)` with `a(0)=6`
-/

namespace A010567.P10578484857607976306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6] fun n a =>
  A001413 (⌊((n + 1) ^ 2 : ℚ) / (a (n - 1) + 2 : ℚ)⌋ + (n + 1 : ℤ)).toNat

end

end A010567.P10578484857607976306

/-! ## A010567.P8975350580761831737

`A186685(n+3)+A001413(n+1)`
-/

namespace A010567.P8975350580761831737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186685 (n + 3) + A001413 (n + 1)

end

end A010567.P8975350580761831737

/-! ## A010567.P15546996073109362996

`A001413(n+1)+C(6, A140476(n))`
-/

namespace A010567.P15546996073109362996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001413 (n + 1) + (Nat.choose 6 (A140476 n).toNat : ℤ)

end

end A010567.P15546996073109362996

/-! ## A010567.P1143512769354377414

`A055667(2*(n+2))+A001413(n+1)`
-/

namespace A010567.P1143512769354377414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055667 (2 * (n + 2)) + A001413 (n + 1)

end

end A010567.P1143512769354377414

/-! ## A010567.P7439878529781042502

`A001413(n+1)+C(6, A001043(n+1))`
-/

namespace A010567.P7439878529781042502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001413 (n + 1) + (Nat.choose 6 (A001043 (n + 1)).toNat : ℤ)

end

end A010567.P7439878529781042502

/-!
# A010571: High temperature expansion of -u/J in odd powers of v = tanh(J/kT), where u is energy per site of the spin-1/2 Ising model on cubic lattice with nearest-neighbor interaction J at temperature T.

The programs for A010571, there is no canonical definition to state claims against.
-/

/-! ## A010571.P14667569831334108226

`∑[A002916(n)]/Δ[n²]`
-/

namespace A010571.P14667569831334108226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002916 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / ((f2 (n + 1) : ℤ) - (f2 n : ℤ) : ℚ)

end

end A010571.P14667569831334108226

/-! ## A010571.P7397382418767540204

`∑[3*A001408(n)]/Δ[n²]`
-/

namespace A010571.P7397382418767540204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A001408 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / ((f2 (n + 1) : ℤ) - (f2 n : ℤ) : ℚ)

end

end A010571.P7397382418767540204

/-! ## A010571.P7113248041900146281

`floor(∑[A002916(n)]/A005408(n))`
-/

namespace A010571.P7113248041900146281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002916 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A005408 n : ℚ)⌋

end

end A010571.P7113248041900146281

/-!
# A010572: High-temperature coefficients for the internal energy for spin-1/2 Ising model on 4-d cubic lattice.

The programs for A010572, there is no canonical definition to state claims against.
-/

/-! ## A010572.P6092410914952621565

`4*A010563(n)`
-/

namespace A010572.P6092410914952621565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A010563 n

end

end A010572.P6092410914952621565

/-!
# A010575: Number of n-step self-avoiding walks on 4-d cubic lattice.

The programs for A010575, there is no canonical definition to state claims against.
-/

/-! ## A010575.P18065016647362262328

`A004275(4*A240830(a(n-1)+n)+1)` with `a(0)=1`
-/

namespace A010575.P18065016647362262328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A004275 (4 * A240830 (a (n - 1) + (n : ℤ)).toNat + 1).toNat

end

end A010575.P18065016647362262328

/-! ## A010575.P11121525657353537383

`A349061(A323423(2*n))+A010556(n)`
-/

namespace A010575.P11121525657353537383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349061 (A323423 (2 * n)).toNat + A010556 n

end

end A010575.P11121525657353537383

/-!
# A010576: Number of n-step self-avoiding walks on 5-d cubic lattice.

The programs for A010576, there is no canonical definition to state claims against.
-/

/-! ## A010576.P16187888226961381921

`A010579(n*gcd(5, n))`
-/

namespace A010576.P16187888226961381921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010579 (n * Nat.gcd 5 n)

end

end A010576.P16187888226961381921

/-!
# A010577: Number of n-step self-avoiding walks on 6-d cubic lattice.

The programs for A010577, there is no canonical definition to state claims against.
-/

/-! ## A010577.P7836399488000958635

`A010580(n*gcd(n+1, ∏{p}[n+1, #+1]))`
-/

namespace A010577.P7836399488000958635
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010580 (n * Nat.gcd (n + 1) (∏ p ∈ Nat.primeFactors (f1 n), (p + 1)))

end

end A010577.P7836399488000958635

/-!
# A010582: Decimal expansion of cube root of 10.

The programs for A010582, the canonical program `A010582.P12130869140144784025` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010582 has offset 1).

The definition of A010582 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A010582.P12130869140144784025

`A018003(3*n+1)%10`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A010582

/-- `A018003(3*n+1)%10` -/
def P12130869140144784025.Spec : Prop :=
  ∀ n, P12130869140144784025.a n = A010582 (n + 1)

theorem P12130869140144784025.correct : P12130869140144784025.Spec := by
  intro n
  simp only [A010582, Nat.add_sub_cancel]

end A010582

/-! ## A010582.P8349158104997611733

`(A018005(3*n+2)-1)%10`
-/

namespace A010582.P8349158104997611733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A018005 (3 * n + 2) - 1) 10

end

end A010582.P8349158104997611733

namespace A010582

/-- `(A018005(3*n+2)-1)%10` -/
def P8349158104997611733.Spec : Prop :=
  ∀ n, P8349158104997611733.a n = A010582 (n + 1)

end A010582

