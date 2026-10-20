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
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C027
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B007.C000
import Seq.B008.C000
import Seq.B008.C001
import Seq.B010.C000
import Seq.B012.C000
import Seq.B013.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C004
import Seq.Opaque.C005
import Seq.Opaque.C006
import Seq.Opaque.C007
import Seq.Opaque.C009
import Seq.Opaque.C010
import Seq.Opaque.C011
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
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A102102: Column 0 of triangular matrix A102101, which shifts upward to exclude the main diagonal under matrix fourth power.

The programs for A102102, there is no canonical definition to state claims against.
-/

/-! ## A102102.P13988652251570426748

`A102101(∑[n])`
-/

namespace A102102.P13988652251570426748
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102101 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A102102.P13988652251570426748

/-! ## A102102.P1451883296446104314

`and(abs(1-n)-n, A102101(C(n+1, 2)))`
-/

namespace A102102.P1451883296446104314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (|1 - (n : ℤ)| - (n : ℤ)) (A102101 (Nat.choose (n + 1) 2))

end

end A102102.P1451883296446104314

/-! ## A102102.P8270010994849823993

`and(-1, A102101(A000217(n)))`
-/

namespace A102102.P8270010994849823993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A102101 (A000217 n).toNat)

end

end A102102.P8270010994849823993

/-! ## A102102.P14013060362643409166

`A102101(record[C(n, 2)-n]-n)+A059995(n)`
-/

namespace A102102.P14013060362643409166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 2 : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102101 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n : ℤ)).toNat + A059995 n

end

end A102102.P14013060362643409166

/-!
# A102103: Column 1 of triangular matrix A102101, which shifts upward to exclude the main diagonal under matrix fourth power.

The programs for A102103, there is no canonical definition to state claims against.
-/

/-! ## A102103.P5988978378912590952

`and(-2, A102101(A000124(n)))`
-/

namespace A102103.P5988978378912590952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-2) (A102101 (A000124 n).toNat)

end

end A102103.P5988978378912590952

/-! ## A102103.P4185060299011425011

`record[A002262(n)*A102101(n)]`
-/

namespace A102103.P4185060299011425011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n * A102101 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A102103.P4185060299011425011

/-! ## A102103.P129748774508219844

`record[A102101(n)*A102752(n)]`
-/

namespace A102103.P129748774508219844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102101 n * A102752 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A102103.P129748774508219844

/-! ## A102103.P12796575239079021160

`record[A102101(n)*A112367(n)]`
-/

namespace A102103.P12796575239079021160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102101 n * A112367 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A102103.P12796575239079021160

/-!
# A102105: a(n) = (19*5^n - 16*3^n + 1) / 4.

The programs for A102105, the canonical program `A102105.P742485066281467371` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A102105 has offset 0).

The definition of A102105 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(19*5^n-16*3^n+1)/4` (program `A102105.P9072098505386402615`, by `A102105.P9072098505386402615.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A102105.P9072098505386402615

