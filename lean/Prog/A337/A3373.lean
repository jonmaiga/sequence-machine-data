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
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C038
import Seq.B000.C040
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C048
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C010
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
# A337300: Partial sums of the geometric Connell sequence A049039.

The programs for A337300, the canonical program `A337300.P8072696644168513825` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A337300 has offset 1).

The definition of A337300 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A337300.P11914780086161245738

`∑[comp[comp[∑[2^n]]+n]]`
-/

namespace A337300.P11914780086161245738
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n + n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A337300.P11914780086161245738

namespace A337300

/-- `∑[comp[comp[∑[2^n]]+n]]` -/
def P11914780086161245738.Spec : Prop :=
  ∀ n, (P11914780086161245738.a n : ℤ) = A337300 (n + 1)

end A337300

/-! ## A337300.P8072696644168513825

`floor((n+2)/(n+1)*a(n-1)+n+1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A337300

/-- `floor((n+2)/(n+1)*a(n-1)+n+1)` -/
def P8072696644168513825.Spec : Prop :=
  ∀ n, P8072696644168513825.a n = A337300 (n + 1)

theorem P8072696644168513825.correct : P8072696644168513825.Spec := by
  intro n
  simp only [A337300, Nat.add_sub_cancel]

end A337300

/-! ## A337300.P17598706079853406793

`floor(n+1+a(n-1)+a(n-1)/(n+1))` with `a(0)=1`
-/

namespace A337300.P17598706079853406793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(n + 1 : ℚ) + ((a (n - 1) : ℚ) + (a (n - 1) : ℚ) / (n + 1 : ℚ))⌋

end

end A337300.P17598706079853406793

namespace A337300

/-- `floor(n+1+a(n-1)+a(n-1)/(n+1))` -/
def P17598706079853406793.Spec : Prop :=
  ∀ n, P17598706079853406793.a n = A337300 (n + 1)

theorem P17598706079853406793.correct : P17598706079853406793.Spec := by
  intro n
  simp only [A337300, Nat.add_sub_cancel, A337300.P17598706079853406793.a, A337300.P8072696644168513825.a, SequenceMachineLib.memo_apply]
  try push_cast
  try field_simp
  try (first | ring1 | ring_nf)

end A337300

/-! ## A337300.P14881159365381109513

`(n+1)²-A061168(n+1)`
-/

namespace A337300.P14881159365381109513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A061168 (n + 1)

end

end A337300.P14881159365381109513

namespace A337300

/-- `(n+1)²-A061168(n+1)` -/
def P14881159365381109513.Spec : Prop :=
  ∀ n, P14881159365381109513.a n = A337300 (n + 1)

end A337300

/-! ## A337300.P14420324295510790767

`(n+1)²-∑[A000523(n+1)]`
-/

namespace A337300.P14420324295510790767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A337300.P14420324295510790767

namespace A337300

/-- `(n+1)²-∑[A000523(n+1)]` -/
def P14420324295510790767.Spec : Prop :=
  ∀ n, P14420324295510790767.a n = A337300 (n + 1)

end A337300

/-! ## A337300.P17268056820239865244

`A000217(n+1)+A000217(n+1)-A001855(n+2)`
-/

namespace A337300.P17268056820239865244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) + (A000217 (n + 1) - A001855 (n + 2))

end

end A337300.P17268056820239865244

namespace A337300

/-- `A000217(n+1)+A000217(n+1)-A001855(n+2)` -/
def P17268056820239865244.Spec : Prop :=
  ∀ n, P17268056820239865244.a n = A337300 (n + 1)

end A337300

/-!
# A337301: Triangle read by rows in which row n lists the closest integers to diagonal lengths of regular n-gon with unit edge length, n >= 4.

The programs for A337301, there is no canonical definition to state claims against.
-/

/-! ## A337301.P1518753321519386362

`A055642(lcm(11, A141398(n+1)))`
-/

namespace A337301.P1518753321519386362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (Int.lcm 11 (A141398 (n + 1)))

end

end A337301.P1518753321519386362

/-! ## A337301.P637612230414772169

`A043564(22*A055907(n))`
-/

namespace A337301.P637612230414772169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043564 (22 * A055907 n).toNat

end

end A337301.P637612230414772169

/-! ## A337301.P4174547895643718918

`A262438(8*A055921(n))`
-/

namespace A337301.P4174547895643718918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262438 (8 * A055921 n).toNat

end

end A337301.P4174547895643718918

/-! ## A337301.P16796314426340010591

`A043568(9*A055921(n))`
-/

namespace A337301.P16796314426340010591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043568 (9 * A055921 n).toNat

end

end A337301.P16796314426340010591

/-! ## A337301.P16129353305962326195

`A400229(A141398(n+1))`
-/

namespace A337301.P16129353305962326195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400229 (A141398 (n + 1)).toNat

end

end A337301.P16129353305962326195

/-!
# A337302: Number of X-based filling of diagonals in a diagonal Latin square of order n with the main diagonal in ascending order.

The programs for A337302, the canonical program `A337302.P12856594040456002554` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A337302 has offset 0).

The definition of A337302 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A337302.P12856594040456002554

`A000316(floor(n/2))`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A337302

/-- `A000316(floor(n/2))` -/
def P12856594040456002554.Spec : Prop :=
  ∀ n, P12856594040456002554.a n = A337302 n

theorem P12856594040456002554.correct : P12856594040456002554.Spec := by
  intro n
  simp only [A337302]

end A337302

/-! ## A337302.P11453730808659704472

`A337303(n)/n!`
-/

namespace A337302.P11453730808659704472
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A337303 n : ℚ) / (Nat.factorial n : ℚ)

end

end A337302.P11453730808659704472

namespace A337302

/-- `A337303(n)/n!` -/
def P11453730808659704472.Spec : Prop :=
  ∀ n, P11453730808659704472.a n = (A337302 n : ℚ)

end A337302

/-! ## A337302.P4409790679391013481

`A003471(and(n, -2))`
-/

namespace A337302.P4409790679391013481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003471 (Int.land (n : ℤ) (-2)).toNat

end

end A337302.P4409790679391013481

namespace A337302

/-- `A003471(and(n, -2))` -/
def P4409790679391013481.Spec : Prop :=
  ∀ n, P4409790679391013481.a n = A337302 n

end A337302

/-! ## A337302.P14314353742067606476

`A003471(n-n%2)`
-/

namespace A337302.P14314353742067606476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003471 (n - n % 2)

end

end A337302.P14314353742067606476

namespace A337302

/-- `A003471(n-n%2)` -/
def P14314353742067606476.Spec : Prop :=
  ∀ n, P14314353742067606476.a n = A337302 n

end A337302

/-! ## A337302.P15746039616395594943

`A003471(2*floor(n/2))`
-/

namespace A337302.P15746039616395594943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003471 (2 * ⌊(n : ℚ) / 2⌋).toNat

end

end A337302.P15746039616395594943

namespace A337302

/-- `A003471(2*floor(n/2))` -/
def P15746039616395594943.Spec : Prop :=
  ∀ n, P15746039616395594943.a n = A337302 n

end A337302

/-!
# A337303: Number of X-based filling of diagonals in a diagonal Latin square of order n.

The programs for A337303, the canonical program `A337303.P13600975029511963536` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A337303 has offset 0).

The definition of A337303 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A337303.P13600975029511963536

`A337302(n)*n!`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A337303

/-- `A337302(n)*n!` -/
def P13600975029511963536.Spec : Prop :=
  ∀ n, P13600975029511963536.a n = A337303 n

theorem P13600975029511963536.correct : P13600975029511963536.Spec := by
  intro n
  simp only [A337303]

end A337303

/-! ## A337303.P82021488294608057

`n!*A000316(floor(n/2))`
-/

namespace A337303.P82021488294608057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A000316 ⌊(n : ℚ) / 2⌋.toNat

end

end A337303.P82021488294608057

namespace A337303

/-- `n!*A000316(floor(n/2))` -/
def P82021488294608057.Spec : Prop :=
  ∀ n, P82021488294608057.a n = A337303 n

theorem P82021488294608057.correct : P82021488294608057.Spec := by
  intro n
  simp only [A337303, Nat.add_sub_cancel, A337303.P82021488294608057.a, A337303.P13600975029511963536.a, A000316, A000316.P502515888872783753.a, A337302, A337302.P12856594040456002554.a, A000459, A000459.P17736649955540889842.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A337303

/-! ## A337303.P11470749881096666548

`n!*A337302(n)`
-/

namespace A337303.P11470749881096666548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A337302 n

end

end A337303.P11470749881096666548

namespace A337303

/-- `n!*A337302(n)` -/
def P11470749881096666548.Spec : Prop :=
  ∀ n, P11470749881096666548.a n = A337303 n

theorem P11470749881096666548.correct : P11470749881096666548.Spec := by
  intro n
  simp only [A337303, Nat.add_sub_cancel, A337303.P11470749881096666548.a, A337303.P13600975029511963536.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A337303

/-! ## A337303.P14358718619865536344

`n!*A003471(n-n%2)`
-/

namespace A337303.P14358718619865536344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A003471 (n - n % 2)

end

end A337303.P14358718619865536344

namespace A337303

/-- `n!*A003471(n-n%2)` -/
def P14358718619865536344.Spec : Prop :=
  ∀ n, P14358718619865536344.a n = A337303 n

end A337303

/-! ## A337303.P17907095412538425633

`A000142(n)*A337302(n)`
-/

namespace A337303.P17907095412538425633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A337302 n

end

end A337303.P17907095412538425633

namespace A337303

/-- `A000142(n)*A337302(n)` -/
def P17907095412538425633.Spec : Prop :=
  ∀ n, P17907095412538425633.a n = A337303 n

theorem P17907095412538425633.correct : P17907095412538425633.Spec := by
  intro n
  simp only [A337303, Nat.add_sub_cancel, A337303.P17907095412538425633.a, A337303.P13600975029511963536.a, A000142, A000142.P3272619076580183195.a, A337302, A337302.P12856594040456002554.a, A000316, A000316.P502515888872783753.a, A000459, A000459.P17736649955540889842.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A337303

/-!
# A337304: a(n) is the greatest number m not yet in the sequence such that the binary expansions of n and of m have the same runs of consecutive equal digits (up to order but with multiplicity).

The programs for A337304, there is no canonical definition to state claims against.
-/

/-! ## A337304.P616411698321503302

`A322464(A322463(n))%A322447(3*(n+1))`
-/

namespace A337304.P616411698321503302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A322464 (A322463 n).toNat) (A322447 (3 * (n + 1)))

end

end A337304.P616411698321503302

/-! ## A337304.P8239942956678905843

`A322464(A322463(n)%A322419(n))`
-/

namespace A337304.P8239942956678905843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322464 (Int.tmod (A322463 n) (A322419 n)).toNat

end

end A337304.P8239942956678905843

/-!
# A337308: Natural numbers that yield a coprime pair representing a proper fraction under the inverse of Cantor's pairing function.

The programs for A337308, there is no canonical definition to state claims against.
-/

/-! ## A337308.P2679038710309282405

`lt[A325002(n+1), A082905(n)]`
-/

namespace A337308.P2679038710309282405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325002 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082905 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A337308.P2679038710309282405

/-! ## A337308.P4189431648384064695

`lt[A091435(n), 2*A109042(n)]`
-/

namespace A337308.P4189431648384064695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091435 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A109042 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A337308.P4189431648384064695

/-! ## A337308.P13462758876284161212

`A080036(lt[n+1, A051173(n+1)])`
-/

namespace A337308.P13462758876284161212
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051173 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080036 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A337308.P13462758876284161212

/-! ## A337308.P14399839136791277105

`A080036(lt[n+1, A051537(n+1)])`
-/

namespace A337308.P14399839136791277105
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051537 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080036 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A337308.P14399839136791277105

/-! ## A337308.P2445737040355090235

`lt[A176044(2*n+5), A175779(n)]`
-/

namespace A337308.P2445737040355090235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176044 (2 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175779 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A337308.P2445737040355090235

/-! ## A337308.P16593165358003406436

`eq[n*A050870(n), A267328(n+1)]`
-/

namespace A337308.P16593165358003406436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A050870 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267328 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A337308.P16593165358003406436

/-! ## A337308.P14240512104727368471

`A014132(lt[n+1, A051173(n+1)]+1)`
-/

namespace A337308.P14240512104727368471
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051173 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014132 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A337308.P14240512104727368471

/-! ## A337308.P8758282905432317763

`A014132(lt[n+1, A051537(n+1)]+1)`
-/

namespace A337308.P8758282905432317763
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051537 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014132 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A337308.P8758282905432317763

/-! ## A337308.P14779419827302496899

`lt[A091435(n), A005843(A109042(n))]`
-/

namespace A337308.P14779419827302496899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091435 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A109042 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A337308.P14779419827302496899

/-! ## A337308.P10200194729995538905

`eq[A002264(A050870(n)), A267328(n+1)]`
-/

namespace A337308.P10200194729995538905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A050870 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267328 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A337308.P10200194729995538905

/-!
# A337309: Number of main classes of bachelor diagonal Latin squares of order n.

The programs for A337309, there is no canonical definition to state claims against.
-/

/-! ## A337309.P5848969687439267432

`A287764(n+1)-A330391(n+1)`
-/

namespace A337309.P5848969687439267432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287764 (n + 1) - A330391 (n + 1)

end

end A337309.P5848969687439267432

/-! ## A337309.P16569824300225174483

`A341000(∑[∑[n!]])`
-/

namespace A337309.P16569824300225174483
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341000 (∑ j ∈ Finset.range (n + 1), f1 j + 285)

end

end A337309.P16569824300225174483

/-! ## A337309.P4221928562856848021

`A036876(∑{digits}[2*n, #]+2^n)`
-/

namespace A337309.P4221928562856848021
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036876 (((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum + 2 ^ n)

end

end A337309.P4221928562856848021

/-!
# A337310: Additive function with a(p) = p, a(p^e) = p*a(e) for prime p and e > 1, with a(1) = 1.

The programs for A337310, there is no canonical definition to state claims against.
-/

/-! ## A337310.P16388911919901277860

`A010055(6^∑{e}[n+1, #])+∑{p}[n+1, #*val(n+1, #)]`
-/

namespace A337310.P16388911919901277860
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010055 (6 ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)) + ((∑ p ∈ Nat.primeFactors (f2 n), p * SequenceMachineLib.valuation (n + 1) p : ℕ) : ℤ)

end

end A337310.P16388911919901277860

/-! ## A337310.P3404384287262791661

`∑{p}[n+1, #*val(n+1, #)]+1-A374326(5^∑{e}[n+1, #])`
-/

namespace A337310.P3404384287262791661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f1 n), p * SequenceMachineLib.valuation (n + 1) p + 1 : ℕ) : ℤ) - A374326 (5 ^ (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p))

end

end A337310.P3404384287262791661

/-! ## A337310.P12826300433358131317

`∑{p}[n+1, #*val(n+1, #)]+1-A001221(7^∑{e}[n+1, #])`
-/

namespace A337310.P12826300433358131317
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f1 n), p * SequenceMachineLib.valuation (n + 1) p + 1 : ℕ) : ℤ) - A001221 (7 ^ (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p))

end

end A337310.P12826300433358131317

/-! ## A337310.P11684846036707931908

`A172441(2^∑{e}[n+1, #])+A001414(n+1)`
-/

namespace A337310.P11684846036707931908
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172441 (2 ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)) + A001414 (n + 1)

end

end A337310.P11684846036707931908

/-! ## A337310.P4840310813126102548

`A001414(n+1)+A000035(6^∑{e}[n+1, #])`
-/

namespace A337310.P4840310813126102548
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (n + 1) + A000035 (6 ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p))

end

end A337310.P4840310813126102548

/-! ## A337310.P2718762983786018

`A087508(6^∑{e}[n+1, #])+A001414(n+1)`
-/

namespace A337310.P2718762983786018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087508 (6 ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)) + A001414 (n + 1)

end

end A337310.P2718762983786018

/-! ## A337310.P3351865782604604267

`A192490(6^∑{e}[n+1, #])+A001414(n+1)`
-/

namespace A337310.P3351865782604604267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192490 (6 ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)) + A001414 (n + 1)

end

end A337310.P3351865782604604267

/-! ## A337310.P6459082394403618013

`A284948(6^∑{e}[n+1, #])+A001414(n+1)`
-/

namespace A337310.P6459082394403618013
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284948 (6 ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)) + A001414 (n + 1)

end

end A337310.P6459082394403618013

/-! ## A337310.P13082656871941477775

`A000122(A279895(n))+∑{p}[n+1, #*val(n+1, #)]`
-/

namespace A337310.P13082656871941477775
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (A279895 n).toNat + ((∑ p ∈ Nat.primeFactors (f1 n), p * SequenceMachineLib.valuation (n + 1) p : ℕ) : ℤ)

end

end A337310.P13082656871941477775

/-! ## A337310.P5417472689437575448

`A379668(A062401(n+1))+∑{p}[n+1, #*val(n+1, #)]`
-/

namespace A337310.P5417472689437575448
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379668 (A062401 (n + 1)).toNat + ((∑ p ∈ Nat.primeFactors (f1 n), p * SequenceMachineLib.valuation (n + 1) p : ℕ) : ℤ)

end

end A337310.P5417472689437575448

/-!
# A337312: List of successive y-coordinates in the acute angled Babylonian spiral.

The programs for A337312, there is no canonical definition to state claims against.
-/

/-! ## A337312.P11420510537895649844

`A008620(n+1)+A129554(A117401(n))-A002126(n)`
-/

namespace A337312.P11420510537895649844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (n + 1) + (A129554 (A117401 n).toNat - A002126 n)

end

end A337312.P11420510537895649844

/-!
# A337313: a(n) is the number of n-digit positive integers with exactly three distinct base 10 digits.

The programs for A337313, the canonical program `A337313.P15868311690781010841` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A337313 has offset 1).

The definition of A337313 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A337313.P15388392821594256036

`ogf(648x^2/(1-6x+11x^2-6x^3))`
-/

namespace A337313.P15388392821594256036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 648] [1, -6, 11, -6] n

end

end A337313.P15388392821594256036

namespace A337313

/-- `ogf(648x^2/(1-6x+11x^2-6x^3))` -/
def P15388392821594256036.Spec : Prop :=
  ∀ n, P15388392821594256036.a n = A337313 (n + 1)

end A337313

/-! ## A337313.P225425751109922050

`324*(3^n-2^(n+1)+1)`
-/

namespace A337313.P225425751109922050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  324 * ((3 ^ n : ℤ) - (2 ^ (n + 1) : ℤ) + 1)

end

end A337313.P225425751109922050

namespace A337313

/-- `324*(3^n-2^(n+1)+1)` -/
def P225425751109922050.Spec : Prop :=
  ∀ n, P225425751109922050.a n = A337313 (n + 1)

theorem P225425751109922050.correct : P225425751109922050.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A337313, Nat.add_sub_cancel, A337313.P225425751109922050.a, A337313.P15868311690781010841.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A337313, Nat.add_sub_cancel, A337313.P225425751109922050.a, A337313.P15868311690781010841.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A337313

/-! ## A337313.P15868311690781010841

`6*a(n-1)-11*a(n-2)+6*a(n-3)` with `a(0)=0, a(1)=0, a(2)=648`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A337313

/-- `6*a(n-1)-11*a(n-2)+6*a(n-3)` -/
def P15868311690781010841.Spec : Prop :=
  ∀ n, P15868311690781010841.a n = A337313 (n + 1)

theorem P15868311690781010841.correct : P15868311690781010841.Spec := by
  intro n
  simp only [A337313, Nat.add_sub_cancel]

end A337313

/-! ## A337313.P6465533103482799932

`A337127(A017305(n))`
-/

namespace A337313.P6465533103482799932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337127 (A017305 n).toNat

end

end A337313.P6465533103482799932

namespace A337313

/-- `A337127(A017305(n))` -/
def P6465533103482799932.Spec : Prop :=
  ∀ n, P6465533103482799932.a n = A337313 (n + 1)

end A337313

/-! ## A337313.P7594565981944004657

`A337127(A017293(n)+1)`
-/

namespace A337313.P7594565981944004657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337127 (A017293 n + 1).toNat

end

end A337313.P7594565981944004657

namespace A337313

/-- `A337127(A017293(n)+1)` -/
def P7594565981944004657.Spec : Prop :=
  ∀ n, P7594565981944004657.a n = A337313 (n + 1)

end A337313

/-! ## A337313.P13493856783282715353

`A337127(A017317(n)-1)`
-/

namespace A337313.P13493856783282715353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337127 (A017317 n - 1).toNat

end

end A337313.P13493856783282715353

namespace A337313

/-- `A337127(A017317(n)-1)` -/
def P13493856783282715353.Spec : Prop :=
  ∀ n, P13493856783282715353.a n = A337313 (n + 1)

end A337313

/-!
# A337314: a(n) is the number of n-digit positive integers with exactly four distinct base 10 digits.

The programs for A337314, the canonical program `A337314.P8403515754966739512` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A337314 has offset 1).

The definition of A337314 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A337314.P8403515754966739512

`189*(4^(n+1)-4*3^(n+1)+3*2^(n+2)-4)`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A337314

/-- `189*(4^(n+1)-4*3^(n+1)+3*2^(n+2)-4)` -/
def P8403515754966739512.Spec : Prop :=
  ∀ n, P8403515754966739512.a n = A337314 (n + 1)

theorem P8403515754966739512.correct : P8403515754966739512.Spec := by
  intro n
  simp only [A337314, Nat.add_sub_cancel]

end A337314

/-! ## A337314.P5022667029774362855

`A337127(10*n+4)`
-/

namespace A337314.P5022667029774362855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337127 (10 * n + 4)

end

end A337314.P5022667029774362855

namespace A337314

/-- `A337127(10*n+4)` -/
def P5022667029774362855.Spec : Prop :=
  ∀ n, P5022667029774362855.a n = A337314 (n + 1)

end A337314

/-!
# A337315: Number of divisor pairs, (d1,d2), of A094519(n) such that (d1+d2) | A094519(n) and d1 < d2.

The programs for A337315, there is no canonical definition to state claims against.
-/

/-! ## A337315.P2313679050855057756

`A094518(A094519(n+1))`
-/

namespace A337315.P2313679050855057756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094518 (A094519 (n + 1)).toNat

end

end A337315.P2313679050855057756

/-! ## A337315.P8726940347588013209

`A094518(lt[0, A094518(n+1)]+1)`
-/

namespace A337315.P8726940347588013209
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094518 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094518 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A337315.P8726940347588013209

/-! ## A337315.P12422677905349663568

`A094518(A088723(n+1)%A050248(n+3))`
-/

namespace A337315.P12422677905349663568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094518 (Int.tmod (A088723 (n + 1)) (A050248 (n + 3))).toNat

end

end A337315.P12422677905349663568

/-!
# A337317: The number of stable vertically balanced self-avoiding walks of length n on the upper half-plane of a 2D square lattice where the nodes and connecting rods have equal mass.

The programs for A337317, there is no canonical definition to state claims against.
-/

/-! ## A337317.P14711140656785015930

`∑[2*A320456(A001970(n))]`
-/

namespace A337317.P14711140656785015930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A320456 (A001970 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A337317.P14711140656785015930

/-! ## A337317.P8830486830941870506

`A239333(n+1)-A002262(A150860(n))`
-/

namespace A337317.P8830486830941870506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239333 (n + 1) - A002262 (A150860 n).toNat

end

end A337317.P8830486830941870506

/-!
# A337318: Total number of nodes summed over all nonnegative lattice paths from (0,0) to (n,0) where the allowed steps at (x,y) are (h,v) with h in {1..max(1,y)} and v in {-1,0,1}.

The programs for A337318, there is no canonical definition to state claims against.
-/

/-! ## A337318.P17435322052811159453

`∑[A193832(A137972(n))]`
-/

namespace A337318.P17435322052811159453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193832 (A137972 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A337318.P17435322052811159453

/-! ## A337318.P4258655371429984697

`A027914(n)-A325106(A299106(n))`
-/

namespace A337318.P4258655371429984697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027914 n - A325106 (A299106 n).toNat

end

end A337318.P4258655371429984697

/-! ## A337318.P5791270538789084082

`A333070(n)-A294265(A294281(n))`
-/

namespace A337318.P5791270538789084082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333070 n - A294265 (A294281 n).toNat

end

end A337318.P5791270538789084082

/-!
# A337319: a(n) = Sum_{i = 1..floor(log_2(n))+1} g(frac(n/2^i)), where g(t) = [0 if t = 0, -1 if 0 < t < 1/2, 1 if t >= 1/2], and where frac(x) denotes the fractional part.

The programs for A337319, the canonical program `A337319.P230640024219586560` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A337319 has offset 1).

The definition of A337319 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A145037, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A337319.P230640024219586560

`A145037(A000265(n+1))`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A337319

/-- `A145037(A000265(n+1))` -/
def P230640024219586560.Spec : Prop :=
  ∀ n, P230640024219586560.a n = A337319 (n + 1)

theorem P230640024219586560.correct : P230640024219586560.Spec := by
  intro n
  simp only [A337319, Nat.add_sub_cancel]

end A337319

/-! ## A337319.P16270109059251058121

`A145037(n+1)+A007814(n+1)`
-/

namespace A337319.P16270109059251058121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145037 (n + 1) + A007814 (n + 1)

end

end A337319.P16270109059251058121

namespace A337319

/-- `A145037(n+1)+A007814(n+1)` -/
def P16270109059251058121.Spec : Prop :=
  ∀ n, P16270109059251058121.a n = A337319 (n + 1)

end A337319

/-! ## A337319.P7632703152586880714

`∑{e}[xor(n, -n), 2-#]+a(floor((n-1)/2))+(-1)^n` with `a(0)=1`
-/

namespace A337319.P7632703152586880714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-(n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, (2 - (Nat.factorization (f1 n).natAbs p : ℤ)) + (a ⌊((n : ℤ) - 1 : ℚ) / 2⌋.toNat + (-1) ^ n)

end

end A337319.P7632703152586880714

namespace A337319

/-- `∑{e}[xor(n, -n), 2-#]+a(floor((n-1)/2))+(-1)^n` -/
def P7632703152586880714.Spec : Prop :=
  ∀ n, P7632703152586880714.a n = A337319 (n + 1)

end A337319

/-! ## A337319.P5101556435632929388

`∑[1-val(A075157(n)+1, 2)]`
-/

namespace A337319.P5101556435632929388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (SequenceMachineLib.valuation (A075157 n + 1).toNat 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A337319.P5101556435632929388

namespace A337319

/-- `∑[1-val(A075157(n)+1, 2)]` -/
def P5101556435632929388.Spec : Prop :=
  ∀ n, P5101556435632929388.a n = A337319 (n + 1)

end A337319

/-! ## A337319.P5881136338190230808

`Δ[A268289(n)]+val(n+1, 2)`
-/

namespace A337319.P5881136338190230808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268289 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (SequenceMachineLib.valuation (n + 1) 2 : ℤ)

end

end A337319.P5881136338190230808

namespace A337319

/-- `Δ[A268289(n)]+val(n+1, 2)` -/
def P5881136338190230808.Spec : Prop :=
  ∀ n, P5881136338190230808.a n = A337319 (n + 1)

end A337319

/-! ## A337319.P1101568553630147335

`val(n+1, 2)-A037861(n+1)`
-/

namespace A337319.P1101568553630147335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (n + 1) 2 : ℤ) - A037861 (n + 1)

end

end A337319.P1101568553630147335

namespace A337319

/-- `val(n+1, 2)-A037861(n+1)` -/
def P1101568553630147335.Spec : Prop :=
  ∀ n, P1101568553630147335.a n = A337319 (n + 1)

end A337319

/-! ## A337319.P393771480861968878

`val(n+1, 2)+1-Δ[A296062(n)]`
-/

namespace A337319.P393771480861968878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296062 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (n + 1) 2 + 1 : ℤ) - (f1 (n + 1) - f1 n)

end

end A337319.P393771480861968878

namespace A337319

/-- `val(n+1, 2)+1-Δ[A296062(n)]` -/
def P393771480861968878.Spec : Prop :=
  ∀ n, P393771480861968878.a n = A337319 (n + 1)

end A337319

/-! ## A337319.P8341145254549576089

`-A037861((n+1)/2^val(n+1, 2))`
-/

namespace A337319.P8341145254549576089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A037861 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat

end

end A337319.P8341145254549576089

namespace A337319

/-- `-A037861((n+1)/2^val(n+1, 2))` -/
def P8341145254549576089.Spec : Prop :=
  ∀ n, P8341145254549576089.a n = A337319 (n + 1)

end A337319

/-! ## A337319.P2168934727201740974

`A145037(A030101(n+1))`
-/

namespace A337319.P2168934727201740974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145037 (A030101 (n + 1)).toNat

end

end A337319.P2168934727201740974

namespace A337319

/-- `A145037(A030101(n+1))` -/
def P2168934727201740974.Spec : Prop :=
  ∀ n, P2168934727201740974.a n = A337319 (n + 1)

end A337319

/-! ## A337319.P15473447988146571336

`A145037(A325401(n+1))`
-/

namespace A337319.P15473447988146571336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145037 (A325401 (n + 1)).toNat

end

end A337319.P15473447988146571336

namespace A337319

/-- `A145037(A325401(n+1))` -/
def P15473447988146571336.Spec : Prop :=
  ∀ n, P15473447988146571336.a n = A337319 (n + 1)

end A337319

/-! ## A337319.P13430675756147752867

`A274575(n)+A001511(n+1)`
-/

namespace A337319.P13430675756147752867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274575 n + A001511 (n + 1)

end

end A337319.P13430675756147752867

namespace A337319

/-- `A274575(n)+A001511(n+1)` -/
def P13430675756147752867.Spec : Prop :=
  ∀ n, P13430675756147752867.a n = A337319 (n + 1)

end A337319

/-! ## A337319.P12265870422467659647

`A117123(n+1)-A011371(n)`
-/

namespace A337319.P12265870422467659647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117123 (n + 1) - A011371 n

end

end A337319.P12265870422467659647

namespace A337319

/-- `A117123(n+1)-A011371(n)` -/
def P12265870422467659647.Spec : Prop :=
  ∀ n, P12265870422467659647.a n = A337319 (n + 1)

end A337319

/-! ## A337319.P4498956972343217960

`A007814(n+1)-A037861(n+1)`
-/

namespace A337319.P4498956972343217960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (n + 1) - A037861 (n + 1)

end

end A337319.P4498956972343217960

namespace A337319

/-- `A007814(n+1)-A037861(n+1)` -/
def P4498956972343217960.Spec : Prop :=
  ∀ n, P4498956972343217960.a n = A337319 (n + 1)

end A337319

/-! ## A337319.P8852210647005309372

`A000120(n+1)-A086784(n+1)`
-/

namespace A337319.P8852210647005309372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (n + 1) - A086784 (n + 1)

end

end A337319.P8852210647005309372

namespace A337319

/-- `A000120(n+1)-A086784(n+1)` -/
def P8852210647005309372.Spec : Prop :=
  ∀ n, P8852210647005309372.a n = A337319 (n + 1)

end A337319

/-! ## A337319.P74203909865028372

`A063787(n+1)-A023416(n+1)`
-/

namespace A337319.P74203909865028372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063787 (n + 1) - A023416 (n + 1)

end

end A337319.P74203909865028372

namespace A337319

/-- `A063787(n+1)-A023416(n+1)` -/
def P74203909865028372.Spec : Prop :=
  ∀ n, P74203909865028372.a n = A337319 (n + 1)

end A337319

/-! ## A337319.P6899053855604885527

`log2(A001316(2*n+1))-A023416(n+1)`
-/

namespace A337319.P6899053855604885527
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A001316 (2 * n + 1) : ℝ) - (A023416 (n + 1) : ℝ)

end

end A337319.P6899053855604885527

namespace A337319

/-- `log2(A001316(2*n+1))-A023416(n+1)` -/
def P6899053855604885527.Spec : Prop :=
  ∀ n, P6899053855604885527.a n = (A337319 (n + 1) : ℝ)

end A337319

/-! ## A337319.P9690295986344761176

`log2(A001316(2*n+1))-A080791(n+1)`
-/

namespace A337319.P9690295986344761176
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A001316 (2 * n + 1) : ℝ) - (A080791 (n + 1) : ℝ)

end

end A337319.P9690295986344761176

namespace A337319

/-- `log2(A001316(2*n+1))-A080791(n+1)` -/
def P9690295986344761176.Spec : Prop :=
  ∀ n, P9690295986344761176.a n = (A337319 (n + 1) : ℝ)

end A337319

/-! ## A337319.P8490442844831398361

`A000005(A001316(n))-A080791(n+1)`
-/

namespace A337319.P8490442844831398361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A001316 n).toNat - A080791 (n + 1)

end

end A337319.P8490442844831398361

namespace A337319

/-- `A000005(A001316(n))-A080791(n+1)` -/
def P8490442844831398361.Spec : Prop :=
  ∀ n, P8490442844831398361.a n = A337319 (n + 1)

end A337319

/-! ## A337319.P14362601389357046166

`A070939(A001316(n))-A023416(n+1)`
-/

namespace A337319.P14362601389357046166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A001316 n).toNat - A023416 (n + 1)

end

end A337319.P14362601389357046166

namespace A337319

/-- `A070939(A001316(n))-A023416(n+1)` -/
def P14362601389357046166.Spec : Prop :=
  ∀ n, P14362601389357046166.a n = A337319 (n + 1)

end A337319

/-! ## A337319.P9399342343092934391

`A000120(n+1)-A048881(A035327(n+1))`
-/

namespace A337319.P9399342343092934391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (n + 1) - A048881 (A035327 (n + 1)).toNat

end

end A337319.P9399342343092934391

namespace A337319

/-- `A000120(n+1)-A048881(A035327(n+1))` -/
def P9399342343092934391.Spec : Prop :=
  ∀ n, P9399342343092934391.a n = A337319 (n + 1)

end A337319

/-!
# A337320: Number of ordered pairs of divisors of n, (d1,d2), such that d1 is prime and d1 < d2.

