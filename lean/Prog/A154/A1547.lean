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
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
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
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
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
import Seq.Opaque.C024
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A154700: Prime divisors of 2^36-1.

The programs for A154700, there is no canonical definition to state claims against.
-/

/-! ## A154700.P449985534095746958

`p?[A003543(n+1)]`
-/

namespace A154700.P449985534095746958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003543 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A154700.P449985534095746958

/-! ## A154700.P11691121992390724147

`2*A298413(n)+1`
-/

namespace A154700.P11691121992390724147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A298413 n + 1

end

end A154700.P11691121992390724147

/-! ## A154700.P10900583840695528637

`record[p?[A094617(n+2)]]`
-/

namespace A154700.P10900583840695528637
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094617 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A154700.P10900583840695528637

/-! ## A154700.P12703172795870521436

`record[p?[A233559(n+3)]]`
-/

namespace A154700.P12703172795870521436
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233559 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A154700.P12703172795870521436

/-!
# A154701: Numbers k such that k, k + 1 and k + 2 are 3 consecutive Harshad numbers.

The programs for A154701, there is no canonical definition to state claims against.
-/

/-! ## A154701.P1996680648168709881

`A330927(eq[1, Δ[A330927(n+1)]]+1)`
-/

namespace A154701.P1996680648168709881
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330927 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330927 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A154701.P1996680648168709881

/-! ## A154701.P17674366724171177657

`∩[A330927(n+1), A330927(n+2)-1]`
-/

namespace A154701.P17674366724171177657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330927 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330927 (n + 2) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154701.P17674366724171177657

/-! ## A154701.P11001834199005610846

`A330927(eq[1, A330927(n+2)-A330927(n+1)]+1)`
-/

namespace A154701.P11001834199005610846
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330927 (n + 2) - A330927 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330927 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A154701.P11001834199005610846

/-! ## A154701.P17359407479292106530

`∩[A330927(n+1), A371260(n+1)]`
-/

namespace A154701.P17359407479292106530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330927 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371260 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154701.P17359407479292106530

/-! ## A154701.P18052030643597374454

`∩[A330927(n+1), A023443(A330927(n+2))]`
-/

namespace A154701.P18052030643597374454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330927 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A330927 (n + 2)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154701.P18052030643597374454

/-!
# A154703: Concatenation of the first n primes written in base 2.

The programs for A154703, there is no canonical definition to state claims against.
-/

/-! ## A154703.P747421074069647721

`A007088(A164893(n+1))`
-/

namespace A154703.P747421074069647721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A164893 (n + 1)).toNat

end

end A154703.P747421074069647721

/-!
# A154704: a(n) = smallest number k such that k-1 and k+1 both have exactly n prime divisors (counted with multiplicity).

The programs for A154704, there is no canonical definition to state claims against.
-/

/-! ## A154704.P1961316747335674887

`A117553(A007226(n))+1`
-/

namespace A154704.P1961316747335674887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117553 (A007226 n).toNat + 1

end

end A154704.P1961316747335674887

/-!
# A154706: Triangular sequence defined by T(n, m) = Coefficients(q(x,n) + x^(n-2)*q(1/x,n))/4, where q(x, n) = d^2*p(x, n)/dx^2 and p(x, n) = 2^n*(1-x)^(n+1)*LerchPhi(x, -n, 1/2).

The programs for A154706, there is no canonical definition to state claims against.
-/

/-! ## A154706.P4536833159467047900

`A184105(A285907(n))%A285887(n+1)`
-/

namespace A154706.P4536833159467047900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A184105 (A285907 n).toNat) (A285887 (n + 1))

end

end A154706.P4536833159467047900

/-!
# A154708: Numbers a such that b and c exist with b <= a < c and a*(a+1) + b^2 = c^2.

The programs for A154708, the canonical program `A154708.P14308097042481656635` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154708 has offset 1).

The definition of A154708 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A154708.P14308097042481656635

`4*(n+1)-a(n-1)-1` with `a(0)=3`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A154708

/-- `4*(n+1)-a(n-1)-1` -/
def P14308097042481656635.Spec : Prop :=
  ∀ n, P14308097042481656635.a n = A154708 (n + 1)

theorem P14308097042481656635.correct : P14308097042481656635.Spec := by
  intro n
  simp only [A154708, Nat.add_sub_cancel]

end A154708

/-! ## A154708.P2788890246266074625

`(1-(-1)^(n+1)+4*(n+1))/2`
-/

namespace A154708.P2788890246266074625
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 - (-1) ^ (n + 1) + (4 * (n + 1) : ℤ) : ℚ) / 2

end

end A154708.P2788890246266074625

namespace A154708

/-- `(1-(-1)^(n+1)+4*(n+1))/2` -/
def P2788890246266074625.Spec : Prop :=
  ∀ n, P2788890246266074625.a n = (A154708 (n + 1) : ℚ)

theorem P2788890246266074625.correct : P2788890246266074625.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A154708, Nat.add_sub_cancel, A154708.P2788890246266074625.a, A154708.P14308097042481656635.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A154708, Nat.add_sub_cancel, A154708.P2788890246266074625.a, A154708.P14308097042481656635.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A154708

/-! ## A154708.P6320695899222959766

`record[or(2, n)+1]`
-/

namespace A154708.P6320695899222959766
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A154708.P6320695899222959766

namespace A154708

/-- `record[or(2, n)+1]` -/
def P6320695899222959766.Spec : Prop :=
  ∀ n, (P6320695899222959766.a n : ℤ) = A154708 (n + 1)

end A154708

/-! ## A154708.P8343394303621515025

`record[xor(2, n)+1]`
-/

namespace A154708.P8343394303621515025
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A154708.P8343394303621515025

namespace A154708

/-- `record[xor(2, n)+1]` -/
def P8343394303621515025.Spec : Prop :=
  ∀ n, (P8343394303621515025.a n : ℤ) = A154708 (n + 1)

end A154708

/-! ## A154708.P6865512698587515

`∑[gcd(3, n%2)]`
-/

namespace A154708.P6865512698587515
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 3 (n % 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A154708.P6865512698587515

namespace A154708

/-- `∑[gcd(3, n%2)]` -/
def P6865512698587515.Spec : Prop :=
  ∀ n, (P6865512698587515.a n : ℤ) = A154708 (n + 1)

end A154708

/-! ## A154708.P16984862543814378350

`comp[or(2, n)]+3`
-/

namespace A154708.P16984862543814378350
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 3

end

end A154708.P16984862543814378350

namespace A154708

/-- `comp[or(2, n)]+3` -/
def P16984862543814378350.Spec : Prop :=
  ∀ n, (P16984862543814378350.a n : ℤ) = A154708 (n + 1)

end A154708

/-! ## A154708.P9917003615822524201

`∑[or(1, gcd(2, n))]`
-/

namespace A154708.P9917003615822524201
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (Nat.gcd 2 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A154708.P9917003615822524201

namespace A154708

/-- `∑[or(1, gcd(2, n))]` -/
def P9917003615822524201.Spec : Prop :=
  ∀ n, (P9917003615822524201.a n : ℤ) = A154708 (n + 1)

end A154708

/-! ## A154708.P18202760962103003906

`record[abs(xor(n, -3))]`
-/

namespace A154708.P18202760962103003906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (n : ℤ) (-3)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A154708.P18202760962103003906

namespace A154708

/-- `record[abs(xor(n, -3))]` -/
def P18202760962103003906.Spec : Prop :=
  ∀ n, P18202760962103003906.a n = A154708 (n + 1)

end A154708

/-! ## A154708.P5890632661356912381

`record[-xor(n, -3)]`
-/

namespace A154708.P5890632661356912381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (n : ℤ) (-3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A154708.P5890632661356912381

namespace A154708

/-- `record[-xor(n, -3)]` -/
def P5890632661356912381.Spec : Prop :=
  ∀ n, P5890632661356912381.a n = A154708 (n + 1)

end A154708

/-! ## A154708.P1641089598802141636

`or(1, n+2)+n`
-/

namespace A154708.P1641089598802141636
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (n + 2) + n

end

end A154708.P1641089598802141636

namespace A154708

/-- `or(1, n+2)+n` -/
def P1641089598802141636.Spec : Prop :=
  ∀ n, (P1641089598802141636.a n : ℤ) = A154708 (n + 1)

end A154708

/-! ## A154708.P6898501291573428296

`lt[xor(2, n), n]+1`
-/

namespace A154708.P6898501291573428296
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A154708.P6898501291573428296

namespace A154708

/-- `lt[xor(2, n), n]+1` -/
def P6898501291573428296.Spec : Prop :=
  ∀ n, (P6898501291573428296.a n : ℤ) = A154708 (n + 1)

end A154708

/-! ## A154708.P10497614326851650520

`record[and(n, -3)+3]`
-/

namespace A154708.P10497614326851650520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-3) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A154708.P10497614326851650520

namespace A154708

/-- `record[and(n, -3)+3]` -/
def P10497614326851650520.Spec : Prop :=
  ∀ n, P10497614326851650520.a n = A154708 (n + 1)

end A154708

/-! ## A154708.P3037622384557115057

`record[n-or(n, -3)]`
-/

namespace A154708.P3037622384557115057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - Int.lor (n : ℤ) (-3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A154708.P3037622384557115057

namespace A154708

/-- `record[n-or(n, -3)]` -/
def P3037622384557115057.Spec : Prop :=
  ∀ n, P3037622384557115057.a n = A154708 (n + 1)

end A154708

/-! ## A154708.P6763426043880572294

`4+a(n-2)` with `a(0)=3, a(1)=4`
-/

namespace A154708.P6763426043880572294
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 4] fun n a =>
  4 + a (n - 2)

end

end A154708.P6763426043880572294

namespace A154708

/-- `4+a(n-2)` -/
def P6763426043880572294.Spec : Prop :=
  ∀ n, (P6763426043880572294.a n : ℤ) = A154708 (n + 1)

end A154708

/-! ## A154708.P2388625993446112610

`∑[4-a(n-1)]` with `a(0)=3`
-/

namespace A154708.P2388625993446112610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  4 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A154708.P2388625993446112610

namespace A154708

/-- `∑[4-a(n-1)]` -/
def P2388625993446112610.Spec : Prop :=
  ∀ n, P2388625993446112610.a n = A154708 (n + 1)

end A154708

/-! ## A154708.P15407804171291673532

`record[4-xor(2, 3-n)]`
-/

namespace A154708.P15407804171291673532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - Int.xor 2 (3 - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A154708.P15407804171291673532

namespace A154708

/-- `record[4-xor(2, 3-n)]` -/
def P15407804171291673532.Spec : Prop :=
  ∀ n, P15407804171291673532.a n = A154708 (n + 1)

end A154708

/-! ## A154708.P17858645459425584662

`and(n, -2)+3+n`
-/

namespace A154708.P17858645459425584662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-2) + 3 + (n : ℤ)

end

end A154708.P17858645459425584662

namespace A154708

/-- `and(n, -2)+3+n` -/
def P17858645459425584662.Spec : Prop :=
  ∀ n, P17858645459425584662.a n = A154708 (n + 1)

end A154708

/-! ## A154708.P1816639101270889499

`record[and(2, n)+3+n]`
-/

namespace A154708.P1816639101270889499
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 2 n + 3 + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A154708.P1816639101270889499

namespace A154708

/-- `record[and(2, n)+3+n]` -/
def P1816639101270889499.Spec : Prop :=
  ∀ n, (P1816639101270889499.a n : ℤ) = A154708 (n + 1)

end A154708

/-! ## A154708.P15963627204896286947

`comp[and(2, n)+n]+1`
-/

namespace A154708.P15963627204896286947
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 2 n + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1

end

end A154708.P15963627204896286947

namespace A154708

/-- `comp[and(2, n)+n]+1` -/
def P15963627204896286947.Spec : Prop :=
  ∀ n, (P15963627204896286947.a n : ℤ) = A154708 (n + 1)

end A154708

/-!
# A154709: Cubes such that cube-+2 are primes.

The programs for A154709, there is no canonical definition to state claims against.
-/

/-! ## A154709.P10033823226984346237

`A178227(n+1)+2`
-/

namespace A154709.P10033823226984346237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178227 (n + 1) + 2

end

end A154709.P10033823226984346237

/-! ## A154709.P15385876785639229455

`A178228(n+1)^3`
-/

namespace A154709.P15385876785639229455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178228 (n + 1) ^ 3

end

end A154709.P15385876785639229455

/-! ## A154709.P15231862942081698310

`A090121(n+2)^3`
-/

namespace A154709.P15231862942081698310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090121 (n + 2) ^ 3

end

end A154709.P15231862942081698310

/-! ## A154709.P14711372718336357701

`∩[A234240(n+1), A236334(n+1)]`
-/

namespace A154709.P14711372718336357701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234240 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236334 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154709.P14711372718336357701

/-! ## A154709.P6887423440988849018

`A000578(A178228(n+1))`
-/

namespace A154709.P6887423440988849018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A178228 (n + 1)).toNat

end

end A154709.P6887423440988849018

/-!
# A154710: Cubes such that cube-+3 are primes.

The programs for A154710, there is no canonical definition to state claims against.
-/

/-! ## A154710.P6926162050963876858

`A143904(n+1)^3`
-/

namespace A154710.P6926162050963876858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143904 (n + 1) ^ 3

end

end A154710.P6926162050963876858

/-! ## A154710.P4372910145938547872

`record[A143904(A008612(n))^3]`
-/

namespace A154710.P4372910145938547872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143904 (A008612 n).toNat ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A154710.P4372910145938547872

/-! ## A154710.P11532595473823018827

`record[A143904(A103221(n))^3]`
-/

namespace A154710.P11532595473823018827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143904 (A103221 n).toNat ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A154710.P11532595473823018827

/-! ## A154710.P17263130697319029295

`record[A143904(A133310(n))^3]`
-/

namespace A154710.P17263130697319029295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143904 (A133310 n).toNat ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A154710.P17263130697319029295

/-! ## A154710.P4441389124899674322

`A000578(A143904(n+1))`
-/

namespace A154710.P4441389124899674322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A143904 (n + 1)).toNat

end

end A154710.P4441389124899674322

/-!
# A154711: Squares such that square-+5 are primes.

The programs for A154711, there is no canonical definition to state claims against.
-/

/-! ## A154711.P16534504227681596223

`A176681(n+1)²`
-/

namespace A154711.P16534504227681596223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176681 (n + 1) ^ 2

end

end A154711.P16534504227681596223

/-! ## A154711.P16672921929673383820

`(6*A154712(n+1))²`
-/

namespace A154711.P16672921929673383820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * A154712 (n + 1)) ^ 2

end

end A154711.P16672921929673383820

/-! ## A154711.P17581104197061652353

`A016910(A154712(n+1))`
-/

namespace A154711.P17581104197061652353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016910 (A154712 (n + 1)).toNat

end

end A154711.P17581104197061652353

/-! ## A154711.P4250496760963623606

`record[A176681(A117910(n))²]`
-/

namespace A154711.P4250496760963623606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176681 (A117910 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A154711.P4250496760963623606

/-! ## A154711.P13984003115010176445

`record[A176681(A128227(n))²]`
-/

namespace A154711.P13984003115010176445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176681 (A128227 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A154711.P13984003115010176445

/-!
# A154712: (6*n)^2 = A154711.

The programs for A154712, there is no canonical definition to state claims against.
-/

/-! ## A154712.P15478312224750803929

`A176681(n+1)/6`
-/

namespace A154712.P15478312224750803929
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A176681 (n + 1) : ℚ) / 6

end

end A154712.P15478312224750803929

/-! ## A154712.P15740973948499735086

`A008615(A176681(n+1))`
-/

namespace A154712.P15740973948499735086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A176681 (n + 1)).toNat

end

end A154712.P15740973948499735086

/-! ## A154712.P17278143049697033679

`A008612(A176681(n+1)+1)`
-/

namespace A154712.P17278143049697033679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (A176681 (n + 1) + 1).toNat

end

end A154712.P17278143049697033679

/-! ## A154712.P14391711243825252635

`A103221(A176681(n+1)+1)`
-/

namespace A154712.P14391711243825252635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (A176681 (n + 1) + 1).toNat

end

end A154712.P14391711243825252635

/-! ## A154712.P17013371921218652798

`A097992(A176681(n+1)-1)`
-/

namespace A154712.P17013371921218652798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097992 (A176681 (n + 1) - 1).toNat

end

end A154712.P17013371921218652798

/-! ## A154712.P18042142629976601715

`A117910(A176681(n+1)-1)`
-/

namespace A154712.P18042142629976601715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117910 (A176681 (n + 1) - 1).toNat

end

end A154712.P18042142629976601715

/-! ## A154712.P14243524751870827182

`A154958(A176681(n+1)-1)`
-/

namespace A154712.P14243524751870827182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154958 (A176681 (n + 1) - 1).toNat

end

end A154712.P14243524751870827182

/-!
# A154713: Cubes such that cube-+5 are primes.

The programs for A154713, there is no canonical definition to state claims against.
-/

