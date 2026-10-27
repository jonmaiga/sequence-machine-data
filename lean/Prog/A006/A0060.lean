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
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C038
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
import Seq.B002.C008
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
# A006000: a(n) = (n+1)*(n^2+n+2)/2.

The programs for A006000, the canonical program `A006000.P2071552165053779125` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006000 has offset 0).

The definition of A006000 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A006000.P3113880938126606920

`(n+1)*(n²+n+2)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A006000.P3113880938126606920
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) * (n ^ 2 + n + 2) : ℚ) / 2

end

end A006000.P3113880938126606920

namespace A006000

/-- `(n+1)*(n²+n+2)/2` -/
def P3113880938126606920.Spec : Prop :=
  ∀ n, P3113880938126606920.a n = (A006000 n : ℚ)

end A006000

/-! ## A006000.P2071552165053779125

`n+A006002(n)+1`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A006000

/-- `n+A006002(n)+1` -/
def P2071552165053779125.Spec : Prop :=
  ∀ n, P2071552165053779125.a n = A006000 n

theorem P2071552165053779125.correct : P2071552165053779125.Spec := by
  intro n
  simp only [A006000]

end A006000

/-! ## A006000.P13175181636525507718

`A000124(n)*(n+1)`
-/

namespace A006000.P13175181636525507718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n * (n + 1 : ℤ)

end

end A006000.P13175181636525507718

namespace A006000

/-- `A000124(n)*(n+1)` -/
def P13175181636525507718.Spec : Prop :=
  ∀ n, P13175181636525507718.a n = A006000 n

end A006000

/-! ## A006000.P17153249137102939626

`∑[n²-xor(-1, ∑[n])]`
-/

namespace A006000.P17153249137102939626
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - Int.xor (-1) ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006000.P17153249137102939626

namespace A006000

/-- `∑[n²-xor(-1, ∑[n])]` -/
def P17153249137102939626.Spec : Prop :=
  ∀ n, P17153249137102939626.a n = A006000 n

end A006000

/-! ## A006000.P5433792313338757463

`∑[-xor(∑[n]+n², -1)]`
-/

namespace A006000.P5433792313338757463
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor ((∑ j ∈ Finset.range (n + 1), f2 j + n ^ 2 : ℕ) : ℤ) (-1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006000.P5433792313338757463

namespace A006000

/-- `∑[-xor(∑[n]+n², -1)]` -/
def P5433792313338757463.Spec : Prop :=
  ∀ n, P5433792313338757463.a n = A006000 n

end A006000

/-! ## A006000.P14094879390145060164

`∑[∑[a(n-1)+3]]` with `a(0)=1, a(1)=2`
-/

namespace A006000.P14094879390145060164
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f2 =>
  f2 (n - 1) + 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006000.P14094879390145060164

namespace A006000

/-- `∑[∑[a(n-1)+3]]` -/
def P14094879390145060164.Spec : Prop :=
  ∀ n, (P14094879390145060164.a n : ℤ) = A006000 n

end A006000

/-! ## A006000.P3043212929391229418

`∑[∑[record[gcd(3, n+1)+n]]]`
-/

namespace A006000.P3043212929391229418
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 3 (n + 1) + n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006000.P3043212929391229418

namespace A006000

/-- `∑[∑[record[gcd(3, n+1)+n]]]` -/
def P3043212929391229418.Spec : Prop :=
  ∀ n, (P3043212929391229418.a n : ℤ) = A006000 n

end A006000

/-! ## A006000.P12568903090193815007

`floor((n+1)/acot(∑[n]+1))`
-/

namespace A006000.P12568903090193815007
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) / SequenceMachineLib.acot ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℝ)⌋

end

end A006000.P12568903090193815007

namespace A006000

/-- `floor((n+1)/acot(∑[n]+1))` -/
def P12568903090193815007.Spec : Prop :=
  ∀ n, P12568903090193815007.a n = A006000 n

end A006000

/-! ## A006000.P935375456676116322

`round((n+1)/acot(∑[n]+1))`
-/

namespace A006000.P935375456676116322
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n + 1 : ℝ) / SequenceMachineLib.acot ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℝ))

end

end A006000.P935375456676116322

namespace A006000

/-- `round((n+1)/acot(∑[n]+1))` -/
def P935375456676116322.Spec : Prop :=
  ∀ n, P935375456676116322.a n = A006000 n

end A006000

/-! ## A006000.P3909007891761812393

`ceil((n+1)/acot(∑[n])+n)`
-/

namespace A006000.P3909007891761812393
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℝ) / SequenceMachineLib.acot ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) + (n : ℝ)⌉

end

end A006000.P3909007891761812393

namespace A006000

/-- `ceil((n+1)/acot(∑[n])+n)` -/
def P3909007891761812393.Spec : Prop :=
  ∀ n, P3909007891761812393.a n = A006000 n

end A006000

/-! ## A006000.P15830471373773030270

`∑[∑[ogf((1+2x^2)/(1-2x+x^2))]]`
-/

namespace A006000.P15830471373773030270
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 2] [1, -2, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006000.P15830471373773030270

namespace A006000

/-- `∑[∑[ogf((1+2x^2)/(1-2x+x^2))]]` -/
def P15830471373773030270.Spec : Prop :=
  ∀ n, P15830471373773030270.a n = A006000 n

end A006000

/-! ## A006000.P14420059801468113231

`ogf((1+2x^2)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A006000.P14420059801468113231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 2] [1, -4, 6, -4, 1] n

end

end A006000.P14420059801468113231

namespace A006000

/-- `ogf((1+2x^2)/(1-4x+6x^2-4x^3+x^4))` -/
def P14420059801468113231.Spec : Prop :=
  ∀ n, P14420059801468113231.a n = A006000 n

end A006000

/-! ## A006000.P12292975645127629419

`∑[2-∑[a(n-1)-3]]` with `a(0)=1`
-/

namespace A006000.P12292975645127629419
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  f2 (n - 1) - 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006000.P12292975645127629419

namespace A006000

/-- `∑[2-∑[a(n-1)-3]]` -/
def P12292975645127629419.Spec : Prop :=
  ∀ n, P12292975645127629419.a n = A006000 n

end A006000

/-! ## A006000.P13905247379873302475

`∑[C(n+1, 2)+n²+1]`
-/

namespace A006000.P13905247379873302475
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) 2 + (n ^ 2 + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006000.P13905247379873302475

namespace A006000

/-- `∑[C(n+1, 2)+n²+1]` -/
def P13905247379873302475.Spec : Prop :=
  ∀ n, (P13905247379873302475.a n : ℤ) = A006000 n

end A006000

/-! ## A006000.P541351826174362935

`Δ[C(C(n, 2), 2)]+(n+1)²`
-/

namespace A006000.P541351826174362935
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.choose n 2) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + ((n + 1) ^ 2 : ℤ)

end

end A006000.P541351826174362935

namespace A006000

/-- `Δ[C(C(n, 2), 2)]+(n+1)²` -/
def P541351826174362935.Spec : Prop :=
  ∀ n, P541351826174362935.a n = A006000 n

end A006000

/-! ## A006000.P13791202766790535657

`∑[∑[n+1]+lcm(n, 1-n)]`
-/

namespace A006000.P13791202766790535657
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + Int.lcm (n : ℤ) (1 - (n : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006000.P13791202766790535657

namespace A006000

/-- `∑[∑[n+1]+lcm(n, 1-n)]` -/
def P13791202766790535657.Spec : Prop :=
  ∀ n, (P13791202766790535657.a n : ℤ) = A006000 n

end A006000

/-! ## A006000.P1073722353443664181

`(n+1)²+3*C(n+1, 3)`
-/

namespace A006000.P1073722353443664181
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2 + 3 * Nat.choose (n + 1) 3

end

end A006000.P1073722353443664181

namespace A006000

/-- `(n+1)²+3*C(n+1, 3)` -/
def P1073722353443664181.Spec : Prop :=
  ∀ n, (P1073722353443664181.a n : ℤ) = A006000 n

end A006000

/-! ## A006000.P12301315000633377616

`abs((n+1)*(C(n+2, 2)-n))`
-/

namespace A006000.P12301315000633377616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n + 1 : ℤ) * ((Nat.choose (n + 2) 2 : ℤ) - (n : ℤ))|

end

end A006000.P12301315000633377616

namespace A006000

/-- `abs((n+1)*(C(n+2, 2)-n))` -/
def P12301315000633377616.Spec : Prop :=
  ∀ n, P12301315000633377616.a n = A006000 n

end A006000

/-! ## A006000.P9604990763975965747

`-((n+1)*(n-C(n+2, 2)))`
-/

namespace A006000.P9604990763975965747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((n + 1 : ℤ) * ((n : ℤ) - (Nat.choose (n + 2) 2 : ℤ)))

end

end A006000.P9604990763975965747

namespace A006000

/-- `-((n+1)*(n-C(n+2, 2)))` -/
def P9604990763975965747.Spec : Prop :=
  ∀ n, P9604990763975965747.a n = A006000 n

end A006000

/-! ## A006000.P13611511463226639867

`(n+1)*C(n+1, 2)+1+n`
-/

namespace A006000.P13611511463226639867
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * Nat.choose (n + 1) 2 + 1 + n

end

end A006000.P13611511463226639867

namespace A006000

/-- `(n+1)*C(n+1, 2)+1+n` -/
def P13611511463226639867.Spec : Prop :=
  ∀ n, (P13611511463226639867.a n : ℤ) = A006000 n

end A006000

/-!
# A006001: Number of paraffins.

The programs for A006001, the canonical program `A006001.P18432510687432521668` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006001 has offset 0).

The definition of A006001 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A006001.P18432510687432521668

`1+5*n/2+n^3/2`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A006001

/-- `1+5*n/2+n^3/2` -/
def P18432510687432521668.Spec : Prop :=
  ∀ n, P18432510687432521668.a n = (A006001 n : ℚ)

end A006001

/-! ## A006001.P4705225486131486544

`∑[∑[a(n-1)+3]]` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A006001.P4705225486131486544
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 3] fun n f2 =>
  f2 (n - 1) + 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006001.P4705225486131486544

namespace A006001

/-- `∑[∑[a(n-1)+3]]` -/
def P4705225486131486544.Spec : Prop :=
  ∀ n, (P4705225486131486544.a n : ℤ) = A006001 n

end A006001

/-! ## A006001.P11262694915873411361

`round(cosh(log(n*(n²+5)+1)))`
-/

namespace A006001.P11262694915873411361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cosh (Real.log (n * (n ^ 2 + 5) + 1 : ℝ)))

end

end A006001.P11262694915873411361

namespace A006001

/-- `round(cosh(log(n*(n²+5)+1)))` -/
def P11262694915873411361.Spec : Prop :=
  ∀ n, P11262694915873411361.a n = A006001 n

end A006001

/-! ## A006001.P16126745917686270200

`∑[∑[∪[3*(n+1), (n+1)!]]]`
-/

namespace A006001.P16126745917686270200
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (n + 1)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f3 j = x) ∨ ∃ j, f4 j = x) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006001.P16126745917686270200

namespace A006001

/-- `∑[∑[∪[3*(n+1), (n+1)!]]]` -/
def P16126745917686270200.Spec : Prop :=
  ∀ n, (P16126745917686270200.a n : ℤ) = A006001 n

end A006001

/-! ## A006001.P8382640303468527091

`∑[∑[∪[3*(n+1), ∏[n+1]]]]`
-/

namespace A006001.P8382640303468527091
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (n + 1)

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f5 j

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f3 j = x) ∨ ∃ j, f4 j = x) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006001.P8382640303468527091

namespace A006001

/-- `∑[∑[∪[3*(n+1), ∏[n+1]]]]` -/
def P8382640303468527091.Spec : Prop :=
  ∀ n, (P8382640303468527091.a n : ℤ) = A006001 n

end A006001

/-! ## A006001.P10136094339376982908

`∑[a(n-1)-3*(1-n)]` with `a(0)=1, a(1)=3`
-/

namespace A006001.P10136094339376982908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  f1 (n - 1) - 3 * (1 - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006001.P10136094339376982908

namespace A006001

/-- `∑[a(n-1)-3*(1-n)]` -/
def P10136094339376982908.Spec : Prop :=
  ∀ n, P10136094339376982908.a n = A006001 n

end A006001

/-! ## A006001.P14119392070647434119

`∑[ogf((1+x+2x^3+2x^4)/(1-2x+2x^3-x^4))]`
-/

namespace A006001.P14119392070647434119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 0, 2, 2] [1, -2, 0, 2, -1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006001.P14119392070647434119

namespace A006001

/-- `∑[ogf((1+x+2x^3+2x^4)/(1-2x+2x^3-x^4))]` -/
def P14119392070647434119.Spec : Prop :=
  ∀ n, P14119392070647434119.a n = A006001 n

end A006001

/-! ## A006001.P7699447086292490475

`∑[n-∑[a(n-1)-3]]` with `a(0)=-1, a(1)=-1, a(2)=-2`
-/

namespace A006001.P7699447086292490475
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [-1, -1, -2] fun n f2 =>
  f2 (n - 1) - 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006001.P7699447086292490475

namespace A006001

/-- `∑[n-∑[a(n-1)-3]]` -/
def P7699447086292490475.Spec : Prop :=
  ∀ n, P7699447086292490475.a n = A006001 n

end A006001

/-! ## A006001.P16375483025003016455

`(lcm(n+2, (n+1)²)-(2*n)²)/2`
-/

namespace A006001.P16375483025003016455
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.lcm (n + 2) ((n + 1) ^ 2) : ℤ) - ((2 * n) ^ 2 : ℤ) : ℚ) / 2

end

end A006001.P16375483025003016455

namespace A006001

/-- `(lcm(n+2, (n+1)²)-(2*n)²)/2` -/
def P16375483025003016455.Spec : Prop :=
  ∀ n, P16375483025003016455.a n = (A006001 n : ℚ)

end A006001

/-! ## A006001.P1309146619059153062

`floor((a(n-1)+1)/n+a(n-1)+n²)` with `a(0)=1`
-/

namespace A006001.P1309146619059153062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(a (n - 1) + 1 : ℚ) / (n : ℚ) + (a (n - 1) + (n ^ 2 : ℤ) : ℚ)⌋

end

end A006001.P1309146619059153062

namespace A006001

/-- `floor((a(n-1)+1)/n+a(n-1)+n²)` -/
def P1309146619059153062.Spec : Prop :=
  ∀ n, P1309146619059153062.a n = A006001 n

end A006001

/-! ## A006001.P14620736470217622501

`floor(a(n-1)+(a(n-1)+1)/n+n*n)` with `a(0)=1`
-/

namespace A006001.P14620736470217622501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(a (n - 1) : ℚ) + (a (n - 1) + 1 : ℚ) / (n : ℚ) + (n * n : ℚ)⌋

end

end A006001.P14620736470217622501

namespace A006001

/-- `floor(a(n-1)+(a(n-1)+1)/n+n*n)` -/
def P14620736470217622501.Spec : Prop :=
  ∀ n, P14620736470217622501.a n = A006001 n

end A006001

/-! ## A006001.P11152894486409995158

`Δ[A006008(n)+C(n, 4)]`
-/

namespace A006001.P11152894486409995158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006008 n + (Nat.choose n 4 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A006001.P11152894486409995158

namespace A006001

/-- `Δ[A006008(n)+C(n, 4)]` -/
def P11152894486409995158.Spec : Prop :=
  ∀ n, P11152894486409995158.a n = A006001 n

end A006001

/-! ## A006001.P15108210388313108878

`abs(A006003(n)+Δ[n²])`
-/

namespace A006001.P15108210388313108878
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A006003 n + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))|

end

end A006001.P15108210388313108878

namespace A006001

/-- `abs(A006003(n)+Δ[n²])` -/
def P15108210388313108878.Spec : Prop :=
  ∀ n, P15108210388313108878.a n = A006001 n

end A006001

/-! ## A006001.P17392614447826084287

`(A155965(n)+2+n)/2`
-/

namespace A006001.P17392614447826084287
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A155965 n + 2 + (n : ℤ) : ℚ) / 2

end

end A006001.P17392614447826084287

namespace A006001

/-- `(A155965(n)+2+n)/2` -/
def P17392614447826084287.Spec : Prop :=
  ∀ n, P17392614447826084287.a n = (A006001 n : ℚ)

end A006001

/-! ## A006001.P2408886188026722644

`(A016813(n)+ceil(acot(n)^-3))/2`
-/

namespace A006001.P2408886188026722644
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016813 n + ⌈SequenceMachineLib.acot (n : ℝ) ^ (-3 : ℤ)⌉ : ℚ) / 2

end

end A006001.P2408886188026722644

namespace A006001

/-- `(A016813(n)+ceil(acot(n)^-3))/2` -/
def P2408886188026722644.Spec : Prop :=
  ∀ n, P2408886188026722644.a n = (A006001 n : ℚ)

end A006001

/-! ## A006001.P10530240012388983228

`Δ[A050534(n)+A000326(n)]`
-/

namespace A006001.P10530240012388983228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050534 n + A000326 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A006001.P10530240012388983228

namespace A006001

/-- `Δ[A050534(n)+A000326(n)]` -/
def P10530240012388983228.Spec : Prop :=
  ∀ n, P10530240012388983228.a n = A006001 n

end A006001

/-! ## A006001.P10856902805917501713

`(A016873(n)+A000578(n))/2`
-/

namespace A006001.P10856902805917501713
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016873 n + A000578 n : ℚ) / 2

end

end A006001.P10856902805917501713

namespace A006001

/-- `(A016873(n)+A000578(n))/2` -/
def P10856902805917501713.Spec : Prop :=
  ∀ n, P10856902805917501713.a n = (A006001 n : ℚ)

end A006001

/-! ## A006001.P17895540300121986153

`(A034262(n)+A016825(n))/2`
-/

namespace A006001.P17895540300121986153
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034262 n + A016825 n : ℚ) / 2

end

end A006001.P17895540300121986153

namespace A006001

/-- `(A034262(n)+A016825(n))/2` -/
def P17895540300121986153.Spec : Prop :=
  ∀ n, P17895540300121986153.a n = (A006001 n : ℚ)

end A006001

/-! ## A006001.P5318469424863725481

`Δ[A006008(n)+A000332(n)]`
-/

namespace A006001.P5318469424863725481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006008 n + A000332 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A006001.P5318469424863725481

namespace A006001

/-- `Δ[A006008(n)+A000332(n)]` -/
def P5318469424863725481.Spec : Prop :=
  ∀ n, P5318469424863725481.a n = A006001 n

end A006001

/-! ## A006001.P14369520783471386782

`∑[∑[A004281(2*n)-n]]`
-/

namespace A006001.P14369520783471386782
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004281 (2 * n) - (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006001.P14369520783471386782

namespace A006001

/-- `∑[∑[A004281(2*n)-n]]` -/
def P14369520783471386782.Spec : Prop :=
  ∀ n, P14369520783471386782.a n = A006001 n

end A006001

/-!
# A006002: a(n) = n*(n+1)^2/2.

The programs for A006002, the canonical program `A006002.P5274110491547706922` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006002 has offset 0).

The definition of A006002 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n+1)²/2` (program `A006002.P12150988520340015796`, by `A006002.P12150988520340015796.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A006002.P12150988520340015796

`n*(n+1)²/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A006002.P12150988520340015796
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n * (n + 1) ^ 2 : ℚ) / 2

end

end A006002.P12150988520340015796

namespace A006002

/-- `n*(n+1)²/2` -/
def P12150988520340015796.Spec : Prop :=
  ∀ n, P12150988520340015796.a n = (A006002 n : ℚ)

theorem P12150988520340015796.correct : P12150988520340015796.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A006002, Nat.add_sub_cancel, A006002.P12150988520340015796.a, A006002.P5274110491547706922.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A006002, Nat.add_sub_cancel, A006002.P12150988520340015796.a, A006002.P5274110491547706922.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A006002

/-! ## A006002.P10039952293548115414

`C(n+1, 2)*(n+1)`
-/

namespace A006002.P10039952293548115414
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) 2 * (n + 1)

end

end A006002.P10039952293548115414

namespace A006002

/-- `C(n+1, 2)*(n+1)` -/
def P10039952293548115414.Spec : Prop :=
  ∀ n, (P10039952293548115414.a n : ℤ) = A006002 n

end A006002

/-! ## A006002.P5274110491547706922

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=0, a(1)=2, a(2)=9, a(3)=24`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A006002

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P5274110491547706922.Spec : Prop :=
  ∀ n, P5274110491547706922.a n = A006002 n

theorem P5274110491547706922.correct : P5274110491547706922.Spec := by
  intro n
  simp only [A006002]

end A006002

/-! ## A006002.P4072262782980400396

`(n+1)/2*A002378(n)`
-/

namespace A006002.P4072262782980400396
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 2 * (A002378 n : ℚ)

end

end A006002.P4072262782980400396

namespace A006002

/-- `(n+1)/2*A002378(n)` -/
def P4072262782980400396.Spec : Prop :=
  ∀ n, P4072262782980400396.a n = (A006002 n : ℚ)

theorem P4072262782980400396.correct : P4072262782980400396.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A006002, Nat.add_sub_cancel, A006002.P4072262782980400396.a, A006002.P5274110491547706922.a, A002378, A002378.P6342434596694243671.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A006002, Nat.add_sub_cancel, A006002.P4072262782980400396.a, A006002.P5274110491547706922.a, A002378, A002378.P6342434596694243671.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A006002

/-! ## A006002.P392232786581302163

`A000292(n)+A000330(n)`
-/

namespace A006002.P392232786581302163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 n + A000330 n

end

end A006002.P392232786581302163

namespace A006002

/-- `A000292(n)+A000330(n)` -/
def P392232786581302163.Spec : Prop :=
  ∀ n, P392232786581302163.a n = A006002 n

end A006002

/-! ## A006002.P8484825249249662032

`A027480(n)-A000217(n)`
-/

namespace A006002.P8484825249249662032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027480 n - A000217 n

end

end A006002.P8484825249249662032

namespace A006002

/-- `A027480(n)-A000217(n)` -/
def P8484825249249662032.Spec : Prop :=
  ∀ n, P8484825249249662032.a n = A006002 n

end A006002

/-! ## A006002.P13629575206508532294

`abs(xor(n, -1)*∑[n])`
-/

namespace A006002.P13629575206508532294
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (n : ℤ) (-1) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)|

end

end A006002.P13629575206508532294

namespace A006002

/-- `abs(xor(n, -1)*∑[n])` -/
def P13629575206508532294.Spec : Prop :=
  ∀ n, P13629575206508532294.a n = A006002 n

end A006002

/-! ## A006002.P5820474966265093027

`-(xor(n, -1)*∑[n])`
-/

namespace A006002.P5820474966265093027
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(Int.xor (n : ℤ) (-1) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))

end

end A006002.P5820474966265093027

namespace A006002

/-- `-(xor(n, -1)*∑[n])` -/
def P5820474966265093027.Spec : Prop :=
  ∀ n, P5820474966265093027.a n = A006002 n

end A006002

/-! ## A006002.P12915872138262846806

`floor((n+1)/acot(∑[n]))`
-/

namespace A006002.P12915872138262846806
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) / SequenceMachineLib.acot ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ)⌋

end

end A006002.P12915872138262846806

namespace A006002

/-- `floor((n+1)/acot(∑[n]))` -/
def P12915872138262846806.Spec : Prop :=
  ∀ n, P12915872138262846806.a n = A006002 n

end A006002

/-! ## A006002.P9089519743159094469

`∑[C(n+1, 2)+n²]`
-/

namespace A006002.P9089519743159094469
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) 2 + n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006002.P9089519743159094469

namespace A006002

/-- `∑[C(n+1, 2)+n²]` -/
def P9089519743159094469.Spec : Prop :=
  ∀ n, (P9089519743159094469.a n : ℤ) = A006002 n

end A006002

/-! ## A006002.P12761937978427623395

`∑[2*n²-C(n, 2)]`
-/

namespace A006002.P12761937978427623395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n ^ 2 : ℤ) - (Nat.choose n 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006002.P12761937978427623395

namespace A006002

/-- `∑[2*n²-C(n, 2)]` -/
def P12761937978427623395.Spec : Prop :=
  ∀ n, P12761937978427623395.a n = A006002 n

end A006002

/-! ## A006002.P6206420621294109269

`∑[∑[a(n-1)+3]]` with `a(0)=0, a(1)=2`
-/

namespace A006002.P6206420621294109269
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 2] fun n f2 =>
  f2 (n - 1) + 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006002.P6206420621294109269

namespace A006002

/-- `∑[∑[a(n-1)+3]]` -/
def P6206420621294109269.Spec : Prop :=
  ∀ n, (P6206420621294109269.a n : ℤ) = A006002 n

end A006002

/-! ## A006002.P9373948325643624732

`floor(n/sin(2/(n+1)²))`
-/

namespace A006002.P9373948325643624732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / Real.sin (2 / ((n + 1) ^ 2 : ℚ) : ℝ)⌋

end

end A006002.P9373948325643624732

namespace A006002

/-- `floor(n/sin(2/(n+1)²))` -/
def P9373948325643624732.Spec : Prop :=
  ∀ n, P9373948325643624732.a n = A006002 n

end A006002

/-! ## A006002.P10865223992666955973

`∑[Δ[lcm(n-1, n²)]/2]`
-/

namespace A006002.P10865223992666955973
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((n : ℤ) - 1) (n ^ 2 : ℤ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((f2 (n + 1) : ℤ) - (f2 n : ℤ) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006002.P10865223992666955973

namespace A006002

/-- `∑[Δ[lcm(n-1, n²)]/2]` -/
def P10865223992666955973.Spec : Prop :=
  ∀ n, P10865223992666955973.a n = (A006002 n : ℚ)

end A006002

/-! ## A006002.P11236398529666218515

`round(n/sin(2/(n+1)²))`
-/

namespace A006002.P11236398529666218515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℝ) / Real.sin (2 / ((n + 1) ^ 2 : ℚ) : ℝ))

end

end A006002.P11236398529666218515

namespace A006002

/-- `round(n/sin(2/(n+1)²))` -/
def P11236398529666218515.Spec : Prop :=
  ∀ n, P11236398529666218515.a n = A006002 n

end A006002

/-! ## A006002.P16229884928065087879

`ceil(n/tan(2/(n+1)²))`
-/

namespace A006002.P16229884928065087879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) / Real.tan (2 / ((n + 1) ^ 2 : ℚ) : ℝ)⌉

end

end A006002.P16229884928065087879

namespace A006002

/-- `ceil(n/tan(2/(n+1)²))` -/
def P16229884928065087879.Spec : Prop :=
  ∀ n, P16229884928065087879.a n = A006002 n

end A006002

/-! ## A006002.P8920011575437482712

`round(n/tan(2/(n+1)²))`
-/

namespace A006002.P8920011575437482712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℝ) / Real.tan (2 / ((n + 1) ^ 2 : ℚ) : ℝ))

end

end A006002.P8920011575437482712

namespace A006002

/-- `round(n/tan(2/(n+1)²))` -/
def P8920011575437482712.Spec : Prop :=
  ∀ n, P8920011575437482712.a n = A006002 n

end A006002

/-! ## A006002.P7857219763029046326

`floor(n/atan(2/(n+1)²))`
-/

namespace A006002.P7857219763029046326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / Real.arctan (2 / ((n + 1) ^ 2 : ℚ) : ℝ)⌋

end

end A006002.P7857219763029046326

namespace A006002

/-- `floor(n/atan(2/(n+1)²))` -/
def P7857219763029046326.Spec : Prop :=
  ∀ n, P7857219763029046326.a n = A006002 n

end A006002

/-! ## A006002.P1372188538207011364

`round(n/atan(2/(n+1)²))`
-/

namespace A006002.P1372188538207011364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℝ) / Real.arctan (2 / ((n + 1) ^ 2 : ℚ) : ℝ))

end

end A006002.P1372188538207011364

namespace A006002

/-- `round(n/atan(2/(n+1)²))` -/
def P1372188538207011364.Spec : Prop :=
  ∀ n, P1372188538207011364.a n = A006002 n

end A006002

/-! ## A006002.P11389813501521484035

`floor(n/tanh(2/(n+1)²))`
-/

namespace A006002.P11389813501521484035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / Real.tanh (2 / ((n + 1) ^ 2 : ℚ) : ℝ)⌋

end

end A006002.P11389813501521484035

namespace A006002

/-- `floor(n/tanh(2/(n+1)²))` -/
def P11389813501521484035.Spec : Prop :=
  ∀ n, P11389813501521484035.a n = A006002 n

end A006002

/-!
# A006003: a(n) = n*(n^2 + 1)/2.

The programs for A006003, the canonical program `A006003.P11212673743670392388` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006003 has offset 0).

The definition of A006003 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n²+1)/2` (program `A006003.P11839746484274182872`, by `A006003.P11839746484274182872.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A006003.P11839746484274182872

`n*(n²+1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A006003.P11839746484274182872
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n * (n ^ 2 + 1) : ℚ) / 2

end

end A006003.P11839746484274182872

namespace A006003

/-- `n*(n²+1)/2` -/
def P11839746484274182872.Spec : Prop :=
  ∀ n, P11839746484274182872.a n = (A006003 n : ℚ)

theorem P11839746484274182872.correct : P11839746484274182872.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A006003, Nat.add_sub_cancel, A006003.P11839746484274182872.a, A006003.P11212673743670392388.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A006003, Nat.add_sub_cancel, A006003.P11839746484274182872.a, A006003.P11212673743670392388.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A006003

/-! ## A006003.P15940390754964762971

`C(n+3, 4)-C(n, 4)`
-/

namespace A006003.P15940390754964762971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 3) 4 : ℤ) - (Nat.choose n 4 : ℤ)

end

end A006003.P15940390754964762971

namespace A006003

/-- `C(n+3, 4)-C(n, 4)` -/
def P15940390754964762971.Spec : Prop :=
  ∀ n, P15940390754964762971.a n = A006003 n

end A006003

/-! ## A006003.P5990660344101121418

`C(n+2, 3)+C(n+1, 3)+C(n, 3)`
-/

namespace A006003.P5990660344101121418
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 2) 3 + Nat.choose (n + 1) 3 + Nat.choose n 3

end

end A006003.P5990660344101121418

namespace A006003

/-- `C(n+2, 3)+C(n+1, 3)+C(n, 3)` -/
def P5990660344101121418.Spec : Prop :=
  ∀ n, (P5990660344101121418.a n : ℤ) = A006003 n

end A006003

/-! ## A006003.P11212673743670392388

`3*a(n-1)-3*a(n-2)+a(n-3)+3` with `a(0)=0, a(1)=1, a(2)=5`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A006003

/-- `3*a(n-1)-3*a(n-2)+a(n-3)+3` -/
def P11212673743670392388.Spec : Prop :=
  ∀ n, P11212673743670392388.a n = A006003 n

theorem P11212673743670392388.correct : P11212673743670392388.Spec := by
  intro n
  simp only [A006003]

end A006003

/-! ## A006003.P12716531896046063509

`A000578(n)-A135503(n)`
-/

namespace A006003.P12716531896046063509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 n - A135503 n

end

end A006003.P12716531896046063509

namespace A006003

/-- `A000578(n)-A135503(n)` -/
def P12716531896046063509.Spec : Prop :=
  ∀ n, P12716531896046063509.a n = A006003 n

end A006003

/-! ## A006003.P4250926304460737405

`A006008(n)-2*A000332(n)`
-/

namespace A006003.P4250926304460737405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006008 n - 2 * A000332 n

end

end A006003.P4250926304460737405

namespace A006003

/-- `A006008(n)-2*A000332(n)` -/
def P4250926304460737405.Spec : Prop :=
  ∀ n, P4250926304460737405.a n = A006003 n

end A006003

/-! ## A006003.P2853436655904005677

`A000332(n+3)-A000332(n)`
-/

namespace A006003.P2853436655904005677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 (n + 3) - A000332 n

end

end A006003.P2853436655904005677

namespace A006003

/-- `A000332(n+3)-A000332(n)` -/
def P2853436655904005677.Spec : Prop :=
  ∀ n, P2853436655904005677.a n = A006003 n

end A006003

/-! ## A006003.P18389078150214073662

`∑[n²]+C(n, 3)`
-/

namespace A006003.P18389078150214073662
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Nat.choose n 3

end

end A006003.P18389078150214073662

namespace A006003

/-- `∑[n²]+C(n, 3)` -/
def P18389078150214073662.Spec : Prop :=
  ∀ n, (P18389078150214073662.a n : ℤ) = A006003 n

end A006003

/-! ## A006003.P13158202489116219086

`Δ[C(C(n, 2)+1, 2)]`
-/

namespace A006003.P13158202489116219086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.choose n 2 + 1) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A006003.P13158202489116219086

namespace A006003

/-- `Δ[C(C(n, 2)+1, 2)]` -/
def P13158202489116219086.Spec : Prop :=
  ∀ n, P13158202489116219086.a n = A006003 n

end A006003

/-! ## A006003.P6363668793587931928

`∑[3*C(n, 2)]+n`
-/

namespace A006003.P6363668793587931928
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * Nat.choose n 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A006003.P6363668793587931928

namespace A006003

/-- `∑[3*C(n, 2)]+n` -/
def P6363668793587931928.Spec : Prop :=
  ∀ n, (P6363668793587931928.a n : ℤ) = A006003 n

end A006003

/-! ## A006003.P17509569987010995626

`3*C(n+1, 3)+n`
-/

namespace A006003.P17509569987010995626
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * Nat.choose (n + 1) 3 + n

end

end A006003.P17509569987010995626

namespace A006003

/-- `3*C(n+1, 3)+n` -/
def P17509569987010995626.Spec : Prop :=
  ∀ n, (P17509569987010995626.a n : ℤ) = A006003 n

end A006003

/-! ## A006003.P1298322073993759243

`floor(lcm(n, n²+1)/2)`
-/

namespace A006003.P1298322073993759243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.lcm n (n ^ 2 + 1) : ℚ) / 2⌋

end

end A006003.P1298322073993759243

namespace A006003

/-- `floor(lcm(n, n²+1)/2)` -/
def P1298322073993759243.Spec : Prop :=
  ∀ n, P1298322073993759243.a n = A006003 n

end A006003

/-! ## A006003.P3552440946663920465

`lcm(3, (n-1)*∑[n])+n`
-/

namespace A006003.P3552440946663920465
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (((n : ℤ) - 1) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)) + n

end

end A006003.P3552440946663920465

namespace A006003

/-- `lcm(3, (n-1)*∑[n])+n` -/
def P3552440946663920465.Spec : Prop :=
  ∀ n, (P3552440946663920465.a n : ℤ) = A006003 n

end A006003

/-! ## A006003.P8764627056908395365

`∑[∑[a(n-1)+3]]` with `a(0)=0, a(1)=1, a(2)=3`
-/

namespace A006003.P8764627056908395365
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 3] fun n f2 =>
  f2 (n - 1) + 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006003.P8764627056908395365

namespace A006003

/-- `∑[∑[a(n-1)+3]]` -/
def P8764627056908395365.Spec : Prop :=
  ∀ n, (P8764627056908395365.a n : ℤ) = A006003 n

end A006003

/-! ## A006003.P1692170421256963714

`Δ[C((n²-(n-2))/2, 2)]`
-/

namespace A006003.P1692170421256963714
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.roundAway (((n ^ 2 : ℤ) - ((n : ℤ) - 2) : ℚ) / 2)).toNat 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A006003.P1692170421256963714

namespace A006003

/-- `Δ[C((n²-(n-2))/2, 2)]` -/
def P1692170421256963714.Spec : Prop :=
  ∀ n, P1692170421256963714.a n = A006003 n

end A006003

/-! ## A006003.P1016517057338975632

`∑[n]+lcm(n-1, n²)/2`
-/

namespace A006003.P1016517057338975632
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) + (Int.lcm ((n : ℤ) - 1) (n ^ 2 : ℤ) : ℚ) / 2

end

end A006003.P1016517057338975632

namespace A006003

/-- `∑[n]+lcm(n-1, n²)/2` -/
def P1016517057338975632.Spec : Prop :=
  ∀ n, P1016517057338975632.a n = (A006003 n : ℚ)

end A006003

/-! ## A006003.P2659267621639566394

`n-∑[∑[n]-C(2*n, 2)]`
-/

namespace A006003.P2659267621639566394
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - (Nat.choose (2 * n) 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006003.P2659267621639566394

namespace A006003

/-- `n-∑[∑[n]-C(2*n, 2)]` -/
def P2659267621639566394.Spec : Prop :=
  ∀ n, P2659267621639566394.a n = A006003 n

end A006003

/-! ## A006003.P16078944070803609373

`n-∑[∑[a(n-1)-3]]` with `a(0)=0, a(1)=0`
-/

namespace A006003.P16078944070803609373
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n f2 =>
  f2 (n - 1) - 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006003.P16078944070803609373

namespace A006003

/-- `n-∑[∑[a(n-1)-3]]` -/
def P16078944070803609373.Spec : Prop :=
  ∀ n, P16078944070803609373.a n = A006003 n

end A006003

/-! ## A006003.P17139922624468464497

`(n-1)*∑[n%(n+1)]+n`
-/

namespace A006003.P17139922624468464497
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (n : ℤ)

end

end A006003.P17139922624468464497

namespace A006003

/-- `(n-1)*∑[n%(n+1)]+n` -/
def P17139922624468464497.Spec : Prop :=
  ∀ n, P17139922624468464497.a n = A006003 n

end A006003

/-! ## A006003.P15168886758810392850

`(n-1)*∑[gcd(n, 2*n)]+n`
-/

namespace A006003.P15168886758810392850
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd n (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (n : ℤ)

end

end A006003.P15168886758810392850

namespace A006003

/-- `(n-1)*∑[gcd(n, 2*n)]+n` -/
def P15168886758810392850.Spec : Prop :=
  ∀ n, P15168886758810392850.a n = A006003 n

end A006003

/-!
# A006004: a(n) = C(n+2,3) + C(n,3) + C(n-1,3).

The programs for A006004, the canonical program `A006004.P1095636762425067350` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006004 has offset 1).

The definition of A006004 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(n+3, 3)+C(n+1, 3)+C(n, 3)` (program `A006004.P1095636762425067350`, by `A006004.P1095636762425067350.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A006004.P1095636762425067350

`C(n+3, 3)+C(n+1, 3)+C(n, 3)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A006004

/-- `C(n+3, 3)+C(n+1, 3)+C(n, 3)` -/
def P1095636762425067350.Spec : Prop :=
  ∀ n, (P1095636762425067350.a n : ℤ) = A006004 (n + 1)

theorem P1095636762425067350.correct : P1095636762425067350.Spec := by
  intro n
  simp only [A006004, Nat.add_sub_cancel]

end A006004

/-! ## A006004.P8006176358942806797

`((n+1)^3-2*(n+1)²+5*(n+1)-2)/2`
-/

namespace A006004.P8006176358942806797
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n + 1) ^ 3 : ℤ) - (2 * (n + 1) ^ 2 : ℤ) + (5 * (n + 1) : ℤ) - 2 : ℚ) / 2

end

end A006004.P8006176358942806797

namespace A006004

/-- `((n+1)^3-2*(n+1)²+5*(n+1)-2)/2` -/
def P8006176358942806797.Spec : Prop :=
  ∀ n, P8006176358942806797.a n = (A006004 (n + 1) : ℚ)

theorem P8006176358942806797.correct : P8006176358942806797.Spec := by
  intro n
  simp only [A006004, Nat.add_sub_cancel, A006004.P8006176358942806797.a, A006004.P1095636762425067350.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A006004

/-! ## A006004.P937828738239162100

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=1, a(1)=4, a(2)=11, a(3)=25`
-/

namespace A006004.P937828738239162100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 11, 25] fun n a =>
  4 * a (n - 1) - 6 * a (n - 2) + 4 * a (n - 3) - a (n - 4)

end

end A006004.P937828738239162100

namespace A006004

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P937828738239162100.Spec : Prop :=
  ∀ n, P937828738239162100.a n = A006004 (n + 1)

end A006004

/-! ## A006004.P16446237376488225520

`∑[∑[a(n-1)+3]]` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A006004.P16446237376488225520
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 4] fun n f2 =>
  f2 (n - 1) + 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006004.P16446237376488225520

namespace A006004

/-- `∑[∑[a(n-1)+3]]` -/
def P16446237376488225520.Spec : Prop :=
  ∀ n, (P16446237376488225520.a n : ℤ) = A006004 (n + 1)

end A006004

/-! ## A006004.P14400046173753085249

`∑[abs(∑[a(n-1)-3])]` with `a(0)=1, a(1)=-4, a(2)=-4`
-/

namespace A006004.P14400046173753085249
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, -4, -4] fun n f2 =>
  f2 (n - 1) - 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f2 j|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006004.P14400046173753085249

namespace A006004

/-- `∑[abs(∑[a(n-1)-3])]` -/
def P14400046173753085249.Spec : Prop :=
  ∀ n, P14400046173753085249.a n = A006004 (n + 1)

end A006004

/-! ## A006004.P12796703153218308991

`∑[3*n-(2-a(n-1))]` with `a(0)=1, a(1)=3`
-/

namespace A006004.P12796703153218308991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  (3 * n : ℤ) - (2 - f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006004.P12796703153218308991

namespace A006004

/-- `∑[3*n-(2-a(n-1))]` -/
def P12796703153218308991.Spec : Prop :=
  ∀ n, P12796703153218308991.a n = A006004 (n + 1)

end A006004

/-! ## A006004.P1811559564988434148

`floor(n-∑[∑[a(n-1)-3]])` with `a(0)=-1, a(1)=-1`

`floor` is left out, it is the identity on integers.
-/

namespace A006004.P1811559564988434148
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [-1, -1] fun n f2 =>
  f2 (n - 1) - 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006004.P1811559564988434148

namespace A006004

/-- `floor(n-∑[∑[a(n-1)-3]])` -/
def P1811559564988434148.Spec : Prop :=
  ∀ n, P1811559564988434148.a n = A006004 (n + 1)

end A006004

/-! ## A006004.P1904999494604452628

`∑[∑[n+1]+((n-1)%(n+1))²]`
-/

namespace A006004.P1904999494604452628
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) + Int.tmod ((n : ℤ) - 1) (n + 1 : ℤ) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006004.P1904999494604452628

namespace A006004

/-- `∑[∑[n+1]+((n-1)%(n+1))²]` -/
def P1904999494604452628.Spec : Prop :=
  ∀ n, P1904999494604452628.a n = A006004 (n + 1)

end A006004

/-! ## A006004.P505242209340799837

`floor(lcm(n+1, n²)/2+2*n+1)`
-/

namespace A006004.P505242209340799837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.lcm (n + 1) (n ^ 2) : ℚ) / 2 + (2 * n + 1 : ℚ)⌋

end

end A006004.P505242209340799837

namespace A006004

/-- `floor(lcm(n+1, n²)/2+2*n+1)` -/
def P505242209340799837.Spec : Prop :=
  ∀ n, P505242209340799837.a n = A006004 (n + 1)

end A006004

/-! ## A006004.P9597105830660108507

`A064808(n)+n`
-/

namespace A006004.P9597105830660108507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064808 n + (n : ℤ)

end

end A006004.P9597105830660108507

namespace A006004

/-- `A064808(n)+n` -/
def P9597105830660108507.Spec : Prop :=
  ∀ n, P9597105830660108507.a n = A006004 (n + 1)

end A006004

/-! ## A006004.P6843502436903770217

`∑[abs(A173247(n))]`
-/

namespace A006004.P6843502436903770217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A173247 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006004.P6843502436903770217

namespace A006004

/-- `∑[abs(A173247(n))]` -/
def P6843502436903770217.Spec : Prop :=
  ∀ n, P6843502436903770217.a n = A006004 (n + 1)

end A006004

/-! ## A006004.P12764985073325855769

`∑[A143689(n)]+n`
-/

namespace A006004.P12764985073325855769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143689 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A006004.P12764985073325855769

namespace A006004

/-- `∑[A143689(n)]+n` -/
def P12764985073325855769.Spec : Prop :=
  ∀ n, P12764985073325855769.a n = A006004 (n + 1)

end A006004

/-! ## A006004.P5526806046029037485

`n*A133263(n)+1`
-/

namespace A006004.P5526806046029037485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A133263 n + 1

end

end A006004.P5526806046029037485

namespace A006004

/-- `n*A133263(n)+1` -/
def P5526806046029037485.Spec : Prop :=
  ∀ n, P5526806046029037485.a n = A006004 (n + 1)

end A006004

/-! ## A006004.P2411116162332863813

`A100119(n)+2*n`
-/

namespace A006004.P2411116162332863813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100119 n + (2 * n : ℤ)

end

end A006004.P2411116162332863813

namespace A006004

/-- `A100119(n)+2*n` -/
def P2411116162332863813.Spec : Prop :=
  ∀ n, P2411116162332863813.a n = A006004 (n + 1)

end A006004

/-! ## A006004.P18421462063805720987

`∑[∑[A033627(n+1)]]`
-/

namespace A006004.P18421462063805720987
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033627 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006004.P18421462063805720987

namespace A006004

/-- `∑[∑[A033627(n+1)]]` -/
def P18421462063805720987.Spec : Prop :=
  ∀ n, P18421462063805720987.a n = A006004 (n + 1)

end A006004

/-! ## A006004.P18409579186155271898

`A002411(n)+Δ[n²]`
-/

namespace A006004.P18409579186155271898
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002411 n + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A006004.P18409579186155271898

namespace A006004

/-- `A002411(n)+Δ[n²]` -/
def P18409579186155271898.Spec : Prop :=
  ∀ n, P18409579186155271898.a n = A006004 (n + 1)

end A006004

/-! ## A006004.P13471922090907475958

`Δ[A002817(n)]-n²`
-/

namespace A006004.P13471922090907475958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002817 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (n ^ 2 : ℤ)

end

end A006004.P13471922090907475958

namespace A006004

/-- `Δ[A002817(n)]-n²` -/
def P13471922090907475958.Spec : Prop :=
  ∀ n, P13471922090907475958.a n = A006004 (n + 1)

end A006004

/-! ## A006004.P5193632440520052568

`∑[A005893(n)-∑[n]]`
-/

namespace A006004.P5193632440520052568
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005893 n - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006004.P5193632440520052568

namespace A006004

/-- `∑[A005893(n)-∑[n]]` -/
def P5193632440520052568.Spec : Prop :=
  ∀ n, P5193632440520052568.a n = A006004 (n + 1)

end A006004

/-! ## A006004.P9998126190589100980

`∑[∑[A113127(n)-n]]`
-/

namespace A006004.P9998126190589100980
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113127 n - (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006004.P9998126190589100980

namespace A006004

/-- `∑[∑[A113127(n)-n]]` -/
def P9998126190589100980.Spec : Prop :=
  ∀ n, P9998126190589100980.a n = A006004 (n + 1)

end A006004

/-! ## A006004.P11708772604862949552

`∑[A139482(n+1)+n]`
-/

namespace A006004.P11708772604862949552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139482 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006004.P11708772604862949552

namespace A006004

/-- `∑[A139482(n+1)+n]` -/
def P11708772604862949552.Spec : Prop :=
  ∀ n, P11708772604862949552.a n = A006004 (n + 1)

end A006004

/-!
# A006005: The odd prime numbers together with 1.

The programs for A006005, the canonical program `A006005.P1228063357782503489` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006005 has offset 1).

The definition of A006005 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A006005.P1228063357782503489

`A000040(n+1)-A000007(n)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A006005

/-- `A000040(n+1)-A000007(n)` -/
def P1228063357782503489.Spec : Prop :=
  ∀ n, P1228063357782503489.a n = A006005 (n + 1)

theorem P1228063357782503489.correct : P1228063357782503489.Spec := by
  intro n
  simp only [A006005, Nat.add_sub_cancel]

end A006005

/-! ## A006005.P11468147065151725371

`record[or(1, A259153(n))]`
-/

namespace A006005.P11468147065151725371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A259153 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006005.P11468147065151725371

namespace A006005

/-- `record[or(1, A259153(n))]` -/
def P11468147065151725371.Spec : Prop :=
  ∀ n, P11468147065151725371.a n = A006005 (n + 1)

end A006005

/-! ## A006005.P10375447857481925356

`A062876(n+1)/4`
-/

namespace A006005.P10375447857481925356
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062876 (n + 1) : ℚ) / 4

end

end A006005.P10375447857481925356

namespace A006005

/-- `A062876(n+1)/4` -/
def P10375447857481925356.Spec : Prop :=
  ∀ n, P10375447857481925356.a n = (A006005 (n + 1) : ℚ)

end A006005

/-! ## A006005.P8747723313212604322

`or(1, A006093(n+1))`
-/

namespace A006005.P8747723313212604322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A006093 (n + 1))

end

end A006005.P8747723313212604322

namespace A006005

/-- `or(1, A006093(n+1))` -/
def P8747723313212604322.Spec : Prop :=
  ∀ n, P8747723313212604322.a n = A006005 (n + 1)

end A006005

/-! ## A006005.P7047069744779539274

`ceil(sqrt(A306190(n+1)))`
-/

namespace A006005.P7047069744779539274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A306190 (n + 1) : ℝ)⌉

end

end A006005.P7047069744779539274

namespace A006005

/-- `ceil(sqrt(A306190(n+1)))` -/
def P7047069744779539274.Spec : Prop :=
  ∀ n, P7047069744779539274.a n = A006005 (n + 1)

end A006005

/-! ## A006005.P16647054143952141927

`round(sqrt(A049001(n+1)))`
-/

namespace A006005.P16647054143952141927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A049001 (n + 1) : ℝ))

end

end A006005.P16647054143952141927

namespace A006005

/-- `round(sqrt(A049001(n+1)))` -/
def P16647054143952141927.Spec : Prop :=
  ∀ n, P16647054143952141927.a n = A006005 (n + 1)

end A006005

/-! ## A006005.P15627129952056203672

`∏{p}[A073579(n+1), #]`
-/

namespace A006005.P15627129952056203672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073579 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A006005.P15627129952056203672

namespace A006005

/-- `∏{p}[A073579(n+1), #]` -/
def P15627129952056203672.Spec : Prop :=
  ∀ n, (P15627129952056203672.a n : ℤ) = A006005 (n + 1)

end A006005

/-! ## A006005.P13943797257540252192

`or(1, Δ[A007504(n)]-1)`
-/

namespace A006005.P13943797257540252192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (n + 1) - f1 n - 1)

end

end A006005.P13943797257540252192

namespace A006005

/-- `or(1, Δ[A007504(n)]-1)` -/
def P13943797257540252192.Spec : Prop :=
  ∀ n, P13943797257540252192.a n = A006005 (n + 1)

end A006005

/-! ## A006005.P200021076711465488

`2*A102781(n+1)+1`
-/

namespace A006005.P200021076711465488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A102781 (n + 1) + 1

end

end A006005.P200021076711465488

namespace A006005

/-- `2*A102781(n+1)+1` -/
def P200021076711465488.Spec : Prop :=
  ∀ n, P200021076711465488.a n = A006005 (n + 1)

end A006005

/-! ## A006005.P8540432428061240876

`or(1, A086801(n+1)+2)`
-/

namespace A006005.P8540432428061240876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A086801 (n + 1) + 2)

end

end A006005.P8540432428061240876

namespace A006005

/-- `or(1, A086801(n+1)+2)` -/
def P8540432428061240876.Spec : Prop :=
  ∀ n, P8540432428061240876.a n = A006005 (n + 1)

end A006005

/-! ## A006005.P14163026861784592493

`a(n-1)+A001223(n)` with `a(0)=1, a(1)=3`
-/

namespace A006005.P14163026861784592493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (n - 1) + A001223 n

end

end A006005.P14163026861784592493

namespace A006005

/-- `a(n-1)+A001223(n)` -/
def P14163026861784592493.Spec : Prop :=
  ∀ n, P14163026861784592493.a n = A006005 (n + 1)

end A006005

/-! ## A006005.P1044168961366546357

`A001043(n)-a(n-1)` with `a(0)=1, a(1)=3`
-/

namespace A006005.P1044168961366546357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  A001043 n - a (n - 1)

end

end A006005.P1044168961366546357

namespace A006005

/-- `A001043(n)-a(n-1)` -/
def P1044168961366546357.Spec : Prop :=
  ∀ n, P1044168961366546357.a n = A006005 (n + 1)

end A006005

/-! ## A006005.P13044404309298238429

`A000040(a(and(2, n²))+n)` with `a(0)=1`
-/

namespace A006005.P13044404309298238429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000040 (a (Nat.land 2 (n ^ 2)) + (n : ℤ)).toNat

end

end A006005.P13044404309298238429

namespace A006005

/-- `A000040(a(and(2, n²))+n)` -/
def P13044404309298238429.Spec : Prop :=
  ∀ n, P13044404309298238429.a n = A006005 (n + 1)

end A006005

/-! ## A006005.P17619077705870060350

`A000040(a(n-1)%2+n)` with `a(0)=1`
-/

namespace A006005.P17619077705870060350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000040 (Int.tmod (a (n - 1)) 2 + (n : ℤ)).toNat

end

end A006005.P17619077705870060350

namespace A006005

/-- `A000040(a(n-1)%2+n)` -/
def P17619077705870060350.Spec : Prop :=
  ∀ n, P17619077705870060350.a n = A006005 (n + 1)

end A006005

/-! ## A006005.P2426201442706891235

`A000040(gcd(2, a(n-1))+n)` with `a(0)=1`
-/

namespace A006005.P2426201442706891235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000040 (Int.gcd 2 (a (n - 1)) + n)

end

end A006005.P2426201442706891235

namespace A006005

/-- `A000040(gcd(2, a(n-1))+n)` -/
def P2426201442706891235.Spec : Prop :=
  ∀ n, P2426201442706891235.a n = A006005 (n + 1)

end A006005

/-! ## A006005.P16695647573278927630

`A000040(and(1, a(n-1))+n)` with `a(0)=1`
-/

namespace A006005.P16695647573278927630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000040 (Int.land 1 (a (n - 1)) + (n : ℤ)).toNat

end

end A006005.P16695647573278927630

namespace A006005

/-- `A000040(and(1, a(n-1))+n)` -/
def P16695647573278927630.Spec : Prop :=
  ∀ n, P16695647573278927630.a n = A006005 (n + 1)

end A006005

/-! ## A006005.P8772558079553149335

`A000040(a(C(2, n+2))+n)` with `a(0)=1`
-/

namespace A006005.P8772558079553149335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000040 (a (Nat.choose 2 (n + 2)) + (n : ℤ)).toNat

end

end A006005.P8772558079553149335

namespace A006005

/-- `A000040(a(C(2, n+2))+n)` -/
def P8772558079553149335.Spec : Prop :=
  ∀ n, P8772558079553149335.a n = A006005 (n + 1)

end A006005

/-! ## A006005.P1524728868567236461

`Δ[A000040(n)+a(n-1)]` with `a(0)=0, a(1)=1`
-/

namespace A006005.P1524728868567236461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  A000040 n + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A006005.P1524728868567236461

namespace A006005

/-- `Δ[A000040(n)+a(n-1)]` -/
def P1524728868567236461.Spec : Prop :=
  ∀ n, P1524728868567236461.a n = A006005 (n + 1)

end A006005

/-! ## A006005.P5459923010943310866

`A057427(n)+A006093(n+1)`
-/

namespace A006005.P5459923010943310866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + A006093 (n + 1)

end

end A006005.P5459923010943310866

namespace A006005

/-- `A057427(n)+A006093(n+1)` -/
def P5459923010943310866.Spec : Prop :=
  ∀ n, P5459923010943310866.a n = A006005 (n + 1)

theorem P5459923010943310866.correct : P5459923010943310866.Spec := by
  intro n
  simp only [A006005, Nat.add_sub_cancel, A006005.P5459923010943310866.a, A006005.P1228063357782503489.a, A000007, A000007.P6599383543502402472.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006093, A006093.P2906174024863549003.a, A057427, A057427.P3058147525557661423.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A006005

/-!
# A006006: Weight distribution of [ 128,29,32 ] 2nd-order Reed-Muller code.

The programs for A006006, there is no canonical definition to state claims against.
-/

/-! ## A006006.P5074206493998720426

`A000120(A095670(n))*A110838(n)`
-/

namespace A006006.P5074206493998720426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A095670 n).toNat * A110838 n

end

end A006006.P5074206493998720426

/-! ## A006006.P14775696326586985393

`A069705(A006034(n+1))*A110838(n)`
-/

namespace A006006.P14775696326586985393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069705 (A006034 (n + 1)).toNat * A110838 n

end

end A006006.P14775696326586985393

/-! ## A006006.P14053966319279283797

`A000010(A110796(n+1))*A110838(n)`
-/

namespace A006006.P14053966319279283797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A110796 (n + 1)).toNat * A110838 n

end

end A006006.P14053966319279283797

/-! ## A006006.P15225680743580735425

`A000120(A183372(n+1))*A110838(n)`
-/

namespace A006006.P15225680743580735425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A183372 (n + 1)).toNat * A110838 n

end

end A006006.P15225680743580735425

/-!
# A006007: 4-dimensional analog of centered polygonal numbers: a(n) = n(n+1)*(n^2+n+4)/12.

The programs for A006007, the canonical program `A006007.P8594361672457255232` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006007 has offset 0).

The definition of A006007 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n+1)*(n²+n+4)/12` (program `A006007.P6289856424282868923`, by `A006007.P6289856424282868923.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A006007.P17272087212702592619

`2*C(n+2, 4)+C(n+1, 2)`
-/

namespace A006007.P17272087212702592619
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.choose (n + 2) 4 + Nat.choose (n + 1) 2

end

end A006007.P17272087212702592619

namespace A006007

/-- `2*C(n+2, 4)+C(n+1, 2)` -/
def P17272087212702592619.Spec : Prop :=
  ∀ n, (P17272087212702592619.a n : ℤ) = A006007 n

end A006007

/-! ## A006007.P6289856424282868923

`n*(n+1)*(n²+n+4)/12`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A006007.P6289856424282868923
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n * (n + 1) * (n ^ 2 + n + 4) : ℚ) / 12

end

end A006007.P6289856424282868923

namespace A006007

/-- `n*(n+1)*(n²+n+4)/12` -/
def P6289856424282868923.Spec : Prop :=
  ∀ n, P6289856424282868923.a n = (A006007 n : ℚ)

theorem P6289856424282868923.correct : P6289856424282868923.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A006007, Nat.add_sub_cancel, A006007.P6289856424282868923.a, A006007.P8594361672457255232.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A006007, Nat.add_sub_cancel, A006007.P6289856424282868923.a, A006007.P8594361672457255232.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A006007

/-! ## A006007.P8594361672457255232

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=0, a(1)=1, a(2)=5, a(3)=16, a(4)=40`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A006007

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P8594361672457255232.Spec : Prop :=
  ∀ n, P8594361672457255232.a n = A006007 n

theorem P8594361672457255232.correct : P8594361672457255232.Spec := by
  intro n
  simp only [A006007]

end A006007

/-! ## A006007.P3525036390687719708

`sqrt(A061318(n)-A061316(n))`
-/

namespace A006007.P3525036390687719708
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A061318 n - A061316 n : ℝ)

end

end A006007.P3525036390687719708

namespace A006007

/-- `sqrt(A061318(n)-A061316(n))` -/
def P3525036390687719708.Spec : Prop :=
  ∀ n, P3525036390687719708.a n = (A006007 n : ℝ)

end A006007

/-! ## A006007.P5398754833890642695

`∑[∑[n²]-C(n, 2)]`
-/

namespace A006007.P5398754833890642695
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - (Nat.choose n 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006007.P5398754833890642695

namespace A006007

/-- `∑[∑[n²]-C(n, 2)]` -/
def P5398754833890642695.Spec : Prop :=
  ∀ n, P5398754833890642695.a n = A006007 n

end A006007

/-! ## A006007.P337776813399132230

`∑[n²+2*C(n, 3)]`
-/

namespace A006007.P337776813399132230
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 2 * Nat.choose n 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006007.P337776813399132230

namespace A006007

/-- `∑[n²+2*C(n, 3)]` -/
def P337776813399132230.Spec : Prop :=
  ∀ n, (P337776813399132230.a n : ℤ) = A006007 n

end A006007

/-! ## A006007.P9453212135143486923

`∑[n*xor(2, n²)/3]`
-/

namespace A006007.P9453212135143486923
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * ((Nat.xor 2 (n ^ 2) : ℚ) / 3)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006007.P9453212135143486923

namespace A006007

/-- `∑[n*xor(2, n²)/3]` -/
def P9453212135143486923.Spec : Prop :=
  ∀ n, P9453212135143486923.a n = (A006007 n : ℚ)

end A006007

/-! ## A006007.P12589618692733447656

`∑[∑[2*C(n, 2)]+n]`
-/

namespace A006007.P12589618692733447656
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.choose n 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006007.P12589618692733447656

namespace A006007

/-- `∑[∑[2*C(n, 2)]+n]` -/
def P12589618692733447656.Spec : Prop :=
  ∀ n, (P12589618692733447656.a n : ℤ) = A006007 n

end A006007

/-! ## A006007.P18446087015878703194

`∑[∑[lcm(n, 1-n)]+n]`
-/

namespace A006007.P18446087015878703194
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (1 - (n : ℤ))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006007.P18446087015878703194

namespace A006007

/-- `∑[∑[lcm(n, 1-n)]+n]` -/
def P18446087015878703194.Spec : Prop :=
  ∀ n, (P18446087015878703194.a n : ℤ) = A006007 n

end A006007

/-! ## A006007.P5605455031568317248

`∑[∑[n]]+C(n², 2)/6`
-/

namespace A006007.P5605455031568317248
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) + (Nat.choose (n ^ 2) 2 : ℚ) / 6

end

end A006007.P5605455031568317248

namespace A006007

/-- `∑[∑[n]]+C(n², 2)/6` -/
def P5605455031568317248.Spec : Prop :=
  ∀ n, P5605455031568317248.a n = (A006007 n : ℚ)

end A006007

/-! ## A006007.P7005969349060440151

`∑[∑[∑[∪[2*n, 2^n]]]]`
-/

namespace A006007.P7005969349060440151
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f4 j = x) ∨ ∃ j, f5 j = x) n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006007.P7005969349060440151

namespace A006007

/-- `∑[∑[∑[∪[2*n, 2^n]]]]` -/
def P7005969349060440151.Spec : Prop :=
  ∀ n, (P7005969349060440151.a n : ℤ) = A006007 n

end A006007

/-! ## A006007.P3781907339136393659

`C(n+1, 4)+C(n+3, 4)`
-/

namespace A006007.P3781907339136393659
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) 4 + Nat.choose (n + 3) 4

end

end A006007.P3781907339136393659

namespace A006007

/-- `C(n+1, 4)+C(n+3, 4)` -/
def P3781907339136393659.Spec : Prop :=
  ∀ n, (P3781907339136393659.a n : ℤ) = A006007 n

end A006007

/-! ## A006007.P16360615725953747322

`∑[∑[∑[comp[a(n-1)+2]]]]` with `a(0)=3`
-/

namespace A006007.P16360615725953747322
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.rec [3] fun n f4 =>
  f4 (n - 1) + 2

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006007.P16360615725953747322

namespace A006007

/-- `∑[∑[∑[comp[a(n-1)+2]]]]` -/
def P16360615725953747322.Spec : Prop :=
  ∀ n, (P16360615725953747322.a n : ℤ) = A006007 n

end A006007

/-! ## A006007.P14220491983389608210

`∑[∑[∑[a(n-1)+2]]]` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A006007.P14220491983389608210
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2] fun n f3 =>
  f3 (n - 1) + 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006007.P14220491983389608210

namespace A006007

/-- `∑[∑[∑[a(n-1)+2]]]` -/
def P14220491983389608210.Spec : Prop :=
  ∀ n, (P14220491983389608210.a n : ℤ) = A006007 n

end A006007

/-! ## A006007.P14221042055169282374

`∑[∑[n²-(n-1)%(n+1)]]`
-/

namespace A006007.P14221042055169282374
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - Int.tmod ((n : ℤ) - 1) (n + 1 : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006007.P14221042055169282374

namespace A006007

/-- `∑[∑[n²-(n-1)%(n+1)]]` -/
def P14221042055169282374.Spec : Prop :=
  ∀ n, P14221042055169282374.a n = A006007 n

end A006007

/-! ## A006007.P3581152628176536313

`∑[n-∑[∑[a(n-1)-2]]]` with `a(0)=0, a(1)=0`
-/

namespace A006007.P3581152628176536313
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n f3 =>
  f3 (n - 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006007.P3581152628176536313

namespace A006007

/-- `∑[n-∑[∑[a(n-1)-2]]]` -/
def P3581152628176536313.Spec : Prop :=
  ∀ n, P3581152628176536313.a n = A006007 n

end A006007

/-! ## A006007.P8847817140945598941

`∑[∑[(n-1)*gcd(n, 2*n)]+n]`
-/

namespace A006007.P8847817140945598941
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * (Nat.gcd n (2 * n) : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006007.P8847817140945598941

namespace A006007

/-- `∑[∑[(n-1)*gcd(n, 2*n)]+n]` -/
def P8847817140945598941.Spec : Prop :=
  ∀ n, P8847817140945598941.a n = A006007 n

end A006007

/-! ## A006007.P2507893460969340022

`∑[A006527(n)]`
-/

namespace A006007.P2507893460969340022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006527 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006007.P2507893460969340022

namespace A006007

/-- `∑[A006527(n)]` -/
def P2507893460969340022.Spec : Prop :=
  ∀ n, P2507893460969340022.a n = A006007 n

end A006007

/-! ## A006007.P5504711445832107266

`∑[A054602(n)/3]`
-/

namespace A006007.P5504711445832107266
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054602 n : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006007.P5504711445832107266

namespace A006007

/-- `∑[A054602(n)/3]` -/
def P5504711445832107266.Spec : Prop :=
  ∀ n, P5504711445832107266.a n = (A006007 n : ℚ)

end A006007

/-! ## A006007.P10071567629166800141

`∑[A217873(n)/4]`
-/

namespace A006007.P10071567629166800141
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A217873 n : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006007.P10071567629166800141

namespace A006007

/-- `∑[A217873(n)/4]` -/
def P10071567629166800141.Spec : Prop :=
  ∀ n, P10071567629166800141.a n = (A006007 n : ℚ)

end A006007

/-!
# A006008: Number of inequivalent ways to color vertices of a regular tetrahedron using <= n colors.

The programs for A006008, the canonical program `A006008.P4028161414134753983` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006008 has offset 0).

The definition of A006008 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A006008.P17438060821207312734

`C(n+3, 4)+C(n, 4)`
-/

namespace A006008.P17438060821207312734
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 3) 4 + Nat.choose n 4

end

end A006008.P17438060821207312734

namespace A006008

/-- `C(n+3, 4)+C(n, 4)` -/
def P17438060821207312734.Spec : Prop :=
  ∀ n, (P17438060821207312734.a n : ℤ) = A006008 n

end A006008

/-! ## A006008.P10124911789499409554

`(n^4+11*n²)/12`
-/

namespace A006008.P10124911789499409554
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 4 + 11 * n ^ 2 : ℚ) / 12

end

end A006008.P10124911789499409554

namespace A006008

/-- `(n^4+11*n²)/12` -/
def P10124911789499409554.Spec : Prop :=
  ∀ n, P10124911789499409554.a n = (A006008 n : ℚ)

theorem P10124911789499409554.correct : P10124911789499409554.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A006008, Nat.add_sub_cancel, A006008.P10124911789499409554.a, A006008.P4028161414134753983.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A006008, Nat.add_sub_cancel, A006008.P10124911789499409554.a, A006008.P4028161414134753983.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A006008

/-! ## A006008.P4028161414134753983

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=0, a(1)=1, a(2)=5, a(3)=15, a(4)=36`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A006008

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P4028161414134753983.Spec : Prop :=
  ∀ n, P4028161414134753983.a n = A006008 n

theorem P4028161414134753983.correct : P4028161414134753983.Spec := by
  intro n
  simp only [A006008]

end A006008

/-! ## A006008.P847951618566329657

`A000332(n+3)+A000332(n)`
-/

namespace A006008.P847951618566329657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 (n + 3) + A000332 n

end

end A006008.P847951618566329657

namespace A006008

/-- `A000332(n+3)+A000332(n)` -/
def P847951618566329657.Spec : Prop :=
  ∀ n, P847951618566329657.a n = A006008 n

end A006008

/-! ## A006008.P12145125990821313740

`∑[∑[∑[n]]]+C(n, 4)`
-/

namespace A006008.P12145125990821313740
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Nat.choose n 4

end

end A006008.P12145125990821313740

namespace A006008

/-- `∑[∑[∑[n]]]+C(n, 4)` -/
def P12145125990821313740.Spec : Prop :=
  ∀ n, (P12145125990821313740.a n : ℤ) = A006008 n

end A006008

/-! ## A006008.P12672408726803798340

`∑[∑[∑[a(n-1)+2]]]` with `a(0)=0, a(1)=1, a(2)=2, a(3)=3`
-/

namespace A006008.P12672408726803798340
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2, 3] fun n f3 =>
  f3 (n - 1) + 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006008.P12672408726803798340

namespace A006008

/-- `∑[∑[∑[a(n-1)+2]]]` -/
def P12672408726803798340.Spec : Prop :=
  ∀ n, (P12672408726803798340.a n : ℤ) = A006008 n

end A006008

/-! ## A006008.P2810123109532891967

`n²+n/4*∑[lcm(n, n-1)]`
-/

namespace A006008.P2810123109532891967
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) ((n : ℤ) - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℚ) + (n : ℚ) / 4 * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)

end

end A006008.P2810123109532891967

namespace A006008

/-- `n²+n/4*∑[lcm(n, n-1)]` -/
def P2810123109532891967.Spec : Prop :=
  ∀ n, P2810123109532891967.a n = (A006008 n : ℚ)

end A006008

/-! ## A006008.P5833143070429742964

`A002415(n)+n²`
-/

namespace A006008.P5833143070429742964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002415 n + (n ^ 2 : ℤ)

end

end A006008.P5833143070429742964

namespace A006008

/-- `A002415(n)+n²` -/
def P5833143070429742964.Spec : Prop :=
  ∀ n, P5833143070429742964.a n = A006008 n

end A006008

/-! ## A006008.P12236403155439646790

`A136396(n)-(n+1)`
-/

namespace A006008.P12236403155439646790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136396 n - (n + 1 : ℤ)

end

end A006008.P12236403155439646790

namespace A006008

/-- `A136396(n)-(n+1)` -/
def P12236403155439646790.Spec : Prop :=
  ∀ n, P12236403155439646790.a n = A006008 n

end A006008

/-! ## A006008.P12847987215541826438

`n/4*A140226(n)`
-/

namespace A006008.P12847987215541826438
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 4 * (A140226 n : ℚ)

end

end A006008.P12847987215541826438

namespace A006008

/-- `n/4*A140226(n)` -/
def P12847987215541826438.Spec : Prop :=
  ∀ n, P12847987215541826438.a n = (A006008 n : ℚ)

end A006008

/-! ## A006008.P18018732543408736760

`n²+A008911(n)/2`
-/

namespace A006008.P18018732543408736760
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℚ) + (A008911 n : ℚ) / 2

end

end A006008.P18018732543408736760

namespace A006008

/-- `n²+A008911(n)/2` -/
def P18018732543408736760.Spec : Prop :=
  ∀ n, P18018732543408736760.a n = (A006008 n : ℚ)

end A006008

/-! ## A006008.P13066670434509600248

`n²+A006011(n)/3`
-/

namespace A006008.P13066670434509600248
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℚ) + (A006011 n : ℚ) / 3

end

end A006008.P13066670434509600248

namespace A006008

/-- `n²+A006011(n)/3` -/
def P13066670434509600248.Spec : Prop :=
  ∀ n, P13066670434509600248.a n = (A006008 n : ℚ)

end A006008

/-! ## A006008.P15906817141088530207

`A136395(n)-∑[n+1]`
-/

namespace A006008.P15906817141088530207
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136395 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A006008.P15906817141088530207

namespace A006008

/-- `A136395(n)-∑[n+1]` -/
def P15906817141088530207.Spec : Prop :=
  ∀ n, P15906817141088530207.a n = A006008 n

end A006008

/-! ## A006008.P16350892944472313994

`n/2*∑[A238531(n)]`
-/

namespace A006008.P16350892944472313994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238531 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A006008.P16350892944472313994

namespace A006008

/-- `n/2*∑[A238531(n)]` -/
def P16350892944472313994.Spec : Prop :=
  ∀ n, P16350892944472313994.a n = (A006008 n : ℚ)

end A006008

/-! ## A006008.P5645220190400838589

`n²+∑[n]²-∑[A002412(n)]`
-/

namespace A006008.P5645220190400838589
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002412 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) + ((((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - ∑ j ∈ Finset.range (n + 1), f2 j)

end

end A006008.P5645220190400838589

namespace A006008

/-- `n²+∑[n]²-∑[A002412(n)]` -/
def P5645220190400838589.Spec : Prop :=
  ∀ n, P5645220190400838589.a n = A006008 n

end A006008

/-! ## A006008.P17002642078796087775

`∑[∑[A000290(n)]-(1-n)²]+1`
-/

namespace A006008.P17002642078796087775
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (1 - (n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A006008.P17002642078796087775

namespace A006008

/-- `∑[∑[A000290(n)]-(1-n)²]+1` -/
def P17002642078796087775.Spec : Prop :=
  ∀ n, P17002642078796087775.a n = A006008 n

end A006008

/-! ## A006008.P2236427072052292487

`∑{d}[n, A346761(#)]+∑[(n/2+1)*(n²+n)/3]`
-/

namespace A006008.P2236427072052292487
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℚ) / 2 + 1) * (n ^ 2 + n : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), A346761 d : ℤ) : ℚ) + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A006008.P2236427072052292487

namespace A006008

/-- `∑{d}[n, A346761(#)]+∑[(n/2+1)*(n²+n)/3]` -/
def P2236427072052292487.Spec : Prop :=
  ∀ n, P2236427072052292487.a n = (A006008 n : ℚ)

end A006008

/-! ## A006008.P4007735619556273484

`A034827(n)+A006003(n)`
-/

namespace A006008.P4007735619556273484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034827 n + A006003 n

end

end A006008.P4007735619556273484

namespace A006008

/-- `A034827(n)+A006003(n)` -/
def P4007735619556273484.Spec : Prop :=
  ∀ n, P4007735619556273484.a n = A006008 n

end A006008

/-! ## A006008.P6366277160508544101

`A117662(n)+A000326(n)`
-/

namespace A006008.P6366277160508544101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117662 n + A000326 n

end

end A006008.P6366277160508544101

namespace A006008

/-- `A117662(n)+A000326(n)` -/
def P6366277160508544101.Spec : Prop :=
  ∀ n, P6366277160508544101.a n = A006008 n

end A006008

/-! ## A006008.P8366878905293788002

`A084849(n)-A080260(n)`
-/

namespace A006008.P8366878905293788002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084849 n - A080260 n

end

end A006008.P8366878905293788002

namespace A006008

/-- `A084849(n)-A080260(n)` -/
def P8366878905293788002.Spec : Prop :=
  ∀ n, P8366878905293788002.a n = A006008 n

end A006008

/-!
# A006009: Number of paraffins.

The programs for A006009, the canonical program `A006009.P16841882267142946396` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006009 has offset 1).

The definition of A006009 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A006009.P16841882267142946396

`∑[∑[∑[2*lcm(2, n+1)]]]`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A006009

/-- `∑[∑[∑[2*lcm(2, n+1)]]]` -/
def P16841882267142946396.Spec : Prop :=
  ∀ n, (P16841882267142946396.a n : ℤ) = A006009 (n + 1)

theorem P16841882267142946396.correct : P16841882267142946396.Spec := by
  intro n
  simp only [A006009, Nat.add_sub_cancel]

end A006009

/-! ## A006009.P753971863964630071

`∑[(n+2)*∑[gcd(2, n)+n]]`
-/

namespace A006009.P753971863964630071
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n + n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006009.P753971863964630071

namespace A006009

/-- `∑[(n+2)*∑[gcd(2, n)+n]]` -/
def P753971863964630071.Spec : Prop :=
  ∀ n, (P753971863964630071.a n : ℤ) = A006009 (n + 1)

end A006009

/-! ## A006009.P6199317829850515759

`∑[(n+2)*floor((n+2)²/2)]`
-/

namespace A006009.P6199317829850515759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * ⌊((n + 2) ^ 2 : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006009.P6199317829850515759

namespace A006009

/-- `∑[(n+2)*floor((n+2)²/2)]` -/
def P6199317829850515759.Spec : Prop :=
  ∀ n, P6199317829850515759.a n = A006009 (n + 1)

end A006009

/-! ## A006009.P6302432839614013582

`4*A007009(n+1)`
-/

namespace A006009.P6302432839614013582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A007009 (n + 1)

end

end A006009.P6302432839614013582

namespace A006009

/-- `4*A007009(n+1)` -/
def P6302432839614013582.Spec : Prop :=
  ∀ n, P6302432839614013582.a n = A006009 (n + 1)

end A006009

/-! ## A006009.P16588797065860460765

`∑[∑[A164097(n+1)]+1]+∑[n]`
-/

namespace A006009.P16588797065860460765
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164097 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ)

end

end A006009.P16588797065860460765

namespace A006009

/-- `∑[∑[A164097(n+1)]+1]+∑[n]` -/
def P16588797065860460765.Spec : Prop :=
  ∀ n, P16588797065860460765.a n = A006009 (n + 1)

end A006009

/-! ## A006009.P4246567697764665005

`2*(A005993(n)+∑[A199771(n+1)])`
-/

namespace A006009.P4246567697764665005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199771 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A005993 n + ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A006009.P4246567697764665005

namespace A006009

/-- `2*(A005993(n)+∑[A199771(n+1)])` -/
def P4246567697764665005.Spec : Prop :=
  ∀ n, P4246567697764665005.a n = A006009 (n + 1)

end A006009

/-! ## A006009.P1963895053109549806

`A241496(n+1)*A241496(n)`
-/

namespace A006009.P1963895053109549806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241496 (n + 1) * A241496 n

end

end A006009.P1963895053109549806

namespace A006009

/-- `A241496(n+1)*A241496(n)` -/
def P1963895053109549806.Spec : Prop :=
  ∀ n, P1963895053109549806.a n = A006009 (n + 1)

end A006009

/-! ## A006009.P13991755880083845315

`(A087811(n+1)+A087811(n+1))*A087811(n+2)`
-/

namespace A006009.P13991755880083845315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A087811 (n + 1) + A087811 (n + 1)) * A087811 (n + 2)

end

end A006009.P13991755880083845315

namespace A006009

/-- `(A087811(n+1)+A087811(n+1))*A087811(n+2)` -/
def P13991755880083845315.Spec : Prop :=
  ∀ n, P13991755880083845315.a n = A006009 (n + 1)

end A006009

/-! ## A006009.P14367565051792911994

`A128624(n+1)/A000217(n+1)*A128624(n+2)`
-/

namespace A006009.P14367565051792911994
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128624 (n + 1) : ℚ) / (A000217 (n + 1) : ℚ) * (A128624 (n + 2) : ℚ)

end

end A006009.P14367565051792911994

namespace A006009

/-- `A128624(n+1)/A000217(n+1)*A128624(n+2)` -/
def P14367565051792911994.Spec : Prop :=
  ∀ n, P14367565051792911994.a n = (A006009 (n + 1) : ℚ)

end A006009

/-! ## A006009.P3984858321597258269

`2*A330520(n+2)`
-/

namespace A006009.P3984858321597258269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A330520 (n + 2)

end

end A006009.P3984858321597258269

namespace A006009

/-- `2*A330520(n+2)` -/
def P3984858321597258269.Spec : Prop :=
  ∀ n, P3984858321597258269.a n = A006009 (n + 1)

end A006009

/-! ## A006009.P11482914693664884110

`4*∑[A034828(n+2)]`
-/

namespace A006009.P11482914693664884110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034828 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A006009.P11482914693664884110

namespace A006009

/-- `4*∑[A034828(n+2)]` -/
def P11482914693664884110.Spec : Prop :=
  ∀ n, P11482914693664884110.a n = A006009 (n + 1)

end A006009

/-! ## A006009.P8728777636022496130

`A131479(n+2)-a(n-1)` with `a(0)=4`
-/

namespace A006009.P8728777636022496130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  A131479 (n + 2) - a (n - 1)

end

end A006009.P8728777636022496130

namespace A006009

/-- `A131479(n+2)-a(n-1)` -/
def P8728777636022496130.Spec : Prop :=
  ∀ n, P8728777636022496130.a n = A006009 (n + 1)

end A006009

/-! ## A006009.P8084750917650433733

`A050534(n+3)+A008805(n)`
-/

namespace A006009.P8084750917650433733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050534 (n + 3) + A008805 n

end

end A006009.P8084750917650433733

namespace A006009

/-- `A050534(n+3)+A008805(n)` -/
def P8084750917650433733.Spec : Prop :=
  ∀ n, P8084750917650433733.a n = A006009 (n + 1)

end A006009

/-! ## A006009.P14376006965350452400

`A002817(n+2)-A001318(n+2)`
-/

namespace A006009.P14376006965350452400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002817 (n + 2) - A001318 (n + 2)

end

end A006009.P14376006965350452400

namespace A006009

/-- `A002817(n+2)-A001318(n+2)` -/
def P14376006965350452400.Spec : Prop :=
  ∀ n, P14376006965350452400.a n = A006009 (n + 1)

end A006009

/-! ## A006009.P1003293363399918168

`A007590(n+2)*A087811(n+2)`
-/

namespace A006009.P1003293363399918168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007590 (n + 2) * A087811 (n + 2)

end

end A006009.P1003293363399918168

namespace A006009

/-- `A007590(n+2)*A087811(n+2)` -/
def P1003293363399918168.Spec : Prop :=
  ∀ n, P1003293363399918168.a n = A006009 (n + 1)

end A006009

/-! ## A006009.P10024945430979852999

`A050534(n+3)+A000217(A008619(n))`
-/

namespace A006009.P10024945430979852999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050534 (n + 3) + A000217 (A008619 n).toNat

end

end A006009.P10024945430979852999

namespace A006009

/-- `A050534(n+3)+A000217(A008619(n))` -/
def P10024945430979852999.Spec : Prop :=
  ∀ n, P10024945430979852999.a n = A006009 (n + 1)

end A006009

/-! ## A006009.P9611411912548068784

`A008619(n)*A131475(n+3)`
-/

namespace A006009.P9611411912548068784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n * A131475 (n + 3)

end

end A006009.P9611411912548068784

namespace A006009

/-- `A008619(n)*A131475(n+3)` -/
def P9611411912548068784.Spec : Prop :=
  ∀ n, P9611411912548068784.a n = A006009 (n + 1)

end A006009

/-! ## A006009.P2280062930379211028

`(A004526(n)+1)*A131475(n+3)`
-/

namespace A006009.P2280062930379211028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004526 n + 1) * A131475 (n + 3)

end

end A006009.P2280062930379211028

namespace A006009

/-- `(A004526(n)+1)*A131475(n+3)` -/
def P2280062930379211028.Spec : Prop :=
  ∀ n, P2280062930379211028.a n = A006009 (n + 1)

end A006009

/-! ## A006009.P3467875393973913913

`A002620(n+2)*A007590(n+3)`
-/

namespace A006009.P3467875393973913913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (n + 2) * A007590 (n + 3)

end

end A006009.P3467875393973913913

namespace A006009

/-- `A002620(n+2)*A007590(n+3)` -/
def P3467875393973913913.Spec : Prop :=
  ∀ n, P3467875393973913913.a n = A006009 (n + 1)

end A006009

/-! ## A006009.P6266401760247915611

`A001972(2*n+1)*A002620(n+3)`
-/

namespace A006009.P6266401760247915611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001972 (2 * n + 1) * A002620 (n + 3)

end

end A006009.P6266401760247915611

namespace A006009

/-- `A001972(2*n+1)*A002620(n+3)` -/
def P6266401760247915611.Spec : Prop :=
  ∀ n, P6266401760247915611.a n = A006009 (n + 1)

end A006009

/-!
# A006010: Number of paraffins (see Losanitsch reference for precise definition).

The programs for A006010, the canonical program `A006010.P12299008693535765113` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006010 has offset 1).

The definition of A006010 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A006010.P12299008693535765113

`∑[(n+1)*∑[or(1, n)]]`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A006010

/-- `∑[(n+1)*∑[or(1, n)]]` -/
def P12299008693535765113.Spec : Prop :=
  ∀ n, (P12299008693535765113.a n : ℤ) = A006010 (n + 1)

theorem P12299008693535765113.correct : P12299008693535765113.Spec := by
  intro n
  simp only [A006010, Nat.add_sub_cancel]

end A006010

/-! ## A006010.P5575824333264826315

`∑[(n+1)*ceil((n+1)²/2)]`
-/

namespace A006010.P5575824333264826315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ⌈((n + 1) ^ 2 : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006010.P5575824333264826315

namespace A006010

/-- `∑[(n+1)*ceil((n+1)²/2)]` -/
def P5575824333264826315.Spec : Prop :=
  ∀ n, P5575824333264826315.a n = A006010 (n + 1)

end A006010

/-! ## A006010.P761483537185798670

`a(n-1)+(n+1)*∑[2*n-a(n-1)]` with `a(0)=1`
-/

namespace A006010.P761483537185798670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  (2 * n : ℤ) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A006010.P761483537185798670

namespace A006010

/-- `a(n-1)+(n+1)*∑[2*n-a(n-1)]` -/
def P761483537185798670.Spec : Prop :=
  ∀ n, P761483537185798670.a n = A006010 (n + 1)

end A006010

/-! ## A006010.P5693346567257285902

`Δ[A335648(n)]`
-/

namespace A006010.P5693346567257285902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335648 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A006010.P5693346567257285902

namespace A006010

/-- `Δ[A335648(n)]` -/
def P5693346567257285902.Spec : Prop :=
  ∀ n, P5693346567257285902.a n = A006010 (n + 1)

end A006010

/-! ## A006010.P3207847587581967617

`and(∑[A317614(n+1)], -1)`
-/

namespace A006010.P3207847587581967617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317614 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (∑ j ∈ Finset.range (n + 1), f1 j) (-1)

end

end A006010.P3207847587581967617

namespace A006010

/-- `and(∑[A317614(n+1)], -1)` -/
def P3207847587581967617.Spec : Prop :=
  ∀ n, P3207847587581967617.a n = A006010 (n + 1)

end A006010

/-! ## A006010.P2642357595532195868

`∑[(A085046(n+1)+1)*(n+1)]/2`
-/

namespace A006010.P2642357595532195868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A085046 (n + 1) + 1) * (n + 1 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A006010.P2642357595532195868

namespace A006010

/-- `∑[(A085046(n+1)+1)*(n+1)]/2` -/
def P2642357595532195868.Spec : Prop :=
  ∀ n, P2642357595532195868.a n = (A006010 (n + 1) : ℚ)

end A006010

/-! ## A006010.P3364594203352248283

`A331429(n)+A193053(n)`
-/

namespace A006010.P3364594203352248283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331429 n + A193053 n

end

end A006010.P3364594203352248283

namespace A006010

/-- `A331429(n)+A193053(n)` -/
def P3364594203352248283.Spec : Prop :=
  ∀ n, P3364594203352248283.a n = A006010 (n + 1)

end A006010

/-! ## A006010.P14325776439814494051

`A128624(n+1)+A105636(n)`
-/

namespace A006010.P14325776439814494051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128624 (n + 1) + A105636 n

end

end A006010.P14325776439814494051

namespace A006010

/-- `A128624(n+1)+A105636(n)` -/
def P14325776439814494051.Spec : Prop :=
  ∀ n, P14325776439814494051.a n = A006010 (n + 1)

end A006010

/-! ## A006010.P5682787554060030441

`A335648(n+1)-A335648(n)`
-/

namespace A006010.P5682787554060030441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335648 (n + 1) - A335648 n

end

end A006010.P5682787554060030441

namespace A006010

/-- `A335648(n+1)-A335648(n)` -/
def P5682787554060030441.Spec : Prop :=
  ∀ n, P5682787554060030441.a n = A006010 (n + 1)

end A006010

/-! ## A006010.P15229791603048416225

`∑[2*A212760(n)]-A212760(n)`
-/

namespace A006010.P15229791603048416225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A212760 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A212760 n

end

end A006010.P15229791603048416225

namespace A006010

/-- `∑[2*A212760(n)]-A212760(n)` -/
def P15229791603048416225.Spec : Prop :=
  ∀ n, P15229791603048416225.a n = A006010 (n + 1)

end A006010

/-! ## A006010.P2647634017722256263

`A153977(n+1)-A111710(n+1)`
-/

namespace A006010.P2647634017722256263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153977 (n + 1) - A111710 (n + 1)

end

end A006010.P2647634017722256263

namespace A006010

/-- `A153977(n+1)-A111710(n+1)` -/
def P2647634017722256263.Spec : Prop :=
  ∀ n, P2647634017722256263.a n = A006010 (n + 1)

end A006010

/-! ## A006010.P15730950849436930391

`∑[A066830(n+1)+1]*A008619(n)`
-/

namespace A006010.P15730950849436930391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066830 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A008619 n

end

end A006010.P15730950849436930391

namespace A006010

/-- `∑[A066830(n+1)+1]*A008619(n)` -/
def P15730950849436930391.Spec : Prop :=
  ∀ n, P15730950849436930391.a n = A006010 (n + 1)

end A006010

/-! ## A006010.P1278307437337544249

`A002620(n+1)²+A083392(n+1)²`
-/

namespace A006010.P1278307437337544249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (n + 1) ^ 2 + A083392 (n + 1) ^ 2

end

end A006010.P1278307437337544249

namespace A006010

/-- `A002620(n+1)²+A083392(n+1)²` -/
def P1278307437337544249.Spec : Prop :=
  ∀ n, P1278307437337544249.a n = A006010 (n + 1)

end A006010

/-! ## A006010.P15093503871492063666

`A002817(n+1)+A211539(n)-A000217(n)`
-/

namespace A006010.P15093503871492063666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002817 (n + 1) + (A211539 n - A000217 n)

end

end A006010.P15093503871492063666

namespace A006010

/-- `A002817(n+1)+A211539(n)-A000217(n)` -/
def P15093503871492063666.Spec : Prop :=
  ∀ n, P15093503871492063666.a n = A006010 (n + 1)

end A006010

/-! ## A006010.P12889698357061887903

`A030179(n+1)+A002620(n+2)²`
-/

namespace A006010.P12889698357061887903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030179 (n + 1) + A002620 (n + 2) ^ 2

end

end A006010.P12889698357061887903

namespace A006010

/-- `A030179(n+1)+A002620(n+2)²` -/
def P12889698357061887903.Spec : Prop :=
  ∀ n, P12889698357061887903.a n = A006010 (n + 1)

end A006010

/-! ## A006010.P7293069050814193015

`A002620(n+1)²+A076921(n+2)²`
-/

namespace A006010.P7293069050814193015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (n + 1) ^ 2 + A076921 (n + 2) ^ 2

end

end A006010.P7293069050814193015

namespace A006010

/-- `A002620(n+1)²+A076921(n+2)²` -/
def P7293069050814193015.Spec : Prop :=
  ∀ n, P7293069050814193015.a n = A006010 (n + 1)

end A006010

/-! ## A006010.P4162138665869260187

`A001318(n+1)+A002817(n+1)-A000217(n+1)`
-/

namespace A006010.P4162138665869260187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001318 (n + 1) + (A002817 (n + 1) - A000217 (n + 1))

end

end A006010.P4162138665869260187

namespace A006010

/-- `A001318(n+1)+A002817(n+1)-A000217(n+1)` -/
def P4162138665869260187.Spec : Prop :=
  ∀ n, P4162138665869260187.a n = A006010 (n + 1)

end A006010

/-! ## A006010.P2689237440318317526

`A059859(n+2)-A059859(n)`
-/

namespace A006010.P2689237440318317526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059859 (n + 2) - A059859 n

end

end A006010.P2689237440318317526

namespace A006010

/-- `A059859(n+2)-A059859(n)` -/
def P2689237440318317526.Spec : Prop :=
  ∀ n, P2689237440318317526.a n = A006010 (n + 1)

end A006010

/-! ## A006010.P9220708586593787761

`Δ[A059859(n+1)+A059859(n)]`
-/

namespace A006010.P9220708586593787761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059859 (n + 1) + A059859 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A006010.P9220708586593787761

namespace A006010

/-- `Δ[A059859(n+1)+A059859(n)]` -/
def P9220708586593787761.Spec : Prop :=
  ∀ n, P9220708586593787761.a n = A006010 (n + 1)

end A006010

/-! ## A006010.P13192818395997750235

`A030179(n+1)+A030179(n+2)`
-/

namespace A006010.P13192818395997750235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030179 (n + 1) + A030179 (n + 2)

end

end A006010.P13192818395997750235

namespace A006010

/-- `A030179(n+1)+A030179(n+2)` -/
def P13192818395997750235.Spec : Prop :=
  ∀ n, P13192818395997750235.a n = A006010 (n + 1)

end A006010

/-!
# A006011: a(n) = n^2*(n^2 - 1)/4.

The programs for A006011, the canonical program `A006011.P3668477608306639061` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006011 has offset 0).

The definition of A006011 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A006011.P4915783139095359467

`C(n², 2)/2`
-/

namespace A006011.P4915783139095359467
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n ^ 2) 2 : ℚ) / 2

end

end A006011.P4915783139095359467

namespace A006011

/-- `C(n², 2)/2` -/
def P4915783139095359467.Spec : Prop :=
  ∀ n, P4915783139095359467.a n = (A006011 n : ℚ)

end A006011

/-! ## A006011.P10396861856287324852

`n²*(n²-1)/4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A006011.P10396861856287324852
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 : ℤ) * ((n ^ 2 : ℤ) - 1) : ℚ) / 4

end

end A006011.P10396861856287324852

namespace A006011

/-- `n²*(n²-1)/4` -/
def P10396861856287324852.Spec : Prop :=
  ∀ n, P10396861856287324852.a n = (A006011 n : ℚ)

end A006011

/-! ## A006011.P3668477608306639061

`3*A002415(n)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A006011

/-- `3*A002415(n)` -/
def P3668477608306639061.Spec : Prop :=
  ∀ n, P3668477608306639061.a n = A006011 n

theorem P3668477608306639061.correct : P3668477608306639061.Spec := by
  intro n
  simp only [A006011]

end A006011

/-! ## A006011.P11073446895875699404

`A000217(n²+n)-A000217(n)*A000217(n+1)`
-/

namespace A006011.P11073446895875699404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n ^ 2 + n) - A000217 n * A000217 (n + 1)

end

end A006011.P11073446895875699404

namespace A006011

/-- `A000217(n²+n)-A000217(n)*A000217(n+1)` -/
def P11073446895875699404.Spec : Prop :=
  ∀ n, P11073446895875699404.a n = A006011 n

end A006011

/-! ## A006011.P3453052534178580033

`C(n, 2)*∑[n]`
-/

namespace A006011.P3453052534178580033
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A006011.P3453052534178580033

namespace A006011

/-- `C(n, 2)*∑[n]` -/
def P3453052534178580033.Spec : Prop :=
  ∀ n, (P3453052534178580033.a n : ℤ) = A006011 n

end A006011

/-! ## A006011.P12356758501974653646

`∑[lcm(n-1+n, C(n, 2))]`
-/

namespace A006011.P12356758501974653646
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((n : ℤ) - 1 + (n : ℤ)) (Nat.choose n 2 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006011.P12356758501974653646

namespace A006011

/-- `∑[lcm(n-1+n, C(n, 2))]` -/
def P12356758501974653646.Spec : Prop :=
  ∀ n, (P12356758501974653646.a n : ℤ) = A006011 n

end A006011

/-! ## A006011.P18057054746341472088

`∑[lcm(n-1, n²)-C(n, 2)]`
-/

namespace A006011.P18057054746341472088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm ((n : ℤ) - 1) (n ^ 2 : ℤ) : ℤ) - (Nat.choose n 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006011.P18057054746341472088

namespace A006011

/-- `∑[lcm(n-1, n²)-C(n, 2)]` -/
def P18057054746341472088.Spec : Prop :=
  ∀ n, P18057054746341472088.a n = A006011 n

end A006011

/-! ## A006011.P14902754219727316016

`∑[∑[∑[a(n-1)+6]]]` with `a(0)=0, a(1)=0, a(2)=3`
-/

namespace A006011.P14902754219727316016
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 3] fun n f3 =>
  f3 (n - 1) + 6

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006011.P14902754219727316016

namespace A006011

/-- `∑[∑[∑[a(n-1)+6]]]` -/
def P14902754219727316016.Spec : Prop :=
  ∀ n, (P14902754219727316016.a n : ℤ) = A006011 n

end A006011

/-! ## A006011.P322249829892616531

`∑[∑[3*((2*n)%(n+1))²]]`
-/

namespace A006011.P322249829892616531
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (2 * n % (n + 1)) ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006011.P322249829892616531

namespace A006011

/-- `∑[∑[3*((2*n)%(n+1))²]]` -/
def P322249829892616531.Spec : Prop :=
  ∀ n, (P322249829892616531.a n : ℤ) = A006011 n

end A006011

/-! ## A006011.P13216677961727246355

`∑[∑[∑[ogf((3x^2+3x^3)/(1-2x+x^2))]]]`
-/

namespace A006011.P13216677961727246355
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 3, 3] [1, -2, 1] n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006011.P13216677961727246355

namespace A006011

/-- `∑[∑[∑[ogf((3x^2+3x^3)/(1-2x+x^2))]]]` -/
def P13216677961727246355.Spec : Prop :=
  ∀ n, P13216677961727246355.a n = A006011 n

end A006011

/-! ## A006011.P15817633022667875692

`C((1-n)²+n, 2)-a(n-1)` with `a(0)=0`
-/

namespace A006011.P15817633022667875692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (Nat.choose ((1 - (n : ℤ)) ^ 2 + (n : ℤ)).toNat 2 : ℤ) - a (n - 1)

end

end A006011.P15817633022667875692

namespace A006011

/-- `C((1-n)²+n, 2)-a(n-1)` -/
def P15817633022667875692.Spec : Prop :=
  ∀ n, P15817633022667875692.a n = A006011 n

end A006011

/-! ## A006011.P11547889297246849424

`A006528(n)-∑[n]`
-/

namespace A006011.P11547889297246849424
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006528 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A006011.P11547889297246849424

namespace A006011

/-- `A006528(n)-∑[n]` -/
def P11547889297246849424.Spec : Prop :=
  ∀ n, P11547889297246849424.a n = A006011 n

end A006011

/-! ## A006011.P11741401804279253712

`∑[n]*A161680(n)`
-/

namespace A006011.P11741401804279253712
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A161680 n

end

end A006011.P11741401804279253712

namespace A006011

/-- `∑[n]*A161680(n)` -/
def P11741401804279253712.Spec : Prop :=
  ∀ n, P11741401804279253712.a n = A006011 n

end A006011

/-! ## A006011.P1768267345977589274

`3*(A079034(n)-1)`
-/

namespace A006011.P1768267345977589274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A079034 n - 1)

end

end A006011.P1768267345977589274

namespace A006011

/-- `3*(A079034(n)-1)` -/
def P1768267345977589274.Spec : Prop :=
  ∀ n, P1768267345977589274.a n = A006011 n

theorem P1768267345977589274.correct : P1768267345977589274.Spec := by
  intro n
  simp only [A006011, Nat.add_sub_cancel, A006011.P1768267345977589274.a, A006011.P3668477608306639061.a, A002415, A002415.P7373830119072566170.a, A079034, A079034.P6997679153751098089.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A006011

/-! ## A006011.P312302214915460239

`3/2*A008911(n)`
-/

namespace A006011.P312302214915460239
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 2 * (A008911 n : ℚ)

end

end A006011.P312302214915460239

namespace A006011

/-- `3/2*A008911(n)` -/
def P312302214915460239.Spec : Prop :=
  ∀ n, P312302214915460239.a n = (A006011 n : ℚ)

end A006011

/-! ## A006011.P9623962361597268561

`3/4*A112742(n)`
-/

namespace A006011.P9623962361597268561
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 4 * (A112742 n : ℚ)

end

end A006011.P9623962361597268561

namespace A006011

/-- `3/4*A112742(n)` -/
def P9623962361597268561.Spec : Prop :=
  ∀ n, P9623962361597268561.a n = (A006011 n : ℚ)

end A006011

/-! ## A006011.P2622954897515967870

`n/2*A135503(n)`
-/

namespace A006011.P2622954897515967870
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * (A135503 n : ℚ)

end

end A006011.P2622954897515967870

namespace A006011

/-- `n/2*A135503(n)` -/
def P2622954897515967870.Spec : Prop :=
  ∀ n, P2622954897515967870.a n = (A006011 n : ℚ)

end A006011

/-! ## A006011.P9282059314610213001

`Δ[A112851(abs(1-n))]`
-/

namespace A006011.P9282059314610213001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112851 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A006011.P9282059314610213001

namespace A006011

/-- `Δ[A112851(abs(1-n))]` -/
def P9282059314610213001.Spec : Prop :=
  ∀ n, P9282059314610213001.a n = A006011 n

end A006011

/-! ## A006011.P11643056195400327886

`∑[n]²-A002411(n)`
-/

namespace A006011.P11643056195400327886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - A002411 n

end

end A006011.P11643056195400327886

namespace A006011

/-- `∑[n]²-A002411(n)` -/
def P11643056195400327886.Spec : Prop :=
  ∀ n, P11643056195400327886.a n = A006011 n

end A006011

/-! ## A006011.P16288022703843670517

`A159833(n)-(2*n)²`
-/

namespace A006011.P16288022703843670517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159833 n - ((2 * n) ^ 2 : ℤ)

end

end A006011.P16288022703843670517

namespace A006011

/-- `A159833(n)-(2*n)²` -/
def P16288022703843670517.Spec : Prop :=
  ∀ n, P16288022703843670517.a n = A006011 n

end A006011

/-!
# A006012: a(0) = 1, a(1) = 2, a(n) = 4*a(n-1) - 2*a(n-2), n >= 2.

The programs for A006012, the canonical program `A006012.P2662888881248971976` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006012 has offset 0).

The definition of A006012 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*a(n-1)-2*a(n-2)` (program `A006012.P2662888881248971976`, by `A006012.P2662888881248971976.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A006012.P2662888881248971976

`4*a(n-1)-2*a(n-2)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A006012

/-- `4*a(n-1)-2*a(n-2)` -/
def P2662888881248971976.Spec : Prop :=
  ∀ n, P2662888881248971976.a n = A006012 n

theorem P2662888881248971976.correct : P2662888881248971976.Spec := by
  intro n
  simp only [A006012]

end A006012

/-! ## A006012.P11021634678741497515

`A056236(n)/2`
-/

namespace A006012.P11021634678741497515
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056236 n : ℚ) / 2

end

end A006012.P11021634678741497515

namespace A006012

/-- `A056236(n)/2` -/
def P11021634678741497515.Spec : Prop :=
  ∀ n, P11021634678741497515.a n = (A006012 n : ℚ)

end A006012

/-! ## A006012.P17506587259675835191

`A265185(n)/4`
-/

namespace A006012.P17506587259675835191
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A265185 n : ℚ) / 4

end

end A006012.P17506587259675835191

namespace A006012

/-- `A265185(n)/4` -/
def P17506587259675835191.Spec : Prop :=
  ∀ n, P17506587259675835191.a n = (A006012 n : ℚ)

end A006012

/-! ## A006012.P460979215491431812

`ogf((1-2x)/(1-4x+2x^2))`
-/

namespace A006012.P460979215491431812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2] [1, -4, 2] n

end

end A006012.P460979215491431812

namespace A006012

/-- `ogf((1-2x)/(1-4x+2x^2))` -/
def P460979215491431812.Spec : Prop :=
  ∀ n, P460979215491431812.a n = A006012 n

end A006012

/-! ## A006012.P1848769435572145753

`floor((sqrt(2)+2)*a(n-1))` with `a(0)=1, a(1)=2`
-/

namespace A006012.P1848769435572145753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  ⌊(Real.sqrt (2 : ℝ) + 2) * (a (n - 1) : ℝ)⌋

end

end A006012.P1848769435572145753

namespace A006012

/-- `floor((sqrt(2)+2)*a(n-1))` -/
def P1848769435572145753.Spec : Prop :=
  ∀ n, P1848769435572145753.a n = A006012 n

end A006012

/-! ## A006012.P11400127797151006992

`∑[ceil((sqrt(2)+2)*a(n-1))]` with `a(0)=1, a(1)=1`
-/

namespace A006012.P11400127797151006992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  ⌈(Real.sqrt (2 : ℝ) + 2) * (f1 (n - 1) : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006012.P11400127797151006992

namespace A006012

/-- `∑[ceil((sqrt(2)+2)*a(n-1))]` -/
def P11400127797151006992.Spec : Prop :=
  ∀ n, P11400127797151006992.a n = A006012 n

end A006012

/-! ## A006012.P1315749223338513731

`floor(2*a(n-1)/(2-sqrt(2)))` with `a(0)=1, a(1)=2`
-/

namespace A006012.P1315749223338513731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  ⌊(2 * a (n - 1) : ℝ) / (2 - Real.sqrt (2 : ℝ))⌋

end

end A006012.P1315749223338513731

namespace A006012

/-- `floor(2*a(n-1)/(2-sqrt(2)))` -/
def P1315749223338513731.Spec : Prop :=
  ∀ n, P1315749223338513731.a n = A006012 n

end A006012

/-! ## A006012.P2193875782107283106

`∑[round((sqrt(2)+2)*a(n-1))]` with `a(0)=1, a(1)=1, a(2)=4`
-/

namespace A006012.P2193875782107283106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 4] fun n f1 =>
  SequenceMachineLib.roundAway ((Real.sqrt (2 : ℝ) + 2) * (f1 (n - 1) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006012.P2193875782107283106

namespace A006012

/-- `∑[round((sqrt(2)+2)*a(n-1))]` -/
def P2193875782107283106.Spec : Prop :=
  ∀ n, P2193875782107283106.a n = A006012 n

end A006012

/-! ## A006012.P11527679363200767664

`∑[A204089(n)]`
-/

namespace A006012.P11527679363200767664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204089 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006012.P11527679363200767664

namespace A006012

/-- `∑[A204089(n)]` -/
def P11527679363200767664.Spec : Prop :=
  ∀ n, P11527679363200767664.a n = A006012 n

end A006012

/-! ## A006012.P11191352924659482968

`A030436(2*n)`
-/

namespace A006012.P11191352924659482968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030436 (2 * n)

end

end A006012.P11191352924659482968

namespace A006012

/-- `A030436(2*n)` -/
def P11191352924659482968.Spec : Prop :=
  ∀ n, P11191352924659482968.a n = A006012 n

end A006012

/-! ## A006012.P7784674228983577455

`A062112(Δ[n²])`
-/

namespace A006012.P7784674228983577455
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062112 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A006012.P7784674228983577455

namespace A006012

/-- `A062112(Δ[n²])` -/
def P7784674228983577455.Spec : Prop :=
  ∀ n, P7784674228983577455.a n = A006012 n

end A006012

/-! ## A006012.P8531971411993193107

`∑[A062112(2*n)]+1`
-/

namespace A006012.P8531971411993193107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062112 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A006012.P8531971411993193107

namespace A006012

/-- `∑[A062112(2*n)]+1` -/
def P8531971411993193107.Spec : Prop :=
  ∀ n, P8531971411993193107.a n = A006012 n

end A006012

/-! ## A006012.P15627610756439916020

`∑[A121720(2*n+1)]+1`
-/

namespace A006012.P15627610756439916020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121720 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A006012.P15627610756439916020

namespace A006012

/-- `∑[A121720(2*n+1)]+1` -/
def P15627610756439916020.Spec : Prop :=
  ∀ n, P15627610756439916020.a n = A006012 n

end A006012

/-! ## A006012.P11751543604859248880

`record[A030436(n)^and(1, n+1)]`
-/

namespace A006012.P11751543604859248880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030436 n ^ Nat.land 1 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006012.P11751543604859248880

namespace A006012

/-- `record[A030436(n)^and(1, n+1)]` -/
def P11751543604859248880.Spec : Prop :=
  ∀ n, P11751543604859248880.a n = A006012 n

end A006012

/-! ## A006012.P12552933306621453258

`A007070(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A006012.P12552933306621453258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A007070 (n - 1) + a (n - 1)

end

end A006012.P12552933306621453258

namespace A006012

/-- `A007070(n-1)+a(n-1)` -/
def P12552933306621453258.Spec : Prop :=
  ∀ n, P12552933306621453258.a n = A006012 n

end A006012

/-! ## A006012.P9575718129853241598

`A088013(n)+A084154(n)`
-/

namespace A006012.P9575718129853241598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088013 n + A084154 n

end

end A006012.P9575718129853241598

namespace A006012

/-- `A088013(n)+A084154(n)` -/
def P9575718129853241598.Spec : Prop :=
  ∀ n, P9575718129853241598.a n = A006012 n

end A006012

/-! ## A006012.P15772302947327869433

`A060546(n)*A079496(n)`
-/

namespace A006012.P15772302947327869433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060546 n * A079496 n

end

end A006012.P15772302947327869433

namespace A006012

/-- `A060546(n)*A079496(n)` -/
def P15772302947327869433.Spec : Prop :=
  ∀ n, P15772302947327869433.a n = A006012 n

end A006012

/-! ## A006012.P11940872115146585732

`∑[A007070(log2(A011782(n)))]`
-/

namespace A006012.P11940872115146585732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007070 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006012.P11940872115146585732

namespace A006012

/-- `∑[A007070(log2(A011782(n)))]` -/
def P11940872115146585732.Spec : Prop :=
  ∀ n, P11940872115146585732.a n = A006012 n

end A006012

/-! ## A006012.P1262652709877949852

`∑[A007070(A004273(n)-n)]`
-/

namespace A006012.P1262652709877949852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007070 (A004273 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006012.P1262652709877949852

namespace A006012

/-- `∑[A007070(A004273(n)-n)]` -/
def P1262652709877949852.Spec : Prop :=
  ∀ n, P1262652709877949852.a n = A006012 n

end A006012

/-! ## A006012.P5808713192187046529

`∏[A000034(n)]*A079496(n)`
-/

namespace A006012.P5808713192187046529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A079496 n

end

end A006012.P5808713192187046529

namespace A006012

/-- `∏[A000034(n)]*A079496(n)` -/
def P5808713192187046529.Spec : Prop :=
  ∀ n, P5808713192187046529.a n = A006012 n

end A006012

/-!
# A006013: a(n) = binomial(3*n+1,n)/(n+1).

The programs for A006013, the canonical program `A006013.P4079729848362006556` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006013 has offset 0).

The definition of A006013 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A006013.P4079729848362006556

`A024485(n+1)/3`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A006013

/-- `A024485(n+1)/3` -/
def P4079729848362006556.Spec : Prop :=
  ∀ n, P4079729848362006556.a n = (A006013 n : ℚ)

end A006013

/-! ## A006013.P6474469041731651732

`A045721(n)/(n+1)`
-/

namespace A006013.P6474469041731651732
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045721 n : ℚ) / (n + 1 : ℚ)

end

end A006013.P6474469041731651732

namespace A006013

/-- `A045721(n)/(n+1)` -/
def P6474469041731651732.Spec : Prop :=
  ∀ n, P6474469041731651732.a n = (A006013 n : ℚ)

end A006013

/-! ## A006013.P11482001565418152482

`C(3*n+1, n)/(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A006013.P11482001565418152482
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (3 * n + 1) n : ℚ) / (n + 1 : ℚ)

end

end A006013.P11482001565418152482

namespace A006013

/-- `C(3*n+1, n)/(n+1)` -/
def P11482001565418152482.Spec : Prop :=
  ∀ n, P11482001565418152482.a n = (A006013 n : ℚ)

end A006013

/-! ## A006013.P5252036848399608365

`A073148(∑[n])`
-/

namespace A006013.P5252036848399608365
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073148 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A006013.P5252036848399608365

namespace A006013

/-- `A073148(∑[n])` -/
def P5252036848399608365.Spec : Prop :=
  ∀ n, P5252036848399608365.a n = A006013 n

end A006013

/-! ## A006013.P14439442388935575095

`record[A109971(n)]`
-/

namespace A006013.P14439442388935575095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109971 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006013.P14439442388935575095

namespace A006013

/-- `record[A109971(n)]` -/
def P14439442388935575095.Spec : Prop :=
  ∀ n, P14439442388935575095.a n = A006013 n

end A006013

/-! ## A006013.P14186542405915552379

`abs(A124821(∑[n]))`
-/

namespace A006013.P14186542405915552379
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A124821 (∑ j ∈ Finset.range (n + 1), f1 j)|

end

end A006013.P14186542405915552379

namespace A006013

/-- `abs(A124821(∑[n]))` -/
def P14186542405915552379.Spec : Prop :=
  ∀ n, P14186542405915552379.a n = A006013 n

end A006013

/-! ## A006013.P3343275691344969162

`A047749(Δ[n²])`
-/

namespace A006013.P3343275691344969162
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047749 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A006013.P3343275691344969162

namespace A006013

/-- `A047749(Δ[n²])` -/
def P3343275691344969162.Spec : Prop :=
  ∀ n, P3343275691344969162.a n = A006013 n

end A006013

/-! ## A006013.P17164217354486466538

`A091665(∑[n]+1)`
-/

namespace A006013.P17164217354486466538
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091665 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A006013.P17164217354486466538

namespace A006013

/-- `A091665(∑[n]+1)` -/
def P17164217354486466538.Spec : Prop :=
  ∀ n, P17164217354486466538.a n = A006013 n

end A006013

/-! ## A006013.P11670254787629437089

`A092276(∑[n]+1)`
-/

namespace A006013.P11670254787629437089
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092276 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A006013.P11670254787629437089

namespace A006013

/-- `A092276(∑[n]+1)` -/
def P11670254787629437089.Spec : Prop :=
  ∀ n, P11670254787629437089.a n = A006013 n

end A006013

/-! ## A006013.P16381684676680297730

`record[A092276(n+1)]`
-/

namespace A006013.P16381684676680297730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092276 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006013.P16381684676680297730

namespace A006013

/-- `record[A092276(n+1)]` -/
def P16381684676680297730.Spec : Prop :=
  ∀ n, P16381684676680297730.a n = A006013 n

end A006013

/-! ## A006013.P5551250138355488197

`record[A047749(xor(1, n))]`
-/

namespace A006013.P5551250138355488197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047749 (Nat.xor 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006013.P5551250138355488197

namespace A006013

/-- `record[A047749(xor(1, n))]` -/
def P5551250138355488197.Spec : Prop :=
  ∀ n, P5551250138355488197.a n = A006013 n

end A006013

/-! ## A006013.P4593437674783727083

`A046652(∑[n]+n)`
-/

namespace A006013.P4593437674783727083
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046652 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A006013.P4593437674783727083

namespace A006013

/-- `A046652(∑[n]+n)` -/
def P4593437674783727083.Spec : Prop :=
  ∀ n, P4593437674783727083.a n = A006013 n

end A006013

/-! ## A006013.P7476796511361942452

`A071948(∑[n]+n)`
-/

namespace A006013.P7476796511361942452
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071948 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A006013.P7476796511361942452

namespace A006013

/-- `A071948(∑[n]+n)` -/
def P7476796511361942452.Spec : Prop :=
  ∀ n, P7476796511361942452.a n = A006013 n

end A006013

/-! ## A006013.P6655397050575853932

`A073147(∑[n]+n)`
-/

namespace A006013.P6655397050575853932
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073147 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A006013.P6655397050575853932

namespace A006013

/-- `A073147(∑[n]+n)` -/
def P6655397050575853932.Spec : Prop :=
  ∀ n, P6655397050575853932.a n = A006013 n

end A006013

/-! ## A006013.P16719999512081968279

`A047009(n+1)/2`
-/

namespace A006013.P16719999512081968279
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047009 (n + 1) : ℚ) / 2

end

end A006013.P16719999512081968279

namespace A006013

/-- `A047009(n+1)/2` -/
def P16719999512081968279.Spec : Prop :=
  ∀ n, P16719999512081968279.a n = (A006013 n : ℚ)

end A006013

/-! ## A006013.P12899563603589275256

`A047764(12*n+8)`
-/

namespace A006013.P12899563603589275256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047764 (12 * n + 8)

end

end A006013.P12899563603589275256

namespace A006013

/-- `A047764(12*n+8)` -/
def P12899563603589275256.Spec : Prop :=
  ∀ n, P12899563603589275256.a n = A006013 n

end A006013

/-! ## A006013.P3855300914747346961

`A116637(Δ[n²])/2`
-/

namespace A006013.P3855300914747346961
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A116637 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A006013.P3855300914747346961

namespace A006013

/-- `A116637(Δ[n²])/2` -/
def P3855300914747346961.Spec : Prop :=
  ∀ n, P3855300914747346961.a n = (A006013 n : ℚ)

end A006013

/-! ## A006013.P16811614473955193635

`∑{d}[n+1, A380551(#)]`
-/

namespace A006013.P16811614473955193635
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A380551 d

end

end A006013.P16811614473955193635

namespace A006013

/-- `∑{d}[n+1, A380551(#)]` -/
def P16811614473955193635.Spec : Prop :=
  ∀ n, P16811614473955193635.a n = A006013 n

end A006013

/-! ## A006013.P252921232141324870

`A109971(∑[n+1]+1)`
-/

namespace A006013.P252921232141324870
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109971 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A006013.P252921232141324870

namespace A006013

/-- `A109971(∑[n+1]+1)` -/
def P252921232141324870.Spec : Prop :=
  ∀ n, P252921232141324870.a n = A006013 n

end A006013

/-! ## A006013.P11610767354661029078

`A110616(∑[n+1]+1)`
-/

namespace A006013.P11610767354661029078
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110616 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A006013.P11610767354661029078

namespace A006013

/-- `A110616(∑[n+1]+1)` -/
def P11610767354661029078.Spec : Prop :=
  ∀ n, P11610767354661029078.a n = A006013 n

end A006013

/-!
# A006014: a(n+1) = (n+1)*a(n) + Sum_{k=1..n-1} a(k)*a(n-k).

The programs for A006014, there is no canonical definition to state claims against.
-/

/-! ## A006014.P8597206458742513493

`A004396(Δ[A340417(n)]+1)`
-/

namespace A006014.P8597206458742513493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340417 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (f1 (n + 1) - f1 n + 1).toNat

end

end A006014.P8597206458742513493

/-! ## A006014.P139795730517410083

`A277359(n)+A004198(A074606(n))`
-/

namespace A006014.P139795730517410083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277359 n + A004198 (A074606 n).toNat

end

end A006014.P139795730517410083

/-!
# A006015: Nim product 2*n.

The programs for A006015, the canonical program `A006015.P12462504095142907675` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006015 has offset 0).

The definition of A006015 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A006015.P12462504095142907675

`xor(n, A004468(n))`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A006015

/-- `xor(n, A004468(n))` -/
def P12462504095142907675.Spec : Prop :=
  ∀ n, P12462504095142907675.a n = A006015 n

theorem P12462504095142907675.correct : P12462504095142907675.Spec := by
  intro n
  simp only [A006015]

end A006015

/-! ## A006015.P3465122552691483618

`A004468(A004468(n))`
-/

namespace A006015.P3465122552691483618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004468 (A004468 n).toNat

end

end A006015.P3465122552691483618

namespace A006015

/-- `A004468(A004468(n))` -/
def P3465122552691483618.Spec : Prop :=
  ∀ n, P3465122552691483618.a n = A006015 n

end A006015

/-! ## A006015.P14530043753374393363

`A048647(A057300(n))`
-/

namespace A006015.P14530043753374393363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048647 (A057300 n).toNat

end

end A006015.P14530043753374393363

namespace A006015

/-- `A048647(A057300(n))` -/
def P14530043753374393363.Spec : Prop :=
  ∀ n, P14530043753374393363.a n = A006015 n

end A006015

/-! ## A006015.P16666916206952435704

`A057300(A163241(n))`
-/

namespace A006015.P16666916206952435704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057300 (A163241 n).toNat

end

end A006015.P16666916206952435704

namespace A006015

/-- `A057300(A163241(n))` -/
def P16666916206952435704.Spec : Prop :=
  ∀ n, P16666916206952435704.a n = A006015 n

end A006015

/-! ## A006015.P11936555044799541146

`xor(A004469(n), A004471(n))`
-/

namespace A006015.P11936555044799541146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A004469 n) (A004471 n)

end

end A006015.P11936555044799541146

namespace A006015

/-- `xor(A004469(n), A004471(n))` -/
def P11936555044799541146.Spec : Prop :=
  ∀ n, P11936555044799541146.a n = A006015 n

end A006015

/-! ## A006015.P7210040925781816732

`xor(A004470(n), A004472(n))`
-/

namespace A006015.P7210040925781816732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A004470 n) (A004472 n)

end

end A006015.P7210040925781816732

namespace A006015

/-- `xor(A004470(n), A004472(n))` -/
def P7210040925781816732.Spec : Prop :=
  ∀ n, P7210040925781816732.a n = A006015 n

end A006015

/-! ## A006015.P12131306089778964190

`xor(A004473(n), A004475(n))`
-/

namespace A006015.P12131306089778964190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A004473 n) (A004475 n)

end

end A006015.P12131306089778964190

namespace A006015

/-- `xor(A004473(n), A004475(n))` -/
def P12131306089778964190.Spec : Prop :=
  ∀ n, P12131306089778964190.a n = A006015 n

end A006015

/-! ## A006015.P9930529475171123086

`xor(A004474(n), A004476(n))`
-/

namespace A006015.P9930529475171123086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A004474 n) (A004476 n)

end

end A006015.P9930529475171123086

namespace A006015

/-- `xor(A004474(n), A004476(n))` -/
def P9930529475171123086.Spec : Prop :=
  ∀ n, P9930529475171123086.a n = A006015 n

end A006015

/-! ## A006015.P17877236507535211551

`xor(A004477(n), A004479(n))`
-/

namespace A006015.P17877236507535211551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A004477 n) (A004479 n)

end

end A006015.P17877236507535211551

namespace A006015

/-- `xor(A004477(n), A004479(n))` -/
def P17877236507535211551.Spec : Prop :=
  ∀ n, P17877236507535211551.a n = A006015 n

end A006015

/-! ## A006015.P13066869128470105528

`xor(A004478(n), A004480(n))`
-/

namespace A006015.P13066869128470105528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A004478 n) (A004480 n)

end

end A006015.P13066869128470105528

namespace A006015

/-- `xor(A004478(n), A004480(n))` -/
def P13066869128470105528.Spec : Prop :=
  ∀ n, P13066869128470105528.a n = A006015 n

end A006015

/-! ## A006015.P2044353058599992298

`xor(A057300(n), A063695(n))`
-/

namespace A006015.P2044353058599992298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A057300 n) (A063695 n)

end

end A006015.P2044353058599992298

namespace A006015

/-- `xor(A057300(n), A063695(n))` -/
def P2044353058599992298.Spec : Prop :=
  ∀ n, P2044353058599992298.a n = A006015 n

end A006015

/-! ## A006015.P728467943232572721

`xor(n-A063694(n), A057300(n))`
-/

namespace A006015.P728467943232572721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((n : ℤ) - A063694 n) (A057300 n)

end

end A006015.P728467943232572721

namespace A006015

/-- `xor(n-A063694(n), A057300(n))` -/
def P728467943232572721.Spec : Prop :=
  ∀ n, P728467943232572721.a n = A006015 n

end A006015

/-! ## A006015.P41639084793178446

`xor(A001196(A059906(n)), A004514(n))`
-/

namespace A006015.P41639084793178446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A001196 (A059906 n).toNat) (A004514 n)

end

end A006015.P41639084793178446

namespace A006015

/-- `xor(A001196(A059906(n)), A004514(n))` -/
def P41639084793178446.Spec : Prop :=
  ∀ n, P41639084793178446.a n = A006015 n

end A006015

/-! ## A006015.P13870380871999224584

`2*A163241(n)-A001196(A059906(n))`
-/

namespace A006015.P13870380871999224584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A163241 n - A001196 (A059906 n).toNat

end

end A006015.P13870380871999224584

namespace A006015

/-- `2*A163241(n)-A001196(A059906(n))` -/
def P13870380871999224584.Spec : Prop :=
  ∀ n, P13870380871999224584.a n = A006015 n

end A006015

/-! ## A006015.P11279904284847716639

`A048647(n)+A001196(A059906(n))-n`
-/

namespace A006015.P11279904284847716639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048647 n + (A001196 (A059906 n).toNat - (n : ℤ))

end

end A006015.P11279904284847716639

namespace A006015

/-- `A048647(n)+A001196(A059906(n))-n` -/
def P11279904284847716639.Spec : Prop :=
  ∀ n, P11279904284847716639.a n = A006015 n

end A006015

/-! ## A006015.P5807713212734184327

`A004470(A004469(n))`
-/

namespace A006015.P5807713212734184327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004470 (A004469 n).toNat

end

end A006015.P5807713212734184327

namespace A006015

/-- `A004470(A004469(n))` -/
def P5807713212734184327.Spec : Prop :=
  ∀ n, P5807713212734184327.a n = A006015 n

end A006015

/-! ## A006015.P6830624267188228181

`A004479(A004471(n))`
-/

namespace A006015.P6830624267188228181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004479 (A004471 n).toNat

end

end A006015.P6830624267188228181

namespace A006015

/-- `A004479(A004471(n))` -/
def P6830624267188228181.Spec : Prop :=
  ∀ n, P6830624267188228181.a n = A006015 n

end A006015

/-! ## A006015.P3247423201040945054

`A004478(A004472(n))`
-/

namespace A006015.P3247423201040945054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004478 (A004472 n).toNat

end

end A006015.P3247423201040945054

namespace A006015

/-- `A004478(A004472(n))` -/
def P3247423201040945054.Spec : Prop :=
  ∀ n, P3247423201040945054.a n = A006015 n

end A006015

/-! ## A006015.P15522876780492978966

`A004480(A004473(n))`
-/

namespace A006015.P15522876780492978966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004480 (A004473 n).toNat

end

end A006015.P15522876780492978966

namespace A006015

/-- `A004480(A004473(n))` -/
def P15522876780492978966.Spec : Prop :=
  ∀ n, P15522876780492978966.a n = A006015 n

end A006015

/-! ## A006015.P3780972234977168776

`A004476(A004474(n))`
-/

namespace A006015.P3780972234977168776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004476 (A004474 n).toNat

end

end A006015.P3780972234977168776

namespace A006015

/-- `A004476(A004474(n))` -/
def P3780972234977168776.Spec : Prop :=
  ∀ n, P3780972234977168776.a n = A006015 n

end A006015

/-!
# A006017: Nim product 2^n * 2^n.

The programs for A006017, there is no canonical definition to state claims against.
-/

/-! ## A006017.P3538078555025006947

`A223543(A006046(n+1)-1)`
-/

namespace A006017.P3538078555025006947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223543 (A006046 (n + 1) - 1).toNat

end

end A006017.P3538078555025006947

/-! ## A006017.P13660319142794526995

`A223543(A001316(n)-(1-A006046(n)))`
-/

namespace A006017.P13660319142794526995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223543 (A001316 n - (1 - A006046 n)).toNat

end

end A006017.P13660319142794526995

/-! ## A006017.P13211270045193590919

`A223540(∑[n]+n)`
-/

namespace A006017.P13211270045193590919
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223540 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A006017.P13211270045193590919

/-! ## A006017.P4511565814971003669

`A223541(∑[4*n])`
-/

namespace A006017.P4511565814971003669
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223541 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A006017.P4511565814971003669

/-! ## A006017.P11945908193171599690

`A223543(A223542((n+1)*2*n))`
-/

namespace A006017.P11945908193171599690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223543 (A223542 ((n + 1) * (2 * n))).toNat

end

end A006017.P11945908193171599690

/-!
# A006021: The game of contours.

The programs for A006021, the canonical program `A006021.P15260796635085372610` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006021 has offset 0).

The definition of A006021 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A006021.P15260796635085372610

`xor(1, a(n-4))` with `a(0)=0, a(1)=1, a(2)=2, a(3)=3, a(4)=1, a(5)=4`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A006021

/-- `xor(1, a(n-4))` -/
def P15260796635085372610.Spec : Prop :=
  ∀ n, (P15260796635085372610.a n : ℤ) = A006021 n

theorem P15260796635085372610.correct : P15260796635085372610.Spec := by
  intro n
  simp only [A006021]

end A006021

/-!
# A006022: Sprague-Grundy (or Nim) values for the game of Maundy cake on an n X 1 sheet.

The programs for A006022, there is no canonical definition to state claims against.
-/

/-! ## A006022.P15911627669117851696

`A332993(n+1)-(n+1)`
-/

namespace A006022.P15911627669117851696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332993 (n + 1) - (n + 1 : ℤ)

end

end A006022.P15911627669117851696

/-! ## A006022.P2748051261319345728

`A322382(n+1)+A333791(n+1)`
-/

namespace A006022.P2748051261319345728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322382 (n + 1) + A333791 (n + 1)

end

end A006022.P2748051261319345728

/-! ## A006022.P7534483125654788613

`A001065(n+1)-A333783(n+1)`
-/

namespace A006022.P7534483125654788613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) - A333783 (n + 1)

end

end A006022.P7534483125654788613

/-! ## A006022.P9454338290978987189

`A065475(n+1)-A192330(n+1)`
-/

namespace A006022.P9454338290978987189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (n + 1) - A192330 (n + 1)

end

end A006022.P9454338290978987189

/-! ## A006022.P13811105780268987934

`A332993(n+1)%A000027(n+1)`
-/

namespace A006022.P13811105780268987934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A332993 (n + 1)) (A000027 (n + 1))

end

end A006022.P13811105780268987934

/-! ## A006022.P14112736302535355416

`A001065(n+1)+A333791(n+1)-A333784(n+1)`
-/

namespace A006022.P14112736302535355416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) + (A333791 (n + 1) - A333784 (n + 1))

end

end A006022.P14112736302535355416

/-! ## A006022.P910137944527254260

`A322382(n+1)+A333784(n+1)-A333783(n+1)`
-/

namespace A006022.P910137944527254260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322382 (n + 1) + (A333784 (n + 1) - A333783 (n + 1))

end

end A006022.P910137944527254260

/-! ## A006022.P6760971096584018053

`gcd(A052126(n+1), A332993(n+1))*A322034(n+1)`
-/

namespace A006022.P6760971096584018053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A052126 (n + 1)) (A332993 (n + 1)) : ℤ) * A322034 (n + 1)

end

end A006022.P6760971096584018053

/-! ## A006022.P798043229352622796

`n+2-A192330(2*(n+1))`
-/

namespace A006022.P798043229352622796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - A192330 (2 * (n + 1))

end

end A006022.P798043229352622796

/-!
# A006023: Number of unlabeled mating digraphs with n nodes.

The programs for A006023, there is no canonical definition to state claims against.
-/

/-! ## A006023.P13037299107138860406

`A138398(n!)`
-/

namespace A006023.P13037299107138860406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138398 (Nat.factorial n)

end

end A006023.P13037299107138860406

/-!
# A006024: Number of labeled mating graphs with n nodes. Also called point-determining graphs.

The programs for A006024, there is no canonical definition to state claims against.
-/

/-! ## A006024.P16178444329721077321

`A006125(n)-A327379(round(sqrt(n²+1)))`
-/

namespace A006024.P16178444329721077321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006125 n - A327379 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

end

end A006024.P16178444329721077321

/-! ## A006024.P2626648620799480608

`A110361(∑[abs(2-2^n)])`
-/

namespace A006024.P2626648620799480608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - (2 ^ n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110361 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A006024.P2626648620799480608

/-!
# A006025: Number of labeled mating digraphs with n nodes.

The programs for A006025, there is no canonical definition to state claims against.
-/

/-! ## A006025.P13372236808201121543

`6*A332223(2*a(n-1))` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A006025.P13372236808201121543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3] fun n a =>
  6 * A332223 (2 * a (n - 1)).toNat

end

end A006025.P13372236808201121543

/-!
# A006026: Number of column-convex polyominoes with perimeter n.

The programs for A006026, there is no canonical definition to state claims against.
-/

/-! ## A006026.P16072308162294273493

`A158826(n+1)-A100260(A100233(n))`
-/

namespace A006026.P16072308162294273493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158826 (n + 1) - A100260 (A100233 n).toNat

end

end A006026.P16072308162294273493

/-! ## A006026.P16569297647912194365

`A158826(n+1)-A185238(A027379(n))`
-/

namespace A006026.P16569297647912194365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158826 (n + 1) - A185238 (A027379 n).toNat

end

end A006026.P16569297647912194365

/-! ## A006026.P11235320623763140601

`A158826(n+1)-A185238(A167499(n))`
-/

namespace A006026.P11235320623763140601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158826 (n + 1) - A185238 (A167499 n).toNat

end

end A006026.P11235320623763140601

/-!
# A006027: Number of directed column-convex polyominoes with perimeter 2n+2.

The programs for A006027, there is no canonical definition to state claims against.
-/

/-! ## A006027.P5595609936910978480

`A014682(A049139(n+1)+A049138(n+1))`
-/

namespace A006027.P5595609936910978480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A049139 (n + 1) + A049138 (n + 1)).toNat

end

end A006027.P5595609936910978480

/-! ## A006027.P8526497011213339832

`A049138(n+1)+A004525(A049139(n+1)-A049138(n+1))`
-/

namespace A006027.P8526497011213339832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049138 (n + 1) + A004525 (A049139 (n + 1) - A049138 (n + 1)).toNat

end

end A006027.P8526497011213339832

/-! ## A006027.P3099943126987770213

`A049138(n+1)+A004526(A049139(n+1)-A049138(n+1))`
-/

namespace A006027.P3099943126987770213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049138 (n + 1) + A004526 (A049139 (n + 1) - A049138 (n + 1)).toNat

end

end A006027.P3099943126987770213

/-! ## A006027.P8748397128612209612

`A049138(n+1)+A006370(A049139(n+1)-A049138(n+1))`
-/

namespace A006027.P8748397128612209612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049138 (n + 1) + A006370 (A049139 (n + 1) - A049138 (n + 1)).toNat

end

end A006027.P8748397128612209612

/-! ## A006027.P14901022227908030971

`A049138(n+1)+A026741(A049139(n+1)-A049138(n+1))`
-/

namespace A006027.P14901022227908030971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049138 (n + 1) + A026741 (A049139 (n + 1) - A049138 (n + 1)).toNat

end

end A006027.P14901022227908030971

/-!
# A006028: Weight distribution of [ 128,99,8 ] 4th-order Reed-Muller code RM(4,7).

The programs for A006028, there is no canonical definition to state claims against.
-/

/-! ## A006028.P12461218718411466227

`A006530(A006125(n))*A110845(n)`
-/

namespace A006028.P12461218718411466227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A006125 n).toNat * A110845 n

end

end A006028.P12461218718411466227

/-! ## A006028.P1441035677100409108

`A001222(A074528(n))*A110845(n)`
-/

namespace A006028.P1441035677100409108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A074528 n).toNat * A110845 n

end

end A006028.P1441035677100409108

/-! ## A006028.P4537406386927096470

`A043529(A060435(n))*A110845(n)`
-/

namespace A006028.P4537406386927096470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043529 (A060435 n).toNat * A110845 n

end

end A006028.P4537406386927096470

/-!
# A006029: Numbers k such that the k-th tetrahedral number k*(k+1)*(k+2)/6 is palindromic.

The programs for A006029, there is no canonical definition to state claims against.
-/

/-! ## A006029.P13785354437563599607

`16*a(n-1)` with `a(0)=1, a(1)=2, a(2)=17, a(3)=21`
-/

namespace A006029.P13785354437563599607
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 17, 21] fun n a =>
  16 * a (n - 1)

end

end A006029.P13785354437563599607

/-!
# A006030: Palindromic tetrahedral numbers.

The programs for A006030, there is no canonical definition to state claims against.
-/

/-! ## A006030.P17619912869953419466

`C(A006029(n+1)+2, 3)`
-/

namespace A006030.P17619912869953419466
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A006029 (n + 1) + 2).toNat 3

end

end A006030.P17619912869953419466

/-!
# A006035: Numbers k such that (19^k - 1)/18 is prime.

The programs for A006035, there is no canonical definition to state claims against.
-/

/-! ## A006035.P6936114288958657659

`A045308(eq[4, A000121(n)])`
-/

namespace A006035.P6936114288958657659
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000121 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045308 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A006035.P6936114288958657659

/-!
# A006036: Primitive pseudoperfect numbers.

The programs for A006036, there is no canonical definition to state claims against.
-/

/-! ## A006036.P1645238976512489978

`∪[A306987(n+1), A335290(n+1)]`
-/

namespace A006036.P1645238976512489978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306987 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335290 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A006036.P1645238976512489978

/-! ## A006036.P12511887171007755725

`∪[A308710(n+1), A390873(n+1)]`
-/

namespace A006036.P12511887171007755725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308710 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390873 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A006036.P12511887171007755725

/-! ## A006036.P7628853296302109626

`∪[A390873(n+1), A392910(n+1)]`
-/

namespace A006036.P7628853296302109626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390873 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392910 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A006036.P7628853296302109626

/-! ## A006036.P15419202768260174315

`∪[A378530(n+1), A390873(n+1)]`
-/

namespace A006036.P15419202768260174315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378530 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390873 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A006036.P15419202768260174315

/-! ## A006036.P11755549690804317048

`∪[A392910(n+1), A392912(n+1)]`
-/

namespace A006036.P11755549690804317048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392910 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392912 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A006036.P11755549690804317048

/-!
# A006037: Weird numbers: abundant (A005101) but not pseudoperfect (A005835).

The programs for A006037, there is no canonical definition to state claims against.
-/

/-! ## A006037.P2426088728080532119

`A331170(∪[A002975(n+1), A348631(n+1)])`
-/

namespace A006037.P2426088728080532119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002975 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348631 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331170 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A006037.P2426088728080532119

/-! ## A006037.P10922007162452408797

`A331170(∪[A002975(n+1), A349285(n+1)])`
-/

namespace A006037.P10922007162452408797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002975 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349285 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331170 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A006037.P10922007162452408797

/-! ## A006037.P8975510819103147797

`∪[Δ[A125114(n+1)], A348631(n+1)]`
-/

namespace A006037.P8975510819103147797
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125114 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348631 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

end

end A006037.P8975510819103147797

/-! ## A006037.P3856638119866042245

`∪[Δ[A125114(n+1)], A349285(n+1)]`
-/

namespace A006037.P3856638119866042245
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125114 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349285 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

end

end A006037.P3856638119866042245

/-! ## A006037.P2880935463059448647

`Δ[A125114(n+1)]-A125109(n+1)`
-/

namespace A006037.P2880935463059448647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125114 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A125109 (n + 1)

end

end A006037.P2880935463059448647

/-!
# A006038: Odd primitive abundant numbers.

The programs for A006038, there is no canonical definition to state claims against.
-/

/-! ## A006038.P10748290344859658272

`A388020(n+1)/2`
-/

namespace A006038.P10748290344859658272
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A388020 (n + 1) : ℚ) / 2

end

end A006038.P10748290344859658272

/-! ## A006038.P1515558319794643808

`∩[A005231(n+1), A306987(n+1)]`
-/

namespace A006038.P1515558319794643808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005231 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306987 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A006038.P1515558319794643808

/-! ## A006038.P13390254127296189533

`∩[A306987(n+1), A381547(n+1)]`
-/

namespace A006038.P13390254127296189533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306987 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381547 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A006038.P13390254127296189533

/-! ## A006038.P240512635873396130

`∩[A005231(n+1), A006039(n+1)]`
-/

namespace A006038.P240512635873396130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005231 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006039 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A006038.P240512635873396130

/-! ## A006038.P6696648682133078228

`∩[A005231(n+1), A071395(n+1)]`
-/

namespace A006038.P6696648682133078228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005231 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071395 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A006038.P6696648682133078228

/-! ## A006038.P7779910883424968030

`∩[A006039(n+1), A381547(n+1)]`
-/

namespace A006038.P7779910883424968030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006039 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381547 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A006038.P7779910883424968030

/-! ## A006038.P2585329514124128103

`∩[A071395(n+1), A381547(n+1)]`
-/

namespace A006038.P2585329514124128103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071395 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381547 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A006038.P2585329514124128103

/-! ## A006038.P10763628559541773009

`A006039(eq[1, A006039(n+1)%2]+1)`
-/

namespace A006038.P10763628559541773009
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006039 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006039 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A006038.P10763628559541773009

/-! ## A006038.P8330034915006012

`A071395(eq[3, gcd(3, A071395(n+1))]+1)`
-/

namespace A006038.P8330034915006012
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 3 (A071395 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071395 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A006038.P8330034915006012

/-! ## A006038.P16807561539026051279

`A071395(eq[1, and(1, A071395(n+1))]+1)`
-/

namespace A006038.P16807561539026051279
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A071395 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071395 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A006038.P16807561539026051279

/-! ## A006038.P11443153176340713849

`∩[A005231(n+1), A006036(n+1)]`
-/

namespace A006038.P11443153176340713849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005231 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006036 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A006038.P11443153176340713849

/-! ## A006038.P3599995809300165696

`∩[A006036(n+1), A381547(n+1)]`
-/

namespace A006038.P3599995809300165696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006036 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381547 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A006038.P3599995809300165696

/-! ## A006038.P6733773696617404532

`A006036(eq[1, gcd(2, A006036(n+1))]+1)`
-/

namespace A006038.P6733773696617404532
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A006036 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006036 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A006038.P6733773696617404532

/-! ## A006038.P4876411437339446662

`A006036(eq[1, and(1, A006036(n+1))]+1)`
-/

namespace A006038.P4876411437339446662
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A006036 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006036 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A006038.P4876411437339446662

/-! ## A006038.P5533426685635135720

`∩[A006036(n+1), A381550(n+1)]`
-/

namespace A006038.P5533426685635135720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006036 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381550 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A006038.P5533426685635135720

/-! ## A006038.P1822419437568743130

`∩[A006039(n+1), A381550(n+1)]`
-/

namespace A006038.P1822419437568743130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006039 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381550 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A006038.P1822419437568743130

/-! ## A006038.P2150393261096123642

`∩[A071395(n+1), A381550(n+1)]`
-/

namespace A006038.P2150393261096123642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071395 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381550 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A006038.P2150393261096123642

/-! ## A006038.P11151092119281324893

`∩[A306987(n+1), A381550(n+1)]`
-/

namespace A006038.P11151092119281324893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306987 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381550 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A006038.P11151092119281324893

/-! ## A006038.P11567716966188619196

`∩[A006036(n+1), A174830(n+1)]`
-/

namespace A006038.P11567716966188619196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006036 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174830 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A006038.P11567716966188619196

/-! ## A006038.P6998549633254710500

`∩[A006039(n+1), A174830(n+1)]`
-/

namespace A006038.P6998549633254710500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006039 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174830 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A006038.P6998549633254710500

/-!
# A006039: Primitive nondeficient numbers.

The programs for A006039, there is no canonical definition to state claims against.
-/

/-! ## A006039.P7215451539419370851

`∪[A071395(n+1), A308710(n+1)]`
-/

namespace A006039.P7215451539419370851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071395 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308710 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A006039.P7215451539419370851

/-! ## A006039.P10336297433733809505

`∪[A071395(n+1), A352739(n+1)]`
-/

namespace A006039.P10336297433733809505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071395 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352739 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A006039.P10336297433733809505

/-! ## A006039.P10004578675738948871

`eq[1, A341619(n+1)]+1`
-/

namespace A006039.P10004578675738948871
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341619 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A006039.P10004578675738948871

/-! ## A006039.P12927025721429098572

`eq[1, A341620(n+1)]+1`
-/

namespace A006039.P12927025721429098572
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341620 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A006039.P12927025721429098572

/-! ## A006039.P1268717798698292915

`record[A023196(n+1)*A341619(A023196(n+1))]`
-/

namespace A006039.P1268717798698292915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023196 (n + 1) * A341619 (A023196 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006039.P1268717798698292915

/-! ## A006039.P9475764550208962047

`∪[A071395(n+1), A378530(n+1)]`
-/

namespace A006039.P9475764550208962047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071395 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378530 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A006039.P9475764550208962047

/-! ## A006039.P923977433569784869

`eq[1, A341619(A028310(n))]`
-/

namespace A006039.P923977433569784869
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341619 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A006039.P923977433569784869

/-! ## A006039.P14476080537322371354

`A020725(eq[1, A341620(n+1)])`
-/

namespace A006039.P14476080537322371354
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341620 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A006039.P14476080537322371354

/-! ## A006039.P9628173212084668224

`A065475(eq[1, A341620(n+1)])`
-/

namespace A006039.P9628173212084668224
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341620 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A006039.P9628173212084668224

/-!
# A006040: a(n) = Sum_{i=0..n} (n!/(n-i)!)^2.

The programs for A006040, the canonical program `A006040.P13051466268710621442` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006040 has offset 0).

The definition of A006040 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A006040.P13051466268710621442

`n²*a(n-1)+1` with `a(0)=1`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A006040

/-- `n²*a(n-1)+1` -/
def P13051466268710621442.Spec : Prop :=
  ∀ n, (P13051466268710621442.a n : ℤ) = A006040 n

theorem P13051466268710621442.correct : P13051466268710621442.Spec := by
  intro n
  simp only [A006040]

end A006040

/-! ## A006040.P6732272528236416275

`n*n*a(n-1)+1` with `a(0)=1`
-/

namespace A006040.P6732272528236416275
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  n * (n * a (n - 1)) + 1

end

end A006040.P6732272528236416275

namespace A006040

/-- `n*n*a(n-1)+1` -/
def P6732272528236416275.Spec : Prop :=
  ∀ n, (P6732272528236416275.a n : ℤ) = A006040 n

theorem P6732272528236416275.correct : P6732272528236416275.Spec := by
  intro n
  simp only [A006040, Nat.add_sub_cancel, A006040.P6732272528236416275.a, A006040.P13051466268710621442.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A006040

/-! ## A006040.P4020808806120118974

`a(n-1)/n^(-2)+1` with `a(0)=1`
-/

namespace A006040.P4020808806120118974
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) / (n : ℚ) ^ (-2 : ℤ) + 1

end

end A006040.P4020808806120118974

namespace A006040

/-- `a(n-1)/n^(-2)+1` -/
def P4020808806120118974.Spec : Prop :=
  ∀ n, P4020808806120118974.a n = (A006040 n : ℚ)

end A006040

/-! ## A006040.P17611302404800145221

`or(2, n²*a(n-1))-1` with `a(0)=1`
-/

namespace A006040.P17611302404800145221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.lor 2 ((n ^ 2 : ℤ) * a (n - 1)) - 1

end

end A006040.P17611302404800145221

namespace A006040

/-- `or(2, n²*a(n-1))-1` -/
def P17611302404800145221.Spec : Prop :=
  ∀ n, P17611302404800145221.a n = A006040 n

end A006040

/-! ## A006040.P12104299215491048193

`1-(n-∑[2*n])*a(n-1)` with `a(0)=1`
-/

namespace A006040.P12104299215491048193
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - ((n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)) * a (n - 1)

end

end A006040.P12104299215491048193

namespace A006040

/-- `1-(n-∑[2*n])*a(n-1)` -/
def P12104299215491048193.Spec : Prop :=
  ∀ n, P12104299215491048193.a n = A006040 n

end A006040

/-!
# A006041: a(n+1) = (n^2 - 1)*a(n) + n + 1.

The programs for A006041, the canonical program `A006041.P4054582433789919618` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006041 has offset 1).

The definition of A006041 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A006041.P4054582433789919618

`((n+1)²-2*(n+1))*a(n-1)+n+1` with `a(0)=0`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A006041

/-- `((n+1)²-2*(n+1))*a(n-1)+n+1` -/
def P4054582433789919618.Spec : Prop :=
  ∀ n, P4054582433789919618.a n = A006041 (n + 1)

theorem P4054582433789919618.correct : P4054582433789919618.Spec := by
  intro n
  simp only [A006041, Nat.add_sub_cancel]

end A006041

/-! ## A006041.P6998853761899050368

`1-((1-n²)*a(n-1)-n)` with `a(0)=0`
-/

namespace A006041.P6998853761899050368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  1 - ((1 - (n ^ 2 : ℤ)) * a (n - 1) - (n : ℤ))

end

end A006041.P6998853761899050368

namespace A006041

/-- `1-((1-n²)*a(n-1)-n)` -/
def P6998853761899050368.Spec : Prop :=
  ∀ n, P6998853761899050368.a n = A006041 (n + 1)

theorem P6998853761899050368.correct : P6998853761899050368.Spec := by
  intro n
  simp only [A006041, Nat.add_sub_cancel, A006041.P6998853761899050368.a, A006041.P4054582433789919618.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A006041

/-! ## A006041.P6407333592975422098

`lcm(1-n², a(n-1))+n+1` with `a(0)=0`
-/

namespace A006041.P6407333592975422098
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Int.lcm (1 - (n ^ 2 : ℤ)) (a (n - 1) : ℤ) + (n + 1)

end

end A006041.P6407333592975422098

namespace A006041

/-- `lcm(1-n², a(n-1))+n+1` -/
def P6407333592975422098.Spec : Prop :=
  ∀ n, (P6407333592975422098.a n : ℤ) = A006041 (n + 1)

end A006041

/-! ## A006041.P9016121715716137772

`(n+1)*((n-1)*a(n-1)+1)` with `a(0)=0`
-/

namespace A006041.P9016121715716137772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n + 1 : ℤ) * (((n : ℤ) - 1) * a (n - 1) + 1)

end

end A006041.P9016121715716137772

namespace A006041

/-- `(n+1)*((n-1)*a(n-1)+1)` -/
def P9016121715716137772.Spec : Prop :=
  ∀ n, P9016121715716137772.a n = A006041 (n + 1)

theorem P9016121715716137772.correct : P9016121715716137772.Spec := by
  intro n
  simp only [A006041, Nat.add_sub_cancel, A006041.P9016121715716137772.a, A006041.P4054582433789919618.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A006041

/-! ## A006041.P7833476015231252410

`a(n-1)/n^(-2)+n+1-a(n-1)` with `a(0)=0`
-/

namespace A006041.P7833476015231252410
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) / (n : ℚ) ^ (-2 : ℤ) + ((n + 1 : ℚ) - a (n - 1))

end

end A006041.P7833476015231252410

namespace A006041

/-- `a(n-1)/n^(-2)+n+1-a(n-1)` -/
def P7833476015231252410.Spec : Prop :=
  ∀ n, P7833476015231252410.a n = (A006041 (n + 1) : ℚ)

end A006041

/-!
# A006042: The nim-square of n.

The programs for A006042, there is no canonical definition to state claims against.
-/

/-! ## A006042.P9276878326530253595

`A335535(A160679(n))`
-/

namespace A006042.P9276878326530253595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335535 (A160679 n).toNat

end

end A006042.P9276878326530253595

/-! ## A006042.P2140595254074930563

`A003188(A160679(xor(n, floor(n/2))))`
-/

namespace A006042.P2140595254074930563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (A160679 (Int.xor (n : ℤ) ⌊(n : ℚ) / 2⌋).toNat).toNat

end

end A006042.P2140595254074930563

/-! ## A006042.P9039361301819958411

`A003188(A160679(xor(2*n, and(n, -2))/2))`
-/

namespace A006042.P9039361301819958411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (A160679 (SequenceMachineLib.roundAway ((Int.xor (2 * n : ℤ) (Int.land (n : ℤ) (-2)) : ℚ) / 2)).toNat).toNat

end

end A006042.P9039361301819958411

/-! ## A006042.P13290723813275561910

`A003188(A160679(ceil(xor(n-1, 2*n)/2)))`
-/

namespace A006042.P13290723813275561910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (A160679 ⌈(Int.xor ((n : ℤ) - 1) (2 * n : ℤ) : ℚ) / 2⌉.toNat).toNat

end

end A006042.P13290723813275561910

/-! ## A006042.P16361475969767796827

`A003188(A160679(xor(2*n+1, or(1, n))/2))`
-/

namespace A006042.P16361475969767796827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (A160679 (SequenceMachineLib.roundAway ((Nat.xor (2 * n + 1) (Nat.lor 1 n) : ℚ) / 2)).toNat).toNat

end

end A006042.P16361475969767796827

/-! ## A006042.P3574567205116741116

`A003188(A160679(round(xor(2*n+1, n+1)/2)))`
-/

namespace A006042.P3574567205116741116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (A160679 (SequenceMachineLib.roundAway ((Nat.xor (2 * n + 1) (n + 1) : ℚ) / 2)).toNat).toNat

end

end A006042.P3574567205116741116

/-! ## A006042.P5874664821735159277

`A160679(A160679(A335536(n)))`
-/

namespace A006042.P5874664821735159277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160679 (A160679 (A335536 n).toNat).toNat

end

end A006042.P5874664821735159277

/-! ## A006042.P5218331899981361494

`A335162(A133263(n+2))`
-/

namespace A006042.P5218331899981361494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335162 (A133263 (n + 2)).toNat

end

end A006042.P5218331899981361494

/-! ## A006042.P12603013731406431609

`A335162(A167614(n+1)-1)`
-/

namespace A006042.P12603013731406431609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335162 (A167614 (n + 1) - 1).toNat

end

end A006042.P12603013731406431609

/-! ## A006042.P1201522835762051805

`A335162(A167499(n+1)-3)`
-/

namespace A006042.P1201522835762051805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335162 (A167499 (n + 1) - 3).toNat

end

end A006042.P1201522835762051805

/-! ## A006042.P3363828572794035114

`A335162(n-(1-A167499(n)))`
-/

namespace A006042.P3363828572794035114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335162 ((n : ℤ) - (1 - A167499 n)).toNat

end

end A006042.P3363828572794035114

/-! ## A006042.P7244961959133507271

`A051910(∑[n]+n)`
-/

namespace A006042.P7244961959133507271
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051910 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A006042.P7244961959133507271

/-!
# A006043: A traffic light problem: expansion of 2/(1 - 3*x)^3.

The programs for A006043, the canonical program `A006043.P694516092793321870` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006043 has offset 0).

The definition of A006043 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A006043.P694516092793321870

`(n+2)*(n+1)*3^n`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A006043

/-- `(n+2)*(n+1)*3^n` -/
def P694516092793321870.Spec : Prop :=
  ∀ n, (P694516092793321870.a n : ℤ) = A006043 n

theorem P694516092793321870.correct : P694516092793321870.Spec := by
  intro n
  simp only [A006043]

end A006043

/-! ## A006043.P536640805074574516

`A116138(n+1)/3`
-/

namespace A006043.P536640805074574516
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A116138 (n + 1) : ℚ) / 3

end

end A006043.P536640805074574516

namespace A006043

/-- `A116138(n+1)/3` -/
def P536640805074574516.Spec : Prop :=
  ∀ n, P536640805074574516.a n = (A006043 n : ℚ)

theorem P536640805074574516.correct : P536640805074574516.Spec := by
  intro n
  simp only [A006043, Nat.add_sub_cancel, A006043.P536640805074574516.a, A006043.P694516092793321870.a, A116138, A116138.P12016771194482355886.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A006043

/-! ## A006043.P16068698086683485934

`5^(n+2)-A387680(n+2)`
-/

namespace A006043.P16068698086683485934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 ^ (n + 2) : ℤ) - A387680 (n + 2)

end

end A006043.P16068698086683485934

namespace A006043

/-- `5^(n+2)-A387680(n+2)` -/
def P16068698086683485934.Spec : Prop :=
  ∀ n, P16068698086683485934.a n = A006043 n

end A006043

/-! ## A006043.P1656340121046614924

`lcm(n+1, n+2)/3^-n`
-/

namespace A006043.P1656340121046614924
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm (n + 1) (n + 2) : ℚ) / (3 : ℚ) ^ (-(n : ℤ) : ℤ)

end

end A006043.P1656340121046614924

namespace A006043

/-- `lcm(n+1, n+2)/3^-n` -/
def P1656340121046614924.Spec : Prop :=
  ∀ n, P1656340121046614924.a n = (A006043 n : ℚ)

end A006043

/-! ## A006043.P4717303838800402823

`floor(3*(n+2)*a(n-1)/n)` with `a(0)=2`
-/

namespace A006043.P4717303838800402823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  ⌊3 * ((n + 2 : ℚ) * ((a (n - 1) : ℚ) / (n : ℚ)))⌋

end

end A006043.P4717303838800402823

namespace A006043

/-- `floor(3*(n+2)*a(n-1)/n)` -/
def P4717303838800402823.Spec : Prop :=
  ∀ n, P4717303838800402823.a n = A006043 n

end A006043

/-! ## A006043.P3123063269111957104

`floor(∑[3*a(n-1)]*∑[n+1])` with `a(0)=2, a(1)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A006043.P3123063269111957104
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 4] fun n f1 =>
  3 * f1 (n - 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A006043.P3123063269111957104

namespace A006043

/-- `floor(∑[3*a(n-1)]*∑[n+1])` -/
def P3123063269111957104.Spec : Prop :=
  ∀ n, (P3123063269111957104.a n : ℤ) = A006043 n

end A006043

/-! ## A006043.P15926719928093713562

`round(∑[n+1]/acot(3^n))+C(n+2, 2)/3^-n`
-/

namespace A006043.P15926719928093713562
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) / SequenceMachineLib.acot (3 ^ n : ℝ)) : ℚ) + (Nat.choose (n + 2) 2 : ℚ) / (3 : ℚ) ^ (-(n : ℤ) : ℤ)

end

end A006043.P15926719928093713562

namespace A006043

/-- `round(∑[n+1]/acot(3^n))+C(n+2, 2)/3^-n` -/
def P15926719928093713562.Spec : Prop :=
  ∀ n, P15926719928093713562.a n = (A006043 n : ℚ)

end A006043

/-! ## A006043.P4052413264362282320

`∑[2*A383136(n+1)]`
-/

namespace A006043.P4052413264362282320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A383136 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006043.P4052413264362282320

namespace A006043

/-- `∑[2*A383136(n+1)]` -/
def P4052413264362282320.Spec : Prop :=
  ∀ n, P4052413264362282320.a n = A006043 n

end A006043

/-! ## A006043.P17705651568647525355

`4*A027472(n+3)/2`
-/

namespace A006043.P17705651568647525355
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 * A027472 (n + 3) : ℚ) / 2

end

end A006043.P17705651568647525355

namespace A006043

/-- `4*A027472(n+3)/2` -/
def P17705651568647525355.Spec : Prop :=
  ∀ n, P17705651568647525355.a n = (A006043 n : ℚ)

end A006043

/-! ## A006043.P6417366440441926395

`∑[(n+1)*A199923(n+1)]`
-/

namespace A006043.P6417366440441926395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A199923 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006043.P6417366440441926395

namespace A006043

/-- `∑[(n+1)*A199923(n+1)]` -/
def P6417366440441926395.Spec : Prop :=
  ∀ n, P6417366440441926395.a n = A006043 n

end A006043

/-! ## A006043.P11099482287539215534

`(n+1)*A027261(n+1)/2`
-/

namespace A006043.P11099482287539215534
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * A027261 (n + 1) : ℚ) / 2

end

end A006043.P11099482287539215534

namespace A006043

/-- `(n+1)*A027261(n+1)/2` -/
def P11099482287539215534.Spec : Prop :=
  ∀ n, P11099482287539215534.a n = (A006043 n : ℚ)

end A006043

/-! ## A006043.P354166567327570852

`(n+1)*A159715(n+2)/2`
-/

namespace A006043.P354166567327570852
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * A159715 (n + 2) : ℚ) / 2

end

end A006043.P354166567327570852

namespace A006043

/-- `(n+1)*A159715(n+2)/2` -/
def P354166567327570852.Spec : Prop :=
  ∀ n, P354166567327570852.a n = (A006043 n : ℚ)

theorem P354166567327570852.correct : P354166567327570852.Spec := by
  intro n
  simp only [A006043, Nat.add_sub_cancel, A006043.P354166567327570852.a, A006043.P694516092793321870.a, A159715, A159715.P7674003241616951973.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A006043

/-! ## A006043.P7588289615819993956

`(n+2)*A212697(n+1)/2`
-/

namespace A006043.P7588289615819993956
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 2 : ℤ) * A212697 (n + 1) : ℚ) / 2

end

end A006043.P7588289615819993956

namespace A006043

/-- `(n+2)*A212697(n+1)/2` -/
def P7588289615819993956.Spec : Prop :=
  ∀ n, P7588289615819993956.a n = (A006043 n : ℚ)

theorem P7588289615819993956.correct : P7588289615819993956.Spec := by
  intro n
  simp only [A006043, Nat.add_sub_cancel, A006043.P7588289615819993956.a, A006043.P694516092793321870.a, A212697, A212697.P17163374785619925015.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A006043

/-! ## A006043.P3478468004779640969

`A062189(n+1)-a(n-1)` with `a(0)=2`
-/

namespace A006043.P3478468004779640969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A062189 (n + 1) - a (n - 1)

end

end A006043.P3478468004779640969

namespace A006043

/-- `A062189(n+1)-a(n-1)` -/
def P3478468004779640969.Spec : Prop :=
  ∀ n, P3478468004779640969.a n = A006043 n

end A006043

/-! ## A006043.P8764721903553508853

`and((n+1)*A288834(n+1), -2)`
-/

namespace A006043.P8764721903553508853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((n + 1 : ℤ) * A288834 (n + 1)) (-2)

end

end A006043.P8764721903553508853

namespace A006043

/-- `and((n+1)*A288834(n+1), -2)` -/
def P8764721903553508853.Spec : Prop :=
  ∀ n, P8764721903553508853.a n = A006043 n

end A006043

/-! ## A006043.P6960151339132610859

`∑[2*(n+1)*A006234(n+3)]`
-/

namespace A006043.P6960151339132610859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) * A006234 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006043.P6960151339132610859

namespace A006043

/-- `∑[2*(n+1)*A006234(n+3)]` -/
def P6960151339132610859.Spec : Prop :=
  ∀ n, P6960151339132610859.a n = A006043 n

end A006043

/-! ## A006043.P8123353114676498283

`A212697(n+1)+A116138(n)`
-/

namespace A006043.P8123353114676498283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212697 (n + 1) + A116138 n

end

end A006043.P8123353114676498283

namespace A006043

/-- `A212697(n+1)+A116138(n)` -/
def P8123353114676498283.Spec : Prop :=
  ∀ n, P8123353114676498283.a n = A006043 n

theorem P8123353114676498283.correct : P8123353114676498283.Spec := by
  intro n
  simp only [A006043, Nat.add_sub_cancel, A006043.P8123353114676498283.a, A006043.P694516092793321870.a, A116138, A116138.P12016771194482355886.a, A212697, A212697.P17163374785619925015.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A006043

/-! ## A006043.P8748920227658813462

`lcm(A027472(n+3), A194767(n))`
-/

namespace A006043.P8748920227658813462
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A027472 (n + 3)) (A194767 n)

end

end A006043.P8748920227658813462

namespace A006043

/-- `lcm(A027472(n+3), A194767(n))` -/
def P8748920227658813462.Spec : Prop :=
  ∀ n, (P8748920227658813462.a n : ℤ) = A006043 n

end A006043

/-! ## A006043.P3336783234980117649

`A069515(n+2)-A027471(n+2)`
-/

namespace A006043.P3336783234980117649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069515 (n + 2) - A027471 (n + 2)

end

end A006043.P3336783234980117649

namespace A006043

/-- `A069515(n+2)-A027471(n+2)` -/
def P3336783234980117649.Spec : Prop :=
  ∀ n, P3336783234980117649.a n = A006043 n

end A006043

/-! ## A006043.P5736627539345766562

`A129530(n+2)-A027472(n+3)`
-/

namespace A006043.P5736627539345766562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129530 (n + 2) - A027472 (n + 3)

end

end A006043.P5736627539345766562

namespace A006043

/-- `A129530(n+2)-A027472(n+3)` -/
def P5736627539345766562.Spec : Prop :=
  ∀ n, P5736627539345766562.a n = A006043 n

end A006043

/-!
# A006044: a(n) = 4^(n-4)*(n-1)*(n-2)*(n-3).

The programs for A006044, the canonical program `A006044.P7487657658477397367` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006044 has offset 4).

The definition of A006044 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4^n*(n+3)*(n+2)*(n+1)` (program `A006044.P7487657658477397367`, by `A006044.P7487657658477397367.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A006044.P15241030773030458033

`4^n*(n+1)*(n+2)*(n+3)`
-/

namespace A006044.P15241030773030458033
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ n * (n + 1) * (n + 2) * (n + 3)

end

end A006044.P15241030773030458033

namespace A006044

/-- `4^n*(n+1)*(n+2)*(n+3)` -/
def P15241030773030458033.Spec : Prop :=
  ∀ n, (P15241030773030458033.a n : ℤ) = A006044 (n + 4)

theorem P15241030773030458033.correct : P15241030773030458033.Spec := by
  intro n
  simp only [A006044, Nat.add_sub_cancel, A006044.P15241030773030458033.a, A006044.P7487657658477397367.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A006044

/-! ## A006044.P7487657658477397367

`4^n*(n+3)*(n+2)*(n+1)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A006044

/-- `4^n*(n+3)*(n+2)*(n+1)` -/
def P7487657658477397367.Spec : Prop :=
  ∀ n, (P7487657658477397367.a n : ℤ) = A006044 (n + 4)

theorem P7487657658477397367.correct : P7487657658477397367.Spec := by
  intro n
  simp only [A006044, Nat.add_sub_cancel]

end A006044

/-! ## A006044.P10178317858202538678

`record[6*A058187(n)*A123344(n)]`
-/

namespace A006044.P10178317858202538678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * (A058187 n * A123344 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006044.P10178317858202538678

namespace A006044

/-- `record[6*A058187(n)*A123344(n)]` -/
def P10178317858202538678.Spec : Prop :=
  ∀ n, P10178317858202538678.a n = A006044 (n + 4)

end A006044

/-! ## A006044.P59172217812972640

`∑[6*Δ[A048506(n)]*A001792(n)]`
-/

namespace A006044.P59172217812972640
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048506 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * ((f2 (n + 1) - f2 n) * A001792 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006044.P59172217812972640

namespace A006044

/-- `∑[6*Δ[A048506(n)]*A001792(n)]` -/
def P59172217812972640.Spec : Prop :=
  ∀ n, P59172217812972640.a n = A006044 (n + 4)

end A006044

/-! ## A006044.P3185215596941293994

`A002697(n+1)+A002697(n+1)*A028387(n+1)`
-/

namespace A006044.P3185215596941293994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002697 (n + 1) + A002697 (n + 1) * A028387 (n + 1)

end

end A006044.P3185215596941293994

namespace A006044

/-- `A002697(n+1)+A002697(n+1)*A028387(n+1)` -/
def P3185215596941293994.Spec : Prop :=
  ∀ n, P3185215596941293994.a n = A006044 (n + 4)

end A006044

/-! ## A006044.P9422806691493157493

`A002064(n+1)*A080929(n+1)-A080929(n+1)`
-/

namespace A006044.P9422806691493157493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002064 (n + 1) * A080929 (n + 1) - A080929 (n + 1)

end

end A006044.P9422806691493157493

namespace A006044

/-- `A002064(n+1)*A080929(n+1)-A080929(n+1)` -/
def P9422806691493157493.Spec : Prop :=
  ∀ n, P9422806691493157493.a n = A006044 (n + 4)

end A006044

/-! ## A006044.P16112762661976717196

`A137337(∑[n+3])/2`
-/

namespace A006044.P16112762661976717196
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A137337 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 2

end

end A006044.P16112762661976717196

namespace A006044

/-- `A137337(∑[n+3])/2` -/
def P16112762661976717196.Spec : Prop :=
  ∀ n, P16112762661976717196.a n = (A006044 (n + 4) : ℚ)

end A006044

/-! ## A006044.P17646808260572175608

`A152818(A167614(n+2))`
-/

namespace A006044.P17646808260572175608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152818 (A167614 (n + 2)).toNat

end

end A006044.P17646808260572175608

namespace A006044

/-- `A152818(A167614(n+2))` -/
def P17646808260572175608.Spec : Prop :=
  ∀ n, P17646808260572175608.a n = A006044 (n + 4)

end A006044

/-!
# A006046: Total number of odd entries in first n rows of Pascal's triangle: a(0) = 0, a(1) = 1, a(2k) = 3*a(k), a(2k+1) = 2*a(k) + a(k+1). a(n) = Sum_{i=0..n-1} 2^wt(i).

The programs for A006046, the canonical program `A006046.P16130984765599899400` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006046 has offset 0).

The definition of A006046 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A006046.P16130984765599899400

`2*a(floor(n/2))+a(ceil(n/2))` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A006046

/-- `2*a(floor(n/2))+a(ceil(n/2))` -/
def P16130984765599899400.Spec : Prop :=
  ∀ n, (P16130984765599899400.a n : ℤ) = A006046 n

theorem P16130984765599899400.correct : P16130984765599899400.Spec := by
  intro n
  simp only [A006046]

end A006046

/-! ## A006046.P3918414566189679004

`a(n-1)+A001316(n-1)` with `a(0)=0`
-/

namespace A006046.P3918414566189679004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + A001316 (n - 1)

end

end A006046.P3918414566189679004

namespace A006046

/-- `a(n-1)+A001316(n-1)` -/
def P3918414566189679004.Spec : Prop :=
  ∀ n, P3918414566189679004.a n = A006046 n

end A006046

/-! ## A006046.P537048942014277799

`3*a(floor(n/2))+n%2*2^A000120(n-1)` with `a(0)=0`
-/

namespace A006046.P537048942014277799
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  3 * a ⌊(n : ℚ) / 2⌋.toNat + ((n % 2 : ℕ) : ℚ) * (2 : ℚ) ^ (A000120 (n - 1) : ℤ)

end

end A006046.P537048942014277799

namespace A006046

/-- `3*a(floor(n/2))+n%2*2^A000120(n-1)` -/
def P537048942014277799.Spec : Prop :=
  ∀ n, P537048942014277799.a n = (A006046 n : ℚ)

end A006046

/-! ## A006046.P5729714671882831969

`∑[gcd(2, n)*a(∑[n%2])]` with `a(0)=0, a(1)=1`
-/

namespace A006046.P5729714671882831969
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  Nat.gcd 2 n * f1 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006046.P5729714671882831969

namespace A006046

/-- `∑[gcd(2, n)*a(∑[n%2])]` -/
def P5729714671882831969.Spec : Prop :=
  ∀ n, (P5729714671882831969.a n : ℤ) = A006046 n

end A006046

/-! ## A006046.P247832713332186020

`A256256(n)/6`
-/

namespace A006046.P247832713332186020
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A256256 n : ℚ) / 6

end

end A006046.P247832713332186020

namespace A006046

/-- `A256256(n)/6` -/
def P247832713332186020.Spec : Prop :=
  ∀ n, P247832713332186020.a n = (A006046 n : ℚ)

theorem P247832713332186020.correct : P247832713332186020.Spec := by
  intro n
  simp only [A006046, Nat.add_sub_cancel, A006046.P247832713332186020.a, A006046.P16130984765599899400.a, A256256, A256256.P16031076571279366178.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A006046

/-! ## A006046.P15070470887898656334

`floor(A080978(n)/2)`
-/

namespace A006046.P15070470887898656334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A080978 n : ℚ) / 2⌋

end

end A006046.P15070470887898656334

namespace A006046

/-- `floor(A080978(n)/2)` -/
def P15070470887898656334.Spec : Prop :=
  ∀ n, P15070470887898656334.a n = A006046 n

end A006046

/-! ## A006046.P6330816321154618738

`(A159912(n)+n)/2`
-/

namespace A006046.P6330816321154618738
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A159912 n + (n : ℤ) : ℚ) / 2

end

end A006046.P6330816321154618738

namespace A006046

/-- `(A159912(n)+n)/2` -/
def P6330816321154618738.Spec : Prop :=
  ∀ n, P6330816321154618738.a n = (A006046 n : ℚ)

end A006046

/-! ## A006046.P15123062834866101357

`(∑[A131136(n)]-1)/2`
-/

namespace A006046.P15123062834866101357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131136 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j - 1 : ℤ) : ℚ) / 2

end

end A006046.P15123062834866101357

namespace A006046

/-- `(∑[A131136(n)]-1)/2` -/
def P15123062834866101357.Spec : Prop :=
  ∀ n, P15123062834866101357.a n = (A006046 n : ℚ)

end A006046

/-! ## A006046.P8431546404331839614

`(n+1)²-A267583(n)`
-/

namespace A006046.P8431546404331839614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A267583 n

end

end A006046.P8431546404331839614

namespace A006046

/-- `(n+1)²-A267583(n)` -/
def P8431546404331839614.Spec : Prop :=
  ∀ n, P8431546404331839614.a n = A006046 n

end A006046

/-! ## A006046.P6234643955616692153

`∑[n-A261366(n)]+n`
-/

namespace A006046.P6234643955616692153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A261366 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A006046.P6234643955616692153

namespace A006046

/-- `∑[n-A261366(n)]+n` -/
def P6234643955616692153.Spec : Prop :=
  ∀ n, P6234643955616692153.a n = A006046 n

end A006046

/-! ## A006046.P7612775242477971570

`A173522(n)-a(n-1)` with `a(0)=0`
-/

namespace A006046.P7612775242477971570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A173522 n - a (n - 1)

end

end A006046.P7612775242477971570

namespace A006046

/-- `A173522(n)-a(n-1)` -/
def P7612775242477971570.Spec : Prop :=
  ∀ n, P7612775242477971570.a n = A006046 n

end A006046

/-! ## A006046.P7636003044099826154

`(n+1)²-∑[A267582(n)]`
-/

namespace A006046.P7636003044099826154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267582 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006046.P7636003044099826154

namespace A006046

/-- `(n+1)²-∑[A267582(n)]` -/
def P7636003044099826154.Spec : Prop :=
  ∀ n, P7636003044099826154.a n = A006046 n

end A006046

/-! ## A006046.P9435739018552801472

`A267700(n)+A048967(n)`
-/

namespace A006046.P9435739018552801472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267700 n + A048967 n

end

end A006046.P9435739018552801472

namespace A006046

/-- `A267700(n)+A048967(n)` -/
def P9435739018552801472.Spec : Prop :=
  ∀ n, P9435739018552801472.a n = A006046 n

end A006046

/-! ## A006046.P12887193978657036528

`∑[A000010(A131136(n))]-1`
-/

namespace A006046.P12887193978657036528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A131136 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A006046.P12887193978657036528

namespace A006046

/-- `∑[A000010(A131136(n))]-1` -/
def P12887193978657036528.Spec : Prop :=
  ∀ n, P12887193978657036528.a n = A006046 n

end A006046

/-! ## A006046.P9078833227877181601

`∑[A001316(n)]-A001316(n)`
-/

namespace A006046.P9078833227877181601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A001316 n

end

end A006046.P9078833227877181601

namespace A006046

/-- `∑[A001316(n)]-A001316(n)` -/
def P9078833227877181601.Spec : Prop :=
  ∀ n, P9078833227877181601.a n = A006046 n

end A006046

/-! ## A006046.P17848358321195469631

`A267700(A004273(n)-n)+n`
-/

namespace A006046.P17848358321195469631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267700 (A004273 n - (n : ℤ)).toNat + (n : ℤ)

end

end A006046.P17848358321195469631

namespace A006046

/-- `A267700(A004273(n)-n)+n` -/
def P17848358321195469631.Spec : Prop :=
  ∀ n, P17848358321195469631.a n = A006046 n

end A006046

/-! ## A006046.P11609996732355923479

`A267700(n)+n-A038573(n)`
-/

namespace A006046.P11609996732355923479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267700 n + ((n : ℤ) - A038573 n)

end

end A006046.P11609996732355923479

namespace A006046

/-- `A267700(n)+n-A038573(n)` -/
def P11609996732355923479.Spec : Prop :=
  ∀ n, P11609996732355923479.a n = A006046 n

end A006046

/-! ## A006046.P17814990943014282048

`(A173522(n+1)-A001316(n))/2`
-/

namespace A006046.P17814990943014282048
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A173522 (n + 1) - A001316 n : ℚ) / 2

end

end A006046.P17814990943014282048

namespace A006046

/-- `(A173522(n+1)-A001316(n))/2` -/
def P17814990943014282048.Spec : Prop :=
  ∀ n, P17814990943014282048.a n = (A006046 n : ℚ)

end A006046

/-! ## A006046.P1699458672319229929

`∑[A060632(2*n)]-A060632(2*n)`
-/

namespace A006046.P1699458672319229929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060632 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A060632 (2 * n)

end

end A006046.P1699458672319229929

namespace A006046

/-- `∑[A060632(2*n)]-A060632(2*n)` -/
def P1699458672319229929.Spec : Prop :=
  ∀ n, P1699458672319229929.a n = A006046 n

end A006046

/-! ## A006046.P2463942830361747454

`∑[2^A000120(n)]-2^A000120(n)`
-/

namespace A006046.P2463942830361747454
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A000120 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (2 : ℚ) ^ (A000120 n : ℤ)

end

end A006046.P2463942830361747454

namespace A006046

/-- `∑[2^A000120(n)]-2^A000120(n)` -/
def P2463942830361747454.Spec : Prop :=
  ∀ n, P2463942830361747454.a n = (A006046 n : ℚ)

end A006046

/-!
# A006047: Number of entries in n-th row of Pascal's triangle not divisible by 3.

The programs for A006047, the canonical program `A006047.P4068788115409844993` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006047 has offset 0).

The definition of A006047 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A006047.P4068788115409844993

`a(floor(n/3))*a(n%3)` with `a(0)=1, a(1)=2, a(2)=3`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A006047

/-- `a(floor(n/3))*a(n%3)` -/
def P4068788115409844993.Spec : Prop :=
  ∀ n, (P4068788115409844993.a n : ℤ) = A006047 n

theorem P4068788115409844993.correct : P4068788115409844993.Spec := by
  intro n
  simp only [A006047]

end A006047

/-! ## A006047.P3602233689819780056

`1-A062296(n)+n`
-/

namespace A006047.P3602233689819780056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A062296 n + (n : ℤ)

end

end A006047.P3602233689819780056

namespace A006047

/-- `1-A062296(n)+n` -/
def P3602233689819780056.Spec : Prop :=
  ∀ n, P3602233689819780056.a n = A006047 n

theorem P3602233689819780056.correct : P3602233689819780056.Spec := by
  intro n
  simp only [A006047, Nat.add_sub_cancel, A006047.P3602233689819780056.a, A006047.P4068788115409844993.a, A062296, A062296.P12059922108062415392.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A006047

/-! ## A006047.P7127859339305248145

`∏{digits}[A007089(n), #+1]`
-/

namespace A006047.P7127859339305248145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x + 1).prod

end

end A006047.P7127859339305248145

namespace A006047

/-- `∏{digits}[A007089(n), #+1]` -/
def P7127859339305248145.Spec : Prop :=
  ∀ n, (P7127859339305248145.a n : ℤ) = A006047 n

end A006047

/-! ## A006047.P15091903666915104358

`A061898(A120879(n))`
-/

namespace A006047.P15091903666915104358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061898 (A120879 n).toNat

end

end A006047.P15091903666915104358

namespace A006047

/-- `A061898(A120879(n))` -/
def P15091903666915104358.Spec : Prop :=
  ∀ n, P15091903666915104358.a n = A006047 n

end A006047

/-! ## A006047.P15104619585032117012

`A122111(A331279(n))`
-/

namespace A006047.P15104619585032117012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122111 (A331279 n).toNat

end

end A006047.P15104619585032117012

namespace A006047

/-- `A122111(A331279(n))` -/
def P15104619585032117012.Spec : Prop :=
  ∀ n, P15104619585032117012.a n = A006047 n

end A006047

/-! ## A006047.P9305775636316853986

`A227428(n)+A206424(n)`
-/

namespace A006047.P9305775636316853986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227428 n + A206424 n

end

end A006047.P9305775636316853986

namespace A006047

/-- `A227428(n)+A206424(n)` -/
def P9305775636316853986.Spec : Prop :=
  ∀ n, P9305775636316853986.a n = A006047 n

theorem P9305775636316853986.correct : P9305775636316853986.Spec := by
  intro n
  simp only [A006047, Nat.add_sub_cancel, A006047.P9305775636316853986.a, A006047.P4068788115409844993.a, A206424, A206424.P17237868033879064005.a, A227428, A227428.P16365958953958314226.a, A109168, A109168.P7922441834976635510.a, A140472, A140472.P15813874920454231005.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A006047

/-! ## A006047.P7856864576293279843

`A051638(n)-A227428(n)`
-/

namespace A006047.P7856864576293279843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051638 n - A227428 n

end

end A006047.P7856864576293279843

namespace A006047

/-- `A051638(n)-A227428(n)` -/
def P7856864576293279843.Spec : Prop :=
  ∀ n, P7856864576293279843.a n = A006047 n

end A006047

/-! ## A006047.P15453122249132291810

`A120880(n)+2*A227428(n)`
-/

namespace A006047.P15453122249132291810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120880 n + 2 * A227428 n

end

end A006047.P15453122249132291810

namespace A006047

/-- `A120880(n)+2*A227428(n)` -/
def P15453122249132291810.Spec : Prop :=
  ∀ n, P15453122249132291810.a n = A006047 n

end A006047

/-! ## A006047.P7142504838851432873

`2*A206424(n)-A120880(n)`
-/

namespace A006047.P7142504838851432873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A206424 n - A120880 n

end

end A006047.P7142504838851432873

namespace A006047

/-- `2*A206424(n)-A120880(n)` -/
def P7142504838851432873.Spec : Prop :=
  ∀ n, P7142504838851432873.a n = A006047 n

end A006047

/-! ## A006047.P1457527881996250513

`A023453(n)-(A062296(n)-12)`
-/

namespace A006047.P1457527881996250513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023453 n - (A062296 n - 12)

end

end A006047.P1457527881996250513

namespace A006047

/-- `A023453(n)-(A062296(n)-12)` -/
def P1457527881996250513.Spec : Prop :=
  ∀ n, P1457527881996250513.a n = A006047 n

theorem P1457527881996250513.correct : P1457527881996250513.Spec := by
  intro n
  simp only [A006047, Nat.add_sub_cancel, A006047.P1457527881996250513.a, A006047.P4068788115409844993.a, A023453, A023453.P6399622911449397509.a, A062296, A062296.P12059922108062415392.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A006047

/-! ## A006047.P1643767758377965448

`2^A062756(n)*3^A081603(n)`
-/

namespace A006047.P1643767758377965448
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A062756 n : ℤ) * (3 : ℚ) ^ (A081603 n : ℤ)

end

end A006047.P1643767758377965448

namespace A006047

/-- `2^A062756(n)*3^A081603(n)` -/
def P1643767758377965448.Spec : Prop :=
  ∀ n, P1643767758377965448.a n = (A006047 n : ℚ)

end A006047

/-! ## A006047.P17642827121384389887

`A120879(A137305(n))`
-/

namespace A006047.P17642827121384389887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120879 (A137305 n).toNat

end

end A006047.P17642827121384389887

namespace A006047

/-- `A120879(A137305(n))` -/
def P17642827121384389887.Spec : Prop :=
  ∀ n, P17642827121384389887.a n = A006047 n

end A006047

/-! ## A006047.P812608209822414905

`A120879(A004488(n))`
-/

namespace A006047.P812608209822414905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120879 (A004488 n).toNat

end

end A006047.P812608209822414905

namespace A006047

/-- `A120879(A004488(n))` -/
def P812608209822414905.Spec : Prop :=
  ∀ n, P812608209822414905.a n = A006047 n

end A006047

/-! ## A006047.P11091009522870702931

`A120879(A357616(n))`
-/

namespace A006047.P11091009522870702931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120879 (A357616 n).toNat

end

end A006047.P11091009522870702931

namespace A006047

/-- `A120879(A357616(n))` -/
def P11091009522870702931.Spec : Prop :=
  ∀ n, P11091009522870702931.a n = A006047 n

end A006047

/-! ## A006047.P15876985629133332880

`A227428(3*n+2)-A227428(n)`
-/

namespace A006047.P15876985629133332880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227428 (3 * n + 2) - A227428 n

end

end A006047.P15876985629133332880

namespace A006047

/-- `A227428(3*n+2)-A227428(n)` -/
def P15876985629133332880.Spec : Prop :=
  ∀ n, P15876985629133332880.a n = A006047 n

end A006047

/-! ## A006047.P8675870939475018694

`A008619(2*(n-A062296(n)))`
-/

namespace A006047.P8675870939475018694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * ((n : ℤ) - A062296 n)).toNat

end

end A006047.P8675870939475018694

namespace A006047

/-- `A008619(2*(n-A062296(n)))` -/
def P8675870939475018694.Spec : Prop :=
  ∀ n, P8675870939475018694.a n = A006047 n

end A006047

/-! ## A006047.P1059346370289921078

`A268444(A023717(n))`
-/

namespace A006047.P1059346370289921078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268444 (A023717 n).toNat

end

end A006047.P1059346370289921078

namespace A006047

/-- `A268444(A023717(n))` -/
def P1059346370289921078.Spec : Prop :=
  ∀ n, P1059346370289921078.a n = A006047 n

end A006047

/-! ## A006047.P672248959594204938

`A338854(record[A006015(n)])`
-/

namespace A006047.P672248959594204938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006015 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338854 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A006047.P672248959594204938

namespace A006047

/-- `A338854(record[A006015(n)])` -/
def P672248959594204938.Spec : Prop :=
  ∀ n, P672248959594204938.a n = A006047 n

end A006047

/-! ## A006047.P15688281841971074508

`A338854(A023709(n+1))`
-/

namespace A006047.P15688281841971074508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338854 (A023709 (n + 1)).toNat

end

end A006047.P15688281841971074508

namespace A006047

/-- `A338854(A023709(n+1))` -/
def P15688281841971074508.Spec : Prop :=
  ∀ n, P15688281841971074508.a n = A006047 n

end A006047

/-! ## A006047.P2691258282751319066

`A338854(eq[0, A160381(n)])`
-/

namespace A006047.P2691258282751319066
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160381 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338854 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A006047.P2691258282751319066

namespace A006047

/-- `A338854(eq[0, A160381(n)])` -/
def P2691258282751319066.Spec : Prop :=
  ∀ n, P2691258282751319066.a n = A006047 n

end A006047

/-!
# A006048: Number of entries in first n rows of Pascal's triangle not divisible by 3.

The programs for A006048, the canonical program `A006048.P15822080200911644139` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006048 has offset 0).

The definition of A006048 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A006048.P15822080200911644139

`∑[a(floor(n/3))*a(n%3)]` with `a(0)=1, a(1)=2, a(2)=3`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A006048

/-- `∑[a(floor(n/3))*a(n%3)]` -/
def P15822080200911644139.Spec : Prop :=
  ∀ n, (P15822080200911644139.a n : ℤ) = A006048 n

theorem P15822080200911644139.correct : P15822080200911644139.Spec := by
  intro n
  simp only [A006048]

end A006048

/-! ## A006048.P18251466959859803110

`a(floor(n/3))+2*a(floor((n-1)/3))+3*a(floor((n-2)/3))` with `a(0)=1, a(1)=3`
-/

namespace A006048.P18251466959859803110
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n a =>
  a ⌊(n : ℚ) / 3⌋.toNat + 2 * a ⌊((n : ℤ) - 1 : ℚ) / 3⌋.toNat + 3 * a ⌊((n : ℤ) - 2 : ℚ) / 3⌋.toNat

end

end A006048.P18251466959859803110

namespace A006048

/-- `a(floor(n/3))+2*a(floor((n-1)/3))+3*a(floor((n-2)/3))` -/
def P18251466959859803110.Spec : Prop :=
  ∀ n, (P18251466959859803110.a n : ℤ) = A006048 n

end A006048

/-! ## A006048.P16632946785984575782

`∑[A006047(n)]`
-/

namespace A006048.P16632946785984575782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006047 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006048.P16632946785984575782

namespace A006048

/-- `∑[A006047(n)]` -/
def P16632946785984575782.Spec : Prop :=
  ∀ n, P16632946785984575782.a n = A006048 n

theorem P16632946785984575782.correct : P16632946785984575782.Spec := by
  intro n
  simp only [A006048, Nat.add_sub_cancel, A006048.P16632946785984575782.f1, A006048.P16632946785984575782.a, A006048.P15822080200911644139.f1, A006048.P15822080200911644139.a, A006047, A006047.P4068788115409844993.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A006048

/-! ## A006048.P13817894647711195352

`∑[1-A062296(n)+n]`
-/

namespace A006048.P13817894647711195352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A062296 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006048.P13817894647711195352

namespace A006048

/-- `∑[1-A062296(n)+n]` -/
def P13817894647711195352.Spec : Prop :=
  ∀ n, P13817894647711195352.a n = A006048 n

theorem P13817894647711195352.correct : P13817894647711195352.Spec := by
  intro n
  simp only [A006048, Nat.add_sub_cancel, A006048.P13817894647711195352.f1, A006048.P13817894647711195352.a, A006048.P15822080200911644139.f1, A006048.P15822080200911644139.a, A062296, A062296.P12059922108062415392.a, A006047, A006047.P4068788115409844993.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A006048

/-! ## A006048.P15225534514736553158

`∑[A122111(A331279(n))]`
-/

namespace A006048.P15225534514736553158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122111 (A331279 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006048.P15225534514736553158

namespace A006048

/-- `∑[A122111(A331279(n))]` -/
def P15225534514736553158.Spec : Prop :=
  ∀ n, P15225534514736553158.a n = A006048 n

end A006048

/-! ## A006048.P12774283887528206679

`a(n-1)+A006047(A000007(n)+n)` with `a(0)=1`
-/

namespace A006048.P12774283887528206679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A006047 (A000007 n + (n : ℤ)).toNat

end

end A006048.P12774283887528206679

namespace A006048

/-- `a(n-1)+A006047(A000007(n)+n)` -/
def P12774283887528206679.Spec : Prop :=
  ∀ n, P12774283887528206679.a n = A006048 n

end A006048

/-! ## A006048.P14280610850035449589

`A006047(3*n)+a(n-1)` with `a(0)=1`
-/

namespace A006048.P14280610850035449589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A006047 (3 * n) + a (n - 1)

end

end A006048.P14280610850035449589

namespace A006048

/-- `A006047(3*n)+a(n-1)` -/
def P14280610850035449589.Spec : Prop :=
  ∀ n, P14280610850035449589.a n = A006048 n

end A006048

/-! ## A006048.P9590811309629117868

`∑[A120879(A004488(n))]`
-/

namespace A006048.P9590811309629117868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120879 (A004488 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006048.P9590811309629117868

namespace A006048

/-- `∑[A120879(A004488(n))]` -/
def P9590811309629117868.Spec : Prop :=
  ∀ n, P9590811309629117868.a n = A006048 n

end A006048

/-! ## A006048.P9358842942662522536

`∑[A008619(2*n)-A062296(n)]`
-/

namespace A006048.P9358842942662522536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * n) - A062296 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006048.P9358842942662522536

namespace A006048

/-- `∑[A008619(2*n)-A062296(n)]` -/
def P9358842942662522536.Spec : Prop :=
  ∀ n, P9358842942662522536.a n = A006048 n

end A006048

/-! ## A006048.P6265583924557305098

`∑[A338854(record[A006015(n)])]`
-/

namespace A006048.P6265583924557305098
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006015 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338854 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006048.P6265583924557305098

namespace A006048

/-- `∑[A338854(record[A006015(n)])]` -/
def P6265583924557305098.Spec : Prop :=
  ∀ n, P6265583924557305098.a n = A006048 n

end A006048

/-! ## A006048.P9606368068456369785

`∑[A338854(A023709(n+1))]`
-/

namespace A006048.P9606368068456369785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338854 (A023709 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006048.P9606368068456369785

namespace A006048

/-- `∑[A338854(A023709(n+1))]` -/
def P9606368068456369785.Spec : Prop :=
  ∀ n, P9606368068456369785.a n = A006048 n

end A006048

/-! ## A006048.P10581723924424335337

`A028310(a(n-1))+A006047(n)` with `a(0)=1`
-/

namespace A006048.P10581723924424335337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A028310 (a (n - 1)).toNat + A006047 n

end

end A006048.P10581723924424335337

namespace A006048

/-- `A028310(a(n-1))+A006047(n)` -/
def P10581723924424335337.Spec : Prop :=
  ∀ n, P10581723924424335337.a n = A006048 n

end A006048

/-! ## A006048.P10610066500857357197

`∑[∏{e}[A101278(n), A000040(#)]]`
-/

namespace A006048.P10610066500857357197
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101278 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, A000040 (Nat.factorization (f2 n).natAbs p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006048.P10610066500857357197

namespace A006048

/-- `∑[∏{e}[A101278(n), A000040(#)]]` -/
def P10610066500857357197.Spec : Prop :=
  ∀ n, P10610066500857357197.a n = A006048 n

end A006048

/-! ## A006048.P14317761133888732030

`∑[A000005(A101278(n))]`
-/

namespace A006048.P14317761133888732030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A101278 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006048.P14317761133888732030

namespace A006048

/-- `∑[A000005(A101278(n))]` -/
def P14317761133888732030.Spec : Prop :=
  ∀ n, P14317761133888732030.a n = A006048 n

end A006048

/-!
# A006049: Numbers k such that k and k+1 have the same number of distinct prime divisors.

The programs for A006049, the canonical program `A006049.P14504587564879316839` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006049 has offset 1).

The definition of A006049 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A006049.P14504587564879316839

`eq[A001221(n+1), A001221(n+2)]+1`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A006049

/-- `eq[A001221(n+1), A001221(n+2)]+1` -/
def P14504587564879316839.Spec : Prop :=
  ∀ n, (P14504587564879316839.a n : ℤ) = A006049 (n + 1)

theorem P14504587564879316839.correct : P14504587564879316839.Spec := by
  intro n
  simp only [A006049, Nat.add_sub_cancel]

end A006049

/-! ## A006049.P3290783595119799711

`eq[1, A188348(n+2)]+2`
-/

namespace A006049.P3290783595119799711
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188348 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A006049.P3290783595119799711

namespace A006049

/-- `eq[1, A188348(n+2)]+2` -/
def P3290783595119799711.Spec : Prop :=
  ∀ n, (P3290783595119799711.a n : ℤ) = A006049 (n + 1)

end A006049

/-! ## A006049.P11409918077749484338

`record[gcd(n+2, Δ[A001221(n+2)])]`
-/

namespace A006049.P11409918077749484338
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 2 : ℤ) (f2 (n + 1) - f2 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006049.P11409918077749484338

namespace A006049

/-- `record[gcd(n+2, Δ[A001221(n+2)])]` -/
def P11409918077749484338.Spec : Prop :=
  ∀ n, (P11409918077749484338.a n : ℤ) = A006049 (n + 1)

end A006049

/-! ## A006049.P13850171059130295948

`A020725(eq[A001221(n+1), A001221(n+2)])`
-/

namespace A006049.P13850171059130295948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A006049.P13850171059130295948

namespace A006049

/-- `A020725(eq[A001221(n+1), A001221(n+2)])` -/
def P13850171059130295948.Spec : Prop :=
  ∀ n, P13850171059130295948.a n = A006049 (n + 1)

end A006049

/-! ## A006049.P18356815076330651345

`eq[A001221(n+1), A001221(A000038(n)+n)]`
-/

namespace A006049.P18356815076330651345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A006049.P18356815076330651345

namespace A006049

/-- `eq[A001221(n+1), A001221(A000038(n)+n)]` -/
def P18356815076330651345.Spec : Prop :=
  ∀ n, (P18356815076330651345.a n : ℤ) = A006049 (n + 1)

end A006049

/-! ## A006049.P3476830872208389989

`eq[0, Δ[∑{p}[n+1, A001222(#)]²]]+1`
-/

namespace A006049.P3476830872208389989
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ p ∈ Nat.primeFactors (f4 n), A001222 p) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A006049.P3476830872208389989

namespace A006049

/-- `eq[0, Δ[∑{p}[n+1, A001222(#)]²]]+1` -/
def P3476830872208389989.Spec : Prop :=
  ∀ n, (P3476830872208389989.a n : ℤ) = A006049 (n + 1)

end A006049

/-! ## A006049.P5021299940078162451

`lt[2%(Δ[A034444(n+1)²]+2), 1]+1`
-/

namespace A006049.P5021299940078162451
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (n + 1) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 2 (f2 (n + 1) - f2 n + 2)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n + 1

end

end A006049.P5021299940078162451

namespace A006049

/-- `lt[2%(Δ[A034444(n+1)²]+2), 1]+1` -/
def P5021299940078162451.Spec : Prop :=
  ∀ n, (P5021299940078162451.a n : ℤ) = A006049 (n + 1)

end A006049

/-! ## A006049.P14534744502847380789

`eq[A034444(n+2), A034444(n+1)]+1`
-/

namespace A006049.P14534744502847380789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A006049.P14534744502847380789

namespace A006049

/-- `eq[A034444(n+2), A034444(n+1)]+1` -/
def P14534744502847380789.Spec : Prop :=
  ∀ n, (P14534744502847380789.a n : ℤ) = A006049 (n + 1)

end A006049

/-! ## A006049.P3789359646719476928

`eq[A083399(n+2), A083399(n+1)]+1`
-/

namespace A006049.P3789359646719476928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083399 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083399 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A006049.P3789359646719476928

namespace A006049

/-- `eq[A083399(n+2), A083399(n+1)]+1` -/
def P3789359646719476928.Spec : Prop :=
  ∀ n, (P3789359646719476928.a n : ℤ) = A006049 (n + 1)

end A006049

/-! ## A006049.P11565332522416882944

`eq[A229109(A028310(n))+1, A229109(n+1)]`
-/

namespace A006049.P11565332522416882944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229109 (A028310 n).toNat + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229109 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A006049.P11565332522416882944

namespace A006049

/-- `eq[A229109(A028310(n))+1, A229109(n+1)]` -/
def P11565332522416882944.Spec : Prop :=
  ∀ n, (P11565332522416882944.a n : ℤ) = A006049 (n + 1)

end A006049

/-! ## A006049.P10327584942290233061

`eq[A001221(A028310(n)), A087802(n+1)]`
-/

namespace A006049.P10327584942290233061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087802 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A006049.P10327584942290233061

namespace A006049

/-- `eq[A001221(A028310(n)), A087802(n+1)]` -/
def P10327584942290233061.Spec : Prop :=
  ∀ n, (P10327584942290233061.a n : ℤ) = A006049 (n + 1)

end A006049

/-!
# A006050: 

The programs for A006050, there is no canonical definition to state claims against.
-/

/-! ## A006050.P17333807300166049237

`A051885(a(n-1))` with `a(0)=0, a(1)=10`
-/

namespace A006050.P17333807300166049237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 10] fun n a =>
  A051885 (a (n - 1)).toNat

end

end A006050.P17333807300166049237

/-!
# A006051: Square hex numbers.

The programs for A006051, the canonical program `A006051.P8721878793732297453` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006051 has offset 1).

The definition of A006051 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A006051.P8721878793732297453

`194*a(n-1)-a(n-2)-24` with `a(0)=1, a(1)=169`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A006051

/-- `194*a(n-1)-a(n-2)-24` -/
def P8721878793732297453.Spec : Prop :=
  ∀ n, P8721878793732297453.a n = A006051 (n + 1)

theorem P8721878793732297453.correct : P8721878793732297453.Spec := by
  intro n
  simp only [A006051, Nat.add_sub_cancel]

end A006051

/-! ## A006051.P13163300537287861740

`A001570(n+1)²`
-/

namespace A006051.P13163300537287861740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001570 (n + 1) ^ 2

end

end A006051.P13163300537287861740

namespace A006051

/-- `A001570(n+1)²` -/
def P13163300537287861740.Spec : Prop :=
  ∀ n, P13163300537287861740.a n = A006051 (n + 1)

end A006051

/-! ## A006051.P9722651701278684024

`A099270(Δ[n²])`
-/

namespace A006051.P9722651701278684024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099270 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A006051.P9722651701278684024

namespace A006051

/-- `A099270(Δ[n²])` -/
def P9722651701278684024.Spec : Prop :=
  ∀ n, P9722651701278684024.a n = A006051 (n + 1)

end A006051

/-! ## A006051.P8063482180918175935

`record[A108946(n)]²`
-/

namespace A006051.P8063482180918175935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108946 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) ^ 2

end

end A006051.P8063482180918175935

namespace A006051

/-- `record[A108946(n)]²` -/
def P8063482180918175935.Spec : Prop :=
  ∀ n, P8063482180918175935.a n = A006051 (n + 1)

end A006051

/-! ## A006051.P405631553886177885

`A122571(n+2)²`
-/

namespace A006051.P405631553886177885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122571 (n + 2) ^ 2

end

end A006051.P405631553886177885

namespace A006051

/-- `A122571(n+2)²` -/
def P405631553886177885.Spec : Prop :=
  ∀ n, P405631553886177885.a n = A006051 (n + 1)

end A006051

/-!
# A006053: a(n) = a(n-1) + 2*a(n-2) - a(n-3), with a(0) = a(1) = 0, a(2) = 1.

The programs for A006053, the canonical program `A006053.P997465434380662312` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006053 has offset 0).

The definition of A006053 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+2*a(n-2)-a(n-3)` (program `A006053.P997465434380662312`, by `A006053.P997465434380662312.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A006053.P997465434380662312

`a(n-1)+2*a(n-2)-a(n-3)` with `a(0)=0, a(1)=0, a(2)=1`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A006053

/-- `a(n-1)+2*a(n-2)-a(n-3)` -/
def P997465434380662312.Spec : Prop :=
  ∀ n, P997465434380662312.a n = A006053 n

theorem P997465434380662312.correct : P997465434380662312.Spec := by
  intro n
  simp only [A006053]

end A006053

/-! ## A006053.P14639209445401191309

`A187065(2*n+1)`
-/

namespace A006053.P14639209445401191309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187065 (2 * n + 1)

end

end A006053.P14639209445401191309

namespace A006053

/-- `A187065(2*n+1)` -/
def P14639209445401191309.Spec : Prop :=
  ∀ n, P14639209445401191309.a n = A006053 n

end A006053

/-! ## A006053.P5928490896463211336

`ogf(x^2/(1-x-2x^2+x^3))`
-/

namespace A006053.P5928490896463211336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 1] [1, -1, -2, 1] n

end

end A006053.P5928490896463211336

namespace A006053

/-- `ogf(x^2/(1-x-2x^2+x^3))` -/
def P5928490896463211336.Spec : Prop :=
  ∀ n, P5928490896463211336.a n = A006053 n

end A006053

/-! ## A006053.P10527553945014480825

`a(n-1)-(a(n-3)-2*a(n-2))` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A006053.P10527553945014480825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1] fun n a =>
  a (n - 1) - (a (n - 3) - 2 * a (n - 2))

end

end A006053.P10527553945014480825

namespace A006053

/-- `a(n-1)-(a(n-3)-2*a(n-2))` -/
def P10527553945014480825.Spec : Prop :=
  ∀ n, P10527553945014480825.a n = A006053 n

end A006053

/-! ## A006053.P11036954059246306899

`a(n-1)+a(n-2)+a(n-2)-a(n-3)` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A006053.P11036954059246306899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1] fun n a =>
  a (n - 1) + (a (n - 2) + (a (n - 2) - a (n - 3)))

end

end A006053.P11036954059246306899

namespace A006053

/-- `a(n-1)+a(n-2)+a(n-2)-a(n-3)` -/
def P11036954059246306899.Spec : Prop :=
  ∀ n, P11036954059246306899.a n = A006053 n

theorem P11036954059246306899.correct : P11036954059246306899.Spec := by
  intro n
  simp only [A006053, Nat.add_sub_cancel, A006053.P11036954059246306899.a, A006053.P997465434380662312.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A006053

/-! ## A006053.P10824989698630638327

`a(n-1)-(a(n-3)-a(n-2)-a(n-2))` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A006053.P10824989698630638327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1] fun n a =>
  a (n - 1) - (a (n - 3) - a (n - 2) - a (n - 2))

end

end A006053.P10824989698630638327

namespace A006053

/-- `a(n-1)-(a(n-3)-a(n-2)-a(n-2))` -/
def P10824989698630638327.Spec : Prop :=
  ∀ n, P10824989698630638327.a n = A006053 n

end A006053

/-! ## A006053.P15092198989725936540

`A265755(2*n)`
-/

namespace A006053.P15092198989725936540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265755 (2 * n)

end

end A006053.P15092198989725936540

namespace A006053

/-- `A265755(2*n)` -/
def P15092198989725936540.Spec : Prop :=
  ∀ n, P15092198989725936540.a n = A006053 n

end A006053

/-! ## A006053.P874033515052364220

`∑[A096976(n)]-1`
-/

namespace A006053.P874033515052364220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096976 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A006053.P874033515052364220

namespace A006053

/-- `∑[A096976(n)]-1` -/
def P874033515052364220.Spec : Prop :=
  ∀ n, P874033515052364220.a n = A006053 n

end A006053

/-! ## A006053.P1096741844688912634

`∑[A096976(A028310(n))]`
-/

namespace A006053.P1096741844688912634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096976 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006053.P1096741844688912634

namespace A006053

/-- `∑[A096976(A028310(n))]` -/
def P1096741844688912634.Spec : Prop :=
  ∀ n, P1096741844688912634.a n = A006053 n

end A006053

/-! ## A006053.P15805303364623739416

`A187066(A004274(n+1))`
-/

namespace A006053.P15805303364623739416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187066 (A004274 (n + 1)).toNat

end

end A006053.P15805303364623739416

namespace A006053

/-- `A187066(A004274(n+1))` -/
def P15805303364623739416.Spec : Prop :=
  ∀ n, P15805303364623739416.a n = A006053 n

end A006053

/-! ## A006053.P16589039941752067732

`A187066(A004280(n+1))`
-/

namespace A006053.P16589039941752067732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187066 (A004280 (n + 1)).toNat

end

end A006053.P16589039941752067732

namespace A006053

/-- `A187066(A004280(n+1))` -/
def P16589039941752067732.Spec : Prop :=
  ∀ n, P16589039941752067732.a n = A006053 n

end A006053

/-! ## A006053.P3050664106724102923

`A187067(2*(n-A057427(n)))`
-/

namespace A006053.P3050664106724102923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187067 (2 * ((n : ℤ) - A057427 n)).toNat

end

end A006053.P3050664106724102923

namespace A006053

/-- `A187067(2*(n-A057427(n)))` -/
def P3050664106724102923.Spec : Prop :=
  ∀ n, P3050664106724102923.a n = A006053 n

end A006053

/-! ## A006053.P12600270027753121796

`Δ[A028495(abs(1-n))]`
-/

namespace A006053.P12600270027753121796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028495 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A006053.P12600270027753121796

namespace A006053

/-- `Δ[A028495(abs(1-n))]` -/
def P12600270027753121796.Spec : Prop :=
  ∀ n, P12600270027753121796.a n = A006053 n

end A006053

/-! ## A006053.P704167773957849682

`A052547(n)-A096976(n)`
-/

namespace A006053.P704167773957849682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052547 n - A096976 n

end

end A006053.P704167773957849682

namespace A006053

/-- `A052547(n)-A096976(n)` -/
def P704167773957849682.Spec : Prop :=
  ∀ n, P704167773957849682.a n = A006053 n

end A006053

/-! ## A006053.P11517325144650097319

`A096976(n+2)-A096976(n)`
-/

namespace A006053.P11517325144650097319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096976 (n + 2) - A096976 n

end

end A006053.P11517325144650097319

namespace A006053

/-- `A096976(n+2)-A096976(n)` -/
def P11517325144650097319.Spec : Prop :=
  ∀ n, P11517325144650097319.a n = A006053 n

end A006053

/-! ## A006053.P7579792013085873671

`A187066(2*n)-A096976(n)`
-/

namespace A006053.P7579792013085873671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187066 (2 * n) - A096976 n

end

end A006053.P7579792013085873671

namespace A006053

/-- `A187066(2*n)-A096976(n)` -/
def P7579792013085873671.Spec : Prop :=
  ∀ n, P7579792013085873671.a n = A006053 n

end A006053

/-! ## A006053.P8592083809385257507

`Δ[A096976(n+1)+A096976(n)]`
-/

namespace A006053.P8592083809385257507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096976 (n + 1) + A096976 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A006053.P8592083809385257507

namespace A006053

/-- `Δ[A096976(n+1)+A096976(n)]` -/
def P8592083809385257507.Spec : Prop :=
  ∀ n, P8592083809385257507.a n = A006053 n

end A006053

/-! ## A006053.P1636488197336159594

`A187067(2*n)-A187065(2*n)`
-/

namespace A006053.P1636488197336159594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187067 (2 * n) - A187065 (2 * n)

end

end A006053.P1636488197336159594

namespace A006053

/-- `A187067(2*n)-A187065(2*n)` -/
def P1636488197336159594.Spec : Prop :=
  ∀ n, P1636488197336159594.a n = A006053 n

end A006053

/-! ## A006053.P7181528410063183810

`A276055(2*n)-A028495(n+1)`
-/

namespace A006053.P7181528410063183810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276055 (2 * n) - A028495 (n + 1)

end

end A006053.P7181528410063183810

namespace A006053

/-- `A276055(2*n)-A028495(n+1)` -/
def P7181528410063183810.Spec : Prop :=
  ∀ n, P7181528410063183810.a n = A006053 n

end A006053

/-!
# A006054: a(n) = 2*a(n-1) + a(n-2) - a(n-3), with a(0) = a(1) = 0, a(2) = 1.

The programs for A006054, the canonical program `A006054.P6995981439893481194` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006054 has offset 0).

The definition of A006054 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)+a(n-2)-a(n-3)` (program `A006054.P6995981439893481194`, by `A006054.P6995981439893481194.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A006054.P6995981439893481194

`2*a(n-1)+a(n-2)-a(n-3)` with `a(0)=0, a(1)=0, a(2)=1`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A006054

/-- `2*a(n-1)+a(n-2)-a(n-3)` -/
def P6995981439893481194.Spec : Prop :=
  ∀ n, P6995981439893481194.a n = A006054 n

theorem P6995981439893481194.correct : P6995981439893481194.Spec := by
  intro n
  simp only [A006054]

end A006054

/-! ## A006054.P7395799681543422278

`ogf(x^2/(1-2x-x^2+x^3))`
-/

namespace A006054.P7395799681543422278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 1] [1, -2, -1, 1] n

end

end A006054.P7395799681543422278

namespace A006054

/-- `ogf(x^2/(1-2x-x^2+x^3))` -/
def P7395799681543422278.Spec : Prop :=
  ∀ n, P7395799681543422278.a n = A006054 n

end A006054

/-! ## A006054.P10616040807894867165

`a(n-2)-(a(n-3)-2*a(n-1))` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A006054.P10616040807894867165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1] fun n a =>
  a (n - 2) - (a (n - 3) - 2 * a (n - 1))

end

end A006054.P10616040807894867165

namespace A006054

/-- `a(n-2)-(a(n-3)-2*a(n-1))` -/
def P10616040807894867165.Spec : Prop :=
  ∀ n, P10616040807894867165.a n = A006054 n

end A006054

/-! ## A006054.P8249282274940470323

`a(n-1)+a(n-1)+a(n-2)-a(n-3)` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A006054.P8249282274940470323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1] fun n a =>
  a (n - 1) + (a (n - 1) + (a (n - 2) - a (n - 3)))

end

end A006054.P8249282274940470323

namespace A006054

/-- `a(n-1)+a(n-1)+a(n-2)-a(n-3)` -/
def P8249282274940470323.Spec : Prop :=
  ∀ n, P8249282274940470323.a n = A006054 n

theorem P8249282274940470323.correct : P8249282274940470323.Spec := by
  intro n
  simp only [A006054, Nat.add_sub_cancel, A006054.P8249282274940470323.a, A006054.P6995981439893481194.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A006054

/-! ## A006054.P13639679127771027267

`a(n-1)-(a(n-3)-a(n-1)-a(n-2))` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A006054.P13639679127771027267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1] fun n a =>
  a (n - 1) - (a (n - 3) - a (n - 1) - a (n - 2))

end

end A006054.P13639679127771027267

namespace A006054

/-- `a(n-1)-(a(n-3)-a(n-1)-a(n-2))` -/
def P13639679127771027267.Spec : Prop :=
  ∀ n, P13639679127771027267.a n = A006054 n

end A006054

/-! ## A006054.P14471372213141345804

`A187069(2*n)`
-/

namespace A006054.P14471372213141345804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187069 (2 * n)

end

end A006054.P14471372213141345804

namespace A006054

/-- `A187069(2*n)` -/
def P14471372213141345804.Spec : Prop :=
  ∀ n, P14471372213141345804.a n = A006054 n

end A006054

/-! ## A006054.P16453239273654891826

`A187068(Δ[n²])`
-/

namespace A006054.P16453239273654891826
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187068 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A006054.P16453239273654891826

namespace A006054

/-- `A187068(Δ[n²])` -/
def P16453239273654891826.Spec : Prop :=
  ∀ n, P16453239273654891826.a n = A006054 n

end A006054

/-! ## A006054.P4936090242448824204

`∑[A187068(2*n)]-1`
-/

namespace A006054.P4936090242448824204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187068 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A006054.P4936090242448824204

namespace A006054

/-- `∑[A187068(2*n)]-1` -/
def P4936090242448824204.Spec : Prop :=
  ∀ n, P4936090242448824204.a n = A006054 n

end A006054

/-! ## A006054.P9645979351905273259

`A106803(n-1)+a(n-1)` with `a(0)=0`
-/

namespace A006054.P9645979351905273259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A106803 (n - 1) + a (n - 1)

end

end A006054.P9645979351905273259

namespace A006054

/-- `A106803(n-1)+a(n-1)` -/
def P9645979351905273259.Spec : Prop :=
  ∀ n, P9645979351905273259.a n = A006054 n

end A006054

/-! ## A006054.P12872248124737035397

`A187070(A004273(n))`
-/

namespace A006054.P12872248124737035397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187070 (A004273 n).toNat

end

end A006054.P12872248124737035397

namespace A006054

/-- `A187070(A004273(n))` -/
def P12872248124737035397.Spec : Prop :=
  ∀ n, P12872248124737035397.a n = A006054 n

end A006054

/-! ## A006054.P14390382284186827587

`A187070(A163985(n))`
-/

namespace A006054.P14390382284186827587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187070 (A163985 n).toNat

end

end A006054.P14390382284186827587

namespace A006054

/-- `A187070(A163985(n))` -/
def P14390382284186827587.Spec : Prop :=
  ∀ n, P14390382284186827587.a n = A006054 n

end A006054

/-! ## A006054.P4695323613622298715

`A120771(A033627(n+1))`
-/

namespace A006054.P4695323613622298715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120771 (A033627 (n + 1)).toNat

end

end A006054.P4695323613622298715

namespace A006054

/-- `A120771(A033627(n+1))` -/
def P4695323613622298715.Spec : Prop :=
  ∀ n, P4695323613622298715.a n = A006054 n

end A006054

/-! ## A006054.P5286053186439989323

`A187070(A130824(n)/2)`
-/

namespace A006054.P5286053186439989323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187070 (SequenceMachineLib.roundAway ((A130824 n : ℚ) / 2)).toNat

end

end A006054.P5286053186439989323

namespace A006054

/-- `A187070(A130824(n)/2)` -/
def P5286053186439989323.Spec : Prop :=
  ∀ n, P5286053186439989323.a n = A006054 n

end A006054

/-! ## A006054.P9191183278274183098

`A187070(A289207(2*n+1))`
-/

namespace A006054.P9191183278274183098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187070 (A289207 (2 * n + 1)).toNat

end

end A006054.P9191183278274183098

namespace A006054

/-- `A187070(A289207(2*n+1))` -/
def P9191183278274183098.Spec : Prop :=
  ∀ n, P9191183278274183098.a n = A006054 n

end A006054

/-! ## A006054.P13800068240988755109

`∑[A106803(n-A178226(2*n))]`
-/

namespace A006054.P13800068240988755109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106803 ((n : ℤ) - A178226 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006054.P13800068240988755109

namespace A006054

/-- `∑[A106803(n-A178226(2*n))]` -/
def P13800068240988755109.Spec : Prop :=
  ∀ n, P13800068240988755109.a n = A006054 n

end A006054

/-! ## A006054.P11536079094019377810

`∑[A106803(n)]-A106803(n)`
-/

namespace A006054.P11536079094019377810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106803 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A106803 n

end

end A006054.P11536079094019377810

namespace A006054

/-- `∑[A106803(n)]-A106803(n)` -/
def P11536079094019377810.Spec : Prop :=
  ∀ n, P11536079094019377810.a n = A006054 n

end A006054

/-! ## A006054.P1685031850237731559

`A187070(2*n+1)-A106803(n)`
-/

namespace A006054.P1685031850237731559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187070 (2 * n + 1) - A106803 n

end

end A006054.P1685031850237731559

namespace A006054

/-- `A187070(2*n+1)-A106803(n)` -/
def P1685031850237731559.Spec : Prop :=
  ∀ n, P1685031850237731559.a n = A006054 n

end A006054

/-! ## A006054.P17849472489476786742

`A187068(2*n+3)-A106803(n)`
-/

namespace A006054.P17849472489476786742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187068 (2 * n + 3) - A106803 n

end

end A006054.P17849472489476786742

namespace A006054

/-- `A187068(2*n+3)-A106803(n)` -/
def P17849472489476786742.Spec : Prop :=
  ∀ n, P17849472489476786742.a n = A006054 n

end A006054

/-! ## A006054.P3891850106274019037

`∑[A187070(2*n)]-A187070(2*n)`
-/

namespace A006054.P3891850106274019037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187070 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A187070 (2 * n)

end

end A006054.P3891850106274019037

namespace A006054

/-- `∑[A187070(2*n)]-A187070(2*n)` -/
def P3891850106274019037.Spec : Prop :=
  ∀ n, P3891850106274019037.a n = A006054 n

end A006054

/-! ## A006054.P10277702548611456730

`A187070(2*n+1)-A187070(2*n)`
-/

namespace A006054.P10277702548611456730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187070 (2 * n + 1) - A187070 (2 * n)

end

end A006054.P10277702548611456730

namespace A006054

/-- `A187070(2*n+1)-A187070(2*n)` -/
def P10277702548611456730.Spec : Prop :=
  ∀ n, P10277702548611456730.a n = A006054 n

end A006054

/-!
# A006055: Primes with consecutive (ascending) digits.

The programs for A006055, there is no canonical definition to state claims against.
-/

/-! ## A006055.P10790344078852831034

`∩[A059043(n+1), A231588(n+1)]`
-/

namespace A006055.P10790344078852831034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059043 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231588 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A006055.P10790344078852831034

/-! ## A006055.P18176013488751521406

`∩[A059043(n+1), A068710(n+1)]`
-/

namespace A006055.P18176013488751521406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059043 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068710 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A006055.P18176013488751521406

/-! ## A006055.P8807238095733597839

`∩[A059043(n+1), A068148(n+1)]`
-/

namespace A006055.P8807238095733597839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059043 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068148 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A006055.P8807238095733597839

/-! ## A006055.P9575591178996628468

`p?[A059043(n+1)]`
-/

namespace A006055.P9575591178996628468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059043 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A006055.P9575591178996628468

/-! ## A006055.P16596654127135075365

`p?[record[A059043(A067992(n))]]`
-/

namespace A006055.P16596654127135075365
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059043 (A067992 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A006055.P16596654127135075365

/-!
# A006057: Number of topologies on n labeled points satisfying axioms T_0-T_4.

The programs for A006057, there is no canonical definition to state claims against.
-/

/-! ## A006057.P7764235749005582287

`A257542(A360708(2*n))-floor(n/2)`
-/

namespace A006057.P7764235749005582287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257542 (A360708 (2 * n)).toNat - ⌊(n : ℚ) / 2⌋

end

end A006057.P7764235749005582287

/-! ## A006057.P1210070523491215927

`A122420(n)+A000196(A138240(n))`
-/

namespace A006057.P1210070523491215927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122420 n + A000196 (A138240 n).toNat

end

end A006057.P1210070523491215927

/-!
# A006058: Number of connected labeled T_4-topologies with n points.

The programs for A006058, there is no canonical definition to state claims against.
-/

/-! ## A006058.P13340737431215307694

`A326909(n)-A000798(n)`
-/

namespace A006058.P13340737431215307694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326909 n - A000798 n

end

end A006058.P13340737431215307694

/-! ## A006058.P2686089015463534201

`A326909(n)-A245767(∑[n]+n)`
-/

namespace A006058.P2686089015463534201
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326909 n - A245767 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A006058.P2686089015463534201

/-! ## A006058.P1844947499498776629

`A326878(A028310(n))-A000798(n)`
-/

namespace A006058.P1844947499498776629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326878 (A028310 n).toNat - A000798 n

end

end A006058.P1844947499498776629

/-! ## A006058.P1617656755653085205

`A326909(n)-(A122836(n)+A122835(n))`
-/

namespace A006058.P1617656755653085205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326909 n - (A122836 n + A122835 n)

end

end A006058.P1617656755653085205

/-! ## A006058.P3775819579080077433

`A326878(n)-A000798(n)%A326878(n)`
-/

namespace A006058.P3775819579080077433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326878 n - Int.tmod (A000798 n) (A326878 n)

end

end A006058.P3775819579080077433

/-!
# A006059: Number of connected labeled T_0-T_4-topologies with n points.

The programs for A006059, there is no canonical definition to state claims against.
-/

/-! ## A006059.P3169802037308300030

`A001035(abs(1-n))*A028310(n)`
-/

namespace A006059.P3169802037308300030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001035 |1 - (n : ℤ)|.toNat * A028310 n

end

end A006059.P3169802037308300030

/-! ## A006059.P2024741202700544107

`A028310(n)*A245767(∑[n]-n)`
-/

namespace A006059.P2024741202700544107
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n * A245767 (∑ j ∈ Finset.range (n + 1), f1 j - n)

end

end A006059.P2024741202700544107

/-! ## A006059.P13611013751202761082

`A007318(A000124(n))*A245767(A161680(n))`
-/

namespace A006059.P13611013751202761082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000124 n).toNat * A245767 (A161680 n).toNat

end

end A006059.P13611013751202761082

/-! ## A006059.P10455608453599790925

`A008619(A004273(n))*A245767(A161680(n))`
-/

namespace A006059.P10455608453599790925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A004273 n).toNat * A245767 (A161680 n).toNat

end

end A006059.P10455608453599790925

/-! ## A006059.P5675754468744779312

`A000005(A011782(n))*A245767(A161680(n))`
-/

namespace A006059.P5675754468744779312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A011782 n).toNat * A245767 (A161680 n).toNat

end

end A006059.P5675754468744779312

/-!
# A006060: Triangular star numbers.

The programs for A006060, the canonical program `A006060.P221917853613731523` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006060 has offset 1).

The definition of A006060 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A006060.P221917853613731523

`194*a(n-1)-a(n-2)+60` with `a(0)=1, a(1)=253`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A006060

/-- `194*a(n-1)-a(n-2)+60` -/
def P221917853613731523.Spec : Prop :=
  ∀ n, P221917853613731523.a n = A006060 (n + 1)

theorem P221917853613731523.correct : P221917853613731523.Spec := by
  intro n
  simp only [A006060, Nat.add_sub_cancel]

end A006060

/-! ## A006060.P6721461890224478315

`(3*((7+4*sqrt(3))^(2*(n+1)-1)+(7-4*sqrt(3))^(2*(n+1)-1))-10)/32`
-/

namespace A006060.P6721461890224478315
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (3 * ((7 + 4 * Real.sqrt (3 : ℝ)) ^ ((2 * (n + 1) : ℤ) - 1 : ℤ) + (7 - 4 * Real.sqrt (3 : ℝ)) ^ ((2 * (n + 1) : ℤ) - 1 : ℤ)) - 10) / 32

end

end A006060.P6721461890224478315

namespace A006060

/-- `(3*((7+4*sqrt(3))^(2*(n+1)-1)+(7-4*sqrt(3))^(2*(n+1)-1))-10)/32` -/
def P6721461890224478315.Spec : Prop :=
  ∀ n, P6721461890224478315.a n = (A006060 (n + 1) : ℝ)

end A006060

/-! ## A006060.P9442731508741668122

`C(A028231(n)+1, 2)`
-/

namespace A006060.P9442731508741668122
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A028231 n + 1).toNat 2

end

end A006060.P9442731508741668122

namespace A006060

/-- `C(A028231(n)+1, 2)` -/
def P9442731508741668122.Spec : Prop :=
  ∀ n, (P9442731508741668122.a n : ℤ) = A006060 (n + 1)

end A006060

/-! ## A006060.P5920208214013789409

`3*A131750(n+1)-2`
-/

namespace A006060.P5920208214013789409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A131750 (n + 1) - 2

end

end A006060.P5920208214013789409

namespace A006060

/-- `3*A131750(n+1)-2` -/
def P5920208214013789409.Spec : Prop :=
  ∀ n, P5920208214013789409.a n = A006060 (n + 1)

end A006060

/-! ## A006060.P10833403798121891572

`floor(A341671(n+1)²/6)`
-/

namespace A006060.P10833403798121891572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A341671 (n + 1) ^ 2 : ℚ) / 6⌋

end

end A006060.P10833403798121891572

namespace A006060

/-- `floor(A341671(n+1)²/6)` -/
def P10833403798121891572.Spec : Prop :=
  ∀ n, P10833403798121891572.a n = A006060 (n + 1)

end A006060

/-!
# A006061: Star numbers (A003154) that are squares.

The programs for A006061, the canonical program `A006061.P11549797818073841722` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006061 has offset 1).

The definition of A006061 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A006061.P11549797818073841722

`98*a(n-1)-a(n-2)+24` with `a(0)=1, a(1)=121`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A006061

/-- `98*a(n-1)-a(n-2)+24` -/
def P11549797818073841722.Spec : Prop :=
  ∀ n, P11549797818073841722.a n = A006061 (n + 1)

theorem P11549797818073841722.correct : P11549797818073841722.Spec := by
  intro n
  simp only [A006061, Nat.add_sub_cancel]

end A006061

/-! ## A006061.P14314122449281983044

`((5+2*sqrt(6))^(n+1)*(sqrt(6)-2)-(5-2*sqrt(6))^(n+1)*(sqrt(6)+2))²/16`
-/

namespace A006061.P14314122449281983044
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((5 + 2 * Real.sqrt (6 : ℝ)) ^ (n + 1) * (Real.sqrt (6 : ℝ) - 2) - (5 - 2 * Real.sqrt (6 : ℝ)) ^ (n + 1) * (Real.sqrt (6 : ℝ) + 2)) ^ 2 / 16

end

end A006061.P14314122449281983044

namespace A006061

/-- `((5+2*sqrt(6))^(n+1)*(sqrt(6)-2)-(5-2*sqrt(6))^(n+1)*(sqrt(6)+2))²/16` -/
def P14314122449281983044.Spec : Prop :=
  ∀ n, P14314122449281983044.a n = (A006061 (n + 1) : ℝ)

end A006061

/-! ## A006061.P17512836080036681681

`(∑[10*a(n-1)-a(n-2)]-1)²` with `a(0)=2, a(1)=10`
-/

namespace A006061.P17512836080036681681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 10] fun n f1 =>
  10 * f1 (n - 1) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j - 1) ^ 2

end

end A006061.P17512836080036681681

namespace A006061

/-- `(∑[10*a(n-1)-a(n-2)]-1)²` -/
def P17512836080036681681.Spec : Prop :=
  ∀ n, P17512836080036681681.a n = A006061 (n + 1)

end A006061

/-! ## A006061.P1195655322139853543

`A054320(n)²`
-/

namespace A006061.P1195655322139853543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054320 n ^ 2

end

end A006061.P1195655322139853543

namespace A006061

/-- `A054320(n)²` -/
def P1195655322139853543.Spec : Prop :=
  ∀ n, P1195655322139853543.a n = A006061 (n + 1)

end A006061

/-! ## A006061.P6764757230147446150

`A098297(Δ[n²])`
-/

namespace A006061.P6764757230147446150
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098297 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A006061.P6764757230147446150

namespace A006061

/-- `A098297(Δ[n²])` -/
def P6764757230147446150.Spec : Prop :=
  ∀ n, P6764757230147446150.a n = A006061 (n + 1)

end A006061

/-! ## A006061.P14489542437152140810

`(A157084(n)+1)²`
-/

namespace A006061.P14489542437152140810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A157084 n + 1) ^ 2

end

end A006061.P14489542437152140810

namespace A006061

/-- `(A157084(n)+1)²` -/
def P14489542437152140810.Spec : Prop :=
  ∀ n, P14489542437152140810.a n = A006061 (n + 1)

end A006061

/-! ## A006061.P16275206810154333085

`A142238(2*n)²`
-/

namespace A006061.P16275206810154333085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142238 (2 * n) ^ 2

end

end A006061.P16275206810154333085

namespace A006061

/-- `A142238(2*n)²` -/
def P16275206810154333085.Spec : Prop :=
  ∀ n, P16275206810154333085.a n = A006061 (n + 1)

end A006061

/-! ## A006061.P10999264744013574289

`A259594(2*n)²`
-/

namespace A006061.P10999264744013574289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259594 (2 * n) ^ 2

end

end A006061.P10999264744013574289

namespace A006061

/-- `A259594(2*n)²` -/
def P10999264744013574289.Spec : Prop :=
  ∀ n, P10999264744013574289.a n = A006061 (n + 1)

end A006061

/-! ## A006061.P9923038428307194893

`(A350965(n)/2)²`
-/

namespace A006061.P9923038428307194893
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A350965 n : ℚ) / 2) ^ 2

end

end A006061.P9923038428307194893

namespace A006061

/-- `(A350965(n)/2)²` -/
def P9923038428307194893.Spec : Prop :=
  ∀ n, P9923038428307194893.a n = (A006061 (n + 1) : ℚ)

end A006061

/-! ## A006061.P4084686536301647649

`∑[A004291(2*n)]`
-/

namespace A006061.P4084686536301647649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004291 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006061.P4084686536301647649

namespace A006061

/-- `∑[A004291(2*n)]` -/
def P4084686536301647649.Spec : Prop :=
  ∀ n, P4084686536301647649.a n = A006061 (n + 1)

end A006061

/-!
# A006062: Star-hex numbers.

The programs for A006062, the canonical program `A006062.P10286817238859423070` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006062 has offset 1).

The definition of A006062 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A006062.P10286817238859423070

`34*a(n-1)-a(n-2)+4` with `a(0)=1, a(1)=37`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A006062

/-- `34*a(n-1)-a(n-2)+4` -/
def P10286817238859423070.Spec : Prop :=
  ∀ n, P10286817238859423070.a n = A006062 (n + 1)

theorem P10286817238859423070.correct : P10286817238859423070.Spec := by
  intro n
  simp only [A006062, Nat.add_sub_cancel]

end A006062

/-! ## A006062.P17185414048554256967

`A001109(n)²+A001109(n+1)²`
-/

namespace A006062.P17185414048554256967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001109 n ^ 2 + A001109 (n + 1) ^ 2

end

end A006062.P17185414048554256967

namespace A006062

/-- `A001109(n)²+A001109(n+1)²` -/
def P17185414048554256967.Spec : Prop :=
  ∀ n, P17185414048554256967.a n = A006062 (n + 1)

end A006062

/-! ## A006062.P9826449428321516907

`∑[A004294(n)]`
-/

namespace A006062.P9826449428321516907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004294 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006062.P9826449428321516907

namespace A006062

/-- `∑[A004294(n)]` -/
def P9826449428321516907.Spec : Prop :=
  ∀ n, P9826449428321516907.a n = A006062 (n + 1)

end A006062

/-! ## A006062.P6856163094764422844

`3*A098602(n)+1`
-/

namespace A006062.P6856163094764422844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A098602 n + 1

end

end A006062.P6856163094764422844

namespace A006062

/-- `3*A098602(n)+1` -/
def P6856163094764422844.Spec : Prop :=
  ∀ n, P6856163094764422844.a n = A006062 (n + 1)

end A006062

/-! ## A006062.P5323573873495845569

`3*A098890(n)-2`
-/

namespace A006062.P5323573873495845569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A098890 n - 2

end

end A006062.P5323573873495845569

namespace A006062

/-- `3*A098890(n)-2` -/
def P5323573873495845569.Spec : Prop :=
  ∀ n, P5323573873495845569.a n = A006062 (n + 1)

end A006062

/-! ## A006062.P7926560509948993875

`6*A029549(n)+1`
-/

namespace A006062.P7926560509948993875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A029549 n + 1

end

end A006062.P7926560509948993875

namespace A006062

/-- `6*A029549(n)+1` -/
def P7926560509948993875.Spec : Prop :=
  ∀ n, P7926560509948993875.a n = A006062 (n + 1)

end A006062

/-! ## A006062.P11789492194125344491

`floor(3/2*A008844(n))`
-/

namespace A006062.P11789492194125344491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 : ℚ) / 2 * (A008844 n : ℚ)⌋

end

end A006062.P11789492194125344491

namespace A006062

/-- `floor(3/2*A008844(n))` -/
def P11789492194125344491.Spec : Prop :=
  ∀ n, P11789492194125344491.a n = A006062 (n + 1)

end A006062

/-! ## A006062.P13502718768417934616

`∑[A075848(2*n)]+1`
-/

namespace A006062.P13502718768417934616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075848 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A006062.P13502718768417934616

namespace A006062

/-- `∑[A075848(2*n)]+1` -/
def P13502718768417934616.Spec : Prop :=
  ∀ n, P13502718768417934616.a n = A006062 (n + 1)

end A006062

/-! ## A006062.P15799960176398402462

`∑[2*A350984(n)]+1`
-/

namespace A006062.P15799960176398402462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A350984 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A006062.P15799960176398402462

namespace A006062

/-- `∑[2*A350984(n)]+1` -/
def P15799960176398402462.Spec : Prop :=
  ∀ n, P15799960176398402462.a n = A006062 (n + 1)

end A006062

/-! ## A006062.P1226612965071922043

`2*A107118(n+1)-1`
-/

namespace A006062.P1226612965071922043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A107118 (n + 1) - 1

end

end A006062.P1226612965071922043

namespace A006062

/-- `2*A107118(n+1)-1` -/
def P1226612965071922043.Spec : Prop :=
  ∀ n, P1226612965071922043.a n = A006062 (n + 1)

end A006062

/-!
# A006063: A card-arranging problem: values of n such that there exists a permutation p_1, ..., p_n of 1, ..., n such that i + p_i is a cube for every i.

The programs for A006063, there is no canonical definition to state claims against.
-/

/-! ## A006063.P4856033362076973300

`lt[0, A096904(n+1)]+1`
-/

namespace A006063.P4856033362076973300
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096904 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A006063.P4856033362076973300

/-! ## A006063.P16046976685073648517

`lt[0, A096904(A028310(n))]`
-/

namespace A006063.P16046976685073648517
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096904 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A006063.P16046976685073648517

/-!
# A006065: Maximal number of 4-tree rows in n-tree orchard problem.

The programs for A006065, there is no canonical definition to state claims against.
-/

/-! ## A006065.P17588123676031258720

`A172992(n+1)+A025907(A008620(n))`
-/

namespace A006065.P17588123676031258720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172992 (n + 1) + A025907 (A008620 n).toNat

end

end A006065.P17588123676031258720

/-! ## A006065.P17589015614723326684

`A172992(n+1)+A035622(A057354(n))`
-/

namespace A006065.P17589015614723326684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172992 (n + 1) + A035622 (A057354 n).toNat

end

end A006065.P17589015614723326684

/-! ## A006065.P11994311870487741143

`A008676(n²)-A008676(A058359(n+1))`
-/

namespace A006065.P11994311870487741143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008676 (n ^ 2) - A008676 (A058359 (n + 1)).toNat

end

end A006065.P11994311870487741143

/-! ## A006065.P7682210635370901152

`A181834(A112192(n+4)-A000720(n+1))`
-/

namespace A006065.P7682210635370901152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181834 (A112192 (n + 4) - A000720 (n + 1)).toNat

end

end A006065.P7682210635370901152

/-!
# A006066: Kobon triangles: maximal number of nonoverlapping triangles that can be formed from n lines drawn in the plane.

The programs for A006066, there is no canonical definition to state claims against.
-/

/-! ## A006066.P3437603896343724873

`A390844(A301182(n))`
-/

namespace A006066.P3437603896343724873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390844 (A301182 n).toNat

end

end A006066.P3437603896343724873

/-! ## A006066.P17099984752817180772

`A394792(A258472(n+2))`
-/

namespace A006066.P17099984752817180772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394792 (A258472 (n + 2)).toNat

end

end A006066.P17099984752817180772

/-! ## A006066.P8283881475593628011

`A241313(n)+A038709(n)`
-/

namespace A006066.P8283881475593628011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241313 n + A038709 n

end

end A006066.P8283881475593628011

/-! ## A006066.P10344395996633397255

`A241317(n)+A038709(n)`
-/

namespace A006066.P10344395996633397255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241317 n + A038709 n

end

end A006066.P10344395996633397255

/-! ## A006066.P13720641901970992815

`A008810(n)-A082498(n)`
-/

namespace A006066.P13720641901970992815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008810 n - A082498 n

end

end A006066.P13720641901970992815

/-!
# A006067: Number of ways to quarter an n X n chessboard, with the central square removed for odd n.

The programs for A006067, there is no canonical definition to state claims against.
-/

/-! ## A006067.P8518616161658523754

`A103128(abs(A089171(n)))`
-/

namespace A006067.P8518616161658523754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103128 |A089171 n|.toNat

end

end A006067.P8518616161658523754

/-! ## A006067.P13921382596680156496

`A172471(abs(A089171(n)))`
-/

namespace A006067.P13921382596680156496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 |A089171 n|.toNat

end

end A006067.P13921382596680156496

/-! ## A006067.P3468931445807171371

`A103128(abs(A279370(n)))`
-/

namespace A006067.P3468931445807171371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103128 |A279370 n|.toNat

end

end A006067.P3468931445807171371

/-!
# A006068: a(n) is Gray-coded into n.

The programs for A006068, the canonical program `A006068.P433290056721054414` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006068 has offset 0).

The definition of A006068 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A006068.P16534033749009019403

`2*A265263(n)-2*A377404(n)-A010060(n)`
-/

namespace A006068.P16534033749009019403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A265263 n - 2 * A377404 n - A010060 n

end

end A006068.P16534033749009019403

namespace A006068

/-- `2*A265263(n)-2*A377404(n)-A010060(n)` -/
def P16534033749009019403.Spec : Prop :=
  ∀ n, P16534033749009019403.a n = A006068 n

end A006068

/-! ## A006068.P433290056721054414

`xor(n, a(floor(n/2)))` with `a(0)=0`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A006068

/-- `xor(n, a(floor(n/2)))` -/
def P433290056721054414.Spec : Prop :=
  ∀ n, (P433290056721054414.a n : ℤ) = A006068 n

theorem P433290056721054414.correct : P433290056721054414.Spec := by
  intro n
  simp only [A006068]

end A006068

/-! ## A006068.P16889262592828900236

`2*a(floor(n/2))+(n%2+a(floor(n/2)))%2` with `a(0)=0`
-/

namespace A006068.P16889262592828900236
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  2 * a ⌊(n : ℚ) / 2⌋.toNat + (n % 2 + a ⌊(n : ℚ) / 2⌋.toNat) % 2

end

end A006068.P16889262592828900236

namespace A006068

/-- `2*a(floor(n/2))+(n%2+a(floor(n/2)))%2` -/
def P16889262592828900236.Spec : Prop :=
  ∀ n, (P16889262592828900236.a n : ℤ) = A006068 n

end A006068

/-! ## A006068.P2389669081709632863

`A268716(n)/2`
-/

namespace A006068.P2389669081709632863
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A268716 n : ℚ) / 2

end

end A006068.P2389669081709632863

namespace A006068

/-- `A268716(n)/2` -/
def P2389669081709632863.Spec : Prop :=
  ∀ n, P2389669081709632863.a n = (A006068 n : ℚ)

end A006068

/-! ## A006068.P16549645826232707202

`A286546(n)+n`
-/

namespace A006068.P16549645826232707202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286546 n + (n : ℤ)

end

end A006068.P16549645826232707202

namespace A006068

/-- `A286546(n)+n` -/
def P16549645826232707202.Spec : Prop :=
  ∀ n, P16549645826232707202.a n = A006068 n

end A006068

/-! ## A006068.P11538715051725058242

`xor(n, A292600(n))`
-/

namespace A006068.P11538715051725058242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A292600 n)

end

end A006068.P11538715051725058242

namespace A006068

/-- `xor(n, A292600(n))` -/
def P11538715051725058242.Spec : Prop :=
  ∀ n, P11538715051725058242.a n = A006068 n

end A006068

/-! ## A006068.P4447332133843326735

`A066194(n+1)-1`
-/

namespace A006068.P4447332133843326735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066194 (n + 1) - 1

end

end A006068.P4447332133843326735

namespace A006068

/-- `A066194(n+1)-1` -/
def P4447332133843326735.Spec : Prop :=
  ∀ n, P4447332133843326735.a n = A006068 n

end A006068

/-! ## A006068.P13096088478926211960

`A065620(comp[xor(n, 2*n)])-1`
-/

namespace A006068.P13096088478926211960
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065620 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) - 1

end

end A006068.P13096088478926211960

namespace A006068

/-- `A065620(comp[xor(n, 2*n)])-1` -/
def P13096088478926211960.Spec : Prop :=
  ∀ n, P13096088478926211960.a n = A006068 n

end A006068

/-! ## A006068.P8970872197423053594

`A010060(n)+2*a(floor(n/2))` with `a(0)=0`
-/

namespace A006068.P8970872197423053594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A010060 n + 2 * a ⌊(n : ℚ) / 2⌋.toNat

end

end A006068.P8970872197423053594

namespace A006068

/-- `A010060(n)+2*a(floor(n/2))` -/
def P8970872197423053594.Spec : Prop :=
  ∀ n, P8970872197423053594.a n = A006068 n

end A006068

/-! ## A006068.P16861711262579049504

`A003188(A064707(n))`
-/

namespace A006068.P16861711262579049504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (A064707 n).toNat

end

end A006068.P16861711262579049504

namespace A006068

/-- `A003188(A064707(n))` -/
def P16861711262579049504.Spec : Prop :=
  ∀ n, P16861711262579049504.a n = A006068 n

end A006068

/-! ## A006068.P18276554575938704132

`A300839(A057300(n))`
-/

namespace A006068.P18276554575938704132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300839 (A057300 n).toNat

end

end A006068.P18276554575938704132

namespace A006068

/-- `A300839(A057300(n))` -/
def P18276554575938704132.Spec : Prop :=
  ∀ n, P18276554575938704132.a n = A006068 n

end A006068

/-! ## A006068.P9433265545153886803

`A163356(A302843(n))`
-/

namespace A006068.P9433265545153886803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163356 (A302843 n).toNat

end

end A006068.P9433265545153886803

namespace A006068

/-- `A163356(A302843(n))` -/
def P9433265545153886803.Spec : Prop :=
  ∀ n, P9433265545153886803.a n = A006068 n

end A006068

/-! ## A006068.P10327909371853221098

`A302844(A302845(n))`
-/

namespace A006068.P10327909371853221098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302844 (A302845 n).toNat

end

end A006068.P10327909371853221098

namespace A006068

/-- `A302844(A302845(n))` -/
def P10327909371853221098.Spec : Prop :=
  ∀ n, P10327909371853221098.a n = A006068 n

end A006068

/-! ## A006068.P7544147957075594483

`A104895(A001969(n+1))`
-/

namespace A006068.P7544147957075594483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104895 (A001969 (n + 1)).toNat

end

end A006068.P7544147957075594483

namespace A006068

/-- `A104895(A001969(n+1))` -/
def P7544147957075594483.Spec : Prop :=
  ∀ n, P7544147957075594483.a n = A006068 n

end A006068

/-! ## A006068.P13707428562754346660

`xor(A005187(n), A283999(n))`
-/

namespace A006068.P13707428562754346660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A005187 n) (A283999 n)

end

end A006068.P13707428562754346660

namespace A006068

/-- `xor(A005187(n), A283999(n))` -/
def P13707428562754346660.Spec : Prop :=
  ∀ n, P13707428562754346660.a n = A006068 n

end A006068

/-! ## A006068.P6723199443640272689

`A065620(A000069(n+1))-1`
-/

namespace A006068.P6723199443640272689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065620 (A000069 (n + 1)).toNat - 1

end

end A006068.P6723199443640272689

namespace A006068

/-- `A065620(A000069(n+1))-1` -/
def P6723199443640272689.Spec : Prop :=
  ∀ n, P6723199443640272689.a n = A006068 n

end A006068

/-! ## A006068.P7055923573583612697

`A104895(A010060(n)+2*n)`
-/

namespace A006068.P7055923573583612697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104895 (A010060 n + (2 * n : ℤ)).toNat

end

end A006068.P7055923573583612697

namespace A006068

/-- `A104895(A010060(n)+2*n)` -/
def P7055923573583612697.Spec : Prop :=
  ∀ n, P7055923573583612697.a n = A006068 n

end A006068

/-! ## A006068.P7249112515483693629

`xor(A001969(n+1), A268716(n))`
-/

namespace A006068.P7249112515483693629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A001969 (n + 1)) (A268716 n)

end

end A006068.P7249112515483693629

namespace A006068

/-- `xor(A001969(n+1), A268716(n))` -/
def P7249112515483693629.Spec : Prop :=
  ∀ n, P7249112515483693629.a n = A006068 n

end A006068

/-! ## A006068.P6137788200062433858

`A104895(A010060(n)+n+n)`
-/

namespace A006068.P6137788200062433858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104895 (A010060 n + (n : ℤ) + (n : ℤ)).toNat

end

end A006068.P6137788200062433858

namespace A006068

/-- `A104895(A010060(n)+n+n)` -/
def P6137788200062433858.Spec : Prop :=
  ∀ n, P6137788200062433858.a n = A006068 n

end A006068

/-! ## A006068.P15354880373532480019

`xor(comp[A000069(n+1)], A268716(n))`
-/

namespace A006068.P15354880373532480019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000069 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (A268716 n)

end

end A006068.P15354880373532480019

namespace A006068

/-- `xor(comp[A000069(n+1)], A268716(n))` -/
def P15354880373532480019.Spec : Prop :=
  ∀ n, P15354880373532480019.a n = A006068 n

end A006068

/-!
# A006069: Number of directed Hamiltonian cycles (or Gray codes) on n-cube with a marked starting node.

The programs for A006069, there is no canonical definition to state claims against.
-/

/-! ## A006069.P17015989230386558618

`A003042(n+1)*2^(n+1)`
-/

namespace A006069.P17015989230386558618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003042 (n + 1) * (2 ^ (n + 1) : ℤ)

end

end A006069.P17015989230386558618

/-!
# A006070: Number of Hamiltonian paths on n-cube which are strictly not cycles.

The programs for A006070, there is no canonical definition to state claims against.
-/

/-! ## A006070.P11349010300518595640

`A091299(n+1)-A006069(n+1)`
-/

namespace A006070.P11349010300518595640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091299 (n + 1) - A006069 (n + 1)

end

end A006070.P11349010300518595640

/-!
# A006071: Maximal length of rook tour on an n X n board.

The programs for A006071, the canonical program `A006071.P736388771912850176` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006071 has offset 1).

The definition of A006071 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A006071.P736388771912850176

`3*a(n-1)-2*a(n-2)-2*a(n-3)+3*a(n-4)-a(n-5)` with `a(0)=1, a(1)=4, a(2)=14, a(3)=38, a(4)=76, a(5)=136`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A006071

/-- `3*a(n-1)-2*a(n-2)-2*a(n-3)+3*a(n-4)-a(n-5)` -/
def P736388771912850176.Spec : Prop :=
  ∀ n, P736388771912850176.a n = A006071 (n + 1)

theorem P736388771912850176.correct : P736388771912850176.Spec := by
  intro n
  simp only [A006071, Nat.add_sub_cancel]

end A006071

/-! ## A006071.P315734066925819866

`∪[A152100(n), A152110(n)]`
-/

namespace A006071.P315734066925819866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152100 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152110 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A006071.P315734066925819866

namespace A006071

/-- `∪[A152100(n), A152110(n)]` -/
def P315734066925819866.Spec : Prop :=
  ∀ n, (P315734066925819866.a n : ℤ) = A006071 (n + 1)

end A006071

/-! ## A006071.P1332708948613863462

`∑[A132209(n)+A105812(n)]`
-/

namespace A006071.P1332708948613863462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132209 n + A105812 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006071.P1332708948613863462

namespace A006071

/-- `∑[A132209(n)+A105812(n)]` -/
def P1332708948613863462.Spec : Prop :=
  ∀ n, P1332708948613863462.a n = A006071 (n + 1)

end A006071

/-! ## A006071.P5582336879053613537

`A135528(n+1)+∑[A132209(n)]`
-/

namespace A006071.P5582336879053613537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132209 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135528 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006071.P5582336879053613537

namespace A006071

/-- `A135528(n+1)+∑[A132209(n)]` -/
def P5582336879053613537.Spec : Prop :=
  ∀ n, P5582336879053613537.a n = A006071 (n + 1)

end A006071

/-! ## A006071.P13806039110465897516

`∑[A142463(n)]+3-A040001(n)`
-/

namespace A006071.P13806039110465897516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142463 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (3 - A040001 n)

end

end A006071.P13806039110465897516

namespace A006071

/-- `∑[A142463(n)]+3-A040001(n)` -/
def P13806039110465897516.Spec : Prop :=
  ∀ n, P13806039110465897516.a n = A006071 (n + 1)

end A006071

/-! ## A006071.P9361650934101145030

`A000035(A028310(n))+∑[A132209(n)]`
-/

namespace A006071.P9361650934101145030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132209 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A028310 n).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006071.P9361650934101145030

namespace A006071

/-- `A000035(A028310(n))+∑[A132209(n)]` -/
def P9361650934101145030.Spec : Prop :=
  ∀ n, P9361650934101145030.a n = A006071 (n + 1)

end A006071

/-! ## A006071.P9621558315237453546

`record[A179903(n)-A014601(n)]`
-/

namespace A006071.P9621558315237453546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179903 n - A014601 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006071.P9621558315237453546

namespace A006071

/-- `record[A179903(n)-A014601(n)]` -/
def P9621558315237453546.Spec : Prop :=
  ∀ n, P9621558315237453546.a n = A006071 (n + 1)

end A006071

/-! ## A006071.P4387790585662261093

`A008811(A004277(n))+A006331(n)`
-/

namespace A006071.P4387790585662261093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008811 (A004277 n).toNat + A006331 n

end

end A006071.P4387790585662261093

namespace A006071

/-- `A008811(A004277(n))+A006331(n)` -/
def P4387790585662261093.Spec : Prop :=
  ∀ n, P4387790585662261093.a n = A006071 (n + 1)

end A006071

/-! ## A006071.P8565780037963025416

`A006331(n)+A004277(A000982(n))`
-/

namespace A006071.P8565780037963025416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006331 n + A004277 (A000982 n).toNat

end

end A006071.P8565780037963025416

namespace A006071

/-- `A006331(n)+A004277(A000982(n))` -/
def P8565780037963025416.Spec : Prop :=
  ∀ n, P8565780037963025416.a n = A006071 (n + 1)

end A006071

/-! ## A006071.P7466894862454877535

`A006331(n)+A004275(A061925(n))`
-/

namespace A006071.P7466894862454877535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006331 n + A004275 (A061925 n).toNat

end

end A006071.P7466894862454877535

namespace A006071

/-- `A006331(n)+A004275(A061925(n))` -/
def P7466894862454877535.Spec : Prop :=
  ∀ n, P7466894862454877535.a n = A006071 (n + 1)

end A006071

/-! ## A006071.P6993198162432945981

`A131055(n²+1)+A006331(n)`
-/

namespace A006071.P6993198162432945981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131055 (n ^ 2 + 1) + A006331 n

end

end A006071.P6993198162432945981

namespace A006071

/-- `A131055(n²+1)+A006331(n)` -/
def P6993198162432945981.Spec : Prop :=
  ∀ n, P6993198162432945981.a n = A006071 (n + 1)

end A006071

/-!
# A006072: Numbers with mirror symmetry about middle.

The programs for A006072, there is no canonical definition to state claims against.
-/

/-! ## A006072.P1385453719843955521

`∩[A000787(n+1), A053701(n+1)]`
-/

namespace A006072.P1385453719843955521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000787 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053701 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A006072.P1385453719843955521

/-! ## A006072.P9787892288298190962

`∩[A051791(n+1), A053701(n+1)]`
-/

namespace A006072.P9787892288298190962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051791 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053701 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A006072.P9787892288298190962

/-! ## A006072.P12017861319749688169

`∩[A018846(n+1), A053701(n+1)]`
-/

namespace A006072.P12017861319749688169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053701 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A006072.P12017861319749688169

/-! ## A006072.P3749329625701402746

`A046031(record[A265511(n)])`
-/

namespace A006072.P3749329625701402746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265511 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046031 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A006072.P3749329625701402746

/-! ## A006072.P13696043743976575025

`A046031(A014190(n+1))`
-/

namespace A006072.P13696043743976575025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046031 (A014190 (n + 1)).toNat

end

end A006072.P13696043743976575025

/-! ## A006072.P1479340724250758285

`A046031(eq[0, A055947(n)])`
-/

namespace A006072.P1479340724250758285
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055947 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046031 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A006072.P1479340724250758285

/-! ## A006072.P15814510912546033435

`A046031(eq[n, A030102(n)])`
-/

namespace A006072.P15814510912546033435
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030102 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046031 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A006072.P15814510912546033435

/-! ## A006072.P5213957155663274339

`∩[A000787(n+1), A046031(n)]`
-/

namespace A006072.P5213957155663274339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000787 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046031 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A006072.P5213957155663274339

/-! ## A006072.P17373896898756040473

`∩[A018846(n+1), A046031(n)]`
-/

namespace A006072.P17373896898756040473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046031 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A006072.P17373896898756040473

/-! ## A006072.P5159231666793076157

`∩[A051791(n+1), A046031(n)]`
-/

namespace A006072.P5159231666793076157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051791 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046031 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A006072.P5159231666793076157

/-! ## A006072.P8871048656651868061

`∩[A053701(n+1), A046031(n)]`
-/

namespace A006072.P8871048656651868061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053701 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046031 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A006072.P8871048656651868061

/-! ## A006072.P6354458026343266701

`A046031(record[n-A338828(n)])`
-/

namespace A006072.P6354458026343266701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A338828 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046031 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A006072.P6354458026343266701

/-! ## A006072.P12681529039787140929

`A046031(record[gcd(n, A338828(n))])`
-/

namespace A006072.P12681529039787140929
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A338828 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046031 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A006072.P12681529039787140929

/-! ## A006072.P12544406527398605301

`∩[A002113(n+1), A046031(n)]`
-/

namespace A006072.P12544406527398605301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046031 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A006072.P12544406527398605301

/-! ## A006072.P4673023706672806337

`∩[A000787(n+1), A002113(n+1)]`
-/

namespace A006072.P4673023706672806337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000787 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A006072.P4673023706672806337

/-! ## A006072.P5229937027620212932

`∩[A002113(n+1), A051791(n+1)]`
-/

namespace A006072.P5229937027620212932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051791 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A006072.P5229937027620212932

/-! ## A006072.P4108280846148272182

`∩[A002113(n+1), A053701(n+1)]`
-/

namespace A006072.P4108280846148272182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053701 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A006072.P4108280846148272182

/-! ## A006072.P3107755964245230976

`∩[A000787(n+1), A007284(n)]`
-/

namespace A006072.P3107755964245230976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000787 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007284 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A006072.P3107755964245230976

/-! ## A006072.P15202920029986117249

`∩[A007284(n), A018846(n+1)]`
-/

namespace A006072.P15202920029986117249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007284 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018846 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A006072.P15202920029986117249

/-! ## A006072.P9019132764175688363

`∩[A007284(n), A051791(n+1)]`
-/

namespace A006072.P9019132764175688363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007284 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051791 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A006072.P9019132764175688363

/-!
# A006073: Numbers k such that k, k+1 and k+2 all have the same number of distinct prime divisors.

The programs for A006073, the canonical program `A006073.P326677615052813534` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006073 has offset 1).

The definition of A006073 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3156 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A006073.P16293525296205521273

`A101932(n+1)-1`
-/

namespace A006073.P16293525296205521273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101932 (n + 1) - 1

end

end A006073.P16293525296205521273

namespace A006073

/-- `A101932(n+1)-1` -/
def P16293525296205521273.Spec : Prop :=
  ∀ n, P16293525296205521273.a n = A006073 (n + 1)

end A006073

/-! ## A006073.P5478312992253530816

`A112190(A166333(2*n+1))+A101932(n+1)`
-/

namespace A006073.P5478312992253530816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112190 (A166333 (2 * n + 1)).toNat + A101932 (n + 1)

end

end A006073.P5478312992253530816

namespace A006073

/-- `A112190(A166333(2*n+1))+A101932(n+1)` -/
def P5478312992253530816.Spec : Prop :=
  ∀ n, P5478312992253530816.a n = A006073 (n + 1)

end A006073

/-! ## A006073.P13811071007233600760

`A354348(A000040(n+1))+A101932(n+1)`
-/

namespace A006073.P13811071007233600760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354348 (A000040 (n + 1)).toNat + A101932 (n + 1)

end

end A006073.P13811071007233600760

namespace A006073

/-- `A354348(A000040(n+1))+A101932(n+1)` -/
def P13811071007233600760.Spec : Prop :=
  ∀ n, P13811071007233600760.a n = A006073 (n + 1)

end A006073

/-! ## A006073.P326677615052813534

`A006049(eq[1, Δ[A006049(n+1)]]+1)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A006073

/-- `A006049(eq[1, Δ[A006049(n+1)]]+1)` -/
def P326677615052813534.Spec : Prop :=
  ∀ n, P326677615052813534.a n = A006073 (n + 1)

theorem P326677615052813534.correct : P326677615052813534.Spec := by
  intro n
  simp only [A006073, Nat.add_sub_cancel]

end A006073

/-! ## A006073.P8463638254607535190

`record[gcd(1-A006049(n+2), A006049(n+1))]`
-/

namespace A006073.P8463638254607535190
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (1 - A006049 (n + 2)) (A006049 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006073.P8463638254607535190

namespace A006073

/-- `record[gcd(1-A006049(n+2), A006049(n+1))]` -/
def P8463638254607535190.Spec : Prop :=
  ∀ n, (P8463638254607535190.a n : ℤ) = A006073 (n + 1)

end A006073

/-! ## A006073.P202376463645133833

`∩[A006049(n+1), A063464(n+1)]`
-/

namespace A006073.P202376463645133833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006049 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063464 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A006073.P202376463645133833

namespace A006073

/-- `∩[A006049(n+1), A063464(n+1)]` -/
def P202376463645133833.Spec : Prop :=
  ∀ n, (P202376463645133833.a n : ℤ) = A006073 (n + 1)

end A006073

/-! ## A006073.P2219294858695868593

`∩[A006049(n+1), A088070(n+1)-1]`
-/

namespace A006073.P2219294858695868593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006049 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088070 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A006073.P2219294858695868593

namespace A006073

/-- `∩[A006049(n+1), A088070(n+1)-1]` -/
def P2219294858695868593.Spec : Prop :=
  ∀ n, (P2219294858695868593.a n : ℤ) = A006073 (n + 1)

end A006073

/-! ## A006073.P3915074520590507524

`A023443(A101932(n+1))`
-/

namespace A006073.P3915074520590507524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A101932 (n + 1)).toNat

end

end A006073.P3915074520590507524

namespace A006073

/-- `A023443(A101932(n+1))` -/
def P3915074520590507524.Spec : Prop :=
  ∀ n, P3915074520590507524.a n = A006073 (n + 1)

end A006073

/-! ## A006073.P3835488258767004728

`A289207(A101932(n+1)+1)`
-/

namespace A006073.P3835488258767004728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A101932 (n + 1) + 1).toNat

end

end A006073.P3835488258767004728

namespace A006073

/-- `A289207(A101932(n+1)+1)` -/
def P3835488258767004728.Spec : Prop :=
  ∀ n, P3835488258767004728.a n = A006073 (n + 1)

end A006073

/-! ## A006073.P17498410293748216592

`A023443(∩[A006049(n+1)+1, A006049(n+1)])`
-/

namespace A006073.P17498410293748216592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006049 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006049 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A006073.P17498410293748216592

namespace A006073

/-- `A023443(∩[A006049(n+1)+1, A006049(n+1)])` -/
def P17498410293748216592.Spec : Prop :=
  ∀ n, P17498410293748216592.a n = A006073 (n + 1)

end A006073

/-!
# A006074: Number of polyaboloes (or polytans): number of different shapes that can be formed with n congruent isosceles right triangles, identifying mirror images.

The programs for A006074, there is no canonical definition to state claims against.
-/

/-! ## A006074.P5595716247684733608

`A364341(A148026(n+1))`
-/

namespace A006074.P5595716247684733608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364341 (A148026 (n + 1)).toNat

end

end A006074.P5595716247684733608

/-! ## A006074.P3013865178134622222

`A234300(A351015(n))+val(n+1, 2)+1`
-/

namespace A006074.P3013865178134622222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234300 (A351015 n).toNat + (SequenceMachineLib.valuation (n + 1) 2 + 1 : ℤ)

end

end A006074.P3013865178134622222

/-!
# A006077: (n+1)^2*a(n+1) = (9n^2+9n+3)*a(n) - 27*n^2*a(n-1), with a(0) = 1 and a(1) = 3.

The programs for A006077, there is no canonical definition to state claims against.
-/

/-! ## A006077.P4996245453655167403

`A033999(n)*A291898(n)`
-/

namespace A006077.P4996245453655167403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A291898 n

end

end A006077.P4996245453655167403

/-! ## A006077.P2413582983709983226

`A291898(n)/A033999(n+2)`
-/

namespace A006077.P2413582983709983226
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A291898 n : ℚ) / (A033999 (n + 2) : ℚ)

end

end A006077.P2413582983709983226

/-! ## A006077.P5684396542894727164

`A056594(2*n)*A291898(n)`
-/

namespace A006077.P5684396542894727164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (2 * n) * A291898 n

end

end A006077.P5684396542894727164

/-! ## A006077.P11631605470853162791

`A291898(n)/A010892(3*n)`
-/

namespace A006077.P11631605470853162791
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A291898 n : ℚ) / (A010892 (3 * n) : ℚ)

end

end A006077.P11631605470853162791

/-! ## A006077.P17686047745053954757

`A010892(A008486(n))*A291898(n)`
-/

namespace A006077.P17686047745053954757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (A008486 n).toNat * A291898 n

end

end A006077.P17686047745053954757

/-! ## A006077.P10299797069573378869

`A010892(A008585(n))*A291898(n)`
-/

namespace A006077.P10299797069573378869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (A008585 n).toNat * A291898 n

end

end A006077.P10299797069573378869

/-! ## A006077.P11732043924721193712

`A010892(A016777(n))*A291898(n)`
-/

namespace A006077.P11732043924721193712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (A016777 n).toNat * A291898 n

end

end A006077.P11732043924721193712

/-! ## A006077.P7161588337380146676

`A291898(n)/A056594(A005843(n))`
-/

namespace A006077.P7161588337380146676
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A291898 n : ℚ) / (A056594 (A005843 n).toNat : ℚ)

end

end A006077.P7161588337380146676

/-! ## A006077.P1080558842329269518

`A121589(n+1)/A227454(n+1)*A291898(n)`
-/

namespace A006077.P1080558842329269518
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A121589 (n + 1) : ℚ) / (A227454 (n + 1) : ℚ) * (A291898 n : ℚ)

end

end A006077.P1080558842329269518

/-!
# A006078: Number of triangulated (n+2)-gons rooted at an exterior edge.

The programs for A006078, the canonical program `A006078.P3851421618705836682` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006078 has offset 2).

The definition of A006078 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A006078.P3851421618705836682

`A126120(n+2)+A050182(n)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A006078

/-- `A126120(n+2)+A050182(n)` -/
def P3851421618705836682.Spec : Prop :=
  ∀ n, P3851421618705836682.a n = A006078 (n + 2)

theorem P3851421618705836682.correct : P3851421618705836682.Spec := by
  intro n
  simp only [A006078, Nat.add_sub_cancel]

end A006078

/-! ## A006078.P16289875920835768720

`A007223(n+2)-A050182(n)`
-/

namespace A006078.P16289875920835768720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007223 (n + 2) - A050182 n

end

end A006078.P16289875920835768720

namespace A006078

/-- `A007223(n+2)-A050182(n)` -/
def P16289875920835768720.Spec : Prop :=
  ∀ n, P16289875920835768720.a n = A006078 (n + 2)

end A006078

/-! ## A006078.P2657916082415963090

`A097331(n+3)+A050182(n)`
-/

namespace A006078.P2657916082415963090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097331 (n + 3) + A050182 n

end

end A006078.P2657916082415963090

namespace A006078

/-- `A097331(n+3)+A050182(n)` -/
def P2657916082415963090.Spec : Prop :=
  ∀ n, P2657916082415963090.a n = A006078 (n + 2)

end A006078

/-! ## A006078.P4108376391986009153

`A002057(n)-3*A050182(n)`
-/

namespace A006078.P4108376391986009153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002057 n - 3 * A050182 n

end

end A006078.P4108376391986009153

namespace A006078

/-- `A002057(n)-3*A050182(n)` -/
def P4108376391986009153.Spec : Prop :=
  ∀ n, P4108376391986009153.a n = A006078 (n + 2)

end A006078

/-! ## A006078.P4492320878363452867

`A000245(n+2)-A000150(n+3)-A050182(n)`
-/

namespace A006078.P4492320878363452867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000245 (n + 2) - A000150 (n + 3) - A050182 n

end

end A006078.P4492320878363452867

namespace A006078

/-- `A000245(n+2)-A000150(n+3)-A050182(n)` -/
def P4492320878363452867.Spec : Prop :=
  ∀ n, P4492320878363452867.a n = A006078 (n + 2)

end A006078

/-! ## A006078.P7080360704850253707

`A380237(n+2)-(A384966(n+2)+A007595(n+2))`
-/

namespace A006078.P7080360704850253707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380237 (n + 2) - (A384966 (n + 2) + A007595 (n + 2))

end

end A006078.P7080360704850253707

namespace A006078

/-- `A380237(n+2)-(A384966(n+2)+A007595(n+2))` -/
def P7080360704850253707.Spec : Prop :=
  ∀ n, P7080360704850253707.a n = A006078 (n + 2)

end A006078

/-! ## A006078.P1634871693663805621

`A001895(n+2)-A047996(A142463(n+2))`
-/

namespace A006078.P1634871693663805621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001895 (n + 2) - A047996 (A142463 (n + 2)).toNat

end

end A006078.P1634871693663805621

namespace A006078

/-- `A001895(n+2)-A047996(A142463(n+2))` -/
def P1634871693663805621.Spec : Prop :=
  ∀ n, P1634871693663805621.a n = A006078 (n + 2)

end A006078

/-!
# A006079: Number of asymmetric planted projective plane trees with n+1 nodes; bracelets (reversible necklaces) with n black beads and n-1 white beads.

The programs for A006079, the canonical program `A006079.P13941314535187319206` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006079 has offset 1).

The definition of A006079 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A006079.P13941314535187319206

`lcm(2, A007123(n+1))-A001405(n)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A006079

/-- `lcm(2, A007123(n+1))-A001405(n)` -/
def P13941314535187319206.Spec : Prop :=
  ∀ n, P13941314535187319206.a n = A006079 (n + 1)

theorem P13941314535187319206.correct : P13941314535187319206.Spec := by
  intro n
  simp only [A006079, Nat.add_sub_cancel]

end A006079

/-! ## A006079.P12859971081146823257

`A000108(A233583(n+1))-A007123(n+1)`
-/

namespace A006079.P12859971081146823257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (A233583 (n + 1)).toNat - A007123 (n + 1)

end

end A006079.P12859971081146823257

namespace A006079

/-- `A000108(A233583(n+1))-A007123(n+1)` -/
def P12859971081146823257.Spec : Prop :=
  ∀ n, P12859971081146823257.a n = A006079 (n + 1)

end A006079

/-! ## A006079.P13979346699954012170

`A007123(n+1)-A001405(n)%A129384(n)`
-/

namespace A006079.P13979346699954012170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007123 (n + 1) - Int.tmod (A001405 n) (A129384 n)

end

end A006079.P13979346699954012170

namespace A006079

/-- `A007123(n+1)-A001405(n)%A129384(n)` -/
def P13979346699954012170.Spec : Prop :=
  ∀ n, P13979346699954012170.a n = A006079 (n + 1)

end A006079

/-! ## A006079.P7709758430981292964

`A000108(A233583(n+1))-(A210736(n)+A000150(n))`
-/

namespace A006079.P7709758430981292964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (A233583 (n + 1)).toNat - (A210736 n + A000150 n)

end

end A006079.P7709758430981292964

namespace A006079

/-- `A000108(A233583(n+1))-(A210736(n)+A000150(n))` -/
def P7709758430981292964.Spec : Prop :=
  ∀ n, P7709758430981292964.a n = A006079 (n + 1)

end A006079

/-! ## A006079.P3788219910100799276

`A000108(A233583(n+1))-(A210736(n+1)-A210628(2*n+1))/2`
-/

namespace A006079.P3788219910100799276
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000108 (A233583 (n + 1)).toNat : ℚ) - (A210736 (n + 1) - A210628 (2 * n + 1) : ℚ) / 2

end

end A006079.P3788219910100799276

namespace A006079

/-- `A000108(A233583(n+1))-(A210736(n+1)-A210628(2*n+1))/2` -/
def P3788219910100799276.Spec : Prop :=
  ∀ n, P3788219910100799276.a n = (A006079 (n + 1) : ℚ)

end A006079

/-! ## A006079.P11570964665183208836

`A000108(n)-A007123(n+1)%A006078(n+2)`
-/

namespace A006079.P11570964665183208836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n - Int.tmod (A007123 (n + 1)) (A006078 (n + 2))

end

end A006079.P11570964665183208836

namespace A006079

/-- `A000108(n)-A007123(n+1)%A006078(n+2)` -/
def P11570964665183208836.Spec : Prop :=
  ∀ n, P11570964665183208836.a n = A006079 (n + 1)

end A006079

/-! ## A006079.P14859880562648533870

`A032106(round(sqrt(n²+1)))-A005656(n+1)`
-/

namespace A006079.P14859880562648533870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032106 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat - A005656 (n + 1)

end

end A006079.P14859880562648533870

namespace A006079

/-- `A032106(round(sqrt(n²+1)))-A005656(n+1)` -/
def P14859880562648533870.Spec : Prop :=
  ∀ n, P14859880562648533870.a n = A006079 (n + 1)

end A006079

/-! ## A006079.P1502783646681079999

`A032106(n+1)%A000108(A233583(n+1))`
-/

namespace A006079.P1502783646681079999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A032106 (n + 1)) (A000108 (A233583 (n + 1)).toNat)

end

end A006079.P1502783646681079999

namespace A006079

/-- `A032106(n+1)%A000108(A233583(n+1))` -/
def P1502783646681079999.Spec : Prop :=
  ∀ n, P1502783646681079999.a n = A006079 (n + 1)

end A006079

/-!
# A006080: Number of rooted projective plane trees with n nodes.

The programs for A006080, there is no canonical definition to state claims against.
-/

/-! ## A006080.P3027159756771414536

`A059078(n)+A045629(n)`
-/

namespace A006080.P3027159756771414536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059078 n + A045629 n

end

end A006080.P3027159756771414536

/-! ## A006080.P16933718319676509024

`A045632(n)+A115122(n)+A059078(n)`
-/

namespace A006080.P16933718319676509024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045632 n + (A115122 n + A059078 n)

end

end A006080.P16933718319676509024

/-! ## A006080.P5982659811595621617

`A045629(n)-A057428(n)*A059078(n)`
-/

namespace A006080.P5982659811595621617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045629 n - A057428 n * A059078 n

end

end A006080.P5982659811595621617

/-! ## A006080.P3419071730042001313

`(A011782(n)+A003239(n))/2`
-/

namespace A006080.P3419071730042001313
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011782 n + A003239 n : ℚ) / 2

end

end A006080.P3419071730042001313

/-! ## A006080.P3331895646958990339

`(A003239(n)+Δ[A094373(n)])/2`
-/

namespace A006080.P3331895646958990339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094373 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003239 n + (f1 (n + 1) - f1 n) : ℚ) / 2

end

end A006080.P3331895646958990339

/-!
# A006081: Number of line-rooted projective plane trees with n nodes.

The programs for A006081, there is no canonical definition to state claims against.
-/

/-! ## A006081.P13802476937961761836

`A006080(n+2)+A126120(n)-A006082(n+2)`
-/

namespace A006081.P13802476937961761836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006080 (n + 2) + (A126120 n - A006082 (n + 2))

end

end A006081.P13802476937961761836

/-! ## A006081.P5912175238784744911

`round(A143691((2*A257520(n)+n)*(n+1)+1)/8)`
-/

namespace A006081.P5912175238784744911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A143691 ((2 * A257520 n + (n : ℤ)) * (n + 1 : ℤ) + 1).toNat : ℚ) / 8)

end

end A006081.P5912175238784744911

/-! ## A006081.P6514560887104643807

`A123070(A316892(n)+A086099(n))`
-/

namespace A006081.P6514560887104643807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123070 (A316892 n + A086099 n).toNat

end

end A006081.P6514560887104643807

/-!
# A006082: Number of labeled projective plane trees (or "flat" trees) with n nodes.

The programs for A006082, there is no canonical definition to state claims against.
-/

/-! ## A006082.P3181079035679414919

`A303929(∑[n+2]-1)`
-/

namespace A006082.P3181079035679414919
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303929 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A006082.P3181079035679414919

/-! ## A006082.P12196824737755519330

`A303929(A034856(n+1))+and(1, 2*n)`
-/

namespace A006082.P12196824737755519330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303929 (A034856 (n + 1)).toNat + (Nat.land 1 (2 * n) : ℤ)

end

end A006082.P12196824737755519330

/-! ## A006082.P1519246511319453184

`A303929(A034856(n+1))*A304042(n)`
-/

namespace A006082.P1519246511319453184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303929 (A034856 (n + 1)).toNat * A304042 n

end

end A006082.P1519246511319453184

/-! ## A006082.P5381113159917889618

`A303929(A034856(n+1))%A005502(n)`
-/

namespace A006082.P5381113159917889618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A303929 (A034856 (n + 1)).toNat) (A005502 n)

end

end A006082.P5381113159917889618

/-! ## A006082.P6224607293375913974

`A303929(A034856(n+1))^(A154955(n+1)+1)`
-/

namespace A006082.P6224607293375913974
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A303929 (A034856 (n + 1)).toNat : ℚ) ^ (A154955 (n + 1) + 1 : ℤ)

end

end A006082.P6224607293375913974

/-!
# A006086: Unitary harmonic numbers (those for which the unitary harmonic mean is an integer).

The programs for A006086, there is no canonical definition to state claims against.
-/

/-! ## A006086.P16084813030356745138

`A063947(∑[A187784(n)!])`
-/

namespace A006086.P16084813030356745138
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A187784 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063947 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A006086.P16084813030356745138

/-! ## A006086.P1124553762721342168

`A286325(∑[A187784(n)!])`
-/

namespace A006086.P1124553762721342168
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A187784 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286325 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A006086.P1124553762721342168

/-! ## A006086.P3474474507822056462

`filter[A063947(n+1), A189292(#)]`
-/

namespace A006086.P3474474507822056462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063947 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A189292 (f1 j).toNat = 1) n)

end

end A006086.P3474474507822056462

/-!
# A006087: Unitary harmonic means H(n) of the unitary harmonic numbers (A006086).

The programs for A006087, there is no canonical definition to state claims against.
-/

/-! ## A006087.P6656110934555794518

`A103339(A006086(n+1))`
-/

namespace A006087.P6656110934555794518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103339 (A006086 (n + 1)).toNat

end

end A006087.P6656110934555794518

/-!
# A006088: a(n) = (2^n + 2) a(n-1) (kissing number of Barnes-Wall lattice in dimension 2^n).

The programs for A006088, the canonical program `A006088.P11801558359266988291` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006088 has offset 0).

The definition of A006088 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2^n+2)*a(n-1)` (program `A006088.P11801558359266988291`, by `A006088.P11801558359266988291.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A006088.P11801558359266988291

`(2^n+2)*a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A006088

/-- `(2^n+2)*a(n-1)` -/
def P11801558359266988291.Spec : Prop :=
  ∀ n, (P11801558359266988291.a n : ℤ) = A006088 n

theorem P11801558359266988291.correct : P11801558359266988291.Spec := by
  intro n
  simp only [A006088]

end A006088

/-! ## A006088.P3525050907597888195

`∏[2^n+2]/3`
-/

namespace A006088.P3525050907597888195
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 3

end

end A006088.P3525050907597888195

namespace A006088

/-- `∏[2^n+2]/3` -/
def P3525050907597888195.Spec : Prop :=
  ∀ n, P3525050907597888195.a n = (A006088 n : ℚ)

end A006088

/-! ## A006088.P3936438847959988031

`∏[xor(1, 2^n)+1]`
-/

namespace A006088.P3936438847959988031
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (2 ^ n) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A006088.P3936438847959988031

namespace A006088

/-- `∏[xor(1, 2^n)+1]` -/
def P3936438847959988031.Spec : Prop :=
  ∀ n, (P3936438847959988031.a n : ℤ) = A006088 n

end A006088

/-! ## A006088.P1380862396082771142

`∏[-xor(-2, 2^n)]`
-/

namespace A006088.P1380862396082771142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (-2) (2 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A006088.P1380862396082771142

namespace A006088

/-- `∏[-xor(-2, 2^n)]` -/
def P1380862396082771142.Spec : Prop :=
  ∀ n, P1380862396082771142.a n = A006088 n

end A006088

/-! ## A006088.P6718040718800043494

`∏[2*(a(n-1)-1)]` with `a(0)=1, a(1)=4`
-/

namespace A006088.P6718040718800043494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n f1 =>
  2 * (f1 (n - 1) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A006088.P6718040718800043494

namespace A006088

/-- `∏[2*(a(n-1)-1)]` -/
def P6718040718800043494.Spec : Prop :=
  ∀ n, P6718040718800043494.a n = A006088 n

end A006088

/-!
# A006089: Coefficients of elliptic function cn.

The programs for A006089, there is no canonical definition to state claims against.
-/

/-! ## A006089.P16495198875420560359

`A060627(∑[n+2]+4)`
-/

namespace A006089.P16495198875420560359
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060627 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A006089.P16495198875420560359

/-! ## A006089.P17841938290612822219

`lcm(2, A060627(A167614(n+1)))`
-/

namespace A006089.P17841938290612822219
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A060627 (A167614 (n + 1)).toNat)

end

end A006089.P17841938290612822219

/-! ## A006089.P11710009431132388655

`A060627(A167614(n+1))+A000007(n+4)`
-/

namespace A006089.P11710009431132388655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060627 (A167614 (n + 1)).toNat + A000007 (n + 4)

end

end A006089.P11710009431132388655

/-! ## A006089.P11617224812466493423

`A080425(3*n)+A060627(A167614(n+1))`
-/

namespace A006089.P11617224812466493423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080425 (3 * n) + A060627 (A167614 (n + 1)).toNat

end

end A006089.P11617224812466493423

/-!
# A006090: Expansion of bracket function.

The programs for A006090, the canonical program `A006090.P14337409739636243907` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006090 has offset 0).

The definition of A006090 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 330 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A006090.P14337409739636243907

`A033999(n)*A192080(n)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A006090

/-- `A033999(n)*A192080(n)` -/
def P14337409739636243907.Spec : Prop :=
  ∀ n, P14337409739636243907.a n = A006090 n

theorem P14337409739636243907.correct : P14337409739636243907.Spec := by
  intro n
  simp only [A006090]

end A006090

/-! ## A006090.P3485060469758507512

`A192080(n)/A033999(n+2)`
-/

namespace A006090.P3485060469758507512
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A192080 n : ℚ) / (A033999 (n + 2) : ℚ)

end

end A006090.P3485060469758507512

namespace A006090

/-- `A192080(n)/A033999(n+2)` -/
def P3485060469758507512.Spec : Prop :=
  ∀ n, P3485060469758507512.a n = (A006090 n : ℚ)

end A006090

/-! ## A006090.P14923508765258032950

`A056594(2*n)*A192080(n)`
-/

namespace A006090.P14923508765258032950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (2 * n) * A192080 n

end

end A006090.P14923508765258032950

namespace A006090

/-- `A056594(2*n)*A192080(n)` -/
def P14923508765258032950.Spec : Prop :=
  ∀ n, P14923508765258032950.a n = A006090 n

end A006090

/-! ## A006090.P14553695441382173560

`A192080(n)*A242073(2*n)`
-/

namespace A006090.P14553695441382173560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192080 n * A242073 (2 * n)

end

end A006090.P14553695441382173560

namespace A006090

/-- `A192080(n)*A242073(2*n)` -/
def P14553695441382173560.Spec : Prop :=
  ∀ n, P14553695441382173560.a n = A006090 n

end A006090

/-! ## A006090.P1197735602529112206

`A192080(n)/A056594(A005843(n))`
-/

namespace A006090.P1197735602529112206
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A192080 n : ℚ) / (A056594 (A005843 n).toNat : ℚ)

end

end A006090.P1197735602529112206

namespace A006090

/-- `A192080(n)/A056594(A005843(n))` -/
def P1197735602529112206.Spec : Prop :=
  ∀ n, P1197735602529112206.a n = (A006090 n : ℚ)

end A006090

/-! ## A006090.P764007696321329217

`A016327(Δ[A008619(n)])*A192080(n)`
-/

namespace A006090.P764007696321329217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016327 (f1 (n + 1) - f1 n).toNat * A192080 n

end

end A006090.P764007696321329217

namespace A006090

/-- `A016327(Δ[A008619(n)])*A192080(n)` -/
def P764007696321329217.Spec : Prop :=
  ∀ n, P764007696321329217.a n = A006090 n

end A006090

/-!
# A006091: a(n) = n^n - n + 1.

The programs for A006091, the canonical program `A006091.P3894065017776291680` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006091 has offset 1).

The definition of A006091 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)^(n+1)-(n+1)+1` (program `A006091.P3894065017776291680`, by `A006091.P3894065017776291680.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A006091.P3894065017776291680

`(n+1)^(n+1)-(n+1)+1`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A006091

/-- `(n+1)^(n+1)-(n+1)+1` -/
def P3894065017776291680.Spec : Prop :=
  ∀ n, P3894065017776291680.a n = A006091 (n + 1)

theorem P3894065017776291680.correct : P3894065017776291680.Spec := by
  intro n
  simp only [A006091, Nat.add_sub_cancel]

end A006091

/-! ## A006091.P16704866806818461464

`∑[xor(1, Δ[n^n])]`
-/

namespace A006091.P16704866806818461464
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006091.P16704866806818461464

namespace A006091

/-- `∑[xor(1, Δ[n^n])]` -/
def P16704866806818461464.Spec : Prop :=
  ∀ n, P16704866806818461464.a n = A006091 (n + 1)

end A006091

/-! ## A006091.P5533861848456138204

`or(1, record[n^n-n])`
-/

namespace A006091.P5533861848456138204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ n : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A006091.P5533861848456138204

namespace A006091

/-- `or(1, record[n^n-n])` -/
def P5533861848456138204.Spec : Prop :=
  ∀ n, P5533861848456138204.a n = A006091 (n + 1)

end A006091

/-! ## A006091.P12796812840789801379

`Δ[∑[n^n]-C(n, 2)]`
-/

namespace A006091.P12796812840789801379
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - (Nat.choose n 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A006091.P12796812840789801379

namespace A006091

/-- `Δ[∑[n^n]-C(n, 2)]` -/
def P12796812840789801379.Spec : Prop :=
  ∀ n, P12796812840789801379.a n = A006091 (n + 1)

end A006091

/-! ## A006091.P8504357447553227543

`or(1, (n+1)^(n+1)-n)`
-/

namespace A006091.P8504357447553227543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (((n + 1) ^ (n + 1) : ℤ) - (n : ℤ))

end

end A006091.P8504357447553227543

namespace A006091

/-- `or(1, (n+1)^(n+1)-n)` -/
def P8504357447553227543.Spec : Prop :=
  ∀ n, P8504357447553227543.a n = A006091 (n + 1)

end A006091

/-! ## A006091.P9055314847866092396

`xor(n-(n+1)^(n+1), -2)`
-/

namespace A006091.P9055314847866092396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((n : ℤ) - ((n + 1) ^ (n + 1) : ℤ)) (-2)

end

end A006091.P9055314847866092396

namespace A006091

/-- `xor(n-(n+1)^(n+1), -2)` -/
def P9055314847866092396.Spec : Prop :=
  ∀ n, P9055314847866092396.a n = A006091 (n + 1)

end A006091

/-! ## A006091.P14619335229091290164

`floor((n+1)^(n+1)-∑[tanh(n)])`
-/

namespace A006091.P14619335229091290164
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tanh (n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n + 1) ^ (n + 1) : ℝ) - ∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A006091.P14619335229091290164

namespace A006091

/-- `floor((n+1)^(n+1)-∑[tanh(n)])` -/
def P14619335229091290164.Spec : Prop :=
  ∀ n, P14619335229091290164.a n = A006091 (n + 1)

end A006091

/-! ## A006091.P4824688254994073471

`round((n+1)^(n+1)-∑[tanh(n)])`
-/

namespace A006091.P4824688254994073471
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tanh (n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((n + 1) ^ (n + 1) : ℝ) - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A006091.P4824688254994073471

namespace A006091

/-- `round((n+1)^(n+1)-∑[tanh(n)])` -/
def P4824688254994073471.Spec : Prop :=
  ∀ n, P4824688254994073471.a n = A006091 (n + 1)

end A006091

/-! ## A006091.P1497246631656549273

`record[xor(1, (n-1)^(n-1)-(n-1))]`
-/

namespace A006091.P1497246631656549273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (SequenceMachineLib.roundAway (((n : ℤ) - 1 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - ((n : ℤ) - 1 : ℚ)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006091.P1497246631656549273

namespace A006091

/-- `record[xor(1, (n-1)^(n-1)-(n-1))]` -/
def P1497246631656549273.Spec : Prop :=
  ∀ n, P1497246631656549273.a n = A006091 (n + 1)

end A006091

/-!
# A006093: a(n) = prime(n) - 1.

The programs for A006093, the canonical program `A006093.P2906174024863549003` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006093 has offset 1).

The definition of A006093 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(n+1)-1` (program `A006093.P2906174024863549003`, by `A006093.P2906174024863549003.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A006093.P2906174024863549003

`A000040(n+1)-1`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A006093

/-- `A000040(n+1)-1` -/
def P2906174024863549003.Spec : Prop :=
  ∀ n, P2906174024863549003.a n = A006093 (n + 1)

theorem P2906174024863549003.correct : P2906174024863549003.Spec := by
  intro n
  simp only [A006093, Nat.add_sub_cancel]

end A006093

/-! ## A006093.P5209941750074537072

`A000010(A000040(n+1))`
-/

namespace A006093.P5209941750074537072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A000040 (n + 1)).toNat

end

end A006093.P5209941750074537072

namespace A006093

/-- `A000010(A000040(n+1))` -/
def P5209941750074537072.Spec : Prop :=
  ∀ n, P5209941750074537072.a n = A006093 (n + 1)

end A006093

/-! ## A006093.P633672318766302950

`A000010(A006005(n+1))`
-/

namespace A006093.P633672318766302950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A006005 (n + 1)).toNat

end

end A006093.P633672318766302950

namespace A006093

/-- `A000010(A006005(n+1))` -/
def P633672318766302950.Spec : Prop :=
  ∀ n, P633672318766302950.a n = A006093 (n + 1)

end A006093

/-! ## A006093.P9998394511765170515

`A005867(n+1)/A005867(n)`
-/

namespace A006093.P9998394511765170515
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005867 (n + 1) : ℚ) / (A005867 n : ℚ)

end

end A006093.P9998394511765170515

namespace A006093

/-- `A005867(n+1)/A005867(n)` -/
def P9998394511765170515.Spec : Prop :=
  ∀ n, P9998394511765170515.a n = (A006093 (n + 1) : ℚ)

end A006093

/-! ## A006093.P13083576972068830303

`p?[a(n-1)+2]-1` with `a(0)=2, a(1)=1`
-/

namespace A006093.P13083576972068830303
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 1] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) - 1

end

end A006093.P13083576972068830303

namespace A006093

/-- `p?[a(n-1)+2]-1` -/
def P13083576972068830303.Spec : Prop :=
  ∀ n, P13083576972068830303.a n = A006093 (n + 1)

theorem P13083576972068830303.correct : P13083576972068830303.Spec := by
  intro n
  simp only [A006093, Nat.add_sub_cancel, A006093.P13083576972068830303.f1, A006093.P13083576972068830303.a, A006093.P2906174024863549003.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A006093

/-! ## A006093.P17207660235952658270

`∑[A075526(n)]`
-/

namespace A006093.P17207660235952658270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006093.P17207660235952658270

namespace A006093

/-- `∑[A075526(n)]` -/
def P17207660235952658270.Spec : Prop :=
  ∀ n, P17207660235952658270.a n = A006093 (n + 1)

end A006093

/-! ## A006093.P6319787040296172299

`sqrt(A005722(n+1))`
-/

namespace A006093.P6319787040296172299
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A005722 (n + 1) : ℝ)

end

end A006093.P6319787040296172299

namespace A006093

/-- `sqrt(A005722(n+1))` -/
def P6319787040296172299.Spec : Prop :=
  ∀ n, P6319787040296172299.a n = (A006093 (n + 1) : ℝ)

end A006093

/-! ## A006093.P6839778203616836229

`Δ[A007504(n)]-1`
-/

namespace A006093.P6839778203616836229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A006093.P6839778203616836229

namespace A006093

/-- `Δ[A007504(n)]-1` -/
def P6839778203616836229.Spec : Prop :=
  ∀ n, P6839778203616836229.a n = A006093 (n + 1)

end A006093

/-! ## A006093.P1063004969882432401

`A040976(n+1)+1`
-/

namespace A006093.P1063004969882432401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1) + 1

end

end A006093.P1063004969882432401

namespace A006093

/-- `A040976(n+1)+1` -/
def P1063004969882432401.Spec : Prop :=
  ∀ n, P1063004969882432401.a n = A006093 (n + 1)

theorem P1063004969882432401.correct : P1063004969882432401.Spec := by
  intro n
  simp only [A006093, Nat.add_sub_cancel, A006093.P1063004969882432401.a, A006093.P2906174024863549003.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A040976, A040976.P11599754272797435513.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A006093

/-! ## A006093.P14842792092585873163

`A014689(n+1)+n`
-/

namespace A006093.P14842792092585873163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014689 (n + 1) + (n : ℤ)

end

end A006093.P14842792092585873163

namespace A006093

/-- `A014689(n+1)+n` -/
def P14842792092585873163.Spec : Prop :=
  ∀ n, P14842792092585873163.a n = A006093 (n + 1)

theorem P14842792092585873163.correct : P14842792092585873163.Spec := by
  intro n
  simp only [A006093, Nat.add_sub_cancel, A006093.P14842792092585873163.a, A006093.P2906174024863549003.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A014689, A014689.P6286543075765329050.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A006093

/-! ## A006093.P10380132405035666302

`a(n-1)+A001223(n)` with `a(0)=1`
-/

namespace A006093.P10380132405035666302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A001223 n

end

end A006093.P10380132405035666302

namespace A006093

/-- `a(n-1)+A001223(n)` -/
def P10380132405035666302.Spec : Prop :=
  ∀ n, P10380132405035666302.a n = A006093 (n + 1)

end A006093

/-! ## A006093.P4884437508865214271

`A161912(n)+A054519(n)`
-/

namespace A006093.P4884437508865214271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161912 n + A054519 n

end

end A006093.P4884437508865214271

namespace A006093

/-- `A161912(n)+A054519(n)` -/
def P4884437508865214271.Spec : Prop :=
  ∀ n, P4884437508865214271.a n = A006093 (n + 1)

theorem P4884437508865214271.correct : P4884437508865214271.Spec := by
  intro n
  simp only [A006093, Nat.add_sub_cancel, A006093.P4884437508865214271.a, A006093.P2906174024863549003.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A054519, A054519.P3292618312068876157.a, A161912, A161912.P2457371058280528067.a, A006218, A006218.P9218434490128439557.a, A040976, A040976.P11599754272797435513.a, A000005, A000005.P16091521709108585461.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A006093

/-! ## A006093.P1353495535661946023

`A023443(n)+A014692(n+1)`
-/

namespace A006093.P1353495535661946023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 n + A014692 (n + 1)

end

end A006093.P1353495535661946023

namespace A006093

/-- `A023443(n)+A014692(n+1)` -/
def P1353495535661946023.Spec : Prop :=
  ∀ n, P1353495535661946023.a n = A006093 (n + 1)

theorem P1353495535661946023.correct : P1353495535661946023.Spec := by
  intro n
  simp only [A006093, Nat.add_sub_cancel, A006093.P1353495535661946023.a, A006093.P2906174024863549003.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A014692, A014692.P2004927767556050134.a, A023443, A023443.P2966051066474347068.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A006093

/-! ## A006093.P18246726736960256829

`A057428(n)+A006005(n+1)`
-/

namespace A006093.P18246726736960256829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + A006005 (n + 1)

end

end A006093.P18246726736960256829

namespace A006093

/-- `A057428(n)+A006005(n+1)` -/
def P18246726736960256829.Spec : Prop :=
  ∀ n, P18246726736960256829.a n = A006093 (n + 1)

theorem P18246726736960256829.correct : P18246726736960256829.Spec := by
  intro n
  simp only [A006093, Nat.add_sub_cancel, A006093.P18246726736960256829.a, A006093.P2906174024863549003.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006005, A006005.P1228063357782503489.a, A057428, A057428.P2999489532230392221.a, A000007, A000007.P6599383543502402472.a, A057427, A057427.P3058147525557661423.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A006093

/-! ## A006093.P5819791131861576213

`A131733(n+1)+A005843(n)`
-/

namespace A006093.P5819791131861576213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131733 (n + 1) + A005843 n

end

end A006093.P5819791131861576213

namespace A006093

/-- `A131733(n+1)+A005843(n)` -/
def P5819791131861576213.Spec : Prop :=
  ∀ n, P5819791131861576213.a n = A006093 (n + 1)

theorem P5819791131861576213.correct : P5819791131861576213.Spec := by
  intro n
  simp only [A006093, Nat.add_sub_cancel, A006093.P5819791131861576213.a, A006093.P2906174024863549003.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A005843, A005843.P3167286115683555970.a, A131733, A131733.P2209471722626615476.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A006093

/-! ## A006093.P14560559402412390657

`A156037(n+1)+A063524(n)`
-/

namespace A006093.P14560559402412390657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156037 (n + 1) + A063524 n

end

end A006093.P14560559402412390657

namespace A006093

/-- `A156037(n+1)+A063524(n)` -/
def P14560559402412390657.Spec : Prop :=
  ∀ n, P14560559402412390657.a n = A006093 (n + 1)

end A006093

/-! ## A006093.P11306316764453537817

`A173072(n+1)+A060747(n)`
-/

namespace A006093.P11306316764453537817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173072 (n + 1) + A060747 n

end

end A006093.P11306316764453537817

namespace A006093

/-- `A173072(n+1)+A060747(n)` -/
def P11306316764453537817.Spec : Prop :=
  ∀ n, P11306316764453537817.a n = A006093 (n + 1)

theorem P11306316764453537817.correct : P11306316764453537817.Spec := by
  intro n
  simp only [A006093, Nat.add_sub_cancel, A006093.P11306316764453537817.a, A006093.P2906174024863549003.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A060747, A060747.P16920431360270313306.a, A173072, A173072.P15776542700832946734.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A006093

/-! ## A006093.P11280865817526911137

`A014692(n+1)-A024000(n)`
-/

namespace A006093.P11280865817526911137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014692 (n + 1) - A024000 n

end

end A006093.P11280865817526911137

namespace A006093

/-- `A014692(n+1)-A024000(n)` -/
def P11280865817526911137.Spec : Prop :=
  ∀ n, P11280865817526911137.a n = A006093 (n + 1)

theorem P11280865817526911137.correct : P11280865817526911137.Spec := by
  intro n
  simp only [A006093, Nat.add_sub_cancel, A006093.P11280865817526911137.a, A006093.P2906174024863549003.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A014692, A014692.P2004927767556050134.a, A024000, A024000.P8748414335487061084.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A006093

/-! ## A006093.P9868690905762193057

`A039915(n+1)-A000038(n)`
-/

namespace A006093.P9868690905762193057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039915 (n + 1) - A000038 n

end

end A006093.P9868690905762193057

namespace A006093

/-- `A039915(n+1)-A000038(n)` -/
def P9868690905762193057.Spec : Prop :=
  ∀ n, P9868690905762193057.a n = A006093 (n + 1)

end A006093

/-! ## A006093.P13625736316771222844

`A153480(n)%A008864(n+1)`
-/

namespace A006093.P13625736316771222844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A153480 n) (A008864 (n + 1))

end

end A006093.P13625736316771222844

namespace A006093

/-- `A153480(n)%A008864(n+1)` -/
def P13625736316771222844.Spec : Prop :=
  ∀ n, P13625736316771222844.a n = A006093 (n + 1)

end A006093

/-!
# A006094: Products of 2 successive primes.

The programs for A006094, the canonical program `A006094.P10257567645245129766` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006094 has offset 1).

The definition of A006094 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A006094.P10257567645245129766

`A000040(n+1)*A000040(n+2)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A006094

/-- `A000040(n+1)*A000040(n+2)` -/
def P10257567645245129766.Spec : Prop :=
  ∀ n, P10257567645245129766.a n = A006094 (n + 1)

theorem P10257567645245129766.correct : P10257567645245129766.Spec := by
  intro n
  simp only [A006094, Nat.add_sub_cancel]

end A006094

/-! ## A006094.P14855381712479169294

`A001358(A172348(n+1))`
-/

namespace A006094.P14855381712479169294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (A172348 (n + 1)).toNat

end

end A006094.P14855381712479169294

namespace A006094

/-- `A001358(A172348(n+1))` -/
def P14855381712479169294.Spec : Prop :=
  ∀ n, P14855381712479169294.a n = A006094 (n + 1)

end A006094

/-! ## A006094.P6596450060921174650

`sqrt(A166329(n+1))`
-/

namespace A006094.P6596450060921174650
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A166329 (n + 1) : ℝ)

end

end A006094.P6596450060921174650

namespace A006094

/-- `sqrt(A166329(n+1))` -/
def P6596450060921174650.Spec : Prop :=
  ∀ n, P6596450060921174650.a n = (A006094 (n + 1) : ℝ)

end A006094

/-! ## A006094.P15380089196380765291

`A069486(n+1)/2`
-/

namespace A006094.P15380089196380765291
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069486 (n + 1) : ℚ) / 2

end

end A006094.P15380089196380765291

namespace A006094

/-- `A069486(n+1)/2` -/
def P15380089196380765291.Spec : Prop :=
  ∀ n, P15380089196380765291.a n = (A006094 (n + 1) : ℚ)

theorem P15380089196380765291.correct : P15380089196380765291.Spec := by
  intro n
  simp only [A006094, Nat.add_sub_cancel, A006094.P15380089196380765291.a, A006094.P10257567645245129766.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A069486, A069486.P4196932283638993766.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A006094

/-! ## A006094.P4524213149989523699

`A037166(n+1)+Δ[A007504(n)]`
-/

namespace A006094.P4524213149989523699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037166 (n + 1) + (f1 (n + 1) - f1 n)

end

end A006094.P4524213149989523699

namespace A006094

/-- `A037166(n+1)+Δ[A007504(n)]` -/
def P4524213149989523699.Spec : Prop :=
  ∀ n, P4524213149989523699.a n = A006094 (n + 1)

end A006094

/-! ## A006094.P7062634067040433234

`Δ[A007504(n)]*A065091(n+1)`
-/

namespace A006094.P7062634067040433234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A065091 (n + 1)

end

end A006094.P7062634067040433234

namespace A006094

/-- `Δ[A007504(n)]*A065091(n+1)` -/
def P7062634067040433234.Spec : Prop :=
  ∀ n, P7062634067040433234.a n = A006094 (n + 1)

end A006094

/-! ## A006094.P17673017874941277588

`A251720(n+1)/Δ[A007504(n)]`
-/

namespace A006094.P17673017874941277588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A251720 (n + 1) : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A006094.P17673017874941277588

namespace A006094

/-- `A251720(n+1)/Δ[A007504(n)]` -/
def P17673017874941277588.Spec : Prop :=
  ∀ n, P17673017874941277588.a n = (A006094 (n + 1) : ℚ)

end A006094

/-! ## A006094.P17241707481720663089

`lcm(Δ[A064365(n)], A065091(n+1))`
-/

namespace A006094.P17241707481720663089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064365 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (f1 (n + 1) - f1 n) (A065091 (n + 1))

end

end A006094.P17241707481720663089

namespace A006094

/-- `lcm(Δ[A064365(n)], A065091(n+1))` -/
def P17241707481720663089.Spec : Prop :=
  ∀ n, (P17241707481720663089.a n : ℤ) = A006094 (n + 1)

end A006094

/-! ## A006094.P13488002767077913467

`A037166(n+1)+A000040(n+1)`
-/

namespace A006094.P13488002767077913467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037166 (n + 1) + A000040 (n + 1)

end

end A006094.P13488002767077913467

namespace A006094

/-- `A037166(n+1)+A000040(n+1)` -/
def P13488002767077913467.Spec : Prop :=
  ∀ n, P13488002767077913467.a n = A006094 (n + 1)

theorem P13488002767077913467.correct : P13488002767077913467.Spec := by
  intro n
  simp only [A006094, Nat.add_sub_cancel, A006094.P13488002767077913467.a, A006094.P10257567645245129766.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A037166, A037166.P14619227700024520226.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A006094

/-! ## A006094.P8175013862901879915

`A037165(n+1)+A001043(n+1)`
-/

namespace A006094.P8175013862901879915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037165 (n + 1) + A001043 (n + 1)

end

end A006094.P8175013862901879915

namespace A006094

/-- `A037165(n+1)+A001043(n+1)` -/
def P8175013862901879915.Spec : Prop :=
  ∀ n, P8175013862901879915.a n = A006094 (n + 1)

theorem P8175013862901879915.correct : P8175013862901879915.Spec := by
  intro n
  simp only [A006094, Nat.add_sub_cancel, A006094.P8175013862901879915.a, A006094.P10257567645245129766.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001043, A001043.P18269783162673735460.a, A037165, A037165.P6513622621090832271.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A006094

/-! ## A006094.P13292250074885003758

`A065091(n+1)+A037167(n+1)`
-/

namespace A006094.P13292250074885003758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1) + A037167 (n + 1)

end

end A006094.P13292250074885003758

namespace A006094

/-- `A065091(n+1)+A037167(n+1)` -/
def P13292250074885003758.Spec : Prop :=
  ∀ n, P13292250074885003758.a n = A006094 (n + 1)

theorem P13292250074885003758.correct : P13292250074885003758.Spec := by
  intro n
  simp only [A006094, Nat.add_sub_cancel, A006094.P13292250074885003758.a, A006094.P10257567645245129766.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A037167, A037167.P4374457487449018136.a, A065091, A065091.P6971844946592549357.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A006094

/-! ## A006094.P11630560688059080926

`A077338(n+1)+A073603(n+1)`
-/

namespace A006094.P11630560688059080926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077338 (n + 1) + A073603 (n + 1)

end

end A006094.P11630560688059080926

namespace A006094

/-- `A077338(n+1)+A073603(n+1)` -/
def P11630560688059080926.Spec : Prop :=
  ∀ n, P11630560688059080926.a n = A006094 (n + 1)

end A006094

/-! ## A006094.P16444411285734500932

`A291463(n+1)+A001248(n+1)`
-/

namespace A006094.P16444411285734500932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291463 (n + 1) + A001248 (n + 1)

end

end A006094.P16444411285734500932

namespace A006094

/-- `A291463(n+1)+A001248(n+1)` -/
def P16444411285734500932.Spec : Prop :=
  ∀ n, P16444411285734500932.a n = A006094 (n + 1)

theorem P16444411285734500932.correct : P16444411285734500932.Spec := by
  intro n
  simp only [A006094, Nat.add_sub_cancel, A006094.P16444411285734500932.a, A006094.P10257567645245129766.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001248, A001248.P16278241061688229202.a, A291463, A291463.P14308935140851577628.a, A001223, A001223.P5034056745985311719.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A006094

/-! ## A006094.P2780474084909016721

`A215848(n+1)+A111071(n+1)`
-/

namespace A006094.P2780474084909016721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215848 (n + 1) + A111071 (n + 1)

end

end A006094.P2780474084909016721

namespace A006094

/-- `A215848(n+1)+A111071(n+1)` -/
def P2780474084909016721.Spec : Prop :=
  ∀ n, P2780474084909016721.a n = A006094 (n + 1)

theorem P2780474084909016721.correct : P2780474084909016721.Spec := by
  intro n
  simp only [A006094, Nat.add_sub_cancel, A006094.P2780474084909016721.a, A006094.P10257567645245129766.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A111071, A111071.P17768111592594357772.a, A215848, A215848.P17068717743202425727.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A006094

/-! ## A006094.P9242882092825606936

`A391805(n+1)+A107058(n+1)`
-/

namespace A006094.P9242882092825606936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391805 (n + 1) + A107058 (n + 1)

end

end A006094.P9242882092825606936

namespace A006094

/-- `A391805(n+1)+A107058(n+1)` -/
def P9242882092825606936.Spec : Prop :=
  ∀ n, P9242882092825606936.a n = A006094 (n + 1)

end A006094

/-! ## A006094.P13527515663412290037

`A037165(n+1)+A011974(n+2)`
-/

namespace A006094.P13527515663412290037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037165 (n + 1) + A011974 (n + 2)

end

end A006094.P13527515663412290037

namespace A006094

/-- `A037165(n+1)+A011974(n+2)` -/
def P13527515663412290037.Spec : Prop :=
  ∀ n, P13527515663412290037.a n = A006094 (n + 1)

end A006094

/-! ## A006094.P10771290839830705415

`A123134(n+1)-A000040(n+1)`
-/

namespace A006094.P10771290839830705415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123134 (n + 1) - A000040 (n + 1)

end

end A006094.P10771290839830705415

namespace A006094

/-- `A123134(n+1)-A000040(n+1)` -/
def P10771290839830705415.Spec : Prop :=
  ∀ n, P10771290839830705415.a n = A006094 (n + 1)

theorem P10771290839830705415.correct : P10771290839830705415.Spec := by
  intro n
  simp only [A006094, Nat.add_sub_cancel, A006094.P10771290839830705415.a, A006094.P10257567645245129766.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A123134, A123134.P1141730384481929553.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A006094

/-! ## A006094.P4470764215744476436

`A126199(n+1)-A001043(n+1)`
-/

namespace A006094.P4470764215744476436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126199 (n + 1) - A001043 (n + 1)

end

end A006094.P4470764215744476436

namespace A006094

/-- `A126199(n+1)-A001043(n+1)` -/
def P4470764215744476436.Spec : Prop :=
  ∀ n, P4470764215744476436.a n = A006094 (n + 1)

theorem P4470764215744476436.correct : P4470764215744476436.Spec := by
  intro n
  simp only [A006094, Nat.add_sub_cancel, A006094.P4470764215744476436.a, A006094.P10257567645245129766.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001043, A001043.P18269783162673735460.a, A126199, A126199.P9184133218425217126.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A006094

/-! ## A006094.P10409475759325606534

`A076621(n+1)-A074927(n+1)`
-/

namespace A006094.P10409475759325606534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076621 (n + 1) - A074927 (n + 1)

end

end A006094.P10409475759325606534

namespace A006094

/-- `A076621(n+1)-A074927(n+1)` -/
def P10409475759325606534.Spec : Prop :=
  ∀ n, P10409475759325606534.a n = A006094 (n + 1)

theorem P10409475759325606534.correct : P10409475759325606534.Spec := by
  intro n
  simp only [A006094, Nat.add_sub_cancel, A006094.P10409475759325606534.a, A006094.P10257567645245129766.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A074927, A074927.P44526691509878723.a, A076621, A076621.P15526451203050093730.a, A048761, A048761.P914736112300567897.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A006094

/-! ## A006094.P7785486352322849239

`A286624(n+1)-A008864(n+1)`
-/

namespace A006094.P7785486352322849239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286624 (n + 1) - A008864 (n + 1)

end

end A006094.P7785486352322849239

namespace A006094

/-- `A286624(n+1)-A008864(n+1)` -/
def P7785486352322849239.Spec : Prop :=
  ∀ n, P7785486352322849239.a n = A006094 (n + 1)

theorem P7785486352322849239.correct : P7785486352322849239.Spec := by
  intro n
  simp only [A006094, Nat.add_sub_cancel, A006094.P7785486352322849239.a, A006094.P10257567645245129766.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A008864, A008864.P9177617808325052279.a, A286624, A286624.P12249411066844732850.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A006094

/-!
# A006095: Gaussian binomial coefficient [n, 2] for q = 2.

The programs for A006095, the canonical program `A006095.P3440848967568071249` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006095 has offset 0).

The definition of A006095 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A006095.P1783142176403045287

`4*a(n-1)+2^(n-1)-1` with `a(0)=0`
-/

namespace A006095.P1783142176403045287
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  4 * a (n - 1) + (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - 1

end

end A006095.P1783142176403045287

namespace A006095

/-- `4*a(n-1)+2^(n-1)-1` -/
def P1783142176403045287.Spec : Prop :=
  ∀ n, P1783142176403045287.a n = (A006095 n : ℚ)

end A006095

/-! ## A006095.P10009891253250818408

`(2^n-1)*(2^(n-1)-1)/3`
-/

namespace A006095.P10009891253250818408
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 ^ n : ℤ) - 1 : ℚ) * ((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - 1) / 3

end

end A006095.P10009891253250818408

namespace A006095

/-- `(2^n-1)*(2^(n-1)-1)/3` -/
def P10009891253250818408.Spec : Prop :=
  ∀ n, P10009891253250818408.a n = (A006095 n : ℚ)

end A006095

/-! ## A006095.P3440848967568071249

`a(n-1)+A000217(A000225(n-1))` with `a(0)=0`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A006095

/-- `a(n-1)+A000217(A000225(n-1))` -/
def P3440848967568071249.Spec : Prop :=
  ∀ n, P3440848967568071249.a n = A006095 n

theorem P3440848967568071249.correct : P3440848967568071249.Spec := by
  intro n
  simp only [A006095]

end A006095

/-! ## A006095.P1673778891764092158

`∑[ogf(x^2/(1-6x+8x^2))]`
-/

namespace A006095.P1673778891764092158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 1] [1, -6, 8] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006095.P1673778891764092158

namespace A006095

/-- `∑[ogf(x^2/(1-6x+8x^2))]` -/
def P1673778891764092158.Spec : Prop :=
  ∀ n, P1673778891764092158.a n = A006095 n

end A006095

/-! ## A006095.P337880478584211390

`xor((2^n+1)*(2^n+2)/6, 2^n)`
-/

namespace A006095.P337880478584211390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (SequenceMachineLib.roundAway ((2 ^ n + 1 : ℚ) * ((2 ^ n + 2 : ℚ) / 6))) (2 ^ n : ℤ)

end

end A006095.P337880478584211390

namespace A006095

/-- `xor((2^n+1)*(2^n+2)/6, 2^n)` -/
def P337880478584211390.Spec : Prop :=
  ∀ n, P337880478584211390.a n = A006095 n

end A006095

/-! ## A006095.P10154930988513335835

`or(1, 2*(3*a(n-1)-4*a(n-2)))` with `a(0)=0, a(1)=0`
-/

namespace A006095.P10154930988513335835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  Int.lor 1 (2 * (3 * a (n - 1) - 4 * a (n - 2)))

end

end A006095.P10154930988513335835

namespace A006095

/-- `or(1, 2*(3*a(n-1)-4*a(n-2)))` -/
def P10154930988513335835.Spec : Prop :=
  ∀ n, P10154930988513335835.a n = A006095 n

end A006095

/-! ## A006095.P18388073158601507365

`A007581(n)-2^n`
-/

namespace A006095.P18388073158601507365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007581 n - (2 ^ n : ℤ)

end

end A006095.P18388073158601507365

namespace A006095

/-- `A007581(n)-2^n` -/
def P18388073158601507365.Spec : Prop :=
  ∀ n, P18388073158601507365.a n = A006095 n

end A006095

/-! ## A006095.P15510600556654422842

`A076024(n)+1-2^n`
-/

namespace A006095.P15510600556654422842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076024 n + (1 - (2 ^ n : ℤ))

end

end A006095.P15510600556654422842

namespace A006095

/-- `A076024(n)+1-2^n` -/
def P15510600556654422842.Spec : Prop :=
  ∀ n, P15510600556654422842.a n = A006095 n

end A006095

/-! ## A006095.P68064667414568990

`A124303(n+1)-2^n`
-/

namespace A006095.P68064667414568990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124303 (n + 1) - (2 ^ n : ℤ)

end

end A006095.P68064667414568990

namespace A006095

/-- `A124303(n+1)-2^n` -/
def P68064667414568990.Spec : Prop :=
  ∀ n, P68064667414568990.a n = A006095 n

end A006095

/-! ## A006095.P10677311174055073942

`A006516(n-1)+a(n-1)` with `a(0)=0`
-/

namespace A006095.P10677311174055073942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A006516 (n - 1) + a (n - 1)

end

end A006095.P10677311174055073942

namespace A006095

/-- `A006516(n-1)+a(n-1)` -/
def P10677311174055073942.Spec : Prop :=
  ∀ n, P10677311174055073942.a n = A006095 n

end A006095

/-! ## A006095.P4600238286556382894

`A131577(n)+4*a(n-1)-1` with `a(0)=0`
-/

namespace A006095.P4600238286556382894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A131577 n + (4 * a (n - 1) - 1)

end

end A006095.P4600238286556382894

namespace A006095

/-- `A131577(n)+4*a(n-1)-1` -/
def P4600238286556382894.Spec : Prop :=
  ∀ n, P4600238286556382894.a n = A006095 n

end A006095

/-! ## A006095.P4237821063741652816

`A039301(n)-A094373(n)`
-/

namespace A006095.P4237821063741652816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039301 n - A094373 n

end

end A006095.P4237821063741652816

namespace A006095

/-- `A039301(n)-A094373(n)` -/
def P4237821063741652816.Spec : Prop :=
  ∀ n, P4237821063741652816.a n = A006095 n

end A006095

/-! ## A006095.P4524939098563286722

`A087433(n)-A085281(n)`
-/

namespace A006095.P4524939098563286722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087433 n - A085281 n

end

end A006095.P4524939098563286722

namespace A006095

/-- `A087433(n)-A085281(n)` -/
def P4524939098563286722.Spec : Prop :=
  ∀ n, P4524939098563286722.a n = A006095 n

end A006095

/-! ## A006095.P13129591467545646171

`A360168(n)-A005317(n)`
-/

namespace A006095.P13129591467545646171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360168 n - A005317 n

end

end A006095.P13129591467545646171

namespace A006095

/-- `A360168(n)-A005317(n)` -/
def P13129591467545646171.Spec : Prop :=
  ∀ n, P13129591467545646171.a n = A006095 n

end A006095

/-! ## A006095.P8913886599662300855

`A123166(n)-A274232(n)`
-/

namespace A006095.P8913886599662300855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123166 n - A274232 n

end

end A006095.P8913886599662300855

namespace A006095

/-- `A123166(n)-A274232(n)` -/
def P8913886599662300855.Spec : Prop :=
  ∀ n, P8913886599662300855.a n = A006095 n

end A006095

/-! ## A006095.P3301148453565163740

`A076024(n)+1-A000079(n)`
-/

namespace A006095.P3301148453565163740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076024 n + 1 - A000079 n

end

end A006095.P3301148453565163740

namespace A006095

/-- `A076024(n)+1-A000079(n)` -/
def P3301148453565163740.Spec : Prop :=
  ∀ n, P3301148453565163740.a n = A006095 n

end A006095

/-! ## A006095.P5473133654386435544

`A056505(2*n+1)-A000079(n)`
-/

namespace A006095.P5473133654386435544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056505 (2 * n + 1) - A000079 n

end

end A006095.P5473133654386435544

namespace A006095

/-- `A056505(2*n+1)-A000079(n)` -/
def P5473133654386435544.Spec : Prop :=
  ∀ n, P5473133654386435544.a n = A006095 n

end A006095

/-! ## A006095.P2566465473360893266

`A056510(2*n+1)+A000392(n+1)`
-/

namespace A006095.P2566465473360893266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056510 (2 * n + 1) + A000392 (n + 1)

end

end A006095.P2566465473360893266

namespace A006095

/-- `A056510(2*n+1)+A000392(n+1)` -/
def P2566465473360893266.Spec : Prop :=
  ∀ n, P2566465473360893266.a n = A006095 n

end A006095

/-! ## A006095.P15383156013581403708

`A056510(2*n+1)+A056509(2*n+1)`
-/

namespace A006095.P15383156013581403708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056510 (2 * n + 1) + A056509 (2 * n + 1)

end

end A006095.P15383156013581403708

namespace A006095

/-- `A056510(2*n+1)+A056509(2*n+1)` -/
def P15383156013581403708.Spec : Prop :=
  ∀ n, P15383156013581403708.a n = A006095 n

end A006095

/-! ## A006095.P5920419679642919111

`a(n-1)+C(2^(n-1), 2)` with `a(0)=0`
-/

namespace A006095.P5920419679642919111
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + Nat.choose (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ))).toNat 2

end

end A006095.P5920419679642919111

namespace A006095

/-- `a(n-1)+C(2^(n-1), 2)` -/
def P5920419679642919111.Spec : Prop :=
  ∀ n, (P5920419679642919111.a n : ℤ) = A006095 n

end A006095

/-!
# A006096: Gaussian binomial coefficient [n, 3] for q = 2.

The programs for A006096, the canonical program `A006096.P6553002386077223711` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006096 has offset 3).

The definition of A006096 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A006096.P6553002386077223711

`(8^(n+3)-7*4^(n+3)+14*2^(n+3)-8)/168`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A006096

/-- `(8^(n+3)-7*4^(n+3)+14*2^(n+3)-8)/168` -/
def P6553002386077223711.Spec : Prop :=
  ∀ n, P6553002386077223711.a n = (A006096 (n + 3) : ℚ)

end A006096

/-! ## A006096.P5862814765213875519

`∑[A016290(n)]`
-/

namespace A006096.P5862814765213875519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016290 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006096.P5862814765213875519

namespace A006096

/-- `∑[A016290(n)]` -/
def P5862814765213875519.Spec : Prop :=
  ∀ n, P5862814765213875519.a n = A006096 (n + 3)

end A006096

/-! ## A006096.P1028346981572376493

`a(n-1)+A016224(n)+a(n-1)` with `a(0)=1`
-/

namespace A006096.P1028346981572376493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A016224 n + a (n - 1))

end

end A006096.P1028346981572376493

namespace A006096

/-- `a(n-1)+A016224(n)+a(n-1)` -/
def P1028346981572376493.Spec : Prop :=
  ∀ n, P1028346981572376493.a n = A006096 (n + 3)

end A006096

/-! ## A006096.P4444602149960628766

`∑[A025467(n)+A016277(n)]-A025467(n)`
-/

namespace A006096.P4444602149960628766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025467 n + A016277 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A025467 n

end

end A006096.P4444602149960628766

namespace A006096

/-- `∑[A025467(n)+A016277(n)]-A025467(n)` -/
def P4444602149960628766.Spec : Prop :=
  ∀ n, P4444602149960628766.a n = A006096 (n + 3)

end A006096

/-! ## A006096.P6823902086556153797

`∑[C(2^(n+2), 3)/4]`
-/

namespace A006096.P6823902086556153797
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 ^ (n + 2)) 3 : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006096.P6823902086556153797

namespace A006096

/-- `∑[C(2^(n+2), 3)/4]` -/
def P6823902086556153797.Spec : Prop :=
  ∀ n, P6823902086556153797.a n = (A006096 (n + 3) : ℚ)

end A006096

/-!
# A006097: Gaussian binomial coefficient [n, 4] for q = 2.

The programs for A006097, there is no canonical definition to state claims against.
-/

/-! ## A006097.P11398209132929658391

`∑[A028258(n)]`
-/

namespace A006097.P11398209132929658391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028258 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006097.P11398209132929658391

/-! ## A006097.P12685509522525005062

`A177728(n)-14*a(n-1)` with `a(0)=1`
-/

namespace A006097.P12685509522525005062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A177728 n - 14 * a (n - 1)

end

end A006097.P12685509522525005062

/-! ## A006097.P7227076584912589167

`∑[∑[A016290(n)]*A000079(n)]`
-/

namespace A006097.P7227076584912589167
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016290 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) * A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006097.P7227076584912589167

/-! ## A006097.P9376991301644993443

`∑[A000079(n)*A006096(n+3)]`
-/

namespace A006097.P9376991301644993443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A006096 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006097.P9376991301644993443

/-! ## A006097.P8624579676959252650

`∑[Δ[A000051(n)]*A006096(n+3)]`
-/

namespace A006097.P8624579676959252650
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A006096 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006097.P8624579676959252650

/-! ## A006097.P10946971921748369806

`∑[Δ[A000225(n)]*A006096(n+3)]`
-/

namespace A006097.P10946971921748369806
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A006096 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006097.P10946971921748369806

/-! ## A006097.P12867158695064539969

`∑[Δ[A000918(n)]*A006096(n+3)]`
-/

namespace A006097.P12867158695064539969
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000918 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A006096 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006097.P12867158695064539969

/-! ## A006097.P10995554818895663624

`A308436(n)/2^n`
-/

namespace A006097.P10995554818895663624
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A308436 n : ℚ) / (2 ^ n : ℚ)

end

end A006097.P10995554818895663624

/-!
# A006098: Gaussian binomial coefficient [ 2n,n ] for q=2.

The programs for A006098, there is no canonical definition to state claims against.
-/

/-! ## A006098.P11781394016522300999

`A006099(2*n)`
-/

namespace A006098.P11781394016522300999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006099 (2 * n)

end

end A006098.P11781394016522300999

/-! ## A006098.P17932764835566911990

`A022166(∑[4*n])`
-/

namespace A006098.P17932764835566911990
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022166 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A006098.P17932764835566911990

/-! ## A006098.P11831740181905619196

`or(1, A006099(A004277(n)))`
-/

namespace A006098.P11831740181905619196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A006099 (A004277 n).toNat)

end

end A006098.P11831740181905619196

/-! ## A006098.P15097992460566771835

`or(1, A006099(A005843(n)))`
-/

namespace A006098.P15097992460566771835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A006099 (A005843 n).toNat)

end

end A006098.P15097992460566771835

/-! ## A006098.P14414720005346629860

`A083318(n)*A218449(n)`
-/

namespace A006098.P14414720005346629860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083318 n * A218449 n

end

end A006098.P14414720005346629860

/-!
# A006099: Gaussian binomial coefficient [ n, n/2 ] for q=2.

The programs for A006099, there is no canonical definition to state claims against.
-/

/-! ## A006099.P1821028912973959857

`A022166(∑[or(1, n)]-1)`
-/

namespace A006099.P1821028912973959857
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022166 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A006099.P1821028912973959857

/-! ## A006099.P9097080782261116861

`A022166(floor(n²/2)+n)`
-/

namespace A006099.P9097080782261116861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022166 (⌊(n ^ 2 : ℚ) / 2⌋ + (n : ℤ)).toNat

end

end A006099.P9097080782261116861

/-! ## A006099.P15683339476327724031

`or(1, A022166(A194274(n)))`
-/

namespace A006099.P15683339476327724031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A022166 (A194274 n).toNat)

end

end A006099.P15683339476327724031

/-! ## A006099.P3526864754648360837

`∏[A255047(n)/A255047(A065033(n))]`
-/

namespace A006099.P3526864754648360837
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A255047 n : ℚ) / (A255047 (A065033 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A006099.P3526864754648360837

/-! ## A006099.P10481839771651942294

`A022166(A194274(n))*A178334(n+2)`
-/

namespace A006099.P10481839771651942294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022166 (A194274 n).toNat * A178334 (n + 2)

end

end A006099.P10481839771651942294