The programs for A337320, there is no canonical definition to state claims against.
-/

/-! ## A337320.P7290099560195942399

`A332085(n+1)-A001221(n+1)`
-/

namespace A337320.P7290099560195942399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332085 (n + 1) - A001221 (n + 1)

end

end A337320.P7290099560195942399

/-! ## A337320.P5518935229164180759

`A248577(n+1)-(A337322(n+1)+A001221(n+1))`
-/

namespace A337320.P5518935229164180759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248577 (n + 1) - (A337322 (n + 1) + A001221 (n + 1))

end

end A337320.P5518935229164180759

/-! ## A337320.P9893707976008461592

`A248577(n+1)-A337228(n+1)`
-/

namespace A337320.P9893707976008461592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248577 (n + 1) - A337228 (n + 1)

end

end A337320.P9893707976008461592

/-! ## A337320.P12847067666552078441

`A332085(n+1)-A158210((n+1)²)`
-/

namespace A337320.P12847067666552078441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332085 (n + 1) - A158210 ((n + 1) ^ 2)

end

end A337320.P12847067666552078441

/-! ## A337320.P5828263099525144198

`A332085(n+1)-log2(A034444(n+1))`
-/

namespace A337320.P5828263099525144198
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A332085 (n + 1) : ℝ) - Real.logb 2 (A034444 (n + 1) : ℝ)

end

end A337320.P5828263099525144198

/-! ## A337320.P17399443411509873836

`A332085(n+1)-∑{p}[n+1, A001222(#)]`
-/

namespace A337320.P17399443411509873836
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332085 (n + 1) - ∑ p ∈ Nat.primeFactors (f1 n), A001222 p

end

end A337320.P17399443411509873836

/-! ## A337320.P599130863732070358

`A332085(n+1)-A001222(∏{p}[n+1, #])`
-/

namespace A337320.P599130863732070358
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332085 (n + 1) - A001222 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A337320.P599130863732070358

/-! ## A337320.P7500265427274846405

`A332085(n+1)-∑{p}[n+1, abs(A008683(#))]`
-/

namespace A337320.P7500265427274846405
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332085 (n + 1) - ∑ p ∈ Nat.primeFactors (f1 n), |A008683 p|

end

end A337320.P7500265427274846405

/-! ## A337320.P18047235242870499894

`A332085(n+1)-∑{p}[n+1, log2(A000005(#))]`
-/

namespace A337320.P18047235242870499894
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A332085 (n + 1) : ℝ) - ∑ p ∈ Nat.primeFactors (f1 n), Real.logb 2 (A000005 p : ℝ)

end

end A337320.P18047235242870499894

/-! ## A337320.P17101773841641706141

`A332085(n+1)-A001222(A007947(n+1))`
-/

namespace A337320.P17101773841641706141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332085 (n + 1) - A001222 (A007947 (n + 1)).toNat

end

end A337320.P17101773841641706141

/-!
# A337322: Number of ordered pairs of divisors of n, (d1,d2), such that d2 is prime and d1 < d2.

The programs for A337322, there is no canonical definition to state claims against.
-/

/-! ## A337322.P9703617831132463860

`A337228(n+1)-A001221(n+1)`
-/

namespace A337322.P9703617831132463860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337228 (n + 1) - A001221 (n + 1)

end

end A337322.P9703617831132463860

/-! ## A337322.P16626231930715751939

`A248577(n+1)-A332085(n+1)`
-/

namespace A337322.P16626231930715751939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248577 (n + 1) - A332085 (n + 1)

end

end A337322.P16626231930715751939

/-! ## A337322.P17702231449281465217

`∑{d}[n+1, A341642(#)]`
-/

namespace A337322.P17702231449281465217
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A341642 d

end

end A337322.P17702231449281465217

/-! ## A337322.P16208704009636854000

`A087133(n+1)-A233672(∑{p}[n+1, gcd(n, #)])`
-/

namespace A337322.P16208704009636854000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087133 (n + 1) - A233672 (∑ p ∈ Nat.primeFactors (f1 n), Nat.gcd n p)

end

end A337322.P16208704009636854000

/-! ## A337322.P17390058856888698382

`A087133(n+1)-A233672(∑{e}[∏{p}[n+1, #], #])`
-/

namespace A337322.P17390058856888698382
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087133 (n + 1) - A233672 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A337322.P17390058856888698382

/-! ## A337322.P6407171659499744172

`A087133(n+1)-A233672(∑{p}[n+1, ceil(1/#)])`
-/

namespace A337322.P6407171659499744172
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087133 (n + 1) - A233672 (∑ p ∈ Nat.primeFactors (f1 n), ⌈1 / (p : ℚ)⌉).toNat

end

end A337322.P6407171659499744172

/-! ## A337322.P9882777480640447171

`A292138(A034444(n+1))+A087133(n+1)`
-/

namespace A337322.P9882777480640447171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292138 (A034444 (n + 1)).toNat + A087133 (n + 1)

end

end A337322.P9882777480640447171

/-! ## A337322.P1132164360558551721

`A087133(n+1)-A233672(A001222(∏{p}[n+1, #]))`
-/

namespace A337322.P1132164360558551721
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087133 (n + 1) - A233672 (A001222 (∏ p ∈ Nat.primeFactors (f1 n), p)).toNat

end

end A337322.P1132164360558551721

/-! ## A337322.P10354971856978645571

`A248577(n+1)-(A337320(n+1)+A001221(n+1))`
-/

namespace A337322.P10354971856978645571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248577 (n + 1) - (A337320 (n + 1) + A001221 (n + 1))

end

end A337322.P10354971856978645571

/-!
# A337323: a(n) = gcd(n, tau(n), sigma(n), pod(n)) where tau(k) is the number of divisors of k (A000005), sigma(k) is the sum of divisors of k (A000203) and pod(k) is the product of divisors of k (A007955).

The programs for A337323, the canonical program `A337323.P11801849729673822037` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A337323 has offset 1).

The definition of A337323 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A337323.P7306256191810237028

`gcd(n+1, A009205(n+1))`
-/

namespace A337323.P7306256191810237028
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A009205 (n + 1))

end

end A337323.P7306256191810237028

namespace A337323

/-- `gcd(n+1, A009205(n+1))` -/
def P7306256191810237028.Spec : Prop :=
  ∀ n, (P7306256191810237028.a n : ℤ) = A337323 (n + 1)

end A337323

/-! ## A337323.P8001642656366564250

`gcd(61*(n+1), A336722(n+1))`
-/

namespace A337323.P8001642656366564250
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (61 * (n + 1) : ℤ) (A336722 (n + 1))

end

end A337323.P8001642656366564250

namespace A337323

/-- `gcd(61*(n+1), A336722(n+1))` -/
def P8001642656366564250.Spec : Prop :=
  ∀ n, (P8001642656366564250.a n : ℤ) = A337323 (n + 1)

end A337323

/-! ## A337323.P11801849729673822037

`gcd(∑{d}[n+1, #], A303781(n+1))`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A337323

/-- `gcd(∑{d}[n+1, #], A303781(n+1))` -/
def P11801849729673822037.Spec : Prop :=
  ∀ n, (P11801849729673822037.a n : ℤ) = A337323 (n + 1)

theorem P11801849729673822037.correct : P11801849729673822037.Spec := by
  intro n
  simp only [A337323, Nat.add_sub_cancel]

end A337323

/-! ## A337323.P10107707924265533553

`gcd(gcd(2*n+1-n, A155085(n+1)), ∏{e}[n+1, #+1])`
-/

namespace A337323.P10107707924265533553
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (Int.gcd ((2 * n + 1 : ℤ) - (n : ℤ)) (A155085 (n + 1))) (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1))

end

end A337323.P10107707924265533553

namespace A337323

/-- `gcd(gcd(2*n+1-n, A155085(n+1)), ∏{e}[n+1, #+1])` -/
def P10107707924265533553.Spec : Prop :=
  ∀ n, (P10107707924265533553.a n : ℤ) = A337323 (n + 1)

end A337323

/-! ## A337323.P9684466662213993978

`gcd(A009205(n+1), A131738(n))`
-/

namespace A337323.P9684466662213993978
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A009205 (n + 1)) (A131738 n)

end

end A337323.P9684466662213993978

namespace A337323

/-- `gcd(A009205(n+1), A131738(n))` -/
def P9684466662213993978.Spec : Prop :=
  ∀ n, (P9684466662213993978.a n : ℤ) = A337323 (n + 1)

end A337323

/-! ## A337323.P16063705543917311461

`gcd(A000005(n+1), A009194(n+1))`
-/

namespace A337323.P16063705543917311461
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000005 (n + 1)) (A009194 (n + 1))

end

end A337323.P16063705543917311461

namespace A337323

/-- `gcd(A000005(n+1), A009194(n+1))` -/
def P16063705543917311461.Spec : Prop :=
  ∀ n, (P16063705543917311461.a n : ℤ) = A337323 (n + 1)

end A337323

/-! ## A337323.P10031462756550732184

`gcd(A000203(n+1), A009191(n+1))`
-/

namespace A337323.P10031462756550732184
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000203 (n + 1)) (A009191 (n + 1))

end

end A337323.P10031462756550732184

namespace A337323

/-- `gcd(A000203(n+1), A009191(n+1))` -/
def P10031462756550732184.Spec : Prop :=
  ∀ n, (P10031462756550732184.a n : ℤ) = A337323 (n + 1)

end A337323

/-! ## A337323.P13095143491011803675

`gcd(A001160(n+1), A303781(n+1))`
-/

namespace A337323.P13095143491011803675
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001160 (n + 1)) (A303781 (n + 1))

end

end A337323.P13095143491011803675

namespace A337323

/-- `gcd(A001160(n+1), A303781(n+1))` -/
def P13095143491011803675.Spec : Prop :=
  ∀ n, (P13095143491011803675.a n : ℤ) = A337323 (n + 1)

end A337323

/-! ## A337323.P3831876556187296114

`A336723(n+1)/A334985(n+1)`
-/

namespace A337323.P3831876556187296114
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A336723 (n + 1) : ℚ) / (A334985 (n + 1) : ℚ)

end

end A337323.P3831876556187296114

namespace A337323

/-- `A336723(n+1)/A334985(n+1)` -/
def P3831876556187296114.Spec : Prop :=
  ∀ n, P3831876556187296114.a n = (A337323 (n + 1) : ℚ)

end A337323

/-! ## A337323.P5731649584486863169

`A329929(n+1)/A334985(n+1)*A336722(n+1)`
-/

namespace A337323.P5731649584486863169
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A329929 (n + 1) : ℚ) / (A334985 (n + 1) : ℚ) * (A336722 (n + 1) : ℚ)

end

end A337323.P5731649584486863169

namespace A337323

/-- `A329929(n+1)/A334985(n+1)*A336722(n+1)` -/
def P5731649584486863169.Spec : Prop :=
  ∀ n, P5731649584486863169.a n = (A337323 (n + 1) : ℚ)

end A337323

/-! ## A337323.P3988577599845173009

`A003989(A286591(n+1))`
-/

namespace A337323.P3988577599845173009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003989 (A286591 (n + 1)).toNat

end

end A337323.P3988577599845173009

namespace A337323

/-- `A003989(A286591(n+1))` -/
def P3988577599845173009.Spec : Prop :=
  ∀ n, P3988577599845173009.a n = A337323 (n + 1)

end A337323

/-! ## A337323.P10638632979453643483

`gcd(A009205(n+1), A041007(n))`
-/

namespace A337323.P10638632979453643483
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A009205 (n + 1)) (A041007 n)

end

end A337323.P10638632979453643483

namespace A337323

/-- `gcd(A009205(n+1), A041007(n))` -/
def P10638632979453643483.Spec : Prop :=
  ∀ n, (P10638632979453643483.a n : ℤ) = A337323 (n + 1)

end A337323

/-!
# A337324: a(n) is the smallest number m such that gcd(m, tau(m), sigma(m), pod(m)) = n where tau(k) is the number of divisors of k (A000005), sigma(k) is the sum of divisors of k (A000203) and pod(k) is the product of divisors of k (A007955).

The programs for A337324, there is no canonical definition to state claims against.
-/

/-! ## A337324.P11261028872284411491

`A344695(A275307(n+1)+4*n)`
-/

namespace A337324.P11261028872284411491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344695 (A275307 (n + 1) + (4 * n : ℤ)).toNat

end

end A337324.P11261028872284411491

/-!
# A337327: Maximum value of the cyclic self-convolution of the first n terms of the characteristic function of primes.

The programs for A337327, there is no canonical definition to state claims against.
-/

/-! ## A337327.P18023950770034164404

`A056239(n+1)-A242830(A261396(n))`
-/

namespace A337327.P18023950770034164404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (n + 1) - A242830 (A261396 n).toNat

end

end A337327.P18023950770034164404

/-! ## A337327.P9553751925124455374

`A000720(n+1)-A056980(A185755(n+1))`
-/

namespace A337327.P9553751925124455374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1) - A056980 (A185755 (n + 1)).toNat

end

end A337327.P9553751925124455374

/-! ## A337327.P15511033239026890946

`A056239(n+1)-A320927(A008336(n+1))`
-/

namespace A337327.P15511033239026890946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (n + 1) - A320927 (A008336 (n + 1)).toNat

end

end A337327.P15511033239026890946

/-! ## A337327.P15036049381175914016

`∑[A010051(n+1)]-A056980(A185755(n+1))`
-/

namespace A337327.P15036049381175914016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A056980 (A185755 (n + 1)).toNat

end

end A337327.P15036049381175914016

/-! ## A337327.P18153140075209785538

`A030530(n)-A357722(A325008(n+1))`
-/

namespace A337327.P18153140075209785538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030530 n - A357722 ((A325008 (n + 1)).toNat + 11)

end

end A337327.P18153140075209785538

/-!
# A337328: Number of pairs of squarefree divisors of n, (d1,d2), such that d1 <= d2.

The programs for A337328, there is no canonical definition to state claims against.
-/

/-! ## A337328.P11204478300211835929

`C(∏{p}[n+1, 2%#²]+1, 2)`
-/

namespace A337328.P11204478300211835929
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∏ p ∈ Nat.primeFactors (f1 n), 2 % p ^ 2 + 1) 2

end

end A337328.P11204478300211835929

/-! ## A337328.P6903321495002188710

`C(∏{e}[n+1, ceil(root(2, #))]+1, 2)`
-/

namespace A337328.P6903321495002188710
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∏ p ∈ Nat.primeFactors (f1 n), ⌈(2 : ℝ) ^ (1 / (Nat.factorization (f1 n) p : ℝ))⌉ + 1).toNat 2

end

end A337328.P6903321495002188710

/-! ## A337328.P14466865993244846120

`C(2^∑{p}[n+1, gcd(n, #)]+1, 2)`
-/

namespace A337328.P14466865993244846120
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.gcd n p) + 1) 2

end

end A337328.P14466865993244846120

/-! ## A337328.P10767918045603623694

`C(2^∑{e}[∏{p}[n+1, #], #]+1, 2)`
-/

namespace A337328.P10767918045603623694
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) + 1) 2

end

end A337328.P10767918045603623694

/-! ## A337328.P12103518176690671310

`C(2^∑{p}[n+1, ceil(1/#)]+1, 2)`
-/

namespace A337328.P12103518176690671310
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.roundAway ((2 : ℚ) ^ (∑ p ∈ Nat.primeFactors (f1 n), ⌈1 / (p : ℚ)⌉ : ℤ) + 1)).toNat 2

end

end A337328.P12103518176690671310

/-! ## A337328.P15032444671437180395

`C(floor(∏{e}[n+1, #/(n+1)+2])+1, 2)`
-/

namespace A337328.P15032444671437180395
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (⌊∏ p ∈ Nat.primeFactors (f1 n), ((Nat.factorization (f1 n) p : ℚ) / (n + 1 : ℚ) + 2)⌋ + 1).toNat 2

end

end A337328.P15032444671437180395

/-! ## A337328.P13251353727189546553

`C(ceil(∏{p}[n+1, 2-#/(2*n+1)])+1, 2)`
-/

namespace A337328.P13251353727189546553
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (⌈∏ p ∈ Nat.primeFactors (f1 n), (2 - (p : ℚ) / (2 * n + 1 : ℚ))⌉ + 1).toNat 2

end

end A337328.P13251353727189546553

/-! ## A337328.P14470895910459910546

`A184389(∏{p}[n+1, #])`
-/

namespace A337328.P14470895910459910546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184389 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A337328.P14470895910459910546

/-! ## A337328.P3566660532269557262

`C(A034444(n+1)+1, 2)`
-/

namespace A337328.P3566660532269557262
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A034444 (n + 1) + 1).toNat 2

end

end A337328.P3566660532269557262

/-! ## A337328.P12678599935538180942

`C(A309307(n+1)+2, 2)`
-/

namespace A337328.P12678599935538180942
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A309307 (n + 1) + 2).toNat 2

end

end A337328.P12678599935538180942

/-!
# A337329: Sum of the products of all pairs of divisors of n, (d1,d2), such that d1|n, d2|n, d1|d2 and d1<d2.

The programs for A337329, there is no canonical definition to state claims against.
-/

/-! ## A337329.P13319305095545444422

`∑{d}[n+1, #*A001065(#)]`
-/

namespace A337329.P13319305095545444422
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A001065 d

end

end A337329.P13319305095545444422

/-! ## A337329.P6097960976614283929

`∑{d}[n+1, A064987(#)-#²]`
-/

namespace A337329.P6097960976614283929
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A064987 d - (d ^ 2 : ℤ))

end

end A337329.P6097960976614283929

/-! ## A337329.P5696162888689459785

`∑{d}[n+1, #*(A000203(#)-#)]`
-/

namespace A337329.P5696162888689459785
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * (A000203 d - (d : ℤ))

end

end A337329.P5696162888689459785

/-! ## A337329.P1962778577004572554

`A001001(n+1)-∑{d}[n+1, #²]`
-/

namespace A337329.P1962778577004572554
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001001 (n + 1) - ((∑ d ∈ Nat.divisors (f1 n), d ^ 2 : ℕ) : ℤ)

end

end A337329.P1962778577004572554

/-! ## A337329.P12850868493163176434

`A245484(n+1)+∑{d}[n+1, #*(n+1-#)]`
-/

namespace A337329.P12850868493163176434
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245484 (n + 1) + ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * ((n + 1 : ℤ) - (d : ℤ))

end

end A337329.P12850868493163176434

/-! ## A337329.P1829166686228498231

`A303384(n+1)+A245484(n+1)`
-/

namespace A337329.P1829166686228498231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303384 (n + 1) + A245484 (n + 1)

end

end A337329.P1829166686228498231

/-! ## A337329.P5575153042457455594

`A001001(n+1)-A001157(n+1)`
-/

namespace A337329.P5575153042457455594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001001 (n + 1) - A001157 (n + 1)

end

end A337329.P5575153042457455594

/-! ## A337329.P4264454873509883849

`∑{d}[n+1, A064987(#)]-A001157(n+1)`
-/

namespace A337329.P4264454873509883849
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A064987 d - A001157 (n + 1)

end

end A337329.P4264454873509883849

/-! ## A337329.P17548433172982821525

`∑{d}[n+1, A000203(#)*A053650((n+1)/#)]`
-/

namespace A337329.P17548433172982821525
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000203 d * A053650 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A337329.P17548433172982821525

/-! ## A337329.P10840903384697058113

`∑{d}[n+1, A007433(#)*A053139((n+1)/#)]`
-/

namespace A337329.P10840903384697058113
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007433 d * A053139 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A337329.P10840903384697058113

/-!
# A337331: Number of pairs of divisors of n, (d1,d2), with d1 <= d2, whose average is an integer and divides n.

The programs for A337331, there is no canonical definition to state claims against.
-/

/-! ## A337331.P2319385849104756311

`A091009(n+1)+∏{e}[n+1, #+1]`
-/

namespace A337331.P2319385849104756311
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091009 (n + 1) + ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ)

end

end A337331.P2319385849104756311

/-! ## A337331.P3789959714078727798

`A091009(n+1)+Δ[A006218(n)]`
-/

namespace A337331.P3789959714078727798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091009 (n + 1) + (f1 (n + 1) - f1 n)

end

end A337331.P3789959714078727798

/-! ## A337331.P4489811196980857178

`A091009(n+1)+Δ[A054519(n)]`
-/

namespace A337331.P4489811196980857178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091009 (n + 1) + (f1 (n + 1) - f1 n)

end

end A337331.P4489811196980857178

/-! ## A337331.P10118988295791846678

`A091009(n+1)+A000005(n+1)`
-/

namespace A337331.P10118988295791846678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091009 (n + 1) + A000005 (n + 1)

end

end A337331.P10118988295791846678

/-! ## A337331.P9134407799125934426

`A091009(n+1)+sqrt(A035116(n+1))`
-/

namespace A337331.P9134407799125934426
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A091009 (n + 1) : ℝ) + Real.sqrt (A035116 (n + 1) : ℝ)

end

end A337331.P9134407799125934426

/-! ## A337331.P10296603280018538590

`A091009(n+1)+∑{d}[n+1, A020639(2*#)]/2`
-/

namespace A337331.P10296603280018538590
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091009 (n + 1) : ℚ) + ((∑ d ∈ Nat.divisors (f1 n), A020639 (2 * d) : ℤ) : ℚ) / 2

end

end A337331.P10296603280018538590

/-! ## A337331.P16270444651270242483

`A091009(n+1)+∑{d}[n+1, 1-A000010(#)]+n+1`
-/

namespace A337331.P16270444651270242483
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091009 (n + 1) + (∑ d ∈ Nat.divisors (f1 n), (1 - A000010 d) + (n + 1 : ℤ))

end

end A337331.P16270444651270242483

/-! ## A337331.P8987406763417278571

`A091009(n+1)+∑{d}[n+1, 1-#]+A000203(n+1)`
-/

namespace A337331.P8987406763417278571
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091009 (n + 1) + (∑ d ∈ Nat.divisors (f1 n), (1 - (d : ℤ)) + A000203 (n + 1))

end

end A337331.P8987406763417278571

/-!
# A337333: Number of pairs of odd divisors of n, (d1,d2), such that d1 <= d2.

The programs for A337333, the canonical program `A337333.P18242148625469712112` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A337333 has offset 1).

The definition of A337333 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A337333.P18242148625469712112

`A000217(A001227(n+1))`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A337333

/-- `A000217(A001227(n+1))` -/
def P18242148625469712112.Spec : Prop :=
  ∀ n, P18242148625469712112.a n = A337333 (n + 1)

theorem P18242148625469712112.correct : P18242148625469712112.Spec := by
  intro n
  simp only [A337333, Nat.add_sub_cancel]

end A337333

/-! ## A337333.P12856142445781145863

`C(Δ[A248517(n)]+2, 2)`
-/

namespace A337333.P12856142445781145863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248517 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (f1 (n + 1) - f1 n + 2).toNat 2

end

end A337333.P12856142445781145863

namespace A337333

/-- `C(Δ[A248517(n)]+2, 2)` -/
def P12856142445781145863.Spec : Prop :=
  ∀ n, (P12856142445781145863.a n : ℤ) = A337333 (n + 1)

end A337333

/-! ## A337333.P12230962332485822804

`C(A069283(n+1)+2, 2)`
-/

namespace A337333.P12230962332485822804
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A069283 (n + 1) + 2).toNat 2

end

end A337333.P12230962332485822804

namespace A337333

/-- `C(A069283(n+1)+2, 2)` -/
def P12230962332485822804.Spec : Prop :=
  ∀ n, (P12230962332485822804.a n : ℤ) = A337333 (n + 1)

end A337333

/-! ## A337333.P9271237144422179497

`A000217(∑{d}[n+1, #%2])`
-/

namespace A337333.P9271237144422179497
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (∑ d ∈ Nat.divisors (f1 n), d % 2)

end

end A337333.P9271237144422179497

namespace A337333

/-- `A000217(∑{d}[n+1, #%2])` -/
def P9271237144422179497.Spec : Prop :=
  ∀ n, P9271237144422179497.a n = A337333 (n + 1)

end A337333

/-! ## A337333.P10445488203833843517

`A184389((n+1)/2^val(n+1, 2))`
-/

namespace A337333.P10445488203833843517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184389 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat

end

end A337333.P10445488203833843517

namespace A337333

/-- `A184389((n+1)/2^val(n+1, 2))` -/
def P10445488203833843517.Spec : Prop :=
  ∀ n, P10445488203833843517.a n = A337333 (n + 1)

end A337333

/-! ## A337333.P10808493915452790057

`C(A099777(n+1)-∏{e}[n+1, #+1]+1, 2)`
-/

namespace A337333.P10808493915452790057
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A099777 (n + 1) - ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) + 1).toNat 2

end

end A337333.P10808493915452790057

namespace A337333

/-- `C(A099777(n+1)-∏{e}[n+1, #+1]+1, 2)` -/
def P10808493915452790057.Spec : Prop :=
  ∀ n, (P10808493915452790057.a n : ℤ) = A337333 (n + 1)

end A337333

/-! ## A337333.P10068267861826912887

`A184389(A000265(n+1))`
-/

namespace A337333.P10068267861826912887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184389 (A000265 (n + 1)).toNat

end

end A337333.P10068267861826912887

namespace A337333

/-- `A184389(A000265(n+1))` -/
def P10068267861826912887.Spec : Prop :=
  ∀ n, P10068267861826912887.a n = A337333 (n + 1)

end A337333

/-! ## A337333.P2602701763690568861

`A184389(A064989(n+1))`
-/

namespace A337333.P2602701763690568861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184389 (A064989 (n + 1)).toNat

end

end A337333.P2602701763690568861

namespace A337333

/-- `A184389(A064989(n+1))` -/
def P2602701763690568861.Spec : Prop :=
  ∀ n, P2602701763690568861.a n = A337333 (n + 1)

end A337333

/-! ## A337333.P12927437188137000361

`A184389(A336158(n+1))`
-/

namespace A337333.P12927437188137000361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184389 (A336158 (n + 1)).toNat

end

end A337333.P12927437188137000361

namespace A337333

/-- `A184389(A336158(n+1))` -/
def P12927437188137000361.Spec : Prop :=
  ∀ n, P12927437188137000361.a n = A337333 (n + 1)

end A337333

/-! ## A337333.P16424035031167310187

`A184389(A348747(n+1))`
-/

namespace A337333.P16424035031167310187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184389 (A348747 (n + 1)).toNat

end

end A337333.P16424035031167310187

namespace A337333

/-- `A184389(A348747(n+1))` -/
def P16424035031167310187.Spec : Prop :=
  ∀ n, P16424035031167310187.a n = A337333 (n + 1)

end A337333

/-! ## A337333.P16578825569038340369

`A184389(A354092(n+1))`
-/

namespace A337333.P16578825569038340369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184389 (A354092 (n + 1)).toNat

end

end A337333.P16578825569038340369

namespace A337333

/-- `A184389(A354092(n+1))` -/
def P16578825569038340369.Spec : Prop :=
  ∀ n, P16578825569038340369.a n = A337333 (n + 1)

end A337333

/-! ## A337333.P16971126657705329709

`A000217(A069283(n+1)+1)`
-/

namespace A337333.P16971126657705329709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A069283 (n + 1) + 1).toNat

end

end A337333.P16971126657705329709

namespace A337333

/-- `A000217(A069283(n+1)+1)` -/
def P16971126657705329709.Spec : Prop :=
  ∀ n, P16971126657705329709.a n = A337333 (n + 1)

end A337333

/-! ## A337333.P11302210068939333954

`A008805(A054844(n+1)-1)`
-/

namespace A337333.P11302210068939333954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008805 (A054844 (n + 1) - 1).toNat

end

end A337333.P11302210068939333954

namespace A337333

/-- `A008805(A054844(n+1)-1)` -/
def P11302210068939333954.Spec : Prop :=
  ∀ n, P11302210068939333954.a n = A337333 (n + 1)

end A337333

/-! ## A337333.P1456327914755064014

`A075303(2*A001227(n+1))`
-/

namespace A337333.P1456327914755064014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075303 (2 * A001227 (n + 1)).toNat

end

end A337333.P1456327914755064014

namespace A337333

/-- `A075303(2*A001227(n+1))` -/
def P1456327914755064014.Spec : Prop :=
  ∀ n, P1456327914755064014.a n = A337333 (n + 1)

end A337333

/-! ## A337333.P10856979925337478118

`A337362(A000265(2*(n+1)))`
-/

namespace A337333.P10856979925337478118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337362 (A000265 (2 * (n + 1))).toNat

end

end A337333.P10856979925337478118

namespace A337333

/-- `A337362(A000265(2*(n+1)))` -/
def P10856979925337478118.Spec : Prop :=
  ∀ n, P10856979925337478118.a n = A337333 (n + 1)

end A337333

/-! ## A337333.P4364753367842720356

`A337532(2*A025480(n)+1)`
-/

namespace A337333.P4364753367842720356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337532 (2 * A025480 n + 1).toNat

end

end A337333.P4364753367842720356

namespace A337333

/-- `A337532(2*A025480(n)+1)` -/
def P4364753367842720356.Spec : Prop :=
  ∀ n, P4364753367842720356.a n = A337333 (n + 1)

end A337333

/-! ## A337333.P14916010066088439554

`A000217(A054844(n+1)/2)`
-/

namespace A337333.P14916010066088439554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (SequenceMachineLib.roundAway ((A054844 (n + 1) : ℚ) / 2)).toNat

end

end A337333.P14916010066088439554

namespace A337333

/-- `A000217(A054844(n+1)/2)` -/
def P14916010066088439554.Spec : Prop :=
  ∀ n, P14916010066088439554.a n = A337333 (n + 1)

end A337333

/-! ## A337333.P6919796691587329988

`A337532(A000265(2*n+2))`
-/

namespace A337333.P6919796691587329988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337532 (A000265 (2 * n + 2)).toNat

end

end A337333.P6919796691587329988

namespace A337333

/-- `A337532(A000265(2*n+2))` -/
def P6919796691587329988.Spec : Prop :=
  ∀ n, P6919796691587329988.a n = A337333 (n + 1)

end A337333

/-! ## A337333.P12276397481830016493

`∑{d}[n+1, A275367(#)*A353557((n+1)/#)]`
-/

namespace A337333.P12276397481830016493
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A275367 d * A353557 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A337333.P12276397481830016493

namespace A337333

/-- `∑{d}[n+1, A275367(#)*A353557((n+1)/#)]` -/
def P12276397481830016493.Spec : Prop :=
  ∀ n, P12276397481830016493.a n = A337333 (n + 1)

end A337333

/-! ## A337333.P11888292089722851105

`A000217(A000005((n+1)/and(n+1, -(n+1))))`
-/

namespace A337333.P11888292089722851105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A000005 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ))).toNat).toNat

end

end A337333.P11888292089722851105

namespace A337333

/-- `A000217(A000005((n+1)/and(n+1, -(n+1))))` -/
def P11888292089722851105.Spec : Prop :=
  ∀ n, P11888292089722851105.a n = A337333 (n + 1)

end A337333

/-!
# A337334: a(n) = pi(b(n)), where pi is the prime counting function (A000720) and b(n) = a(n-1) + b(n-1) with a(0) = b(0) = 1.

The programs for A337334, the canonical program `A337334.P10248863637512892447` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A337334 has offset 0).

The definition of A337334 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 190 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A337334.P10248863637512892447

`Δ[A061535(A028310(n))]+C(2, n+2)`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A337334

/-- `Δ[A061535(A028310(n))]+C(2, n+2)` -/
def P10248863637512892447.Spec : Prop :=
  ∀ n, P10248863637512892447.a n = A337334 n

theorem P10248863637512892447.correct : P10248863637512892447.Spec := by
  intro n
  simp only [A337334]

end A337334

/-! ## A337334.P1148182130052664390

`A000007(n)+Δ[A061535(A028310(n))]`
-/

namespace A337334.P1148182130052664390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061535 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (f1 (n + 1) - f1 n)

end

end A337334.P1148182130052664390

namespace A337334

/-- `A000007(n)+Δ[A061535(A028310(n))]` -/
def P1148182130052664390.Spec : Prop :=
  ∀ n, P1148182130052664390.a n = A337334 n

end A337334

/-! ## A337334.P7662139078710342246

`Δ[A061535(A028310(n))+A057427(n)]`
-/

namespace A337334.P7662139078710342246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061535 (A028310 n).toNat + A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A337334.P7662139078710342246

namespace A337334

/-- `Δ[A061535(A028310(n))+A057427(n)]` -/
def P7662139078710342246.Spec : Prop :=
  ∀ n, P7662139078710342246.a n = A337334 n

end A337334

/-! ## A337334.P7587786740942203994

`Δ[A061535(A028310(n))-A014963(4*n+2)]`
-/

namespace A337334.P7587786740942203994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061535 (A028310 n).toNat - A014963 (4 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A337334.P7587786740942203994

namespace A337334

/-- `Δ[A061535(A028310(n))-A014963(4*n+2)]` -/
def P7587786740942203994.Spec : Prop :=
  ∀ n, P7587786740942203994.a n = A337334 n

end A337334

/-! ## A337334.P8410313779355175460

`Δ[A061535(A028310(n))]^(A000040(n+1)%2)`
-/

namespace A337334.P8410313779355175460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061535 (A028310 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) ^ (Int.tmod (A000040 (n + 1)) 2 : ℤ)

end

end A337334.P8410313779355175460

namespace A337334

/-- `Δ[A061535(A028310(n))]^(A000040(n+1)%2)` -/
def P8410313779355175460.Spec : Prop :=
  ∀ n, P8410313779355175460.a n = (A337334 n : ℚ)

end A337334

/-! ## A337334.P10437324959017509597

`Δ[A061535(A028310(n))]-A008683(2*(n+1)²)`
-/

namespace A337334.P10437324959017509597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061535 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A008683 (2 * (n + 1) ^ 2)

end

end A337334.P10437324959017509597

namespace A337334

/-- `Δ[A061535(A028310(n))]-A008683(2*(n+1)²)` -/
def P10437324959017509597.Spec : Prop :=
  ∀ n, P10437324959017509597.a n = A337334 n

end A337334

/-! ## A337334.P10098188829192722755

`Δ[A000720(a(n-1))+a(n-1)]` with `a(0)=1, a(1)=2`
-/

namespace A337334.P10098188829192722755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  A000720 (f1 (n - 1)).toNat + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A337334.P10098188829192722755

namespace A337334

/-- `Δ[A000720(a(n-1))+a(n-1)]` -/
def P10098188829192722755.Spec : Prop :=
  ∀ n, P10098188829192722755.a n = A337334 n

end A337334

/-! ## A337334.P73273057641334313

`A000720(A061535(round(sqrt(n²+1))))`
-/

namespace A337334.P73273057641334313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A061535 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat).toNat

