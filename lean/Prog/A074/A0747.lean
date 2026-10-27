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
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
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
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
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
# A074700: a(n) = tau(F(2^n)) where tau(x) is the number of divisors of x (A000005(x)) and F(k) the k-th Fibonacci number (A000045(k)).

The programs for A074700, there is no canonical definition to state claims against.
-/

/-! ## A074700.P9829283264543764712

`2^ceil(∑[n/log2(7)])`
-/

namespace A074700.P9829283264543764712
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) / Real.logb 2 (7 : ℝ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (⌈∑ j ∈ Finset.range (n + 1), f1 j⌉ : ℤ)

end

end A074700.P9829283264543764712

/-! ## A074700.P17386819478218449925

`∏[2^A029158(n+1)]`
-/

namespace A074700.P17386819478218449925
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A029158 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A074700.P17386819478218449925

/-! ## A074700.P4066302548215369509

`A000079(ceil(∑[n/log2(7)]))`
-/

namespace A074700.P4066302548215369509
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) / Real.logb 2 (7 : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉.toNat

end

end A074700.P4066302548215369509

/-! ## A074700.P11490494552089811773

`A273109(∑[A025424(n)])`
-/

namespace A074700.P11490494552089811773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025424 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273109 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A074700.P11490494552089811773

/-! ## A074700.P14758124014039133810

`A016116(A117146(n+1))`
-/

namespace A074700.P14758124014039133810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (A117146 (n + 1)).toNat

end

end A074700.P14758124014039133810

/-!
# A074701: Numbers k such that k = Sum_{d|phi(k)} mu(phi(d))*phi(k)/d.

The programs for A074701, there is no canonical definition to state claims against.
-/

/-! ## A074701.P3106660381674251703

`ogf((-1+2x+10x^2)/(-1+5x))`
-/

namespace A074701.P3106660381674251703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, -10] [1, -5] n

end

end A074701.P3106660381674251703

/-! ## A074701.P9802290461448591998

`5*a(n-1)` with `a(0)=1, a(1)=3, a(2)=5`
-/

namespace A074701.P9802290461448591998
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 5] fun n a =>
  5 * a (n - 1)

end

end A074701.P9802290461448591998

/-! ## A074701.P12273119065351108203

`or(C(2, n), floor(5^(n-1)))`
-/

namespace A074701.P12273119065351108203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Nat.choose 2 n : ℤ) ⌊(5 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

end

end A074701.P12273119065351108203

/-! ## A074701.P17055765183136717569

`or(char[1]+1, floor(5^(n-1)))`
-/

namespace A074701.P17055765183136717569
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (((if ∃ j, f1 j = n then 1 else 0) + 1 : ℕ) : ℤ) ⌊(5 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

end

end A074701.P17055765183136717569

/-! ## A074701.P10599001981529434416

`∪[a(n-1)², 5^n]` with `a(0)=3, a(1)=5`
-/

namespace A074701.P10599001981529434416
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 5] fun n f1 =>
  f1 (n - 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 ^ n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = x) n

end

end A074701.P10599001981529434416

/-!
# A074702: a(n) = ((n+1)^2*(n-1)*a(n-1)+(-1)^(n+1))/n.

The programs for A074702, the canonical program `A074702.P1576359477354541453` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074702 has offset 1).

The definition of A074702 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A074702.P1576359477354541453

`((n+2)²*n*a(n-1)+(-1)^(n+2))/(n+1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A074702

/-- `((n+2)²*n*a(n-1)+(-1)^(n+2))/(n+1)` -/
def P1576359477354541453.Spec : Prop :=
  ∀ n, P1576359477354541453.a n = (A074702 (n + 1) : ℚ)

end A074702

/-! ## A074702.P13856563220438499288

`record[A073701(n)]/(n+1)`
-/

namespace A074702.P13856563220438499288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073701 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (n + 1 : ℚ)

end

end A074702.P13856563220438499288

namespace A074702

/-- `record[A073701(n)]/(n+1)` -/
def P13856563220438499288.Spec : Prop :=
  ∀ n, P13856563220438499288.a n = (A074702 (n + 1) : ℚ)

end A074702

/-! ## A074702.P4853096237179724314

`A073701(n+2)/(n+1)`
-/

namespace A074702.P4853096237179724314
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073701 (n + 2) : ℚ) / (n + 1 : ℚ)

end

end A074702.P4853096237179724314

namespace A074702

/-- `A073701(n+2)/(n+1)` -/
def P4853096237179724314.Spec : Prop :=
  ∀ n, P4853096237179724314.a n = (A074702 (n + 1) : ℚ)

end A074702

/-! ## A074702.P15801228210571542472

`record[A000142(n)²-A340789(n)]/(n+1)`
-/

namespace A074702.P15801228210571542472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n ^ 2 - A340789 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (n + 1 : ℚ)

end

end A074702.P15801228210571542472

namespace A074702

/-- `record[A000142(n)²-A340789(n)]/(n+1)` -/
def P15801228210571542472.Spec : Prop :=
  ∀ n, P15801228210571542472.a n = (A074702 (n + 1) : ℚ)

end A074702

/-!
# A074703: a(n) = n^2*a(n-1)+1, a(1)=0.

The programs for A074703, the canonical program `A074703.P8335233824343251184` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074703 has offset 1).

The definition of A074703 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)²*a(n-1)+1` (program `A074703.P8335233824343251184`, by `A074703.P8335233824343251184.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A074703.P8335233824343251184

`(n+1)²*a(n-1)+1` with `a(0)=0`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A074703

/-- `(n+1)²*a(n-1)+1` -/
def P8335233824343251184.Spec : Prop :=
  ∀ n, (P8335233824343251184.a n : ℤ) = A074703 (n + 1)

theorem P8335233824343251184.correct : P8335233824343251184.Spec := by
  intro n
  simp only [A074703, Nat.add_sub_cancel]

end A074703

/-! ## A074703.P1120917652181437976

`a(n-1)/(n+1)^(-2)+1` with `a(0)=0`
-/

namespace A074703.P1120917652181437976
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) / (n + 1 : ℚ) ^ (-2 : ℤ) + 1

end

end A074703.P1120917652181437976

namespace A074703

/-- `a(n-1)/(n+1)^(-2)+1` -/
def P1120917652181437976.Spec : Prop :=
  ∀ n, P1120917652181437976.a n = (A074703 (n + 1) : ℚ)

end A074703

/-! ## A074703.P441939554280652264

`a(n-1)*∑[2*n+1]+1` with `a(0)=0`
-/

namespace A074703.P441939554280652264
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) * (∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A074703.P441939554280652264

namespace A074703

/-- `a(n-1)*∑[2*n+1]+1` -/
def P441939554280652264.Spec : Prop :=
  ∀ n, (P441939554280652264.a n : ℤ) = A074703 (n + 1)

end A074703

/-! ## A074703.P6287363597807817645

`(n+1)*(n+1)*a(n-1)+1` with `a(0)=0`
-/

namespace A074703.P6287363597807817645
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  (n + 1) * ((n + 1) * a (n - 1)) + 1

end

end A074703.P6287363597807817645

namespace A074703

/-- `(n+1)*(n+1)*a(n-1)+1` -/
def P6287363597807817645.Spec : Prop :=
  ∀ n, (P6287363597807817645.a n : ℤ) = A074703 (n + 1)

theorem P6287363597807817645.correct : P6287363597807817645.Spec := by
  intro n
  simp only [A074703, Nat.add_sub_cancel, A074703.P6287363597807817645.a, A074703.P8335233824343251184.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A074703

/-! ## A074703.P14665354635136326524

`1-a(n-1)*∑[-or(1, 2*n)]` with `a(0)=0`
-/

namespace A074703.P14665354635136326524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(Nat.lor 1 (2 * n) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  1 - a (n - 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A074703.P14665354635136326524

namespace A074703

/-- `1-a(n-1)*∑[-or(1, 2*n)]` -/
def P14665354635136326524.Spec : Prop :=
  ∀ n, P14665354635136326524.a n = A074703 (n + 1)

end A074703

/-!
# A074704: a(n) = floor(n^(3/2)) - n*floor(n^(1/2)).

The programs for A074704, the canonical program `A074704.P15758619820882120204` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074704 has offset 1).

The definition of A074704 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((n+1)^(3/2))-(n+1)*floor((n+1)^(1/2))` (program `A074704.P15758619820882120204`, by `A074704.P15758619820882120204.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A074704.P15758619820882120204

`floor((n+1)^(3/2))-(n+1)*floor((n+1)^(1/2))`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A074704

/-- `floor((n+1)^(3/2))-(n+1)*floor((n+1)^(1/2))` -/
def P15758619820882120204.Spec : Prop :=
  ∀ n, P15758619820882120204.a n = A074704 (n + 1)

theorem P15758619820882120204.correct : P15758619820882120204.Spec := by
  intro n
  simp only [A074704, Nat.add_sub_cancel]

end A074704

/-! ## A074704.P5952453201861175631

`floor(sqrt((n+1)^3))%(n+1)`
-/

namespace A074704.P5952453201861175631
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt ((n + 1) ^ 3) % (n + 1)

end

end A074704.P5952453201861175631

namespace A074704

/-- `floor(sqrt((n+1)^3))%(n+1)` -/
def P5952453201861175631.Spec : Prop :=
  ∀ n, (P5952453201861175631.a n : ℤ) = A074704 (n + 1)

end A074704

/-! ## A074704.P14655663218841080651

`-(-A186146(n+1)%(n+1))`
-/

namespace A074704.P14655663218841080651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.tmod (-A186146 (n + 1)) (n + 1 : ℤ)

end

end A074704.P14655663218841080651

namespace A074704

/-- `-(-A186146(n+1)%(n+1))` -/
def P14655663218841080651.Spec : Prop :=
  ∀ n, P14655663218841080651.a n = A074704 (n + 1)

end A074704

/-! ## A074704.P5770240288624091829

`abs(A000093(n+1)%-(n+1))`
-/

namespace A074704.P5770240288624091829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A000093 (n + 1)) (-(n + 1 : ℤ))|

end

end A074704.P5770240288624091829

namespace A074704

/-- `abs(A000093(n+1)%-(n+1))` -/
def P5770240288624091829.Spec : Prop :=
  ∀ n, P5770240288624091829.a n = A074704 (n + 1)

end A074704

/-!
# A074705: a(1)=4; for n>1: number of primes between squares of (n-1)-th and (n+1)-th primes.

The programs for A074705, the canonical program `A074705.P16843531673910082680` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074705 has offset 1).

The definition of A074705 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1130 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A074705.P16843531673910082680

`A050216(n+1)+A050216(n)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A074705

/-- `A050216(n+1)+A050216(n)` -/
def P16843531673910082680.Spec : Prop :=
  ∀ n, P16843531673910082680.a n = A074705 (n + 1)

theorem P16843531673910082680.correct : P16843531673910082680.Spec := by
  intro n
  simp only [A074705, Nat.add_sub_cancel]

end A074705

/-! ## A074705.P12715777142476627960

`Δ[A038107(A008578(n+1))+A000879(n+1)]`
-/

namespace A074705.P12715777142476627960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038107 (A008578 (n + 1)).toNat + A000879 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074705.P12715777142476627960

namespace A074705

/-- `Δ[A038107(A008578(n+1))+A000879(n+1)]` -/
def P12715777142476627960.Spec : Prop :=
  ∀ n, P12715777142476627960.a n = A074705 (n + 1)

end A074705

/-! ## A074705.P13554619921687743253

`Δ[A062773(n+1)+A038107(A008578(n+1))]`
-/

namespace A074705.P13554619921687743253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062773 (n + 1) + A038107 (A008578 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074705.P13554619921687743253

namespace A074705

/-- `Δ[A062773(n+1)+A038107(A008578(n+1))]` -/
def P13554619921687743253.Spec : Prop :=
  ∀ n, P13554619921687743253.a n = A074705 (n + 1)

end A074705

/-! ## A074705.P10091786312127126540

`Δ[A062773(n+1)+A038107(A182986(n+1))]`
-/

namespace A074705.P10091786312127126540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062773 (n + 1) + A038107 (A182986 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074705.P10091786312127126540

namespace A074705

/-- `Δ[A062773(n+1)+A038107(A182986(n+1))]` -/
def P10091786312127126540.Spec : Prop :=
  ∀ n, P10091786312127126540.a n = A074705 (n + 1)

end A074705

/-! ## A074705.P16748160536958876712

`A038107(A008578(n+3))-A038107(A008578(n+1))`
-/

namespace A074705.P16748160536958876712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038107 (A008578 (n + 3)).toNat - A038107 (A008578 (n + 1)).toNat

end

end A074705.P16748160536958876712

namespace A074705

/-- `A038107(A008578(n+3))-A038107(A008578(n+1))` -/
def P16748160536958876712.Spec : Prop :=
  ∀ n, P16748160536958876712.a n = A074705 (n + 1)

end A074705

/-! ## A074705.P16311689735219754537

`A050216(A028242(2*n))-A001489(A050216(n))`
-/

namespace A074705.P16311689735219754537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050216 (A028242 (2 * n)).toNat - A001489 (A050216 n).toNat

end

end A074705.P16311689735219754537

namespace A074705

/-- `A050216(A028242(2*n))-A001489(A050216(n))` -/
def P16311689735219754537.Spec : Prop :=
  ∀ n, P16311689735219754537.a n = A074705 (n + 1)

end A074705

/-! ## A074705.P8866823588110510412

`A038107(A065091(n+1))-A000720(A280076(n+1))`
-/

namespace A074705.P8866823588110510412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038107 (A065091 (n + 1)).toNat - A000720 (A280076 (n + 1)).toNat

end

end A074705.P8866823588110510412

namespace A074705

/-- `A038107(A065091(n+1))-A000720(A280076(n+1))` -/
def P8866823588110510412.Spec : Prop :=
  ∀ n, P8866823588110510412.a n = A074705 (n + 1)

end A074705

/-! ## A074705.P10618575179342351153

`Δ[A000879(n+1)+A000720(A280076(n+1))]`
-/

namespace A074705.P10618575179342351153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000879 (n + 1) + A000720 (A280076 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074705.P10618575179342351153

namespace A074705

/-- `Δ[A000879(n+1)+A000720(A280076(n+1))]` -/
def P10618575179342351153.Spec : Prop :=
  ∀ n, P10618575179342351153.a n = A074705 (n + 1)

end A074705

/-! ## A074705.P8461470688125058333

`Δ[A062773(n+1)+A000720(A280076(n+1))]`
-/

namespace A074705.P8461470688125058333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062773 (n + 1) + A000720 (A280076 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074705.P8461470688125058333

namespace A074705

/-- `Δ[A062773(n+1)+A000720(A280076(n+1))]` -/
def P8461470688125058333.Spec : Prop :=
  ∀ n, P8461470688125058333.a n = A074705 (n + 1)

end A074705

/-! ## A074705.P15867359865264888956

`A000720(A065091(n+1)²)-A000720(A280076(n+1))`
-/

namespace A074705.P15867359865264888956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A065091 (n + 1) ^ 2).toNat - A000720 (A280076 (n + 1)).toNat

end

end A074705.P15867359865264888956

namespace A074705

/-- `A000720(A065091(n+1)²)-A000720(A280076(n+1))` -/
def P15867359865264888956.Spec : Prop :=
  ∀ n, P15867359865264888956.a n = A074705 (n + 1)

end A074705

/-!
# A074706: 1/(1+Sum_{n>0} (-x)^n/n^2) = Sum_{n>=0} a(n)*x^n/n!^2.

The programs for A074706, there is no canonical definition to state claims against.
-/

/-! ## A074706.P4507773013333324814

`A249123(A102726(n)*A323502(n))`
-/

namespace A074706.P4507773013333324814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249123 (A102726 n * A323502 n).toNat

end

end A074706.P4507773013333324814

/-! ## A074706.P13412571810442577124

`xor(A135862(n), A294793(A000111(n)))`
-/

namespace A074706.P13412571810442577124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A135862 n) (A294793 (A000111 n).toNat)

end

end A074706.P13412571810442577124

/-!
# A074707: exp(Sum_{n>0} x^n/n^2) = Sum_{n>=0} a(n)*x^n/n!^2.

The programs for A074707, there is no canonical definition to state claims against.
-/

/-! ## A074707.P8213235650980677305

`A000142(n)/A323291(n)*A323290(n)`
-/

namespace A074707.P8213235650980677305
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n : ℚ) / (A323291 n : ℚ) * (A323290 n : ℚ)

end

end A074707.P8213235650980677305

/-! ## A074707.P6202744500754287692

`A226837(n)/A000984(n)`
-/

namespace A074707.P6202744500754287692
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A226837 n : ℚ) / (A000984 n : ℚ)

end

end A074707.P6202744500754287692

/-! ## A074707.P10278011749030276522

`A226837(n)/A056040(2*n)`
-/

namespace A074707.P10278011749030276522
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A226837 n : ℚ) / (A056040 (2 * n) : ℚ)

end

end A074707.P10278011749030276522

/-! ## A074707.P2800316463776619082

`A226837(n)/A129383(2*n)`
-/

namespace A074707.P2800316463776619082
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A226837 n : ℚ) / (A129383 (2 * n) : ℚ)

end

end A074707.P2800316463776619082

/-! ## A074707.P11508709436547833781

`A226837(n)/A007318(A046092(n))`
-/

namespace A074707.P11508709436547833781
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A226837 n : ℚ) / (A007318 (A046092 n).toNat : ℚ)

end

end A074707.P11508709436547833781

/-!
# A074710: Numbers k such that x^k + x^2 + 1 is a primitive irreducible polynomial over GF(2).

The programs for A074710, there is no canonical definition to state claims against.
-/

/-! ## A074710.P12309250355204038295

`A057460(comp[14*n])`
-/

namespace A074710.P12309250355204038295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057460 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A074710.P12309250355204038295

/-! ## A074710.P8920118199831768285

`A057460(n+1)+char[11]`
-/

namespace A074710.P8920118199831768285
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057460 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A074710.P8920118199831768285

/-! ## A074710.P15114053373229174939

`record[A057460(A000119(n))]`
-/

namespace A074710.P15114053373229174939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057460 (A000119 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A074710.P15114053373229174939

/-! ## A074710.P16860106613140364686

`record[A057460(A280253(n))]`
-/

namespace A074710.P16860106613140364686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057460 (A280253 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A074710.P16860106613140364686

/-! ## A074710.P532533236334327729

`A007948(A057460(n+1))`
-/

namespace A074710.P532533236334327729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007948 (A057460 (n + 1)).toNat

end

end A074710.P532533236334327729

/-!
# A074711: Moebius function applied to A000461.

The programs for A074711, there is no canonical definition to state claims against.
-/

/-! ## A074711.P12603818350825521248

`A008683(A025612(3*(n+1))-A048250(n+4))`
-/

namespace A074711.P12603818350825521248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A025612 (3 * (n + 1)) - A048250 (n + 4)).toNat

end

end A074711.P12603818350825521248

/-! ## A074711.P12656354159183929829

`A259024(A001405(n)-A051056(n+1))`
-/

namespace A074711.P12656354159183929829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259024 (A001405 n - A051056 (n + 1)).toNat

end

end A074711.P12656354159183929829

/-! ## A074711.P6028232890332417150

`A008683(C(A095100(n+1)-A369364(n+1), 2))`
-/

namespace A074711.P6028232890332417150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (Nat.choose (A095100 (n + 1) - A369364 (n + 1)).toNat 2)

end

end A074711.P6028232890332417150

/-! ## A074711.P16697358746723797016

`A074910(A030147(n+2))`
-/

namespace A074711.P16697358746723797016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074910 (A030147 (n + 2)).toNat

end

end A074711.P16697358746723797016

/-! ## A074711.P5636853312242264499

`A348892(n)-A318950(A265853(n))`
-/

namespace A074711.P5636853312242264499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348892 n - A318950 (A265853 n).toNat

end

end A074711.P5636853312242264499

/-!
# A074712: Number of (interiors of) cells touched by a diagonal in a regular n X k grid (enumerated antidiagonally).

The programs for A074712, the canonical program `A074712.P7768327463520581845` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074712 has offset 1).

The definition of A074712 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A074712.P17198497536700824614

`comp[∑[n]]-n-A003989(n+1)`
-/

namespace A074712.P17198497536700824614
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ) - A003989 (n + 1)

end

end A074712.P17198497536700824614

namespace A074712

/-- `comp[∑[n]]-n-A003989(n+1)` -/
def P17198497536700824614.Spec : Prop :=
  ∀ n, P17198497536700824614.a n = A074712 (n + 1)

end A074712

/-! ## A074712.P7768327463520581845

