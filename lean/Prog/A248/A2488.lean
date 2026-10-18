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
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
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
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A248800: a(n) = (2*n^2 + 3 + (-1)^n)/2.

The programs for A248800, the canonical program `A248800.P6572015375229453923` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A248800 has offset 0).

The definition of A248800 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*n²+3+(-1)^n)/2` (program `A248800.P17018619634385519749`, by `A248800.P17018619634385519749.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A248800.P17018619634385519749

`(2*n²+3+(-1)^n)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A248800.P17018619634385519749
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * n ^ 2 : ℤ) + (3 + (-1) ^ n) : ℚ) / 2

end

end A248800.P17018619634385519749

namespace A248800

/-- `(2*n²+3+(-1)^n)/2` -/
def P17018619634385519749.Spec : Prop :=
  ∀ n, P17018619634385519749.a n = (A248800 n : ℚ)

theorem P17018619634385519749.correct : P17018619634385519749.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A248800, Nat.add_sub_cancel, A248800.P17018619634385519749.a, A248800.P6572015375229453923.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A248800, Nat.add_sub_cancel, A248800.P17018619634385519749.a, A248800.P6572015375229453923.a, SequenceMachineLib.memo_apply] at h1 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h3 h4 ⊢
      rw [← h1, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A248800

/-! ## A248800.P6572015375229453923

`2*a(n-1)-2*a(n-3)+a(n-4)` with `a(0)=2, a(1)=2, a(2)=6, a(3)=10`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A248800

/-- `2*a(n-1)-2*a(n-3)+a(n-4)` -/
def P6572015375229453923.Spec : Prop :=
  ∀ n, P6572015375229453923.a n = A248800 n

theorem P6572015375229453923.correct : P6572015375229453923.Spec := by
  intro n
  simp only [A248800]

end A248800

/-! ## A248800.P16301323074674023063

`4*A002620(n)+2`
-/

namespace A248800.P16301323074674023063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A002620 n + 2

end

end A248800.P16301323074674023063

namespace A248800

/-- `4*A002620(n)+2` -/
def P16301323074674023063.Spec : Prop :=
  ∀ n, P16301323074674023063.a n = A248800 n

end A248800

/-! ## A248800.P2996042521547100271

`A000290(n)+A000034(n+1)`
-/

namespace A248800.P2996042521547100271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n + A000034 (n + 1)

end

end A248800.P2996042521547100271

namespace A248800

/-- `A000290(n)+A000034(n+1)` -/
def P2996042521547100271.Spec : Prop :=
  ∀ n, P2996042521547100271.a n = A248800 n

end A248800

/-! ## A248800.P9355956137614221560

`or(1, n²)+1`
-/

namespace A248800.P9355956137614221560
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (n ^ 2) + 1

end

end A248800.P9355956137614221560

namespace A248800

/-- `or(1, n²)+1` -/
def P9355956137614221560.Spec : Prop :=
  ∀ n, (P9355956137614221560.a n : ℤ) = A248800 n

end A248800

/-! ## A248800.P9259655617374219054

`xor(1, or(3, n²))`
-/

namespace A248800.P9259655617374219054
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (Nat.lor 3 (n ^ 2))

end

end A248800.P9259655617374219054

namespace A248800

/-- `xor(1, or(3, n²))` -/
def P9259655617374219054.Spec : Prop :=
  ∀ n, (P9259655617374219054.a n : ℤ) = A248800 n

end A248800

/-! ## A248800.P11235602283962829432

`gcd(2, n)+n²`
-/

namespace A248800.P11235602283962829432
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n + n ^ 2

end

end A248800.P11235602283962829432

namespace A248800

/-- `gcd(2, n)+n²` -/
def P11235602283962829432.Spec : Prop :=
  ∀ n, (P11235602283962829432.a n : ℤ) = A248800 n

end A248800

/-! ## A248800.P13615230834155297337

`and(n²+2, -2)`
-/

namespace A248800.P13615230834155297337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n ^ 2 + 2 : ℤ) (-2)

end

end A248800.P13615230834155297337

namespace A248800

/-- `and(n²+2, -2)` -/
def P13615230834155297337.Spec : Prop :=
  ∀ n, P13615230834155297337.a n = A248800 n

end A248800

/-! ## A248800.P17081147761248211792

`n²-or(n, -2)`
-/

namespace A248800.P17081147761248211792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - Int.lor (n : ℤ) (-2)

end

end A248800.P17081147761248211792

namespace A248800

/-- `n²-or(n, -2)` -/
def P17081147761248211792.Spec : Prop :=
  ∀ n, P17081147761248211792.a n = A248800 n

end A248800

/-! ## A248800.P1966056250124853332

`or(2, and(-2, n²))`
-/

namespace A248800.P1966056250124853332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (Int.land (-2) (n ^ 2 : ℤ))

end

end A248800.P1966056250124853332

namespace A248800

/-- `or(2, and(-2, n²))` -/
def P1966056250124853332.Spec : Prop :=
  ∀ n, P1966056250124853332.a n = A248800 n

end A248800

/-! ## A248800.P1973808943281259090

`xor(2, and(-2, n²))`
-/

namespace A248800.P1973808943281259090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (Int.land (-2) (n ^ 2 : ℤ))

end

end A248800.P1973808943281259090

namespace A248800

/-- `xor(2, and(-2, n²))` -/
def P1973808943281259090.Spec : Prop :=
  ∀ n, P1973808943281259090.a n = A248800 n

end A248800

/-! ## A248800.P267003258877659696

`n²+2-n%2`
-/

namespace A248800.P267003258877659696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) + (2 - ((n % 2 : ℕ) : ℤ))

end

end A248800.P267003258877659696

namespace A248800

/-- `n²+2-n%2` -/
def P267003258877659696.Spec : Prop :=
  ∀ n, P267003258877659696.a n = A248800 n

end A248800

/-! ## A248800.P15196717552024525153

`2-(and(1, n)-n²)`
-/

namespace A248800.P15196717552024525153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((Nat.land 1 n : ℤ) - (n ^ 2 : ℤ))

end

end A248800.P15196717552024525153

namespace A248800

/-- `2-(and(1, n)-n²)` -/
def P15196717552024525153.Spec : Prop :=
  ∀ n, P15196717552024525153.a n = A248800 n

end A248800

/-! ## A248800.P16189256981452656459

`2*(∑[or(1, n)]-n)`
-/

namespace A248800.P16189256981452656459
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ))

end

end A248800.P16189256981452656459

namespace A248800

/-- `2*(∑[or(1, n)]-n)` -/
def P16189256981452656459.Spec : Prop :=
  ∀ n, P16189256981452656459.a n = A248800 n

end A248800

/-! ## A248800.P9089516710901512587

`xor(and(1, n), xor(2, n²))`
-/

namespace A248800.P9089516710901512587
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (Nat.land 1 n) (Nat.xor 2 (n ^ 2))

end

end A248800.P9089516710901512587

namespace A248800

/-- `xor(and(1, n), xor(2, n²))` -/
def P9089516710901512587.Spec : Prop :=
  ∀ n, (P9089516710901512587.a n : ℤ) = A248800 n

end A248800

/-! ## A248800.P3910063189673242198

`lcm(2, ∑[or(1, n)]-n)`
-/

namespace A248800.P3910063189673242198
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ))

end

end A248800.P3910063189673242198

namespace A248800

/-- `lcm(2, ∑[or(1, n)]-n)` -/
def P3910063189673242198.Spec : Prop :=
  ∀ n, (P3910063189673242198.a n : ℤ) = A248800 n

end A248800

/-! ## A248800.P10949939106203066427

`∑[2*and(n, -2)]+2`
-/

namespace A248800.P10949939106203066427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * Int.land (n : ℤ) (-2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A248800.P10949939106203066427

namespace A248800

/-- `∑[2*and(n, -2)]+2` -/
def P10949939106203066427.Spec : Prop :=
  ∀ n, P10949939106203066427.a n = A248800 n

end A248800

/-! ## A248800.P1043380270693531563

`ceil(or(5, (2*n)²)/4)`
-/

namespace A248800.P1043380270693531563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.lor 5 ((2 * n) ^ 2) : ℚ) / 4⌉

end

end A248800.P1043380270693531563

namespace A248800

/-- `ceil(or(5, (2*n)²)/4)` -/
def P1043380270693531563.Spec : Prop :=
  ∀ n, P1043380270693531563.a n = A248800 n

end A248800

/-! ## A248800.P2393352059940827360

`round(or(6, (2*n)²)/4)`
-/

namespace A248800.P2393352059940827360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.lor 6 ((2 * n) ^ 2) : ℚ) / 4)

end

end A248800.P2393352059940827360

namespace A248800

/-- `round(or(6, (2*n)²)/4)` -/
def P2393352059940827360.Spec : Prop :=
  ∀ n, P2393352059940827360.a n = A248800 n

end A248800

/-! ## A248800.P3520398920936174203

`∑[a(n-2)+4]` with `a(0)=2, a(1)=0, a(2)=4`
-/

namespace A248800.P3520398920936174203
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 0, 4] fun n f1 =>
  f1 (n - 2) + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A248800.P3520398920936174203

namespace A248800

/-- `∑[a(n-2)+4]` -/
def P3520398920936174203.Spec : Prop :=
  ∀ n, (P3520398920936174203.a n : ℤ) = A248800 n

end A248800

/-!
# A248801: Number of sets of nonzero squares with sum <= n.

The programs for A248801, there is no canonical definition to state claims against.
-/

/-! ## A248801.P14517433431420782444

`∑[A033461(n)]`
-/

namespace A248801.P14517433431420782444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033461 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A248801.P14517433431420782444

/-! ## A248801.P16460199334027007088

`A033461(char[2]+n)+a(n-1)` with `a(0)=1`
-/

namespace A248801.P16460199334027007088
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A033461 ((if ∃ j, f1 j = n then 1 else 0) + n) + a (n - 1)

end

end A248801.P16460199334027007088

/-! ## A248801.P11587869187494740640

`∑[A339367(n)+A339366(n)]`
-/

namespace A248801.P11587869187494740640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339367 n + A339366 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A248801.P11587869187494740640

/-! ## A248801.P8958547749933393591

`∑[A276516(n)+2*A339367(n)]`
-/

namespace A248801.P8958547749933393591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276516 n + 2 * A339367 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A248801.P8958547749933393591

/-! ## A248801.P11235405528153436085

`∑[2*A280129(n)]-A280129(n)`
-/

namespace A248801.P11235405528153436085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A280129 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A280129 n

end

end A248801.P11235405528153436085

/-! ## A248801.P1984277445270049602

`∑[2*A339366(n)-A276516(n)]`
-/

namespace A248801.P1984277445270049602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A339366 n - A276516 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A248801.P1984277445270049602

/-! ## A248801.P12385554888467819079

`a(n-1)+A033461(n)+A008683(4*(n+1))` with `a(0)=1`
-/

namespace A248801.P12385554888467819079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A033461 n + A008683 (4 * (n + 1)))

end

end A248801.P12385554888467819079

/-! ## A248801.P571235499981117713

`a(n-1)+A033461(n)+A000007(n+1)` with `a(0)=1`
-/

namespace A248801.P571235499981117713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A033461 n + A000007 (n + 1))

end

end A248801.P571235499981117713

/-!
# A248802: Smallest prime factor of 2^(2^n+2) + 3.

The programs for A248802, there is no canonical definition to state claims against.
-/

/-! ## A248802.P6642693175956365940

`A162491(2^n+2)`
-/

namespace A248802.P6642693175956365940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162491 (2 ^ n + 2)

end

end A248802.P6642693175956365940

/-!
# A248805: The difference A156257(n)-A074292(n).

The programs for A248805, the canonical program `A248805.P1988173767871098279` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A248805 has offset 1).

The definition of A248805 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A074292, A156257, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A248805.P1988173767871098279

`A156257(n+1)-A074292(n+1)`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A248805

/-- `A156257(n+1)-A074292(n+1)` -/
def P1988173767871098279.Spec : Prop :=
  ∀ n, P1988173767871098279.a n = A248805 (n + 1)

theorem P1988173767871098279.correct : P1988173767871098279.Spec := by
  intro n
  simp only [A248805, Nat.add_sub_cancel]

end A248805

/-! ## A248805.P12639537211822044700

`gcd(2, A013948(n+1))-A074292(n+1)`
-/

namespace A248805.P12639537211822044700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A013948 (n + 1)) : ℤ) - A074292 (n + 1)

end

end A248805.P12639537211822044700

namespace A248805

/-- `gcd(2, A013948(n+1))-A074292(n+1)` -/
def P12639537211822044700.Spec : Prop :=
  ∀ n, P12639537211822044700.a n = A248805 (n + 1)

end A248805

/-! ## A248805.P3104294737583306133

`2-comp[A022304(n+1)]%2-A074292(n+1)`
-/

namespace A248805.P3104294737583306133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022304 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n % 2 : ℕ) : ℤ) - A074292 (n + 1)

end

end A248805.P3104294737583306133

namespace A248805

/-- `2-comp[A022304(n+1)]%2-A074292(n+1)` -/
def P3104294737583306133.Spec : Prop :=
  ∀ n, P3104294737583306133.a n = A248805 (n + 1)

end A248805

/-! ## A248805.P15589685928860658284

`2-eq[1, A088569(n+1)]%2-A074292(n+1)`
-/

namespace A248805.P15589685928860658284
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088569 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n % 2 : ℕ) : ℤ) - A074292 (n + 1)

end

end A248805.P15589685928860658284

namespace A248805

/-- `2-eq[1, A088569(n+1)]%2-A074292(n+1)` -/
def P15589685928860658284.Spec : Prop :=
  ∀ n, P15589685928860658284.a n = A248805 (n + 1)

end A248805

/-! ## A248805.P3168127223700582098

`2-eq[0, A249093(n+2)]%2-A074292(n+1)`
-/

namespace A248805.P3168127223700582098
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249093 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n % 2 : ℕ) : ℤ) - A074292 (n + 1)

end

end A248805.P3168127223700582098

namespace A248805

/-- `2-eq[0, A249093(n+2)]%2-A074292(n+1)` -/
def P3168127223700582098.Spec : Prop :=
  ∀ n, P3168127223700582098.a n = A248805 (n + 1)

end A248805

/-! ## A248805.P15957552393293108834

`2-and(1, lt[0, A157686(n+1)])-A074292(n+1)`
-/

namespace A248805.P15957552393293108834
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157686 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (Nat.land 1 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) : ℤ) - A074292 (n + 1)

end

end A248805.P15957552393293108834

namespace A248805

/-- `2-and(1, lt[0, A157686(n+1)])-A074292(n+1)` -/
def P15957552393293108834.Spec : Prop :=
  ∀ n, P15957552393293108834.a n = A248805 (n + 1)

end A248805

/-! ## A248805.P16327749790809011028

`2-and(1, A013948(-xor(n, -1)))-A074292(n+1)`
-/

namespace A248805.P16327749790809011028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - Int.land 1 (A013948 (-Int.xor (n : ℤ) (-1)).toNat) - A074292 (n + 1)

end

end A248805.P16327749790809011028

namespace A248805

/-- `2-and(1, A013948(-xor(n, -1)))-A074292(n+1)` -/
def P16327749790809011028.Spec : Prop :=
  ∀ n, P16327749790809011028.a n = A248805 (n + 1)

end A248805

/-! ## A248805.P16259968903933895281

`gcd(comp[A054353(n+1)-1]+1-n, 4/2)-A074292(n+1)`
-/

namespace A248805.P16259968903933895281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054353 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1 : ℤ) - (n : ℤ)) (SequenceMachineLib.roundAway ((4 : ℚ) / 2)) : ℤ) - A074292 (n + 1)

end

end A248805.P16259968903933895281

namespace A248805

/-- `gcd(comp[A054353(n+1)-1]+1-n, 4/2)-A074292(n+1)` -/
def P16259968903933895281.Spec : Prop :=
  ∀ n, P16259968903933895281.a n = A248805 (n + 1)

end A248805

/-! ## A248805.P666902955293059497

`2-(lt[1, (n-A074290(n+1))%2+1]+3)%2-A074292(n+1)`
-/

namespace A248805.P666902955293059497
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) - A074290 (n + 1)) 2 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (((SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 3) % 2 : ℕ) : ℤ) - A074292 (n + 1)

end

end A248805.P666902955293059497

namespace A248805

/-- `2-(lt[1, (n-A074290(n+1))%2+1]+3)%2-A074292(n+1)` -/
def P666902955293059497.Spec : Prop :=
  ∀ n, P666902955293059497.a n = A248805 (n + 1)

end A248805

/-! ## A248805.P8116744256155606661

`A040001(A013948(n+1))-A074292(n+1)`
-/

namespace A248805.P8116744256155606661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (A013948 (n + 1)).toNat - A074292 (n + 1)

end

end A248805.P8116744256155606661

namespace A248805

/-- `A040001(A013948(n+1))-A074292(n+1)` -/
def P8116744256155606661.Spec : Prop :=
  ∀ n, P8116744256155606661.a n = A248805 (n + 1)

end A248805

/-! ## A248805.P11929614362192593649

`A000034(lt[1, A000002(n+1)])-A074292(n+1)`
-/

namespace A248805.P11929614362192593649
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) - A074292 (n + 1)

end

end A248805.P11929614362192593649

namespace A248805

/-- `A000034(lt[1, A000002(n+1)])-A074292(n+1)` -/
def P11929614362192593649.Spec : Prop :=
  ∀ n, P11929614362192593649.a n = A248805 (n + 1)

end A248805

/-! ## A248805.P8319458986516458740

`A000002(A078649(n+1))-A074292(n+1)`
-/

namespace A248805.P8319458986516458740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (A078649 (n + 1)).toNat - A074292 (n + 1)

end

end A248805.P8319458986516458740

namespace A248805

/-- `A000002(A078649(n+1))-A074292(n+1)` -/
def P8319458986516458740.Spec : Prop :=
  ∀ n, P8319458986516458740.a n = A248805 (n + 1)

end A248805

/-! ## A248805.P6704357167786278676

`A000002(A013948(n+1)+n)-A074292(n+1)`
-/

namespace A248805.P6704357167786278676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (A013948 (n + 1) + (n : ℤ)).toNat - A074292 (n + 1)

end

end A248805.P6704357167786278676

namespace A248805

/-- `A000002(A013948(n+1)+n)-A074292(n+1)` -/
def P6704357167786278676.Spec : Prop :=
  ∀ n, P6704357167786278676.a n = A248805 (n + 1)

end A248805

/-! ## A248805.P10665115341230826174

`A000002(comp[A216345(n+1)-1])-A074292(n+1)`
-/

namespace A248805.P10665115341230826174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216345 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) - A074292 (n + 1)

end

end A248805.P10665115341230826174

namespace A248805

/-- `A000002(comp[A216345(n+1)-1])-A074292(n+1)` -/
def P10665115341230826174.Spec : Prop :=
  ∀ n, P10665115341230826174.a n = A248805 (n + 1)

end A248805

/-! ## A248805.P17591048927799960342

`A156257(n+1)-(Δ[A216345(3*n+1)]-3)`
-/

namespace A248805.P17591048927799960342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216345 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156257 (n + 1) - (f1 (n + 1) - f1 n - 3)

end

end A248805.P17591048927799960342

namespace A248805

/-- `A156257(n+1)-(Δ[A216345(3*n+1)]-3)` -/
def P17591048927799960342.Spec : Prop :=
  ∀ n, P17591048927799960342.a n = A248805 (n + 1)

end A248805

/-! ## A248805.P5099443693629382061

`A156257(n+1)-Δ[A074286(A008486(n))]`
-/

namespace A248805.P5099443693629382061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074286 (A008486 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156257 (n + 1) - (f1 (n + 1) - f1 n)

end

end A248805.P5099443693629382061

namespace A248805

/-- `A156257(n+1)-Δ[A074286(A008486(n))]` -/
def P5099443693629382061.Spec : Prop :=
  ∀ n, P5099443693629382061.a n = A248805 (n + 1)

end A248805

/-! ## A248805.P9269992497054604632

`A078880(A078649(n+1)-1)-A074292(n+1)`
-/

namespace A248805.P9269992497054604632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078880 (A078649 (n + 1) - 1).toNat - A074292 (n + 1)

end

end A248805.P9269992497054604632

namespace A248805

/-- `A078880(A078649(n+1)-1)-A074292(n+1)` -/
def P9269992497054604632.Spec : Prop :=
  ∀ n, P9269992497054604632.a n = A248805 (n + 1)

end A248805

/-! ## A248805.P6419846581372587399

`A078880(A013948(n+1)+n)-A074292(n+1)`
-/

namespace A248805.P6419846581372587399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078880 (A013948 (n + 1) + (n : ℤ)).toNat - A074292 (n + 1)

end

end A248805.P6419846581372587399

namespace A248805

/-- `A078880(A013948(n+1)+n)-A074292(n+1)` -/
def P6419846581372587399.Spec : Prop :=
  ∀ n, P6419846581372587399.a n = A248805 (n + 1)

end A248805

/-! ## A248805.P15238113351647748640

`A078880(comp[A216345(n+1)-1])-A074292(n+1)`
-/

namespace A248805.P15238113351647748640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216345 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078880 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) - A074292 (n + 1)

end

end A248805.P15238113351647748640

namespace A248805

/-- `A078880(comp[A216345(n+1)-1])-A074292(n+1)` -/
def P15238113351647748640.Spec : Prop :=
  ∀ n, P15238113351647748640.a n = A248805 (n + 1)

end A248805

/-!
# A248806: Number of 2's separating successive 1's in the Kolakoski sequence A000002.

The programs for A248806, the canonical program `A248806.P12635437797534997553` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A248806 has offset 1).

The definition of A248806 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4995 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A248806.P14981107267025012363

`A327239(n+1)-1`
-/

namespace A248806.P14981107267025012363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327239 (n + 1) - 1

end

end A248806.P14981107267025012363

namespace A248806

/-- `A327239(n+1)-1` -/
def P14981107267025012363.Spec : Prop :=
  ∀ n, P14981107267025012363.a n = A248806 (n + 1)

end A248806

/-! ## A248806.P3612318491274242528

`Δ[A013947(n+1)]-1`
-/

namespace A248806.P3612318491274242528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013947 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A248806.P3612318491274242528

namespace A248806

/-- `Δ[A013947(n+1)]-1` -/
def P3612318491274242528.Spec : Prop :=
  ∀ n, P3612318491274242528.a n = A248806 (n + 1)

end A248806

/-! ## A248806.P12635437797534997553

`Δ[eq[1, A000002(n+1)]]-1`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A248806

/-- `Δ[eq[1, A000002(n+1)]]-1` -/
def P12635437797534997553.Spec : Prop :=
  ∀ n, P12635437797534997553.a n = A248806 (n + 1)

theorem P12635437797534997553.correct : P12635437797534997553.Spec := by
  intro n
  simp only [A248806, Nat.add_sub_cancel]

end A248806

/-! ## A248806.P10217938285083309176

`Δ[eq[2, A049705(n+1)]]-1`
-/

namespace A248806.P10217938285083309176
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049705 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - 1

end

end A248806.P10217938285083309176

namespace A248806

/-- `Δ[eq[2, A049705(n+1)]]-1` -/
def P10217938285083309176.Spec : Prop :=
  ∀ n, P10217938285083309176.a n = A248806 (n + 1)

end A248806

/-! ## A248806.P7455963773997756089

`A074286(Δ[A013947(n+1)])`
-/

namespace A248806.P7455963773997756089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013947 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074286 (f1 (n + 1) - f1 n).toNat

end

end A248806.P7455963773997756089

namespace A248806

/-- `A074286(Δ[A013947(n+1)])` -/
def P7455963773997756089.Spec : Prop :=
  ∀ n, P7455963773997756089.a n = A248806 (n + 1)

end A248806

/-! ## A248806.P6751399095337654158

`A339973(Δ[A013947(n+1)])`
-/

namespace A248806.P6751399095337654158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013947 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339973 (f1 (n + 1) - f1 n).toNat

end

end A248806.P6751399095337654158

namespace A248806

/-- `A339973(Δ[A013947(n+1)])` -/
def P6751399095337654158.Spec : Prop :=
  ∀ n, P6751399095337654158.a n = A248806 (n + 1)

end A248806

/-! ## A248806.P14820218902021670940

`A001513(n)%A327239(n+1)`
-/

namespace A248806.P14820218902021670940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001513 n) (A327239 (n + 1))

end

end A248806.P14820218902021670940

namespace A248806

/-- `A001513(n)%A327239(n+1)` -/
def P14820218902021670940.Spec : Prop :=
  ∀ n, P14820218902021670940.a n = A248806 (n + 1)

end A248806

/-! ## A248806.P10137112631785219561

`A001538(n)%A327239(n+1)`
-/

namespace A248806.P10137112631785219561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001538 n) (A327239 (n + 1))

end

end A248806.P10137112631785219561

namespace A248806

/-- `A001538(n)%A327239(n+1)` -/
def P10137112631785219561.Spec : Prop :=
  ∀ n, P10137112631785219561.a n = A248806 (n + 1)

end A248806

/-! ## A248806.P16476345290001523723

`A016969(n)%A327239(n+1)`
-/

namespace A248806.P16476345290001523723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016969 n) (A327239 (n + 1))

end

end A248806.P16476345290001523723

namespace A248806

/-- `A016969(n)%A327239(n+1)` -/
def P16476345290001523723.Spec : Prop :=
  ∀ n, P16476345290001523723.a n = A248806 (n + 1)

end A248806

/-! ## A248806.P14105343065578604118

`A016971(n)%A327239(n+1)`
-/

namespace A248806.P14105343065578604118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016971 n) (A327239 (n + 1))

end

end A248806.P14105343065578604118

namespace A248806

/-- `A016971(n)%A327239(n+1)` -/
def P14105343065578604118.Spec : Prop :=
  ∀ n, P14105343065578604118.a n = A248806 (n + 1)

end A248806

/-! ## A248806.P15863534814981463372

`A016973(n)%A327239(n+1)`
-/

namespace A248806.P15863534814981463372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016973 n) (A327239 (n + 1))

end

end A248806.P15863534814981463372

namespace A248806

/-- `A016973(n)%A327239(n+1)` -/
def P15863534814981463372.Spec : Prop :=
  ∀ n, P15863534814981463372.a n = A248806 (n + 1)

end A248806

/-! ## A248806.P4449850335739596495

`A016975(n)%A327239(n+1)`
-/

namespace A248806.P4449850335739596495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016975 n) (A327239 (n + 1))

end

end A248806.P4449850335739596495

namespace A248806

/-- `A016975(n)%A327239(n+1)` -/
def P4449850335739596495.Spec : Prop :=
  ∀ n, P4449850335739596495.a n = A248806 (n + 1)

end A248806

/-! ## A248806.P11858693410256859788

`A017581(n)%A327239(n+1)`
-/

namespace A248806.P11858693410256859788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017581 n) (A327239 (n + 1))

end

end A248806.P11858693410256859788

namespace A248806

/-- `A017581(n)%A327239(n+1)` -/
def P11858693410256859788.Spec : Prop :=
  ∀ n, P11858693410256859788.a n = A248806 (n + 1)

end A248806

/-! ## A248806.P5744230842116460449

`A017583(n)%A327239(n+1)`
-/

namespace A248806.P5744230842116460449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017583 n) (A327239 (n + 1))

end

end A248806.P5744230842116460449

namespace A248806

/-- `A017583(n)%A327239(n+1)` -/
def P5744230842116460449.Spec : Prop :=
  ∀ n, P5744230842116460449.a n = A248806 (n + 1)

end A248806

/-! ## A248806.P17577780543601865324

`A017585(n)%A327239(n+1)`
-/

namespace A248806.P17577780543601865324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017585 n) (A327239 (n + 1))

end

end A248806.P17577780543601865324

namespace A248806

/-- `A017585(n)%A327239(n+1)` -/
def P17577780543601865324.Spec : Prop :=
  ∀ n, P17577780543601865324.a n = A248806 (n + 1)

end A248806

/-! ## A248806.P13644536773909985706

`A017653(n)%A327239(n+1)`
-/

namespace A248806.P13644536773909985706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017653 n) (A327239 (n + 1))

end

end A248806.P13644536773909985706

namespace A248806

/-- `A017653(n)%A327239(n+1)` -/
def P13644536773909985706.Spec : Prop :=
  ∀ n, P13644536773909985706.a n = A248806 (n + 1)

end A248806

/-!
# A248807: Range of A037214 = coefficients of (sum_{n>0} n*X^(n^2))^2.

The programs for A248807, there is no canonical definition to state claims against.
-/

/-! ## A248807.P10533644727533825631

`lt[0, char[A037214(n)]]`
-/

namespace A248807.P10533644727533825631
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037214 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A248807.P10533644727533825631

/-! ## A248807.P15357590942304873798

`eq[1, char[A037214(n+1)]]`
-/

namespace A248807.P15357590942304873798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037214 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A248807.P15357590942304873798

/-! ## A248807.P15250575099851433954

`eq[char[A037214(n)], A329684(n)]`
-/

namespace A248807.P15250575099851433954
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037214 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329684 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A248807.P15250575099851433954

/-! ## A248807.P583473729628355379

`A118759(record[n*char[A037214(n)]])`
-/

namespace A248807.P583473729628355379
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037214 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A248807.P583473729628355379

/-! ## A248807.P8103532585864680691

`eq[A035214(A242474(n+1)), A051699(n)]`
-/

namespace A248807.P8103532585864680691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 (A242474 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051699 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A248807.P8103532585864680691

/-!
# A248808: Irregular triangle read by rows: row n gives golden ratio base representation of Fibonacci number F_n.

The programs for A248808, the canonical program `A248808.P11257078540313990282` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A248808 has offset 1).

The definition of A248808 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2550 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A248808.P11257078540313990282

`A084346(n+1)-(A000267(n)+1)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A248808