/-! ## A154713.P13055403746007106757

`A176684(n+1)^3`
-/

namespace A154713.P13055403746007106757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176684 (n + 1) ^ 3

end

end A154713.P13055403746007106757

/-! ## A154713.P14494744509609772357

`A176684(comp[2*n]-n)²*A176684(n+1)`
-/

namespace A154713.P14494744509609772357
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176684 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n - n) ^ 2 * A176684 (n + 1)

end

end A154713.P14494744509609772357

/-! ## A154713.P17803711384169660908

`(A176684(n+1)%A016946(n))²*A176684(n+1)%A016946(n)`
-/

namespace A154713.P17803711384169660908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A176684 (n + 1)) (A016946 n) ^ 2 * Int.tmod (A176684 (n + 1)) (A016946 n)

end

end A154713.P17803711384169660908

/-! ## A154713.P9755650596403582085

`A176684(A000027(n+1))²*A000027(A176684(n+1))`
-/

namespace A154713.P9755650596403582085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176684 (A000027 (n + 1)).toNat ^ 2 * A000027 (A176684 (n + 1)).toNat

end

end A154713.P9755650596403582085

/-! ## A154713.P4723935385399502408

`A000578(A176684(n+1))`
-/

namespace A154713.P4723935385399502408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A176684 (n + 1)).toNat

end

end A154713.P4723935385399502408

/-!
# A154716: Products of three consecutive happy primes A035497.

The programs for A154716, there is no canonical definition to state claims against.
-/

/-! ## A154716.P16255683965979859446

`A035497(n+1)*A035497(n+2)*A035497(n+3)`
-/

namespace A154716.P16255683965979859446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035497 (n + 1) * A035497 (n + 2) * A035497 (n + 3)

end

end A154716.P16255683965979859446

/-!
# A154720: Triangle read by rows in which row n lists 2n-1 terms: n, in the center of the row and all the pairs of noncomposite numbers equidistant to n, with 0's inserted, as shown below in the example.

The programs for A154720, there is no canonical definition to state claims against.
-/

/-! ## A154720.P4225311705990660824

`gcd(A154721(n+1), A154724(n+1))`
-/

namespace A154720.P4225311705990660824
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A154721 (n + 1)) (A154724 (n + 1))

end

end A154720.P4225311705990660824

/-! ## A154720.P15668716588350421486

`or(A154721(A000027(n+1)), A154724(n+1))`
-/

namespace A154720.P15668716588350421486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A154721 (A000027 (n + 1)).toNat) (A154724 (n + 1))

end

end A154720.P15668716588350421486

/-! ## A154720.P2063470359482554730

`A154721(n+1)+A154724(n+1)-A154725(n+1)`
-/

namespace A154720.P2063470359482554730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154721 (n + 1) + (A154724 (n + 1) - A154725 (n + 1))

end

end A154720.P2063470359482554730

/-! ## A154720.P441714540517224935

`or(A154721(n+1)%A000040(n+1), A154724(n+1))`
-/

namespace A154720.P441714540517224935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Int.tmod (A154721 (n + 1)) (A000040 (n + 1))) (A154724 (n + 1))

end

end A154720.P441714540517224935

/-! ## A154720.P3803616275514829227

`A286100(A005408(n))+A154721(n+1)`
-/

namespace A154720.P3803616275514829227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286100 (A005408 n).toNat + A154721 (n + 1)

end

end A154720.P3803616275514829227

/-!
# A154721: Triangle read by rows in which row n lists 2n-1 terms: The pairs of noncomposite numbers equidistant to n, with 0's inserted, as shown below in the example.

The programs for A154721, there is no canonical definition to state claims against.
-/

/-! ## A154721.P4225535867438416100

`A154720(n+1)%A008312(n)`
-/

namespace A154721.P4225535867438416100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A154720 (n + 1)) (A008312 n)

end

end A154721.P4225535867438416100

/-! ## A154721.P474208232155253907

`Δ[A056847(n)]*A154720(n+1)`
-/

namespace A154721.P474208232155253907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056847 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A154720 (n + 1)

end

end A154721.P474208232155253907

/-! ## A154721.P8719077979848956798

`char[A078358(n+1)]*A154720(n+1)`
-/

namespace A154721.P8719077979848956798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078358 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A154720 (n + 1)

end

end A154721.P8719077979848956798

/-! ## A154721.P4828419907201407248

`A154720(n+1)+A154725(n+1)-A154724(n+1)`
-/

namespace A154721.P4828419907201407248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154720 (n + 1) + (A154725 (n + 1) - A154724 (n + 1))

end

end A154721.P4828419907201407248

/-! ## A154721.P8700819406813443588

`A154720(n+1)-A286100(A005408(n))`
-/

namespace A154721.P8700819406813443588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154720 (n + 1) - A286100 (A005408 n).toNat

end

end A154721.P8700819406813443588

/-!
# A154722: Triangle read by rows in which row n lists: n, in the center of the row and the pairs of noncomposite numbers that are equidistant to n, as shown below in the example.

The programs for A154722, there is no canonical definition to state claims against.
-/

/-! ## A154722.P5378776312310560579

`A154720(lt[0, A154720(n+1)]+1)`
-/

namespace A154722.P5378776312310560579
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154720 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154720 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A154722.P5378776312310560579

/-! ## A154722.P6148615667850883743

`A154720(record[n%(A154720(n+1)+n)]+1)`
-/

namespace A154722.P6148615667850883743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A154720 (n + 1) + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154720 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1).toNat

end

end A154722.P6148615667850883743

/-!
# A154724: Triangle read by rows in which row n lists 2n-1 terms: n, in the center of the row and the pairs of prime numbers that are equidistant to n, with 0's inserted, as shown below in the example.

The programs for A154724, there is no canonical definition to state claims against.
-/

/-! ## A154724.P10531569987221125177

`A154720(n+1)+A154725(n+1)-A154721(n+1)`
-/

namespace A154724.P10531569987221125177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154720 (n + 1) + (A154725 (n + 1) - A154721 (n + 1))

end

end A154724.P10531569987221125177

/-! ## A154724.P14689264043666912996

`A154725(n+1)+A037213(A078358(n+1))`
-/

namespace A154724.P14689264043666912996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154725 (n + 1) + A037213 (A078358 (n + 1)).toNat

end

end A154724.P14689264043666912996

/-! ## A154724.P251641307390784898

`A286100(2*n+1)+A154725(n+1)`
-/

namespace A154724.P251641307390784898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286100 (2 * n + 1) + A154725 (n + 1)

end

end A154724.P251641307390784898

/-! ## A154724.P2630863198216472466

`or(A154725(n+1), A286100(A005408(n)))`
-/

namespace A154724.P2630863198216472466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A154725 (n + 1)) (A286100 (A005408 n).toNat)

end

end A154724.P2630863198216472466

/-! ## A154724.P2139506358835722778

`A286100(A005408(n))+A154721(n+1)%A025564(n)`
-/

namespace A154724.P2139506358835722778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286100 (A005408 n).toNat + Int.tmod (A154721 (n + 1)) (A025564 n)

end

end A154724.P2139506358835722778

/-!
# A154725: Triangle read by rows in which row n lists 2n-1 terms: The pairs of prime numbers that are equidistant to n, with 0's inserted, as shown below in the example.

The programs for A154725, there is no canonical definition to state claims against.
-/

/-! ## A154725.P17890251672042412

`A154724(n+1)%A008310(n)`
-/

namespace A154725.P17890251672042412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A154724 (n + 1)) (A008310 n)

end

end A154725.P17890251672042412

/-! ## A154725.P7968384885962636804

`A154721(n+1)%A025564(n)`
-/

namespace A154725.P7968384885962636804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A154721 (n + 1)) (A025564 n)

end

end A154725.P7968384885962636804

/-! ## A154725.P17122487017859353219

`A154720(n+1)%A034839(n)`
-/

namespace A154725.P17122487017859353219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A154720 (n + 1)) (A034839 n)

end

end A154725.P17122487017859353219

/-! ## A154725.P12235596760981770914

`lcm(A154721(n+1), A154724(n+1))`
-/

namespace A154725.P12235596760981770914
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A154721 (n + 1)) (A154724 (n + 1))

end

end A154725.P12235596760981770914

/-! ## A154725.P12528884132130439723

`A154721(n+1)+A154724(n+1)-A154720(n+1)`
-/

namespace A154725.P12528884132130439723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154721 (n + 1) + (A154724 (n + 1) - A154720 (n + 1))

end

end A154725.P12528884132130439723

/-!
# A154726: Triangle read by rows in which row n lists: n, in the center of the row and the pairs of prime numbers that are equidistant to n, as shown below in the example.

The programs for A154726, there is no canonical definition to state claims against.
-/

/-! ## A154726.P12755742193037526615

`A154724(record[n%(A154724(n+1)+n)]+1)`
-/

namespace A154726.P12755742193037526615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A154724 (n + 1) + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154724 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1).toNat

end

end A154726.P12755742193037526615

/-! ## A154726.P5084978857189438427

`A154724(lt[n/(n+1), A154724(n+1)]+1)`
-/

namespace A154726.P5084978857189438427
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (n + 1 : ℚ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154724 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154724 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n + 1)

end

end A154726.P5084978857189438427

/-!
# A154727: Triangle read by rows in which row n lists all the pairs of prime numbers that are equidistant from n, or only n if there is no such pair, as shown below in the example.

The programs for A154727, there is no canonical definition to state claims against.
-/

/-! ## A154727.P7415175277744194209

`A032741(lcm(2, A130625(n)))`
-/

namespace A154727.P7415175277744194209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (Int.lcm 2 (A130625 n))

end

end A154727.P7415175277744194209

/-! ## A154727.P3888406260030533879

`or(A001222(A056010(n)), A166333(n))`
-/

namespace A154727.P3888406260030533879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001222 (A056010 n).toNat) (A166333 n)

end

end A154727.P3888406260030533879

/-! ## A154727.P4944165311637674600

`A323075(n+1)-A122180(A022179(n))`
-/

namespace A154727.P4944165311637674600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323075 (n + 1) - A122180 (A022179 n).toNat

end

end A154727.P4944165311637674600

/-! ## A154727.P16030316924185436993

`A006530(A003320(n)*A057859(n+1))`
-/

namespace A154727.P16030316924185436993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A003320 n * A057859 (n + 1)).toNat

end

end A154727.P16030316924185436993

/-! ## A154727.P18147638007275047063

`A006530(A026549(n)*A057859(n+1))`
-/

namespace A154727.P18147638007275047063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A026549 n * A057859 (n + 1)).toNat

end

end A154727.P18147638007275047063

/-!
# A154728: Products of three consecutive primes of the form 6n+1 (see A002476).

The programs for A154728, the canonical program `A154728.P8684620148875109764` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154728 has offset 1).

The definition of A154728 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A154728.P13608989887891945362

`A002476(n+1)*A002476(n+2)*A002476(n+3)`
-/

namespace A154728.P13608989887891945362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1) * A002476 (n + 2) * A002476 (n + 3)

end

end A154728.P13608989887891945362

namespace A154728

/-- `A002476(n+1)*A002476(n+2)*A002476(n+3)` -/
def P13608989887891945362.Spec : Prop :=
  ∀ n, P13608989887891945362.a n = A154728 (n + 1)

end A154728

/-! ## A154728.P8684620148875109764

`A007645(n+2)*A007645(n+3)*A007645(n+4)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A154728

/-- `A007645(n+2)*A007645(n+3)*A007645(n+4)` -/
def P8684620148875109764.Spec : Prop :=
  ∀ n, P8684620148875109764.a n = A154728 (n + 1)

theorem P8684620148875109764.correct : P8684620148875109764.Spec := by
  intro n
  simp only [A154728, Nat.add_sub_cancel]

end A154728

/-! ## A154728.P2980759257718750431

`A123365(n+2)*A123365(n+3)*A123365(n+4)`
-/

namespace A154728.P2980759257718750431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123365 (n + 2) * A123365 (n + 3) * A123365 (n + 4)

end

end A154728.P2980759257718750431

namespace A154728

/-- `A123365(n+2)*A123365(n+3)*A123365(n+4)` -/
def P2980759257718750431.Spec : Prop :=
  ∀ n, P2980759257718750431.a n = A154728 (n + 1)

end A154728

/-! ## A154728.P12958191970305326815

`A045331(n+3)*A045331(n+4)*A045331(n+5)`
-/

namespace A154728.P12958191970305326815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045331 (n + 3) * A045331 (n + 4) * A045331 (n + 5)

end

end A154728.P12958191970305326815

namespace A154728

/-- `A045331(n+3)*A045331(n+4)*A045331(n+5)` -/
def P12958191970305326815.Spec : Prop :=
  ∀ n, P12958191970305326815.a n = A154728 (n + 1)

end A154728

/-! ## A154728.P2757526376355949202

`A095288(n+3)/A095288(n)`
-/

namespace A154728.P2757526376355949202
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A095288 (n + 3) : ℚ) / (A095288 n : ℚ)

end

end A154728.P2757526376355949202

namespace A154728

/-- `A095288(n+3)/A095288(n)` -/
def P2757526376355949202.Spec : Prop :=
  ∀ n, P2757526376355949202.a n = (A154728 (n + 1) : ℚ)

end A154728

/-!
# A154729: Products of three distinct primes of the form 6*k + 1.

The programs for A154729, the canonical program `A154729.P14889584261807949482` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154729 has offset 1).

The definition of A154729 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2014 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A154729.P10524507840898847929

`∩[A157347(n+1), A198775(n+1)]`
-/

namespace A154729.P10524507840898847929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157347 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198775 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154729.P10524507840898847929

namespace A154729

/-- `∩[A157347(n+1), A198775(n+1)]` -/
def P10524507840898847929.Spec : Prop :=
  ∀ n, (P10524507840898847929.a n : ℤ) = A154729 (n + 1)

end A154729

/-! ## A154729.P14889584261807949482

`∩[A157347(n+1), A373590(n+1)]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A154729

/-- `∩[A157347(n+1), A373590(n+1)]` -/
def P14889584261807949482.Spec : Prop :=
  ∀ n, (P14889584261807949482.a n : ℤ) = A154729 (n + 1)

theorem P14889584261807949482.correct : P14889584261807949482.Spec := by
  intro n
  simp only [A154729, Nat.add_sub_cancel]

end A154729

/-! ## A154729.P17280642570329422919

`∩[A157347(n+1), A353062(n+1)]`
-/

namespace A154729.P17280642570329422919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157347 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353062 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154729.P17280642570329422919

namespace A154729

/-- `∩[A157347(n+1), A353062(n+1)]` -/
def P17280642570329422919.Spec : Prop :=
  ∀ n, (P17280642570329422919.a n : ℤ) = A154729 (n + 1)

end A154729

/-! ## A154729.P6665955818820206062

`∩[A198775(n+1), A038513(n)]`
-/

namespace A154729.P6665955818820206062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198775 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038513 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154729.P6665955818820206062

namespace A154729

/-- `∩[A198775(n+1), A038513(n)]` -/
def P6665955818820206062.Spec : Prop :=
  ∀ n, (P6665955818820206062.a n : ℤ) = A154729 (n + 1)

end A154729

/-! ## A154729.P2334973146815395949

`filter[A157347(n+1), A070563(#)]`
-/

namespace A154729.P2334973146815395949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157347 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A070563 (f1 j).toNat = 1) n)

end

end A154729.P2334973146815395949

namespace A154729

/-- `filter[A157347(n+1), A070563(#)]` -/
def P2334973146815395949.Spec : Prop :=
  ∀ n, P2334973146815395949.a n = A154729 (n + 1)

end A154729

/-! ## A154729.P13039287531285948627

`filter[A157347(n+1), A353815(#)]`
-/

namespace A154729.P13039287531285948627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157347 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353815 (f1 j).toNat = 1) n)

end

end A154729.P13039287531285948627

namespace A154729

/-- `filter[A157347(n+1), A353815(#)]` -/
def P13039287531285948627.Spec : Prop :=
  ∀ n, P13039287531285948627.a n = A154729 (n + 1)

end A154729

/-! ## A154729.P16222632686206650136

`filter[A157347(n+1), A353816(#)]`
-/

namespace A154729.P16222632686206650136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157347 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353816 (f1 j).toNat = 1) n)

end

end A154729.P16222632686206650136

namespace A154729

/-- `filter[A157347(n+1), A353816(#)]` -/
def P16222632686206650136.Spec : Prop :=
  ∀ n, P16222632686206650136.a n = A154729 (n + 1)

end A154729

/-! ## A154729.P7803604026674234170

`filter[A198775(n+1), A354926(#)]`
-/

namespace A154729.P7803604026674234170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198775 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354926 (f1 j).toNat = 1) n)

end

end A154729.P7803604026674234170

namespace A154729

/-- `filter[A198775(n+1), A354926(#)]` -/
def P7803604026674234170.Spec : Prop :=
  ∀ n, P7803604026674234170.a n = A154729 (n + 1)

end A154729

/-! ## A154729.P944342675577804179