end

end A337334.P73273057641334313

namespace A337334

/-- `A000720(A061535(round(sqrt(n²+1))))` -/
def P73273057641334313.Spec : Prop :=
  ∀ n, P73273057641334313.a n = A337334 n

end A337334

/-!
# A337335: a(n) = gcd(A048673(n), 1+A003973(n)).

The programs for A337335, the canonical program `A337335.P16507265626637162204` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A337335 has offset 1).

The definition of A337335 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003973, A048673, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A337335.P16507265626637162204

`gcd(A048673(n+1), 1+A003973(n+1))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A337335

/-- `gcd(A048673(n+1), 1+A003973(n+1))` -/
def P16507265626637162204.Spec : Prop :=
  ∀ n, (P16507265626637162204.a n : ℤ) = A337335 (n + 1)

theorem P16507265626637162204.correct : P16507265626637162204.Spec := by
  intro n
  simp only [A337335, Nat.add_sub_cancel]

end A337335

/-! ## A337335.P7908100294163057005

`gcd((1+A003961(n+1))/2, 1+A000203(A003961(n+1)))`
-/

namespace A337335.P7908100294163057005
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((1 + A003961 (n + 1) : ℚ) / 2)) (1 + A000203 (A003961 (n + 1)).toNat)

end

end A337335.P7908100294163057005

namespace A337335

/-- `gcd((1+A003961(n+1))/2, 1+A000203(A003961(n+1)))` -/
def P7908100294163057005.Spec : Prop :=
  ∀ n, (P7908100294163057005.a n : ℤ) = A337335 (n + 1)

end A337335

/-! ## A337335.P14774106759192105687

`gcd(A048673(n+1), A336851(n+1))`
-/

namespace A337335.P14774106759192105687
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A048673 (n + 1)) (A336851 (n + 1))

end

end A337335.P14774106759192105687

namespace A337335

/-- `gcd(A048673(n+1), A336851(n+1))` -/
def P14774106759192105687.Spec : Prop :=
  ∀ n, (P14774106759192105687.a n : ℤ) = A337335 (n + 1)

end A337335

/-! ## A337335.P10040702764453707537

`gcd(A008619(A253885(n)), A336851(n+1))`
-/

namespace A337335.P10040702764453707537
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008619 (A253885 n).toNat) (A336851 (n + 1))

end

end A337335.P10040702764453707537

namespace A337335

/-- `gcd(A008619(A253885(n)), A336851(n+1))` -/
def P10040702764453707537.Spec : Prop :=
  ∀ n, (P10040702764453707537.a n : ℤ) = A337335 (n + 1)

end A337335

/-! ## A337335.P15694458295722879153

`gcd(A088580(A003961(n+1)), A283464(2*(n+1)))`
-/

namespace A337335.P15694458295722879153
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A088580 (A003961 (n + 1)).toNat) (A283464 (2 * (n + 1)))

end

end A337335.P15694458295722879153

namespace A337335

/-- `gcd(A088580(A003961(n+1)), A283464(2*(n+1)))` -/
def P15694458295722879153.Spec : Prop :=
  ∀ n, (P15694458295722879153.a n : ℤ) = A337335 (n + 1)

end A337335

/-! ## A337335.P172306642747895614

`gcd(A243501(n+1)/2, A020725(A003973(n+1)))`
-/

namespace A337335.P172306642747895614
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((A243501 (n + 1) : ℚ) / 2)) (A020725 (A003973 (n + 1)).toNat)

end

end A337335.P172306642747895614

namespace A337335

/-- `gcd(A243501(n+1)/2, A020725(A003973(n+1)))` -/
def P172306642747895614.Spec : Prop :=
  ∀ n, (P172306642747895614.a n : ℤ) = A337335 (n + 1)

end A337335

/-! ## A337335.P16156903901702192721

`gcd(11, A243496(n+2))`
-/

namespace A337335.P16156903901702192721
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 11 (A243496 (n + 2))

end

end A337335.P16156903901702192721

namespace A337335

/-- `gcd(11, A243496(n+2))` -/
def P16156903901702192721.Spec : Prop :=
  ∀ n, (P16156903901702192721.a n : ℤ) = A337335 (n + 1)

end A337335

/-! ## A337335.P10338487232470628421

`A109014(or(3*floor(n/4), A161172(n+1)))`
-/

namespace A337335.P10338487232470628421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109014 (Int.lor (3 * ⌊(n : ℚ) / 4⌋) (A161172 (n + 1))).toNat

end

end A337335.P10338487232470628421

namespace A337335

/-- `A109014(or(3*floor(n/4), A161172(n+1)))` -/
def P10338487232470628421.Spec : Prop :=
  ∀ n, P10338487232470628421.a n = A337335 (n + 1)

end A337335

/-! ## A337335.P870536658888959257

`gcd(A062786(n+1), A077425(A359409(n+1)))`
-/

namespace A337335.P870536658888959257
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A062786 (n + 1)) (A077425 (A359409 (n + 1)).toNat)

end

end A337335.P870536658888959257

namespace A337335

/-- `gcd(A062786(n+1), A077425(A359409(n+1)))` -/
def P870536658888959257.Spec : Prop :=
  ∀ n, (P870536658888959257.a n : ℤ) = A337335 (n + 1)

end A337335

/-! ## A337335.P860649538181092270

`A139553(A067727(n+2))`
-/

namespace A337335.P860649538181092270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139553 (A067727 (n + 2)).toNat

end

end A337335.P860649538181092270

namespace A337335

/-- `A139553(A067727(n+2))` -/
def P860649538181092270.Spec : Prop :=
  ∀ n, P860649538181092270.a n = A337335 (n + 1)

end A337335

/-!
# A337336: a(n) = A048673(n^2).

The programs for A337336, the canonical program `A337336.P26056897004872509` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A337336 has offset 1).

The definition of A337336 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048673, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A337336.P4916090492358567470

`(1+A003961(n+1)²)/2`
-/

namespace A337336.P4916090492358567470
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 + A003961 (n + 1) ^ 2 : ℚ) / 2

end

end A337336.P4916090492358567470

namespace A337336

/-- `(1+A003961(n+1)²)/2` -/
def P4916090492358567470.Spec : Prop :=
  ∀ n, P4916090492358567470.a n = (A337336 (n + 1) : ℚ)

end A337336

/-! ## A337336.P26056897004872509

`A048673((n+1)²)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A337336

/-- `A048673((n+1)²)` -/
def P26056897004872509.Spec : Prop :=
  ∀ n, P26056897004872509.a n = A337336 (n + 1)

theorem P26056897004872509.correct : P26056897004872509.Spec := by
  intro n
  simp only [A337336, Nat.add_sub_cancel]

end A337336

/-! ## A337336.P14977033736583252147

`(A379481(n+1)+1)/2`
-/

namespace A337336.P14977033736583252147
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A379481 (n + 1) + 1 : ℚ) / 2

end

end A337336.P14977033736583252147

namespace A337336

/-- `(A379481(n+1)+1)/2` -/
def P14977033736583252147.Spec : Prop :=
  ∀ n, P14977033736583252147.a n = (A337336 (n + 1) : ℚ)

end A337336

/-! ## A337336.P6761287755390120024

`ceil(A003961(n+1)²/2)`
-/

namespace A337336.P6761287755390120024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A003961 (n + 1) ^ 2 : ℚ) / 2⌉

end

end A337336.P6761287755390120024

namespace A337336

/-- `ceil(A003961(n+1)²/2)` -/
def P6761287755390120024.Spec : Prop :=
  ∀ n, P6761287755390120024.a n = A337336 (n + 1)

end A337336

/-! ## A337336.P7053134066924776289

`ceil((A253885(n)+1)²/2)`
-/

namespace A337336.P7053134066924776289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((A253885 n + 1) ^ 2 : ℚ) / 2⌉

end

end A337336.P7053134066924776289

namespace A337336

/-- `ceil((A253885(n)+1)²/2)` -/
def P7053134066924776289.Spec : Prop :=
  ∀ n, P7053134066924776289.a n = A337336 (n + 1)

end A337336

/-! ## A337336.P14812590527601019967

`4*C(A048673(n+1), 2)+1`
-/

namespace A337336.P14812590527601019967
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * Nat.choose (A048673 (n + 1)).toNat 2 + 1

end

end A337336.P14812590527601019967

namespace A337336

/-- `4*C(A048673(n+1), 2)+1` -/
def P14812590527601019967.Spec : Prop :=
  ∀ n, (P14812590527601019967.a n : ℤ) = A337336 (n + 1)

end A337336

/-! ## A337336.P6863673570657524476

`A048673(n+1)*A253885(n)+1`
-/

namespace A337336.P6863673570657524476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048673 (n + 1) * A253885 n + 1

end

end A337336.P6863673570657524476

namespace A337336

/-- `A048673(n+1)*A253885(n)+1` -/
def P6863673570657524476.Spec : Prop :=
  ∀ n, P6863673570657524476.a n = A337336 (n + 1)

end A337336

/-! ## A337336.P17520237804976937021

`A048673(n+1)*A243501(n+1)-A003961(n+1)`
-/

namespace A337336.P17520237804976937021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048673 (n + 1) * A243501 (n + 1) - A003961 (n + 1)

end

end A337336.P17520237804976937021

namespace A337336

/-- `A048673(n+1)*A243501(n+1)-A003961(n+1)` -/
def P17520237804976937021.Spec : Prop :=
  ∀ n, P17520237804976937021.a n = A337336 (n + 1)

end A337336

/-! ## A337336.P10351204365830684282

`A337337(n+1)*A337339(n+1)`
-/

namespace A337336.P10351204365830684282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337337 (n + 1) * A337339 (n + 1)

end

end A337336.P10351204365830684282

namespace A337336

/-- `A337337(n+1)*A337339(n+1)` -/
def P10351204365830684282.Spec : Prop :=
  ∀ n, P10351204365830684282.a n = A337336 (n + 1)

end A337336

/-! ## A337336.P67404463109645532

`ceil(A297166(2*(n+1))²/2)`
-/

namespace A337336.P67404463109645532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A297166 (2 * (n + 1)) ^ 2 : ℚ) / 2⌉

end

end A337336.P67404463109645532

namespace A337336

/-- `ceil(A297166(2*(n+1))²/2)` -/
def P67404463109645532.Spec : Prop :=
  ∀ n, P67404463109645532.a n = A337336 (n + 1)

end A337336

/-! ## A337336.P1157125261681940827

`A001844(A108228(n+1))`
-/

namespace A337336.P1157125261681940827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001844 (A108228 (n + 1)).toNat

end

end A337336.P1157125261681940827

namespace A337336

/-- `A001844(A108228(n+1))` -/
def P1157125261681940827.Spec : Prop :=
  ∀ n, P1157125261681940827.a n = A337336 (n + 1)

end A337336

/-! ## A337336.P1595197628140366642

`A046092(A048673(n+1)-1)+1`
-/

namespace A337336.P1595197628140366642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046092 (A048673 (n + 1) - 1).toNat + 1

end

end A337336.P1595197628140366642

namespace A337336

/-- `A046092(A048673(n+1)-1)+1` -/
def P1595197628140366642.Spec : Prop :=
  ∀ n, P1595197628140366642.a n = A337336 (n + 1)

end A337336

/-! ## A337336.P11405871104147155884

`A336697(A048673(n+1))*A337339(n+1)`
-/

namespace A337336.P11405871104147155884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336697 (A048673 (n + 1)).toNat * A337339 (n + 1)

end

end A337336.P11405871104147155884

namespace A337336

/-- `A336697(A048673(n+1))*A337339(n+1)` -/
def P11405871104147155884.Spec : Prop :=
  ∀ n, P11405871104147155884.a n = A337336 (n + 1)

end A337336

/-! ## A337336.P4315328424572276677

`A266723(A253885(n))`
-/

namespace A337336.P4315328424572276677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266723 (A253885 n).toNat

end

end A337336.P4315328424572276677

namespace A337336

/-- `A266723(A253885(n))` -/
def P4315328424572276677.Spec : Prop :=
  ∀ n, P4315328424572276677.a n = A337336 (n + 1)

end A337336

/-! ## A337336.P10887000745135599043

`A000982(A003961(n+1))`
-/

namespace A337336.P10887000745135599043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000982 (A003961 (n + 1)).toNat

end

end A337336.P10887000745135599043

namespace A337336

/-- `A000982(A003961(n+1))` -/
def P10887000745135599043.Spec : Prop :=
  ∀ n, P10887000745135599043.a n = A337336 (n + 1)

end A337336

/-! ## A337336.P9467844005959228493

`A147685(A045965(n+1))`
-/

namespace A337336.P9467844005959228493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147685 (A045965 (n + 1)).toNat

end

end A337336.P9467844005959228493

namespace A337336

/-- `A147685(A045965(n+1))` -/
def P9467844005959228493.Spec : Prop :=
  ∀ n, P9467844005959228493.a n = A337336 (n + 1)

end A337336

/-! ## A337336.P1252964806969169294

`A031878(A243501(n+1))`
-/

namespace A337336.P1252964806969169294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031878 (A243501 (n + 1)).toNat

end

end A337336.P1252964806969169294

namespace A337336

/-- `A031878(A243501(n+1))` -/
def P1252964806969169294.Spec : Prop :=
  ∀ n, P1252964806969169294.a n = A337336 (n + 1)

end A337336

/-! ## A337336.P7185479915459765915

`A099392(A003961(n+1)+1)`
-/

namespace A337336.P7185479915459765915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099392 (A003961 (n + 1) + 1).toNat

end

end A337336.P7185479915459765915

namespace A337336

/-- `A099392(A003961(n+1)+1)` -/
def P7185479915459765915.Spec : Prop :=
  ∀ n, P7185479915459765915.a n = A337336 (n + 1)

end A337336

/-! ## A337336.P14525964662559800929

`A286457(A003961(n+1)+1)`
-/

namespace A337336.P14525964662559800929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286457 (A003961 (n + 1) + 1).toNat

end

end A337336.P14525964662559800929

namespace A337336

/-- `A286457(A003961(n+1)+1)` -/
def P14525964662559800929.Spec : Prop :=
  ∀ n, P14525964662559800929.a n = A337336 (n + 1)

end A337336

/-! ## A337336.P10174534334871431779

`A001971(2*A003961(n+1))`
-/

namespace A337336.P10174534334871431779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001971 (2 * A003961 (n + 1)).toNat

end

end A337336.P10174534334871431779

namespace A337336

/-- `A001971(2*A003961(n+1))` -/
def P10174534334871431779.Spec : Prop :=
  ∀ n, P10174534334871431779.a n = A337336 (n + 1)

end A337336

/-!
# A337337: a(n) = gcd(1+sigma(s), (s+1)/2), where s is the square of n once prime-shifted (s = A003961(n)^2 = A003961(n^2)).

The programs for A337337, the canonical program `A337337.P7440096239031397272` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A337337 has offset 1).

The definition of A337337 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A337335, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A337337.P7292789885810396385

`A336697(A048673(n+1))`
-/

namespace A337337.P7292789885810396385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336697 (A048673 (n + 1)).toNat

end

end A337337.P7292789885810396385

namespace A337337

/-- `A336697(A048673(n+1))` -/
def P7292789885810396385.Spec : Prop :=
  ∀ n, P7292789885810396385.a n = A337337 (n + 1)

end A337337

/-! ## A337337.P7440096239031397272

`A337335((n+1)²)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A337337

/-- `A337335((n+1)²)` -/
def P7440096239031397272.Spec : Prop :=
  ∀ n, P7440096239031397272.a n = A337337 (n + 1)

theorem P7440096239031397272.correct : P7440096239031397272.Spec := by
  intro n
  simp only [A337337, Nat.add_sub_cancel]

end A337337

/-! ## A337337.P7528136109889610530

`gcd(A337336(n+1), A336844((n+1)²))`
-/

namespace A337337.P7528136109889610530
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A337336 (n + 1)) (A336844 ((n + 1) ^ 2))

end

end A337337.P7528136109889610530

namespace A337337

/-- `gcd(A337336(n+1), A336844((n+1)²))` -/
def P7528136109889610530.Spec : Prop :=
  ∀ n, (P7528136109889610530.a n : ℤ) = A337337 (n + 1)

end A337337

/-! ## A337337.P2969994488603810397

`gcd(A048673((n+1)²), 1+A003973((n+1)²))`
-/

namespace A337337.P2969994488603810397
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A048673 ((n + 1) ^ 2)) (1 + A003973 ((n + 1) ^ 2))

end

end A337337.P2969994488603810397

namespace A337337

/-- `gcd(A048673((n+1)²), 1+A003973((n+1)²))` -/
def P2969994488603810397.Spec : Prop :=
  ∀ n, (P2969994488603810397.a n : ℤ) = A337337 (n + 1)

end A337337

/-! ## A337337.P2939149446982188606

`gcd(A048673((n+1)²), A337194(A003961(n+1)²))`
-/

namespace A337337.P2939149446982188606
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A048673 ((n + 1) ^ 2)) (A337194 (A003961 (n + 1) ^ 2).toNat)

end

end A337337.P2939149446982188606

namespace A337337

/-- `gcd(A048673((n+1)²), A337194(A003961(n+1)²))` -/
def P2939149446982188606.Spec : Prop :=
  ∀ n, (P2939149446982188606.a n : ℤ) = A337337 (n + 1)

end A337337

/-! ## A337337.P1058624772469995997

`A337336(n+1)/A337339(n+1)`
-/

namespace A337337.P1058624772469995997
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A337336 (n + 1) : ℚ) / (A337339 (n + 1) : ℚ)

end

end A337337.P1058624772469995997

namespace A337337

/-- `A337336(n+1)/A337339(n+1)` -/
def P1058624772469995997.Spec : Prop :=
  ∀ n, P1058624772469995997.a n = (A337337 (n + 1) : ℚ)

end A337337

/-! ## A337337.P9095064560065313925

`A336697(A243501(n+1)/2)`
-/

namespace A337337.P9095064560065313925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336697 (SequenceMachineLib.roundAway ((A243501 (n + 1) : ℚ) / 2)).toNat

end

end A337337.P9095064560065313925

namespace A337337

/-- `A336697(A243501(n+1)/2)` -/
def P9095064560065313925.Spec : Prop :=
  ∀ n, P9095064560065313925.a n = A337337 (n + 1)

end A337337

/-! ## A337337.P11993810167611094485

`A336697(A253885(n)/2+1)`
-/

namespace A337337.P11993810167611094485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336697 (SequenceMachineLib.roundAway ((A253885 n : ℚ) / 2 + 1)).toNat

end

end A337337.P11993810167611094485

namespace A337337

/-- `A336697(A253885(n)/2+1)` -/
def P11993810167611094485.Spec : Prop :=
  ∀ n, P11993810167611094485.a n = A337337 (n + 1)

end A337337

/-! ## A337337.P10763410111675708865

`A336697(ceil(A003961(n+1)/2))`
-/

namespace A337337.P10763410111675708865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336697 ⌈(A003961 (n + 1) : ℚ) / 2⌉.toNat

end

end A337337.P10763410111675708865

namespace A337337

/-- `A336697(ceil(A003961(n+1)/2))` -/
def P10763410111675708865.Spec : Prop :=
  ∀ n, P10763410111675708865.a n = A337337 (n + 1)

end A337337

/-! ## A337337.P1614728459167654139

`gcd(A311464(n), A351974(n+1))`
-/

namespace A337337.P1614728459167654139
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A311464 n) (A351974 (n + 1))

end

end A337337.P1614728459167654139

namespace A337337

/-- `gcd(A311464(n), A351974(n+1))` -/
def P1614728459167654139.Spec : Prop :=
  ∀ n, (P1614728459167654139.a n : ℤ) = A337337 (n + 1)

end A337337

/-!
# A337338: Numerator of (1+sigma(s)) / ((s+1)/2), where s is the square of n prime-shifted once (s = A003961(n)^2 = A003961(n^2)).

The programs for A337338, the canonical program `A337338.P8319227600971306024` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A337338 has offset 1).

The definition of A337338 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A337337, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A337338.P8319227600971306024

`A337194(A003961(n+1)²)/A337337(n+1)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A337338

/-- `A337194(A003961(n+1)²)/A337337(n+1)` -/
def P8319227600971306024.Spec : Prop :=
  ∀ n, P8319227600971306024.a n = (A337338 (n + 1) : ℚ)

end A337338

/-! ## A337338.P15883782597339305294

`A337194(A003961((n+1)²))/A337337(n+1)`
-/

namespace A337338.P15883782597339305294
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A337194 (A003961 ((n + 1) ^ 2)).toNat : ℚ) / (A337337 (n + 1) : ℚ)

end

end A337338.P15883782597339305294

namespace A337338

/-- `A337194(A003961((n+1)²))/A337337(n+1)` -/
def P15883782597339305294.Spec : Prop :=
  ∀ n, P15883782597339305294.a n = (A337338 (n + 1) : ℚ)

end A337338

/-! ## A337338.P5480455377972265935

`A132739(A088580(A003961((n+1)²)))`
-/

namespace A337338.P5480455377972265935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132739 (A088580 (A003961 ((n + 1) ^ 2)).toNat).toNat

end

end A337338.P5480455377972265935

namespace A337338

/-- `A132739(A088580(A003961((n+1)²)))` -/
def P5480455377972265935.Spec : Prop :=
  ∀ n, P5480455377972265935.a n = A337338 (n + 1)

end A337338

/-! ## A337338.P5644951657382824270

`A003973(A044915(n+1)²)+1`
-/

namespace A337338.P5644951657382824270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003973 (A044915 (n + 1) ^ 2).toNat + 1

end

end A337338.P5644951657382824270

namespace A337338

/-- `A003973(A044915(n+1)²)+1` -/
def P5644951657382824270.Spec : Prop :=
  ∀ n, P5644951657382824270.a n = A337338 (n + 1)

end A337338

/-! ## A337338.P16900449159697411438

`A379482(n+1)+A057427(A034943(n))`
-/

namespace A337338.P16900449159697411438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379482 (n + 1) + A057427 (A034943 n).toNat

end

end A337338.P16900449159697411438

namespace A337338

/-- `A379482(n+1)+A057427(A034943(n))` -/
def P16900449159697411438.Spec : Prop :=
  ∀ n, P16900449159697411438.a n = A337338 (n + 1)

end A337338

/-!
# A337339: Denominator of (1+sigma(s)) / ((s+1)/2), where s is the square of n prime-shifted once (s = A003961(n)^2 = A003961(n^2)).

The programs for A337339, the canonical program `A337339.P4042521456947446519` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A337339 has offset 1).

The definition of A337339 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A337336, A337337, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A337339.P4042521456947446519

`A337336(n+1)/A337337(n+1)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A337339

/-- `A337336(n+1)/A337337(n+1)` -/
def P4042521456947446519.Spec : Prop :=
  ∀ n, P4042521456947446519.a n = (A337339 (n + 1) : ℚ)

end A337339

/-! ## A337339.P6367171420732814423

`A337336(n+1)/gcd(A337336(n+1), 1+A003973((n+1)²))`
-/

namespace A337339.P6367171420732814423
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A337336 (n + 1) : ℚ) / (Int.gcd (A337336 (n + 1)) (1 + A003973 ((n + 1) ^ 2)) : ℚ)

end

end A337339.P6367171420732814423

namespace A337339

/-- `A337336(n+1)/gcd(A337336(n+1), 1+A003973((n+1)²))` -/
def P6367171420732814423.Spec : Prop :=
  ∀ n, P6367171420732814423.a n = (A337339 (n + 1) : ℚ)

end A337339

/-! ## A337339.P3338305090199535597

`A048673((n+1)²)/gcd(A048673((n+1)²), A336844((n+1)²))`
-/

namespace A337339.P3338305090199535597
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048673 ((n + 1) ^ 2) : ℚ) / (Int.gcd (A048673 ((n + 1) ^ 2)) (A336844 ((n + 1) ^ 2)) : ℚ)

end

end A337339.P3338305090199535597

namespace A337339

/-- `A048673((n+1)²)/gcd(A048673((n+1)²), A336844((n+1)²))` -/
def P3338305090199535597.Spec : Prop :=
  ∀ n, P3338305090199535597.a n = (A337339 (n + 1) : ℚ)

end A337339

/-! ## A337339.P17296800240441727642

`A337341(n+1)+1+n`
-/

namespace A337339.P17296800240441727642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337341 (n + 1) + 1 + (n : ℤ)

end

end A337339.P17296800240441727642

namespace A337339

/-- `A337341(n+1)+1+n` -/
def P17296800240441727642.Spec : Prop :=
  ∀ n, P17296800240441727642.a n = A337339 (n + 1)

end A337339

/-! ## A337339.P13364385547125462488

`A003961(n+1)+2*A337340(n+1)`
-/

namespace A337339.P13364385547125462488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (n + 1) + 2 * A337340 (n + 1)

end

end A337339.P13364385547125462488

namespace A337339

/-- `A003961(n+1)+2*A337340(n+1)` -/
def P13364385547125462488.Spec : Prop :=
  ∀ n, P13364385547125462488.a n = A337339 (n + 1)

end A337339

/-! ## A337339.P7963149056364876903

`A337336(n+1)/A336697(A048673(n+1))`
-/

namespace A337339.P7963149056364876903
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A337336 (n + 1) : ℚ) / (A336697 (A048673 (n + 1)).toNat : ℚ)

end

end A337339.P7963149056364876903

namespace A337339

/-- `A337336(n+1)/A336697(A048673(n+1))` -/
def P7963149056364876903.Spec : Prop :=
  ∀ n, P7963149056364876903.a n = (A337339 (n + 1) : ℚ)

end A337339

/-! ## A337339.P13535663241836195288

`A099392(A243501(n+1))/A337337(n+1)`
-/

namespace A337339.P13535663241836195288
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099392 (A243501 (n + 1)).toNat : ℚ) / (A337337 (n + 1) : ℚ)

end

end A337339.P13535663241836195288

namespace A337339

/-- `A099392(A243501(n+1))/A337337(n+1)` -/
def P13535663241836195288.Spec : Prop :=
  ∀ n, P13535663241836195288.a n = (A337339 (n + 1) : ℚ)

end A337339

/-! ## A337339.P4719334464382675161

`A337336(n+1)/A337335(Δ[A000330(n)])`
-/

namespace A337339.P4719334464382675161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A337336 (n + 1) : ℚ) / (A337335 (f1 (n + 1) - f1 n).toNat : ℚ)

end

end A337339.P4719334464382675161

namespace A337339

/-- `A337336(n+1)/A337335(Δ[A000330(n)])` -/
def P4719334464382675161.Spec : Prop :=
  ∀ n, P4719334464382675161.a n = (A337339 (n + 1) : ℚ)

end A337339

/-! ## A337339.P14632812310142060395

`A048673((n+1)²)/A337337(n+1)`
-/

namespace A337339.P14632812310142060395
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048673 ((n + 1) ^ 2) : ℚ) / (A337337 (n + 1) : ℚ)

end

end A337339.P14632812310142060395

namespace A337339

/-- `A048673((n+1)²)/A337337(n+1)` -/
def P14632812310142060395.Spec : Prop :=
  ∀ n, P14632812310142060395.a n = (A337339 (n + 1) : ℚ)

end A337339

/-!
# A337340: a(n) = (A337339(n)-A003961(n)) / 2.

The programs for A337340, the canonical program `A337340.P276399523375729777` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A337340 has offset 1).

The definition of A337340 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A337339, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A337340.P276399523375729777

`(A337339(n+1)-A003961(n+1))/2`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A337340

/-- `(A337339(n+1)-A003961(n+1))/2` -/
def P276399523375729777.Spec : Prop :=
  ∀ n, P276399523375729777.a n = (A337340 (n + 1) : ℚ)

end A337340

/-! ## A337340.P16544412429109270131

`(A337341(n+1)-A336853(n+1))/2`
-/

namespace A337340.P16544412429109270131
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A337341 (n + 1) - A336853 (n + 1) : ℚ) / 2

end

end A337340.P16544412429109270131

namespace A337340

/-- `(A337341(n+1)-A336853(n+1))/2` -/
def P16544412429109270131.Spec : Prop :=
  ∀ n, P16544412429109270131.a n = (A337340 (n + 1) : ℚ)

end A337340

/-! ## A337340.P7159832043848160017

`A002620(A253885(n))%A337339(n+1)`
-/

namespace A337340.P7159832043848160017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002620 (A253885 n).toNat) (A337339 (n + 1))

end

end A337340.P7159832043848160017

namespace A337340

/-- `A002620(A253885(n))%A337339(n+1)` -/
def P7159832043848160017.Spec : Prop :=
  ∀ n, P7159832043848160017.a n = A337340 (n + 1)

end A337340

/-! ## A337340.P15850846719073043501

`A014682(A337339(n+1)-A003961(n+1))`
-/

namespace A337340.P15850846719073043501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A337339 (n + 1) - A003961 (n + 1)).toNat

end

end A337340.P15850846719073043501

namespace A337340

/-- `A014682(A337339(n+1)-A003961(n+1))` -/
def P15850846719073043501.Spec : Prop :=
  ∀ n, P15850846719073043501.a n = A337340 (n + 1)

end A337340

/-! ## A337340.P7158676029795788473

`A014682(A337341(n+1)-A336853(n+1))`
-/

namespace A337340.P7158676029795788473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A337341 (n + 1) - A336853 (n + 1)).toNat

end

end A337340.P7158676029795788473

namespace A337340

/-- `A014682(A337341(n+1)-A336853(n+1))` -/
def P7158676029795788473.Spec : Prop :=
  ∀ n, P7158676029795788473.a n = A337340 (n + 1)

end A337340

/-! ## A337340.P4370410005423588525

`A000265(A337339(n+1)+1)-A048673(n+1)`
-/

namespace A337340.P4370410005423588525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A337339 (n + 1) + 1).toNat - A048673 (n + 1)

end

end A337340.P4370410005423588525

namespace A337340

/-- `A000265(A337339(n+1)+1)-A048673(n+1)` -/
def P4370410005423588525.Spec : Prop :=
  ∀ n, P4370410005423588525.a n = A337340 (n + 1)

end A337340

/-!
# A337341: a(n) = A337339(n) - n.

The programs for A337341, the canonical program `A337341.P5889933687803878944` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A337341 has offset 1).

The definition of A337341 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A337339, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A337341.P5889933687803878944

`A337339(n+1)-(n+1)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A337341

/-- `A337339(n+1)-(n+1)` -/
def P5889933687803878944.Spec : Prop :=
  ∀ n, P5889933687803878944.a n = A337341 (n + 1)

theorem P5889933687803878944.correct : P5889933687803878944.Spec := by
  intro n
  simp only [A337341, Nat.add_sub_cancel]

end A337341

/-! ## A337341.P7626813426089568337

`abs(A337339(n+1)+A001478(n+1))`
-/

namespace A337341.P7626813426089568337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A337339 (n + 1) + A001478 (n + 1)|

end

end A337341.P7626813426089568337

namespace A337341

/-- `abs(A337339(n+1)+A001478(n+1))` -/
def P7626813426089568337.Spec : Prop :=
  ∀ n, P7626813426089568337.a n = A337341 (n + 1)

end A337341

/-! ## A337341.P1606812909377920120

`A336853(n+1)+2*A337340(n+1)`
-/

namespace A337341.P1606812909377920120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336853 (n + 1) + 2 * A337340 (n + 1)

end

end A337341.P1606812909377920120

namespace A337341

/-- `A336853(n+1)+2*A337340(n+1)` -/
def P1606812909377920120.Spec : Prop :=
  ∀ n, P1606812909377920120.a n = A337341 (n + 1)

end A337341

/-! ## A337341.P10047950646393606200

`A337336(n+1)/A337337(n+1)-(n+1)`
-/

namespace A337341.P10047950646393606200
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A337336 (n + 1) : ℚ) / (A337337 (n + 1) : ℚ) - (n + 1 : ℚ)

end

end A337341.P10047950646393606200

namespace A337341

/-- `A337336(n+1)/A337337(n+1)-(n+1)` -/
def P10047950646393606200.Spec : Prop :=
  ∀ n, P10047950646393606200.a n = (A337341 (n + 1) : ℚ)

end A337341

/-! ## A337341.P2549699330598939491

`(A337339(n+1)+A001478(n+1))*A054977(n)`
-/

namespace A337341.P2549699330598939491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A337339 (n + 1) + A001478 (n + 1)) * A054977 n

end

end A337341.P2549699330598939491

namespace A337341

/-- `(A337339(n+1)+A001478(n+1))*A054977(n)` -/
def P2549699330598939491.Spec : Prop :=
  ∀ n, P2549699330598939491.a n = A337341 (n + 1)

end A337341

/-!
# A337343: Numbers k such that A064989(sigma(k)) >= k.

The programs for A337343, there is no canonical definition to state claims against.
-/

/-! ## A337343.P6400425333708923019

`lt[n, A350073(n+1)]+1`
-/

namespace A337343.P6400425333708923019
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350073 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A337343.P6400425333708923019

/-! ## A337343.P11148016643608945131

`lt[n, A064989(A342671(n+1)*A348992(n+1))]+1`
-/

namespace A337343.P11148016643608945131
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A342671 (n + 1) * A348992 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A337343.P11148016643608945131

/-! ## A337343.P7456519352874657706

`lt[n, A064989(A000203(n+1))]+1`
-/

namespace A337343.P7456519352874657706
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A000203 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A337343.P7456519352874657706

/-! ## A337343.P1799250683572749070

`A291934(A379112(n+1))`
-/