/-- `A084346(n+1)-(A000267(n)+1)` -/
def P11257078540313990282.Spec : Prop :=
  ∀ n, P11257078540313990282.a n = A248808 (n + 1)

theorem P11257078540313990282.correct : P11257078540313990282.Spec := by
  intro n
  simp only [A248808, Nat.add_sub_cancel]

end A248808

/-! ## A248808.P17100359693595088007

`A084346(n+1)-A027434(n+1)`
-/

namespace A248808.P17100359693595088007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084346 (n + 1) - A027434 (n + 1)

end

end A248808.P17100359693595088007

namespace A248808

/-- `A084346(n+1)-A027434(n+1)` -/
def P17100359693595088007.Spec : Prop :=
  ∀ n, P17100359693595088007.a n = A248808 (n + 1)

end A248808

/-! ## A248808.P1366257787242313895

`A004277(A082375(n))-A000267(n)`
-/

namespace A248808.P1366257787242313895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A082375 n).toNat - A000267 n

end

end A248808.P1366257787242313895

namespace A248808

/-- `A004277(A082375(n))-A000267(n)` -/
def P1366257787242313895.Spec : Prop :=
  ∀ n, P1366257787242313895.a n = A248808 (n + 1)

end A248808

/-! ## A248808.P13016198866312571045

`A004273(A082375(n))-A055086(n)`
-/

namespace A248808.P13016198866312571045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A082375 n).toNat - A055086 n

end

end A248808.P13016198866312571045

namespace A248808

/-- `A004273(A082375(n))-A055086(n)` -/
def P13016198866312571045.Spec : Prop :=
  ∀ n, P13016198866312571045.a n = A248808 (n + 1)

end A248808

/-! ## A248808.P8208077546667160116

`A000267(A082375(n)²)-A000267(n)`
-/

namespace A248808.P8208077546667160116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 (A082375 n ^ 2).toNat - A000267 n

end

end A248808.P8208077546667160116

namespace A248808

/-- `A000267(A082375(n)²)-A000267(n)` -/
def P8208077546667160116.Spec : Prop :=
  ∀ n, P8208077546667160116.a n = A248808 (n + 1)

end A248808

/-! ## A248808.P14733420118665388789

`A055086(A082375(n)²)-A055086(n)`
-/

namespace A248808.P14733420118665388789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 (A082375 n ^ 2).toNat - A055086 n

end

end A248808.P14733420118665388789

namespace A248808

/-- `A055086(A082375(n)²)-A055086(n)` -/
def P14733420118665388789.Spec : Prop :=
  ∀ n, P14733420118665388789.a n = A248808 (n + 1)

end A248808

/-! ## A248808.P5812775150694291408

`A082375(A082375(n)^2)-A055086(n)`
-/

namespace A248808.P5812775150694291408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082375 (A082375 n ^ 2).toNat - A055086 n

end

end A248808.P5812775150694291408

namespace A248808

/-- `A082375(A082375(n)^2)-A055086(n)` -/
def P5812775150694291408.Spec : Prop :=
  ∀ n, P5812775150694291408.a n = A248808 (n + 1)