`A003056(n)+2-A003989(n+1)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A074712

/-- `A003056(n)+2-A003989(n+1)` -/
def P7768327463520581845.Spec : Prop :=
  ∀ n, P7768327463520581845.a n = A074712 (n + 1)

theorem P7768327463520581845.correct : P7768327463520581845.Spec := by
  intro n
  simp only [A074712, Nat.add_sub_cancel]

end A074712

/-! ## A074712.P12640784782599800183

`∑[A035214(n)]-(A003989(n+1)+n)`
-/

namespace A074712.P12640784782599800183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (A003989 (n + 1) + (n : ℤ))

end

end A074712.P12640784782599800183

namespace A074712

/-- `∑[A035214(n)]-(A003989(n+1)+n)` -/
def P12640784782599800183.Spec : Prop :=
  ∀ n, P12640784782599800183.a n = A074712 (n + 1)

end A074712

/-! ## A074712.P13563238009827083947

`A002024(n+1)+1-A003989(n+1)`
-/

namespace A074712.P13563238009827083947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1) + (1 - A003989 (n + 1))

end

end A074712.P13563238009827083947

namespace A074712

/-- `A002024(n+1)+1-A003989(n+1)` -/
def P13563238009827083947.Spec : Prop :=
  ∀ n, P13563238009827083947.a n = A074712 (n + 1)

end A074712

/-! ## A074712.P11188076455403094295

`(A106448(n+1)-1)*A003989(n+1)`
-/

namespace A074712.P11188076455403094295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A106448 (n + 1) - 1) * A003989 (n + 1)

end

end A074712.P11188076455403094295

namespace A074712

/-- `(A106448(n+1)-1)*A003989(n+1)` -/
def P11188076455403094295.Spec : Prop :=
  ∀ n, P11188076455403094295.a n = A074712 (n + 1)

end A074712

/-! ## A074712.P14669240185721625601

`A014132(n+1)-(A003989(n+1)+n)`
-/

namespace A074712.P14669240185721625601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014132 (n + 1) - (A003989 (n + 1) + (n : ℤ))

end

end A074712.P14669240185721625601

namespace A074712

/-- `A014132(n+1)-(A003989(n+1)+n)` -/
def P14669240185721625601.Spec : Prop :=
  ∀ n, P14669240185721625601.a n = A074712 (n + 1)

end A074712

/-! ## A074712.P9771610794839872762

`A003057(n+2)-gcd(A003057(n+2), A128227(n))`
-/

namespace A074712.P9771610794839872762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003057 (n + 2) - (Int.gcd (A003057 (n + 2)) (A128227 n) : ℤ)

end

end A074712.P9771610794839872762

namespace A074712

/-- `A003057(n+2)-gcd(A003057(n+2), A128227(n))` -/
def P9771610794839872762.Spec : Prop :=
  ∀ n, P9771610794839872762.a n = A074712 (n + 1)

end A074712

/-! ## A074712.P3034511507457794561

`A003990(A003989(n+1)+n-A002260(n+1)+1)`
-/

namespace A074712.P3034511507457794561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003990 (A003989 (n + 1) + ((n : ℤ) - A002260 (n + 1)) + 1).toNat

end

end A074712.P3034511507457794561

namespace A074712

/-- `A003990(A003989(n+1)+n-A002260(n+1)+1)` -/
def P3034511507457794561.Spec : Prop :=
  ∀ n, P3034511507457794561.a n = A074712 (n + 1)

end A074712

/-! ## A074712.P6796352232530650332

`A002260(n+1)+A004736(n+1)-A003989(n+1)`
-/

namespace A074712.P6796352232530650332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) + (A004736 (n + 1) - A003989 (n + 1))

end

end A074712.P6796352232530650332

namespace A074712

/-- `A002260(n+1)+A004736(n+1)-A003989(n+1)` -/
def P6796352232530650332.Spec : Prop :=
  ∀ n, P6796352232530650332.a n = A074712 (n + 1)

end A074712

/-! ## A074712.P10495053140985152220

`A003983(n+1)+A051125(n+1)-A003989(n+1)`
-/

namespace A074712.P10495053140985152220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003983 (n + 1) + (A051125 (n + 1) - A003989 (n + 1))

end

end A074712.P10495053140985152220

namespace A074712

/-- `A003983(n+1)+A051125(n+1)-A003989(n+1)` -/
def P10495053140985152220.Spec : Prop :=
  ∀ n, P10495053140985152220.a n = A074712 (n + 1)

end A074712

/-! ## A074712.P17060973817399016629

`A003057(n+2)-A003057(n+2)/A106448(n+1)`
-/

namespace A074712.P17060973817399016629
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003057 (n + 2) : ℚ) - (A003057 (n + 2) : ℚ) / (A106448 (n + 1) : ℚ)

end

end A074712.P17060973817399016629

namespace A074712

/-- `A003057(n+2)-A003057(n+2)/A106448(n+1)` -/
def P17060973817399016629.Spec : Prop :=
  ∀ n, P17060973817399016629.a n = (A074712 (n + 1) : ℚ)

end A074712

/-! ## A074712.P11088682413673988367

`A004736(n+1+A004736(n+1)+A003989(n+1))`
-/

namespace A074712.P11088682413673988367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 ((n + 1 : ℤ) + (A004736 (n + 1) + A003989 (n + 1))).toNat

end

end A074712.P11088682413673988367

namespace A074712

/-- `A004736(n+1+A004736(n+1)+A003989(n+1))` -/
def P11088682413673988367.Spec : Prop :=
  ∀ n, P11088682413673988367.a n = A074712 (n + 1)

end A074712

/-! ## A074712.P15340113413172222815

`A003057(n+2)-A050873(A003057(n+2)+n)`
-/

namespace A074712.P15340113413172222815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003057 (n + 2) - A050873 (A003057 (n + 2) + (n : ℤ)).toNat

end

end A074712.P15340113413172222815

namespace A074712

/-- `A003057(n+2)-A050873(A003057(n+2)+n)` -/
def P15340113413172222815.Spec : Prop :=
  ∀ n, P15340113413172222815.a n = A074712 (n + 1)

end A074712

/-! ## A074712.P16929021881161007508

`A097285(2*(n+1))-gcd(A097285(2*n+1), A097285(2*(n+1)))`
-/

namespace A074712.P16929021881161007508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097285 (2 * (n + 1)) - (Int.gcd (A097285 (2 * n + 1)) (A097285 (2 * (n + 1))) : ℤ)

end

end A074712.P16929021881161007508

namespace A074712

/-- `A097285(2*(n+1))-gcd(A097285(2*n+1), A097285(2*(n+1)))` -/
def P16929021881161007508.Spec : Prop :=
  ∀ n, P16929021881161007508.a n = A074712 (n + 1)

end A074712

/-! ## A074712.P10810711586713761945

`A002024(n+1)+1-A002260(A286101(n+1))`
-/

namespace A074712.P10810711586713761945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1) + (1 - A002260 (A286101 (n + 1)).toNat)

end

end A074712.P10810711586713761945

namespace A074712

/-- `A002024(n+1)+1-A002260(A286101(n+1))` -/
def P10810711586713761945.Spec : Prop :=
  ∀ n, P10810711586713761945.a n = A074712 (n + 1)

end A074712

/-! ## A074712.P6240949331037204081

`A002260(n+1)+A004736(n+1)-A002260(A286101(n+1))`
-/

namespace A074712.P6240949331037204081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) + (A004736 (n + 1) - A002260 (A286101 (n + 1)).toNat)

end

end A074712.P6240949331037204081

namespace A074712

/-- `A002260(n+1)+A004736(n+1)-A002260(A286101(n+1))` -/
def P6240949331037204081.Spec : Prop :=
  ∀ n, P6240949331037204081.a n = A074712 (n + 1)

end A074712

/-! ## A074712.P13113158469337889738

`A002260(n+1)+A004736(n+1)-A004736(A286102(n+1))`
-/

namespace A074712.P13113158469337889738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) + (A004736 (n + 1) - A004736 (A286102 (n + 1)).toNat)

end

end A074712.P13113158469337889738

namespace A074712

/-- `A002260(n+1)+A004736(n+1)-A004736(A286102(n+1))` -/
def P13113158469337889738.Spec : Prop :=
  ∀ n, P13113158469337889738.a n = A074712 (n + 1)

end A074712

/-! ## A074712.P15649476166114385520

`A004736(n+1)+A000523(A228035(n))`
-/

namespace A074712.P15649476166114385520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) + A000523 (A228035 n).toNat

end

end A074712.P15649476166114385520

namespace A074712

/-- `A004736(n+1)+A000523(A228035(n))` -/
def P15649476166114385520.Spec : Prop :=
  ∀ n, P15649476166114385520.a n = A074712 (n + 1)

end A074712

/-!
# A074714: Primes that divide Fibonacci number F(2^k) for some k.

The programs for A074714, there is no canonical definition to state claims against.
-/

/-! ## A074714.P8286406382286462315

`record[p?[A213060(A158687(n))]]`
-/

namespace A074714.P8286406382286462315
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213060 (A158687 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A074714.P8286406382286462315

/-!
# A074717: Least k such that floor(2^n/k) is prime.

The programs for A074717, there is no canonical definition to state claims against.
-/

/-! ## A074717.P7954985874223486641

`A331954(2^(n+1))`
-/

namespace A074717.P7954985874223486641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331954 (2 ^ (n + 1))

end

end A074717.P7954985874223486641

/-! ## A074717.P4947365676559154882

`and(-1, A331954(A000079(n+1)))`
-/

namespace A074717.P4947365676559154882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A331954 (A000079 (n + 1)).toNat)

end

end A074717.P4947365676559154882

/-! ## A074717.P15630758396070402835

`A331954(A000079(n+1))%A004490(n+1)`
-/

namespace A074717.P15630758396070402835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A331954 (A000079 (n + 1)).toNat) (A004490 (n + 1))

end

end A074717.P15630758396070402835

/-! ## A074717.P7322850870384066451

`or(A185012(n), A331954(A060546(2*(n+1))))`
-/

namespace A074717.P7322850870384066451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A185012 n) (A331954 (A060546 (2 * (n + 1))).toNat)

end

end A074717.P7322850870384066451

/-! ## A074717.P10909306266949945889

`A331954(A060546(2*(n+1)))+A272624(n+1)`
-/

namespace A074717.P10909306266949945889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331954 (A060546 (2 * (n + 1))).toNat + A272624 (n + 1)

end

end A074717.P10909306266949945889

/-!
# A074719: ip(n): the number of primes not exceeding reverse(n).

The programs for A074719, there is no canonical definition to state claims against.
-/

/-! ## A074719.P11845076569755985060

`A000720(A004086(n+1))`
-/

namespace A074719.P11845076569755985060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A004086 (n + 1)).toNat

end

end A074719.P11845076569755985060

/-! ## A074719.P13594465667370067383

`A085655(n+1)+A000720(n+1)`
-/

namespace A074719.P13594465667370067383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085655 (n + 1) + A000720 (n + 1)

end

end A074719.P13594465667370067383

/-! ## A074719.P10938334162728614419

`A000720(A056964(n+1)-(n+1))`
-/

namespace A074719.P10938334162728614419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A056964 (n + 1) - (n + 1 : ℤ)).toNat

end

end A074719.P10938334162728614419

/-! ## A074719.P2094034616315088944

`A230980(A004086(∑[n+1]-∑[n]))`
-/

namespace A074719.P2094034616315088944
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (A004086 (∑ j ∈ Finset.range (n + 1), f1 j - ∑ j ∈ Finset.range (n + 1), f2 j)).toNat

end

end A074719.P2094034616315088944

/-! ## A074719.P17125570523768780357

`A230980(abs(1-A004086(n+1))+1)`
-/

namespace A074719.P17125570523768780357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (|1 - A004086 (n + 1)| + 1).toNat

end

end A074719.P17125570523768780357

/-! ## A074719.P9811352897531213980

`A036234(A004086(n+1))%A190847(n+1)-1`
-/

namespace A074719.P9811352897531213980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A036234 (A004086 (n + 1)).toNat) (A190847 (n + 1)) - 1

end

end A074719.P9811352897531213980

/-! ## A074719.P15632309529161854935

`A036234(A004086(n+1))-A057427(n+1)`
-/

namespace A074719.P15632309529161854935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (A004086 (n + 1)).toNat - A057427 (n + 1)

end

end A074719.P15632309529161854935

/-! ## A074719.P9376295841715398530

`A000720(A135020(2*(n+1)))`
-/

namespace A074719.P9376295841715398530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A135020 (2 * (n + 1))).toNat

end

end A074719.P9376295841715398530

/-! ## A074719.P9916293878093016265

`A000720(A062919(n+1)/A062919(n))`
-/

namespace A074719.P9916293878093016265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (SequenceMachineLib.roundAway ((A062919 (n + 1) : ℚ) / (A062919 n : ℚ))).toNat

end

end A074719.P9916293878093016265

/-! ## A074719.P13450433648861198197

`A132090(A124180(n+1))`
-/

namespace A074719.P13450433648861198197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132090 (A124180 (n + 1)).toNat

end

end A074719.P13450433648861198197

/-!
# A074722: a(n) = Sum_{d divides n} phi(n/d)*(-1)^bigomega(d).

The programs for A074722, the canonical program `A074722.P16633389370037987810` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074722 has offset 1).

The definition of A074722 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A074722.P9601154387794867134

`2*A378535(n+1)-(n+1)`
-/

namespace A074722.P9601154387794867134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A378535 (n + 1) - (n + 1 : ℤ)

end

end A074722.P9601154387794867134

namespace A074722

/-- `2*A378535(n+1)-(n+1)` -/
def P9601154387794867134.Spec : Prop :=
  ∀ n, P9601154387794867134.a n = A074722 (n + 1)

end A074722

/-! ## A074722.P2096094415782002451

`∑{d}[n+1, #*A158522((n+1)/#)]`
-/

namespace A074722.P2096094415782002451
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A158522 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A074722.P2096094415782002451

namespace A074722

/-- `∑{d}[n+1, #*A158522((n+1)/#)]` -/
def P2096094415782002451.Spec : Prop :=
  ∀ n, P2096094415782002451.a n = A074722 (n + 1)

end A074722

/-! ## A074722.P3443377079246265095

`∑{d}[n+1, A000010(#)*A008836((n+1)/#)]`
-/

namespace A074722.P3443377079246265095
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A008836 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A074722.P3443377079246265095

namespace A074722

/-- `∑{d}[n+1, A000010(#)*A008836((n+1)/#)]` -/
def P3443377079246265095.Spec : Prop :=
  ∀ n, P3443377079246265095.a n = A074722 (n + 1)

end A074722

/-! ## A074722.P16532598305890604785

`∑{d}[n+1, A007431(#)*A010052((n+1)/#)]`
-/

namespace A074722.P16532598305890604785
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007431 d * A010052 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A074722.P16532598305890604785

namespace A074722

/-- `∑{d}[n+1, A007431(#)*A010052((n+1)/#)]` -/
def P16532598305890604785.Spec : Prop :=
  ∀ n, P16532598305890604785.a n = A074722 (n + 1)

end A074722

/-! ## A074722.P13911043198089793567

`∑{d}[n+1, A007432(#)*A046951((n+1)/#)]`
-/

namespace A074722.P13911043198089793567
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007432 d * A046951 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A074722.P13911043198089793567

namespace A074722

/-- `∑{d}[n+1, A007432(#)*A046951((n+1)/#)]` -/
def P13911043198089793567.Spec : Prop :=
  ∀ n, P13911043198089793567.a n = A074722 (n + 1)

end A074722

/-! ## A074722.P13263397038816416745

`∑{d}[n+1, A007427(#)*A076752((n+1)/#)]`
-/

namespace A074722.P13263397038816416745
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A076752 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A074722.P13263397038816416745

namespace A074722

/-- `∑{d}[n+1, A007427(#)*A076752((n+1)/#)]` -/
def P13263397038816416745.Spec : Prop :=
  ∀ n, P13263397038816416745.a n = A074722 (n + 1)

end A074722

/-! ## A074722.P12081842338448570660

`∑{d}[n+1, A008683(#)*A206369((n+1)/#)]`
-/

namespace A074722.P12081842338448570660
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A206369 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A074722.P12081842338448570660

namespace A074722

/-- `∑{d}[n+1, A008683(#)*A206369((n+1)/#)]` -/
def P12081842338448570660.Spec : Prop :=
  ∀ n, P12081842338448570660.a n = A074722 (n + 1)

end A074722

/-! ## A074722.P9407837644307596603

`∑{d}[n+1, A000203(#)*A326415((n+1)/#)]`
-/

namespace A074722.P9407837644307596603
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000203 d * A326415 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A074722.P9407837644307596603

namespace A074722

/-- `∑{d}[n+1, A000203(#)*A326415((n+1)/#)]` -/
def P9407837644307596603.Spec : Prop :=
  ∀ n, P9407837644307596603.a n = A074722 (n + 1)

end A074722

/-! ## A074722.P16633389370037987810

`∑{d}[n+1, A007428(#)*A332844((n+1)/#)]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A074722

/-- `∑{d}[n+1, A007428(#)*A332844((n+1)/#)]` -/
def P16633389370037987810.Spec : Prop :=
  ∀ n, P16633389370037987810.a n = A074722 (n + 1)

theorem P16633389370037987810.correct : P16633389370037987810.Spec := by
  intro n
  simp only [A074722, Nat.add_sub_cancel]

end A074722

/-! ## A074722.P2107665647768508952

`∑{d}[n+1, A018804(#)*A323363((n+1)/#)]`
-/

namespace A074722.P2107665647768508952
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A018804 d * A323363 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A074722.P2107665647768508952

namespace A074722

/-- `∑{d}[n+1, A018804(#)*A323363((n+1)/#)]` -/
def P2107665647768508952.Spec : Prop :=
  ∀ n, P2107665647768508952.a n = A074722 (n + 1)

end A074722

/-! ## A074722.P6840680194479467117

`∑{d}[n+1, A078429(#)*A307428((n+1)/#)]`
-/

namespace A074722.P6840680194479467117
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A078429 d * A307428 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A074722.P6840680194479467117

namespace A074722

/-- `∑{d}[n+1, A078429(#)*A307428((n+1)/#)]` -/
def P6840680194479467117.Spec : Prop :=
  ∀ n, P6840680194479467117.a n = A074722 (n + 1)

end A074722

/-! ## A074722.P12793264740308973700

`∑{d}[n+1, A063659(#)*A329484((n+1)/#)]`
-/

namespace A074722.P12793264740308973700
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A063659 d * A329484 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A074722.P12793264740308973700

namespace A074722

/-- `∑{d}[n+1, A063659(#)*A329484((n+1)/#)]` -/
def P12793264740308973700.Spec : Prop :=
  ∀ n, P12793264740308973700.a n = A074722 (n + 1)

end A074722

/-! ## A074722.P762043625581177024

`∑{d}[n+1, A069097(#)*A328639((n+1)/#)]`
-/

namespace A074722.P762043625581177024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A069097 d * A328639 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A074722.P762043625581177024

namespace A074722

/-- `∑{d}[n+1, A069097(#)*A328639((n+1)/#)]` -/
def P762043625581177024.Spec : Prop :=
  ∀ n, P762043625581177024.a n = A074722 (n + 1)

end A074722

/-! ## A074722.P11378970242714669733

`∑{d}[n+1, A165872(#)*A333569((n+1)/#)]`
-/

namespace A074722.P11378970242714669733
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A165872 d * A333569 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A074722.P11378970242714669733

namespace A074722

/-- `∑{d}[n+1, A165872(#)*A333569((n+1)/#)]` -/
def P11378970242714669733.Spec : Prop :=
  ∀ n, P11378970242714669733.a n = A074722 (n + 1)

end A074722

/-! ## A074722.P13891892641532081915

`∑{d}[n+1, A327274(#)*A328373((n+1)/#)]`
-/

namespace A074722.P13891892641532081915
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A327274 d * A328373 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A074722.P13891892641532081915

namespace A074722

/-- `∑{d}[n+1, A327274(#)*A328373((n+1)/#)]` -/
def P13891892641532081915.Spec : Prop :=
  ∀ n, P13891892641532081915.a n = A074722 (n + 1)

end A074722

/-! ## A074722.P9732783410119626445

`∑{d}[n+1, A328640(#)*A343497((n+1)/#)]`
-/

namespace A074722.P9732783410119626445
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A328640 d * A343497 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A074722.P9732783410119626445

namespace A074722

/-- `∑{d}[n+1, A328640(#)*A343497((n+1)/#)]` -/
def P9732783410119626445.Spec : Prop :=
  ∀ n, P9732783410119626445.a n = A074722 (n + 1)

end A074722

/-! ## A074722.P7186064479740281968

`∑{d}[n+1, A378452(#)*A378535((n+1)/#)]`
-/

namespace A074722.P7186064479740281968
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A378452 d * A378535 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A074722.P7186064479740281968

namespace A074722

/-- `∑{d}[n+1, A378452(#)*A378535((n+1)/#)]` -/
def P7186064479740281968.Spec : Prop :=
  ∀ n, P7186064479740281968.a n = A074722 (n + 1)

end A074722

/-! ## A074722.P9555823093982826063

`∑{d}[n+1, A378453(#)*A378542((n+1)/#)]`
-/

namespace A074722.P9555823093982826063
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A378453 d * A378542 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A074722.P9555823093982826063

namespace A074722

/-- `∑{d}[n+1, A378453(#)*A378542((n+1)/#)]` -/
def P9555823093982826063.Spec : Prop :=
  ∀ n, P9555823093982826063.a n = A074722 (n + 1)

end A074722

/-!
# A074723: Largest power of 2 dividing F(3n) where F(k) is the k-th Fibonacci number.

The programs for A074723, the canonical program `A074723.P8953292722301317555` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074723 has offset 1).

The definition of A074723 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A074723.P12299375073403429954

`2*A297402(n+1)`
-/

namespace A074723.P12299375073403429954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A297402 (n + 1)

end

end A074723.P12299375073403429954

namespace A074723

/-- `2*A297402(n+1)` -/
def P12299375073403429954.Spec : Prop :=
  ∀ n, P12299375073403429954.a n = A074723 (n + 1)

end A074723

/-! ## A074723.P8953292722301317555

`2^val(A000045(3*(n+1)), 2)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A074723

/-- `2^val(A000045(3*(n+1)), 2)` -/
def P8953292722301317555.Spec : Prop :=
  ∀ n, (P8953292722301317555.a n : ℤ) = A074723 (n + 1)

theorem P8953292722301317555.correct : P8953292722301317555.Spec := by
  intro n
  simp only [A074723, Nat.add_sub_cancel]

end A074723

/-! ## A074723.P11002168103653220718

`2*(xor(n+1, or(1, n))+1)`
-/

namespace A074723.P11002168103653220718
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (Nat.xor (n + 1) (Nat.lor 1 n) + 1)

end

end A074723.P11002168103653220718

namespace A074723

/-- `2*(xor(n+1, or(1, n))+1)` -/
def P11002168103653220718.Spec : Prop :=
  ∀ n, (P11002168103653220718.a n : ℤ) = A074723 (n + 1)

end A074723

/-! ## A074723.P16665589879614475504

`2^val(∑[∑[4*n]+2], 2)`
-/

namespace A074723.P16665589879614475504
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ SequenceMachineLib.valuation (∑ j ∈ Finset.range (n + 1), f1 j) 2

end

end A074723.P16665589879614475504

namespace A074723

/-- `2^val(∑[∑[4*n]+2], 2)` -/
def P16665589879614475504.Spec : Prop :=
  ∀ n, (P16665589879614475504.a n : ℤ) = A074723 (n + 1)

end A074723

/-! ## A074723.P5766238122532633201

`2*(xor(n, n+1)+and(1, n))`
-/

namespace A074723.P5766238122532633201
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (Nat.xor n (n + 1) + Nat.land 1 n)

end

end A074723.P5766238122532633201

namespace A074723

/-- `2*(xor(n, n+1)+and(1, n))` -/
def P5766238122532633201.Spec : Prop :=
  ∀ n, (P5766238122532633201.a n : ℤ) = A074723 (n + 1)

end A074723

/-! ## A074723.P6486934497116078474

`2^(val(n+1, 2)+gcd(2, n+1))`
-/

namespace A074723.P6486934497116078474
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (SequenceMachineLib.valuation (n + 1) 2 + Nat.gcd 2 (n + 1))

end

end A074723.P6486934497116078474

namespace A074723

/-- `2^(val(n+1, 2)+gcd(2, n+1))` -/
def P6486934497116078474.Spec : Prop :=
  ∀ n, (P6486934497116078474.a n : ℤ) = A074723 (n + 1)

end A074723

/-! ## A074723.P12596017926940988535

`2*gcd(2*(n+1), and(n+1, n-1))`
-/

namespace A074723.P12596017926940988535
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Int.gcd (2 * (n + 1) : ℤ) (Int.land (n + 1 : ℤ) ((n : ℤ) - 1))

end

end A074723.P12596017926940988535

namespace A074723

/-- `2*gcd(2*(n+1), and(n+1, n-1))` -/
def P12596017926940988535.Spec : Prop :=
  ∀ n, (P12596017926940988535.a n : ℤ) = A074723 (n + 1)

end A074723

/-! ## A074723.P8941694697426294762

`2^A090740(n+1)`
-/

namespace A074723.P8941694697426294762
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A090740 (n + 1) : ℤ)

end

end A074723.P8941694697426294762

namespace A074723

/-- `2^A090740(n+1)` -/
def P8941694697426294762.Spec : Prop :=
  ∀ n, P8941694697426294762.a n = (A074723 (n + 1) : ℚ)

end A074723

/-! ## A074723.P11604657304041054436

`A059159(n+1)/gcd(2, n)`
-/

namespace A074723.P11604657304041054436
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059159 (n + 1) : ℚ) / (Nat.gcd 2 n : ℚ)

end

end A074723.P11604657304041054436

namespace A074723

/-- `A059159(n+1)/gcd(2, n)` -/
def P11604657304041054436.Spec : Prop :=
  ∀ n, P11604657304041054436.a n = (A074723 (n + 1) : ℚ)

end A074723

/-! ## A074723.P16343325165898575758

`2*A080578(2^val(n+1, 2))`
-/

namespace A074723.P16343325165898575758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A080578 (2 ^ SequenceMachineLib.valuation (n + 1) 2)

end

end A074723.P16343325165898575758

namespace A074723

/-- `2*A080578(2^val(n+1, 2))` -/
def P16343325165898575758.Spec : Prop :=
  ∀ n, P16343325165898575758.a n = A074723 (n + 1)

end A074723

/-! ## A074723.P2241638632085904935

`2/(n+1)*A370564(n+1)`
-/

namespace A074723.P2241638632085904935
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (n + 1 : ℚ) * (A370564 (n + 1) : ℚ)

end

end A074723.P2241638632085904935

namespace A074723

/-- `2/(n+1)*A370564(n+1)` -/
def P2241638632085904935.Spec : Prop :=
  ∀ n, P2241638632085904935.a n = (A074723 (n + 1) : ℚ)

end A074723

/-! ## A074723.P14458156432310730772

`A000203(xor(n+1, or(1, n))+1)+1`
-/

namespace A074723.P14458156432310730772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (Nat.xor (n + 1) (Nat.lor 1 n) + 1) + 1

end

end A074723.P14458156432310730772

namespace A074723

/-- `A000203(xor(n+1, or(1, n))+1)+1` -/
def P14458156432310730772.Spec : Prop :=
  ∀ n, P14458156432310730772.a n = A074723 (n + 1)

end A074723

/-! ## A074723.P11715222904421494572

`A000079(A090740(n+1))`
-/

namespace A074723.P11715222904421494572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A090740 (n + 1)).toNat

end

end A074723.P11715222904421494572

namespace A074723

/-- `A000079(A090740(n+1))` -/
def P11715222904421494572.Spec : Prop :=
  ∀ n, P11715222904421494572.a n = A074723 (n + 1)

end A074723

/-! ## A074723.P6883180397635161716

`A047467(A006519(n+1)+1)`
-/

namespace A074723.P6883180397635161716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047467 (A006519 (n + 1) + 1).toNat

end

end A074723.P6883180397635161716

namespace A074723

/-- `A047467(A006519(n+1)+1)` -/
def P6883180397635161716.Spec : Prop :=
  ∀ n, P6883180397635161716.a n = A074723 (n + 1)

end A074723

/-! ## A074723.P7249011387760126971

`A011782(A090740(n+1)+1)`
-/

namespace A074723.P7249011387760126971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A090740 (n + 1) + 1).toNat

end

end A074723.P7249011387760126971

namespace A074723

/-- `A011782(A090740(n+1)+1)` -/
def P7249011387760126971.Spec : Prop :=
  ∀ n, P7249011387760126971.a n = A074723 (n + 1)

end A074723

/-! ## A074723.P4938301623594184820

`A131577(A090740(n+1)+1)`
-/

namespace A074723.P4938301623594184820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 (A090740 (n + 1) + 1).toNat

end

end A074723.P4938301623594184820

namespace A074723

/-- `A131577(A090740(n+1)+1)` -/
def P4938301623594184820.Spec : Prop :=
  ∀ n, P4938301623594184820.a n = A074723 (n + 1)

end A074723

/-! ## A074723.P6642530090940026348

`A090129(A195986(n+1)+1)`
-/

namespace A074723.P6642530090940026348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090129 (A195986 (n + 1) + 1).toNat

end

end A074723.P6642530090940026348

namespace A074723

/-- `A090129(A195986(n+1)+1)` -/
def P6642530090940026348.Spec : Prop :=
  ∀ n, P6642530090940026348.a n = A074723 (n + 1)

end A074723

/-! ## A074723.P10575816430608051259

`A090129(A090740(n+1)+2)`
-/

namespace A074723.P10575816430608051259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090129 (A090740 (n + 1) + 2).toNat

end

end A074723.P10575816430608051259

namespace A074723

/-- `A090129(A090740(n+1)+2)` -/
def P10575816430608051259.Spec : Prop :=
  ∀ n, P10575816430608051259.a n = A074723 (n + 1)

end A074723

/-! ## A074723.P197190162774950406

`A100892(n+1)+A010673(n)`
-/

namespace A074723.P197190162774950406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100892 (n + 1) + A010673 n

end

end A074723.P197190162774950406

namespace A074723

/-- `A100892(n+1)+A010673(n)` -/
def P197190162774950406.Spec : Prop :=
  ∀ n, P197190162774950406.a n = A074723 (n + 1)

end A074723

/-! ## A074723.P4534162384950295238

`A393210(n+1)+A010684(n)`
-/

namespace A074723.P4534162384950295238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393210 (n + 1) + A010684 n

end

end A074723.P4534162384950295238

namespace A074723

/-- `A393210(n+1)+A010684(n)` -/
def P4534162384950295238.Spec : Prop :=
  ∀ n, P4534162384950295238.a n = A074723 (n + 1)

end A074723

/-!
# A074724: Highest power of 3 dividing F(4n) where F(k) is the k-th Fibonacci number.

The programs for A074724, the canonical program `A074724.P11753766922051158817` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074724 has offset 1).

The definition of A074724 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A074724.P11753766922051158817

`3^val(A000045(4*(n+1)), 3)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A074724

/-- `3^val(A000045(4*(n+1)), 3)` -/
def P11753766922051158817.Spec : Prop :=
  ∀ n, (P11753766922051158817.a n : ℤ) = A074724 (n + 1)

theorem P11753766922051158817.correct : P11753766922051158817.Spec := by
  intro n
  simp only [A074724, Nat.add_sub_cancel]

end A074724

/-! ## A074724.P14141489293287993418

`3^(val(n+1, 3)+1)`
-/

namespace A074724.P14141489293287993418
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ (SequenceMachineLib.valuation (n + 1) 3 + 1)

end

end A074724.P14141489293287993418

namespace A074724

/-- `3^(val(n+1, 3)+1)` -/
def P14141489293287993418.Spec : Prop :=
  ∀ n, (P14141489293287993418.a n : ℤ) = A074724 (n + 1)

end A074724

/-! ## A074724.P14644386052151330452

`3*gcd(n+1, 3^dr(n))`
-/

namespace A074724.P14644386052151330452
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * Nat.gcd (n + 1) (3 ^ SequenceMachineLib.digitalRoot (n : ℤ))

end

end A074724.P14644386052151330452

namespace A074724

/-- `3*gcd(n+1, 3^dr(n))` -/
def P14644386052151330452.Spec : Prop :=
  ∀ n, (P14644386052151330452.a n : ℤ) = A074724 (n + 1)

end A074724

/-! ## A074724.P5966390690867801319

`root(3, 1/(val(n+1, 3)+1))`
-/

namespace A074724.P5966390690867801319
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (3 : ℝ) ^ (1 / (1 / (SequenceMachineLib.valuation (n + 1) 3 + 1 : ℚ) : ℝ))

end

end A074724.P5966390690867801319

namespace A074724

/-- `root(3, 1/(val(n+1, 3)+1))` -/
def P5966390690867801319.Spec : Prop :=
  ∀ n, P5966390690867801319.a n = (A074724 (n + 1) : ℝ)

end A074724

/-! ## A074724.P8871515189477267853

`3^val(4*n-(n-3), 3)`
-/

namespace A074724.P8871515189477267853
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ SequenceMachineLib.valuation ((4 * n : ℤ) - ((n : ℤ) - 3)).toNat 3

end

end A074724.P8871515189477267853

namespace A074724

/-- `3^val(4*n-(n-3), 3)` -/
def P8871515189477267853.Spec : Prop :=
  ∀ n, (P8871515189477267853.a n : ℤ) = A074724 (n + 1)

end A074724

/-! ## A074724.P15754240346732137537

`exp((val(n+1, 3)+1)*log(3))`
-/

namespace A074724.P15754240346732137537
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.exp ((SequenceMachineLib.valuation (n + 1) 3 + 1 : ℝ) * Real.log (3 : ℝ))

end

end A074724.P15754240346732137537

namespace A074724

/-- `exp((val(n+1, 3)+1)*log(3))` -/
def P15754240346732137537.Spec : Prop :=
  ∀ n, P15754240346732137537.a n = (A074724 (n + 1) : ℝ)

end A074724

/-! ## A074724.P10580345542556301186

`3^Δ[a(floor(n/3))+n]` with `a(0)=0`
-/

namespace A074724.P10580345542556301186
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 ⌊(n : ℚ) / 3⌋.toNat + n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℤ)

end

end A074724.P10580345542556301186

namespace A074724

/-- `3^Δ[a(floor(n/3))+n]` -/
def P10580345542556301186.Spec : Prop :=
  ∀ n, P10580345542556301186.a n = (A074724 (n + 1) : ℚ)

end A074724

/-! ## A074724.P5377072150215440404

`3*A038500(n+1)`
-/

namespace A074724.P5377072150215440404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A038500 (n + 1)

end

end A074724.P5377072150215440404

namespace A074724

/-- `3*A038500(n+1)` -/
def P5377072150215440404.Spec : Prop :=
  ∀ n, P5377072150215440404.a n = A074724 (n + 1)

end A074724

/-! ## A074724.P1157497828906921082

`3^A051064(n+1)`
-/

namespace A074724.P1157497828906921082
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A051064 (n + 1) : ℤ)

end

end A074724.P1157497828906921082

namespace A074724

/-- `3^A051064(n+1)` -/
def P1157497828906921082.Spec : Prop :=
  ∀ n, P1157497828906921082.a n = (A074724 (n + 1) : ℚ)

end A074724

/-! ## A074724.P17971074792641018644

`2*A080278(n+1)+1`
-/

namespace A074724.P17971074792641018644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A080278 (n + 1) + 1

end

end A074724.P17971074792641018644

namespace A074724

/-- `2*A080278(n+1)+1` -/
def P17971074792641018644.Spec : Prop :=
  ∀ n, P17971074792641018644.a n = A074724 (n + 1)

end A074724

/-! ## A074724.P15290938731543122448

`3^(A007949(n+1)+1)`
-/

namespace A074724.P15290938731543122448
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A007949 (n + 1) + 1 : ℤ)

end

end A074724.P15290938731543122448

namespace A074724

/-- `3^(A007949(n+1)+1)` -/
def P15290938731543122448.Spec : Prop :=
  ∀ n, P15290938731543122448.a n = (A074724 (n + 1) : ℚ)

end A074724

/-! ## A074724.P13039686508499957880

`3^(A366922(n+1)-1)`
-/

namespace A074724.P13039686508499957880
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A366922 (n + 1) - 1 : ℤ)

end

end A074724.P13039686508499957880

namespace A074724

/-- `3^(A366922(n+1)-1)` -/
def P13039686508499957880.Spec : Prop :=
  ∀ n, P13039686508499957880.a n = (A074724 (n + 1) : ℚ)

end A074724

/-! ## A074724.P1920438351843065413

`3*(n+1)/A038502(n+1)`
-/

namespace A074724.P1920438351843065413
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 * ((n + 1 : ℚ) / (A038502 (n + 1) : ℚ))

end

end A074724.P1920438351843065413

namespace A074724

/-- `3*(n+1)/A038502(n+1)` -/
def P1920438351843065413.Spec : Prop :=
  ∀ n, P1920438351843065413.a n = (A074724 (n + 1) : ℚ)

end A074724

/-! ## A074724.P3432024408405362511

`3^(A364222(n+1)/(n+1))`
-/