namespace A337343.P1799250683572749070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291934 (A379112 (n + 1)).toNat

end

end A337343.P1799250683572749070

/-! ## A337343.P14891821057516365179

`record[A379112(A351700(n+1))]`
-/

namespace A337343.P14891821057516365179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379112 (A351700 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A337343.P14891821057516365179

/-!
# A337344: Odd numbers k such that A064989(sigma(k)) >= k.

The programs for A337344, there is no canonical definition to state claims against.
-/

/-! ## A337344.P8205943843931494706

`∩[2*n+1, A337343(n+1)]`
-/

namespace A337344.P8205943843931494706
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337343 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A337344.P8205943843931494706

/-! ## A337344.P14229509914202602978

`record[A000265(A337343(n+1))]`
-/

namespace A337344.P14229509914202602978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A337343 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A337344.P14229509914202602978

/-! ## A337344.P5507897244787603307

`record[A093178(A337343(n+3))]`
-/

namespace A337344.P5507897244787603307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (A337343 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A337344.P5507897244787603307

/-! ## A337344.P14578863965713937395

`filter[A337343(n+1), A000035(#)]`
-/

namespace A337344.P14578863965713937395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337343 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A337344.P14578863965713937395

/-! ## A337344.P3117270825809691171

`filter[A337343(n+1), A096268(#)]`
-/

namespace A337344.P3117270825809691171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337343 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A096268 (f1 j).toNat = 1) n)

end

end A337344.P3117270825809691171

/-!
# A337345: Number of divisors d of n for which A003961(d) > 2*d, where A003961 is fully multiplicative with a(p) = nextprime(p).

The programs for A337345, the canonical program `A337345.P1594935461271935527` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A337345 has offset 1).

The definition of A337345 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A080224, A378662, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A337345.P452848330989781457

`∑{d}[n+1, A252742(#)]`
-/

namespace A337345.P452848330989781457
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A252742 d

end

end A337345.P452848330989781457

namespace A337345

/-- `∑{d}[n+1, A252742(#)]` -/
def P452848330989781457.Spec : Prop :=
  ∀ n, P452848330989781457.a n = A337345 (n + 1)

end A337345

/-! ## A337345.P1594935461271935527

`A378662(n+1)+A080224(n+1)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A337345

/-- `A378662(n+1)+A080224(n+1)` -/
def P1594935461271935527.Spec : Prop :=
  ∀ n, P1594935461271935527.a n = A337345 (n + 1)

theorem P1594935461271935527.correct : P1594935461271935527.Spec := by
  intro n
  simp only [A337345, Nat.add_sub_cancel]

end A337345

/-! ## A337345.P16739880522231645123

`A337346(n+1)+A252742(n+1)`
-/

namespace A337345.P16739880522231645123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337346 (n + 1) + A252742 (n + 1)

end

end A337345.P16739880522231645123

namespace A337345

/-- `A337346(n+1)+A252742(n+1)` -/
def P16739880522231645123.Spec : Prop :=
  ∀ n, P16739880522231645123.a n = A337345 (n + 1)

theorem P16739880522231645123.correct : P16739880522231645123.Spec := by
  intro n
  simp only [A337345, Nat.add_sub_cancel, A337345.P16739880522231645123.a, A337345.P1594935461271935527.a, A080224, A080224.P15248761020012364030.f1, A080224.P15248761020012364030.a, A252742, A252742.P12034946379470004791.a, A337346, A337346.P2412165337189814597.a, A378662, A378662.P11219609030214075406.f1, A378662.P11219609030214075406.a, A003961, A003961.P5996473960037614004.a, A294937, A294937.P16064831210993750001.a, A341612, A341612.P3068073104531840485.a, A253885, A253885.P16715555451856890624.a, A294935, A294935.P4767353041558056281.f1, A294935.P4767353041558056281.a, A243501, A243501.P10707292738867961998.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A337345

/-! ## A337345.P3556571711218742659

`A378663(n+1)+A341620(n+1)`
-/

namespace A337345.P3556571711218742659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378663 (n + 1) + A341620 (n + 1)

end

end A337345.P3556571711218742659

namespace A337345

/-- `A378663(n+1)+A341620(n+1)` -/
def P3556571711218742659.Spec : Prop :=
  ∀ n, P3556571711218742659.a n = A337345 (n + 1)

theorem P3556571711218742659.correct : P3556571711218742659.Spec := by
  intro n
  simp only [A337345, Nat.add_sub_cancel, A337345.P3556571711218742659.a, A337345.P1594935461271935527.a, A080224, A080224.P15248761020012364030.f1, A080224.P15248761020012364030.a, A341620, A341620.P4191397084300056986.a, A378662, A378662.P11219609030214075406.f1, A378662.P11219609030214075406.a, A378663, A378663.P6986709549582363223.a, A080225, A080225.P3972253355863549371.f1, A080225.P3972253355863549371.a, A294937, A294937.P16064831210993750001.a, A341612, A341612.P3068073104531840485.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A252742, A252742.P12034946379470004791.a, A294935, A294935.P4767353041558056281.f1, A294935.P4767353041558056281.a, A003961, A003961.P5996473960037614004.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A337345

/-! ## A337345.P11448228670210977527

`A337346(n+1)+char[A246282(n+1)-1]`
-/

namespace A337345.P11448228670210977527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246282 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337346 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A337345.P11448228670210977527

namespace A337345

/-- `A337346(n+1)+char[A246282(n+1)-1]` -/
def P11448228670210977527.Spec : Prop :=
  ∀ n, P11448228670210977527.a n = A337345 (n + 1)

end A337345

/-! ## A337345.P12748813081830059249

`A337346(n+1)+ceil(1/(2*A252748(n+1)))`
-/

namespace A337345.P12748813081830059249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337346 (n + 1) + ⌈1 / (2 * A252748 (n + 1) : ℚ)⌉

end

end A337345.P12748813081830059249

namespace A337345

/-- `A337346(n+1)+ceil(1/(2*A252748(n+1)))` -/
def P12748813081830059249.Spec : Prop :=
  ∀ n, P12748813081830059249.a n = A337345 (n + 1)

end A337345

/-! ## A337345.P17902273008119201108

`A337346(n+1)+A178334(A336836(n+1))`
-/

namespace A337345.P17902273008119201108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337346 (n + 1) + A178334 (A336836 (n + 1)).toNat

end

end A337345.P17902273008119201108

namespace A337345

/-- `A337346(n+1)+A178334(A336836(n+1))` -/
def P17902273008119201108.Spec : Prop :=
  ∀ n, P17902273008119201108.a n = A337345 (n + 1)

end A337345

/-! ## A337345.P2548037756363377574

`A337346(n+1)+1-A267050(A336836(n+1)²)`
-/

namespace A337345.P2548037756363377574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337346 (n + 1) + (1 - A267050 (A336836 (n + 1) ^ 2).toNat)

end

end A337345.P2548037756363377574

namespace A337345

/-- `A337346(n+1)+1-A267050(A336836(n+1)²)` -/
def P2548037756363377574.Spec : Prop :=
  ∀ n, P2548037756363377574.a n = A337345 (n + 1)

end A337345

/-! ## A337345.P5345922511446372367

`A080224(n+1)+A378663(n+1)+A080225(n+1)`
-/

namespace A337345.P5345922511446372367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080224 (n + 1) + (A378663 (n + 1) + A080225 (n + 1))

end

end A337345.P5345922511446372367

namespace A337345

/-- `A080224(n+1)+A378663(n+1)+A080225(n+1)` -/
def P5345922511446372367.Spec : Prop :=
  ∀ n, P5345922511446372367.a n = A337345 (n + 1)

theorem P5345922511446372367.correct : P5345922511446372367.Spec := by
  intro n
  simp only [A337345, Nat.add_sub_cancel, A337345.P5345922511446372367.a, A337345.P1594935461271935527.a, A080224, A080224.P15248761020012364030.f1, A080224.P15248761020012364030.a, A080225, A080225.P3972253355863549371.f1, A080225.P3972253355863549371.a, A378662, A378662.P11219609030214075406.f1, A378662.P11219609030214075406.a, A378663, A378663.P6986709549582363223.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A294937, A294937.P16064831210993750001.a, A341612, A341612.P3068073104531840485.a, A252742, A252742.P12034946379470004791.a, A294935, A294935.P4767353041558056281.f1, A294935.P4767353041558056281.a, A003961, A003961.P5996473960037614004.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A337345

/-! ## A337345.P13665752678527418169

`A341620(n+1)+A378662(n+1)-A080225(n+1)`
-/

namespace A337345.P13665752678527418169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341620 (n + 1) + (A378662 (n + 1) - A080225 (n + 1))

end

end A337345.P13665752678527418169

namespace A337345

/-- `A341620(n+1)+A378662(n+1)-A080225(n+1)` -/
def P13665752678527418169.Spec : Prop :=
  ∀ n, P13665752678527418169.a n = A337345 (n + 1)

theorem P13665752678527418169.correct : P13665752678527418169.Spec := by
  intro n
  simp only [A337345, Nat.add_sub_cancel, A337345.P13665752678527418169.a, A337345.P1594935461271935527.a, A080224, A080224.P15248761020012364030.f1, A080224.P15248761020012364030.a, A080225, A080225.P3972253355863549371.f1, A080225.P3972253355863549371.a, A341620, A341620.P4191397084300056986.a, A378662, A378662.P11219609030214075406.f1, A378662.P11219609030214075406.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A294937, A294937.P16064831210993750001.a, A341612, A341612.P3068073104531840485.a, A252742, A252742.P12034946379470004791.a, A294935, A294935.P4767353041558056281.f1, A294935.P4767353041558056281.a, A003961, A003961.P5996473960037614004.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A337345

/-!
# A337346: Number of proper divisors d of n for which A003961(d) > 2*d.

The programs for A337346, the canonical program `A337346.P2412165337189814597` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A337346 has offset 1).

The definition of A337346 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A252742, A337345, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A337346.P2412165337189814597

`A337345(n+1)-A252742(n+1)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A337346

/-- `A337345(n+1)-A252742(n+1)` -/
def P2412165337189814597.Spec : Prop :=
  ∀ n, P2412165337189814597.a n = A337346 (n + 1)

theorem P2412165337189814597.correct : P2412165337189814597.Spec := by
  intro n
  simp only [A337346, Nat.add_sub_cancel]

end A337346

/-! ## A337346.P10828844061540652596

`A259361(A337345(n+1)²)`
-/

namespace A337346.P10828844061540652596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (A337345 (n + 1) ^ 2).toNat

end

end A337346.P10828844061540652596

namespace A337346

/-- `A259361(A337345(n+1)²)` -/
def P10828844061540652596.Spec : Prop :=
  ∀ n, P10828844061540652596.a n = A337346 (n + 1)

end A337346

/-! ## A337346.P2903666118885565352

`A137734(A337345(n+1)²)-1`
-/

namespace A337346.P2903666118885565352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137734 (A337345 (n + 1) ^ 2).toNat - 1

end

end A337346.P2903666118885565352

namespace A337346

/-- `A137734(A337345(n+1)²)-1` -/
def P2903666118885565352.Spec : Prop :=
  ∀ n, P2903666118885565352.a n = A337346 (n + 1)

end A337346

/-! ## A337346.P3755675620667379603

`∑{d}[n+1, A157658(#)*A337345((n+1)/#)]`
-/

namespace A337346.P3755675620667379603
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A157658 d * A337345 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A337346.P3755675620667379603

namespace A337346

/-- `∑{d}[n+1, A157658(#)*A337345((n+1)/#)]` -/
def P3755675620667379603.Spec : Prop :=
  ∀ n, P3755675620667379603.a n = A337346 (n + 1)

end A337346

/-! ## A337346.P14820664401278226201

`A000194(A083920(A337345(n+1)²))`
-/

namespace A337346.P14820664401278226201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A083920 (A337345 (n + 1) ^ 2).toNat).toNat

end

end A337346.P14820664401278226201

namespace A337346

/-- `A000194(A083920(A337345(n+1)²))` -/
def P14820664401278226201.Spec : Prop :=
  ∀ n, P14820664401278226201.a n = A337346 (n + 1)

end A337346

/-! ## A337346.P2042702306991546954

`A000194(A337345(n+1)²-A337345(n+1))`
-/

namespace A337346.P2042702306991546954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A337345 (n + 1) ^ 2 - A337345 (n + 1)).toNat

end

end A337346.P2042702306991546954

namespace A337346

/-- `A000194(A337345(n+1)²-A337345(n+1))` -/
def P2042702306991546954.Spec : Prop :=
  ∀ n, P2042702306991546954.a n = A337346 (n + 1)

end A337346

/-! ## A337346.P17888696332405374454

`A337345(n+1)-A057427(A337345(n+1)²)`
-/

namespace A337346.P17888696332405374454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337345 (n + 1) - A057427 (A337345 (n + 1) ^ 2).toNat

end

end A337346.P17888696332405374454

namespace A337346

/-- `A337345(n+1)-A057427(A337345(n+1)²)` -/
def P17888696332405374454.Spec : Prop :=
  ∀ n, P17888696332405374454.a n = A337346 (n + 1)

end A337346

/-! ## A337346.P2379865869036971315

`A080224(n+1)+A378662(n+1)-A252742(n+1)`
-/

namespace A337346.P2379865869036971315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080224 (n + 1) + (A378662 (n + 1) - A252742 (n + 1))

end

end A337346.P2379865869036971315

namespace A337346

/-- `A080224(n+1)+A378662(n+1)-A252742(n+1)` -/
def P2379865869036971315.Spec : Prop :=
  ∀ n, P2379865869036971315.a n = A337346 (n + 1)

theorem P2379865869036971315.correct : P2379865869036971315.Spec := by
  intro n
  simp only [A337346, Nat.add_sub_cancel, A337346.P2379865869036971315.a, A337346.P2412165337189814597.a, A080224, A080224.P15248761020012364030.f1, A080224.P15248761020012364030.a, A252742, A252742.P12034946379470004791.a, A337345, A337345.P1594935461271935527.a, A378662, A378662.P11219609030214075406.f1, A378662.P11219609030214075406.a, A003961, A003961.P5996473960037614004.a, A294937, A294937.P16064831210993750001.a, A341612, A341612.P3068073104531840485.a, A253885, A253885.P16715555451856890624.a, A294935, A294935.P4767353041558056281.f1, A294935.P4767353041558056281.a, A243501, A243501.P10707292738867961998.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A337346

/-! ## A337346.P922349178161872409

`A337345(2^A337345(n+1))`
-/

namespace A337346.P922349178161872409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337345 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A337345 (n + 1) : ℤ))).toNat

end

end A337346.P922349178161872409

namespace A337346

/-- `A337345(2^A337345(n+1))` -/
def P922349178161872409.Spec : Prop :=
  ∀ n, P922349178161872409.a n = A337346 (n + 1)

end A337346

/-!
# A337347: a(n) = a(n-2) + a(n-1) if that sum is prime. Otherwise, a(n) = a(n-2) + a(n-1) + prime(m-1) + prime(m-2) + ... + prime(s), where a(-1) = a(0) = prime(0) = 1, m = pi(a(n-2)), and s = max(0, 1, 2, ..., m-1) such that the sum is prime.

The programs for A337347, there is no canonical definition to state claims against.
-/

/-! ## A337347.P6400686913273988482

`p?[∑[A114584(A331742(n))]]`
-/

namespace A337347.P6400686913273988482
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114584 (A331742 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A337347.P6400686913273988482

/-! ## A337347.P3782833163135482007

`A325042(A115856(n+1))/2`
-/

namespace A337347.P3782833163135482007
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A325042 (A115856 (n + 1)).toNat : ℚ) / 2

end

end A337347.P3782833163135482007

/-! ## A337347.P6200984187720096305

`p?[∑[A186711(A186709(2*(n+1)))]]`
-/

namespace A337347.P6200984187720096305
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186711 (A186709 (2 * (n + 1))).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A337347.P6200984187720096305

/-! ## A337347.P17409710868071372233

`p?[A019565(n)-A019565(n)%(n+1)]`
-/

namespace A337347.P17409710868071372233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 n - Int.tmod (A019565 n) (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A337347.P17409710868071372233

/-!
# A337348: Numbers formed as the product of two numbers without consecutive equal binary digits and sharing no common bits between them.

The programs for A337348, the canonical program `A337348.P16449652970141909129` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A337348 has offset 1).

The definition of A337348 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A337348.P16360411764369711983

`ogf(2x/(1-5x+20x^3-16x^4))`
-/

namespace A337348.P16360411764369711983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2] [1, -5, 0, 20, -16] n

end

end A337348.P16360411764369711983

namespace A337348

/-- `ogf(2x/(1-5x+20x^3-16x^4))` -/
def P16360411764369711983.Spec : Prop :=
  ∀ n, P16360411764369711983.a n = A337348 (n + 1)

end A337348

/-! ## A337348.P16449652970141909129

`5*a(n-1)-20*a(n-3)+16*a(n-4)` with `a(0)=0, a(1)=2, a(2)=10, a(3)=50`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A337348

/-- `5*a(n-1)-20*a(n-3)+16*a(n-4)` -/
def P16449652970141909129.Spec : Prop :=
  ∀ n, P16449652970141909129.a n = A337348 (n + 1)

theorem P16449652970141909129.correct : P16449652970141909129.Spec := by
  intro n
  simp only [A337348, Nat.add_sub_cancel]

end A337348

/-! ## A337348.P11993655362378141841

`A000975(n)*A000975(n+1)`
-/

namespace A337348.P11993655362378141841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000975 n * A000975 (n + 1)

end

end A337348.P11993655362378141841

namespace A337348

/-- `A000975(n)*A000975(n+1)` -/
def P11993655362378141841.Spec : Prop :=
  ∀ n, P11993655362378141841.a n = A337348 (n + 1)

end A337348

/-! ## A337348.P6063106526774503991

`∑[2^n*floor(∑[2^n/3])]`
-/

namespace A337348.P6063106526774503991
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℚ) / 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * ⌊∑ j ∈ Finset.range (n + 1), f2 j⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A337348.P6063106526774503991

namespace A337348

/-- `∑[2^n*floor(∑[2^n/3])]` -/
def P6063106526774503991.Spec : Prop :=
  ∀ n, P6063106526774503991.a n = A337348 (n + 1)

end A337348

/-! ## A337348.P509989860582121543

`∑[4*a(n-1)]+4*a(n-2)` with `a(0)=0, a(1)=2`
-/

namespace A337348.P509989860582121543
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  4 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 2] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 4 * a (n - 2)

end

end A337348.P509989860582121543

namespace A337348

/-- `∑[4*a(n-1)]+4*a(n-2)` -/
def P509989860582121543.Spec : Prop :=
  ∀ n, (P509989860582121543.a n : ℤ) = A337348 (n + 1)

end A337348

/-! ## A337348.P1950852623581053075

`(2/gcd(a(n-1), a(n-2))+4)*a(n-1)` with `a(0)=0, a(1)=2`
-/

namespace A337348.P1950852623581053075
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 2] fun n a =>
  (2 / (Int.gcd (SequenceMachineLib.roundAway (a (n - 1))) (SequenceMachineLib.roundAway (a (n - 2))) : ℚ) + 4) * a (n - 1)

end

end A337348.P1950852623581053075

namespace A337348

/-- `(2/gcd(a(n-1), a(n-2))+4)*a(n-1)` -/
def P1950852623581053075.Spec : Prop :=
  ∀ n, P1950852623581053075.a n = (A337348 (n + 1) : ℚ)

end A337348

/-! ## A337348.P13713935322492973999

`A084175(n)+A006095(n+1)`
-/

namespace A337348.P13713935322492973999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084175 n + A006095 (n + 1)

end

end A337348.P13713935322492973999

namespace A337348

/-- `A084175(n)+A006095(n+1)` -/
def P13713935322492973999.Spec : Prop :=
  ∀ n, P13713935322492973999.a n = A337348 (n + 1)

end A337348

/-! ## A337348.P1575676106769082785

`A084175(n+1)-A052992(n)`
-/

namespace A337348.P1575676106769082785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084175 (n + 1) - A052992 n

end

end A337348.P1575676106769082785

namespace A337348

/-- `A084175(n+1)-A052992(n)` -/
def P1575676106769082785.Spec : Prop :=
  ∀ n, P1575676106769082785.a n = A337348 (n + 1)

end A337348

/-! ## A337348.P16907296724187400287

`A015249(n+2)-A052992(n)`
-/

namespace A337348.P16907296724187400287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015249 (n + 2) - A052992 n

end

end A337348.P16907296724187400287

namespace A337348

/-- `A015249(n+2)-A052992(n)` -/
def P16907296724187400287.Spec : Prop :=
  ∀ n, P16907296724187400287.a n = A337348 (n + 1)

end A337348

/-! ## A337348.P10599423969026070374

`A097038(2*n)+A084175(n)`
-/

namespace A337348.P10599423969026070374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097038 (2 * n) + A084175 n

end

end A337348.P10599423969026070374

namespace A337348

/-- `A097038(2*n)+A084175(n)` -/
def P10599423969026070374.Spec : Prop :=
  ∀ n, P10599423969026070374.a n = A337348 (n + 1)

end A337348

/-! ## A337348.P13916803668120046253

`A000975(n)*A138587(2*n)`
-/

namespace A337348.P13916803668120046253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000975 n * A138587 (2 * n)

end

end A337348.P13916803668120046253

namespace A337348

/-- `A000975(n)*A138587(2*n)` -/
def P13916803668120046253.Spec : Prop :=
  ∀ n, P13916803668120046253.a n = A337348 (n + 1)

end A337348

/-! ## A337348.P6746370182206298653

`A084152(n+1)+A006095(n+1)`
-/

namespace A337348.P6746370182206298653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084152 (n + 1) + A006095 (n + 1)

end

end A337348.P6746370182206298653

namespace A337348

/-- `A084152(n+1)+A006095(n+1)` -/
def P6746370182206298653.Spec : Prop :=
  ∀ n, P6746370182206298653.a n = A337348 (n + 1)

end A337348

/-! ## A337348.P2410329834765020310

`A138477(2*n)+A097038(2*n)`
-/

namespace A337348.P2410329834765020310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138477 (2 * n) + A097038 (2 * n)

end

end A337348.P2410329834765020310

namespace A337348

/-- `A138477(2*n)+A097038(2*n)` -/
def P2410329834765020310.Spec : Prop :=
  ∀ n, P2410329834765020310.a n = A337348 (n + 1)

end A337348

/-! ## A337348.P6652399704595348904

`A138495(2*n)+A097038(2*n)`
-/

namespace A337348.P6652399704595348904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138495 (2 * n) + A097038 (2 * n)

end

end A337348.P6652399704595348904

namespace A337348

/-- `A138495(2*n)+A097038(2*n)` -/
def P6652399704595348904.Spec : Prop :=
  ∀ n, P6652399704595348904.a n = A337348 (n + 1)

end A337348

/-! ## A337348.P14954732916369551194

`record[A000975(A103221(n))]*A000975(n)`
-/

namespace A337348.P14954732916369551194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000975 (A103221 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A000975 n

end

end A337348.P14954732916369551194

namespace A337348

/-- `record[A000975(A103221(n))]*A000975(n)` -/
def P14954732916369551194.Spec : Prop :=
  ∀ n, P14954732916369551194.a n = A337348 (n + 1)

end A337348

/-! ## A337348.P7497439420351119666

`(A126646(n)-A000975(n))*A000975(n)`
-/

namespace A337348.P7497439420351119666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A126646 n - A000975 n) * A000975 n

end

end A337348.P7497439420351119666

namespace A337348

/-- `(A126646(n)-A000975(n))*A000975(n)` -/
def P7497439420351119666.Spec : Prop :=
  ∀ n, P7497439420351119666.a n = A337348 (n + 1)

end A337348

/-! ## A337348.P16266369670851482877

`(∑[A000079(n)]-A052992(n))*A052992(n)`
-/

namespace A337348.P16266369670851482877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j - A052992 n) * A052992 n

end

end A337348.P16266369670851482877

namespace A337348

/-- `(∑[A000079(n)]-A052992(n))*A052992(n)` -/
def P16266369670851482877.Spec : Prop :=
  ∀ n, P16266369670851482877.a n = A337348 (n + 1)

end A337348

/-! ## A337348.P12400863508829841384

`(record[A094024(n)]-A000975(n))*A000975(n)`
-/

namespace A337348.P12400863508829841384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094024 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A000975 n) * A000975 n

end

end A337348.P12400863508829841384

namespace A337348

/-- `(record[A094024(n)]-A000975(n))*A000975(n)` -/
def P12400863508829841384.Spec : Prop :=
  ∀ n, P12400863508829841384.a n = A337348 (n + 1)

end A337348

/-! ## A337348.P2582565355700439738

`A139818(n+1)+A378676(n)-A000079(n)`
-/

namespace A337348.P2582565355700439738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139818 (n + 1) + (A378676 n - A000079 n)

end

end A337348.P2582565355700439738

namespace A337348

/-- `A139818(n+1)+A378676(n)-A000079(n)` -/
def P2582565355700439738.Spec : Prop :=
  ∀ n, P2582565355700439738.a n = A337348 (n + 1)

end A337348

/-! ## A337348.P3462395127438789040

`A020988(n)+A167030(n+1)*A167030(n)`
-/

namespace A337348.P3462395127438789040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020988 n + A167030 (n + 1) * A167030 n

end

end A337348.P3462395127438789040

namespace A337348

/-- `A020988(n)+A167030(n+1)*A167030(n)` -/
def P3462395127438789040.Spec : Prop :=
  ∀ n, P3462395127438789040.a n = A337348 (n + 1)

end A337348

/-!
# A337349: To get a(n), take 3*n+1 and divide out any power of 2; then multiply by 3, subtract 1 and divide out any power of 2.

The programs for A337349, the canonical program `A337349.P3623951952315938329` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A337349 has offset 0).

The definition of A337349 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A337349.P3623951952315938329

`A075677(A067745(n+1))`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A337349

/-- `A075677(A067745(n+1))` -/
def P3623951952315938329.Spec : Prop :=
  ∀ n, P3623951952315938329.a n = A337349 n

theorem P3623951952315938329.correct : P3623951952315938329.Spec := by
  intro n
  simp only [A337349]

end A337349

/-! ## A337349.P10751836347796734303

`A067745((A067745(n+1)+1)/2)`
-/

namespace A337349.P10751836347796734303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067745 (SequenceMachineLib.roundAway ((A067745 (n + 1) + 1 : ℚ) / 2)).toNat

end

end A337349.P10751836347796734303

namespace A337349

/-- `A067745((A067745(n+1)+1)/2)` -/
def P10751836347796734303.Spec : Prop :=
  ∀ n, P10751836347796734303.a n = A337349 n

end A337349

/-! ## A337349.P11280996546795499726

`A067745(A173732(2*n)+1)`
-/

namespace A337349.P11280996546795499726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067745 (A173732 (2 * n) + 1).toNat

end

end A337349.P11280996546795499726

namespace A337349

/-- `A067745(A173732(2*n)+1)` -/
def P11280996546795499726.Spec : Prop :=
  ∀ n, P11280996546795499726.a n = A337349 n

end A337349

/-! ## A337349.P13312823595670957205

`A102421(2*n)`
-/

namespace A337349.P13312823595670957205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102421 (2 * n)

end

end A337349.P13312823595670957205

namespace A337349

/-- `A102421(2*n)` -/
def P13312823595670957205.Spec : Prop :=
  ∀ n, P13312823595670957205.a n = A337349 n

end A337349

/-! ## A337349.P17585449930207764675

`A000265(A000265(A102421(n+n)))`
-/

namespace A337349.P17585449930207764675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A000265 (A102421 (n + n)).toNat).toNat

end

end A337349.P17585449930207764675

namespace A337349

/-- `A000265(A000265(A102421(n+n)))` -/
def P17585449930207764675.Spec : Prop :=
  ∀ n, P17585449930207764675.a n = A337349 n

end A337349

/-! ## A337349.P11917601228216084474

`A302034(A269382(A302034(6*n+2)))`
-/

namespace A337349.P11917601228216084474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302034 (A269382 (A302034 (6 * n + 2)).toNat).toNat

end

end A337349.P11917601228216084474

namespace A337349

/-- `A302034(A269382(A302034(6*n+2)))` -/
def P11917601228216084474.Spec : Prop :=
  ∀ n, P11917601228216084474.a n = A337349 n

end A337349

/-! ## A337349.P14460691227492804087

`A075677(A075677(Δ[n²]))`
-/

namespace A337349.P14460691227492804087
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075677 (A075677 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A337349.P14460691227492804087

namespace A337349

/-- `A075677(A075677(Δ[n²]))` -/
def P14460691227492804087.Spec : Prop :=
  ∀ n, P14460691227492804087.a n = A337349 n

end A337349

/-! ## A337349.P4712688770735455127

`A075677(A000265(A016777(n)))`
-/

namespace A337349.P4712688770735455127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075677 (A000265 (A016777 n).toNat).toNat

end

end A337349.P4712688770735455127

namespace A337349

/-- `A075677(A000265(A016777(n)))` -/
def P4712688770735455127.Spec : Prop :=
  ∀ n, P4712688770735455127.a n = A337349 n

end A337349

/-! ## A337349.P12144703145179966575

`A075677(A000265(A165355(n)))`
-/

namespace A337349.P12144703145179966575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075677 (A000265 (A165355 n).toNat).toNat

end

end A337349.P12144703145179966575

namespace A337349

/-- `A075677(A000265(A165355(n)))` -/
def P12144703145179966575.Spec : Prop :=
  ∀ n, P12144703145179966575.a n = A337349 n

end A337349

/-! ## A337349.P2896185552567544428

`A075677(A000265(A016789(n)-1))`
-/

namespace A337349.P2896185552567544428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075677 (A000265 (A016789 n - 1).toNat).toNat

end

end A337349.P2896185552567544428

namespace A337349

/-- `A075677(A000265(A016789(n)-1))` -/
def P2896185552567544428.Spec : Prop :=
  ∀ n, P2896185552567544428.a n = A337349 n

end A337349

/-! ## A337349.P11161214393801711180

`A075677(A000265(A016789(2*n)))`
-/

namespace A337349.P11161214393801711180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075677 (A000265 (A016789 (2 * n)).toNat).toNat

end

end A337349.P11161214393801711180

namespace A337349

/-- `A075677(A000265(A016789(2*n)))` -/
def P11161214393801711180.Spec : Prop :=
  ∀ n, P11161214393801711180.a n = A337349 n

end A337349

/-! ## A337349.P9166226460538573991

`A075677(A000265(A075677(2*n+1)))`
-/

namespace A337349.P9166226460538573991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075677 (A000265 (A075677 (2 * n + 1)).toNat).toNat

end

end A337349.P9166226460538573991

namespace A337349

/-- `A075677(A000265(A075677(2*n+1)))` -/
def P9166226460538573991.Spec : Prop :=
  ∀ n, P9166226460538573991.a n = A337349 n

end A337349

/-! ## A337349.P11428612586394995664

`A000265(A001651(A000265(3*n+1)))`
-/

namespace A337349.P11428612586394995664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A001651 (A000265 (3 * n + 1)).toNat).toNat

end

end A337349.P11428612586394995664

namespace A337349

/-- `A000265(A001651(A000265(3*n+1)))` -/
def P11428612586394995664.Spec : Prop :=
  ∀ n, P11428612586394995664.a n = A337349 n

end A337349

/-! ## A337349.P15501662861735178124

`A000265(A047235(A000265(6*n+2)))`
-/

namespace A337349.P15501662861735178124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A047235 (A000265 (6 * n + 2)).toNat).toNat

end

end A337349.P15501662861735178124

namespace A337349

/-- `A000265(A047235(A000265(6*n+2)))` -/
def P15501662861735178124.Spec : Prop :=
  ∀ n, P15501662861735178124.a n = A337349 n

end A337349

/-! ## A337349.P12032016188839452699

`A000265(A025480(3*n)+A000265(3*n+1))`
-/

namespace A337349.P12032016188839452699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A025480 (3 * n) + A000265 (3 * n + 1)).toNat

end

end A337349.P12032016188839452699

namespace A337349

/-- `A000265(A025480(3*n)+A000265(3*n+1))` -/
def P12032016188839452699.Spec : Prop :=
  ∀ n, P12032016188839452699.a n = A337349 n

end A337349

/-! ## A337349.P5137547338275377206

`A000265(A168233(A000265(A033627(n+2))))`
-/

namespace A337349.P5137547338275377206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A168233 (A000265 (A033627 (n + 2)).toNat).toNat).toNat

end

end A337349.P5137547338275377206

namespace A337349

/-- `A000265(A168233(A000265(A033627(n+2))))` -/
def P5137547338275377206.Spec : Prop :=
  ∀ n, P5137547338275377206.a n = A337349 n

end A337349

/-! ## A337349.P14266031470098260166

`A000265(A168233(A000265(A165367(2*n))))`
-/

namespace A337349.P14266031470098260166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A168233 (A000265 (A165367 (2 * n)).toNat).toNat).toNat

end

end A337349.P14266031470098260166

namespace A337349

/-- `A000265(A168233(A000265(A165367(2*n))))` -/
def P14266031470098260166.Spec : Prop :=
  ∀ n, P14266031470098260166.a n = A337349 n

end A337349

/-! ## A337349.P11282236750524773785

`A000265(A032766(A000265(A032766(2*n+1))))`
-/

namespace A337349.P11282236750524773785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A032766 (A000265 (A032766 (2 * n + 1)).toNat).toNat).toNat

end

end A337349.P11282236750524773785

namespace A337349

/-- `A000265(A032766(A000265(A032766(2*n+1))))` -/
def P11282236750524773785.Spec : Prop :=
  ∀ n, P11282236750524773785.a n = A337349 n

end A337349

/-! ## A337349.P6678184320292438939

`A000265(A123684(A000265(A123684(2*n+1))))`
-/

namespace A337349.P6678184320292438939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A123684 (A000265 (A123684 (2 * n + 1)).toNat).toNat).toNat

end

end A337349.P6678184320292438939

namespace A337349