`(19*5^n-16*3^n+1)/4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A102105.P9072098505386402615
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((19 * 5 ^ n : ℤ) - (16 * 3 ^ n : ℤ) + 1 : ℚ) / 4

end

end A102105.P9072098505386402615

namespace A102105

/-- `(19*5^n-16*3^n+1)/4` -/
def P9072098505386402615.Spec : Prop :=
  ∀ n, P9072098505386402615.a n = (A102105 n : ℚ)

theorem P9072098505386402615.correct : P9072098505386402615.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A102105, Nat.add_sub_cancel, A102105.P9072098505386402615.a, A102105.P742485066281467371.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A102105, Nat.add_sub_cancel, A102105.P9072098505386402615.a, A102105.P742485066281467371.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A102105

/-! ## A102105.P742485066281467371

`9*a(n-1)-23*a(n-2)+15*a(n-3)` with `a(0)=1, a(1)=12, a(2)=83`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A102105

/-- `9*a(n-1)-23*a(n-2)+15*a(n-3)` -/
def P742485066281467371.Spec : Prop :=
  ∀ n, P742485066281467371.a n = A102105 n

theorem P742485066281467371.correct : P742485066281467371.Spec := by
  intro n
  simp only [A102105]

end A102105

/-! ## A102105.P16102155711509998459

`5*a(n-1)+A080923(n+1)-1` with `a(0)=1`
-/

namespace A102105.P16102155711509998459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  5 * a (n - 1) + (A080923 (n + 1) - 1)

end

end A102105.P16102155711509998459

namespace A102105

/-- `5*a(n-1)+A080923(n+1)-1` -/
def P16102155711509998459.Spec : Prop :=
  ∀ n, P16102155711509998459.a n = A102105 n

end A102105

/-! ## A102105.P4648580307520172565

`A005058(n)+∑[A080961(n)]`
-/

namespace A102105.P4648580307520172565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080961 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005058 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102105.P4648580307520172565

namespace A102105

/-- `A005058(n)+∑[A080961(n)]` -/
def P4648580307520172565.Spec : Prop :=
  ∀ n, P4648580307520172565.a n = A102105 n

end A102105

/-! ## A102105.P17433356942765105350

`A005059(n+1)+A007798(n+1)+A005058(n)`
-/

namespace A102105.P17433356942765105350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005059 (n + 1) + (A007798 (n + 1) + A005058 n)

end

end A102105.P17433356942765105350

namespace A102105

/-- `A005059(n+1)+A007798(n+1)+A005058(n)` -/
def P17433356942765105350.Spec : Prop :=
  ∀ n, P17433356942765105350.a n = A102105 n

end A102105

/-!
# A102106: Indices of Fibonacci numbers that can be expressed as the sum of two (but no fewer) primes.

The programs for A102106, there is no canonical definition to state claims against.
-/

/-! ## A102106.P9848438290135582970

`eq[2, A101422(n+3)]+3`
-/

namespace A102106.P9848438290135582970
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101422 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 3

end

end A102106.P9848438290135582970

/-! ## A102106.P11377544162476161727

`lt[A101422(n+5)%2, 1]+5`
-/

namespace A102106.P11377544162476161727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A101422 (n + 5)) 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 5

end

end A102106.P11377544162476161727

/-! ## A102106.P1619340556199921397

`A020715(eq[2, A101422(A020715(n))])`
-/

namespace A102106.P1619340556199921397
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101422 (A020715 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020715 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A102106.P1619340556199921397

/-! ## A102106.P13717467797562258311

`lt[A316413(A389553(2*n+1)), A005117(n+1)]`
-/

namespace A102106.P13717467797562258311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316413 (A389553 (2 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A102106.P13717467797562258311

/-! ## A102106.P16107799190583083202

`lt[A294620(n), A294588(A294618(n+1))]`
-/

namespace A102106.P16107799190583083202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294620 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294588 (A294618 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A102106.P16107799190583083202

/-!
# A102107: Indices of Fibonacci numbers that can be expressed as the sum of three (but no fewer) primes.

The programs for A102107, there is no canonical definition to state claims against.
-/

/-! ## A102107.P3237140881869479334

`lt[2, A101422(n+3)]+3`
-/

namespace A102107.P3237140881869479334
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101422 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 3

end

end A102107.P3237140881869479334

/-! ## A102107.P17283950176856204278

`eq[3, A101422(n+4)]+4`
-/

namespace A102107.P17283950176856204278
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101422 (n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 4

end

end A102107.P17283950176856204278

/-! ## A102107.P4468852831996368834

`A055495(lt[2, A101422(n+3)])`
-/

namespace A102107.P4468852831996368834
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101422 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055495 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A102107.P4468852831996368834

/-! ## A102107.P12276021272599140719

`A055495(eq[3, A101422(n+3)])`
-/

namespace A102107.P12276021272599140719
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101422 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055495 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A102107.P12276021272599140719

/-! ## A102107.P16486003003270176454

`A020715(eq[3, A101422(A020715(n))])`
-/

namespace A102107.P16486003003270176454
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101422 (A020715 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020715 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A102107.P16486003003270176454

/-!
# A102108: Numbers of partitions of 2n into n primes.

The programs for A102108, there is no canonical definition to state claims against.
-/

/-! ## A102108.P18049119186510969271

`A000607(2*(n+1))`
-/

namespace A102108.P18049119186510969271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000607 (2 * (n + 1))

end

end A102108.P18049119186510969271

/-! ## A102108.P15469640010727745181

`Δ[and(∑[A000607(2*n)], -1)]`
-/

namespace A102108.P15469640010727745181
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000607 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (∑ j ∈ Finset.range (n + 1), f2 j) (-1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A102108.P15469640010727745181

/-! ## A102108.P8128501458192898889

`∑[A099773(2*(n+1))]+1`
-/

namespace A102108.P8128501458192898889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099773 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A102108.P8128501458192898889

/-! ## A102108.P5101225299151197657

`root(A000607(n+2+n), 2)²`
-/

namespace A102108.P5101225299151197657
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A000607 (n + 2 + n) : ℝ) ^ (1 / (2 : ℝ))) ^ 2

end

end A102108.P5101225299151197657

/-! ## A102108.P12864998093555352473

`abs(1-A000607(Δ[n²]+1))+1`
-/

namespace A102108.P12864998093555352473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A000607 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 1).toNat| + 1

end

end A102108.P12864998093555352473

/-! ## A102108.P7722979830871210885

`A184198(2*n)+A184198(A005843(n+1))`
-/

namespace A102108.P7722979830871210885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184198 (2 * n) + A184198 (A005843 (n + 1)).toNat

end

end A102108.P7722979830871210885

/-! ## A102108.P8084935815068696094

`A034891(A005843(n+1))-A034891(2*n+1)`
-/

namespace A102108.P8084935815068696094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034891 (A005843 (n + 1)).toNat - A034891 (2 * n + 1)

end

end A102108.P8084935815068696094

/-! ## A102108.P8194201726331910743

`A184198(A014681(2*n+1))+A184198(2*n)`
-/

namespace A102108.P8194201726331910743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184198 (A014681 (2 * n + 1)).toNat + A184198 (2 * n)

end

end A102108.P8194201726331910743

/-! ## A102108.P14344968614930221861

`A382956((n+1)*(2*n+3))`
-/

namespace A102108.P14344968614930221861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382956 ((n + 1) * (2 * n + 3))

end

end A102108.P14344968614930221861

/-!
# A102109: Smallest prime a(n) such that concatenation of first n+1 primes starting from a(n), separated by n zeros, is prime.

The programs for A102109, there is no canonical definition to state claims against.
-/

/-! ## A102109.P4875387898185765241

`A146308(2*(n+2))+A124389(A005891(n))`
-/

namespace A102109.P4875387898185765241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146308 (2 * (n + 2)) + A124389 (A005891 n).toNat

end

end A102109.P4875387898185765241

/-!
# A102110: Iterations during which LQTL cellular automaton passes through the origin.

The programs for A102110, there is no canonical definition to state claims against.
-/

/-! ## A102110.P422619191245312598

`∑[A102127(n)]`
-/

namespace A102110.P422619191245312598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102127 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102110.P422619191245312598

/-! ## A102110.P12063498772786270061

`A102127(n)+a(A023443(n))` with `a(0)=4`
-/

namespace A102110.P12063498772786270061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  A102127 n + a (A023443 n).toNat

end

end A102110.P12063498772786270061

/-! ## A102110.P9041438604394953489

`A000027(A102127(n)+a(n-1))` with `a(0)=4`
-/

namespace A102110.P9041438604394953489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  A000027 (A102127 n + a (n - 1)).toNat

end

end A102110.P9041438604394953489

/-! ## A102110.P15647767348260719751

`A102127(n)+a(n-A057427(n))` with `a(0)=4`
-/

namespace A102110.P15647767348260719751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  A102127 n + a ((n : ℤ) - A057427 n).toNat

end

end A102110.P15647767348260719751

/-! ## A102110.P4789891702890379840

`A102127(n)+a(A233583(n+2)-2)` with `a(0)=4`
-/

namespace A102110.P4789891702890379840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  A102127 n + a (A233583 (n + 2) - 2).toNat

end

end A102110.P4789891702890379840

/-!
# A102111: Iccanobirt numbers (1 of 15): a(n) = a(n-1) + a(n-2) + R(a(n-3)), where R is the digit reversal function A004086.

The programs for A102111, there is no canonical definition to state claims against.
-/

/-! ## A102111.P17943503569253048437

`A004086(A102124(n*A278657(n)))`
-/

namespace A102111.P17943503569253048437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A102124 ((n : ℤ) * A278657 n).toNat).toNat

end

end A102111.P17943503569253048437

/-! ## A102111.P11074604067031282160

`A004086(A102124(n)^A278657(n))`
-/

namespace A102111.P11074604067031282160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (SequenceMachineLib.roundAway ((A102124 n : ℚ) ^ (A278657 n : ℤ))).toNat

end

end A102111.P11074604067031282160

/-! ## A102111.P11662956465539011673

`A321474(A102124(n)^A278657(n))`
-/

namespace A102111.P11662956465539011673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321474 (SequenceMachineLib.roundAway ((A102124 n : ℚ) ^ (A278657 n : ℤ))).toNat

end

end A102111.P11662956465539011673

/-! ## A102111.P11326958988205772313

`A004086(A102124(n)%A000112(n))`
-/

namespace A102111.P11326958988205772313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (Int.tmod (A102124 n) (A000112 n)).toNat

end

end A102111.P11326958988205772313

/-! ## A102111.P4203610723995119328

`A004086(A102124(n))%A102144(n+4)`
-/

namespace A102111.P4203610723995119328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004086 (A102124 n).toNat) (A102144 (n + 4))

end

end A102111.P4203610723995119328

/-!
# A102112: Iccanobirt numbers (2 of 15): a(n) = a(n-1) + R(a(n-2)) + a(n-3), where R is the digit reversal function A004086.

The programs for A102112, there is no canonical definition to state claims against.
-/

/-! ## A102112.P1787254800934983881

`A321474(A102123(A321474(n)))`
-/

namespace A102112.P1787254800934983881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321474 (A102123 (A321474 n).toNat).toNat

end

end A102112.P1787254800934983881

/-! ## A102112.P3914919543838655174

`A004086(A102123(n)^A174544(n))`
-/

namespace A102112.P3914919543838655174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (SequenceMachineLib.roundAway ((A102123 n : ℚ) ^ (A174544 n : ℤ))).toNat

end

end A102112.P3914919543838655174

/-! ## A102112.P13108432147649166202

`A004086(C(A102123(n), A174544(n)))`
-/

namespace A102112.P13108432147649166202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (Nat.choose (A102123 n).toNat (A174544 n).toNat)

end

end A102112.P13108432147649166202

/-! ## A102112.P18415013221159883780

`A004086(A102123(n)%A059676(n+1))`
-/

namespace A102112.P18415013221159883780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (Int.tmod (A102123 n) (A059676 (n + 1))).toNat

end

end A102112.P18415013221159883780

/-! ## A102112.P13877458682390253188

`A004086(A102123(n))%A102132(n+1)`
-/

namespace A102112.P13877458682390253188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004086 (A102123 n).toNat) (A102132 (n + 1))

end

end A102112.P13877458682390253188

/-!
# A102113: Iccanobirt numbers (3 of 15): a(n) = a(n-1) + R(a(n-2)) + R(a(n-3)), where R is the digit reversal function A004086.

The programs for A102113, there is no canonical definition to state claims against.
-/

/-! ## A102113.P8988337263741624732

`A321474(A102122(A321474(n)))`
-/

namespace A102113.P8988337263741624732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321474 (A102122 (A321474 n).toNat).toNat

end

end A102113.P8988337263741624732

/-! ## A102113.P17070294785715462265

`A004086(A102122(n)^A174544(n))`
-/

namespace A102113.P17070294785715462265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (SequenceMachineLib.roundAway ((A102122 n : ℚ) ^ (A174544 n : ℤ))).toNat

end

end A102113.P17070294785715462265

/-! ## A102113.P5064790000597057032

`A004086(A102122(n))%p?[A140252(n)]`
-/

namespace A102113.P5064790000597057032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140252 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004086 (A102122 n).toNat) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A102113.P5064790000597057032

/-! ## A102113.P12447571600367751390

`A004086(A174544(n)²²*A102122(n))`
-/

namespace A102113.P12447571600367751390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 ((A174544 n ^ 2) ^ 2 * A102122 n).toNat

end

end A102113.P12447571600367751390

/-!
# A102114: Iccanobirt numbers (4 of 15): a(n) = R(a(n-1)) + a(n-2) + a(n-3), where R is the digit reversal function A004086.

The programs for A102114, there is no canonical definition to state claims against.
-/

/-! ## A102114.P1765033699029530341

`A004086(a(n-1))+a(n-3)+a(n-2)` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A102114.P1765033699029530341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1] fun n a =>
  A004086 (a (n - 1)).toNat + (a (n - 3) + a (n - 2))

end

end A102114.P1765033699029530341

/-! ## A102114.P16647299784560675818

`A004086(A102121(n*A278657(n)))`
-/

namespace A102114.P16647299784560675818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A102121 ((n : ℤ) * A278657 n).toNat).toNat

end

end A102114.P16647299784560675818

/-! ## A102114.P6342989437355408329

`A004086(A102121(n)^A278657(n))`
-/

namespace A102114.P6342989437355408329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (SequenceMachineLib.roundAway ((A102121 n : ℚ) ^ (A278657 n : ℤ))).toNat

end

end A102114.P6342989437355408329

/-! ## A102114.P4040821582591210403

`A004086(A102121(n)%A000112(n))`
-/

namespace A102114.P4040821582591210403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (Int.tmod (A102121 n) (A000112 n)).toNat

end

end A102114.P4040821582591210403

/-! ## A102114.P17797737541941725972

`A004086(A102121(n))%A090574(n)`
-/

namespace A102114.P17797737541941725972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004086 (A102121 n).toNat) (A090574 n)

end

end A102114.P17797737541941725972

/-!
# A102115: Iccanobirt numbers (5 of 15): a(n) = R(a(n-1)) + a(n-2) + R(a(n-3)), where R is the digit reversal function A004086.

The programs for A102115, there is no canonical definition to state claims against.
-/

/-! ## A102115.P3316915725183175676

`A004086(A102120(n))`
-/

namespace A102115.P3316915725183175676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A102120 n).toNat

end

end A102115.P3316915725183175676

/-! ## A102115.P13440615786686779984

`A321474(A102120(n)%A102135(n+1))`
-/

namespace A102115.P13440615786686779984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321474 (Int.tmod (A102120 n) (A102135 (n + 1))).toNat

end

end A102115.P13440615786686779984

/-! ## A102115.P6289234295147185325

`A321474(A102120(n))%A102136(n+1)`
-/

namespace A102115.P6289234295147185325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A321474 (A102120 n).toNat) (A102136 (n + 1))

end

end A102115.P6289234295147185325

/-! ## A102115.P975989599618594245

`A004093(5*A102120(n))`
-/

namespace A102115.P975989599618594245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004093 (5 * A102120 n).toNat

end

end A102115.P975989599618594245

/-! ## A102115.P7930089320616557490

`A004093(lcm(5, A102120(n)))`
-/

namespace A102115.P7930089320616557490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004093 (Int.lcm 5 (A102120 n))

end

end A102115.P7930089320616557490

/-!
# A102116: Iccanobirt numbers (6 of 15): a(n) = R(a(n-1)) + R(a(n-2)) + a(n-3), where R is the digit reversal function A004086.

The programs for A102116, there is no canonical definition to state claims against.
-/

/-! ## A102116.P2137397854103386143

`A004086(A102119(n))`
-/

namespace A102116.P2137397854103386143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A102119 n).toNat

end

end A102116.P2137397854103386143

/-! ## A102116.P12246047108850025961

`A321474(A102119(n)*A278657(n))`
-/

namespace A102116.P12246047108850025961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321474 (A102119 n * A278657 n).toNat

end

end A102116.P12246047108850025961

/-! ## A102116.P6231728028782448375

`A321474(A102119(n)/A278657(n))`
-/

namespace A102116.P6231728028782448375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321474 (SequenceMachineLib.roundAway ((A102119 n : ℚ) / (A278657 n : ℚ))).toNat

end

end A102116.P6231728028782448375

/-! ## A102116.P143466208575951867

`A321474(A102119(n))%A000079(n)`
-/

namespace A102116.P143466208575951867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A321474 (A102119 n).toNat) (A000079 n)

end

end A102116.P143466208575951867

/-! ## A102116.P9764302569549061036

`A321474(A102119(n)%A000108(n))`
-/

namespace A102116.P9764302569549061036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321474 (Int.tmod (A102119 n) (A000108 n)).toNat

end

end A102116.P9764302569549061036

/-!
# A102117: Iccanobirt numbers (7 of 15): a(n) = R(a(n-1)) + R(a(n-2)) + R(a(n-3)), where R is the digit reversal function A004086.

The programs for A102117, there is no canonical definition to state claims against.
-/

/-! ## A102117.P7004975765614516695

`A321474(A102118(A321474(n)))`
-/

namespace A102117.P7004975765614516695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321474 (A102118 (A321474 n).toNat).toNat

end

end A102117.P7004975765614516695

/-! ## A102117.P15045168600116977776

`A004086(A102118(A061917(n+1)))`
-/

namespace A102117.P15045168600116977776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A102118 (A061917 (n + 1)).toNat).toNat

end

end A102117.P15045168600116977776

/-! ## A102117.P838692613455692666

`A004086(A102118(n)^A174544(n))`
-/

namespace A102117.P838692613455692666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (SequenceMachineLib.roundAway ((A102118 n : ℚ) ^ (A174544 n : ℤ))).toNat

end

end A102117.P838692613455692666

/-! ## A102117.P6182491456099745150

`A004086(C(A102118(n), A174544(n)))`
-/

namespace A102117.P6182491456099745150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (Nat.choose (A102118 n).toNat (A174544 n).toNat)

end

end A102117.P6182491456099745150

/-! ## A102117.P7294403087374304461

`A004086(A102118(n)^A061649(n)!)`
-/

namespace A102117.P7294403087374304461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A102118 n ^ Nat.factorial (A061649 n).toNat).toNat

end

end A102117.P7294403087374304461

/-!
# A102118: Iccanobirt numbers (8 of 15): a(n) = R(a(n-1) + a(n-2) + a(n-3)), where R is the digit reversal function A004086.

The programs for A102118, there is no canonical definition to state claims against.
-/

/-! ## A102118.P10344352475196751242

`A004086(a(n-1)+a(n-2)+a(n-3))` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A102118.P10344352475196751242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1] fun n a =>
  A004086 (a (n - 1) + (a (n - 2) + a (n - 3))).toNat

end

end A102118.P10344352475196751242

/-! ## A102118.P1500509632607631573

`A004086(A102117(n))`
-/

namespace A102118.P1500509632607631573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A102117 n).toNat

end

end A102118.P1500509632607631573

/-! ## A102118.P3401200580845890984

`A004093(5*A102117(n))`
-/

namespace A102118.P3401200580845890984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004093 (5 * A102117 n).toNat

end

end A102118.P3401200580845890984

/-! ## A102118.P1007566314553328022

`A321474(A102117(A321474(n)))`
-/

namespace A102118.P1007566314553328022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321474 (A102117 (A321474 n).toNat).toNat

end

end A102118.P1007566314553328022

/-!
# A102119: Iccanobirt numbers (9 of 15): a(n) = R(a(n-1) + a(n-2) + R(a(n-3))), where R is the digit reversal function A004086.

The programs for A102119, there is no canonical definition to state claims against.
-/

/-! ## A102119.P8248666199242635423

`A004086(A102116(n))`
-/

namespace A102119.P8248666199242635423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A102116 n).toNat

end

end A102119.P8248666199242635423

/-! ## A102119.P6875443804875703276

`A056964(A102116(n))-A102116(A028310(n))`
-/

namespace A102119.P6875443804875703276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056964 (A102116 n).toNat - A102116 (A028310 n).toNat

end

end A102119.P6875443804875703276

/-! ## A102119.P4623151756483071731

`A321474(A102116(n)%A000112(n))`
-/

namespace A102119.P4623151756483071731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321474 (Int.tmod (A102116 n) (A000112 n)).toNat

end

end A102119.P4623151756483071731

/-! ## A102119.P10290707227919415509

`A321474(A102116(n))%A000108(n)`
-/

namespace A102119.P10290707227919415509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A321474 (A102116 n).toNat) (A000108 n)

end

end A102119.P10290707227919415509

/-! ## A102119.P13564933201789233745

`A321474(A102116(n))/A007318(∑[n])`
-/

namespace A102119.P13564933201789233745
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A321474 (A102116 n).toNat : ℚ) / (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A102119.P13564933201789233745

/-!
# A102120: Iccanobirt numbers (10 of 15): a(n) = R(a(n-1) + R(a(n-2)) + a(n-3)), where R is the digit reversal function A004086.

The programs for A102120, there is no canonical definition to state claims against.
-/

/-! ## A102120.P12275140562295983180

`A004086(A102115(n))`
-/

namespace A102120.P12275140562295983180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A102115 n).toNat

end

end A102120.P12275140562295983180

/-! ## A102120.P4964970943347779917

`A004093(5*A102115(n))`
-/

namespace A102120.P4964970943347779917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004093 (5 * A102115 n).toNat

end

end A102120.P4964970943347779917

/-! ## A102120.P14629139000795511468

`A004093(lcm(5, A102115(n)))`
-/

namespace A102120.P14629139000795511468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004093 (Int.lcm 5 (A102115 n))

end

end A102120.P14629139000795511468

/-! ## A102120.P12092730687535813366

`A321474(A102115(n)%A102135(n+1))`
-/

namespace A102120.P12092730687535813366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321474 (Int.tmod (A102115 n) (A102135 (n + 1))).toNat

end

end A102120.P12092730687535813366

/-! ## A102120.P8107531500438703310

`A321474(A102115(A321474(n)))`
-/

namespace A102120.P8107531500438703310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321474 (A102115 (A321474 n).toNat).toNat

end

end A102120.P8107531500438703310

/-!
# A102121: Iccanobirt numbers (11 of 15): a(n) = R(a(n-1) + R(a(n-2)) + R(a(n-3))), where R is the digit reversal function A004086.

The programs for A102121, there is no canonical definition to state claims against.
-/

/-! ## A102121.P5508114749035817272

`A004086(A102114(n)%A181784(n))`
-/

namespace A102121.P5508114749035817272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (Int.tmod (A102114 n) (A181784 n)).toNat

end

end A102121.P5508114749035817272

/-! ## A102121.P17256656757498435140

`A004086(A102114(n)*A103159(n+1))`
-/

namespace A102121.P17256656757498435140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A102114 n * A103159 (n + 1)).toNat

end

end A102121.P17256656757498435140

/-! ## A102121.P4699369295750208557

`A004086(C(A102114(n), A103159(n+1)))`
-/

namespace A102121.P4699369295750208557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (Nat.choose (A102114 n).toNat (A103159 (n + 1)).toNat)

end

end A102121.P4699369295750208557

/-! ## A102121.P1360413318206025056

`A004086(A004086(A004086(A102114(n))))`
-/

namespace A102121.P1360413318206025056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A004086 (A004086 (A102114 n).toNat).toNat).toNat

end

end A102121.P1360413318206025056

/-! ## A102121.P13329976951835536297

`A102120(n)%A359912(A157176(n))`
-/

namespace A102121.P13329976951835536297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A102120 n) (A359912 (A157176 n).toNat)

end

end A102121.P13329976951835536297

/-!
# A102122: Iccanobirt numbers (12 of 15): a(n) = R(R(a(n-1)) + a(n-2) + a(n-3)), where R is the digit reversal function A004086.

The programs for A102122, there is no canonical definition to state claims against.
-/

/-! ## A102122.P1444997695093062531

`A004086(A102113(n)%A102133(n+1))`
-/

namespace A102122.P1444997695093062531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (Int.tmod (A102113 n) (A102133 (n + 1))).toNat

end

end A102122.P1444997695093062531

/-! ## A102122.P15097931734842455762

`A004086(A102113(n))%A102135(n+1)`
-/

namespace A102122.P15097931734842455762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004086 (A102113 n).toNat) (A102135 (n + 1))

end

end A102122.P15097931734842455762

/-! ## A102122.P15896905805864565313

`A321474(A102113(A321474(n)))`
-/

namespace A102122.P15896905805864565313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321474 (A102113 (A321474 n).toNat).toNat

end

end A102122.P15896905805864565313

/-! ## A102122.P17005169871542709359

`A004086(A102113(n*A174544(n)))`
-/

namespace A102122.P17005169871542709359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A102113 ((n : ℤ) * A174544 n).toNat).toNat

end

end A102122.P17005169871542709359

/-! ## A102122.P759973597434769433

`A004086(A102113(n)^A174544(n))`
-/

namespace A102122.P759973597434769433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (SequenceMachineLib.roundAway ((A102113 n : ℚ) ^ (A174544 n : ℤ))).toNat

end

end A102122.P759973597434769433

/-!
# A102123: Iccanobirt numbers (13 of 15): a(n) = R(R(a(n-1)) + a(n-2) + R(a(n-3))), where R is the digit reversal function A004086.

The programs for A102123, there is no canonical definition to state claims against.
-/

/-! ## A102123.P6496619983182699251

`A004086(A102112(n)%A102133(n+1))`
-/

namespace A102123.P6496619983182699251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (Int.tmod (A102112 n) (A102133 (n + 1))).toNat

end

end A102123.P6496619983182699251

/-! ## A102123.P622199271520574401

`A004086(A102112(n))%A102135(n+1)`
-/

namespace A102123.P622199271520574401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004086 (A102112 n).toNat) (A102135 (n + 1))

end

end A102123.P622199271520574401

/-! ## A102123.P9963570482338717640

`A321474(A102112(A321474(n)))`
-/

namespace A102123.P9963570482338717640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321474 (A102112 (A321474 n).toNat).toNat

end

end A102123.P9963570482338717640

/-! ## A102123.P5452132760007369350

`A004086(A102112(n*A174544(n)))`
-/

namespace A102123.P5452132760007369350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A102112 ((n : ℤ) * A174544 n).toNat).toNat

end

end A102123.P5452132760007369350

/-! ## A102123.P10666369542324833671

`A004086(A102112(n)^A174544(n))`
-/

namespace A102123.P10666369542324833671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (SequenceMachineLib.roundAway ((A102112 n : ℚ) ^ (A174544 n : ℤ))).toNat

end

end A102123.P10666369542324833671

/-!
# A102124: Iccanobirt numbers (14 of 15): a(n) = R(R(a(n-1)) + R(a(n-2)) + a(n-3)), where R is the digit reversal function A004086.

The programs for A102124, there is no canonical definition to state claims against.
-/

/-! ## A102124.P15910397841151861774

`A102111(n)-A056965(A102111(n))`
-/

namespace A102124.P15910397841151861774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102111 n - A056965 (A102111 n).toNat

end

end A102124.P15910397841151861774

/-! ## A102124.P6448289711550824231

`A004086(lcm(A102111(n), A168516(n)))`
-/

namespace A102124.P6448289711550824231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (Int.lcm (A102111 n) (A168516 n))

end

end A102124.P6448289711550824231

/-! ## A102124.P3093251619600942005

`A004086(A102111(n))%A102141(n+2)`
-/

namespace A102124.P3093251619600942005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004086 (A102111 n).toNat) (A102141 (n + 2))

end

end A102124.P3093251619600942005

/-! ## A102124.P10306636348717425533

`A004086(A102111(n)%A102145(n+5))`
-/

namespace A102124.P10306636348717425533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (Int.tmod (A102111 n) (A102145 (n + 5))).toNat

end

end A102124.P10306636348717425533

/-! ## A102124.P3367111303412656170

`A004086(A004086(A004086(A102111(n))))`
-/

namespace A102124.P3367111303412656170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A004086 (A004086 (A102111 n).toNat).toNat).toNat

end

end A102124.P3367111303412656170

/-!
# A102125: Iccanobirt numbers (15 of 15): a(n) = R(R(a(n-1)) + R(a(n-2)) + R(a(n-3))), where R is the digit reversal function A004086.

The programs for A102125, there is no canonical definition to state claims against.
-/

/-! ## A102125.P13808070655181684945

`A004086(∑[2*a(n-1)-a(n-4)])` with `a(0)=0, a(1)=0, a(2)=1, a(3)=0, a(4)=1`
-/

namespace A102125.P13808070655181684945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1, 0, 1] fun n f1 =>
  2 * f1 (n - 1) - f1 (n - 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A102125.P13808070655181684945

/-! ## A102125.P18160773744956877149

`A004086(A000073(n))`
-/

namespace A102125.P18160773744956877149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A000073 n).toNat

end

end A102125.P18160773744956877149

/-! ## A102125.P10435928691569266341

`A004086(sqrt(A085697(n)))`
-/

namespace A102125.P10435928691569266341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (SequenceMachineLib.roundAway (Real.sqrt (A085697 n : ℝ))).toNat

end

end A102125.P10435928691569266341

/-! ## A102125.P17112211267337958646

`A004086(Δ[A192804(n)])`
-/

namespace A102125.P17112211267337958646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (f1 (n + 1) - f1 n).toNat

end

end A102125.P17112211267337958646

/-! ## A102125.P9190445936920980058

`A004086(A354784(n)/2)`
-/

namespace A102125.P9190445936920980058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (SequenceMachineLib.roundAway ((A354784 n : ℚ) / 2)).toNat

end

end A102125.P9190445936920980058

/-!
# A102129: Expansion of (1 - x)*(1 + 2*x) / ((1 + x)*(1 - 4*x - x^2)).

The programs for A102129, the canonical program `A102129.P6674455893361486640` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A102129 has offset 0).

The definition of A102129 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+x-2x^2)/(1-3x-5x^2-x^3))` (program `A102129.P6674455893361486640`, by `A102129.P6674455893361486640.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A102129.P6674455893361486640

`ogf((1+x-2x^2)/(1-3x-5x^2-x^3))`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A102129

/-- `ogf((1+x-2x^2)/(1-3x-5x^2-x^3))` -/
def P6674455893361486640.Spec : Prop :=
  ∀ n, P6674455893361486640.a n = A102129 n

theorem P6674455893361486640.correct : P6674455893361486640.Spec := by
  intro n
  simp only [A102129]

end A102129

/-! ## A102129.P18009021536617405707

`Δ[A014445(n)-A110526(n)]`
-/

namespace A102129.P18009021536617405707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014445 n - A110526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A102129.P18009021536617405707

namespace A102129

/-- `Δ[A014445(n)-A110526(n)]` -/
def P18009021536617405707.Spec : Prop :=
  ∀ n, P18009021536617405707.a n = A102129 n

end A102129

/-! ## A102129.P5207466991010902462

`Δ[A014445(n)]-A110679(n)`
-/

namespace A102129.P5207466991010902462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014445 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A110679 n

end

end A102129.P5207466991010902462

namespace A102129

/-- `Δ[A014445(n)]-A110679(n)` -/
def P5207466991010902462.Spec : Prop :=
  ∀ n, P5207466991010902462.a n = A102129 n

end A102129

/-! ## A102129.P18413015622411613455

`A120775(n+1)-A014445(n)`
-/

namespace A102129.P18413015622411613455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120775 (n + 1) - A014445 n

end

end A102129.P18413015622411613455

namespace A102129

/-- `A120775(n+1)-A014445(n)` -/
def P18413015622411613455.Spec : Prop :=
  ∀ n, P18413015622411613455.a n = A102129 n

end A102129

/-! ## A102129.P3553861416490347209

`A001077(n)+2*A110526(n)`
-/

namespace A102129.P3553861416490347209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001077 n + 2 * A110526 n

end

end A102129.P3553861416490347209

namespace A102129

/-- `A001077(n)+2*A110526(n)` -/
def P3553861416490347209.Spec : Prop :=
  ∀ n, P3553861416490347209.a n = A102129 n

end A102129

/-! ## A102129.P5838981208139414342

`2*A033887(n)-A110679(n)`
-/

namespace A102129.P5838981208139414342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A033887 n - A110679 n

end

end A102129.P5838981208139414342

namespace A102129

/-- `2*A033887(n)-A110679(n)` -/
def P5838981208139414342.Spec : Prop :=
  ∀ n, P5838981208139414342.a n = A102129 n

end A102129

/-! ## A102129.P5544091437904739914

`A049651(n)+or(1, A001077(n))`
-/

namespace A102129.P5544091437904739914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049651 n + Int.lor 1 (A001077 n)

end

end A102129.P5544091437904739914

namespace A102129

/-- `A049651(n)+or(1, A001077(n))` -/
def P5544091437904739914.Spec : Prop :=
  ∀ n, P5544091437904739914.a n = A102129 n

end A102129

/-! ## A102129.P3142743629142984825

`A015448(n)+xor(1, A110679(n))`
-/

namespace A102129.P3142743629142984825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015448 n + Int.xor 1 (A110679 n)

end

end A102129.P3142743629142984825

namespace A102129

/-- `A015448(n)+xor(1, A110679(n))` -/
def P3142743629142984825.Spec : Prop :=
  ∀ n, P3142743629142984825.a n = A102129 n

end A102129

/-! ## A102129.P1553487626099535968

`A120775(n+1)-2*A001076(n)`
-/

namespace A102129.P1553487626099535968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120775 (n + 1) - 2 * A001076 n

end

end A102129.P1553487626099535968

namespace A102129

/-- `A120775(n+1)-2*A001076(n)` -/
def P1553487626099535968.Spec : Prop :=
  ∀ n, P1553487626099535968.a n = A102129 n

end A102129

/-! ## A102129.P12957512650522965069

`A013655(A008574(n)-(n+1))-a(n-1)` with `a(0)=1`
-/

namespace A102129.P12957512650522965069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A013655 (A008574 n - (n + 1 : ℤ)).toNat - a (n - 1)

end

end A102129.P12957512650522965069

namespace A102129

/-- `A013655(A008574(n)-(n+1))-a(n-1)` -/
def P12957512650522965069.Spec : Prop :=
  ∀ n, P12957512650522965069.a n = A102129 n

end A102129

/-! ## A102129.P7959811930816053359

`A293014(A016777(n))+A033887(n)`
-/

namespace A102129.P7959811930816053359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293014 (A016777 n).toNat + A033887 n

end

end A102129.P7959811930816053359

namespace A102129

/-- `A293014(A016777(n))+A033887(n)` -/
def P7959811930816053359.Spec : Prop :=
  ∀ n, P7959811930816053359.a n = A102129 n

end A102129

/-! ## A102129.P17804196493728817175

`A006355(A016789(n))-A110679(n)`
-/

namespace A102129.P17804196493728817175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006355 (A016789 n).toNat - A110679 n

end

end A102129.P17804196493728817175

namespace A102129

/-- `A006355(A016789(n))-A110679(n)` -/
def P17804196493728817175.Spec : Prop :=
  ∀ n, P17804196493728817175.a n = A102129 n

end A102129

/-! ## A102129.P3324760943325520670

`A097924(n)-(A110679(n)+A001076(n))`
-/

namespace A102129.P3324760943325520670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097924 n - (A110679 n + A001076 n)

end

end A102129.P3324760943325520670

namespace A102129

/-- `A097924(n)-(A110679(n)+A001076(n))` -/
def P3324760943325520670.Spec : Prop :=
  ∀ n, P3324760943325520670.a n = A102129 n

end A102129

/-! ## A102129.P5259961361332274228

`A001077(n)+A033887(n)-A294262(n)`
-/

namespace A102129.P5259961361332274228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001077 n + (A033887 n - A294262 n)

end

end A102129.P5259961361332274228

namespace A102129

/-- `A001077(n)+A033887(n)-A294262(n)` -/
def P5259961361332274228.Spec : Prop :=
  ∀ n, P5259961361332274228.a n = A102129 n

end A102129

/-! ## A102129.P12455366532755266235

`A015448(n+1)+A015448(n)-A110679(n)`
-/

namespace A102129.P12455366532755266235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015448 (n + 1) + (A015448 n - A110679 n)

end

end A102129.P12455366532755266235

namespace A102129

/-- `A015448(n+1)+A015448(n)-A110679(n)` -/
def P12455366532755266235.Spec : Prop :=
  ∀ n, P12455366532755266235.a n = A102129 n

end A102129

/-! ## A102129.P13053539106997728329

`A015448(n+1)+A120775(n+1)-A048876(n)`
-/

namespace A102129.P13053539106997728329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015448 (n + 1) + (A120775 (n + 1) - A048876 n)

end

end A102129.P13053539106997728329

namespace A102129

/-- `A015448(n+1)+A120775(n+1)-A048876(n)` -/
def P13053539106997728329.Spec : Prop :=
  ∀ n, P13053539106997728329.a n = A102129 n

end A102129

/-! ## A102129.P4087869155816799368

`Δ[A110526(n+1)-A001077(n)]`
-/

namespace A102129.P4087869155816799368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110526 (n + 1) - A001077 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A102129.P4087869155816799368

namespace A102129

/-- `Δ[A110526(n+1)-A001077(n)]` -/
def P4087869155816799368.Spec : Prop :=
  ∀ n, P4087869155816799368.a n = A102129 n

end A102129

/-! ## A102129.P1705767437086132848

`A110679(n+1)+A001077(n)-A001077(n+1)`
-/

namespace A102129.P1705767437086132848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110679 (n + 1) + (A001077 n - A001077 (n + 1))

end

end A102129.P1705767437086132848

namespace A102129

/-- `A110679(n+1)+A001077(n)-A001077(n+1)` -/
def P1705767437086132848.Spec : Prop :=
  ∀ n, P1705767437086132848.a n = A102129 n

end A102129

/-! ## A102129.P7365119930977608811

`A120775(n+1)+A097924(n)-A001077(n+1)`
-/

namespace A102129.P7365119930977608811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120775 (n + 1) + (A097924 n - A001077 (n + 1))

end

end A102129.P7365119930977608811

namespace A102129

/-- `A120775(n+1)+A097924(n)-A001077(n+1)` -/
def P7365119930977608811.Spec : Prop :=
  ∀ n, P7365119930977608811.a n = A102129 n

end A102129

/-!
# A102130: Primes of the form 8*n^2 + 4*n + 1.

The programs for A102130, there is no canonical definition to state claims against.
-/

/-! ## A102130.P3513480499324827104

`∩[A027862(n+1), A285887(n+1)]`
-/

namespace A102130.P3513480499324827104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027862 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285887 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A102130.P3513480499324827104

/-! ## A102130.P15540896825381516093

`∩[A027862(n+1), A102083(n)]`
-/

namespace A102130.P15540896825381516093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027862 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102083 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A102130.P15540896825381516093

/-! ## A102130.P12683986388708164645

`∩[A285887(n+1), A102083(n)]`
-/

namespace A102130.P12683986388708164645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285887 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102083 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A102130.P12683986388708164645

/-! ## A102130.P2849796939078112204

`∩[A230812(n+1), A285887(n+1)]`
-/

namespace A102130.P2849796939078112204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230812 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285887 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A102130.P2849796939078112204

/-! ## A102130.P8787655716472867614

`record[A089619(2*(n+1))]`
-/

namespace A102130.P8787655716472867614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089619 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A102130.P8787655716472867614

/-! ## A102130.P11173186770980399416

`record[A293958(2*(n+1))]`
-/

namespace A102130.P11173186770980399416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293958 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A102130.P11173186770980399416

/-! ## A102130.P5395852876078373998

`record[A125256(4*n+5)]`
-/

namespace A102130.P5395852876078373998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125256 (4 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A102130.P5395852876078373998

/-! ## A102130.P1467655135593602332

`∩[A027862(n+1), A255840(n)]`
-/

namespace A102130.P1467655135593602332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027862 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255840 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A102130.P1467655135593602332

/-! ## A102130.P11594148080484894619

`∩[A285887(n+1), A001844(n)]`
-/

namespace A102130.P11594148080484894619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285887 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001844 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A102130.P11594148080484894619

/-! ## A102130.P17200921720364105446

`∩[A027862(n+1), A354595(n)]`
-/

namespace A102130.P17200921720364105446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027862 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354595 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A102130.P17200921720364105446

/-! ## A102130.P17008603513475742779

`∩[A285887(n+1), A255840(n)]`
-/

namespace A102130.P17008603513475742779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285887 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255840 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A102130.P17008603513475742779

/-! ## A102130.P12918648500147685654

`∩[A285887(n+1), A354595(n)]`
-/

namespace A102130.P12918648500147685654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285887 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354595 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A102130.P12918648500147685654

/-! ## A102130.P95121996526633401

`∩[A027862(n+1), A343007(n+1)]`
-/

namespace A102130.P95121996526633401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027862 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343007 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A102130.P95121996526633401

/-! ## A102130.P10934394138021496136

`∩[A099776(n+1), A285887(n+1)]`
-/

namespace A102130.P10934394138021496136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099776 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285887 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A102130.P10934394138021496136

/-! ## A102130.P7562533294120615593

`∩[A285887(n+1), A343007(n+1)]`
-/

namespace A102130.P7562533294120615593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285887 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343007 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A102130.P7562533294120615593

/-! ## A102130.P5770160923432004792

`record[A125256(A016813(n+1))%A134160(n)]`
-/

namespace A102130.P5770160923432004792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A125256 (A016813 (n + 1)).toNat) (A134160 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A102130.P5770160923432004792

/-! ## A102130.P1497095356544804721

`∩[A114073(n+1), A285887(n+1)]`
-/

namespace A102130.P1497095356544804721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114073 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285887 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A102130.P1497095356544804721

/-! ## A102130.P8010107356618563415

`∩[A272267(n+1), A285887(n+1)]`
-/

namespace A102130.P8010107356618563415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272267 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285887 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A102130.P8010107356618563415

/-! ## A102130.P1640702518116748299

`record[A014442(4*n+5)]`
-/

namespace A102130.P1640702518116748299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014442 (4 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A102130.P1640702518116748299

/-! ## A102130.P15757380310658597321

`∩[A285887(n+1), A000982(n)]`
-/

namespace A102130.P15757380310658597321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285887 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000982 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A102130.P15757380310658597321

/-!
# A102131: Iccanobirt prime indices (1 of 15): Indices of prime numbers in A102111.

The programs for A102131, there is no canonical definition to state claims against.
-/

/-! ## A102131.P9106445067737457542

`A278055(A226964(n+1))+3`
-/

namespace A102131.P9106445067737457542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278055 (A226964 (n + 1)).toNat + 3

end

end A102131.P9106445067737457542

/-! ## A102131.P2738294189469699531

`A246955(A092186(n+1))+A000010(n+1)`
-/

namespace A102131.P2738294189469699531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246955 (A092186 (n + 1)).toNat + A000010 (n + 1)

end

end A102131.P2738294189469699531

/-!
# A102132: Iccanobirt prime indices (2 of 15): Indices of prime numbers in A102112.

The programs for A102132, there is no canonical definition to state claims against.
-/

/-! ## A102132.P891961685954918471

`A284565(A378499(n+1)+A001358(2*n+3))`
-/

namespace A102132.P891961685954918471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284565 (A378499 (n + 1) + A001358 (2 * n + 3)).toNat

end

end A102132.P891961685954918471

/-!
# A102139: Iccanobirt prime indices (9 of 15): Indices of prime numbers in A102119.

The programs for A102139, there is no canonical definition to state claims against.
-/

/-! ## A102139.P5388926184097093001

`A056239(A082697(n+1)*A235791(2*n+5))`
-/

namespace A102139.P5388926184097093001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A082697 (n + 1) * A235791 (2 * n + 5)).toNat

end

end A102139.P5388926184097093001

/-!
# A102141: Iccanobirt prime indices (11 of 15): Indices of prime numbers in A102121.

The programs for A102141, there is no canonical definition to state claims against.
-/

/-! ## A102141.P10294458829359519251

`A342194(A002113(2*(n+2)))+A259479(n)`
-/

namespace A102141.P10294458829359519251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342194 (A002113 (2 * (n + 2))).toNat + A259479 n

end

end A102141.P10294458829359519251

/-!
# A102146: a(n) = sigma(10^n - 1), where sigma(n) is the sum of positive divisors of n.

The programs for A102146, the canonical program `A102146.P13243206130599963837` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A102146 has offset 1).

The definition of A102146 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A102146.P13243206130599963837

`A000203(A002283(n+1))`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A102146

/-- `A000203(A002283(n+1))` -/
def P13243206130599963837.Spec : Prop :=
  ∀ n, P13243206130599963837.a n = A102146 (n + 1)

theorem P13243206130599963837.correct : P13243206130599963837.Spec := by
  intro n
  simp only [A102146, Nat.add_sub_cancel]

end A102146

/-! ## A102146.P13638574025468327957

`∑{d}[∑[9*10^n], #]`
-/

namespace A102146.P13638574025468327957
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * 10 ^ n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d

end

end A102146.P13638574025468327957

namespace A102146

/-- `∑{d}[∑[9*10^n], #]` -/
def P13638574025468327957.Spec : Prop :=
  ∀ n, (P13638574025468327957.a n : ℤ) = A102146 (n + 1)

end A102146

/-!
# A102147: Second Eulerian transform of 1, 2, 3, 4, 5, ... (A000027).

The programs for A102147, there is no canonical definition to state claims against.
-/

/-! ## A102147.P16263723444277072468

`ceil(∏[Δ[n²]]/3)`
-/

namespace A102147.P16263723444277072468
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 3⌉

end

end A102147.P16263723444277072468

/-! ## A102147.P3027183443597091658

`∏[Δ[n²]^floor(atan(n))]`
-/

namespace A102147.P3027183443597091658
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((f2 (n + 1) : ℤ) - (f2 n : ℤ) : ℚ) ^ (⌊Real.arctan (n : ℝ)⌋ : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A102147.P3027183443597091658

/-! ## A102147.P14970855597756174912

`∏[C(Δ[n²], 1-char[1])]`
-/

namespace A102147.P14970855597756174912
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat (1 - ((if ∃ j, f3 j = n then 1 else 0 : ℕ) : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A102147.P14970855597756174912

/-! ## A102147.P4846798008206886148

`∏[gcd(C(2, n²), Δ[n²])]`
-/

namespace A102147.P4846798008206886148
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.choose 2 (n ^ 2) : ℤ) ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A102147.P4846798008206886148

/-! ## A102147.P1740709486487449037

`∏[a(n-1)+2]` with `a(0)=1, a(1)=1, a(2)=5`
-/

namespace A102147.P1740709486487449037
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 5] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A102147.P1740709486487449037

/-! ## A102147.P1077196115878490412

`lcm(3, ∏[2*n+1])/3`
-/

namespace A102147.P1077196115878490412
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 3 (∏ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 3

end

end A102147.P1077196115878490412

/-! ## A102147.P14135321029250098462

`∏[n*2%(n+1)+1]`
-/

namespace A102147.P14135321029250098462
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (2 % (n + 1)) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A102147.P14135321029250098462

/-! ## A102147.P16137955269730154223

`a(n-1)*Δ[n²]` with `a(0)=1, a(1)=1`
-/

namespace A102147.P16137955269730154223
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A102147.P16137955269730154223

/-! ## A102147.P13637399838846385014

`∏[gcd(2*n+1, round(acot(n)))]`
-/

namespace A102147.P13637399838846385014
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * n + 1 : ℤ) (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A102147.P13637399838846385014

/-! ## A102147.P5967949137974287775

`(1+2*n)*a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A102147.P5967949137974287775
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  (1 + 2 * n) * a (n - 1)

end

end A102147.P5967949137974287775

/-!
# A102148: Numbers k such that 101*k + 11 is prime.

The programs for A102148, there is no canonical definition to state claims against.
-/

/-! ## A102148.P15323963301555302663

`eq[1, A001222(10*(10*n+1)+1+n)]`
-/

namespace A102148.P15323963301555302663
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (10 * (10 * n + 1) + 1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A102148.P15323963301555302663

/-! ## A102148.P13038173100815105572

`lt[A000005(A159551(n)+1), 3]`
-/

namespace A102148.P13038173100815105572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A159551 n + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A102148.P13038173100815105572

/-! ## A102148.P11298831738983276405

`eq[A000010(A159551(n)+1), A159551(n)]`
-/

namespace A102148.P11298831738983276405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A159551 n + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159551 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A102148.P11298831738983276405

/-! ## A102148.P12190105666065894057

`eq[1, A300251(A159551(n)+1)]`
-/

namespace A102148.P12190105666065894057
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300251 (A159551 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A102148.P12190105666065894057

/-! ## A102148.P10561717917768167404

`lt[A066446(A159551(n)+1), 2]`
-/

namespace A102148.P10561717917768167404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066446 (A159551 n + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A102148.P10561717917768167404

/-!
# A102150: a(0)=0; a(1)=2. Slowest increasing sequence where every digit "d" has a copy of itself in a(n+d).

The programs for A102150, there is no canonical definition to state claims against.
-/

/-! ## A102150.P7991147329778756509

`record[A329025(∑[A057036(n+1)])]`
-/

namespace A102150.P7991147329778756509
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057036 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329025 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A102150.P7991147329778756509

/-! ## A102150.P8008461349067596250

`A112623(A163876(n)*A174192(n))`
-/

namespace A102150.P8008461349067596250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112623 (A163876 n * A174192 n).toNat

end

end A102150.P8008461349067596250

/-!
# A102151: Iccanobirt primes (1 of 15): Prime numbers in A102111.

The programs for A102151, there is no canonical definition to state claims against.
-/

/-! ## A102151.P17657838419455869641

`A102111(A102131(n+1))`
-/

namespace A102151.P17657838419455869641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102111 (A102131 (n + 1)).toNat

end

end A102151.P17657838419455869641

/-!
# A102152: Iccanobirt primes (2 of 15): Prime numbers in A102112.

The programs for A102152, there is no canonical definition to state claims against.
-/

/-! ## A102152.P9642255129793164115

`A102112(A102132(n+1))`
-/

namespace A102152.P9642255129793164115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102112 (A102132 (n + 1)).toNat

end

end A102152.P9642255129793164115

/-!
# A102153: Iccanobirt primes (3 of 15): Prime numbers in A102113.

The programs for A102153, there is no canonical definition to state claims against.
-/

/-! ## A102153.P10285077611570868551

`A102113(A102133(n+1))`
-/

namespace A102153.P10285077611570868551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102113 (A102133 (n + 1)).toNat

end

end A102153.P10285077611570868551

/-!
# A102154: Iccanobirt primes (4 of 15): Prime numbers in A102114.

The programs for A102154, there is no canonical definition to state claims against.
-/

/-! ## A102154.P16158852226174805111

`A102114(A102134(n+1))`
-/

namespace A102154.P16158852226174805111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102114 (A102134 (n + 1)).toNat

end

end A102154.P16158852226174805111

/-!
# A102155: Iccanobirt primes (5 of 15): Prime numbers in A102115.

The programs for A102155, there is no canonical definition to state claims against.
-/

/-! ## A102155.P4540363887723343890

`A102115(A102135(n+1))`
-/

namespace A102155.P4540363887723343890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102115 (A102135 (n + 1)).toNat

end

end A102155.P4540363887723343890

/-!
# A102156: Iccanobirt primes (6 of 15): Prime numbers in A102116.

The programs for A102156, there is no canonical definition to state claims against.
-/

/-! ## A102156.P8587472416005315604

`A102116(A102136(n+1))`
-/

namespace A102156.P8587472416005315604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102116 (A102136 (n + 1)).toNat

end

end A102156.P8587472416005315604

/-!
# A102157: Iccanobirt primes (7 of 15): Prime numbers in A102117.

The programs for A102157, there is no canonical definition to state claims against.
-/

/-! ## A102157.P16047815660782691701

`A102117(A102137(n+1))`
-/

namespace A102157.P16047815660782691701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102117 (A102137 (n + 1)).toNat

end

end A102157.P16047815660782691701

/-!
# A102158: Iccanobirt primes (8 of 15): Prime numbers in A102118.

The programs for A102158, there is no canonical definition to state claims against.
-/

/-! ## A102158.P11198222722479608137

`A102118(A102138(n+1))`
-/

namespace A102158.P11198222722479608137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102118 (A102138 (n + 1)).toNat

end

end A102158.P11198222722479608137

/-!
# A102159: Iccanobirt primes (9 of 15): Prime numbers in A102119.

The programs for A102159, there is no canonical definition to state claims against.
-/

/-! ## A102159.P2705213676533545118

`A102119(A102139(n+1))`
-/

namespace A102159.P2705213676533545118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102119 (A102139 (n + 1)).toNat

end

end A102159.P2705213676533545118

/-!
# A102160: Iccanobirt primes (10 of 15): Prime numbers in A102120.

The programs for A102160, there is no canonical definition to state claims against.
-/

/-! ## A102160.P2845373842147910658

`A102120(A102140(n+1))`
-/

namespace A102160.P2845373842147910658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102120 (A102140 (n + 1)).toNat

end

end A102160.P2845373842147910658

/-!
# A102161: Iccanobirt primes (11 of 15): Prime numbers in A102121.

The programs for A102161, there is no canonical definition to state claims against.
-/

/-! ## A102161.P3647714881924072969

`A102121(A102141(n+1))`
-/

namespace A102161.P3647714881924072969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102121 (A102141 (n + 1)).toNat

end

end A102161.P3647714881924072969

/-!
# A102162: Iccanobirt primes (12 of 15): Prime numbers in A102122.

The programs for A102162, there is no canonical definition to state claims against.
-/

/-! ## A102162.P18380416585176719870

`A102122(A102142(n+1))`
-/

namespace A102162.P18380416585176719870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102122 (A102142 (n + 1)).toNat

end

end A102162.P18380416585176719870

/-!
# A102163: Iccanobirt primes (13 of 15): Prime numbers in A102123.

The programs for A102163, there is no canonical definition to state claims against.
-/

/-! ## A102163.P17453567833589504267

`A102123(A102143(n+1))`
-/

namespace A102163.P17453567833589504267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102123 (A102143 (n + 1)).toNat

end

end A102163.P17453567833589504267

/-!
# A102164: Iccanobirt primes (14 of 15): Prime numbers in A102124.

The programs for A102164, there is no canonical definition to state claims against.
-/

/-! ## A102164.P9399531158898380609

`A102124(A102144(n+1))`
-/

namespace A102164.P9399531158898380609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102124 (A102144 (n + 1)).toNat

end

end A102164.P9399531158898380609

/-!
# A102165: Iccanobirt primes (15 of 15): Prime numbers in A102125.

The programs for A102165, there is no canonical definition to state claims against.
-/

/-! ## A102165.P9875976498092549411

`A102125(A102145(n+1))`
-/

namespace A102165.P9875976498092549411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102125 (A102145 (n + 1)).toNat

end

end A102165.P9875976498092549411

/-!
# A102166: Numbers n such that 2*n^2 + 11*n + 101 is prime.

The programs for A102166, there is no canonical definition to state claims against.
-/

/-! ## A102166.P2546619270737729049

`lt[2^n, A327227(A326810(n+3))]`
-/

namespace A102166.P2546619270737729049
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327227 (A326810 (n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A102166.P2546619270737729049

/-! ## A102166.P2384963131758064969

`eq[A057079(n), A156070(A246104(n))]`
-/

namespace A102166.P2384963131758064969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057079 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156070 (A246104 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A102166.P2384963131758064969

/-! ## A102166.P13802568906783416861

`eq[A059126(n), A156070(A246104(n))]`
-/

namespace A102166.P13802568906783416861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059126 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156070 (A246104 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A102166.P13802568906783416861

/-! ## A102166.P12838996230601315987

`eq[A059146(n), A156070(A246104(n))]`
-/

namespace A102166.P12838996230601315987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059146 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156070 (A246104 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A102166.P12838996230601315987

/-! ## A102166.P17275534102952795935

`lt[A128403(n+1), A018804(A328580(n+3))]`
-/

namespace A102166.P17275534102952795935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128403 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018804 (A328580 (n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A102166.P17275534102952795935

/-!
# A102167: Lightest finite strictly increasing sequence of integers showing once and only once every pair of digits from [00] to [99]. The "weight" of such a sequence is the sum of all its a(n). Weight of this sequence is 2995.

The programs for A102167, there is no canonical definition to state claims against.
-/

/-! ## A102167.P1898513361176520581

`A102357(n+8)%A054692(A053644(n))`
-/

namespace A102167.P1898513361176520581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A102357 (n + 8)) (A054692 (A053644 n).toNat)

end

end A102167.P1898513361176520581

/-! ## A102167.P14106695095624331416

`A102357(n+8)%A054692(n)`
-/

namespace A102167.P14106695095624331416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A102357 (n + 8)) (A054692 n)

end

end A102167.P14106695095624331416

/-! ## A102167.P4739719055471820398

`∑[gcd(A193585(2*(n+1)), A193606(3*n+4))]`
-/

namespace A102167.P4739719055471820398
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A193585 (2 * (n + 1))) (A193606 (3 * n + 4))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102167.P4739719055471820398

/-! ## A102167.P8408153866830268441

`lt[A343347(n+4), A287203(A332380(n+2))]`
-/

namespace A102167.P8408153866830268441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343347 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287203 (A332380 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A102167.P8408153866830268441

/-!
# A102168: Smaller of twin primes of the form 6*p(j)*p(k)-1, 6*p(j)*p(k)+1 where p(i)=i-th prime.

The programs for A102168, there is no canonical definition to state claims against.
-/

/-! ## A102168.P5473438519685698704

`p?[A328399(A281926(n+1))-2]`
-/

namespace A102168.P5473438519685698704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328399 (A281926 (n + 1)).toNat - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A102168.P5473438519685698704

/-! ## A102168.P2127356506588037510

`p?[abs(A328399(A281926(ϕ²-(ϕ-n)))-2)]`
-/

namespace A102168.P2127356506588037510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A328399 (A281926 (SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 - (Real.goldenRatio - (n : ℝ)))).toNat).toNat - 2|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A102168.P2127356506588037510

/-! ## A102168.P17839380293499177737

`p?[A075861(p?[A014613(n+1)+1])]`
-/

namespace A102168.P17839380293499177737
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014613 (n + 1) + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075861 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A102168.P17839380293499177737

/-! ## A102168.P6854592502671362193

`p?[A184997(A016921(A001358(n+1)))]`
-/

namespace A102168.P6854592502671362193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184997 (A016921 (A001358 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A102168.P6854592502671362193

/-! ## A102168.P693134942893769687

`p?[A075861(A151800(A014613(n+1)))]`
-/

namespace A102168.P693134942893769687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075861 (A151800 (A014613 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A102168.P693134942893769687

/-!
# A102169: a(n) = the number of sequences of n integers such that each integer is in the range 0..4 and the sum of the integers is in the range 0..24.

The programs for A102169, there is no canonical definition to state claims against.
-/

/-! ## A102169.P12686961572851729428

`∑{d}[3*10^n, #*and(1, #)]+1`
-/

namespace A102169.P12686961572851729428
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * 10 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d * Nat.land 1 d + 1

end

end A102169.P12686961572851729428

/-! ## A102169.P1979549453135632346

`A096684(2^n)`
-/

namespace A102169.P1979549453135632346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096684 (2 ^ n)

end

end A102169.P1979549453135632346

/-!
# A102178: Iccanobirt semiprime indices (8 of 15): Indices of semiprime numbers in A102118.

The programs for A102178, there is no canonical definition to state claims against.
-/

/-! ## A102178.P17296981198830526765

`eq[A281244(n), A330473(A320320(n))]`
-/

namespace A102178.P17296981198830526765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281244 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330473 (A320320 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A102178.P17296981198830526765

/-! ## A102178.P15576687526692734941

`A249943(n+4)+A000120(A002851(n))`
-/

namespace A102178.P15576687526692734941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249943 (n + 4) + A000120 (A002851 n).toNat

end

end A102178.P15576687526692734941

/-! ## A102178.P8333092092625759667

`lt[A112798(2*(n+2)), A026600(A117279(n))]`
-/

namespace A102178.P8333092092625759667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112798 (2 * (n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026600 (A117279 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A102178.P8333092092625759667

/-!
# A102183: Iccanobirt semiprime indices (13 of 15): Indices of semiprime numbers in A102123.

The programs for A102183, there is no canonical definition to state claims against.
-/

/-! ## A102183.P11466185183420563222

`eq[A087104(A001223(2*n+5)), A171900(3*n+2)]`
-/

namespace A102183.P11466185183420563222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087104 (A001223 (2 * n + 5)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171900 (3 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A102183.P11466185183420563222

/-!
# A102186: The PDO(n) function (Partitions with Designated summands in which all parts are Odd): the sum of products of multiplicities of parts in all partitions of n into odd parts.

The programs for A102186, there is no canonical definition to state claims against.
-/

/-! ## A102186.P9811465064649021259

`A293461(2*n²)+n`
-/

namespace A102186.P9811465064649021259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293461 (2 * n ^ 2) + (n : ℤ)

end

end A102186.P9811465064649021259

/-! ## A102186.P14446644914125393507

`A293461(∑[4*n])`
-/

namespace A102186.P14446644914125393507
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293461 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A102186.P14446644914125393507

/-! ## A102186.P10380808543822094651

`or(char[1], A293461(A046092(n)))`
-/

namespace A102186.P10380808543822094651
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A293461 (A046092 n).toNat)

end

end A102186.P10380808543822094651

/-! ## A102186.P8097116287962450085

`or(char[1], A293461(A106232(n+1)))`
-/

namespace A102186.P8097116287962450085
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A293461 (A106232 (n + 1)).toNat)

end

end A102186.P8097116287962450085

/-! ## A102186.P9005082613557502223

`A293461(A046092(n))^abs(A057428(n))`
-/

namespace A102186.P9005082613557502223
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A293461 (A046092 n).toNat : ℚ) ^ (|A057428 n| : ℤ)

end

end A102186.P9005082613557502223

/-! ## A102186.P16048129838269419843

`A293461(A046092(n))%∑[A000032(n)]`
-/

namespace A102186.P16048129838269419843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A293461 (A046092 n).toNat) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A102186.P16048129838269419843

/-! ## A102186.P12879213065560256953

`A007318(C(2, n))*A293461(A046092(n))`
-/

namespace A102186.P12879213065560256953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A293461 (A046092 n).toNat

end

end A102186.P12879213065560256953

/-! ## A102186.P2432300469707880485

`A293461(A046092(n))^A000108(C(2, n))`
-/

namespace A102186.P2432300469707880485
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A293461 (A046092 n).toNat : ℚ) ^ (A000108 (Nat.choose 2 n) : ℤ)

end

end A102186.P2432300469707880485

/-! ## A102186.P6461586502174472661

`A293461(A046092(n))^A007318(C(2, n)²)`
-/

namespace A102186.P6461586502174472661
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A293461 (A046092 n).toNat : ℚ) ^ (A007318 (Nat.choose 2 n ^ 2) : ℤ)

end

end A102186.P6461586502174472661

/-! ## A102186.P8392229521498957736

`A293461(A046092(n))^A014963(∑[n+1])`
-/

namespace A102186.P8392229521498957736
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A293461 (A046092 n).toNat : ℚ) ^ (A014963 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A102186.P8392229521498957736

/-!
# A102187: Arithmetic means of divisors of arithmetic numbers (arithmetic numbers, A003601, are those for which the average of the divisors is an integer).

The programs for A102187, the canonical program `A102187.P15003554201520063795` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A102187 has offset 1).

The definition of A102187 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7688 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A102187.P12263003264488117383

`A000203(A003601(n+1))/A000005(A003601(n+1))`
-/

namespace A102187.P12263003264488117383
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (A003601 (n + 1)).toNat : ℚ) / (A000005 (A003601 (n + 1)).toNat : ℚ)

end

end A102187.P12263003264488117383

namespace A102187

/-- `A000203(A003601(n+1))/A000005(A003601(n+1))` -/
def P12263003264488117383.Spec : Prop :=
  ∀ n, P12263003264488117383.a n = (A102187 (n + 1) : ℚ)

end A102187

/-! ## A102187.P15003554201520063795

`A057020(A003601(n+1))`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A102187

/-- `A057020(A003601(n+1))` -/
def P15003554201520063795.Spec : Prop :=
  ∀ n, P15003554201520063795.a n = A102187 (n + 1)

theorem P15003554201520063795.correct : P15003554201520063795.Spec := by
  intro n
  simp only [A102187, Nat.add_sub_cancel]

end A102187

/-! ## A102187.P3544159743790609794

`A057022(eq[1, char[A003601(n+1)]])`
-/

namespace A102187.P3544159743790609794
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003601 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057022 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A102187.P3544159743790609794

namespace A102187

/-- `A057022(eq[1, char[A003601(n+1)]])` -/
def P3544159743790609794.Spec : Prop :=
  ∀ n, P3544159743790609794.a n = A102187 (n + 1)

end A102187

/-! ## A102187.P15816484276434070620

`A057020(eq[0, A054025(n+1)]+1)`
-/

namespace A102187.P15816484276434070620
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054025 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057020 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A102187.P15816484276434070620

namespace A102187

/-- `A057020(eq[0, A054025(n+1)]+1)` -/
def P15816484276434070620.Spec : Prop :=
  ∀ n, P15816484276434070620.a n = A102187 (n + 1)

end A102187

/-! ## A102187.P2026806998972985392

`A057022(eq[0, A054025(n+1)]+1)`
-/

namespace A102187.P2026806998972985392
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054025 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057022 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A102187.P2026806998972985392

namespace A102187

/-- `A057022(eq[0, A054025(n+1)]+1)` -/
def P2026806998972985392.Spec : Prop :=
  ∀ n, P2026806998972985392.a n = A102187 (n + 1)

end A102187

/-! ## A102187.P4583966605555690682

`A057022(A003601(2*n+1-n))`
-/

namespace A102187.P4583966605555690682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057022 (A003601 (2 * n + 1 - n)).toNat

end

end A102187.P4583966605555690682

namespace A102187

/-- `A057022(A003601(2*n+1-n))` -/
def P4583966605555690682.Spec : Prop :=
  ∀ n, P4583966605555690682.a n = A102187 (n + 1)

end A102187

/-! ## A102187.P3186993667386856969

`A057020(record[(n+1)*(2-A057021(n+1))])`
-/

namespace A102187.P3186993667386856969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (2 - A057021 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057020 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A102187.P3186993667386856969

namespace A102187

/-- `A057020(record[(n+1)*(2-A057021(n+1))])` -/
def P3186993667386856969.Spec : Prop :=
  ∀ n, P3186993667386856969.a n = A102187 (n + 1)

end A102187

/-!
# A102189: Array of multinomial coefficients (row reversed order of table A036039).

The programs for A102189, there is no canonical definition to state claims against.
-/

/-! ## A102189.P17175163782148234743

`A124795(A333485(n))`
-/

namespace A102189.P17175163782148234743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124795 (A333485 n).toNat

end

end A102189.P17175163782148234743

/-!
# A102190: Irregular triangle read by rows: coefficients of cycle index polynomial for the cyclic group C_n, Z(C_n,x), multiplied by n.

The programs for A102190, there is no canonical definition to state claims against.
-/

/-! ## A102190.P9809011043352215827

`A000010(A027750(n+1))`
-/

namespace A102190.P9809011043352215827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A027750 (n + 1)).toNat

end

end A102190.P9809011043352215827

/-! ## A102190.P2218350313881682763

`A000010(abs(A233773(n+1)))`
-/

namespace A102190.P2218350313881682763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 |A233773 (n + 1)|.toNat

end

end A102190.P2218350313881682763

/-! ## A102190.P1648945967079919178

`A000010(A263730(n+2)+1)`
-/

namespace A102190.P1648945967079919178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A263730 (n + 2) + 1).toNat

end

end A102190.P1648945967079919178

/-! ## A102190.P16687143880706803855

`A055034(lcm(2, A027750(n+1)))`
-/

namespace A102190.P16687143880706803855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055034 (Int.lcm 2 (A027750 (n + 1)))

end

end A102190.P16687143880706803855

/-! ## A102190.P17434326331341058526

`A000010(lcm(A020985(n), A233773(n+1)))`
-/

namespace A102190.P17434326331341058526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (Int.lcm (A020985 n) (A233773 (n + 1)))

end

end A102190.P17434326331341058526

/-! ## A102190.P16098272243434861635

`A000010(A061017(n+1)/A056538(n+1))`
-/

namespace A102190.P16098272243434861635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.roundAway ((A061017 (n + 1) : ℚ) / (A056538 (n + 1) : ℚ))).toNat

end

end A102190.P16098272243434861635

/-! ## A102190.P6597648923411020867

`A000010(A002260(A056534(n+1)))`
-/

namespace A102190.P6597648923411020867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A002260 (A056534 (n + 1)).toNat).toNat