end A248808

/-!
# A248809: Triangular array: row n gives the coefficients of the polynomial p(n,x) defined in Comments.

The programs for A248809, there is no canonical definition to state claims against.
-/

/-! ## A248809.P1447106735600191206

`A249074(n)/A016116(A004736(n+1))`
-/

namespace A248809.P1447106735600191206
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A249074 n : ℚ) / (A016116 (A004736 (n + 1)).toNat : ℚ)

end

end A248809.P1447106735600191206

/-! ## A248809.P6917262871739583258

`A249074(n)/A249130(n)*A249128(n)`
-/

namespace A248809.P6917262871739583258
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A249074 n : ℚ) / (A249130 n : ℚ) * (A249128 n : ℚ)

end

end A248809.P6917262871739583258

/-! ## A248809.P16062231751738623266

`A249074(n)/A019554(A130321(n))`
-/

namespace A248809.P16062231751738623266
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A249074 n : ℚ) / (A019554 (A130321 n).toNat : ℚ)

end

end A248809.P16062231751738623266

/-!
# A248810: Signed version of A164984.

The programs for A248810, there is no canonical definition to state claims against.
-/

/-! ## A248810.P14696073370493351190

`A097807(n)*A164984(n+1)`
-/

namespace A248810.P14696073370493351190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 n * A164984 (n + 1)

end

end A248810.P14696073370493351190

/-! ## A248810.P18034895683178851171

`A251634(comp[∑[n]])`
-/

namespace A248810.P18034895683178851171
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251634 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A248810.P18034895683178851171

/-! ## A248810.P12108813262712525127

`or(1, A251634(comp[A000217(n)]))`
-/

namespace A248810.P12108813262712525127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A251634 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n))

end

end A248810.P12108813262712525127

/-! ## A248810.P7487498694823705603

`or(1, A251634(A014132(n+1)))`
-/

namespace A248810.P7487498694823705603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A251634 (A014132 (n + 1)).toNat)

end

end A248810.P7487498694823705603

/-! ## A248810.P14725873983684666062

`or(1, A251634(A007401(n+2)))`
-/

namespace A248810.P14725873983684666062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A251634 (A007401 (n + 2)).toNat)

end

end A248810.P14725873983684666062

/-! ## A248810.P11052835716381167793

`or(1, A251634(eq[0, A010054(n)]))`
-/

namespace A248810.P11052835716381167793
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A251634 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n))

end

end A248810.P11052835716381167793

/-! ## A248810.P1620622707482710819

`A251634(A007401(n+2))+A000038(n+1)`
-/

namespace A248810.P1620622707482710819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251634 (A007401 (n + 2)).toNat + A000038 (n + 1)

end

end A248810.P1620622707482710819

/-! ## A248810.P17660244746180762819

`A000142(C(2, n+2))*A251634(A007401(n+2))`
-/

namespace A248810.P17660244746180762819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (Nat.choose 2 (n + 2)) * A251634 (A007401 (n + 2)).toNat

end

end A248810.P17660244746180762819

/-! ## A248810.P9245293229751028274

`A020639(ceil(1/(n+1)))*A251634(A007401(n+2))`
-/

namespace A248810.P9245293229751028274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 ⌈1 / (n + 1 : ℚ)⌉.toNat * A251634 (A007401 (n + 2)).toNat

end

end A248810.P9245293229751028274

/-! ## A248810.P8058456210443483400

`A251634(eq[0, A010054(n)])%A000041(n+2)`
-/

namespace A248810.P8058456210443483400
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A251634 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)) (A000041 (n + 2))

end

end A248810.P8058456210443483400

/-! ## A248810.P16575156017627303961

`A251634(A007401(n+2))%∑[A000032(n)]`
-/

namespace A248810.P16575156017627303961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A251634 (A007401 (n + 2)).toNat) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A248810.P16575156017627303961

/-!
# A248812: Repeated terms of (2n)! (A010050).

The programs for A248812, the canonical program `A248812.P3411322192489706496` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A248812 has offset 0).

The definition of A248812 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A248812.P3411322192489706496

`(2*floor(n/2))!`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A248812

/-- `(2*floor(n/2))!` -/
def P3411322192489706496.Spec : Prop :=
  ∀ n, (P3411322192489706496.a n : ℤ) = A248812 n

theorem P3411322192489706496.correct : P3411322192489706496.Spec := by
  intro n
  simp only [A248812]

end A248812

/-! ## A248812.P13677762480221816506

`A000142(A052928(n))`
-/

namespace A248812.P13677762480221816506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (A052928 n).toNat

end

end A248812.P13677762480221816506

namespace A248812

/-- `A000142(A052928(n))` -/
def P13677762480221816506.Spec : Prop :=
  ∀ n, P13677762480221816506.a n = A248812 n

end A248812

/-! ## A248812.P11580841474812331148

`gcd(xor(1, n)!, n!)`
-/

namespace A248812.P11580841474812331148
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (Nat.factorial (Nat.xor 1 n)) (Nat.factorial n)

end

end A248812.P11580841474812331148

namespace A248812

/-- `gcd(xor(1, n)!, n!)` -/
def P11580841474812331148.Spec : Prop :=
  ∀ n, (P11580841474812331148.a n : ℤ) = A248812 n

end A248812

/-! ## A248812.P6750078460931310091

`or(1, n)!/or(1, n)`
-/

namespace A248812.P6750078460931310091
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (Nat.lor 1 n) : ℚ) / (Nat.lor 1 n : ℚ)

end

end A248812.P6750078460931310091

namespace A248812

/-- `or(1, n)!/or(1, n)` -/
def P6750078460931310091.Spec : Prop :=
  ∀ n, P6750078460931310091.a n = (A248812 n : ℚ)

end A248812

/-! ## A248812.P15070537301742041093

`∑{digits}[gcd(n+1, n-1), (n+1-#)!]`
-/

namespace A248812.P15070537301742041093
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) ((n : ℤ) - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Nat.factorial ((n + 1 : ℤ) - (x : ℤ)).toNat).sum

end

end A248812.P15070537301742041093

namespace A248812

/-- `∑{digits}[gcd(n+1, n-1), (n+1-#)!]` -/
def P15070537301742041093.Spec : Prop :=
  ∀ n, (P15070537301742041093.a n : ℤ) = A248812 n

end A248812

/-! ## A248812.P4124310291828563361

`A012254(or(1, n))`
-/

namespace A248812.P4124310291828563361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012254 (Nat.lor 1 n)

end

end A248812.P4124310291828563361

namespace A248812

/-- `A012254(or(1, n))` -/
def P4124310291828563361.Spec : Prop :=
  ∀ n, P4124310291828563361.a n = A248812 n

end A248812

/-!
# A248813: A(n,k) is the base-k complement of n; square array A(n,k), n>=0, k>=2, read by antidiagonals.

The programs for A248813, there is no canonical definition to state claims against.
-/

/-! ## A248813.P13090998878382040279

`A001221(A085584(n+1))*A083856(n)`
-/

namespace A248813.P13090998878382040279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A085584 (n + 1)).toNat * A083856 n

end

end A248813.P13090998878382040279

/-! ## A248813.P7848249126071151585

`A231665(A231683(n))%A057145(n+2)`
-/

namespace A248813.P7848249126071151585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A231665 (A231683 n).toNat) (A057145 (n + 2))

end

end A248813.P7848249126071151585

/-! ## A248813.P11961505291517617454

`A001221(A085584(n+1))*A000120(A321258(n+1))`
-/

namespace A248813.P11961505291517617454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A085584 (n + 1)).toNat * A000120 (A321258 (n + 1)).toNat

end

end A248813.P11961505291517617454

/-! ## A248813.P3322210695948180323

`A000120(lcm(A055570(n), A076482(n+1)))`
-/

namespace A248813.P3322210695948180323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Int.lcm (A055570 n) (A076482 (n + 1)))

end

end A248813.P3322210695948180323

/-! ## A248813.P11605676093854440480

`A090048(A194583(n))`
-/

namespace A248813.P11605676093854440480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090048 (A194583 n).toNat

end

end A248813.P11605676093854440480

/-!
# A248814: 

The programs for A248814, there is no canonical definition to state claims against.
-/

/-! ## A248814.P865720978481248758

`C(6*n, 6)*a(n-1)` with `a(0)=1`
-/

namespace A248814.P865720978481248758
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.choose (6 * n) 6 * a (n - 1)

end

end A248814.P865720978481248758

/-! ## A248814.P10808780636251732850

`n!*A025038(n)`
-/

namespace A248814.P10808780636251732850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A025038 n

end

end A248814.P10808780636251732850

/-! ## A248814.P14792227206735274691

`a(n-1)*A000579(6*n)` with `a(0)=1`
-/

namespace A248814.P14792227206735274691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A000579 (6 * n)

end

end A248814.P14792227206735274691

/-! ## A248814.P506422045637680418

`A253946(6*n-1)/6*a(n-1)` with `a(0)=1`
-/

namespace A248814.P506422045637680418
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A253946 (6 * n - 1) : ℚ) / 6 * a (n - 1)

end

end A248814.P506422045637680418

/-! ## A248814.P5348107010321830113

`A089759(eq[6, A002262(n)])`
-/

namespace A248814.P5348107010321830113
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089759 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A248814.P5348107010321830113

/-!
# A248815: Numbers equal to the arithmetic derivative of their Euler totient function.

The programs for A248815, there is no canonical definition to state claims against.
-/

/-! ## A248815.P12330979631052940648

`eq[n+1, A003415(A000010(n+1))]+1`
-/

namespace A248815.P12330979631052940648
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A000010 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A248815.P12330979631052940648

/-! ## A248815.P370101709371293742

`eq[A028310(n), A099310(A028310(n))]`
-/

namespace A248815.P370101709371293742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099310 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A248815.P370101709371293742

/-! ## A248815.P7886199370234917320

`eq[A066182(n+1), A099310(A066182(n+1))]`
-/

namespace A248815.P7886199370234917320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066182 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099310 (A066182 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A248815.P7886199370234917320

/-! ## A248815.P14729282453979285261

`eq[A099310(A233583(n+1)), A233583(n+1)]`
-/

namespace A248815.P14729282453979285261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099310 (A233583 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A248815.P14729282453979285261

/-! ## A248815.P7543758266066366041

`eq[A003415(A225530(n)), A233583(n+1)]`
-/

namespace A248815.P7543758266066366041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A225530 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A248815.P7543758266066366041

/-!
# A248818: Numbers n such that the digits of antisigma(n) end in phi(n).

The programs for A248818, there is no canonical definition to state claims against.
-/

/-! ## A248818.P3746703913184737303

`A098211(A284875(n+1)+A117186(n+1))`
-/

namespace A248818.P3746703913184737303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098211 (A284875 (n + 1) + A117186 (n + 1)).toNat

end

end A248818.P3746703913184737303

/-!
# A248819: Numbers n such that the digits of antisigma(n) end in sigma(n).

The programs for A248819, there is no canonical definition to state claims against.
-/

/-! ## A248819.P13490156718638408153

`A258413(A029503(n+2))`
-/

namespace A248819.P13490156718638408153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258413 (A029503 (n + 2)).toNat

end

end A248819.P13490156718638408153

/-!
# A248822: Number of integers k^4 that divide 1!*2!*3!*...*n!.

The programs for A248822, there is no canonical definition to state claims against.
-/

/-! ## A248822.P7068007659740152726

`A120126(A121989(n))`
-/

namespace A248822.P7068007659740152726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120126 (A121989 n).toNat

end

end A248822.P7068007659740152726

/-! ## A248822.P10844441056009849717

`A005555(A029352(n²+1))`
-/

namespace A248822.P10844441056009849717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005555 (A029352 (n ^ 2 + 1)).toNat

end

end A248822.P10844441056009849717

/-! ## A248822.P13842542599034051701

`A124758(A000120(n)*A000246(n))`
-/

namespace A248822.P13842542599034051701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124758 (A000120 n * A000246 n).toNat

end

end A248822.P13842542599034051701

/-! ## A248822.P5627000105476001863

`A000003(A343577(n)+A245573(n+1))`
-/

namespace A248822.P5627000105476001863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000003 (A343577 n + A245573 (n + 1)).toNat

end

end A248822.P5627000105476001863

/-! ## A248822.P9220648991433459037

`A273110(A171711(n+1)-A258851(n))`
-/

namespace A248822.P9220648991433459037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273110 (A171711 (n + 1) - A258851 n).toNat

end

end A248822.P9220648991433459037

/-!
# A248823: Number of integers k^5 that divide 1!*2!*3!*...*n!.

The programs for A248823, there is no canonical definition to state claims against.
-/

/-! ## A248823.P5644687745940004625

`A000009(n)*A334299(A241470(n+1))`
-/

namespace A248823.P5644687745940004625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n * A334299 (A241470 (n + 1)).toNat

end

end A248823.P5644687745940004625

/-! ## A248823.P3554555266924310294

`∏{e}[A155118(∑[ceil(2^n/3)]), #]`
-/

namespace A248823.P3554555266924310294
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 ^ n : ℚ) / 3⌉

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155118 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A248823.P3554555266924310294

/-! ## A248823.P4780986213773580071

`A096115(A238426(n))`
-/

namespace A248823.P4780986213773580071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096115 (A238426 n).toNat

end

end A248823.P4780986213773580071

/-! ## A248823.P3244735714588034031

`A053695(A000628(n+1))`
-/

namespace A248823.P3244735714588034031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053695 (A000628 (n + 1)).toNat

end

end A248823.P3244735714588034031

/-! ## A248823.P1122159596219381333

`A096115(A032066(n+1))`
-/

namespace A248823.P1122159596219381333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096115 (A032066 (n + 1)).toNat

end

end A248823.P1122159596219381333

/-!
# A248824: Number of integers k^6 that divide 1!*2!*3!*...*n!.

The programs for A248824, there is no canonical definition to state claims against.
-/

/-! ## A248824.P7948544225022066976

`A102453(A002992(n))`
-/

namespace A248824.P7948544225022066976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102453 (A002992 n).toNat

end

end A248824.P7948544225022066976

/-! ## A248824.P283897758611494036

`A210955(A342763(n))`
-/

namespace A248824.P283897758611494036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210955 (A342763 n).toNat

end

end A248824.P283897758611494036

/-! ## A248824.P6917155103478658999

`A347933(A395687(n+1))`
-/

namespace A248824.P6917155103478658999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347933 (A395687 (n + 1)).toNat

end

end A248824.P6917155103478658999

/-! ## A248824.P13200834241383675671

`A122305(A145793(n+2))`
-/

namespace A248824.P13200834241383675671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122305 (A145793 (n + 2)).toNat

end

end A248824.P13200834241383675671

/-! ## A248824.P16300952882737998965

`A000119(A126970(C(n, 2)))`
-/

namespace A248824.P16300952882737998965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000119 (A126970 (Nat.choose n 2)).toNat

end

end A248824.P16300952882737998965

/-!
# A248825: a(n) = n^2 + 1 - (-1)^n.

The programs for A248825, the canonical program `A248825.P4336532572881775557` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A248825 has offset 0).

The definition of A248825 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n²+1-(-1)^n` (program `A248825.P4336532572881775557`, by `A248825.P4336532572881775557.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A248825.P4336532572881775557

`n²+1-(-1)^n`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A248825

/-- `n²+1-(-1)^n` -/
def P4336532572881775557.Spec : Prop :=
  ∀ n, P4336532572881775557.a n = A248825 n

theorem P4336532572881775557.correct : P4336532572881775557.Spec := by
  intro n
  simp only [A248825]

end A248825

/-! ## A248825.P5870769573372891225

`xor(1, n²+1)`
-/

namespace A248825.P5870769573372891225
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (n ^ 2 + 1)

end

end A248825.P5870769573372891225

namespace A248825

/-- `xor(1, n²+1)` -/
def P5870769573372891225.Spec : Prop :=
  ∀ n, (P5870769573372891225.a n : ℤ) = A248825 n

end A248825

/-! ## A248825.P43676124683354844

`or(n², Δ[or(1, n)])`
-/

namespace A248825.P43676124683354844
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n ^ 2 : ℤ) ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A248825.P43676124683354844

namespace A248825

/-- `or(n², Δ[or(1, n)])` -/
def P43676124683354844.Spec : Prop :=
  ∀ n, P43676124683354844.a n = A248825 n

end A248825

/-! ## A248825.P11153105754499286586

`or(2*and(1, n), n²)`
-/

namespace A248825.P11153105754499286586
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor (2 * Nat.land 1 n) (n ^ 2)