/-- `A000265(A123684(A000265(A123684(2*n+1))))` -/
def P6678184320292438939.Spec : Prop :=
  ∀ n, P6678184320292438939.a n = A337349 n

end A337349

/-! ## A337349.P9780492305391297961

`A000265(A168233(A000265(A168233(2*n+1))))`
-/

namespace A337349.P9780492305391297961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A168233 (A000265 (A168233 (2 * n + 1)).toNat).toNat).toNat

end

end A337349.P9780492305391297961

namespace A337349

/-- `A000265(A168233(A000265(A168233(2*n+1))))` -/
def P9780492305391297961.Spec : Prop :=
  ∀ n, P9780492305391297961.a n = A337349 n

end A337349

/-!
# A337350: a(n) is the number of lattice paths from (0,0) to (2n,2n) using only the steps (1,0) and (0,1) and which do not touch any other points of the form (2k,2k).

The programs for A337350, there is no canonical definition to state claims against.
-/

/-! ## A337350.P14006970191952887501

`A004277(A065097(n)+A024491(n))`
-/

namespace A337350.P14006970191952887501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A065097 n + A024491 n).toNat

end

end A337350.P14006970191952887501

/-!
# A337353: Number of n-step self-avoiding walks on a square lattice where no step can be in the same direction as the previous step.

The programs for A337353, there is no canonical definition to state claims against.
-/

/-! ## A337353.P6812334709639983936

`2*2*A336662((n-1)%(2*a(n-1)))` with `a(0)=1`
-/

namespace A337353.P6812334709639983936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * (2 * A336662 (Int.tmod ((n : ℤ) - 1) (2 * a (n - 1))).toNat)

end

end A337353.P6812334709639983936

/-! ## A337353.P16496303566674700160

`A036452(n+1)*A322419(n)`
-/

namespace A337353.P16496303566674700160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036452 (n + 1) * A322419 n

end

end A337353.P16496303566674700160

/-! ## A337353.P8829583262283842061

`A036453(n+1)*A322419(n)`
-/

namespace A337353.P8829583262283842061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (n + 1) * A322419 n

end

end A337353.P8829583262283842061

/-! ## A337353.P2215337204502525450

`(A057427(n)+1)*A322419(n)`
-/

namespace A337353.P2215337204502525450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A057427 n + 1) * A322419 n

end

end A337353.P2215337204502525450

/-!
# A337354: a(n) is the numerator of Product_{i=0..n-1} (n-i)^((-1)^ceiling(i/2)).

The programs for A337354, there is no canonical definition to state claims against.
-/

/-! ## A337354.P13846122918658910753

`A351870(A063928(n+1)*A152828(2*xor(1, ∑[n]))*A025492(∏{p}[n+1, #]))`
-/

namespace A337354.P13846122918658910753
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351870 (A063928 (n + 1) * A152828 (2 * Nat.xor 1 (∑ j ∈ Finset.range (n + 1), f1 j)) * A025492 (∏ p ∈ Nat.primeFactors (f2 n), p)).toNat

end

end A337354.P13846122918658910753

/-! ## A337354.P3697776264413552799

`A351870(A063928(n+1)*A152828(2*xor(1, ∑[n]))*A217434(∏{p}[n+1, #]))`
-/

namespace A337354.P3697776264413552799
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351870 (A063928 (n + 1) * A152828 (2 * Nat.xor 1 (∑ j ∈ Finset.range (n + 1), f1 j)) * A217434 (∏ p ∈ Nat.primeFactors (f2 n), p)).toNat

end

end A337354.P3697776264413552799

/-! ## A337354.P3042400684386623004

`A351870((A074320(n+1)-A020639(n+1))*A063928(n+1)*A152828(2*xor(1, ∑[n])))`
-/

namespace A337354.P3042400684386623004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351870 ((A074320 (n + 1) - A020639 (n + 1)) * (A063928 (n + 1) * A152828 (2 * Nat.xor 1 (∑ j ∈ Finset.range (n + 1), f1 j)))).toNat

end

end A337354.P3042400684386623004

/-!
# A337355: a(n) is the denominator of Product_{i=0..n-1} (n-i)^((-1)^ceiling(i/2)).

The programs for A337355, there is no canonical definition to state claims against.
-/

/-! ## A337355.P2551067148662163610

`A006530(A000142(n))*A152650(A152818(n))`
-/

namespace A337355.P2551067148662163610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A000142 n).toNat * A152650 (A152818 n).toNat

end

end A337355.P2551067148662163610

/-!
# A337356: Numbers whose digit sum of their square is equal to their square root.

The programs for A337356, there is no canonical definition to state claims against.
-/

/-! ## A337356.P13587161991557457026

`A055575(n+1)²`
-/

namespace A337356.P13587161991557457026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055575 (n + 1) ^ 2

end

end A337356.P13587161991557457026

/-! ## A337356.P1702954798297140214

`eq[n, ∑{digits}[n^4, #]]²`
-/

namespace A337356.P1702954798297140214
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 4

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f3 n)).map fun (x : ℕ) => x).sum

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n ^ 2

end

end A337356.P1702954798297140214

/-! ## A337356.P6351379087744311733

`eq[n, ∑{digits}[n^4, #]]^2`
-/

namespace A337356.P6351379087744311733
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 4

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f3 n)).map fun (x : ℕ) => x).sum

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n ^ 2

end

end A337356.P6351379087744311733

/-!
# A337358: Imaginary part of a two-dimensional (complex) analog of the Recamán sequence (Full definition in the Comments).

The programs for A337358, there is no canonical definition to state claims against.
-/

/-! ## A337358.P11610990900259639124

`A307448(2*n+1)%A307453(n)`
-/

namespace A337358.P11610990900259639124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A307448 (2 * n + 1)) (A307453 n)

end

end A337358.P11610990900259639124

/-! ## A337358.P16158334695981637534

`A307448(2*n+1)+A000007(A284921(n+1))`
-/

namespace A337358.P16158334695981637534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307448 (2 * n + 1) + A000007 (A284921 (n + 1)).toNat

end

end A337358.P16158334695981637534

/-! ## A337358.P12291165636591801180

`A307448(2*n+1)+A151933(A281873(n+1))`
-/

namespace A337358.P12291165636591801180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307448 (2 * n + 1) + A151933 (A281873 (n + 1)).toNat

end

end A337358.P12291165636591801180

/-! ## A337358.P13183509811801149912

`A307448(2*n+1)+A151933(A296327(n+1))`
-/

namespace A337358.P13183509811801149912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307448 (2 * n + 1) + A151933 (A296327 (n + 1)).toNat

end

end A337358.P13183509811801149912

/-!
# A337359: Primes r between two consecutive squares of primes p^2 and q^2 such that p^2 + q^2 - r is prime as well.

The programs for A337359, there is no canonical definition to state claims against.
-/

/-! ## A337359.P2776459108892790857

`p?[A127161(3*(n+1))]`
-/

namespace A337359.P2776459108892790857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127161 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A337359.P2776459108892790857

/-! ## A337359.P5056581201850524476

`p?[A105108(3*n+2)+2]`
-/

namespace A337359.P5056581201850524476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105108 (3 * n + 2) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A337359.P5056581201850524476

/-! ## A337359.P3933403641379322718

`∩[A023238(n+1), A088476(n+1)]`
-/

namespace A337359.P3933403641379322718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023238 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088476 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A337359.P3933403641379322718

/-! ## A337359.P6930628659946233029

`A004018(C(n+7, 7))+A002476(n+1)`
-/

namespace A337359.P6930628659946233029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004018 (Nat.choose (n + 7) 7) + A002476 (n + 1)

end

end A337359.P6930628659946233029

/-!
# A337360: a(n) = sigma(n) * (tau(n) + 1).

The programs for A337360, the canonical program `A337360.P11696731240538320852` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A337360 has offset 1).

The definition of A337360 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000203(n+1)*(A000005(n+1)+1)` (program `A337360.P11696731240538320852`, by `A337360.P11696731240538320852.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A337360.P8070623483969716760

`A000203(n+1)+A064840(n+1)`
-/

namespace A337360.P8070623483969716760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + A064840 (n + 1)

end

end A337360.P8070623483969716760

namespace A337360

/-- `A000203(n+1)+A064840(n+1)` -/
def P8070623483969716760.Spec : Prop :=
  ∀ n, P8070623483969716760.a n = A337360 (n + 1)

theorem P8070623483969716760.correct : P8070623483969716760.Spec := by
  intro n
  simp only [A337360, Nat.add_sub_cancel, A337360.P8070623483969716760.a, A337360.P11696731240538320852.a, A000005, A000005.P16091521709108585461.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A064840, A064840.P1031066778155785146.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A337360

/-! ## A337360.P11696731240538320852

`A000203(n+1)*(A000005(n+1)+1)`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A337360

/-- `A000203(n+1)*(A000005(n+1)+1)` -/
def P11696731240538320852.Spec : Prop :=
  ∀ n, P11696731240538320852.a n = A337360 (n + 1)

theorem P11696731240538320852.correct : P11696731240538320852.Spec := by
  intro n
  simp only [A337360, Nat.add_sub_cancel]

end A337360

/-! ## A337360.P5584620238765095307

`∑{d}[n+1, ceil(2/#)]*∑{d}[n+1, #]`
-/

namespace A337360.P5584620238765095307
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n), ⌈2 / (d : ℚ)⌉) * ((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℤ)

end

end A337360.P5584620238765095307

namespace A337360

/-- `∑{d}[n+1, ceil(2/#)]*∑{d}[n+1, #]` -/
def P5584620238765095307.Spec : Prop :=
  ∀ n, P5584620238765095307.a n = A337360 (n + 1)

end A337360

/-! ## A337360.P10301233992151434135

`(∏{e}[n+1, #+1]+1)*∑{d}[n+1, #]`
-/

namespace A337360.P10301233992151434135
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) + 1) * (∑ d ∈ Nat.divisors (f2 n), d)

end

end A337360.P10301233992151434135

namespace A337360

/-- `(∏{e}[n+1, #+1]+1)*∑{d}[n+1, #]` -/
def P10301233992151434135.Spec : Prop :=
  ∀ n, (P10301233992151434135.a n : ℤ) = A337360 (n + 1)

theorem P10301233992151434135.correct : P10301233992151434135.Spec := by
  intro n
  simp only [A337360, Nat.add_sub_cancel, A337360.P10301233992151434135.f1, A337360.P10301233992151434135.f2, A337360.P10301233992151434135.a, A337360.P11696731240538320852.a, A000005, A000005.P16091521709108585461.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A337360

/-! ## A337360.P6348904897969950539

`A064840(n+1)+Δ[A160664(n)]`
-/

namespace A337360.P6348904897969950539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064840 (n + 1) + (f1 (n + 1) - f1 n)

end

end A337360.P6348904897969950539

namespace A337360

/-- `A064840(n+1)+Δ[A160664(n)]` -/
def P6348904897969950539.Spec : Prop :=
  ∀ n, P6348904897969950539.a n = A337360 (n + 1)

end A337360

/-! ## A337360.P6391168262391181677

`Δ[A160664(n)]*A334954(n+1)`
-/

namespace A337360.P6391168262391181677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A334954 (n + 1)

end

end A337360.P6391168262391181677

namespace A337360

/-- `Δ[A160664(n)]*A334954(n+1)` -/
def P6391168262391181677.Spec : Prop :=
  ∀ n, P6391168262391181677.a n = A337360 (n + 1)

end A337360

/-! ## A337360.P13342235511573190711

`A064945(n+1)+A064944(n+1)`
-/

namespace A337360.P13342235511573190711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064945 (n + 1) + A064944 (n + 1)

end

end A337360.P13342235511573190711

namespace A337360

/-- `A064945(n+1)+A064944(n+1)` -/
def P13342235511573190711.Spec : Prop :=
  ∀ n, P13342235511573190711.a n = A337360 (n + 1)

theorem P13342235511573190711.correct : P13342235511573190711.Spec := by
  intro n
  simp only [A337360, Nat.add_sub_cancel, A337360.P13342235511573190711.a, A337360.P11696731240538320852.a, A000005, A000005.P16091521709108585461.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A064944, A064944.P11551017780443205889.a, A064945, A064945.P3931464389855015179.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A064948, A064948.P5908302656310067070.f1, A064948.P5908302656310067070.a, A034448, A034448.P11229265544409245030.f1, A034448.P11229265544409245030.a, A117003, A117003.P17752190121858811071.a, A079667, A079667.P14511190976572101937.a, A254503, A254503.P16877197465467938331.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A337360

/-! ## A337360.P4965184237137182898

`A337297(n+1)+A074400(n+1)`
-/

namespace A337360.P4965184237137182898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337297 (n + 1) + A074400 (n + 1)

end

end A337360.P4965184237137182898

namespace A337360

/-- `A337297(n+1)+A074400(n+1)` -/
def P4965184237137182898.Spec : Prop :=
  ∀ n, P4965184237137182898.a n = A337360 (n + 1)

theorem P4965184237137182898.correct : P4965184237137182898.Spec := by
  intro n
  simp only [A337360, Nat.add_sub_cancel, A337360.P4965184237137182898.a, A337360.P11696731240538320852.a, A000005, A000005.P16091521709108585461.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A074400, A074400.P16312391460013478761.a, A337297, A337297.P1022103926684106451.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A337360

/-! ## A337360.P5424041903018228768

`A343824(n+1)+A152211(n+1)`
-/

namespace A337360.P5424041903018228768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343824 (n + 1) + A152211 (n + 1)

end

end A337360.P5424041903018228768

namespace A337360

/-- `A343824(n+1)+A152211(n+1)` -/
def P5424041903018228768.Spec : Prop :=
  ∀ n, P5424041903018228768.a n = A337360 (n + 1)

theorem P5424041903018228768.correct : P5424041903018228768.Spec := by
  intro n
  simp only [A337360, Nat.add_sub_cancel, A337360.P5424041903018228768.a, A337360.P11696731240538320852.a, A000005, A000005.P16091521709108585461.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A152211, A152211.P8934016512484736310.a, A343824, A343824.P3633517651203966580.f1, A343824.P3633517651203966580.f2, A343824.P3633517651203966580.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A337360

/-! ## A337360.P4367512669102503550

`A000203(n+1)*A334954(n+1)`
-/

namespace A337360.P4367512669102503550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) * A334954 (n + 1)

end

end A337360.P4367512669102503550

namespace A337360

/-- `A000203(n+1)*A334954(n+1)` -/
def P4367512669102503550.Spec : Prop :=
  ∀ n, P4367512669102503550.a n = A337360 (n + 1)

end A337360

/-! ## A337360.P2030656702524649848

`(Δ[A006218(n)]+1)*A000203(n+1)`
-/

namespace A337360.P2030656702524649848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n + 1) * A000203 (n + 1)

end

end A337360.P2030656702524649848

namespace A337360

/-- `(Δ[A006218(n)]+1)*A000203(n+1)` -/
def P2030656702524649848.Spec : Prop :=
  ∀ n, P2030656702524649848.a n = A337360 (n + 1)

end A337360

/-! ## A337360.P11775199109886757323

`(Δ[A054519(n)]+1)*A000203(n+1)`
-/

namespace A337360.P11775199109886757323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n + 1) * A000203 (n + 1)

end

end A337360.P11775199109886757323

namespace A337360

/-- `(Δ[A054519(n)]+1)*A000203(n+1)` -/
def P11775199109886757323.Spec : Prop :=
  ∀ n, P11775199109886757323.a n = A337360 (n + 1)

end A337360

/-! ## A337360.P2002024903228470518

`(A000005(n+1)+1)*Δ[A160664(n)]`
-/

namespace A337360.P2002024903228470518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000005 (n + 1) + 1) * (f1 (n + 1) - f1 n)

end

end A337360.P2002024903228470518

namespace A337360

/-- `(A000005(n+1)+1)*Δ[A160664(n)]` -/
def P2002024903228470518.Spec : Prop :=
  ∀ n, P2002024903228470518.a n = A337360 (n + 1)

end A337360

/-! ## A337360.P14468895837595879879

`A064840(n+1)+A088580(n+1)-1`
-/

namespace A337360.P14468895837595879879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064840 (n + 1) + (A088580 (n + 1) - 1)

end

end A337360.P14468895837595879879

namespace A337360

/-- `A064840(n+1)+A088580(n+1)-1` -/
def P14468895837595879879.Spec : Prop :=
  ∀ n, P14468895837595879879.a n = A337360 (n + 1)

theorem P14468895837595879879.correct : P14468895837595879879.Spec := by
  intro n
  simp only [A337360, Nat.add_sub_cancel, A337360.P14468895837595879879.a, A337360.P11696731240538320852.a, A000005, A000005.P16091521709108585461.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A064840, A064840.P1031066778155785146.a, A088580, A088580.P3089093194242277422.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A337360

/-! ## A337360.P2592857792213519550

`(A088580(n+1)-1)*A334954(n+1)`
-/

namespace A337360.P2592857792213519550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A088580 (n + 1) - 1) * A334954 (n + 1)

end

end A337360.P2592857792213519550

namespace A337360

/-- `(A088580(n+1)-1)*A334954(n+1)` -/
def P2592857792213519550.Spec : Prop :=
  ∀ n, P2592857792213519550.a n = A337360 (n + 1)

end A337360

/-! ## A337360.P5886901966872790459

`A064840(n+1)+A074400(n+1)/2`
-/

namespace A337360.P5886901966872790459
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064840 (n + 1) : ℚ) + (A074400 (n + 1) : ℚ) / 2

end

end A337360.P5886901966872790459

namespace A337360

/-- `A064840(n+1)+A074400(n+1)/2` -/
def P5886901966872790459.Spec : Prop :=
  ∀ n, P5886901966872790459.a n = (A337360 (n + 1) : ℚ)

theorem P5886901966872790459.correct : P5886901966872790459.Spec := by
  intro n
  simp only [A337360, Nat.add_sub_cancel, A337360.P5886901966872790459.a, A337360.P11696731240538320852.a, A000005, A000005.P16091521709108585461.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A064840, A064840.P1031066778155785146.a, A074400, A074400.P16312391460013478761.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A337360

/-! ## A337360.P905643218631410848

`(A062249(n+1)-n)*A000203(n+1)`
-/

namespace A337360.P905643218631410848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A062249 (n + 1) - (n : ℤ)) * A000203 (n + 1)

end

end A337360.P905643218631410848

namespace A337360

/-- `(A062249(n+1)-n)*A000203(n+1)` -/
def P905643218631410848.Spec : Prop :=
  ∀ n, P905643218631410848.a n = A337360 (n + 1)

theorem P905643218631410848.correct : P905643218631410848.Spec := by
  intro n
  simp only [A337360, Nat.add_sub_cancel, A337360.P905643218631410848.a, A337360.P11696731240538320852.a, A000005, A000005.P16091521709108585461.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A062249, A062249.P5473932307129171226.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A337360

/-! ## A337360.P97660605579435153

`abs((A000005(n+1)+1)*A143348(n+1))`
-/

namespace A337360.P97660605579435153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(A000005 (n + 1) + 1) * A143348 (n + 1)|

end

end A337360.P97660605579435153

namespace A337360

/-- `abs((A000005(n+1)+1)*A143348(n+1))` -/
def P97660605579435153.Spec : Prop :=
  ∀ n, P97660605579435153.a n = A337360 (n + 1)

end A337360

/-! ## A337360.P5611195535461689503

`(abs(A329484(n+1))+1)*A000203(n+1)`
-/

namespace A337360.P5611195535461689503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (|A329484 (n + 1)| + 1) * A000203 (n + 1)

end

end A337360.P5611195535461689503

namespace A337360

/-- `(abs(A329484(n+1))+1)*A000203(n+1)` -/
def P5611195535461689503.Spec : Prop :=
  ∀ n, P5611195535461689503.a n = A337360 (n + 1)

end A337360

/-! ## A337360.P18404416993369074845

`(sqrt(A035116(n+1))+1)*A000203(n+1)`
-/

namespace A337360.P18404416993369074845
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Real.sqrt (A035116 (n + 1) : ℝ) + 1) * (A000203 (n + 1) : ℝ)

end

end A337360.P18404416993369074845

namespace A337360

/-- `(sqrt(A035116(n+1))+1)*A000203(n+1)` -/
def P18404416993369074845.Spec : Prop :=
  ∀ n, P18404416993369074845.a n = (A337360 (n + 1) : ℝ)

end A337360

/-!
# A337362: Number of pairs of divisors of n, (d1,d2), with d1 <= d2 such that d1 and d2 are nonconsecutive integers.

The programs for A337362, the canonical program `A337362.P16917080066168618758` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A337362 has offset 1).

The definition of A337362 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A337362.P11221401401223993515

`A337363(n+1)+A000005(n+1)`
-/

namespace A337362.P11221401401223993515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337363 (n + 1) + A000005 (n + 1)

end

end A337362.P11221401401223993515

namespace A337362

/-- `A337363(n+1)+A000005(n+1)` -/
def P11221401401223993515.Spec : Prop :=
  ∀ n, P11221401401223993515.a n = A337362 (n + 1)

end A337362

/-! ## A337362.P16917080066168618758

`A184389(n+1)-A129308(n+1)`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A337362

/-- `A184389(n+1)-A129308(n+1)` -/
def P16917080066168618758.Spec : Prop :=
  ∀ n, P16917080066168618758.a n = A337362 (n + 1)

theorem P16917080066168618758.correct : P16917080066168618758.Spec := by
  intro n
  simp only [A337362, Nat.add_sub_cancel]

end A337362

/-! ## A337362.P11293650815970996915

`A137921(n+1)+A066446(n+1)`
-/

namespace A337362.P11293650815970996915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137921 (n + 1) + A066446 (n + 1)

end

end A337362.P11293650815970996915

namespace A337362

/-- `A137921(n+1)+A066446(n+1)` -/
def P11293650815970996915.Spec : Prop :=
  ∀ n, P11293650815970996915.a n = A337362 (n + 1)

end A337362

/-! ## A337362.P360494092083078513

`A000217(A000005(n+1))-A129308(n+1)`
-/

namespace A337362.P360494092083078513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A000005 (n + 1)).toNat - A129308 (n + 1)

end

end A337362.P360494092083078513

namespace A337362

/-- `A000217(A000005(n+1))-A129308(n+1)` -/
def P360494092083078513.Spec : Prop :=
  ∀ n, P360494092083078513.a n = A337362 (n + 1)

end A337362

/-! ## A337362.P2844775586303724642

`A000005(n+1)+A066446(n+1)-A129308(n+1)`
-/

namespace A337362.P2844775586303724642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + (A066446 (n + 1) - A129308 (n + 1))

end

end A337362.P2844775586303724642

namespace A337362

/-- `A000005(n+1)+A066446(n+1)-A129308(n+1)` -/
def P2844775586303724642.Spec : Prop :=
  ∀ n, P2844775586303724642.a n = A337362 (n + 1)

end A337362

/-! ## A337362.P10793962305561318801

`A184389(n+1)+A337363(n+1)-A066446(n+1)`
-/

namespace A337362.P10793962305561318801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184389 (n + 1) + (A337363 (n + 1) - A066446 (n + 1))

end

end A337362.P10793962305561318801

namespace A337362

/-- `A184389(n+1)+A337363(n+1)-A066446(n+1)` -/
def P10793962305561318801.Spec : Prop :=
  ∀ n, P10793962305561318801.a n = A337362 (n + 1)

theorem P10793962305561318801.correct : P10793962305561318801.Spec := by
  intro n
  simp only [A337362, Nat.add_sub_cancel, A337362.P10793962305561318801.a, A337362.P16917080066168618758.a, A066446, A066446.P5739828571146208619.a, A129308, A129308.P17478066813720494724.f1, A129308.P17478066813720494724.a, A184389, A184389.P1294751775581732822.f1, A184389.P1294751775581732822.a, A337363, A337363.P11598784413067799807.a, A000005, A000005.P16091521709108585461.a, A000217, A000217.P10269402890581615239.a, A005369, A005369.P10796159359873341658.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A337362

/-! ## A337362.P10146298270060040936

`A337363(n+1)+A335841(n+1)/A001227(n+1)`
-/

namespace A337362.P10146298270060040936
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A337363 (n + 1) : ℚ) + (A335841 (n + 1) : ℚ) / (A001227 (n + 1) : ℚ)

end

end A337362.P10146298270060040936

namespace A337362

/-- `A337363(n+1)+A335841(n+1)/A001227(n+1)` -/
def P10146298270060040936.Spec : Prop :=
  ∀ n, P10146298270060040936.a n = (A337362 (n + 1) : ℚ)

end A337362

/-! ## A337362.P5602396109881772913

`A337363(n+1)+A174273(A003961(n+1))`
-/

namespace A337362.P5602396109881772913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337363 (n + 1) + A174273 (A003961 (n + 1)).toNat

end

end A337362.P5602396109881772913

namespace A337362

/-- `A337363(n+1)+A174273(A003961(n+1))` -/
def P5602396109881772913.Spec : Prop :=
  ∀ n, P5602396109881772913.a n = A337362 (n + 1)

end A337362

/-!
# A337363: a(n) = Sum_{d1|n, d2|n, d1<d2} (1 - [d1 + 1 = d2]), where [ ] is the Iverson bracket.

The programs for A337363, the canonical program `A337363.P11598784413067799807` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A337363 has offset 1).

The definition of A337363 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A337363.P11598784413067799807

`A066446(n+1)-A129308(n+1)`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A337363

/-- `A066446(n+1)-A129308(n+1)` -/
def P11598784413067799807.Spec : Prop :=
  ∀ n, P11598784413067799807.a n = A337363 (n + 1)

theorem P11598784413067799807.correct : P11598784413067799807.Spec := by
  intro n
  simp only [A337363, Nat.add_sub_cancel]

end A337363

/-! ## A337363.P4633324357625567312

`A337362(n+1)-A000005(n+1)`
-/

namespace A337363.P4633324357625567312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337362 (n + 1) - A000005 (n + 1)

end

end A337363.P4633324357625567312

namespace A337363

/-- `A337362(n+1)-A000005(n+1)` -/
def P4633324357625567312.Spec : Prop :=
  ∀ n, P4633324357625567312.a n = A337363 (n + 1)

end A337363

/-! ## A337363.P4014668966024907755

`A309945(A337362(n+1)+1)`
-/

namespace A337363.P4014668966024907755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309945 (A337362 (n + 1) + 1).toNat

end

end A337363.P4014668966024907755

namespace A337363

/-- `A309945(A337362(n+1)+1)` -/
def P4014668966024907755.Spec : Prop :=
  ∀ n, P4014668966024907755.a n = A337363 (n + 1)

end A337363

/-! ## A337363.P15519309337484502009

`A343877(n+1)+A195150(n+1)`
-/

namespace A337363.P15519309337484502009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343877 (n + 1) + A195150 (n + 1)

end

end A337363.P15519309337484502009

namespace A337363

/-- `A343877(n+1)+A195150(n+1)` -/
def P15519309337484502009.Spec : Prop :=
  ∀ n, P15519309337484502009.a n = A337363 (n + 1)

end A337363

/-! ## A337363.P7342211266646370970

`A000217(A032741(n+1))-A129308(n+1)`
-/

namespace A337363.P7342211266646370970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A032741 (n + 1)).toNat - A129308 (n + 1)

end

end A337363.P7342211266646370970

namespace A337363

/-- `A000217(A032741(n+1))-A129308(n+1)` -/
def P7342211266646370970.Spec : Prop :=
  ∀ n, P7342211266646370970.a n = A337363 (n + 1)

theorem P7342211266646370970.correct : P7342211266646370970.Spec := by
  intro n
  simp only [A337363, Nat.add_sub_cancel, A337363.P7342211266646370970.a, A337363.P11598784413067799807.a, A000217, A000217.P10269402890581615239.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A066446, A066446.P5739828571146208619.a, A129308, A129308.P17478066813720494724.f1, A129308.P17478066813720494724.a, A000005, A000005.P16091521709108585461.a, A005369, A005369.P10796159359873341658.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A337363

/-! ## A337363.P3447670775097542127

`A000217(A000005(n+1)-1)-A129308(n+1)`
-/

namespace A337363.P3447670775097542127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A000005 (n + 1) - 1).toNat - A129308 (n + 1)

end

end A337363.P3447670775097542127

namespace A337363

/-- `A000217(A000005(n+1)-1)-A129308(n+1)` -/
def P3447670775097542127.Spec : Prop :=
  ∀ n, P3447670775097542127.a n = A337363 (n + 1)

end A337363

/-! ## A337363.P6176982247491887564

`A184389(n+1)-(A129308(n+1)+A000005(n+1))`
-/

namespace A337363.P6176982247491887564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184389 (n + 1) - (A129308 (n + 1) + A000005 (n + 1))

end

end A337363.P6176982247491887564

namespace A337363

/-- `A184389(n+1)-(A129308(n+1)+A000005(n+1))` -/
def P6176982247491887564.Spec : Prop :=
  ∀ n, P6176982247491887564.a n = A337363 (n + 1)

end A337363

/-! ## A337363.P5264434053838021577

`A035116(n+1)-(A184389(n+1)+A129308(n+1))`
-/

namespace A337363.P5264434053838021577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035116 (n + 1) - (A184389 (n + 1) + A129308 (n + 1))

end

end A337363.P5264434053838021577

namespace A337363

/-- `A035116(n+1)-(A184389(n+1)+A129308(n+1))` -/
def P5264434053838021577.Spec : Prop :=
  ∀ n, P5264434053838021577.a n = A337363 (n + 1)

end A337363

/-! ## A337363.P12228638535070673144

`A337362(n+1)-A335841(n+1)/A001227(n+1)`
-/

namespace A337363.P12228638535070673144
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A337362 (n + 1) : ℚ) - (A335841 (n + 1) : ℚ) / (A001227 (n + 1) : ℚ)

end

end A337363.P12228638535070673144

namespace A337363

/-- `A337362(n+1)-A335841(n+1)/A001227(n+1)` -/
def P12228638535070673144.Spec : Prop :=
  ∀ n, P12228638535070673144.a n = (A337363 (n + 1) : ℚ)

end A337363

/-! ## A337363.P8727629716509930190

`A337362(n+1)-A335841(A100577(n+1))`
-/

namespace A337363.P8727629716509930190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337362 (n + 1) - A335841 (A100577 (n + 1)).toNat

end

end A337363.P8727629716509930190

namespace A337363

/-- `A337362(n+1)-A335841(A100577(n+1))` -/
def P8727629716509930190.Spec : Prop :=
  ∀ n, P8727629716509930190.a n = A337363 (n + 1)

end A337363

/-!
# A337366: Number of representations of A036691(n) as a sum of 3 nonnegative cubes.

The programs for A337366, there is no canonical definition to state claims against.
-/

/-! ## A337366.P9170626634981610371

`A083912(A083329(n)+A002426(n))`
-/

namespace A337366.P9170626634981610371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083912 (A083329 n + A002426 n).toNat

end

end A337366.P9170626634981610371

/-! ## A337366.P6746652918808573095

`A030998(A000625(n)-A240493(n))`
-/

namespace A337366.P6746652918808573095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030998 (A000625 n - A240493 n).toNat

end

end A337366.P6746652918808573095

/-!
# A337367: Sum of squared end-to-end distances over all n-step self-avoiding walks on the square lattice having no pair of nonconsecutive vertices that are adjacent in the lattice.

The programs for A337367, there is no canonical definition to state claims against.
-/

/-! ## A337367.P1949701493285827698

`4*n*A316223(2^n)`
-/

namespace A337367.P1949701493285827698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) * A316223 (2 ^ n)

end

end A337367.P1949701493285827698

/-!
# A337369: Square array T(n,k), n >= 0, k >= 0, read by antidiagonals, where column k is the expansion of sqrt(2 / ( (1-2*(k+4)*x+((k-4)*x)^2) * (1+(k-4)*x+sqrt(1-2*(k+4)*x+((k-4)*x)^2)) )).

The programs for A337369, there is no canonical definition to state claims against.
-/

/-! ## A337369.P4720590504199417707

`A072088(A143019(n))`
-/

namespace A337369.P4720590504199417707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072088 (A143019 n).toNat

end

end A337369.P4720590504199417707

/-! ## A337369.P16915264871902334733

`A072089(or(A112345(n), A143019(n)))`
-/

namespace A337369.P16915264871902334733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072089 (Int.lor (A112345 n) (A143019 n)).toNat

end

end A337369.P16915264871902334733

/-! ## A337369.P2465343664153715402

`A072089(or(A143019(n), A259776(n)))`
-/

namespace A337369.P2465343664153715402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072089 (Int.lor (A143019 n) (A259776 n)).toNat

end

end A337369.P2465343664153715402

/-!
# A337370: Expansion of sqrt(2 / ( (1-12*x+4*x^2) * (1-2*x+sqrt(1-12*x+4*x^2)) )).

The programs for A337370, the canonical program `A337370.P2540727050784175235` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A337370 has offset 0).

The definition of A337370 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A337370.P2540727050784175235

`∑{#}[n, 2^(n-#)*C(2*#, #)*C(2*n+1, 2*#)]`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A337370

/-- `∑{#}[n, 2^(n-#)*C(2*#, #)*C(2*n+1, 2*#)]` -/
def P2540727050784175235.Spec : Prop :=
  ∀ n, P2540727050784175235.a n = (A337370 n : ℚ)

end A337370

/-! ## A337370.P11799587088701873171

`abs(A307091(2*n+1))`
-/

namespace A337370.P11799587088701873171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A307091 (2 * n + 1)|

end

end A337370.P11799587088701873171

namespace A337370

/-- `abs(A307091(2*n+1))` -/
def P11799587088701873171.Spec : Prop :=
  ∀ n, P11799587088701873171.a n = A337370 n

end A337370

/-! ## A337370.P10484195760981211553

`record[gcd(A035363(n), A307091(n))]`
-/

namespace A337370.P10484195760981211553
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A035363 n) (A307091 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A337370.P10484195760981211553

namespace A337370

/-- `record[gcd(A035363(n), A307091(n))]` -/
def P10484195760981211553.Spec : Prop :=
  ∀ n, (P10484195760981211553.a n : ℤ) = A337370 n

end A337370

/-! ## A337370.P8832691607670564522

`gcd(A035363(2*n+1), A307091(2*n+1))`
-/

namespace A337370.P8832691607670564522
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A035363 (2 * n + 1)) (A307091 (2 * n + 1))