namespace A074724.P3432024408405362511
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (3 : ℝ) ^ ((A364222 (n + 1) : ℚ) / (n + 1 : ℚ) : ℝ)

end

end A074724.P3432024408405362511

namespace A074724

/-- `3^(A364222(n+1)/(n+1))` -/
def P3432024408405362511.Spec : Prop :=
  ∀ n, P3432024408405362511.a n = (A074724 (n + 1) : ℝ)

end A074724

/-! ## A074724.P16996001930381052346

`gcd(3*(n+1), 3^A000005(n+1))`
-/

namespace A074724.P16996001930381052346
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (3 * (n + 1) : ℤ) (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A000005 (n + 1) : ℤ)))

end

end A074724.P16996001930381052346

namespace A074724

/-- `gcd(3*(n+1), 3^A000005(n+1))` -/
def P16996001930381052346.Spec : Prop :=
  ∀ n, (P16996001930381052346.a n : ℤ) = A074724 (n + 1)

end A074724

/-! ## A074724.P11616247797893073975

`A007844(A080278(n+1))`
-/

namespace A074724.P11616247797893073975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007844 (A080278 (n + 1)).toNat

end

end A074724.P11616247797893073975

namespace A074724

/-- `A007844(A080278(n+1))` -/
def P11616247797893073975.Spec : Prop :=
  ∀ n, P11616247797893073975.a n = A074724 (n + 1)

end A074724

/-! ## A074724.P2962164684527708070

`A000244(Δ[A054861(n)]+1)`
-/

namespace A074724.P2962164684527708070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054861 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 (f1 (n + 1) - f1 n + 1).toNat

end

end A074724.P2962164684527708070

namespace A074724

/-- `A000244(Δ[A054861(n)]+1)` -/
def P2962164684527708070.Spec : Prop :=
  ∀ n, P2962164684527708070.a n = A074724 (n + 1)

end A074724

/-! ## A074724.P13671156102462896043

`3^A001511(A064989(n+1))`
-/

namespace A074724.P13671156102462896043
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A001511 (A064989 (n + 1)).toNat : ℤ)

end

end A074724.P13671156102462896043

namespace A074724

/-- `3^A001511(A064989(n+1))` -/
def P13671156102462896043.Spec : Prop :=
  ∀ n, P13671156102462896043.a n = (A074724 (n + 1) : ℚ)

end A074724

/-! ## A074724.P11029323810385254106

`gcd(A017561(n), A234904(n+1))`
-/

namespace A074724.P11029323810385254106
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A017561 n) (A234904 (n + 1))

end

end A074724.P11029323810385254106

namespace A074724

/-- `gcd(A017561(n), A234904(n+1))` -/
def P11029323810385254106.Spec : Prop :=
  ∀ n, (P11029323810385254106.a n : ℤ) = A074724 (n + 1)

end A074724

/-! ## A074724.P12151770417444496429

`A166466(gcd(n+1, A259364(n)))`
-/

namespace A074724.P12151770417444496429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166466 (Int.gcd (n + 1 : ℤ) (A259364 n))

end

end A074724.P12151770417444496429

namespace A074724

/-- `A166466(gcd(n+1, A259364(n)))` -/
def P12151770417444496429.Spec : Prop :=
  ∀ n, P12151770417444496429.a n = A074724 (n + 1)

end A074724

/-!
# A074725: Numbers k such that F(k) and C(2k,k) are relatively prime, where F(k) is the k-th Fibonacci number (A000045(k)).

The programs for A074725, there is no canonical definition to state claims against.
-/

/-! ## A074725.P13106585627743940897

`eq[1, gcd(A000045(n), A028329(n))]`
-/

namespace A074725.P13106585627743940897
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000045 n) (A028329 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A074725.P13106585627743940897

/-! ## A074725.P10518899172824016490

`eq[A000034(A300811(n+1)), A294334(n)]`
-/

namespace A074725.P10518899172824016490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A300811 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294334 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A074725.P10518899172824016490

/-! ## A074725.P1524106900497247420

`lt[A330166(n), A330167(A322190(n))]`
-/

namespace A074725.P1524106900497247420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330166 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330167 (A322190 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A074725.P1524106900497247420

/-! ## A074725.P3893483747958516789

`lt[A078400(n+1), A153110(A006003(n))]`
-/

namespace A074725.P3893483747958516789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078400 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153110 (A006003 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A074725.P3893483747958516789

/-! ## A074725.P15540371743520442417

`eq[A046145(A291741(n)), A291770(n+1)]+1`
-/

namespace A074725.P15540371743520442417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046145 (A291741 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291770 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A074725.P15540371743520442417

/-!
# A074726: Numbers k such that sigma(F(k)) > 2*F(k) where F(k) is the k-th Fibonacci number.

The programs for A074726, there is no canonical definition to state claims against.
-/

/-! ## A074726.P9256954009538269283

`lt[A000045(n), A074283(A028310(n))]`
-/

namespace A074726.P9256954009538269283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074283 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A074726.P9256954009538269283

/-! ## A074726.P7983016369572660198

`lt[A000045(n), A074283(A233583(n+1))]`
-/

namespace A074726.P7983016369572660198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074283 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A074726.P7983016369572660198

/-! ## A074726.P11830857932747059059

`lt[A089993(A046215(n+1)), A033630(n)]`
-/

namespace A074726.P11830857932747059059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089993 (A046215 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033630 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A074726.P11830857932747059059

/-! ## A074726.P11934617881900970722

`lt[A366632(n+1), A356920(n+1)]+1`
-/

namespace A074726.P11934617881900970722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366632 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356920 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A074726.P11934617881900970722

/-! ## A074726.P5889593948483024686

`lt[A078134(n+1), A033880(n+1)]+1`
-/

namespace A074726.P5889593948483024686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078134 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033880 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A074726.P5889593948483024686

/-!
# A074728: a(n) = Sum_{k=1..n} k^(n-k)*binomial(n,k-1).

The programs for A074728, there is no canonical definition to state claims against.
-/

/-! ## A074728.P18364320773792624760

`A235596(n+3)/(n+2)`
-/

namespace A074728.P18364320773792624760
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A235596 (n + 3) : ℚ) / (n + 2 : ℚ)

end

end A074728.P18364320773792624760

/-! ## A074728.P14434099341074547607

`floor(A000248(n+2)/(n+2))`
-/

namespace A074728.P14434099341074547607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000248 (n + 2) : ℚ) / (n + 2 : ℚ)⌋

end

end A074728.P14434099341074547607

/-! ## A074728.P2555081499154649203

`(1-A000248(n+2))/A001057(2*(n+2))`
-/

namespace A074728.P2555081499154649203
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 - A000248 (n + 2) : ℚ) / (A001057 (2 * (n + 2)) : ℚ)

end

end A074728.P2555081499154649203

/-! ## A074728.P2162622428414798180

`A000551(n+3)/A002378(n+2)`
-/

namespace A074728.P2162622428414798180
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000551 (n + 3) : ℚ) / (A002378 (n + 2) : ℚ)

end

end A074728.P2162622428414798180

/-! ## A074728.P10290175735524184130

`A000551(n+3)/A005843(A000217(n+2))`
-/

namespace A074728.P10290175735524184130
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000551 (n + 3) : ℚ) / (A005843 (A000217 (n + 2)).toNat : ℚ)

end

end A074728.P10290175735524184130

/-!
# A074732: a(n+3) = floor( ( a(n) + 2*a(n+1) + 3*a(n+2) )/4 ), with a(0), a(1), a(2) equal to 0, 1, 2.

The programs for A074732, the canonical program `A074732.P16374919551718431229` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074732 has offset 0).

The definition of A074732 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A074732.P16374919551718431229

`floor((a(n-3)+2*a(n-2)+3*a(n-1))/4)` with `a(0)=0, a(1)=1, a(2)=2`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A074732

/-- `floor((a(n-3)+2*a(n-2)+3*a(n-1))/4)` -/
def P16374919551718431229.Spec : Prop :=
  ∀ n, P16374919551718431229.a n = A074732 n

theorem P16374919551718431229.correct : P16374919551718431229.Spec := by
  intro n
  simp only [A074732]

end A074732

/-! ## A074732.P15257616140685386941

`A000196(A306486(n)+A047252(n+1))`
-/

namespace A074732.P15257616140685386941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A306486 n + A047252 (n + 1)).toNat

end

end A074732.P15257616140685386941

namespace A074732

/-- `A000196(A306486(n)+A047252(n+1))` -/
def P15257616140685386941.Spec : Prop :=
  ∀ n, P15257616140685386941.a n = A074732 n

end A074732

/-! ## A074732.P7106492023674158642

`A000196(A262869(A028967(n)+A022087(n)))`
-/

namespace A074732.P7106492023674158642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A262869 (A028967 n + A022087 n).toNat).toNat

end

end A074732.P7106492023674158642

namespace A074732

/-- `A000196(A262869(A028967(n)+A022087(n)))` -/
def P7106492023674158642.Spec : Prop :=
  ∀ n, P7106492023674158642.a n = A074732 n

end A074732

/-! ## A074732.P994157871322107237

`A320278(xor(4, A023502(n)))`
-/

namespace A074732.P994157871322107237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320278 (Int.xor 4 (A023502 n)).toNat

end

end A074732.P994157871322107237

namespace A074732

/-- `A320278(xor(4, A023502(n)))` -/
def P994157871322107237.Spec : Prop :=
  ∀ n, P994157871322107237.a n = A074732 n

end A074732

/-! ## A074732.P16075782063539157522

`A056556(A153234(n)+2*n)`
-/

namespace A074732.P16075782063539157522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056556 (A153234 n + (2 * n : ℤ)).toNat

end

end A074732.P16075782063539157522

namespace A074732

/-- `A056556(A153234(n)+2*n)` -/
def P16075782063539157522.Spec : Prop :=
  ∀ n, P16075782063539157522.a n = A074732 n

end A074732

/-!
# A074733: a(n+4) = floor( ( a(n) + 2*a(n+1) + 3*a(n+2) + 4*a(n+3) )/5 ), with a(0), a(1), a(2), a(3) equal to 0, 1, 2, 3.

The programs for A074733, there is no canonical definition to state claims against.
-/

/-! ## A074733.P16408171283820394278

`∑[A000196(A195177(2^n-3^floor(n/2)))]`
-/

namespace A074733.P16408171283820394278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A195177 (SequenceMachineLib.roundAway ((2 ^ n : ℚ) - (3 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ))).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074733.P16408171283820394278

/-! ## A074733.P9558936542895863025

`A335522(record[A046688(n)])`
-/

namespace A074733.P9558936542895863025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046688 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335522 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A074733.P9558936542895863025

/-! ## A074733.P8005658152041081812

`A000196(xor(2^n, A369344(n)))`
-/

namespace A074733.P8005658152041081812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (Int.xor (2 ^ n : ℤ) (A369344 n)).toNat

end

end A074733.P8005658152041081812

/-! ## A074733.P13444423337422333735

`A003059(A304175(n+1))-C(2, n+2)`
-/

namespace A074733.P13444423337422333735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003059 (A304175 (n + 1)).toNat - (Nat.choose 2 (n + 2) : ℤ)

end

end A074733.P13444423337422333735

/-! ## A074733.P16021459295576532066

`A057427(floor(n*2^(n-3)))+A023435(n)`
-/

namespace A074733.P16021459295576532066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 ⌊(n : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 3 : ℤ)⌋.toNat + A023435 n

end

end A074733.P16021459295576532066

/-!
# A074734: Triangle read by rows where T(n,k) = count of differences between standard sort and 'modular sort' over all subsets of k integers chosen from n. Modular sort considers the integers 1..n to lie on a circle and rotates them to exclude the largest interval.

The programs for A074734, there is no canonical definition to state claims against.
-/

/-! ## A074734.P4269736166801611664

`A144430(A020586(n+1))%A028657(n)`
-/

namespace A074734.P4269736166801611664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A144430 (A020586 (n + 1)).toNat) (A028657 n)

end

end A074734.P4269736166801611664

/-! ## A074734.P3760470224276805079

`A007318(n)+A000007(A157393(n+4))-A046854(n)`
-/

namespace A074734.P3760470224276805079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + A000007 (A157393 (n + 4)).toNat - A046854 n

end

end A074734.P3760470224276805079

/-! ## A074734.P15174274966331951469

`A311805(A279785(n))%A007318(n)`
-/

namespace A074734.P15174274966331951469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A311805 (A279785 n).toNat) (A007318 n)

end

end A074734.P15174274966331951469

/-! ## A074734.P18162777727413235790

`A127576(A093546(n+1))%A108350(n)`
-/

namespace A074734.P18162777727413235790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A127576 (A093546 (n + 1)).toNat) (A108350 n)

end

end A074734.P18162777727413235790

/-! ## A074734.P13620156096331772963

`A051470(A376775(2*n+1))%A007318(n)`
-/

namespace A074734.P13620156096331772963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A051470 (A376775 (2 * n + 1)).toNat) (A007318 n)

end

end A074734.P13620156096331772963

/-!
# A074736: Goedel encoding of the prime factors of n, in increasing order and repeated according to multiplicity.

The programs for A074736, there is no canonical definition to state claims against.
-/

/-! ## A074736.P3405915798987020575

`A304660(A064988(n+1))`
-/

namespace A074736.P3405915798987020575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304660 (A064988 (n + 1)).toNat

end

end A074736.P3405915798987020575

/-! ## A074736.P7325901311032236377

`A304203(A304660(n+1))`
-/

namespace A074736.P7325901311032236377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304203 (A304660 (n + 1)).toNat

end

end A074736.P7325901311032236377

/-! ## A074736.P3640852543870844869

`A304660(lt[A342097(n+5), A020639(n+2)])`
-/

namespace A074736.P3640852543870844869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342097 (n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304660 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A074736.P3640852543870844869

/-!
# A074737: Let b(1)=b(2)=1, b(k+2)=gcd(k!,b(k+1)+b(k)); sequence gives values of k such that b(k)=1.

The programs for A074737, there is no canonical definition to state claims against.
-/

/-! ## A074737.P8249822877474236112

`or(A035151(A096746(n)), A376597(n+1))`
-/

namespace A074737.P8249822877474236112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A035151 (A096746 n).toNat) (A376597 (n + 1))

end

end A074737.P8249822877474236112

/-!
# A074739: Numbers n such that omega(n) > log(log(n)).

The programs for A074739, the canonical program `A074739.P8677531906933437778` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074739 has offset 1).

The definition of A074739 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5416 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A074739.P8677531906933437778

`lt[A062419(n+1), A062509(n+1)]+1`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A074739

/-- `lt[A062419(n+1), A062509(n+1)]+1` -/
def P8677531906933437778.Spec : Prop :=
  ∀ n, (P8677531906933437778.a n : ℤ) = A074739 (n + 1)

theorem P8677531906933437778.correct : P8677531906933437778.Spec := by
  intro n
  simp only [A074739, Nat.add_sub_cancel]

end A074739

/-! ## A074739.P18192311805243285731

`lt[atan(A014283(n)), A001221(n+1)]+1`
-/

