import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
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
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C002
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B007.C001
import Seq.B010.C000
import Seq.B013.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
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
# A198700: a(n) = 11*10^n - 1.

The programs for A198700, the canonical program `A198700.P16084763041529016898` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A198700 has offset 0).

The definition of A198700 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `11*10^n-1` (program `A198700.P16084763041529016898`, by `A198700.P16084763041529016898.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A198700.P16084763041529016898

`11*10^n-1`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A198700

/-- `11*10^n-1` -/
def P16084763041529016898.Spec : Prop :=
  ∀ n, P16084763041529016898.a n = A198700 n

theorem P16084763041529016898.correct : P16084763041529016898.Spec := by
  intro n
  simp only [A198700]

end A198700

/-! ## A198700.P8980283025908356697

`ogf((10-x)/(1-11x+10x^2))`
-/

namespace A198700.P8980283025908356697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [10, -1] [1, -11, 10] n

end

end A198700.P8980283025908356697

namespace A198700

/-- `ogf((10-x)/(1-11x+10x^2))` -/
def P8980283025908356697.Spec : Prop :=
  ∀ n, P8980283025908356697.a n = A198700 n

end A198700

/-! ## A198700.P9291732584583875299

`10*(a(n-1)+9/10)` with `a(0)=10`
-/

namespace A198700.P9291732584583875299
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [10] fun n a =>
  10 * (a (n - 1) + (9 : ℚ) / 10)

end

end A198700.P9291732584583875299

namespace A198700

/-- `10*(a(n-1)+9/10)` -/
def P9291732584583875299.Spec : Prop :=
  ∀ n, P9291732584583875299.a n = (A198700 n : ℚ)

theorem P9291732584583875299.correct : P9291732584583875299.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A198700, Nat.add_sub_cancel, A198700.P9291732584583875299.a, A198700.P16084763041529016898.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A198700, Nat.add_sub_cancel, A198700.P9291732584583875299.a, A198700.P16084763041529016898.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A198700

/-! ## A198700.P10665246886857985443

`record[10*a(n-2)+9]` with `a(0)=10, a(1)=0`
-/

namespace A198700.P10665246886857985443
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [10, 0] fun n f1 =>
  10 * f1 (n - 2) + 9

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A198700.P10665246886857985443

namespace A198700

/-- `record[10*a(n-2)+9]` -/
def P10665246886857985443.Spec : Prop :=
  ∀ n, (P10665246886857985443.a n : ℤ) = A198700 n

end A198700

/-! ## A198700.P15701254121676804779

`∑[10*a(n-1)-char[1]]` with `a(0)=10`
-/

namespace A198700.P15701254121676804779
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.rec [10] fun n f1 =>
  10 * f1 (n - 1) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A198700.P15701254121676804779

namespace A198700

/-- `∑[10*a(n-1)-char[1]]` -/
def P15701254121676804779.Spec : Prop :=
  ∀ n, P15701254121676804779.a n = A198700 n

end A198700

/-! ## A198700.P16582031322822899482

`∑[9*floor(10/9*a(n-1))]` with `a(0)=10`
-/

namespace A198700.P16582031322822899482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [10] fun n f1 =>
  9 * ⌊(10 : ℚ) / 9 * (f1 (n - 1) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A198700.P16582031322822899482

namespace A198700

/-- `∑[9*floor(10/9*a(n-1))]` -/
def P16582031322822899482.Spec : Prop :=
  ∀ n, P16582031322822899482.a n = A198700 n

end A198700

/-! ## A198700.P9195987623751869401

`A070199(Δ[n²])`
-/

namespace A198700.P9195987623751869401
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070199 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A198700.P9195987623751869401

namespace A198700

/-- `A070199(Δ[n²])` -/
def P9195987623751869401.Spec : Prop :=
  ∀ n, P9195987623751869401.a n = A198700 n

end A198700

/-! ## A198700.P2674550681119758280

`record[Δ[A164851(n)]]`
-/

namespace A198700.P2674550681119758280
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164851 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A198700.P2674550681119758280

namespace A198700

/-- `record[Δ[A164851(n)]]` -/
def P2674550681119758280.Spec : Prop :=
  ∀ n, P2674550681119758280.a n = A198700 n

end A198700

/-! ## A198700.P4528963649324740304

`abs(2-A199691(n))`
-/

namespace A198700.P4528963649324740304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A199691 n|

end

end A198700.P4528963649324740304

namespace A198700

/-- `abs(2-A199691(n))` -/
def P4528963649324740304.Spec : Prop :=
  ∀ n, P4528963649324740304.a n = A198700 n

end A198700

/-! ## A198700.P9673490386481732298

`∑[A105694(n+1)]`
-/

namespace A198700.P9673490386481732298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105694 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A198700.P9673490386481732298

namespace A198700

/-- `∑[A105694(n+1)]` -/
def P9673490386481732298.Spec : Prop :=
  ∀ n, P9673490386481732298.a n = A198700 n

end A198700

/-!
# A198701: Number of n X n 0..4 arrays with values 0..4 introduced in row major order and each element equal to at least one horizontal or vertical neighbor.

The programs for A198701, there is no canonical definition to state claims against.
-/

/-! ## A198701.P16206728457340296254

`A198708(∑[4*n]+1)`
-/

namespace A198701.P16206728457340296254
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198708 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A198701.P16206728457340296254

/-!
# A198702: Number of nX2 0..4 arrays with values 0..4 introduced in row major order and each element equal to at least one horizontal or vertical neighbor.

The programs for A198702, there is no canonical definition to state claims against.
-/

/-! ## A198702.P17946172522094942523

`A198708(∑[n+1]+2)`
-/

namespace A198702.P17946172522094942523
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198708 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A198702.P17946172522094942523

/-! ## A198702.P14999047270298320466

`record[root(A198708(n+2), A077028(n))]`
-/

namespace A198702.P14999047270298320466
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A198708 (n + 2) : ℝ) ^ (1 / (A077028 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A198702.P14999047270298320466

/-! ## A198702.P15245550362675189460

`record[gcd(A098825(n), A198708(n+1))]`
-/

namespace A198702.P15245550362675189460
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A098825 n) (A198708 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A198702.P15245550362675189460

/-! ## A198702.P18124088454414076399

`record[lcm(A103452(n), A198708(n+2))]`
-/

namespace A198702.P18124088454414076399
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A103452 n) (A198708 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A198702.P18124088454414076399

/-! ## A198702.P4626349123776916935

`A198708(A133263(n+1))+A025469(n)`
-/

namespace A198702.P4626349123776916935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198708 (A133263 (n + 1)).toNat + A025469 n

end

end A198702.P4626349123776916935

/-!
# A198703: Number of nX3 0..4 arrays with values 0..4 introduced in row major order and each element equal to at least one horizontal or vertical neighbor.

The programs for A198703, there is no canonical definition to state claims against.
-/

/-! ## A198703.P10794821978989742760

`A198708(∑[n+2]+4)`
-/

namespace A198703.P10794821978989742760
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198708 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A198703.P10794821978989742760

/-! ## A198703.P12329531315942218540

`record[A198708(A008795(n)+3)]`
-/

namespace A198703.P12329531315942218540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198708 (A008795 n + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A198703.P12329531315942218540

/-! ## A198703.P9106892634706424689

`record[A198708(A198468(n+1)+2)]`
-/

namespace A198703.P9106892634706424689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198708 (A198468 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A198703.P9106892634706424689

/-! ## A198703.P5679934574323040929

`record[gcd(A198708(n+1), A303913(n))]`
-/

namespace A198703.P5679934574323040929
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A198708 (n + 1)) (A303913 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A198703.P5679934574323040929

/-! ## A198703.P687113390993020495

`record[gcd(A098825(n), A198708(n+2))]`
-/

namespace A198703.P687113390993020495
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A098825 n) (A198708 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A198703.P687113390993020495

/-!
# A198704: Number of nX4 0..4 arrays with values 0..4 introduced in row major order and each element equal to at least one horizontal or vertical neighbor.

The programs for A198704, there is no canonical definition to state claims against.
-/

/-! ## A198704.P1539888928175343759

`A198708(∑[n+3]+7)`
-/

namespace A198704.P1539888928175343759
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198708 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A198704.P1539888928175343759

/-! ## A198704.P15133654442297160364

`record[A198708(A198468(n+1)+3)]`
-/

namespace A198704.P15133654442297160364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198708 (A198468 (n + 1) + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A198704.P15133654442297160364

/-! ## A198704.P15391657051973438742

`A198708(A141214(n)+7)+A025466(n)`
-/

namespace A198704.P15391657051973438742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198708 (A141214 n + 7).toNat + A025466 n

end

end A198704.P15391657051973438742

/-! ## A198704.P9295464766991068230

`A198708(A141214(n)+7)+A165656(n)`
-/

namespace A198704.P9295464766991068230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198708 (A141214 n + 7).toNat + A165656 n

end

end A198704.P9295464766991068230

/-! ## A198704.P16633253015711232115

`A198708(A141214(n)+7)+A178798(n)`
-/

namespace A198704.P16633253015711232115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198708 (A141214 n + 7).toNat + A178798 n

end

end A198704.P16633253015711232115

/-!
# A198705: Number of nX5 0..4 arrays with values 0..4 introduced in row major order and each element equal to at least one horizontal or vertical neighbor.

The programs for A198705, there is no canonical definition to state claims against.
-/

/-! ## A198705.P18100548143255995868

`A198708(A167499(n+3))`
-/

namespace A198705.P18100548143255995868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198708 (A167499 (n + 3)).toNat

end

end A198705.P18100548143255995868

/-! ## A198705.P16394200817898753510

`A198708(A155212(n)+13)`
-/

namespace A198705.P16394200817898753510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198708 (A155212 n + 13).toNat

end

end A198705.P16394200817898753510

/-! ## A198705.P4936880392272080386

`A198708(A056000(n)+15)`
-/

namespace A198705.P4936880392272080386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198708 (A056000 n + 15).toNat

end

end A198705.P4936880392272080386

/-! ## A198705.P16349414975042544509

`A198708(eq[7, A066657(n)])`
-/

namespace A198705.P16349414975042544509
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198708 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A198705.P16349414975042544509

/-!
# A198706: Number of nX6 0..4 arrays with values 0..4 introduced in row major order and each element equal to at least one horizontal or vertical neighbor.

The programs for A198706, there is no canonical definition to state claims against.
-/

/-! ## A198706.P16917390679000268538

`A198708(A374007(n+1))`
-/

namespace A198706.P16917390679000268538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198708 (A374007 (n + 1)).toNat

end

end A198706.P16917390679000268538

/-!
# A198707: Number of nX7 0..4 arrays with values 0..4 introduced in row major order and each element equal to at least one horizontal or vertical neighbor.

The programs for A198707, there is no canonical definition to state claims against.
-/

/-! ## A198707.P2911551391006500286

`A198708(A374008(n+1))`
-/

namespace A198707.P2911551391006500286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198708 (A374008 (n + 1)).toNat

end

end A198707.P2911551391006500286

/-!
# A198709: Number of n X n 0..3 arrays with values 0..3 introduced in row major order and no element equal to any horizontal or vertical neighbor.

The programs for A198709, there is no canonical definition to state claims against.
-/

/-! ## A198709.P13086711873558823794

`A198715(2*(n+1)²-2*(n+1)+1)`
-/

namespace A198709.P13086711873558823794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198715 ((2 * (n + 1) ^ 2 : ℤ) - (2 * (n + 1) : ℤ) + 1).toNat

end

end A198709.P13086711873558823794

/-! ## A198709.P5721419705988481569

`ceil(A233012(n+1)/3)`
-/

namespace A198709.P5721419705988481569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A233012 (n + 1) : ℚ) / 3⌉

end

end A198709.P5721419705988481569

/-!
# A198710: Number of n X 3 0..3 arrays with values 0..3 introduced in row major order and no element equal to any horizontal or vertical neighbor.

The programs for A198710, there is no canonical definition to state claims against.
-/

/-! ## A198710.P16610902581676029365

`19*a(n-1)-45*a(n-2)+27*a(n-3)` with `a(0)=2, a(1)=25, a(2)=401`
-/

namespace A198710.P16610902581676029365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 25, 401] fun n a =>
  19 * a (n - 1) - 45 * a (n - 2) + 27 * a (n - 3)

end

end A198710.P16610902581676029365

/-! ## A198710.P1410711224415363231

`(A355882(n+1)+1)/2`
-/

namespace A198710.P1410711224415363231
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A355882 (n + 1) + 1 : ℚ) / 2

end

end A198710.P1410711224415363231

/-! ## A198710.P12047316427890731552

`ceil(A233013(n+1)/3)`
-/

namespace A198710.P12047316427890731552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A233013 (n + 1) : ℚ) / 3⌉

end

end A198710.P12047316427890731552

/-! ## A198710.P13468190386873831730

`ceil(A222439(n+1)/6)`
-/

namespace A198710.P13468190386873831730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A222439 (n + 1) : ℚ) / 6⌉

end

end A198710.P13468190386873831730

/-! ## A198710.P728323584599177138

`round(A222439(n+1)/6+A025466(n)/2)`
-/

namespace A198710.P728323584599177138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A222439 (n + 1) : ℚ) / 6 + (A025466 n : ℚ) / 2)

end

end A198710.P728323584599177138

/-! ## A198710.P1080550883135974457

`round(A222439(n+1)/6+A225181(n)/2)`
-/

namespace A198710.P1080550883135974457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A222439 (n + 1) : ℚ) / 6 + (A225181 n : ℚ) / 2)

end

end A198710.P1080550883135974457

/-!
# A198711: Number of n X 4 0..3 arrays with values 0..3 introduced in row major order and no element equal to any horizontal or vertical neighbor.

The programs for A198711, there is no canonical definition to state claims against.
-/

/-! ## A198711.P1265713493949863998

`ceil(A233014(n+1)/3)`
-/

namespace A198711.P1265713493949863998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A233014 (n + 1) : ℚ) / 3⌉

end

end A198711.P1265713493949863998

/-! ## A198711.P6813194810830966976

`ceil(A222440(n+1)/6)`
-/

namespace A198711.P6813194810830966976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A222440 (n + 1) : ℚ) / 6⌉

end

end A198711.P6813194810830966976

/-! ## A198711.P10296677027284600374

`round(A233014(n+1)/A122553(n+3))`
-/

namespace A198711.P10296677027284600374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A233014 (n + 1) : ℚ) / (A122553 (n + 3) : ℚ))

end

end A198711.P10296677027284600374

/-! ## A198711.P3028150657305860367

`A222440(n+1)/6+A000041(gcd(n, n+1))/2`
-/

namespace A198711.P3028150657305860367
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A222440 (n + 1) : ℚ) / 6 + (A000041 (Nat.gcd n (n + 1)) : ℚ) / 2

end

end A198711.P3028150657305860367

/-! ## A198711.P4265265284995518674

`A198715(∑[n+3]+7)`
-/

namespace A198711.P4265265284995518674
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198715 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A198711.P4265265284995518674

/-!
# A198712: Number of nX5 0..3 arrays with values 0..3 introduced in row major order and no element equal to any horizontal or vertical neighbor.

The programs for A198712, there is no canonical definition to state claims against.
-/

/-! ## A198712.P4087799199066573016

`ceil(A233015(n+1)/3)`
-/

namespace A198712.P4087799199066573016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A233015 (n + 1) : ℚ) / 3⌉

end

end A198712.P4087799199066573016

/-! ## A198712.P579218967970124878

`ceil(A222441(n+1)/6)`
-/

namespace A198712.P579218967970124878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A222441 (n + 1) : ℚ) / 6⌉

end

end A198712.P579218967970124878

/-! ## A198712.P15578924495101211925

`A198715(A374005(n+1))`
-/

namespace A198712.P15578924495101211925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198715 (A374005 (n + 1)).toNat

end

end A198712.P15578924495101211925

/-! ## A198712.P8577868888750022326

`A198715(Δ[A023545(n+1)])`
-/

namespace A198712.P8577868888750022326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198715 (f1 (n + 1) - f1 n).toNat

end

end A198712.P8577868888750022326

/-! ## A198712.P6047664542081993184

`A198715(A052905(n+2)+1)`
-/

namespace A198712.P6047664542081993184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198715 (A052905 (n + 2) + 1).toNat

end

end A198712.P6047664542081993184

/-!
# A198713: Number of nX6 0..3 arrays with values 0..3 introduced in row major order and no element equal to any horizontal or vertical neighbor.

The programs for A198713, there is no canonical definition to state claims against.
-/

/-! ## A198713.P17440174571322368519

`ceil(A233016(n+1)/3)`
-/

namespace A198713.P17440174571322368519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A233016 (n + 1) : ℚ) / 3⌉

end

end A198713.P17440174571322368519

/-! ## A198713.P3438127063978613360

`ceil(A222442(n+1)/6)`
-/

namespace A198713.P3438127063978613360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A222442 (n + 1) : ℚ) / 6⌉

end

end A198713.P3438127063978613360

/-! ## A198713.P2073719476892971448

`A198715(A374007(n+1))`
-/

namespace A198713.P2073719476892971448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198715 (A374007 (n + 1)).toNat

end

end A198713.P2073719476892971448

/-! ## A198713.P3755692359049916905

`A198715(A052905(n+3))`
-/

namespace A198713.P3755692359049916905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198715 (A052905 (n + 3)).toNat

end

end A198713.P3755692359049916905

/-! ## A198713.P11908380949127418573

`A198715(eq[5, A193592(n)])`
-/

namespace A198713.P11908380949127418573
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198715 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A198713.P11908380949127418573

/-!
# A198714: Number of nX7 0..3 arrays with values 0..3 introduced in row major order and no element equal to any horizontal or vertical neighbor.

The programs for A198714, there is no canonical definition to state claims against.
-/

/-! ## A198714.P5101061856381849289

`ceil(A233017(n+1)/3)`
-/

namespace A198714.P5101061856381849289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A233017 (n + 1) : ℚ) / 3⌉

end

end A198714.P5101061856381849289

/-! ## A198714.P2984192930805568755

`ceil(A222443(n+1)/6)`
-/

namespace A198714.P2984192930805568755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A222443 (n + 1) : ℚ) / 6⌉

end

end A198714.P2984192930805568755

/-! ## A198714.P15961913011988428610

`A198715(A374008(n+1))`
-/

namespace A198714.P15961913011988428610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198715 (A374008 (n + 1)).toNat

end

end A198714.P15961913011988428610

/-! ## A198714.P2531841272522408180

`A198715(A055999(n+4))`
-/

namespace A198714.P2531841272522408180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198715 (A055999 (n + 4)).toNat

end

end A198714.P2531841272522408180

/-!
# A198715: T(n,k)=Number of nXk 0..3 arrays with values 0..3 introduced in row major order and no element equal to any horizontal or vertical neighbor.

The programs for A198715, there is no canonical definition to state claims against.
-/

/-! ## A198715.P13737664953874541436

`ceil(A222444(n+1)/6)`
-/

namespace A198715.P13737664953874541436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A222444 (n + 1) : ℚ) / 6⌉

end

end A198715.P13737664953874541436

/-! ## A198715.P13062378968470131816

`round(A000007(n)+A222444(n+1)/6)`
-/

namespace A198715.P13062378968470131816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000007 n : ℚ) + (A222444 (n + 1) : ℚ) / 6)

end

end A198715.P13062378968470131816

/-! ## A198715.P426429876197981877

`ceil(A233018(n+1)/3)`
-/

namespace A198715.P426429876197981877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A233018 (n + 1) : ℚ) / 3⌉

end

end A198715.P426429876197981877

/-! ## A198715.P2498455142208477197

`round(A233018(n+1)/A122553(n))`
-/

namespace A198715.P2498455142208477197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A233018 (n + 1) : ℚ) / (A122553 n : ℚ))

end

end A198715.P2498455142208477197

/-! ## A198715.P679114482387847002

`round(A000007(n)+A233018(n+1)/3)`
-/

namespace A198715.P679114482387847002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000007 n : ℚ) + (A233018 (n + 1) : ℚ) / 3)

end

end A198715.P679114482387847002

/-!
# A198716: Number of n X n 0..6 arrays with values 0..6 introduced in row major order and no element equal to any horizontal or vertical neighbor.

The programs for A198716, there is no canonical definition to state claims against.
-/

/-! ## A198716.P12395778272181607683

`A198723(2*(n+1)²-2*(n+1)+1)`
-/

namespace A198716.P12395778272181607683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198723 ((2 * (n + 1) ^ 2 : ℤ) - (2 * (n + 1) : ℤ) + 1).toNat

end

end A198716.P12395778272181607683

/-!
# A198717: Number of n X 2 0..6 arrays with values 0..6 introduced in row major order and no element equal to any horizontal or vertical neighbor.

The programs for A198717, there is no canonical definition to state claims against.
-/

/-! ## A198717.P2152384738670934173

`A198723(∑[n+1]+2)`
-/

namespace A198717.P2152384738670934173
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198723 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A198717.P2152384738670934173

/-! ## A198717.P12536035901659870011

`A214187(∑[n+1])`
-/

namespace A198717.P12536035901659870011
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214187 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A198717.P12536035901659870011

/-! ## A198717.P10699879424219258773

`record[A214187(abs(A145063(n)))]`
-/

namespace A198717.P10699879424219258773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214187 |A145063 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A198717.P10699879424219258773

/-! ## A198717.P17910125327033170934

`record[A214187(∑[A057979(n)])]`
-/

namespace A198717.P17910125327033170934
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214187 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A198717.P17910125327033170934

/-! ## A198717.P1936401607087823789

`record[A214187(A286157(n+1))]`
-/

namespace A198717.P1936401607087823789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214187 (A286157 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A198717.P1936401607087823789

/-!
# A198718: Number of nX3 0..6 arrays with values 0..6 introduced in row major order and no element equal to any horizontal or vertical neighbor.

The programs for A198718, there is no canonical definition to state claims against.
-/

/-! ## A198718.P3626010914088644391

`A198723(∑[n+2]+4)`
-/

namespace A198718.P3626010914088644391
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198723 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A198718.P3626010914088644391

/-! ## A198718.P2864794868784694415

`A198723(A167614(n+1))+A185037(n)`
-/

namespace A198718.P2864794868784694415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198723 (A167614 (n + 1)).toNat + A185037 n

end

end A198718.P2864794868784694415

/-! ## A198718.P9603531530901178657

`A198723(A167614(n+1))+A185284(n)`
-/

namespace A198718.P9603531530901178657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198723 (A167614 (n + 1)).toNat + A185284 n

end

end A198718.P9603531530901178657

/-! ## A198718.P3654326398103171117

`A198723(A167614(n+1))%A222336(n+1)`
-/

namespace A198718.P3654326398103171117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A198723 (A167614 (n + 1)).toNat) (A222336 (n + 1))

end

end A198718.P3654326398103171117

/-! ## A198718.P8102582028546895858

`A198723(A034856(n+2))+A022898(2*(n+1))`
-/

namespace A198718.P8102582028546895858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198723 (A034856 (n + 2)).toNat + A022898 (2 * (n + 1))

end

end A198718.P8102582028546895858

/-!
# A198719: Number of nX4 0..6 arrays with values 0..6 introduced in row major order and no element equal to any horizontal or vertical neighbor.

The programs for A198719, there is no canonical definition to state claims against.
-/

/-! ## A198719.P10407230273763767563

`A198723(A141214(n)+7)`
-/

namespace A198719.P10407230273763767563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198723 (A141214 n + 7).toNat

end

end A198719.P10407230273763767563

/-! ## A198719.P16105097980640532530

`A198723(A167614(n+2)+1)`
-/

namespace A198719.P16105097980640532530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198723 (A167614 (n + 2) + 1).toNat

end

end A198719.P16105097980640532530

/-! ## A198719.P3794836261886885431

`A198723(A179865(n+4)+4)`
-/

namespace A198719.P3794836261886885431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198723 (A179865 (n + 4) + 4).toNat

end

end A198719.P3794836261886885431

/-! ## A198719.P12703232718445695707

`A198723(A027379(n+2))`
-/

namespace A198719.P12703232718445695707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198723 (A027379 (n + 2)).toNat

end

end A198719.P12703232718445695707

/-! ## A198719.P2529717478781573435

`A198723(A055998(n+2))`
-/

namespace A198719.P2529717478781573435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198723 (A055998 (n + 2)).toNat

end

end A198719.P2529717478781573435

/-!
# A198720: Number of nX5 0..6 arrays with values 0..6 introduced in row major order and no element equal to any horizontal or vertical neighbor.

The programs for A198720, there is no canonical definition to state claims against.
-/

/-! ## A198720.P5764036222808199451

`A198723(A374005(n+1))`
-/

namespace A198720.P5764036222808199451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198723 (A374005 (n + 1)).toNat

end

end A198720.P5764036222808199451

/-! ## A198720.P14901667852594609299

`A198723(A167614(n+3)+2)`
-/

namespace A198720.P14901667852594609299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198723 (A167614 (n + 3) + 2).toNat

end

end A198720.P14901667852594609299

/-! ## A198720.P14396494684704887048

`A198723(A000217(n+5)-n)`
-/

namespace A198720.P14396494684704887048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198723 (A000217 (n + 5) - (n : ℤ)).toNat

end

end A198720.P14396494684704887048

/-! ## A198720.P13956155301709552939

`A198723(A052905(n+2)+1)`
-/

namespace A198720.P13956155301709552939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198723 (A052905 (n + 2) + 1).toNat

end

end A198720.P13956155301709552939

/-!
# A198721: 

The programs for A198721, there is no canonical definition to state claims against.
-/

/-! ## A198721.P12860569854374221780

`A198723(A302338(2*n+5)+∑[n])`
-/

namespace A198721.P12860569854374221780
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198723 (A302338 (2 * n + 5) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A198721.P12860569854374221780

/-!
# A198722: 

The programs for A198722, there is no canonical definition to state claims against.
-/

/-! ## A198722.P2537591273692220057

`A198723(A167614(n+5)+4)`
-/

namespace A198722.P2537591273692220057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198723 (A167614 (n + 5) + 4).toNat

end

end A198722.P2537591273692220057

/-!
# A198723: T(n,k) = number of n X k 0..6 arrays with values 0..6 introduced in row major order and no element equal to any horizontal or vertical neighbor.

The programs for A198723, there is no canonical definition to state claims against.
-/

/-! ## A198723.P13841828687506855824

`A207868(n+1)%(A287211(n)+1)-char[11]`
-/

namespace A198723.P13841828687506855824
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A207868 (n + 1)) (A287211 n + 1) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A198723.P13841828687506855824

/-! ## A198723.P3217860617577237136

`A255378(A185293(n))+A198982(n+1)`
-/

namespace A198723.P3217860617577237136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255378 (A185293 n).toNat + A198982 (n + 1)

end

end A198723.P3217860617577237136

/-! ## A198723.P13391716601253939452

`A198914(n+1)-A025466(A003478(n))`
-/

namespace A198723.P13391716601253939452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198914 (n + 1) - A025466 (A003478 n).toNat

end

end A198723.P13391716601253939452

/-! ## A198723.P13617157123741999649

`A198914(n+1)-A011746(A022179(n))`
-/

namespace A198723.P13617157123741999649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198914 (n + 1) - A011746 (A022179 n).toNat

end

end A198723.P13617157123741999649

/-! ## A198723.P6957973287973962446

`A207868(n+1)-A025466(A003478(n))`
-/

namespace A198723.P6957973287973962446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207868 (n + 1) - A025466 (A003478 n).toNat

end

end A198723.P6957973287973962446

/-!
# A198726: Number of partitions of n into positive Loeschian numbers (cf. A003136).

The programs for A198726, there is no canonical definition to state claims against.
-/

/-! ## A198726.P6607468072426936810

`A015754(n+2)-A059841(A094233(n))`
-/

namespace A198726.P6607468072426936810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015754 (n + 2) - A059841 (A094233 n).toNat

end

end A198726.P6607468072426936810

/-!
# A198727: Number of partitions of n into distinct positive Loeschian numbers (cf. A003136).

The programs for A198727, there is no canonical definition to state claims against.
-/

/-! ## A198727.P13102920709366016482

`A196564(A353447(n+5)+n)`
-/

namespace A198727.P13102920709366016482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196564 (A353447 (n + 5) + (n : ℤ)).toNat

end

end A198727.P13102920709366016482

/-! ## A198727.P13946020149016003900

`A361850(n+3)+A047999(A000079(n))`
-/

namespace A198727.P13946020149016003900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361850 (n + 3) + A047999 (A000079 n).toNat

end

end A198727.P13946020149016003900

/-! ## A198727.P16188454174037976868

`A033264(∑[A001221(n+1)+A000628(n)]+10)`
-/

namespace A198727.P16188454174037976868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) + A000628 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033264 (∑ j ∈ Finset.range (n + 1), f1 j + 10).toNat

end

end A198727.P16188454174037976868

/-! ## A198727.P5495085633034626410

`A276729(xor(2, A103027(n+1)))`
-/

namespace A198727.P5495085633034626410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276729 (Int.xor 2 (A103027 (n + 1))).toNat

end

end A198727.P5495085633034626410

/-! ## A198727.P4489689346745309599

`C(A194884(n), A016016((n+1)*∏{p}[n+1, #]))`
-/

namespace A198727.P4489689346745309599
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A194884 n).toNat (A016016 ((n + 1) * (∏ p ∈ Nat.primeFactors (f1 n), p))).toNat

end

end A198727.P4489689346745309599

/-!
# A198759: The number of pairs of braces to note the properly nested set with n elements.

The programs for A198759, there is no canonical definition to state claims against.
-/

/-! ## A198759.P1216241290984395051

`∑[A199769(or(n, char[n²]))]`
-/

namespace A198759.P1216241290984395051
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199769 (Nat.lor n (if ∃ j, f2 j = n then 1 else 0))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A198759.P1216241290984395051

/-! ## A198759.P33343025675378878

`∑[A199769(floor(acot(n)+n))]`
-/

namespace A198759.P33343025675378878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199769 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A198759.P33343025675378878

/-! ## A198759.P16847298542746891062

`A199769(n)+a(n-1)` with `a(0)=1`
-/

namespace A198759.P16847298542746891062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A199769 n + a (n - 1)

end

end A198759.P16847298542746891062

/-! ## A198759.P11939668426943559463

`∑[A199769(round(sqrt(n²+1)))]`
-/

namespace A198759.P11939668426943559463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199769 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A198759.P11939668426943559463

/-! ## A198759.P2648791570129232974

`∑[comp[∑[A004111(n+1)+1]]-n+1]`
-/

namespace A198759.P2648791570129232974
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004111 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A198759.P2648791570129232974

/-!
# A198760: Number of initial spin configurations in two-colored rooted trees with n nodes.

The programs for A198760, there is no canonical definition to state claims against.
-/

/-! ## A198760.P10826139180106281742

`A038055(n+2)-2*A005750(n+2)`
-/

namespace A198760.P10826139180106281742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038055 (n + 2) - 2 * A005750 (n + 2)

end

end A198760.P10826139180106281742

/-! ## A198760.P18255804800604815220

`record[Δ[2*A007748(n+3)]]`
-/

namespace A198760.P18255804800604815220
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007748 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A198760.P18255804800604815220

/-!
# A198762: a(n) = 3*5^n - 1 = 2*A057651(n).

The programs for A198762, the canonical program `A198762.P13273572539260848219` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A198762 has offset 0).

The definition of A198762 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*5^n-1` (program `A198762.P13273572539260848219`, by `A198762.P13273572539260848219.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A198762.P13273572539260848219

`3*5^n-1`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A198762

/-- `3*5^n-1` -/
def P13273572539260848219.Spec : Prop :=
  ∀ n, P13273572539260848219.a n = A198762 n

theorem P13273572539260848219.correct : P13273572539260848219.Spec := by
  intro n
  simp only [A198762]

end A198762

/-! ## A198762.P10078114894142945667

`2*A057651(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A198762.P10078114894142945667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A057651 n

end

end A198762.P10078114894142945667

namespace A198762

/-- `2*A057651(n)` -/
def P10078114894142945667.Spec : Prop :=
  ∀ n, P10078114894142945667.a n = A198762 n

end A198762

/-! ## A198762.P16525679740300763328

`xor(1, 3*5^n)`
-/

namespace A198762.P16525679740300763328
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (3 * 5 ^ n)

end

end A198762.P16525679740300763328

namespace A198762

/-- `xor(1, 3*5^n)` -/
def P16525679740300763328.Spec : Prop :=
  ∀ n, (P16525679740300763328.a n : ℤ) = A198762 n

end A198762

/-! ## A198762.P16660699025530295369

`ogf((2+2x)/(1-6x+5x^2))`
-/

namespace A198762.P16660699025530295369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 2] [1, -6, 5] n

end

end A198762.P16660699025530295369

namespace A198762

/-- `ogf((2+2x)/(1-6x+5x^2))` -/
def P16660699025530295369.Spec : Prop :=
  ∀ n, P16660699025530295369.a n = A198762 n

end A198762

/-! ## A198762.P2207504081394759463

`abs(1-lcm(3, 5^n))`
-/

namespace A198762.P2207504081394759463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (Nat.lcm 3 (5 ^ n) : ℤ)|

end

end A198762.P2207504081394759463

namespace A198762

/-- `abs(1-lcm(3, 5^n))` -/
def P2207504081394759463.Spec : Prop :=
  ∀ n, P2207504081394759463.a n = A198762 n

end A198762

/-! ## A198762.P13826185541876561814

`and(3*5^n, -2)`
-/

namespace A198762.P13826185541876561814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (3 * 5 ^ n : ℤ) (-2)

end

end A198762.P13826185541876561814

namespace A198762

/-- `and(3*5^n, -2)` -/
def P13826185541876561814.Spec : Prop :=
  ∀ n, P13826185541876561814.a n = A198762 n

end A198762

/-! ## A198762.P8507031945357193747

`∑[5*a(n-1)]` with `a(0)=2, a(1)=12`
-/

namespace A198762.P8507031945357193747
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 12] fun n f1 =>
  5 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A198762.P8507031945357193747

namespace A198762

/-- `∑[5*a(n-1)]` -/
def P8507031945357193747.Spec : Prop :=
  ∀ n, (P8507031945357193747.a n : ℤ) = A198762 n

end A198762

/-! ## A198762.P2237355402332687910

`5*(1-(1/5-a(n-1)))` with `a(0)=2`
-/

namespace A198762.P2237355402332687910
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2] fun n a =>
  5 * (1 - ((1 : ℚ) / 5 - a (n - 1)))

end

end A198762.P2237355402332687910

namespace A198762

/-- `5*(1-(1/5-a(n-1)))` -/
def P2237355402332687910.Spec : Prop :=
  ∀ n, P2237355402332687910.a n = (A198762 n : ℚ)

theorem P2237355402332687910.correct : P2237355402332687910.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A198762, Nat.add_sub_cancel, A198762.P2237355402332687910.a, A198762.P13273572539260848219.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A198762, Nat.add_sub_cancel, A198762.P2237355402332687910.a, A198762.P13273572539260848219.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A198762

/-! ## A198762.P1146862726870607322

`floor(2*3*a(n-1)-(a(n-1)-4))` with `a(0)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A198762.P1146862726870607322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  2 * (3 * a (n - 1)) - (a (n - 1) - 4)

end

end A198762.P1146862726870607322

namespace A198762

/-- `floor(2*3*a(n-1)-(a(n-1)-4))` -/
def P1146862726870607322.Spec : Prop :=
  ∀ n, P1146862726870607322.a n = A198762 n

theorem P1146862726870607322.correct : P1146862726870607322.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A198762, Nat.add_sub_cancel, A198762.P1146862726870607322.a, A198762.P13273572539260848219.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A198762, Nat.add_sub_cancel, A198762.P1146862726870607322.a, A198762.P13273572539260848219.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A198762

/-! ## A198762.P6000590735985394577

`∑[2*A003948(n)]`
-/

namespace A198762.P6000590735985394577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A003948 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A198762.P6000590735985394577

namespace A198762

/-- `∑[2*A003948(n)]` -/
def P6000590735985394577.Spec : Prop :=
  ∀ n, P6000590735985394577.a n = A198762 n

end A198762

/-! ## A198762.P584373100913040527

`2*(A199213(n)-1)`
-/

namespace A198762.P584373100913040527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A199213 n - 1)

end

end A198762.P584373100913040527

namespace A198762

/-- `2*(A199213(n)-1)` -/
def P584373100913040527.Spec : Prop :=
  ∀ n, P584373100913040527.a n = A198762 n

end A198762

/-! ## A198762.P9958957441307923194

`2*(2-A165755(n))`
-/

namespace A198762.P9958957441307923194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (2 - A165755 n)

end

end A198762.P9958957441307923194

namespace A198762

/-- `2*(2-A165755(n))` -/
def P9958957441307923194.Spec : Prop :=
  ∀ n, P9958957441307923194.a n = A198762 n

end A198762

/-! ## A198762.P8934920266671741189

`2*A097162(2*n)`
-/

namespace A198762.P8934920266671741189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A097162 (2 * n)

end

end A198762.P8934920266671741189

namespace A198762

/-- `2*A097162(2*n)` -/
def P8934920266671741189.Spec : Prop :=
  ∀ n, P8934920266671741189.a n = A198762 n

end A198762

/-! ## A198762.P17618743761398680329

`2*A238366(2*n)`
-/

namespace A198762.P17618743761398680329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A238366 (2 * n)

end

end A198762.P17618743761398680329

namespace A198762

/-- `2*A238366(2*n)` -/
def P17618743761398680329.Spec : Prop :=
  ∀ n, P17618743761398680329.a n = A198762 n

end A198762

/-! ## A198762.P3451995495339916963

`A181287(3*(n+1)+n)`
-/

namespace A198762.P3451995495339916963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181287 (3 * (n + 1) + n)

end

end A198762.P3451995495339916963

namespace A198762

/-- `A181287(3*(n+1)+n)` -/
def P3451995495339916963.Spec : Prop :=
  ∀ n, P3451995495339916963.a n = A198762 n

end A198762

/-! ## A198762.P1445479230713211887

`(A198764(n)-1)/2`
-/

namespace A198762.P1445479230713211887
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A198764 n - 1 : ℚ) / 2