`filter[A198775(n+1), A358773(#)]`
-/

namespace A154729.P944342675577804179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198775 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358773 (f1 j).toNat = 1) n)

end

end A154729.P944342675577804179

namespace A154729

/-- `filter[A198775(n+1), A358773(#)]` -/
def P944342675577804179.Spec : Prop :=
  ∀ n, P944342675577804179.a n = A154729 (n + 1)

end A154729

/-! ## A154729.P5634568824784371035

`filter[A198775(n+1), A359377(#)]`
-/

namespace A154729.P5634568824784371035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198775 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359377 (f1 j).toNat = 1) n)

end

end A154729.P5634568824784371035

namespace A154729

/-- `filter[A198775(n+1), A359377(#)]` -/
def P5634568824784371035.Spec : Prop :=
  ∀ n, P5634568824784371035.a n = A154729 (n + 1)

end A154729

/-! ## A154729.P5140211802365104372

`filter[A198775(n+1), A369058(#)]`
-/

namespace A154729.P5140211802365104372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198775 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369058 (f1 j).toNat = 1) n)

end

end A154729.P5140211802365104372

namespace A154729

/-- `filter[A198775(n+1), A369058(#)]` -/
def P5140211802365104372.Spec : Prop :=
  ∀ n, P5140211802365104372.a n = A154729 (n + 1)

end A154729

/-! ## A154729.P5248605864690439801

`filter[A198775(n+1), A373154(#)]`
-/

namespace A154729.P5248605864690439801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198775 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373154 (f1 j).toNat = 1) n)

end

end A154729.P5248605864690439801

namespace A154729

/-- `filter[A198775(n+1), A373154(#)]` -/
def P5248605864690439801.Spec : Prop :=
  ∀ n, P5248605864690439801.a n = A154729 (n + 1)

end A154729

/-! ## A154729.P9342541953331856262

`filter[A198775(n+1), A373483(#)]`
-/

namespace A154729.P9342541953331856262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198775 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373483 (f1 j).toNat = 1) n)

end

end A154729.P9342541953331856262

namespace A154729

/-- `filter[A198775(n+1), A373483(#)]` -/
def P9342541953331856262.Spec : Prop :=
  ∀ n, P9342541953331856262.a n = A154729 (n + 1)

end A154729

/-! ## A154729.P2219269507841811941

`filter[A198775(n+1), A373491(#)]`
-/

namespace A154729.P2219269507841811941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198775 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373491 (f1 j).toNat = 1) n)

end

end A154729.P2219269507841811941

namespace A154729

/-- `filter[A198775(n+1), A373491(#)]` -/
def P2219269507841811941.Spec : Prop :=
  ∀ n, P2219269507841811941.a n = A154729 (n + 1)

end A154729

/-! ## A154729.P17376394761151963144

`filter[A373590(n+1), A354353(#)]`
-/

namespace A154729.P17376394761151963144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373590 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354353 (f1 j).toNat = 1) n)

end

end A154729.P17376394761151963144

namespace A154729

/-- `filter[A373590(n+1), A354353(#)]` -/
def P17376394761151963144.Spec : Prop :=
  ∀ n, P17376394761151963144.a n = A154729 (n + 1)

end A154729

/-! ## A154729.P2569736044220370187

`filter[A373590(n+1), A354926(#)]`
-/

namespace A154729.P2569736044220370187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373590 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354926 (f1 j).toNat = 1) n)

end

end A154729.P2569736044220370187

namespace A154729

/-- `filter[A373590(n+1), A354926(#)]` -/
def P2569736044220370187.Spec : Prop :=
  ∀ n, P2569736044220370187.a n = A154729 (n + 1)

end A154729

/-! ## A154729.P9442871604701181303

`filter[A373590(n+1), A359158(#)]`
-/

namespace A154729.P9442871604701181303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373590 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359158 (f1 j).toNat = 1) n)

end

end A154729.P9442871604701181303

namespace A154729

/-- `filter[A373590(n+1), A359158(#)]` -/
def P9442871604701181303.Spec : Prop :=
  ∀ n, P9442871604701181303.a n = A154729 (n + 1)

end A154729

/-! ## A154729.P4009794217056686749

`filter[A373590(n+1), A374130(#)]`
-/

namespace A154729.P4009794217056686749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373590 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374130 (f1 j).toNat = 1) n)

end

end A154729.P4009794217056686749

namespace A154729

/-- `filter[A373590(n+1), A374130(#)]` -/
def P4009794217056686749.Spec : Prop :=
  ∀ n, P4009794217056686749.a n = A154729 (n + 1)

end A154729

/-! ## A154729.P6201471652243712244

`filter[A373590(n+1), A374466(#)]`
-/

namespace A154729.P6201471652243712244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373590 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374466 (f1 j).toNat = 1) n)

end

end A154729.P6201471652243712244

namespace A154729

/-- `filter[A373590(n+1), A374466(#)]` -/
def P6201471652243712244.Spec : Prop :=
  ∀ n, P6201471652243712244.a n = A154729 (n + 1)

end A154729

/-!
# A154730: Decimal expansion of 1 minus the Copeland-Erdős constant.

The programs for A154730, there is no canonical definition to state claims against.
-/

/-! ## A154730.P10696586497976263522

`9-A033308(n)`
-/

namespace A154730.P10696586497976263522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A033308 n

end

end A154730.P10696586497976263522

/-! ## A154730.P12613144413161354675

`A061601(gcd(n, n+1)*A033308(n))`
-/

namespace A154730.P12613144413161354675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061601 ((Nat.gcd n (n + 1) : ℤ) * A033308 n).toNat

end

end A154730.P12613144413161354675

/-! ## A154730.P17848837022762346887

`9-Δ[A067112(n)]`
-/

namespace A154730.P17848837022762346887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067112 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - (f1 (n + 1) - f1 n)

end

end A154730.P17848837022762346887

/-! ## A154730.P8862703529854935719

`A061601(Δ[A067112(n)])`
-/

namespace A154730.P8862703529854935719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067112 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061601 (f1 (n + 1) - f1 n).toNat

end

end A154730.P8862703529854935719

/-! ## A154730.P1726476751570068118

`A109910(Δ[A067112(n)])`
-/

namespace A154730.P1726476751570068118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067112 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109910 (f1 (n + 1) - f1 n).toNat

end

end A154730.P1726476751570068118

/-! ## A154730.P5976458031471671896

`A001489(Δ[A067112(n)])+9`
-/

namespace A154730.P5976458031471671896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067112 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 (f1 (n + 1) - f1 n).toNat + 9

end

end A154730.P5976458031471671896

/-! ## A154730.P10434800920369248245

`9-(A067112(n+1)-A067112(n))`
-/

namespace A154730.P10434800920369248245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - (A067112 (n + 1) - A067112 n)

end

end A154730.P10434800920369248245

/-! ## A154730.P5115005666485820767

`A061601(A067112(n+1)-A067112(n))`
-/

namespace A154730.P5115005666485820767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061601 (A067112 (n + 1) - A067112 n).toNat

end

end A154730.P5115005666485820767

/-! ## A154730.P15781308807236753774

`A109910(A067112(n+1)-A067112(n))`
-/

namespace A154730.P15781308807236753774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109910 (A067112 (n + 1) - A067112 n).toNat

end

end A154730.P15781308807236753774

/-!
# A154731: Integers of the form k = m^3-m^2 such that k-+1 are primes.

The programs for A154731, there is no canonical definition to state claims against.
-/

/-! ## A154731.P16022963831603957097

`A045991(A111503(n+1))`
-/

namespace A154731.P16022963831603957097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045991 (A111503 (n + 1)).toNat

end

end A154731.P16022963831603957097

/-! ## A154731.P4521041652988977780

`A087908(A111503(n+1))+A054977(n+1)`
-/

namespace A154731.P4521041652988977780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087908 (A111503 (n + 1)).toNat + A054977 (n + 1)

end

end A154731.P4521041652988977780

/-! ## A154731.P16163831848501865629

`A045991(∩[A111501(n+1), A162293(n+1)])`
-/

namespace A154731.P16163831848501865629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111501 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162293 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045991 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A154731.P16163831848501865629

/-! ## A154731.P284556383767338064

`A087908(A111503(n+1))+A007318(∑[n])`
-/

namespace A154731.P284556383767338064
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087908 (A111503 (n + 1)).toNat + A007318 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A154731.P284556383767338064

/-! ## A154731.P16699227597551374570

`A111384(2*A111503(n+1))`
-/

namespace A154731.P16699227597551374570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111384 (2 * A111503 (n + 1)).toNat

end

end A154731.P16699227597551374570

/-!
# A154732: Integers k such that (k^3 + k^2) -+ 1 are primes.

The programs for A154732, there is no canonical definition to state claims against.
-/

/-! ## A154732.P5064599996609956279

`floor(root(A154733(n+1), 3))`
-/

namespace A154732.P5064599996609956279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A154733 (n + 1) : ℝ) ^ (1 / (3 : ℝ))⌋

end

end A154732.P5064599996609956279

/-! ## A154732.P2989990425260633711

`round(root(A154733(C(n+1, n)), 3))`
-/

namespace A154732.P2989990425260633711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A154733 (Nat.choose (n + 1) n) : ℝ) ^ (1 / (3 : ℝ)))

end

end A154732.P2989990425260633711

/-! ## A154732.P9832147576013246366

`∩[A119863(n+1), A125881(n+1)]`
-/

namespace A154732.P9832147576013246366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119863 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125881 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154732.P9832147576013246366

/-! ## A154732.P15729283611149417865

`round(root(A154733(n+1), 3))%A004733(n)`
-/

namespace A154732.P15729283611149417865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A154733 (n + 1) : ℝ) ^ (1 / (3 : ℝ)))) (A004733 n)

end

end A154732.P15729283611149417865

/-! ## A154732.P1370218489237078043

`round(root(A154733(n+1), 3))+n*A008683(2*(n+1)²)`
-/

namespace A154732.P1370218489237078043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A154733 (n + 1) : ℝ) ^ (1 / (3 : ℝ))) + (n : ℤ) * A008683 (2 * (n + 1) ^ 2)

end

end A154732.P1370218489237078043

/-!
# A154733: Integers of the form k = m^3+m^2 such that k-+1 are primes.

The programs for A154733, there is no canonical definition to state claims against.
-/

/-! ## A154733.P15768087272984458745

`A011379(A154732(n+1))`
-/

namespace A154733.P15768087272984458745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011379 (A154732 (n + 1)).toNat

end

end A154733.P15768087272984458745

/-! ## A154733.P8392966207357626873

`A011379(∩[A119863(n+1), A125881(n+1)])`
-/

namespace A154733.P8392966207357626873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119863 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125881 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011379 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A154733.P8392966207357626873

/-! ## A154733.P6271769810641816762

`∩[A258838(n+1), A011379(n)]`
-/

namespace A154733.P6271769810641816762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258838 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011379 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154733.P6271769810641816762

/-! ## A154733.P4706526896233260128

`p?[p?[(n+1)*n²+1]-2]+1`
-/

namespace A154733.P4706526896233260128
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * n ^ 2 + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1

end

end A154733.P4706526896233260128

/-! ## A154733.P6512502580985022190

`p?[A120479(n+1)-2]+1`
-/

namespace A154733.P6512502580985022190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120479 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1

end

end A154733.P6512502580985022190

/-!
# A154734: Define k(0) = 2 and k(m) = m^2-k(m-1) for m >= 1. This is a list of those terms k(m) for which k(m)+1 and k(m)-1 are both in A008578 (primes including 1).

The programs for A154734, there is no canonical definition to state claims against.
-/

/-! ## A154734.P5952379917766609308

`A167777(∑[∏{e}[n, #+1]]+6*C(n, 3))`
-/

namespace A154734.P5952379917766609308
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167777 (∑ j ∈ Finset.range (n + 1), f1 j + 6 * Nat.choose n 3)

end

end A154734.P5952379917766609308

/-!
# A154737: a(n) = floor(b(n)), where b(n) = n^b(n-1) - b(n-1) and b(0) = 2.

The programs for A154737, there is no canonical definition to state claims against.
-/

/-! ## A154737.P5883473140683609110

`A133058((a(n-1)+n+2)²)` with `a(0)=2, a(1)=-1`
-/

namespace A154737.P5883473140683609110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, -1] fun n a =>
  A133058 ((a (n - 1) + (n + 2 : ℤ)) ^ 2).toNat

end

end A154737.P5883473140683609110

/-!
# A154738: Decimal expansion of (log(640320^3 + 744)/Pi)^2.

The programs for A154738, there is no canonical definition to state claims against.
-/

/-! ## A154738.P9034031591278946810

`val(A003714(A301239(2*n+1)), A066180(3*n+5))`
-/

namespace A154738.P9034031591278946810
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A003714 (A301239 (2 * n + 1)).toNat).toNat (A066180 (3 * n + 5)).toNat

end

end A154738.P9034031591278946810

/-!
# A154741: Numerators of the convergents of the continued fraction for sqrt(1 - 1/sqrt(2)), the abscissa of the point of bisection of the arc of the unit lemniscate (x^2 + y^2)^2 = x^2 - y^2 in the first quadrant.

The programs for A154741, there is no canonical definition to state claims against.
-/

/-! ## A154741.P12682772272607825727

`A089843(A309302(n)+A000035(n))`
-/

namespace A154741.P12682772272607825727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089843 (A309302 n + A000035 n).toNat

end

end A154741.P12682772272607825727

/-!
# A154749: Numerators of the convergents of the continued fraction for sqrt(sqrt(2) - 1), the radius vector of the point of bisection of the arc of the unit lemniscate (x^2 + y^2)^2 = x^2 - y^2 in the first quadrant.

The programs for A154749, there is no canonical definition to state claims against.
-/

/-! ## A154749.P16879314250696409426

`A178334(xor(n+1, A148997(n)))`
-/

namespace A154749.P16879314250696409426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 (Int.xor (n + 1 : ℤ) (A148997 n)).toNat

end

end A154749.P16879314250696409426

/-! ## A154749.P9732838625853275822

`A178334(xor(n, A148997(n)-1))`
-/

namespace A154749.P9732838625853275822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 (Int.xor (n : ℤ) (A148997 n - 1)).toNat

end

end A154749.P9732838625853275822

/-! ## A154749.P7812467419441476154

`A178334(xor(1, xor(n, A148997(n))))`
-/

namespace A154749.P7812467419441476154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 (Int.xor 1 (Int.xor (n : ℤ) (A148997 n))).toNat

end

end A154749.P7812467419441476154

/-! ## A154749.P5656857480021041991

`A178334(xor(1, xor(n, A149005(n))))`
-/

namespace A154749.P5656857480021041991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 (Int.xor 1 (Int.xor (n : ℤ) (A149005 n))).toNat

end

end A154749.P5656857480021041991

/-! ## A154749.P1496133963802179593

`A178334(A001590(n)*A026644(n))`
-/

namespace A154749.P1496133963802179593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 (A001590 n * A026644 n).toNat

end

end A154749.P1496133963802179593

/-!
# A154753: Reduced period of the Fibonacci 3-step sequence A000073 mod prime(n).

The programs for A154753, there is no canonical definition to state claims against.
-/

/-! ## A154753.P15965488875595028075

`A046737(p?[comp[n²]])`
-/

namespace A154753.P15965488875595028075
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046737 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A154753.P15965488875595028075

/-! ## A154753.P15590153876443678925

`A046737(Δ[A007504(n)])`
-/

namespace A154753.P15590153876443678925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046737 (f1 (n + 1) - f1 n).toNat

end

end A154753.P15590153876443678925

/-! ## A154753.P9656506832645757942

`A046737(A000040(n+1))`
-/

namespace A154753.P9656506832645757942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046737 (A000040 (n + 1)).toNat

end

end A154753.P9656506832645757942

/-! ## A154753.P7298341623350052371

`A046737(A095320(n+1))`
-/

namespace A154753.P7298341623350052371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046737 (A095320 (n + 1)).toNat

end

end A154753.P7298341623350052371

/-! ## A154753.P1696488572667973188

`A046737(A216883(n+1))`
-/

namespace A154753.P1696488572667973188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046737 (A216883 (n + 1)).toNat

end

end A154753.P1696488572667973188

/-!
# A154754: Ratio of the period and the reduced period of the Fibonacci 3-step sequence A000073 mod prime(n).

The programs for A154754, there is no canonical definition to state claims against.
-/

/-! ## A154754.P1349967448097188396

`A106302(n+1)/A154753(n+1)`
-/

namespace A154754.P1349967448097188396
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A106302 (n + 1) : ℚ) / (A154753 (n + 1) : ℚ)

end

end A154754.P1349967448097188396

/-! ## A154754.P7073127522212729049

`A386236(A000040(n+1))`
-/

namespace A154754.P7073127522212729049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386236 (A000040 (n + 1)).toNat

end

end A154754.P7073127522212729049

/-! ## A154754.P13044199492414317191

`A386236(A001749(n+1))`
-/

namespace A154754.P13044199492414317191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386236 (A001749 (n + 1)).toNat