namespace A074739.P18192311805243285731
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (A014283 n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n + 1

end

end A074739.P18192311805243285731

namespace A074739

/-- `lt[atan(A014283(n)), A001221(n+1)]+1` -/
def P18192311805243285731.Spec : Prop :=
  ∀ n, (P18192311805243285731.a n : ℤ) = A074739 (n + 1)

end A074739

/-! ## A074739.P7269696123825327340

`lt[n+1, A295557(n+1)^4]+1`
-/

namespace A074739.P7269696123825327340
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295557 (n + 1) ^ 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A074739.P7269696123825327340

namespace A074739

/-- `lt[n+1, A295557(n+1)^4]+1` -/
def P7269696123825327340.Spec : Prop :=
  ∀ n, (P7269696123825327340.a n : ℤ) = A074739 (n + 1)

end A074739

/-! ## A074739.P4376563965189437547

`lt[n+1, A295557(A028310(n))^4]`
-/

namespace A074739.P4376563965189437547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295557 (A028310 n).toNat ^ 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A074739.P4376563965189437547

namespace A074739

/-- `lt[n+1, A295557(A028310(n))^4]` -/
def P4376563965189437547.Spec : Prop :=
  ∀ n, (P4376563965189437547.a n : ℤ) = A074739 (n + 1)

end A074739

/-! ## A074739.P16288838355528820959

`record[(n+2)%A063396(A028235(n+2))]`
-/

namespace A074739.P16288838355528820959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 2 : ℤ) (A063396 (A028235 (n + 2)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A074739.P16288838355528820959

namespace A074739

/-- `record[(n+2)%A063396(A028235(n+2))]` -/
def P16288838355528820959.Spec : Prop :=
  ∀ n, P16288838355528820959.a n = A074739 (n + 1)

end A074739

/-! ## A074739.P8124726769685673917

`lt[n+1, A212690(A327641(n))]`
-/

namespace A074739.P8124726769685673917
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212690 (A327641 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A074739.P8124726769685673917

namespace A074739

/-- `lt[n+1, A212690(A327641(n))]` -/
def P8124726769685673917.Spec : Prop :=
  ∀ n, (P8124726769685673917.a n : ℤ) = A074739 (n + 1)

end A074739

/-! ## A074739.P18258496628525150889

`lt[A162753(n), A212675(A327641(n))]`
-/

namespace A074739.P18258496628525150889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162753 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212675 (A327641 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A074739.P18258496628525150889

namespace A074739

/-- `lt[A162753(n), A212675(A327641(n))]` -/
def P18258496628525150889.Spec : Prop :=
  ∀ n, (P18258496628525150889.a n : ℤ) = A074739 (n + 1)

end A074739

/-! ## A074739.P16861966851501948130

`lt[A139337(A003106(n)), A286851(n)]`
-/

namespace A074739.P16861966851501948130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139337 (A003106 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286851 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A074739.P16861966851501948130

namespace A074739

/-- `lt[A139337(A003106(n)), A286851(n)]` -/
def P16861966851501948130.Spec : Prop :=
  ∀ n, (P16861966851501948130.a n : ℤ) = A074739 (n + 1)

end A074739

/-! ## A074739.P14567134737801033508

`lt[A233583(A159077(n+1)), A159062(n+1)]+1`
-/

namespace A074739.P14567134737801033508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A159077 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159062 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A074739.P14567134737801033508

namespace A074739

/-- `lt[A233583(A159077(n+1)), A159062(n+1)]+1` -/
def P14567134737801033508.Spec : Prop :=
  ∀ n, (P14567134737801033508.a n : ℤ) = A074739 (n + 1)

end A074739

/-! ## A074739.P9851001570173244444

`lt[A159077(A233583(n+1)), A159062(n+1)]`
-/

namespace A074739.P9851001570173244444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159077 (A233583 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159062 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A074739.P9851001570173244444

namespace A074739

/-- `lt[A159077(A233583(n+1)), A159062(n+1)]` -/
def P9851001570173244444.Spec : Prop :=
  ∀ n, (P9851001570173244444.a n : ℤ) = A074739 (n + 1)

end A074739

/-!
# A074740: a(n) = n!*2^(n-1)/Product_{k=1..n} tau(k) where tau = A000005.

The programs for A074740, the canonical program `A074740.P3277946273930303314` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074740 has offset 1).

The definition of A074740 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A074740.P3277946273930303314

`A002866(n+1)/A066843(n+1)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A074740

/-- `A002866(n+1)/A066843(n+1)` -/
def P3277946273930303314.Spec : Prop :=
  ∀ n, P3277946273930303314.a n = (A074740 (n + 1) : ℚ)

end A074740

/-! ## A074740.P4213218782229391498

`2*(n+1)/A000005(n+1)*a(n-1)` with `a(0)=1`
-/

namespace A074740.P4213218782229391498
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  2 * ((n + 1 : ℚ) / (A000005 (n + 1) : ℚ) * a (n - 1))

end

end A074740.P4213218782229391498

namespace A074740

/-- `2*(n+1)/A000005(n+1)*a(n-1)` -/
def P4213218782229391498.Spec : Prop :=
  ∀ n, P4213218782229391498.a n = (A074740 (n + 1) : ℚ)

end A074740

/-! ## A074740.P13091169273167202302

`∏[A103517(n)/A000005(n+1)]`
-/

namespace A074740.P13091169273167202302
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A103517 n : ℚ) / (A000005 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A074740.P13091169273167202302

namespace A074740

/-- `∏[A103517(n)/A000005(n+1)]` -/
def P13091169273167202302.Spec : Prop :=
  ∀ n, P13091169273167202302.a n = (A074740 (n + 1) : ℚ)

end A074740

/-! ## A074740.P4728206995855618682

`2*(n+1)*a(n-1)/Δ[A006218(n)]` with `a(0)=1`
-/

namespace A074740.P4728206995855618682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (2 * (n + 1) : ℚ) * a (n - 1) / (f1 (n + 1) - f1 n : ℚ)

end

end A074740.P4728206995855618682

namespace A074740

/-- `2*(n+1)*a(n-1)/Δ[A006218(n)]` -/
def P4728206995855618682.Spec : Prop :=
  ∀ n, P4728206995855618682.a n = (A074740 (n + 1) : ℚ)

end A074740

/-! ## A074740.P7326197408539966907

`∏[A103517(n)]/A066843(n+1)`
-/

namespace A074740.P7326197408539966907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A066843 (n + 1) : ℚ)

end

end A074740.P7326197408539966907

namespace A074740

/-- `∏[A103517(n)]/A066843(n+1)` -/
def P7326197408539966907.Spec : Prop :=
  ∀ n, P7326197408539966907.a n = (A074740 (n + 1) : ℚ)

end A074740

/-!
# A074741: Sum of squares of gaps between consecutive primes.

The programs for A074741, the canonical program `A074741.P11695378759434221485` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074741 has offset 1).

The definition of A074741 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A074741.P11695378759434221485

`a(n-1)+(A000040(n+2)-A000040(n+1))²` with `a(0)=1`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A074741

/-- `a(n-1)+(A000040(n+2)-A000040(n+1))²` -/
def P11695378759434221485.Spec : Prop :=
  ∀ n, P11695378759434221485.a n = A074741 (n + 1)

theorem P11695378759434221485.correct : P11695378759434221485.Spec := by
  intro n
  simp only [A074741, Nat.add_sub_cancel]

end A074741

/-! ## A074741.P13892506058497790618

`∑[A076821(n+1)]`
-/

namespace A074741.P13892506058497790618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074741.P13892506058497790618

namespace A074741

/-- `∑[A076821(n+1)]` -/
def P13892506058497790618.Spec : Prop :=
  ∀ n, P13892506058497790618.a n = A074741 (n + 1)

end A074741

/-! ## A074741.P8088219681218304774

`∑[A001223(n+1)²]`
-/

namespace A074741.P8088219681218304774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074741.P8088219681218304774

namespace A074741

/-- `∑[A001223(n+1)²]` -/
def P8088219681218304774.Spec : Prop :=
  ∀ n, P8088219681218304774.a n = A074741 (n + 1)

end A074741

/-! ## A074741.P17979252268410444411

`∑[log2(A218075(n+1))²]`
-/

namespace A074741.P17979252268410444411
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A218075 (n + 1) : ℝ) ^ 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074741.P17979252268410444411

namespace A074741

/-- `∑[log2(A218075(n+1))²]` -/
def P17979252268410444411.Spec : Prop :=
  ∀ n, P17979252268410444411.a n = (A074741 (n + 1) : ℝ)

end A074741

/-! ## A074741.P13570577484021440496

`∑[Δ[A330547(n+1)]²]`
-/

namespace A074741.P13570577484021440496
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330547 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074741.P13570577484021440496

namespace A074741

/-- `∑[Δ[A330547(n+1)]²]` -/
def P13570577484021440496.Spec : Prop :=
  ∀ n, P13570577484021440496.a n = A074741 (n + 1)

end A074741

/-! ## A074741.P4001630026398691162

`∑[(A046933(n+1)+1)²]`
-/

namespace A074741.P4001630026398691162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A046933 (n + 1) + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074741.P4001630026398691162

namespace A074741

/-- `∑[(A046933(n+1)+1)²]` -/
def P4001630026398691162.Spec : Prop :=
  ∀ n, P4001630026398691162.a n = A074741 (n + 1)

end A074741

/-! ## A074741.P13818725464730773589

`∑[(A147966(n+1)-n)²]`
-/

namespace A074741.P13818725464730773589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A147966 (n + 1) - (n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074741.P13818725464730773589

namespace A074741

/-- `∑[(A147966(n+1)-n)²]` -/
def P13818725464730773589.Spec : Prop :=
  ∀ n, P13818725464730773589.a n = A074741 (n + 1)

end A074741

/-! ## A074741.P503362189428733415

`∑[Δ[A001748(n+1)/3]²]`
-/

namespace A074741.P503362189428733415
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001748 (n + 1) : ℚ) / 3

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074741.P503362189428733415

namespace A074741

/-- `∑[Δ[A001748(n+1)/3]²]` -/
def P503362189428733415.Spec : Prop :=
  ∀ n, P503362189428733415.a n = (A074741 (n + 1) : ℚ)

end A074741

/-! ## A074741.P2762311460161869707

`∑[(n+1-A123128(n+1))²]`
-/

namespace A074741.P2762311460161869707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) - A123128 (n + 1)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074741.P2762311460161869707

namespace A074741

/-- `∑[(n+1-A123128(n+1))²]` -/
def P2762311460161869707.Spec : Prop :=
  ∀ n, P2762311460161869707.a n = A074741 (n + 1)

end A074741

/-! ## A074741.P1821630431544905628

`∑[(A147965(n+1)-(n+2))²]`
-/

namespace A074741.P1821630431544905628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A147965 (n + 1) - (n + 2 : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074741.P1821630431544905628

namespace A074741

/-- `∑[(A147965(n+1)-(n+2))²]` -/
def P1821630431544905628.Spec : Prop :=
  ∀ n, P1821630431544905628.a n = A074741 (n + 1)

end A074741

/-! ## A074741.P15433755603636102511

`∑[(A141042(n+1)/(n+1))²]`
-/

namespace A074741.P15433755603636102511
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A141042 (n + 1) : ℚ) / (n + 1 : ℚ)) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074741.P15433755603636102511

namespace A074741

/-- `∑[(A141042(n+1)/(n+1))²]` -/
def P15433755603636102511.Spec : Prop :=
  ∀ n, P15433755603636102511.a n = (A074741 (n + 1) : ℚ)

end A074741

/-! ## A074741.P7955270111446887950

`∑[A081345(A046933(n+1))]`
-/

namespace A074741.P7955270111446887950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081345 (A046933 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074741.P7955270111446887950

namespace A074741

/-- `∑[A081345(A046933(n+1))]` -/
def P7955270111446887950.Spec : Prop :=
  ∀ n, P7955270111446887950.a n = A074741 (n + 1)

end A074741

/-! ## A074741.P3195387841264660128

`∑[A069484(n+1)%A006094(n+1)]`
-/

namespace A074741.P3195387841264660128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A069484 (n + 1)) (A006094 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074741.P3195387841264660128

namespace A074741

/-- `∑[A069484(n+1)%A006094(n+1)]` -/
def P3195387841264660128.Spec : Prop :=
  ∀ n, P3195387841264660128.a n = A074741 (n + 1)

end A074741

/-! ## A074741.P10734157777676033224

`∑[A075526(n+1)²]`
-/

namespace A074741.P10734157777676033224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075526 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074741.P10734157777676033224

namespace A074741

/-- `∑[A075526(n+1)²]` -/
def P10734157777676033224.Spec : Prop :=
  ∀ n, P10734157777676033224.a n = A074741 (n + 1)

end A074741

/-! ## A074741.P11309964555279412260

`∑[A054541(n+2)²]`
-/

namespace A074741.P11309964555279412260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074741.P11309964555279412260

namespace A074741

/-- `∑[A054541(n+2)²]` -/
def P11309964555279412260.Spec : Prop :=
  ∀ n, P11309964555279412260.a n = A074741 (n + 1)

end A074741

/-! ## A074741.P6184244086216538039

`∑[A125266(n+2)²]`
-/

namespace A074741.P6184244086216538039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125266 (n + 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074741.P6184244086216538039

namespace A074741

/-- `∑[A125266(n+2)²]` -/
def P6184244086216538039.Spec : Prop :=
  ∀ n, P6184244086216538039.a n = A074741 (n + 1)

end A074741

/-! ## A074741.P6653681086052441251

`∑[Δ[A000040(n+1)]²]`
-/

namespace A074741.P6653681086052441251
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074741.P6653681086052441251

namespace A074741

/-- `∑[Δ[A000040(n+1)]²]` -/
def P6653681086052441251.Spec : Prop :=
  ∀ n, P6653681086052441251.a n = A074741 (n + 1)

end A074741

/-! ## A074741.P4381851902487577307

`∑[Δ[A006093(n+1)]²]`
-/

namespace A074741.P4381851902487577307
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074741.P4381851902487577307

namespace A074741

/-- `∑[Δ[A006093(n+1)]²]` -/
def P4381851902487577307.Spec : Prop :=
  ∀ n, P4381851902487577307.a n = A074741 (n + 1)

end A074741

/-! ## A074741.P13757996224278287284

`∑[Δ[A008864(n+1)]²]`
-/

namespace A074741.P13757996224278287284
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074741.P13757996224278287284

namespace A074741

/-- `∑[Δ[A008864(n+1)]²]` -/
def P13757996224278287284.Spec : Prop :=
  ∀ n, P13757996224278287284.a n = A074741 (n + 1)

end A074741

/-! ## A074741.P1772388044809759758

`∑[Δ[A028815(n+1)]²]`
-/

namespace A074741.P1772388044809759758
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028815 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074741.P1772388044809759758

namespace A074741

/-- `∑[Δ[A028815(n+1)]²]` -/
def P1772388044809759758.Spec : Prop :=
  ∀ n, P1772388044809759758.a n = A074741 (n + 1)

end A074741

/-!
# A074742: a(n) = (n^3 + 6n^2 - n + 12)/6.

The programs for A074742, the canonical program `A074742.P10440787566599911419` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074742 has offset 0).

The definition of A074742 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n^3+6*n²-n+12)/6` (program `A074742.P17468761055260890625`, by `A074742.P17468761055260890625.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A074742.P9558425809266187389

`n*(n²+6*n-1)/6+2`
-/

namespace A074742.P9558425809266187389
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * ((n ^ 2 + 6 * n : ℤ) - 1) : ℚ) / 6 + 2

end

end A074742.P9558425809266187389

namespace A074742

/-- `n*(n²+6*n-1)/6+2` -/
def P9558425809266187389.Spec : Prop :=
  ∀ n, P9558425809266187389.a n = (A074742 n : ℚ)

theorem P9558425809266187389.correct : P9558425809266187389.Spec := by
  intro n
  simp only [A074742, Nat.add_sub_cancel, A074742.P9558425809266187389.a, A074742.P10440787566599911419.f1, A074742.P10440787566599911419.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A074742

/-! ## A074742.P17468761055260890625

`(n^3+6*n²-n+12)/6`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A074742.P17468761055260890625
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n ^ 3 + 6 * n ^ 2 : ℤ) - (n : ℤ) + 12 : ℚ) / 6

end

end A074742.P17468761055260890625

namespace A074742

/-- `(n^3+6*n²-n+12)/6` -/
def P17468761055260890625.Spec : Prop :=
  ∀ n, P17468761055260890625.a n = (A074742 n : ℚ)

theorem P17468761055260890625.correct : P17468761055260890625.Spec := by
  intro n
  simp only [A074742, Nat.add_sub_cancel, A074742.P17468761055260890625.a, A074742.P10440787566599911419.f1, A074742.P10440787566599911419.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A074742

/-! ## A074742.P8800981190345589885

`∑[a(n-1)+n+1]` with `a(0)=2, a(1)=1`
-/

namespace A074742.P8800981190345589885
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 1] fun n f1 =>
  f1 (n - 1) + (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074742.P8800981190345589885

namespace A074742

/-- `∑[a(n-1)+n+1]` -/
def P8800981190345589885.Spec : Prop :=
  ∀ n, (P8800981190345589885.a n : ℤ) = A074742 n

end A074742

/-! ## A074742.P10440787566599911419

`Δ[C(n+3, 4)-(1-n)²]`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A074742

/-- `Δ[C(n+3, 4)-(1-n)²]` -/
def P10440787566599911419.Spec : Prop :=
  ∀ n, P10440787566599911419.a n = A074742 n

theorem P10440787566599911419.correct : P10440787566599911419.Spec := by
  intro n
  simp only [A074742]

end A074742

/-! ## A074742.P13874283057794330978

`abs(2*n-(C(n+3, 3)+1))`
-/

namespace A074742.P13874283057794330978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 * n : ℤ) - (Nat.choose (n + 3) 3 + 1 : ℤ)|

end

end A074742.P13874283057794330978

namespace A074742

/-- `abs(2*n-(C(n+3, 3)+1))` -/
def P13874283057794330978.Spec : Prop :=
  ∀ n, P13874283057794330978.a n = A074742 n

end A074742

/-! ## A074742.P13926157039953271144

`abs(1-(n-C(n+3, 3)+n))`
-/

namespace A074742.P13926157039953271144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - ((n : ℤ) - (Nat.choose (n + 3) 3 : ℤ) + (n : ℤ))|

end

end A074742.P13926157039953271144

namespace A074742

/-- `abs(1-(n-C(n+3, 3)+n))` -/
def P13926157039953271144.Spec : Prop :=
  ∀ n, P13926157039953271144.a n = A074742 n

end A074742

/-! ## A074742.P10583883424339267194

`-(n-1-C(n+3, 3)+n)`
-/

namespace A074742.P10583883424339267194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((n : ℤ) - 1 - (Nat.choose (n + 3) 3 : ℤ) + (n : ℤ))

end

end A074742.P10583883424339267194

namespace A074742

/-- `-(n-1-C(n+3, 3)+n)` -/
def P10583883424339267194.Spec : Prop :=
  ∀ n, P10583883424339267194.a n = A074742 n

theorem P10583883424339267194.correct : P10583883424339267194.Spec := by
  intro n
  simp only [A074742, Nat.add_sub_cancel, A074742.P10583883424339267194.a, A074742.P10440787566599911419.f1, A074742.P10440787566599911419.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A074742

/-! ## A074742.P1413843952470915197

`floor(C(n+3, 3)+ϕ-2*n)`
-/

namespace A074742.P1413843952470915197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.choose (n + 3) 3 : ℝ) + (Real.goldenRatio - (2 * n : ℝ))⌋

end

end A074742.P1413843952470915197

namespace A074742

/-- `floor(C(n+3, 3)+ϕ-2*n)` -/
def P1413843952470915197.Spec : Prop :=
  ∀ n, P1413843952470915197.a n = A074742 n

end A074742

/-! ## A074742.P12783993945373871712

`floor(n-(1-a(n-1)-∑[n]))` with `a(0)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A074742.P12783993945373871712
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  (n : ℤ) - (1 - a (n - 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))

end

end A074742.P12783993945373871712

namespace A074742

/-- `floor(n-(1-a(n-1)-∑[n]))` -/
def P12783993945373871712.Spec : Prop :=
  ∀ n, P12783993945373871712.a n = A074742 n

end A074742

/-! ## A074742.P15483069332106744715

`∑[n-∑[a(n-1)-1]]` with `a(0)=-2, a(1)=2, a(2)=-2`
-/

namespace A074742.P15483069332106744715
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [-2, 2, -2] fun n f2 =>
  f2 (n - 1) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074742.P15483069332106744715

namespace A074742

/-- `∑[n-∑[a(n-1)-1]]` -/
def P15483069332106744715.Spec : Prop :=
  ∀ n, P15483069332106744715.a n = A074742 n

end A074742

/-! ## A074742.P8022380428772807235

`floor((n+1)²+a(n-2)-4)` with `a(0)=2, a(1)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A074742.P8022380428772807235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  ((n + 1) ^ 2 : ℤ) + (a (n - 2) - 4)

end

end A074742.P8022380428772807235

namespace A074742

/-- `floor((n+1)²+a(n-2)-4)` -/
def P8022380428772807235.Spec : Prop :=
  ∀ n, P8022380428772807235.a n = A074742 n

end A074742

/-! ## A074742.P5710735076577245423

`floor(a(n-1)+C(n+2, 2)-2)` with `a(0)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A074742.P5710735076577245423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + ((Nat.choose (n + 2) 2 : ℤ) - 2)

end

end A074742.P5710735076577245423

namespace A074742

/-- `floor(a(n-1)+C(n+2, 2)-2)` -/
def P5710735076577245423.Spec : Prop :=
  ∀ n, P5710735076577245423.a n = A074742 n

end A074742

/-! ## A074742.P1829566403766341788

`ceil(C(n+3, 3)+ϕ-(2*n+1))`
-/

namespace A074742.P1829566403766341788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.choose (n + 3) 3 : ℝ) + (Real.goldenRatio - (2 * n + 1 : ℝ))⌉

end

end A074742.P1829566403766341788

namespace A074742

/-- `ceil(C(n+3, 3)+ϕ-(2*n+1))` -/
def P1829566403766341788.Spec : Prop :=
  ∀ n, P1829566403766341788.a n = A074742 n

end A074742

/-! ## A074742.P1106257077331084632

`round(C(n+3, 3)+ϕ-(2*n+1))`
-/

namespace A074742.P1106257077331084632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.choose (n + 3) 3 : ℝ) + (Real.goldenRatio - (2 * n + 1 : ℝ)))

end

end A074742.P1106257077331084632

namespace A074742

/-- `round(C(n+3, 3)+ϕ-(2*n+1))` -/
def P1106257077331084632.Spec : Prop :=
  ∀ n, P1106257077331084632.a n = A074742 n

end A074742

/-! ## A074742.P11565411255160645374

`∑[∑[2*(n+1)]%(∑[n+1]+2)]`
-/

namespace A074742.P11565411255160645374
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) % (∑ j ∈ Finset.range (n + 1), f3 j + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074742.P11565411255160645374

namespace A074742

/-- `∑[∑[2*(n+1)]%(∑[n+1]+2)]` -/
def P11565411255160645374.Spec : Prop :=
  ∀ n, (P11565411255160645374.a n : ℤ) = A074742 n

end A074742

/-! ## A074742.P16137871825450560372

`abs(a(n-2)+(n+3)*(n-1))` with `a(0)=2, a(1)=3`
-/

namespace A074742.P16137871825450560372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  |a (n - 2) + (n + 3 : ℤ) * ((n : ℤ) - 1)|

end

end A074742.P16137871825450560372

namespace A074742

/-- `abs(a(n-2)+(n+3)*(n-1))` -/
def P16137871825450560372.Spec : Prop :=
  ∀ n, P16137871825450560372.a n = A074742 n

end A074742

/-! ## A074742.P7533539837519158976

`floor(a(n-2)+(n+3)*(n-1))` with `a(0)=2, a(1)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A074742.P7533539837519158976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  a (n - 2) + (n + 3 : ℤ) * ((n : ℤ) - 1)

end

end A074742.P7533539837519158976

namespace A074742

/-- `floor(a(n-2)+(n+3)*(n-1))` -/
def P7533539837519158976.Spec : Prop :=
  ∀ n, P7533539837519158976.a n = A074742 n

end A074742

/-! ## A074742.P17688517359680254000

`ceil(a(n-2)+(n+3)*(n-1))` with `a(0)=2, a(1)=3`

`ceil` is left out, it is the identity on integers.
-/

namespace A074742.P17688517359680254000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  a (n - 2) + (n + 3 : ℤ) * ((n : ℤ) - 1)

end

end A074742.P17688517359680254000

namespace A074742

/-- `ceil(a(n-2)+(n+3)*(n-1))` -/
def P17688517359680254000.Spec : Prop :=
  ∀ n, P17688517359680254000.a n = A074742 n

end A074742

/-! ## A074742.P15694373451208393251

`round(a(n-2)+(n+3)*(n-1))` with `a(0)=2, a(1)=3`

`round` is left out, it is the identity on integers.
-/

namespace A074742.P15694373451208393251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  a (n - 2) + (n + 3 : ℤ) * ((n : ℤ) - 1)

end

end A074742.P15694373451208393251

namespace A074742

/-- `round(a(n-2)+(n+3)*(n-1))` -/
def P15694373451208393251.Spec : Prop :=
  ∀ n, P15694373451208393251.a n = A074742 n

end A074742

/-! ## A074742.P17528766390138357180

`∑[A000096(abs(1-n))+n]`
-/

namespace A074742.P17528766390138357180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 |1 - (n : ℤ)|.toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074742.P17528766390138357180

namespace A074742

/-- `∑[A000096(abs(1-n))+n]` -/
def P17528766390138357180.Spec : Prop :=
  ∀ n, P17528766390138357180.a n = A074742 n

end A074742

/-!
# A074743: Smallest k such that trinomial x^A001153(n) + x^k + 1 over GF(2) is primitive.

The programs for A074743, there is no canonical definition to state claims against.
-/

/-! ## A074743.P9457527202809767932

`gcd(A002026(n), A111574(A111586(n)))`
-/

namespace A074743.P9457527202809767932
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002026 n) (A111574 (A111586 n).toNat)

end

end A074743.P9457527202809767932

/-!
# A074744: Values of k corresponding to A073726.

The programs for A074744, there is no canonical definition to state claims against.
-/

/-! ## A074744.P9313283423492425292

`abs(A132454(A073726(n+1)))`
-/

namespace A074744.P9313283423492425292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A132454 (A073726 (n + 1)).toNat|

end

end A074744.P9313283423492425292

/-! ## A074744.P6397703301704216905

`abs(A132454(A194125(n+1)))`
-/

namespace A074744.P6397703301704216905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A132454 (A194125 (n + 1)).toNat|

end

end A074744.P6397703301704216905

/-! ## A074744.P13066827794422085510

`-A132454(A073726(n+1)%or(1, 3*n+2))`
-/

namespace A074744.P13066827794422085510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A132454 (Int.tmod (A073726 (n + 1)) (Nat.lor 1 (3 * n + 2) : ℤ)).toNat

end

end A074744.P13066827794422085510

/-! ## A074744.P6662240188701471240

`gcd(A130706(n), A132454(A073726(n+1)))`
-/

namespace A074744.P6662240188701471240
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A130706 n) (A132454 (A073726 (n + 1)).toNat)

end

end A074744.P6662240188701471240

/-! ## A074744.P15660015349341013907

`∑{d}[A132454(A073726(n+1)), A000010(#)]`
-/

namespace A074744.P15660015349341013907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132454 (A073726 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A074744.P15660015349341013907

/-!
# A074745: a(n) = sum_{k=1..n} prime(k)*prime(k+1).

The programs for A074745, the canonical program `A074745.P3958489061865529795` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074745 has offset 1).

The definition of A074745 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A074745.P3958489061865529795

`∑[A006094(n+1)]`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A074745

/-- `∑[A006094(n+1)]` -/
def P3958489061865529795.Spec : Prop :=
  ∀ n, P3958489061865529795.a n = A074745 (n + 1)

theorem P3958489061865529795.correct : P3958489061865529795.Spec := by
  intro n
  simp only [A074745, Nat.add_sub_cancel]

end A074745

/-! ## A074745.P3321052822072412811

`∑[sqrt(A166329(n+1))]`
-/

namespace A074745.P3321052822072412811
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A166329 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074745.P3321052822072412811

namespace A074745

/-- `∑[sqrt(A166329(n+1))]` -/
def P3321052822072412811.Spec : Prop :=
  ∀ n, P3321052822072412811.a n = (A074745 (n + 1) : ℝ)

end A074745

/-! ## A074745.P12380412146288408465

`∑[A069486(n+1)/2]`
-/

namespace A074745.P12380412146288408465
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069486 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074745.P12380412146288408465

namespace A074745

/-- `∑[A069486(n+1)/2]` -/
def P12380412146288408465.Spec : Prop :=
  ∀ n, P12380412146288408465.a n = (A074745 (n + 1) : ℚ)

end A074745

/-! ## A074745.P8597993637984608766

`A064009(n+1)+A024450(n+1)`
-/

namespace A074745.P8597993637984608766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064009 (n + 1) + A024450 (n + 1)

end

end A074745.P8597993637984608766

namespace A074745

/-- `A064009(n+1)+A024450(n+1)` -/
def P8597993637984608766.Spec : Prop :=
  ∀ n, P8597993637984608766.a n = A074745 (n + 1)

end A074745

/-! ## A074745.P3154615185671930293

`∑[A037166(n+1)+Δ[A007504(n)]]`
-/

namespace A074745.P3154615185671930293
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037166 (n + 1) + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074745.P3154615185671930293

namespace A074745

/-- `∑[A037166(n+1)+Δ[A007504(n)]]` -/
def P3154615185671930293.Spec : Prop :=
  ∀ n, P3154615185671930293.a n = A074745 (n + 1)

end A074745

/-! ## A074745.P4062236606350423590

`∑[Δ[A007504(n)]*A065091(n+1)]`
-/

namespace A074745.P4062236606350423590
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A065091 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074745.P4062236606350423590

namespace A074745

/-- `∑[Δ[A007504(n)]*A065091(n+1)]` -/
def P4062236606350423590.Spec : Prop :=
  ∀ n, P4062236606350423590.a n = A074745 (n + 1)

end A074745

/-! ## A074745.P17336084363742638591

`∑[A037166(n+1)+A000040(n+1)]`
-/

namespace A074745.P17336084363742638591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037166 (n + 1) + A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074745.P17336084363742638591

namespace A074745

/-- `∑[A037166(n+1)+A000040(n+1)]` -/
def P17336084363742638591.Spec : Prop :=
  ∀ n, P17336084363742638591.a n = A074745 (n + 1)

theorem P17336084363742638591.correct : P17336084363742638591.Spec := by
  intro n
  simp only [A074745, Nat.add_sub_cancel, A074745.P17336084363742638591.f1, A074745.P17336084363742638591.a, A074745.P3958489061865529795.f1, A074745.P3958489061865529795.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006094, A006094.P10257567645245129766.a, A037166, A037166.P14619227700024520226.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A074745

/-! ## A074745.P10700534093993868479

`∑[A291463(n+1)+A001248(n+1)]`
-/

namespace A074745.P10700534093993868479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291463 (n + 1) + A001248 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074745.P10700534093993868479

namespace A074745

/-- `∑[A291463(n+1)+A001248(n+1)]` -/
def P10700534093993868479.Spec : Prop :=
  ∀ n, P10700534093993868479.a n = A074745 (n + 1)

theorem P10700534093993868479.correct : P10700534093993868479.Spec := by
  intro n
  simp only [A074745, Nat.add_sub_cancel, A074745.P10700534093993868479.f1, A074745.P10700534093993868479.a, A074745.P3958489061865529795.f1, A074745.P3958489061865529795.a, A001248, A001248.P16278241061688229202.a, A006094, A006094.P10257567645245129766.a, A291463, A291463.P14308935140851577628.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001223, A001223.P5034056745985311719.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A074745

/-! ## A074745.P18005247850692795134

`∑[A000040(n+1)*A065091(n+1)]`
-/

namespace A074745.P18005247850692795134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A065091 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074745.P18005247850692795134

namespace A074745

/-- `∑[A000040(n+1)*A065091(n+1)]` -/
def P18005247850692795134.Spec : Prop :=
  ∀ n, P18005247850692795134.a n = A074745 (n + 1)

end A074745

/-! ## A074745.P13289822823815874033

`∑[A069487(n+1)/A069482(n+1)]`
-/

namespace A074745.P13289822823815874033
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069487 (n + 1) : ℚ) / (A069482 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074745.P13289822823815874033

namespace A074745

/-- `∑[A069487(n+1)/A069482(n+1)]` -/
def P13289822823815874033.Spec : Prop :=
  ∀ n, P13289822823815874033.a n = (A074745 (n + 1) : ℚ)

end A074745

/-! ## A074745.P487344260494858930

`∑[A023515(n+2)+1]`
-/

namespace A074745.P487344260494858930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023515 (n + 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074745.P487344260494858930

namespace A074745

/-- `∑[A023515(n+2)+1]` -/
def P487344260494858930.Spec : Prop :=
  ∀ n, P487344260494858930.a n = A074745 (n + 1)

end A074745

/-! ## A074745.P12886764961527364581

`∑[A023523(n+2)-1]`
-/

namespace A074745.P12886764961527364581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023523 (n + 2) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074745.P12886764961527364581

namespace A074745

/-- `∑[A023523(n+2)-1]` -/
def P12886764961527364581.Spec : Prop :=
  ∀ n, P12886764961527364581.a n = A074745 (n + 1)

end A074745

/-! ## A074745.P8046191175302579466

`∑[A000040(n+1)*A000040(n+2)]`
-/

namespace A074745.P8046191175302579466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A000040 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074745.P8046191175302579466

namespace A074745

/-- `∑[A000040(n+1)*A000040(n+2)]` -/
def P8046191175302579466.Spec : Prop :=
  ∀ n, P8046191175302579466.a n = A074745 (n + 1)

end A074745

/-! ## A074745.P11016830142565801233

`∑[A006005(n+2)*A008578(n+2)]`
-/

namespace A074745.P11016830142565801233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 2) * A008578 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074745.P11016830142565801233

namespace A074745

/-- `∑[A006005(n+2)*A008578(n+2)]` -/
def P11016830142565801233.Spec : Prop :=
  ∀ n, P11016830142565801233.a n = A074745 (n + 1)

end A074745

/-! ## A074745.P17291972729345978426

`∑[record[A020639(n+2)]*p?[2*n+1]]`
-/

namespace A074745.P17291972729345978426
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) * (f3 (SequenceMachineLib.nth (fun j => (f3 j).Prime) n) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074745.P17291972729345978426

namespace A074745

/-- `∑[record[A020639(n+2)]*p?[2*n+1]]` -/
def P17291972729345978426.Spec : Prop :=
  ∀ n, P17291972729345978426.a n = A074745 (n + 1)

end A074745

/-! ## A074745.P12296884282117784391

`∑[record[A116570(n)]]`
-/

namespace A074745.P12296884282117784391
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116570 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074745.P12296884282117784391

namespace A074745

/-- `∑[record[A116570(n)]]` -/
def P12296884282117784391.Spec : Prop :=
  ∀ n, P12296884282117784391.a n = A074745 (n + 1)

end A074745

/-! ## A074745.P9866890545119644399

`∑[A116570(2*n)]`
-/

namespace A074745.P9866890545119644399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116570 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074745.P9866890545119644399

namespace A074745

/-- `∑[A116570(2*n)]` -/
def P9866890545119644399.Spec : Prop :=
  ∀ n, P9866890545119644399.a n = A074745 (n + 1)

end A074745

/-! ## A074745.P6749077405599359133

`∑[A033476(2*n+1)]`
-/

namespace A074745.P6749077405599359133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033476 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074745.P6749077405599359133

namespace A074745

/-- `∑[A033476(2*n+1)]` -/
def P6749077405599359133.Spec : Prop :=
  ∀ n, P6749077405599359133.a n = A074745 (n + 1)

end A074745

/-! ## A074745.P15997898146031634681

`∑[A333747(2*n+1)]`
-/

namespace A074745.P15997898146031634681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333747 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074745.P15997898146031634681

namespace A074745

/-- `∑[A333747(2*n+1)]` -/
def P15997898146031634681.Spec : Prop :=
  ∀ n, P15997898146031634681.a n = A074745 (n + 1)

end A074745

/-! ## A074745.P15446612801102401762

`∑[(eq[n+2, A000203(n+1)]+1)*A207790(2*(n+2))]`
-/

namespace A074745.P15446612801102401762
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1 : ℤ) * A207790 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074745.P15446612801102401762

namespace A074745

/-- `∑[(eq[n+2, A000203(n+1)]+1)*A207790(2*(n+2))]` -/
def P15446612801102401762.Spec : Prop :=
  ∀ n, P15446612801102401762.a n = A074745 (n + 1)

end A074745

/-!
# A074746: Number of distinct differences between consecutive anti-divisors of n (ordered by size).

The programs for A074746, there is no canonical definition to state claims against.
-/

/-! ## A074746.P13260203730061233778

`A081227(A064043(n+1)-A109017(n))`
-/

namespace A074746.P13260203730061233778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081227 (A064043 (n + 1) - A109017 n).toNat

end

end A074746.P13260203730061233778

/-! ## A074746.P15674377378969768865

`A124760(A331702(n+1)-A106443(n))`
-/

namespace A074746.P15674377378969768865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124760 (A331702 (n + 1) - A106443 n).toNat

end

end A074746.P15674377378969768865

/-! ## A074746.P1645078067075216416

`∑{e}[A204621(A240284(n+1)), #]`
-/

namespace A074746.P1645078067075216416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204621 (A240284 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A074746.P1645078067075216416

/-! ## A074746.P15533098600959951743

`A220136(∑[∏[A320888(n+1)]])`
-/

namespace A074746.P15533098600959951743
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320888 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220136 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A074746.P15533098600959951743

/-! ## A074746.P12430903014920038299

`A220136(∑[∏[A329378(n+1)]])`
-/

namespace A074746.P12430903014920038299
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329378 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220136 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A074746.P12430903014920038299

/-!
# A074747: Largest difference between consecutive anti-divisors of n (ordered by size).

The programs for A074747, there is no canonical definition to state claims against.
-/

/-! ## A074747.P132849222868225959

`A055091(A052980(n))-1`
-/

namespace A074747.P132849222868225959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055091 (A052980 n).toNat - 1

end

end A074747.P132849222868225959

/-! ## A074747.P8883968030726765309

`A268834(∑[A177239(n)²])`
-/

namespace A074747.P8883968030726765309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177239 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268834 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A074747.P8883968030726765309

/-! ## A074747.P1768900739675432761

`A070198(n)%A055091(A052980(n))`
-/

namespace A074747.P1768900739675432761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070198 n) (A055091 (A052980 n).toNat)

end

end A074747.P1768900739675432761

/-! ## A074747.P18432776985010465964

`A198277(n)%A055091(A052980(n))`
-/

namespace A074747.P18432776985010465964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A198277 n) (A055091 (A052980 n).toNat)

end

end A074747.P18432776985010465964

/-! ## A074747.P17430869275311133037

`A030494(n+1)%A055091(A052980(n))`
-/

namespace A074747.P17430869275311133037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030494 (n + 1)) (A055091 (A052980 n).toNat)

end

end A074747.P17430869275311133037

/-!
# A074748: Numbers for which the differences between consecutive anti-divisors (ordered by size) are not distinct.

The programs for A074748, there is no canonical definition to state claims against.
-/

/-! ## A074748.P12619713342562305205

`lt[A343640(A343645(n+1)), 0]`
-/

namespace A074748.P12619713342562305205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343640 (A343645 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A074748.P12619713342562305205

/-!
# A074749: Smallest difference between consecutive anti-divisors of n (ordered by size).

The programs for A074749, there is no canonical definition to state claims against.
-/

/-! ## A074749.P11834705130306411353

`A014081(A058622(n)+A038460(n+1))`
-/

namespace A074749.P11834705130306411353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014081 (A058622 n + A038460 (n + 1)).toNat

end

end A074749.P11834705130306411353

/-! ## A074749.P3047608261212887122

`A089447(A084365(2*n+5))%A003108(3*n+4)`
-/

namespace A074749.P3047608261212887122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A089447 (A084365 (2 * n + 5)).toNat) (A003108 (3 * n + 4))

end

end A074749.P3047608261212887122

/-!
# A074750: Numbers k such that (largest prime dividing k) = (number of anti-divisors of k).

The programs for A074750, there is no canonical definition to state claims against.
-/

/-! ## A074750.P13382252470516091138

`eq[A006530(n+1), A066272(n+1)]+1`
-/

namespace A074750.P13382252470516091138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066272 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A074750.P13382252470516091138

/-! ## A074750.P15383199608607994133

`A065475(eq[A006530(n+1), A066272(n+1)])`
-/

namespace A074750.P15383199608607994133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066272 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A074750.P15383199608607994133

/-! ## A074750.P16570307894825524307

`eq[A002034(A007947(n+1)), A066272(n+1)]+1`
-/

namespace A074750.P16570307894825524307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002034 (A007947 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066272 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A074750.P16570307894825524307

/-! ## A074750.P13849218108105822060

`eq[A020639(A345941(n+1)), A066272(n+1)]+1`
-/

namespace A074750.P13849218108105822060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A345941 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066272 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A074750.P13849218108105822060

/-! ## A074750.P8022112560256070949

`A065475(eq[A070229(n+1)-(n+1), A066272(n+1)])`
-/

namespace A074750.P8022112560256070949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070229 (n + 1) - (n + 1 : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066272 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A074750.P8022112560256070949

/-!
# A074751: Numbers k such that the sum of the anti-divisors of k = sum of proper divisors (or aliquot parts) of k.

The programs for A074751, there is no canonical definition to state claims against.
-/

/-! ## A074751.P6904628400886487568

`A091213(A091200(n))*A301093(n)`
-/

namespace A074751.P6904628400886487568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091213 (A091200 n).toNat * A301093 n

end

end A074751.P6904628400886487568

/-!
# A074752: Number of combinatorially inequivalent cyclic subgroups of S_n of order 6. Number of partitions of n of order 6.

The programs for A074752, the canonical program `A074752.P10712639327454673054` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074752 has offset 5).

The definition of A074752 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A074752.P10712639327454673054

`A001399(n)+∑[A000217(A008615(n+1))]`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A074752

/-- `A001399(n)+∑[A000217(A008615(n+1))]` -/
def P10712639327454673054.Spec : Prop :=
  ∀ n, P10712639327454673054.a n = A074752 (n + 5)

theorem P10712639327454673054.correct : P10712639327454673054.Spec := by
  intro n
  simp only [A074752, Nat.add_sub_cancel]

end A074752

/-! ## A074752.P14362504504082611930

`∑[A008615(n+2)+A000217(A008615(n+1))]`
-/

namespace A074752.P14362504504082611930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (n + 2) + A000217 (A008615 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074752.P14362504504082611930

namespace A074752

/-- `∑[A008615(n+2)+A000217(A008615(n+1))]` -/
def P14362504504082611930.Spec : Prop :=
  ∀ n, P14362504504082611930.a n = A074752 (n + 5)

end A074752

/-! ## A074752.P5781766536295150755

`∑[A161680(A103221(n+5))+A103221(n)]`
-/

namespace A074752.P5781766536295150755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A103221 (n + 5)).toNat + A103221 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074752.P5781766536295150755

namespace A074752

/-- `∑[A161680(A103221(n+5))+A103221(n)]` -/
def P5781766536295150755.Spec : Prop :=
  ∀ n, P5781766536295150755.a n = A074752 (n + 5)

end A074752

/-! ## A074752.P2040312738094366516

`A029142(2*n+1)+A001399(n)`
-/

namespace A074752.P2040312738094366516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029142 (2 * n + 1) + A001399 n

end

end A074752.P2040312738094366516

namespace A074752

/-- `A029142(2*n+1)+A001399(n)` -/
def P2040312738094366516.Spec : Prop :=
  ∀ n, P2040312738094366516.a n = A074752 (n + 5)

end A074752

/-! ## A074752.P16933675117787398475

`A266755(2*n)+A029142(2*n+1)`
-/

namespace A074752.P16933675117787398475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266755 (2 * n) + A029142 (2 * n + 1)

end

end A074752.P16933675117787398475

namespace A074752

/-- `A266755(2*n)+A029142(2*n+1)` -/
def P16933675117787398475.Spec : Prop :=
  ∀ n, P16933675117787398475.a n = A074752 (n + 5)

end A074752

/-! ## A074752.P5302293726188002225

`∑[A008679(2*n)+A000217(A008679(2*n+1))]`
-/

namespace A074752.P5302293726188002225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008679 (2 * n) + A000217 (A008679 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074752.P5302293726188002225

namespace A074752

/-- `∑[A008679(2*n)+A000217(A008679(2*n+1))]` -/
def P5302293726188002225.Spec : Prop :=
  ∀ n, P5302293726188002225.a n = A074752 (n + 5)

end A074752

/-! ## A074752.P4958688027656878059

`∑[A061579(A025796(n))]-A025796(n)`
-/

namespace A074752.P4958688027656878059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061579 (A025796 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A025796 n

end

end A074752.P4958688027656878059

namespace A074752

/-- `∑[A061579(A025796(n))]-A025796(n)` -/
def P4958688027656878059.Spec : Prop :=
  ∀ n, P4958688027656878059.a n = A074752 (n + 5)

end A074752

/-! ## A074752.P7124761141409377924

`∑[A110654(A110654(n+1)+A008615(n+1)²)]`
-/

namespace A074752.P7124761141409377924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A110654 (n + 1) + A008615 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074752.P7124761141409377924

namespace A074752

/-- `∑[A110654(A110654(n+1)+A008615(n+1)²)]` -/
def P7124761141409377924.Spec : Prop :=
  ∀ n, P7124761141409377924.a n = A074752 (n + 5)

end A074752

/-!
# A074753: Number of integers k such that sigma(k) < n.

The programs for A074753, there is no canonical definition to state claims against.
-/

/-! ## A074753.P7569196158681908191

`A054973(n)+a(n-1)` with `a(0)=0`
-/

namespace A074753.P7569196158681908191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A054973 n + a (n - 1)

end

end A074753.P7569196158681908191

/-! ## A074753.P17945247765219782118

`∑[A054973(abs(1-n)+1)]`
-/

namespace A074753.P17945247765219782118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054973 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074753.P17945247765219782118

/-! ## A074753.P4106634459165558240

`∑[A054973(A028310(n))]-1`
-/

namespace A074753.P4106634459165558240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054973 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A074753.P4106634459165558240

/-! ## A074753.P9111305983760902746

`n+1-A216200(A000007(n)+n)`
-/

namespace A074753.P9111305983760902746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A216200 (A000007 n + (n : ℤ)).toNat

end

end A074753.P9111305983760902746

/-! ## A074753.P7181568176997784598

`∑[A054973(n+1)]-A054973(n+1)`
-/

namespace A074753.P7181568176997784598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054973 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A054973 (n + 1)

end

end A074753.P7181568176997784598

/-! ## A074753.P14561662250257896131

`A202275(n+1)+A202276(n+1)-A054973(n+1)`
-/

namespace A074753.P14561662250257896131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202275 (n + 1) + (A202276 (n + 1) - A054973 (n + 1))

end

end A074753.P14561662250257896131

/-!
# A074754: Number of integers k such that sigma(k) divides n.

The programs for A074754, there is no canonical definition to state claims against.
-/

/-! ## A074754.P11474942269677021775

`∑{d}[n+1, A054973(#)]`
-/

namespace A074754.P11474942269677021775
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A054973 d

end

end A074754.P11474942269677021775

/-! ## A074754.P11634470771704895714

`Δ[eq[1, A378912(n+1)]]`
-/

namespace A074754.P11634470771704895714
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378912 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A074754.P11634470771704895714

/-! ## A074754.P12654983758651385241

`gcd(A290255(n+1), A293311(A046644(n+1)))`
-/

namespace A074754.P12654983758651385241
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A290255 (n + 1)) (A293311 (A046644 (n + 1)).toNat)

end

end A074754.P12654983758651385241

/-! ## A074754.P11514916535977713142

`lcm(A319786(n+1), A327406(A045973(n+1)))`
-/

namespace A074754.P11514916535977713142
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A319786 (n + 1)) (A327406 (A045973 (n + 1)).toNat)

end

end A074754.P11514916535977713142

/-! ## A074754.P7528109675131780769

`A065033(p?[A198329(n+1)*A330944(n+1)])`
-/

namespace A074754.P7528109675131780769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198329 (n + 1) * A330944 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A074754.P7528109675131780769

/-!
# A074757: Numbers n such that tau(n) = (tau(n+1)+tau(n-1))/2.

The programs for A074757, the canonical program `A074757.P1339424889027573742` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074757 has offset 1).

The definition of A074757 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 428 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A074757.P1339424889027573742

`eq[0, A051951(n+1)]+2`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A074757

/-- `eq[0, A051951(n+1)]+2` -/
def P1339424889027573742.Spec : Prop :=
  ∀ n, (P1339424889027573742.a n : ℤ) = A074757 (n + 1)

theorem P1339424889027573742.correct : P1339424889027573742.Spec := by
  intro n
  simp only [A074757, Nat.add_sub_cancel]

end A074757

/-! ## A074757.P15824024908560348229

`A011760(eq[A000007(n), A051951(n)])`
-/

namespace A074757.P15824024908560348229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051951 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011760 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A074757.P15824024908560348229

namespace A074757

/-- `A011760(eq[A000007(n), A051951(n)])` -/
def P15824024908560348229.Spec : Prop :=
  ∀ n, P15824024908560348229.a n = A074757 (n + 1)

end A074757

/-! ## A074757.P14092709626463362107

`A020725(eq[A000007(n), A051951(n)])`
-/

namespace A074757.P14092709626463362107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051951 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A074757.P14092709626463362107

namespace A074757

/-- `A020725(eq[A000007(n), A051951(n)])` -/
def P14092709626463362107.Spec : Prop :=
  ∀ n, P14092709626463362107.a n = A074757 (n + 1)

end A074757

/-! ## A074757.P4752709818101908260

`A020725(eq[A000038(n), A051951(n)])`
-/

namespace A074757.P4752709818101908260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051951 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A074757.P4752709818101908260

namespace A074757

/-- `A020725(eq[A000038(n), A051951(n)])` -/
def P4752709818101908260.Spec : Prop :=
  ∀ n, P4752709818101908260.a n = A074757 (n + 1)

end A074757

/-! ## A074757.P3658374191925983817

`A065475(eq[A000038(n), A051951(n)])`
-/

namespace A074757.P3658374191925983817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051951 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A074757.P3658374191925983817

namespace A074757

/-- `A065475(eq[A000038(n), A051951(n)])` -/
def P3658374191925983817.Spec : Prop :=
  ∀ n, P3658374191925983817.a n = A074757 (n + 1)

end A074757

/-! ## A074757.P1897104471132961405

`eq[A000038(n), A051951(A143051(n))]`
-/

namespace A074757.P1897104471132961405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051951 (A143051 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A074757.P1897104471132961405

namespace A074757

/-- `eq[A000038(n), A051951(A143051(n))]` -/
def P1897104471132961405.Spec : Prop :=
  ∀ n, (P1897104471132961405.a n : ℤ) = A074757 (n + 1)

end A074757

/-!
# A074759: Number of degree-n permutations of order dividing n. Number of solutions to x^n = 1 in S_n.

The programs for A074759, there is no canonical definition to state claims against.
-/

/-! ## A074759.P4184396701801049570

`A008307((1-n)²+n²)`
-/

namespace A074759.P4184396701801049570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008307 ((1 - (n : ℤ)) ^ 2 + (n ^ 2 : ℤ)).toNat

end

end A074759.P4184396701801049570

/-! ## A074759.P18095640125332050991

`A003963(A323686(n)+A194092(n+1))`
-/

namespace A074759.P18095640125332050991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (A323686 n + A194092 (n + 1)).toNat

end

end A074759.P18095640125332050991

/-!
# A074760: Decimal expansion of lambda(1) in Li's criterion.

The programs for A074760, there is no canonical definition to state claims against.
-/

/-! ## A074760.P5372027214488051532

`9-A380908(n)`
-/

namespace A074760.P5372027214488051532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A380908 n

end

end A074760.P5372027214488051532

/-!
# A074761: Number of partitions of n of order n.

The programs for A074761, there is no canonical definition to state claims against.
-/

/-! ## A074761.P2832789438676239398

`A256554(∑[A009490(n)]+n)`
-/

namespace A074761.P2832789438676239398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009490 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256554 (∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)).toNat

end

end A074761.P2832789438676239398

/-! ## A074761.P7330340004948562289

`A256067(∑[A000793(n)]+n)`
-/

namespace A074761.P7330340004948562289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000793 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256067 (∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)).toNat

end

end A074761.P7330340004948562289

/-! ## A074761.P14558461251837427724

`A342461(A337667(n+1)²)`
-/

namespace A074761.P14558461251837427724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342461 (A337667 (n + 1) ^ 2).toNat

end

end A074761.P14558461251837427724

/-! ## A074761.P6155975647874833397

`dr(A153452(n+1)^A094816(n))`
-/

namespace A074761.P6155975647874833397
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (SequenceMachineLib.roundAway ((A153452 (n + 1) : ℚ) ^ (A094816 n : ℤ)))

end

end A074761.P6155975647874833397

/-! ## A074761.P11217601258867555302

`A000005(A191278(n+1)^A005134(n))`
-/

namespace A074761.P11217601258867555302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A191278 (n + 1) : ℚ) ^ (A005134 n : ℤ))).toNat