end

end A198762.P1445479230713211887

namespace A198762

/-- `(A198764(n)-1)/2` -/
def P1445479230713211887.Spec : Prop :=
  ∀ n, P1445479230713211887.a n = (A198762 n : ℚ)

end A198762

/-! ## A198762.P9414140936496394796

`(A198768(n)-2)/3`
-/

namespace A198762.P9414140936496394796
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A198768 n - 2 : ℚ) / 3

end

end A198762.P9414140936496394796

namespace A198762

/-- `(A198768(n)-2)/3` -/
def P9414140936496394796.Spec : Prop :=
  ∀ n, P9414140936496394796.a n = (A198762 n : ℚ)

end A198762

/-! ## A198762.P7480967803461367284

`(A199216(n)-3)/2`
-/

namespace A198762.P7480967803461367284
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A199216 n - 3 : ℚ) / 2

end

end A198762.P7480967803461367284

namespace A198762

/-- `(A199216(n)-3)/2` -/
def P7480967803461367284.Spec : Prop :=
  ∀ n, P7480967803461367284.a n = (A198762 n : ℚ)

end A198762

/-! ## A198762.P16207810669780366779

`(A097804(n)-5)/2`
-/

namespace A198762.P16207810669780366779
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A097804 n - 5 : ℚ) / 2

end

end A198762.P16207810669780366779

namespace A198762

/-- `(A097804(n)-5)/2` -/
def P16207810669780366779.Spec : Prop :=
  ∀ n, P16207810669780366779.a n = (A198762 n : ℚ)

end A198762

/-!
# A198763: a(n) = 4*5^n-1.

The programs for A198763, the canonical program `A198763.P9822682624418847043` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A198763 has offset 0).

The definition of A198763 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*5^n-1` (program `A198763.P9822682624418847043`, by `A198763.P9822682624418847043.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A198763.P9822682624418847043

`4*5^n-1`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A198763

/-- `4*5^n-1` -/
def P9822682624418847043.Spec : Prop :=
  ∀ n, P9822682624418847043.a n = A198763 n

theorem P9822682624418847043.correct : P9822682624418847043.Spec := by
  intro n
  simp only [A198763]

end A198763

/-! ## A198763.P14768765817517563122

`xor(7, Δ[5^n])`
-/

namespace A198763.P14768765817517563122
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 7 ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A198763.P14768765817517563122

namespace A198763

/-- `xor(7, Δ[5^n])` -/
def P14768765817517563122.Spec : Prop :=
  ∀ n, P14768765817517563122.a n = A198763 n

end A198763

/-! ## A198763.P16342074098497188206

`ogf((3+x)/(1-6x+5x^2))`
-/

namespace A198763.P16342074098497188206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 1] [1, -6, 5] n

end

end A198763.P16342074098497188206

namespace A198763

/-- `ogf((3+x)/(1-6x+5x^2))` -/
def P16342074098497188206.Spec : Prop :=
  ∀ n, P16342074098497188206.a n = A198763 n

end A198763

/-! ## A198763.P4623370582977136680

`abs(1-lcm(4, 5^n))`
-/

namespace A198763.P4623370582977136680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (Nat.lcm 4 (5 ^ n) : ℤ)|

end

end A198763.P4623370582977136680

namespace A198763

/-- `abs(1-lcm(4, 5^n))` -/
def P4623370582977136680.Spec : Prop :=
  ∀ n, P4623370582977136680.a n = A198763 n

end A198763

/-! ## A198763.P2606286668442470620

`-or(1, Δ[-5^n])`
-/

namespace A198763.P2606286668442470620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(5 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.lor 1 (f1 (n + 1) - f1 n)

end

end A198763.P2606286668442470620

namespace A198763

/-- `-or(1, Δ[-5^n])` -/
def P2606286668442470620.Spec : Prop :=
  ∀ n, P2606286668442470620.a n = A198763 n

end A198763

/-! ## A198763.P9895245681319361520

`∑[5*a(n-1)]` with `a(0)=3, a(1)=16`
-/

namespace A198763.P9895245681319361520
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 16] fun n f1 =>
  5 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A198763.P9895245681319361520

namespace A198763

/-- `∑[5*a(n-1)]` -/
def P9895245681319361520.Spec : Prop :=
  ∀ n, (P9895245681319361520.a n : ℤ) = A198763 n

end A198763

/-! ## A198763.P3705345275981912697

`abs(5*a(n-1)+4)` with `a(0)=3`
-/

namespace A198763.P3705345275981912697
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  5 * a (n - 1) + 4

end

end A198763.P3705345275981912697

namespace A198763

/-- `abs(5*a(n-1)+4)` -/
def P3705345275981912697.Spec : Prop :=
  ∀ n, (P3705345275981912697.a n : ℤ) = A198763 n

theorem P3705345275981912697.correct : P3705345275981912697.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A198763, Nat.add_sub_cancel, A198763.P3705345275981912697.a, A198763.P9822682624418847043.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A198763, Nat.add_sub_cancel, A198763.P3705345275981912697.a, A198763.P9822682624418847043.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A198763

/-! ## A198763.P5025810455480436935

`5*(a(n-1)+4/5)` with `a(0)=3`
-/

namespace A198763.P5025810455480436935
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [3] fun n a =>
  5 * (a (n - 1) + (4 : ℚ) / 5)

end

end A198763.P5025810455480436935

namespace A198763

/-- `5*(a(n-1)+4/5)` -/
def P5025810455480436935.Spec : Prop :=
  ∀ n, P5025810455480436935.a n = (A198763 n : ℚ)

theorem P5025810455480436935.correct : P5025810455480436935.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A198763, Nat.add_sub_cancel, A198763.P5025810455480436935.a, A198763.P9822682624418847043.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A198763, Nat.add_sub_cancel, A198763.P5025810455480436935.a, A198763.P9822682624418847043.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A198763

/-! ## A198763.P11756026563054213859

`or(1, 5*a(n-1)+3)` with `a(0)=3`
-/

namespace A198763.P11756026563054213859
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  Nat.lor 1 (5 * a (n - 1) + 3)

end

end A198763.P11756026563054213859

namespace A198763

/-- `or(1, 5*a(n-1)+3)` -/
def P11756026563054213859.Spec : Prop :=
  ∀ n, (P11756026563054213859.a n : ℤ) = A198763 n

end A198763

/-! ## A198763.P1351475190860921708

`record[5*a(n-2)+4]` with `a(0)=3, a(1)=0`
-/

namespace A198763.P1351475190860921708
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 0] fun n f1 =>
  5 * f1 (n - 2) + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A198763.P1351475190860921708

namespace A198763

/-- `record[5*a(n-2)+4]` -/
def P1351475190860921708.Spec : Prop :=
  ∀ n, (P1351475190860921708.a n : ℤ) = A198763 n

end A198763

/-! ## A198763.P8697326608233517060

`5*(1-(1/5-a(n-1)))` with `a(0)=3`
-/

namespace A198763.P8697326608233517060
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [3] fun n a =>
  5 * (1 - ((1 : ℚ) / 5 - a (n - 1)))

end

end A198763.P8697326608233517060

namespace A198763

/-- `5*(1-(1/5-a(n-1)))` -/
def P8697326608233517060.Spec : Prop :=
  ∀ n, P8697326608233517060.a n = (A198763 n : ℚ)

theorem P8697326608233517060.correct : P8697326608233517060.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A198763, Nat.add_sub_cancel, A198763.P8697326608233517060.a, A198763.P9822682624418847043.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A198763, Nat.add_sub_cancel, A198763.P8697326608233517060.a, A198763.P9822682624418847043.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A198763

/-! ## A198763.P11832927682317333518

`floor(a(n-1)+4*(a(n-1)+1))` with `a(0)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A198763.P11832927682317333518
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  a (n - 1) + 4 * (a (n - 1) + 1)

end

end A198763.P11832927682317333518

namespace A198763

/-- `floor(a(n-1)+4*(a(n-1)+1))` -/
def P11832927682317333518.Spec : Prop :=
  ∀ n, (P11832927682317333518.a n : ℤ) = A198763 n

theorem P11832927682317333518.correct : P11832927682317333518.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A198763, Nat.add_sub_cancel, A198763.P11832927682317333518.a, A198763.P9822682624418847043.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A198763, Nat.add_sub_cancel, A198763.P11832927682317333518.a, A198763.P9822682624418847043.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A198763

/-! ## A198763.P10985943249183485960

`floor(6*a(n-1)-(a(n-1)-4))` with `a(0)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A198763.P10985943249183485960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  6 * a (n - 1) - (a (n - 1) - 4)

end

end A198763.P10985943249183485960

namespace A198763

/-- `floor(6*a(n-1)-(a(n-1)-4))` -/
def P10985943249183485960.Spec : Prop :=
  ∀ n, P10985943249183485960.a n = A198763 n

