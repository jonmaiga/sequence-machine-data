import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
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
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
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
# A109900: The (n,r)-th term of the following triangle is T(n)-T(r) for r = 0 to n. The n-th row contains n+1 terms. T(n) = the n-th triangular number = n(n+1)/2. Sequence contains the sum of terms at a 45-degree angle.

The programs for A109900, the canonical program `A109900.P16987226196042379863` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109900 has offset 0).

The definition of A109900 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A109900.P5022148571656484179

`(2*n^3+6*n²+5*n+1-(n+1)*(-1)^n)/16`
-/

namespace A109900.P5022148571656484179
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * n ^ 3 + 6 * n ^ 2 + 5 * n + 1 : ℤ) - (n + 1 : ℤ) * (-1) ^ n : ℚ) / 16

end

end A109900.P5022148571656484179

namespace A109900

/-- `(2*n^3+6*n²+5*n+1-(n+1)*(-1)^n)/16` -/
def P5022148571656484179.Spec : Prop :=
  ∀ n, P5022148571656484179.a n = (A109900 n : ℚ)

end A109900

/-! ## A109900.P16987226196042379863

`A034828(n+1)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A109900

/-- `A034828(n+1)` -/
def P16987226196042379863.Spec : Prop :=
  ∀ n, P16987226196042379863.a n = A109900 n

theorem P16987226196042379863.correct : P16987226196042379863.Spec := by
  intro n
  simp only [A109900]

end A109900

/-! ## A109900.P10262845787810815801

`∑[∑[gcd(n, ∑[n])]]`
-/

namespace A109900.P10262845787810815801
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd n (∑ j ∈ Finset.range (n + 1), f3 j)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109900.P10262845787810815801

namespace A109900

/-- `∑[∑[gcd(n, ∑[n])]]` -/
def P10262845787810815801.Spec : Prop :=
  ∀ n, (P10262845787810815801.a n : ℤ) = A109900 n

end A109900

/-! ## A109900.P18018000645659540673

`∑[∑[lcm(2, n)/2]]`
-/

namespace A109900.P18018000645659540673
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 n : ℚ) / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109900.P18018000645659540673

namespace A109900

/-- `∑[∑[lcm(2, n)/2]]` -/
def P18018000645659540673.Spec : Prop :=
  ∀ n, P18018000645659540673.a n = (A109900 n : ℚ)

end A109900

/-! ## A109900.P2053538463113604750

`∑[∑[n/(2-n%2)]]`
-/

namespace A109900.P2053538463113604750
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (2 - ((n % 2 : ℕ) : ℤ) : ℚ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109900.P2053538463113604750

namespace A109900

/-- `∑[∑[n/(2-n%2)]]` -/
def P2053538463113604750.Spec : Prop :=
  ∀ n, P2053538463113604750.a n = (A109900 n : ℚ)

end A109900

/-! ## A109900.P7446829805789515242

`∑[∑[n/(2-and(1, n))]]`
-/

namespace A109900.P7446829805789515242
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (2 - (Nat.land 1 n : ℤ) : ℚ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109900.P7446829805789515242

namespace A109900

/-- `∑[∑[n/(2-and(1, n))]]` -/
def P7446829805789515242.Spec : Prop :=
  ∀ n, P7446829805789515242.a n = (A109900 n : ℚ)

end A109900

/-! ## A109900.P18280689512804428302

`∑[∑[-(n/or(n, -2))]]`
-/

namespace A109900.P18280689512804428302
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  -((n : ℚ) / (Int.lor (n : ℤ) (-2) : ℚ))

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109900.P18280689512804428302

namespace A109900

/-- `∑[∑[-(n/or(n, -2))]]` -/
def P18280689512804428302.Spec : Prop :=
  ∀ n, P18280689512804428302.a n = (A109900 n : ℚ)

end A109900

/-! ## A109900.P15623710963198179138

`∑[∑[n/(and(1, n+1)+1)]]`
-/

namespace A109900.P15623710963198179138
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (Nat.land 1 (n + 1) + 1 : ℚ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109900.P15623710963198179138

namespace A109900

/-- `∑[∑[n/(and(1, n+1)+1)]]` -/
def P15623710963198179138.Spec : Prop :=
  ∀ n, P15623710963198179138.a n = (A109900 n : ℚ)

end A109900

/-! ## A109900.P15131865909881312910

`∪[(2*n+1)*∑[n], n^3]`
-/

namespace A109900.P15131865909881312910
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) * (∑ j ∈ Finset.range (n + 1), f2 j)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f3 j = x) n

end

end A109900.P15131865909881312910

namespace A109900

/-- `∪[(2*n+1)*∑[n], n^3]` -/
def P15131865909881312910.Spec : Prop :=
  ∀ n, (P15131865909881312910.a n : ℤ) = A109900 n

end A109900

/-! ## A109900.P16658946821563468458

`∑[∑[(∑[n]-n)/a(n-1)]]` with `a(0)=0, a(1)=1`
-/

namespace A109900.P16658946821563468458
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n f2 =>
  (((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ) - (n : ℤ) : ℚ) / f2 (n - 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109900.P16658946821563468458

namespace A109900

/-- `∑[∑[(∑[n]-n)/a(n-1)]]` -/
def P16658946821563468458.Spec : Prop :=
  ∀ n, P16658946821563468458.a n = (A109900 n : ℚ)

end A109900

/-! ## A109900.P15847291088164829843

`∑[∑[a(n-2)+3]-a(n-1)]` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A109900.P15847291088164829843
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2] fun n f2 =>
  f2 (n - 2) + 3

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2] fun n f1 =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109900.P15847291088164829843

namespace A109900

/-- `∑[∑[a(n-2)+3]-a(n-1)]` -/
def P15847291088164829843.Spec : Prop :=
  ∀ n, P15847291088164829843.a n = A109900 n

end A109900

/-! ## A109900.P6963344459274050672

`∑[A001318(n)]`
-/

namespace A109900.P6963344459274050672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109900.P6963344459274050672

namespace A109900

/-- `∑[A001318(n)]` -/
def P6963344459274050672.Spec : Prop :=
  ∀ n, P6963344459274050672.a n = A109900 n

end A109900

/-! ## A109900.P7916647131083446588

`∑[∑[A026741(n)]]`
-/

namespace A109900.P7916647131083446588
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109900.P7916647131083446588

namespace A109900

/-- `∑[∑[A026741(n)]]` -/
def P7916647131083446588.Spec : Prop :=
  ∀ n, P7916647131083446588.a n = A109900 n

end A109900

/-! ## A109900.P12696433736407899291

`∑[A319390(n)-1]`
-/

namespace A109900.P12696433736407899291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319390 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109900.P12696433736407899291

namespace A109900

/-- `∑[A319390(n)-1]` -/
def P12696433736407899291.Spec : Prop :=
  ∀ n, P12696433736407899291.a n = A109900 n

end A109900

/-! ## A109900.P1328900369275544606

`∑[A152749(n)/2]`
-/

namespace A109900.P1328900369275544606
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A152749 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109900.P1328900369275544606

namespace A109900

/-- `∑[A152749(n)/2]` -/
def P1328900369275544606.Spec : Prop :=
  ∀ n, P1328900369275544606.a n = (A109900 n : ℚ)

end A109900

/-! ## A109900.P933650347553099512

`A342397(n)-∑[∑[n]]`
-/

namespace A109900.P933650347553099512
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342397 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A109900.P933650347553099512

namespace A109900

/-- `A342397(n)-∑[∑[n]]` -/
def P933650347553099512.Spec : Prop :=
  ∀ n, P933650347553099512.a n = A109900 n

end A109900

/-! ## A109900.P15397950678736445117

`∑[A117748(n+1)/3]`
-/

namespace A109900.P15397950678736445117
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A117748 (n + 1) : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109900.P15397950678736445117

namespace A109900

/-- `∑[A117748(n+1)/3]` -/
def P15397950678736445117.Spec : Prop :=
  ∀ n, P15397950678736445117.a n = (A109900 n : ℚ)

end A109900

/-! ## A109900.P13222347617696790604

`∑[A062717(n+1)/4]`
-/

namespace A109900.P13222347617696790604
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062717 (n + 1) : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109900.P13222347617696790604

namespace A109900

/-- `∑[A062717(n+1)/4]` -/
def P13222347617696790604.Spec : Prop :=
  ∀ n, P13222347617696790604.a n = (A109900 n : ℚ)

end A109900

/-! ## A109900.P15661616170391431594

`A080838(n+1)+∑[n]`
-/

namespace A109900.P15661616170391431594
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080838 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A109900.P15661616170391431594

namespace A109900

/-- `A080838(n+1)+∑[n]` -/
def P15661616170391431594.Spec : Prop :=
  ∀ n, P15661616170391431594.a n = A109900 n

end A109900

/-! ## A109900.P12245609545114176210

`A019298(n)-a(n-1)` with `a(0)=0`
-/

namespace A109900.P12245609545114176210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A019298 n - a (n - 1)

end

end A109900.P12245609545114176210

namespace A109900

/-- `A019298(n)-a(n-1)` -/
def P12245609545114176210.Spec : Prop :=
  ∀ n, P12245609545114176210.a n = A109900 n

end A109900

/-!
# A109901: a(n) = binomial(n^2, n*(n+1)/2).

The programs for A109901, the canonical program `A109901.P2421363135128021145` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109901 has offset 0).

The definition of A109901 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(n², n*(n+1)/2)` (program `A109901.P2421363135128021145`, by `A109901.P2421363135128021145.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A109901.P2421363135128021145

`C(n², n*(n+1)/2)`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A109901

/-- `C(n², n*(n+1)/2)` -/
def P2421363135128021145.Spec : Prop :=
  ∀ n, (P2421363135128021145.a n : ℤ) = A109901 n

theorem P2421363135128021145.correct : P2421363135128021145.Spec := by
  intro n
  simp only [A109901]

end A109901

/-! ## A109901.P3069229637407136329

`A217285(A006527(n))`
-/

namespace A109901.P3069229637407136329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217285 (A006527 n).toNat

end

end A109901.P3069229637407136329

namespace A109901

/-- `A217285(A006527(n))` -/
def P3069229637407136329.Spec : Prop :=
  ∀ n, P3069229637407136329.a n = A109901 n

end A109901

/-! ## A109901.P4418719893107296696

`A217285(A033547(n))`
-/

namespace A109901.P4418719893107296696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217285 (A033547 n).toNat

end

end A109901.P4418719893107296696

namespace A109901

/-- `A217285(A033547(n))` -/
def P4418719893107296696.Spec : Prop :=
  ∀ n, P4418719893107296696.a n = A109901 n

end A109901

/-! ## A109901.P17115122437491481117

`A092392(A000217(A000217(n))+n)`
-/

namespace A109901.P17115122437491481117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092392 (A000217 (A000217 n).toNat + (n : ℤ)).toNat

end

end A109901.P17115122437491481117

namespace A109901

/-- `A092392(A000217(A000217(n))+n)` -/
def P17115122437491481117.Spec : Prop :=
  ∀ n, P17115122437491481117.a n = A109901 n

end A109901

/-! ## A109901.P17803587249401662290

`A046899(A000096(A000217(n))-n)`
-/

namespace A109901.P17803587249401662290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046899 (A000096 (A000217 n).toNat - (n : ℤ)).toNat

end

end A109901.P17803587249401662290

namespace A109901

/-- `A046899(A000096(A000217(n))-n)` -/
def P17803587249401662290.Spec : Prop :=
  ∀ n, P17803587249401662290.a n = A109901 n

end A109901

/-!
# A109902: Happy primes of the form a*10^k + b with single-digit a and b, a > 0, k > 0.

The programs for A109902, there is no canonical definition to state claims against.
-/

/-! ## A109902.P1809521949818342275

`A035497(A272814(n+2))`
-/

namespace A109902.P1809521949818342275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035497 (A272814 (n + 2)).toNat

end

end A109902.P1809521949818342275

/-! ## A109902.P15793248275356993486

`p?[round(log2(n+1)/3)*A007770(n+1)]`
-/

namespace A109902.P15793248275356993486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.logb 2 (n + 1 : ℝ) / 3) * A007770 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A109902.P15793248275356993486

/-! ## A109902.P15047854896728014008

`A035497(A101821(∑[n]))`
-/

namespace A109902.P15047854896728014008
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035497 (A101821 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A109902.P15047854896728014008

/-! ## A109902.P17897343269628675767

`A035497(A032555(n+2))`
-/

namespace A109902.P17897343269628675767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035497 (A032555 (n + 2)).toNat

end

end A109902.P17897343269628675767

/-!
# A109904: a(1) = 5. a(n+1) is the greatest prime of the form k*(a(n)-k) + 1. The least prime occurs for k = 1 and a(n+1) = a(n) in that case if no other value of k gives a prime then the sequence terminates.

The programs for A109904, there is no canonical definition to state claims against.
-/

/-! ## A109904.P1713119546239235444

`p?[ceil((a(n-1)/2)²)]` with `a(0)=5`
-/

namespace A109904.P1713119546239235444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [5] fun n f1 =>
  ⌈((f1 (n - 1) : ℚ) / 2) ^ 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A109904.P1713119546239235444

/-!
# A109906: A triangle based on A000045 and Pascal's triangle: T(n,m) = Fibonacci(n-m+1) * Fibonacci(m+1) * binomial(n,m).

The programs for A109906, the canonical program `A109906.P4657258182257809109` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109906 has offset 0).

The definition of A109906 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A109906.P4657258182257809109

`A007318(n)*A058071(n)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A109906

/-- `A007318(n)*A058071(n)` -/
def P4657258182257809109.Spec : Prop :=
  ∀ n, P4657258182257809109.a n = A109906 n

theorem P4657258182257809109.correct : P4657258182257809109.Spec := by
  intro n
  simp only [A109906]

end A109906

/-! ## A109906.P5114575661396332663

`abs(A058071(n)*A130595(n))`
-/

namespace A109906.P5114575661396332663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A058071 n * A130595 n|

end

end A109906.P5114575661396332663

namespace A109906

/-- `abs(A058071(n)*A130595(n))` -/
def P5114575661396332663.Spec : Prop :=
  ∀ n, P5114575661396332663.a n = A109906 n

end A109906

/-! ## A109906.P1863131393817278386

`A094436(n)*A104762(n+1)`
-/

namespace A109906.P1863131393817278386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094436 n * A104762 (n + 1)

end

end A109906.P1863131393817278386

namespace A109906

/-- `A094436(n)*A104762(n+1)` -/
def P1863131393817278386.Spec : Prop :=
  ∀ n, P1863131393817278386.a n = A109906 n

end A109906

/-! ## A109906.P18158465742530114400

`A094441(n)*A104763(n+1)`
-/

namespace A109906.P18158465742530114400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094441 n * A104763 (n + 1)

end

end A109906.P18158465742530114400

namespace A109906

/-- `A094441(n)*A104763(n+1)` -/
def P18158465742530114400.Spec : Prop :=
  ∀ n, P18158465742530114400.a n = A109906 n

end A109906

/-! ## A109906.P17125435906552741471

`A007318(n)*A098356(lt[0, A098356(n)])`
-/

namespace A109906.P17125435906552741471
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098356 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A098356 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A109906.P17125435906552741471

namespace A109906

/-- `A007318(n)*A098356(lt[0, A098356(n)])` -/
def P17125435906552741471.Spec : Prop :=
  ∀ n, P17125435906552741471.a n = A109906 n

end A109906

/-! ## A109906.P11201851936807000830

`(A108035(n+1)-A039913(n))*A007318(n)`
-/

namespace A109906.P11201851936807000830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A108035 (n + 1) - A039913 n) * A007318 n

end

end A109906.P11201851936807000830

namespace A109906

/-- `(A108035(n+1)-A039913(n))*A007318(n)` -/
def P11201851936807000830.Spec : Prop :=
  ∀ n, P11201851936807000830.a n = A109906 n

end A109906

/-! ## A109906.P9374521372383768158

`A058071(n)/A003991(n+1)*A141611(n)`
-/

namespace A109906.P9374521372383768158
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058071 n : ℚ) / (A003991 (n + 1) : ℚ) * (A141611 n : ℚ)

end

end A109906.P9374521372383768158

namespace A109906

/-- `A058071(n)/A003991(n+1)*A141611(n)` -/
def P9374521372383768158.Spec : Prop :=
  ∀ n, P9374521372383768158.a n = (A109906 n : ℚ)

end A109906

/-! ## A109906.P13889101552790931581

`A104762(n+1)*A104763(n+1)*A007318(n)`
-/

namespace A109906.P13889101552790931581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104762 (n + 1) * A104763 (n + 1) * A007318 n

end

end A109906.P13889101552790931581

namespace A109906

/-- `A104762(n+1)*A104763(n+1)*A007318(n)` -/
def P13889101552790931581.Spec : Prop :=
  ∀ n, P13889101552790931581.a n = A109906 n

end A109906

/-! ## A109906.P11939789922411810328

`A032742(A124927(n))*A058071(n)`
-/

namespace A109906.P11939789922411810328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A124927 n).toNat * A058071 n

end

end A109906.P11939789922411810328

namespace A109906

/-- `A032742(A124927(n))*A058071(n)` -/
def P11939789922411810328.Spec : Prop :=
  ∀ n, P11939789922411810328.a n = A109906 n

end A109906

/-! ## A109906.P13455819552940131948

`A110361(n+1)/A110102(n+1)*A007318(n)`
-/

namespace A109906.P13455819552940131948
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110361 (n + 1) : ℚ) / (A110102 (n + 1) : ℚ) * (A007318 n : ℚ)

end

end A109906.P13455819552940131948

namespace A109906

/-- `A110361(n+1)/A110102(n+1)*A007318(n)` -/
def P13455819552940131948.Spec : Prop :=
  ∀ n, P13455819552940131948.a n = (A109906 n : ℚ)

end A109906

/-!
# A109907: Beginning with 7, a(n+1) = greatest prime of the form k*{a(n)-k}-1. If no prime is obtained the sequence ends at that point.

The programs for A109907, there is no canonical definition to state claims against.
-/

/-! ## A109907.P17979630649094985146

`A109908(a(n-1))` with `a(0)=7`
-/

namespace A109907.P17979630649094985146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7] fun n a =>
  A109908 (a (n - 1)).toNat

end

end A109907.P17979630649094985146

/-!
# A109909: a(n) = number of primes of the form k*(n-k)-1.

The programs for A109909, there is no canonical definition to state claims against.
-/

/-! ## A109909.P6283718779843680222

`A106028(A330889(2*(n+1))+A325535(n+1))`
-/

namespace A109909.P6283718779843680222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106028 (A330889 (2 * (n + 1)) + A325535 (n + 1)).toNat

end

end A109909.P6283718779843680222

/-! ## A109909.P14189450155527349557

`A001221(A079007(n)-A250264(n))`
-/

namespace A109909.P14189450155527349557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A079007 n - A250264 n).toNat

end

end A109909.P14189450155527349557

/-! ## A109909.P10090777514979789388

`A063962(A003242(n)*A167905(n+1))`
-/

namespace A109909.P10090777514979789388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063962 (A003242 n * A167905 (n + 1)).toNat

end

end A109909.P10090777514979789388

/-! ## A109909.P609429811541697550

`A252736(xor(2, A125176(n+1)))`
-/

namespace A109909.P609429811541697550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252736 (Int.xor 2 (A125176 (n + 1))).toNat

end

end A109909.P609429811541697550

/-!
# A109910: a(n) = 9's complement of digit reversal of n.

The programs for A109910, there is no canonical definition to state claims against.
-/

/-! ## A109910.P6550154874625618166

`A061601(A004086(n))`
-/

namespace A109910.P6550154874625618166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061601 (A004086 n).toNat

end

end A109910.P6550154874625618166

/-! ## A109910.P11260119708585319758

`A061601(n-A056965(n))`
-/

namespace A109910.P11260119708585319758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061601 ((n : ℤ) - A056965 n).toNat

end

end A109910.P11260119708585319758

/-! ## A109910.P9119271100404122656

`A061601(A056964(n)-n)`
-/

namespace A109910.P9119271100404122656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061601 (A056964 n - (n : ℤ)).toNat

end

end A109910.P9119271100404122656

/-! ## A109910.P17411719235006201989

`A061601(xor(n, A256756(n)))`
-/

namespace A109910.P17411719235006201989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061601 (Int.xor (n : ℤ) (A256756 n)).toNat

end

end A109910.P17411719235006201989

/-! ## A109910.P14853665375014713941

`A061601(A340479(n)-A007953(n))`
-/