end

end A337370.P8832691607670564522

namespace A337370

/-- `gcd(A035363(2*n+1), A307091(2*n+1))` -/
def P8832691607670564522.Spec : Prop :=
  ∀ n, (P8832691607670564522.a n : ℤ) = A337370 n

end A337370

/-! ## A337370.P17032126411237198209

`A337369(∑[n+3])`
-/

namespace A337370.P17032126411237198209
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337369 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A337370.P17032126411237198209

namespace A337370

/-- `A337369(∑[n+3])` -/
def P17032126411237198209.Spec : Prop :=
  ∀ n, P17032126411237198209.a n = A337370 n

end A337370

/-! ## A337370.P5595012579288903630

`A179191(2*n+1)/A000079(n)`
-/

namespace A337370.P5595012579288903630
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A179191 (2 * n + 1) : ℚ) / (A000079 n : ℚ)

end

end A337370.P5595012579288903630

namespace A337370

/-- `A179191(2*n+1)/A000079(n)` -/
def P5595012579288903630.Spec : Prop :=
  ∀ n, P5595012579288903630.a n = (A337370 n : ℚ)

end A337370

/-! ## A337370.P12761717142191047834

`A006139(2*n+1)/A000079(n+1)`
-/

namespace A337370.P12761717142191047834
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006139 (2 * n + 1) : ℚ) / (A000079 (n + 1) : ℚ)

end

end A337370.P12761717142191047834

namespace A337370

/-- `A006139(2*n+1)/A000079(n+1)` -/
def P12761717142191047834.Spec : Prop :=
  ∀ n, P12761717142191047834.a n = (A337370 n : ℚ)

end A337370

/-! ## A337370.P7842929879193532718

`A006139(2*n+1)/A011782(n+2)`
-/

namespace A337370.P7842929879193532718
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006139 (2 * n + 1) : ℚ) / (A011782 (n + 2) : ℚ)

end

end A337370.P7842929879193532718

namespace A337370

/-- `A006139(2*n+1)/A011782(n+2)` -/
def P7842929879193532718.Spec : Prop :=
  ∀ n, P7842929879193532718.a n = (A337370 n : ℚ)

end A337370

/-! ## A337370.P17263114455245663768

`A006139(2*n+1)/A016116(2*(n+1))`
-/

namespace A337370.P17263114455245663768
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006139 (2 * n + 1) : ℚ) / (A016116 (2 * (n + 1)) : ℚ)

end

end A337370.P17263114455245663768

namespace A337370

/-- `A006139(2*n+1)/A016116(2*(n+1))` -/
def P17263114455245663768.Spec : Prop :=
  ∀ n, P17263114455245663768.a n = (A337370 n : ℚ)

end A337370

/-! ## A337370.P2542151049831828123

`A006139(2*n+1)/A036561(A000217(n+1))`
-/

namespace A337370.P2542151049831828123
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006139 (2 * n + 1) : ℚ) / (A036561 (A000217 (n + 1)).toNat : ℚ)

end

end A337370.P2542151049831828123

namespace A337370

/-- `A006139(2*n+1)/A036561(A000217(n+1))` -/
def P2542151049831828123.Spec : Prop :=
  ∀ n, P2542151049831828123.a n = (A337370 n : ℚ)

end A337370

/-!
# A337371: Integers k with abs(sin(k)) < 1/k.

The programs for A337371, there is no canonical definition to state claims against.
-/

/-! ## A337371.P15968811064979673695

`gcd(floor(acot(n)), A332095(n+1))`
-/

namespace A337371.P15968811064979673695
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ⌊SequenceMachineLib.acot (n : ℝ)⌋ (A332095 (n + 1))

end

end A337371.P15968811064979673695

/-! ## A337371.P18206559143065945981

`gcd(A088157(n), A332095(n+1))`
-/

namespace A337371.P18206559143065945981
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A088157 n) (A332095 (n + 1))

end

end A337371.P18206559143065945981

/-! ## A337371.P1593823522584695891

`abs(A332095(n+1)+A000007(n))`
-/

namespace A337371.P1593823522584695891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A332095 (n + 1) + A000007 n|

end

end A337371.P1593823522584695891

/-! ## A337371.P5613647789010190140

`abs(A332095(n+1)+A151909(n))`
-/

namespace A337371.P5613647789010190140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A332095 (n + 1) + A151909 n|

end

end A337371.P5613647789010190140

/-! ## A337371.P419462405527243137

`or(abs(A332095(n+1)), A010057(n))`
-/

namespace A337371.P419462405527243137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor |A332095 (n + 1)| (A010057 n)

end

end A337371.P419462405527243137

/-!
# A337372: Primitively primeshift-abundant numbers: Numbers that are included in A246282 (k with A003961(k) > 2k), but none of whose proper divisors are.

The programs for A337372, the canonical program `A337372.P8743427394411133788` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A337372 has offset 1).

The definition of A337372 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 580 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A337372.P11960688328019300598

`filter[A305800(n+1), A341609(#)]`
-/

namespace A337372.P11960688328019300598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305800 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341609 (f1 j).toNat = 1) n)

end

end A337372.P11960688328019300598

namespace A337372

/-- `filter[A305800(n+1), A341609(#)]` -/
def P11960688328019300598.Spec : Prop :=
  ∀ n, P11960688328019300598.a n = A337372 (n + 1)

end A337372

/-! ## A337372.P889074545367297899

`filter[A305801(n+1), A341609(#)]`
-/

namespace A337372.P889074545367297899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305801 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341609 (f1 j).toNat = 1) n)

end

end A337372.P889074545367297899

namespace A337372

/-- `filter[A305801(n+1), A341609(#)]` -/
def P889074545367297899.Spec : Prop :=
  ∀ n, P889074545367297899.a n = A337372 (n + 1)

end A337372

/-! ## A337372.P9791498889634637756

`filter[A305810(n+1), A341609(#)]`
-/

namespace A337372.P9791498889634637756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305810 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341609 (f1 j).toNat = 1) n)

end

end A337372.P9791498889634637756

namespace A337372

/-- `filter[A305810(n+1), A341609(#)]` -/
def P9791498889634637756.Spec : Prop :=
  ∀ n, P9791498889634637756.a n = A337372 (n + 1)

end A337372

/-! ## A337372.P8807642622771942306

`filter[A305894(n+1), A341609(#)]`
-/

namespace A337372.P8807642622771942306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305894 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341609 (f1 j).toNat = 1) n)

end

end A337372.P8807642622771942306

namespace A337372

/-- `filter[A305894(n+1), A341609(#)]` -/
def P8807642622771942306.Spec : Prop :=
  ∀ n, P8807642622771942306.a n = A337372 (n + 1)

end A337372

/-! ## A337372.P15529543583456890754

`filter[A305900(n+1), A341609(#)]`
-/

namespace A337372.P15529543583456890754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305900 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341609 (f1 j).toNat = 1) n)

end

end A337372.P15529543583456890754

namespace A337372

/-- `filter[A305900(n+1), A341609(#)]` -/
def P15529543583456890754.Spec : Prop :=
  ∀ n, P15529543583456890754.a n = A337372 (n + 1)

end A337372

/-! ## A337372.P11893424572031660123

`filter[A305903(n+1), A341609(#)]`
-/

namespace A337372.P11893424572031660123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305903 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341609 (f1 j).toNat = 1) n)

end

end A337372.P11893424572031660123

namespace A337372

/-- `filter[A305903(n+1), A341609(#)]` -/
def P11893424572031660123.Spec : Prop :=
  ∀ n, P11893424572031660123.a n = A337372 (n + 1)

end A337372

/-! ## A337372.P10878713376458815763

`filter[A305904(n+1), A341609(#)]`
-/

namespace A337372.P10878713376458815763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305904 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341609 (f1 j).toNat = 1) n)

end

end A337372.P10878713376458815763

namespace A337372

/-- `filter[A305904(n+1), A341609(#)]` -/
def P10878713376458815763.Spec : Prop :=
  ∀ n, P10878713376458815763.a n = A337372 (n + 1)

end A337372

/-! ## A337372.P15429444502228433787

`filter[A305976(n+1), A341609(#)]`
-/

namespace A337372.P15429444502228433787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305976 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341609 (f1 j).toNat = 1) n)

end

end A337372.P15429444502228433787

namespace A337372

/-- `filter[A305976(n+1), A341609(#)]` -/
def P15429444502228433787.Spec : Prop :=
  ∀ n, P15429444502228433787.a n = A337372 (n + 1)

end A337372

/-! ## A337372.P17782481934508229633

`filter[A305979(n+1), A341609(#)]`
-/

namespace A337372.P17782481934508229633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305979 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341609 (f1 j).toNat = 1) n)

end

end A337372.P17782481934508229633

namespace A337372

/-- `filter[A305979(n+1), A341609(#)]` -/
def P17782481934508229633.Spec : Prop :=
  ∀ n, P17782481934508229633.a n = A337372 (n + 1)

end A337372

/-! ## A337372.P2381865751560621002

`filter[A319704(n+1), A341609(#)]`
-/

namespace A337372.P2381865751560621002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319704 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341609 (f1 j).toNat = 1) n)

end

end A337372.P2381865751560621002

namespace A337372

/-- `filter[A319704(n+1), A341609(#)]` -/
def P2381865751560621002.Spec : Prop :=
  ∀ n, P2381865751560621002.a n = A337372 (n + 1)

end A337372

/-! ## A337372.P16410930518728483788

`filter[A319707(n+1), A341609(#)]`
-/

namespace A337372.P16410930518728483788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319707 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341609 (f1 j).toNat = 1) n)

end

end A337372.P16410930518728483788

namespace A337372

/-- `filter[A319707(n+1), A341609(#)]` -/
def P16410930518728483788.Spec : Prop :=
  ∀ n, P16410930518728483788.a n = A337372 (n + 1)

end A337372

/-! ## A337372.P11756447328019507697

`filter[A324400(n+1), A341609(#)]`
-/

namespace A337372.P11756447328019507697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324400 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341609 (f1 j).toNat = 1) n)

end

end A337372.P11756447328019507697

namespace A337372

/-- `filter[A324400(n+1), A341609(#)]` -/
def P11756447328019507697.Spec : Prop :=
  ∀ n, P11756447328019507697.a n = A337372 (n + 1)

end A337372

/-! ## A337372.P10284448800126865322

`filter[A332900(n+1), A341609(#)]`
-/

namespace A337372.P10284448800126865322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332900 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341609 (f1 j).toNat = 1) n)

end

end A337372.P10284448800126865322

namespace A337372

/-- `filter[A332900(n+1), A341609(#)]` -/
def P10284448800126865322.Spec : Prop :=
  ∀ n, P10284448800126865322.a n = A337372 (n + 1)

end A337372

/-! ## A337372.P18084578249990708942

`filter[A344180(n), A341609(#)]`
-/

namespace A337372.P18084578249990708942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344180 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341609 (f1 j).toNat = 1) n)

end

end A337372.P18084578249990708942

namespace A337372

/-- `filter[A344180(n), A341609(#)]` -/
def P18084578249990708942.Spec : Prop :=
  ∀ n, P18084578249990708942.a n = A337372 (n + 1)

end A337372

/-! ## A337372.P8743427394411133788

`eq[1, A337345(n+1)]+1`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A337372

/-- `eq[1, A337345(n+1)]+1` -/
def P8743427394411133788.Spec : Prop :=
  ∀ n, (P8743427394411133788.a n : ℤ) = A337372 (n + 1)

theorem P8743427394411133788.correct : P8743427394411133788.Spec := by
  intro n
  simp only [A337372, Nat.add_sub_cancel]

end A337372

/-! ## A337372.P4468395832625879258

`eq[1, A341609(n+1)]+1`
-/

namespace A337372.P4468395832625879258
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341609 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A337372.P4468395832625879258

namespace A337372

/-- `eq[1, A341609(n+1)]+1` -/
def P4468395832625879258.Spec : Prop :=
  ∀ n, (P4468395832625879258.a n : ℤ) = A337372 (n + 1)

end A337372

/-! ## A337372.P4469063117264900492

`filter[A319701(n+1), A341609(#)]`
-/

namespace A337372.P4469063117264900492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319701 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341609 (f1 j).toNat = 1) n)

end

end A337372.P4469063117264900492

namespace A337372

/-- `filter[A319701(n+1), A341609(#)]` -/
def P4469063117264900492.Spec : Prop :=
  ∀ n, P4469063117264900492.a n = A337372 (n + 1)

end A337372

/-! ## A337372.P10548894968057909788

`filter[A319702(n+1), A341609(#)]`
-/

namespace A337372.P10548894968057909788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319702 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341609 (f1 j).toNat = 1) n)

end

end A337372.P10548894968057909788

namespace A337372

/-- `filter[A319702(n+1), A341609(#)]` -/
def P10548894968057909788.Spec : Prop :=
  ∀ n, P10548894968057909788.a n = A337372 (n + 1)

end A337372

/-! ## A337372.P12600312981599298195

`filter[A326203(n+1), A341609(#)]`
-/

namespace A337372.P12600312981599298195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326203 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341609 (f1 j).toNat = 1) n)

end

end A337372.P12600312981599298195

namespace A337372

/-- `filter[A326203(n+1), A341609(#)]` -/
def P12600312981599298195.Spec : Prop :=
  ∀ n, P12600312981599298195.a n = A337372 (n + 1)

end A337372

/-!
# A337373: Numbers k for which A003961(k) > 3*k.

The programs for A337373, the canonical program `A337373.P17490337404233629993` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A337373 has offset 1).

The definition of A337373 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5479 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A337373.P1162035856929454850

`lt[n/2, A349573(n+1)]+1`
-/

namespace A337373.P1162035856929454850
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349573 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n + 1

end

end A337373.P1162035856929454850

namespace A337373

/-- `lt[n/2, A349573(n+1)]+1` -/
def P1162035856929454850.Spec : Prop :=
  ∀ n, (P1162035856929454850.a n : ℤ) = A337373 (n + 1)

end A337373

/-! ## A337373.P17490337404233629993

`lt[2*n, A336853(n+1)]+1`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A337373

/-- `lt[2*n, A336853(n+1)]+1` -/
def P17490337404233629993.Spec : Prop :=
  ∀ n, (P17490337404233629993.a n : ℤ) = A337373 (n + 1)

theorem P17490337404233629993.correct : P17490337404233629993.Spec := by
  intro n
  simp only [A337373, Nat.add_sub_cancel]

end A337373

/-! ## A337373.P15388104512031034731

`lt[2, A336853(n+2)/(n+1)]+2`
-/

namespace A337373.P15388104512031034731
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A336853 (n + 2) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n + 2

end

end A337373.P15388104512031034731

namespace A337373

/-- `lt[2, A336853(n+2)/(n+1)]+2` -/
def P15388104512031034731.Spec : Prop :=
  ∀ n, (P15388104512031034731.a n : ℤ) = A337373 (n + 1)

end A337373

/-! ## A337373.P17070716863606457801

`lt[n, A252748(n+1)]+1`
-/

namespace A337373.P17070716863606457801
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252748 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A337373.P17070716863606457801

namespace A337373

/-- `lt[n, A252748(n+1)]+1` -/
def P17070716863606457801.Spec : Prop :=
  ∀ n, (P17070716863606457801.a n : ℤ) = A337373 (n + 1)

end A337373

/-! ## A337373.P16601717149342737088

`lt[3*n, A253885(n)]+1`
-/

namespace A337373.P16601717149342737088
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253885 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A337373.P16601717149342737088

namespace A337373

/-- `lt[3*n, A253885(n)]+1` -/
def P16601717149342737088.Spec : Prop :=
  ∀ n, (P16601717149342737088.a n : ℤ) = A337373 (n + 1)

end A337373

/-! ## A337373.P2286162595523538674

`record[(n+8)%A252748(n+8)]`
-/

namespace A337373.P2286162595523538674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 8 : ℤ) (A252748 (n + 8))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A337373.P2286162595523538674

namespace A337373

/-- `record[(n+8)%A252748(n+8)]` -/
def P2286162595523538674.Spec : Prop :=
  ∀ n, P2286162595523538674.a n = A337373 (n + 1)

end A337373

/-! ## A337373.P9508548067629784782

`lt[3*(n+1), A003961(n+1)]+1`
-/

namespace A337373.P9508548067629784782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A337373.P9508548067629784782

namespace A337373

/-- `lt[3*(n+1), A003961(n+1)]+1` -/
def P9508548067629784782.Spec : Prop :=
  ∀ n, (P9508548067629784782.a n : ℤ) = A337373 (n + 1)

end A337373

/-! ## A337373.P617227250888166784

`lt[3*(n+1), A243501(n+1)]+1`
-/

namespace A337373.P617227250888166784
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243501 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A337373.P617227250888166784

namespace A337373

/-- `lt[3*(n+1), A243501(n+1)]+1` -/
def P617227250888166784.Spec : Prop :=
  ∀ n, (P617227250888166784.a n : ℤ) = A337373 (n + 1)

end A337373

/-! ## A337373.P9670871699747525216

`lt[(n+2)/2+n, A048673(n+1)]+1`
-/

namespace A337373.P9670871699747525216
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / 2 + (n : ℚ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048673 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n + 1

end

end A337373.P9670871699747525216

namespace A337373

/-- `lt[(n+2)/2+n, A048673(n+1)]+1` -/
def P9670871699747525216.Spec : Prop :=
  ∀ n, (P9670871699747525216.a n : ℤ) = A337373 (n + 1)

end A337373

/-! ## A337373.P12433635492103816288

`lt[n, A252748(A028310(n))]`
-/

namespace A337373.P12433635492103816288
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252748 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A337373.P12433635492103816288

namespace A337373

/-- `lt[n, A252748(A028310(n))]` -/
def P12433635492103816288.Spec : Prop :=
  ∀ n, (P12433635492103816288.a n : ℤ) = A337373 (n + 1)

end A337373

/-!
# A337374: Numbers k for which A003961(k) > 4*k.

The programs for A337374, the canonical program `A337374.P5490490073902702338` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A337374 has offset 1).

The definition of A337374 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4538 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A337374.P1624309757209922771

`lt[n, A349573(round(acot(n)+n))]`
-/

namespace A337374.P1624309757209922771
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349573 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A337374.P1624309757209922771

namespace A337374

/-- `lt[n, A349573(round(acot(n)+n))]` -/
def P1624309757209922771.Spec : Prop :=
  ∀ n, (P1624309757209922771.a n : ℤ) = A337374 (n + 1)

end A337374

/-! ## A337374.P5490490073902702338

`lt[n, A349573(abs(1-n)+1)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A337374

/-- `lt[n, A349573(abs(1-n)+1)]` -/
def P5490490073902702338.Spec : Prop :=
  ∀ n, (P5490490073902702338.a n : ℤ) = A337374 (n + 1)

theorem P5490490073902702338.correct : P5490490073902702338.Spec := by
  intro n
  simp only [A337374, Nat.add_sub_cancel]

end A337374

/-! ## A337374.P4361171389379349787

`lt[n+1, A349573(n+1)]+1`
-/

namespace A337374.P4361171389379349787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349573 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A337374.P4361171389379349787

namespace A337374

/-- `lt[n+1, A349573(n+1)]+1` -/
def P4361171389379349787.Spec : Prop :=
  ∀ n, (P4361171389379349787.a n : ℤ) = A337374 (n + 1)

end A337374

/-! ## A337374.P15749960272640175425

`lt[4*(n+1), A253885(n)]+1`
-/

namespace A337374.P15749960272640175425
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253885 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A337374.P15749960272640175425

namespace A337374

/-- `lt[4*(n+1), A253885(n)]+1` -/
def P15749960272640175425.Spec : Prop :=
  ∀ n, (P15749960272640175425.a n : ℤ) = A337374 (n + 1)

end A337374

/-! ## A337374.P15874235482261260046

`lt[2*n, A252748(round(acot(n)+n))]`
-/

namespace A337374.P15874235482261260046
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252748 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A337374.P15874235482261260046

namespace A337374

/-- `lt[2*n, A252748(round(acot(n)+n))]` -/
def P15874235482261260046.Spec : Prop :=
  ∀ n, (P15874235482261260046.a n : ℤ) = A337374 (n + 1)

end A337374

/-! ## A337374.P13583941808039053361

`lt[2*n, A252748(abs(1-n)+1)]`
-/

namespace A337374.P13583941808039053361
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252748 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A337374.P13583941808039053361

namespace A337374

/-- `lt[2*n, A252748(abs(1-n)+1)]` -/
def P13583941808039053361.Spec : Prop :=
  ∀ n, (P13583941808039053361.a n : ℤ) = A337374 (n + 1)

end A337374

/-! ## A337374.P16449857467013827973

`lt[2*(n+1), A048673(n+1)]+1`
-/

namespace A337374.P16449857467013827973
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048673 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A337374.P16449857467013827973

namespace A337374

/-- `lt[2*(n+1), A048673(n+1)]+1` -/
def P16449857467013827973.Spec : Prop :=
  ∀ n, (P16449857467013827973.a n : ℤ) = A337374 (n + 1)

end A337374

/-! ## A337374.P10420144624556266297

`lt[2*(n+1), A252748(n+1)]+1`
-/

namespace A337374.P10420144624556266297
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252748 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A337374.P10420144624556266297

namespace A337374

/-- `lt[2*(n+1), A252748(n+1)]+1` -/
def P10420144624556266297.Spec : Prop :=
  ∀ n, (P10420144624556266297.a n : ℤ) = A337374 (n + 1)

end A337374

/-! ## A337374.P16572607123751689175

`lt[4*(n+1), A003961(n+1)]+1`
-/

namespace A337374.P16572607123751689175
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A337374.P16572607123751689175

namespace A337374

/-- `lt[4*(n+1), A003961(n+1)]+1` -/
def P16572607123751689175.Spec : Prop :=
  ∀ n, (P16572607123751689175.a n : ℤ) = A337374 (n + 1)

end A337374

/-! ## A337374.P9413123621668113875

`lt[n, A249820(gcd(n, C(2, n))+n)]`
-/

namespace A337374.P9413123621668113875
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249820 (Nat.gcd n (Nat.choose 2 n) + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A337374.P9413123621668113875

namespace A337374

/-- `lt[n, A249820(gcd(n, C(2, n))+n)]` -/
def P9413123621668113875.Spec : Prop :=
  ∀ n, (P9413123621668113875.a n : ℤ) = A337374 (n + 1)

end A337374

/-!
# A337375: a(n) = A330749(A005940(1+n)).

The programs for A337375, the canonical program `A337375.P84038169676477603` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A337375 has offset 0).

The definition of A337375 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005940, A330749, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A337375.P84038169676477603

`A330749(A005940(1+n))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A337375

/-- `A330749(A005940(1+n))` -/
def P84038169676477603.Spec : Prop :=
  ∀ n, P84038169676477603.a n = A337375 n

theorem P84038169676477603.correct : P84038169676477603.Spec := by
  intro n
  simp only [A337375]

end A337375

/-! ## A337375.P11080918447601838183

`gcd(A005940(A003602(n+1)), A005940(n+1))`
-/

namespace A337375.P11080918447601838183
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A005940 (A003602 (n + 1)).toNat) (A005940 (n + 1))

end

end A337375.P11080918447601838183

namespace A337375

/-- `gcd(A005940(A003602(n+1)), A005940(n+1))` -/
def P11080918447601838183.Spec : Prop :=
  ∀ n, (P11080918447601838183.a n : ℤ) = A337375 n

end A337375

/-! ## A337375.P7954956157274434971

`A005940(n+1)/A337376(n)`
-/

namespace A337375.P7954956157274434971
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005940 (n + 1) : ℚ) / (A337376 n : ℚ)

end

end A337375.P7954956157274434971

namespace A337375

/-- `A005940(n+1)/A337376(n)` -/
def P7954956157274434971.Spec : Prop :=
  ∀ n, P7954956157274434971.a n = (A337375 n : ℚ)

end A337375

/-! ## A337375.P8557800859199097793

`A243353(A006068(n))/A337376(n)`
-/

namespace A337375.P8557800859199097793
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A243353 (A006068 n).toNat : ℚ) / (A337376 n : ℚ)

end

end A337375.P8557800859199097793

namespace A337375

/-- `A243353(A006068(n))/A337376(n)` -/
def P8557800859199097793.Spec : Prop :=
  ∀ n, P8557800859199097793.a n = (A337375 n : ℚ)

end A337375

/-! ## A337375.P568647162947998816

`A324394(n)*A324395(n)/A337376(n)`
-/

namespace A337375.P568647162947998816
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324394 n * A324395 n : ℚ) / (A337376 n : ℚ)

end

end A337375.P568647162947998816

namespace A337375

/-- `A324394(n)*A324395(n)/A337376(n)` -/
def P568647162947998816.Spec : Prop :=
  ∀ n, P568647162947998816.a n = (A337375 n : ℚ)

end A337375

/-! ## A337375.P12584143245598885375

`(2*A290077(n)-A324052(n))/A337376(n)`
-/

namespace A337375.P12584143245598885375
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A290077 n - A324052 n : ℚ) / (A337376 n : ℚ)

end

end A337375.P12584143245598885375

namespace A337375

/-- `(2*A290077(n)-A324052(n))/A337376(n)` -/
def P12584143245598885375.Spec : Prop :=
  ∀ n, P12584143245598885375.a n = (A337375 n : ℚ)

end A337375

/-! ## A337375.P9591846933792185272

`A340364(n+1)*A340365(n+1)/A337376(n)`
-/

namespace A337375.P9591846933792185272
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A340364 (n + 1) * A340365 (n + 1) : ℚ) / (A337376 n : ℚ)

end

end A337375.P9591846933792185272

namespace A337375

/-- `A340364(n+1)*A340365(n+1)/A337376(n)` -/
def P9591846933792185272.Spec : Prop :=
  ∀ n, P9591846933792185272.a n = (A337375 n : ℚ)

end A337375

/-! ## A337375.P12239936541833695196

`A163511(A092569(2*n)/2)/A337376(n)`
-/

namespace A337375.P12239936541833695196
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A163511 (SequenceMachineLib.roundAway ((A092569 (2 * n) : ℚ) / 2)).toNat : ℚ) / (A337376 n : ℚ)

end

end A337375.P12239936541833695196

namespace A337375

/-- `A163511(A092569(2*n)/2)/A337376(n)` -/
def P12239936541833695196.Spec : Prop :=
  ∀ n, P12239936541833695196.a n = (A337375 n : ℚ)

end A337375

/-! ## A337375.P3284158925447264375

`A253565(A030109(2*n+1))/A337376(n)`
-/

namespace A337375.P3284158925447264375
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A253565 (A030109 (2 * n + 1)).toNat : ℚ) / (A337376 n : ℚ)

end

end A337375.P3284158925447264375

namespace A337375

/-- `A253565(A030109(2*n+1))/A337376(n)` -/
def P3284158925447264375.Spec : Prop :=
  ∀ n, P3284158925447264375.a n = (A337375 n : ℚ)

end A337375

/-! ## A337375.P3445126343876024551

`A250246(A252753(n))/A337376(n)`
-/

namespace A337375.P3445126343876024551
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A250246 (A252753 n).toNat : ℚ) / (A337376 n : ℚ)

end

end A337375.P3445126343876024551

namespace A337375

/-- `A250246(A252753(n))/A337376(n)` -/
def P3445126343876024551.Spec : Prop :=
  ∀ n, P3445126343876024551.a n = (A337375 n : ℚ)

end A337375

/-! ## A337375.P6738792176629794325

`A064989(gcd(A005940(2*n+1), A005940(2*(n+1))))`
-/

namespace A337375.P6738792176629794325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (Int.gcd (A005940 (2 * n + 1)) (A005940 (2 * (n + 1))))

end

end A337375.P6738792176629794325

namespace A337375

/-- `A064989(gcd(A005940(2*n+1), A005940(2*(n+1))))` -/
def P6738792176629794325.Spec : Prop :=
  ∀ n, P6738792176629794325.a n = A337375 n

end A337375

/-! ## A337375.P11441601753200171930

`A064989(A005940(2*(n+1))/A337377(2*n))`
-/

namespace A337375.P11441601753200171930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (SequenceMachineLib.roundAway ((A005940 (2 * (n + 1)) : ℚ) / (A337377 (2 * n) : ℚ))).toNat

end

end A337375.P11441601753200171930

namespace A337375

/-- `A064989(A005940(2*(n+1))/A337377(2*n))` -/
def P11441601753200171930.Spec : Prop :=
  ∀ n, P11441601753200171930.a n = A337375 n

end A337375

/-! ## A337375.P14983996997506840699

`A064989(A005940(n+1))/A337377(n)`
-/

namespace A337375.P14983996997506840699
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064989 (A005940 (n + 1)).toNat : ℚ) / (A337377 n : ℚ)

end

end A337375.P14983996997506840699

namespace A337375

/-- `A064989(A005940(n+1))/A337377(n)` -/
def P14983996997506840699.Spec : Prop :=
  ∀ n, P14983996997506840699.a n = (A337375 n : ℚ)

end A337375

/-! ## A337375.P2705507480120326863

`A064989(A322361(A064989(A005940(2*n+1))))`
-/

namespace A337375.P2705507480120326863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A322361 (A064989 (A005940 (2 * n + 1)).toNat).toNat).toNat

end

end A337375.P2705507480120326863

namespace A337375

/-- `A064989(A322361(A064989(A005940(2*n+1))))` -/
def P2705507480120326863.Spec : Prop :=
  ∀ n, P2705507480120326863.a n = A337375 n

end A337375

/-!
# A337376: Primorial deflation (numerator) of Doudna-tree.

The programs for A337376, the canonical program `A337376.P10436570575764964389` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A337376 has offset 0).

The definition of A337376 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005940, A337375, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A337376.P10436570575764964389

`A005940(1+n)/A337375(n)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A337376

/-- `A005940(1+n)/A337375(n)` -/
def P10436570575764964389.Spec : Prop :=
  ∀ n, P10436570575764964389.a n = (A337376 n : ℚ)

end A337376

/-! ## A337376.P13928366204359269481

`A319626(A005940(1+n))`
-/

namespace A337376.P13928366204359269481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319626 (A005940 (1 + n)).toNat

end

end A337376.P13928366204359269481

namespace A337376

/-- `A319626(A005940(1+n))` -/
def P13928366204359269481.Spec : Prop :=
  ∀ n, P13928366204359269481.a n = A337376 n

end A337376

/-! ## A337376.P4559954690186409525

`A243353(A006068(n))/A337375(n)`
-/

namespace A337376.P4559954690186409525
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A243353 (A006068 n).toNat : ℚ) / (A337375 n : ℚ)

end

end A337376.P4559954690186409525

namespace A337376

/-- `A243353(A006068(n))/A337375(n)` -/
def P4559954690186409525.Spec : Prop :=
  ∀ n, P4559954690186409525.a n = (A337376 n : ℚ)

end A337376

/-! ## A337376.P13854659366436606542

`(A340362(n+1)+A324106(n+1))/A337375(n)`
-/

namespace A337376.P13854659366436606542
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A340362 (n + 1) + A324106 (n + 1) : ℚ) / (A337375 n : ℚ)

end

end A337376.P13854659366436606542

namespace A337376

/-- `(A340362(n+1)+A324106(n+1))/A337375(n)` -/
def P13854659366436606542.Spec : Prop :=
  ∀ n, P13854659366436606542.a n = (A337376 n : ℚ)

end A337376

/-! ## A337376.P7642946433470028833

`A279338(A279344(n))/A337375(n)`
-/

namespace A337376.P7642946433470028833
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A279338 (A279344 n).toNat : ℚ) / (A337375 n : ℚ)

end

end A337376.P7642946433470028833

namespace A337376

/-- `A279338(A279344(n))/A337375(n)` -/
def P7642946433470028833.Spec : Prop :=
  ∀ n, P7642946433470028833.a n = (A337376 n : ℚ)

end A337376

/-! ## A337376.P6998865495472286334

`A253565(A030109(2*n+1))/A337375(n)`
-/

namespace A337376.P6998865495472286334
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A253565 (A030109 (2 * n + 1)).toNat : ℚ) / (A337375 n : ℚ)

end

end A337376.P6998865495472286334

namespace A337376

/-- `A253565(A030109(2*n+1))/A337375(n)` -/
def P6998865495472286334.Spec : Prop :=
  ∀ n, P6998865495472286334.a n = (A337376 n : ℚ)

end A337376

/-! ## A337376.P6394590416568636136

`A250246(A252753(n))/A337375(n)`
-/

namespace A337376.P6394590416568636136
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A250246 (A252753 n).toNat : ℚ) / (A337375 n : ℚ)

end

end A337376.P6394590416568636136

namespace A337376

/-- `A250246(A252753(n))/A337375(n)` -/
def P6394590416568636136.Spec : Prop :=
  ∀ n, P6394590416568636136.a n = (A337376 n : ℚ)

end A337376

/-! ## A337376.P6250636530156954258

`A302026(A269387(n))/A337375(n)`
-/

namespace A337376.P6250636530156954258
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A302026 (A269387 n).toNat : ℚ) / (A337375 n : ℚ)

end

end A337376.P6250636530156954258

namespace A337376

/-- `A302026(A269387(n))/A337375(n)` -/
def P6250636530156954258.Spec : Prop :=
  ∀ n, P6250636530156954258.a n = (A337376 n : ℚ)

end A337376

/-! ## A337376.P11050209690024717593

`A319626(A337375(2*n)*A337377(2*n))`
-/

namespace A337376.P11050209690024717593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319626 (A337375 (2 * n) * A337377 (2 * n)).toNat

end

end A337376.P11050209690024717593

namespace A337376

/-- `A319626(A337375(2*n)*A337377(2*n))` -/
def P11050209690024717593.Spec : Prop :=
  ∀ n, P11050209690024717593.a n = A337376 n

end A337376

/-! ## A337376.P14111074150378179280

`A005940(n+1)/A064989(A005940(n+1))*A337377(n)`
-/

namespace A337376.P14111074150378179280
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005940 (n + 1) : ℚ) / (A064989 (A005940 (n + 1)).toNat : ℚ) * (A337377 n : ℚ)

end

end A337376.P14111074150378179280

namespace A337376

/-- `A005940(n+1)/A064989(A005940(n+1))*A337377(n)` -/
def P14111074150378179280.Spec : Prop :=
  ∀ n, P14111074150378179280.a n = (A337376 n : ℚ)

end A337376

/-!
# A337377: Primorial deflation (denominator) of Doudna-tree.

The programs for A337377, the canonical program `A337377.P11299269665429486620` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A337377 has offset 0).

The definition of A337377 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005940, A319627, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A337377.P11299269665429486620

`A319627(A005940(1+n))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A337377