theorem P10985943249183485960.correct : P10985943249183485960.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A198763, Nat.add_sub_cancel, A198763.P10985943249183485960.a, A198763.P9822682624418847043.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A198763, Nat.add_sub_cancel, A198763.P10985943249183485960.a, A198763.P9822682624418847043.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A198763

/-! ## A198763.P11062286021306234780

`Δ[A024050(n)]`
-/

namespace A198763.P11062286021306234780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024050 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A198763.P11062286021306234780

namespace A198763

/-- `Δ[A024050(n)]` -/
def P11062286021306234780.Spec : Prop :=
  ∀ n, P11062286021306234780.a n = A198763 n

end A198763

/-! ## A198763.P13204284596435102774

`∑[A055842(n+1)]`
-/

namespace A198763.P13204284596435102774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055842 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A198763.P13204284596435102774

namespace A198763

/-- `∑[A055842(n+1)]` -/
def P13204284596435102774.Spec : Prop :=
  ∀ n, P13204284596435102774.a n = A198763 n

end A198763

/-! ## A198763.P5579326132162758343

`Δ[A000351(n)-n]`
-/

namespace A198763.P5579326132162758343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000351 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A198763.P5579326132162758343

namespace A198763

/-- `Δ[A000351(n)-n]` -/
def P5579326132162758343.Spec : Prop :=
  ∀ n, P5579326132162758343.a n = A198763 n

end A198763

/-! ## A198763.P6842146750415487890

`Δ[A024049(n)-n]`
-/

namespace A198763.P6842146750415487890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024049 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A198763.P6842146750415487890

namespace A198763

/-- `Δ[A024049(n)-n]` -/
def P6842146750415487890.Spec : Prop :=
  ∀ n, P6842146750415487890.a n = A198763 n

end A198763

/-! ## A198763.P5636918584598552764

`Δ[A242328(n)-n]`
-/

namespace A198763.P5636918584598552764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242328 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A198763.P5636918584598552764

namespace A198763

/-- `Δ[A242328(n)-n]` -/
def P5636918584598552764.Spec : Prop :=
  ∀ n, P5636918584598552764.a n = A198763 n

end A198763

/-! ## A198763.P6575106782505129713

`A181287(4*(n+1))`
-/

namespace A198763.P6575106782505129713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181287 (4 * (n + 1))

end

end A198763.P6575106782505129713

namespace A198763

/-- `A181287(4*(n+1))` -/
def P6575106782505129713.Spec : Prop :=
  ∀ n, P6575106782505129713.a n = A198763 n

end A198763

/-! ## A198763.P7356802752620525743

`record[Δ[A056451(n)]-1]`
-/

namespace A198763.P7356802752620525743
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056451 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A198763.P7356802752620525743

namespace A198763

/-- `record[Δ[A056451(n)]-1]` -/
def P7356802752620525743.Spec : Prop :=
  ∀ n, P7356802752620525743.a n = A198763 n

end A198763

/-!
# A198764: a(n) = 6*5^n-1.

The programs for A198764, the canonical program `A198764.P9353381281078835859` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A198764 has offset 0).

The definition of A198764 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6*5^n-1` (program `A198764.P9353381281078835859`, by `A198764.P9353381281078835859.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A198764.P9353381281078835859

`6*5^n-1`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A198764

/-- `6*5^n-1` -/
def P9353381281078835859.Spec : Prop :=
  ∀ n, P9353381281078835859.a n = A198764 n

theorem P9353381281078835859.correct : P9353381281078835859.Spec := by
  intro n
  simp only [A198764]

end A198764

/-! ## A198764.P3942786804232244752

`xor(3, 6*5^n)`
-/

namespace A198764.P3942786804232244752
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 (6 * 5 ^ n)

end

end A198764.P3942786804232244752

namespace A198764

/-- `xor(3, 6*5^n)` -/
def P3942786804232244752.Spec : Prop :=
  ∀ n, (P3942786804232244752.a n : ℤ) = A198764 n

end A198764

/-! ## A198764.P14546155838655506618

`ogf((5-x)/(1-6x+5x^2))`
-/

namespace A198764.P14546155838655506618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, -1] [1, -6, 5] n

end

end A198764.P14546155838655506618

namespace A198764

/-- `ogf((5-x)/(1-6x+5x^2))` -/
def P14546155838655506618.Spec : Prop :=
  ∀ n, P14546155838655506618.a n = A198764 n

end A198764

/-! ## A198764.P14012607439447491515

`or(4, 5*a(n-1))` with `a(0)=5`
-/

namespace A198764.P14012607439447491515
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [5] fun n a =>
  Nat.lor 4 (5 * a (n - 1))

end

end A198764.P14012607439447491515

namespace A198764

/-- `or(4, 5*a(n-1))` -/
def P14012607439447491515.Spec : Prop :=
  ∀ n, (P14012607439447491515.a n : ℤ) = A198764 n

end A198764

/-! ## A198764.P2832878066688677502

`∑[5*a(n-1)]` with `a(0)=5, a(1)=24`
-/

namespace A198764.P2832878066688677502
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [5, 24] fun n f1 =>
  5 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A198764.P2832878066688677502

namespace A198764

/-- `∑[5*a(n-1)]` -/
def P2832878066688677502.Spec : Prop :=
  ∀ n, (P2832878066688677502.a n : ℤ) = A198764 n

end A198764

/-! ## A198764.P2043876414514094769

`-xor(4, -5*a(n-1))` with `a(0)=5`
-/

namespace A198764.P2043876414514094769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  -Int.xor 4 (-(5 * a (n - 1)))

end

end A198764.P2043876414514094769

namespace A198764

/-- `-xor(4, -5*a(n-1))` -/
def P2043876414514094769.Spec : Prop :=
  ∀ n, P2043876414514094769.a n = A198764 n

end A198764

/-! ## A198764.P198401805309401110

`5*(1-(1/5-a(n-1)))` with `a(0)=5`
-/

namespace A198764.P198401805309401110
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [5] fun n a =>
  5 * (1 - ((1 : ℚ) / 5 - a (n - 1)))

end

end A198764.P198401805309401110

namespace A198764

/-- `5*(1-(1/5-a(n-1)))` -/
def P198401805309401110.Spec : Prop :=
  ∀ n, P198401805309401110.a n = (A198764 n : ℚ)

theorem P198401805309401110.correct : P198401805309401110.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A198764, Nat.add_sub_cancel, A198764.P198401805309401110.a, A198764.P9353381281078835859.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A198764, Nat.add_sub_cancel, A198764.P198401805309401110.a, A198764.P9353381281078835859.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A198764

/-! ## A198764.P825000247048012819

`or(1, 4*A057651(n))`
-/

namespace A198764.P825000247048012819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (4 * A057651 n)

end

end A198764.P825000247048012819

namespace A198764

/-- `or(1, 4*A057651(n))` -/
def P825000247048012819.Spec : Prop :=
  ∀ n, P825000247048012819.a n = A198764 n

end A198764

/-! ## A198764.P16800285230529544776

`Δ[∑[A003948(n)]-n]`
-/

namespace A198764.P16800285230529544776
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003948 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A198764.P16800285230529544776

namespace A198764

/-- `Δ[∑[A003948(n)]-n]` -/
def P16800285230529544776.Spec : Prop :=
  ∀ n, P16800285230529544776.a n = A198764 n

end A198764

/-! ## A198764.P7320256374752257571

`Δ[1-n-A165755(n)]`
-/

namespace A198764.P7320256374752257571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (n : ℤ) - A165755 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A198764.P7320256374752257571

namespace A198764

/-- `Δ[1-n-A165755(n)]` -/
def P7320256374752257571.Spec : Prop :=
  ∀ n, P7320256374752257571.a n = A198764 n

end A198764

/-! ## A198764.P2760788700756763310

`abs(6*(A024049(n)+1)-1)`
-/

namespace A198764.P2760788700756763310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |6 * (A024049 n + 1) - 1|

end

end A198764.P2760788700756763310

namespace A198764

/-- `abs(6*(A024049(n)+1)-1)` -/
def P2760788700756763310.Spec : Prop :=
  ∀ n, P2760788700756763310.a n = A198764 n

end A198764

/-! ## A198764.P17642364976690995157

`Δ[A137410(n)+A024050(n)]`
-/

namespace A198764.P17642364976690995157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137410 n + A024050 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A198764.P17642364976690995157

namespace A198764

/-- `Δ[A137410(n)+A024050(n)]` -/
def P17642364976690995157.Spec : Prop :=
  ∀ n, P17642364976690995157.a n = A198764 n

end A198764

/-!
# A198765: a(n) = 7*5^n-1.

The programs for A198765, the canonical program `A198765.P16512016135831848713` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A198765 has offset 0).

The definition of A198765 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `7*5^n-1` (program `A198765.P16512016135831848713`, by `A198765.P16512016135831848713.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A198765.P16512016135831848713

`7*5^n-1`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A198765

/-- `7*5^n-1` -/
def P16512016135831848713.Spec : Prop :=
  ∀ n, P16512016135831848713.a n = A198765 n

theorem P16512016135831848713.correct : P16512016135831848713.Spec := by
  intro n
  simp only [A198765]

end A198765

/-! ## A198765.P10234861508630922772

`xor(1, 7*5^n)`
-/

namespace A198765.P10234861508630922772
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (7 * 5 ^ n)

end

end A198765.P10234861508630922772

namespace A198765

/-- `xor(1, 7*5^n)` -/
def P10234861508630922772.Spec : Prop :=
  ∀ n, (P10234861508630922772.a n : ℤ) = A198765 n

end A198765

/-! ## A198765.P7083042614971407349

`ogf((6-2x)/(1-6x+5x^2))`
-/

namespace A198765.P7083042614971407349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [6, -2] [1, -6, 5] n

end

end A198765.P7083042614971407349

namespace A198765

/-- `ogf((6-2x)/(1-6x+5x^2))` -/
def P7083042614971407349.Spec : Prop :=
  ∀ n, P7083042614971407349.a n = A198765 n

end A198765

/-! ## A198765.P2381283641579830496

`∑[5*a(n-1)]` with `a(0)=6, a(1)=28`
-/

namespace A198765.P2381283641579830496
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [6, 28] fun n f1 =>
  5 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A198765.P2381283641579830496

namespace A198765

/-- `∑[5*a(n-1)]` -/
def P2381283641579830496.Spec : Prop :=
  ∀ n, (P2381283641579830496.a n : ℤ) = A198765 n

end A198765

/-! ## A198765.P13547550210000816955

`abs(5*a(n-1)+4)` with `a(0)=6`
-/

namespace A198765.P13547550210000816955
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [6] fun n a =>
  5 * a (n - 1) + 4

end

end A198765.P13547550210000816955

namespace A198765

/-- `abs(5*a(n-1)+4)` -/
def P13547550210000816955.Spec : Prop :=
  ∀ n, (P13547550210000816955.a n : ℤ) = A198765 n

theorem P13547550210000816955.correct : P13547550210000816955.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A198765, Nat.add_sub_cancel, A198765.P13547550210000816955.a, A198765.P16512016135831848713.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A198765, Nat.add_sub_cancel, A198765.P13547550210000816955.a, A198765.P16512016135831848713.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A198765

/-! ## A198765.P715809158183324219

`5*(a(n-1)+4/5)` with `a(0)=6`
-/

namespace A198765.P715809158183324219
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [6] fun n a =>
  5 * (a (n - 1) + (4 : ℚ) / 5)

end

end A198765.P715809158183324219

namespace A198765

/-- `5*(a(n-1)+4/5)` -/
def P715809158183324219.Spec : Prop :=
  ∀ n, P715809158183324219.a n = (A198765 n : ℚ)

theorem P715809158183324219.correct : P715809158183324219.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A198765, Nat.add_sub_cancel, A198765.P715809158183324219.a, A198765.P16512016135831848713.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A198765, Nat.add_sub_cancel, A198765.P715809158183324219.a, A198765.P16512016135831848713.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A198765

/-! ## A198765.P9575636061492664906

`or(2, 5*a(n-1)+2)` with `a(0)=6`
-/

namespace A198765.P9575636061492664906
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [6] fun n a =>
  Nat.lor 2 (5 * a (n - 1) + 2)

end

end A198765.P9575636061492664906

namespace A198765

/-- `or(2, 5*a(n-1)+2)` -/
def P9575636061492664906.Spec : Prop :=
  ∀ n, (P9575636061492664906.a n : ℤ) = A198765 n

end A198765

/-! ## A198765.P2768015093951128389

`or(2, lcm(5, a(n-1))+2)` with `a(0)=6`
-/

namespace A198765.P2768015093951128389
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [6] fun n a =>
  Nat.lor 2 (Nat.lcm 5 (a (n - 1)) + 2)

end

end A198765.P2768015093951128389

namespace A198765

/-- `or(2, lcm(5, a(n-1))+2)` -/
def P2768015093951128389.Spec : Prop :=
  ∀ n, (P2768015093951128389.a n : ℤ) = A198765 n

end A198765

/-! ## A198765.P2033988121983029722

`record[5*a(n-2)+4]` with `a(0)=6, a(1)=1`
-/

namespace A198765.P2033988121983029722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [6, 1] fun n f1 =>
  5 * f1 (n - 2) + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A198765.P2033988121983029722

namespace A198765

/-- `record[5*a(n-2)+4]` -/
def P2033988121983029722.Spec : Prop :=
  ∀ n, (P2033988121983029722.a n : ℤ) = A198765 n

end A198765

/-! ## A198765.P4735910123830709929

`abs(1-5*xor(1, a(n-1)))` with `a(0)=6`
-/

namespace A198765.P4735910123830709929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6] fun n a =>
  |1 - 5 * Int.xor 1 (a (n - 1))|

end

end A198765.P4735910123830709929

namespace A198765

/-- `abs(1-5*xor(1, a(n-1)))` -/
def P4735910123830709929.Spec : Prop :=
  ∀ n, P4735910123830709929.a n = A198765 n

end A198765

/-! ## A198765.P3479449906510334507

`or(2, 7-5*(1-a(n-1)))` with `a(0)=6`
-/

namespace A198765.P3479449906510334507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6] fun n a =>
  Int.lor 2 (7 - 5 * (1 - a (n - 1)))

end

end A198765.P3479449906510334507

namespace A198765

/-- `or(2, 7-5*(1-a(n-1)))` -/
def P3479449906510334507.Spec : Prop :=
  ∀ n, P3479449906510334507.a n = A198765 n

end A198765

/-! ## A198765.P9554862194739272629

`or(2, a(n-1)/(1-4/5)+2)` with `a(0)=6`
-/

namespace A198765.P9554862194739272629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6] fun n a =>
  Int.lor 2 (SequenceMachineLib.roundAway ((a (n - 1) : ℚ) / (1 - (4 : ℚ) / 5) + 2))

end

end A198765.P9554862194739272629

namespace A198765

/-- `or(2, a(n-1)/(1-4/5)+2)` -/
def P9554862194739272629.Spec : Prop :=
  ∀ n, P9554862194739272629.a n = A198765 n

end A198765

/-! ## A198765.P11914757915545826911

`floor(a(n-1)+4*(a(n-1)+1))` with `a(0)=6`

`floor` is left out, it is the identity on integers.
-/

namespace A198765.P11914757915545826911
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [6] fun n a =>
  a (n - 1) + 4 * (a (n - 1) + 1)

end

end A198765.P11914757915545826911

namespace A198765

/-- `floor(a(n-1)+4*(a(n-1)+1))` -/
def P11914757915545826911.Spec : Prop :=
  ∀ n, (P11914757915545826911.a n : ℤ) = A198765 n

theorem P11914757915545826911.correct : P11914757915545826911.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A198765, Nat.add_sub_cancel, A198765.P11914757915545826911.a, A198765.P16512016135831848713.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A198765, Nat.add_sub_cancel, A198765.P11914757915545826911.a, A198765.P16512016135831848713.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A198765

/-! ## A198765.P2023416642226258474

`2*A198766(n)`
-/

namespace A198765.P2023416642226258474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A198766 n

end

end A198765.P2023416642226258474

namespace A198765

/-- `2*A198766(n)` -/
def P2023416642226258474.Spec : Prop :=
  ∀ n, P2023416642226258474.a n = A198765 n

end A198765

/-! ## A198765.P9933070442395015661

`2*(A199309(n)-1)`
-/

namespace A198765.P9933070442395015661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A199309 n - 1)

end

end A198765.P9933070442395015661

namespace A198765

/-- `2*(A199309(n)-1)` -/
def P9933070442395015661.Spec : Prop :=
  ∀ n, P9933070442395015661.a n = A198765 n

end A198765

/-! ## A198765.P13879160146198166765

`2*A026396(2*n)`
-/

namespace A198765.P13879160146198166765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A026396 (2 * n)

end

end A198765.P13879160146198166765

namespace A198765

/-- `2*A026396(2*n)` -/
def P13879160146198166765.Spec : Prop :=
  ∀ n, P13879160146198166765.a n = A198765 n

end A198765

/-! ## A198765.P5028304586281057000

`∑[A223346(2*n+1)]`
-/

namespace A198765.P5028304586281057000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223346 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A198765.P5028304586281057000

namespace A198765

/-- `∑[A223346(2*n+1)]` -/
def P5028304586281057000.Spec : Prop :=
  ∀ n, P5028304586281057000.a n = A198765 n

end A198765

/-! ## A198765.P2957763732737675038

`2*(A057651(n)+A020729(n))`
-/

namespace A198765.P2957763732737675038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A057651 n + A020729 n)

end

end A198765.P2957763732737675038

namespace A198765

/-- `2*(A057651(n)+A020729(n))` -/
def P2957763732737675038.Spec : Prop :=
  ∀ n, P2957763732737675038.a n = A198765 n

end A198765

/-! ## A198765.P4069537989177310181

`abs(A121177(n+1)-A146883(n))`
-/

namespace A198765.P4069537989177310181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A121177 (n + 1) - A146883 n|

end

end A198765.P4069537989177310181

namespace A198765

/-- `abs(A121177(n+1)-A146883(n))` -/
def P4069537989177310181.Spec : Prop :=
  ∀ n, P4069537989177310181.a n = A198765 n

end A198765

/-! ## A198765.P3290741472301390324

`2*(A000351(n)+∑[A020729(n)])`
-/

namespace A198765.P3290741472301390324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020729 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A000351 n + ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A198765.P3290741472301390324

namespace A198765

/-- `2*(A000351(n)+∑[A020729(n)])` -/
def P3290741472301390324.Spec : Prop :=
  ∀ n, P3290741472301390324.a n = A198765 n

end A198765

/-!
# A198766: a(n) = (7*5^n - 1)/2.

The programs for A198766, the canonical program `A198766.P17643450014160485828` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A198766 has offset 0).

The definition of A198766 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(7*5^n-1)/2` (program `A198766.P14586832254067437992`, by `A198766.P14586832254067437992.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A198766.P17643450014160485828

`5*a(n-1)+2` with `a(0)=3`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A198766

/-- `5*a(n-1)+2` -/
def P17643450014160485828.Spec : Prop :=
  ∀ n, (P17643450014160485828.a n : ℤ) = A198766 n

theorem P17643450014160485828.correct : P17643450014160485828.Spec := by
  intro n
  simp only [A198766]

end A198766

/-! ## A198766.P14586832254067437992

`(7*5^n-1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A198766.P14586832254067437992
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((7 * 5 ^ n : ℤ) - 1 : ℚ) / 2

end

end A198766.P14586832254067437992

namespace A198766

/-- `(7*5^n-1)/2` -/
def P14586832254067437992.Spec : Prop :=
  ∀ n, P14586832254067437992.a n = (A198766 n : ℚ)

theorem P14586832254067437992.correct : P14586832254067437992.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A198766, Nat.add_sub_cancel, A198766.P14586832254067437992.a, A198766.P17643450014160485828.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A198766, Nat.add_sub_cancel, A198766.P14586832254067437992.a, A198766.P17643450014160485828.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A198766

/-! ## A198766.P7635358705492337058

`ogf((3-x)/(1-6x+5x^2))`
-/

namespace A198766.P7635358705492337058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -1] [1, -6, 5] n

end

end A198766.P7635358705492337058

namespace A198766

/-- `ogf((3-x)/(1-6x+5x^2))` -/
def P7635358705492337058.Spec : Prop :=
  ∀ n, P7635358705492337058.a n = A198766 n

end A198766

/-! ## A198766.P2578369587839965345

`lcm(5, a(n-1))+2` with `a(0)=3`
-/

namespace A198766.P2578369587839965345
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  Nat.lcm 5 (a (n - 1)) + 2

end

end A198766.P2578369587839965345

namespace A198766

/-- `lcm(5, a(n-1))+2` -/
def P2578369587839965345.Spec : Prop :=
  ∀ n, (P2578369587839965345.a n : ℤ) = A198766 n

end A198766

/-! ## A198766.P3029817485934311777

`∑[5*a(n-1)]` with `a(0)=3, a(1)=14`
-/

namespace A198766.P3029817485934311777
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 14] fun n f1 =>
  5 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A198766.P3029817485934311777

namespace A198766

/-- `∑[5*a(n-1)]` -/
def P3029817485934311777.Spec : Prop :=
  ∀ n, (P3029817485934311777.a n : ℤ) = A198766 n

end A198766

/-! ## A198766.P6067104065696623380

`7-5*(1-a(n-1))` with `a(0)=3`
-/

namespace A198766.P6067104065696623380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  7 - 5 * (1 - a (n - 1))

end

end A198766.P6067104065696623380

namespace A198766

/-- `7-5*(1-a(n-1))` -/
def P6067104065696623380.Spec : Prop :=
  ∀ n, P6067104065696623380.a n = A198766 n

end A198766

/-! ## A198766.P762357918371608666

`a(n-1)/(1-4/5)+2` with `a(0)=3`
-/

namespace A198766.P762357918371608666
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [3] fun n a =>
  a (n - 1) / (1 - (4 : ℚ) / 5) + 2

end

end A198766.P762357918371608666

namespace A198766

/-- `a(n-1)/(1-4/5)+2` -/
def P762357918371608666.Spec : Prop :=
  ∀ n, P762357918371608666.a n = (A198766 n : ℚ)

end A198766

/-! ## A198766.P4530288631126354904

`2-a(n-1)/(4/5-1)` with `a(0)=3`
-/

namespace A198766.P4530288631126354904
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [3] fun n a =>
  2 - a (n - 1) / ((4 : ℚ) / 5 - 1)

end

end A198766.P4530288631126354904

namespace A198766

/-- `2-a(n-1)/(4/5-1)` -/
def P4530288631126354904.Spec : Prop :=
  ∀ n, P4530288631126354904.a n = (A198766 n : ℚ)

end A198766

/-! ## A198766.P1087390934218488399

`A199309(n)-1`
-/

namespace A198766.P1087390934218488399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199309 n - 1

end

end A198766.P1087390934218488399

namespace A198766

/-- `A199309(n)-1` -/
def P1087390934218488399.Spec : Prop :=
  ∀ n, P1087390934218488399.a n = A198766 n

end A198766

/-! ## A198766.P15833785963865095731

`A026396(2*n)`
-/

namespace A198766.P15833785963865095731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026396 (2 * n)

end

end A198766.P15833785963865095731

namespace A198766

/-- `A026396(2*n)` -/
def P15833785963865095731.Spec : Prop :=
  ∀ n, P15833785963865095731.a n = A198766 n

end A198766

/-! ## A198766.P4488569386564383153

`2*A117617(n)+1`
-/

namespace A198766.P4488569386564383153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A117617 n + 1

end

end A198766.P4488569386564383153

namespace A198766

/-- `2*A117617(n)+1` -/
def P4488569386564383153.Spec : Prop :=
  ∀ n, P4488569386564383153.a n = A198766 n

end A198766

/-! ## A198766.P12735026109401789402

`2*A199308(n)-1`
-/

namespace A198766.P12735026109401789402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A199308 n - 1

end

end A198766.P12735026109401789402

namespace A198766

/-- `2*A199308(n)-1` -/
def P12735026109401789402.Spec : Prop :=
  ∀ n, P12735026109401789402.a n = A198766 n

end A198766

/-! ## A198766.P13604900915966887437

`7*A137410(n)+10`
-/

namespace A198766.P13604900915966887437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A137410 n + 10

end

end A198766.P13604900915966887437

namespace A198766

/-- `7*A137410(n)+10` -/
def P13604900915966887437.Spec : Prop :=
  ∀ n, P13604900915966887437.a n = A198766 n

end A198766

/-! ## A198766.P16239665443459787143

`2*A026384(2*n)+1`
-/

namespace A198766.P16239665443459787143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A026384 (2 * n) + 1

end

end A198766.P16239665443459787143

namespace A198766

/-- `2*A026384(2*n)+1` -/
def P16239665443459787143.Spec : Prop :=
  ∀ n, P16239665443459787143.a n = A198766 n

end A198766

/-! ## A198766.P2188048227966962146

`A057651(n)+A020729(n)`
-/

namespace A198766.P2188048227966962146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057651 n + A020729 n

end

end A198766.P2188048227966962146

namespace A198766

/-- `A057651(n)+A020729(n)` -/
def P2188048227966962146.Spec : Prop :=
  ∀ n, P2188048227966962146.a n = A198766 n

end A198766

/-! ## A198766.P5393561413078561355

`A000351(n)+∑[A020729(n)]`
-/

namespace A198766.P5393561413078561355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020729 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000351 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A198766.P5393561413078561355

namespace A198766

/-- `A000351(n)+∑[A020729(n)]` -/
def P5393561413078561355.Spec : Prop :=
  ∀ n, P5393561413078561355.a n = A198766 n

end A198766

/-! ## A198766.P17592496666437736621

`A020729(n)+∑[A003948(n)]`
-/

namespace A198766.P17592496666437736621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003948 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020729 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A198766.P17592496666437736621

namespace A198766

/-- `A020729(n)+∑[A003948(n)]` -/
def P17592496666437736621.Spec : Prop :=
  ∀ n, P17592496666437736621.a n = A198766 n

end A198766

/-! ## A198766.P7275176344902474819

`A057651(n)+Δ[A137410(n)]`
-/

namespace A198766.P7275176344902474819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137410 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057651 n + (f1 (n + 1) - f1 n)

end

end A198766.P7275176344902474819

namespace A198766

/-- `A057651(n)+Δ[A137410(n)]` -/
def P7275176344902474819.Spec : Prop :=
  ∀ n, P7275176344902474819.a n = A198766 n

end A198766

/-! ## A198766.P17061305784950602504

`A057651(n)+A081655(n)+1`
-/

namespace A198766.P17061305784950602504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057651 n + (A081655 n + 1)

end

end A198766.P17061305784950602504

namespace A198766

/-- `A057651(n)+A081655(n)+1` -/
def P17061305784950602504.Spec : Prop :=
  ∀ n, P17061305784950602504.a n = A198766 n

end A198766

/-! ## A198766.P18365816243686382731

`A137410(n+1)+A034474(n)`
-/

namespace A198766.P18365816243686382731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137410 (n + 1) + A034474 n

end

end A198766.P18365816243686382731

namespace A198766

/-- `A137410(n+1)+A034474(n)` -/
def P18365816243686382731.Spec : Prop :=
  ∀ n, P18365816243686382731.a n = A198766 n

end A198766

/-!
# A198767: a(n) = 8*5^n-1.

The programs for A198767, the canonical program `A198767.P15427325346393291259` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A198767 has offset 0).