namespace A109910.P14853665375014713941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061601 (A340479 n - A007953 n).toNat

end

end A109910.P14853665375014713941

/-! ## A109910.P8974229404189506662

`A061601(A061205(n)/A028310(n))`
-/

namespace A109910.P8974229404189506662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061601 (SequenceMachineLib.roundAway ((A061205 n : ℚ) / (A028310 n : ℚ))).toNat

end

end A109910.P8974229404189506662

/-! ## A109910.P4316205412290060073

`A061601(A061601(n)+n-A267193(n))`
-/

namespace A109910.P4316205412290060073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061601 (A061601 n + ((n : ℤ) - A267193 n)).toNat

end

end A109910.P4316205412290060073

/-! ## A109910.P10381604078505160444

`A061601(A256754(n)+A256755(n)-n)`
-/

namespace A109910.P10381604078505160444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061601 (A256754 n + (A256755 n - (n : ℤ))).toNat

end

end A109910.P10381604078505160444

/-! ## A109910.P15452006094379616905

`A061601(n-(A267193(n)-A061601(n)))`
-/

namespace A109910.P15452006094379616905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061601 ((n : ℤ) - (A267193 n - A061601 n)).toNat

end

end A109910.P15452006094379616905

/-! ## A109910.P13292312899179677798

`A061601(A256754(n)-(n-A256755(n)))`
-/

namespace A109910.P13292312899179677798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061601 (A256754 n - ((n : ℤ) - A256755 n)).toNat

end

end A109910.P13292312899179677798

/-!
# A109911: Numbers n such that A109910(n) = n; that is, the 9's complement of the digit reversal of n is n.

The programs for A109911, there is no canonical definition to state claims against.
-/

/-! ## A109911.P7933402463790837919

`∩[A135739(n+1), A284811(n+1)]`
-/

namespace A109911.P7933402463790837919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135739 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284811 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109911.P7933402463790837919

/-! ## A109911.P16237086574997746294

`∩[A135739(n+1), A296130(n+1)]`
-/

namespace A109911.P16237086574997746294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135739 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296130 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109911.P16237086574997746294

/-! ## A109911.P9134042439142861055

`∩[A135739(n+1), A144777(n+1)]`
-/

namespace A109911.P9134042439142861055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135739 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144777 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109911.P9134042439142861055

/-! ## A109911.P15483661157323010408

`eq[n, A109910(n)]`
-/

namespace A109911.P15483661157323010408
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109910 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A109911.P15483661157323010408

/-! ## A109911.P16462788306759486419

`eq[n, A061601(A004086(n))]`
-/

namespace A109911.P16462788306759486419
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061601 (A004086 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A109911.P16462788306759486419

/-! ## A109911.P3467707043111625243

`record[A004151(A284811(n+1))]`
-/

namespace A109911.P3467707043111625243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004151 (A284811 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A109911.P3467707043111625243

/-! ## A109911.P12895932869145308863

`filter[A284811(n+1), A168184(#)]`
-/

namespace A109911.P12895932869145308863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284811 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168184 (f1 j).toNat = 1) n)

end

end A109911.P12895932869145308863

/-! ## A109911.P5646726505366435165

`eq[n, A061601(n-A056965(n))]`
-/

namespace A109911.P5646726505366435165
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061601 ((n : ℤ) - A056965 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A109911.P5646726505366435165

/-! ## A109911.P10869009726568471902

`eq[n, A061601(A056964(n)-n)]`
-/

namespace A109911.P10869009726568471902
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061601 (A056964 n - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A109911.P10869009726568471902

/-! ## A109911.P15377554991833789058

`eq[A056964(n), A056964(A061601(n))]`
-/

namespace A109911.P15377554991833789058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056964 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056964 (A061601 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A109911.P15377554991833789058

/-!
# A109912: Beginning with 1, least multiple of a(n) not divisible by 5 such that no digit is common between a(n) and a(n+1).

The programs for A109912, there is no canonical definition to state claims against.
-/

/-! ## A109912.P6101620600812200062

`a(n-1)*A109913(n)` with `a(0)=1`
-/

namespace A109912.P6101620600812200062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A109913 n

end

end A109912.P6101620600812200062

/-! ## A109912.P13410222091891771332

`∏[A109913(n+1)]/A109913(n+1)`
-/

namespace A109912.P13410222091891771332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109913 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A109913 (n + 1) : ℚ)

end

end A109912.P13410222091891771332

/-! ## A109912.P9072332645796630186

`∏[A143909(A147339(n+1))]/2`
-/

namespace A109912.P9072332645796630186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143909 (A147339 (n + 1)).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A109912.P9072332645796630186

/-! ## A109912.P2985494769874454608

`∏[A212989(A212997(n)²)]`
-/

namespace A109912.P2985494769874454608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212989 (A212997 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A109912.P2985494769874454608

/-! ## A109912.P6241451239180399727

`∏[A265554(A280263(n)!)]`
-/

namespace A109912.P6241451239180399727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265554 (Nat.factorial (A280263 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A109912.P6241451239180399727

/-!
# A109913: A109912(n+1)/A109912(n).

The programs for A109913, there is no canonical definition to state claims against.
-/

/-! ## A109913.P13318461760544508069

`A109912(n+1)/A109912(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A109913.P13318461760544508069
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109912 (n + 1) : ℚ) / (A109912 n : ℚ)

end

end A109913.P13318461760544508069

/-! ## A109913.P2852013537172079716

`ratio[A109912(n)]`
-/

namespace A109913.P2852013537172079716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109912 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A109913.P2852013537172079716

/-! ## A109913.P17810855344698700091

`A004736(A289606(n)+A034887(n))`
-/

namespace A109913.P17810855344698700091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A289606 n + A034887 n).toNat

end

end A109913.P17810855344698700091

/-! ## A109913.P1020837763900489560

`A141760(∏[2-char[∑[n]]])+1`
-/

namespace A109913.P1020837763900489560
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141760 (∏ j ∈ Finset.range (n + 1), f1 j).toNat + 1

end

end A109913.P1020837763900489560

/-! ## A109913.P8384214917198151157

`A307590(A095325(n+1))`
-/

namespace A109913.P8384214917198151157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307590 (A095325 (n + 1)).toNat

end

end A109913.P8384214917198151157

/-!
# A109915: Product of all composite numbers k such that n

The programs for A109915, there is no canonical definition to state claims against.
-/

/-! ## A109915.P7729155391716597762

`A049614(A151800(n+1))/A049614(n+1)`
-/

namespace A109915.P7729155391716597762
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049614 (A151800 (n + 1)).toNat : ℚ) / (A049614 (n + 1) : ℚ)

end

end A109915.P7729155391716597762

/-! ## A109915.P11325802359006019450

`A092043(A007918(n+2))/record[A047922(n)]`
-/

namespace A109915.P11325802359006019450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047922 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A092043 (A007918 (n + 2)).toNat : ℚ) / (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)

end

end A109915.P11325802359006019450

/-! ## A109915.P4049036318229758378

`A092043(A007918(n+2))/A000142(n+1)`
-/

namespace A109915.P4049036318229758378
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A092043 (A007918 (n + 2)).toNat : ℚ) / (A000142 (n + 1) : ℚ)

end

end A109915.P4049036318229758378

/-! ## A109915.P3185853782279937789

`A136156(A151800(n+1))/A000142(n+1)`
-/

namespace A109915.P3185853782279937789
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A136156 (A151800 (n + 1)).toNat : ℚ) / (A000142 (n + 1) : ℚ)

end

end A109915.P3185853782279937789

/-!
# A109919: a(1) = 1, then product of consecutive composite numbers sandwiched between primes.

The programs for A109919, there is no canonical definition to state claims against.
-/

/-! ## A109919.P1600914119111603838

`A008621(A001222(A109920(n+1)))*A109920(n+1)`
-/

namespace A109919.P1600914119111603838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A001222 (A109920 (n + 1)).toNat).toNat * A109920 (n + 1)

end

end A109919.P1600914119111603838

/-! ## A109919.P6558640740609312161

`A109920(n+1)*A163100(A349980(n))`
-/

namespace A109919.P6558640740609312161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109920 (n + 1) * A163100 (A349980 n).toNat

end

end A109919.P6558640740609312161

/-! ## A109919.P12933516339573347056

`A030408(A262723(n+1))*A109920(n+1)`
-/

namespace A109919.P12933516339573347056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030408 (A262723 (n + 1)).toNat * A109920 (n + 1)

end

end A109919.P12933516339573347056

/-! ## A109919.P1261048086874008191

`A106495(A029913(n+2))*A109920(n+1)`
-/

namespace A109919.P1261048086874008191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106495 (A029913 (n + 2)).toNat * A109920 (n + 1)

end

end A109919.P1261048086874008191

/-! ## A109919.P3095345374179629076

`A083888(A000110(n))*A109920(n+1)`
-/

namespace A109919.P3095345374179629076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083888 (A000110 n).toNat * A109920 (n + 1)

end

end A109919.P3095345374179629076

/-!
# A109920: a(1) = 1, then LCM of consecutive composite numbers sandwiched between primes.

The programs for A109920, there is no canonical definition to state claims against.
-/

/-! ## A109920.P1238022142039181548

`A109919(n+1)/A053150(A109919(n+1))`
-/

namespace A109920.P1238022142039181548
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109919 (n + 1) : ℚ) / (A053150 (A109919 (n + 1)).toNat : ℚ)

end

end A109920.P1238022142039181548

/-! ## A109920.P5382616980686301012

`A109919(n+1)/A163100(A349980(n))`
-/

namespace A109920.P5382616980686301012
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109919 (n + 1) : ℚ) / (A163100 (A349980 n).toNat : ℚ)

end

end A109920.P5382616980686301012

/-! ## A109920.P13931798068155369044

`A109919(n+1)/A030408(A262723(n+1))`
-/

namespace A109920.P13931798068155369044
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109919 (n + 1) : ℚ) / (A030408 (A262723 (n + 1)).toNat : ℚ)

end

end A109920.P13931798068155369044

/-! ## A109920.P12633246995060889732

`A109919(n+1)/A246140(A246145(n+1))`
-/

namespace A109920.P12633246995060889732
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109919 (n + 1) : ℚ) / (A246140 (A246145 (n + 1)).toNat : ℚ)

end

end A109920.P12633246995060889732

/-! ## A109920.P13832205292160776827

`A109919(n+1)/A106495(A029913(n+2))`
-/

namespace A109920.P13832205292160776827
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109919 (n + 1) : ℚ) / (A106495 (A029913 (n + 2)).toNat : ℚ)

end

end A109920.P13832205292160776827

/-!
# A109922: a(n) = floor(lcm(1,2,...n)/(1+2+...+n)).

The programs for A109922, there is no canonical definition to state claims against.
-/

/-! ## A109922.P5591408200957796899

`floor(A120108(∑[n])/∑[n+1])`
-/

namespace A109922.P5591408200957796899
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A120108 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ)⌋

end

end A109922.P5591408200957796899

/-! ## A109922.P4497077459192947676

`floor(Δ[A173185(n)]/∑[n+1])`
-/

namespace A109922.P4497077459192947676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173185 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (n + 1) - f1 n : ℚ) / ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ)⌋

end

end A109922.P4497077459192947676

/-! ## A109922.P15413227479683872628

`floor(Δ[A236856(n)]/∑[n+1])`
-/

namespace A109922.P15413227479683872628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236856 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (n + 1) - f1 n : ℚ) / ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ)⌋

end

end A109922.P15413227479683872628

/-! ## A109922.P702185021100263239

`floor(A003418(n+1)/∑[n+1])`
-/

namespace A109922.P702185021100263239
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A003418 (n + 1) : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)⌋

end

end A109922.P702185021100263239

/-! ## A109922.P12383883293509353518

`floor(∏[A014963(n+1)]/∑[n+1])`
-/

namespace A109922.P12383883293509353518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ)⌋

end

end A109922.P12383883293509353518

/-!
# A109923: a(n) = lcm(1,2,3,...,prime(n))/(1 + 2 + ... + prime(n)).

The programs for A109923, the canonical program `A109923.P355927586159164800` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109923 has offset 2).

The definition of A109923 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006254, A099795, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A109923.P355927586159164800

`A099795(n+2)/A006254(n+1)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A109923

/-- `A099795(n+2)/A006254(n+1)` -/
def P355927586159164800.Spec : Prop :=
  ∀ n, P355927586159164800.a n = (A109923 (n + 2) : ℚ)

end A109923

/-! ## A109923.P2492566009565989322

`A056604(n+2)/A034953(n+2)`
-/

namespace A109923.P2492566009565989322
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056604 (n + 2) : ℚ) / (A034953 (n + 2) : ℚ)

end

end A109923.P2492566009565989322

namespace A109923

/-- `A056604(n+2)/A034953(n+2)` -/
def P2492566009565989322.Spec : Prop :=
  ∀ n, P2492566009565989322.a n = (A109923 (n + 2) : ℚ)

end A109923

/-! ## A109923.P8752466274540542342

`A081538(p?[2*n+1])`
-/

namespace A109923.P8752466274540542342
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081538 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A109923.P8752466274540542342

namespace A109923

/-- `A081538(p?[2*n+1])` -/
def P8752466274540542342.Spec : Prop :=
  ∀ n, P8752466274540542342.a n = A109923 (n + 2)

end A109923

/-! ## A109923.P3887324558472766672

`A081538(A045344(n+1))`
-/

namespace A109923.P3887324558472766672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081538 (A045344 (n + 1)).toNat

end

end A109923.P3887324558472766672

namespace A109923

/-- `A081538(A045344(n+1))` -/
def P3887324558472766672.Spec : Prop :=
  ∀ n, P3887324558472766672.a n = A109923 (n + 2)

end A109923

/-! ## A109923.P1641246608642628159

`A081538(A065091(n+1))`
-/

namespace A109923.P1641246608642628159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081538 (A065091 (n + 1)).toNat

end

end A109923.P1641246608642628159

namespace A109923

/-- `A081538(A065091(n+1))` -/
def P1641246608642628159.Spec : Prop :=
  ∀ n, P1641246608642628159.a n = A109923 (n + 2)

end A109923

/-! ## A109923.P13541910656447731028

`A081538(A140475(n+1))`
-/

namespace A109923.P13541910656447731028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081538 (A140475 (n + 1)).toNat

end

end A109923.P13541910656447731028

namespace A109923

/-- `A081538(A140475(n+1))` -/
def P13541910656447731028.Spec : Prop :=
  ∀ n, P13541910656447731028.a n = A109923 (n + 2)

end A109923

/-! ## A109923.P13914142726469767772

`A081538(A175212(n+1))`
-/

namespace A109923.P13914142726469767772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081538 (A175212 (n + 1)).toNat

end

end A109923.P13914142726469767772

namespace A109923

/-- `A081538(A175212(n+1))` -/
def P13914142726469767772.Spec : Prop :=
  ∀ n, P13914142726469767772.a n = A109923 (n + 2)

end A109923

/-! ## A109923.P10225071285910824880

`record[A003418(A302043(2*n+1))/(n+1)]`
-/

namespace A109923.P10225071285910824880
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003418 (A302043 (2 * n + 1)).toNat : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A109923.P10225071285910824880

namespace A109923

/-- `record[A003418(A302043(2*n+1))/(n+1)]` -/
def P10225071285910824880.Spec : Prop :=
  ∀ n, P10225071285910824880.a n = (A109923 (n + 2) : ℚ)

end A109923

/-! ## A109923.P10295264282381548590

`record[A002944(A014963(n+1))/A008619(n)]`
-/

namespace A109923.P10295264282381548590
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002944 (A014963 (n + 1)).toNat : ℚ) / (A008619 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A109923.P10295264282381548590

namespace A109923

/-- `record[A002944(A014963(n+1))/A008619(n)]` -/
def P10295264282381548590.Spec : Prop :=
  ∀ n, P10295264282381548590.a n = (A109923 (n + 2) : ℚ)

end A109923

/-! ## A109923.P5470244850771136747

`record[A002944(A057859(n+1))/A008619(n)]`
-/

namespace A109923.P5470244850771136747
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002944 (A057859 (n + 1)).toNat : ℚ) / (A008619 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A109923.P5470244850771136747

namespace A109923

/-- `record[A002944(A057859(n+1))/A008619(n)]` -/
def P5470244850771136747.Spec : Prop :=
  ∀ n, P5470244850771136747.a n = (A109923 (n + 2) : ℚ)

end A109923

/-!
# A109925: Number of primes of the form n - 2^k.

The programs for A109925, there is no canonical definition to state claims against.
-/

/-! ## A109925.P6803330666977114495

`A397307(n+1)+char[A000040(n+1)]`
-/

namespace A109925.P6803330666977114495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397307 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A109925.P6803330666977114495

/-! ## A109925.P16126626912204902701

`(A133568(n+1)%(2^∑[n%2]))%4`
-/

namespace A109925.P16126626912204902701
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A133568 (n + 1)) (2 ^ (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)) 4

end

end A109925.P16126626912204902701

/-! ## A109925.P13611298230769510533

`A089080(A102098(n))-1`
-/

namespace A109925.P13611298230769510533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089080 (A102098 n).toNat - 1

end

end A109925.P13611298230769510533

/-! ## A109925.P8211341899296769809

`val(A029677(A140812(n)), 4)`
-/

namespace A109925.P8211341899296769809
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A029677 (A140812 n).toNat).toNat 4

end

end A109925.P8211341899296769809

/-! ## A109925.P3172660049067432031

`A158379(A175840(n))%(2^n)`
-/

namespace A109925.P3172660049067432031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158379 (A175840 n).toNat) (2 ^ n : ℤ)

end

end A109925.P3172660049067432031

/-!
# A109927: First primes p connected to two primes either by 2p+1 or 2p-1 upward [downward (p-1)/2 or (p+1)/2].

The programs for A109927, there is no canonical definition to state claims against.
-/

/-! ## A109927.P13492391342570463601

`∪[A059455(n+1), A109835(n+1)]`
-/

namespace A109927.P13492391342570463601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059455 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109835 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A109927.P13492391342570463601

/-! ## A109927.P11898527984560380185

`∪[floor(A066179(n+1)/2), A109835(n+1)]`
-/

namespace A109927.P11898527984560380185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A066179 (n + 1) : ℚ) / 2⌋

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109835 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A109927.P11898527984560380185

/-! ## A109927.P17423242895563237660

`∪[2*A007700(n+1)+1, A109835(n+1)]`
-/

namespace A109927.P17423242895563237660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007700 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109835 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A109927.P17423242895563237660

/-! ## A109927.P4319206621058205982

`∪[2*A057326(n+1)-1, A059455(n+1)]`
-/

namespace A109927.P4319206621058205982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A057326 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059455 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A109927.P4319206621058205982

/-! ## A109927.P6742902161557890951

`∪[2*A057326(n+1)-1, floor(A066179(n+1)/2)]`
-/

namespace A109927.P6742902161557890951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A057326 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A066179 (n + 1) : ℚ) / 2⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A109927.P6742902161557890951

/-!
# A109930: Least palindromic multiple of concatenation 1,2,3,...n-1,n,n-1,...3,2,1.

The programs for A109930, there is no canonical definition to state claims against.
-/

/-! ## A109930.P15370563780990299356

`A002477(n+1)*A174837(A001710(n))`
-/

namespace A109930.P15370563780990299356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002477 (n + 1) * A174837 (A001710 n).toNat

end

end A109930.P15370563780990299356

/-!
# A109932: a(n) = f^n(n) = f applied n times to n, where f(n) = A007425(n).

The programs for A109932, there is no canonical definition to state claims against.
-/

/-! ## A109932.P7756376853057007359

`A307000(A038036(n+1)%A341548(n+3))`
-/

namespace A109932.P7756376853057007359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307000 (Int.tmod (A038036 (n + 1)) (A341548 (n + 3))).toNat

end

end A109932.P7756376853057007359

/-!
# A109933: Divisors of 10^13 - 1.

The programs for A109933, there is no canonical definition to state claims against.
-/

/-! ## A109933.P1950030073438884031

`∪[A018477(n+1), A018604(n+1)]`
-/

namespace A109933.P1950030073438884031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018477 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018604 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A109933.P1950030073438884031

/-! ## A109933.P5867796589001319988

`∪[A018604(n+1), A018477(A077168(n))]`
-/