end

end A154754.P13044199492414317191

/-! ## A154754.P1683289842369107564

`A386236(A001750(n+1))`
-/

namespace A154754.P1683289842369107564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386236 (A001750 (n + 1)).toNat

end

end A154754.P1683289842369107564

/-! ## A154754.P14152196334458737368

`A386236(A006005(n+1))`
-/

namespace A154754.P14152196334458737368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386236 (A006005 (n + 1)).toNat

end

end A154754.P14152196334458737368

/-! ## A154754.P17570868040211291135

`A386236(A062876(n+1))`
-/

namespace A154754.P17570868040211291135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386236 (A062876 (n + 1)).toNat

end

end A154754.P17570868040211291135

/-! ## A154754.P17433849371961193155

`A386236(A063534(n+1))`
-/

namespace A154754.P17433849371961193155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386236 (A063534 (n + 1)).toNat

end

end A154754.P17433849371961193155

/-! ## A154754.P16191458472387302147

`A386236(A064161(n+1))`
-/

namespace A154754.P16191458472387302147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386236 (A064161 (n + 1)).toNat

end

end A154754.P16191458472387302147

/-! ## A154754.P16468284444433550658

`A386236(A072900(n+1))`
-/

namespace A154754.P16468284444433550658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386236 (A072900 (n + 1)).toNat

end

end A154754.P16468284444433550658

/-! ## A154754.P17726334147785195231

`A386236(A073582(n+1))`
-/

namespace A154754.P17726334147785195231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386236 (A073582 (n + 1)).toNat

end

end A154754.P17726334147785195231

/-! ## A154754.P16166461652805312761

`A386236(A100484(n+1))`
-/

namespace A154754.P16166461652805312761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386236 (A100484 (n + 1)).toNat

end

end A154754.P16166461652805312761

/-! ## A154754.P14001106807425332962

`A386236(A107620(n+1))`
-/

namespace A154754.P14001106807425332962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386236 (A107620 (n + 1)).toNat

end

end A154754.P14001106807425332962

/-! ## A154754.P16801351608766442447

`A386236(A142342(n+1))`
-/

namespace A154754.P16801351608766442447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386236 (A142342 (n + 1)).toNat

end

end A154754.P16801351608766442447

/-! ## A154754.P8976156982328044467

`A386236(A161847(n+1))`
-/

namespace A154754.P8976156982328044467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386236 (A161847 (n + 1)).toNat

end

end A154754.P8976156982328044467

/-! ## A154754.P5049041328857453862

`A106302(n+1)/A046737(A000040(n+1))`
-/

namespace A154754.P5049041328857453862
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A106302 (n + 1) : ℚ) / (A046737 (A000040 (n + 1)).toNat : ℚ)

end

end A154754.P5049041328857453862

/-! ## A154754.P596471804186926785

`A106302(n+1)/A046737(sqrt(A001248(n+1)))`
-/

namespace A154754.P596471804186926785
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A106302 (n + 1) : ℚ) / (A046737 (SequenceMachineLib.roundAway (Real.sqrt (A001248 (n + 1) : ℝ))).toNat : ℚ)

end

end A154754.P596471804186926785

/-! ## A154754.P5036178299114161854

`A106302(n+1)/A046737(record[A006530(n+2)])`
-/

namespace A154754.P5036178299114161854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A106302 (n + 1) : ℚ) / (A046737 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat : ℚ)

end

end A154754.P5036178299114161854

/-! ## A154754.P478842624779734861

`A106302(n+1)/A046737(record[A014963(n+2)])`
-/

namespace A154754.P478842624779734861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A106302 (n + 1) : ℚ) / (A046737 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat : ℚ)

end

end A154754.P478842624779734861

/-! ## A154754.P15893033829716134559

`A106302(n+1)/A046737(record[A020639(n+2)])`
-/

namespace A154754.P15893033829716134559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A106302 (n + 1) : ℚ) / (A046737 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat : ℚ)

end

end A154754.P15893033829716134559

/-!
# A154755: Primes p such that ratio in A154754 is 1.

The programs for A154755, there is no canonical definition to state claims against.
-/

/-! ## A154755.P11343946261110487050

`A000040(eq[1, A154754(n+1)]+1)`
-/

namespace A154755.P11343946261110487050
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154754 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A154755.P11343946261110487050

/-! ## A154755.P1344722491789159140

`p?[A154754(n+1)+A006093(n+1)]`
-/

namespace A154755.P1344722491789159140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154754 (n + 1) + A006093 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A154755.P1344722491789159140

/-! ## A154755.P1317410956302907291

`record[A000040(n+2-A154754(n+1))]`
-/

namespace A154755.P1317410956302907291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 ((n + 2 : ℤ) - A154754 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A154755.P1317410956302907291

/-! ## A154755.P14370507908236524940

`A000040(record[(n+1)/A154754(n+1)])`
-/

namespace A154755.P14370507908236524940
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A154754 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A154755.P14370507908236524940

/-! ## A154755.P8232220904448380466

`p?[A000040(n+1)*A154754(n+1)]`
-/

namespace A154755.P8232220904448380466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A154754 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A154755.P8232220904448380466

/-! ## A154755.P1873973765953187979

`p?[A008578(n+2)*A154754(n+1)]`
-/

namespace A154755.P1873973765953187979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2) * A154754 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A154755.P1873973765953187979

/-! ## A154755.P17055197593098236483

`A000040(record[root(n+1, A154754(n+1))])`
-/

namespace A154755.P17055197593098236483
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) ^ (1 / (A154754 (n + 1) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A154755.P17055197593098236483

/-!
# A154756: Primes p such that ratio in A154754 is 3.

The programs for A154756, there is no canonical definition to state claims against.
-/

/-! ## A154756.P11210866100956212164

`A045319(lt[1, A154754(n+1)])`
-/

namespace A154756.P11210866100956212164
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154754 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A154756.P11210866100956212164

/-! ## A154756.P15995931305386204401

`A045344(lt[1, A154754(n+1)])`
-/

namespace A154756.P15995931305386204401
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154754 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A154756.P15995931305386204401

/-! ## A154756.P11100797170744454547

`A065091(lt[1, A154754(n+1)])`
-/

namespace A154756.P11100797170744454547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154754 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A154756.P11100797170744454547

/-! ## A154756.P15799126062622114127

`A045319(eq[3, A154754(n+1)])`
-/

namespace A154756.P15799126062622114127
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154754 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A154756.P15799126062622114127

/-! ## A154756.P2831041694004812859

`A000040(eq[3, A154754(n+1)]+1)`
-/

namespace A154756.P2831041694004812859
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154754 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A154756.P2831041694004812859

/-!
# A154757: G.f. satisfies A(x) = Sum_{n>=0} A^n(x)^(n+1).

The programs for A154757, there is no canonical definition to state claims against.
-/

/-! ## A154757.P3102563389535428299

`A106614(A121687(n))+C(n, 6)`
-/

namespace A154757.P3102563389535428299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106614 (A121687 n).toNat + (Nat.choose n 6 : ℤ)

end

end A154757.P3102563389535428299

/-! ## A154757.P14553263006375936993

`A121687(n)+A011738(A000255(n))`
-/

namespace A154757.P14553263006375936993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121687 n + A011738 (A000255 n).toNat

end

end A154757.P14553263006375936993

/-! ## A154757.P2786721726024557013

`A028310(A121687(n)+A000579(n))`
-/

namespace A154757.P2786721726024557013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A121687 n + A000579 n).toNat

end

end A154757.P2786721726024557013

/-!
# A154758: Primes with one even digit.

The programs for A154758, there is no canonical definition to state claims against.
-/

/-! ## A154758.P16150419123050844901

`A000040(A154766(n+1))`
-/

namespace A154758.P16150419123050844901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A154766 (n + 1)).toNat

end

end A154758.P16150419123050844901

/-! ## A154758.P2026399785315719694

`p?[A275776(2*(n+1))]`
-/

namespace A154758.P2026399785315719694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275776 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A154758.P2026399785315719694

/-! ## A154758.P13306797341367846826

`filter[A275776(2*(n+1)), A010051(#)]`
-/

namespace A154758.P13306797341367846826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275776 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A154758.P13306797341367846826

/-! ## A154758.P18121413248615072068

`p?[n*A196563(n)]`
-/

namespace A154758.P18121413248615072068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A196563 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A154758.P18121413248615072068

/-! ## A154758.P4961852834231213120

`eq[A107463(n), A196563(n)]`
-/

namespace A154758.P4961852834231213120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107463 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196563 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A154758.P4961852834231213120

/-! ## A154758.P13205926755181003310

`eq[A196563(n), A335405(n)]`
-/

namespace A154758.P13205926755181003310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196563 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335405 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A154758.P13205926755181003310

/-! ## A154758.P8498021628737530547

`eq[A078898(n)², A196563(n)]`
-/

namespace A154758.P8498021628737530547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196563 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A154758.P8498021628737530547

/-! ## A154758.P6964946765740316197

`eq[2, A196563(n)+A003415(n)]`
-/

namespace A154758.P6964946765740316197
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196563 n + A003415 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A154758.P6964946765740316197

/-! ## A154758.P15295184989050358720

`eq[1, A105700(n)*A196563(n)]`
-/

namespace A154758.P15295184989050358720
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 n * A196563 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A154758.P15295184989050358720

/-! ## A154758.P16884438752037328983

`filter[A275776(2*(n+1)), A080339(#)]`
-/

namespace A154758.P16884438752037328983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275776 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A154758.P16884438752037328983

/-! ## A154758.P7450365100029698118

`p?[(n+1)*and(1, A272215(A272215(n+1)+1))]`
-/