/-- `A319627(A005940(1+n))` -/
def P11299269665429486620.Spec : Prop :=
  ∀ n, P11299269665429486620.a n = A337377 n

theorem P11299269665429486620.correct : P11299269665429486620.Spec := by
  intro n
  simp only [A337377]

end A337377

/-! ## A337377.P7652466309863167324

`A005940(floor(n/(xor(n, n+1)+1))+1)/A337375(n)`
-/

namespace A337377.P7652466309863167324
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005940 (⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋ + 1).toNat : ℚ) / (A337375 n : ℚ)

end

end A337377.P7652466309863167324

namespace A337377

/-- `A005940(floor(n/(xor(n, n+1)+1))+1)/A337375(n)` -/
def P7652466309863167324.Spec : Prop :=
  ∀ n, P7652466309863167324.a n = (A337377 n : ℚ)

end A337377

/-! ## A337377.P14723713514897742126

`A005940(A003602(n+1))/A337375(n)`
-/

namespace A337377.P14723713514897742126
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005940 (A003602 (n + 1)).toNat : ℚ) / (A337375 n : ℚ)

end

end A337377.P14723713514897742126

namespace A337377

/-- `A005940(A003602(n+1))/A337375(n)` -/
def P14723713514897742126.Spec : Prop :=
  ∀ n, P14723713514897742126.a n = (A337377 n : ℚ)

end A337377

/-! ## A337377.P5512345609666402482

`A253565(A030109(n+1))/A337375(n)`
-/

namespace A337377.P5512345609666402482
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A253565 (A030109 (n + 1)).toNat : ℚ) / (A337375 n : ℚ)

end

end A337377.P5512345609666402482

namespace A337377

/-- `A253565(A030109(n+1))/A337375(n)` -/
def P5512345609666402482.Spec : Prop :=
  ∀ n, P5512345609666402482.a n = (A337377 n : ℚ)

end A337377

/-! ## A337377.P4830933026388635707

`A005940(∑{d}[n+1, A349136(#)])/A337375(n)`
-/

namespace A337377.P4830933026388635707
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005940 (∑ d ∈ Nat.divisors (f1 n), A349136 d).toNat : ℚ) / (A337375 n : ℚ)

end

end A337377.P4830933026388635707

namespace A337377

/-- `A005940(∑{d}[n+1, A349136(#)])/A337375(n)` -/
def P4830933026388635707.Spec : Prop :=
  ∀ n, P4830933026388635707.a n = (A337377 n : ℚ)

end A337377

/-! ## A337377.P12583426980721710053

`A005940(A269380(3*(n+1))/2)/A337375(n)`
-/

namespace A337377.P12583426980721710053
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005940 (SequenceMachineLib.roundAway ((A269380 (3 * (n + 1)) : ℚ) / 2)).toNat : ℚ) / (A337375 n : ℚ)

end

end A337377.P12583426980721710053

namespace A337377

/-- `A005940(A269380(3*(n+1))/2)/A337375(n)` -/
def P12583426980721710053.Spec : Prop :=
  ∀ n, P12583426980721710053.a n = (A337377 n : ℚ)

end A337377

/-! ## A337377.P12420811911647168192

`A005940(2-A225381(n+1)+n)/A337375(n)`
-/

namespace A337377.P12420811911647168192
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005940 (2 - A225381 (n + 1) + (n : ℤ)).toNat : ℚ) / (A337375 n : ℚ)

end

end A337377.P12420811911647168192

namespace A337377

/-- `A005940(2-A225381(n+1)+n)/A337375(n)` -/
def P12420811911647168192.Spec : Prop :=
  ∀ n, P12420811911647168192.a n = (A337377 n : ℚ)

end A337377

/-! ## A337377.P17310980618139314475

`A005940(∑{d}[n+1, #*A349431((n+1)/#)])/A337375(n)`
-/

namespace A337377.P17310980618139314475
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005940 (∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A349431 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat).toNat : ℚ) / (A337375 n : ℚ)

end

end A337377.P17310980618139314475

namespace A337377

/-- `A005940(∑{d}[n+1, #*A349431((n+1)/#)])/A337375(n)` -/
def P17310980618139314475.Spec : Prop :=
  ∀ n, P17310980618139314475.a n = (A337377 n : ℚ)

end A337377

/-! ## A337377.P11280124376153693021

`A005940(A003602(n+1))/A330749(A005940(n+1))`
-/

namespace A337377.P11280124376153693021
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005940 (A003602 (n + 1)).toNat : ℚ) / (A330749 (A005940 (n + 1)).toNat : ℚ)

end

end A337377.P11280124376153693021

namespace A337377

/-- `A005940(A003602(n+1))/A330749(A005940(n+1))` -/
def P11280124376153693021.Spec : Prop :=
  ∀ n, P11280124376153693021.a n = (A337377 n : ℚ)

end A337377

/-! ## A337377.P5489622748876254550

`A319627(A292602(4*n+3))`
-/

namespace A337377.P5489622748876254550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319627 (A292602 (4 * n + 3)).toNat

end

end A337377.P5489622748876254550

namespace A337377

/-- `A319627(A292602(4*n+3))` -/
def P5489622748876254550.Spec : Prop :=
  ∀ n, P5489622748876254550.a n = A337377 n

end A337377

/-! ## A337377.P13162655076698275971

`A319627(A324394(n)*A324395(n))`
-/

namespace A337377.P13162655076698275971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319627 (A324394 n * A324395 n).toNat

end

end A337377.P13162655076698275971

namespace A337377

/-- `A319627(A324394(n)*A324395(n))` -/
def P13162655076698275971.Spec : Prop :=
  ∀ n, P13162655076698275971.a n = A337377 n

end A337377

/-! ## A337377.P3932626962291906423

`A319627(A337375(n)*A337376(n))`
-/

namespace A337377.P3932626962291906423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319627 (A337375 n * A337376 n).toNat

end

end A337377.P3932626962291906423

namespace A337377

/-- `A319627(A337375(n)*A337376(n))` -/
def P3932626962291906423.Spec : Prop :=
  ∀ n, P3932626962291906423.a n = A337377 n

end A337377

/-! ## A337377.P14726522123468430637

`A064989(A005940(n+1))/A337375(n)`
-/

namespace A337377.P14726522123468430637
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064989 (A005940 (n + 1)).toNat : ℚ) / (A337375 n : ℚ)

end

end A337377.P14726522123468430637

namespace A337377

/-- `A064989(A005940(n+1))/A337375(n)` -/
def P14726522123468430637.Spec : Prop :=
  ∀ n, P14726522123468430637.a n = (A337377 n : ℚ)

end A337377

/-! ## A337377.P12179652212003412044

`A064989(A348990(A064989(A005940(2*n+1))))`
-/

namespace A337377.P12179652212003412044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A348990 (A064989 (A005940 (2 * n + 1)).toNat).toNat).toNat

end

end A337377.P12179652212003412044

namespace A337377

/-- `A064989(A348990(A064989(A005940(2*n+1))))` -/
def P12179652212003412044.Spec : Prop :=
  ∀ n, P12179652212003412044.a n = A337377 n

end A337377

/-!
# A337378: Numbers k for which A003961(k) > 2*sigma(k).

The programs for A337378, the canonical program `A337378.P2999023606348113318` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A337378 has offset 1).

The definition of A337378 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A337378.P2999023606348113318

`eq[1, A337380(n+1)]+1`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A337378

/-- `eq[1, A337380(n+1)]+1` -/
def P2999023606348113318.Spec : Prop :=
  ∀ n, (P2999023606348113318.a n : ℤ) = A337378 (n + 1)

theorem P2999023606348113318.correct : P2999023606348113318.Spec := by
  intro n
  simp only [A337378, Nat.add_sub_cancel]

end A337378

/-! ## A337378.P7723117354068636530

`record[(n+16)*A337380(n+16)]`
-/

namespace A337378.P7723117354068636530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 16 : ℤ) * A337380 (n + 16)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A337378.P7723117354068636530

namespace A337378

/-- `record[(n+16)*A337380(n+16)]` -/
def P7723117354068636530.Spec : Prop :=
  ∀ n, P7723117354068636530.a n = A337378 (n + 1)

end A337378

/-! ## A337378.P6708287927272509807

`filter[A344180(n), A337380(#)]`
-/

namespace A337378.P6708287927272509807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344180 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A337380 (f1 j).toNat = 1) n)

end

end A337378.P6708287927272509807

namespace A337378

/-- `filter[A344180(n), A337380(#)]` -/
def P6708287927272509807.Spec : Prop :=
  ∀ n, P6708287927272509807.a n = A337378 (n + 1)

end A337378

/-! ## A337378.P13333849926870420273

`filter[A337381(n+1), A337380(#)]`
-/

namespace A337378.P13333849926870420273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337381 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A337380 (f1 j).toNat = 1) n)

end

end A337378.P13333849926870420273

namespace A337378

/-- `filter[A337381(n+1), A337380(#)]` -/
def P13333849926870420273.Spec : Prop :=
  ∀ n, P13333849926870420273.a n = A337378 (n + 1)

end A337378

/-! ## A337378.P7821825716544277016

`filter[A379051(n+3), A337380(#)]`
-/

namespace A337378.P7821825716544277016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379051 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A337380 (f1 j).toNat = 1) n)

end

end A337378.P7821825716544277016

namespace A337378

/-- `filter[A379051(n+3), A337380(#)]` -/
def P7821825716544277016.Spec : Prop :=
  ∀ n, P7821825716544277016.a n = A337378 (n + 1)

end A337378

/-! ## A337378.P16222934305601694315

`filter[A305980(n+1), A337380(#)]`
-/

namespace A337378.P16222934305601694315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305980 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A337380 (f1 j).toNat = 1) n)

end

end A337378.P16222934305601694315

namespace A337378

/-- `filter[A305980(n+1), A337380(#)]` -/
def P16222934305601694315.Spec : Prop :=
  ∀ n, P16222934305601694315.a n = A337378 (n + 1)

end A337378

/-! ## A337378.P14235819604046379324

`filter[A264828(n+3), A337380(#)]`
-/

namespace A337378.P14235819604046379324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264828 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A337380 (f1 j).toNat = 1) n)

end

end A337378.P14235819604046379324

namespace A337378

/-- `filter[A264828(n+3), A337380(#)]` -/
def P14235819604046379324.Spec : Prop :=
  ∀ n, P14235819604046379324.a n = A337378 (n + 1)

end A337378

/-! ## A337378.P180895765532066901

`filter[A002808(n+1), A337380(#)]`
-/

namespace A337378.P180895765532066901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A337380 (f1 j).toNat = 1) n)

end

end A337378.P180895765532066901

namespace A337378

/-- `filter[A002808(n+1), A337380(#)]` -/
def P180895765532066901.Spec : Prop :=
  ∀ n, P180895765532066901.a n = A337378 (n + 1)

end A337378

/-! ## A337378.P9636110413882891464

`filter[A018252(n+1), A337380(#)]`
-/

namespace A337378.P9636110413882891464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A337380 (f1 j).toNat = 1) n)

end

end A337378.P9636110413882891464

namespace A337378

/-- `filter[A018252(n+1), A337380(#)]` -/
def P9636110413882891464.Spec : Prop :=
  ∀ n, P9636110413882891464.a n = A337378 (n + 1)

end A337378

/-! ## A337378.P13455002335572753233

`filter[A246282(n+1), A337380(#)]`
-/

namespace A337378.P13455002335572753233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246282 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A337380 (f1 j).toNat = 1) n)

end

end A337378.P13455002335572753233

namespace A337378

/-- `filter[A246282(n+1), A337380(#)]` -/
def P13455002335572753233.Spec : Prop :=
  ∀ n, P13455002335572753233.a n = A337378 (n + 1)

end A337378

/-! ## A337378.P12219107590346888282

`filter[A246352(n+1), A337380(#)]`
-/

namespace A337378.P12219107590346888282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246352 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A337380 (f1 j).toNat = 1) n)

end

end A337378.P12219107590346888282

namespace A337378

/-- `filter[A246352(n+1), A337380(#)]` -/
def P12219107590346888282.Spec : Prop :=
  ∀ n, P12219107590346888282.a n = A337378 (n + 1)

end A337378

/-! ## A337378.P14930618210339429311

`filter[A379271(n+1), A337380(#)]`
-/

namespace A337378.P14930618210339429311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379271 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A337380 (f1 j).toNat = 1) n)

end

end A337378.P14930618210339429311

namespace A337378

/-- `filter[A379271(n+1), A337380(#)]` -/
def P14930618210339429311.Spec : Prop :=
  ∀ n, P14930618210339429311.a n = A337378 (n + 1)

end A337378

/-! ## A337378.P9748850785110979966

`filter[A289553(n+1), A337380(#)]`
-/

namespace A337378.P9748850785110979966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289553 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A337380 (f1 j).toNat = 1) n)

end

end A337378.P9748850785110979966

namespace A337378

/-- `filter[A289553(n+1), A337380(#)]` -/
def P9748850785110979966.Spec : Prop :=
  ∀ n, P9748850785110979966.a n = A337378 (n + 1)

end A337378

/-! ## A337378.P6294397684589350289

`filter[A316350(n+1), A337380(#)]`
-/

namespace A337378.P6294397684589350289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316350 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A337380 (f1 j).toNat = 1) n)

end

end A337378.P6294397684589350289

namespace A337378

/-- `filter[A316350(n+1), A337380(#)]` -/
def P6294397684589350289.Spec : Prop :=
  ∀ n, P6294397684589350289.a n = A337378 (n + 1)

end A337378

/-! ## A337378.P12267685972488989264

`filter[A253567(n+1), A337380(#)]`
-/

namespace A337378.P12267685972488989264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253567 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A337380 (f1 j).toNat = 1) n)

end

end A337378.P12267685972488989264

namespace A337378

/-- `filter[A253567(n+1), A337380(#)]` -/
def P12267685972488989264.Spec : Prop :=
  ∀ n, P12267685972488989264.a n = A337378 (n + 1)

end A337378

/-! ## A337378.P7166665345441549474

`filter[A009188(n+1), A337380(#)]`
-/

namespace A337378.P7166665345441549474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009188 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A337380 (f1 j).toNat = 1) n)

end

end A337378.P7166665345441549474

namespace A337378

/-- `filter[A009188(n+1), A337380(#)]` -/
def P7166665345441549474.Spec : Prop :=
  ∀ n, P7166665345441549474.a n = A337378 (n + 1)

end A337378

/-! ## A337378.P7318507056599937444

`filter[A257586(n+1), A337380(#)]`
-/

namespace A337378.P7318507056599937444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257586 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A337380 (f1 j).toNat = 1) n)

end

end A337378.P7318507056599937444

namespace A337378

/-- `filter[A257586(n+1), A337380(#)]` -/
def P7318507056599937444.Spec : Prop :=
  ∀ n, P7318507056599937444.a n = A337378 (n + 1)

end A337378

/-! ## A337378.P2395033126174250653

`filter[A176423(n+1), A337380(#)]`
-/

namespace A337378.P2395033126174250653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176423 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A337380 (f1 j).toNat = 1) n)

end

end A337378.P2395033126174250653

namespace A337378

/-- `filter[A176423(n+1), A337380(#)]` -/
def P2395033126174250653.Spec : Prop :=
  ∀ n, P2395033126174250653.a n = A337378 (n + 1)

end A337378

/-! ## A337378.P1944846713005500813

`filter[A056653(n+1), A337380(#)]`
-/

namespace A337378.P1944846713005500813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056653 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A337380 (f1 j).toNat = 1) n)

end

end A337378.P1944846713005500813

namespace A337378

/-- `filter[A056653(n+1), A337380(#)]` -/
def P1944846713005500813.Spec : Prop :=
  ∀ n, P1944846713005500813.a n = A337378 (n + 1)

end A337378

/-! ## A337378.P4496957467713883642

`filter[A065090(n+1), A337380(#)]`
-/

namespace A337378.P4496957467713883642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065090 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A337380 (f1 j).toNat = 1) n)

end

end A337378.P4496957467713883642

namespace A337378

/-- `filter[A065090(n+1), A337380(#)]` -/
def P4496957467713883642.Spec : Prop :=
  ∀ n, P4496957467713883642.a n = A337378 (n + 1)

end A337378

/-!
# A337379: Numbers k for which A003961(k) < 2*sigma(k).

The programs for A337379, the canonical program `A337379.P6372728613214319863` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A337379 has offset 1).

The definition of A337379 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7688 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A337379.P3864512903316664018

`eq[0, A337380(n+1)]+1`
-/

namespace A337379.P3864512903316664018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337380 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A337379.P3864512903316664018

namespace A337379

/-- `eq[0, A337380(n+1)]+1` -/
def P3864512903316664018.Spec : Prop :=
  ∀ n, (P3864512903316664018.a n : ℤ) = A337379 (n + 1)

end A337379

/-! ## A337379.P3417902930413124767

`record[or(-A337380(n+1), A000027(n+1))]`
-/

namespace A337379.P3417902930413124767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (-A337380 (n + 1)) (A000027 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A337379.P3417902930413124767

namespace A337379

/-- `record[or(-A337380(n+1), A000027(n+1))]` -/
def P3417902930413124767.Spec : Prop :=
  ∀ n, P3417902930413124767.a n = A337379 (n + 1)

end A337379

/-! ## A337379.P8772593456704089748

`record[n+1-A065855(n*A337380(n+1)+1)]`
-/

namespace A337379.P8772593456704089748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A065855 ((n : ℤ) * A337380 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A337379.P8772593456704089748

namespace A337379

/-- `record[n+1-A065855(n*A337380(n+1)+1)]` -/
def P8772593456704089748.Spec : Prop :=
  ∀ n, P8772593456704089748.a n = A337379 (n + 1)

end A337379

/-! ## A337379.P16943735606086627238

`record[n+1-A006068(n*A337380(n+1))]`
-/

namespace A337379.P16943735606086627238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A006068 ((n : ℤ) * A337380 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A337379.P16943735606086627238

namespace A337379

/-- `record[n+1-A006068(n*A337380(n+1))]` -/
def P16943735606086627238.Spec : Prop :=
  ∀ n, P16943735606086627238.a n = A337379 (n + 1)

end A337379

/-! ## A337379.P6372728613214319863

`lt[A252748(n+1), A294015(n+1)]+1`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A337379

/-- `lt[A252748(n+1), A294015(n+1)]+1` -/
def P6372728613214319863.Spec : Prop :=
  ∀ n, (P6372728613214319863.a n : ℤ) = A337379 (n + 1)

theorem P6372728613214319863.correct : P6372728613214319863.Spec := by
  intro n
  simp only [A337379, Nat.add_sub_cancel]

end A337379

/-! ## A337379.P1945154146091369333

`lt[A048673(n+1), A000203(n+1)+1]+1`
-/

namespace A337379.P1945154146091369333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048673 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A337379.P1945154146091369333

namespace A337379

/-- `lt[A048673(n+1), A000203(n+1)+1]+1` -/
def P1945154146091369333.Spec : Prop :=
  ∀ n, (P1945154146091369333.a n : ℤ) = A337379 (n + 1)

end A337379

/-! ## A337379.P13563998789474141761

`eq[A000007(n), A337380(A028310(n))]`
-/

namespace A337379.P13563998789474141761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337380 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A337379.P13563998789474141761

namespace A337379

/-- `eq[A000007(n), A337380(A028310(n))]` -/
def P13563998789474141761.Spec : Prop :=
  ∀ n, (P13563998789474141761.a n : ℤ) = A337379 (n + 1)

end A337379

/-! ## A337379.P7855670144040828408

`record[n+1-A000045(n*A337380(n+1))]`
-/

namespace A337379.P7855670144040828408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A000045 ((n : ℤ) * A337380 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A337379.P7855670144040828408

namespace A337379

/-- `record[n+1-A000045(n*A337380(n+1))]` -/
def P7855670144040828408.Spec : Prop :=
  ∀ n, P7855670144040828408.a n = A337379 (n + 1)

end A337379

/-!
# A337380: a(n) = 1 if A003961(n) > 2*sigma(n), 0 otherwise.

The programs for A337380, the canonical program `A337380.P16910156097547900408` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A337380 has offset 1).

The definition of A337380 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A337380.P16467740703279638783

`char[A337378(n+1)-1]`
-/

namespace A337380.P16467740703279638783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337378 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A337380.P16467740703279638783

namespace A337380

/-- `char[A337378(n+1)-1]` -/
def P16467740703279638783.Spec : Prop :=
  ∀ n, (P16467740703279638783.a n : ℤ) = A337380 (n + 1)

end A337380

/-! ## A337380.P16910156097547900408

`1-char[A337379(n+1)-1]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A337380

/-- `1-char[A337379(n+1)-1]` -/
def P16910156097547900408.Spec : Prop :=
  ∀ n, P16910156097547900408.a n = A337380 (n + 1)

theorem P16910156097547900408.correct : P16910156097547900408.Spec := by
  intro n
  simp only [A337380, Nat.add_sub_cancel]

end A337380

/-! ## A337380.P14323551870008348844

`floor(A286385(n+1)/A048673(n+1))`
-/

namespace A337380.P14323551870008348844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A286385 (n + 1) : ℚ) / (A048673 (n + 1) : ℚ)⌋

end

end A337380.P14323551870008348844

namespace A337380

/-- `floor(A286385(n+1)/A048673(n+1))` -/
def P14323551870008348844.Spec : Prop :=
  ∀ n, P14323551870008348844.a n = A337380 (n + 1)

end A337380

/-! ## A337380.P5083339499312595879

`round(A286385(n+1)/A003961(n+1))`
-/

namespace A337380.P5083339499312595879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A286385 (n + 1) : ℚ) / (A003961 (n + 1) : ℚ))

end

end A337380.P5083339499312595879

namespace A337380

/-- `round(A286385(n+1)/A003961(n+1))` -/
def P5083339499312595879.Spec : Prop :=
  ∀ n, P5083339499312595879.a n = A337380 (n + 1)

end A337380

/-! ## A337380.P18283065684740011711

`round(A286385(n+1)/A045965(n+1))`
-/

namespace A337380.P18283065684740011711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A286385 (n + 1) : ℚ) / (A045965 (n + 1) : ℚ))

end

end A337380.P18283065684740011711

namespace A337380

/-- `round(A286385(n+1)/A045965(n+1))` -/
def P18283065684740011711.Spec : Prop :=
  ∀ n, P18283065684740011711.a n = A337380 (n + 1)

end A337380

/-! ## A337380.P16409778860064409715

`round(A286385(n+1)/A243501(n+1))`
-/

namespace A337380.P16409778860064409715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A286385 (n + 1) : ℚ) / (A243501 (n + 1) : ℚ))

end

end A337380.P16409778860064409715

namespace A337380

/-- `round(A286385(n+1)/A243501(n+1))` -/
def P16409778860064409715.Spec : Prop :=
  ∀ n, P16409778860064409715.a n = A337380 (n + 1)

end A337380

/-! ## A337380.P17136596149953412590

`(A002659(n+1)%A003961(n+1))%2`
-/

namespace A337380.P17136596149953412590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A002659 (n + 1)) (A003961 (n + 1))) 2

end

end A337380.P17136596149953412590

namespace A337380

/-- `(A002659(n+1)%A003961(n+1))%2` -/
def P17136596149953412590.Spec : Prop :=
  ∀ n, P17136596149953412590.a n = A337380 (n + 1)

end A337380

/-! ## A337380.P18153217369750450569

`1-round(A000203(n+1)/A003961(n+1))`
-/

namespace A337380.P18153217369750450569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - SequenceMachineLib.roundAway ((A000203 (n + 1) : ℚ) / (A003961 (n + 1) : ℚ))

end

end A337380.P18153217369750450569

namespace A337380

/-- `1-round(A000203(n+1)/A003961(n+1))` -/
def P18153217369750450569.Spec : Prop :=
  ∀ n, P18153217369750450569.a n = A337380 (n + 1)

end A337380

/-! ## A337380.P12964994783381787139

`A062329(A061775(A349387(n+1)²))`
-/

namespace A337380.P12964994783381787139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062329 (A061775 (A349387 (n + 1) ^ 2).toNat).toNat

end

end A337380.P12964994783381787139

namespace A337380

/-- `A062329(A061775(A349387(n+1)²))` -/
def P12964994783381787139.Spec : Prop :=
  ∀ n, P12964994783381787139.a n = A337380 (n + 1)

end A337380

/-! ## A337380.P13899018101257159432

`A387352(n+1)%A322867(n+1)`
-/

namespace A337380.P13899018101257159432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A387352 (n + 1)) (A322867 (n + 1))

end

end A337380.P13899018101257159432

namespace A337380

/-- `A387352(n+1)%A322867(n+1)` -/
def P13899018101257159432.Spec : Prop :=
  ∀ n, P13899018101257159432.a n = A337380 (n + 1)

end A337380

/-!
# A337381: Numbers k for which A003973(k) >= 2*sigma(k).

The programs for A337381, there is no canonical definition to state claims against.
-/

/-! ## A337381.P15238696522896589771

`eq[1, A337383(n+1)]+1`
-/

namespace A337381.P15238696522896589771
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337383 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A337381.P15238696522896589771

/-! ## A337381.P4551275761970226034

`comp[A337382(n+1)-1]+1`
-/

namespace A337381.P4551275761970226034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337382 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A337381.P4551275761970226034

/-! ## A337381.P11745430516679756805

`record[(n+6)*A337383(n+6)]`
-/

namespace A337381.P11745430516679756805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 6 : ℤ) * A337383 (n + 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A337381.P11745430516679756805

/-! ## A337381.P17028098571071165623

`lt[C(n, n²), A337541(n+1)]+1`
-/

namespace A337381.P17028098571071165623
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (n ^ 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337541 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A337381.P17028098571071165623

/-! ## A337381.P13800935315587524409

`filter[A344180(n), A337383(#)]`
-/

namespace A337381.P13800935315587524409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344180 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A337383 (f1 j).toNat = 1) n)

end

end A337381.P13800935315587524409

/-! ## A337381.P1677411024100343062

`filter[A002808(n+1), A337383(#)]`
-/

namespace A337381.P1677411024100343062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A337383 (f1 j).toNat = 1) n)

end

end A337381.P1677411024100343062

/-! ## A337381.P6172621115698064676

`filter[A018252(n+1), A337383(#)]`
-/

namespace A337381.P6172621115698064676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A337383 (f1 j).toNat = 1) n)

end

end A337381.P6172621115698064676

/-! ## A337381.P10982950976053742611

`filter[A141468(n+3), A337383(#)]`
-/

namespace A337381.P10982950976053742611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A337383 (f1 j).toNat = 1) n)

end

end A337381.P10982950976053742611

/-! ## A337381.P4332453350781023025

`filter[A246282(n+1), A337383(#)]`
-/

namespace A337381.P4332453350781023025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246282 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A337383 (f1 j).toNat = 1) n)

end

end A337381.P4332453350781023025

/-! ## A337381.P10747556854616823618

`filter[A246352(n+1), A337383(#)]`
-/

namespace A337381.P10747556854616823618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246352 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A337383 (f1 j).toNat = 1) n)

end

end A337381.P10747556854616823618

/-! ## A337381.P16129588935058511199

`filter[A222307(2*n+1), A337383(#)]`
-/

namespace A337381.P16129588935058511199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222307 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A337383 (f1 j).toNat = 1) n)

end

end A337381.P16129588935058511199

/-! ## A337381.P12378502428117930812

`filter[A056653(n+1), A337383(#)]`
-/

namespace A337381.P12378502428117930812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056653 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A337383 (f1 j).toNat = 1) n)

end

end A337381.P12378502428117930812

/-! ## A337381.P4941973683056429595

`filter[A065090(n+1), A337383(#)]`
-/

namespace A337381.P4941973683056429595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065090 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A337383 (f1 j).toNat = 1) n)

end

end A337381.P4941973683056429595

/-! ## A337381.P7110974794908030846

`filter[A171581(n+1), A337383(#)]`
-/

namespace A337381.P7110974794908030846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171581 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A337383 (f1 j).toNat = 1) n)

end

end A337381.P7110974794908030846

/-! ## A337381.P4987178258248284404

`filter[A173905(n+2), A337383(#)]`
-/

namespace A337381.P4987178258248284404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173905 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A337383 (f1 j).toNat = 1) n)

end

end A337381.P4987178258248284404

/-! ## A337381.P1357401052723121839

`filter[A338924(n+1), A337383(#)]`
-/

namespace A337381.P1357401052723121839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338924 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A337383 (f1 j).toNat = 1) n)

end

end A337381.P1357401052723121839

/-! ## A337381.P9108779176821521881

`filter[A073900(n+1), A337383(#)]`
-/

namespace A337381.P9108779176821521881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073900 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A337383 (f1 j).toNat = 1) n)

end

end A337381.P9108779176821521881

/-! ## A337381.P13329995611891901654

`filter[A073899(n+1), A337383(#)]`
-/

namespace A337381.P13329995611891901654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073899 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A337383 (f1 j).toNat = 1) n)

end

end A337381.P13329995611891901654

/-! ## A337381.P6729458074953580648

`filter[A171085(n+1), A337383(#)]`
-/

namespace A337381.P6729458074953580648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171085 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A337383 (f1 j).toNat = 1) n)

end

end A337381.P6729458074953580648

/-! ## A337381.P15656395571075066698

`filter[A121543(n+1), A337383(#)]`
-/

namespace A337381.P15656395571075066698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121543 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A337383 (f1 j).toNat = 1) n)

end

end A337381.P15656395571075066698

/-!
# A337382: Numbers k for which A003973(k) < 2*sigma(k).

The programs for A337382, there is no canonical definition to state claims against.
-/

/-! ## A337382.P15798288163797542986

`eq[0, A337541(n+1)]+1`
-/

namespace A337382.P15798288163797542986
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337541 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A337382.P15798288163797542986

/-! ## A337382.P16090515008096305901

`lt[A337383(n+1), 1]+1`
-/

namespace A337382.P16090515008096305901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337383 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A337382.P16090515008096305901

/-! ## A337382.P409712314672645659

`record[gcd(n+1, A001281(n*A337383(n+1)))]`
-/

namespace A337382.P409712314672645659
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A001281 ((n : ℤ) * A337383 (n + 1)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A337382.P409712314672645659

/-! ## A337382.P13942842650014552582

`record[(n+1)/A008837(n*A337383(n+1)+1)]`
-/

namespace A337382.P13942842650014552582
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A008837 ((n : ℤ) * A337383 (n + 1) + 1).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A337382.P13942842650014552582

/-! ## A337382.P8738433406452795909

`eq[A185014(n+4), A337383(abs(1-n)+1)]`
-/

namespace A337382.P8738433406452795909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185014 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337383 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A337382.P8738433406452795909

/-!
# A337383: a(n) = 1 if sigma(A003961(n)) >= 2*sigma(n), 0 otherwise, where A003961 is the prime shift towards larger primes.

The programs for A337383, there is no canonical definition to state claims against.
-/

/-! ## A337383.P4268651464090754782

`char[A337381(n+1)-1]`
-/

namespace A337383.P4268651464090754782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337381 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A337383.P4268651464090754782

/-! ## A337383.P12705619402064740752

`char[lt[C(n, n²), A337541(n+1)]]`
-/

namespace A337383.P12705619402064740752
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (n ^ 2)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337541 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A337383.P12705619402064740752

/-! ## A337383.P16395782184827543876

`1-A000007(A337541(n+1))`
-/

namespace A337383.P16395782184827543876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A000007 (A337541 (n + 1)).toNat

end

end A337383.P16395782184827543876

/-! ## A337383.P17706396311880510277

`A185114(A337541(n+1)+3)`
-/

namespace A337383.P17706396311880510277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185114 (A337541 (n + 1) + 3).toNat

end

end A337383.P17706396311880510277

/-! ## A337383.P552326628882054621

`ceil(A337541(n+1)/A001752(n))`
-/

namespace A337383.P552326628882054621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A337541 (n + 1) : ℚ) / (A001752 n : ℚ)⌉

end

end A337383.P552326628882054621

/-! ## A337383.P2980203751459890316

`ceil(A337541(n+1)/A002522(n))`
-/

namespace A337383.P2980203751459890316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A337541 (n + 1) : ℚ) / (A002522 n : ℚ)⌉

end

end A337383.P2980203751459890316

/-! ## A337383.P788594071564549254

`ceil(A337541(n+1)/A003215(n))`
-/

namespace A337383.P788594071564549254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A337541 (n + 1) : ℚ) / (A003215 n : ℚ)⌉

end

end A337383.P788594071564549254

/-! ## A337383.P4145969070523029269

`ceil(A337541(n+1)/A005897(n))`
-/

namespace A337383.P4145969070523029269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A337541 (n + 1) : ℚ) / (A005897 n : ℚ)⌉

end

end A337383.P4145969070523029269

/-! ## A337383.P4260087184057842036

`∑{d}[A337541(n+1), A008683(#²)]`
-/

namespace A337383.P4260087184057842036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A008683 (d ^ 2)

end

end A337383.P4260087184057842036

/-! ## A337383.P8344324070856891116

`∑{d}[A337541(n+1), A069158(#²)]`
-/

namespace A337383.P8344324070856891116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A069158 (d ^ 2)

end

end A337383.P8344324070856891116

/-! ## A337383.P16918948790401678798

`∑{d}[A337541(n+1), A302050(#²)]`
-/