namespace A109933.P5867796589001319988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018604 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018477 (A077168 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A109933.P5867796589001319988

/-! ## A109933.P12800512096953629497

`∪[A018477(n+2), A018474(2*n+1)]`
-/

namespace A109933.P12800512096953629497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018477 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018474 (2 * n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A109933.P12800512096953629497

/-!
# A109934: Composite numbers which are not the sum of two distinct primes.

The programs for A109934, there is no canonical definition to state claims against.
-/

/-! ## A109934.P7896793697971937554

`filter[A166081(n+1), A066247(#)]`
-/

namespace A109934.P7896793697971937554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166081 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A109934.P7896793697971937554

/-! ## A109934.P2407687234675165929

`filter[A166081(n+2), A005171(#)]`
-/

namespace A109934.P2407687234675165929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166081 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A109934.P2407687234675165929

/-! ## A109934.P12649661459318548725

`∩[A002808(n+1), A166081(n+1)]`
-/

namespace A109934.P12649661459318548725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166081 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109934.P12649661459318548725

/-! ## A109934.P13502440330299705684

`∩[A166081(n+1), A171845(n+1)]`
-/

namespace A109934.P13502440330299705684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166081 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171845 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109934.P13502440330299705684

/-! ## A109934.P7946861704310714300

`eq[A002126(n), A010051(n+1)]`
-/

namespace A109934.P7946861704310714300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002126 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A109934.P7946861704310714300

/-! ## A109934.P2570728959876637665

`eq[A002126(n), A122257(n+1)]`
-/

namespace A109934.P2570728959876637665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002126 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122257 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A109934.P2570728959876637665

/-! ## A109934.P1639095088125802049

`eq[A002126(n), A129950(n+1)]`
-/

namespace A109934.P1639095088125802049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002126 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129950 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A109934.P1639095088125802049

/-! ## A109934.P7754716828720637518

`eq[A002126(n), A283991(n+1)]`
-/

namespace A109934.P7754716828720637518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002126 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283991 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A109934.P7754716828720637518

/-! ## A109934.P13763415853398306619

`eq[A002126(n), A296066(n+1)]`
-/

namespace A109934.P13763415853398306619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002126 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296066 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A109934.P13763415853398306619

/-! ## A109934.P2658553042181283324

`eq[A002126(n), A332219(n+1)]`
-/

namespace A109934.P2658553042181283324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002126 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332219 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A109934.P2658553042181283324

/-! ## A109934.P15050805606004597673

`eq[A002126(n), A353498(n+1)]`
-/

namespace A109934.P15050805606004597673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002126 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353498 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A109934.P15050805606004597673

/-! ## A109934.P6278045514264795957

`eq[A002126(n), A353499(n+1)]`
-/

namespace A109934.P6278045514264795957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002126 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353499 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A109934.P6278045514264795957

/-! ## A109934.P14549897004163242445

`eq[A002126(n), A373338(n+1)]`
-/

namespace A109934.P14549897004163242445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002126 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373338 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A109934.P14549897004163242445

/-! ## A109934.P7556580735073908059

`eq[A002126(n), A391240(n+1)]`
-/

namespace A109934.P7556580735073908059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002126 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391240 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A109934.P7556580735073908059

/-! ## A109934.P3764428572611401130

`eq[2*A002126(n), A029833(n+1)]`
-/

namespace A109934.P3764428572611401130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002126 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029833 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A109934.P3764428572611401130

/-! ## A109934.P3888025994573348025

`eq[A002126(n), A302777(3*n+1)]`
-/

namespace A109934.P3888025994573348025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002126 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302777 (3 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A109934.P3888025994573348025

/-! ## A109934.P3571720864010900992

`eq[A002126(n), A055672(2*A007920(n))]`
-/

namespace A109934.P3571720864010900992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002126 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055672 (2 * A007920 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A109934.P3571720864010900992

/-! ## A109934.P9343625016512621573

`eq[A159075(A001222(n+1))², A002126(n)]`
-/

namespace A109934.P9343625016512621573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159075 (A001222 (n + 1)).toNat ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002126 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A109934.P9343625016512621573

/-! ## A109934.P13699904600876487777

`eq[A002126(n), A029833(A029833(n+1)+1)]`
-/

namespace A109934.P13699904600876487777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002126 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029833 (A029833 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A109934.P13699904600876487777

/-! ## A109934.P13908964305530164175

`eq[A002126(n), A046094(n+1)]`
-/

namespace A109934.P13908964305530164175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002126 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046094 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A109934.P13908964305530164175

/-!
# A109935: Least common multiple of the digit reversals of the first n natural numbers.

The programs for A109935, there is no canonical definition to state claims against.
-/

/-! ## A109935.P7632401717760419589

`lcm(a(n-1), A188649(n+1))` with `a(0)=1`
-/

namespace A109935.P7632401717760419589
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.lcm (a (n - 1) : ℤ) (A188649 (n + 1))

end

end A109935.P7632401717760419589

/-! ## A109935.P16544496639194762877

`lcm(-a(n-1), A004086(n+1))` with `a(0)=1`
-/

namespace A109935.P16544496639194762877
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.lcm (-(a (n - 1) : ℤ)) (A004086 (n + 1))

end

end A109935.P16544496639194762877

/-! ## A109935.P7645273701791930895

`lcm(a(n-1), ratio[A062919(n)])` with `a(0)=1`
-/

namespace A109935.P7645273701791930895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062919 n

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.lcm (a (n - 1) : ℤ) (SequenceMachineLib.roundAway ((f1 (n + 1) : ℚ) / (f1 n : ℚ)))

end

end A109935.P7645273701791930895

/-!
# A109937: Number of consecutive composite numbers in successive consecutive number sets in A109936; (smallest (n+1)-digit prime) - (largest n-digit prime) - 1.

The programs for A109937, there is no canonical definition to state claims against.
-/

/-! ## A109937.P18417042130132517135

`A038804(n+1)-1`
-/

namespace A109937.P18417042130132517135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038804 (n + 1) - 1

end

end A109937.P18417042130132517135

/-! ## A109937.P1533296136663129653

`abs(1-A038804(Δ[n²]-n))`
-/

namespace A109937.P1533296136663129653
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A038804 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat|

end

end A109937.P1533296136663129653

/-! ## A109937.P878413048712109765

`A014681(A038804(n+1))`
-/

namespace A109937.P878413048712109765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A038804 (n + 1)).toNat

end

end A109937.P878413048712109765

/-! ## A109937.P3361190411330660204

`A023444(A038804(n+1)+1)`
-/

namespace A109937.P3361190411330660204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A038804 (n + 1) + 1).toNat

end

end A109937.P3361190411330660204

/-! ## A109937.P17304984013802325102

`A097062(A038804(n+1)+1)`
-/

namespace A109937.P17304984013802325102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097062 (A038804 (n + 1) + 1).toNat

end

end A109937.P17304984013802325102

/-! ## A109937.P9903598462643622322

`A267458(A038804(n+1)+1)`
-/

namespace A109937.P9903598462643622322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267458 (A038804 (n + 1) + 1).toNat

end

end A109937.P9903598462643622322

/-! ## A109937.P18369667969977415448

`A289207(A038804(n+1)+1)`
-/

namespace A109937.P18369667969977415448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A038804 (n + 1) + 1).toNat

end

end A109937.P18369667969977415448

/-! ## A109937.P17520688675091952541

`A004273(A038804(n+1)/2)`
-/

namespace A109937.P17520688675091952541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (SequenceMachineLib.roundAway ((A038804 (n + 1) : ℚ) / 2)).toNat

end

end A109937.P17520688675091952541

/-! ## A109937.P1953980680658626191

`A006083(3*A038804(n+1))`
-/

namespace A109937.P1953980680658626191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006083 (3 * A038804 (n + 1)).toNat

end

end A109937.P1953980680658626191

/-! ## A109937.P10920235958014198281

`A023443(lcm(2, A038804(n+1)))`
-/

namespace A109937.P10920235958014198281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (Int.lcm 2 (A038804 (n + 1)))

end

end A109937.P10920235958014198281

/-! ## A109937.P17630853771308114138

`A272006(n+2)+A033874(n+1)`
-/

namespace A109937.P17630853771308114138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272006 (n + 2) + A033874 (n + 1)

end

end A109937.P17630853771308114138

/-! ## A109937.P16801270503898384432

`A001478(n+1)+A038804(n+1)+n`
-/

namespace A109937.P16801270503898384432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001478 (n + 1) + (A038804 (n + 1) + (n : ℤ))

end

end A109937.P16801270503898384432

/-! ## A109937.P11521116262841399510

`xor(-A038804(n+1), A008683(A007918(n)))`
-/

namespace A109937.P11521116262841399510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-A038804 (n + 1)) (A008683 (A007918 n).toNat)

end

end A109937.P11521116262841399510

/-! ## A109937.P5638460282564546453

`A064179(A000040(n+1))+A038804(n+1)`
-/

namespace A109937.P5638460282564546453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064179 (A000040 (n + 1)).toNat + A038804 (n + 1)

end

end A109937.P5638460282564546453

/-! ## A109937.P2341453962753119117

`A064179(A005384(n+1))+A038804(n+1)`
-/

namespace A109937.P2341453962753119117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064179 (A005384 (n + 1)).toNat + A038804 (n + 1)

end

end A109937.P2341453962753119117

/-! ## A109937.P3782118697443077047

`A064179(A007528(n+1))+A038804(n+1)`
-/

namespace A109937.P3782118697443077047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064179 (A007528 (n + 1)).toNat + A038804 (n + 1)

end

end A109937.P3782118697443077047

/-! ## A109937.P14511071196106333774

`A064179(A023205(n+1))+A038804(n+1)`
-/

namespace A109937.P14511071196106333774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064179 (A023205 (n + 1)).toNat + A038804 (n + 1)

end

end A109937.P14511071196106333774

/-! ## A109937.P15107773631719147018

`A064179(A043297(n+1))+A038804(n+1)`
-/

namespace A109937.P15107773631719147018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064179 (A043297 (n + 1)).toNat + A038804 (n + 1)

end

end A109937.P15107773631719147018

/-! ## A109937.P11934593745041163399

`A064179(A078763(n+1))+A038804(n+1)`
-/

namespace A109937.P11934593745041163399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064179 (A078763 (n + 1)).toNat + A038804 (n + 1)

end

end A109937.P11934593745041163399

/-! ## A109937.P3778872604622412417

`xor(-A038804(n+1), A008683(A001097(n+1)))`
-/

namespace A109937.P3778872604622412417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-A038804 (n + 1)) (A008683 (A001097 (n + 1)).toNat)

end

end A109937.P3778872604622412417

/-!
# A109938: Largest k-digit prime == 1 (mod prime(n)) where k is the number of digits in prime(n), or 0 if no such prime exists.

The programs for A109938, there is no canonical definition to state claims against.
-/

/-! ## A109938.P13663575527141177615

`A109939(A000040(n+1))`
-/

namespace A109938.P13663575527141177615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109939 (A000040 (n + 1)).toNat

end

end A109938.P13663575527141177615

/-! ## A109938.P7601403872464217895

`A109939(A161847(n+1))`
-/

namespace A109938.P7601403872464217895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109939 (A161847 (n + 1)).toNat

end

end A109938.P7601403872464217895

/-! ## A109938.P9603152750304351818

`A109939(A008578(n+2))`
-/

namespace A109938.P9603152750304351818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109939 (A008578 (n + 2)).toNat

end

end A109938.P9603152750304351818

/-! ## A109938.P11576083934020474778

`A109939(A182986(n+2))`
-/

namespace A109938.P11576083934020474778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109939 (A182986 (n + 2)).toNat

end

end A109938.P11576083934020474778

/-! ## A109938.P5577588868208055452

`A109939(record[A006530(n+2)])`
-/

namespace A109938.P5577588868208055452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109939 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A109938.P5577588868208055452

/-! ## A109938.P3511542957268799519

`A109939(record[A014963(n+2)])`
-/

namespace A109938.P3511542957268799519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109939 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A109938.P3511542957268799519

/-! ## A109938.P242528664516958685

`A109939(record[A020639(n+2)])`
-/

namespace A109938.P242528664516958685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109939 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A109938.P242528664516958685

/-!
# A109940: Largest k-digit multiple of n where k is the number of digits in n.

The programs for A109940, the canonical program `A109940.P11561411005126974692` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109940 has offset 1).

The definition of A109940 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A097326, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A109940.P11561411005126974692