end

end A102190.P6597648923411020867

/-! ## A102190.P3949583587089714967

`A054526(A056534(n+1))`
-/

namespace A102190.P3949583587089714967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054526 (A056534 (n + 1)).toNat

end

end A102190.P3949583587089714967

/-! ## A102190.P13963783703012451431

`A000010(A046641(A168017(n+1)))`
-/

namespace A102190.P13963783703012451431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A046641 (A168017 (n + 1)).toNat).toNat

end

end A102190.P13963783703012451431

/-!
# A102192: Iccanobirt semiprimes (2 of 15): Semiprime numbers in A102112.

The programs for A102192, there is no canonical definition to state claims against.
-/

/-! ## A102192.P12274830982057425414

`A102112(A102172(n+1))`
-/

namespace A102192.P12274830982057425414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102112 (A102172 (n + 1)).toNat

end

end A102192.P12274830982057425414

/-!
# A102193: Iccanobirt semiprimes (3 of 15): Semiprime numbers in A102113.

The programs for A102193, there is no canonical definition to state claims against.
-/

/-! ## A102193.P12709314305667956469

`A102113(A102173(n+1))`
-/

namespace A102193.P12709314305667956469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102113 (A102173 (n + 1)).toNat

end

end A102193.P12709314305667956469

/-!
# A102194: Iccanobirt semiprimes (4 of 15): Semiprime numbers in A102114.