namespace A337383.P16918948790401678798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A302050 (d ^ 2)

end

end A337383.P16918948790401678798

/-! ## A337383.P1025646681347574894

`A337541(n+1)-A337542(n+1)`
-/

namespace A337383.P1025646681347574894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337541 (n + 1) - A337542 (n + 1)

end

end A337383.P1025646681347574894

/-! ## A337383.P17066405597224558454

`ceil(A337541(n+1)/A252463(n+1))`
-/

namespace A337383.P17066405597224558454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A337541 (n + 1) : ℚ) / (A252463 (n + 1) : ℚ)⌉

end

end A337383.P17066405597224558454

/-! ## A337383.P2209658966875620142

`∑{d}[n+1, A008683(#)*A337541((n+1)/#)]`
-/

namespace A337383.P2209658966875620142
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A337541 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A337383.P2209658966875620142

/-! ## A337383.P16957822380153926316

`A147986(Δ[comp[A337382(n+1)+n]]+1)`
-/

namespace A337383.P16957822380153926316
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337382 (n + 1) + (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147986 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 1).toNat

end

end A337383.P16957822380153926316

/-! ## A337383.P4252284120924966028

`ceil(A337541(n+1)/A000032(n))`
-/

namespace A337383.P4252284120924966028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A337541 (n + 1) : ℚ) / (A000032 n : ℚ)⌉

end

end A337383.P4252284120924966028

/-!
# A337384: Numbers k for which A003973(k) is equal to 2*sigma(k).

The programs for A337384, there is no canonical definition to state claims against.
-/

/-! ## A337384.P3884243636917546821

`∩[A337543(n+1), A355941(n+1)]`
-/

namespace A337384.P3884243636917546821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337543 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355941 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A337384.P3884243636917546821

/-! ## A337384.P10027841419105232063

`filter[A337543(n+1), A355940(#)]`
-/

namespace A337384.P10027841419105232063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337543 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355940 (f1 j).toNat = 1) n)

end

end A337384.P10027841419105232063

/-! ## A337384.P18431548274759357537

`A061767(eq[A039653(n+1)+1, A336852(n+1)])`
-/

namespace A337384.P18431548274759357537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039653 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336852 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061767 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A337384.P18431548274759357537

/-! ## A337384.P11815673109505701121

`A061767(eq[A074400(n+1)/2, A336852(n+1)])`
-/

namespace A337384.P11815673109505701121
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074400 (n + 1) : ℚ) / 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336852 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061767 (SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n)

end

end A337384.P11815673109505701121

/-! ## A337384.P1251234945138105223

`A061767(eq[A033880(n+1)+2*(n+1), A336852(n+1)])`
-/

namespace A337384.P1251234945138105223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033880 (n + 1) + (2 * (n + 1) : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336852 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061767 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A337384.P1251234945138105223

/-!
# A337386: Numbers k for which A003973(k) >= 2*A003961(k).

The programs for A337386, the canonical program `A337386.P15090357526265175060` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A337386 has offset 1).

The definition of A337386 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 254 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A337386.P15090357526265175060

`lt[1, A336835(A028310(n))]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A337386

/-- `lt[1, A336835(A028310(n))]` -/
def P15090357526265175060.Spec : Prop :=
  ∀ n, (P15090357526265175060.a n : ℤ) = A337386 (n + 1)

theorem P15090357526265175060.correct : P15090357526265175060.Spec := by
  intro n
  simp only [A337386, Nat.add_sub_cancel]

end A337386

/-! ## A337386.P9927550559425431159

`A326178(lt[1, A336835(n+1)])`
-/

namespace A337386.P9927550559425431159
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336835 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326178 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A337386.P9927550559425431159

namespace A337386

/-- `A326178(lt[1, A336835(n+1)])` -/
def P9927550559425431159.Spec : Prop :=
  ∀ n, P9927550559425431159.a n = A337386 (n + 1)

end A337386

/-! ## A337386.P9083749420385185180

`A326178(eq[2, A336835(n+1)])`
-/

namespace A337386.P9083749420385185180
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336835 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326178 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A337386.P9083749420385185180

namespace A337386

/-- `A326178(eq[2, A336835(n+1)])` -/
def P9083749420385185180.Spec : Prop :=
  ∀ n, P9083749420385185180.a n = A337386 (n + 1)

end A337386

/-! ## A337386.P1647563470607165338

`lt[1, A336835(A233583(n+1))]`
-/

namespace A337386.P1647563470607165338
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336835 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A337386.P1647563470607165338

namespace A337386

/-- `lt[1, A336835(A233583(n+1))]` -/
def P1647563470607165338.Spec : Prop :=
  ∀ n, (P1647563470607165338.a n : ℤ) = A337386 (n + 1)

end A337386

/-! ## A337386.P5864041436229175257

`A056866(eq[A077168(n), A153152(n)])`
-/

namespace A337386.P5864041436229175257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077168 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056866 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A337386.P5864041436229175257

namespace A337386

/-- `A056866(eq[A077168(n), A153152(n)])` -/
def P5864041436229175257.Spec : Prop :=
  ∀ n, P5864041436229175257.a n = A337386 (n + 1)

end A337386

/-!
# A337387: a(n) = Sum_{k=0..n} n^(n-k) * binomial(2*k,k) * binomial(2*n+1,2*k).

The programs for A337387, the canonical program `A337387.P877484711549580031` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A337387 has offset 0).

The definition of A337387 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A337387.P877484711549580031

`∑{#}[n, n^(n-#)*C(2*#, #)*C(2*n+1, 2*#)]`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A337387

/-- `∑{#}[n, n^(n-#)*C(2*#, #)*C(2*n+1, 2*#)]` -/
def P877484711549580031.Spec : Prop :=
  ∀ n, P877484711549580031.a n = (A337387 n : ℚ)

end A337387

/-! ## A337387.P4817865760508167013

`A337369(∑[4*n])`
-/

namespace A337387.P4817865760508167013
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337369 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A337387.P4817865760508167013

namespace A337387

/-- `A337369(∑[4*n])` -/
def P4817865760508167013.Spec : Prop :=
  ∀ n, P4817865760508167013.a n = A337387 n

end A337387

/-! ## A337387.P17992516778016977335

`record[A003982(n)*A337369(n)]`
-/

namespace A337387.P17992516778016977335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A337369 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A337387.P17992516778016977335

namespace A337387

/-- `record[A003982(n)*A337369(n)]` -/
def P17992516778016977335.Spec : Prop :=
  ∀ n, P17992516778016977335.a n = A337387 n

end A337387

/-! ## A337387.P6791926159617435639

`record[A337369(gcd(n, A003987(n)))]`
-/

namespace A337387.P6791926159617435639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337369 (Int.gcd (n : ℤ) (A003987 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A337387.P6791926159617435639

namespace A337387

/-- `record[A337369(gcd(n, A003987(n)))]` -/
def P6791926159617435639.Spec : Prop :=
  ∀ n, P6791926159617435639.a n = A337387 n

end A337387

/-! ## A337387.P6807630054437760994

`record[A337369(n*A003602(n+1))]`
-/

namespace A337387.P6807630054437760994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337369 ((n : ℤ) * A003602 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A337387.P6807630054437760994

namespace A337387

/-- `record[A337369(n*A003602(n+1))]` -/
def P6807630054437760994.Spec : Prop :=
  ∀ n, P6807630054437760994.a n = A337387 n

end A337387

/-!
# A337388: a(n) = Sum_{k=0..n} n^(n-k) * binomial(2*k,k) * binomial(2*n,2*k).

The programs for A337388, the canonical program `A337388.P7490627667272705369` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A337388 has offset 0).

The definition of A337388 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A337388.P7490627667272705369

`∑{#}[n, n^(n-#)*C(2*#, #)*C(2*n, 2*#)]`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A337388

/-- `∑{#}[n, n^(n-#)*C(2*#, #)*C(2*n, 2*#)]` -/
def P7490627667272705369.Spec : Prop :=
  ∀ n, P7490627667272705369.a n = (A337388 n : ℚ)

end A337388

/-! ## A337388.P12629438059170606039

`A337389(∑[4*n])`
-/

namespace A337388.P12629438059170606039
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337389 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A337388.P12629438059170606039

namespace A337388

/-- `A337389(∑[4*n])` -/
def P12629438059170606039.Spec : Prop :=
  ∀ n, P12629438059170606039.a n = A337388 n

end A337388

/-! ## A337388.P4799829185435105204

`record[A337389(A286145(n))]`
-/

namespace A337388.P4799829185435105204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337389 (A286145 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A337388.P4799829185435105204

namespace A337388

/-- `record[A337389(A286145(n))]` -/
def P4799829185435105204.Spec : Prop :=
  ∀ n, P4799829185435105204.a n = A337388 n

end A337388

/-! ## A337388.P6199449953030612002

`record[A003982(n)*A337389(n)]`
-/

namespace A337388.P6199449953030612002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A337389 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A337388.P6199449953030612002

namespace A337388

/-- `record[A003982(n)*A337389(n)]` -/
def P6199449953030612002.Spec : Prop :=
  ∀ n, P6199449953030612002.a n = A337388 n

end A337388

/-! ## A337388.P14626996897280942397

`record[A337389(gcd(n, A003987(n)))]`
-/

namespace A337388.P14626996897280942397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337389 (Int.gcd (n : ℤ) (A003987 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A337388.P14626996897280942397

namespace A337388

/-- `record[A337389(gcd(n, A003987(n)))]` -/
def P14626996897280942397.Spec : Prop :=
  ∀ n, P14626996897280942397.a n = A337388 n

end A337388

/-!
# A337389: Square array T(n,k), n >= 0, k >= 0, read by antidiagonals, where column k is the expansion of sqrt((1+(k-4)*x+sqrt(1-2*(k+4)*x+((k-4)*x)^2)) / (2 * (1-2*(k+4)*x+((k-4)*x)^2))).

The programs for A337389, there is no canonical definition to state claims against.
-/

/-! ## A337389.P3297724140071376835

`A212629(A079474(n+1))`
-/

namespace A337389.P3297724140071376835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212629 (A079474 (n + 1)).toNat

end

end A337389.P3297724140071376835

/-! ## A337389.P15451073569861741219

`A046899(n)+A002262(A238935(n+1))`
-/

namespace A337389.P15451073569861741219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046899 n + A002262 (A238935 (n + 1)).toNat

end

end A337389.P15451073569861741219

/-! ## A337389.P1379878964652692456

`A058276(A208914(n+1))+A046899(n)`
-/

namespace A337389.P1379878964652692456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058276 (A208914 (n + 1)).toNat + A046899 n

end

end A337389.P1379878964652692456

/-! ## A337389.P678169938715540478

`A117923(A063007(n))/A077592(n+1)`
-/

namespace A337389.P678169938715540478
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A117923 (A063007 n).toNat : ℚ) / (A077592 (n + 1) : ℚ)

end

end A337389.P678169938715540478

/-!
# A337390: Expansion of sqrt((1-2*x+sqrt(1-12*x+4*x^2)) / (2 * (1-12*x+4*x^2))).

The programs for A337390, the canonical program `A337390.P8983886053266209787` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A337390 has offset 0).

The definition of A337390 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A337390.P8983886053266209787

`∑{#}[n, 2^(n-#)*C(2*#, #)*C(2*n, 2*#)]`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A337390

/-- `∑{#}[n, 2^(n-#)*C(2*#, #)*C(2*n, 2*#)]` -/
def P8983886053266209787.Spec : Prop :=
  ∀ n, P8983886053266209787.a n = (A337390 n : ℚ)

end A337390

/-! ## A337390.P5322566967331526689

`A337389(∑[n+3])`
-/

namespace A337390.P5322566967331526689
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337389 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A337390.P5322566967331526689

namespace A337390

/-- `A337389(∑[n+3])` -/
def P5322566967331526689.Spec : Prop :=
  ∀ n, P5322566967331526689.a n = A337390 n

end A337390

/-! ## A337390.P4038577970321524157

`record[A337389(n)/A337369(n+3)]`
-/

namespace A337390.P4038577970321524157
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A337389 n : ℚ) / (A337369 (n + 3) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A337390.P4038577970321524157

namespace A337390

/-- `record[A337389(n)/A337369(n+3)]` -/
def P4038577970321524157.Spec : Prop :=
  ∀ n, P4038577970321524157.a n = (A337390 n : ℚ)

end A337390

/-! ## A337390.P6738294479746475721

`record[A337389(n)/A337389(n+3)]`
-/

namespace A337390.P6738294479746475721
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A337389 n : ℚ) / (A337389 (n + 3) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A337390.P6738294479746475721

namespace A337390

/-- `record[A337389(n)/A337389(n+3)]` -/
def P6738294479746475721.Spec : Prop :=
  ∀ n, P6738294479746475721.a n = (A337390 n : ℚ)

end A337390

/-! ## A337390.P12920315845674749770

`A006139(2*n)/A000079(n)`
-/

namespace A337390.P12920315845674749770
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006139 (2 * n) : ℚ) / (A000079 n : ℚ)

end

end A337390.P12920315845674749770

namespace A337390

/-- `A006139(2*n)/A000079(n)` -/
def P12920315845674749770.Spec : Prop :=
  ∀ n, P12920315845674749770.a n = (A337390 n : ℚ)

end A337390

/-! ## A337390.P7654434924162495870

`A006139(2*n)/record[A059268(n)]`
-/

namespace A337390.P7654434924162495870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006139 (2 * n) : ℚ) / (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)

end

end A337390.P7654434924162495870

namespace A337390

/-- `A006139(2*n)/record[A059268(n)]` -/
def P7654434924162495870.Spec : Prop :=
  ∀ n, P7654434924162495870.a n = (A337390 n : ℚ)

end A337390

/-! ## A337390.P14283152188192758751

`A006139(2*n)/A011782(n+1)`
-/

namespace A337390.P14283152188192758751
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006139 (2 * n) : ℚ) / (A011782 (n + 1) : ℚ)

end

end A337390.P14283152188192758751

namespace A337390

/-- `A006139(2*n)/A011782(n+1)` -/
def P14283152188192758751.Spec : Prop :=
  ∀ n, P14283152188192758751.a n = (A337390 n : ℚ)

end A337390

/-! ## A337390.P4475783791846656232

`A006139(2*n)/A016116(2*n)`
-/

namespace A337390.P4475783791846656232
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006139 (2 * n) : ℚ) / (A016116 (2 * n) : ℚ)

end

end A337390.P4475783791846656232

namespace A337390

/-- `A006139(2*n)/A016116(2*n)` -/
def P4475783791846656232.Spec : Prop :=
  ∀ n, P4475783791846656232.a n = (A337390 n : ℚ)

end A337390

/-! ## A337390.P7633804763034113641

`A006139(2*n)/A036561(A000217(n))`
-/

namespace A337390.P7633804763034113641
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006139 (2 * n) : ℚ) / (A036561 (A000217 n).toNat : ℚ)

end

end A337390.P7633804763034113641

namespace A337390

/-- `A006139(2*n)/A036561(A000217(n))` -/
def P7633804763034113641.Spec : Prop :=
  ∀ n, P7633804763034113641.a n = (A337390 n : ℚ)

end A337390

/-! ## A337390.P2960240671310327346

`A124216(∑[4*n])`
-/

namespace A337390.P2960240671310327346
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124216 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A337390.P2960240671310327346

namespace A337390

/-- `A124216(∑[4*n])` -/
def P2960240671310327346.Spec : Prop :=
  ∀ n, P2960240671310327346.a n = A337390 n

end A337390

/-!
# A337391: a(n) is the smallest n-digit number divisible by n^3.

The programs for A337391, the canonical program `A337391.P8809371554341003328` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A337391 has offset 1).

The definition of A337391 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A337391.P8809371554341003328

`(n+1)^3*ceil(10^n/(n+1)^3)`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A337391

/-- `(n+1)^3*ceil(10^n/(n+1)^3)` -/
def P8809371554341003328.Spec : Prop :=
  ∀ n, P8809371554341003328.a n = A337391 (n + 1)

theorem P8809371554341003328.correct : P8809371554341003328.Spec := by
  intro n
  simp only [A337391, Nat.add_sub_cancel]

end A337391

/-!
# A337392: Minimum m such that the convergence speed of m^^m is equal to n >= 2, where A317905(n) represents the convergence speed of m^^m (and m = A067251(n), the n-th non-multiple of 10).

The programs for A337392, the canonical program `A337392.P13175552836481365801` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A337392 has offset 2).

The definition of A337392 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A337392.P13175552836481365801

`ogf((5+25x+20x^3)/(1-3x^2-4x^4))`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A337392

/-- `ogf((5+25x+20x^3)/(1-3x^2-4x^4))` -/
def P13175552836481365801.Spec : Prop :=
  ∀ n, P13175552836481365801.a n = A337392 (n + 2)

theorem P13175552836481365801.correct : P13175552836481365801.Spec := by
  intro n
  simp only [A337392, Nat.add_sub_cancel]

end A337392

/-! ## A337392.P8733583556961632594

`abs(5*A077973(2*n+3))`
-/

namespace A337392.P8733583556961632594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |5 * A077973 (2 * n + 3)|

end

end A337392.P8733583556961632594

namespace A337392

/-- `abs(5*A077973(2*n+3))` -/
def P8733583556961632594.Spec : Prop :=
  ∀ n, P8733583556961632594.a n = A337392 (n + 2)

end A337392

/-! ## A337392.P9561402066988068321

`A081631(n+2)+A057077(n)`
-/

namespace A337392.P9561402066988068321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081631 (n + 2) + A057077 n

end

end A337392.P9561402066988068321

namespace A337392

/-- `A081631(n+2)+A057077(n)` -/
def P9561402066988068321.Spec : Prop :=
  ∀ n, P9561402066988068321.a n = A337392 (n + 2)

end A337392

/-! ## A337392.P1620070731850834919

`abs(1-A137429(2*(n+2)))`
-/

namespace A337392.P1620070731850834919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A137429 (2 * (n + 2))|

end

end A337392.P1620070731850834919

namespace A337392

/-- `abs(1-A137429(2*(n+2)))` -/
def P1620070731850834919.Spec : Prop :=
  ∀ n, P1620070731850834919.a n = A337392 (n + 2)

end A337392

/-! ## A337392.P10729603847477692299

`A075553(2*n+1)+abs(A137429(2*(n+2)))`
-/

namespace A337392.P10729603847477692299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075553 (2 * n + 1) + |A137429 (2 * (n + 2))|

end

end A337392.P10729603847477692299

namespace A337392

/-- `A075553(2*n+1)+abs(A137429(2*(n+2)))` -/
def P10729603847477692299.Spec : Prop :=
  ∀ n, P10729603847477692299.a n = A337392 (n + 2)

end A337392

/-! ## A337392.P6685273671985709459

`A290074(n+3)+A010673(A000217(n+1))`
-/

namespace A337392.P6685273671985709459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290074 (n + 3) + A010673 (A000217 (n + 1)).toNat

end

end A337392.P6685273671985709459

namespace A337392

/-- `A290074(n+3)+A010673(A000217(n+1))` -/
def P6685273671985709459.Spec : Prop :=
  ∀ n, P6685273671985709459.a n = A337392 (n + 2)

end A337392

/-! ## A337392.P2607348299568058652

`A290074(n+3)+A010673(A167499(n)+1)`
-/

namespace A337392.P2607348299568058652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290074 (n + 3) + A010673 (A167499 n + 1).toNat

end

end A337392.P2607348299568058652

namespace A337392

/-- `A290074(n+3)+A010673(A167499(n)+1)` -/
def P2607348299568058652.Spec : Prop :=
  ∀ n, P2607348299568058652.a n = A337392 (n + 2)

end A337392

/-!
# A337393: Expansion of sqrt((1-5*x+sqrt(1-6*x+25*x^2)) / (2 * (1-6*x+25*x^2))).

The programs for A337393, the canonical program `A337393.P12256521449841044609` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A337393 has offset 0).

The definition of A337393 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A337393.P12256521449841044609

`∑{#}[n, (-1)^(n-#)*C(2*#, #)*C(2*n, 2*#)]`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A337393

/-- `∑{#}[n, (-1)^(n-#)*C(2*#, #)*C(2*n, 2*#)]` -/
def P12256521449841044609.Spec : Prop :=
  ∀ n, P12256521449841044609.a n = (A337393 n : ℚ)

end A337393

/-! ## A337393.P13570208051684224720

`(-1)^n*A098331(2*n)`
-/

namespace A337393.P13570208051684224720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A098331 (2 * n)

end

end A337393.P13570208051684224720

namespace A337393

/-- `(-1)^n*A098331(2*n)` -/
def P13570208051684224720.Spec : Prop :=
  ∀ n, P13570208051684224720.a n = A337393 n

end A337393

/-! ## A337393.P15095572545582375058

`A098331(2*n)/A033999(n)`
-/

namespace A337393.P15095572545582375058
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098331 (2 * n) : ℚ) / (A033999 n : ℚ)

end

end A337393.P15095572545582375058

namespace A337393

/-- `A098331(2*n)/A033999(n)` -/
def P15095572545582375058.Spec : Prop :=
  ∀ n, P15095572545582375058.a n = (A337393 n : ℚ)

end A337393

/-! ## A337393.P2050444280255712517

`A098331(A004277(n))*A105812(n+3)`
-/

namespace A337393.P2050444280255712517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098331 (A004277 n).toNat * A105812 (n + 3)

end

end A337393.P2050444280255712517

namespace A337393

/-- `A098331(A004277(n))*A105812(n+3)` -/
def P2050444280255712517.Spec : Prop :=
  ∀ n, P2050444280255712517.a n = A337393 n

end A337393

/-! ## A337393.P15686647266483635234

`A337419(∑[n+2]-1)`
-/

namespace A337393.P15686647266483635234
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337419 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A337393.P15686647266483635234

namespace A337393

/-- `A337419(∑[n+2]-1)` -/
def P15686647266483635234.Spec : Prop :=
  ∀ n, P15686647266483635234.a n = A337393 n

end A337393

/-! ## A337393.P11019373124039529081

`A180957(∑[4*n])`
-/

namespace A337393.P11019373124039529081
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180957 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A337393.P11019373124039529081

namespace A337393

/-- `A180957(∑[4*n])` -/
def P11019373124039529081.Spec : Prop :=
  ∀ n, P11019373124039529081.a n = A337393 n

end A337393

/-!
# A337394: Expansion of sqrt(2 / ( (1-6*x+25*x^2) * (1-5*x+sqrt(1-6*x+25*x^2)) )).

The programs for A337394, the canonical program `A337394.P10554516328285664730` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A337394 has offset 0).

The definition of A337394 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A337394.P10554516328285664730

`∑{#}[n, (-1)^(n-#)*C(2*#, #)*C(2*n+1, 2*#)]`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A337394

/-- `∑{#}[n, (-1)^(n-#)*C(2*#, #)*C(2*n+1, 2*#)]` -/
def P10554516328285664730.Spec : Prop :=
  ∀ n, P10554516328285664730.a n = (A337394 n : ℚ)

end A337394

/-! ## A337394.P11515339027893137145

`A033999(n)*A098331(Δ[n²])`
-/

namespace A337394.P11515339027893137145
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A098331 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A337394.P11515339027893137145

namespace A337394

/-- `A033999(n)*A098331(Δ[n²])` -/
def P11515339027893137145.Spec : Prop :=
  ∀ n, P11515339027893137145.a n = A337394 n

end A337394

/-! ## A337394.P8233235095417036980

`A098331(2*n+1)/A033999(n)`
-/

namespace A337394.P8233235095417036980
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098331 (2 * n + 1) : ℚ) / (A033999 n : ℚ)

end

end A337394.P8233235095417036980

namespace A337394

/-- `A098331(2*n+1)/A033999(n)` -/
def P8233235095417036980.Spec : Prop :=
  ∀ n, P8233235095417036980.a n = (A337394 n : ℚ)

end A337394

/-! ## A337394.P4260372632740446766

`A098331(2*n+1)*A105812(n+3)`
-/

namespace A337394.P4260372632740446766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098331 (2 * n + 1) * A105812 (n + 3)

end

end A337394.P4260372632740446766

namespace A337394

/-- `A098331(2*n+1)*A105812(n+3)` -/
def P4260372632740446766.Spec : Prop :=
  ∀ n, P4260372632740446766.a n = A337394 n

end A337394

/-! ## A337394.P12119282722567954711

`A033999(2*n+1)*A098331(2*n+1)*A033999(n+1)`
-/

namespace A337394.P12119282722567954711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n + 1) * A098331 (2 * n + 1) * A033999 (n + 1)

end

end A337394.P12119282722567954711

namespace A337394

/-- `A033999(2*n+1)*A098331(2*n+1)*A033999(n+1)` -/
def P12119282722567954711.Spec : Prop :=
  ∀ n, P12119282722567954711.a n = A337394 n

end A337394

/-! ## A337394.P4758942706993948465

`A337464(∑[n+2]-1)`
-/

namespace A337394.P4758942706993948465
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337464 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A337394.P4758942706993948465

namespace A337394

/-- `A337464(∑[n+2]-1)` -/
def P4758942706993948465.Spec : Prop :=
  ∀ n, P4758942706993948465.a n = A337394 n

end A337394

/-!
# A337396: Expansion of sqrt((1-8*x+sqrt(1+64*x^2)) / (2 * (1+64*x^2))).

The programs for A337396, the canonical program `A337396.P1506865380990422026` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A337396 has offset 0).

The definition of A337396 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A337396.P1506865380990422026

`∑{#}[n, (-4)^(n-#)*C(2*#, #)*C(2*n, 2*#)]`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A337396

/-- `∑{#}[n, (-4)^(n-#)*C(2*#, #)*C(2*n, 2*#)]` -/
def P1506865380990422026.Spec : Prop :=
  ∀ n, P1506865380990422026.a n = (A337396 n : ℚ)

end A337396

/-! ## A337396.P10698181938145380242

`A033999(n)*A098335(2*n)`
-/

namespace A337396.P10698181938145380242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A098335 (2 * n)

end

end A337396.P10698181938145380242

namespace A337396

/-- `A033999(n)*A098335(2*n)` -/
def P10698181938145380242.Spec : Prop :=
  ∀ n, P10698181938145380242.a n = A337396 n

end A337396

/-! ## A337396.P7554094840006543940

`A337419(A052905(n+2))`
-/

namespace A337396.P7554094840006543940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337419 (A052905 (n + 2)).toNat

end

end A337396.P7554094840006543940

namespace A337396

/-- `A337419(A052905(n+2))` -/
def P7554094840006543940.Spec : Prop :=
  ∀ n, P7554094840006543940.a n = A337396 n

end A337396

/-! ## A337396.P10571257561606084511

`A337419(eq[4, A025581(n)])`
-/

namespace A337396.P10571257561606084511
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337419 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A337396.P10571257561606084511

namespace A337396

/-- `A337419(eq[4, A025581(n)])` -/
def P10571257561606084511.Spec : Prop :=
  ∀ n, P10571257561606084511.a n = A337396 n

end A337396

/-! ## A337396.P15653731075225434419

`A337419(eq[5, A004736(n+1)])`
-/

namespace A337396.P15653731075225434419
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337419 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A337396.P15653731075225434419

namespace A337396

/-- `A337419(eq[5, A004736(n+1)])` -/
def P15653731075225434419.Spec : Prop :=
  ∀ n, P15653731075225434419.a n = A337396 n

end A337396

/-! ## A337396.P17351027682732081202

`A337419(Δ[A023545(n+1)]-1)`
-/

namespace A337396.P17351027682732081202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337419 (f1 (n + 1) - f1 n - 1).toNat

end

end A337396.P17351027682732081202

namespace A337396

/-- `A337419(Δ[A023545(n+1)]-1)` -/
def P17351027682732081202.Spec : Prop :=
  ∀ n, P17351027682732081202.a n = A337396 n

end A337396

/-! ## A337396.P7676066335644701735

`A337419(2*n+A055999(n)+10)`
-/

namespace A337396.P7676066335644701735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337419 ((2 * n : ℤ) + (A055999 n + 10)).toNat

end

end A337396.P7676066335644701735

namespace A337396

/-- `A337419(2*n+A055999(n)+10)` -/
def P7676066335644701735.Spec : Prop :=
  ∀ n, P7676066335644701735.a n = A337396 n

end A337396

/-!
# A337397: Expansion of sqrt(2 / ( (1+64*x^2) * (1-8*x+sqrt(1+64*x^2)) )).

The programs for A337397, the canonical program `A337397.P5979191249919200467` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A337397 has offset 0).

The definition of A337397 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A337397.P5979191249919200467

`∑{#}[n, (-4)^(n-#)*C(2*#, #)*C(2*n+1, 2*#)]`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A337397

/-- `∑{#}[n, (-4)^(n-#)*C(2*#, #)*C(2*n+1, 2*#)]` -/
def P5979191249919200467.Spec : Prop :=
  ∀ n, P5979191249919200467.a n = (A337397 n : ℚ)

end A337397

/-! ## A337397.P13265246121788210555

`A337464(eq[4, A025581(n)])`
-/

namespace A337397.P13265246121788210555
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337464 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A337397.P13265246121788210555

namespace A337397

/-- `A337464(eq[4, A025581(n)])` -/
def P13265246121788210555.Spec : Prop :=
  ∀ n, P13265246121788210555.a n = A337397 n

end A337397

/-! ## A337397.P5488333927553478386

`A337464(eq[5, A193739(n)])`
-/

namespace A337397.P5488333927553478386
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337464 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A337397.P5488333927553478386

namespace A337397

/-- `A337464(eq[5, A193739(n)])` -/
def P5488333927553478386.Spec : Prop :=
  ∀ n, P5488333927553478386.a n = A337397 n

end A337397

/-! ## A337397.P16705059004616705243

`A337464(A055999(n+2)+1)`
-/

namespace A337397.P16705059004616705243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337464 (A055999 (n + 2) + 1).toNat

end

end A337397.P16705059004616705243

namespace A337397

/-- `A337464(A055999(n+2)+1)` -/
def P16705059004616705243.Spec : Prop :=
  ∀ n, P16705059004616705243.a n = A337397 n

end A337397

/-! ## A337397.P12780149900450148530

`A337464(eq[5, A004736(n+1)])`
-/

namespace A337397.P12780149900450148530
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337464 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A337397.P12780149900450148530

namespace A337397

/-- `A337464(eq[5, A004736(n+1)])` -/
def P12780149900450148530.Spec : Prop :=
  ∀ n, P12780149900450148530.a n = A337397 n

end A337397

/-! ## A337397.P5512944450064841997

`A337464(Δ[A023545(n+1)]-1)`
-/

namespace A337397.P5512944450064841997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337464 (f1 (n + 1) - f1 n - 1).toNat

end

end A337397.P5512944450064841997

namespace A337397

/-- `A337464(Δ[A023545(n+1)]-1)` -/
def P5512944450064841997.Spec : Prop :=
  ∀ n, P5512944450064841997.a n = A337397 n

end A337397

/-! ## A337397.P13803341007666675368

`A337464(A166136(n+1)+A016789(n)-1)`
-/

namespace A337397.P13803341007666675368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337464 (A166136 (n + 1) + (A016789 n - 1)).toNat

end

end A337397.P13803341007666675368

namespace A337397

/-- `A337464(A166136(n+1)+A016789(n)-1)` -/
def P13803341007666675368.Spec : Prop :=
  ∀ n, P13803341007666675368.a n = A337397 n

end A337397

/-!
# A337398: Steinhaus' Mega, mod n.

The programs for A337398, there is no canonical definition to state claims against.
-/

/-! ## A337398.P13838146588359234617

`A001146(A349137(n+1))²%A001478(n+1)`
-/

namespace A337398.P13838146588359234617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001146 (A349137 (n + 1)).toNat ^ 2) (A001478 (n + 1))

end

end A337398.P13838146588359234617

/-! ## A337398.P2663522388430536679

`A008590(32*n²)%(n+1)`
-/

namespace A337398.P2663522388430536679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008590 (32 * n ^ 2)) (n + 1 : ℤ)

end

end A337398.P2663522388430536679

/-! ## A337398.P8448254609720068074

`A016802(Δ[(1-n)²*C(n, 2)])%(n+1)`
-/

namespace A337398.P8448254609720068074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) ^ 2 * (Nat.choose n 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016802 (f1 (n + 1) - f1 n).toNat) (n + 1 : ℤ)

end

end A337398.P8448254609720068074

/-! ## A337398.P6266816114528888240

`(A000096(2*n^3+6)+2)²%(n+1)`
-/

namespace A337398.P6266816114528888240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((A000096 (2 * n ^ 3 + 6) + 2) ^ 2) (n + 1 : ℤ)

end

end A337398.P6266816114528888240

/-!
# A337399: Numbers k such that sigma(k) is a Zumkeller number (A083207).

The programs for A337399, there is no canonical definition to state claims against.
-/

/-! ## A337399.P3853981566063833056

`eq[2, A020639(A119347(∑{d}[n+1, #]))]+1`
-/

namespace A337399.P3853981566063833056
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A119347 (∑ d ∈ Nat.divisors (f3 n), d)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A337399.P3853981566063833056

/-! ## A337399.P6452472687252574039

`eq[1, A179527(∑{d}[n+1, #])]+1`
-/

namespace A337399.P6452472687252574039
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179527 (∑ d ∈ Nat.divisors (f3 n), d)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A337399.P6452472687252574039

/-! ## A337399.P14384087268160662346

`eq[1, A179527(A039653(n)+1)]`
-/

namespace A337399.P14384087268160662346
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179527 (A039653 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A337399.P14384087268160662346

/-! ## A337399.P17928523784545062609

`eq[1, A179527(A000203(n+1))]+1`
-/

namespace A337399.P17928523784545062609
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179527 (A000203 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A337399.P17928523784545062609

/-! ## A337399.P3711659692867412781

`lt[acot(A083206(∑{d}[n+1, #]))^n, n]+1`
-/

namespace A337399.P3711659692867412781
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (A083206 (∑ d ∈ Nat.divisors (f2 n), d) : ℝ) ^ n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℝ)) n + 1

end

end A337399.P3711659692867412781