`(n+1)*A097326(n+1)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A109940

/-- `(n+1)*A097326(n+1)` -/
def P11561411005126974692.Spec : Prop :=
  ∀ n, P11561411005126974692.a n = A109940 (n + 1)

theorem P11561411005126974692.correct : P11561411005126974692.Spec := by
  intro n
  simp only [A109940, Nat.add_sub_cancel]

end A109940

/-! ## A109940.P3167562318855442172

`A377565(n+1)-(n+1)`
-/

namespace A109940.P3167562318855442172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377565 (n + 1) - (n + 1 : ℤ)

end

end A109940.P3167562318855442172

namespace A109940

/-- `A377565(n+1)-(n+1)` -/
def P3167562318855442172.Spec : Prop :=
  ∀ n, P3167562318855442172.a n = A109940 (n + 1)

end A109940

/-! ## A109940.P8770590023804460659

`(n+1)*(A097327(n+1)-1)`
-/

namespace A109940.P8770590023804460659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A097327 (n + 1) - 1)

end

end A109940.P8770590023804460659

namespace A109940

/-- `(n+1)*(A097327(n+1)-1)` -/
def P8770590023804460659.Spec : Prop :=
  ∀ n, P8770590023804460659.a n = A109940 (n + 1)

end A109940

/-! ## A109940.P9375163510308399406

`(n+1)*A000030(A187090(n+1)/(n+1))`
-/

namespace A109940.P9375163510308399406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000030 (SequenceMachineLib.roundAway ((A187090 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

end

end A109940.P9375163510308399406

namespace A109940

/-- `(n+1)*A000030(A187090(n+1)/(n+1))` -/
def P9375163510308399406.Spec : Prop :=
  ∀ n, P9375163510308399406.a n = A109940 (n + 1)

end A109940

/-! ## A109940.P9250474267491841312

`A061601(A061601(n+1)%(n+1)+n)+n`
-/

namespace A109940.P9250474267491841312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061601 (Int.tmod (A061601 (n + 1)) (n + 1 : ℤ) + (n : ℤ)).toNat + (n : ℤ)

end

end A109940.P9250474267491841312

namespace A109940

/-- `A061601(A061601(n+1)%(n+1)+n)+n` -/
def P9250474267491841312.Spec : Prop :=
  ∀ n, P9250474267491841312.a n = A109940 (n + 1)

end A109940

/-! ## A109940.P12632178320694900342

`(n+1)*A048379(floor(A061601(n+1)/(n+1)))`
-/

namespace A109940.P12632178320694900342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A048379 ⌊(A061601 (n + 1) : ℚ) / (n + 1 : ℚ)⌋.toNat

end

end A109940.P12632178320694900342

namespace A109940

/-- `(n+1)*A048379(floor(A061601(n+1)/(n+1)))` -/
def P12632178320694900342.Spec : Prop :=
  ∀ n, P12632178320694900342.a n = A109940 (n + 1)

end A109940

/-! ## A109940.P918301129587615395

`A061601(A061601(A377565(n+1))+n+1)`
-/

namespace A109940.P918301129587615395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061601 (A061601 (A377565 (n + 1)).toNat + (n + 1 : ℤ)).toNat

end

end A109940.P918301129587615395

namespace A109940

/-- `A061601(A061601(A377565(n+1))+n+1)` -/
def P918301129587615395.Spec : Prop :=
  ∀ n, P918301129587615395.a n = A109940 (n + 1)

end A109940

/-! ## A109940.P3582248329111071952

`(n+1)*A052038(A020338(n+1))`
-/

namespace A109940.P3582248329111071952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A052038 (A020338 (n + 1)).toNat

end

end A109940.P3582248329111071952

namespace A109940

/-- `(n+1)*A052038(A020338(n+1))` -/
def P3582248329111071952.Spec : Prop :=
  ∀ n, P3582248329111071952.a n = A109940 (n + 1)

end A109940

/-! ## A109940.P15198653252058224696

`(n+1)*A052038(A158128(n+1))`
-/

namespace A109940.P15198653252058224696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A052038 (A158128 (n + 1)).toNat

end

end A109940.P15198653252058224696

namespace A109940

/-- `(n+1)*A052038(A158128(n+1))` -/
def P15198653252058224696.Spec : Prop :=
  ∀ n, P15198653252058224696.a n = A109940 (n + 1)

end A109940

/-!
# A109942: Largest k-digit number coprime to n, where k is the number of digits in n.

The programs for A109942, there is no canonical definition to state claims against.
-/

/-! ## A109942.P12287396222227267677

`A070565(A061805(n+1))+A061601(A063725(n))`
-/

namespace A109942.P12287396222227267677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070565 (A061805 (n + 1)).toNat + A061601 (A063725 n).toNat

end

end A109942.P12287396222227267677

/-!
# A109943: Maximal number of distinct primes in the solution of the n X n generalization of the Gordon Lee puzzle.

The programs for A109943, there is no canonical definition to state claims against.
-/

/-! ## A109943.P3710261353788397331

`A345167(∑[A345167(2*n+3)])+A006218(2*n)`
-/

namespace A109943.P3710261353788397331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345167 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345167 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + A006218 (2 * n)

end

end A109943.P3710261353788397331

/-!
# A109945: Primes p such that [p,p+2] is a pair of twin primes and (p*(p+2)-1)/2 is prime.

The programs for A109945, there is no canonical definition to state claims against.
-/

/-! ## A109945.P3175010942945110500

`floor(sqrt(A107423(n+1)))`
-/

namespace A109945.P3175010942945110500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A107423 (n + 1))

end

end A109945.P3175010942945110500

/-! ## A109945.P6341893217798573275

`floor(sqrt(A269663(n+1)))`
-/

namespace A109945.P6341893217798573275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A269663 (n + 1))

end

end A109945.P6341893217798573275

/-! ## A109945.P6956716442313223966

`floor(sqrt(2*A086870(n+1)))`
-/

namespace A109945.P6956716442313223966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (2 * A086870 (n + 1))

end

end A109945.P6956716442313223966

/-! ## A109945.P4814127311037998287

`∩[A001359(n+1), A093706(n+1)]`
-/

namespace A109945.P4814127311037998287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093706 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109945.P4814127311037998287

/-! ## A109945.P10085636072700579757

`∩[A093706(n+1), A141830(n+1)]`
-/

namespace A109945.P10085636072700579757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093706 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141830 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109945.P10085636072700579757

/-! ## A109945.P8784539355262460083

`∩[A093706(n+1), A378983(n+1)]`
-/

namespace A109945.P8784539355262460083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093706 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378983 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109945.P8784539355262460083

/-! ## A109945.P17013840246997952599

`∩[A054799(n+1), A093706(n+1)]`
-/

namespace A109945.P17013840246997952599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054799 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093706 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109945.P17013840246997952599

/-! ## A109945.P12368544032515629777

`∩[A093706(n+1), A124588(n+1)]`
-/

namespace A109945.P12368544032515629777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093706 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124588 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109945.P12368544032515629777

/-! ## A109945.P12484583034046991603

`∩[A093706(n+1), A181747(n+1)]`
-/

namespace A109945.P12484583034046991603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093706 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181747 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109945.P12484583034046991603

/-! ## A109945.P7037985504052768700

`∩[A093706(n+1), A238528(n+1)]`
-/

namespace A109945.P7037985504052768700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093706 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238528 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109945.P7037985504052768700

/-! ## A109945.P5348399344250616226

`∩[A063700(n+1), A093706(n+1)]`
-/

namespace A109945.P5348399344250616226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063700 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093706 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109945.P5348399344250616226

/-! ## A109945.P4103680502612386538

`∩[A093706(n+1), A280255(n+1)]`
-/

namespace A109945.P4103680502612386538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093706 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280255 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109945.P4103680502612386538

/-! ## A109945.P1434693066093731277

`∩[A063693(n+1), A093706(n+1)]`
-/

namespace A109945.P1434693066093731277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063693 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093706 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109945.P1434693066093731277

/-! ## A109945.P2249716753219889045

`∩[A093706(n+1), A394509(n+1)]`
-/

namespace A109945.P2249716753219889045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093706 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394509 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109945.P2249716753219889045

/-! ## A109945.P1177542383207884846

`∩[A093706(n+1), A395788(n+1)]`
-/

namespace A109945.P1177542383207884846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093706 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395788 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109945.P1177542383207884846

/-! ## A109945.P14653215222165672773

`∩[A073534(n+1), A093706(n+1)]`
-/

namespace A109945.P14653215222165672773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073534 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093706 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109945.P14653215222165672773

/-! ## A109945.P14908484292102894970

`∩[A093706(n+1), A280590(n+1)]`
-/

namespace A109945.P14908484292102894970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093706 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280590 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109945.P14908484292102894970

/-! ## A109945.P10298097765889617541

`p?[floor(sqrt(A103533(n+1)))]`
-/

namespace A109945.P10298097765889617541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A103533 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A109945.P10298097765889617541

/-! ## A109945.P10988346919199166301

`∩[A001838(n+1), A093706(n+1)]`
-/

namespace A109945.P10988346919199166301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001838 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093706 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109945.P10988346919199166301

/-! ## A109945.P9482949366680655859

`∩[A093706(n+1), A274212(n+1)]`
-/

namespace A109945.P9482949366680655859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093706 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274212 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109945.P9482949366680655859

/-!
# A109946: Smallest prime starting a complete two iterations Cunningham chain of the first and second kind.

The programs for A109946, there is no canonical definition to state claims against.
-/

/-! ## A109946.P1679155196854476897

`A038699(∑[p?[A194440(n)]])`
-/

namespace A109946.P1679155196854476897
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194440 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038699 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A109946.P1679155196854476897

/-!
# A109950: Number of partitions of n into parts having in decimal representation mutually no common digits.

The programs for A109950, there is no canonical definition to state claims against.
-/

/-! ## A109950.P16738205957555843059

`A109951(n)+a(n-1)` with `a(0)=1`
-/

namespace A109950.P16738205957555843059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A109951 n + a (n - 1)

end

end A109950.P16738205957555843059

/-! ## A109950.P741161108230144335

`∑[A109951(abs(1-n)+1)]`
-/

namespace A109950.P741161108230144335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109951 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109950.P741161108230144335

/-! ## A109950.P11014206732326231512

`∑[A109951(round(sqrt(n²+1)))]+1`
-/

namespace A109950.P11014206732326231512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109951 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A109950.P11014206732326231512

/-! ## A109950.P9488546762281634909

`∑[A109951(n+1)]+1-A109951(n+1)`
-/

namespace A109950.P9488546762281634909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109951 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1 - A109951 (n + 1)

end

end A109950.P9488546762281634909

/-!
# A109951: First differences of A109950.

The programs for A109951, there is no canonical definition to state claims against.
-/

/-! ## A109951.P4758694454336223021

`A109950(n+2)-A109950(n+1)`
-/

namespace A109951.P4758694454336223021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109950 (n + 2) - A109950 (n + 1)

end

end A109951.P4758694454336223021

/-! ## A109951.P1763771498608596486

`Δ[A109950(n+1)]`
-/

namespace A109951.P1763771498608596486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109950 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A109951.P1763771498608596486

/-! ## A109951.P12814503503644631501

`A023416(ratio[2^A109950(n+1)])`
-/

namespace A109951.P12814503503644631501
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A109950 (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (SequenceMachineLib.roundAway (f1 (n + 1) / f1 n)).toNat

end

end A109951.P12814503503644631501

/-! ## A109951.P3865909422206569799

`A319420(A028864(n+1)%A050040(n+1))`
-/

namespace A109951.P3865909422206569799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319420 (Int.tmod (A028864 (n + 1)) (A050040 (n + 1))).toNat

end

end A109951.P3865909422206569799

/-! ## A109951.P15222721797460177299

`A322811(A298642(3*n)+A228531(n+1))`
-/

namespace A109951.P15222721797460177299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322811 (A298642 (3 * n) + A228531 (n + 1)).toNat

end

end A109951.P15222721797460177299

/-!
# A109952: Degrees Celsius for which Fahrenheit is a prime.

The programs for A109952, there is no canonical definition to state claims against.
-/

/-! ## A109952.P16803872574086214431

`eq[(8*n)%10, A349359(floor(9*n/5)+32)]`
-/

namespace A109952.P16803872574086214431
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n % 10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349359 (⌊9 * ((n : ℚ) / 5)⌋ + 32).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A109952.P16803872574086214431

/-! ## A109952.P836384184799108707

`A029926(p?[A029925(5*n)])`
-/

namespace A109952.P836384184799108707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029925 (5 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029926 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A109952.P836384184799108707

/-! ## A109952.P6751246436511836704

`eq[A001065(floor(9*n/5)+32), A135449(n)]`
-/

namespace A109952.P6751246436511836704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (⌊9 * ((n : ℚ) / 5)⌋ + 32).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135449 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A109952.P6751246436511836704

/-! ## A109952.P11759332296405898003

`eq[A010874(n), A349359(floor(9*n/5)+32)]`
-/

namespace A109952.P11759332296405898003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010874 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349359 (⌊9 * ((n : ℚ) / 5)⌋ + 32).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A109952.P11759332296405898003

/-! ## A109952.P14121151425274933411

`eq[A136315(n), A349359(floor(18*(n+18)/10))]`
-/

namespace A109952.P14121151425274933411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136315 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349359 ⌊18 * ((n + 18 : ℚ) / 10)⌋.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A109952.P14121151425274933411

/-! ## A109952.P10934446297998094553

`eq[A177154(n), A349359(floor(9*n/5)+32)]`
-/

namespace A109952.P10934446297998094553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177154 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349359 (⌊9 * ((n : ℚ) / 5)⌋ + 32).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A109952.P10934446297998094553

/-!
# A109953: Primes p such that p^2+2 is a semiprime.

The programs for A109953, there is no canonical definition to state claims against.
-/

/-! ## A109953.P18159947808357883023

`sqrt(3*A289135(n+1)-2)`
-/

namespace A109953.P18159947808357883023
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (3 * A289135 (n + 1) - 2 : ℝ)

end

end A109953.P18159947808357883023

/-! ## A109953.P7696540717498277393

`p?[A240878(n+1)]`
-/

namespace A109953.P7696540717498277393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240878 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A109953.P7696540717498277393

/-! ## A109953.P5329579379821880834

`floor(sqrt(A133395(n+1)))`
-/

namespace A109953.P5329579379821880834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A133395 (n + 1))

end

end A109953.P5329579379821880834

/-! ## A109953.P4766382371719143659

`floor(sqrt(3*A289135(n+1)))`
-/

namespace A109953.P4766382371719143659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (3 * A289135 (n + 1))

end

end A109953.P4766382371719143659

/-! ## A109953.P16123275309439422643

`∩[A240878(n+1), A380468(n+1)]`
-/

namespace A109953.P16123275309439422643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240878 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109953.P16123275309439422643

/-! ## A109953.P12307035008948929015

`∩[A000040(n+1), A240878(n+1)]`
-/

namespace A109953.P12307035008948929015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240878 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109953.P12307035008948929015

/-! ## A109953.P202153949387468056

`∩[A008578(n+1), A240878(n+1)]`
-/

namespace A109953.P202153949387468056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240878 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109953.P202153949387468056

/-! ## A109953.P17188191518677604950

`∩[A033946(n+1), A240878(n+1)]`
-/

namespace A109953.P17188191518677604950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240878 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109953.P17188191518677604950

/-! ## A109953.P17592794738423895407

`∩[A045319(n+1), A240878(n+1)]`
-/

namespace A109953.P17592794738423895407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240878 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109953.P17592794738423895407

/-! ## A109953.P2652874723482875873

`∩[A045344(n+1), A240878(n+1)]`
-/

namespace A109953.P2652874723482875873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240878 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109953.P2652874723482875873

/-! ## A109953.P9499179435946099452

`∩[A046022(n+1), A240878(n+1)]`
-/

namespace A109953.P9499179435946099452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240878 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109953.P9499179435946099452

/-! ## A109953.P437949829808244182

`∩[A051948(n+1), A240878(n+1)]`
-/

namespace A109953.P437949829808244182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240878 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109953.P437949829808244182

/-! ## A109953.P8970042865570420902

`∩[A053813(n+1), A240878(n+1)]`
-/

namespace A109953.P8970042865570420902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240878 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109953.P8970042865570420902

/-! ## A109953.P18072223402179429767

`∩[A066050(n+1), A240878(n+1)]`
-/

namespace A109953.P18072223402179429767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066050 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240878 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109953.P18072223402179429767

/-! ## A109953.P17703197557320049525

`∩[A067126(n+1), A240878(n+1)]`
-/

namespace A109953.P17703197557320049525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240878 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109953.P17703197557320049525

/-! ## A109953.P14618371748098891460

`∩[A093515(n+1), A240878(n+1)]`
-/

namespace A109953.P14618371748098891460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093515 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240878 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109953.P14618371748098891460

/-! ## A109953.P14930230859881920071

`∩[A182986(n+1), A240878(n+1)]`
-/

namespace A109953.P14930230859881920071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240878 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109953.P14930230859881920071

/-! ## A109953.P16657660944392659834

`∩[A062972(n+1), A240878(n+1)]`
-/

namespace A109953.P16657660944392659834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240878 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109953.P16657660944392659834

/-! ## A109953.P4306569202901443247

`∩[A326715(n+1), A240878(n+1)]`
-/

namespace A109953.P4306569202901443247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326715 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240878 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109953.P4306569202901443247

/-! ## A109953.P8908023729662886723

`∩[A067133(n+1), A240878(n+1)]`
-/

namespace A109953.P8908023729662886723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067133 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240878 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109953.P8908023729662886723

/-!
# A109954: Riordan array (1/(1+x)^3,x/(1+x)^2).

The programs for A109954, the canonical program `A109954.P17595007560231921648` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109954 has offset 0).

The definition of A109954 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9859 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A109954.P17595007560231921648

`A129818(comp[∑[n]])`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A109954

/-- `A129818(comp[∑[n]])` -/
def P17595007560231921648.Spec : Prop :=
  ∀ n, P17595007560231921648.a n = A109954 n

theorem P17595007560231921648.correct : P17595007560231921648.Spec := by
  intro n
  simp only [A109954]

end A109954

/-! ## A109954.P4725833635408838841

`A097807(n)*A143858(n+1)`
-/

namespace A109954.P4725833635408838841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 n * A143858 (n + 1)

end

end A109954.P4725833635408838841

namespace A109954

/-- `A097807(n)*A143858(n+1)` -/
def P4725833635408838841.Spec : Prop :=
  ∀ n, P4725833635408838841.a n = A109954 n

end A109954

/-! ## A109954.P7678505347071239376

`A143858(n+1)/A085478(n)*A129818(n)`
-/

namespace A109954.P7678505347071239376
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143858 (n + 1) : ℚ) / (A085478 n : ℚ) * (A129818 n : ℚ)

end

end A109954.P7678505347071239376

namespace A109954

/-- `A143858(n+1)/A085478(n)*A129818(n)` -/
def P7678505347071239376.Spec : Prop :=
  ∀ n, P7678505347071239376.a n = (A109954 n : ℚ)

end A109954

/-! ## A109954.P3057478507216488825

`A092865(A063657(n+1))`
-/

namespace A109954.P3057478507216488825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092865 (A063657 (n + 1)).toNat

end

end A109954.P3057478507216488825

namespace A109954

/-- `A092865(A063657(n+1))` -/
def P3057478507216488825.Spec : Prop :=
  ∀ n, P3057478507216488825.a n = A109954 n

end A109954

/-! ## A109954.P4074675106516314279

`A112552(A185869(n+1))`
-/

namespace A109954.P4074675106516314279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112552 (A185869 (n + 1)).toNat

end

end A109954.P4074675106516314279

namespace A109954

/-- `A112552(A185869(n+1))` -/
def P4074675106516314279.Spec : Prop :=
  ∀ n, P4074675106516314279.a n = A109954 n

end A109954

/-! ## A109954.P16321494623762072657

`A049310(A185871(n+1))`
-/

namespace A109954.P16321494623762072657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049310 (A185871 (n + 1)).toNat

end

end A109954.P16321494623762072657

namespace A109954

/-- `A049310(A185871(n+1))` -/
def P16321494623762072657.Spec : Prop :=
  ∀ n, P16321494623762072657.a n = A109954 n

end A109954

/-! ## A109954.P8374333339080319538

`A049310(A003057(n+2)²+2*n+1)`
-/

namespace A109954.P8374333339080319538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049310 (A003057 (n + 2) ^ 2 + (2 * n + 1 : ℤ)).toNat

end

end A109954.P8374333339080319538

namespace A109954

/-- `A049310(A003057(n+2)²+2*n+1)` -/
def P8374333339080319538.Spec : Prop :=
  ∀ n, P8374333339080319538.a n = A109954 n

end A109954

/-! ## A109954.P1822416898786234992

`A049310(A189151(n+1)+A061885(n))`
-/

namespace A109954.P1822416898786234992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049310 (A189151 (n + 1) + A061885 n).toNat

end

end A109954.P1822416898786234992

namespace A109954

/-- `A049310(A189151(n+1)+A061885(n))` -/
def P1822416898786234992.Spec : Prop :=
  ∀ n, P1822416898786234992.a n = A109954 n

end A109954

/-! ## A109954.P9339057707915561509

`A109466(A292565(n+1))`
-/

namespace A109954.P9339057707915561509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109466 (A292565 (n + 1)).toNat

end

end A109954.P9339057707915561509

namespace A109954

/-- `A109466(A292565(n+1))` -/
def P9339057707915561509.Spec : Prop :=
  ∀ n, P9339057707915561509.a n = A109954 n

end A109954

/-! ## A109954.P12766148301694319620

`A267482(A292565(n+1)-A025581(n))`
-/

namespace A109954.P12766148301694319620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267482 (A292565 (n + 1) - A025581 n).toNat

end

end A109954.P12766148301694319620

namespace A109954

/-- `A267482(A292565(n+1)-A025581(n))` -/
def P12766148301694319620.Spec : Prop :=
  ∀ n, P12766148301694319620.a n = A109954 n

end A109954

/-!
# A109955: Number triangle binomial(n+2k,3k).

The programs for A109955, the canonical program `A109955.P11070320594210267159` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109955 has offset 0).

The definition of A109955 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A109955.P16736522186406677493

`A193636(A061579(n))`
-/

namespace A109955.P16736522186406677493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193636 (A061579 n).toNat

end

end A109955.P16736522186406677493

namespace A109955

/-- `A193636(A061579(n))` -/
def P16736522186406677493.Spec : Prop :=
  ∀ n, P16736522186406677493.a n = A109955 n

end A109955

/-! ## A109955.P12203813755482035932

`A193636(A114327(n)+n)`
-/

namespace A109955.P12203813755482035932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193636 (A114327 n + (n : ℤ)).toNat

end

end A109955.P12203813755482035932

namespace A109955

/-- `A193636(A114327(n)+n)` -/
def P12203813755482035932.Spec : Prop :=
  ∀ n, P12203813755482035932.a n = A109955 n

end A109955

/-! ## A109955.P3003441856372798190

`A193636(A038722(n+1)-1)`
-/

namespace A109955.P3003441856372798190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193636 (A038722 (n + 1) - 1).toNat

end

end A109955.P3003441856372798190

namespace A109955

/-- `A193636(A038722(n+1)-1)` -/
def P3003441856372798190.Spec : Prop :=
  ∀ n, P3003441856372798190.a n = A109955 n

end A109955

/-! ## A109955.P13910356702255197024

`A193636(A093995(n+1)-(n+1))`
-/

namespace A109955.P13910356702255197024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193636 (A093995 (n + 1) - (n + 1 : ℤ)).toNat

end

end A109955.P13910356702255197024

namespace A109955

/-- `A193636(A093995(n+1)-(n+1))` -/
def P13910356702255197024.Spec : Prop :=
  ∀ n, P13910356702255197024.a n = A109955 n

end A109955

/-! ## A109955.P3624312789759409482

`A193636(A002378(n)%A014132(n+1))`
-/

namespace A109955.P3624312789759409482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193636 (Int.tmod (A002378 n) (A014132 (n + 1))).toNat

end

end A109955.P3624312789759409482

namespace A109955

/-- `A193636(A002378(n)%A014132(n+1))` -/
def P3624312789759409482.Spec : Prop :=
  ∀ n, P3624312789759409482.a n = A109955 n

end A109955

/-! ## A109955.P11070320594210267159

`C(A004277(n)-A003056(n)², A025581(n))`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A109955

/-- `C(A004277(n)-A003056(n)², A025581(n))` -/
def P11070320594210267159.Spec : Prop :=
  ∀ n, (P11070320594210267159.a n : ℤ) = A109955 n

theorem P11070320594210267159.correct : P11070320594210267159.Spec := by
  intro n
  simp only [A109955]

end A109955

/-! ## A109955.P14824125999150571218

`C(A005843(n)-A003056(n)², A025581(n))`
-/

namespace A109955.P14824125999150571218
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A005843 n - A003056 n ^ 2).toNat (A025581 n).toNat

end

end A109955.P14824125999150571218

namespace A109955

/-- `C(A005843(n)-A003056(n)², A025581(n))` -/
def P14824125999150571218.Spec : Prop :=
  ∀ n, (P14824125999150571218.a n : ℤ) = A109955 n

end A109955

/-! ## A109955.P382202350411542634

`A193636(A002024(n+1)*A002024(n+1)-(n+1))`
-/

namespace A109955.P382202350411542634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193636 (A002024 (n + 1) * A002024 (n + 1) - (n + 1 : ℤ)).toNat

end

end A109955.P382202350411542634

namespace A109955

/-- `A193636(A002024(n+1)*A002024(n+1)-(n+1))` -/
def P382202350411542634.Spec : Prop :=
  ∀ n, P382202350411542634.a n = A109955 n

end A109955

/-! ## A109955.P5005914557120846053

`A193636(A038722(n+2))`
-/

namespace A109955.P5005914557120846053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193636 (A038722 (n + 2)).toNat

end

end A109955.P5005914557120846053

namespace A109955

/-- `A193636(A038722(n+2))` -/
def P5005914557120846053.Spec : Prop :=
  ∀ n, P5005914557120846053.a n = A109955 n

end A109955

/-! ## A109955.P10389459247817236467

`A193636((A052146(n+1)+2)²-(n+1))`
-/

namespace A109955.P10389459247817236467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193636 ((A052146 (n + 1) + 2) ^ 2 - (n + 1 : ℤ)).toNat

end

end A109955.P10389459247817236467

namespace A109955

/-- `A193636((A052146(n+1)+2)²-(n+1))` -/
def P10389459247817236467.Spec : Prop :=
  ∀ n, P10389459247817236467.a n = A109955 n

end A109955

/-! ## A109955.P8905104207034539224

`A007318(A163329(3*A163328(n)))`
-/

namespace A109955.P8905104207034539224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A163329 (3 * A163328 n).toNat).toNat

end

end A109955.P8905104207034539224

namespace A109955

/-- `A007318(A163329(3*A163328(n)))` -/
def P8905104207034539224.Spec : Prop :=
  ∀ n, P8905104207034539224.a n = A109955 n

end A109955

/-! ## A109955.P2000305523784615120

`A007318(A163331(3*A163328(n)))`
-/

namespace A109955.P2000305523784615120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A163331 (3 * A163328 n).toNat).toNat

end

end A109955.P2000305523784615120

namespace A109955

/-- `A007318(A163331(3*A163328(n)))` -/
def P2000305523784615120.Spec : Prop :=
  ∀ n, P2000305523784615120.a n = A109955 n

end A109955

/-!
# A109958: Concatenate n and the sum of primes dividing n (counting multiplicity).

The programs for A109958, there is no canonical definition to state claims against.
-/

/-! ## A109958.P15425608731078248517

`A037124(A244112(n))+∑{p}[n+1, #*val(n+1, #)]`
-/

namespace A109958.P15425608731078248517
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037124 (A244112 n).toNat + ((∑ p ∈ Nat.primeFactors (f1 n), p * SequenceMachineLib.valuation (n + 1) p : ℕ) : ℤ)

end

end A109958.P15425608731078248517

/-! ## A109958.P9906477435624870851

`A037124(A244112(n))+Δ[A025281(n)]`
-/

namespace A109958.P9906477435624870851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025281 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037124 (A244112 n).toNat + (f1 (n + 1) - f1 n)

end

end A109958.P9906477435624870851

/-! ## A109958.P16045141715578942265

`A037124(A244112(n))+A001414(n+1)`
-/

namespace A109958.P16045141715578942265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037124 (A244112 n).toNat + A001414 (n + 1)

end

end A109958.P16045141715578942265

/-! ## A109958.P15158968621680765860

`A061882(A052426(n+1))+∑{p}[n+1, #*val(n+1, #)]`
-/

namespace A109958.P15158968621680765860
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061882 (A052426 (n + 1)).toNat + ((∑ p ∈ Nat.primeFactors (f1 n), p * SequenceMachineLib.valuation (n + 1) p : ℕ) : ℤ)

end

end A109958.P15158968621680765860

/-! ## A109958.P2791772771380107384

`A008592(A078213(n+1))+A001414(n+1)`
-/

namespace A109958.P2791772771380107384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 (A078213 (n + 1)).toNat + A001414 (n + 1)

end

end A109958.P2791772771380107384

/-!
# A109959: Numbers n such that concatenating n and the sum of primes dividing n (counting multiplicity) produces a prime.

The programs for A109959, there is no canonical definition to state claims against.
-/

/-! ## A109959.P13920164285143787080

`eq[1, A063647(A109958(n+1))]+1`
-/

namespace A109959.P13920164285143787080
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063647 (A109958 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A109959.P13920164285143787080

/-!
# A109960: Number triangle binomial(n+3k,4k).

The programs for A109960, the canonical program `A109960.P12216584254872933110` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109960 has offset 0).

The definition of A109960 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2626 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A109960.P12216584254872933110

`A054142(A061579(n)+A245300(n)-n)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A109960

/-- `A054142(A061579(n)+A245300(n)-n)` -/
def P12216584254872933110.Spec : Prop :=
  ∀ n, P12216584254872933110.a n = A109960 n

theorem P12216584254872933110.correct : P12216584254872933110.Spec := by
  intro n
  simp only [A109960]

end A109960

/-! ## A109960.P3074536734134862496

`A054142(A061579(n)-(n-A245300(n)))`
-/

namespace A109960.P3074536734134862496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054142 (A061579 n - ((n : ℤ) - A245300 n)).toNat

end

end A109960.P3074536734134862496

namespace A109960

/-- `A054142(A061579(n)-(n-A245300(n)))` -/
def P3074536734134862496.Spec : Prop :=
  ∀ n, P3074536734134862496.a n = A109960 n

theorem P3074536734134862496.correct : P3074536734134862496.Spec := by
  intro n
  simp only [A109960, Nat.add_sub_cancel, A109960.P3074536734134862496.a, A109960.P12216584254872933110.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A109960

/-! ## A109960.P15142945496971863420

`A085478(A245300(n)+A002262(n))`
-/

namespace A109960.P15142945496971863420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085478 (A245300 n + A002262 n).toNat

end

end A109960.P15142945496971863420

namespace A109960

/-- `A085478(A245300(n)+A002262(n))` -/
def P15142945496971863420.Spec : Prop :=
  ∀ n, P15142945496971863420.a n = A109960 n

end A109960

/-! ## A109960.P286837374758271328

`A108756(A185868(n+1)-1)`
-/

namespace A109960.P286837374758271328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108756 (A185868 (n + 1) - 1).toNat

end

end A109960.P286837374758271328

namespace A109960

/-- `A108756(A185868(n+1)-1)` -/
def P286837374758271328.Spec : Prop :=
  ∀ n, P286837374758271328.a n = A109960 n

end A109960

/-! ## A109960.P1457634090808621348

`A108756(eq[0, A155998(n)])`
-/

namespace A109960.P1457634090808621348
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155998 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108756 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A109960.P1457634090808621348

namespace A109960

/-- `A108756(eq[0, A155998(n)])` -/
def P1457634090808621348.Spec : Prop :=
  ∀ n, P1457634090808621348.a n = A109960 n

end A109960

/-! ## A109960.P3467933138797251203

`A102426(A214661(n+1))`
-/

namespace A109960.P3467933138797251203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102426 (A214661 (n + 1)).toNat

end

end A109960.P3467933138797251203

namespace A109960

/-- `A102426(A214661(n+1))` -/
def P3467933138797251203.Spec : Prop :=
  ∀ n, P3467933138797251203.a n = A109960 n

end A109960

/-! ## A109960.P13666310465395753693

`A098925(2*A245300(n))`
-/

namespace A109960.P13666310465395753693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098925 (2 * A245300 n).toNat

end

end A109960.P13666310465395753693

namespace A109960

/-- `A098925(2*A245300(n))` -/
def P13666310465395753693.Spec : Prop :=
  ∀ n, P13666310465395753693.a n = A109960 n

end A109960

/-! ## A109960.P1191611073783289383

`A098925(A214661(n+1)-1)`
-/

namespace A109960.P1191611073783289383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098925 (A214661 (n + 1) - 1).toNat

end

end A109960.P1191611073783289383

namespace A109960

/-- `A098925(A214661(n+1)-1)` -/
def P1191611073783289383.Spec : Prop :=
  ∀ n, P1191611073783289383.a n = A109960 n

end A109960

/-! ## A109960.P10358292246321387612

`A102426(2*A245300(n)+1)`
-/

namespace A109960.P10358292246321387612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102426 (2 * A245300 n + 1).toNat

end

end A109960.P10358292246321387612

namespace A109960

/-- `A102426(2*A245300(n)+1)` -/
def P10358292246321387612.Spec : Prop :=
  ∀ n, P10358292246321387612.a n = A109960 n

end A109960

/-! ## A109960.P96213967822178634

`A098925(A005843(A245300(n)))`
-/

namespace A109960.P96213967822178634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098925 (A005843 (A245300 n).toNat).toNat

end

end A109960.P96213967822178634

namespace A109960

/-- `A098925(A005843(A245300(n)))` -/
def P96213967822178634.Spec : Prop :=
  ∀ n, P96213967822178634.a n = A109960 n

end A109960

/-! ## A109960.P4317022644366166048

`A102426(A245300(n)+A245300(n)+1)`
-/

namespace A109960.P4317022644366166048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102426 (A245300 n + (A245300 n + 1)).toNat

end

end A109960.P4317022644366166048

namespace A109960

/-- `A102426(A245300(n)+A245300(n)+1)` -/
def P4317022644366166048.Spec : Prop :=
  ∀ n, P4317022644366166048.a n = A109960 n

end A109960

/-!
# A109961: Expansion of (1-x)^3/(1-4x+5x^2-4x^3+x^4).

The programs for A109961, the canonical program `A109961.P7477932696457521424` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109961 has offset 0).

The definition of A109961 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-3x+3x^2-x^3)/(1-4x+5x^2-4x^3+x^4))` (program `A109961.P7477932696457521424`, by `A109961.P7477932696457521424.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A109961.P7477932696457521424

`ogf((1-3x+3x^2-x^3)/(1-4x+5x^2-4x^3+x^4))`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A109961

/-- `ogf((1-3x+3x^2-x^3)/(1-4x+5x^2-4x^3+x^4))` -/
def P7477932696457521424.Spec : Prop :=
  ∀ n, P7477932696457521424.a n = A109961 n

theorem P7477932696457521424.correct : P7477932696457521424.Spec := by
  intro n
  simp only [A109961]

end A109961

/-! ## A109961.P3905255157814416416

`4*a(n-1)-5*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=6`
-/

namespace A109961.P3905255157814416416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 6] fun n a =>
  4 * a (n - 1) - 5 * a (n - 2) + 4 * a (n - 3) - a (n - 4)

end

end A109961.P3905255157814416416

namespace A109961

/-- `4*a(n-1)-5*a(n-2)+4*a(n-3)-a(n-4)` -/
def P3905255157814416416.Spec : Prop :=
  ∀ n, P3905255157814416416.a n = A109961 n

end A109961

/-! ## A109961.P7020316225050533753

`∑[A290890(abs(1-n))]`
-/

namespace A109961.P7020316225050533753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290890 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109961.P7020316225050533753

namespace A109961

/-- `∑[A290890(abs(1-n))]` -/
def P7020316225050533753.Spec : Prop :=
  ∀ n, P7020316225050533753.a n = A109961 n

end A109961

/-! ## A109961.P10528686458847267172

`A174618(4*n+2-n%2)`
-/

namespace A109961.P10528686458847267172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174618 (4 * n + 2 - n % 2)

end

end A109961.P10528686458847267172

namespace A109961

/-- `A174618(4*n+2-n%2)` -/
def P10528686458847267172.Spec : Prop :=
  ∀ n, P10528686458847267172.a n = A109961 n

end A109961

/-! ## A109961.P15792766408479809126

`A290890(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A109961.P15792766408479809126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A290890 (n - 1) + a (n - 1)

end

end A109961.P15792766408479809126

namespace A109961

/-- `A290890(n-1)+a(n-1)` -/
def P15792766408479809126.Spec : Prop :=
  ∀ n, P15792766408479809126.a n = A109961 n

end A109961

/-! ## A109961.P7120643792563198980

`A000032(2*(n-1))-a(n-3)` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A109961.P7120643792563198980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  A000032 (2 * ((n : ℤ) - 1)).toNat - a (n - 3)

end

end A109961.P7120643792563198980

namespace A109961

/-- `A000032(2*(n-1))-a(n-3)` -/
def P7120643792563198980.Spec : Prop :=
  ∀ n, P7120643792563198980.a n = A109961 n

end A109961

/-! ## A109961.P7008970461176476192

`A174618(A047617(n+1))`
-/

namespace A109961.P7008970461176476192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174618 (A047617 (n + 1)).toNat

end

end A109961.P7008970461176476192

namespace A109961

/-- `A174618(A047617(n+1))` -/
def P7008970461176476192.Spec : Prop :=
  ∀ n, P7008970461176476192.a n = A109961 n

end A109961

/-! ## A109961.P6417073815382924500

`A174618(A047470(n+1)+2)`
-/

namespace A109961.P6417073815382924500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174618 (A047470 (n + 1) + 2).toNat

end

end A109961.P6417073815382924500

namespace A109961

/-- `A174618(A047470(n+1)+2)` -/
def P6417073815382924500.Spec : Prop :=
  ∀ n, P6417073815382924500.a n = A109961 n

end A109961

/-! ## A109961.P4442313491816331731

`A174618(A047235(n+1)+n)`
-/

namespace A109961.P4442313491816331731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174618 (A047235 (n + 1) + (n : ℤ)).toNat

end

end A109961.P4442313491816331731

namespace A109961

/-- `A174618(A047235(n+1)+n)` -/
def P4442313491816331731.Spec : Prop :=
  ∀ n, P4442313491816331731.a n = A109961 n

end A109961

/-! ## A109961.P8403054042706403011

`A174618(A042964(n+1)+2*n)`
-/

namespace A109961.P8403054042706403011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174618 (A042964 (n + 1) + (2 * n : ℤ)).toNat

end

end A109961.P8403054042706403011

namespace A109961

/-- `A174618(A042964(n+1)+2*n)` -/
def P8403054042706403011.Spec : Prop :=
  ∀ n, P8403054042706403011.a n = A109961 n

end A109961

/-! ## A109961.P9010672436086019388

`A174618(A042964(n+1)+n+n)`
-/

namespace A109961.P9010672436086019388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174618 (A042964 (n + 1) + (n : ℤ) + (n : ℤ)).toNat

end

end A109961.P9010672436086019388

namespace A109961

/-- `A174618(A042964(n+1)+n+n)` -/
def P9010672436086019388.Spec : Prop :=
  ∀ n, P9010672436086019388.a n = A109961 n

end A109961

/-! ## A109961.P9996221896843106836

`A293553(2*n+1)+or(1, A293553(2*n+1))`
-/

namespace A109961.P9996221896843106836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293553 (2 * n + 1) + Int.lor 1 (A293553 (2 * n + 1))

end

end A109961.P9996221896843106836

namespace A109961

/-- `A293553(2*n+1)+or(1, A293553(2*n+1))` -/
def P9996221896843106836.Spec : Prop :=
  ∀ n, P9996221896843106836.a n = A109961 n

end A109961

/-! ## A109961.P6087082146978992920

`∑[A290890(n)]+1-A290890(n)`
-/

namespace A109961.P6087082146978992920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290890 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A290890 n)

end

end A109961.P6087082146978992920

namespace A109961

/-- `∑[A290890(n)]+1-A290890(n)` -/
def P6087082146978992920.Spec : Prop :=
  ∀ n, P6087082146978992920.a n = A109961 n

end A109961

/-! ## A109961.P12324884730049104904

`(A010892(n+1)+A000045(2*n+1))/2`
-/

namespace A109961.P12324884730049104904
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010892 (n + 1) + A000045 (2 * n + 1) : ℚ) / 2

end

end A109961.P12324884730049104904

namespace A109961

/-- `(A010892(n+1)+A000045(2*n+1))/2` -/
def P12324884730049104904.Spec : Prop :=
  ∀ n, P12324884730049104904.a n = (A109961 n : ℚ)

end A109961

/-! ## A109961.P13223783384163613360

`(A309970(2*n)+A000045(2*n+1))/2`
-/

namespace A109961.P13223783384163613360
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A309970 (2 * n) + A000045 (2 * n + 1) : ℚ) / 2