end

end A074761.P11217601258867555302

/-!
# A074763: a(n) = (1/n) * Sum_{d divides n} (-1)^(n+d)*phi(n/d)*2^d.

The programs for A074763, there is no canonical definition to state claims against.
-/

/-! ## A074763.P5589583298113007513

`abs(∑{d}[n+1, A038063(#)])`
-/

namespace A074763.P5589583298113007513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ d ∈ Nat.divisors (f1 n), A038063 d|

end

end A074763.P5589583298113007513

/-! ## A074763.P3301140556662033709

`∑{d}[n+1, A038063(#)]*A033999(n)`
-/

namespace A074763.P3301140556662033709
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n), A038063 d) * A033999 n

end

end A074763.P3301140556662033709

/-! ## A074763.P17443173328186419568

`gcd(∑{d}[n+1, A038063(#)], A000038(n))`
-/

namespace A074763.P17443173328186419568
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∑ d ∈ Nat.divisors (f1 n), A038063 d) (A000038 n)

end

end A074763.P17443173328186419568

/-! ## A074763.P6109398784673980996

`lcm(∑{d}[n+1, A038063(#)], A054977(n))`
-/

namespace A074763.P6109398784673980996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (∑ d ∈ Nat.divisors (f1 n), A038063 d) (A054977 n)

end

end A074763.P6109398784673980996

/-! ## A074763.P5797296172002356076

`abs(A382993(∑[n+2]))`
-/

namespace A074763.P5797296172002356076
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A382993 (∑ j ∈ Finset.range (n + 1), f1 j)|

end

end A074763.P5797296172002356076

/-!
# A074764: Numbers of smaller squares into which a square may be dissected.

The programs for A074764, the canonical program `A074764.P13004091479972100664` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074764 has offset 1).

The definition of A074764 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A074764.P13004091479972100664

`a(n-1)+1` with `a(0)=1, a(1)=4, a(2)=6`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A074764

/-- `a(n-1)+1` -/
def P13004091479972100664.Spec : Prop :=
  ∀ n, (P13004091479972100664.a n : ℤ) = A074764 (n + 1)

theorem P13004091479972100664.correct : P13004091479972100664.Spec := by
  intro n
  simp only [A074764, Nat.add_sub_cancel]

end A074764

/-!
# A074765: Number of composites that are a concatenation nk of n and k for values of k from 1 to n.

The programs for A074765, there is no canonical definition to state claims against.
-/

/-! ## A074765.P14619142823423665230

`1-A068696(n+1)+n`
-/

namespace A074765.P14619142823423665230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A068696 (n + 1) + (n : ℤ)

end

end A074765.P14619142823423665230

/-! ## A074765.P7167515961209721786

`1-(A068696(-xor(n, -1))-n)`
-/

namespace A074765.P7167515961209721786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A068696 (-Int.xor (n : ℤ) (-1)).toNat - (n : ℤ))

end

end A074765.P7167515961209721786

/-! ## A074765.P3887045072371157028

`n-(A068696(record[xor(1, n)]-n)-1)`
-/

namespace A074765.P3887045072371157028
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A068696 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - n) - 1)

end

end A074765.P3887045072371157028

/-! ## A074765.P7642252527418183887

`1-(n-2*n)-A068696(1-(n-2*n))`
-/

namespace A074765.P7642252527418183887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((n : ℤ) - (2 * n : ℤ)) - A068696 (1 - ((n : ℤ) - (2 * n : ℤ))).toNat

end

end A074765.P7642252527418183887

/-! ## A074765.P5137603574797074805

`A024000(A068696(n+1))+n`
-/

namespace A074765.P5137603574797074805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 (A068696 (n + 1)).toNat + (n : ℤ)

end

end A074765.P5137603574797074805

/-! ## A074765.P15768622510413462093

`abs(A068696(n+1)+A001478(n+1))`
-/

namespace A074765.P15768622510413462093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A068696 (n + 1) + A001478 (n + 1)|

end

end A074765.P15768622510413462093

/-! ## A074765.P6865360897982313237

`abs(A068696(n+1)+A001489(n+1))`
-/

namespace A074765.P6865360897982313237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A068696 (n + 1) + A001489 (n + 1)|

end

end A074765.P6865360897982313237

/-!
# A074766: a(n) = prime(2n) - 2*prime(n) - n.

The programs for A074766, the canonical program `A074766.P7109472300547683338` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074766 has offset 1).

The definition of A074766 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(2*(n+1))-2*A000040(n+1)-(n+1)` (program `A074766.P7109472300547683338`, by `A074766.P7109472300547683338.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A074766.P17996081687479392311

`A066066(n+1)-(n+1)`
-/

namespace A074766.P17996081687479392311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066066 (n + 1) - (n + 1 : ℤ)

end

end A074766.P17996081687479392311

namespace A074766

/-- `A066066(n+1)-(n+1)` -/
def P17996081687479392311.Spec : Prop :=
  ∀ n, P17996081687479392311.a n = A074766 (n + 1)

end A074766

/-! ## A074766.P7109472300547683338

`A000040(2*(n+1))-2*A000040(n+1)-(n+1)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A074766

/-- `A000040(2*(n+1))-2*A000040(n+1)-(n+1)` -/
def P7109472300547683338.Spec : Prop :=
  ∀ n, P7109472300547683338.a n = A074766 (n + 1)

theorem P7109472300547683338.correct : P7109472300547683338.Spec := by
  intro n
  simp only [A074766, Nat.add_sub_cancel]

end A074766

/-! ## A074766.P16539551413160369578

`A066066(-xor(n, -1))-n-1`
-/

namespace A074766.P16539551413160369578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066066 (-Int.xor (n : ℤ) (-1)).toNat - (n : ℤ) - 1

end

end A074766.P16539551413160369578

namespace A074766

/-- `A066066(-xor(n, -1))-n-1` -/
def P16539551413160369578.Spec : Prop :=
  ∀ n, P16539551413160369578.a n = A074766 (n + 1)

end A074766

/-! ## A074766.P8035036798021630998

`A022457(n+1)-(abs(1-n)+2)`
-/

namespace A074766.P8035036798021630998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022457 (n + 1) - (|1 - (n : ℤ)| + 2)

end

end A074766.P8035036798021630998

namespace A074766

/-- `A022457(n+1)-(abs(1-n)+2)` -/
def P8035036798021630998.Spec : Prop :=
  ∀ n, P8035036798021630998.a n = A074766 (n + 1)

end A074766

/-! ## A074766.P8818232017508593368

`A072473(n+1)-A014688(n+1)`
-/

namespace A074766.P8818232017508593368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072473 (n + 1) - A014688 (n + 1)

end

end A074766.P8818232017508593368

namespace A074766

/-- `A072473(n+1)-A014688(n+1)` -/
def P8818232017508593368.Spec : Prop :=
  ∀ n, P8818232017508593368.a n = A074766 (n + 1)

end A074766

/-! ## A074766.P5931776657669038489

`A141101(n+1)-A134591(n+1)`
-/

namespace A074766.P5931776657669038489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141101 (n + 1) - A134591 (n + 1)

end

end A074766.P5931776657669038489

namespace A074766

/-- `A141101(n+1)-A134591(n+1)` -/
def P5931776657669038489.Spec : Prop :=
  ∀ n, P5931776657669038489.a n = A074766 (n + 1)

theorem P5931776657669038489.correct : P5931776657669038489.Spec := by
  intro n
  simp only [A074766, Nat.add_sub_cancel, A074766.P5931776657669038489.a, A074766.P7109472300547683338.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A134591, A134591.P13784663667261059065.a, A141101, A141101.P16887844390166522487.a, A014689, A014689.P6286543075765329050.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A074766

/-! ## A074766.P2646434401953273221

`A072473(n+1)-(A008864(n+1)+n)`
-/

namespace A074766.P2646434401953273221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072473 (n + 1) - (A008864 (n + 1) + (n : ℤ))

end

end A074766.P2646434401953273221

namespace A074766

/-- `A072473(n+1)-(A008864(n+1)+n)` -/
def P2646434401953273221.Spec : Prop :=
  ∀ n, P2646434401953273221.a n = A074766 (n + 1)

theorem P2646434401953273221.correct : P2646434401953273221.Spec := by
  intro n
  simp only [A074766, Nat.add_sub_cancel, A074766.P2646434401953273221.a, A074766.P7109472300547683338.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A008864, A008864.P9177617808325052279.a, A072473, A072473.P11303799734713741739.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A074766

/-! ## A074766.P15878100175001391494

`A072473(n+1)-(A000040(n+1)+n+1)`
-/

namespace A074766.P15878100175001391494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072473 (n + 1) - (A000040 (n + 1) + (n + 1 : ℤ))

end

end A074766.P15878100175001391494

namespace A074766

/-- `A072473(n+1)-(A000040(n+1)+n+1)` -/
def P15878100175001391494.Spec : Prop :=
  ∀ n, P15878100175001391494.a n = A074766 (n + 1)

theorem P15878100175001391494.correct : P15878100175001391494.Spec := by
  intro n
  simp only [A074766, Nat.add_sub_cancel, A074766.P15878100175001391494.a, A074766.P7109472300547683338.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A072473, A072473.P11303799734713741739.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A074766

/-! ## A074766.P7810962644708553325

`A031215(n+1)-(2*A000040(n+1)+n+1)`
-/

namespace A074766.P7810962644708553325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031215 (n + 1) - (2 * A000040 (n + 1) + (n + 1 : ℤ))

end

end A074766.P7810962644708553325

namespace A074766

/-- `A031215(n+1)-(2*A000040(n+1)+n+1)` -/
def P7810962644708553325.Spec : Prop :=
  ∀ n, P7810962644708553325.a n = A074766 (n + 1)

theorem P7810962644708553325.correct : P7810962644708553325.Spec := by
  intro n
  simp only [A074766, Nat.add_sub_cancel, A074766.P7810962644708553325.a, A074766.P7109472300547683338.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A031215, A031215.P2952175553723239727.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A074766

/-! ## A074766.P7453292971219833525

`A014689(2*(n+1))-A134591(n+1)`
-/

namespace A074766.P7453292971219833525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014689 (2 * (n + 1)) - A134591 (n + 1)

end

end A074766.P7453292971219833525

namespace A074766

/-- `A014689(2*(n+1))-A134591(n+1)` -/
def P7453292971219833525.Spec : Prop :=
  ∀ n, P7453292971219833525.a n = A074766 (n + 1)

end A074766

/-! ## A074766.P10694552294268150993

`A000040(2*(n+1))-(A072055(n+1)+n)`
-/

namespace A074766.P10694552294268150993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (2 * (n + 1)) - (A072055 (n + 1) + (n : ℤ))

end

end A074766.P10694552294268150993

namespace A074766

/-- `A000040(2*(n+1))-(A072055(n+1)+n)` -/
def P10694552294268150993.Spec : Prop :=
  ∀ n, P10694552294268150993.a n = A074766 (n + 1)

theorem P10694552294268150993.correct : P10694552294268150993.Spec := by
  intro n
  simp only [A074766, Nat.add_sub_cancel, A074766.P10694552294268150993.a, A074766.P7109472300547683338.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A072055, A072055.P8252801676711237860.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A074766

/-! ## A074766.P2734663160597314535

`A000040(2*(n+1))-(A100484(n+1)+n+1)`
-/

namespace A074766.P2734663160597314535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (2 * (n + 1)) - (A100484 (n + 1) + (n + 1 : ℤ))

end

end A074766.P2734663160597314535

namespace A074766

/-- `A000040(2*(n+1))-(A100484(n+1)+n+1)` -/
def P2734663160597314535.Spec : Prop :=
  ∀ n, P2734663160597314535.a n = A074766 (n + 1)

theorem P2734663160597314535.correct : P2734663160597314535.Spec := by
  intro n
  simp only [A074766, Nat.add_sub_cancel, A074766.P2734663160597314535.a, A074766.P7109472300547683338.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A100484, A100484.P9678625670825099636.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A074766

/-! ## A074766.P15103252496493194866

`A000040(2*(n+1))-(A001747(n+2)+n+1)`
-/

namespace A074766.P15103252496493194866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (2 * (n + 1)) - (A001747 (n + 2) + (n + 1 : ℤ))

end

end A074766.P15103252496493194866

namespace A074766

/-- `A000040(2*(n+1))-(A001747(n+2)+n+1)` -/
def P15103252496493194866.Spec : Prop :=
  ∀ n, P15103252496493194866.a n = A074766 (n + 1)

end A074766

/-!
# A074768: Related to series for Laplace limit constant.

The programs for A074768, there is no canonical definition to state claims against.
-/

/-! ## A074768.P14702946259301750685

`A209229(n)-A297346(A144682(n))`
-/

namespace A074768.P14702946259301750685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 n - A297346 (A144682 n).toNat

end

end A074768.P14702946259301750685

/-!
# A074771: Numbers k such that tau(k) < tau(k+1), phi(k) < phi(k+1) and sigma(k) < sigma(k+1).

The programs for A074771, there is no canonical definition to state claims against.
-/

/-! ## A074771.P3414933784666036874

`∩[A053224(n+1), A074772(n+1)]`
-/

namespace A074771.P3414933784666036874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053224 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074772 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074771.P3414933784666036874

/-! ## A074771.P14137591526800377975

`A067825(lt[A000700(n), A276150(n)])`
-/

namespace A074771.P14137591526800377975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276150 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067825 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A074771.P14137591526800377975

/-! ## A074771.P6867611880431496765

`A067825(lt[A018676(n+1), A266952(n)])`
-/

namespace A074771.P6867611880431496765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018676 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266952 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067825 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A074771.P6867611880431496765

/-!
# A074772: Numbers k such that tau(k) < tau(k+1) and phi(k) < phi(k+1).

The programs for A074772, there is no canonical definition to state claims against.
-/

/-! ## A074772.P14136039535289747518

`A138172(A002183(n+1)%A350142(n+1))`
-/

namespace A074772.P14136039535289747518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138172 (Int.tmod (A002183 (n + 1)) (A350142 (n + 1))).toNat

end

end A074772.P14136039535289747518

/-! ## A074772.P10894011534596725653

`A138172(A353684(n+1)^A268357(3*n+1))`
-/

namespace A074772.P10894011534596725653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138172 (SequenceMachineLib.roundAway ((A353684 (n + 1) : ℚ) ^ (A268357 (3 * n + 1) : ℤ))).toNat

end

end A074772.P10894011534596725653

/-! ## A074772.P12482613501339363451

`A138172(A002183(n+1))%A352225(3*n+4)`
-/

namespace A074772.P12482613501339363451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A138172 (A002183 (n + 1)).toNat) (A352225 (3 * n + 4))

end

end A074772.P12482613501339363451

/-!
# A074775: Numbers n such that tau(n) < tau(n+1) where tau(x)=A000005(x).

The programs for A074775, the canonical program `A074775.P4617323649837205606` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074775 has offset 1).

The definition of A074775 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8895 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A074775.P3742225132956629793

`A240171(n+1)-1`
-/

namespace A074775.P3742225132956629793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240171 (n + 1) - 1

end

end A074775.P3742225132956629793

namespace A074775

/-- `A240171(n+1)-1` -/
def P3742225132956629793.Spec : Prop :=
  ∀ n, P3742225132956629793.a n = A074775 (n + 1)

theorem P3742225132956629793.correct : P3742225132956629793.Spec := by
  intro n
  simp only [A074775, Nat.add_sub_cancel, A074775.P3742225132956629793.a, A074775.P4617323649837205606.f1, A074775.P4617323649837205606.f2, A074775.P4617323649837205606.a, A182394, A182394.P11897336731762600311.a, A240171, A240171.P15820621349524491020.a, A051950, A051950.P1558606958145203364.a, A000005, A000005.P16091521709108585461.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A074775

/-! ## A074775.P7681474184201870183

`lt[A000005(n+1), A000005(n+2)]+1`
-/

namespace A074775.P7681474184201870183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A074775.P7681474184201870183

namespace A074775

/-- `lt[A000005(n+1), A000005(n+2)]+1` -/
def P7681474184201870183.Spec : Prop :=
  ∀ n, (P7681474184201870183.a n : ℤ) = A074775 (n + 1)

end A074775

/-! ## A074775.P4617323649837205606

`lt[0, A182394(n+2)]+1`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A074775

/-- `lt[0, A182394(n+2)]+1` -/
def P4617323649837205606.Spec : Prop :=
  ∀ n, (P4617323649837205606.a n : ℤ) = A074775 (n + 1)

theorem P4617323649837205606.correct : P4617323649837205606.Spec := by
  intro n
  simp only [A074775, Nat.add_sub_cancel]

end A074775

/-! ## A074775.P17115057126833359192

`lt[0, Δ[A032741(n)]]`
-/

namespace A074775.P17115057126833359192
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A074775.P17115057126833359192

namespace A074775

/-- `lt[0, Δ[A032741(n)]]` -/
def P17115057126833359192.Spec : Prop :=
  ∀ n, (P17115057126833359192.a n : ℤ) = A074775 (n + 1)

end A074775

/-! ## A074775.P1138223665827843592

`lt[Δ[A049820(n+1)], 1]+1`
-/

namespace A074775.P1138223665827843592
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049820 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n + 1

end

end A074775.P1138223665827843592

namespace A074775

/-- `lt[Δ[A049820(n+1)], 1]+1` -/
def P1138223665827843592.Spec : Prop :=
  ∀ n, (P1138223665827843592.a n : ℤ) = A074775 (n + 1)

end A074775

/-! ## A074775.P17852073784801194987

`lt[1, ratio[A000005(n+1)]]+1`
-/

namespace A074775.P17852073784801194987
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f3 (n + 1) : ℚ) / (f3 n : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n + 1

end

end A074775.P17852073784801194987

namespace A074775

/-- `lt[1, ratio[A000005(n+1)]]+1` -/
def P17852073784801194987.Spec : Prop :=
  ∀ n, (P17852073784801194987.a n : ℤ) = A074775 (n + 1)

end A074775

/-! ## A074775.P17256731591494583905

`lt[A032741(n), A032741(n+1)]`
-/

namespace A074775.P17256731591494583905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A074775.P17256731591494583905

namespace A074775

/-- `lt[A032741(n), A032741(n+1)]` -/
def P17256731591494583905.Spec : Prop :=
  ∀ n, (P17256731591494583905.a n : ℤ) = A074775 (n + 1)

end A074775

/-! ## A074775.P1900531669493642652

`lt[A334954(n+1), A334954(n+2)]+1`
-/

namespace A074775.P1900531669493642652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334954 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334954 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A074775.P1900531669493642652

namespace A074775

/-- `lt[A334954(n+1), A334954(n+2)]+1` -/
def P1900531669493642652.Spec : Prop :=
  ∀ n, (P1900531669493642652.a n : ℤ) = A074775 (n + 1)

end A074775

/-! ## A074775.P5356112633927770429

`lt[A000005(A028310(n)), A000005(n+1)]`
-/

namespace A074775.P5356112633927770429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A074775.P5356112633927770429

namespace A074775

/-- `lt[A000005(A028310(n)), A000005(n+1)]` -/
def P5356112633927770429.Spec : Prop :=
  ∀ n, (P5356112633927770429.a n : ℤ) = A074775 (n + 1)

end A074775

/-! ## A074775.P14721059049397755865

`lt[A184389(A028310(n)), A184389(n+1)]`
-/

namespace A074775.P14721059049397755865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184389 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184389 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A074775.P14721059049397755865

namespace A074775

/-- `lt[A184389(A028310(n)), A184389(n+1)]` -/
def P14721059049397755865.Spec : Prop :=
  ∀ n, (P14721059049397755865.a n : ℤ) = A074775 (n + 1)

end A074775

/-! ## A074775.P13627992318591912137

`lt[A000005(A000007(n)+n), A000005(n+1)]`
-/

namespace A074775.P13627992318591912137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000007 n + (n : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A074775.P13627992318591912137

namespace A074775

/-- `lt[A000005(A000007(n)+n), A000005(n+1)]` -/
def P13627992318591912137.Spec : Prop :=
  ∀ n, (P13627992318591912137.a n : ℤ) = A074775 (n + 1)

end A074775

/-! ## A074775.P7387022705734692080

`lt[A000005(A004277(n)-n), A000005(n+1)]`
-/

namespace A074775.P7387022705734692080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A004277 n - (n : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A074775.P7387022705734692080

namespace A074775

/-- `lt[A000005(A004277(n)-n), A000005(n+1)]` -/
def P7387022705734692080.Spec : Prop :=
  ∀ n, (P7387022705734692080.a n : ℤ) = A074775 (n + 1)

end A074775

/-! ## A074775.P2918585366691275757

`lt[0, Δ[A319410(n)]]`
-/

namespace A074775.P2918585366691275757
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319410 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A074775.P2918585366691275757

namespace A074775

/-- `lt[0, Δ[A319410(n)]]` -/
def P2918585366691275757.Spec : Prop :=
  ∀ n, (P2918585366691275757.a n : ℤ) = A074775 (n + 1)

end A074775

/-! ## A074775.P12244670842421044846

`A023443(A240171(n+1))`
-/

namespace A074775.P12244670842421044846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A240171 (n + 1)).toNat

end

end A074775.P12244670842421044846

namespace A074775

/-- `A023443(A240171(n+1))` -/
def P12244670842421044846.Spec : Prop :=
  ∀ n, P12244670842421044846.a n = A074775 (n + 1)

end A074775

/-! ## A074775.P18023282228293874352

`lt[A319410(n), A319410(n+1)]`
-/

namespace A074775.P18023282228293874352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319410 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319410 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A074775.P18023282228293874352

namespace A074775

/-- `lt[A319410(n), A319410(n+1)]` -/
def P18023282228293874352.Spec : Prop :=
  ∀ n, (P18023282228293874352.a n : ℤ) = A074775 (n + 1)

end A074775

/-! ## A074775.P400549401523641003

`lt[ϕ, ratio[∏{d}[n, #]]]`
-/

namespace A074775.P400549401523641003
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.goldenRatio

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f4 n), d

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f3 (n + 1) : ℚ) / (f3 n : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A074775.P400549401523641003

namespace A074775

/-- `lt[ϕ, ratio[∏{d}[n, #]]]` -/
def P400549401523641003.Spec : Prop :=
  ∀ n, (P400549401523641003.a n : ℤ) = A074775 (n + 1)

end A074775

/-! ## A074775.P3698281904378395875

`record[gcd(A005563(n), A135974(n+1))-1]`
-/

namespace A074775.P3698281904378395875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A005563 n) (A135974 (n + 1)) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A074775.P3698281904378395875

namespace A074775

/-- `record[gcd(A005563(n), A135974(n+1))-1]` -/
def P3698281904378395875.Spec : Prop :=
  ∀ n, P3698281904378395875.a n = A074775 (n + 1)

end A074775

/-!
# A074776: Numbers k such that 2^k-1 and F(k) are not relatively prime, where F(k) denotes the k-th Fibonacci number.

The programs for A074776, there is no canonical definition to state claims against.
-/

/-! ## A074776.P1705881704271191892

`eq[char[A074780(n+1)], A000007(n)]`
-/

namespace A074776.P1705881704271191892
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074780 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A074776.P1705881704271191892

/-! ## A074776.P12493912247460406856

`eq[char[A074780(n+1)], A000038(n)]`
-/

namespace A074776.P12493912247460406856
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074780 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A074776.P12493912247460406856

/-! ## A074776.P16555914662226633607

`eq[A019560(n)%2, char[A074780(n+1)]]`
-/

namespace A074776.P16555914662226633607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A019560 n) 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074780 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A074776.P16555914662226633607