end

end A248825.P11153105754499286586

namespace A248825

/-- `or(2*and(1, n), n²)` -/
def P11153105754499286586.Spec : Prop :=
  ∀ n, (P11153105754499286586.a n : ℤ) = A248825 n

end A248825

/-! ## A248825.P12254291519801793467

`-xor(2, or(2, -n²))`
-/

namespace A248825.P12254291519801793467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor 2 (Int.lor 2 (-(n ^ 2 : ℤ)))

end

end A248825.P12254291519801793467

namespace A248825

/-- `-xor(2, or(2, -n²))` -/
def P12254291519801793467.Spec : Prop :=
  ∀ n, P12254291519801793467.a n = A248825 n

end A248825

/-! ## A248825.P16916681781589194777

`or(n², and(2, -n²))`
-/

namespace A248825.P16916681781589194777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n ^ 2 : ℤ) (Int.land 2 (-(n ^ 2 : ℤ)))

end

end A248825.P16916681781589194777

namespace A248825

/-- `or(n², and(2, -n²))` -/
def P16916681781589194777.Spec : Prop :=
  ∀ n, P16916681781589194777.a n = A248825 n

end A248825

/-! ## A248825.P9232889186247757085

`∑[a(n-2)+4]` with `a(0)=0, a(1)=3, a(2)=1`
-/

namespace A248825.P9232889186247757085
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 3, 1] fun n f1 =>
  f1 (n - 2) + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A248825.P9232889186247757085

namespace A248825

/-- `∑[a(n-2)+4]` -/
def P9232889186247757085.Spec : Prop :=
  ∀ n, (P9232889186247757085.a n : ℤ) = A248825 n

end A248825

/-! ## A248825.P12529225836041494995

`∑[∑[4-a(n-1)]]` with `a(0)=0, a(1)=3, a(2)=-2`
-/

namespace A248825.P12529225836041494995
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 3, -2] fun n f2 =>
  4 - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A248825.P12529225836041494995

namespace A248825

/-- `∑[∑[4-a(n-1)]]` -/
def P12529225836041494995.Spec : Prop :=
  ∀ n, P12529225836041494995.a n = A248825 n

end A248825

/-! ## A248825.P15344237747613148274

`ogf((3x-2x^2+3x^3)/(1-2x+2x^3-x^4))`
-/

namespace A248825.P15344237747613148274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 3, -2, 3] [1, -2, 0, 2, -1] n

end

end A248825.P15344237747613148274

namespace A248825

/-- `ogf((3x-2x^2+3x^3)/(1-2x+2x^3-x^4))` -/
def P15344237747613148274.Spec : Prop :=
  ∀ n, P15344237747613148274.a n = A248825 n

end A248825

/-!
# A248826: Triangle read by rows: T(n,k) is the coefficient A_k in the transformation of 1 + x + x^2 + ... + x^n to the polynomial A_k*(x+k)^k for 0 <= k <= n.

The programs for A248826, there is no canonical definition to state claims against.
-/

/-! ## A248826.P5254291834868752688

`A004248(n)*A091917(comp[∑[n]])`
-/

namespace A248826.P5254291834868752688
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004248 n * A091917 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A248826.P5254291834868752688

/-! ## A248826.P9702515018482628748

`A004248(n)*A130595(comp[∑[n]])`
-/

namespace A248826.P9702515018482628748
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004248 n * A130595 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A248826.P9702515018482628748

/-! ## A248826.P17574064958499513861

`A216255(A038722(n+1))/A140756(n+1)`
-/

namespace A248826.P17574064958499513861
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A216255 (A038722 (n + 1)).toNat : ℚ) / (A140756 (n + 1) : ℚ)

end

end A248826.P17574064958499513861

/-! ## A248826.P17405584763898643914

`A003992(A061579(n))*A130595(A014132(n+1))`
-/

namespace A248826.P17405584763898643914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003992 (A061579 n).toNat * A130595 (A014132 (n + 1)).toNat

end

end A248826.P17405584763898643914

/-! ## A248826.P6678876176200921841

`A056239(A066119(n+1))*A119328(n)`
-/

namespace A248826.P6678876176200921841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A066119 (n + 1)).toNat * A119328 n

end

end A248826.P6678876176200921841

/-!
# A248827: Row sums of A187783 and A089759.

The programs for A248827, there is no canonical definition to state claims against.
-/

/-! ## A248827.P4234256079158837222

`∑[A218936(C(n, 2))]`
-/

namespace A248827.P4234256079158837222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218936 (Nat.choose n 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A248827.P4234256079158837222

/-! ## A248827.P4158071888758877692

`ceil(sqrt(A217204(2^n)))`
-/

namespace A248827.P4158071888758877692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A217204 (2 ^ n) : ℝ)⌉

end

end A248827.P4158071888758877692

/-!
# A248828: Number of 2n-length words, either empty or beginning with the first character of an n-ary alphabet, that can be built by repeatedly inserting doublets into the initially empty word.

The programs for A248828, there is no canonical definition to state claims against.
-/

/-! ## A248828.P7900800981340630321

`A294491(n)/A055340(A034856(n+1))`
-/

namespace A248828.P7900800981340630321
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A294491 n : ℚ) / (A055340 (A034856 (n + 1)).toNat : ℚ)

end

end A248828.P7900800981340630321

/-! ## A248828.P18073005990860054237

`A183134(∑[4*n])`
-/

namespace A248828.P18073005990860054237
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183134 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A248828.P18073005990860054237

/-! ## A248828.P13515477517541347508

`or(and(1, n), A183134(A046092(n)))`
-/

namespace A248828.P13515477517541347508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Nat.land 1 n : ℤ) (A183134 (A046092 n).toNat)

end

end A248828.P13515477517541347508

/-! ## A248828.P7044351903476577108

`A183134(A046092(n))^A178334(n)`
-/

namespace A248828.P7044351903476577108
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A183134 (A046092 n).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A248828.P7044351903476577108

/-! ## A248828.P16782241596302094250

`gcd(A000038(n), A183134(A046092(n)))`
-/

namespace A248828.P16782241596302094250
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A183134 (A046092 n).toNat)

end

end A248828.P16782241596302094250

/-!
# A248831: Prime sieve of the square root of 2.

The programs for A248831, there is no canonical definition to state claims against.
-/

/-! ## A248831.P12253515362246896380

`A048654(a(n-1))` with `a(0)=1, a(1)=4, a(2)=1, a(3)=6`
-/

namespace A248831.P12253515362246896380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 1, 6] fun n a =>
  A048654 (a (n - 1)).toNat

end

end A248831.P12253515362246896380

/-!
# A248832: The sum of denominators of unreduced mediants in Farey sequences of orders 1,2,..,n.

The programs for A248832, there is no canonical definition to state claims against.
-/

/-! ## A248832.P16716300431332117907

`∑[A240877(record[A025839(n)])]`
-/

namespace A248832.P16716300431332117907
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025839 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240877 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A248832.P16716300431332117907

/-! ## A248832.P13440389906210484617

`∑[A240877(record[A025906(n)])]`
-/

namespace A248832.P13440389906210484617
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025906 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240877 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A248832.P13440389906210484617

/-! ## A248832.P12541331020560028691

`∑[A240877(comp[A008606(n)])]`
-/

namespace A248832.P12541331020560028691
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008606 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240877 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A248832.P12541331020560028691

/-! ## A248832.P1275432920426341821

`∑[A240877(comp[A133754(n)])]`
-/

namespace A248832.P1275432920426341821
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133754 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240877 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A248832.P1275432920426341821

/-! ## A248832.P11229638968772939395

`∑[A240877(∑[A113515(n+1)])]`
-/

namespace A248832.P11229638968772939395
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113515 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240877 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A248832.P11229638968772939395

/-!
# A248833: The curvature of touching circles inscribed in a special way in the larger segment of circle of radius 1/6 divided by a chord of length sqrt(8/75).

The programs for A248833, the canonical program `A248833.P13160666579123285796` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A248833 has offset 0).

The definition of A248833 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A248833.P13160666579123285796

`9*a(n-1)-9*a(n-2)+a(n-3)` with `a(0)=10, a(1)=25, a(2)=160`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A248833

/-- `9*a(n-1)-9*a(n-2)+a(n-3)` -/
def P13160666579123285796.Spec : Prop :=
  ∀ n, P13160666579123285796.a n = A248833 n

theorem P13160666579123285796.correct : P13160666579123285796.Spec := by
  intro n
  simp only [A248833]

end A248833

/-! ## A248833.P6819043838969846909

`5*(2+(4-sqrt(15))^n+(4+sqrt(15))^n)/2`
-/

namespace A248833.P6819043838969846909
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  5 * ((2 + (4 - Real.sqrt (15 : ℝ)) ^ n + (4 + Real.sqrt (15 : ℝ)) ^ n) / 2)

end

end A248833.P6819043838969846909

namespace A248833

/-- `5*(2+(4-sqrt(15))^n+(4+sqrt(15))^n)/2` -/
def P6819043838969846909.Spec : Prop :=
  ∀ n, P6819043838969846909.a n = (A248833 n : ℝ)

end A248833

/-! ## A248833.P16622876722822217478

`5*A001091(n)+5`
-/

namespace A248833.P16622876722822217478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A001091 n + 5

end

end A248833.P16622876722822217478

namespace A248833

/-- `5*A001091(n)+5` -/
def P16622876722822217478.Spec : Prop :=
  ∀ n, P16622876722822217478.a n = A248833 n

end A248833

/-! ## A248833.P15323261991833229225

`5*A080871(2*n)+5`
-/

namespace A248833.P15323261991833229225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A080871 (2 * n) + 5

end

end A248833.P15323261991833229225

namespace A248833

/-- `5*A080871(2*n)+5` -/
def P15323261991833229225.Spec : Prop :=
  ∀ n, P15323261991833229225.a n = A248833 n

end A248833

/-! ## A248833.P942460566854863910

`5*(A144479(n)+A001090(n))+5`
-/

namespace A248833.P942460566854863910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (A144479 n + A001090 n) + 5

end

end A248833.P942460566854863910

namespace A248833

/-- `5*(A144479(n)+A001090(n))+5` -/
def P942460566854863910.Spec : Prop :=
  ∀ n, P942460566854863910.a n = A248833 n

end A248833

/-! ## A248833.P2184007706886234922

`lcm(5, A001090(n)-A105426(n))+5`
-/

namespace A248833.P2184007706886234922
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 5 (A001090 n - A105426 n) + 5

end

end A248833.P2184007706886234922

namespace A248833

/-- `lcm(5, A001090(n)-A105426(n))+5` -/
def P2184007706886234922.Spec : Prop :=
  ∀ n, (P2184007706886234922.a n : ℤ) = A248833 n

end A248833

/-!
# A248835: a(n) = n + A033677(n), where A033677(n) is the smallest divisor of n >= sqrt(n).

The programs for A248835, there is no canonical definition to state claims against.
-/

/-! ## A248835.P4739475529642611081