end

end A109961.P13223783384163613360

namespace A109961

/-- `(A309970(2*n)+A000045(2*n+1))/2` -/
def P13223783384163613360.Spec : Prop :=
  ∀ n, P13223783384163613360.a n = (A109961 n : ℚ)

end A109961

/-! ## A109961.P4537763621349821719

`(A110161(2*n+1)+A000045(2*n+1))/2`
-/

namespace A109961.P4537763621349821719
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110161 (2 * n + 1) + A000045 (2 * n + 1) : ℚ) / 2

end

end A109961.P4537763621349821719

namespace A109961

/-- `(A110161(2*n+1)+A000045(2*n+1))/2` -/
def P4537763621349821719.Spec : Prop :=
  ∀ n, P4537763621349821719.a n = (A109961 n : ℚ)

end A109961

/-! ## A109961.P4811245678077075985

`A001519(n+2)-A290890(n+1)`
-/

namespace A109961.P4811245678077075985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001519 (n + 2) - A290890 (n + 1)

end

end A109961.P4811245678077075985

namespace A109961

/-- `A001519(n+2)-A290890(n+1)` -/
def P4811245678077075985.Spec : Prop :=
  ∀ n, P4811245678077075985.a n = A109961 n

end A109961

/-! ## A109961.P1990453560039588071

`A087123(2*n+1)-A290890(n+1)`
-/

namespace A109961.P1990453560039588071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087123 (2 * n + 1) - A290890 (n + 1)

end

end A109961.P1990453560039588071

namespace A109961

/-- `A087123(2*n+1)-A290890(n+1)` -/
def P1990453560039588071.Spec : Prop :=
  ∀ n, P1990453560039588071.a n = A109961 n

end A109961

/-!
# A109963: Diagonal sums of number triangle A109962.

The programs for A109963, there is no canonical definition to state claims against.
-/

/-! ## A109963.P1355645414747709294

`A298949(n*p?[A173173(n)])`
-/

namespace A109963.P1355645414747709294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173173 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298949 ((n : ℤ) * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A109963.P1355645414747709294

/-!
# A109964: a(n) = floor(sqrt(Sum_{i

The programs for A109964, the canonical program `A109964.P1870306018667437260` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109964 has offset 0).

The definition of A109964 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A109964.P849664717855708503

`ceil(∑[char[comp[2^n+n]]]/2)`
-/

namespace A109964.P849664717855708503
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n + n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 2⌉

end

end A109964.P849664717855708503

namespace A109964

/-- `ceil(∑[char[comp[2^n+n]]]/2)` -/
def P849664717855708503.Spec : Prop :=
  ∀ n, P849664717855708503.a n = A109964 n

end A109964

/-! ## A109964.P18343885479237760760

`round(cosh(log(∑[char[comp[2^n+n]]])))`
-/

namespace A109964.P18343885479237760760
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n + n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cosh (Real.log ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ)))

end

end A109964.P18343885479237760760

namespace A109964

/-- `round(cosh(log(∑[char[comp[2^n+n]]])))` -/
def P18343885479237760760.Spec : Prop :=
  ∀ n, P18343885479237760760.a n = A109964 n

end A109964

/-! ## A109964.P5782236711328957367

`floor(Δ[floor(a(n-1))+sqrt(a(n-1))])` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A109964.P5782236711328957367
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.rec [1] fun n f1 =>
  (⌊f1 (n - 1)⌋ : ℝ) + Real.sqrt (f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (n + 1) - f1 n⌋

end

end A109964.P5782236711328957367

namespace A109964

/-- `floor(Δ[floor(a(n-1))+sqrt(a(n-1))])` -/
def P5782236711328957367.Spec : Prop :=
  ∀ n, P5782236711328957367.a n = A109964 n

end A109964

/-! ## A109964.P1870306018667437260

`round(eq[n-2, lcm(1-and(n, n-1), n-2)]/4)`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A109964

/-- `round(eq[n-2, lcm(1-and(n, n-1), n-2)]/4)` -/
def P1870306018667437260.Spec : Prop :=
  ∀ n, P1870306018667437260.a n = A109964 n

theorem P1870306018667437260.correct : P1870306018667437260.Spec := by
  intro n
  simp only [A109964]

end A109964

/-! ## A109964.P13912288868760806069

`round((eq[n+1, gcd(n+1, and(n+1, n+2))]+2)/4)`
-/

namespace A109964.P13912288868760806069
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (n + 1) (Nat.land (n + 1) (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2 : ℚ) / 4)

end

end A109964.P13912288868760806069

namespace A109964

/-- `round((eq[n+1, gcd(n+1, and(n+1, n+2))]+2)/4)` -/
def P13912288868760806069.Spec : Prop :=
  ∀ n, P13912288868760806069.a n = A109964 n

end A109964

/-! ## A109964.P17678207211177388375

`floor(sqrt(A109965(n)))`
-/

namespace A109964.P17678207211177388375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A109965 n)

end

end A109964.P17678207211177388375

namespace A109964

/-- `floor(sqrt(A109965(n)))` -/
def P17678207211177388375.Spec : Prop :=
  ∀ n, P17678207211177388375.a n = A109964 n

end A109964

/-! ## A109964.P2890819891011850778

`round(A103354(n+1)/2)`
-/

namespace A109964.P2890819891011850778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A103354 (n + 1) : ℚ) / 2)

end

end A109964.P2890819891011850778

namespace A109964

/-- `round(A103354(n+1)/2)` -/
def P2890819891011850778.Spec : Prop :=
  ∀ n, P2890819891011850778.a n = A109964 n

end A109964

/-! ## A109964.P12627640470145845821

`round(A088948(n+1)/4)`
-/

namespace A109964.P12627640470145845821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A088948 (n + 1) : ℚ) / 4)

end

end A109964.P12627640470145845821

namespace A109964

/-- `round(A088948(n+1)/4)` -/
def P12627640470145845821.Spec : Prop :=
  ∀ n, P12627640470145845821.a n = A109964 n

end A109964

/-! ## A109964.P5015284879903084703

`floor(sqrt(A002984(abs(1-n))))`
-/

namespace A109964.P5015284879903084703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A002984 |1 - (n : ℤ)|.toNat)

end

end A109964.P5015284879903084703

namespace A109964

/-- `floor(sqrt(A002984(abs(1-n))))` -/
def P5015284879903084703.Spec : Prop :=
  ∀ n, P5015284879903084703.a n = A109964 n

end A109964

/-! ## A109964.P10749843331932666083