/-! ## A074776.P7906588240792010325

`eq[A320130(n)%2, char[A074780(n+1)]]`
-/

namespace A074776.P7906588240792010325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A320130 n) 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074780 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A074776.P7906588240792010325

/-! ## A074776.P17442973695859502961

`eq[char[A074780(n+1)], A010051(2*(n+1))]`
-/

namespace A074776.P17442973695859502961
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074780 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A074776.P17442973695859502961

/-! ## A074776.P7012452397026035085

`eq[A062321(n+1)%2, char[A074780(n+1)]]`
-/

namespace A074776.P7012452397026035085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A062321 (n + 1)) 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074780 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A074776.P7012452397026035085

/-! ## A074776.P15941910739683131683

`lt[1, gcd(A000045(n), A000225(n))]`
-/

namespace A074776.P15941910739683131683
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000045 n) (A000225 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A074776.P15941910739683131683

/-!
# A074777: Integers n such that sigma(phi(n))/n = 1/2.

The programs for A074777, the canonical program `A074777.P608162798331020968` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074777 has offset 1).

The definition of A074777 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A074777.P608162798331020968

`2^(2^n+1)-2`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A074777

/-- `2^(2^n+1)-2` -/
def P608162798331020968.Spec : Prop :=
  ∀ n, P608162798331020968.a n = A074777 (n + 1)

theorem P608162798331020968.correct : P608162798331020968.Spec := by
  intro n
  simp only [A074777, Nat.add_sub_cancel]

end A074777

/-!
# A074779: Numbers k such that 2^k+1 and F(k) are relatively prime, where F(k) denotes the k-th Fibonacci number.

The programs for A074779, there is no canonical definition to state claims against.
-/

/-! ## A074779.P6175534887523730731

`comp[A074778(n+1)-1]+1`
-/

namespace A074779.P6175534887523730731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074778 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A074779.P6175534887523730731

/-! ## A074779.P17219238982135586006

`eq[char[A074778(n+1)], A000007(n)]`
-/

namespace A074779.P17219238982135586006
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074778 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A074779.P17219238982135586006

/-! ## A074779.P3699425079579679071

`eq[char[A074778(n+1)], A000038(n)]`
-/

namespace A074779.P3699425079579679071
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074778 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A074779.P3699425079579679071

/-! ## A074779.P13028274062968901384

`lt[gcd(2^n+1, A000045(n))², 2]`
-/

namespace A074779.P13028274062968901384
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 ^ n + 1 : ℤ) (A000045 n) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A074779.P13028274062968901384

/-! ## A074779.P1284809303190624726

`eq[1, gcd(A000045(n), A000051(n))]`
-/

namespace A074779.P1284809303190624726
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000045 n) (A000051 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A074779.P1284809303190624726

/-! ## A074779.P18078751013788993382

`record[(n+1)/gcd(A000045(n+1), A000051(n+1))]`
-/

namespace A074779.P18078751013788993382
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.gcd (A000045 (n + 1)) (A000051 (n + 1)) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A074779.P18078751013788993382

/-!
# A074780: Numbers k such that 2^k-1 and F(k) are relatively prime, where F(k) denotes the k-th Fibonacci number.

The programs for A074780, there is no canonical definition to state claims against.
-/

/-! ## A074780.P9279111322551225390

`comp[A074776(n+1)-1]+1`
-/

namespace A074780.P9279111322551225390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074776 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A074780.P9279111322551225390

/-! ## A074780.P14410881538702985816

`comp[∪[A074776(n+1), A178208(n+1)]]`
-/

namespace A074780.P14410881538702985816
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074776 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178208 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A074780.P14410881538702985816

/-! ## A074780.P8531459423177766617

`eq[char[A074776(n+1)], A000007(n)]`
-/

namespace A074780.P8531459423177766617
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074776 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A074780.P8531459423177766617

/-! ## A074780.P15674922475930007907

`eq[char[A074776(n+1)], A000038(n)]`
-/

namespace A074780.P15674922475930007907
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074776 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A074780.P15674922475930007907

/-! ## A074780.P4113899248185840342

`eq[1, gcd(A000045(n), A000225(n))]`
-/

namespace A074780.P4113899248185840342
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000045 n) (A000225 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A074780.P4113899248185840342

/-! ## A074780.P1315185056928729425

`eq[1, gcd(A022350(n), A225883(n))]`
-/

namespace A074780.P1315185056928729425
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A022350 n) (A225883 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A074780.P1315185056928729425

/-! ## A074780.P11482090774383166899

`eq[1, gcd(A228078(n), A236191(n))]`
-/

namespace A074780.P11482090774383166899
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A228078 n) (A236191 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A074780.P11482090774383166899

/-! ## A074780.P12330032382808995041

`record[(n+1)/gcd(A000045(n+1), A000225(n+1))]`
-/

namespace A074780.P12330032382808995041
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.gcd (A000045 (n + 1)) (A000225 (n + 1)) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A074780.P12330032382808995041

/-!
# A074781: Primes of the form p*2^k + 1 for any k and any prime p.

The programs for A074781, there is no canonical definition to state claims against.
-/

/-! ## A074781.P17027974246273333454

`∪[A058500(n+1), A070806(n+1)]`
-/

namespace A074781.P17027974246273333454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058500 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070806 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A074781.P17027974246273333454

/-! ## A074781.P493811267173104574

`∪[A058500(n+1), A147545(n+1)]`
-/

namespace A074781.P493811267173104574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058500 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147545 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A074781.P493811267173104574

/-! ## A074781.P6437164172234019451

`∪[A058500(n+1), A248796(n+1)]`
-/

namespace A074781.P6437164172234019451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058500 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248796 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A074781.P6437164172234019451

/-! ## A074781.P7015591029417267588

`∪[A058500(n+1), A272061(n+1)]`
-/

namespace A074781.P7015591029417267588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058500 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272061 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A074781.P7015591029417267588

/-! ## A074781.P18016495419586649611

`∩[A077500(n+1), A192864(n+1)]`
-/

namespace A074781.P18016495419586649611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077500 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192864 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074781.P18016495419586649611

/-! ## A074781.P18303126797779348735

`p?[2*A093641(n+1)+1]`
-/

namespace A074781.P18303126797779348735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A093641 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A074781.P18303126797779348735

/-! ## A074781.P13703805428200300367

`p?[lt[A000265(n+1), A008472(n+1)]+2]`
-/

namespace A074781.P13703805428200300367
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A074781.P13703805428200300367

/-! ## A074781.P10675438851231607701

`p?[A093641(n+2)+1]`
-/

namespace A074781.P10675438851231607701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093641 (n + 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A074781.P10675438851231607701

/-! ## A074781.P14412636799587945673

`record[A006530(A093641(n+2)+1)]`
-/

namespace A074781.P14412636799587945673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A093641 (n + 2) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A074781.P14412636799587945673

/-! ## A074781.P7394678396476511817

`record[A020639(A093641(n+2)+1)]`
-/

namespace A074781.P7394678396476511817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A093641 (n + 2) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A074781.P7394678396476511817

/-! ## A074781.P14620589571049673875

`record[A006530(A123345(n+2)+1)]`
-/

namespace A074781.P14620589571049673875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A123345 (n + 2) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A074781.P14620589571049673875

/-! ## A074781.P9568318899146471290

`∩[A008578(n+2), A093641(n+2)+1]`
-/

namespace A074781.P9568318899146471290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093641 (n + 2) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074781.P9568318899146471290

/-! ## A074781.P17547853853226971062

`∩[A077500(n+1), A192863(n+1)]`
-/

namespace A074781.P17547853853226971062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077500 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192863 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074781.P17547853853226971062

/-! ## A074781.P9862250889571761820

`p?[(n+2)*A257990(n+1)]`
-/

namespace A074781.P9862250889571761820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A257990 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A074781.P9862250889571761820

/-! ## A074781.P6437892445846431141

`p?[A340371(n+1)+A005408(n)+1]`
-/

namespace A074781.P6437892445846431141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340371 (n + 1) + (A005408 n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A074781.P6437892445846431141

/-! ## A074781.P15973138678455002080

`p?[A144396(n+1)*A340371(n+1)]`
-/

namespace A074781.P15973138678455002080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144396 (n + 1) * A340371 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A074781.P15973138678455002080

/-! ## A074781.P12768224541010256820

`p?[A340371(n+1)+A016789(n)-n]`
-/

namespace A074781.P12768224541010256820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340371 (n + 1) + (A016789 n - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A074781.P12768224541010256820

/-! ## A074781.P3661246202688970497

`p?[A209229(A052126(n+1))+2*(n+1)]`
-/

namespace A074781.P3661246202688970497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 (A052126 (n + 1)).toNat + (2 * (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A074781.P3661246202688970497

/-! ## A074781.P12877295249540993300

`record[A014963(A093641(n+2)+1)]`
-/

namespace A074781.P12877295249540993300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A093641 (n + 2) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A074781.P12877295249540993300

/-!
# A074783: a(n) = floor(1/sin(x(n))) where x(n) is Pi truncated at the n-th decimal digit.

The programs for A074783, there is no canonical definition to state claims against.
-/

/-! ## A074783.P18074557207382264483

`A286742(n+1)-A066829(A137957(n))`
-/

namespace A074783.P18074557207382264483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286742 (n + 1) - A066829 (A137957 n).toNat

end

end A074783.P18074557207382264483

/-! ## A074783.P14968878441980411066

`A286742(n+1)-A286726(A060982(3*n))`
-/

namespace A074783.P14968878441980411066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286742 (n + 1) - A286726 (A060982 (3 * n)).toNat

end

end A074783.P14968878441980411066

/-! ## A074783.P13076882504333046788

`A286742(n+1)-A341594(n+1)%A286742(3*n+1)`
-/

namespace A074783.P13076882504333046788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286742 (n + 1) - Int.tmod (A341594 (n + 1)) (A286742 (3 * n + 1))

end

end A074783.P13076882504333046788

/-!
# A074784: a(n) = a(n-1) + square of the sum of digits of n.

The programs for A074784, the canonical program `A074784.P9694338903170396052` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074784 has offset 0).

The definition of A074784 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A074784.P9694338903170396052

`∑[∑{digits}[n, #]²]`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A074784

/-- `∑[∑{digits}[n, #]²]` -/
def P9694338903170396052.Spec : Prop :=
  ∀ n, (P9694338903170396052.a n : ℤ) = A074784 n

theorem P9694338903170396052.correct : P9694338903170396052.Spec := by
  intro n
  simp only [A074784]

end A074784

/-! ## A074784.P14752276896900569406

`∑[∑{digits}[n, #]^2]`
-/

namespace A074784.P14752276896900569406
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).sum ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074784.P14752276896900569406

namespace A074784

/-- `∑[∑{digits}[n, #]^2]` -/
def P14752276896900569406.Spec : Prop :=
  ∀ n, (P14752276896900569406.a n : ℤ) = A074784 n

theorem P14752276896900569406.correct : P14752276896900569406.Spec := by
  intro n
  simp only [A074784, Nat.add_sub_cancel, A074784.P14752276896900569406.f2, A074784.P14752276896900569406.f1, A074784.P14752276896900569406.a, A074784.P9694338903170396052.f2, A074784.P9694338903170396052.f1, A074784.P9694338903170396052.a, SequenceMachineLib.memo_apply]

end A074784

/-! ## A074784.P16779771057562968472

`∑[log2(∏{digits}[n, 2^#])²]`
-/

namespace A074784.P16779771057562968472
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 ((((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => 2 ^ x).prod : ℕ) : ℝ) ^ 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074784.P16779771057562968472

namespace A074784

/-- `∑[log2(∏{digits}[n, 2^#])²]` -/
def P16779771057562968472.Spec : Prop :=
  ∀ n, P16779771057562968472.a n = (A074784 n : ℝ)

end A074784

/-! ## A074784.P1661615765666991328

`a(n-1)+∑{digits}[n, #]²` with `a(0)=0`
-/

namespace A074784.P1661615765666991328
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum ^ 2

end

end A074784.P1661615765666991328

namespace A074784

/-- `a(n-1)+∑{digits}[n, #]²` -/
def P1661615765666991328.Spec : Prop :=
  ∀ n, (P1661615765666991328.a n : ℤ) = A074784 n

end A074784

/-! ## A074784.P9276222634314559567

`∑[A118881(n)]`
-/

namespace A074784.P9276222634314559567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118881 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074784.P9276222634314559567

namespace A074784

/-- `∑[A118881(n)]` -/
def P9276222634314559567.Spec : Prop :=
  ∀ n, P9276222634314559567.a n = A074784 n

end A074784

/-! ## A074784.P3843799065778430922

`∑[A007953(n)²]`
-/

namespace A074784.P3843799065778430922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074784.P3843799065778430922

namespace A074784

/-- `∑[A007953(n)²]` -/
def P3843799065778430922.Spec : Prop :=
  ∀ n, P3843799065778430922.a n = A074784 n

end A074784

/-! ## A074784.P2854799126011575593

`∑[log2(A329562(n))²]`
-/

namespace A074784.P2854799126011575593
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A329562 n : ℝ) ^ 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074784.P2854799126011575593

namespace A074784

/-- `∑[log2(A329562(n))²]` -/
def P2854799126011575593.Spec : Prop :=
  ∀ n, P2854799126011575593.a n = (A074784 n : ℝ)

end A074784

/-! ## A074784.P5600090490753878196

`∑[A000290(∑{digits}[n, #])]`
-/

namespace A074784.P5600090490753878196
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).sum

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074784.P5600090490753878196

namespace A074784

/-- `∑[A000290(∑{digits}[n, #])]` -/
def P5600090490753878196.Spec : Prop :=
  ∀ n, P5600090490753878196.a n = A074784 n

theorem P5600090490753878196.correct : P5600090490753878196.Spec := by
  intro n
  simp only [A074784, Nat.add_sub_cancel, A074784.P5600090490753878196.f2, A074784.P5600090490753878196.f1, A074784.P5600090490753878196.a, A074784.P9694338903170396052.f2, A074784.P9694338903170396052.f1, A074784.P9694338903170396052.a, A000290, A000290.P12206242496348924484.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A074784

/-! ## A074784.P951362539069024958

`∑[(A169805(n)/2)²]`
-/

namespace A074784.P951362539069024958
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A169805 n : ℚ) / 2) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074784.P951362539069024958

namespace A074784

/-- `∑[(A169805(n)/2)²]` -/
def P951362539069024958.Spec : Prop :=
  ∀ n, P951362539069024958.a n = (A074784 n : ℚ)

end A074784

/-! ## A074784.P11956481972282527687

`∑[(n-A062028(n))²]`
-/

namespace A074784.P11956481972282527687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A062028 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074784.P11956481972282527687

namespace A074784

/-- `∑[(n-A062028(n))²]` -/
def P11956481972282527687.Spec : Prop :=
  ∀ n, P11956481972282527687.a n = A074784 n

end A074784

/-! ## A074784.P13176517350297024628

`∑[(n-A066568(n))²]`
-/

namespace A074784.P13176517350297024628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A066568 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074784.P13176517350297024628

namespace A074784

/-- `∑[(n-A066568(n))²]` -/
def P13176517350297024628.Spec : Prop :=
  ∀ n, P13176517350297024628.a n = A074784 n

end A074784

/-! ## A074784.P12901374645601367271

`∑[(n+1-A160939(n+1))²]`
-/

namespace A074784.P12901374645601367271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) - A160939 (n + 1)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074784.P12901374645601367271

namespace A074784

/-- `∑[(n+1-A160939(n+1))²]` -/
def P12901374645601367271.Spec : Prop :=
  ∀ n, P12901374645601367271.a n = A074784 n

end A074784

/-! ## A074784.P2499075795985469187

`∑[(n+1-A160941(n+1))²]`
-/

namespace A074784.P2499075795985469187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) - A160941 (n + 1)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074784.P2499075795985469187

namespace A074784

/-- `∑[(n+1-A160941(n+1))²]` -/
def P2499075795985469187.Spec : Prop :=
  ∀ n, P2499075795985469187.a n = A074784 n

theorem P2499075795985469187.correct : P2499075795985469187.Spec := by
  intro n
  simp only [A074784, Nat.add_sub_cancel, A074784.P2499075795985469187.f1, A074784.P2499075795985469187.a, A074784.P9694338903170396052.f2, A074784.P9694338903170396052.f1, A074784.P9694338903170396052.a, A160941, A160941.P11918685615583149497.f1, A160941.P11918685615583149497.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A074784

/-! ## A074784.P9246550810221727606

`∑[(A160942(n+1)/(n+1))²]`
-/

namespace A074784.P9246550810221727606
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A160942 (n + 1) : ℚ) / (n + 1 : ℚ)) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074784.P9246550810221727606

namespace A074784

/-- `∑[(A160942(n+1)/(n+1))²]` -/
def P9246550810221727606.Spec : Prop :=
  ∀ n, P9246550810221727606.a n = (A074784 n : ℚ)

end A074784

/-! ## A074784.P11892208253977071396

`∑[A006370(A169805(n))²]`
-/

namespace A074784.P11892208253977071396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (A169805 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074784.P11892208253977071396

namespace A074784

/-- `∑[A006370(A169805(n))²]` -/
def P11892208253977071396.Spec : Prop :=
  ∀ n, P11892208253977071396.a n = A074784 n

end A074784

/-! ## A074784.P8242485360395908782

`∑[A000290(A062028(n)-n)]`
-/

namespace A074784.P8242485360395908782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A062028 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074784.P8242485360395908782

namespace A074784

/-- `∑[A000290(A062028(n)-n)]` -/
def P8242485360395908782.Spec : Prop :=
  ∀ n, P8242485360395908782.a n = A074784 n

end A074784

/-! ## A074784.P2940307740500703552

`∑[(A062028(n)-n)*A007953(n)]`
-/

namespace A074784.P2940307740500703552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A062028 n - (n : ℤ)) * A007953 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074784.P2940307740500703552

namespace A074784

/-- `∑[(A062028(n)-n)*A007953(n)]` -/
def P2940307740500703552.Spec : Prop :=
  ∀ n, P2940307740500703552.a n = A074784 n

end A074784

/-! ## A074784.P4560350498735257188

`∑[(n-A066568(n))*A007953(n)]`
-/

namespace A074784.P4560350498735257188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A066568 n) * A007953 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074784.P4560350498735257188

namespace A074784

/-- `∑[(n-A066568(n))*A007953(n)]` -/
def P4560350498735257188.Spec : Prop :=
  ∀ n, P4560350498735257188.a n = A074784 n

end A074784

/-! ## A074784.P4964138173293468700

`∑[((A062028(n)+n)%A004277(n))²]`
-/

namespace A074784.P4964138173293468700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A062028 n + (n : ℤ)) (A004277 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074784.P4964138173293468700

namespace A074784

/-- `∑[((A062028(n)+n)%A004277(n))²]` -/
def P4964138173293468700.Spec : Prop :=
  ∀ n, P4964138173293468700.a n = A074784 n

end A074784

/-! ## A074784.P10485172496144030285

`∑[A053836(A102489(n))²]`
-/

namespace A074784.P10485172496144030285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053836 (A102489 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074784.P10485172496144030285

namespace A074784

/-- `∑[A053836(A102489(n))²]` -/
def P10485172496144030285.Spec : Prop :=
  ∀ n, P10485172496144030285.a n = A074784 n

end A074784

/-!
# A074787: Sum of squares of the number of unitary divisors of k from 1 to n.

The programs for A074787, the canonical program `A074787.P4479322355899608335` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074787 has offset 1).

The definition of A074787 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A074787.P4479322355899608335

`∑[∏{p}[n+1, gcd(n, #)+3]]`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A074787

/-- `∑[∏{p}[n+1, gcd(n, #)+3]]` -/
def P4479322355899608335.Spec : Prop :=
  ∀ n, (P4479322355899608335.a n : ℤ) = A074787 (n + 1)

theorem P4479322355899608335.correct : P4479322355899608335.Spec := by
  intro n
  simp only [A074787, Nat.add_sub_cancel]

end A074787

/-! ## A074787.P17278414119576234478

`∑[∏{p}[n+1, (2%#²)²]]`
-/

namespace A074787.P17278414119576234478
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (2 % p ^ 2) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074787.P17278414119576234478

namespace A074787

/-- `∑[∏{p}[n+1, (2%#²)²]]` -/
def P17278414119576234478.Spec : Prop :=
  ∀ n, (P17278414119576234478.a n : ℤ) = A074787 (n + 1)

end A074787

/-! ## A074787.P1309848571624635711

`∑[∏{e}[∏{p}[n+1, #], #+3]]`
-/

namespace A074787.P1309848571624635711
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), p

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074787.P1309848571624635711

namespace A074787

/-- `∑[∏{e}[∏{p}[n+1, #], #+3]]` -/
def P1309848571624635711.Spec : Prop :=
  ∀ n, (P1309848571624635711.a n : ℤ) = A074787 (n + 1)

end A074787

/-! ## A074787.P8457653736473794882

`∑[∏{p}[n+1, val(#²², #)]]`
-/

namespace A074787.P8457653736473794882
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), SequenceMachineLib.valuation ((p ^ 2) ^ 2) p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074787.P8457653736473794882

namespace A074787

/-- `∑[∏{p}[n+1, val(#²², #)]]` -/
def P8457653736473794882.Spec : Prop :=
  ∀ n, (P8457653736473794882.a n : ℤ) = A074787 (n + 1)

end A074787

/-! ## A074787.P11144505285314354729

`∑[A034444(n+1)²]`
-/

namespace A074787.P11144505285314354729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074787.P11144505285314354729

namespace A074787

/-- `∑[A034444(n+1)²]` -/
def P11144505285314354729.Spec : Prop :=
  ∀ n, P11144505285314354729.a n = A074787 (n + 1)

end A074787

/-! ## A074787.P98384196747641370

`∑[A158522(n+1)²]`
-/

namespace A074787.P98384196747641370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158522 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074787.P98384196747641370

namespace A074787

/-- `∑[A158522(n+1)²]` -/
def P98384196747641370.Spec : Prop :=
  ∀ n, P98384196747641370.a n = A074787 (n + 1)

end A074787

/-! ## A074787.P2956536063339918797

`∑[4^A001221(n+1)]`
-/

namespace A074787.P2956536063339918797
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) ^ (A001221 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074787.P2956536063339918797

namespace A074787

/-- `∑[4^A001221(n+1)]` -/
def P2956536063339918797.Spec : Prop :=
  ∀ n, P2956536063339918797.a n = (A074787 (n + 1) : ℚ)

end A074787

/-! ## A074787.P2357401453465135241

`∑[(A309307(n+1)+1)²]`
-/

namespace A074787.P2357401453465135241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A309307 (n + 1) + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074787.P2357401453465135241

namespace A074787

/-- `∑[(A309307(n+1)+1)²]` -/
def P2357401453465135241.Spec : Prop :=
  ∀ n, P2357401453465135241.a n = A074787 (n + 1)

end A074787

/-! ## A074787.P17179343789532014936

`∑[∏{p}[n+1, A000005(#)²]]`
-/

namespace A074787.P17179343789532014936
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), A000005 p ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074787.P17179343789532014936

namespace A074787

/-- `∑[∏{p}[n+1, A000005(#)²]]` -/
def P17179343789532014936.Spec : Prop :=
  ∀ n, P17179343789532014936.a n = A074787 (n + 1)

end A074787

/-! ## A074787.P17389637871471701091

`∑[∏{p}[n+1, A001221(#)+3]]`
-/