The definition of A198767 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `8*5^n-1` (program `A198767.P15427325346393291259`, by `A198767.P15427325346393291259.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A198767.P15427325346393291259

`8*5^n-1`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A198767

/-- `8*5^n-1` -/
def P15427325346393291259.Spec : Prop :=
  ∀ n, P15427325346393291259.a n = A198767 n

theorem P15427325346393291259.correct : P15427325346393291259.Spec := by
  intro n
  simp only [A198767]

end A198767

/-! ## A198767.P2649179970577834866

`ogf((7-3x)/(1-6x+5x^2))`
-/

namespace A198767.P2649179970577834866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [7, -3] [1, -6, 5] n

end

end A198767.P2649179970577834866

namespace A198767

/-- `ogf((7-3x)/(1-6x+5x^2))` -/
def P2649179970577834866.Spec : Prop :=
  ∀ n, P2649179970577834866.a n = A198767 n

end A198767

/-! ## A198767.P11589115662641841986

`Δ[lcm(2, 5^n)-n]`
-/

namespace A198767.P11589115662641841986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 (5 ^ n) : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A198767.P11589115662641841986

namespace A198767

/-- `Δ[lcm(2, 5^n)-n]` -/
def P11589115662641841986.Spec : Prop :=
  ∀ n, P11589115662641841986.a n = A198767 n

end A198767

/-! ## A198767.P411192999812439662

`or(4, 5*a(n-1))` with `a(0)=7`
-/

namespace A198767.P411192999812439662
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [7] fun n a =>
  Nat.lor 4 (5 * a (n - 1))

end

end A198767.P411192999812439662

namespace A198767

/-- `or(4, 5*a(n-1))` -/
def P411192999812439662.Spec : Prop :=
  ∀ n, (P411192999812439662.a n : ℤ) = A198767 n

end A198767

/-! ## A198767.P7825731620133692461

`xor(4, 5*a(n-1))` with `a(0)=7`
-/

namespace A198767.P7825731620133692461
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [7] fun n a =>
  Nat.xor 4 (5 * a (n - 1))

end

end A198767.P7825731620133692461

namespace A198767

/-- `xor(4, 5*a(n-1))` -/
def P7825731620133692461.Spec : Prop :=
  ∀ n, (P7825731620133692461.a n : ℤ) = A198767 n

end A198767

/-! ## A198767.P14517640966449351488

`xor(4, lcm(5, a(n-1)))` with `a(0)=7`
-/

namespace A198767.P14517640966449351488
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [7] fun n a =>
  Nat.xor 4 (Nat.lcm 5 (a (n - 1)))

end

end A198767.P14517640966449351488

namespace A198767

/-- `xor(4, lcm(5, a(n-1)))` -/
def P14517640966449351488.Spec : Prop :=
  ∀ n, (P14517640966449351488.a n : ℤ) = A198767 n

end A198767

/-! ## A198767.P11879084669985753163

`∑[5*a(n-1)]` with `a(0)=7, a(1)=32`
-/

namespace A198767.P11879084669985753163
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [7, 32] fun n f1 =>
  5 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A198767.P11879084669985753163

namespace A198767

/-- `∑[5*a(n-1)]` -/
def P11879084669985753163.Spec : Prop :=
  ∀ n, (P11879084669985753163.a n : ℤ) = A198767 n

end A198767

/-! ## A198767.P9516490910965079630

`Δ[A020729(n)-n]`
-/

namespace A198767.P9516490910965079630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020729 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A198767.P9516490910965079630

namespace A198767

/-- `Δ[A020729(n)-n]` -/
def P9516490910965079630.Spec : Prop :=
  ∀ n, P9516490910965079630.a n = A198767 n

end A198767

/-! ## A198767.P11973786756700180535

`∑[abs(Δ[A138278(3*n)])]`
-/

namespace A198767.P11973786756700180535
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138278 (3 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A198767.P11973786756700180535

namespace A198767

/-- `∑[abs(Δ[A138278(3*n)])]` -/
def P11973786756700180535.Spec : Prop :=
  ∀ n, P11973786756700180535.a n = A198767 n

end A198767

/-! ## A198767.P18100902454411691893

`Δ[Δ[A121177(n+1)]-n]`
-/

namespace A198767.P18100902454411691893
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121177 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A198767.P18100902454411691893

namespace A198767

/-- `Δ[Δ[A121177(n+1)]-n]` -/
def P18100902454411691893.Spec : Prop :=
  ∀ n, P18100902454411691893.a n = A198767 n

end A198767

/-! ## A198767.P1662346489815470842

`Δ[∑[A235702(n+1)/3]-n]`
-/

namespace A198767.P1662346489815470842
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A235702 (n + 1) : ℚ) / 3

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A198767.P1662346489815470842

namespace A198767

/-- `Δ[∑[A235702(n+1)/3]-n]` -/
def P1662346489815470842.Spec : Prop :=
  ∀ n, P1662346489815470842.a n = (A198767 n : ℚ)

end A198767

/-! ## A198767.P16858482529892730398

`Δ[A024050(n)+A024049(n)]`
-/

namespace A198767.P16858482529892730398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024050 n + A024049 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A198767.P16858482529892730398

namespace A198767

/-- `Δ[A024050(n)+A024049(n)]` -/
def P16858482529892730398.Spec : Prop :=
  ∀ n, P16858482529892730398.a n = A198767 n

end A198767

/-!
# A198768: a(n) = 9*5^n-1.

The programs for A198768, the canonical program `A198768.P17316794152262759730` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A198768 has offset 0).

The definition of A198768 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `9*5^n-1` (program `A198768.P17316794152262759730`, by `A198768.P17316794152262759730.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A198768.P17316794152262759730

`9*5^n-1`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A198768

/-- `9*5^n-1` -/
def P17316794152262759730.Spec : Prop :=
  ∀ n, P17316794152262759730.a n = A198768 n

theorem P17316794152262759730.correct : P17316794152262759730.Spec := by
  intro n
  simp only [A198768]

end A198768

/-! ## A198768.P10601593074870846601

`xor(1, 9*5^n)`
-/

namespace A198768.P10601593074870846601
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (9 * 5 ^ n)

end

end A198768.P10601593074870846601

namespace A198768

/-- `xor(1, 9*5^n)` -/
def P10601593074870846601.Spec : Prop :=
  ∀ n, (P10601593074870846601.a n : ℤ) = A198768 n

end A198768

/-! ## A198768.P12836569431706129316

`ogf((8-4x)/(1-6x+5x^2))`
-/

namespace A198768.P12836569431706129316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [8, -4] [1, -6, 5] n

end

end A198768.P12836569431706129316

namespace A198768

/-- `ogf((8-4x)/(1-6x+5x^2))` -/
def P12836569431706129316.Spec : Prop :=
  ∀ n, P12836569431706129316.a n = A198768 n

end A198768

/-! ## A198768.P13184578364353796639

`∑[5*a(n-1)]` with `a(0)=8, a(1)=36`
-/

namespace A198768.P13184578364353796639
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [8, 36] fun n f1 =>
  5 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A198768.P13184578364353796639

namespace A198768

/-- `∑[5*a(n-1)]` -/
def P13184578364353796639.Spec : Prop :=
  ∀ n, (P13184578364353796639.a n : ℤ) = A198768 n

end A198768

/-! ## A198768.P15256593341792537822

`abs(1-5*xor(1, a(n-1)))` with `a(0)=8`
-/

namespace A198768.P15256593341792537822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [8] fun n a =>
  |1 - 5 * Int.xor 1 (a (n - 1))|

end

end A198768.P15256593341792537822

namespace A198768

/-- `abs(1-5*xor(1, a(n-1)))` -/
def P15256593341792537822.Spec : Prop :=
  ∀ n, P15256593341792537822.a n = A198768 n

end A198768

/-! ## A198768.P1017624488251971105

`floor(6*a(n-1)-(a(n-1)-4))` with `a(0)=8`

`floor` is left out, it is the identity on integers.
-/

namespace A198768.P1017624488251971105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [8] fun n a =>
  6 * a (n - 1) - (a (n - 1) - 4)

end

end A198768.P1017624488251971105

namespace A198768

/-- `floor(6*a(n-1)-(a(n-1)-4))` -/
def P1017624488251971105.Spec : Prop :=
  ∀ n, P1017624488251971105.a n = A198768 n

theorem P1017624488251971105.correct : P1017624488251971105.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A198768, Nat.add_sub_cancel, A198768.P1017624488251971105.a, A198768.P17316794152262759730.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A198768, Nat.add_sub_cancel, A198768.P1017624488251971105.a, A198768.P17316794152262759730.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A198768

/-! ## A198768.P140178725475260178

`4*A198769(n)`
-/

namespace A198768.P140178725475260178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A198769 n

end

end A198768.P140178725475260178

namespace A198768

/-- `4*A198769(n)` -/
def P140178725475260178.Spec : Prop :=
  ∀ n, P140178725475260178.a n = A198768 n

end A198768

/-! ## A198768.P2450763758550353082

`2*(A199312(n)-1)`
-/

namespace A198768.P2450763758550353082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A199312 n - 1)

end

end A198768.P2450763758550353082

namespace A198768

/-- `2*(A199312(n)-1)` -/
def P2450763758550353082.Spec : Prop :=
  ∀ n, P2450763758550353082.a n = A198768 n

end A198768

/-! ## A198768.P3592287600501202223

`∑[abs(Δ[A189274(n+1)])]`
-/

namespace A198768.P3592287600501202223
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189274 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A198768.P3592287600501202223

namespace A198768

/-- `∑[abs(Δ[A189274(n+1)])]` -/
def P3592287600501202223.Spec : Prop :=
  ∀ n, P3592287600501202223.a n = A198768 n

end A198768

/-! ## A198768.P10298905993519079061

`2*(3*A199213(n)-2)`
-/

namespace A198768.P10298905993519079061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (3 * A199213 n - 2)

end

end A198768.P10298905993519079061

namespace A198768

/-- `2*(3*A199213(n)-2)` -/
def P10298905993519079061.Spec : Prop :=
  ∀ n, P10298905993519079061.a n = A198768 n

end A198768

/-! ## A198768.P16570278508757798200

`abs(1-3*A235702(n+2)/8)`
-/

namespace A198768.P16570278508757798200
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |1 - 3 * ((A235702 (n + 2) : ℚ) / 8)|

end

end A198768.P16570278508757798200

namespace A198768

/-- `abs(1-3*A235702(n+2)/8)` -/
def P16570278508757798200.Spec : Prop :=
  ∀ n, P16570278508757798200.a n = (A198768 n : ℚ)

end A198768

/-! ## A198768.P17800593268544014259

`Δ[A104891(n)+A024050(n)]`
-/

namespace A198768.P17800593268544014259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104891 n + A024050 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A198768.P17800593268544014259

namespace A198768

/-- `Δ[A104891(n)+A024050(n)]` -/
def P17800593268544014259.Spec : Prop :=
  ∀ n, P17800593268544014259.a n = A198768 n

end A198768

/-! ## A198768.P8642957211339574401

`2*(A198764(n)-A057651(n))`
-/

namespace A198768.P8642957211339574401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A198764 n - A057651 n)

end

end A198768.P8642957211339574401

namespace A198768

/-- `2*(A198764(n)-A057651(n))` -/
def P8642957211339574401.Spec : Prop :=
  ∀ n, P8642957211339574401.a n = A198768 n

end A198768

/-! ## A198768.P17916852167923896787

`Δ[A024049(n)+∑[A024049(n)]]`
-/

namespace A198768.P17916852167923896787
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024049 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024049 n + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A198768.P17916852167923896787

namespace A198768

/-- `Δ[A024049(n)+∑[A024049(n)]]` -/
def P17916852167923896787.Spec : Prop :=
  ∀ n, P17916852167923896787.a n = A198768 n

end A198768

/-! ## A198768.P4559848678875372650

`2*(A020729(n)+∑[A020729(n)])`
-/

namespace A198768.P4559848678875372650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020729 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A020729 n + ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A198768.P4559848678875372650

namespace A198768

/-- `2*(A020729(n)+∑[A020729(n)])` -/
def P4559848678875372650.Spec : Prop :=
  ∀ n, P4559848678875372650.a n = A198768 n

end A198768

/-! ## A198768.P15367855758379273035

`2*(A238366(2*n+1)+A162963(2*n+1))`
-/

namespace A198768.P15367855758379273035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A238366 (2 * n + 1) + A162963 (2 * n + 1))

end

end A198768.P15367855758379273035

namespace A198768

/-- `2*(A238366(2*n+1)+A162963(2*n+1))` -/
def P15367855758379273035.Spec : Prop :=
  ∀ n, P15367855758379273035.a n = A198768 n

end A198768

/-! ## A198768.P13073804756601778039

`Δ[A155601(n)]/2^n`
-/

namespace A198768.P13073804756601778039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155601 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (2 ^ n : ℚ)

end

end A198768.P13073804756601778039

namespace A198768

/-- `Δ[A155601(n)]/2^n` -/
def P13073804756601778039.Spec : Prop :=
  ∀ n, P13073804756601778039.a n = (A198768 n : ℚ)

end A198768

/-! ## A198768.P5109323312448021695

`(A052268(n+1)-A011782(n+1))/A011782(n+1)`
-/

namespace A198768.P5109323312448021695
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052268 (n + 1) - A011782 (n + 1) : ℚ) / (A011782 (n + 1) : ℚ)

end

end A198768.P5109323312448021695

namespace A198768

/-- `(A052268(n+1)-A011782(n+1))/A011782(n+1)` -/
def P5109323312448021695.Spec : Prop :=
  ∀ n, P5109323312448021695.a n = (A198768 n : ℚ)

end A198768

/-!
# A198769: a(n) = (9*5^n-1)/4.

The programs for A198769, the canonical program `A198769.P1848153444329093452` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A198769 has offset 0).

The definition of A198769 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(9*5^n-1)/4` (program `A198769.P4091611188483622264`, by `A198769.P4091611188483622264.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A198769.P1848153444329093452

`5*a(n-1)+1` with `a(0)=2`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A198769

/-- `5*a(n-1)+1` -/
def P1848153444329093452.Spec : Prop :=
  ∀ n, (P1848153444329093452.a n : ℤ) = A198769 n

theorem P1848153444329093452.correct : P1848153444329093452.Spec := by
  intro n
  simp only [A198769]

end A198769

/-! ## A198769.P4091611188483622264

`(9*5^n-1)/4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A198769.P4091611188483622264
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((9 * 5 ^ n : ℤ) - 1 : ℚ) / 4

end

end A198769.P4091611188483622264

namespace A198769

/-- `(9*5^n-1)/4` -/
def P4091611188483622264.Spec : Prop :=
  ∀ n, P4091611188483622264.a n = (A198769 n : ℚ)

theorem P4091611188483622264.correct : P4091611188483622264.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A198769, Nat.add_sub_cancel, A198769.P4091611188483622264.a, A198769.P1848153444329093452.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A198769, Nat.add_sub_cancel, A198769.P4091611188483622264.a, A198769.P1848153444329093452.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A198769

/-! ## A198769.P15271222279149380683

`ogf((2-x)/(1-6x+5x^2))`
-/

namespace A198769.P15271222279149380683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -1] [1, -6, 5] n

end

end A198769.P15271222279149380683

namespace A198769

/-- `ogf((2-x)/(1-6x+5x^2))` -/
def P15271222279149380683.Spec : Prop :=
  ∀ n, P15271222279149380683.a n = A198769 n

end A198769

/-! ## A198769.P15148325893348415445

`lcm(5, a(n-1))+1` with `a(0)=2`
-/

namespace A198769.P15148325893348415445
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  Nat.lcm 5 (a (n - 1)) + 1

end

end A198769.P15148325893348415445

namespace A198769

/-- `lcm(5, a(n-1))+1` -/
def P15148325893348415445.Spec : Prop :=
  ∀ n, (P15148325893348415445.a n : ℤ) = A198769 n

end A198769

/-! ## A198769.P2628751811026893874

`∑[5*a(n-1)]` with `a(0)=2, a(1)=9`
-/

namespace A198769.P2628751811026893874
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 9] fun n f1 =>
  5 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A198769.P2628751811026893874

namespace A198769

/-- `∑[5*a(n-1)]` -/
def P2628751811026893874.Spec : Prop :=
  ∀ n, (P2628751811026893874.a n : ℤ) = A198769 n

end A198769

/-! ## A198769.P16829536396294647808

`6-5*(1-a(n-1))` with `a(0)=2`
-/

namespace A198769.P16829536396294647808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  6 - 5 * (1 - a (n - 1))

end

end A198769.P16829536396294647808

namespace A198769

/-- `6-5*(1-a(n-1))` -/
def P16829536396294647808.Spec : Prop :=
  ∀ n, P16829536396294647808.a n = A198769 n

end A198769

/-! ## A198769.P12985664208605551777

`1-a(n-1)/(4/5-1)` with `a(0)=2`
-/

namespace A198769.P12985664208605551777
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2] fun n a =>
  1 - a (n - 1) / ((4 : ℚ) / 5 - 1)

end

end A198769.P12985664208605551777

namespace A198769

/-- `1-a(n-1)/(4/5-1)` -/
def P12985664208605551777.Spec : Prop :=
  ∀ n, P12985664208605551777.a n = (A198769 n : ℚ)

end A198769

/-! ## A198769.P14879271465341022587

`a(n-1)+a(n-1)+a(n-1)+a(n-1)+a(n-1)+1` with `a(0)=2`
-/

namespace A198769.P14879271465341022587
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + (a (n - 1) + (a (n - 1) + (a (n - 1) + (a (n - 1) + 1))))

end

end A198769.P14879271465341022587

namespace A198769

/-- `a(n-1)+a(n-1)+a(n-1)+a(n-1)+a(n-1)+1` -/
def P14879271465341022587.Spec : Prop :=
  ∀ n, (P14879271465341022587.a n : ℤ) = A198769 n

theorem P14879271465341022587.correct : P14879271465341022587.Spec := by
  intro n
  simp only [A198769, Nat.add_sub_cancel, A198769.P14879271465341022587.a, A198769.P1848153444329093452.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A198769

/-! ## A198769.P5958234958542749136

`3*A083065(n)-1`
-/

namespace A198769.P5958234958542749136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A083065 n - 1

end

end A198769.P5958234958542749136

namespace A198769

/-- `3*A083065(n)-1` -/
def P5958234958542749136.Spec : Prop :=
  ∀ n, P5958234958542749136.a n = A198769 n

end A198769

/-! ## A198769.P3099694401403213

`3*A125833(n)+2`
-/

namespace A198769.P3099694401403213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A125833 n + 2

end

end A198769.P3099694401403213

namespace A198769

/-- `3*A125833(n)+2` -/
def P3099694401403213.Spec : Prop :=
  ∀ n, P3099694401403213.a n = A198769 n

end A198769

/-! ## A198769.P6860158599871940145

`9*A003463(n)+2`
-/

namespace A198769.P6860158599871940145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A003463 n + 2

end

end A198769.P6860158599871940145

namespace A198769

/-- `9*A003463(n)+2` -/
def P6860158599871940145.Spec : Prop :=
  ∀ n, P6860158599871940145.a n = A198769 n

end A198769

/-! ## A198769.P10533656911232338678

`A133629(Δ[n²])+1`
-/

namespace A198769.P10533656911232338678
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133629 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1

end

end A198769.P10533656911232338678

namespace A198769

/-- `A133629(Δ[n²])+1` -/
def P10533656911232338678.Spec : Prop :=
  ∀ n, P10533656911232338678.a n = A198769 n

end A198769

/-! ## A198769.P10605625452753818812

`ceil(3/2*A057651(n))`
-/

namespace A198769.P10605625452753818812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(3 : ℚ) / 2 * (A057651 n : ℚ)⌉

end

end A198769.P10605625452753818812

namespace A198769

/-- `ceil(3/2*A057651(n))` -/
def P10605625452753818812.Spec : Prop :=
  ∀ n, P10605625452753818812.a n = A198769 n

end A198769

/-! ## A198769.P14967454125005825200

`∑[A189274(n+1)]+1`
-/

namespace A198769.P14967454125005825200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189274 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A198769.P14967454125005825200

namespace A198769

/-- `∑[A189274(n+1)]+1` -/
def P14967454125005825200.Spec : Prop :=
  ∀ n, P14967454125005825200.a n = A198769 n

end A198769

/-! ## A198769.P608336843041184767

`∑[A005517(2*n+n+2)]`
-/

namespace A198769.P608336843041184767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005517 (2 * n + (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A198769.P608336843041184767

namespace A198769

/-- `∑[A005517(2*n+n+2)]` -/
def P608336843041184767.Spec : Prop :=
  ∀ n, P608336843041184767.a n = A198769 n

end A198769

/-! ## A198769.P1515529374787899039

`A020729(n)+A003463(n)`
-/

namespace A198769.P1515529374787899039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020729 n + A003463 n

end

end A198769.P1515529374787899039

namespace A198769

/-- `A020729(n)+A003463(n)` -/
def P1515529374787899039.Spec : Prop :=
  ∀ n, P1515529374787899039.a n = A198769 n

end A198769

/-! ## A198769.P16945410363713283206

`A000351(n)+∑[A000351(n)]`
-/

namespace A198769.P16945410363713283206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000351 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000351 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A198769.P16945410363713283206

namespace A198769

/-- `A000351(n)+∑[A000351(n)]` -/
def P16945410363713283206.Spec : Prop :=
  ∀ n, P16945410363713283206.a n = A198769 n

end A198769

/-! ## A198769.P2309926683346325591

`A003463(n)+Δ[A034478(n)]`
-/

namespace A198769.P2309926683346325591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034478 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003463 n + (f1 (n + 1) - f1 n)

end

end A198769.P2309926683346325591

namespace A198769

/-- `A003463(n)+Δ[A034478(n)]` -/
def P2309926683346325591.Spec : Prop :=
  ∀ n, P2309926683346325591.a n = A198769 n

end A198769

/-! ## A198769.P18221245293536797786

`A003463(n+1)+A000351(n)`
-/

namespace A198769.P18221245293536797786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003463 (n + 1) + A000351 n

end

end A198769.P18221245293536797786

namespace A198769

/-- `A003463(n+1)+A000351(n)` -/
def P18221245293536797786.Spec : Prop :=
  ∀ n, P18221245293536797786.a n = A198769 n

end A198769

/-! ## A198769.P16871197621766759333

`A083065(n+1)-A199213(n)`
-/

namespace A198769.P16871197621766759333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083065 (n + 1) - A199213 n

end

end A198769.P16871197621766759333

namespace A198769

/-- `A083065(n+1)-A199213(n)` -/
def P16871197621766759333.Spec : Prop :=
  ∀ n, P16871197621766759333.a n = A198769 n

end A198769

/-!
# A198770: a(n) = 11*5^n-1.

The programs for A198770, the canonical program `A198770.P7006575279309314523` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A198770 has offset 0).

The definition of A198770 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `11*5^n-1` (program `A198770.P7006575279309314523`, by `A198770.P7006575279309314523.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A198770.P7006575279309314523