`A103354(n-a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A109964.P10749843331932666083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A103354 ((n : ℤ) - a (n - 1)).toNat

end

end A109964.P10749843331932666083

namespace A109964

/-- `A103354(n-a(n-1))` -/
def P10749843331932666083.Spec : Prop :=
  ∀ n, P10749843331932666083.a n = A109964 n

end A109964

/-! ## A109964.P14769768037743367338

`∑[char[comp[A011782(n)+n]+n]]`
-/

namespace A109964.P14769768037743367338
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n + (n : ℤ)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n + n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109964.P14769768037743367338

namespace A109964

/-- `∑[char[comp[A011782(n)+n]+n]]` -/
def P14769768037743367338.Spec : Prop :=
  ∀ n, (P14769768037743367338.a n : ℤ) = A109964 n

end A109964

/-! ## A109964.P10307061570918491936

`round(∑[char[comp[2^n+n]]]/A020639(2*(n+1)))`
-/

namespace A109964.P10307061570918491936
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n + n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (A020639 (2 * (n + 1)) : ℚ))

end

end A109964.P10307061570918491936

namespace A109964

/-- `round(∑[char[comp[2^n+n]]]/A020639(2*(n+1)))` -/
def P10307061570918491936.Spec : Prop :=
  ∀ n, P10307061570918491936.a n = A109964 n

end A109964

/-! ## A109964.P1430153442074058778

`A065033(A103354(n+1))`
-/

namespace A109964.P1430153442074058778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A103354 (n + 1)).toNat

end

end A109964.P1430153442074058778

namespace A109964

/-- `A065033(A103354(n+1))` -/
def P1430153442074058778.Spec : Prop :=
  ∀ n, P1430153442074058778.a n = A109964 n

end A109964

/-! ## A109964.P9098030409241825002

`A008619(∑[A288132(n+1)])`
-/

namespace A109964.P9098030409241825002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288132 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A109964.P9098030409241825002

namespace A109964

/-- `A008619(∑[A288132(n+1)])` -/
def P9098030409241825002.Spec : Prop :=
  ∀ n, P9098030409241825002.a n = A109964 n

end A109964

/-! ## A109964.P8050857194462238151

`A008619(A103354(n+1)-1)`
-/

namespace A109964.P8050857194462238151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A103354 (n + 1) - 1).toNat

end

end A109964.P8050857194462238151

namespace A109964

/-- `A008619(A103354(n+1)-1)` -/
def P8050857194462238151.Spec : Prop :=
  ∀ n, P8050857194462238151.a n = A109964 n

end A109964

/-! ## A109964.P13752810982766271068

`A065033(∑[A288132(n+1)]+1)`
-/

namespace A109964.P13752810982766271068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288132 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A109964.P13752810982766271068

namespace A109964

/-- `A065033(∑[A288132(n+1)]+1)` -/
def P13752810982766271068.Spec : Prop :=
  ∀ n, P13752810982766271068.a n = A109964 n

end A109964

/-! ## A109964.P6280117642849450270

`A065033(∑[A288132(n+2)])`
-/

namespace A109964.P6280117642849450270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288132 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A109964.P6280117642849450270

namespace A109964

/-- `A065033(∑[A288132(n+2)])` -/
def P6280117642849450270.Spec : Prop :=
  ∀ n, P6280117642849450270.a n = A109964 n

end A109964

/-! ## A109964.P14729942683012026877

`A002265(comp[2*lt[1, A302295(n)]]+4)`
-/

namespace A109964.P14729942683012026877
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302295 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 4)

end

end A109964.P14729942683012026877

namespace A109964

/-- `A002265(comp[2*lt[1, A302295(n)]]+4)` -/
def P14729942683012026877.Spec : Prop :=
  ∀ n, P14729942683012026877.a n = A109964 n

end A109964

/-! ## A109964.P1392567935895346356

`Δ[A028392(a(n-1))]` with `a(0)=0, a(1)=1`
-/

namespace A109964.P1392567935895346356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  A028392 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A109964.P1392567935895346356

namespace A109964

/-- `Δ[A028392(a(n-1))]` -/
def P1392567935895346356.Spec : Prop :=
  ∀ n, P1392567935895346356.a n = A109964 n

end A109964

/-! ## A109964.P13112476754188452569

`A000196(A109965(n))`
-/

namespace A109964.P13112476754188452569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A109965 n).toNat

end

end A109964.P13112476754188452569

namespace A109964

/-- `A000196(A109965(n))` -/
def P13112476754188452569.Spec : Prop :=
  ∀ n, P13112476754188452569.a n = A109964 n

end A109964

/-!
# A109965: Sum_i {i

The programs for A109965, the canonical program `A109965.P8116147698374291402` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109965 has offset 0).

The definition of A109965 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A109965.P8116147698374291402

`a(n-1)+floor(sqrt(a(n-1)))` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A109965

/-- `a(n-1)+floor(sqrt(a(n-1)))` -/
def P8116147698374291402.Spec : Prop :=
  ∀ n, (P8116147698374291402.a n : ℤ) = A109965 n

theorem P8116147698374291402.correct : P8116147698374291402.Spec := by
  intro n
  simp only [A109965]

end A109965

/-! ## A109965.P12008334156651842090

`a(n-1)+floor(a(n-1)^(1/2))` with `a(0)=1, a(1)=1`
-/

namespace A109965.P12008334156651842090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) + ⌊(a (n - 1) : ℝ) ^ ((1 : ℚ) / 2 : ℝ)⌋

end

end A109965.P12008334156651842090

namespace A109965

/-- `a(n-1)+floor(a(n-1)^(1/2))` -/
def P12008334156651842090.Spec : Prop :=
  ∀ n, P12008334156651842090.a n = A109965 n

end A109965

/-! ## A109965.P15898537506194822429

`a(n-1)+A109964(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A109965.P15898537506194822429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) + A109964 (n - 1)

end

end A109965.P15898537506194822429

namespace A109965

/-- `a(n-1)+A109964(n-1)` -/
def P15898537506194822429.Spec : Prop :=
  ∀ n, P15898537506194822429.a n = A109965 n

end A109965

/-! ## A109965.P9017527758277086896

`round(a(n-1)+sqrt(a(n-2)))` with `a(0)=1, a(1)=1`
-/

namespace A109965.P9017527758277086896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  SequenceMachineLib.roundAway ((a (n - 1) : ℝ) + Real.sqrt (a (n - 2) : ℝ))

end

end A109965.P9017527758277086896

namespace A109965

/-- `round(a(n-1)+sqrt(a(n-2)))` -/
def P9017527758277086896.Spec : Prop :=
  ∀ n, P9017527758277086896.a n = A109965 n

end A109965

/-! ## A109965.P5344975002971321617

`ceil(a(n-1)+sqrt(a(n-3)))` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A109965.P5344975002971321617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  ⌈(a (n - 1) : ℝ) + Real.sqrt (a (n - 3) : ℝ)⌉

end

end A109965.P5344975002971321617

namespace A109965

/-- `ceil(a(n-1)+sqrt(a(n-3)))` -/
def P5344975002971321617.Spec : Prop :=
  ∀ n, P5344975002971321617.a n = A109965 n

end A109965

/-! ## A109965.P8723125927925403516

`round(a(n-1)+root(a(n-2), 2))` with `a(0)=1, a(1)=1`
-/

namespace A109965.P8723125927925403516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  SequenceMachineLib.roundAway ((a (n - 1) : ℝ) + (a (n - 2) : ℝ) ^ (1 / (2 : ℝ)))

end

end A109965.P8723125927925403516

namespace A109965

/-- `round(a(n-1)+root(a(n-2), 2))` -/
def P8723125927925403516.Spec : Prop :=
  ∀ n, P8723125927925403516.a n = A109965 n

end A109965

/-! ## A109965.P13671029571031118662

`A002984((n-1)%(n+1))`
-/

namespace A109965.P13671029571031118662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002984 (Int.tmod ((n : ℤ) - 1) (n + 1 : ℤ)).toNat

end

end A109965.P13671029571031118662

namespace A109965

/-- `A002984((n-1)%(n+1))` -/
def P13671029571031118662.Spec : Prop :=
  ∀ n, P13671029571031118662.a n = A109965 n

end A109965

/-! ## A109965.P14792091692976887361

`A103354(n)+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A109965.P14792091692976887361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A103354 n + a (n - 2)

end

end A109965.P14792091692976887361

namespace A109965

/-- `A103354(n)+a(n-2)` -/
def P14792091692976887361.Spec : Prop :=
  ∀ n, P14792091692976887361.a n = A109965 n

end A109965

/-! ## A109965.P8283963869216861881

`A002984(A289207(n+1))`
-/

namespace A109965.P8283963869216861881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002984 (A289207 (n + 1)).toNat

end

end A109965.P8283963869216861881

namespace A109965

/-- `A002984(A289207(n+1))` -/
def P8283963869216861881.Spec : Prop :=
  ∀ n, P8283963869216861881.a n = A109965 n

end A109965

/-! ## A109965.P12616301173755131067

`A002984(n+1)-A103354(n+2)`
-/

namespace A109965.P12616301173755131067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002984 (n + 1) - A103354 (n + 2)

end

end A109965.P12616301173755131067

namespace A109965

/-- `A002984(n+1)-A103354(n+2)` -/
def P12616301173755131067.Spec : Prop :=
  ∀ n, P12616301173755131067.a n = A109965 n

end A109965

/-! ## A109965.P16899500207298377097

`A002984(n-A179184(n+2))`
-/

namespace A109965.P16899500207298377097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002984 ((n : ℤ) - A179184 (n + 2)).toNat

end

end A109965.P16899500207298377097

namespace A109965

/-- `A002984(n-A179184(n+2))` -/
def P16899500207298377097.Spec : Prop :=
  ∀ n, P16899500207298377097.a n = A109965 n

end A109965

/-! ## A109965.P1557871056298084743

`A002984(A289207(2*n)/2)`
-/

namespace A109965.P1557871056298084743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002984 (SequenceMachineLib.roundAway ((A289207 (2 * n) : ℚ) / 2)).toNat

end

end A109965.P1557871056298084743

namespace A109965

/-- `A002984(A289207(2*n)/2)` -/
def P1557871056298084743.Spec : Prop :=
  ∀ n, P1557871056298084743.a n = A109965 n

end A109965

/-! ## A109965.P4208123614996934656

`A028392(a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A109965.P4208123614996934656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A028392 (a (n - 1)).toNat

end

end A109965.P4208123614996934656

namespace A109965

/-- `A028392(a(n-1))` -/
def P4208123614996934656.Spec : Prop :=
  ∀ n, P4208123614996934656.a n = A109965 n

end A109965

/-! ## A109965.P745814916895554100

`A002984(A000196(n²-n))`
-/

namespace A109965.P745814916895554100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002984 (A000196 (n ^ 2 - n)).toNat

end

end A109965.P745814916895554100

namespace A109965

/-- `A002984(A000196(n²-n))` -/
def P745814916895554100.Spec : Prop :=
  ∀ n, P745814916895554100.a n = A109965 n

end A109965

/-!
# A109966: a(n) = 8^((n^2-n)/2).

The programs for A109966, the canonical program `A109966.P10310602025804884205` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109966 has offset 0).

The definition of A109966 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A109966.P10310602025804884205

`8^C(n, 2)`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A109966

/-- `8^C(n, 2)` -/
def P10310602025804884205.Spec : Prop :=
  ∀ n, (P10310602025804884205.a n : ℤ) = A109966 n

theorem P10310602025804884205.correct : P10310602025804884205.Spec := by
  intro n
  simp only [A109966]

end A109966

/-! ## A109966.P17842593374450082749

`8^((n²-n)/2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A109966.P17842593374450082749
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (8 : ℝ) ^ (((n ^ 2 : ℤ) - (n : ℤ) : ℚ) / 2 : ℝ)

end

end A109966.P17842593374450082749

namespace A109966

/-- `8^((n²-n)/2)` -/
def P17842593374450082749.Spec : Prop :=
  ∀ n, P17842593374450082749.a n = (A109966 n : ℝ)

end A109966

/-! ## A109966.P2362311314408923165

`∏[8*a(n-1)]` with `a(0)=1, a(1)=1`
-/

namespace A109966.P2362311314408923165
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  8 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A109966.P2362311314408923165

namespace A109966

/-- `∏[8*a(n-1)]` -/
def P2362311314408923165.Spec : Prop :=
  ∀ n, (P2362311314408923165.a n : ℤ) = A109966 n

end A109966

/-! ## A109966.P11352218566870675464

`∏[8^((2*n)%(n+1))]`
-/

namespace A109966.P11352218566870675464
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 ^ (2 * n % (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A109966.P11352218566870675464

namespace A109966

/-- `∏[8^((2*n)%(n+1))]` -/
def P11352218566870675464.Spec : Prop :=
  ∀ n, (P11352218566870675464.a n : ℤ) = A109966 n

end A109966

/-! ## A109966.P15470742818466520861

`∏{d}[floor(2^(n-1)), #^3]`
-/

namespace A109966.P15470742818466520861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, d ^ 3

end

end A109966.P15470742818466520861

namespace A109966

/-- `∏{d}[floor(2^(n-1)), #^3]` -/
def P15470742818466520861.Spec : Prop :=
  ∀ n, (P15470742818466520861.a n : ℤ) = A109966 n

end A109966

/-!
# A109967: First differences of A088670.

The programs for A109967, there is no canonical definition to state claims against.
-/

/-! ## A109967.P3731610648111015284

`Δ[A088670(n+1)]`
-/

namespace A109967.P3731610648111015284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088670 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A109967.P3731610648111015284

/-! ## A109967.P13037888628073445392

`A088670(n+2)-A088670(n+1)`
-/

namespace A109967.P13037888628073445392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088670 (n + 2) - A088670 (n + 1)

end

end A109967.P13037888628073445392

/-! ## A109967.P1266420224203377817

`Δ[A091581(n+1)%A285450(n+1)]`
-/

namespace A109967.P1266420224203377817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A091581 (n + 1)) (A285450 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A109967.P1266420224203377817

/-! ## A109967.P290313620871912014

`Δ[A091581(n+1)]%A285448(n+2)`
-/

namespace A109967.P290313620871912014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091581 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A285448 (n + 2))

end

end A109967.P290313620871912014

/-! ## A109967.P16705511803355892640

`Δ[A091581(n+1)]^A000034(A270214(n))`
-/

namespace A109967.P16705511803355892640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091581 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) ^ (A000034 (A270214 n).toNat : ℤ)

end

end A109967.P16705511803355892640

/-! ## A109967.P6827126930355187724

`Δ[A091581(n+1)]/A000034(A270214(n+1))`
-/

namespace A109967.P6827126930355187724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091581 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A000034 (A270214 (n + 1)).toNat : ℚ)

end

end A109967.P6827126930355187724

/-! ## A109967.P6827709609534375174

`Δ[A091581(n+1)]*A130543(A048229(n+1))`
-/

namespace A109967.P6827709609534375174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091581 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A130543 (A048229 (n + 1)).toNat

end

end A109967.P6827709609534375174

/-! ## A109967.P14466061858340796783

`Δ[A130543(A048229(n+2))+A091581(n+1)]`
-/

namespace A109967.P14466061858340796783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130543 (A048229 (n + 2)).toNat + A091581 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A109967.P14466061858340796783

/-!
# A109968: Number of partitions of n into decimal repdigits of distinct digits.

The programs for A109968, there is no canonical definition to state claims against.
-/

/-! ## A109968.P11056787874678093666

`A109969(n-1)+a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A109968.P11056787874678093666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A109969 (n - 1) + a (n - 1)

end

end A109968.P11056787874678093666

/-!
# A109969: First differences of A109968.

The programs for A109969, there is no canonical definition to state claims against.
-/

/-! ## A109969.P8628993940505815632

`Δ[A109968(n+1)]`
-/

namespace A109969.P8628993940505815632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109968 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A109969.P8628993940505815632

/-! ## A109969.P16797741437831841033

`Δ[Δ[∑[A109968(n)]-n]]`
-/

namespace A109969.P16797741437831841033
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109968 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j - (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A109969.P16797741437831841033

/-! ## A109969.P13415704786677671229

`A109968(n+2)-A109968(n+1)`
-/

namespace A109969.P13415704786677671229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109968 (n + 2) - A109968 (n + 1)

end

end A109969.P13415704786677671229

/-! ## A109969.P7924048773680852878

`C(A105518(2*n), A171881(A291680(n)))`
-/

namespace A109969.P7924048773680852878
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A105518 (2 * n)).toNat (A171881 (A291680 n).toNat).toNat

end

end A109969.P7924048773680852878

/-! ## A109969.P3790836740771985405

`A001221(A338654(n)*A347811(n))`
-/

namespace A109969.P3790836740771985405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A338654 n * A347811 n).toNat

end

end A109969.P3790836740771985405

/-!
# A109970: Riordan array (1,x(1-x)^2).

The programs for A109970, the canonical program `A109970.P16827285265725124377` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109970 has offset 0).

The definition of A109970 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A109970.P16827285265725124377

`A097807(n)*A116088(n)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A109970

/-- `A097807(n)*A116088(n)` -/
def P16827285265725124377.Spec : Prop :=
  ∀ n, P16827285265725124377.a n = A109970 n

theorem P16827285265725124377.correct : P16827285265725124377.Spec := by
  intro n
  simp only [A109970]

end A109970

/-! ## A109970.P4197539516170548646

`A033999(A025581(n))*A116088(n)`
-/

namespace A109970.P4197539516170548646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A025581 n).toNat * A116088 n

end

end A109970.P4197539516170548646

namespace A109970

/-- `A033999(A025581(n))*A116088(n)` -/
def P4197539516170548646.Spec : Prop :=
  ∀ n, P4197539516170548646.a n = A109970 n

end A109970

/-! ## A109970.P16818423696660175048

`A033999(A067731(n))*A116088(n)`
-/

namespace A109970.P16818423696660175048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A067731 n).toNat * A116088 n

end

end A109970.P16818423696660175048

namespace A109970

/-- `A033999(A067731(n))*A116088(n)` -/
def P16818423696660175048.Spec : Prop :=
  ∀ n, P16818423696660175048.a n = A109970 n

end A109970

/-! ## A109970.P13251471699318804926

`A033999(A108872(n+1))*A116088(n)`
-/

namespace A109970.P13251471699318804926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A108872 (n + 1)).toNat * A116088 n

end

end A109970.P13251471699318804926

namespace A109970

/-- `A033999(A108872(n+1))*A116088(n)` -/
def P13251471699318804926.Spec : Prop :=
  ∀ n, P13251471699318804926.a n = A109970 n

end A109970

/-! ## A109970.P7498598976894441384

`A116088(n)/A097807(A014132(n+1))`
-/

namespace A109970.P7498598976894441384
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A116088 n : ℚ) / (A097807 (A014132 (n + 1)).toNat : ℚ)

end

end A109970.P7498598976894441384

namespace A109970

/-- `A116088(n)/A097807(A014132(n+1))` -/
def P7498598976894441384.Spec : Prop :=
  ∀ n, P7498598976894441384.a n = (A109970 n : ℚ)

end A109970

/-! ## A109970.P7706206587462250295

`A085478(n)*A116088(n)/A129818(n)`
-/

namespace A109970.P7706206587462250295
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085478 n * A116088 n : ℚ) / (A129818 n : ℚ)

end

end A109970.P7706206587462250295

namespace A109970

/-- `A085478(n)*A116088(n)/A129818(n)` -/
def P7706206587462250295.Spec : Prop :=
  ∀ n, P7706206587462250295.a n = (A109970 n : ℚ)

end A109970

/-! ## A109970.P9082209046087867283

`A109466(A245300(n)+A002262(n))`
-/

namespace A109970.P9082209046087867283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109466 (A245300 n + A002262 n).toNat

end

end A109970.P9082209046087867283

namespace A109970

/-- `A109466(A245300(n)+A002262(n))` -/
def P9082209046087867283.Spec : Prop :=
  ∀ n, P9082209046087867283.a n = A109970 n

end A109970

/-! ## A109970.P15863825181922013436

`A116088(n)*A158388(A168561(n))`
-/

namespace A109970.P15863825181922013436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116088 n * A158388 (A168561 n).toNat

end

end A109970.P15863825181922013436

namespace A109970

/-- `A116088(n)*A158388(A168561(n))` -/
def P15863825181922013436.Spec : Prop :=
  ∀ n, P15863825181922013436.a n = A109970 n

end A109970

/-! ## A109970.P9967130825514129321

`A004718(A130321(n))*A116088(n)`
-/

namespace A109970.P9967130825514129321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004718 (A130321 n).toNat * A116088 n

end

end A109970.P9967130825514129321

namespace A109970

/-- `A004718(A130321(n))*A116088(n)` -/
def P9967130825514129321.Spec : Prop :=
  ∀ n, P9967130825514129321.a n = A109970 n

end A109970

/-!
# A109971: Inverse of Riordan array (1,x(1-x)^2), A109970.

The programs for A109971, there is no canonical definition to state claims against.
-/

/-! ## A109971.P6528677000630366975

`A143603(n+1)-A143603(n+2)%A092276(n+1)`
-/

namespace A109971.P6528677000630366975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143603 (n + 1) - Int.tmod (A143603 (n + 2)) (A092276 (n + 1))

end

end A109971.P6528677000630366975

/-! ## A109971.P5197549599581627560

`A124305(floor(1/(γ-n))+(1-round(sqrt(2*(n+1))))²+2*n+1)`
-/

namespace A109971.P5197549599581627560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124305 (⌊1 / (Real.eulerMascheroniConstant - (n : ℝ))⌋ + ((1 - SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ))) ^ 2 + (2 * n + 1 : ℤ))).toNat

end

end A109971.P5197549599581627560

/-! ## A109971.P17628673947811680055

`A357585(n)-A307598(A357585(n))`
-/

namespace A109971.P17628673947811680055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357585 n - A307598 (A357585 n).toNat

end

end A109971.P17628673947811680055

/-! ## A109971.P11762498886941277591

`A000196(A084938(n)*A136124(n+2))`
-/