namespace A074787.P17389637871471701091
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (A001221 p + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074787.P17389637871471701091

namespace A074787

/-- `∑[∏{p}[n+1, A001221(#)+3]]` -/
def P17389637871471701091.Spec : Prop :=
  ∀ n, P17389637871471701091.a n = A074787 (n + 1)

end A074787

/-! ## A074787.P11229792887962293110

`∑[∏{p}[n+1, A001222(#)+3]]`
-/

namespace A074787.P11229792887962293110
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (A001222 p + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074787.P11229792887962293110

namespace A074787

/-- `∑[∏{p}[n+1, A001222(#)+3]]` -/
def P11229792887962293110.Spec : Prop :=
  ∀ n, P11229792887962293110.a n = A074787 (n + 1)

end A074787

/-! ## A074787.P6723030672042767294

`∑[∏{p}[n+1, 3-A008683(#)]]`
-/

namespace A074787.P6723030672042767294
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (3 - A008683 p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074787.P6723030672042767294

namespace A074787

/-- `∑[∏{p}[n+1, 3-A008683(#)]]` -/
def P6723030672042767294.Spec : Prop :=
  ∀ n, P6723030672042767294.a n = A074787 (n + 1)

end A074787

/-! ## A074787.P10544492472935990120

`∑[(A298473(n+1)/(n+1))²]`
-/

namespace A074787.P10544492472935990120
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A298473 (n + 1) : ℚ) / (n + 1 : ℚ)) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074787.P10544492472935990120

namespace A074787

/-- `∑[(A298473(n+1)/(n+1))²]` -/
def P10544492472935990120.Spec : Prop :=
  ∀ n, P10544492472935990120.a n = (A074787 (n + 1) : ℚ)

end A074787

/-! ## A074787.P3781603905187445098

`∑[∏{p}[n+1, A020639(2*#)²]]`
-/

namespace A074787.P3781603905187445098
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), A020639 (2 * p) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074787.P3781603905187445098

namespace A074787

/-- `∑[∏{p}[n+1, A020639(2*#)²]]` -/
def P3781603905187445098.Spec : Prop :=
  ∀ n, P3781603905187445098.a n = A074787 (n + 1)

end A074787

/-! ## A074787.P16298960673867131395

`∑[(2^A001221(2*n-(n-1)))²]`
-/

namespace A074787.P16298960673867131395
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 : ℚ) ^ (A001221 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat : ℤ)) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074787.P16298960673867131395

namespace A074787

/-- `∑[(2^A001221(2*n-(n-1)))²]` -/
def P16298960673867131395.Spec : Prop :=
  ∀ n, P16298960673867131395.a n = (A074787 (n + 1) : ℚ)

end A074787

/-! ## A074787.P13704668305401837968

`∑[A000005(A007947(n+1))²]`
-/

namespace A074787.P13704668305401837968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A007947 (n + 1)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074787.P13704668305401837968

namespace A074787

/-- `∑[A000005(A007947(n+1))²]` -/
def P13704668305401837968.Spec : Prop :=
  ∀ n, P13704668305401837968.a n = A074787 (n + 1)

end A074787

/-! ## A074787.P7933757412707824899

`∑[A061142(A181819(n+1))²]`
-/

namespace A074787.P7933757412707824899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061142 (A181819 (n + 1)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074787.P7933757412707824899

namespace A074787

/-- `∑[A061142(A181819(n+1))²]` -/
def P7933757412707824899.Spec : Prop :=
  ∀ n, P7933757412707824899.a n = A074787 (n + 1)

end A074787

/-! ## A074787.P153675604683961137

`∑[A005361(A007947(n+1)²)²]`
-/

namespace A074787.P153675604683961137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (A007947 (n + 1) ^ 2).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074787.P153675604683961137

namespace A074787

/-- `∑[A005361(A007947(n+1)²)²]` -/
def P153675604683961137.Spec : Prop :=
  ∀ n, P153675604683961137.a n = A074787 (n + 1)

end A074787

/-! ## A074787.P9329778919993253916

`∑[A317528((n+1)²)²]`
-/

namespace A074787.P9329778919993253916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317528 ((n + 1) ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074787.P9329778919993253916

namespace A074787

/-- `∑[A317528((n+1)²)²]` -/
def P9329778919993253916.Spec : Prop :=
  ∀ n, P9329778919993253916.a n = A074787 (n + 1)

end A074787

/-! ## A074787.P1050096177830712375

`∑[A326415((n+1)²)]`
-/

namespace A074787.P1050096177830712375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326415 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074787.P1050096177830712375

namespace A074787

/-- `∑[A326415((n+1)²)]` -/
def P1050096177830712375.Spec : Prop :=
  ∀ n, P1050096177830712375.a n = A074787 (n + 1)

end A074787

/-!
# A074788: Prime numbers in the Perrin sequence b(n+1) = b(n-1) + b(n-2) with initial values b(1)=3, b(2)=0, b(3)=2.

The programs for A074788, there is no canonical definition to state claims against.
-/

/-! ## A074788.P9913447500510530894

`record[A001608(A112881(n+1))]`
-/

namespace A074788.P9913447500510530894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001608 (A112881 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A074788.P9913447500510530894

/-! ## A074788.P1878780236969065989

`p?[record[a(n-2)+a(n-3)]]` with `a(0)=0, a(1)=2, a(2)=3`
-/

namespace A074788.P1878780236969065989
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 3] fun n f2 =>
  f2 (n - 2) + f2 (n - 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A074788.P1878780236969065989

/-! ## A074788.P6263583293848645603

`p?[n*A294878(n)]`
-/

namespace A074788.P6263583293848645603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A294878 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A074788.P6263583293848645603

/-! ## A074788.P14429827038692300893

`p?[record[Δ[A001608(n)]]]`
-/

namespace A074788.P14429827038692300893
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001608 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A074788.P14429827038692300893

/-! ## A074788.P10072251342634415978

`p?[record[Δ[A193744(n)]]]`
-/

namespace A074788.P10072251342634415978
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193744 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A074788.P10072251342634415978

/-!
# A074789: Partial sums of usigma(n)^2: square of the sum of unitary divisors of n.

The programs for A074789, the canonical program `A074789.P6952421410353009760` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074789 has offset 1).

The definition of A074789 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A074789.P6952421410353009760

`∑[A034448(n+1)²]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A074789

/-- `∑[A034448(n+1)²]` -/
def P6952421410353009760.Spec : Prop :=
  ∀ n, P6952421410353009760.a n = A074789 (n + 1)

theorem P6952421410353009760.correct : P6952421410353009760.Spec := by
  intro n
  simp only [A074789, Nat.add_sub_cancel]

end A074789

/-! ## A074789.P10568501918861782079

`∑[(A345451(n+1)+1)²]`
-/

namespace A074789.P10568501918861782079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A345451 (n + 1) + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074789.P10568501918861782079

namespace A074789

/-- `∑[(A345451(n+1)+1)²]` -/
def P10568501918861782079.Spec : Prop :=
  ∀ n, P10568501918861782079.a n = A074789 (n + 1)

end A074789

/-! ## A074789.P12850340576792223058

`∑[∑{d}[n+1, A254503(#)]²]`
-/

namespace A074789.P12850340576792223058
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f2 n), A254503 d) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074789.P12850340576792223058

namespace A074789

/-- `∑[∑{d}[n+1, A254503(#)]²]` -/
def P12850340576792223058.Spec : Prop :=
  ∀ n, P12850340576792223058.a n = A074789 (n + 1)

end A074789

/-! ## A074789.P5356212216577823291

`∑[(A034460(n+1)+1+n)²]`
-/

namespace A074789.P5356212216577823291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A034460 (n + 1) + 1 + (n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074789.P5356212216577823291

namespace A074789

/-- `∑[(A034460(n+1)+1+n)²]` -/
def P5356212216577823291.Spec : Prop :=
  ∀ n, P5356212216577823291.a n = A074789 (n + 1)

end A074789

/-! ## A074789.P16027551187822621753

`∑[(A064971(n+1)/(n+1))²]`
-/

namespace A074789.P16027551187822621753
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A064971 (n + 1) : ℚ) / (n + 1 : ℚ)) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074789.P16027551187822621753

namespace A074789

/-- `∑[(A064971(n+1)/(n+1))²]` -/
def P16027551187822621753.Spec : Prop :=
  ∀ n, P16027551187822621753.a n = (A074789 (n + 1) : ℚ)

end A074789

/-! ## A074789.P17054466736499258514

`∑[(A000203(n+1)-A048146(n+1))²]`
-/

namespace A074789.P17054466736499258514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) - A048146 (n + 1)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074789.P17054466736499258514

namespace A074789

/-- `∑[(A000203(n+1)-A048146(n+1))²]` -/
def P17054466736499258514.Spec : Prop :=
  ∀ n, P17054466736499258514.a n = A074789 (n + 1)

end A074789

/-! ## A074789.P8027130805847657370

`∑[(A348503(n+1)*A348505(n+1))²]`
-/

namespace A074789.P8027130805847657370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A348503 (n + 1) * A348505 (n + 1)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074789.P8027130805847657370

namespace A074789

/-- `∑[(A348503(n+1)*A348505(n+1))²]` -/
def P8027130805847657370.Spec : Prop :=
  ∀ n, P8027130805847657370.a n = A074789 (n + 1)

end A074789

/-! ## A074789.P4770821046814312015

`∑[(A345451(n+1)+1)*A034448(n+1)]`
-/

namespace A074789.P4770821046814312015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A345451 (n + 1) + 1) * A034448 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074789.P4770821046814312015

namespace A074789

/-- `∑[(A345451(n+1)+1)*A034448(n+1)]` -/
def P4770821046814312015.Spec : Prop :=
  ∀ n, P4770821046814312015.a n = A074789 (n + 1)

end A074789

/-! ## A074789.P5635063694652032405

`∑[(A048146(n+1)-A245092(2*n+1))²]`
-/

namespace A074789.P5635063694652032405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A048146 (n + 1) - A245092 (2 * n + 1)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074789.P5635063694652032405

namespace A074789

/-- `∑[(A048146(n+1)-A245092(2*n+1))²]` -/
def P5635063694652032405.Spec : Prop :=
  ∀ n, P5635063694652032405.a n = A074789 (n + 1)

end A074789

/-! ## A074789.P10898242256320775086

`∑[(A001065(n+1)+1+n-A048146(n+1))²]`
-/

namespace A074789.P10898242256320775086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001065 (n + 1) + 1 + (n : ℤ) - A048146 (n + 1)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074789.P10898242256320775086

namespace A074789

/-- `∑[(A001065(n+1)+1+n-A048146(n+1))²]` -/
def P10898242256320775086.Spec : Prop :=
  ∀ n, P10898242256320775086.a n = A074789 (n + 1)

end A074789

/-! ## A074789.P2403298642705542064

`∑[(A345451(n+1)+1)*(A000203(n+1)-A048146(n+1))]`
-/

namespace A074789.P2403298642705542064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A345451 (n + 1) + 1) * (A000203 (n + 1) - A048146 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074789.P2403298642705542064

namespace A074789

/-- `∑[(A345451(n+1)+1)*(A000203(n+1)-A048146(n+1))]` -/
def P2403298642705542064.Spec : Prop :=
  ∀ n, P2403298642705542064.a n = A074789 (n + 1)

end A074789

/-! ## A074789.P6321013637026070968

`∑[(A345451(n+1)+1)*(A001065(n+1)+1+n-A048146(n+1))]`
-/

namespace A074789.P6321013637026070968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A345451 (n + 1) + 1) * (A001065 (n + 1) + 1 + (n : ℤ) - A048146 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074789.P6321013637026070968

namespace A074789

/-- `∑[(A345451(n+1)+1)*(A001065(n+1)+1+n-A048146(n+1))]` -/
def P6321013637026070968.Spec : Prop :=
  ∀ n, P6321013637026070968.a n = A074789 (n + 1)

end A074789

/-! ## A074789.P7883337844622665734

`∑[A305461((n+1)²)²]`
-/

namespace A074789.P7883337844622665734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305461 ((n + 1) ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074789.P7883337844622665734

namespace A074789

/-- `∑[A305461((n+1)²)²]` -/
def P7883337844622665734.Spec : Prop :=
  ∀ n, P7883337844622665734.a n = A074789 (n + 1)

end A074789

/-! ## A074789.P11318788834282898796

`∑[A360162((n+1)²)²]`
-/

namespace A074789.P11318788834282898796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360162 ((n + 1) ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074789.P11318788834282898796

namespace A074789

/-- `∑[A360162((n+1)²)²]` -/
def P11318788834282898796.Spec : Prop :=
  ∀ n, P11318788834282898796.a n = A074789 (n + 1)

end A074789

/-! ## A074789.P1236594673754435172

`∑[A365404((n+1)²)²]`
-/

namespace A074789.P1236594673754435172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365404 ((n + 1) ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074789.P1236594673754435172

namespace A074789

/-- `∑[A365404((n+1)²)²]` -/
def P1236594673754435172.Spec : Prop :=
  ∀ n, P1236594673754435172.a n = A074789 (n + 1)

end A074789

/-! ## A074789.P18124912768585673723

`∑[A365481((n+1)²)²]`
-/

namespace A074789.P18124912768585673723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365481 ((n + 1) ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074789.P18124912768585673723

namespace A074789

/-- `∑[A365481((n+1)²)²]` -/
def P18124912768585673723.Spec : Prop :=
  ∀ n, P18124912768585673723.a n = A074789 (n + 1)

end A074789

/-! ## A074789.P8022004750115442997

`∑[A117658(A064549(n+1))²]`
-/

namespace A074789.P8022004750115442997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117658 (A064549 (n + 1)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074789.P8022004750115442997

namespace A074789

/-- `∑[A117658(A064549(n+1))²]` -/
def P8022004750115442997.Spec : Prop :=
  ∀ n, P8022004750115442997.a n = A074789 (n + 1)

end A074789

/-!
# A074790: a(n) = (2*n+1)!*Sum_{k=0..n} (-1)^k/(2*k+1)!.

The programs for A074790, the canonical program `A074790.P5822877122925386450` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074790 has offset 0).

The definition of A074790 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A074790.P6258258524794752471

`round(sin(1)*(2*n+1)!)`
-/

namespace A074790.P6258258524794752471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sin (1 : ℝ) * (Nat.factorial (2 * n + 1) : ℝ))

end

end A074790.P6258258524794752471

namespace A074790

/-- `round(sin(1)*(2*n+1)!)` -/
def P6258258524794752471.Spec : Prop :=
  ∀ n, P6258258524794752471.a n = A074790 n

end A074790

/-! ## A074790.P5822877122925386450

`2*n*(2*n+1)*a(n-1)+(-1)^n` with `a(0)=1`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A074790

/-- `2*n*(2*n+1)*a(n-1)+(-1)^n` -/
def P5822877122925386450.Spec : Prop :=
  ∀ n, P5822877122925386450.a n = A074790 n

theorem P5822877122925386450.correct : P5822877122925386450.Spec := by
  intro n
  simp only [A074790]

end A074790

/-! ## A074790.P9089405494501400945

`A009551(2*n+1)`
-/

namespace A074790.P9089405494501400945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009551 (2 * n + 1)

end

end A074790.P9089405494501400945

namespace A074790

/-- `A009551(2*n+1)` -/
def P9089405494501400945.Spec : Prop :=
  ∀ n, P9089405494501400945.a n = A074790 n

end A074790

/-! ## A074790.P2838211550035991978

`abs(A337749(2*n+1))`
-/

namespace A074790.P2838211550035991978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A337749 (2 * n + 1)|

end

end A074790.P2838211550035991978

namespace A074790

/-- `abs(A337749(2*n+1))` -/
def P2838211550035991978.Spec : Prop :=
  ∀ n, P2838211550035991978.a n = A074790 n

end A074790

/-!
# A074791: Numbers k such that k does not divide the denominator of the k-th harmonic number.

The programs for A074791, the canonical program `A074791.P16479575259879118996` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074791 has offset 1).

The definition of A074791 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A074791.P17179582741781162100

`record[(n+6)%A335024(n+5)]`
-/

namespace A074791.P17179582741781162100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 6 : ℤ) (A335024 (n + 5))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A074791.P17179582741781162100

namespace A074791

/-- `record[(n+6)%A335024(n+5)]` -/
def P17179582741781162100.Spec : Prop :=
  ∀ n, P17179582741781162100.a n = A074791 (n + 1)

end A074791

/-! ## A074791.P16479575259879118996

`lt[1, A120263(n+1)]+1`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A074791

/-- `lt[1, A120263(n+1)]+1` -/
def P16479575259879118996.Spec : Prop :=
  ∀ n, (P16479575259879118996.a n : ℤ) = A074791 (n + 1)

theorem P16479575259879118996.correct : P16479575259879118996.Spec := by
  intro n
  simp only [A074791, Nat.add_sub_cancel]

end A074791

/-! ## A074791.P17942447138687697038

`lt[1, A120263(A028310(n))]`
-/

namespace A074791.P17942447138687697038
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120263 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A074791.P17942447138687697038

namespace A074791

/-- `lt[1, A120263(A028310(n))]` -/
def P17942447138687697038.Spec : Prop :=
  ∀ n, (P17942447138687697038.a n : ℤ) = A074791 (n + 1)

end A074791

/-! ## A074791.P5677996041325680690

`A020725(lt[1, A120263(n+1)])`
-/

namespace A074791.P5677996041325680690
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120263 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A074791.P5677996041325680690

namespace A074791

/-- `A020725(lt[1, A120263(n+1)])` -/
def P5677996041325680690.Spec : Prop :=
  ∀ n, P5677996041325680690.a n = A074791 (n + 1)

end A074791

/-! ## A074791.P3959574459680585422

`lt[1, A120263(A233583(n+1))]`
-/

namespace A074791.P3959574459680585422
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120263 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A074791.P3959574459680585422

namespace A074791

/-- `lt[1, A120263(A233583(n+1))]` -/
def P3959574459680585422.Spec : Prop :=
  ∀ n, (P3959574459680585422.a n : ℤ) = A074791 (n + 1)

end A074791

/-!
# A074792: Least k > 1 such that k^n == 1 (mod n).

The programs for A074792, there is no canonical definition to state claims against.
-/

/-! ## A074792.P7933464666908060221

`A083503(n+1)-floor(acot(n))`
-/

namespace A074792.P7933464666908060221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083503 (n + 1) - ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A074792.P7933464666908060221

/-! ## A074792.P6684464933003349938

`A083503(gcd(n, a(n-1))+n)` with `a(0)=2`
-/

namespace A074792.P6684464933003349938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A083503 (Int.gcd (n : ℤ) (a (n - 1)) + n)

end

end A074792.P6684464933003349938

/-! ## A074792.P7319542919997945474

`A083503(n+1)-A000007(n)`
-/

namespace A074792.P7319542919997945474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083503 (n + 1) - A000007 n

end

end A074792.P7319542919997945474

/-! ## A074792.P2818898379498439885

`A083503(n+1)+1-A054977(n)`
-/

namespace A074792.P2818898379498439885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083503 (n + 1) + (1 - A054977 n)

end

end A074792.P2818898379498439885

/-! ## A074792.P15262666338646926586

`and(A083503(n+1), A118883(n+1))`
-/

namespace A074792.P15262666338646926586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A083503 (n + 1)) (A118883 (n + 1))

end

end A074792.P15262666338646926586

/-! ## A074792.P14816022960139833797

`and(A083503(n+1), A130567(n+1))`
-/

namespace A074792.P14816022960139833797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A083503 (n + 1)) (A130567 (n + 1))

end

end A074792.P14816022960139833797

/-! ## A074792.P1670619013545626273

`and(A083503(n+1), A198693(n))`
-/

namespace A074792.P1670619013545626273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A083503 (n + 1)) (A198693 n)

end

end A074792.P1670619013545626273

/-! ## A074792.P7447840778706348631

`and(A083503(n+1), A198694(n))`
-/

namespace A074792.P7447840778706348631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A083503 (n + 1)) (A198694 n)

end

end A074792.P7447840778706348631

/-! ## A074792.P11365909972018154577

`and(A083503(n+1), A198695(n))`
-/

namespace A074792.P11365909972018154577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A083503 (n + 1)) (A198695 n)

end

end A074792.P11365909972018154577

/-! ## A074792.P7264157792217865319

`A181440(A110738(n+1))`
-/

namespace A074792.P7264157792217865319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181440 (A110738 (n + 1)).toNat

end

end A074792.P7264157792217865319

/-!
# A074793: Sum of prime powers less than or equal to n.

The programs for A074793, the canonical program `A074793.P4972280884308087737` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074793 has offset 1).

The definition of A074793 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A074793.P4972280884308087737

`∑[(n+1)*C(∑{p}[n+1, #], ∏{p}[n+1, #])]`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A074793

/-- `∑[(n+1)*C(∑{p}[n+1, #], ∏{p}[n+1, #])]` -/
def P4972280884308087737.Spec : Prop :=
  ∀ n, (P4972280884308087737.a n : ℤ) = A074793 (n + 1)

theorem P4972280884308087737.correct : P4972280884308087737.Spec := by
  intro n
  simp only [A074793, Nat.add_sub_cancel]

end A074793

/-! ## A074793.P6546974940241248992

`∑[(n+1)*A069513(n+1)]`
-/

namespace A074793.P6546974940241248992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A069513 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074793.P6546974940241248992

namespace A074793

/-- `∑[(n+1)*A069513(n+1)]` -/
def P6546974940241248992.Spec : Prop :=
  ∀ n, P6546974940241248992.a n = A074793 (n + 1)

end A074793

/-! ## A074793.P2693628911997063923

`∑[C(A028233(n+1), n)]-1`
-/

namespace A074793.P2693628911997063923
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A028233 (n + 1)).toNat n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A074793.P2693628911997063923

namespace A074793

/-- `∑[C(A028233(n+1), n)]-1` -/
def P2693628911997063923.Spec : Prop :=
  ∀ n, P2693628911997063923.a n = A074793 (n + 1)

end A074793

/-! ## A074793.P15652005291908608922

`∑[C(A130065(n+1), n)]-1`
-/

namespace A074793.P15652005291908608922
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A130065 (n + 1)).toNat n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A074793.P15652005291908608922

namespace A074793

/-- `∑[C(A130065(n+1), n)]-1` -/
def P15652005291908608922.Spec : Prop :=
  ∀ n, P15652005291908608922.a n = A074793 (n + 1)

end A074793

/-! ## A074793.P8359520882388730180

`∑[C(A345993(n+1), n)]-1`
-/

namespace A074793.P8359520882388730180
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A345993 (n + 1)).toNat n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A074793.P8359520882388730180

namespace A074793

/-- `∑[C(A345993(n+1), n)]-1` -/
def P8359520882388730180.Spec : Prop :=
  ∀ n, P8359520882388730180.a n = A074793 (n + 1)

end A074793

/-! ## A074793.P644248369463273900

`∑[n-A074591(n+1)]+n`
-/

namespace A074793.P644248369463273900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A074591 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A074793.P644248369463273900

namespace A074793

/-- `∑[n-A074591(n+1)]+n` -/
def P644248369463273900.Spec : Prop :=
  ∀ n, P644248369463273900.a n = A074793 (n + 1)

end A074793

/-! ## A074793.P6382971111102437011

`∑[∑{e}[A014963(n+1), #+n]]`
-/

namespace A074793.P6382971111102437011
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, (Nat.factorization (f2 n).natAbs p + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074793.P6382971111102437011

namespace A074793

/-- `∑[∑{e}[A014963(n+1), #+n]]` -/
def P6382971111102437011.Spec : Prop :=
  ∀ n, (P6382971111102437011.a n : ℤ) = A074793 (n + 1)

end A074793

/-! ## A074793.P16812023889119320136

`∑[(n+1)*A010055(n+1)]-1`
-/

namespace A074793.P16812023889119320136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A010055 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A074793.P16812023889119320136

namespace A074793

/-- `∑[(n+1)*A010055(n+1)]-1` -/
def P16812023889119320136.Spec : Prop :=
  ∀ n, P16812023889119320136.a n = A074793 (n + 1)

end A074793

/-! ## A074793.P3519881416835513822

`∑[(n+1)*A010051(∏{p}[n+1, #])]`
-/

namespace A074793.P3519881416835513822
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A010051 (∏ p ∈ Nat.primeFactors (f2 n), p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074793.P3519881416835513822

namespace A074793

/-- `∑[(n+1)*A010051(∏{p}[n+1, #])]` -/
def P3519881416835513822.Spec : Prop :=
  ∀ n, P3519881416835513822.a n = A074793 (n + 1)

end A074793

/-! ## A074793.P12651888478278027173

`∑[(n+1)*char[eq[1, A001221(n+1)]]]`
-/

namespace A074793.P12651888478278027173
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f3 j : ℤ) = f4 j) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (if ∃ j, f2 j = n then 1 else 0)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074793.P12651888478278027173

namespace A074793

/-- `∑[(n+1)*char[eq[1, A001221(n+1)]]]` -/
def P12651888478278027173.Spec : Prop :=
  ∀ n, (P12651888478278027173.a n : ℤ) = A074793 (n + 1)

end A074793

/-! ## A074793.P4178209806913057469

`∑[A008475(A100994(n+1))]`
-/

namespace A074793.P4178209806913057469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (A100994 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074793.P4178209806913057469

namespace A074793

/-- `∑[A008475(A100994(n+1))]` -/
def P4178209806913057469.Spec : Prop :=
  ∀ n, P4178209806913057469.a n = A074793 (n + 1)

end A074793

/-! ## A074793.P194898477821078627

`A024918(A065515(n+1))-1`
-/

namespace A074793.P194898477821078627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024918 (A065515 (n + 1)).toNat - 1

end

end A074793.P194898477821078627

namespace A074793

/-- `A024918(A065515(n+1))-1` -/
def P194898477821078627.Spec : Prop :=
  ∀ n, P194898477821078627.a n = A074793 (n + 1)

end A074793

/-! ## A074793.P17979425124596608998

`∑[(n+1)*A001221(or(1, A014963(n+1)))]`
-/

namespace A074793.P17979425124596608998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A001221 (Int.lor 1 (A014963 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074793.P17979425124596608998

namespace A074793

/-- `∑[(n+1)*A001221(or(1, A014963(n+1)))]` -/
def P17979425124596608998.Spec : Prop :=
  ∀ n, P17979425124596608998.a n = A074793 (n + 1)

end A074793

/-! ## A074793.P1053089066889652043

`∑[(A001221(n+1)+n)*A010055(n+1)]`
-/

namespace A074793.P1053089066889652043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001221 (n + 1) + (n : ℤ)) * A010055 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074793.P1053089066889652043

namespace A074793

/-- `∑[(A001221(n+1)+n)*A010055(n+1)]` -/
def P1053089066889652043.Spec : Prop :=
  ∀ n, P1053089066889652043.a n = A074793 (n + 1)

end A074793

/-! ## A074793.P17568375871324838729

`∑[(n+1)*A359466((n+1)²)]`
-/

namespace A074793.P17568375871324838729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A359466 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074793.P17568375871324838729

namespace A074793

/-- `∑[(n+1)*A359466((n+1)²)]` -/
def P17568375871324838729.Spec : Prop :=
  ∀ n, P17568375871324838729.a n = A074793 (n + 1)

end A074793

/-! ## A074793.P14053519953754550018

`∑[(n+1)*A268340((n+1)²)]`
-/

namespace A074793.P14053519953754550018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A268340 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074793.P14053519953754550018

namespace A074793

/-- `∑[(n+1)*A268340((n+1)²)]` -/
def P14053519953754550018.Spec : Prop :=
  ∀ n, P14053519953754550018.a n = A074793 (n + 1)

end A074793

/-! ## A074793.P3745262743277526530

`∑[A349394(A064549(n+1))]`
-/

namespace A074793.P3745262743277526530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349394 (A064549 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074793.P3745262743277526530

namespace A074793

/-- `∑[A349394(A064549(n+1))]` -/
def P3745262743277526530.Spec : Prop :=
  ∀ n, P3745262743277526530.a n = A074793 (n + 1)

end A074793

/-! ## A074793.P8871091193207863573

`∑[(n+1)*A346485((n+1)²)]`
-/

namespace A074793.P8871091193207863573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A346485 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074793.P8871091193207863573

namespace A074793

/-- `∑[(n+1)*A346485((n+1)²)]` -/
def P8871091193207863573.Spec : Prop :=
  ∀ n, P8871091193207863573.a n = A074793 (n + 1)

end A074793

/-!
# A074794: Number of numbers k <= n such that tau(k) == 1 (mod 3) where tau(k) = A000005(k) is the number of divisors of k.

The programs for A074794, the canonical program `A074794.P12627165685820509410` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074794 has offset 1).

The definition of A074794 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A074794.P12627165685820509410

`∑[(∏{e}[n+1, #+1]%3)%2]`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A074794

/-- `∑[(∏{e}[n+1, #+1]%3)%2]` -/
def P12627165685820509410.Spec : Prop :=
  ∀ n, (P12627165685820509410.a n : ℤ) = A074794 (n + 1)

theorem P12627165685820509410.correct : P12627165685820509410.Spec := by
  intro n
  simp only [A074794, Nat.add_sub_cancel]

end A074794

/-! ## A074794.P3107787632372160261

`∑[A184389(n+1)%3]`
-/

namespace A074794.P3107787632372160261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A184389 (n + 1)) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074794.P3107787632372160261

namespace A074794

/-- `∑[A184389(n+1)%3]` -/
def P3107787632372160261.Spec : Prop :=
  ∀ n, P3107787632372160261.a n = A074794 (n + 1)

end A074794

/-! ## A074794.P3733221302140272013

`∑[C(2, A074943(n+1))-1]`
-/

namespace A074794.P3733221302140272013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose 2 (A074943 (n + 1)).toNat : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074794.P3733221302140272013

namespace A074794

/-- `∑[C(2, A074943(n+1))-1]` -/
def P3733221302140272013.Spec : Prop :=
  ∀ n, P3733221302140272013.a n = A074794 (n + 1)

end A074794

/-! ## A074794.P4276888298358958418

`∑[(A000005(n+1)%3)%2]`
-/

namespace A074794.P4276888298358958418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A000005 (n + 1)) 3) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074794.P4276888298358958418