namespace A154758.P7450365100029698118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * Int.land 1 (A272215 (A272215 (n + 1) + 1).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A154758.P7450365100029698118

/-! ## A154758.P1372262627138315624

`A000040(eq[1, A196563(A000040(n+1))]+1)`
-/

namespace A154758.P1372262627138315624
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196563 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A154758.P1372262627138315624

/-! ## A154758.P12551870074015921168

`eq[A196563(n), A309634(n+1)]`
-/

namespace A154758.P12551870074015921168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196563 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309634 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A154758.P12551870074015921168

/-! ## A154758.P1440704979037332281

`eq[1, A003415(n*A196563(n))]`
-/

namespace A154758.P1440704979037332281
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 ((n : ℤ) * A196563 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A154758.P1440704979037332281

/-! ## A154758.P15709141286658683907

`eq[1, A078898(n*A196563(n))]`
-/

namespace A154758.P15709141286658683907
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 ((n : ℤ) * A196563 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A154758.P15709141286658683907

/-! ## A154758.P11913953135200984019

`eq[A007650(n), A196563(n)]`
-/

namespace A154758.P11913953135200984019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007650 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196563 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A154758.P11913953135200984019

/-! ## A154758.P16747884155406905197

`eq[A196563(n), A309633(n+1)]`
-/

namespace A154758.P16747884155406905197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196563 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309633 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A154758.P16747884155406905197

/-!
# A154760: Final digit of n!! (A006882).

The programs for A154760, the canonical program `A154760.P8588793701505805072` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154760 has offset 0).

The definition of A154760 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A154760.P8588793701505805072

`(n*a(n-2))%10` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A154760

/-- `(n*a(n-2))%10` -/
def P8588793701505805072.Spec : Prop :=
  ∀ n, (P8588793701505805072.a n : ℤ) = A154760 n

theorem P8588793701505805072.correct : P8588793701505805072.Spec := by
  intro n
  simp only [A154760]

end A154760

/-!
# A154761: Primes without {1, 9} as digits.

The programs for A154761, there is no canonical definition to state claims against.
-/

/-! ## A154761.P9863505737880076023

`∩[A038603(n+1), A038617(n+1)]`
-/

namespace A154761.P9863505737880076023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038603 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038617 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154761.P9863505737880076023

/-! ## A154761.P263003766285375945

`∩[A038617(n+1), A307636(n+1)]`
-/

namespace A154761.P263003766285375945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038617 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307636 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154761.P263003766285375945

/-! ## A154761.P10908751925885422049

`∩[A038617(n+1), A132080(n+1)]`
-/

namespace A154761.P10908751925885422049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038617 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132080 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154761.P10908751925885422049

/-! ## A154761.P8221963053697493677

`∩[A038617(n+1), A383749(n+1)]`
-/

namespace A154761.P8221963053697493677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038617 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383749 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154761.P8221963053697493677

/-! ## A154761.P13229160128497019572

`∩[A038603(n+1), A039127(n+1)]`
-/

namespace A154761.P13229160128497019572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038603 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039127 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154761.P13229160128497019572

/-! ## A154761.P14350838582112378434

`∩[A038617(n+1), A039127(n+1)]`
-/

namespace A154761.P14350838582112378434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038617 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039127 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154761.P14350838582112378434

/-! ## A154761.P7802599034992173941

`∩[A038617(n+1), A052383(n+1)]`
-/

namespace A154761.P7802599034992173941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038617 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052383 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154761.P7802599034992173941

/-! ## A154761.P4238433859426232368

`eq[n, A222226(A056149(n))]`
-/

namespace A154761.P4238433859426232368
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222226 (A056149 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A154761.P4238433859426232368

/-! ## A154761.P2294883638614278784

`eq[n, A062584(A222226(n))]`
-/

namespace A154761.P2294883638614278784
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062584 (A222226 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A154761.P2294883638614278784

/-! ## A154761.P17114661437794175554

`eq[A064502(n), A222226(n)]`
-/

namespace A154761.P17114661437794175554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064502 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222226 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A154761.P17114661437794175554

/-! ## A154761.P8140360454055669653

`eq[A084413(n), A222226(n)]`
-/

namespace A154761.P8140360454055669653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084413 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222226 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A154761.P8140360454055669653

/-! ## A154761.P14106188099255624072

`eq[A222226(n), A272476(n)]`
-/

namespace A154761.P14106188099255624072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222226 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272476 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A154761.P14106188099255624072

/-! ## A154761.P10330715076215411051

`record[A004184(p?[A004176(n)])]`
-/

namespace A154761.P10330715076215411051
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004176 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004184 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A154761.P10330715076215411051

/-! ## A154761.P97081510360020793

`eq[A038700(n+1), A222226(n)]`
-/

namespace A154761.P97081510360020793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038700 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222226 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A154761.P97081510360020793

/-! ## A154761.P13097514069349521731

`eq[A057637(n+1), A222226(n)]`
-/

namespace A154761.P13097514069349521731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057637 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222226 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A154761.P13097514069349521731

/-! ## A154761.P13069079764298238527

`eq[A093868(n+1), A222226(n)]`
-/

namespace A154761.P13069079764298238527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093868 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222226 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A154761.P13069079764298238527

/-! ## A154761.P10175746915287299657

`∩[A038603(n+1), A007095(n)]`
-/

namespace A154761.P10175746915287299657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038603 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154761.P10175746915287299657

/-! ## A154761.P9285249779422560056

`∩[A037479(n+1), A038603(n+1)]`
-/

namespace A154761.P9285249779422560056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037479 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038603 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154761.P9285249779422560056

/-!
# A154763: Primes such that number of decimal digits in {4, 6, 8} is greater than the number of digits in {3, 5, 7}.

The programs for A154763, there is no canonical definition to state claims against.
-/

/-! ## A154763.P15900683715163513537

`A216815(lt[gcd(2, A052451(n+1)), 2])`
-/

namespace A154763.P15900683715163513537
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A052451 (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216815 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A154763.P15900683715163513537

/-! ## A154763.P5971522385013154728

`p?[A154318(∑[A085398(n+1)])]`
-/

namespace A154763.P5971522385013154728
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085398 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154318 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A154763.P5971522385013154728

/-!
# A154764: Primes with exactly one odd decimal digit.

The programs for A154764, there is no canonical definition to state claims against.
-/

/-! ## A154764.P11365885522522798440

`A068690(n+2)`
-/

namespace A154764.P11365885522522798440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068690 (n + 2)

end

end A154764.P11365885522522798440

/-! ## A154764.P14945396886307934609

`p?[A014263(n+1)+1]`
-/

namespace A154764.P14945396886307934609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014263 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A154764.P14945396886307934609

/-! ## A154764.P4521385204594062340

`p?[2*A007091(n)+1]`
-/

namespace A154764.P4521385204594062340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007091 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A154764.P4521385204594062340

/-! ## A154764.P10150391919213853354

`p?[A024657(n+3)]`
-/

namespace A154764.P10150391919213853354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024657 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A154764.P10150391919213853354

/-! ## A154764.P16175132484922300544

`p?[or(1, A024657(2*n))]`
-/

namespace A154764.P16175132484922300544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A024657 (2 * n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A154764.P16175132484922300544

/-! ## A154764.P17195114369729191057

`∩[A296922(n+1), A024657(n)]`
-/

namespace A154764.P17195114369729191057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296922 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024657 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154764.P17195114369729191057

/-! ## A154764.P8681879352580982575

`∩[A030475(n+1), A296922(n+1)]`
-/

namespace A154764.P8681879352580982575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030475 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296922 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154764.P8681879352580982575

/-! ## A154764.P3187174128357220341

`∩[A119450(n+1), A024657(n)]`
-/

namespace A154764.P3187174128357220341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119450 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024657 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154764.P3187174128357220341

/-! ## A154764.P4370209458506026627

`p?[A242367(n+3)]`
-/

namespace A154764.P4370209458506026627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242367 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A154764.P4370209458506026627

/-! ## A154764.P6639519852001946585

`∩[A065091(n+1), A024657(n)]`
-/

namespace A154764.P6639519852001946585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024657 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154764.P6639519852001946585

/-! ## A154764.P12692052088563904437

`∩[A261456(n+1), A024657(n)]`
-/

namespace A154764.P12692052088563904437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261456 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024657 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154764.P12692052088563904437

/-! ## A154764.P7463801755045652154

`filter[A024657(2*n+1), A010051(#)]`
-/

namespace A154764.P7463801755045652154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024657 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A154764.P7463801755045652154

/-! ## A154764.P1094938197365870089

`filter[A024657(2*n+1), A379969(#)]`
-/

namespace A154764.P1094938197365870089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024657 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379969 (f1 j).toNat = 1) n)

end

end A154764.P1094938197365870089

/-! ## A154764.P5154238226014770267

`∩[A065091(n+1), A242367(n+1)]`
-/

namespace A154764.P5154238226014770267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242367 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154764.P5154238226014770267

/-! ## A154764.P17815997639788337062

`∩[A119450(n+1), A242367(n+1)]`
-/

namespace A154764.P17815997639788337062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119450 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242367 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154764.P17815997639788337062

/-! ## A154764.P13254506266288356266

`∩[A242367(n+1), A261456(n+1)]`
-/

namespace A154764.P13254506266288356266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242367 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261456 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154764.P13254506266288356266

/-! ## A154764.P13981932335171465116

`∩[A242367(n+1), A296922(n+1)]`
-/

namespace A154764.P13981932335171465116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242367 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296922 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154764.P13981932335171465116

/-! ## A154764.P9261843919244236059

`∩[A242367(n+1), A351398(n+1)]`
-/

namespace A154764.P9261843919244236059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242367 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351398 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154764.P9261843919244236059

/-! ## A154764.P13065150873866043557

`filter[A024657(2*n+1), A323153(#)]`
-/

namespace A154764.P13065150873866043557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024657 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A154764.P13065150873866043557

/-! ## A154764.P11252171981228214701

`filter[A024657(2*n+1), A327861(#)]`
-/

namespace A154764.P11252171981228214701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024657 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A327861 (f1 j).toNat = 1) n)

end

end A154764.P11252171981228214701

/-!
# A154765: Primes with the same number of even decimal digits and prime digits.

The programs for A154765, the canonical program `A154765.P4283391011367662765` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154765 has offset 1).

The definition of A154765 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 297 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A154765.P2643537833671504836

`p?[eq[A193238(n), A196563(n)]]`
-/

namespace A154765.P2643537833671504836
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193238 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196563 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A154765.P2643537833671504836

namespace A154765

/-- `p?[eq[A193238(n), A196563(n)]]` -/
def P2643537833671504836.Spec : Prop :=
  ∀ n, (P2643537833671504836.a n : ℤ) = A154765 (n + 1)

end A154765

/-! ## A154765.P4283391011367662765

`p?[eq[A196564(n), A276729(n)]]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A154765

/-- `p?[eq[A196564(n), A276729(n)]]` -/
def P4283391011367662765.Spec : Prop :=
  ∀ n, (P4283391011367662765.a n : ℤ) = A154765 (n + 1)

theorem P4283391011367662765.correct : P4283391011367662765.Spec := by
  intro n
  simp only [A154765, Nat.add_sub_cancel]

end A154765

/-! ## A154765.P11529896856758656099

`A000040(A154315(n+1))`
-/

namespace A154765.P11529896856758656099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A154315 (n + 1)).toNat

end

end A154765.P11529896856758656099

namespace A154765

/-- `A000040(A154315(n+1))` -/
def P11529896856758656099.Spec : Prop :=
  ∀ n, P11529896856758656099.a n = A154765 (n + 1)

end A154765

/-! ## A154765.P4543528728756601912

`A008578(A154315(n+1)+1)`
-/

namespace A154765.P4543528728756601912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A154315 (n + 1) + 1).toNat

end

end A154765.P4543528728756601912

namespace A154765

/-- `A008578(A154315(n+1)+1)` -/
def P4543528728756601912.Spec : Prop :=
  ∀ n, P4543528728756601912.a n = A154765 (n + 1)

end A154765

/-! ## A154765.P2909821430239112053

`A158611(A154315(n+1)+2)`
-/

namespace A154765.P2909821430239112053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (A154315 (n + 1) + 2).toNat

end

end A154765.P2909821430239112053

namespace A154765

/-- `A158611(A154315(n+1)+2)` -/
def P2909821430239112053.Spec : Prop :=
  ∀ n, P2909821430239112053.a n = A154765 (n + 1)

end A154765

/-! ## A154765.P5096099860968102899

`A073846(2*A154315(n+1))`
-/

namespace A154765.P5096099860968102899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (2 * A154315 (n + 1)).toNat

end

end A154765.P5096099860968102899

namespace A154765

/-- `A073846(2*A154315(n+1))` -/
def P5096099860968102899.Spec : Prop :=
  ∀ n, P5096099860968102899.a n = A154765 (n + 1)

end A154765

/-! ## A154765.P6774354497191783584

`∑{d}[A154315(n+1), A007444(#)]`
-/

namespace A154765.P6774354497191783584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154315 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007444 d

end

end A154765.P6774354497191783584

namespace A154765

/-- `∑{d}[A154315(n+1), A007444(#)]` -/
def P6774354497191783584.Spec : Prop :=
  ∀ n, P6774354497191783584.a n = A154765 (n + 1)

end A154765

/-!
# A154766: Numbers k with exactly one even decimal digit in prime(k).

The programs for A154766, there is no canonical definition to state claims against.
-/

/-! ## A154766.P14660204501672613031

`A000720(A154758(n+1))`
-/

namespace A154766.P14660204501672613031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A154758 (n + 1)).toNat

end

end A154766.P14660204501672613031

/-! ## A154766.P10017231680251123572

`A003963(p?[A154758(n+1)])`
-/

namespace A154766.P10017231680251123572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154758 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A154766.P10017231680251123572

/-! ## A154766.P1609670993547801836

`A026233(p?[A154758(n+1)])`
-/

namespace A154766.P1609670993547801836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154758 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026233 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A154766.P1609670993547801836

/-! ## A154766.P178526112295439747

`A049084(p?[A154758(n+1)])`
-/

namespace A154766.P178526112295439747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154758 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A154766.P178526112295439747

/-! ## A154766.P952889924046572272

`A056239(p?[A154758(n+1)])`
-/

namespace A154766.P952889924046572272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154758 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A154766.P952889924046572272

/-! ## A154766.P8753352479684841989

`A000720(p?[n*A196563(n)])`
-/

namespace A154766.P8753352479684841989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A196563 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A154766.P8753352479684841989

/-! ## A154766.P16873914003598059864

`eq[1, A196563(A008578(n+1))]`
-/

namespace A154766.P16873914003598059864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196563 (A008578 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A154766.P16873914003598059864

/-! ## A154766.P15166519508924543199

`eq[1, A196563(A000040(n+1))]+1`
-/

namespace A154766.P15166519508924543199
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196563 (A000040 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A154766.P15166519508924543199

/-! ## A154766.P7378051479216586475

`A003963(2*A154758(n+1))`
-/

namespace A154766.P7378051479216586475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (2 * A154758 (n + 1)).toNat

end

end A154766.P7378051479216586475

/-! ## A154766.P12484129357206718418

`A003963(lcm(2, A154758(n+1)))`
-/

namespace A154766.P12484129357206718418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (Int.lcm 2 (A154758 (n + 1)))

end

end A154766.P12484129357206718418

/-!
# A154767: Primes with even largest digit.

The programs for A154767, there is no canonical definition to state claims against.
-/

/-! ## A154767.P10721447740370626413

`p?[A040976(n+1)+A020639(A028905(n+1))]`
-/

namespace A154767.P10721447740370626413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1) + A020639 (A028905 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A154767.P10721447740370626413

/-! ## A154767.P13705103249963899886

`p?[A006093(n+1)+A000034(A028905(n+1))]`
-/

namespace A154767.P13705103249963899886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) + A000034 (A028905 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A154767.P13705103249963899886

/-! ## A154767.P8180929289981974821

`p?[A000040(n+1)*A000034(A028905(n+1))]`
-/

namespace A154767.P8180929289981974821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A000034 (A028905 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A154767.P8180929289981974821

/-! ## A154767.P761153874455633254

`p?[A000034(A028905(n+1))*A008578(n+2)]`
-/

namespace A154767.P761153874455633254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A028905 (n + 1)).toNat * A008578 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A154767.P761153874455633254

/-! ## A154767.P8955734146750799439

`p?[n*A091090(A004185(n))]`
-/

namespace A154767.P8955734146750799439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A091090 (A004185 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A154767.P8955734146750799439

/-!
# A154770: a(n+1) = A154771(a(n)) = sum of all distinct "valid substrings" of a(n); a(1)=10 (least nontrivial choice).

The programs for A154770, there is no canonical definition to state claims against.
-/

/-! ## A154770.P18287274455972529989

`A154771(a(n-1))` with `a(0)=10`
-/

namespace A154770.P18287274455972529989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [10] fun n a =>
  A154771 (a (n - 1)).toNat

end

end A154770.P18287274455972529989

/-! ## A154770.P12388366019787533968

`lt[A120229(n+1), 10]+10`
-/

namespace A154770.P12388366019787533968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120229 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 10

end

end A154770.P12388366019787533968

/-!
# A154771: Sum of all numbers that appear as substring of n, written in decimal system.

The programs for A154771, there is no canonical definition to state claims against.
-/

/-! ## A154771.P5240189321888646989

`n+A154781(n)`
-/

namespace A154771.P5240189321888646989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) + A154781 n

end

end A154771.P5240189321888646989

/-! ## A154771.P11965078199188150478

`A154781(n)-A001489(n)`
-/

namespace A154771.P11965078199188150478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154781 n - A001489 n

end

end A154771.P11965078199188150478

/-! ## A154771.P13938225636422343172

`A005843(n)-(n-A154781(n))`
-/

namespace A154771.P13938225636422343172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n - ((n : ℤ) - A154781 n)

end

end A154771.P13938225636422343172

/-!
# A154772: Numbers m such that 180 m^2 is the average of a twin prime pair.

The programs for A154772, there is no canonical definition to state claims against.
-/

/-! ## A154772.P9349894572279586305

`sqrt(A154672(n+1)/180)`
-/

namespace A154772.P9349894572279586305
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((A154672 (n + 1) : ℚ) / 180 : ℝ)

end

end A154772.P9349894572279586305

/-! ## A154772.P46890143632405830

`A000188(A154672(n+1)/90)`
-/

namespace A154772.P46890143632405830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (SequenceMachineLib.roundAway ((A154672 (n + 1) : ℚ) / 90)).toNat

end

end A154772.P46890143632405830

/-! ## A154772.P11965156636812920321

`A002260(A154672(n+1)/90)`
-/

namespace A154772.P11965156636812920321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (SequenceMachineLib.roundAway ((A154672 (n + 1) : ℚ) / 90)).toNat

end

end A154772.P11965156636812920321

/-! ## A154772.P2773131343260436891

`A002262(A154672(n+1)/90)`
-/

namespace A154772.P2773131343260436891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (SequenceMachineLib.roundAway ((A154672 (n + 1) : ℚ) / 90)).toNat

end

end A154772.P2773131343260436891

/-! ## A154772.P9752388744839266151

`A193592(A154672(n+1)/90)`
-/

namespace A154772.P9752388744839266151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 (SequenceMachineLib.roundAway ((A154672 (n + 1) : ℚ) / 90)).toNat

end

end A154772.P9752388744839266151

/-!
# A154773: Numbers n such that 252n^2 is the average of a twin prime pair.

The programs for A154773, there is no canonical definition to state claims against.
-/

/-! ## A154773.P12998482289995418984

`sqrt(A154673(n+1)/252)`
-/

namespace A154773.P12998482289995418984
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((A154673 (n + 1) : ℚ) / 252 : ℝ)

end

end A154773.P12998482289995418984

/-!
# A154775: Numbers k such that 13*(6*k)^2 is the average of a twin prime pair.

The programs for A154775, there is no canonical definition to state claims against.
-/

/-! ## A154775.P18267148128762409958

`sqrt(A154675(n+1)/468)`
-/

namespace A154775.P18267148128762409958
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((A154675 (n + 1) : ℚ) / 468 : ℝ)

end

end A154775.P18267148128762409958

/-!
# A154777: Numbers of the form x^2 + 2*y^2 with positive integers x and y.

The programs for A154777, the canonical program `A154777.P4882271636205647765` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154777 has offset 1).

The definition of A154777 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2423 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A154777.P916053279885375658

`lt[2, A033715(n)]`
-/

namespace A154777.P916053279885375658
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033715 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A154777.P916053279885375658

namespace A154777

/-- `lt[2, A033715(n)]` -/
def P916053279885375658.Spec : Prop :=
  ∀ n, (P916053279885375658.a n : ℤ) = A154777 (n + 1)

end A154777

/-! ## A154777.P4426794085091239522

`lt[2, abs(A082564(n))]`
-/

namespace A154777.P4426794085091239522
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A082564 n|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A154777.P4426794085091239522

namespace A154777

/-- `lt[2, abs(A082564(n))]` -/
def P4426794085091239522.Spec : Prop :=
  ∀ n, (P4426794085091239522.a n : ℤ) = A154777 (n + 1)

end A154777

/-! ## A154777.P13994562900402868254

`lt[2, abs(A139093(n))]`
-/

namespace A154777.P13994562900402868254
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A139093 n|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A154777.P13994562900402868254

namespace A154777

/-- `lt[2, abs(A139093(n))]` -/
def P13994562900402868254.Spec : Prop :=
  ∀ n, (P13994562900402868254.a n : ℤ) = A154777 (n + 1)

end A154777

/-! ## A154777.P16196450018164849906

`lt[4, A133692(n)²]`
-/

namespace A154777.P16196450018164849906
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133692 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A154777.P16196450018164849906

namespace A154777

/-- `lt[4, A133692(n)²]` -/
def P16196450018164849906.Spec : Prop :=
  ∀ n, (P16196450018164849906.a n : ℤ) = A154777 (n + 1)

end A154777

/-! ## A154777.P13464536209259227537

`lt[1, A002325(n+1)]+1`
-/

namespace A154777.P13464536209259227537
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002325 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A154777.P13464536209259227537

namespace A154777

/-- `lt[1, A002325(n+1)]+1` -/
def P13464536209259227537.Spec : Prop :=
  ∀ n, (P13464536209259227537.a n : ℤ) = A154777 (n + 1)

end A154777

/-! ## A154777.P12988971870608502612

`lt[1, A133693(n+1)²]+1`
-/

namespace A154777.P12988971870608502612
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133693 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A154777.P12988971870608502612

namespace A154777

/-- `lt[1, A133693(n+1)²]+1` -/
def P12988971870608502612.Spec : Prop :=
  ∀ n, (P12988971870608502612.a n : ℤ) = A154777 (n + 1)

end A154777

/-! ## A154777.P5879039955048443792

`lt[1, A133693(A028310(n))²]`
-/

namespace A154777.P5879039955048443792
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133693 (A028310 n).toNat ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A154777.P5879039955048443792

namespace A154777

/-- `lt[1, A133693(A028310(n))²]` -/
def P5879039955048443792.Spec : Prop :=
  ∀ n, (P5879039955048443792.a n : ℤ) = A154777 (n + 1)

end A154777

/-! ## A154777.P14825997575023034213

`eq[1, A002325(a(A002325(n)))]` with `a(0)=3, a(1)=3`
-/

namespace A154777.P14825997575023034213
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3, 3] fun n f2 =>
  A002325 (f2 (A002325 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A154777.P14825997575023034213

namespace A154777

/-- `eq[1, A002325(a(A002325(n)))]` -/
def P14825997575023034213.Spec : Prop :=
  ∀ n, (P14825997575023034213.a n : ℤ) = A154777 (n + 1)

end A154777

/-! ## A154777.P8014846384936986562

`eq[A091247(A033715(n)), A158388(n)]`
-/

namespace A154777.P8014846384936986562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091247 (A033715 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A154777.P8014846384936986562

namespace A154777

/-- `eq[A091247(A033715(n)), A158388(n)]` -/
def P8014846384936986562.Spec : Prop :=
  ∀ n, (P8014846384936986562.a n : ℤ) = A154777 (n + 1)

end A154777

/-! ## A154777.P12650766183050996281

`eq[A261143(A033715(n))², A261143(n)]`
-/

namespace A154777.P12650766183050996281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261143 (A033715 n).toNat ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261143 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A154777.P12650766183050996281

namespace A154777

/-- `eq[A261143(A033715(n))², A261143(n)]` -/
def P12650766183050996281.Spec : Prop :=
  ∀ n, (P12650766183050996281.a n : ℤ) = A154777 (n + 1)

end A154777

/-! ## A154777.P4882271636205647765

`eq[1, char[A338432(n+1)]]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A154777

/-- `eq[1, char[A338432(n+1)]]` -/
def P4882271636205647765.Spec : Prop :=
  ∀ n, (P4882271636205647765.a n : ℤ) = A154777 (n + 1)

theorem P4882271636205647765.correct : P4882271636205647765.Spec := by
  intro n
  simp only [A154777, Nat.add_sub_cancel]

end A154777

/-! ## A154777.P2101281498185035978

`lt[2, A133692(2*n)]`
-/

namespace A154777.P2101281498185035978
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133692 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A154777.P2101281498185035978

namespace A154777

/-- `lt[2, A133692(2*n)]` -/
def P2101281498185035978.Spec : Prop :=
  ∀ n, (P2101281498185035978.a n : ℤ) = A154777 (n + 1)

end A154777

/-! ## A154777.P8669362686036067174

`lt[4, A082564(2*n)²]`
-/

namespace A154777.P8669362686036067174
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082564 (2 * n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A154777.P8669362686036067174

namespace A154777

/-- `lt[4, A082564(2*n)²]` -/
def P8669362686036067174.Spec : Prop :=
  ∀ n, (P8669362686036067174.a n : ℤ) = A154777 (n + 1)

end A154777

/-! ## A154777.P18211482393642953541

`lt[1, A129134(n+1)²]+1`
-/

namespace A154777.P18211482393642953541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129134 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A154777.P18211482393642953541

namespace A154777

/-- `lt[1, A129134(n+1)²]+1` -/
def P18211482393642953541.Spec : Prop :=
  ∀ n, (P18211482393642953541.a n : ℤ) = A154777 (n + 1)

end A154777

/-! ## A154777.P6738760541698791537

`lt[1, A133692(A005843(n))-1]`
-/

namespace A154777.P6738760541698791537
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133692 (A005843 n).toNat - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A154777.P6738760541698791537

namespace A154777

/-- `lt[1, A133692(A005843(n))-1]` -/
def P6738760541698791537.Spec : Prop :=
  ∀ n, (P6738760541698791537.a n : ℤ) = A154777 (n + 1)

end A154777

/-! ## A154777.P15210853933566610586

`lt[2, A028572(2*n)]/2`
-/

namespace A154777.P15210853933566610586
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028572 (2 * n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n : ℚ) / 2

end

end A154777.P15210853933566610586

namespace A154777

/-- `lt[2, A028572(2*n)]/2` -/
def P15210853933566610586.Spec : Prop :=
  ∀ n, P15210853933566610586.a n = (A154777 (n + 1) : ℚ)

end A154777

/-! ## A154777.P4888013030442365788

`lt[2, A139093(2*n)]/2`
-/

namespace A154777.P4888013030442365788
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139093 (2 * n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n : ℚ) / 2

end

end A154777.P4888013030442365788

namespace A154777

/-- `lt[2, A139093(2*n)]/2` -/
def P4888013030442365788.Spec : Prop :=
  ∀ n, P4888013030442365788.a n = (A154777 (n + 1) : ℚ)

end A154777

/-! ## A154777.P13407253821890731153

`lt[2, A226225(2*n)]/2`
-/

namespace A154777.P13407253821890731153
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226225 (2 * n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n : ℚ) / 2

end

end A154777.P13407253821890731153

namespace A154777

/-- `lt[2, A226225(2*n)]/2` -/
def P13407253821890731153.Spec : Prop :=
  ∀ n, P13407253821890731153.a n = (A154777 (n + 1) : ℚ)

end A154777

/-! ## A154777.P559894901269652877

`lt[2, A242609(2*n)]/2`
-/

namespace A154777.P559894901269652877
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242609 (2 * n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n : ℚ) / 2

end

end A154777.P559894901269652877

namespace A154777

/-- `lt[2, A242609(2*n)]/2` -/
def P559894901269652877.Spec : Prop :=
  ∀ n, P559894901269652877.a n = (A154777 (n + 1) : ℚ)

end A154777

/-! ## A154777.P8777570739747163765

`lt[1, A129134(A004277(n))²]`
-/

namespace A154777.P8777570739747163765
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129134 (A004277 n).toNat ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A154777.P8777570739747163765

namespace A154777

/-- `lt[1, A129134(A004277(n))²]` -/
def P8777570739747163765.Spec : Prop :=
  ∀ n, (P8777570739747163765.a n : ℤ) = A154777 (n + 1)

end A154777

/-!
# A154778: Numbers of the form a^2 + 5b^2 with positive integers a,b.

The programs for A154778, the canonical program `A154778.P14853017560092768042` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154778 has offset 1).

The definition of A154778 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1905 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A154778.P7128768103476342371

`lt[2, A033718(n)]`
-/

namespace A154778.P7128768103476342371
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033718 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A154778.P7128768103476342371

namespace A154778

/-- `lt[2, A033718(n)]` -/
def P7128768103476342371.Spec : Prop :=
  ∀ n, (P7128768103476342371.a n : ℤ) = A154778 (n + 1)

end A154778

/-! ## A154778.P14865283921819040023

`lt[0, A216279(n+1)]+1`
-/

namespace A154778.P14865283921819040023
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216279 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A154778.P14865283921819040023

namespace A154778

/-- `lt[0, A216279(n+1)]+1` -/
def P14865283921819040023.Spec : Prop :=
  ∀ n, (P14865283921819040023.a n : ℤ) = A154778 (n + 1)

end A154778

/-! ## A154778.P14853017560092768042

`lt[1, A111949(n+1)]+1`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A154778

/-- `lt[1, A111949(n+1)]+1` -/
def P14853017560092768042.Spec : Prop :=
  ∀ n, (P14853017560092768042.a n : ℤ) = A154778 (n + 1)

theorem P14853017560092768042.correct : P14853017560092768042.Spec := by
  intro n
  simp only [A154778, Nat.add_sub_cancel]

end A154778

/-! ## A154778.P10033616577073223768

`lt[1, A111949(A028310(n))]`
-/

namespace A154778.P10033616577073223768
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111949 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A154778.P10033616577073223768

namespace A154778

/-- `lt[1, A111949(A028310(n))]` -/
def P10033616577073223768.Spec : Prop :=
  ∀ n, (P10033616577073223768.a n : ℤ) = A154778 (n + 1)

end A154778

/-! ## A154778.P8045751357303121594

`A326178(lt[1, A111949(n+1)])`
-/

namespace A154778.P8045751357303121594
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111949 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326178 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A154778.P8045751357303121594

namespace A154778

/-- `A326178(lt[1, A111949(n+1)])` -/
def P8045751357303121594.Spec : Prop :=
  ∀ n, P8045751357303121594.a n = A154778 (n + 1)

end A154778

/-! ## A154778.P13012616536524107854

`lt[2, A028586(2*n)]`
-/

namespace A154778.P13012616536524107854
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028586 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A154778.P13012616536524107854

namespace A154778

/-- `lt[2, A028586(2*n)]` -/
def P13012616536524107854.Spec : Prop :=
  ∀ n, (P13012616536524107854.a n : ℤ) = A154778 (n + 1)

end A154778

/-! ## A154778.P11462098214835881126

`lt[1, A143323(2*(n+1))]+1`
-/

namespace A154778.P11462098214835881126
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143323 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A154778.P11462098214835881126

namespace A154778

/-- `lt[1, A143323(2*(n+1))]+1` -/
def P11462098214835881126.Spec : Prop :=
  ∀ n, (P11462098214835881126.a n : ℤ) = A154778 (n + 1)

end A154778

/-! ## A154778.P10818770820454886563

`lt[1, A143323(A004277(n))]`
-/

namespace A154778.P10818770820454886563
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143323 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A154778.P10818770820454886563

namespace A154778

/-- `lt[1, A143323(A004277(n))]` -/
def P10818770820454886563.Spec : Prop :=
  ∀ n, (P10818770820454886563.a n : ℤ) = A154778 (n + 1)

end A154778

/-! ## A154778.P4836737013488059235

`lt[2, A111949(A008458(n))]`
-/

namespace A154778.P4836737013488059235
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111949 (A008458 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A154778.P4836737013488059235

namespace A154778

/-- `lt[2, A111949(A008458(n))]` -/
def P4836737013488059235.Spec : Prop :=
  ∀ n, (P4836737013488059235.a n : ℤ) = A154778 (n + 1)

end A154778

/-! ## A154778.P13360650085300068992

`lt[2, A028645(4*4*n)]`
-/

namespace A154778.P13360650085300068992
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028645 (4 * (4 * n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A154778.P13360650085300068992

namespace A154778

/-- `lt[2, A028645(4*4*n)]` -/
def P13360650085300068992.Spec : Prop :=
  ∀ n, (P13360650085300068992.a n : ℤ) = A154778 (n + 1)

end A154778

/-!
# A154779: Number of terms with n digits in A154780.

The programs for A154779, there is no canonical definition to state claims against.
-/

/-! ## A154779.P2091997528065819815

`A259361(A094554(n)+A006093(n+1))`
-/

namespace A154779.P2091997528065819815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (A094554 n + A006093 (n + 1)).toNat

end

end A154779.P2091997528065819815

/-! ## A154779.P6066459012159509397

`A259361(A276324(n+1)+A094554(n))`
-/

namespace A154779.P6066459012159509397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (A276324 (n + 1) + A094554 n).toNat

end

end A154779.P6066459012159509397

/-! ## A154779.P15768869273592676949

`A329135(A333632(n)+A051841(n+1))`
-/

namespace A154779.P15768869273592676949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329135 (A333632 n + A051841 (n + 1)).toNat

end

end A154779.P15768869273592676949

/-! ## A154779.P13940713207525198448

`A177151(A104722(n))`
-/

namespace A154779.P13940713207525198448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177151 (A104722 n).toNat

end

end A154779.P13940713207525198448

/-! ## A154779.P4664144347189966598

`A112318(A182522(n))`
-/

namespace A154779.P4664144347189966598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112318 (A182522 n).toNat

end

end A154779.P4664144347189966598

/-!
# A154781: Sum of all numbers < n that appear as substring of n, written in decimal system.

The programs for A154781, there is no canonical definition to state claims against.
-/

/-! ## A154781.P1963468226485421170

`A154771(n)-n`
-/

namespace A154781.P1963468226485421170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154771 n - (n : ℤ)

end

end A154781.P1963468226485421170

/-! ## A154781.P1585909886493079256

`A154771(n)%A028310(n)`
-/

namespace A154781.P1585909886493079256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A154771 n) (A028310 n)

end

end A154781.P1585909886493079256

/-! ## A154781.P8491623599793322092

`(A154771(n)+A000290(n))%(n+1)`
-/

namespace A154781.P8491623599793322092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A154771 n + A000290 n) (n + 1 : ℤ)

end

end A154781.P8491623599793322092

/-! ## A154781.P15369301311465195502

`A020705(A154771(n))%A020705(n)`
-/

namespace A154781.P15369301311465195502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020705 (A154771 n).toNat) (A020705 n)

end

end A154781.P15369301311465195502

/-! ## A154781.P17150386122952474598

`A154771(A000007(n)+n)%(A000007(n)+n)`
-/

namespace A154781.P17150386122952474598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A154771 (A000007 n + (n : ℤ)).toNat) (A000007 n + (n : ℤ))

end

end A154781.P17150386122952474598

/-! ## A154781.P13892906003667431568

`A154771(A233583(n+1))%A233583(n+1)`
-/

namespace A154781.P13892906003667431568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A154771 (A233583 (n + 1)).toNat) (A233583 (n + 1))

end

end A154781.P13892906003667431568

/-! ## A154781.P66130293186738501

`(A154771(n)+char[A218978(n)])%(n+1)`
-/

namespace A154781.P66130293186738501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218978 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A154771 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)) (n + 1 : ℤ)

end

end A154781.P66130293186738501

/-! ## A154781.P4379072272283557180

`A217928(n)%A322283(n)`
-/

namespace A154781.P4379072272283557180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A217928 n) (A322283 n)

end

end A154781.P4379072272283557180

/-!
# A154783: Row sums of triangle in A154720.

The programs for A154783, there is no canonical definition to state claims against.
-/

/-! ## A154783.P331574167308494148

`A154784(n+1)+n+1`
-/

namespace A154783.P331574167308494148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154784 (n + 1) + (n + 1 : ℤ)

end

end A154783.P331574167308494148

/-! ## A154783.P14908088333986583839

`(n+1)*or(1, A096139(n+1))`
-/

namespace A154783.P14908088333986583839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * Int.lor 1 (A096139 (n + 1))

end

end A154783.P14908088333986583839

/-! ## A154783.P11283488485201483726

`(2*A154804(n+1)+1)*(n+1)`
-/

namespace A154783.P11283488485201483726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A154804 (n + 1) + 1) * (n + 1 : ℤ)

end

end A154783.P11283488485201483726

/-! ## A154783.P17861072089155628793

`(n+1)*or(1, A341982(2*(n+1)))`
-/

namespace A154783.P17861072089155628793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * Int.lor 1 (A341982 (2 * (n + 1)))

end

end A154783.P17861072089155628793

/-! ## A154783.P10484284056843956175

`A004442(A154784(n+1))+n`
-/

namespace A154783.P10484284056843956175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A154784 (n + 1)).toNat + (n : ℤ)

end

end A154783.P10484284056843956175

/-! ## A154783.P2164385171490070335

`(n+1)*A005408(A154804(n+1))`
-/

namespace A154783.P2164385171490070335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A005408 (A154804 (n + 1)).toNat

end

end A154783.P2164385171490070335

/-! ## A154783.P14301782470954590881

`(n+1)*A109613(A096139(n+1))`
-/

namespace A154783.P14301782470954590881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A109613 (A096139 (n + 1)).toNat

end

end A154783.P14301782470954590881

/-!
# A154784: Row sums of triangle in A154721.

The programs for A154784, there is no canonical definition to state claims against.
-/

/-! ## A154784.P15539664005045738871

`A154783(n+1)-(n+1)`
-/

namespace A154784.P15539664005045738871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154783 (n + 1) - (n + 1 : ℤ)

end

end A154784.P15539664005045738871

/-! ## A154784.P3246522871528541788

`2*(n+1)*A154804(n+1)`
-/

namespace A154784.P3246522871528541788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n + 1 : ℤ) * A154804 (n + 1))

end

end A154784.P3246522871528541788

/-! ## A154784.P16659523512196525307

`A103517(n)*A154804(n+1)`
-/

namespace A154784.P16659523512196525307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 n * A154804 (n + 1)

end

end A154784.P16659523512196525307

/-! ## A154784.P12176387762365252637

`(A005408(n)+1)*A154804(n+1)`
-/

namespace A154784.P12176387762365252637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A005408 n + 1) * A154804 (n + 1)

end

end A154784.P12176387762365252637

/-! ## A154784.P15369335680825962705

`A154804(n+1)*A163300(n+1)`
-/

namespace A154784.P15369335680825962705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154804 (n + 1) * A163300 (n + 1)

end

end A154784.P15369335680825962705

/-! ## A154784.P10692451754963941529

`A051755(n+2)*A154804(n+1)`
-/

namespace A154784.P10692451754963941529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051755 (n + 2) * A154804 (n + 1)

end

end A154784.P10692451754963941529

/-! ## A154784.P6804145294047918643

`2*(n+1)*A004526(A096139(n+1))`
-/

namespace A154784.P6804145294047918643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) * A004526 (A096139 (n + 1)).toNat

end

end A154784.P6804145294047918643

/-! ## A154784.P9996259545802640622

`A103517(n)*A123108(A096139(n+1))`
-/

namespace A154784.P9996259545802640622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 n * A123108 (A096139 (n + 1)).toNat

end

end A154784.P9996259545802640622

/-! ## A154784.P17598029577090279514

`A004526(A096139(n+1))*A163300(n+1)`
-/

namespace A154784.P17598029577090279514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A096139 (n + 1)).toNat * A163300 (n + 1)

end

end A154784.P17598029577090279514

/-! ## A154784.P5259571326339477705

`A051755(n+2)*A123108(A096139(n+1))`
-/

namespace A154784.P5259571326339477705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051755 (n + 2) * A123108 (A096139 (n + 1)).toNat

end

end A154784.P5259571326339477705

/-! ## A154784.P8988647918295821107

`Δ[A002378(n)]*A154804(n+1)`
-/

namespace A154784.P8988647918295821107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A154804 (n + 1)

end

end A154784.P8988647918295821107

/-! ## A154784.P2456332204881870450

`Δ[A014206(n)]*A154804(n+1)`
-/

namespace A154784.P2456332204881870450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014206 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A154804 (n + 1)

end

end A154784.P2456332204881870450

/-! ## A154784.P7185414926859065064

`Δ[A027688(n)]*A154804(n+1)`
-/

namespace A154784.P7185414926859065064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027688 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A154804 (n + 1)

end

end A154784.P7185414926859065064

/-! ## A154784.P4894865873374312662

`A014681(2*n+1)*A123108(A096139(n+1))`
-/

namespace A154784.P4894865873374312662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (2 * n + 1) * A123108 (A096139 (n + 1)).toNat

end

end A154784.P4894865873374312662

/-!
# A154785: Row sums of triangle in A154724.

The programs for A154785, there is no canonical definition to state claims against.
-/

/-! ## A154785.P17473157375527597752

`A154786(n+1)+n+1`
-/

namespace A154785.P17473157375527597752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154786 (n + 1) + (n + 1 : ℤ)

end

end A154785.P17473157375527597752

/-! ## A154785.P17800758447593622155

`2*A154787(n+1)+1+n`
-/

namespace A154785.P17800758447593622155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A154787 (n + 1) + 1 + (n : ℤ)

end

end A154785.P17800758447593622155

/-! ## A154785.P7573752086601260036

`(n+1)*or(1, A002372(n+1))`
-/

namespace A154785.P7573752086601260036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * Int.lor 1 (A002372 (n + 1))

end

end A154785.P7573752086601260036

/-! ## A154785.P9493798303005237476

`2*(n+1)*A061357(n+1)+1+n`
-/

namespace A154785.P9493798303005237476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n + 1 : ℤ) * A061357 (n + 1)) + 1 + (n : ℤ)

end

end A154785.P9493798303005237476

/-! ## A154785.P12644083396295375967

`(n+1)*A005408(A061357(n+1))`
-/

namespace A154785.P12644083396295375967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A005408 (A061357 (n + 1)).toNat

end

end A154785.P12644083396295375967

/-! ## A154785.P6035765830385755980

`(n+1)*A109613(A035026(n+1))`
-/

namespace A154785.P6035765830385755980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A109613 (A035026 (n + 1)).toNat

end

end A154785.P6035765830385755980

/-! ## A154785.P10162298007351528613

`(n+1)*A004442(2*A061357(n+1))`
-/

namespace A154785.P10162298007351528613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A004442 (2 * A061357 (n + 1)).toNat

end

end A154785.P10162298007351528613

/-! ## A154785.P6834580709467441194

`(A004277(n)+2)*A061357(n+1)+1+n`
-/

namespace A154785.P6834580709467441194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004277 n + 2) * A061357 (n + 1) + 1 + (n : ℤ)

end

end A154785.P6834580709467441194

/-! ## A154785.P7085818597520792040

`(n+1)*or(1, A073610(2*(n+1)))`
-/

namespace A154785.P7085818597520792040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * Int.lor 1 (A073610 (2 * (n + 1)))

end

end A154785.P7085818597520792040

/-! ## A154785.P16639244009854476354

`2*(n+1)*A117929(2*(n+1))+n+1`
-/

namespace A154785.P16639244009854476354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n + 1 : ℤ) * A117929 (2 * (n + 1))) + (n + 1 : ℤ)

end

end A154785.P16639244009854476354

/-! ## A154785.P13807910255962644890

`A005843(A154787(n+1))+1+n`
-/

namespace A154785.P13807910255962644890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A154787 (n + 1)).toNat + 1 + (n : ℤ)

end

end A154785.P13807910255962644890

/-!
# A154786: Row sums of triangle in A154725.

The programs for A154786, there is no canonical definition to state claims against.
-/

/-! ## A154786.P7934433617738671239

`A154785(n+1)-(n+1)`
-/

namespace A154786.P7934433617738671239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154785 (n + 1) - (n + 1 : ℤ)

end

end A154786.P7934433617738671239

/-! ## A154786.P5108193492397488421

`A005843(n+1)*A061357(n+1)`
-/

namespace A154786.P5108193492397488421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (n + 1) * A061357 (n + 1)

end

end A154786.P5108193492397488421

/-! ## A154786.P15596627265834428734

`2*A154787(n+1)`
-/

namespace A154786.P15596627265834428734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A154787 (n + 1)

end

end A154786.P15596627265834428734

/-! ## A154786.P530062936974102784

`A061357(n+1)*A103517(n)`
-/

namespace A154786.P530062936974102784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061357 (n + 1) * A103517 n

end

end A154786.P530062936974102784

/-! ## A154786.P9436599838079434386

`(A005408(n)+1)*A061357(n+1)`
-/

namespace A154786.P9436599838079434386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A005408 n + 1) * A061357 (n + 1)

end

end A154786.P9436599838079434386

/-! ## A154786.P3441534408533601463

`(A004277(n)+2)*A061357(n+1)`
-/

namespace A154786.P3441534408533601463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004277 n + 2) * A061357 (n + 1)

end

end A154786.P3441534408533601463

/-! ## A154786.P4717088022759392100

`2*A061357(n+1)*A326178(n)`
-/

namespace A154786.P4717088022759392100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A061357 (n + 1) * A326178 n)

end

end A154786.P4717088022759392100

/-! ## A154786.P6622530334677457622

`Δ[A002378(n)]*A061357(n+1)`
-/

namespace A154786.P6622530334677457622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A061357 (n + 1)

end

end A154786.P6622530334677457622

/-! ## A154786.P14999777452946408674

`2*(n+1)*A117929(2*(n+1))`
-/

namespace A154786.P14999777452946408674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n + 1 : ℤ) * A117929 (2 * (n + 1)))

end

end A154786.P14999777452946408674

/-! ## A154786.P17086345137215716016

`A103517(n)*A117929(2*(n+1))`
-/

namespace A154786.P17086345137215716016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 n * A117929 (2 * (n + 1))

end

end A154786.P17086345137215716016

/-! ## A154786.P2998214433677014417

`A005843(n+1)*A117929(2*(n+1))`
-/

namespace A154786.P2998214433677014417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (n + 1) * A117929 (2 * (n + 1))

end

end A154786.P2998214433677014417

/-! ## A154786.P1880242974917910510

`A035026(A072511(n+1))*A061357(n+1)`
-/

namespace A154786.P1880242974917910510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035026 (A072511 (n + 1)).toNat * A061357 (n + 1)

end

end A154786.P1880242974917910510

/-! ## A154786.P10695648977897497563

`A005843(A154787(n+1))`
-/

namespace A154786.P10695648977897497563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A154787 (n + 1)).toNat

end

end A154786.P10695648977897497563

/-!
# A154787: a(n) = A061357(n)*n = A154786(n)/2.

The programs for A154787, there is no canonical definition to state claims against.
-/

/-! ## A154787.P7664897649045702357

`A154786(n+1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A154787.P7664897649045702357
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A154786 (n + 1) : ℚ) / 2

end

end A154787.P7664897649045702357

/-! ## A154787.P11790990288187501969

`A061357(n+1)*(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A154787.P11790990288187501969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061357 (n + 1) * (n + 1 : ℤ)

end

end A154787.P11790990288187501969

/-! ## A154787.P9480115781537625630

`(A154785(n+1)-(n+1))/2`
-/

namespace A154787.P9480115781537625630
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A154785 (n + 1) - (n + 1 : ℤ) : ℚ) / 2

end

end A154787.P9480115781537625630

/-! ## A154787.P7553911338241213427

`(n+1)*floor(A002372(n+1)/2)`
-/

namespace A154787.P7553911338241213427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ⌊(A002372 (n + 1) : ℚ) / 2⌋

end

end A154787.P7553911338241213427

/-! ## A154787.P3557750262516495266

`(n+1)*floor(A035026(n+1)/2)`
-/

namespace A154787.P3557750262516495266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ⌊(A035026 (n + 1) : ℚ) / 2⌋

end

end A154787.P3557750262516495266

/-! ## A154787.P15674815285665447194

`(n+1)*A004526(A002372(n+1))`
-/

namespace A154787.P15674815285665447194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A004526 (A002372 (n + 1)).toNat

end

end A154787.P15674815285665447194

/-! ## A154787.P2420740468338072907

`(n+1)*A004526(A035026(n+1))`
-/

namespace A154787.P2420740468338072907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A004526 (A035026 (n + 1)).toNat

end

end A154787.P2420740468338072907

/-! ## A154787.P6382482890092183255

`(n+1)*(A002372(n+1)-A002375(n+1))`
-/

namespace A154787.P6382482890092183255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A002372 (n + 1) - A002375 (n + 1))

end

end A154787.P6382482890092183255

/-! ## A154787.P9211940536767278879

`A117929(2*(n+1))*(n+1)`
-/

namespace A154787.P9211940536767278879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117929 (2 * (n + 1)) * (n + 1 : ℤ)

end

end A154787.P9211940536767278879

/-! ## A154787.P16381326173464924941

`A103517(n)*A117929(A103517(n))/2`
-/

namespace A154787.P16381326173464924941
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A103517 n * A117929 (A103517 n).toNat : ℚ) / 2

end

end A154787.P16381326173464924941

/-! ## A154787.P9923455195722915769

`(n+1)*A125688(2*(n+2))`
-/

namespace A154787.P9923455195722915769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A125688 (2 * (n + 2))

end

end A154787.P9923455195722915769

/-! ## A154787.P17298053727330182634

`A001281(A154786(n+1))`
-/

namespace A154787.P17298053727330182634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A154786 (n + 1)).toNat

end

end A154787.P17298053727330182634

/-!
# A154788: Records in A085543.

The programs for A154788, there is no canonical definition to state claims against.
-/

/-! ## A154788.P12453665206535282097

`A085543(A085544(n+1))`
-/

namespace A154788.P12453665206535282097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085543 (A085544 (n + 1)).toNat

end

end A154788.P12453665206535282097

/-! ## A154788.P6906610613165560789

`A085543(A154789(n+1))`
-/

namespace A154788.P6906610613165560789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085543 (A154789 (n + 1)).toNat

end

end A154788.P6906610613165560789

/-! ## A154788.P5994708023464675384

`record[A085543(n)]`
-/

namespace A154788.P5994708023464675384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085543 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A154788.P5994708023464675384

/-! ## A154788.P8408666559844930971

`record[A000005(A278241(n))]`
-/

namespace A154788.P8408666559844930971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A278241 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A154788.P8408666559844930971

/-! ## A154788.P1575531155768050887

`record[A320111(2*A278241(n))]`
-/

namespace A154788.P1575531155768050887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320111 (2 * A278241 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A154788.P1575531155768050887

/-!
# A154789: Where records occurs in A085543 for positive values of n.

The programs for A154789, there is no canonical definition to state claims against.
-/

/-! ## A154789.P7918196215241395543

`floor(A085544(n+1)+acot(n))`
-/

namespace A154789.P7918196215241395543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A085544 (n + 1) : ℝ) + SequenceMachineLib.acot (n : ℝ)⌋

end

end A154789.P7918196215241395543

/-! ## A154789.P13041630450953605819

`A028310(A085544(n+1))`
-/

namespace A154789.P13041630450953605819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A085544 (n + 1)).toNat

end

end A154789.P13041630450953605819

/-! ## A154789.P14621722408217383190

`A065033(2*A085544(n+1))`
-/

namespace A154789.P14621722408217383190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (2 * A085544 (n + 1)).toNat

end

end A154789.P14621722408217383190

/-! ## A154789.P15654032506289271418

`A085544(n+1)+A000007(n)`
-/

namespace A154789.P15654032506289271418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085544 (n + 1) + A000007 n

end

end A154789.P15654032506289271418

/-! ## A154789.P3780106658661295087

`A085544(n+1)+A058348(n)`
-/

namespace A154789.P3780106658661295087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085544 (n + 1) + A058348 n

end

end A154789.P3780106658661295087

/-!
# A154790: Highly composite partition numbers.

The programs for A154790, there is no canonical definition to state claims against.
-/

/-! ## A154790.P11575674044760552924

`A000041(A085544(n+1))`
-/

namespace A154790.P11575674044760552924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A085544 (n + 1)).toNat

end

end A154790.P11575674044760552924

/-! ## A154790.P3835439177404742848

`A000041(A154789(n+1))`
-/

namespace A154790.P3835439177404742848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A154789 (n + 1)).toNat

end

end A154790.P3835439177404742848

/-! ## A154790.P12834829788891541783

`A000065(A085544(n+1))+A001221(A006512(n+1))`
-/

namespace A154790.P12834829788891541783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 (A085544 (n + 1)).toNat + A001221 (A006512 (n + 1)).toNat

end

end A154790.P12834829788891541783

/-! ## A154790.P3566907117671318510

`A000065(A085544(n+1))-A008683(A098414(n+1))`
-/

namespace A154790.P3566907117671318510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 (A085544 (n + 1)).toNat - A008683 (A098414 (n + 1)).toNat

end

end A154790.P3566907117671318510

/-! ## A154790.P2419021577305344535

`A100824(2*A085544(n+1))`
-/

namespace A154790.P2419021577305344535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100824 (2 * A085544 (n + 1)).toNat

end

end A154790.P2419021577305344535

/-!
# A154791: Triangle read by rows in which row n lists all the pairs of noncomposite numbers that are equidistant from n, with 0's inserted, as shown below in the example.

The programs for A154791, there is no canonical definition to state claims against.
-/

/-! ## A154791.P5815107054045804317

`A154721(∑[2-char[∑[n]]])`
-/

namespace A154791.P5815107054045804317
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154721 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A154791.P5815107054045804317

/-! ## A154791.P10008107504065100354

`A158405(n+1)*A285952(A270613(2*n+3))`
-/

namespace A154791.P10008107504065100354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158405 (n + 1) * A285952 (A270613 (2 * n + 3)).toNat

end

end A154791.P10008107504065100354

/-!
# A154792: Triangle read by rows in which row n lists the pair of noncomposite numbers that are equidistant from and nearest to n, with 0's inserted, as shown below in the example.

The programs for A154792, there is no canonical definition to state claims against.
-/

/-! ## A154792.P7580215087260956229

`A038189(A094511(A202421(n+1)))*A158405(n+1)`
-/

namespace A154792.P7580215087260956229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038189 (A094511 (A202421 (n + 1)).toNat).toNat * A158405 (n + 1)

end

end A154792.P7580215087260956229

/-! ## A154792.P2011885186363098966

`A154791(n+1)*A327256(A204284(n+1))`
-/

namespace A154792.P2011885186363098966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154791 (n + 1) * A327256 (A204284 (n + 1)).toNat

end

end A154792.P2011885186363098966

/-! ## A154792.P2115807552486484506

`A158405(n+1)*A327256(A204284(n+1))`
-/

namespace A154792.P2115807552486484506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158405 (n + 1) * A327256 (A204284 (n + 1)).toNat

end

end A154792.P2115807552486484506

/-! ## A154792.P6470262932610066573

`A154721(A001614(n+1))*A327256(A204284(n+1))`
-/

namespace A154792.P6470262932610066573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154721 (A001614 (n + 1)).toNat * A327256 (A204284 (n + 1)).toNat

end

end A154792.P6470262932610066573

/-! ## A154792.P10359183182390715202

`A154721(∑[2-A010054(n)])*A327256(A204284(n+1))`
-/

namespace A154792.P10359183182390715202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A010054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154721 (∑ j ∈ Finset.range (n + 1), f1 j).toNat * A327256 (A204284 (n + 1)).toNat

end

end A154792.P10359183182390715202

/-!
# A154795: Odd partition numbers of odd numbers.

The programs for A154795, there is no canonical definition to state claims against.
-/

/-! ## A154795.P1041767227514520365

`A000041(A067567(n+1))`
-/

namespace A154795.P1041767227514520365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A067567 (n + 1)).toNat

end

end A154795.P1041767227514520365

/-! ## A154795.P13748582089864645242

`A000041(eq[1, and(1, A330373(n))])`
-/

namespace A154795.P13748582089864645242
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A330373 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A154795.P13748582089864645242

/-! ## A154795.P17851528536342369786

`A000041(eq[1, and(n, A040051(n))])`
-/

namespace A154795.P17851528536342369786
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A040051 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A154795.P17851528536342369786

/-! ## A154795.P12753712849101682959

`∩[A052003(n+1), A058695(n)]`
-/

namespace A154795.P12753712849101682959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052003 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058695 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154795.P12753712849101682959

/-! ## A154795.P4458446028968534128

`∩[A209658(n+1), A058695(n)]`
-/

namespace A154795.P4458446028968534128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209658 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058695 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154795.P4458446028968534128

/-! ## A154795.P9253930622771708394

`∩[A052003(n+1), A209658(n+1)]`
-/

namespace A154795.P9253930622771708394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052003 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209658 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154795.P9253930622771708394

/-! ## A154795.P4571263186374140448

`record[A000041(2*n+1)*A040051(2*n+1)]`
-/

namespace A154795.P4571263186374140448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (2 * n + 1) * A040051 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A154795.P4571263186374140448

/-! ## A154795.P1246334511846229530

`record[gcd(A000041(2*n+1), A278478(2*n+1))]`
-/

namespace A154795.P1246334511846229530
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000041 (2 * n + 1)) (A278478 (2 * n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A154795.P1246334511846229530

/-! ## A154795.P6689385232643769959

`A000041(eq[A010123(n), A040051(n)])`
-/

namespace A154795.P6689385232643769959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010123 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040051 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A154795.P6689385232643769959

/-! ## A154795.P5992289440480951736

`A000041(eq[A040051(n), A266724(n)])`
-/

namespace A154795.P5992289440480951736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040051 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266724 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A154795.P5992289440480951736

/-! ## A154795.P13492983605355265343

`A000041(eq[A000034(n+1), A040051(n)])`
-/

namespace A154795.P13492983605355265343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040051 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A154795.P13492983605355265343

/-! ## A154795.P15360185598355195230

`A000041(eq[A040051(n)+1, A010673(n)])`
-/

namespace A154795.P15360185598355195230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040051 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010673 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A154795.P15360185598355195230

/-! ## A154795.P10329996340262477531

`A000041(eq[A028920(n+1), A040051(n)])`
-/

namespace A154795.P10329996340262477531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028920 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040051 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A154795.P10329996340262477531

/-! ## A154795.P8302444372936830802

`A000041(eq[A001511(n+2), A040051(n)])`
-/

namespace A154795.P8302444372936830802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040051 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A154795.P8302444372936830802

/-! ## A154795.P15769326359936631821

`A000041(eq[1, A010673(n)-A040051(n)])`
-/

namespace A154795.P15769326359936631821
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010673 n - A040051 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A154795.P15769326359936631821

/-! ## A154795.P13483787232511433197

`A000041(eq[2, A000034(n)*A040051(n)])`
-/

namespace A154795.P13483787232511433197
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A040051 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A154795.P13483787232511433197

/-! ## A154795.P1303076841444188793

`A000041(eq[2, A010673(n*A040051(n))])`
-/

namespace A154795.P1303076841444188793
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010673 ((n : ℤ) * A040051 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A154795.P1303076841444188793

/-! ## A154795.P3353681817471599305

`A000041(eq[2/A000034(n), A040051(n)])`
-/

namespace A154795.P3353681817471599305
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A000034 n : ℚ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040051 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n)

end

end A154795.P3353681817471599305

/-! ## A154795.P7434061289997619674

`A000041(eq[A000041(n)%2, A001511(n+2)])`
-/

namespace A154795.P7434061289997619674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000041 n) 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A154795.P7434061289997619674

/-! ## A154795.P10451511474446212884

`A000041(eq[1, and(1, A066186(n))])`
-/

namespace A154795.P10451511474446212884
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A066186 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A154795.P10451511474446212884

/-!
# A154796: Even partition numbers of odd numbers.

The programs for A154796, there is no canonical definition to state claims against.
-/

/-! ## A154796.P8070100149474151796

`2*A163286(n+1)`
-/

namespace A154796.P8070100149474151796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A163286 (n + 1)

end

end A154796.P8070100149474151796

/-! ## A154796.P7138963453124442001

`A000041(A163096(n+1))`
-/

namespace A154796.P7138963453124442001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A163096 (n + 1)).toNat

end

end A154796.P7138963453124442001

/-! ## A154796.P1780822541632624626

`∩[A052001(n+1), A058695(n)]`
-/

namespace A154796.P1780822541632624626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052001 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058695 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154796.P1780822541632624626

/-! ## A154796.P8810559897631292927

`∩[A052001(n+1), A209659(n+1)]`
-/

namespace A154796.P8810559897631292927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052001 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209659 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154796.P8810559897631292927

/-! ## A154796.P6701245447502626068

`∩[A000041(2*n+1), A052001(n+2)]`
-/

namespace A154796.P6701245447502626068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052001 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154796.P6701245447502626068

/-! ## A154796.P1665798831929536280

`A000041(eq[2-a(n-1), gcd(2, A000041(n))])` with `a(0)=0`
-/

namespace A154796.P1665798831929536280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  2 - f1 (n - 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A000041 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n)

end

end A154796.P1665798831929536280

/-! ## A154796.P16029300687290253602

`A000041(eq[A040051(n), A142150(n)])`
-/

namespace A154796.P16029300687290253602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040051 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A154796.P16029300687290253602

/-! ## A154796.P7118383688656885481

`A000041(eq[1, A040051(n)+A010123(n)])`
-/

namespace A154796.P7118383688656885481
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040051 n + A010123 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A154796.P7118383688656885481

/-! ## A154796.P2296880572189608750

`A000041(eq[A010673(n+1), A040051(n)])`
-/

namespace A154796.P2296880572189608750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010673 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040051 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A154796.P2296880572189608750

/-! ## A154796.P875778610655824224

`A000041(eq[A040051(n)+1, A266724(n)])`
-/

namespace A154796.P875778610655824224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040051 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266724 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A154796.P875778610655824224

/-! ## A154796.P17011053114762168964

`A000041(eq[A040051(n)+2, A000034(n)])`
-/

namespace A154796.P17011053114762168964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040051 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A154796.P17011053114762168964

/-! ## A154796.P8913066060825259378

`A000041(eq[1-A040051(n), A010123(n)])`
-/

namespace A154796.P8913066060825259378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A040051 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010123 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A154796.P8913066060825259378

/-! ## A154796.P16319731493075824775

`A000041(eq[A040051(n), A053387(n+2)])`
-/

namespace A154796.P16319731493075824775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040051 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053387 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A154796.P16319731493075824775

/-! ## A154796.P12413767409740458855

`A000041(eq[1, A266724(n)-A040051(n)])`
-/

namespace A154796.P12413767409740458855
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266724 n - A040051 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A154796.P12413767409740458855

/-! ## A154796.P7584566822512705138

`A000041(eq[2, A000034(n)-A040051(n)])`
-/

namespace A154796.P7584566822512705138
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n - A040051 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A154796.P7584566822512705138

/-! ## A154796.P2124538141741887450

`A000041(eq[2, A010673(n)-A040051(n)])`
-/

namespace A154796.P2124538141741887450
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010673 n - A040051 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A154796.P2124538141741887450

/-! ## A154796.P15464524049130933253

`∩[A000041(2*n+1), A000041(A001560(n+2))]`
-/

namespace A154796.P15464524049130933253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A001560 (n + 2)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154796.P15464524049130933253

/-! ## A154796.P7730205651654927041

`A000041(eq[A040051(n), A151887(n+1)])`
-/

namespace A154796.P7730205651654927041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040051 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151887 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A154796.P7730205651654927041

/-! ## A154796.P15597403932996323467

`A000041(eq[A040051(n), A049689(n)])`
-/

namespace A154796.P15597403932996323467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040051 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049689 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A154796.P15597403932996323467

/-!
# A154797: Odd partition numbers of even numbers.

The programs for A154797, there is no canonical definition to state claims against.
-/

/-! ## A154797.P397291862613465558

`A000041(A163097(n+1))`
-/

namespace A154797.P397291862613465558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A163097 (n + 1)).toNat

end

end A154797.P397291862613465558

/-! ## A154797.P7887591501095267326

`A058696(A163099(n+1))`
-/

namespace A154797.P7887591501095267326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058696 (A163099 (n + 1)).toNat

end

end A154797.P7887591501095267326

/-! ## A154797.P2547940272022665759

`A000041(2*A163099(n+1))`
-/

namespace A154797.P2547940272022665759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (2 * A163099 (n + 1)).toNat

end

end A154797.P2547940272022665759

/-! ## A154797.P733746031412238845

`A058696(A163097(n+1)/2)`
-/

namespace A154797.P733746031412238845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058696 (SequenceMachineLib.roundAway ((A163097 (n + 1) : ℚ) / 2)).toNat

end

end A154797.P733746031412238845

/-! ## A154797.P10669341592806751393

`A058696(eq[1, A058696(n)%2])`
-/

namespace A154797.P10669341592806751393
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A058696 n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058696 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A154797.P10669341592806751393

/-! ## A154797.P15820169988562916105

`∩[A052003(n+1), A058696(n)]`
-/

namespace A154797.P15820169988562916105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052003 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058696 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154797.P15820169988562916105

/-! ## A154797.P12006131509125105327

`∩[A209659(n+1), A058696(n)]`
-/

namespace A154797.P12006131509125105327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209659 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058696 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154797.P12006131509125105327

/-! ## A154797.P8432181037657311678

`A000041(comp[or(n, and(1, A000041(n)))])`
-/

namespace A154797.P8432181037657311678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (Int.land 1 (A000041 n))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A154797.P8432181037657311678

/-! ## A154797.P6061531418487070274

`∩[A052003(n+1), A209659(n+1)]`
-/

namespace A154797.P6061531418487070274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052003 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209659 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154797.P6061531418487070274

/-! ## A154797.P208910359541816341

`record[A000041(2*n)*A040051(2*n)]`
-/

namespace A154797.P208910359541816341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (2 * n) * A040051 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A154797.P208910359541816341

/-! ## A154797.P129860738630933354

`record[gcd(A000041(2*n), A278478(2*n))]`
-/

namespace A154797.P129860738630933354
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000041 (2 * n)) (A278478 (2 * n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A154797.P129860738630933354

/-! ## A154797.P8075686711790742925

`A000041(eq[A000034(n), A040051(n)])`
-/

namespace A154797.P8075686711790742925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040051 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A154797.P8075686711790742925

/-! ## A154797.P13847195478335543529

`A000041(eq[A028920(n), A040051(n)])`
-/

namespace A154797.P13847195478335543529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028920 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040051 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A154797.P13847195478335543529

/-! ## A154797.P6225844805719397069

`A000041(eq[A001511(n+1), A040051(n)])`
-/

namespace A154797.P6225844805719397069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040051 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A154797.P6225844805719397069

/-! ## A154797.P8234077251152783638

`A000041(eq[A010123(n+1), A040051(n)])`
-/

namespace A154797.P8234077251152783638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010123 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040051 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A154797.P8234077251152783638

/-! ## A154797.P1391834778634480389

`A000041(eq[1, A040051(n)+A010673(n)])`
-/

namespace A154797.P1391834778634480389
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040051 n + A010673 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A154797.P1391834778634480389

/-! ## A154797.P2437416697310667674

`A000041(eq[A040051(n), A266724(n+1)])`
-/

namespace A154797.P2437416697310667674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040051 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266724 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A154797.P2437416697310667674

/-! ## A154797.P5189613570286409410

`A000041(eq[1-A010673(n), A040051(n)])`
-/

namespace A154797.P5189613570286409410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A010673 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040051 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A154797.P5189613570286409410

/-! ## A154797.P3112954703559471634

`A000041(A163099(n+1)+A163099(n+1))`
-/

namespace A154797.P3112954703559471634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A163099 (n + 1) + A163099 (n + 1)).toNat

end

end A154797.P3112954703559471634

/-! ## A154797.P12603557712519580024

`A000041(eq[1, A053387(n+1)+A040051(n)])`
-/

namespace A154797.P12603557712519580024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053387 (n + 1) + A040051 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A154797.P12603557712519580024

/-!
# A154798: Even partition numbers of even numbers.

The programs for A154798, there is no canonical definition to state claims against.
-/

/-! ## A154798.P1687302921002334796

`2*A163288(n+1)`
-/

namespace A154798.P1687302921002334796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A163288 (n + 1)

end

end A154798.P1687302921002334796

/-! ## A154798.P11542474765646013203

`A000041(A127219(n+1))`
-/

namespace A154798.P11542474765646013203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A127219 (n + 1)).toNat

end

end A154798.P11542474765646013203

/-! ## A154798.P15996477629796294931

`A058696(A163098(n+1))`
-/

namespace A154798.P15996477629796294931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058696 (A163098 (n + 1)).toNat

end

end A154798.P15996477629796294931

/-! ## A154798.P12008247028327907096

`A000041(2*A163098(n+1))`
-/

namespace A154798.P12008247028327907096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (2 * A163098 (n + 1)).toNat

end

end A154798.P12008247028327907096

/-! ## A154798.P4318372524826091959

`A058696(A127219(n+1)/2)`
-/

namespace A154798.P4318372524826091959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058696 (SequenceMachineLib.roundAway ((A127219 (n + 1) : ℚ) / 2)).toNat

end

end A154798.P4318372524826091959

/-! ## A154798.P8565844409556914799

`∩[A052001(n+1), A058696(n)]`
-/

namespace A154798.P8565844409556914799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052001 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058696 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154798.P8565844409556914799

/-! ## A154798.P14763286442251182816

`∩[A052001(n+1), A209658(n+1)]`
-/

namespace A154798.P14763286442251182816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052001 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209658 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154798.P14763286442251182816

/-! ## A154798.P16135750109064424120

`A000041(∩[2*n, A001560(n+1)])`
-/

namespace A154798.P16135750109064424120
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001560 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A154798.P16135750109064424120

/-! ## A154798.P11992440359596146778

`∩[A000041(2*n), A052001(n+1)]`
-/

namespace A154798.P11992440359596146778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052001 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154798.P11992440359596146778

/-! ## A154798.P5374940154492008398

`A000041(2*eq[2, gcd(2, A000041(2*n))])`
-/

namespace A154798.P5374940154492008398
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A000041 (2 * n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (2 * SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A154798.P5374940154492008398

/-! ## A154798.P8616536006806549978

`A000041(eq[A010673(n), A040051(n)])`
-/

namespace A154798.P8616536006806549978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010673 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040051 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A154798.P8616536006806549978

/-! ## A154798.P6584264830605286167

`A000041(eq[1, A040051(n)+A000034(n)])`
-/

namespace A154798.P6584264830605286167
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040051 n + A000034 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A154798.P6584264830605286167

/-! ## A154798.P303246795999258378

`A000041(eq[1, A040051(n)+A028920(n)])`
-/

namespace A154798.P303246795999258378
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040051 n + A028920 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A154798.P303246795999258378

/-! ## A154798.P14807609911673595256

`A000041(eq[A040051(n), A053387(n+1)])`
-/

namespace A154798.P14807609911673595256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040051 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053387 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A154798.P14807609911673595256

/-! ## A154798.P10595523377777766249

`A000041(eq[1-A040051(n), A000034(n)])`
-/

namespace A154798.P10595523377777766249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A040051 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A154798.P10595523377777766249

/-! ## A154798.P6977295857752993087

`A000041(eq[1-A040051(n), A028920(n)])`
-/

namespace A154798.P6977295857752993087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A040051 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028920 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A154798.P6977295857752993087

/-! ## A154798.P16309655737206393589

`A000041(eq[2, A020639(gcd(n, A000041(n)))])`
-/

namespace A154798.P16309655737206393589
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Int.gcd (n : ℤ) (A000041 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A154798.P16309655737206393589

/-! ## A154798.P2869917906732487112

`A000041(A163098(n+1)+A163098(n+1))`
-/

namespace A154798.P2869917906732487112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A163098 (n + 1) + A163098 (n + 1)).toNat

end

end A154798.P2869917906732487112

/-! ## A154798.P15554608158500440903

`A000041(eq[1, A040051(n)+A001511(n+1)])`
-/

namespace A154798.P15554608158500440903
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040051 n + A001511 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A154798.P15554608158500440903

/-! ## A154798.P17714931793879710486

`A163288(n+1)+A163288(n+1)%A163288(n+2)`
-/

namespace A154798.P17714931793879710486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163288 (n + 1) + Int.tmod (A163288 (n + 1)) (A163288 (n + 2))

end

end A154798.P17714931793879710486

/-!
# A154799: Records in A154804.

The programs for A154799, there is no canonical definition to state claims against.
-/

/-! ## A154799.P16384753052133651268

`record[A154804(n+1)]`
-/

namespace A154799.P16384753052133651268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154804 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A154799.P16384753052133651268

/-! ## A154799.P14031483282389692815

`A154804(A154891(n+1))`
-/

namespace A154799.P14031483282389692815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154804 (A154891 (n + 1)).toNat

end

end A154799.P14031483282389692815

/-! ## A154799.P7661694531010074334

`record[A001031(n+1)-A010054(n)]`
-/

namespace A154799.P7661694531010074334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001031 (n + 1) - A010054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A154799.P7661694531010074334

/-! ## A154799.P8237845251329066923

`record[A001031(n+1)-A010055(n+1)]`
-/

namespace A154799.P8237845251329066923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001031 (n + 1) - A010055 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A154799.P8237845251329066923

/-! ## A154799.P9102857554536453901

`record[A341973(3*(n+2))%xor(n, -1)]`
-/

namespace A154799.P9102857554536453901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A341973 (3 * (n + 2))) (Int.xor (n : ℤ) (-1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A154799.P9102857554536453901

/-! ## A154799.P9829528399084139370

`record[A341973(2*(n+2))-A341973(2*n+3)]`
-/

namespace A154799.P9829528399084139370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341973 (2 * (n + 2)) - A341973 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A154799.P9829528399084139370

/-! ## A154799.P274727539194303654

`record[A341945(n+6)%A265510(n)]`
-/

namespace A154799.P274727539194303654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A341945 (n + 6)) (A265510 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A154799.P274727539194303654