The programs for A102194, there is no canonical definition to state claims against.
-/

/-! ## A102194.P11594609458437612800

`A102114(A102174(n+1))`
-/

namespace A102194.P11594609458437612800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102114 (A102174 (n + 1)).toNat

end

end A102194.P11594609458437612800

/-!
# A102195: Iccanobirt semiprimes (5 of 15): Semiprime numbers in A102115.

The programs for A102195, there is no canonical definition to state claims against.
-/

/-! ## A102195.P3440602874590427519

`A102115(A102175(n+1))`
-/

namespace A102195.P3440602874590427519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102115 (A102175 (n + 1)).toNat

end

end A102195.P3440602874590427519

/-!
# A102196: Iccanobirt semiprimes (6 of 15): Semiprime numbers in A102116.

The programs for A102196, there is no canonical definition to state claims against.
-/

/-! ## A102196.P17350121976269042105

`A102116(A102176(n+1))`
-/

namespace A102196.P17350121976269042105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102116 (A102176 (n + 1)).toNat

end

end A102196.P17350121976269042105

/-!
# A102197: Iccanobirt semiprimes (7 of 15): Semiprime numbers in A102117.

The programs for A102197, there is no canonical definition to state claims against.
-/

/-! ## A102197.P14029006249690319744

`A102117(A102177(n+1))`
-/

namespace A102197.P14029006249690319744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102117 (A102177 (n + 1)).toNat

end

end A102197.P14029006249690319744

/-!
# A102198: Iccanobirt semiprimes (8 of 15): Semiprime numbers in A102118.

The programs for A102198, there is no canonical definition to state claims against.
-/

/-! ## A102198.P10463227897763760764

`A102118(A102178(n+1))`
-/

namespace A102198.P10463227897763760764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102118 (A102178 (n + 1)).toNat

end

end A102198.P10463227897763760764

/-! ## A102198.P5804521175993286677

`filter[A102118(n+2), A064911(#)]`
-/

namespace A102198.P5804521175993286677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102118 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A102198.P5804521175993286677

/-!
# A102199: Iccanobirt semiprimes (9 of 15): Semiprime numbers in A102119.

The programs for A102199, there is no canonical definition to state claims against.
-/

/-! ## A102199.P8044959577846800137

`A102119(A102179(n+1))`
-/

namespace A102199.P8044959577846800137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102119 (A102179 (n + 1)).toNat

end

end A102199.P8044959577846800137