`11*5^n-1`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A198770

/-- `11*5^n-1` -/
def P7006575279309314523.Spec : Prop :=
  ∀ n, P7006575279309314523.a n = A198770 n

theorem P7006575279309314523.correct : P7006575279309314523.Spec := by
  intro n
  simp only [A198770]

end A198770

/-! ## A198770.P17229727763424304725

`xor(1, 11*5^n)`
-/

namespace A198770.P17229727763424304725
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (11 * 5 ^ n)

end

end A198770.P17229727763424304725

namespace A198770

/-- `xor(1, 11*5^n)` -/
def P17229727763424304725.Spec : Prop :=
  ∀ n, (P17229727763424304725.a n : ℤ) = A198770 n

end A198770

/-! ## A198770.P16177121372286330308

`ogf((10-6x)/(1-6x+5x^2))`
-/

namespace A198770.P16177121372286330308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [10, -6] [1, -6, 5] n

end

end A198770.P16177121372286330308

namespace A198770

/-- `ogf((10-6x)/(1-6x+5x^2))` -/
def P16177121372286330308.Spec : Prop :=
  ∀ n, P16177121372286330308.a n = A198770 n

end A198770

/-! ## A198770.P17867113117871773269

`∑[5*a(n-1)]` with `a(0)=10, a(1)=44`
-/

namespace A198770.P17867113117871773269
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [10, 44] fun n f1 =>
  5 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A198770.P17867113117871773269

namespace A198770

/-- `∑[5*a(n-1)]` -/
def P17867113117871773269.Spec : Prop :=
  ∀ n, (P17867113117871773269.a n : ℤ) = A198770 n

end A198770

/-! ## A198770.P9446189347430734888

`abs(5*a(n-1)+4)` with `a(0)=10`
-/

namespace A198770.P9446189347430734888
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [10] fun n a =>
  5 * a (n - 1) + 4

end

end A198770.P9446189347430734888

namespace A198770

/-- `abs(5*a(n-1)+4)` -/
def P9446189347430734888.Spec : Prop :=
  ∀ n, (P9446189347430734888.a n : ℤ) = A198770 n

theorem P9446189347430734888.correct : P9446189347430734888.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A198770, Nat.add_sub_cancel, A198770.P9446189347430734888.a, A198770.P7006575279309314523.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A198770, Nat.add_sub_cancel, A198770.P9446189347430734888.a, A198770.P7006575279309314523.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A198770

/-! ## A198770.P2302179393317298759

`5*(a(n-1)+4/5)` with `a(0)=10`
-/

namespace A198770.P2302179393317298759
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [10] fun n a =>
  5 * (a (n - 1) + (4 : ℚ) / 5)

end

end A198770.P2302179393317298759

namespace A198770

/-- `5*(a(n-1)+4/5)` -/
def P2302179393317298759.Spec : Prop :=
  ∀ n, P2302179393317298759.a n = (A198770 n : ℚ)

theorem P2302179393317298759.correct : P2302179393317298759.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A198770, Nat.add_sub_cancel, A198770.P2302179393317298759.a, A198770.P7006575279309314523.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A198770, Nat.add_sub_cancel, A198770.P2302179393317298759.a, A198770.P7006575279309314523.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A198770

/-! ## A198770.P17738431918022152170

`record[5*a(n-2)+4]` with `a(0)=10, a(1)=1`
-/

namespace A198770.P17738431918022152170
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [10, 1] fun n f1 =>
  5 * f1 (n - 2) + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A198770.P17738431918022152170

namespace A198770

/-- `record[5*a(n-2)+4]` -/
def P17738431918022152170.Spec : Prop :=
  ∀ n, (P17738431918022152170.a n : ℤ) = A198770 n

end A198770

/-! ## A198770.P6418220218036715894

`or(2, 7-5*(1-a(n-1)))` with `a(0)=10`
-/

namespace A198770.P6418220218036715894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [10] fun n a =>
  Int.lor 2 (7 - 5 * (1 - a (n - 1)))

end

end A198770.P6418220218036715894

namespace A198770

/-- `or(2, 7-5*(1-a(n-1)))` -/
def P6418220218036715894.Spec : Prop :=
  ∀ n, P6418220218036715894.a n = A198770 n

end A198770

/-! ## A198770.P16470563121210900948

`or(2, a(n-1)/(1-4/5)+2)` with `a(0)=10`
-/

namespace A198770.P16470563121210900948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [10] fun n a =>
  Int.lor 2 (SequenceMachineLib.roundAway ((a (n - 1) : ℚ) / (1 - (4 : ℚ) / 5) + 2))

end

end A198770.P16470563121210900948

namespace A198770

/-- `or(2, a(n-1)/(1-4/5)+2)` -/
def P16470563121210900948.Spec : Prop :=
  ∀ n, P16470563121210900948.a n = A198770 n

end A198770

/-! ## A198770.P8599866268453270457

`2*A198771(n)`
-/

namespace A198770.P8599866268453270457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A198771 n

end

end A198770.P8599866268453270457

namespace A198770

/-- `2*A198771(n)` -/
def P8599866268453270457.Spec : Prop :=
  ∀ n, P8599866268453270457.a n = A198770 n

end A198770

/-! ## A198770.P16252478130563786838

`Δ[A117088(n)-n]`
-/

namespace A198770.P16252478130563786838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117088 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A198770.P16252478130563786838

namespace A198770

/-- `Δ[A117088(n)-n]` -/
def P16252478130563786838.Spec : Prop :=
  ∀ n, P16252478130563786838.a n = A198770 n

end A198770

/-! ## A198770.P1805071964019825864

`2*(A199315(n)-1)`
-/

namespace A198770.P1805071964019825864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A199315 n - 1)

end

end A198770.P1805071964019825864

namespace A198770

/-- `2*(A199315(n)-1)` -/
def P1805071964019825864.Spec : Prop :=
  ∀ n, P1805071964019825864.a n = A198770 n

end A198770

/-! ## A198770.P12266731138407915675

`2*(A198765(n)-A057651(n))`
-/

namespace A198770.P12266731138407915675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A198765 n - A057651 n)

end

end A198770.P12266731138407915675

namespace A198770

/-- `2*(A198765(n)-A057651(n))` -/
def P12266731138407915675.Spec : Prop :=
  ∀ n, P12266731138407915675.a n = A198770 n

end A198770

/-! ## A198770.P58551980450190146

`2*(A057651(n)+Δ[A000351(n)])`
-/

namespace A198770.P58551980450190146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000351 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A057651 n + (f1 (n + 1) - f1 n))

end

end A198770.P58551980450190146

namespace A198770

/-- `2*(A057651(n)+Δ[A000351(n)])` -/
def P58551980450190146.Spec : Prop :=
  ∀ n, P58551980450190146.a n = A198770 n

end A198770

/-! ## A198770.P12491770165947765351

`2*(A057651(n)+Δ[A034474(n)])`
-/

namespace A198770.P12491770165947765351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034474 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A057651 n + (f1 (n + 1) - f1 n))

end

end A198770.P12491770165947765351

namespace A198770

/-- `2*(A057651(n)+Δ[A034474(n)])` -/
def P12491770165947765351.Spec : Prop :=
  ∀ n, P12491770165947765351.a n = A198770 n

end A198770

/-! ## A198770.P11084363516597673973

`2*(A121177(n+2)+A056487(2*n+1))`
-/

namespace A198770.P11084363516597673973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A121177 (n + 2) + A056487 (2 * n + 1))

end

end A198770.P11084363516597673973

namespace A198770

/-- `2*(A121177(n+2)+A056487(2*n+1))` -/
def P11084363516597673973.Spec : Prop :=
  ∀ n, P11084363516597673973.a n = A198770 n

end A198770

/-! ## A198770.P721467942031990575

`2*(A198306(2*n+3)-A162963(2*n+1))`
-/

namespace A198770.P721467942031990575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A198306 (2 * n + 3) - A162963 (2 * n + 1))

end

end A198770.P721467942031990575

namespace A198770

/-- `2*(A198306(2*n+3)-A162963(2*n+1))` -/
def P721467942031990575.Spec : Prop :=
  ∀ n, P721467942031990575.a n = A198770 n

end A198770

/-!
# A198771: a(n) = (11*5^n-1)/2.

The programs for A198771, the canonical program `A198771.P7909184750834446064` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A198771 has offset 0).

The definition of A198771 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(11*5^n-1)/2` (program `A198771.P1467573071717433576`, by `A198771.P1467573071717433576.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A198771.P7909184750834446064

`5*a(n-1)+2` with `a(0)=5`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A198771

/-- `5*a(n-1)+2` -/
def P7909184750834446064.Spec : Prop :=
  ∀ n, (P7909184750834446064.a n : ℤ) = A198771 n

theorem P7909184750834446064.correct : P7909184750834446064.Spec := by
  intro n
  simp only [A198771]

end A198771

/-! ## A198771.P1467573071717433576

`(11*5^n-1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A198771.P1467573071717433576
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((11 * 5 ^ n : ℤ) - 1 : ℚ) / 2

end

end A198771.P1467573071717433576

namespace A198771

/-- `(11*5^n-1)/2` -/
def P1467573071717433576.Spec : Prop :=
  ∀ n, P1467573071717433576.a n = (A198771 n : ℚ)

theorem P1467573071717433576.correct : P1467573071717433576.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A198771, Nat.add_sub_cancel, A198771.P1467573071717433576.a, A198771.P7909184750834446064.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A198771, Nat.add_sub_cancel, A198771.P1467573071717433576.a, A198771.P7909184750834446064.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A198771

/-! ## A198771.P9257092482871190083

`ogf((5-3x)/(1-6x+5x^2))`
-/

namespace A198771.P9257092482871190083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, -3] [1, -6, 5] n

end

end A198771.P9257092482871190083

namespace A198771

/-- `ogf((5-3x)/(1-6x+5x^2))` -/
def P9257092482871190083.Spec : Prop :=
  ∀ n, P9257092482871190083.a n = A198771 n

end A198771

/-! ## A198771.P4296899027180003409

`∑[5*a(n-1)]` with `a(0)=5, a(1)=22`
-/

namespace A198771.P4296899027180003409
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [5, 22] fun n f1 =>
  5 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A198771.P4296899027180003409

namespace A198771

/-- `∑[5*a(n-1)]` -/
def P4296899027180003409.Spec : Prop :=
  ∀ n, (P4296899027180003409.a n : ℤ) = A198771 n

end A198771

/-! ## A198771.P15743413873755370553

`7-5*(1-a(n-1))` with `a(0)=5`
-/

namespace A198771.P15743413873755370553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  7 - 5 * (1 - a (n - 1))

end

end A198771.P15743413873755370553

namespace A198771

/-- `7-5*(1-a(n-1))` -/
def P15743413873755370553.Spec : Prop :=
  ∀ n, P15743413873755370553.a n = A198771 n

end A198771

/-! ## A198771.P3131904810704849819

`lcm(5, a(n-1)+1)-3` with `a(0)=5`
-/

namespace A198771.P3131904810704849819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  (Int.lcm 5 (a (n - 1) + 1) : ℤ) - 3

end

end A198771.P3131904810704849819

namespace A198771

/-- `lcm(5, a(n-1)+1)-3` -/
def P3131904810704849819.Spec : Prop :=
  ∀ n, P3131904810704849819.a n = A198771 n

end A198771

/-! ## A198771.P11730536000396091975

`a(n-1)/(1-4/5)+2` with `a(0)=5`
-/

namespace A198771.P11730536000396091975
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [5] fun n a =>
  a (n - 1) / (1 - (4 : ℚ) / 5) + 2

end

end A198771.P11730536000396091975

namespace A198771

/-- `a(n-1)/(1-4/5)+2` -/
def P11730536000396091975.Spec : Prop :=
  ∀ n, P11730536000396091975.a n = (A198771 n : ℚ)

end A198771

/-! ## A198771.P536740569731282313

`2-a(n-1)/(4/5-1)` with `a(0)=5`
-/

namespace A198771.P536740569731282313
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [5] fun n a =>
  2 - a (n - 1) / ((4 : ℚ) / 5 - 1)

end

end A198771.P536740569731282313

namespace A198771

/-- `2-a(n-1)/(4/5-1)` -/
def P536740569731282313.Spec : Prop :=
  ∀ n, P536740569731282313.a n = (A198771 n : ℚ)

end A198771

/-! ## A198771.P13072571947830325445

`A199315(n)-1`
-/

namespace A198771.P13072571947830325445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199315 n - 1

end

end A198771.P13072571947830325445

namespace A198771

/-- `A199315(n)-1` -/
def P13072571947830325445.Spec : Prop :=
  ∀ n, P13072571947830325445.a n = A198771 n

end A198771

/-! ## A198771.P13150410670951207293

`2*A199314(n)-1`
-/

namespace A198771.P13150410670951207293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A199314 n - 1

end

end A198771.P13150410670951207293

namespace A198771

/-- `2*A199314(n)-1` -/
def P13150410670951207293.Spec : Prop :=
  ∀ n, P13150410670951207293.a n = A198771 n

end A198771

/-! ## A198771.P14282270079479599666

`2*A117088(n)+3`
-/

namespace A198771.P14282270079479599666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A117088 n + 3

end

end A198771.P14282270079479599666

namespace A198771

/-- `2*A117088(n)+3` -/
def P14282270079479599666.Spec : Prop :=
  ∀ n, P14282270079479599666.a n = A198771 n

end A198771

/-! ## A198771.P13442676281277108118

`A057651(n)+Δ[A000351(n)]`
-/

namespace A198771.P13442676281277108118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000351 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057651 n + (f1 (n + 1) - f1 n)

end

end A198771.P13442676281277108118

namespace A198771

/-- `A057651(n)+Δ[A000351(n)]` -/
def P13442676281277108118.Spec : Prop :=
  ∀ n, P13442676281277108118.a n = A198771 n

end A198771

/-! ## A198771.P10918065024946450600

`A057651(n)+Δ[A024049(n)]`
-/

namespace A198771.P10918065024946450600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024049 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057651 n + (f1 (n + 1) - f1 n)

end

end A198771.P10918065024946450600

namespace A198771

/-- `A057651(n)+Δ[A024049(n)]` -/
def P10918065024946450600.Spec : Prop :=
  ∀ n, P10918065024946450600.a n = A198771 n

end A198771

/-! ## A198771.P11434120410255431984

`A057651(n)+Δ[A034474(n)]`
-/

namespace A198771.P11434120410255431984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034474 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057651 n + (f1 (n + 1) - f1 n)

end

end A198771.P11434120410255431984

namespace A198771

/-- `A057651(n)+Δ[A034474(n)]` -/
def P11434120410255431984.Spec : Prop :=
  ∀ n, P11434120410255431984.a n = A198771 n

end A198771

/-! ## A198771.P15671577079584695723

`A057651(n)+A005054(n+1)`
-/

namespace A198771.P15671577079584695723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057651 n + A005054 (n + 1)

end

end A198771.P15671577079584695723

namespace A198771

/-- `A057651(n)+A005054(n+1)` -/
def P15671577079584695723.Spec : Prop :=
  ∀ n, P15671577079584695723.a n = A198771 n

end A198771

/-! ## A198771.P8414884977832671491

`A137410(n)+A034474(n+1)`
-/

namespace A198771.P8414884977832671491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137410 n + A034474 (n + 1)

end

end A198771.P8414884977832671491

namespace A198771

/-- `A137410(n)+A034474(n+1)` -/
def P8414884977832671491.Spec : Prop :=
  ∀ n, P8414884977832671491.a n = A198771 n

end A198771

/-! ## A198771.P12917803770714349205

`A057651(n)+A198763(n)+1`
-/

namespace A198771.P12917803770714349205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057651 n + (A198763 n + 1)

end

end A198771.P12917803770714349205

namespace A198771

/-- `A057651(n)+A198763(n)+1` -/
def P12917803770714349205.Spec : Prop :=
  ∀ n, P12917803770714349205.a n = A198771 n

end A198771

/-! ## A198771.P5565282656390285506

`A081655(n)+A198766(n)+1`
-/

namespace A198771.P5565282656390285506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081655 n + (A198766 n + 1)

end

end A198771.P5565282656390285506

namespace A198771

/-- `A081655(n)+A198766(n)+1` -/
def P5565282656390285506.Spec : Prop :=
  ∀ n, P5565282656390285506.a n = A198771 n

end A198771

/-! ## A198771.P11968005150799472513

`A199213(n)+A199215(n)-2`
-/

namespace A198771.P11968005150799472513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199213 n + (A199215 n - 2)

end

end A198771.P11968005150799472513

namespace A198771

/-- `A199213(n)+A199215(n)-2` -/
def P11968005150799472513.Spec : Prop :=
  ∀ n, P11968005150799472513.a n = A198771 n

end A198771

/-!
# A198772: Numbers having exactly one representation by the quadratic form x^2 + xy + y^2 with 0 <= x <= y.

The programs for A198772, the canonical program `A198772.P17358713934612375480` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A198772 has offset 1).

The definition of A198772 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1602 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A198772.P13013881967272940063

`eq[1, A051724(abs(A180318(n)))]`
-/

namespace A198772.P13013881967272940063
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051724 |A180318 n|.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A198772.P13013881967272940063

namespace A198772

/-- `eq[1, A051724(abs(A180318(n)))]` -/
def P13013881967272940063.Spec : Prop :=
  ∀ n, (P13013881967272940063.a n : ℤ) = A198772 (n + 1)

end A198772

/-! ## A198772.P17358713934612375480

`eq[1, A088534(n)]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A198772

/-- `eq[1, A088534(n)]` -/
def P17358713934612375480.Spec : Prop :=
  ∀ n, (P17358713934612375480.a n : ℤ) = A198772 (n + 1)

theorem P17358713934612375480.correct : P17358713934612375480.Spec := by
  intro n
  simp only [A198772, Nat.add_sub_cancel]

end A198772

/-! ## A198772.P8793437353919636512

`eq[1, round(atan(A004016(n)))]`
-/