namespace A109971.P11762498886941277591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A084938 n * A136124 (n + 2)).toNat

end

end A109971.P11762498886941277591

/-!
# A109972: Diagonal sums of number triangle A109970.

The programs for A109972, there is no canonical definition to state claims against.
-/

/-! ## A109972.P12912245542139024984

`A008647(Δ[A040027(n)])`
-/

namespace A109972.P12912245542139024984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040027 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008647 (f1 (n + 1) - f1 n).toNat

end

end A109972.P12912245542139024984

/-! ## A109972.P3241281427343509168

`A008679(Δ[A040027(n)])`
-/

namespace A109972.P3241281427343509168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040027 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008679 (f1 (n + 1) - f1 n).toNat

end

end A109972.P3241281427343509168

/-! ## A109972.P234634575234221034

`A081753(Δ[A040027(n)])`
-/

namespace A109972.P234634575234221034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040027 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081753 (f1 (n + 1) - f1 n).toNat

end

end A109972.P234634575234221034

/-!
# A109973: First repeating NA iterates. The NA (Noun-Adjective) function of a finite sequence s of nonnegative integers is the finite sequence 0a1b2c...mz, where a = #0's in s, b = #1's in s, ..., z = #m's in s, m = greatest term in s.

The programs for A109973, there is no canonical definition to state claims against.
-/

/-! ## A109973.P17986353822992503211

`A191654(xor(1, n)+1)`
-/

namespace A109973.P17986353822992503211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191654 (Nat.xor 1 n + 1)

end

end A109973.P17986353822992503211

/-! ## A109973.P1059793077117501505

`A191654(2*or(1, n)-n)`
-/

namespace A109973.P1059793077117501505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191654 (2 * Nat.lor 1 n - n)

end

end A109973.P1059793077117501505

/-! ## A109973.P16711855798799226118

`A191654((-1)^n+n+1)`
-/

namespace A109973.P16711855798799226118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191654 ((-1) ^ n + (n + 1 : ℤ)).toNat

end

end A109973.P16711855798799226118

/-! ## A109973.P2309619174285224806

`dr(A191654(A014681(n+1)))`
-/

namespace A109973.P2309619174285224806
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A191654 (A014681 (n + 1)).toNat)

end

end A109973.P2309619174285224806

/-! ## A109973.P11373633887080250723

`A054977(n)*A191654(A014681(n+1))`
-/

namespace A109973.P11373633887080250723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n * A191654 (A014681 (n + 1)).toNat

end

end A109973.P11373633887080250723

/-! ## A109973.P1890136548481550220

`A057427(n)*A191654(A014681(n+1))`
-/

namespace A109973.P1890136548481550220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A191654 (A014681 (n + 1)).toNat

end

end A109973.P1890136548481550220

/-! ## A109973.P5205328475534256344

`lcm(A062157(n), A191654(A014681(n+1)))`
-/

namespace A109973.P5205328475534256344
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A062157 n) (A191654 (A014681 (n + 1)).toNat)

end

end A109973.P5205328475534256344

/-!
# A109974: Array read by downwards antidiagonals: sigma_k(n) for n >= 1, k >= 0.

The programs for A109974, the canonical program `A109974.P2214011444914212300` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109974 has offset 0).

The definition of A109974 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4726 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A109974.P2214011444914212300

`∑{d}[A004736(n+1), #^A002262(n)]`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A109974

/-- `∑{d}[A004736(n+1), #^A002262(n)]` -/
def P2214011444914212300.Spec : Prop :=
  ∀ n, P2214011444914212300.a n = (A109974 n : ℚ)

end A109974

/-! ## A109974.P5702850048854699331

`∑{d}[A025581(n)+1, #^A002262(n)]`
-/

namespace A109974.P5702850048854699331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (d : ℚ) ^ (A002262 n : ℤ)

end

end A109974.P5702850048854699331

namespace A109974

/-- `∑{d}[A025581(n)+1, #^A002262(n)]` -/
def P5702850048854699331.Spec : Prop :=
  ∀ n, P5702850048854699331.a n = (A109974 n : ℚ)

end A109974

/-! ## A109974.P542068196259454477

`∑{d}[A004736(n+1), #^A191532(n)]`
-/

namespace A109974.P542068196259454477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (d : ℚ) ^ (A191532 n : ℤ)

end

end A109974.P542068196259454477

namespace A109974

/-- `∑{d}[A004736(n+1), #^A191532(n)]` -/
def P542068196259454477.Spec : Prop :=
  ∀ n, P542068196259454477.a n = (A109974 n : ℚ)

end A109974

/-! ## A109974.P4154607238874148197

`∑{d}[A004736(n+1), #^(A002024(n+1)-A004736(n+1))]`
-/

namespace A109974.P4154607238874148197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (d : ℚ) ^ (A002024 (n + 1) - A004736 (n + 1) : ℤ)

end

end A109974.P4154607238874148197

namespace A109974

/-- `∑{d}[A004736(n+1), #^(A002024(n+1)-A004736(n+1))]` -/
def P4154607238874148197.Spec : Prop :=
  ∀ n, P4154607238874148197.a n = (A109974 n : ℚ)

end A109974

/-! ## A109974.P4341154761780339159

`∑{d}[A000005(A130321(n)), #^A002262(n)]`
-/

namespace A109974.P4341154761780339159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A130321 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (d : ℚ) ^ (A002262 n : ℤ)

end

end A109974.P4341154761780339159

namespace A109974

/-- `∑{d}[A000005(A130321(n)), #^A002262(n)]` -/
def P4341154761780339159.Spec : Prop :=
  ∀ n, P4341154761780339159.a n = (A109974 n : ℚ)

end A109974

/-! ## A109974.P13972314175822438440

`A279394(∑[char[∑[n]]]²-n)`
-/

namespace A109974.P13972314175822438440
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279394 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A109974.P13972314175822438440

namespace A109974

/-- `A279394(∑[char[∑[n]]]²-n)` -/
def P13972314175822438440.Spec : Prop :=
  ∀ n, P13972314175822438440.a n = A109974 n

end A109974

/-!
# A109975: Second differences of A045623, prefixed by an initial 1.

The programs for A109975, the canonical program `A109975.P6480111214704536251` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109975 has offset 0).

The definition of A109975 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 327 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A109975.P7256895854397243308

`ogf((1-2x+x^3)/(1-4x+4x^2))`
-/

namespace A109975.P7256895854397243308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, 0, 1] [1, -4, 4] n

end

end A109975.P7256895854397243308

namespace A109975

/-- `ogf((1-2x+x^3)/(1-4x+4x^2))` -/
def P7256895854397243308.Spec : Prop :=
  ∀ n, P7256895854397243308.a n = A109975 n

end A109975

/-! ## A109975.P6480111214704536251

`record[A034007(n)]`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A109975

/-- `record[A034007(n)]` -/
def P6480111214704536251.Spec : Prop :=
  ∀ n, P6480111214704536251.a n = A109975 n

theorem P6480111214704536251.correct : P6480111214704536251.Spec := by
  intro n
  simp only [A109975]

end A109975

/-! ## A109975.P3743004691747198562

`A034007((n+1)%(2*n+1))`
-/

namespace A109975.P3743004691747198562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034007 ((n + 1) % (2 * n + 1))

end

end A109975.P3743004691747198562

namespace A109975

/-- `A034007((n+1)%(2*n+1))` -/
def P3743004691747198562.Spec : Prop :=
  ∀ n, P3743004691747198562.a n = A109975 n

end A109975

/-! ## A109975.P11002238714136953145

`A111297(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A109975.P11002238714136953145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A111297 (n - 1) + a (n - 1)

end

end A109975.P11002238714136953145

namespace A109975

/-- `A111297(n-1)+a(n-1)` -/
def P11002238714136953145.Spec : Prop :=
  ∀ n, P11002238714136953145.a n = A109975 n

end A109975

/-! ## A109975.P16056517179853212165

`A034007(A087156(n+1))`
-/

namespace A109975.P16056517179853212165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034007 (A087156 (n + 1)).toNat

end

end A109975.P16056517179853212165

namespace A109975

/-- `A034007(A087156(n+1))` -/
def P16056517179853212165.Spec : Prop :=
  ∀ n, P16056517179853212165.a n = A109975 n

end A109975

/-! ## A109975.P4153820754819706257

`A034007(A199969(n+2))`
-/

namespace A109975.P4153820754819706257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034007 (A199969 (n + 2)).toNat

end

end A109975.P4153820754819706257

namespace A109975

/-- `A034007(A199969(n+2))` -/
def P4153820754819706257.Spec : Prop :=
  ∀ n, P4153820754819706257.a n = A109975 n

end A109975

/-! ## A109975.P12692662741559014273

`A166444(n)+A045891(n)`
-/

namespace A109975.P12692662741559014273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166444 n + A045891 n

end

end A109975.P12692662741559014273

namespace A109975

/-- `A166444(n)+A045891(n)` -/
def P12692662741559014273.Spec : Prop :=
  ∀ n, P12692662741559014273.a n = A109975 n

end A109975

/-! ## A109975.P1157849315587197267

`A358587(n+1)+A084172(n)`
-/

namespace A109975.P1157849315587197267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358587 (n + 1) + A084172 n

end

end A109975.P1157849315587197267

namespace A109975

/-- `A358587(n+1)+A084172(n)` -/
def P1157849315587197267.Spec : Prop :=
  ∀ n, P1157849315587197267.a n = A109975 n

end A109975

/-! ## A109975.P8451254570600301655

`A034007(n/A028310(n)+n)`
-/

namespace A109975.P8451254570600301655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034007 (SequenceMachineLib.roundAway ((n : ℚ) / (A028310 n : ℚ) + (n : ℚ))).toNat

end

end A109975.P8451254570600301655

namespace A109975

/-- `A034007(n/A028310(n)+n)` -/
def P8451254570600301655.Spec : Prop :=
  ∀ n, P8451254570600301655.a n = A109975 n

end A109975

/-! ## A109975.P3996296568359304797

`A034007(2*n+1-A028310(n))`
-/

namespace A109975.P3996296568359304797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034007 ((2 * n + 1 : ℤ) - A028310 n).toNat

end

end A109975.P3996296568359304797

namespace A109975

/-- `A034007(2*n+1-A028310(n))` -/
def P3996296568359304797.Spec : Prop :=
  ∀ n, P3996296568359304797.a n = A109975 n

end A109975

/-! ## A109975.P9394306123381499469

`A034007(n+1)+char[A181582(n+1)²]`
-/

namespace A109975.P9394306123381499469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181582 (n + 1) ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034007 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A109975.P9394306123381499469

namespace A109975

/-- `A034007(n+1)+char[A181582(n+1)²]` -/
def P9394306123381499469.Spec : Prop :=
  ∀ n, P9394306123381499469.a n = A109975 n

end A109975

/-! ## A109975.P6794899503430709118

`A034007(n+1)+char[A181581(2*n+3)]`
-/

namespace A109975.P6794899503430709118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181581 (2 * n + 3)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034007 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A109975.P6794899503430709118

namespace A109975

/-- `A034007(n+1)+char[A181581(2*n+3)]` -/
def P6794899503430709118.Spec : Prop :=
  ∀ n, P6794899503430709118.a n = A109975 n

end A109975

/-! ## A109975.P4490564106525836822

`A034007(n+1)+char[A181582(3*n+2)]`
-/

namespace A109975.P4490564106525836822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181582 (3 * n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034007 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A109975.P4490564106525836822

namespace A109975

/-- `A034007(n+1)+char[A181582(3*n+2)]` -/
def P4490564106525836822.Spec : Prop :=
  ∀ n, P4490564106525836822.a n = A109975 n

end A109975

/-! ## A109975.P13563591154350581904

`A181587(A004277(n))+A034007(n+1)`
-/

namespace A109975.P13563591154350581904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181587 (A004277 n).toNat + A034007 (n + 1)

end

end A109975.P13563591154350581904

namespace A109975

/-- `A181587(A004277(n))+A034007(n+1)` -/
def P13563591154350581904.Spec : Prop :=
  ∀ n, P13563591154350581904.a n = A109975 n

end A109975

/-! ## A109975.P18414592615903388257

`A139756(A289207(n+1))+A000079(n)`
-/

namespace A109975.P18414592615903388257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139756 (A289207 (n + 1)).toNat + A000079 n

end

end A109975.P18414592615903388257

namespace A109975

/-- `A139756(A289207(n+1))+A000079(n)` -/
def P18414592615903388257.Spec : Prop :=
  ∀ n, P18414592615903388257.a n = A109975 n

end A109975

/-! ## A109975.P9588148900390723312

`∑[A034008(n)]+A045891(n)-A034008(n)`
-/

namespace A109975.P9588148900390723312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034008 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A045891 n - A034008 n)

end

end A109975.P9588148900390723312

namespace A109975

/-- `∑[A034008(n)]+A045891(n)-A034008(n)` -/
def P9588148900390723312.Spec : Prop :=
  ∀ n, P9588148900390723312.a n = A109975 n

end A109975

/-! ## A109975.P6947848735792842060

`A034007(n+1)+char[A034007(A181581(2*n))]`
-/

namespace A109975.P6947848735792842060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034007 (A181581 (2 * n)).toNat

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034007 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A109975.P6947848735792842060

namespace A109975

/-- `A034007(n+1)+char[A034007(A181581(2*n))]` -/
def P6947848735792842060.Spec : Prop :=
  ∀ n, P6947848735792842060.a n = A109975 n

end A109975

/-! ## A109975.P10102256635749390021

`4*a(n-1)-4*a(n-2)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=9`
-/

namespace A109975.P10102256635749390021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4, 9] fun n a =>
  4 * a (n - 1) - 4 * a (n - 2)

end

end A109975.P10102256635749390021

namespace A109975

/-- `4*a(n-1)-4*a(n-2)` -/
def P10102256635749390021.Spec : Prop :=
  ∀ n, P10102256635749390021.a n = A109975 n

end A109975

/-! ## A109975.P13473592831751019408

`ceil(A129955(n)/2)`
-/

namespace A109975.P13473592831751019408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A129955 n : ℚ) / 2⌉

end

end A109975.P13473592831751019408

namespace A109975

/-- `ceil(A129955(n)/2)` -/
def P13473592831751019408.Spec : Prop :=
  ∀ n, P13473592831751019408.a n = A109975 n

end A109975

/-! ## A109975.P18006807604849860846

`A045623(n)-A049610(n)`
-/

namespace A109975.P18006807604849860846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045623 n - A049610 n

end

end A109975.P18006807604849860846

namespace A109975

/-- `A045623(n)-A049610(n)` -/
def P18006807604849860846.Spec : Prop :=
  ∀ n, P18006807604849860846.a n = A109975 n

end A109975

/-!
# A109976: Diagonal sums of number triangle A109974.

The programs for A109976, there is no canonical definition to state claims against.
-/

/-! ## A109976.P10112026471636979811

`A003056(A336024(n))+A002541(n+1)`
-/

namespace A109976.P10112026471636979811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A336024 n).toNat + A002541 (n + 1)

end

end A109976.P10112026471636979811

/-! ## A109976.P480362392047109621

`∑[A226859(A239206(n)+A032555(n+1))]`
-/

namespace A109976.P480362392047109621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226859 (A239206 n + A032555 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109976.P480362392047109621

/-!
# A109980: Number of Delannoy paths of length n with no (1,1)-steps on the line y=x.

The programs for A109980, there is no canonical definition to state claims against.
-/

/-! ## A109980.P1347212486264342952

`A109979(∑[n])`
-/

namespace A109980.P1347212486264342952
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109979 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A109980.P1347212486264342952

/-! ## A109980.P4498266378142166938

`A212205(2*n)`
-/

namespace A109980.P4498266378142166938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212205 (2 * n)

end

end A109980.P4498266378142166938

/-! ## A109980.P877772790131077265

`record[A212205(n)/(-1)^n]`
-/

namespace A109980.P877772790131077265
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A212205 n : ℚ) / ((-1) ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A109980.P877772790131077265

/-! ## A109980.P14596108675222940273

`record[A212205(A014681(n))]`
-/

namespace A109980.P14596108675222940273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212205 (A014681 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A109980.P14596108675222940273

/-! ## A109980.P230452384000308816

`record[A212205(A093411(n)+1)]`
-/

namespace A109980.P230452384000308816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212205 (A093411 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A109980.P230452384000308816

/-! ## A109980.P13803804307672924581

`record[A212205(A000265(n+1)-1)]`
-/

namespace A109980.P13803804307672924581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212205 (A000265 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A109980.P13803804307672924581

/-! ## A109980.P4086128606965966582

`or(A000007(n), A212205(n/sqrt(1/4)))`
-/

namespace A109980.P4086128606965966582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A212205 (SequenceMachineLib.roundAway ((n : ℝ) / Real.sqrt ((1 : ℚ) / 4 : ℝ))).toNat)

end

end A109980.P4086128606965966582

/-! ## A109980.P567251423540010290

`record[A212205(A008619(A266593(n)))]`
-/

namespace A109980.P567251423540010290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212205 (A008619 (A266593 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A109980.P567251423540010290

/-! ## A109980.P15516916150489657145

`record[A212205(A008611(A000265(n+1)))]`
-/

namespace A109980.P15516916150489657145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212205 (A008611 (A000265 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A109980.P15516916150489657145

/-!
# A109981: Primes such that both the sum of digits and the number of digits are primes.

The programs for A109981, the canonical program `A109981.P17615118613321248785` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109981 has offset 1).

The definition of A109981 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3378 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A109981.P17615118613321248785

`∩[A046704(n+1), A120533(n+1)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A109981

/-- `∩[A046704(n+1), A120533(n+1)]` -/
def P17615118613321248785.Spec : Prop :=
  ∀ n, (P17615118613321248785.a n : ℤ) = A109981 (n + 1)

theorem P17615118613321248785.correct : P17615118613321248785.Spec := by
  intro n
  simp only [A109981, Nat.add_sub_cancel]

end A109981

/-! ## A109981.P1591167487370993854

`∩[A028834(n+1), A120533(n+1)]`
-/

namespace A109981.P1591167487370993854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028834 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120533 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109981.P1591167487370993854

namespace A109981

/-- `∩[A028834(n+1), A120533(n+1)]` -/
def P1591167487370993854.Spec : Prop :=
  ∀ n, (P1591167487370993854.a n : ℤ) = A109981 (n + 1)

end A109981

/-! ## A109981.P7514127732921416242

`∩[A120533(n+1), A186773(n+1)]`
-/

namespace A109981.P7514127732921416242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120533 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186773 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109981.P7514127732921416242

namespace A109981

/-- `∩[A120533(n+1), A186773(n+1)]` -/
def P7514127732921416242.Spec : Prop :=
  ∀ n, (P7514127732921416242.a n : ℤ) = A109981 (n + 1)

end A109981

/-! ## A109981.P1969278885457765406

`∑{p}[A046704(n+5)², #]`
-/

namespace A109981.P1969278885457765406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046704 (n + 5) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A109981.P1969278885457765406

namespace A109981

/-- `∑{p}[A046704(n+5)², #]` -/
def P1969278885457765406.Spec : Prop :=
  ∀ n, (P1969278885457765406.a n : ℤ) = A109981 (n + 1)

end A109981

/-! ## A109981.P4712774772701962035

`A343250(A046704(n+5))`
-/

namespace A109981.P4712774772701962035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343250 (A046704 (n + 5)).toNat

end

end A109981.P4712774772701962035

namespace A109981

/-- `A343250(A046704(n+5))` -/
def P4712774772701962035.Spec : Prop :=
  ∀ n, P4712774772701962035.a n = A109981 (n + 1)

end A109981

/-! ## A109981.P18081854363668027910

`A233583(A046704(n+5)+1)`
-/

namespace A109981.P18081854363668027910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A046704 (n + 5) + 1).toNat

end

end A109981.P18081854363668027910

namespace A109981

/-- `A233583(A046704(n+5)+1)` -/
def P18081854363668027910.Spec : Prop :=
  ∀ n, P18081854363668027910.a n = A109981 (n + 1)

end A109981

/-! ## A109981.P844780945204568953

`A002034(10*A046704(n+5))`
-/

namespace A109981.P844780945204568953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002034 (10 * A046704 (n + 5)).toNat

end

end A109981.P844780945204568953

namespace A109981

/-- `A002034(10*A046704(n+5))` -/
def P844780945204568953.Spec : Prop :=
  ∀ n, P844780945204568953.a n = A109981 (n + 1)

end A109981

/-! ## A109981.P4891396731205821826