`n+1+A033677(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A248835.P4739475529642611081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + A033677 (n + 1)

end

end A248835.P4739475529642611081

/-! ## A248835.P17269937408770149382

`A162348(2*(n+1))+1+n`
-/

namespace A248835.P17269937408770149382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162348 (2 * (n + 1)) + 1 + (n : ℤ)

end

end A248835.P17269937408770149382

/-! ## A248835.P4997655774122553467

`floor(n/A033676(n+1)+n+2)`
-/

namespace A248835.P4997655774122553467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / (A033676 (n + 1) : ℚ) + (n + 2 : ℚ)⌋

end

end A248835.P4997655774122553467

/-! ## A248835.P12229768829793993094

`A033677(Δ[n²]-n)-xor(n, -1)`
-/

namespace A248835.P12229768829793993094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033677 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat - Int.xor (n : ℤ) (-1)

end

end A248835.P12229768829793993094

/-! ## A248835.P14546551016756539047

`n+1+(n+1)/A162348(Δ[n²])`
-/

namespace A248835.P14546551016756539047
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) + (n + 1 : ℚ) / (A162348 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ)

end

end A248835.P14546551016756539047

/-! ## A248835.P6413864105291355611

`sqrt(A139717(n+1)+1+n)+1+n`
-/

namespace A248835.P6413864105291355611
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A139717 (n + 1) + 1 + (n : ℤ) : ℝ) + 1 + (n : ℝ)

end

end A248835.P6413864105291355611

/-! ## A248835.P12913305682478216795

`A020725(A033677(n+1))+n`
-/

namespace A248835.P12913305682478216795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A033677 (n + 1)).toNat + (n : ℤ)

end

end A248835.P12913305682478216795

/-! ## A248835.P8250264342119588786

`n+1+A063655(n+1)-A033676(n+1)`
-/

namespace A248835.P8250264342119588786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + (A063655 (n + 1) - A033676 (n + 1))

end

end A248835.P8250264342119588786

/-! ## A248835.P10712711266572114347

`A000027(n+1)+(n+1)/A033676(n+1)`
-/

namespace A248835.P10712711266572114347
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℚ) + (n + 1 : ℚ) / (A033676 (n + 1) : ℚ)

end

end A248835.P10712711266572114347

/-! ## A248835.P11082736906333420195

`n+1+(A063655(n+1)+A056737(n+1))/2`
-/

namespace A248835.P11082736906333420195
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) + (A063655 (n + 1) + A056737 (n + 1) : ℚ) / 2

end

end A248835.P11082736906333420195

/-! ## A248835.P11386050686463359385

`n+1+(n+1)/A161906(A094820(n+1))`
-/

namespace A248835.P11386050686463359385
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) + (n + 1 : ℚ) / (A161906 (A094820 (n + 1)).toNat : ℚ)

end

end A248835.P11386050686463359385

/-! ## A248835.P13292039059359104911

`A210959(A006218(n+1))+n+1`
-/

namespace A248835.P13292039059359104911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210959 (A006218 (n + 1)).toNat + (n + 1 : ℤ)

end

end A248835.P13292039059359104911

/-! ## A248835.P4419877779862995564

`A210959(∑[A000005(n+1)])+1+n`
-/

namespace A248835.P4419877779862995564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210959 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + 1 + (n : ℤ)

end

end A248835.P4419877779862995564

/-!
# A248836: Number of length n arrays x(i), i=1..n with x(i) in 0..i and no value appearing more than 2 times.

The programs for A248836, there is no canonical definition to state claims against.
-/

/-! ## A248836.P9323813914344689084

`A225689(n+1)-A350971(n)`
-/

namespace A248836.P9323813914344689084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225689 (n + 1) - A350971 n

end

end A248836.P9323813914344689084

/-! ## A248836.P8741071521127724459

`record[gcd(A248842(n+1), A370041(n+1))]`
-/

namespace A248836.P8741071521127724459
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A248842 (n + 1)) (A370041 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A248836.P8741071521127724459

/-!
# A248837: Number of length n arrays x(i), i=1..n with x(i) in 0..i and no value appearing more than 3 times.

The programs for A248837, there is no canonical definition to state claims against.
-/

/-! ## A248837.P1102125179454037740

`A248842(∑[n+3]+1)`
-/

namespace A248837.P1102125179454037740
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248842 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A248837.P1102125179454037740

/-! ## A248837.P4149351408477476850

`lcm(2, A248842(Δ[A008778(n)]))`
-/

namespace A248837.P4149351408477476850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A248842 (f1 (n + 1) - f1 n).toNat)

end

end A248837.P4149351408477476850

/-! ## A248837.P4771410851790758217

`A033999(n)²*A248842(Δ[A008778(n)])`
-/

namespace A248837.P4771410851790758217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ 2 * A248842 (f1 (n + 1) - f1 n).toNat

end

end A248837.P4771410851790758217

/-! ## A248837.P15855070720131746598

`A248842(Δ[A008778(n)])+A000038(n+1)`
-/

namespace A248837.P15855070720131746598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248842 (f1 (n + 1) - f1 n).toNat + A000038 (n + 1)

end

end A248837.P15855070720131746598

/-! ## A248837.P2876108726213104543

`A248842(Δ[A008778(n)])+A061853(2*n+1)`
-/

namespace A248837.P2876108726213104543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248842 (f1 (n + 1) - f1 n).toNat + A061853 (2 * n + 1)

end

end A248837.P2876108726213104543

/-! ## A248837.P590963076005564780

`A248842(Δ[A008778(n)])+A008683(8*n+4)`
-/

namespace A248837.P590963076005564780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248842 (f1 (n + 1) - f1 n).toNat + A008683 (8 * n + 4)

end

end A248837.P590963076005564780

/-!
# A248838: Number of length n arrays x(i), i=1..n with x(i) in 0..i and no value appearing more than 4 times.

The programs for A248838, there is no canonical definition to state claims against.
-/

/-! ## A248838.P1596209999081173222

`A248842(A027379(n+2))`
-/

namespace A248838.P1596209999081173222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248842 (A027379 (n + 2)).toNat

end

end A248838.P1596209999081173222

/-! ## A248838.P441000258424604561

`A248842(A055998(n+2))`
-/

namespace A248838.P441000258424604561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248842 (A055998 (n + 2)).toNat

end

end A248838.P441000258424604561

/-! ## A248838.P7936283102756274336

`A248842(A155212(n)+5)`
-/

namespace A248838.P7936283102756274336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248842 (A155212 n + 5).toNat

end

end A248838.P7936283102756274336

/-! ## A248838.P4474774323706902504

`A248842(eq[3, A193592(n)])`
-/

namespace A248838.P4474774323706902504
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248842 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A248838.P4474774323706902504

/-! ## A248838.P18282592695094800333

`A248842(Δ[A006416(n+2)])`
-/

namespace A248838.P18282592695094800333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006416 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248842 (f1 (n + 1) - f1 n).toNat

end

end A248838.P18282592695094800333

/-! ## A248838.P2970806974988238710

`A248842(A052905(n+1)+2)`
-/

namespace A248838.P2970806974988238710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248842 (A052905 (n + 1) + 2).toNat

end

end A248838.P2970806974988238710

/-! ## A248838.P3964513491432677755

`A248842(Δ[A008778(n+1)]-1)`
-/

namespace A248838.P3964513491432677755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248842 (f1 (n + 1) - f1 n - 1).toNat

end

end A248838.P3964513491432677755

/-! ## A248838.P8014939003665707415

`A248842(eq[2, A057728(n+1)-2])`
-/

namespace A248838.P8014939003665707415
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248842 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A248838.P8014939003665707415

/-! ## A248838.P5678988972122048583

`A248842(eq[2, A057728(n+1)/2])`
-/

namespace A248838.P5678988972122048583
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057728 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248842 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n)

end

end A248838.P5678988972122048583

/-! ## A248838.P14640497337228358580

`A248842(A165157(A005843(n+2)))`
-/

namespace A248838.P14640497337228358580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248842 (A165157 (A005843 (n + 2)).toNat).toNat

end

end A248838.P14640497337228358580

/-!
# A248839: Number of length n arrays x(i), i=1..n with x(i) in 0..i and no value appearing more than 5 times.

The programs for A248839, there is no canonical definition to state claims against.
-/

/-! ## A248839.P1279722642506502647

`A248842(A046691(n+3))`
-/

namespace A248839.P1279722642506502647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248842 (A046691 (n + 3)).toNat

end

end A248839.P1279722642506502647

/-! ## A248839.P10890043463041939648

`A248842(eq[4, A193592(n)])`
-/

namespace A248839.P10890043463041939648
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248842 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A248839.P10890043463041939648

/-! ## A248839.P6240028306074354717

`A248842(Δ[A023545(n+1)])`
-/

namespace A248839.P6240028306074354717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248842 (f1 (n + 1) - f1 n).toNat

end

end A248839.P6240028306074354717

/-! ## A248839.P8367441309274754109

`A248842(A000096(n+4)-3)`
-/

namespace A248839.P8367441309274754109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248842 (A000096 (n + 4) - 3).toNat

end

end A248839.P8367441309274754109

/-! ## A248839.P5184832775011022508

`A248842(Δ[A006416(n+3)]-1)`
-/

namespace A248839.P5184832775011022508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006416 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248842 (f1 (n + 1) - f1 n - 1).toNat

end

end A248839.P5184832775011022508

/-! ## A248839.P5636423797539254283

`record[A248842(A014132(A027379(n)))]`
-/

namespace A248839.P5636423797539254283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248842 (A014132 (A027379 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A248839.P5636423797539254283

/-!
# A248840: Number of length n arrays x(i), i=1..n with x(i) in 0..i and no value appearing more than 6 times.

The programs for A248840, there is no canonical definition to state claims against.
-/

/-! ## A248840.P12299144999127984641

`A248842(A052905(n+3))`
-/

namespace A248840.P12299144999127984641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248842 (A052905 (n + 3)).toNat

end

end A248840.P12299144999127984641

/-! ## A248840.P15359380009242226102

`A248842(eq[3, A219347(n)])`
-/

namespace A248840.P15359380009242226102
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248842 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A248840.P15359380009242226102

/-! ## A248840.P1171083512145556531

`A248842(A055999(n+3)+1)`
-/

namespace A248840.P1171083512145556531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248842 (A055999 (n + 3) + 1).toNat

end

end A248840.P1171083512145556531

/-! ## A248840.P16614435890656534311

`A248842(A155212(n+2)+3)`
-/

namespace A248840.P16614435890656534311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248842 (A155212 (n + 2) + 3).toNat

end

end A248840.P16614435890656534311

/-! ## A248840.P12537964271648811363

`A248842(A055998(n+4)-2)`
-/

namespace A248840.P12537964271648811363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248842 (A055998 (n + 4) - 2).toNat

end

end A248840.P12537964271648811363

/-! ## A248840.P193111304447533603

`A248842(A034856(n+5)-3)`
-/

namespace A248840.P193111304447533603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248842 (A034856 (n + 5) - 3).toNat

end

end A248840.P193111304447533603

/-! ## A248840.P15610740282016520510

`A248842(A000096(n+5)-4)`
-/

namespace A248840.P15610740282016520510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248842 (A000096 (n + 5) - 4).toNat

end

end A248840.P15610740282016520510

/-! ## A248840.P9976871062401307142

`A248842(A000217(n+6)-5)`
-/

namespace A248840.P9976871062401307142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248842 (A000217 (n + 6) - 5).toNat

end

end A248840.P9976871062401307142

/-! ## A248840.P4481952341121918964

`A248842(A000124(n+6)-6)`
-/

namespace A248840.P4481952341121918964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248842 (A000124 (n + 6) - 6).toNat

end

end A248840.P4481952341121918964

/-! ## A248840.P10197793299610973466

`A248842(Δ[A023545(n+2)]-1)`
-/

namespace A248840.P10197793299610973466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248842 (f1 (n + 1) - f1 n - 1).toNat

end

end A248840.P10197793299610973466

/-!
# A248841: Number of length n arrays x(i), i=1..n with x(i) in 0..i and no value appearing more than 7 times.

The programs for A248841, there is no canonical definition to state claims against.
-/

/-! ## A248841.P4572781450735346232

`A248842(A055999(n+4))`
-/

namespace A248841.P4572781450735346232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248842 (A055999 (n + 4)).toNat

end

end A248841.P4572781450735346232

/-! ## A248841.P8708147842241547571

`A248842(eq[4, A219347(n)])`
-/

namespace A248841.P8708147842241547571
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248842 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A248841.P8708147842241547571

/-! ## A248841.P18257099109237353945

`A248842(eq[6, A193592(n)])`
-/

namespace A248841.P18257099109237353945
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248842 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A248841.P18257099109237353945

/-! ## A248841.P9266361382234494547

`A248842(eq[32, A057728(n+1)])`
-/

namespace A248841.P9266361382234494547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  32

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248842 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A248841.P9266361382234494547

/-! ## A248841.P3524364758766253239

`A248842(A000096(n+5)+n+2)`
-/

namespace A248841.P3524364758766253239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248842 (A000096 (n + 5) + (n + 2 : ℤ)).toNat

end

end A248841.P3524364758766253239

/-!
# A248844: Triangle read by rows: T(m,n) = number of ways of distributing n distinguishable balls into m distinguishable bins of size 2 where empty bins are permitted (m >= 1, 1 <= n <= 2m).

The programs for A248844, there is no canonical definition to state claims against.
-/

/-! ## A248844.P6264331774738773522

`A141765(comp[n²])`
-/

namespace A248844.P6264331774738773522
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141765 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A248844.P6264331774738773522

/-! ## A248844.P3515343468615371387

`or(char[1], A141765(A000037(n+1)))`
-/

namespace A248844.P3515343468615371387
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A141765 (A000037 (n + 1)).toNat)

end

end A248844.P3515343468615371387

/-! ## A248844.P7296705213508112133

`A141765(A000037(n+1))%A000051(n)`
-/

namespace A248844.P7296705213508112133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A141765 (A000037 (n + 1)).toNat) (A000051 n)

end

end A248844.P7296705213508112133

/-! ## A248844.P6878936148016819948

`A007318(∑[n])*A141765(A000037(n+1))`
-/

namespace A248844.P6878936148016819948
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A141765 (A000037 (n + 1)).toNat

end

end A248844.P6878936148016819948

/-! ## A248844.P13040905332307725298

`A141765(A000037(n+1))+A000035(2*n)`
-/

namespace A248844.P13040905332307725298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141765 (A000037 (n + 1)).toNat + A000035 (2 * n)

end

end A248844.P13040905332307725298

/-!
# A248846: Triangle read by rows: T(m,n) = number of ways of distributing n distinguishable balls into m distinguishable bins of size 4 where empty bins are permitted (m >= 1, 1 <= n <= 4m).

The programs for A248846, there is no canonical definition to state claims against.
-/

/-! ## A248846.P14354756644287735338

`∑[A353853(A036653(n))]-n`
-/

namespace A248846.P14354756644287735338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353853 (A036653 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A248846.P14354756644287735338

/-!
# A248847: Triangle read by rows: T(m,n) = number of ways of distributing n distinguishable balls into m distinguishable bins of size 5 where empty bins are permitted (m >= 1, 1 <= n <= 5m).

The programs for A248847, there is no canonical definition to state claims against.
-/

/-! ## A248847.P12437317077241737296

`A305929(2*a(n-1))` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=1, a(5)=2, a(6)=4, a(7)=8, a(8)=16, a(9)=32`
-/

namespace A248847.P12437317077241737296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 1, 1, 2, 4, 8, 16, 32] fun n a =>
  A305929 (2 * a (n - 1)).toNat

end

end A248847.P12437317077241737296

/-! ## A248847.P13502531346441881163

`A102513(A023421(n))`
-/

namespace A248847.P13502531346441881163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102513 (A023421 n).toNat

end

end A248847.P13502531346441881163

/-! ## A248847.P9849578168628101422

`A114149(A023433(n))`
-/

namespace A248847.P9849578168628101422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114149 (A023433 n).toNat

end

end A248847.P9849578168628101422

/-! ## A248847.P11390443708782098540

`A114149(A190168(n))`
-/

namespace A248847.P11390443708782098540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114149 (A190168 n).toNat

end

end A248847.P11390443708782098540

/-! ## A248847.P3004855693293195880

`A338265(A344492(n))`
-/

namespace A248847.P3004855693293195880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338265 (A344492 n).toNat

end

end A248847.P3004855693293195880

/-!
# A248848: Norm of coefficients in the expansion of 1/(1 - 3*x - I*x^2), where I^2=-1.

The programs for A248848, the canonical program `A248848.P9923599317174150526` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A248848 has offset 0).

The definition of A248848 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A248848.P9923599317174150526

`9*a(n-1)+2*a(n-2)+9*a(n-3)-a(n-4)` with `a(0)=1, a(1)=9, a(2)=82, a(3)=765`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A248848

/-- `9*a(n-1)+2*a(n-2)+9*a(n-3)-a(n-4)` -/
def P9923599317174150526.Spec : Prop :=
  ∀ n, P9923599317174150526.a n = A248848 n

theorem P9923599317174150526.correct : P9923599317174150526.Spec := by
  intro n
  simp only [A248848]

end A248848

/-!
# A248851: a(n) = ( 2*n*(2*n^2 + 9*n + 14) + (-1)^n - 1 )/16.

The programs for A248851, the canonical program `A248851.P12610818021950575249` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A248851 has offset 0).

The definition of A248851 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*n*(2*n²+9*n+14)+(-1)^n-1)/16` (program `A248851.P17467388933080273269`, by `A248851.P17467388933080273269.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A248851.P17467388933080273269

`(2*n*(2*n²+9*n+14)+(-1)^n-1)/16`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A248851.P17467388933080273269
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * (n * (2 * n ^ 2 + 9 * n + 14)) : ℤ) + (-1) ^ n - 1 : ℚ) / 16

end

end A248851.P17467388933080273269

namespace A248851

/-- `(2*n*(2*n²+9*n+14)+(-1)^n-1)/16` -/
def P17467388933080273269.Spec : Prop :=
  ∀ n, P17467388933080273269.a n = (A248851 n : ℚ)

theorem P17467388933080273269.correct : P17467388933080273269.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A248851, Nat.add_sub_cancel, A248851.P17467388933080273269.a, A248851.P12610818021950575249.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A248851, Nat.add_sub_cancel, A248851.P17467388933080273269.a, A248851.P12610818021950575249.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A248851

/-! ## A248851.P12610818021950575249

`3*a(n-1)-2*a(n-2)-2*a(n-3)+3*a(n-4)-a(n-5)` with `a(0)=0, a(1)=3, a(2)=10, a(3)=22, a(4)=41`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A248851

/-- `3*a(n-1)-2*a(n-2)-2*a(n-3)+3*a(n-4)-a(n-5)` -/
def P12610818021950575249.Spec : Prop :=
  ∀ n, P12610818021950575249.a n = A248851 n

theorem P12610818021950575249.correct : P12610818021950575249.Spec := by
  intro n
  simp only [A248851]

end A248851

/-! ## A248851.P15335821880242541730

`∑[∑[a(n-2)+3]]` with `a(0)=0, a(1)=3, a(2)=4, a(3)=5`
-/

namespace A248851.P15335821880242541730
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 3, 4, 5] fun n f2 =>
  f2 (n - 2) + 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A248851.P15335821880242541730

namespace A248851

/-- `∑[∑[a(n-2)+3]]` -/
def P15335821880242541730.Spec : Prop :=
  ∀ n, (P15335821880242541730.a n : ℤ) = A248851 n

end A248851

/-! ## A248851.P7024381538313121018

`∑[∑[∑[3-a(n-1)]]]` with `a(0)=0, a(1)=3, a(2)=1, a(3)=1`
-/