namespace A198772.P8793437353919636512
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.arctan (A004016 n : ℝ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A198772.P8793437353919636512

namespace A198772

/-- `eq[1, round(atan(A004016(n)))]` -/
def P8793437353919636512.Spec : Prop :=
  ∀ n, (P8793437353919636512.a n : ℤ) = A198772 (n + 1)

end A198772

/-! ## A198772.P14889561025630963261

`eq[1, A316082(A004016(n))]`
-/

namespace A198772.P14889561025630963261
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316082 (A004016 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A198772.P14889561025630963261

namespace A198772

/-- `eq[1, A316082(A004016(n))]` -/
def P14889561025630963261.Spec : Prop :=
  ∀ n, (P14889561025630963261.a n : ℤ) = A198772 (n + 1)

end A198772

/-! ## A198772.P17563968678084443436

`eq[1, A111248(A004016(n)+1)]`
-/

namespace A198772.P17563968678084443436
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111248 (A004016 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A198772.P17563968678084443436

namespace A198772

/-- `eq[1, A111248(A004016(n)+1)]` -/
def P17563968678084443436.Spec : Prop :=
  ∀ n, (P17563968678084443436.a n : ℤ) = A198772 (n + 1)

end A198772

/-! ## A198772.P5494413651826763582

`eq[1, A008679(A004016(n)+2)]`
-/

namespace A198772.P5494413651826763582
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008679 (A004016 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A198772.P5494413651826763582

namespace A198772

/-- `eq[1, A008679(A004016(n)+2)]` -/
def P5494413651826763582.Spec : Prop :=
  ∀ n, (P5494413651826763582.a n : ℤ) = A198772 (n + 1)

end A198772

/-! ## A198772.P16178068832904548298

`eq[1, A025850(A004016(n)+2)]`
-/

namespace A198772.P16178068832904548298
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025850 (A004016 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A198772.P16178068832904548298

namespace A198772

/-- `eq[1, A025850(A004016(n)+2)]` -/
def P16178068832904548298.Spec : Prop :=
  ∀ n, (P16178068832904548298.a n : ℤ) = A198772 (n + 1)

end A198772

/-! ## A198772.P17467316828523037125

`eq[1, A266344(A004016(n)+3)]`
-/

namespace A198772.P17467316828523037125
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266344 (A004016 n + 3).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A198772.P17467316828523037125

namespace A198772

/-- `eq[1, A266344(A004016(n)+3)]` -/
def P17467316828523037125.Spec : Prop :=
  ∀ n, (P17467316828523037125.a n : ℤ) = A198772 (n + 1)

end A198772

/-! ## A198772.P11951324320260959068

`eq[12, A113660(A004016(n)+12)]`
-/

namespace A198772.P11951324320260959068
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113660 (A004016 n + 12).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A198772.P11951324320260959068

namespace A198772

/-- `eq[12, A113660(A004016(n)+12)]` -/
def P11951324320260959068.Spec : Prop :=
  ∀ n, (P11951324320260959068.a n : ℤ) = A198772 (n + 1)

end A198772

/-! ## A198772.P4213938874736186968

`eq[1, A030218(A004016(n)+3)²]`
-/

namespace A198772.P4213938874736186968
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030218 (A004016 n + 3).toNat ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A198772.P4213938874736186968

namespace A198772

/-- `eq[1, A030218(A004016(n)+3)²]` -/
def P4213938874736186968.Spec : Prop :=
  ∀ n, (P4213938874736186968.a n : ℤ) = A198772 (n + 1)

end A198772

/-! ## A198772.P173233646850250040

`lt[A113973(n)², 2*A004016(n)]`
-/

namespace A198772.P173233646850250040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113973 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A004016 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A198772.P173233646850250040

namespace A198772

/-- `lt[A113973(n)², 2*A004016(n)]` -/
def P173233646850250040.Spec : Prop :=
  ∀ n, (P173233646850250040.a n : ℤ) = A198772 (n + 1)

end A198772

/-! ## A198772.P7798381877732005264

`eq[A338732(A004016(n))+1, A036453(n+1)]`
-/

namespace A198772.P7798381877732005264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338732 (A004016 n).toNat + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A198772.P7798381877732005264

namespace A198772

/-- `eq[A338732(A004016(n))+1, A036453(n+1)]` -/
def P7798381877732005264.Spec : Prop :=
  ∀ n, (P7798381877732005264.a n : ℤ) = A198772 (n + 1)

end A198772

/-!
# A198773: Numbers having exactly two representations by the quadratic form x^2+xy+y^2 with 0<=x<=y.

The programs for A198773, the canonical program `A198773.P9580269409749445234` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A198773 has offset 1).

The definition of A198773 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 620 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A198773.P9580269409749445234

`eq[2, A088534(n)]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A198773

/-- `eq[2, A088534(n)]` -/
def P9580269409749445234.Spec : Prop :=
  ∀ n, (P9580269409749445234.a n : ℤ) = A198773 (n + 1)

theorem P9580269409749445234.correct : P9580269409749445234.Spec := by
  intro n
  simp only [A198773, Nat.add_sub_cancel]

end A198773

/-! ## A198773.P17815728292805989221

`eq[0, A015488(A004016(n))]`
-/

namespace A198773.P17815728292805989221
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015488 (A004016 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A198773.P17815728292805989221

namespace A198773

/-- `eq[0, A015488(A004016(n))]` -/
def P17815728292805989221.Spec : Prop :=
  ∀ n, (P17815728292805989221.a n : ℤ) = A198773 (n + 1)

end A198773

/-! ## A198773.P5249110815762415391

`eq[1, A334040(A004016(n)+1)]`
-/

namespace A198773.P5249110815762415391
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334040 (A004016 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A198773.P5249110815762415391

namespace A198773

/-- `eq[1, A334040(A004016(n)+1)]` -/
def P5249110815762415391.Spec : Prop :=
  ∀ n, (P5249110815762415391.a n : ℤ) = A198773 (n + 1)

end A198773

/-! ## A198773.P7334411076783327791

`eq[2, A008679(A004016(n)+1)]`
-/

namespace A198773.P7334411076783327791
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008679 (A004016 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A198773.P7334411076783327791

namespace A198773

/-- `eq[2, A008679(A004016(n)+1)]` -/
def P7334411076783327791.Spec : Prop :=
  ∀ n, (P7334411076783327791.a n : ℤ) = A198773 (n + 1)

end A198773

/-! ## A198773.P11799377911648409899

`eq[2, A025826(A004016(n)+5)]`
-/

namespace A198773.P11799377911648409899
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025826 (A004016 n + 5).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A198773.P11799377911648409899

namespace A198773

/-- `eq[2, A025826(A004016(n)+5)]` -/
def P11799377911648409899.Spec : Prop :=
  ∀ n, (P11799377911648409899.a n : ℤ) = A198773 (n + 1)

end A198773

/-! ## A198773.P13463916424842448406

`eq[2, A287867(2*A004016(n)+1)+1]`
-/

namespace A198773.P13463916424842448406
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287867 (2 * A004016 n + 1).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A198773.P13463916424842448406

namespace A198773

/-- `eq[2, A287867(2*A004016(n)+1)+1]` -/
def P13463916424842448406.Spec : Prop :=
  ∀ n, (P13463916424842448406.a n : ℤ) = A198773 (n + 1)

end A198773

/-! ## A198773.P8823163328355642797

`eq[A036453(n+1), A338732(A004016(n))]`
-/

namespace A198773.P8823163328355642797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338732 (A004016 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A198773.P8823163328355642797

namespace A198773

/-- `eq[A036453(n+1), A338732(A004016(n))]` -/
def P8823163328355642797.Spec : Prop :=
  ∀ n, (P8823163328355642797.a n : ℤ) = A198773 (n + 1)

end A198773

/-! ## A198773.P3497924146310359422

`eq[2, ceil(A005928(3*n)/12)]`
-/

namespace A198773.P3497924146310359422
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A005928 (3 * n) : ℚ) / 12⌉

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A198773.P3497924146310359422

namespace A198773

/-- `eq[2, ceil(A005928(3*n)/12)]` -/
def P3497924146310359422.Spec : Prop :=
  ∀ n, (P3497924146310359422.a n : ℤ) = A198773 (n + 1)

end A198773

/-! ## A198773.P15015770721720114001

`lt[A088534(n*A088534(n)), 1]`
-/

namespace A198773.P15015770721720114001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088534 ((n : ℤ) * A088534 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A198773.P15015770721720114001

namespace A198773

/-- `lt[A088534(n*A088534(n)), 1]` -/
def P15015770721720114001.Spec : Prop :=
  ∀ n, (P15015770721720114001.a n : ℤ) = A198773 (n + 1)

end A198773

/-!
# A198775: Numbers having exactly four representations by the quadratic form x^2+xy+y^2 with 0<=x<=y.

The programs for A198775, there is no canonical definition to state claims against.
-/

/-! ## A198775.P8061230826222022676

`A326421(A029965(n+1)+52)`
-/

namespace A198775.P8061230826222022676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326421 (A029965 (n + 1) + 52).toNat

end

end A198775.P8061230826222022676

/-!
# A198777: Primes from merging of 3 successive digits in decimal expansion of Euler-Mascheroni constant.

The programs for A198777, there is no canonical definition to state claims against.
-/

/-! ## A198777.P10242736167620712646

`A104937(n+1)%A104973(n+1)`
-/

namespace A198777.P10242736167620712646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A104937 (n + 1)) (A104973 (n + 1))

end

end A198777.P10242736167620712646

/-! ## A198777.P17278361862049091934

`A104937(n+1)+A083929(A273712(n))`
-/

namespace A198777.P17278361862049091934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104937 (n + 1) + A083929 (A273712 n).toNat

end

end A198777.P17278361862049091934

/-! ## A198777.P7363139812633188787

`A104937(n+1)%A104948(A104978(n))`
-/

namespace A198777.P7363139812633188787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A104937 (n + 1)) (A104948 (A104978 n).toNat)

end

end A198777.P7363139812633188787

/-! ## A198777.P6449603339579834810

`A104937(n+1)+A010054(A108914(n+1))`
-/

namespace A198777.P6449603339579834810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104937 (n + 1) + A010054 (A108914 (n + 1)).toNat

end

end A198777.P6449603339579834810

/-! ## A198777.P1591351555843883006

`A336835(A104892(n+1))+A104937(n+1)`
-/

namespace A198777.P1591351555843883006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336835 (A104892 (n + 1)).toNat + A104937 (n + 1)

end

end A198777.P1591351555843883006

/-!
# A198779: Primes from merging of 5 successive digits in decimal expansion of Euler-Mascheroni constant.

The programs for A198779, there is no canonical definition to state claims against.
-/

/-! ## A198779.P8090524813949758231

`A104939(A004902(n+2))`
-/

namespace A198779.P8090524813949758231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104939 (A004902 (n + 2)).toNat

end

end A198779.P8090524813949758231

/-! ## A198779.P9037996495569386896

`A104939(A004913(n+2))`
-/

namespace A198779.P9037996495569386896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104939 (A004913 (n + 2)).toNat

end

end A198779.P9037996495569386896

/-! ## A198779.P10192559680780190387

`A104939(A032551(n+2))`
-/

namespace A198779.P10192559680780190387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104939 (A032551 (n + 2)).toNat

end

end A198779.P10192559680780190387

/-!
# A198780: Primes from merging of 6 successive digits in decimal expansion of Euler-Mascheroni constant.

The programs for A198780, there is no canonical definition to state claims against.
-/

/-! ## A198780.P10737855205378859151

`A104940(A077168(n))`
-/

namespace A198780.P10737855205378859151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104940 (A077168 n).toNat

end

end A198780.P10737855205378859151

/-! ## A198780.P12058355184329227814

`A124760((2^n+(-2)^n)/2)+A104940(n+1)`
-/

namespace A198780.P12058355184329227814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124760 (SequenceMachineLib.roundAway (((2 ^ n : ℤ) + (-2) ^ n : ℚ) / 2)).toNat + A104940 (n + 1)

end

end A198780.P12058355184329227814

/-! ## A198780.P8177145778227821697

`A129760(A000079(n))+A104940(n+1)`
-/

namespace A198780.P8177145778227821697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129760 (A000079 n).toNat + A104940 (n + 1)

end

end A198780.P8177145778227821697

/-! ## A198780.P14460946878432881264

`A125005(A185314(n))+A104940(n+1)`
-/

namespace A198780.P14460946878432881264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125005 (A185314 n).toNat + A104940 (n + 1)

end

end A198780.P14460946878432881264

/-! ## A198780.P12421298061827548873

`A001222(A033844(n))*A104940(n+1)`
-/

namespace A198780.P12421298061827548873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A033844 n).toNat * A104940 (n + 1)

end

end A198780.P12421298061827548873

/-!
# A198781: Primes from merging of 7 successive digits in decimal expansion of Euler-Mascheroni constant.

The programs for A198781, there is no canonical definition to state claims against.
-/

/-! ## A198781.P15180865783870137361

`A104941(n+1)*A258280(A078495(n))`
-/

namespace A198781.P15180865783870137361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104941 (n + 1) * A258280 (A078495 n).toNat

end

end A198781.P15180865783870137361

/-! ## A198781.P12197792997862627344

`A104941(n+1)*A254434(A290686(n))`
-/

namespace A198781.P12197792997862627344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104941 (n + 1) * A254434 (A290686 n).toNat

end

end A198781.P12197792997862627344

/-! ## A198781.P14955686477335389129

`A104941(n+1)*A262809(A262809(n)²)`
-/

namespace A198781.P14955686477335389129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104941 (n + 1) * A262809 (A262809 n ^ 2).toNat

end

end A198781.P14955686477335389129

/-! ## A198781.P13539247657370301434

`A078899(A217501(n+1))*A104941(n+1)`
-/

namespace A198781.P13539247657370301434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078899 (A217501 (n + 1)).toNat * A104941 (n + 1)

end

end A198781.P13539247657370301434

/-! ## A198781.P5037515426292119882

`A104941(A187829(n+1))`
-/

namespace A198781.P5037515426292119882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104941 (A187829 (n + 1)).toNat

end

end A198781.P5037515426292119882

/-!
# A198782: Primes from merging of 8 successive digits in decimal expansion of Euler-Mascheroni constant.

The programs for A198782, there is no canonical definition to state claims against.
-/

/-! ## A198782.P8622751197622198862

`A104942(A077168(n))`
-/

namespace A198782.P8622751197622198862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104942 (A077168 n).toNat

end

end A198782.P8622751197622198862

/-! ## A198782.P11524201459098803232

`A104942(∑[(A308977(n)+1)^(n-1)])`
-/

namespace A198782.P11524201459098803232
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A308977 n + 1 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104942 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A198782.P11524201459098803232

/-! ## A198782.P17612663764682441964

`A104942(n+1)+A000007(A000079(n))`
-/

namespace A198782.P17612663764682441964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104942 (n + 1) + A000007 (A000079 n).toNat

end

end A198782.P17612663764682441964

/-! ## A198782.P5500567068513264942

`A104942(n+1)+A001877(A095805(n))`
-/

namespace A198782.P5500567068513264942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104942 (n + 1) + A001877 (A095805 n).toNat

end

end A198782.P5500567068513264942

/-! ## A198782.P5882750234118306643

`A104942(n+1)+A083929(A126291(n))`
-/

namespace A198782.P5882750234118306643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104942 (n + 1) + A083929 (A126291 n).toNat

end

end A198782.P5882750234118306643

/-!
# A198783: Primes from merging of 9 successive digits in decimal expansion of Euler-Mascheroni constant.

The programs for A198783, there is no canonical definition to state claims against.
-/

/-! ## A198783.P12691642295712689479

`A104943(A330929(n+1))`
-/

namespace A198783.P12691642295712689479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104943 (A330929 (n + 1)).toNat

end

end A198783.P12691642295712689479

/-!
# A198784: Primes from merging of 10 successive digits in decimal expansion of Euler-Mascheroni constant (in the order of appearance).

The programs for A198784, there is no canonical definition to state claims against.
-/

/-! ## A198784.P2473366107786730381

`A104944(A122203(∑[n+1]))`
-/

namespace A198784.P2473366107786730381
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104944 (A122203 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A198784.P2473366107786730381

/-! ## A198784.P933993860351554292

`A104944(A122204(∑[n+1]))`
-/

namespace A198784.P933993860351554292
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104944 (A122204 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A198784.P933993860351554292

/-! ## A198784.P10525837652602000413

`A104944(A004907(n+1)+1)`
-/

namespace A198784.P10525837652602000413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104944 (A004907 (n + 1) + 1).toNat

end

end A198784.P10525837652602000413

/-! ## A198784.P15555846971582450217

`A104944(A004918(n+1)+1)`
-/

namespace A198784.P15555846971582450217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104944 (A004918 (n + 1) + 1).toNat

end

end A198784.P15555846971582450217

/-! ## A198784.P3475966288907514861

`A104944(n+1)+A000007(A055796(n))`
-/

namespace A198784.P3475966288907514861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104944 (n + 1) + A000007 (A055796 n).toNat

end

end A198784.P3475966288907514861

/-!
# A198785: G.f. satisfies: A(x) = exp( Sum_{n>=1} A(x^n) / A(-x^n) * x^n/n ).

The programs for A198785, there is no canonical definition to state claims against.
-/

/-! ## A198785.P2166328274406280422

`A172471(A115331(n)-A266503(n+1))`
-/

namespace A198785.P2166328274406280422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (A115331 n - A266503 (n + 1)).toNat

end

end A198785.P2166328274406280422

/-! ## A198785.P18309560568543506576

`A231149(A051927(n)+1)-A101448(A208355(n))`
-/

namespace A198785.P18309560568543506576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231149 (A051927 n + 1).toNat - A101448 (A208355 n).toNat

end

end A198785.P18309560568543506576

/-!
# A198786: G.f. satisfies: A(x) = 1 + 2*x*sqrt(A(x)/A(-x)).

The programs for A198786, there is no canonical definition to state claims against.
-/

/-! ## A198786.P12382458784656437946

`ceil(A135863(n)/2)`
-/

namespace A198786.P12382458784656437946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A135863 n : ℚ) / 2⌉

end

end A198786.P12382458784656437946

/-! ## A198786.P4159792175590109722

`A135863(n)/A036453(n+1)`
-/

namespace A198786.P4159792175590109722
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135863 n : ℚ) / (A036453 (n + 1) : ℚ)

end

end A198786.P4159792175590109722

/-! ## A198786.P17382940019084589055

`A135863(n)/A121358(n+1)`
-/

namespace A198786.P17382940019084589055
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135863 n : ℚ) / (A121358 (n + 1) : ℚ)

end

end A198786.P17382940019084589055

/-! ## A198786.P16297388408789141500

`A135863(n)/A140685(n+1)`
-/

namespace A198786.P16297388408789141500
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135863 n : ℚ) / (A140685 (n + 1) : ℚ)

end

end A198786.P16297388408789141500

/-! ## A198786.P10314820902323364293

`A135863(n)/gcd(2, A008574(n))`
-/

namespace A198786.P10314820902323364293
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135863 n : ℚ) / (Int.gcd 2 (A008574 n) : ℚ)

end

end A198786.P10314820902323364293

/-! ## A198786.P13408581524270187101

`A135863(n)/A000032(C(2, n+2))`
-/

namespace A198786.P13408581524270187101
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135863 n : ℚ) / (A000032 (Nat.choose 2 (n + 2)) : ℚ)

end

end A198786.P13408581524270187101

/-! ## A198786.P16285940635055053820

`A135863(n)/A020639(A000010(n+2))`
-/

namespace A198786.P16285940635055053820
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135863 n : ℚ) / (A020639 (A000010 (n + 2)).toNat : ℚ)

end

end A198786.P16285940635055053820

/-! ## A198786.P6040510537958060048

`A135863(n)/A020639(A000040(n+1)-1)`
-/

namespace A198786.P6040510537958060048
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135863 n : ℚ) / (A020639 (A000040 (n + 1) - 1).toNat : ℚ)

end

end A198786.P6040510537958060048

/-! ## A198786.P4966875724275358224

`A135863(n)/A081668(n)`
-/

namespace A198786.P4966875724275358224
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135863 n : ℚ) / (A081668 n : ℚ)

end

end A198786.P4966875724275358224

/-!
# A198788: Array T(k,n) read by descending antidiagonals: Last survivor positions in Josephus problem for n numbers and a count of k, n >= 1, k >= 1.

The programs for A198788, there is no canonical definition to state claims against.
-/

/-! ## A198788.P13853488857962679219

`A198789(A038722(n+1))`
-/

namespace A198788.P13853488857962679219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198789 (A038722 (n + 1)).toNat

end

end A198788.P13853488857962679219

/-! ## A198788.P1360702839611596520

`A198789(A061579(n)+1)`
-/

namespace A198788.P1360702839611596520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198789 (A061579 n + 1).toNat

end

end A198788.P1360702839611596520

/-! ## A198788.P15489525602314734575

`A198789(A093995(n+1)-n)`
-/

namespace A198788.P15489525602314734575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198789 (A093995 (n + 1) - (n : ℤ)).toNat

end

end A198788.P15489525602314734575

/-! ## A198788.P3049679943575681027

`A198789(A265129(n+1)-(n+1))`
-/

namespace A198788.P3049679943575681027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198789 (A265129 (n + 1) - (n + 1 : ℤ)).toNat

end

end A198788.P3049679943575681027

/-! ## A198788.P12511498514851049326

`A198789(Δ[A004247(n)]+2+n)`
-/

namespace A198788.P12511498514851049326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004247 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198789 (f1 (n + 1) - f1 n + 2 + (n : ℤ)).toNat

end

end A198788.P12511498514851049326

/-!
# A198789: Array T(n,k) read by antidiagonals: Last survivor positions in Josephus problem for n numbers and a count of k, n >= 1, k >= 1.

The programs for A198789, there is no canonical definition to state claims against.
-/

/-! ## A198789.P1470840454696621161

`A198788(∑[char[∑[n]]]²-n)`
-/

namespace A198789.P1470840454696621161
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198788 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A198789.P1470840454696621161

/-! ## A198789.P13913738595078732751

`A198788(A038722(n+1))%A027865(n)`
-/

namespace A198789.P13913738595078732751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A198788 (A038722 (n + 1)).toNat) (A027865 n)

end

end A198789.P13913738595078732751

/-! ## A198789.P9676587085267414842

`A348043((n+1)^A319367(n+1))`
-/

namespace A198789.P9676587085267414842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348043 (SequenceMachineLib.roundAway ((n + 1 : ℚ) ^ (A319367 (n + 1) : ℤ))).toNat

end

end A198789.P9676587085267414842

/-! ## A198789.P14489747439887248472

`A348043(C(n+1, A319367(n+1)))`
-/

namespace A198789.P14489747439887248472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348043 (Nat.choose (n + 1) (A319367 (n + 1)).toNat)

end

end A198789.P14489747439887248472

/-! ## A198789.P10645876910156014660

`A194673(A346415(n))+A080099(n)`
-/

namespace A198789.P10645876910156014660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194673 (A346415 n).toNat + A080099 n

end

end A198789.P10645876910156014660

/-!
# A198790: Irregular table T(n,k) read by rows: Last survivor positions in Josephus problem for n numbers and a count of k, n >= 1, lcm(1, 2, 3, ..., n) >= k >= 1.

The programs for A198790, there is no canonical definition to state claims against.
-/

/-! ## A198790.P1375207960558898936

`gcd(A320816(2*n+5), A333659(A236377(2*n)))`
-/

namespace A198790.P1375207960558898936
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A320816 (2 * n + 5)) (A333659 (A236377 (2 * n)).toNat)

end

end A198790.P1375207960558898936

/-! ## A198790.P15920532503417621041

`A007862(A331934(n+1)+A138136(n+1))`
-/

namespace A198790.P15920532503417621041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007862 (A331934 (n + 1) + A138136 (n + 1)).toNat

end

end A198790.P15920532503417621041

/-!
# A198792: Triangle T(n,k), read by rows, given by (0,1,1,0,0,0,0,0,0,0,...) DELTA (1,0,0,1,0,0,0,0,0,0,0,...) where DELTA is the operator defined in A084938.

The programs for A198792, the canonical program `A198792.P8210630844402988045` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A198792 has offset 0).

The definition of A198792 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A198792.P8210630844402988045

`Δ[A089633(n)]*A097805(n)`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A198792

/-- `Δ[A089633(n)]*A097805(n)` -/
def P8210630844402988045.Spec : Prop :=
  ∀ n, P8210630844402988045.a n = A198792 n

theorem P8210630844402988045.correct : P8210630844402988045.Spec := by
  intro n
  simp only [A198792]

end A198792

/-! ## A198792.P17257836859811893839

`A097805(n)*A155038(n+1)`
-/

namespace A198792.P17257836859811893839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 n * A155038 (n + 1)

end

end A198792.P17257836859811893839

namespace A198792

/-- `A097805(n)*A155038(n+1)` -/
def P17257836859811893839.Spec : Prop :=
  ∀ n, P17257836859811893839.a n = A198792 n

end A198792

/-! ## A198792.P7252770199089824313

`A380114(n)/A130453(n+1)`
-/

namespace A198792.P7252770199089824313
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A380114 n : ℚ) / (A130453 (n + 1) : ℚ)

end

end A198792.P7252770199089824313

namespace A198792

/-- `A380114(n)/A130453(n+1)` -/
def P7252770199089824313.Spec : Prop :=
  ∀ n, P7252770199089824313.a n = (A198792 n : ℚ)

end A198792

/-! ## A198792.P1211825355148954533

`A011782(A025581(n))*A097805(n)`
-/

namespace A198792.P1211825355148954533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A025581 n).toNat * A097805 n

end

end A198792.P1211825355148954533

namespace A198792

/-- `A011782(A025581(n))*A097805(n)` -/
def P1211825355148954533.Spec : Prop :=
  ∀ n, P1211825355148954533.a n = A198792 n

end A198792

/-! ## A198792.P2472998464495548126

`A057728(n+2)*A097805(n)`
-/

namespace A198792.P2472998464495548126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 2) * A097805 n

end

end A198792.P2472998464495548126

namespace A198792

/-- `A057728(n+2)*A097805(n)` -/
def P2472998464495548126.Spec : Prop :=
  ∀ n, P2472998464495548126.a n = A198792 n

end A198792

/-! ## A198792.P7898507981615459123

`Δ[A023758(n+2)]*A097805(n)`
-/

namespace A198792.P7898507981615459123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023758 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A097805 n

end

end A198792.P7898507981615459123

namespace A198792

/-- `Δ[A023758(n+2)]*A097805(n)` -/
def P7898507981615459123.Spec : Prop :=
  ∀ n, P7898507981615459123.a n = A198792 n

end A198792

/-! ## A198792.P18125529999535481335

`A198793(A061579(n))`
-/

namespace A198792.P18125529999535481335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198793 (A061579 n).toNat

end

end A198792.P18125529999535481335

namespace A198792

/-- `A198793(A061579(n))` -/
def P18125529999535481335.Spec : Prop :=
  ∀ n, P18125529999535481335.a n = A198792 n

end A198792

/-! ## A198792.P3342834785011793828

`A198793(A114327(n)+n)`
-/

namespace A198792.P3342834785011793828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198793 (A114327 n + (n : ℤ)).toNat

end

end A198792.P3342834785011793828

namespace A198792

/-- `A198793(A114327(n)+n)` -/
def P3342834785011793828.Spec : Prop :=
  ∀ n, P3342834785011793828.a n = A198792 n

end A198792

/-! ## A198792.P9910504833759265635

`A198793(∑[A198954(n)-1])`
-/

namespace A198792.P9910504833759265635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198954 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198793 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A198792.P9910504833759265635

namespace A198792

/-- `A198793(∑[A198954(n)-1])` -/
def P9910504833759265635.Spec : Prop :=
  ∀ n, P9910504833759265635.a n = A198792 n

end A198792

/-! ## A198792.P16862558841039141125

`A198793(A038722(n+1)-1)`
-/

namespace A198792.P16862558841039141125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198793 (A038722 (n + 1) - 1).toNat

end

end A198792.P16862558841039141125

namespace A198792

/-- `A198793(A038722(n+1)-1)` -/
def P16862558841039141125.Spec : Prop :=
  ∀ n, P16862558841039141125.a n = A198792 n

end A198792

/-! ## A198792.P8229063714265765200

`A198793(A002024(n+1)²-(n+1))`
-/

namespace A198792.P8229063714265765200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198793 (A002024 (n + 1) ^ 2 - (n + 1 : ℤ)).toNat

end

end A198792.P8229063714265765200

namespace A198792

/-- `A198793(A002024(n+1)²-(n+1))` -/
def P8229063714265765200.Spec : Prop :=
  ∀ n, P8229063714265765200.a n = A198792 n

end A198792

/-! ## A198792.P13543894279404493638

`A198793(A038722(n+2))`
-/

namespace A198792.P13543894279404493638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198793 (A038722 (n + 2)).toNat

end

end A198792.P13543894279404493638

namespace A198792

/-- `A198793(A038722(n+2))` -/
def P13543894279404493638.Spec : Prop :=
  ∀ n, P13543894279404493638.a n = A198792 n

end A198792

/-! ## A198792.P16484163541590223798

`A000010(A130321(n))*A097805(n)`
-/

namespace A198792.P16484163541590223798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A130321 n).toNat * A097805 n

end

end A198792.P16484163541590223798

namespace A198792

/-- `A000010(A130321(n))*A097805(n)` -/
def P16484163541590223798.Spec : Prop :=
  ∀ n, P16484163541590223798.a n = A198792 n

end A198792

/-!
# A198793: Triangle T(n,k), read by rows, given by (1,0,0,1,0,0,0,0,0,0,0,...) DELTA (0,1,1,0,0,0,0,0,0,0,0,...) where DELTA is the operator defined in A084938.

The programs for A198793, the canonical program `A198793.P9157725411081335184` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A198793 has offset 0).

The definition of A198793 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A198793.P9157725411081335184

`A071919(n)*A232089(n)`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A198793

/-- `A071919(n)*A232089(n)` -/
def P9157725411081335184.Spec : Prop :=
  ∀ n, P9157725411081335184.a n = A198793 n

theorem P9157725411081335184.correct : P9157725411081335184.Spec := by
  intro n
  simp only [A198793]

end A198793

/-! ## A198793.P5941130386023056071

`A011782(A002262(n))*A071919(n)`
-/

namespace A198793.P5941130386023056071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A002262 n).toNat * A071919 n

end

end A198793.P5941130386023056071

namespace A198793

/-- `A011782(A002262(n))*A071919(n)` -/
def P5941130386023056071.Spec : Prop :=
  ∀ n, P5941130386023056071.a n = A198793 n

end A198793

/-! ## A198793.P12646669860957482269

`A011782(A144328(n+1))*A071919(n)`
-/

namespace A198793.P12646669860957482269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A144328 (n + 1)).toNat * A071919 n

end

end A198793.P12646669860957482269

namespace A198793

/-- `A011782(A144328(n+1))*A071919(n)` -/
def P12646669860957482269.Spec : Prop :=
  ∀ n, P12646669860957482269.a n = A198793 n

end A198793

/-! ## A198793.P6061093488344471694

`A198792(A061579(n))`
-/

namespace A198793.P6061093488344471694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198792 (A061579 n).toNat

end

end A198793.P6061093488344471694

namespace A198793

/-- `A198792(A061579(n))` -/
def P6061093488344471694.Spec : Prop :=
  ∀ n, P6061093488344471694.a n = A198793 n

end A198793

/-! ## A198793.P10180551208009113050

`A198792(A114327(n)+n)`
-/

namespace A198793.P10180551208009113050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198792 (A114327 n + (n : ℤ)).toNat

end

end A198793.P10180551208009113050

namespace A198793

/-- `A198792(A114327(n)+n)` -/
def P10180551208009113050.Spec : Prop :=
  ∀ n, P10180551208009113050.a n = A198793 n

end A198793

/-! ## A198793.P15917829956652785313

`A198792(∑[A198954(n)-1])`
-/

namespace A198793.P15917829956652785313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198954 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198792 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A198793.P15917829956652785313

namespace A198793

/-- `A198792(∑[A198954(n)-1])` -/
def P15917829956652785313.Spec : Prop :=
  ∀ n, P15917829956652785313.a n = A198793 n

end A198793

/-! ## A198793.P1989228469462832758

`A198792(A038722(n+1)-1)`
-/

namespace A198793.P1989228469462832758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198792 (A038722 (n + 1) - 1).toNat

end

end A198793.P1989228469462832758

namespace A198793

/-- `A198792(A038722(n+1)-1)` -/
def P1989228469462832758.Spec : Prop :=
  ∀ n, P1989228469462832758.a n = A198793 n

end A198793

/-! ## A198793.P5966709500031372633

`A198792(A002024(n+1)²-(n+1))`
-/

namespace A198793.P5966709500031372633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198792 (A002024 (n + 1) ^ 2 - (n + 1 : ℤ)).toNat

end

end A198793.P5966709500031372633

namespace A198793

/-- `A198792(A002024(n+1)²-(n+1))` -/
def P5966709500031372633.Spec : Prop :=
  ∀ n, P5966709500031372633.a n = A198793 n

end A198793

/-! ## A198793.P8608660473500859198

`A198792((n²+n)%(A007401(n+1)+1))`
-/

namespace A198793.P8608660473500859198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198792 (Int.tmod (n ^ 2 + n : ℤ) (A007401 (n + 1) + 1)).toNat

end

end A198793.P8608660473500859198

namespace A198793

/-- `A198792((n²+n)%(A007401(n+1)+1))` -/
def P8608660473500859198.Spec : Prop :=
  ∀ n, P8608660473500859198.a n = A198793 n

end A198793

/-! ## A198793.P17262567895448420733

`A000010(A059268(n))*A071919(n)`
-/

namespace A198793.P17262567895448420733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A059268 n).toNat * A071919 n

end

end A198793.P17262567895448420733

namespace A198793

/-- `A000010(A059268(n))*A071919(n)` -/
def P17262567895448420733.Spec : Prop :=
  ∀ n, P17262567895448420733.a n = A198793 n

end A198793

/-! ## A198793.P18276442112045078473

`A000010(2^val(A036561(n), 3))*A071919(n)`
-/

namespace A198793.P18276442112045078473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (2 ^ SequenceMachineLib.valuation (A036561 n).toNat 3) * A071919 n

end

end A198793.P18276442112045078473

namespace A198793

/-- `A000010(2^val(A036561(n), 3))*A071919(n)` -/
def P18276442112045078473.Spec : Prop :=
  ∀ n, P18276442112045078473.a n = A198793 n

end A198793

/-!
# A198794: a(n) = 5*6^n - 1.

The programs for A198794, the canonical program `A198794.P5923066282258741531` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A198794 has offset 0).

The definition of A198794 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5*6^n-1` (program `A198794.P5923066282258741531`, by `A198794.P5923066282258741531.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A198794.P5923066282258741531

`5*6^n-1`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A198794

/-- `5*6^n-1` -/
def P5923066282258741531.Spec : Prop :=
  ∀ n, P5923066282258741531.a n = A198794 n

theorem P5923066282258741531.correct : P5923066282258741531.Spec := by
  intro n
  simp only [A198794]

end A198794

/-! ## A198794.P8179204182963119780

`ogf((4+x)/(1-7x+6x^2))`
-/

namespace A198794.P8179204182963119780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, 1] [1, -7, 6] n

end

end A198794.P8179204182963119780

namespace A198794

/-- `ogf((4+x)/(1-7x+6x^2))` -/
def P8179204182963119780.Spec : Prop :=
  ∀ n, P8179204182963119780.a n = A198794 n

end A198794

/-! ## A198794.P7208964828200078371

`∑[6*a(n-1)]` with `a(0)=4, a(1)=25`
-/

namespace A198794.P7208964828200078371
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4, 25] fun n f1 =>
  6 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A198794.P7208964828200078371

namespace A198794

/-- `∑[6*a(n-1)]` -/
def P7208964828200078371.Spec : Prop :=
  ∀ n, (P7208964828200078371.a n : ℤ) = A198794 n

end A198794

/-! ## A198794.P13235451950370329808

`Δ[xor(n, -1)+6^n]`
-/

namespace A198794.P13235451950370329808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-1) + (6 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A198794.P13235451950370329808

namespace A198794

/-- `Δ[xor(n, -1)+6^n]` -/
def P13235451950370329808.Spec : Prop :=
  ∀ n, P13235451950370329808.a n = A198794 n

end A198794

/-! ## A198794.P16186872511227389716

`xor(∑[2^n], Δ[6^n])`
-/

namespace A198794.P16186872511227389716
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

end

end A198794.P16186872511227389716

namespace A198794

/-- `xor(∑[2^n], Δ[6^n])` -/
def P16186872511227389716.Spec : Prop :=
  ∀ n, P16186872511227389716.a n = A198794 n

end A198794

/-! ## A198794.P16178669801917870961

`abs(6*a(n-1)+5)` with `a(0)=4`
-/

namespace A198794.P16178669801917870961
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4] fun n a =>
  6 * a (n - 1) + 5

end

end A198794.P16178669801917870961

namespace A198794

/-- `abs(6*a(n-1)+5)` -/
def P16178669801917870961.Spec : Prop :=
  ∀ n, (P16178669801917870961.a n : ℤ) = A198794 n

theorem P16178669801917870961.correct : P16178669801917870961.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A198794, Nat.add_sub_cancel, A198794.P16178669801917870961.a, A198794.P5923066282258741531.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A198794, Nat.add_sub_cancel, A198794.P16178669801917870961.a, A198794.P5923066282258741531.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A198794

/-! ## A198794.P8678307810047063018

`6*(a(n-1)+5/6)` with `a(0)=4`
-/

namespace A198794.P8678307810047063018
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [4] fun n a =>
  6 * (a (n - 1) + (5 : ℚ) / 6)

end

end A198794.P8678307810047063018

namespace A198794

/-- `6*(a(n-1)+5/6)` -/
def P8678307810047063018.Spec : Prop :=
  ∀ n, P8678307810047063018.a n = (A198794 n : ℚ)

theorem P8678307810047063018.correct : P8678307810047063018.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A198794, Nat.add_sub_cancel, A198794.P8678307810047063018.a, A198794.P5923066282258741531.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A198794, Nat.add_sub_cancel, A198794.P8678307810047063018.a, A198794.P5923066282258741531.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A198794

/-! ## A198794.P2545260814079734721

`abs(Δ[6*a(n-1)]-1)` with `a(0)=1`
-/

namespace A198794.P2545260814079734721
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  6 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(f1 (n + 1) : ℤ) - (f1 n : ℤ) - 1|

end

end A198794.P2545260814079734721

namespace A198794

/-- `abs(Δ[6*a(n-1)]-1)` -/
def P2545260814079734721.Spec : Prop :=
  ∀ n, P2545260814079734721.a n = A198794 n

end A198794

/-! ## A198794.P9023829399062069628

`or(1, 2*(3*a(n-1)+2))` with `a(0)=4`
-/

namespace A198794.P9023829399062069628
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4] fun n a =>
  Nat.lor 1 (2 * (3 * a (n - 1) + 2))

end

end A198794.P9023829399062069628

namespace A198794

/-- `or(1, 2*(3*a(n-1)+2))` -/
def P9023829399062069628.Spec : Prop :=
  ∀ n, (P9023829399062069628.a n : ℤ) = A198794 n

end A198794

/-! ## A198794.P4052619330408747886

`floor(a(n-1)+5*(a(n-1)+1))` with `a(0)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A198794.P4052619330408747886
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4] fun n a =>
  a (n - 1) + 5 * (a (n - 1) + 1)

end

end A198794.P4052619330408747886

namespace A198794

/-- `floor(a(n-1)+5*(a(n-1)+1))` -/
def P4052619330408747886.Spec : Prop :=
  ∀ n, (P4052619330408747886.a n : ℤ) = A198794 n

theorem P4052619330408747886.correct : P4052619330408747886.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A198794, Nat.add_sub_cancel, A198794.P4052619330408747886.a, A198794.P5923066282258741531.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A198794, Nat.add_sub_cancel, A198794.P4052619330408747886.a, A198794.P5923066282258741531.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A198794

/-! ## A198794.P12792389293519649735

`Δ[A024063(n)]`
-/

namespace A198794.P12792389293519649735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024063 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A198794.P12792389293519649735

namespace A198794

/-- `Δ[A024063(n)]` -/
def P12792389293519649735.Spec : Prop :=
  ∀ n, P12792389293519649735.a n = A198794 n

end A198794

/-! ## A198794.P14467789082551907975

`∑[A055846(n+1)]`
-/

namespace A198794.P14467789082551907975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055846 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A198794.P14467789082551907975

namespace A198794

/-- `∑[A055846(n+1)]` -/
def P14467789082551907975.Spec : Prop :=
  ∀ n, P14467789082551907975.a n = A198794 n

end A198794

/-! ## A198794.P2438238777791689949

`Δ[A000400(n)-n]`
-/

namespace A198794.P2438238777791689949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000400 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A198794.P2438238777791689949

namespace A198794

/-- `Δ[A000400(n)-n]` -/
def P2438238777791689949.Spec : Prop :=
  ∀ n, P2438238777791689949.a n = A198794 n

end A198794

/-! ## A198794.P15959416730108368384

`Δ[A024062(n)-n]`
-/

namespace A198794.P15959416730108368384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024062 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A198794.P15959416730108368384

namespace A198794

/-- `Δ[A024062(n)-n]` -/
def P15959416730108368384.Spec : Prop :=
  ∀ n, P15959416730108368384.a n = A198794 n

end A198794

/-! ## A198794.P7575994719521185161

`∑[abs(Δ[A052934(n)])]`
-/

namespace A198794.P7575994719521185161
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052934 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A198794.P7575994719521185161

namespace A198794

/-- `∑[abs(Δ[A052934(n)])]` -/
def P7575994719521185161.Spec : Prop :=
  ∀ n, P7575994719521185161.a n = A198794 n

end A198794

/-! ## A198794.P2930638716651011309

`(A198847(n)-1)/2`
-/

namespace A198794.P2930638716651011309
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A198847 n - 1 : ℚ) / 2

end

end A198794.P2930638716651011309

namespace A198794

/-- `(A198847(n)-1)/2` -/
def P2930638716651011309.Spec : Prop :=
  ∀ n, P2930638716651011309.a n = (A198794 n : ℚ)

end A198794

/-! ## A198794.P7702113133938464671

`A181288(5*(n+1))`
-/

namespace A198794.P7702113133938464671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181288 (5 * (n + 1))

end

end A198794.P7702113133938464671

namespace A198794

/-- `A181288(5*(n+1))` -/
def P7702113133938464671.Spec : Prop :=
  ∀ n, P7702113133938464671.a n = A198794 n

end A198794

/-! ## A198794.P10741060791538516514

`(A199414(n)-3)/2`
-/

namespace A198794.P10741060791538516514
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A199414 n - 3 : ℚ) / 2

end

end A198794.P10741060791538516514

namespace A198794

/-- `(A199414(n)-3)/2` -/
def P10741060791538516514.Spec : Prop :=
  ∀ n, P10741060791538516514.a n = (A198794 n : ℚ)

end A198794

/-! ## A198794.P14800269680416060573

`Δ[A026549(2*n)+n-2*n]`
-/

namespace A198794.P14800269680416060573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026549 (2 * n) + ((n : ℤ) - (2 * n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A198794.P14800269680416060573

namespace A198794

/-- `Δ[A026549(2*n)+n-2*n]` -/
def P14800269680416060573.Spec : Prop :=
  ∀ n, P14800269680416060573.a n = A198794 n

end A198794

/-!
# A198795: a(n) = 7*6^n-1.

The programs for A198795, the canonical program `A198795.P12029305449261743176` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A198795 has offset 0).

The definition of A198795 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `7*6^n-1` (program `A198795.P12029305449261743176`, by `A198795.P12029305449261743176.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A198795.P12029305449261743176

`7*6^n-1`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A198795

/-- `7*6^n-1` -/
def P12029305449261743176.Spec : Prop :=
  ∀ n, P12029305449261743176.a n = A198795 n

theorem P12029305449261743176.correct : P12029305449261743176.Spec := by
  intro n
  simp only [A198795]

end A198795

/-! ## A198795.P12151146651286625554

`ogf((6-x)/(1-7x+6x^2))`
-/

namespace A198795.P12151146651286625554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [6, -1] [1, -7, 6] n

end

end A198795.P12151146651286625554

namespace A198795

/-- `ogf((6-x)/(1-7x+6x^2))` -/
def P12151146651286625554.Spec : Prop :=
  ∀ n, P12151146651286625554.a n = A198795 n

end A198795

/-! ## A198795.P9250115688071022510

`∑[6*a(n-1)]` with `a(0)=6, a(1)=35`
-/

namespace A198795.P9250115688071022510
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [6, 35] fun n f1 =>
  6 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A198795.P9250115688071022510

namespace A198795

/-- `∑[6*a(n-1)]` -/
def P9250115688071022510.Spec : Prop :=
  ∀ n, (P9250115688071022510.a n : ℤ) = A198795 n

end A198795

/-! ## A198795.P5709035788464990588

`6*(a(n-1)+5/6)` with `a(0)=6`
-/

namespace A198795.P5709035788464990588
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [6] fun n a =>
  6 * (a (n - 1) + (5 : ℚ) / 6)

end

end A198795.P5709035788464990588

namespace A198795

/-- `6*(a(n-1)+5/6)` -/
def P5709035788464990588.Spec : Prop :=
  ∀ n, P5709035788464990588.a n = (A198795 n : ℚ)

theorem P5709035788464990588.correct : P5709035788464990588.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A198795, Nat.add_sub_cancel, A198795.P5709035788464990588.a, A198795.P12029305449261743176.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A198795, Nat.add_sub_cancel, A198795.P5709035788464990588.a, A198795.P12029305449261743176.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A198795

/-! ## A198795.P9823690430781041582

`or(1, 2*(3*a(n-1)+2))` with `a(0)=6`
-/

namespace A198795.P9823690430781041582
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [6] fun n a =>
  Nat.lor 1 (2 * (3 * a (n - 1) + 2))

end

end A198795.P9823690430781041582

namespace A198795

/-- `or(1, 2*(3*a(n-1)+2))` -/
def P9823690430781041582.Spec : Prop :=
  ∀ n, (P9823690430781041582.a n : ℤ) = A198795 n

end A198795

/-! ## A198795.P1829392693180488910

`xor(1, 2*(3*a(n-1)+2))` with `a(0)=6`
-/

namespace A198795.P1829392693180488910
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [6] fun n a =>
  Nat.xor 1 (2 * (3 * a (n - 1) + 2))

end

end A198795.P1829392693180488910

namespace A198795

/-- `xor(1, 2*(3*a(n-1)+2))` -/
def P1829392693180488910.Spec : Prop :=
  ∀ n, (P1829392693180488910.a n : ℤ) = A198795 n

end A198795

/-! ## A198795.P3840979148954249012

`floor(a(n-1)+5*(a(n-1)+1))` with `a(0)=6`

`floor` is left out, it is the identity on integers.
-/

namespace A198795.P3840979148954249012
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [6] fun n a =>
  a (n - 1) + 5 * (a (n - 1) + 1)

end

end A198795.P3840979148954249012

namespace A198795

/-- `floor(a(n-1)+5*(a(n-1)+1))` -/
def P3840979148954249012.Spec : Prop :=
  ∀ n, (P3840979148954249012.a n : ℤ) = A198795 n

theorem P3840979148954249012.correct : P3840979148954249012.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A198795, Nat.add_sub_cancel, A198795.P3840979148954249012.a, A198795.P12029305449261743176.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A198795, Nat.add_sub_cancel, A198795.P3840979148954249012.a, A198795.P12029305449261743176.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A198795

/-! ## A198795.P8707858693759024905

`floor(7*a(n-1)-(a(n-1)-5))` with `a(0)=6`

`floor` is left out, it is the identity on integers.
-/

namespace A198795.P8707858693759024905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6] fun n a =>
  7 * a (n - 1) - (a (n - 1) - 5)

end

end A198795.P8707858693759024905

namespace A198795

/-- `floor(7*a(n-1)-(a(n-1)-5))` -/
def P8707858693759024905.Spec : Prop :=
  ∀ n, P8707858693759024905.a n = A198795 n

theorem P8707858693759024905.correct : P8707858693759024905.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A198795, Nat.add_sub_cancel, A198795.P8707858693759024905.a, A198795.P12029305449261743176.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A198795, Nat.add_sub_cancel, A198795.P8707858693759024905.a, A198795.P12029305449261743176.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A198795

/-! ## A198795.P1391015910517747217

`Δ[A061801(n)-n]`
-/

namespace A198795.P1391015910517747217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061801 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A198795.P1391015910517747217

namespace A198795

/-- `Δ[A061801(n)-n]` -/
def P1391015910517747217.Spec : Prop :=
  ∀ n, P1391015910517747217.a n = A198795 n

end A198795

/-! ## A198795.P8797406539173486427

`∑[abs(Δ[A003949(n)])]`
-/

namespace A198795.P8797406539173486427
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003949 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A198795.P8797406539173486427

namespace A198795

/-- `∑[abs(Δ[A003949(n)])]` -/
def P8797406539173486427.Spec : Prop :=
  ∀ n, P8797406539173486427.a n = A198795 n

end A198795

/-! ## A198795.P374980415617337700

`Δ[1-n-A165758(n)]`
-/

namespace A198795.P374980415617337700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (n : ℤ) - A165758 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A198795.P374980415617337700

namespace A198795

/-- `Δ[1-n-A165758(n)]` -/
def P374980415617337700.Spec : Prop :=
  ∀ n, P374980415617337700.a n = A198795 n

end A198795

/-! ## A198795.P314383407478520721

`abs(1-7*(A024062(n)+1))`
-/

namespace A198795.P314383407478520721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - 7 * (A024062 n + 1)|

end

end A198795.P314383407478520721

namespace A198795

/-- `abs(1-7*(A024062(n)+1))` -/
def P314383407478520721.Spec : Prop :=
  ∀ n, P314383407478520721.a n = A198795 n

end A198795

/-! ## A198795.P3133593840147776019

`∑[A052934(n+1)+A052934(n)]`
-/

namespace A198795.P3133593840147776019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052934 (n + 1) + A052934 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A198795.P3133593840147776019

namespace A198795

/-- `∑[A052934(n+1)+A052934(n)]` -/
def P3133593840147776019.Spec : Prop :=
  ∀ n, P3133593840147776019.a n = A198795 n

end A198795

/-! ## A198795.P9383702291981430824

`∑[A084215(n+1)*A141495(n+1)]`
-/

namespace A198795.P9383702291981430824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084215 (n + 1) * A141495 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A198795.P9383702291981430824

namespace A198795

/-- `∑[A084215(n+1)*A141495(n+1)]` -/
def P9383702291981430824.Spec : Prop :=
  ∀ n, P9383702291981430824.a n = A198795 n

end A198795

/-!
# A198796: a(n) = 3*6^n-1.

The programs for A198796, the canonical program `A198796.P13875279915819405921` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A198796 has offset 0).

The definition of A198796 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*6^n-1` (program `A198796.P13875279915819405921`, by `A198796.P13875279915819405921.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A198796.P13875279915819405921

`3*6^n-1`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A198796

/-- `3*6^n-1` -/
def P13875279915819405921.Spec : Prop :=
  ∀ n, P13875279915819405921.a n = A198796 n

theorem P13875279915819405921.correct : P13875279915819405921.Spec := by
  intro n
  simp only [A198796]

end A198796

/-! ## A198796.P7106477466777870777

`ogf((2+3x)/(1-7x+6x^2))`
-/

namespace A198796.P7106477466777870777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 3] [1, -7, 6] n

end

end A198796.P7106477466777870777

namespace A198796

/-- `ogf((2+3x)/(1-7x+6x^2))` -/
def P7106477466777870777.Spec : Prop :=
  ∀ n, P7106477466777870777.a n = A198796 n

end A198796

/-! ## A198796.P15063595597203065165

`∑[6*a(n-1)]` with `a(0)=2, a(1)=15`
-/

namespace A198796.P15063595597203065165
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 15] fun n f1 =>
  6 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A198796.P15063595597203065165

namespace A198796

/-- `∑[6*a(n-1)]` -/
def P15063595597203065165.Spec : Prop :=
  ∀ n, (P15063595597203065165.a n : ℤ) = A198796 n

end A198796

/-! ## A198796.P3055087864461164656

`6*(a(n-1)+5/6)` with `a(0)=2`
-/

namespace A198796.P3055087864461164656
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2] fun n a =>
  6 * (a (n - 1) + (5 : ℚ) / 6)

end

end A198796.P3055087864461164656

namespace A198796

/-- `6*(a(n-1)+5/6)` -/
def P3055087864461164656.Spec : Prop :=
  ∀ n, P3055087864461164656.a n = (A198796 n : ℚ)

theorem P3055087864461164656.correct : P3055087864461164656.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A198796, Nat.add_sub_cancel, A198796.P3055087864461164656.a, A198796.P13875279915819405921.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A198796, Nat.add_sub_cancel, A198796.P3055087864461164656.a, A198796.P13875279915819405921.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A198796

/-! ## A198796.P6831397107593598329

`floor(a(n-1)+5*(a(n-1)+1))` with `a(0)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A198796.P6831397107593598329
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + 5 * (a (n - 1) + 1)

end

end A198796.P6831397107593598329

namespace A198796

/-- `floor(a(n-1)+5*(a(n-1)+1))` -/
def P6831397107593598329.Spec : Prop :=
  ∀ n, (P6831397107593598329.a n : ℤ) = A198796 n

theorem P6831397107593598329.correct : P6831397107593598329.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A198796, Nat.add_sub_cancel, A198796.P6831397107593598329.a, A198796.P13875279915819405921.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A198796, Nat.add_sub_cancel, A198796.P6831397107593598329.a, A198796.P13875279915819405921.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A198796

/-! ## A198796.P13503478768343203484

`floor(7*a(n-1)-(a(n-1)-5))` with `a(0)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A198796.P13503478768343203484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  7 * a (n - 1) - (a (n - 1) - 5)

end

end A198796.P13503478768343203484

namespace A198796

/-- `floor(7*a(n-1)-(a(n-1)-5))` -/
def P13503478768343203484.Spec : Prop :=
  ∀ n, P13503478768343203484.a n = A198796 n

theorem P13503478768343203484.correct : P13503478768343203484.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A198796, Nat.add_sub_cancel, A198796.P13503478768343203484.a, A198796.P13875279915819405921.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A198796, Nat.add_sub_cancel, A198796.P13503478768343203484.a, A198796.P13875279915819405921.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A198796

/-! ## A198796.P6798946634517360700

`(A198846(n)-2)/3`
-/

namespace A198796.P6798946634517360700
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A198846 n - 2 : ℚ) / 3

end

end A198796.P6798946634517360700

namespace A198796

/-- `(A198846(n)-2)/3` -/
def P6798946634517360700.Spec : Prop :=
  ∀ n, P6798946634517360700.a n = (A198796 n : ℚ)

end A198796

/-! ## A198796.P3929613246789479790

`(A199413(n)-4)/3`
-/

namespace A198796.P3929613246789479790
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A199413 n - 4 : ℚ) / 3

end

end A198796.P3929613246789479790

namespace A198796

/-- `(A199413(n)-4)/3` -/
def P3929613246789479790.Spec : Prop :=
  ∀ n, P3929613246789479790.a n = (A198796 n : ℚ)

end A198796

/-! ## A198796.P13905991178204151748

`floor(A024062(n+1)/2)`
-/

namespace A198796.P13905991178204151748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A024062 (n + 1) : ℚ) / 2⌋

end

end A198796.P13905991178204151748

namespace A198796

/-- `floor(A024062(n+1)/2)` -/
def P13905991178204151748.Spec : Prop :=
  ∀ n, P13905991178204151748.a n = A198796 n

end A198796

/-! ## A198796.P16573136079957816949

`(A164784(n+1)+3)/2`
-/

namespace A198796.P16573136079957816949
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A164784 (n + 1) + 3 : ℚ) / 2

end

end A198796.P16573136079957816949

namespace A198796

/-- `(A164784(n+1)+3)/2` -/
def P16573136079957816949.Spec : Prop :=
  ∀ n, P16573136079957816949.a n = (A198796 n : ℚ)

end A198796

/-! ## A198796.P4331502886598220684

`(A062394(n+1)-3)/2`
-/

namespace A198796.P4331502886598220684
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062394 (n + 1) - 3 : ℚ) / 2

end

end A198796.P4331502886598220684

namespace A198796

/-- `(A062394(n+1)-3)/2` -/
def P4331502886598220684.Spec : Prop :=
  ∀ n, P4331502886598220684.a n = (A198796 n : ℚ)

end A198796

/-! ## A198796.P1750447499166623634

`∑[floor(A052934(n+1)/2)]`
-/

namespace A198796.P1750447499166623634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A052934 (n + 1) : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A198796.P1750447499166623634

namespace A198796

/-- `∑[floor(A052934(n+1)/2)]` -/
def P1750447499166623634.Spec : Prop :=
  ∀ n, P1750447499166623634.a n = A198796 n

end A198796

/-! ## A198796.P11353472595628257146

`Δ[(∑[A024062(n)]-n)/2]`
-/

namespace A198796.P11353472595628257146
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024062 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ) : ℤ) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A198796.P11353472595628257146

namespace A198796

/-- `Δ[(∑[A024062(n)]-n)/2]` -/
def P11353472595628257146.Spec : Prop :=
  ∀ n, P11353472595628257146.a n = (A198796 n : ℚ)

end A198796

/-! ## A198796.P6533827413569989272

`floor(A164560(2*(n+1))/2)`
-/

namespace A198796.P6533827413569989272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A164560 (2 * (n + 1)) : ℚ) / 2⌋

end

end A198796.P6533827413569989272

namespace A198796

/-- `floor(A164560(2*(n+1))/2)` -/
def P6533827413569989272.Spec : Prop :=
  ∀ n, P6533827413569989272.a n = A198796 n

end A198796

/-! ## A198796.P4717346331519665286

`or(n, A026565(2*n+1)-1)`
-/

namespace A198796.P4717346331519665286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A026565 (2 * n + 1) - 1)

end

end A198796.P4717346331519665286

namespace A198796

/-- `or(n, A026565(2*n+1)-1)` -/
def P4717346331519665286.Spec : Prop :=
  ∀ n, P4717346331519665286.a n = A198796 n

end A198796

/-! ## A198796.P11503330546055586695

`∑[floor((10*A000400(n)+1)/4)]`
-/

namespace A198796.P11503330546055586695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(10 * A000400 n + 1 : ℚ) / 4⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A198796.P11503330546055586695

namespace A198796

/-- `∑[floor((10*A000400(n)+1)/4)]` -/
def P11503330546055586695.Spec : Prop :=
  ∀ n, P11503330546055586695.a n = A198796 n

end A198796

/-! ## A198796.P8189079912284750756

`A181288(A016885(n))`
-/

namespace A198796.P8189079912284750756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181288 (A016885 n).toNat

end

end A198796.P8189079912284750756

namespace A198796

/-- `A181288(A016885(n))` -/
def P8189079912284750756.Spec : Prop :=
  ∀ n, P8189079912284750756.a n = A198796 n

end A198796

/-!
# A198797: a(n) = 4*6^n-1.

The programs for A198797, the canonical program `A198797.P12914097745118207729` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A198797 has offset 0).

The definition of A198797 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*6^n-1` (program `A198797.P12914097745118207729`, by `A198797.P12914097745118207729.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A198797.P12914097745118207729

`4*6^n-1`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A198797

/-- `4*6^n-1` -/
def P12914097745118207729.Spec : Prop :=
  ∀ n, P12914097745118207729.a n = A198797 n

theorem P12914097745118207729.correct : P12914097745118207729.Spec := by
  intro n
  simp only [A198797]

end A198797

/-! ## A198797.P7991095667271684140

`ogf((3+2x)/(1-7x+6x^2))`
-/

namespace A198797.P7991095667271684140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 2] [1, -7, 6] n

end

end A198797.P7991095667271684140

namespace A198797

/-- `ogf((3+2x)/(1-7x+6x^2))` -/
def P7991095667271684140.Spec : Prop :=
  ∀ n, P7991095667271684140.a n = A198797 n

end A198797

/-! ## A198797.P15851326098599082224

`or(5, 6*a(n-1))` with `a(0)=3`
-/

namespace A198797.P15851326098599082224
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  Nat.lor 5 (6 * a (n - 1))

end

end A198797.P15851326098599082224

namespace A198797

/-- `or(5, 6*a(n-1))` -/
def P15851326098599082224.Spec : Prop :=
  ∀ n, (P15851326098599082224.a n : ℤ) = A198797 n

end A198797

/-! ## A198797.P7987311844485882716

`xor(5, 6*a(n-1))` with `a(0)=3`
-/

namespace A198797.P7987311844485882716
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  Nat.xor 5 (6 * a (n - 1))

end

end A198797.P7987311844485882716

namespace A198797

/-- `xor(5, 6*a(n-1))` -/
def P7987311844485882716.Spec : Prop :=
  ∀ n, (P7987311844485882716.a n : ℤ) = A198797 n

end A198797

/-! ## A198797.P11600215617960620871

`∑[6*a(n-1)]` with `a(0)=3, a(1)=20`
-/

namespace A198797.P11600215617960620871
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 20] fun n f1 =>
  6 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A198797.P11600215617960620871

namespace A198797

/-- `∑[6*a(n-1)]` -/
def P11600215617960620871.Spec : Prop :=
  ∀ n, (P11600215617960620871.a n : ℤ) = A198797 n

end A198797

/-! ## A198797.P10916023886857666903

`abs(6*a(n-1)+5)` with `a(0)=3`
-/

namespace A198797.P10916023886857666903
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  6 * a (n - 1) + 5

end

end A198797.P10916023886857666903

namespace A198797

/-- `abs(6*a(n-1)+5)` -/
def P10916023886857666903.Spec : Prop :=
  ∀ n, (P10916023886857666903.a n : ℤ) = A198797 n

theorem P10916023886857666903.correct : P10916023886857666903.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A198797, Nat.add_sub_cancel, A198797.P10916023886857666903.a, A198797.P12914097745118207729.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A198797, Nat.add_sub_cancel, A198797.P10916023886857666903.a, A198797.P12914097745118207729.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A198797

/-! ## A198797.P16012370227805434953

`6*(a(n-1)+5/6)` with `a(0)=3`
-/

namespace A198797.P16012370227805434953
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [3] fun n a =>
  6 * (a (n - 1) + (5 : ℚ) / 6)

end

end A198797.P16012370227805434953

namespace A198797

/-- `6*(a(n-1)+5/6)` -/
def P16012370227805434953.Spec : Prop :=
  ∀ n, P16012370227805434953.a n = (A198797 n : ℚ)

theorem P16012370227805434953.correct : P16012370227805434953.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A198797, Nat.add_sub_cancel, A198797.P16012370227805434953.a, A198797.P12914097745118207729.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A198797, Nat.add_sub_cancel, A198797.P16012370227805434953.a, A198797.P12914097745118207729.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A198797

/-! ## A198797.P17891366538678545445

`floor(a(n-1)+5*(a(n-1)+1))` with `a(0)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A198797.P17891366538678545445
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  a (n - 1) + 5 * (a (n - 1) + 1)

end

end A198797.P17891366538678545445

namespace A198797

/-- `floor(a(n-1)+5*(a(n-1)+1))` -/
def P17891366538678545445.Spec : Prop :=
  ∀ n, (P17891366538678545445.a n : ℤ) = A198797 n

theorem P17891366538678545445.correct : P17891366538678545445.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A198797, Nat.add_sub_cancel, A198797.P17891366538678545445.a, A198797.P12914097745118207729.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A198797, Nat.add_sub_cancel, A198797.P17891366538678545445.a, A198797.P12914097745118207729.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A198797

/-! ## A198797.P5999452614586192775

`floor(7*a(n-1)-(a(n-1)-5))` with `a(0)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A198797.P5999452614586192775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  7 * a (n - 1) - (a (n - 1) - 5)

end

end A198797.P5999452614586192775

namespace A198797

/-- `floor(7*a(n-1)-(a(n-1)-5))` -/
def P5999452614586192775.Spec : Prop :=
  ∀ n, P5999452614586192775.a n = A198797 n

theorem P5999452614586192775.correct : P5999452614586192775.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A198797, Nat.add_sub_cancel, A198797.P5999452614586192775.a, A198797.P12914097745118207729.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A198797, Nat.add_sub_cancel, A198797.P5999452614586192775.a, A198797.P12914097745118207729.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A198797

/-! ## A198797.P17432021760333651201

`abs(2-A199319(n))`
-/

namespace A198797.P17432021760333651201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A199319 n|

end

end A198797.P17432021760333651201

namespace A198797

/-- `abs(2-A199319(n))` -/
def P17432021760333651201.Spec : Prop :=
  ∀ n, P17432021760333651201.a n = A198797 n

end A198797

/-! ## A198797.P14691216698501713097

`floor(A198845(n)/2)`
-/

namespace A198797.P14691216698501713097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A198845 n : ℚ) / 2⌋

end

end A198797.P14691216698501713097

namespace A198797

/-- `floor(A198845(n)/2)` -/
def P14691216698501713097.Spec : Prop :=
  ∀ n, P14691216698501713097.a n = A198797 n

end A198797

/-! ## A198797.P16112674899760202639

`(A199411(n)-3)/2`
-/

namespace A198797.P16112674899760202639
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A199411 n - 3 : ℚ) / 2

end

end A198797.P16112674899760202639

namespace A198797

/-- `(A199411(n)-3)/2` -/
def P16112674899760202639.Spec : Prop :=
  ∀ n, P16112674899760202639.a n = (A198797 n : ℚ)

end A198797

/-! ## A198797.P5044565860807859900

`A181288(A016897(n))`
-/

namespace A198797.P5044565860807859900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181288 (A016897 n).toNat

end

end A198797.P5044565860807859900

namespace A198797

/-- `A181288(A016897(n))` -/
def P5044565860807859900.Spec : Prop :=
  ∀ n, P5044565860807859900.a n = A198797 n

end A198797

/-! ## A198797.P11531625039852225622

`A181288(A016885(n)+1)`
-/

namespace A198797.P11531625039852225622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181288 (A016885 n + 1).toNat

end

end A198797.P11531625039852225622

namespace A198797

/-- `A181288(A016885(n)+1)` -/
def P11531625039852225622.Spec : Prop :=
  ∀ n, P11531625039852225622.a n = A198797 n

end A198797

/-! ## A198797.P7200092999430727376

`A181288(A016873(n)+2)`
-/

namespace A198797.P7200092999430727376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181288 (A016873 n + 2).toNat

end

end A198797.P7200092999430727376

namespace A198797

/-- `A181288(A016873(n)+2)` -/
def P7200092999430727376.Spec : Prop :=
  ∀ n, P7200092999430727376.a n = A198797 n

end A198797

/-! ## A198797.P14597066872648782860

`∑[Δ[A052934(n)]-A052934(n)]`
-/

namespace A198797.P14597066872648782860
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052934 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A052934 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A198797.P14597066872648782860

namespace A198797

/-- `∑[Δ[A052934(n)]-A052934(n)]` -/
def P14597066872648782860.Spec : Prop :=
  ∀ n, P14597066872648782860.a n = A198797 n

end A198797

/-! ## A198797.P5974595553262689706

`abs(1-Δ[A024023(n)]*A011782(n+2))`
-/

namespace A198797.P5974595553262689706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024023 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (f1 (n + 1) - f1 n) * A011782 (n + 2)|

end

end A198797.P5974595553262689706

namespace A198797

/-- `abs(1-Δ[A024023(n)]*A011782(n+2))` -/
def P5974595553262689706.Spec : Prop :=
  ∀ n, P5974595553262689706.a n = A198797 n

end A198797

/-!
# A198798: Least odd number a(n) > -3 such that a(n) = p(n) - j*(j+1), where p(n) is the n-th prime.

The programs for A198798, the canonical program `A198798.P56848906856835327` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A198798 has offset 2).

The definition of A198798 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2529 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A198798.P10448284647912966364

`2*A002260(A098090(n+1))-3`
-/

namespace A198798.P10448284647912966364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002260 (A098090 (n + 1)).toNat - 3

end

end A198798.P10448284647912966364

namespace A198798

/-- `2*A002260(A098090(n+1))-3` -/
def P10448284647912966364.Spec : Prop :=
  ∀ n, P10448284647912966364.a n = A198798 (n + 2)

end A198798

/-! ## A198798.P56848906856835327

`2*A002260(A006254(n+1)+1)-3`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A198798

/-- `2*A002260(A006254(n+1)+1)-3` -/
def P56848906856835327.Spec : Prop :=
  ∀ n, P56848906856835327.a n = A198798 (n + 2)

theorem P56848906856835327.correct : P56848906856835327.Spec := by
  intro n
  simp only [A198798, Nat.add_sub_cancel]

end A198798

/-! ## A198798.P12918373819896331639

`A158405(A098090(n+1))-2`
-/

namespace A198798.P12918373819896331639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158405 (A098090 (n + 1)).toNat - 2

end

end A198798.P12918373819896331639

namespace A198798

/-- `A158405(A098090(n+1))-2` -/
def P12918373819896331639.Spec : Prop :=
  ∀ n, P12918373819896331639.a n = A198798 (n + 2)

end A198798

/-! ## A198798.P3833400037678078084

`2*A002262(A006254(n+1))-1`
-/

namespace A198798.P3833400037678078084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002262 (A006254 (n + 1)).toNat - 1

end

end A198798.P3833400037678078084

namespace A198798

/-- `2*A002262(A006254(n+1))-1` -/
def P3833400037678078084.Spec : Prop :=
  ∀ n, P3833400037678078084.a n = A198798 (n + 2)

end A198798

/-! ## A198798.P3288583320479813351

`A158405(A067076(n+1)+3)-2`
-/

namespace A198798.P3288583320479813351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158405 (A067076 (n + 1) + 3).toNat - 2

end

end A198798.P3288583320479813351

namespace A198798

/-- `A158405(A067076(n+1)+3)-2` -/
def P3288583320479813351.Spec : Prop :=
  ∀ n, P3288583320479813351.a n = A198798 (n + 2)

end A198798

/-! ## A198798.P17311713360222558844

`A074294(A000040(n+2)+2)-2`
-/

namespace A198798.P17311713360222558844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074294 (A000040 (n + 2) + 2).toNat - 2

end

end A198798.P17311713360222558844

namespace A198798

/-- `A074294(A000040(n+2)+2)-2` -/
def P17311713360222558844.Spec : Prop :=
  ∀ n, P17311713360222558844.a n = A198798 (n + 2)

end A198798

/-! ## A198798.P8147710217824354092

`A171173(A000040(n+2)+3)-2`
-/

namespace A198798.P8147710217824354092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171173 (A000040 (n + 2) + 3).toNat - 2

end

end A198798.P8147710217824354092

namespace A198798

/-- `A171173(A000040(n+2)+3)-2` -/
def P8147710217824354092.Spec : Prop :=
  ∀ n, P8147710217824354092.a n = A198798 (n + 2)

end A198798

/-! ## A198798.P6470124417080449971

`2*A057555(A207790(2*(n+2))+2)-3`
-/

namespace A198798.P6470124417080449971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A057555 (A207790 (2 * (n + 2)) + 2).toNat - 3

end

end A198798.P6470124417080449971

namespace A198798

/-- `2*A057555(A207790(2*(n+2))+2)-3` -/
def P6470124417080449971.Spec : Prop :=
  ∀ n, P6470124417080449971.a n = A198798 (n + 2)

end A198798

/-! ## A198798.P15968837497327967119

`A074294(A014683(p?[2*n+1]+1)+1)-2`
-/

namespace A198798.P15968837497327967119
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074294 (A014683 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) + 1) + 1).toNat - 2

end

end A198798.P15968837497327967119

namespace A198798

/-- `A074294(A014683(p?[2*n+1]+1)+1)-2` -/
def P15968837497327967119.Spec : Prop :=
  ∀ n, P15968837497327967119.a n = A198798 (n + 2)

end A198798