namespace A074794

/-- `∑[(A000005(n+1)%3)%2]` -/
def P4276888298358958418.Spec : Prop :=
  ∀ n, P4276888298358958418.a n = A074794 (n + 1)

end A074794

/-! ## A074794.P14368248620266240491

`∑[A000217(∏{e}[n+1, #+1])%3]`
-/

namespace A074794.P14368248620266240491
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000217 (∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1))) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074794.P14368248620266240491

namespace A074794

/-- `∑[A000217(∏{e}[n+1, #+1])%3]` -/
def P14368248620266240491.Spec : Prop :=
  ∀ n, P14368248620266240491.a n = A074794 (n + 1)

end A074794

/-! ## A074794.P13069919534341036922

`∑[A022003(A000005(n+1)+1)]`
-/

namespace A074794.P13069919534341036922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022003 (A000005 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074794.P13069919534341036922

namespace A074794

/-- `∑[A022003(A000005(n+1)+1)]` -/
def P13069919534341036922.Spec : Prop :=
  ∀ n, P13069919534341036922.a n = A074794 (n + 1)

end A074794

/-! ## A074794.P12157979396289741761

`∑[A079978(A062011(n+1)+1)]`
-/

namespace A074794.P12157979396289741761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079978 (A062011 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074794.P12157979396289741761

namespace A074794

/-- `∑[A079978(A062011(n+1)+1)]` -/
def P12157979396289741761.Spec : Prop :=
  ∀ n, P12157979396289741761.a n = A074794 (n + 1)

end A074794

/-! ## A074794.P9617130746136295125

`∑[A079978(A000005(n+1)-1)]`
-/

namespace A074794.P9617130746136295125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079978 (A000005 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074794.P9617130746136295125

namespace A074794

/-- `∑[A079978(A000005(n+1)-1)]` -/
def P9617130746136295125.Spec : Prop :=
  ∀ n, P9617130746136295125.a n = A074794 (n + 1)

end A074794

/-! ## A074794.P15524032216809567067

`∑[A057078((1-A000005(n+1))²)]`
-/

namespace A074794.P15524032216809567067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057078 ((1 - A000005 (n + 1)) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074794.P15524032216809567067

namespace A074794

/-- `∑[A057078((1-A000005(n+1))²)]` -/
def P15524032216809567067.Spec : Prop :=
  ∀ n, P15524032216809567067.a n = A074794 (n + 1)

end A074794

/-! ## A074794.P10427121808081518122

`∑[A079978((A000005(n+1)+2)²)]`
-/

namespace A074794.P10427121808081518122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079978 ((A000005 (n + 1) + 2) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074794.P10427121808081518122

namespace A074794

/-- `∑[A079978((A000005(n+1)+2)²)]` -/
def P10427121808081518122.Spec : Prop :=
  ∀ n, P10427121808081518122.a n = A074794 (n + 1)

end A074794

/-! ## A074794.P17148387824988997576

`∑[A093719(2*(A000005(n+1)-1))]`
-/

namespace A074794.P17148387824988997576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093719 (2 * (A000005 (n + 1) - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074794.P17148387824988997576

namespace A074794

/-- `∑[A093719(2*(A000005(n+1)-1))]` -/
def P17148387824988997576.Spec : Prop :=
  ∀ n, P17148387824988997576.a n = A074794 (n + 1)

end A074794

/-! ## A074794.P14131874170590685237

`∑[and(1, A000071(A000005(n+1)+2))]`
-/

namespace A074794.P14131874170590685237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A000071 (A000005 (n + 1) + 2).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074794.P14131874170590685237

namespace A074794

/-- `∑[and(1, A000071(A000005(n+1)+2))]` -/
def P14131874170590685237.Spec : Prop :=
  ∀ n, P14131874170590685237.a n = A074794 (n + 1)

end A074794

/-! ## A074794.P12060949797777501706

`∑[and(1, A004772(A000005(n+1)+2))]`
-/

namespace A074794.P12060949797777501706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A004772 (A000005 (n + 1) + 2).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074794.P12060949797777501706

namespace A074794

/-- `∑[and(1, A004772(A000005(n+1)+2))]` -/
def P12060949797777501706.Spec : Prop :=
  ∀ n, P12060949797777501706.a n = A074794 (n + 1)

end A074794

/-! ## A074794.P1372737253913053021

`∑[A093719(2*(2*A000005(n+1)+1))]`
-/

namespace A074794.P1372737253913053021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093719 (2 * (2 * A000005 (n + 1) + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074794.P1372737253913053021

namespace A074794

/-- `∑[A093719(2*(2*A000005(n+1)+1))]` -/
def P1372737253913053021.Spec : Prop :=
  ∀ n, P1372737253913053021.a n = A074794 (n + 1)

end A074794

/-!
# A074795: Number of numbers k <= n such that tau(k) == 0 (mod 3) where tau(k) = A000005(k) is the number of divisors of k.

The programs for A074795, the canonical program `A074795.P1379753408512257015` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074795 has offset 1).

The definition of A074795 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A074795.P1379753408512257015

`∑[A353470(n+1)]`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A074795

/-- `∑[A353470(n+1)]` -/
def P1379753408512257015.Spec : Prop :=
  ∀ n, P1379753408512257015.a n = A074795 (n + 1)

theorem P1379753408512257015.correct : P1379753408512257015.Spec := by
  intro n
  simp only [A074795, Nat.add_sub_cancel]

end A074795

/-! ## A074795.P15973916870230395348

`∑[1-A307421(n+1)]`
-/

namespace A074795.P15973916870230395348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A307421 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074795.P15973916870230395348

namespace A074795

/-- `∑[1-A307421(n+1)]` -/
def P15973916870230395348.Spec : Prop :=
  ∀ n, P15973916870230395348.a n = A074795 (n + 1)

end A074795

/-! ## A074795.P13105464136155644396

`∑[1-A210826(n+1)²]`
-/

namespace A074795.P13105464136155644396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A210826 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074795.P13105464136155644396

namespace A074795

/-- `∑[1-A210826(n+1)²]` -/
def P13105464136155644396.Spec : Prop :=
  ∀ n, P13105464136155644396.a n = A074795 (n + 1)

end A074795

/-! ## A074795.P1313249820128357677

`∑[1-A299406(n+1)²]`
-/

namespace A074795.P1313249820128357677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A299406 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074795.P1313249820128357677

namespace A074795

/-- `∑[1-A299406(n+1)²]` -/
def P1313249820128357677.Spec : Prop :=
  ∀ n, P1313249820128357677.a n = A074795 (n + 1)

end A074795

/-! ## A074795.P1852356952006922800

`∑[and(1, A351219(n+1)+1)]`
-/

namespace A074795.P1852356952006922800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A351219 (n + 1) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074795.P1852356952006922800

namespace A074795

/-- `∑[and(1, A351219(n+1)+1)]` -/
def P1852356952006922800.Spec : Prop :=
  ∀ n, P1852356952006922800.a n = A074795 (n + 1)

end A074795

/-! ## A074795.P6317890157846307861

`∑[C(2, A074943(n+1)+2)]`
-/

namespace A074795.P6317890157846307861
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A074943 (n + 1) + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074795.P6317890157846307861

namespace A074795

/-- `∑[C(2, A074943(n+1)+2)]` -/
def P6317890157846307861.Spec : Prop :=
  ∀ n, (P6317890157846307861.a n : ℤ) = A074795 (n + 1)

end A074795

/-! ## A074795.P17463027343457586275

`∑[1-A000005(n+1)²%3]`
-/

namespace A074795.P17463027343457586275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - Int.tmod (A000005 (n + 1) ^ 2) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074795.P17463027343457586275

namespace A074795

/-- `∑[1-A000005(n+1)²%3]` -/
def P17463027343457586275.Spec : Prop :=
  ∀ n, P17463027343457586275.a n = A074795 (n + 1)

end A074795

/-! ## A074795.P9342283575881044710

`∑[A079978(A000005(n+1))]`
-/

namespace A074795.P9342283575881044710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079978 (A000005 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074795.P9342283575881044710

namespace A074795

/-- `∑[A079978(A000005(n+1))]` -/
def P9342283575881044710.Spec : Prop :=
  ∀ n, P9342283575881044710.a n = A074795 (n + 1)

end A074795

/-! ## A074795.P11858766422702491925

`∑[A079978(A062011(n+1))]`
-/

namespace A074795.P11858766422702491925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079978 (A062011 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074795.P11858766422702491925

namespace A074795

/-- `∑[A079978(A062011(n+1))]` -/
def P11858766422702491925.Spec : Prop :=
  ∀ n, P11858766422702491925.a n = A074795 (n + 1)

end A074795

/-! ## A074795.P8230764472113808448

`∑[A057078(A000005(n+1)²)]`
-/

namespace A074795.P8230764472113808448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057078 (A000005 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074795.P8230764472113808448

namespace A074795

/-- `∑[A057078(A000005(n+1)²)]` -/
def P8230764472113808448.Spec : Prop :=
  ∀ n, P8230764472113808448.a n = A074795 (n + 1)

end A074795

/-! ## A074795.P18366579229686838188

`∑[A022003(A000005(n+1)-1)]`
-/

namespace A074795.P18366579229686838188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022003 (A000005 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074795.P18366579229686838188

namespace A074795

/-- `∑[A022003(A000005(n+1)-1)]` -/
def P18366579229686838188.Spec : Prop :=
  ∀ n, P18366579229686838188.a n = A074795 (n + 1)

end A074795

/-! ## A074795.P9783934654858509862

`∑[A093719(2*A000005(n+1))]`
-/

namespace A074795.P9783934654858509862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093719 (2 * A000005 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074795.P9783934654858509862

namespace A074795

/-- `∑[A093719(2*A000005(n+1))]` -/
def P9783934654858509862.Spec : Prop :=
  ∀ n, P9783934654858509862.a n = A074795 (n + 1)

end A074795

/-! ## A074795.P17448662094726513065

`∑[A014027(A000005(n+1)²)²]`
-/

namespace A074795.P17448662094726513065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014027 (A000005 (n + 1) ^ 2).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074795.P17448662094726513065

namespace A074795

/-- `∑[A014027(A000005(n+1)²)²]` -/
def P17448662094726513065.Spec : Prop :=
  ∀ n, P17448662094726513065.a n = A074795 (n + 1)

end A074795

/-! ## A074795.P16969434686356259386

`∑[A022003(A000005(n+1)²+2)]`
-/

namespace A074795.P16969434686356259386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022003 (A000005 (n + 1) ^ 2 + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074795.P16969434686356259386

namespace A074795

/-- `∑[A022003(A000005(n+1)²+2)]` -/
def P16969434686356259386.Spec : Prop :=
  ∀ n, P16969434686356259386.a n = A074795 (n + 1)

end A074795

/-! ## A074795.P11034745982088060745

`∑[1-A008683(A050985(n+1))²]`
-/

namespace A074795.P11034745982088060745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A008683 (A050985 (n + 1)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074795.P11034745982088060745

namespace A074795

/-- `∑[1-A008683(A050985(n+1))²]` -/
def P11034745982088060745.Spec : Prop :=
  ∀ n, P11034745982088060745.a n = A074795 (n + 1)

end A074795

/-! ## A074795.P10496962496661803125

`∑[and(1, A004772(A000005(n+1)²))]`
-/

namespace A074795.P10496962496661803125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A004772 (A000005 (n + 1) ^ 2).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074795.P10496962496661803125

namespace A074795

/-- `∑[and(1, A004772(A000005(n+1)²))]` -/
def P10496962496661803125.Spec : Prop :=
  ∀ n, P10496962496661803125.a n = A074795 (n + 1)

end A074795

/-! ## A074795.P11119131652957331516

`∑[and(1, A101278(A000005(n+1)²))]`
-/

namespace A074795.P11119131652957331516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A101278 (A000005 (n + 1) ^ 2).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074795.P11119131652957331516

namespace A074795

/-- `∑[and(1, A101278(A000005(n+1)²))]` -/
def P11119131652957331516.Spec : Prop :=
  ∀ n, P11119131652957331516.a n = A074795 (n + 1)

end A074795

/-! ## A074795.P382244237259017524

`∑[A000217(A000005(n+1)+1)%3]`
-/

namespace A074795.P382244237259017524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000217 (A000005 (n + 1) + 1).toNat) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074795.P382244237259017524

namespace A074795

/-- `∑[A000217(A000005(n+1)+1)%3]` -/
def P382244237259017524.Spec : Prop :=
  ∀ n, P382244237259017524.a n = A074795 (n + 1)

end A074795

/-! ## A074795.P3140504734512812708

`∑[A027980(2*A000005(n+1))%2]`
-/

namespace A074795.P3140504734512812708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A027980 (2 * A000005 (n + 1)).toNat) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074795.P3140504734512812708

namespace A074795

/-- `∑[A027980(2*A000005(n+1))%2]` -/
def P3140504734512812708.Spec : Prop :=
  ∀ n, P3140504734512812708.a n = A074795 (n + 1)

end A074795

/-! ## A074795.P12103044303708922509

`∑[A167614(A000005(n+1)+3)%3]`
-/

namespace A074795.P12103044303708922509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A167614 (A000005 (n + 1) + 3).toNat) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074795.P12103044303708922509

namespace A074795

/-- `∑[A167614(A000005(n+1)+3)%3]` -/
def P12103044303708922509.Spec : Prop :=
  ∀ n, P12103044303708922509.a n = A074795 (n + 1)

end A074795

/-!
# A074796: Number of numbers k <= n such that tau(k) == 2 (mod 3) where tau(k) = A000005(k) is the number of divisors of k.

The programs for A074796, the canonical program `A074796.P12241950292265642730` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074796 has offset 1).

The definition of A074796 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A074796.P9287081280633587780

`∑[A066446(n+1)%3]`
-/

namespace A074796.P9287081280633587780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A066446 (n + 1)) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074796.P9287081280633587780

namespace A074796

/-- `∑[A066446(n+1)%3]` -/
def P9287081280633587780.Spec : Prop :=
  ∀ n, P9287081280633587780.a n = A074796 (n + 1)

end A074796

/-! ## A074796.P8367906433576937676

`∑[C(A074943(n+1), 2)]`
-/

namespace A074796.P8367906433576937676
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A074943 (n + 1)).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074796.P8367906433576937676

namespace A074796

/-- `∑[C(A074943(n+1), 2)]` -/
def P8367906433576937676.Spec : Prop :=
  ∀ n, (P8367906433576937676.a n : ℤ) = A074796 (n + 1)

end A074796

/-! ## A074796.P5339451508984208910

`∑[C(A000005(n+1), 2)%3]`
-/

namespace A074796.P5339451508984208910
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000005 (n + 1)).toNat 2 % 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074796.P5339451508984208910

namespace A074796

/-- `∑[C(A000005(n+1), 2)%3]` -/
def P5339451508984208910.Spec : Prop :=
  ∀ n, (P5339451508984208910.a n : ℤ) = A074796 (n + 1)

end A074796

/-! ## A074796.P13093357647709602025

`∑[floor(Δ[A006218(n)]%3/2)]`
-/

namespace A074796.P13093357647709602025
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Int.tmod (f2 (n + 1) - f2 n) 3 : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074796.P13093357647709602025

namespace A074796

/-- `∑[floor(Δ[A006218(n)]%3/2)]` -/
def P13093357647709602025.Spec : Prop :=
  ∀ n, P13093357647709602025.a n = A074796 (n + 1)

end A074796

/-! ## A074796.P12241950292265642730

`∑[val(A033120(∏{e}[n+1, #+1]), 2)]`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A074796

/-- `∑[val(A033120(∏{e}[n+1, #+1]), 2)]` -/
def P12241950292265642730.Spec : Prop :=
  ∀ n, (P12241950292265642730.a n : ℤ) = A074796 (n + 1)

theorem P12241950292265642730.correct : P12241950292265642730.Spec := by
  intro n
  simp only [A074796, Nat.add_sub_cancel]

end A074796

/-! ## A074796.P206742379123054470

`∑[val(A037608(∏{e}[n+1, #+1]), 2)]`
-/

namespace A074796.P206742379123054470
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A037608 (∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1))).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074796.P206742379123054470

namespace A074796

/-- `∑[val(A037608(∏{e}[n+1, #+1]), 2)]` -/
def P206742379123054470.Spec : Prop :=
  ∀ n, (P206742379123054470.a n : ℤ) = A074796 (n + 1)

end A074796

/-! ## A074796.P2915175889363398797

`∑[val(A037648(∏{e}[n+1, #+1]), 2)]`
-/

namespace A074796.P2915175889363398797
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A037648 (∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1))).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074796.P2915175889363398797

namespace A074796

/-- `∑[val(A037648(∏{e}[n+1, #+1]), 2)]` -/
def P2915175889363398797.Spec : Prop :=
  ∀ n, (P2915175889363398797.a n : ℤ) = A074796 (n + 1)

end A074796

/-! ## A074796.P10364037773006232491

`∑[(A000032(∏{e}[n+1, #+1]+1)-1)%2]`
-/

namespace A074796.P10364037773006232491
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000032 (∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1) + 1) - 1) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074796.P10364037773006232491

namespace A074796

/-- `∑[(A000032(∏{e}[n+1, #+1]+1)-1)%2]` -/
def P10364037773006232491.Spec : Prop :=
  ∀ n, P10364037773006232491.a n = A074796 (n + 1)

end A074796

/-! ## A074796.P6069714305329747705

`∑[A022003(A000005(n+1))]`
-/

namespace A074796.P6069714305329747705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022003 (A000005 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074796.P6069714305329747705

namespace A074796

/-- `∑[A022003(A000005(n+1))]` -/
def P6069714305329747705.Spec : Prop :=
  ∀ n, P6069714305329747705.a n = A074796 (n + 1)

end A074796

/-! ## A074796.P2995357609494821945

`∑[A079978(A000005(n+1)+1)]`
-/

namespace A074796.P2995357609494821945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079978 (A000005 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074796.P2995357609494821945

namespace A074796

/-- `∑[A079978(A000005(n+1)+1)]` -/
def P2995357609494821945.Spec : Prop :=
  ∀ n, P2995357609494821945.a n = A074796 (n + 1)

end A074796

/-! ## A074796.P17102630028063752617

`∑[A079978(A062011(n+1)-1)]`
-/

namespace A074796.P17102630028063752617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079978 (A062011 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074796.P17102630028063752617

namespace A074796

/-- `∑[A079978(A062011(n+1)-1)]` -/
def P17102630028063752617.Spec : Prop :=
  ∀ n, P17102630028063752617.a n = A074796 (n + 1)

end A074796

/-! ## A074796.P3439822877563408955

`∑[A057078((A000005(n+1)+1)²)]`
-/

namespace A074796.P3439822877563408955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057078 ((A000005 (n + 1) + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074796.P3439822877563408955

namespace A074796

/-- `∑[A057078((A000005(n+1)+1)²)]` -/
def P3439822877563408955.Spec : Prop :=
  ∀ n, P3439822877563408955.a n = A074796 (n + 1)

end A074796

/-! ## A074796.P17807585324836937737

`∑[A000217(Δ[A006218(n)]+2)%3]`
-/

namespace A074796.P17807585324836937737
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000217 (f2 (n + 1) - f2 n + 2).toNat) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074796.P17807585324836937737

namespace A074796

/-- `∑[A000217(Δ[A006218(n)]+2)%3]` -/
def P17807585324836937737.Spec : Prop :=
  ∀ n, P17807585324836937737.a n = A074796 (n + 1)

end A074796

/-! ## A074796.P13812084081378413943

`∑[A093719(2*(A000005(n+1)+1))]`
-/

namespace A074796.P13812084081378413943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093719 (2 * (A000005 (n + 1) + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074796.P13812084081378413943

namespace A074796

/-- `∑[A093719(2*(A000005(n+1)+1))]` -/
def P13812084081378413943.Spec : Prop :=
  ∀ n, P13812084081378413943.a n = A074796 (n + 1)

end A074796

/-! ## A074796.P3612405348781666484

`∑[A008133(2*A000005(n+1))%2]`
-/

namespace A074796.P3612405348781666484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008133 (2 * A000005 (n + 1)).toNat) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074796.P3612405348781666484

namespace A074796

/-- `∑[A008133(2*A000005(n+1))%2]` -/
def P3612405348781666484.Spec : Prop :=
  ∀ n, P3612405348781666484.a n = A074796 (n + 1)

end A074796

/-! ## A074796.P14507243860411988459

`∑[A000045(val(A000005(n+1)+1, 3))]`
-/

namespace A074796.P14507243860411988459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.valuation (A000005 (n + 1) + 1).toNat 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074796.P14507243860411988459

namespace A074796

/-- `∑[A000045(val(A000005(n+1)+1, 3))]` -/
def P14507243860411988459.Spec : Prop :=
  ∀ n, P14507243860411988459.a n = A074796 (n + 1)

end A074796

/-! ## A074796.P2428721619703144397

`∑[and(1, A000071(A000005(n+1)+1))]`
-/

namespace A074796.P2428721619703144397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A000071 (A000005 (n + 1) + 1).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074796.P2428721619703144397

namespace A074796

/-- `∑[and(1, A000071(A000005(n+1)+1))]` -/
def P2428721619703144397.Spec : Prop :=
  ∀ n, P2428721619703144397.a n = A074796 (n + 1)

end A074796

/-! ## A074796.P17016072612775886015

`∑[(A000045(A000005(n+1)+4)+3)%2]`
-/

namespace A074796.P17016072612775886015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000045 (A000005 (n + 1) + 4).toNat + 3) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074796.P17016072612775886015

namespace A074796

/-- `∑[(A000045(A000005(n+1)+4)+3)%2]` -/
def P17016072612775886015.Spec : Prop :=
  ∀ n, P17016072612775886015.a n = A074796 (n + 1)

end A074796

/-! ## A074796.P10734543970471852896

`∑[(A004277((A000005(n+1)+1)²)-2)%3]`
-/

namespace A074796.P10734543970471852896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004277 ((A000005 (n + 1) + 1) ^ 2).toNat - 2) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074796.P10734543970471852896

namespace A074796

/-- `∑[(A004277((A000005(n+1)+1)²)-2)%3]` -/
def P10734543970471852896.Spec : Prop :=
  ∀ n, P10734543970471852896.a n = A074796 (n + 1)

end A074796

/-! ## A074796.P13410674535882216584

`∑[A079978((A062011(n+1)+2)²)]`
-/

namespace A074796.P13410674535882216584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079978 ((A062011 (n + 1) + 2) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074796.P13410674535882216584

namespace A074796

/-- `∑[A079978((A062011(n+1)+2)²)]` -/
def P13410674535882216584.Spec : Prop :=
  ∀ n, P13410674535882216584.a n = A074796 (n + 1)

end A074796

/-!
# A074797: a(n) = A000081(n+1) - 2*A000081(n).

The programs for A074797, there is no canonical definition to state claims against.
-/

/-! ## A074797.P13577366703794560783

`A000081(n+5)-2*A000081(n+4)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A074797.P13577366703794560783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000081 (n + 5) - 2 * A000081 (n + 4)

end

end A074797.P13577366703794560783

/-! ## A074797.P9643691693270380207

`record[A174145(n)-A000081(n)]`
-/

namespace A074797.P9643691693270380207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174145 n - A000081 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A074797.P9643691693270380207

/-! ## A074797.P1525424455632177047

`A174145(n+4)-A000081(n+4)`
-/

namespace A074797.P1525424455632177047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174145 (n + 4) - A000081 (n + 4)

end

end A074797.P1525424455632177047

/-! ## A074797.P11550368232898357236

`record[A174145(n)-(A222380(n)+A222379(n))]`
-/

namespace A074797.P11550368232898357236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174145 n - (A222380 n + A222379 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A074797.P11550368232898357236

/-! ## A074797.P13446831129024185224

`record[A174145(n)-(A211192(n)+2*A222379(n))]`
-/

namespace A074797.P13446831129024185224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174145 n - (A211192 n + 2 * A222379 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A074797.P13446831129024185224

/-! ## A074797.P5692964856060549588

`record[A174145(n)-(2*A222380(n)-A211192(n))]`
-/

namespace A074797.P5692964856060549588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174145 n - (2 * A222380 n - A211192 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A074797.P5692964856060549588

/-! ## A074797.P3288256822526035415

`A000081(n+5)%A000081(n+4)`
-/

namespace A074797.P3288256822526035415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000081 (n + 5)) (A000081 (n + 4))

end

end A074797.P3288256822526035415

/-! ## A074797.P13700448294532780682

`Δ[A000081(n+4)-A087803(n+3)]`
-/

namespace A074797.P13700448294532780682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000081 (n + 4) - A087803 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074797.P13700448294532780682

/-! ## A074797.P14205693561077027224

`record[A000081(n+1)-2*A000081(n)]`
-/

namespace A074797.P14205693561077027224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000081 (n + 1) - 2 * A000081 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A074797.P14205693561077027224

/-! ## A074797.P15781724268024563839

`Δ[A087803(n+4)%A087803(n+3)]`
-/

namespace A074797.P15781724268024563839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A087803 (n + 4)) (A087803 (n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074797.P15781724268024563839

/-! ## A074797.P11813063474696209161

`Δ[Δ[A000081(n+3)]]-A000081(n+3)`
-/

namespace A074797.P11813063474696209161
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000081 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A000081 (n + 3)

end

end A074797.P11813063474696209161

/-!
# A074798: Floor of S*n^2, where S equals sum of reciprocal terms of this same sequence.

The programs for A074798, there is no canonical definition to state claims against.
-/

/-! ## A074798.P3210812246812692080

`A096228(2*(n+1))+A025465(A330915(2*(n+1)))`
-/

namespace A074798.P3210812246812692080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096228 (2 * (n + 1)) + A025465 (A330915 (2 * (n + 1))).toNat

end

end A074798.P3210812246812692080

/-! ## A074798.P8163336222885244913

`∏{p}[2^n, A032635(#*(n+1))]`
-/

namespace A074798.P8163336222885244913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A032635 (p * (n + 1))

end

end A074798.P8163336222885244913

/-! ## A074798.P10614218469177305509

`A032635(2*(n+1))%A224221(n)²`
-/

namespace A074798.P10614218469177305509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A032635 (2 * (n + 1))) (A224221 n ^ 2)

end

end A074798.P10614218469177305509

/-! ## A074798.P15188215854477071087

`A096228(2*(n+1))%A224221(n)²`
-/

namespace A074798.P15188215854477071087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A096228 (2 * (n + 1))) (A224221 n ^ 2)

end

end A074798.P15188215854477071087

/-! ## A074798.P15941336011511070351

`A096228(2*n+2)%A096185(n+4)`
-/

namespace A074798.P15941336011511070351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A096228 (2 * n + 2)) (A096185 (n + 4))

end

end A074798.P15941336011511070351

/-!
# A074799: a(n) = numerator( (4*n+1)*(Product_{i=1..n} (2*i-1)/Product_{i=1..n} 2*i)^5 ).

The programs for A074799, there is no canonical definition to state claims against.
-/

/-! ## A074799.P9399701199275390497

`A001790(n)^3*A110257(n+1)`
-/

namespace A074799.P9399701199275390497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001790 n ^ 3 * A110257 (n + 1)

end

end A074799.P9399701199275390497

/-! ## A074799.P9627511868497552888

`A001790(n)*A110257(n+1)*A038534(n)`
-/

namespace A074799.P9627511868497552888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001790 n * A110257 (n + 1) * A038534 n

end

end A074799.P9627511868497552888

/-! ## A074799.P7000826522979813518

`A000578(A001790(n))*A110257(n+1)`
-/

namespace A074799.P7000826522979813518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A001790 n).toNat * A110257 (n + 1)

end

end A074799.P7000826522979813518

/-! ## A074799.P5838415226464625856

`A000584(A001790(n))*A042948(2*n+1)`
-/

namespace A074799.P5838415226464625856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000584 (A001790 n).toNat * A042948 (2 * n + 1)

end

end A074799.P5838415226464625856