`∏{p}[A046704(n+5)², A006530(#)]`
-/

namespace A109981.P4891396731205821826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046704 (n + 5) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A006530 p

end

end A109981.P4891396731205821826

namespace A109981

/-- `∏{p}[A046704(n+5)², A006530(#)]` -/
def P4891396731205821826.Spec : Prop :=
  ∀ n, P4891396731205821826.a n = A109981 (n + 1)

end A109981

/-! ## A109981.P7779159002151247716

`∏{p}[A046704(n+5)², A000010(#)+1]`
-/

namespace A109981.P7779159002151247716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046704 (n + 5) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (A000010 p + 1)

end

end A109981.P7779159002151247716

namespace A109981

/-- `∏{p}[A046704(n+5)², A000010(#)+1]` -/
def P7779159002151247716.Spec : Prop :=
  ∀ n, P7779159002151247716.a n = A109981 (n + 1)

end A109981

/-! ## A109981.P18279580467459672418

`A006530(A025772(n)*A046704(n+5))`
-/

namespace A109981.P18279580467459672418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A025772 n * A046704 (n + 5)).toNat

end

end A109981.P18279580467459672418

namespace A109981

/-- `A006530(A025772(n)*A046704(n+5))` -/
def P18279580467459672418.Spec : Prop :=
  ∀ n, P18279580467459672418.a n = A109981 (n + 1)

end A109981

/-!
# A109982: Primes p such that index of p, the sum of p's digits and the number of p's digits are all primes.

The programs for A109982, the canonical program `A109982.P7731114705280804703` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109982 has offset 1).

The definition of A109982 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A109982.P7731114705280804703

`∩[A006450(n+1), A109981(n+1)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A109982

/-- `∩[A006450(n+1), A109981(n+1)]` -/
def P7731114705280804703.Spec : Prop :=
  ∀ n, (P7731114705280804703.a n : ℤ) = A109982 (n + 1)

theorem P7731114705280804703.correct : P7731114705280804703.Spec := by
  intro n
  simp only [A109982, Nat.add_sub_cancel]

end A109982

/-! ## A109982.P7646649582266732412

`∩[A109981(n+1), A175247(n+1)]`
-/

namespace A109982.P7646649582266732412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109981 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175247 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109982.P7646649582266732412

namespace A109982

/-- `∩[A109981(n+1), A175247(n+1)]` -/
def P7646649582266732412.Spec : Prop :=
  ∀ n, (P7646649582266732412.a n : ℤ) = A109982 (n + 1)

end A109982

/-! ## A109982.P11366145737529388586

`∩[A109981(n+1), A302592(n+1)]`
-/

namespace A109982.P11366145737529388586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109981 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302592 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109982.P11366145737529388586

namespace A109982

/-- `∩[A109981(n+1), A302592(n+1)]` -/
def P11366145737529388586.Spec : Prop :=
  ∀ n, (P11366145737529388586.a n : ℤ) = A109982 (n + 1)

end A109982

/-! ## A109982.P10868109570692613022

`∩[A109981(n+1), A302596(n+1)]`
-/

namespace A109982.P10868109570692613022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109981 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302596 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109982.P10868109570692613022

namespace A109982

/-- `∩[A109981(n+1), A302596(n+1)]` -/
def P10868109570692613022.Spec : Prop :=
  ∀ n, (P10868109570692613022.a n : ℤ) = A109982 (n + 1)

end A109982

/-! ## A109982.P15145622681164663199

`∩[A076610(n+1), A109981(n+1)]`
-/

namespace A109982.P15145622681164663199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076610 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109981 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109982.P15145622681164663199

namespace A109982

/-- `∩[A076610(n+1), A109981(n+1)]` -/
def P15145622681164663199.Spec : Prop :=
  ∀ n, (P15145622681164663199.a n : ℤ) = A109982 (n + 1)

end A109982

/-! ## A109982.P555841543094205567

`∩[A109981(n+1), A162250(n+1)]`
-/

namespace A109982.P555841543094205567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109981 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162250 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109982.P555841543094205567

namespace A109982

/-- `∩[A109981(n+1), A162250(n+1)]` -/
def P555841543094205567.Spec : Prop :=
  ∀ n, (P555841543094205567.a n : ℤ) = A109982 (n + 1)

end A109982

/-! ## A109982.P9549466392455459490

`∩[A120533(n+1), A162250(n+1)]`
-/

namespace A109982.P9549466392455459490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120533 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162250 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109982.P9549466392455459490

namespace A109982

/-- `∩[A120533(n+1), A162250(n+1)]` -/
def P9549466392455459490.Spec : Prop :=
  ∀ n, (P9549466392455459490.a n : ℤ) = A109982 (n + 1)

end A109982

/-! ## A109982.P412885499258096978

`∩[A109981(n+1), A302539(n+1)]`
-/

namespace A109982.P412885499258096978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109981 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302539 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109982.P412885499258096978

namespace A109982

/-- `∩[A109981(n+1), A302539(n+1)]` -/
def P412885499258096978.Spec : Prop :=
  ∀ n, (P412885499258096978.a n : ℤ) = A109982 (n + 1)

end A109982

/-! ## A109982.P12215991303660081267

`∩[A109981(n+1), A302590(n+1)]`
-/

namespace A109982.P12215991303660081267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109981 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302590 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109982.P12215991303660081267

namespace A109982

/-- `∩[A109981(n+1), A302590(n+1)]` -/
def P12215991303660081267.Spec : Prop :=
  ∀ n, (P12215991303660081267.a n : ℤ) = A109982 (n + 1)

end A109982

/-! ## A109982.P7509843373899034578

`∩[A109981(n+1), A359486(n+1)]`
-/

namespace A109982.P7509843373899034578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109981 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359486 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109982.P7509843373899034578

namespace A109982

/-- `∩[A109981(n+1), A359486(n+1)]` -/
def P7509843373899034578.Spec : Prop :=
  ∀ n, (P7509843373899034578.a n : ℤ) = A109982 (n + 1)

end A109982

/-! ## A109982.P3588706158171179317

`A000040(p?[A000720(A109981(n+1))])`
-/

namespace A109982.P3588706158171179317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A109981 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A109982.P3588706158171179317

namespace A109982

/-- `A000040(p?[A000720(A109981(n+1))])` -/
def P3588706158171179317.Spec : Prop :=
  ∀ n, P3588706158171179317.a n = A109982 (n + 1)

end A109982

/-! ## A109982.P17202497401967696133

`A000040(p?[A061395(A109981(n+1))])`
-/

namespace A109982.P17202497401967696133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A109981 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A109982.P17202497401967696133

namespace A109982

/-- `A000040(p?[A061395(A109981(n+1))])` -/
def P17202497401967696133.Spec : Prop :=
  ∀ n, P17202497401967696133.a n = A109982 (n + 1)

end A109982

/-! ## A109982.P16509140033464963268

`∩[A048989(n+1), A109981(n+1)]`
-/

namespace A109982.P16509140033464963268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048989 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109981 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109982.P16509140033464963268

namespace A109982

/-- `∩[A048989(n+1), A109981(n+1)]` -/
def P16509140033464963268.Spec : Prop :=
  ∀ n, (P16509140033464963268.a n : ℤ) = A109982 (n + 1)

end A109982

/-! ## A109982.P12905660475624210171

`∩[A109981(n+1), A141436(n+1)]`
-/

namespace A109982.P12905660475624210171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109981 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141436 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109982.P12905660475624210171

namespace A109982

/-- `∩[A109981(n+1), A141436(n+1)]` -/
def P12905660475624210171.Spec : Prop :=
  ∀ n, (P12905660475624210171.a n : ℤ) = A109982 (n + 1)

end A109982

/-!
# A109983: Triangle read by rows: T(n, k) (0<=k<=2n) is the number of Delannoy paths of length n, having k steps.

The programs for A109983, the canonical program `A109983.P3206352724979772563` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109983 has offset 0).

The definition of A109983 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5111 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A109983.P3206352724979772563

`A109187(A091995(n+1)-1)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A109983

/-- `A109187(A091995(n+1)-1)` -/
def P3206352724979772563.Spec : Prop :=
  ∀ n, P3206352724979772563.a n = A109983 n

theorem P3206352724979772563.correct : P3206352724979772563.Spec := by
  intro n
  simp only [A109983]

end A109983

/-! ## A109983.P10170716139854172628

`A109187(A090894(n))`
-/

namespace A109983.P10170716139854172628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109187 (A090894 n).toNat

end

end A109983.P10170716139854172628

namespace A109983

/-- `A109187(A090894(n))` -/
def P10170716139854172628.Spec : Prop :=
  ∀ n, P10170716139854172628.a n = A109983 n

end A109983

/-! ## A109983.P7810391130174193823

`A038548(A187829(n+1))*A144331(n)`
-/

namespace A109983.P7810391130174193823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038548 (A187829 (n + 1)).toNat * A144331 n

end

end A109983.P7810391130174193823

namespace A109983

/-- `A038548(A187829(n+1))*A144331(n)` -/
def P7810391130174193823.Spec : Prop :=
  ∀ n, P7810391130174193823.a n = A109983 n

end A109983

/-! ## A109983.P14272018854089351137

`A144331(n)*A327104(A181821(n+1))`
-/

namespace A109983.P14272018854089351137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144331 n * A327104 (A181821 (n + 1)).toNat

end

end A109983.P14272018854089351137

namespace A109983

/-- `A144331(n)*A327104(A181821(n+1))` -/
def P14272018854089351137.Spec : Prop :=
  ∀ n, P14272018854089351137.a n = A109983 n

end A109983

/-!
# A109984: a(n) = number of steps in all Delannoy paths of length n.

The programs for A109984, the canonical program `A109984.P9181175671372323294` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109984 has offset 0).

The definition of A109984 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 130 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A109984.P9181175671372323294

`A108666(n+1)-A001850(n)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A109984

/-- `A108666(n+1)-A001850(n)` -/
def P9181175671372323294.Spec : Prop :=
  ∀ n, P9181175671372323294.a n = A109984 n

theorem P9181175671372323294.correct : P9181175671372323294.Spec := by
  intro n
  simp only [A109984]

end A109984

/-! ## A109984.P16644774476208514432

`n*(A176479(n)+A001850(n))`
-/

namespace A109984.P16644774476208514432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A176479 n + A001850 n)

end

end A109984.P16644774476208514432

namespace A109984

/-- `n*(A176479(n)+A001850(n))` -/
def P16644774476208514432.Spec : Prop :=
  ∀ n, P16644774476208514432.a n = A109984 n

end A109984

/-! ## A109984.P7054020204234557143

`A050151(n)+n*A047781(n+1)`
-/

namespace A109984.P7054020204234557143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050151 n + (n : ℤ) * A047781 (n + 1)

end

end A109984.P7054020204234557143

namespace A109984

/-- `A050151(n)+n*A047781(n+1)` -/
def P7054020204234557143.Spec : Prop :=
  ∀ n, P7054020204234557143.a n = A109984 n

end A109984

/-! ## A109984.P10180968700697399225

`n*(A247623(2*n)+A026003(2*n))`
-/

namespace A109984.P10180968700697399225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A247623 (2 * n) + A026003 (2 * n))

end

end A109984.P10180968700697399225

namespace A109984

/-- `n*(A247623(2*n)+A026003(2*n))` -/
def P10180968700697399225.Spec : Prop :=
  ∀ n, P10180968700697399225.a n = A109984 n

end A109984

/-! ## A109984.P8935693665435732197

`A001850(n)*A005843(n)-A108666(n)`
-/

namespace A109984.P8935693665435732197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001850 n * A005843 n - A108666 n

end

end A109984.P8935693665435732197

namespace A109984

/-- `A001850(n)*A005843(n)-A108666(n)` -/
def P8935693665435732197.Spec : Prop :=
  ∀ n, P8935693665435732197.a n = A109984 n

end A109984

/-! ## A109984.P15581051872797255652

`A002002(n+1)+A108666(n+1)-A002003(n+1)`
-/

namespace A109984.P15581051872797255652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002002 (n + 1) + (A108666 (n + 1) - A002003 (n + 1))

end

end A109984.P15581051872797255652

namespace A109984

/-- `A002002(n+1)+A108666(n+1)-A002003(n+1)` -/
def P15581051872797255652.Spec : Prop :=
  ∀ n, P15581051872797255652.a n = A109984 n

end A109984

/-! ## A109984.P17593098907782514542

`A331511(A052905(n+2))-A001850(n)`
-/

namespace A109984.P17593098907782514542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331511 (A052905 (n + 2)).toNat - A001850 n

end

end A109984.P17593098907782514542

namespace A109984

/-- `A331511(A052905(n+2))-A001850(n)` -/
def P17593098907782514542.Spec : Prop :=
  ∀ n, P17593098907782514542.a n = A109984 n

end A109984

/-!
# A109986: Primes ordered alphabetically by where they occur in A000052.

The programs for A109986, there is no canonical definition to state claims against.
-/

/-! ## A109986.P10913679630320603419

`p?[A000052(n+1)]`
-/

namespace A109986.P10913679630320603419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000052 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A109986.P10913679630320603419

/-!
# A109991: Numbers k such that the string 88k is prime.

The programs for A109991, there is no canonical definition to state claims against.
-/

/-! ## A109991.P10106584442413104813

`lt[A122457(A122409(n+1)), A217220(n)]`
-/

namespace A109991.P10106584442413104813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122457 (A122409 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217220 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A109991.P10106584442413104813

/-! ## A109991.P6828804407193839092

`lt[A122457(A122409(n+1)), A033716(4*n)]`
-/

namespace A109991.P6828804407193839092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122457 (A122409 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033716 (4 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A109991.P6828804407193839092

/-!
# A109994: Chen primes p such that their p + 2 counterpart is a Sarrus number (pseudoprime to base 2).

The programs for A109994, there is no canonical definition to state claims against.
-/

/-! ## A109994.P2406525118534552031

`p?[A050217(n+1)-2]`
-/

namespace A109994.P2406525118534552031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050217 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A109994.P2406525118534552031

/-! ## A109994.P17929931857204459810

`p?[A061347(3*(n+1))+A050217(n+1)]`
-/

namespace A109994.P17929931857204459810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061347 (3 * (n + 1)) + A050217 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A109994.P17929931857204459810

/-! ## A109994.P17168811553494220064

`p?[∩[A001567(n+1), A179707(n+1)]-2]`
-/

namespace A109994.P17168811553494220064
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001567 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179707 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∧ ∃ j, f3 j = (x : ℤ)) n : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A109994.P17168811553494220064

/-! ## A109994.P15100391574876412158

`p?[∩[A066488(n+1), A179707(n+1)]-2]`
-/

namespace A109994.P15100391574876412158
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066488 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179707 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∧ ∃ j, f3 j = (x : ℤ)) n : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A109994.P15100391574876412158

/-!
# A109995: Number of unlabeled ordered minimal T_0-covers of an n-set, cf. A094545.

The programs for A109995, there is no canonical definition to state claims against.
-/

/-! ## A109995.P14194672440594243842

`A195120(A000112(n)+1)`
-/

namespace A109995.P14194672440594243842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195120 (A000112 n + 1).toNat

end

end A109995.P14194672440594243842

/-! ## A109995.P581553171780268558

`A195120(A349401(n)+A000608(n)+1)`
-/

namespace A109995.P581553171780268558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195120 (A349401 n + A000608 n + 1).toNat

end

end A109995.P581553171780268558

/-!
# A109996: Primes p such that the arithmetic mean of the fractional parts of p/1, p/2, ..., p/p is larger than 1 - gamma = 0.422784...

The programs for A109996, there is no canonical definition to state claims against.
-/

/-! ## A109996.P17327642674651631240

`A128824(lt[A007947(n+1), A348498(n+1)])`
-/

namespace A109996.P17327642674651631240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348498 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128824 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A109996.P17327642674651631240

/-! ## A109996.P11615422487901444471

`lt[A101165(A000001(3*n)), A001222(n+1)]`
-/

namespace A109996.P11615422487901444471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101165 (A000001 (3 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A109996.P11615422487901444471

/-!
# A109997: Primes where the arithmetic mean of the fractional parts of p/1,p/2,..., p/p is less than 1-gamma=0.422784...

The programs for A109997, there is no canonical definition to state claims against.
-/

/-! ## A109997.P16890413725640027328

`eq[A294889(n+1), A363709(n)]`
-/

namespace A109997.P16890413725640027328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294889 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363709 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A109997.P16890413725640027328

/-! ## A109997.P8546172796822741284

`eq[A178948(n+1), A294889(n+1)]`
-/

namespace A109997.P8546172796822741284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294889 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A109997.P8546172796822741284

/-! ## A109997.P7990771149510482826

`eq[A178948(n+1), A294929(n+1)]`
-/

namespace A109997.P7990771149510482826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294929 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A109997.P7990771149510482826

/-! ## A109997.P4105291663769111235

`∩[A080191(n+1), A389680(n+1)]`
-/

namespace A109997.P4105291663769111235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080191 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389680 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109997.P4105291663769111235

/-! ## A109997.P3427090645686913605

`∩[A294200(n+1), A321993(n+1)]`
-/

namespace A109997.P3427090645686913605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294200 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321993 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109997.P3427090645686913605

/-!
# A109998: Non-Cunningham primes: primes isolated from any Cunningham chain under any iteration of 2p+-1 or (p+-1)/2.

The programs for A109998, there is no canonical definition to state claims against.
-/

/-! ## A109998.P6795258444005798558

`∩[A060254(n+1), A068497(n+1)]`
-/

namespace A109998.P6795258444005798558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060254 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068497 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109998.P6795258444005798558

/-! ## A109998.P17351023896305013838

`∩[A060254(n+1), A104278(n+1)]`
-/

namespace A109998.P17351023896305013838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060254 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104278 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109998.P17351023896305013838

/-! ## A109998.P7316001677516242798

`∩[A068497(n+1), A166037(n+1)]`
-/

namespace A109998.P7316001677516242798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068497 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166037 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109998.P7316001677516242798

/-! ## A109998.P3290221671966421030

`∩[A068497(n+1), A166685(n+1)]`
-/

namespace A109998.P3290221671966421030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068497 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166685 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109998.P3290221671966421030

/-! ## A109998.P11260550775369284655

`∩[A068497(n+1), A167915(n+1)]`
-/

namespace A109998.P11260550775369284655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068497 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167915 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109998.P11260550775369284655

/-! ## A109998.P13318556598960348019

`∩[A068497(n+1), A176462(n+1)]`
-/

namespace A109998.P13318556598960348019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068497 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176462 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109998.P13318556598960348019

/-! ## A109998.P1255507025146519662

`∩[A068497(n+1), A176902(n+1)]`
-/

namespace A109998.P1255507025146519662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068497 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176902 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109998.P1255507025146519662

/-! ## A109998.P11756299628125356558

`∩[A104278(n+1), A167915(n+1)]`
-/

namespace A109998.P11756299628125356558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104278 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167915 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109998.P11756299628125356558

/-! ## A109998.P7833209559127309155

`∩[A104278(n+1), A176902(n+1)]`
-/

namespace A109998.P7833209559127309155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104278 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176902 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109998.P7833209559127309155

/-!
# A109999: Integer part of Lorentz gamma factor = 1/sqrt(1 - (beta)^2) for beta = 0.9999...(with 9 appearing n times) = 1 - 10^(-n).

The programs for A109999, there is no canonical definition to state claims against.
-/

/-! ## A109999.P16264157446097079682

`floor(sqrt(5*10^n))`
-/

namespace A109999.P16264157446097079682
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt (5 * 10 ^ n)

end

end A109999.P16264157446097079682

/-! ## A109999.P2521454070287030997

`ceil(sqrt(A199685(n)))-1`
-/

namespace A109999.P2521454070287030997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A199685 n : ℝ)⌉ - 1

end

end A109999.P2521454070287030997

/-! ## A109999.P15859764222093882556

`ceil(sqrt(Δ[A002279(n)]))-1`
-/

namespace A109999.P15859764222093882556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002279 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (f1 (n + 1) - f1 n : ℝ)⌉ - 1

end

end A109999.P15859764222093882556

/-! ## A109999.P10514252363952520548

`ceil(A035069(n+1)/2)-1`
-/

namespace A109999.P10514252363952520548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A035069 (n + 1) : ℚ) / 2⌉ - 1

end

end A109999.P10514252363952520548

/-! ## A109999.P14286673440198835716

`round((A083377(n+2)-1)/2)`
-/

namespace A109999.P14286673440198835716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A083377 (n + 2) - 1 : ℚ) / 2)

end

end A109999.P14286673440198835716