namespace A248851.P7024381538313121018
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.rec [0, 3, 1, 1] fun n f3 =>
  3 - f3 (n - 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A248851.P7024381538313121018

namespace A248851

/-- `∑[∑[∑[3-a(n-1)]]]` -/
def P7024381538313121018.Spec : Prop :=
  ∀ n, P7024381538313121018.a n = A248851 n

end A248851

/-! ## A248851.P16563523136347731937

`∑[A077043(n+1)]-1`
-/

namespace A248851.P16563523136347731937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077043 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A248851.P16563523136347731937

namespace A248851

/-- `∑[A077043(n+1)]-1` -/
def P16563523136347731937.Spec : Prop :=
  ∀ n, P16563523136347731937.a n = A248851 n

end A248851

/-! ## A248851.P8034583577293879149

`∑[∑[A001651(n+1)]]-1`
-/

namespace A248851.P8034583577293879149
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A248851.P8034583577293879149

namespace A248851

/-- `∑[∑[A001651(n+1)]]-1` -/
def P8034583577293879149.Spec : Prop :=
  ∀ n, P8034583577293879149.a n = A248851 n

end A248851

/-! ## A248851.P17007474392409761640

`∑[∑[comp[3*n]]%A001847(n)]`
-/

namespace A248851.P17007474392409761640
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) (A001847 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A248851.P17007474392409761640

namespace A248851

/-- `∑[∑[comp[3*n]]%A001847(n)]` -/
def P17007474392409761640.Spec : Prop :=
  ∀ n, P17007474392409761640.a n = A248851 n

end A248851

/-! ## A248851.P8262116857474997903

`∑[(n+1)²-A076921(n+1)]`
-/

namespace A248851.P8262116857474997903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A076921 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A248851.P8262116857474997903

namespace A248851

/-- `∑[(n+1)²-A076921(n+1)]` -/
def P8262116857474997903.Spec : Prop :=
  ∀ n, P8262116857474997903.a n = A248851 n

end A248851

/-! ## A248851.P2393033739312337579

`A002717(n)+A000096(n)`
-/

namespace A248851.P2393033739312337579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002717 n + A000096 n

end

end A248851.P2393033739312337579

namespace A248851

/-- `A002717(n)+A000096(n)` -/
def P2393033739312337579.Spec : Prop :=
  ∀ n, P2393033739312337579.a n = A248851 n

end A248851

/-! ## A248851.P10139256196236059767

`A045947(n)+A005563(n)`
-/

namespace A248851.P10139256196236059767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045947 n + A005563 n

end

end A248851.P10139256196236059767

namespace A248851

/-- `A045947(n)+A005563(n)` -/
def P10139256196236059767.Spec : Prop :=
  ∀ n, P10139256196236059767.a n = A248851 n

end A248851

/-! ## A248851.P2904902093826995969

`A007518(n+1)+A004526(n)`
-/

namespace A248851.P2904902093826995969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007518 (n + 1) + A004526 n

end

end A248851.P2904902093826995969

namespace A248851

/-- `A007518(n+1)+A004526(n)` -/
def P2904902093826995969.Spec : Prop :=
  ∀ n, P2904902093826995969.a n = A248851 n

end A248851

/-! ## A248851.P12174899823498158086

`A274248(n+1)-A056520(n)`
-/

namespace A248851.P12174899823498158086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274248 (n + 1) - A056520 n

end

end A248851.P12174899823498158086

namespace A248851

/-- `A274248(n+1)-A056520(n)` -/
def P12174899823498158086.Spec : Prop :=
  ∀ n, P12174899823498158086.a n = A248851 n

end A248851

/-! ## A248851.P1113956369225101637

`∑[A077043(A163300(n+1)/2)]`
-/

namespace A248851.P1113956369225101637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077043 (SequenceMachineLib.roundAway ((A163300 (n + 1) : ℚ) / 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A248851.P1113956369225101637

namespace A248851

/-- `∑[A077043(A163300(n+1)/2)]` -/
def P1113956369225101637.Spec : Prop :=
  ∀ n, P1113956369225101637.a n = A248851 n

end A248851

/-! ## A248851.P7145456345949110296

`A045947(n+1)+A024206(n+1)`
-/

namespace A248851.P7145456345949110296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045947 (n + 1) + A024206 (n + 1)

end

end A248851.P7145456345949110296

namespace A248851

/-- `A045947(n+1)+A024206(n+1)` -/
def P7145456345949110296.Spec : Prop :=
  ∀ n, P7145456345949110296.a n = A248851 n

end A248851

/-! ## A248851.P14973678353218849825

`abs(1-∑[A249547(n)-A000217(n)+n+1])`
-/

namespace A248851.P14973678353218849825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249547 n - A000217 n + (n : ℤ) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - ∑ j ∈ Finset.range (n + 1), f1 j|

end

end A248851.P14973678353218849825

namespace A248851

/-- `abs(1-∑[A249547(n)-A000217(n)+n+1])` -/
def P14973678353218849825.Spec : Prop :=
  ∀ n, P14973678353218849825.a n = A248851 n

end A248851

/-! ## A248851.P5961730603170538210

`A002620(n+1)+A024206(n+1)+A002717(n)`
-/

namespace A248851.P5961730603170538210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (n + 1) + (A024206 (n + 1) + A002717 n)

end

end A248851.P5961730603170538210

namespace A248851

/-- `A002620(n+1)+A024206(n+1)+A002717(n)` -/
def P5961730603170538210.Spec : Prop :=
  ∀ n, P5961730603170538210.a n = A248851 n

end A248851

/-! ## A248851.P6366302844959983498

`A019298(n+1)-1`
-/

namespace A248851.P6366302844959983498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019298 (n + 1) - 1

end

end A248851.P6366302844959983498

namespace A248851

/-- `A019298(n+1)-1` -/
def P6366302844959983498.Spec : Prop :=
  ∀ n, P6366302844959983498.a n = A248851 n

end A248851

/-! ## A248851.P3828836636418734763

`Δ[A011863(n+1)]-1`
-/

namespace A248851.P3828836636418734763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011863 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A248851.P3828836636418734763

namespace A248851

/-- `Δ[A011863(n+1)]-1` -/
def P3828836636418734763.Spec : Prop :=
  ∀ n, P3828836636418734763.a n = A248851 n

end A248851

/-! ## A248851.P11389657533975747789

`∑[A331952(n+1)]+n`
-/

namespace A248851.P11389657533975747789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331952 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A248851.P11389657533975747789

namespace A248851

/-- `∑[A331952(n+1)]+n` -/
def P11389657533975747789.Spec : Prop :=
  ∀ n, P11389657533975747789.a n = A248851 n

end A248851

/-! ## A248851.P778496914792957673

`A034828(n+1)+A144065(n)+A034828(n+1)`
-/

namespace A248851.P778496914792957673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034828 (n + 1) + (A144065 n + A034828 (n + 1))

end

end A248851.P778496914792957673

namespace A248851

/-- `A034828(n+1)+A144065(n)+A034828(n+1)` -/
def P778496914792957673.Spec : Prop :=
  ∀ n, P778496914792957673.a n = A248851 n

end A248851

/-!
# A248854: Numbers n such that n - pi(n) is a power of 10.

The programs for A248854, there is no canonical definition to state claims against.
-/

/-! ## A248854.P4590656933180219432

`lt[C(A328830(10*A062298(n+1)), 3), 3]+1`
-/

namespace A248854.P4590656933180219432
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A328830 (10 * A062298 (n + 1)).toNat).toNat 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A248854.P4590656933180219432

/-! ## A248854.P15778071648342318613

`A085731((lcm(n, a(n-1)-n)+1+n)²)` with `a(0)=1, a(1)=2`
-/

namespace A248854.P15778071648342318613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A085731 ((Int.lcm (n : ℤ) (a (n - 1) - (n : ℤ)) + 1 + n) ^ 2)

end

end A248854.P15778071648342318613

/-!
# A248857: Composite numbers n such that n - phi(n) is a power of 10.

The programs for A248857, there is no canonical definition to state claims against.
-/

/-! ## A248857.P10048368926632114437

`∩[A066663(n+1), A286130(n+1)]`
-/

namespace A248857.P10048368926632114437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066663 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286130 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A248857.P10048368926632114437

/-! ## A248857.P5028579493249075173

`∩[A067206(n+1), A286130(n+1)]`
-/

namespace A248857.P5028579493249075173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067206 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286130 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A248857.P5028579493249075173

/-! ## A248857.P12401905700139544631

`A066663(A047227(n+1)%A280102(n))`
-/

namespace A248857.P12401905700139544631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066663 (Int.tmod (A047227 (n + 1)) (A280102 n)).toNat

end

end A248857.P12401905700139544631

/-! ## A248857.P13139258781319594522

`∩[A066663(n+1), A336237(n+1)]`
-/

namespace A248857.P13139258781319594522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066663 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336237 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A248857.P13139258781319594522

/-!
# A248860: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 483", based on the 5-celled von Neumann neighborhood.

The programs for A248860, there is no canonical definition to state claims against.
-/

/-! ## A248860.P4901211328550171594

`A272346(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A248860.P4901211328550171594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A272346 (n - 1) + a (n - 1)

end

end A248860.P4901211328550171594

/-! ## A248860.P17234537623074747547

`Δ[A267829(n)]-A272346(n)`
-/

namespace A248860.P17234537623074747547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267829 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A272346 n

end

end A248860.P17234537623074747547

/-! ## A248860.P15043117979421697051

`A267829(n+1)-(A272346(n)+A267829(n))`
-/

namespace A248860.P15043117979421697051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267829 (n + 1) - (A272346 n + A267829 n)

end

end A248860.P15043117979421697051

/-! ## A248860.P16148313066237522150

`∑[A272346(A005843(n)-n)]+1-A272346(n)`
-/

namespace A248860.P16148313066237522150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272346 (A005843 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A272346 n)

end

end A248860.P16148313066237522150

/-! ## A248860.P16268960267976040710

`A000027(∑[A272346(n)]+1-A272346(n))`
-/

namespace A248860.P16268960267976040710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272346 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (∑ j ∈ Finset.range (n + 1), f1 j + (1 - A272346 n)).toNat

end

end A248860.P16268960267976040710

/-! ## A248860.P4797351723174109895

`A267829(A131818(2*(n²+n)+1))%(A272346(n)+A267829(n))`
-/

namespace A248860.P4797351723174109895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A267829 (A131818 (2 * (n ^ 2 + n) + 1)).toNat) (A272346 n + A267829 n)

end

end A248860.P4797351723174109895

/-!
# A248861: Numbers k such that phi(k)^phi(k) == 1 (mod sigma(k)).

The programs for A248861, there is no canonical definition to state claims against.
-/

/-! ## A248861.P3344136865934837916

`A303297(A330514(n))*A331873(n+1)`
-/

namespace A248861.P3344136865934837916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303297 (A330514 n).toNat * A331873 (n + 1)

end

end A248861.P3344136865934837916

/-! ## A248861.P3748988546923156421

`A010786(2*n)%A141214(A007335(n+1))`
-/

namespace A248861.P3748988546923156421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A010786 (2 * n)) (A141214 (A007335 (n + 1)).toNat)

end

end A248861.P3748988546923156421

/-!
# A248862: Primes p such that 900*p^2 is in the sequence A248861.

The programs for A248862, there is no canonical definition to state claims against.
-/

/-! ## A248862.P10286024615047556764

`p?[a(and(n, n-1))-A186950(n)]` with `a(0)=-1, a(1)=2`
-/

namespace A248862.P10286024615047556764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-1, 2] fun n f1 =>
  f1 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat - A186950 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A248862.P10286024615047556764

/-!
# A248863: Table of bit patterns: The bits of A011545(n) -- approximations to Pi -- placed into row n in the order MSB to LSB.

The programs for A248863, there is no canonical definition to state claims against.
-/

/-! ## A248863.P16342074244804282189

`A284656(A187577(n+1)+A147858(n))`
-/

namespace A248863.P16342074244804282189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284656 (A187577 (n + 1) + A147858 n).toNat

end

end A248863.P16342074244804282189

/-! ## A248863.P2469259380271997313

`A079559(A109471(n)-A096661(n))`
-/

namespace A248863.P2469259380271997313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079559 (A109471 n - A096661 n).toNat

end

end A248863.P2469259380271997313

/-! ## A248863.P6358422368379658773

`A365545(A213362(n+1)%A175773(n))`
-/

namespace A248863.P6358422368379658773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365545 (Int.tmod (A213362 (n + 1)) (A175773 n)).toNat

end

end A248863.P6358422368379658773

/-! ## A248863.P15472411134485283364

`A266786(A360551(n+2)+A122176(2*n+3))`
-/

namespace A248863.P15472411134485283364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266786 (A360551 (n + 2) + A122176 (2 * n + 3)).toNat

end

end A248863.P15472411134485283364

/-! ## A248863.P18357714240256027479

`C(A276088(n), A002262(A298902(3*(n+1))))`
-/

namespace A248863.P18357714240256027479
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A276088 n).toNat (A002262 (A298902 (3 * (n + 1))).toNat).toNat

end

end A248863.P18357714240256027479

/-!
# A248864: Minimal perimeter of an n-dollar construction consisting of 3-dollar triangles and 4-dollar squares.

The programs for A248864, there is no canonical definition to state claims against.
-/

/-! ## A248864.P633484412896908306

`A076622(A043909(2*n+1)*A066990(n+4))`
-/

namespace A248864.P633484412896908306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076622 (A043909 (2 * n + 1) * A066990 (n + 4)).toNat

end

end A248864.P633484412896908306

/-!
# A248865: Primes p that set a new record for the number of bases 1 < b < p for which p is a base-b Wieferich prime.

The programs for A248865, there is no canonical definition to state claims against.
-/

/-! ## A248865.P3660282087046133892

`A175932(lt[A092398(n), A030000(n)])`
-/

namespace A248865.P3660282087046133892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092398 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030000 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175932 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A248865.P3660282087046133892

/-! ## A248865.P2146779307277226123

`A175932(lt[A175932(n), A041358(n)])`
-/

namespace A248865.P2146779307277226123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175932 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041358 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175932 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A248865.P2146779307277226123

/-! ## A248865.P10803572205787943669

`A175932(A175298(n)+A093348(n+1))`
-/

namespace A248865.P10803572205787943669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175932 (A175298 n + A093348 (n + 1)).toNat

end

end A248865.P10803572205787943669

/-!
# A248868: Exponents n that make k! < k^n < (k+1)! hold true for some integer k > 1, in increasing order by k, then n (if applicable).

The programs for A248868, there is no canonical definition to state claims against.
-/

/-! ## A248868.P17003387574435022937

`A060151(n+1)+char[2*(2-n)]`
-/

namespace A248868.P17003387574435022937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (2 - (n : ℤ))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060151 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A248868.P17003387574435022937

/-! ## A248868.P1552108152686855269

`A060151(ceil(sqrt(A027691(n))))`
-/

namespace A248868.P1552108152686855269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060151 ⌈Real.sqrt (A027691 n : ℝ)⌉.toNat

end

end A248868.P1552108152686855269

/-! ## A248868.P12144300057775979496

`A074184(n+1)+A000007(A049615(n))`
-/

namespace A248868.P12144300057775979496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074184 (n + 1) + A000007 (A049615 n).toNat

end

end A248868.P12144300057775979496

/-! ## A248868.P7193913958682431281

`A169611(A335285(n+2))+A074184(n+1)`
-/

namespace A248868.P7193913958682431281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169611 (A335285 (n + 2)).toNat + A074184 (n + 1)

end

end A248868.P7193913958682431281

/-! ## A248868.P8246986333274861590

`A337345(A046388(3*n+2))+A074184(n+1)`
-/

namespace A248868.P8246986333274861590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337345 (A046388 (3 * n + 2)).toNat + A074184 (n + 1)

end

end A248868.P8246986333274861590

/-! ## A248868.P6661048906987765443

`A209229(A298990(n))+A074184(n+1)`
-/

namespace A248868.P6661048906987765443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 (A298990 n).toNat + A074184 (n + 1)

end

end A248868.P6661048906987765443

/-!
# A248869: Satisfies Sum_{n>=0} a(n)*x^n = x * Product_{n>=0} (1 + x^n + x^(2*n))^a(n).

The programs for A248869, there is no canonical definition to state claims against.
-/

/-! ## A248869.P4545649999044005725

`A318757(∑[n+3])`
-/

namespace A248869.P4545649999044005725
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318757 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A248869.P4545649999044005725

/-! ## A248869.P972401472657597018

`A057427(n)*A318757(A055998(n+1))`
-/

namespace A248869.P972401472657597018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A318757 (A055998 (n + 1)).toNat

end

end A248869.P972401472657597018

/-! ## A248869.P2919154958916745582

`A318757(A027379(n+1))/A054977(n)`
-/

namespace A248869.P2919154958916745582
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A318757 (A027379 (n + 1)).toNat : ℚ) / (A054977 n : ℚ)

end

end A248869.P2919154958916745582

/-! ## A248869.P15363742640209613111

`A318757(A027379(n+1))%A000244(n)`
-/

namespace A248869.P15363742640209613111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A318757 (A027379 (n + 1)).toNat) (A000244 n)

end

end A248869.P15363742640209613111

/-! ## A248869.P5858882545658236263

`A318757(A055998(n+1))%A000244(n)`
-/

namespace A248869.P5858882545658236263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A318757 (A055998 (n + 1)).toNat) (A000244 n)

end

end A248869.P5858882545658236263

/-! ## A248869.P14841319710508579192

`A318757(A027379(n+1))+A000007(n+1)`
-/

namespace A248869.P14841319710508579192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318757 (A027379 (n + 1)).toNat + A000007 (n + 1)

end

end A248869.P14841319710508579192

/-! ## A248869.P12869687670927062262

`A318757(A055998(n+1))+A000007(n+1)`
-/

namespace A248869.P12869687670927062262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318757 (A055998 (n + 1)).toNat + A000007 (n + 1)

end

end A248869.P12869687670927062262

/-! ## A248869.P12278275871041381883

`A000034(2*n)*A318757(A055998(n+1))`
-/

namespace A248869.P12278275871041381883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n) * A318757 (A055998 (n + 1)).toNat

end

end A248869.P12278275871041381883

/-!
# A248870: Satisfies Sum_{n>=0} a(n)*x^n = x / Product_{n>=0} (1 - x^n/(1 - x^n))^a(n).

The programs for A248870, there is no canonical definition to state claims against.
-/

/-! ## A248870.P2172258674224336687

`A124344(A078213(n+1))-A257389(n)`
-/

namespace A248870.P2172258674224336687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124344 (A078213 (n + 1)).toNat - A257389 n

end

end A248870.P2172258674224336687

/-! ## A248870.P3788405935919645698

`∑[A377923(n)]-A320656(n+3)`
-/

namespace A248870.P3788405935919645698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377923 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A320656 (n + 3)

end

end A248870.P3788405935919645698

/-! ## A248870.P4835533182767105093

`∑[xor(A002877(n+1), A028242(n))]`
-/

namespace A248870.P4835533182767105093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A002877 (n + 1)) (A028242 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A248870.P4835533182767105093

/-! ## A248870.P993750578617578152

`A279211(A161130(n))+char[or(1, n)]`
-/

namespace A248870.P993750578617578152
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279211 (A161130 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A248870.P993750578617578152

/-!
# A248871: Coefficients in asymptotic expansion of sequence A107895.

The programs for A248871, there is no canonical definition to state claims against.
-/

/-! ## A248871.P487387645493291322

`A036669(n)+A028310(A199746(n))`
-/

namespace A248871.P487387645493291322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036669 n + A028310 (A199746 n).toNat

end

end A248871.P487387645493291322

/-! ## A248871.P8645908809832431462

`A199746(n)+A167383(A145270(n))`
-/

namespace A248871.P8645908809832431462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199746 n + A167383 (A145270 n).toNat

end

end A248871.P8645908809832431462

/-! ## A248871.P1041648066991011315

`A080599(n)-A232747(A005846(n+1))`
-/

namespace A248871.P1041648066991011315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080599 n - A232747 (A005846 (n + 1)).toNat

end

end A248871.P1041648066991011315

/-!
# A248873: a(n) = floor(e^(n+1) - e^n).

The programs for A248873, the canonical program `A248873.P14227927793474159212` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A248873 has offset 0).

The definition of A248873 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A248873.P14227927793474159212

`floor(exp(n+1)-exp(n))`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A248873

/-- `floor(exp(n+1)-exp(n))` -/
def P14227927793474159212.Spec : Prop :=
  ∀ n, P14227927793474159212.a n = A248873 n

theorem P14227927793474159212.correct : P14227927793474159212.Spec := by
  intro n
  simp only [A248873]

end A248873

/-! ## A248873.P15732394591390863370

`A110958(n)+A000045(n)`
-/

namespace A248873.P15732394591390863370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110958 n + A000045 n

end

end A248873.P15732394591390863370

namespace A248873

/-- `A110958(n)+A000045(n)` -/
def P15732394591390863370.Spec : Prop :=
  ∀ n, P15732394591390863370.a n = A248873 n

end A248873

/-! ## A248873.P16160114876179565851

`A212804(n+1)+A110958(n)`
-/

namespace A248873.P16160114876179565851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (n + 1) + A110958 n

end

end A248873.P16160114876179565851

namespace A248873

/-- `A212804(n+1)+A110958(n)` -/
def P16160114876179565851.Spec : Prop :=
  ∀ n, P16160114876179565851.a n = A248873 n

end A248873

/-! ## A248873.P3631057340860168399

`A001611(n)+A110958(n)-1`
-/

namespace A248873.P3631057340860168399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 n + (A110958 n - 1)

end

end A248873.P3631057340860168399

namespace A248873

/-- `A001611(n)+A110958(n)-1` -/
def P3631057340860168399.Spec : Prop :=
  ∀ n, P3631057340860168399.a n = A248873 n

end A248873

/-! ## A248873.P10947371615883190254

`A110958(n)+A157725(n)-2`
-/

namespace A248873.P10947371615883190254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110958 n + (A157725 n - 2)

end

end A248873.P10947371615883190254

namespace A248873

/-- `A110958(n)+A157725(n)-2` -/
def P10947371615883190254.Spec : Prop :=
  ∀ n, P10947371615883190254.a n = A248873 n

end A248873

/-! ## A248873.P4593738588329095942

`abs(floor(Δ[2*cosh(n)]))`
-/

namespace A248873.P4593738588329095942
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  2 * Real.cosh (n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |⌊f1 (n + 1) - f1 n⌋|

end

end A248873.P4593738588329095942

namespace A248873

/-- `abs(floor(Δ[2*cosh(n)]))` -/
def P4593738588329095942.Spec : Prop :=
  ∀ n, P4593738588329095942.a n = A248873 n

end A248873

/-!
# A248875: First n elements of the Kolakoski sequence read as a ternary number.

The programs for A248875, the canonical program `A248875.P14786987382872610295` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A248875 has offset 0).

The definition of A248875 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A248875.P14555310479137774424

`A000002(n)+3*a(n-1)` with `a(0)=0`
-/

namespace A248875.P14555310479137774424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A000002 n + 3 * a (n - 1)

end

end A248875.P14555310479137774424

namespace A248875

/-- `A000002(n)+3*a(n-1)` -/
def P14555310479137774424.Spec : Prop :=
  ∀ n, P14555310479137774424.a n = A248875 n

end A248875

/-! ## A248875.P14786987382872610295

`gcd(2, A156253(n))+3*a(n-1)` with `a(0)=0`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A248875

/-- `gcd(2, A156253(n))+3*a(n-1)` -/
def P14786987382872610295.Spec : Prop :=
  ∀ n, (P14786987382872610295.a n : ℤ) = A248875 n

theorem P14786987382872610295.correct : P14786987382872610295.Spec := by
  intro n
  simp only [A248875]

end A248875

/-! ## A248875.P8304518969870904703

`record[A025480(A325056(n))]`
-/

namespace A248875.P8304518969870904703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A325056 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A248875.P8304518969870904703

namespace A248875

/-- `record[A025480(A325056(n))]` -/
def P8304518969870904703.Spec : Prop :=
  ∀ n, P8304518969870904703.a n = A248875 n

end A248875

/-! ## A248875.P3728428831248000930

`lt[A076042(2*n), A067259(n+1)]`
-/

namespace A248875.P3728428831248000930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076042 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067259 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A248875.P3728428831248000930

namespace A248875

/-- `lt[A076042(2*n), A067259(n+1)]` -/
def P3728428831248000930.Spec : Prop :=
  ∀ n, (P3728428831248000930.a n : ℤ) = A248875 n

end A248875

/-! ## A248875.P6674803196607949957

`A308358(A123109(n)+A035441(n+1))`
-/

namespace A248875.P6674803196607949957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308358 (A123109 n + A035441 (n + 1)).toNat

end

end A248875.P6674803196607949957

namespace A248875

/-- `A308358(A123109(n)+A035441(n+1))` -/
def P6674803196607949957.Spec : Prop :=
  ∀ n, P6674803196607949957.a n = A248875 n

end A248875

/-!
# A248876: G.f. satisfies: A(x) = exp( Sum_{n>=1} [Sum_{k=0..3*n} T(n,k)^2 * x^k] / A(x)^n * x^n/n ) where T(n,k) equals the coefficient of x^k in (1+x+x^2+x^3)^n.

The programs for A248876, there is no canonical definition to state claims against.
-/

/-! ## A248876.P7102272430513084775

`A067085(A294281(n))`
-/

namespace A248876.P7102272430513084775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067085 (A294281 n).toNat

end

end A248876.P7102272430513084775

/-! ## A248876.P2896225977914606693

`A063772(A365693(n))`
-/

namespace A248876.P2896225977914606693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063772 (A365693 n).toNat

end

end A248876.P2896225977914606693

/-! ## A248876.P18279814783821028506

`A137735(Δ[A050253(n)²])`
-/

namespace A248876.P18279814783821028506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050253 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137735 (f1 (n + 1) - f1 n).toNat

end

end A248876.P18279814783821028506

/-! ## A248876.P12015088874147139317

`A137735(A300668(n)-1+n)`
-/

namespace A248876.P12015088874147139317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137735 (A300668 n - 1 + (n : ℤ)).toNat

end

end A248876.P12015088874147139317

/-! ## A248876.P6429328034483244793

`A137735(n-(1-A300668(n)))`
-/

namespace A248876.P6429328034483244793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137735 ((n : ℤ) - (1 - A300668 n)).toNat

end

end A248876.P6429328034483244793

/-!
# A248877: a(1) = 23, a(2) = 71, a(n) = 3*a(n-1) - 2*a(n-2) for n>2.

The programs for A248877, the canonical program `A248877.P9509676373276413218` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A248877 has offset 1).

The definition of A248877 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-1)-2*a(n-2)` (program `A248877.P9509676373276413218`, by `A248877.P9509676373276413218.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A248877.P11272047373294853801

`3*2^(n+4)-25`
-/

namespace A248877.P11272047373294853801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * 2 ^ (n + 4) : ℤ) - 25

end

end A248877.P11272047373294853801

namespace A248877

/-- `3*2^(n+4)-25` -/
def P11272047373294853801.Spec : Prop :=
  ∀ n, P11272047373294853801.a n = A248877 (n + 1)

theorem P11272047373294853801.correct : P11272047373294853801.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A248877, Nat.add_sub_cancel, A248877.P11272047373294853801.a, A248877.P9509676373276413218.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A248877, Nat.add_sub_cancel, A248877.P11272047373294853801.a, A248877.P9509676373276413218.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A248877

/-! ## A248877.P9509676373276413218

`3*a(n-1)-2*a(n-2)` with `a(0)=23, a(1)=71`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A248877

/-- `3*a(n-1)-2*a(n-2)` -/
def P9509676373276413218.Spec : Prop :=
  ∀ n, P9509676373276413218.a n = A248877 (n + 1)

theorem P9509676373276413218.correct : P9509676373276413218.Spec := by
  intro n
  simp only [A248877, Nat.add_sub_cancel]

end A248877

/-! ## A248877.P1386710059306432825

`ogf((23+2x)/(1-3x+2x^2))`
-/

namespace A248877.P1386710059306432825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [23, 2] [1, -3, 2] n

end

end A248877.P1386710059306432825

namespace A248877

/-- `ogf((23+2x)/(1-3x+2x^2))` -/
def P1386710059306432825.Spec : Prop :=
  ∀ n, P1386710059306432825.a n = A248877 (n + 1)

end A248877

/-! ## A248877.P82102314624686190

`∑[2*a(n-1)]` with `a(0)=23, a(1)=48`
-/

namespace A248877.P82102314624686190
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [23, 48] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A248877.P82102314624686190

namespace A248877

/-- `∑[2*a(n-1)]` -/
def P82102314624686190.Spec : Prop :=
  ∀ n, (P82102314624686190.a n : ℤ) = A248877 (n + 1)

end A248877

/-! ## A248877.P2665896961201099078

`abs(1-A305065(n))`
-/

namespace A248877.P2665896961201099078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A305065 n|

end

end A248877.P2665896961201099078

namespace A248877

/-- `abs(1-A305065(n))` -/
def P2665896961201099078.Spec : Prop :=
  ∀ n, P2665896961201099078.a n = A248877 (n + 1)

end A248877

/-! ## A248877.P8516709117447320473

`abs(9-2*A182461(n))`
-/

namespace A248877.P8516709117447320473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |9 - 2 * A182461 n|

end

end A248877.P8516709117447320473

namespace A248877

/-- `abs(9-2*A182461(n))` -/
def P8516709117447320473.Spec : Prop :=
  ∀ n, P8516709117447320473.a n = A248877 (n + 1)

end A248877

/-! ## A248877.P17129789181409940318

`abs(17-A182461(n+1))`
-/

namespace A248877.P17129789181409940318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |17 - A182461 (n + 1)|

end

end A248877.P17129789181409940318

namespace A248877

/-- `abs(17-A182461(n+1))` -/
def P17129789181409940318.Spec : Prop :=
  ∀ n, P17129789181409940318.a n = A248877 (n + 1)

end A248877

/-! ## A248877.P1252914801724866244

`∑[or(A000057(n+1), A033484(n+3))+1]`
-/

namespace A248877.P1252914801724866244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000057 (n + 1)) (A033484 (n + 3)) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A248877.P1252914801724866244

namespace A248877

/-- `∑[or(A000057(n+1), A033484(n+3))+1]` -/
def P1252914801724866244.Spec : Prop :=
  ∀ n, P1252914801724866244.a n = A248877 (n + 1)

end A248877

/-! ## A248877.P7666214355708324485

`Δ[∑[24*A000225(n)]-n]`
-/

namespace A248877.P7666214355708324485
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  24 * A000225 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A248877.P7666214355708324485

namespace A248877

/-- `Δ[∑[24*A000225(n)]-n]` -/
def P7666214355708324485.Spec : Prop :=
  ∀ n, P7666214355708324485.a n = A248877 (n + 1)

end A248877

/-!
# A248879: Numbers k >= 0 such that 2^k*(k+1)!+1 is prime.

The programs for A248879, there is no canonical definition to state claims against.
-/

/-! ## A248879.P4906828655722016011

`∑[A000120(A024423(n+1))]-1`
-/

namespace A248879.P4906828655722016011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A024423 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A248879.P4906828655722016011

/-! ## A248879.P3064217552064062102

`A002620(n+2)-A092078(A000041(n+3))`
-/

namespace A248879.P3064217552064062102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (n + 2) - A092078 (A000041 (n + 3)).toNat

end

end A248879.P3064217552064062102

/-!
# A248880: Number of tilings of an n X 1 rectangle by tiles of dimension 1 X 1 and 2 X 1 such that every tile shares an equal-length edge with a tile of the same size.

The programs for A248880, there is no canonical definition to state claims against.
-/

/-! ## A248880.P4029934213430222654

`A025065(n)-A001222(A249157(2*(n+1)))`
-/

namespace A248880.P4029934213430222654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025065 n - A001222 (A249157 (2 * (n + 1))).toNat

end

end A248880.P4029934213430222654

/-!
# A248882: Expansion of Product_{k>=1} (1+x^k)^(k^3).

The programs for A248882, there is no canonical definition to state claims against.
-/

/-! ## A248882.P17388974037113457611

`A284992(∑[n+4]+2)`
-/

namespace A248882.P17388974037113457611
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284992 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A248882.P17388974037113457611

/-! ## A248882.P11045099814091685888

`A285240(n)+A086010(A111400(n))`
-/

namespace A248882.P11045099814091685888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285240 n + A086010 (A111400 n).toNat

end

end A248882.P11045099814091685888

/-!
# A248883: Expansion of Product_{k>=1} (1+x^k)^(k^4).

The programs for A248883, there is no canonical definition to state claims against.
-/

/-! ## A248883.P17610233989398222020

`A284992(∑[n+5]+5)`
-/

namespace A248883.P17610233989398222020
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284992 (∑ j ∈ Finset.range (n + 1), f1 j + 5)

end

end A248883.P17610233989398222020

/-! ## A248883.P12584881167497513191

`or(char[1], A284992(A052905(n+2)))`
-/

namespace A248883.P12584881167497513191
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A284992 (A052905 (n + 2)).toNat)

end

end A248883.P12584881167497513191

/-! ## A248883.P3605655531716212509

`gcd(A000038(n), A284992(A052905(n+2)))`
-/

namespace A248883.P3605655531716212509
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A284992 (A052905 (n + 2)).toNat)

end

end A248883.P3605655531716212509

/-! ## A248883.P2401154031004448739

`A284992(A052905(n+2))+A000035(2*n)`
-/

namespace A248883.P2401154031004448739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284992 (A052905 (n + 2)).toNat + A000035 (2 * n)

end

end A248883.P2401154031004448739

/-! ## A248883.P4037104443555997672

`A284992(A052905(n+2))+A000161(or(6, n))`
-/

namespace A248883.P4037104443555997672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284992 (A052905 (n + 2)).toNat + A000161 (Nat.lor 6 n)

end

end A248883.P4037104443555997672

/-!
# A248884: Expansion of Product_{k>=1} (1+x^k)^(k^5).

The programs for A248884, there is no canonical definition to state claims against.
-/

/-! ## A248884.P8257076103608560813

`A284992(eq[5, A025581(n)])`
-/

namespace A248884.P8257076103608560813
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284992 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A248884.P8257076103608560813

/-! ## A248884.P10675446603087893983

`A284992(Δ[A023551(n+1)])`
-/

namespace A248884.P10675446603087893983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284992 (f1 (n + 1) - f1 n).toNat

end

end A248884.P10675446603087893983

/-! ## A248884.P4515606242125625656

`A284992(Δ[A026054(n+3)])`
-/

namespace A248884.P4515606242125625656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284992 (f1 (n + 1) - f1 n).toNat

end

end A248884.P4515606242125625656

/-! ## A248884.P12066335588054741049

`A284992(A046691(n+4)-2)`
-/

namespace A248884.P12066335588054741049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284992 (A046691 (n + 4) - 2).toNat

end

end A248884.P12066335588054741049

/-! ## A248884.P6886367839166517699

`A284992(A000096(n+5)-5)`
-/

namespace A248884.P6886367839166517699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284992 (A000096 (n + 5) - 5).toNat

end

end A248884.P6886367839166517699

/-!
# A248886: Expansion of f(-x, -x) * f(x^2, x^4) in powers of x where f(, ) is Ramanujan's general theta function.

The programs for A248886, the canonical program `A248886.P18163405162273270776` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A248886 has offset 0).

The definition of A248886 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A123884, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A248886.P18163405162273270776

`(-1)^n*A123884(n)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A248886

/-- `(-1)^n*A123884(n)` -/
def P18163405162273270776.Spec : Prop :=
  ∀ n, P18163405162273270776.a n = A248886 n

theorem P18163405162273270776.correct : P18163405162273270776.Spec := by
  intro n
  simp only [A248886]

end A248886

/-! ## A248886.P13410349576947119

`A123884(n)*A332814(A000040(n+1))`
-/

namespace A248886.P13410349576947119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123884 n * A332814 (A000040 (n + 1)).toNat

end

end A248886.P13410349576947119

namespace A248886

/-- `A123884(n)*A332814(A000040(n+1))` -/
def P13410349576947119.Spec : Prop :=
  ∀ n, P13410349576947119.a n = A248886 n

end A248886

/-! ## A248886.P16099969505739811189

`A129451(2*n)/(-1)^n`
-/

namespace A248886.P16099969505739811189
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129451 (2 * n) : ℚ) / ((-1) ^ n : ℚ)

end

end A248886.P16099969505739811189

namespace A248886

/-- `A129451(2*n)/(-1)^n` -/
def P16099969505739811189.Spec : Prop :=
  ∀ n, P16099969505739811189.a n = (A248886 n : ℚ)

end A248886

/-! ## A248886.P4866744310717124043

`A033999(n)*A097195(2*n)`
-/

namespace A248886.P4866744310717124043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A097195 (2 * n)

end

end A248886.P4866744310717124043

namespace A248886

/-- `A033999(n)*A097195(2*n)` -/
def P4866744310717124043.Spec : Prop :=
  ∀ n, P4866744310717124043.a n = A248886 n

end A248886

/-! ## A248886.P14383770661989648001

`A033999(n)*A129451(2*n)`
-/

namespace A248886.P14383770661989648001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A129451 (2 * n)

end

end A248886.P14383770661989648001

namespace A248886

/-- `A033999(n)*A129451(2*n)` -/
def P14383770661989648001.Spec : Prop :=
  ∀ n, P14383770661989648001.a n = A248886 n

end A248886

/-! ## A248886.P14786407477182910112

`ratio[A057077(n)]*A129451(2*n)`
-/

namespace A248886.P14786407477182910112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ) * (A129451 (2 * n) : ℚ)

end

end A248886.P14786407477182910112

namespace A248886

/-- `ratio[A057077(n)]*A129451(2*n)` -/
def P14786407477182910112.Spec : Prop :=
  ∀ n, P14786407477182910112.a n = (A248886 n : ℚ)

end A248886

/-! ## A248886.P15998145421170582895

`A062157(n+1)*A097195(2*n)`
-/

namespace A248886.P15998145421170582895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (n + 1) * A097195 (2 * n)

end

end A248886.P15998145421170582895

namespace A248886

/-- `A062157(n+1)*A097195(2*n)` -/
def P15998145421170582895.Spec : Prop :=
  ∀ n, P15998145421170582895.a n = A248886 n

end A248886

/-! ## A248886.P10943631862435236568

`A057077(2*n)*A129451(2*n)`
-/

namespace A248886.P10943631862435236568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (2 * n) * A129451 (2 * n)

end

end A248886.P10943631862435236568

namespace A248886

/-- `A057077(2*n)*A129451(2*n)` -/
def P10943631862435236568.Spec : Prop :=
  ∀ n, P10943631862435236568.a n = A248886 n

end A248886

/-! ## A248886.P11668980385159232167

`A262774(3*n)`
-/

namespace A248886.P11668980385159232167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262774 (3 * n)

end

end A248886.P11668980385159232167

namespace A248886

/-- `A262774(3*n)` -/
def P11668980385159232167.Spec : Prop :=
  ∀ n, P11668980385159232167.a n = A248886 n

end A248886

/-! ## A248886.P10625716024690181716

`ratio[A057077(n)]*A112604(3*n)`
-/

namespace A248886.P10625716024690181716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ) * (A112604 (3 * n) : ℚ)

end

end A248886.P10625716024690181716

namespace A248886

/-- `ratio[A057077(n)]*A112604(3*n)` -/
def P10625716024690181716.Spec : Prop :=
  ∀ n, P10625716024690181716.a n = (A248886 n : ℚ)

end A248886

/-! ## A248886.P3541272868532364438

`A262709(4*n)`
-/

namespace A248886.P3541272868532364438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262709 (4 * n)

end

end A248886.P3541272868532364438

namespace A248886

/-- `A262709(4*n)` -/
def P3541272868532364438.Spec : Prop :=
  ∀ n, P3541272868532364438.a n = A248886 n

end A248886

/-! ## A248886.P13178186738651573428

`A262780(6*n)`
-/

namespace A248886.P13178186738651573428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262780 (6 * n)

end

end A248886.P13178186738651573428

namespace A248886

/-- `A262780(6*n)` -/
def P13178186738651573428.Spec : Prop :=
  ∀ n, P13178186738651573428.a n = A248886 n

end A248886

/-! ## A248886.P2218704300590933956

`A262726(9*n)`
-/

namespace A248886.P2218704300590933956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262726 (9 * n)

end

end A248886.P2218704300590933956

namespace A248886

/-- `A262726(9*n)` -/
def P2218704300590933956.Spec : Prop :=
  ∀ n, P2218704300590933956.a n = A248886 n

end A248886

/-!
# A248888: Numbers k such that prime(k) <= 2*sigma(k).

The programs for A248888, there is no canonical definition to state claims against.
-/

/-! ## A248888.P16355127309979404339

`∪[A060660(n+1), A112587(n+1)]`
-/

namespace A248888.P16355127309979404339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060660 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112587 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A248888.P16355127309979404339

/-! ## A248888.P3919725401666690698

`∪[A070980(n+1), A112587(n+1)]`
-/

namespace A248888.P3919725401666690698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070980 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112587 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A248888.P3919725401666690698

/-! ## A248888.P1040762730535116217

`∪[A073120(n+1), A112587(n+1)]`
-/

namespace A248888.P1040762730535116217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073120 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112587 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A248888.P1040762730535116217

/-! ## A248888.P6747233999275569831

`∪[A077562(n+1), A112587(n+1)]`
-/

namespace A248888.P6747233999275569831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077562 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112587 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A248888.P6747233999275569831

/-! ## A248888.P4475436135813267978

`∪[A112587(n+1), A140999(n+1)]`
-/

namespace A248888.P4475436135813267978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112587 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140999 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A248888.P4475436135813267978

/-!
# A248889: Palindromic in base 10 and 18.

The programs for A248889, there is no canonical definition to state claims against.
-/

/-! ## A248889.P9795903680560926956

`A109088(A035042(n))+n`
-/

namespace A248889.P9795903680560926956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109088 (A035042 n).toNat + (n : ℤ)

end

end A248889.P9795903680560926956

/-! ## A248889.P9810811399510118020

`or(n, A001045(A185293(n)))`
-/

namespace A248889.P9810811399510118020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A001045 (A185293 n).toNat)

end

end A248889.P9810811399510118020

/-! ## A248889.P5020049109878741754

`or(n, A079606(A212389(n)))`
-/

namespace A248889.P5020049109878741754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A079606 (A212389 n).toNat)

end

end A248889.P5020049109878741754

/-! ## A248889.P10472355100757066422

`or(n, A240493(A255380(n)))`
-/

namespace A248889.P10472355100757066422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A240493 (A255380 n).toNat)

end

end A248889.P10472355100757066422

/-! ## A248889.P7771605461761659977

`A122228(A323358(n+1))+n`
-/

namespace A248889.P7771605461761659977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122228 (A323358 (n + 1)).toNat + (n : ℤ)

end

end A248889.P7771605461761659977

/-!
# A248890: Number of rooted trees with n nodes such that for each inner node no more than k subtrees corresponding to its children have exactly k nodes.

The programs for A248890, there is no canonical definition to state claims against.
-/

/-! ## A248890.P15679640105086515071

`A001190(A184985(n+1))-A168201(A158155(n+1))`
-/

namespace A248890.P15679640105086515071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001190 (A184985 (n + 1)).toNat - A168201 (A158155 (n + 1)).toNat

end

end A248890.P15679640105086515071

/-! ## A248890.P17513076962332737413

`A001190(A184985(n+1))-A168201(A158157(n+1))`
-/

namespace A248890.P17513076962332737413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001190 (A184985 (n + 1)).toNat - A168201 (A158157 (n + 1)).toNat

end

end A248890.P17513076962332737413

/-! ## A248890.P7688914474710924124

`A045648(A028310(n))%A045612(n)`
-/

namespace A248890.P7688914474710924124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A045648 (A028310 n).toNat) (A045612 n)

end

end A248890.P7688914474710924124

/-! ## A248890.P14155029465123161865

`A352831(2*a(n-2)-(n+1)%2)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=1, a(4)=2`
-/

namespace A248890.P14155029465123161865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1, 1, 2] fun n a =>
  A352831 (2 * a (n - 2) - (((n + 1) % 2 : ℕ) : ℤ)).toNat

end

end A248890.P14155029465123161865

/-! ## A248890.P9939109253830763623

`A000194(A087949(n))%(2^n)`
-/

namespace A248890.P9939109253830763623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000194 (A087949 n).toNat) (2 ^ n : ℤ)

end

end A248890.P9939109253830763623

/-!
# A248893: a(0)=0; for n>0, choose a(n) to be the smallest number > a(n-1) such that the condition a(n) > Sum_{k=0..n} (number of 1's in binary expansion of n a(k)) holds.

The programs for A248893, there is no canonical definition to state claims against.
-/

/-! ## A248893.P2601746667774501512

`lt[A145037(n), A190436(A215431(2*(n+1)))]`
-/

namespace A248893.P2601746667774501512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145037 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190436 (A215431 (2 * (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A248893.P2601746667774501512

/-!
# A248894: Numbers k such that both numbers k and k+1 are in the sequence A248903.

The programs for A248894, there is no canonical definition to state claims against.
-/

/-! ## A248894.P11021809105254242970

`∩[A248903(n+1)-1, A248903(n+1)]`
-/

namespace A248894.P11021809105254242970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248903 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248903 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A248894.P11021809105254242970

/-! ## A248894.P16467807732891279077

`∩[A248903(n+1), A060000(A248903(n+1))]`
-/

namespace A248894.P16467807732891279077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248903 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060000 (A248903 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A248894.P16467807732891279077

/-!
# A248897: Decimal expansion of Sum_{i >= 0} (i!)^2/(2*i+1)!.

The programs for A248897, there is no canonical definition to state claims against.
-/

/-! ## A248897.P4290611827074926993

`A248181(n-(a(n-1)-A249157(a(n-1)+1)))` with `a(0)=1`
-/

namespace A248897.P4290611827074926993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A248181 ((n : ℤ) - (a (n - 1) - A249157 (a (n - 1) + 1).toNat)).toNat

end

end A248897.P4290611827074926993

/-! ## A248897.P8483845396924053308

`A248181(n+1-(A090108(a(n-1)+1)-a(n-1)))` with `a(0)=1`
-/

namespace A248897.P8483845396924053308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A248181 ((n + 1 : ℤ) - (A090108 (a (n - 1) + 1).toNat - a (n - 1))).toNat

end

end A248897.P8483845396924053308

/-! ## A248897.P1879366761764326010

`A248181(n)^A001221(A001316(n))`
-/

namespace A248897.P1879366761764326010
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A248181 n : ℚ) ^ (A001221 (A001316 n).toNat : ℤ)

end

end A248897.P1879366761764326010

/-! ## A248897.P10834014237265370136

`A248181(gcd(n, A008574(A008574(n))))`
-/

namespace A248897.P10834014237265370136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248181 (Int.gcd (n : ℤ) (A008574 (A008574 n).toNat))

end

end A248897.P10834014237265370136

/-! ## A248897.P1257654879240426561

`gcd(A185175(A191038(3*n+1)), A248181(n))`
-/

namespace A248897.P1257654879240426561
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A185175 (A191038 (3 * n + 1)).toNat) (A248181 n)

end

end A248897.P1257654879240426561

/-!
# A248898: Numbers k such that A246964(k) = 1.

The programs for A248898, there is no canonical definition to state claims against.
-/

/-! ## A248898.P8187778858122533782

`eq[1, A246964(n)]`
-/

namespace A248898.P8187778858122533782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246964 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A248898.P8187778858122533782

/-! ## A248898.P297502394552677671

`record[A000027(n+1)-A246964(n)]`
-/

namespace A248898.P297502394552677671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) - A246964 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A248898.P297502394552677671

/-! ## A248898.P3779736301114798069

`lt[atan(A246964(n)), A247004(2*n+3)]`
-/

namespace A248898.P3779736301114798069
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (A246964 n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247004 (2 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A248898.P3779736301114798069

/-! ## A248898.P2392572970126619332

`lt[A246964(n), atan(A246972(n))]`
-/

namespace A248898.P2392572970126619332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246964 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (A246972 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A248898.P2392572970126619332

/-! ## A248898.P7495800176512467368

`lt[A246964(n), atan(A246965(n+1))]`
-/

namespace A248898.P7495800176512467368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246964 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (A246965 (n + 1) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A248898.P7495800176512467368

/-! ## A248898.P16062730264669097274

`lt[A246964(n), atan(A247010(n+1))]`
-/

namespace A248898.P16062730264669097274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246964 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (A247010 (n + 1) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A248898.P16062730264669097274

/-! ## A248898.P10894130787603907327

`lt[A246964(n), atan(A247018(n+1))]`
-/

namespace A248898.P10894130787603907327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246964 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (A247018 (n + 1) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A248898.P10894130787603907327

/-! ## A248898.P9077854097664717430

`record[A005843(n)-n*A246964(n)]`
-/

namespace A248898.P9077854097664717430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n - (n : ℤ) * A246964 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A248898.P9077854097664717430

/-! ## A248898.P2515295129100308144

`record[A008619(2*n)-A246964(n)]`
-/

namespace A248898.P2515295129100308144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * n) - A246964 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A248898.P2515295129100308144

/-! ## A248898.P9231564117230118433

`record[A028242(2*n)-A246964(n)]`
-/

namespace A248898.P9231564117230118433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (2 * n) - A246964 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A248898.P9231564117230118433

/-! ## A248898.P13227792709769331902

`record[A052938(2*n)-A246964(n)]`
-/

namespace A248898.P13227792709769331902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 (2 * n) - A246964 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A248898.P13227792709769331902

/-! ## A248898.P11941920961726608871

`record[A028242(n+1)/A246964(A028242(n+1))]`
-/

namespace A248898.P11941920961726608871
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028242 (n + 1) : ℚ) / (A246964 (A028242 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A248898.P11941920961726608871

/-! ## A248898.P6499018215351434370

`record[A008611(3*n)-A246964(n)]`
-/

namespace A248898.P6499018215351434370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (3 * n) - A246964 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A248898.P6499018215351434370

/-!
# A248899: Numbers that are palindromic in bases 10 and 19.

The programs for A248899, there is no canonical definition to state claims against.
-/

/-! ## A248899.P436668918482155691

`A029968(∑[A265508(n)!])`
-/

namespace A248899.P436668918482155691
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A265508 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029968 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A248899.P436668918482155691

/-! ## A248899.P12076614215655985531

`A212132(∑[A324233(n+1)])+n`
-/

namespace A248899.P12076614215655985531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324233 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212132 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + (n : ℤ)

end

end A248899.P12076614215655985531

/-! ## A248899.P17409972322242535243

`∩[A029968(n+1), A213517(n+1)]`
-/

namespace A248899.P17409972322242535243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029968 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213517 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A248899.P17409972322242535243

/-! ## A248899.P14812491881106417588

`∩[A213517(n+1), A250412(n+1)]`
-/

namespace A248899.P14812491881106417588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213517 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250412 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A248899.P14812491881106417588

/-! ## A248899.P9723289316517362654

`A081163(A353984(A256644(n)))+n`
-/

namespace A248899.P9723289316517362654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081163 (A353984 (A256644 n).toNat).toNat + (n : ℤ)

end

end A248899.P9723289316517362654

