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
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
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
import Seq.B001.C009
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
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B012.C000
import Seq.B013.C000
import Seq.B014.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
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
# A128000: Numbers k such that (28^k - 1)/27 is prime.

The programs for A128000, there is no canonical definition to state claims against.
-/

/-! ## A128000.P7853340189621467118

`p?[xor(10, A098057(n+4))]`
-/

namespace A128000.P7853340189621467118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 10 (A098057 (n + 4))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A128000.P7853340189621467118

/-!
# A128001: Numbers k such that (k-1)*2^k + 1 is prime.

The programs for A128001, there is no canonical definition to state claims against.
-/

/-! ## A128001.P16765438946011114183

`A119529(n+1)-1`
-/

namespace A128001.P16765438946011114183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119529 (n + 1) - 1

end

end A128001.P16765438946011114183

/-! ## A128001.P16142941233143755811

`A353445(3*n+4)+A119529(n+1)`
-/

namespace A128001.P16142941233143755811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353445 (3 * n + 4) + A119529 (n + 1)

end

end A128001.P16142941233143755811

/-! ## A128001.P13544996841540701990

`A153881(4*(n+1)+1)+A119529(n+1)`
-/

namespace A128001.P13544996841540701990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (4 * (n + 1) + 1) + A119529 (n + 1)

end

end A128001.P13544996841540701990

/-! ## A128001.P14739858409507959313

`A321804(A000120(n))+A119529(n+1)`
-/

namespace A128001.P14739858409507959313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321804 (A000120 n).toNat + A119529 (n + 1)

end

end A128001.P14739858409507959313

/-! ## A128001.P14355404388205244470

`A321804(A000700(n))+A119529(n+1)`
-/

namespace A128001.P14355404388205244470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321804 (A000700 n).toNat + A119529 (n + 1)

end

end A128001.P14355404388205244470

/-!
# A128003: Numbers k such that (37^k - 1)/36 is prime.

The programs for A128003, there is no canonical definition to state claims against.
-/

/-! ## A128003.P11724242794335147086

`A000040(∩[A087743(n+1), A087150(n+2)])`
-/

namespace A128003.P11724242794335147086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087743 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087150 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A128003.P11724242794335147086

/-!
# A128005: Numbers k such that (40^k - 1)/39 is prime.

The programs for A128005, there is no canonical definition to state claims against.
-/

/-! ## A128005.P1768325064746325498

`∪[A097934(n+1), A097964(A097961(n+1))]`
-/

namespace A128005.P1768325064746325498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097934 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097964 (A097961 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A128005.P1768325064746325498

/-!
# A128008: Numerators of rational-valued radii of circles given by 3 distinct integer points in the 3-dimensional Euclidean space.

The programs for A128008, there is no canonical definition to state claims against.
-/

/-! ## A128008.P11229073847619174059

`A128010(lt[2, A215734(n+1)])`
-/

namespace A128008.P11229073847619174059
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215734 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128010 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A128008.P11229073847619174059

/-! ## A128008.P7799970262064554286

`A128010(∑[gcd(n, A320800(n))])`
-/

namespace A128008.P7799970262064554286
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A320800 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128010 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A128008.P7799970262064554286

/-!
# A128009: Denominators of rational-valued radii of circles given by 3 distinct integer points in the 3-dimensional Euclidean space.

The programs for A128009, there is no canonical definition to state claims against.
-/

/-! ## A128009.P2815833265848812044

`A128011(lt[2, A215734(n+1)])`
-/

namespace A128009.P2815833265848812044
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215734 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128011 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A128009.P2815833265848812044

/-!
# A128012: a(n) = 3*A001399(n).

The programs for A128012, the canonical program `A128012.P6644255252158757568` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128012 has offset 0).

The definition of A128012 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A128012.P6644255252158757568

`3*A001399(n)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A128012

/-- `3*A001399(n)` -/
def P6644255252158757568.Spec : Prop :=
  ∀ n, P6644255252158757568.a n = A128012 n

theorem P6644255252158757568.correct : P6644255252158757568.Spec := by
  intro n
  simp only [A128012]

end A128012

/-! ## A128012.P11643091722827939582

`3*round((n+3)²/12)`
-/

namespace A128012.P11643091722827939582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * SequenceMachineLib.roundAway (((n + 3) ^ 2 : ℚ) / 12)

end

end A128012.P11643091722827939582

namespace A128012

/-- `3*round((n+3)²/12)` -/
def P11643091722827939582.Spec : Prop :=
  ∀ n, P11643091722827939582.a n = A128012 n

end A128012

/-! ## A128012.P10864049507783226717

`∑[3*ceil(xor(1, n)/6)]`
-/

namespace A128012.P10864049507783226717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * ⌈(Nat.xor 1 n : ℚ) / 6⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A128012.P10864049507783226717

namespace A128012

/-- `∑[3*ceil(xor(1, n)/6)]` -/
def P10864049507783226717.Spec : Prop :=
  ∀ n, P10864049507783226717.a n = A128012 n

end A128012

/-! ## A128012.P5046217841211123195

`∑[∑[∑[ogf(3/(1+2x+2x^2+x^3))]]]`
-/

namespace A128012.P5046217841211123195
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3] [1, 2, 2, 1] n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A128012.P5046217841211123195

namespace A128012

/-- `∑[∑[∑[ogf(3/(1+2x+2x^2+x^3))]]]` -/
def P5046217841211123195.Spec : Prop :=
  ∀ n, P5046217841211123195.a n = A128012 n

end A128012

/-! ## A128012.P924042447874236576

`∑[∑[3*round(sin(4)^(n%6))]]`
-/

namespace A128012.P924042447874236576
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * SequenceMachineLib.roundAway (Real.sin (4 : ℝ) ^ (n % 6))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A128012.P924042447874236576

namespace A128012

/-- `∑[∑[3*round(sin(4)^(n%6))]]` -/
def P924042447874236576.Spec : Prop :=
  ∀ n, P924042447874236576.a n = A128012 n

end A128012

/-! ## A128012.P16941399435529886463

`ceil(((n+3)/2)²)-n²%3`
-/

namespace A128012.P16941399435529886463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n + 3 : ℚ) / 2) ^ 2⌉ - ((n ^ 2 % 3 : ℕ) : ℤ)

end

end A128012.P16941399435529886463

namespace A128012

/-- `ceil(((n+3)/2)²)-n²%3` -/
def P16941399435529886463.Spec : Prop :=
  ∀ n, P16941399435529886463.a n = A128012 n

end A128012

/-! ## A128012.P8380342110432331162

`∑[a(gcd(2, n))+a(n-3)]` with `a(0)=3, a(1)=0, a(2)=3`
-/

namespace A128012.P8380342110432331162
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 0, 3] fun n f1 =>
  f1 (Nat.gcd 2 n) + f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A128012.P8380342110432331162

namespace A128012

/-- `∑[a(gcd(2, n))+a(n-3)]` -/
def P8380342110432331162.Spec : Prop :=
  ∀ n, (P8380342110432331162.a n : ℤ) = A128012 n

end A128012

/-! ## A128012.P3011110331394467131

`∑[a(n-3)-(1-n²)%4]` with `a(0)=3, a(1)=0, a(2)=3`
-/

namespace A128012.P3011110331394467131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 0, 3] fun n f1 =>
  f1 (n - 3) - Int.tmod (1 - (n ^ 2 : ℤ)) 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A128012.P3011110331394467131

namespace A128012

/-- `∑[a(n-3)-(1-n²)%4]` -/
def P3011110331394467131.Spec : Prop :=
  ∀ n, P3011110331394467131.a n = A128012 n

end A128012

/-! ## A128012.P4464504309601297187

`∑[a(n-2)+3]-(a(n-1)+a(n-2))` with `a(0)=3, a(1)=3`
-/

namespace A128012.P4464504309601297187
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 3] fun n f1 =>
  f1 (n - 2) + 3

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 3] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (a (n - 1) + a (n - 2))

end

end A128012.P4464504309601297187

namespace A128012

/-- `∑[a(n-2)+3]-(a(n-1)+a(n-2))` -/
def P4464504309601297187.Spec : Prop :=
  ∀ n, P4464504309601297187.a n = A128012 n

end A128012

/-! ## A128012.P9560852069396003437

`∑[∑[floor(a(n-2))]-a(n-1)-a(n-2)]` with `a(0)=3, a(1)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A128012.P9560852069396003437
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [3, 0] fun n f2 =>
  f2 (n - 2)

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 0] fun n f1 =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - f1 (n - 1) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A128012.P9560852069396003437

namespace A128012

/-- `∑[∑[floor(a(n-2))]-a(n-1)-a(n-2)]` -/
def P9560852069396003437.Spec : Prop :=
  ∀ n, P9560852069396003437.a n = A128012 n

end A128012

/-! ## A128012.P8831333423184594200

`∑[3*A103221(n)]`
-/

namespace A128012.P8831333423184594200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A103221 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A128012.P8831333423184594200

namespace A128012

/-- `∑[3*A103221(n)]` -/
def P8831333423184594200.Spec : Prop :=
  ∀ n, P8831333423184594200.a n = A128012 n

end A128012

/-! ## A128012.P6437390354855839766

`∑[∑[3*A115360(n)]]`
-/

namespace A128012.P6437390354855839766
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A115360 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A128012.P6437390354855839766

namespace A128012

/-- `∑[∑[3*A115360(n)]]` -/
def P6437390354855839766.Spec : Prop :=
  ∀ n, P6437390354855839766.a n = A128012 n

end A128012

/-! ## A128012.P13516379014081601022

`A079524(n)+A052901(n)`
-/

namespace A128012.P13516379014081601022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079524 n + A052901 n

end

end A128012.P13516379014081601022

namespace A128012

/-- `A079524(n)+A052901(n)` -/
def P13516379014081601022.Spec : Prop :=
  ∀ n, P13516379014081601022.a n = A128012 n

end A128012

/-! ## A128012.P579397655142133690

`A236337(n)+A008806(n)`
-/

namespace A128012.P579397655142133690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236337 n + A008806 n

end

end A128012.P579397655142133690

namespace A128012

/-- `A236337(n)+A008806(n)` -/
def P579397655142133690.Spec : Prop :=
  ∀ n, P579397655142133690.a n = A128012 n

end A128012

/-! ## A128012.P1563793680334970084

`∑[A168237(A008611(n)+1)]`
-/

namespace A128012.P1563793680334970084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168237 (A008611 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A128012.P1563793680334970084

namespace A128012

/-- `∑[A168237(A008611(n)+1)]` -/
def P1563793680334970084.Spec : Prop :=
  ∀ n, P1563793680334970084.a n = A128012 n

end A128012

/-! ## A128012.P8520726505661663797

`A242774(n+1)+A212986(n)`
-/

namespace A128012.P8520726505661663797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242774 (n + 1) + A212986 n

end

end A128012.P8520726505661663797

namespace A128012

/-- `A242774(n+1)+A212986(n)` -/
def P8520726505661663797.Spec : Prop :=
  ∀ n, P8520726505661663797.a n = A128012 n

end A128012

/-! ## A128012.P17014837306099983975

`A387996(n+3)+A008620(n)`
-/

namespace A128012.P17014837306099983975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387996 (n + 3) + A008620 n

end

end A128012.P17014837306099983975

namespace A128012

/-- `A387996(n+3)+A008620(n)` -/
def P17014837306099983975.Spec : Prop :=
  ∀ n, P17014837306099983975.a n = A128012 n

end A128012

/-! ## A128012.P13038257332462011753

`∑[A028242(n)+A049347(n)+1]`
-/

namespace A128012.P13038257332462011753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 n + (A049347 n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A128012.P13038257332462011753

namespace A128012

/-- `∑[A028242(n)+A049347(n)+1]` -/
def P13038257332462011753.Spec : Prop :=
  ∀ n, P13038257332462011753.a n = A128012 n

end A128012

/-! ## A128012.P11171827206954706261

`∑[A236348(n)+2-A030451(n)]`
-/

namespace A128012.P11171827206954706261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236348 n + (2 - A030451 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A128012.P11171827206954706261

namespace A128012

/-- `∑[A236348(n)+2-A030451(n)]` -/
def P11171827206954706261.Spec : Prop :=
  ∀ n, P11171827206954706261.a n = A128012 n

end A128012

/-! ## A128012.P6232663818014137506

`∑[3*A008615(n+2)]`
-/

namespace A128012.P6232663818014137506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A008615 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A128012.P6232663818014137506

namespace A128012

/-- `∑[3*A008615(n+2)]` -/
def P6232663818014137506.Spec : Prop :=
  ∀ n, P6232663818014137506.a n = A128012 n

end A128012

/-!
# A128013: a(n) = (n^3 +n)*5^n.

The programs for A128013, the canonical program `A128013.P1693886840437840183` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128013 has offset 1).

The definition of A128013 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `((n+1)^3+n+1)*5^(n+1)` (program `A128013.P1693886840437840183`, by `A128013.P1693886840437840183.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A128013.P1693886840437840183

`((n+1)^3+n+1)*5^(n+1)`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A128013

/-- `((n+1)^3+n+1)*5^(n+1)` -/
def P1693886840437840183.Spec : Prop :=
  ∀ n, (P1693886840437840183.a n : ℤ) = A128013 (n + 1)

theorem P1693886840437840183.correct : P1693886840437840183.Spec := by
  intro n
  simp only [A128013, Nat.add_sub_cancel]

end A128013

/-! ## A128013.P14637056597033142619

`abs(5^(n+1)*Δ[A001621(n)])`
-/

namespace A128013.P14637056597033142619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001621 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(5 ^ (n + 1) : ℤ) * (f1 (n + 1) - f1 n)|

end

end A128013.P14637056597033142619

namespace A128013

/-- `abs(5^(n+1)*Δ[A001621(n)])` -/
def P14637056597033142619.Spec : Prop :=
  ∀ n, P14637056597033142619.a n = A128013 (n + 1)

end A128013

/-! ## A128013.P6751749776121302303

`A128791(n+1)+A036291(n+1)`
-/

namespace A128013.P6751749776121302303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128791 (n + 1) + A036291 (n + 1)

end

end A128013.P6751749776121302303

namespace A128013

/-- `A128791(n+1)+A036291(n+1)` -/
def P6751749776121302303.Spec : Prop :=
  ∀ n, P6751749776121302303.a n = A128013 (n + 1)

end A128013

/-! ## A128013.P2741535039297307667

`A128988(n+1)+A116156(n+1)`
-/

namespace A128013.P2741535039297307667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128988 (n + 1) + A116156 (n + 1)

end

end A128013.P2741535039297307667

namespace A128013

/-- `A128988(n+1)+A116156(n+1)` -/
def P2741535039297307667.Spec : Prop :=
  ∀ n, P2741535039297307667.a n = A128013 (n + 1)

end A128013

/-! ## A128013.P16897675460987283021

`A129005(n+1)-A128799(n+1)`
-/

namespace A128013.P16897675460987283021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129005 (n + 1) - A128799 (n + 1)

end

end A128013.P16897675460987283021

namespace A128013

/-- `A129005(n+1)-A128799(n+1)` -/
def P16897675460987283021.Spec : Prop :=
  ∀ n, P16897675460987283021.a n = A128013 (n + 1)

end A128013

/-! ## A128013.P9007497362289673583

`A128791(n+1)+A128784(n+1)/(n+1)`
-/

namespace A128013.P9007497362289673583
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128791 (n + 1) : ℚ) + (A128784 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A128013.P9007497362289673583

namespace A128013

/-- `A128791(n+1)+A128784(n+1)/(n+1)` -/
def P9007497362289673583.Spec : Prop :=
  ∀ n, P9007497362289673583.a n = (A128013 (n + 1) : ℚ)

end A128013

/-!
# A128014: Central binomial coefficients C(2k,k) repeated.

The programs for A128014, the canonical program `A128014.P14973855882904292349` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128014 has offset 0).

The definition of A128014 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A128014.P14973855882904292349

`A000984(floor(n/2))`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A128014

/-- `A000984(floor(n/2))` -/
def P14973855882904292349.Spec : Prop :=
  ∀ n, P14973855882904292349.a n = A128014 n

theorem P14973855882904292349.correct : P14973855882904292349.Spec := by
  intro n
  simp only [A128014]

end A128014

/-! ## A128014.P8955899706721393643

`A249308(n)/2^n`
-/

namespace A128014.P8955899706721393643
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A249308 n : ℚ) / (2 ^ n : ℚ)

end

end A128014.P8955899706721393643

namespace A128014

/-- `A249308(n)/2^n` -/
def P8955899706721393643.Spec : Prop :=
  ∀ n, P8955899706721393643.a n = (A128014 n : ℚ)

end A128014

/-! ## A128014.P7940522041023925070

`A047074(or(1, n))`
-/

namespace A128014.P7940522041023925070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047074 (Nat.lor 1 n)

end

end A128014.P7940522041023925070

namespace A128014

/-- `A047074(or(1, n))` -/
def P7940522041023925070.Spec : Prop :=
  ∀ n, P7940522041023925070.a n = A128014 n

end A128014

/-! ## A128014.P16321588929032648300

`A210736(or(1, n))`
-/

namespace A128014.P16321588929032648300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210736 (Nat.lor 1 n)

end

end A128014.P16321588929032648300

namespace A128014

/-- `A210736(or(1, n))` -/
def P16321588929032648300.Spec : Prop :=
  ∀ n, P16321588929032648300.a n = A128014 n

end A128014

/-! ## A128014.P7136287226291823056

`A241543(or(1, n))`
-/

namespace A128014.P7136287226291823056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241543 (Nat.lor 1 n)

end

end A128014.P7136287226291823056

namespace A128014

/-- `A241543(or(1, n))` -/
def P7136287226291823056.Spec : Prop :=
  ∀ n, P7136287226291823056.a n = A128014 n

end A128014

/-! ## A128014.P2338998458948805142

`A191529(or(1, n)+1)`
-/

namespace A128014.P2338998458948805142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191529 (Nat.lor 1 n + 1)

end

end A128014.P2338998458948805142

namespace A128014

/-- `A191529(or(1, n)+1)` -/
def P2338998458948805142.Spec : Prop :=
  ∀ n, P2338998458948805142.a n = A128014 n

end A128014

/-! ## A128014.P13635276521430235566

`A001405(or(1, n)-1)`
-/

namespace A128014.P13635276521430235566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (Nat.lor 1 n - 1)

end

end A128014.P13635276521430235566

namespace A128014

/-- `A001405(or(1, n)-1)` -/
def P13635276521430235566.Spec : Prop :=
  ∀ n, P13635276521430235566.a n = A128014 n

end A128014

/-! ## A128014.P4455150637176556762

`A063886(or(1, n)-1)`
-/

namespace A128014.P4455150637176556762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063886 (Nat.lor 1 n - 1)

end

end A128014.P4455150637176556762

namespace A128014

/-- `A063886(or(1, n)-1)` -/
def P4455150637176556762.Spec : Prop :=
  ∀ n, P4455150637176556762.a n = A128014 n

end A128014

/-! ## A128014.P34893432243078528

`A081668(or(1, n)-1)`
-/

namespace A128014.P34893432243078528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081668 (Nat.lor 1 n - 1)

end

end A128014.P34893432243078528

namespace A128014

/-- `A081668(or(1, n)-1)` -/
def P34893432243078528.Spec : Prop :=
  ∀ n, P34893432243078528.a n = A128014 n

end A128014

/-! ## A128014.P556656173311314728

`A126869(or(1, n)-1)`
-/

namespace A128014.P556656173311314728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126869 (Nat.lor 1 n - 1)

end

end A128014.P556656173311314728

namespace A128014

/-- `A126869(or(1, n)-1)` -/
def P556656173311314728.Spec : Prop :=
  ∀ n, P556656173311314728.a n = A128014 n

end A128014

/-! ## A128014.P16599052198439994835

`A126930(or(1, n)-1)`
-/

namespace A128014.P16599052198439994835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126930 (Nat.lor 1 n - 1)

end

end A128014.P16599052198439994835

namespace A128014

/-- `A126930(or(1, n)-1)` -/
def P16599052198439994835.Spec : Prop :=
  ∀ n, P16599052198439994835.a n = A128014 n

end A128014

/-! ## A128014.P10555928149342223490

`A129383(or(1, n)-1)`
-/

namespace A128014.P10555928149342223490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129383 (Nat.lor 1 n - 1)

end

end A128014.P10555928149342223490

namespace A128014

/-- `A129383(or(1, n)-1)` -/
def P10555928149342223490.Spec : Prop :=
  ∀ n, P10555928149342223490.a n = A128014 n

end A128014

/-! ## A128014.P7420436302170875178

`A001405(n-and(1, n))`
-/

namespace A128014.P7420436302170875178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (n - Nat.land 1 n)

end

end A128014.P7420436302170875178

namespace A128014

/-- `A001405(n-and(1, n))` -/
def P7420436302170875178.Spec : Prop :=
  ∀ n, P7420436302170875178.a n = A128014 n

end A128014

/-! ## A128014.P18283116681860690519

`A063886(n-and(1, n))`
-/

namespace A128014.P18283116681860690519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063886 (n - Nat.land 1 n)

end

end A128014.P18283116681860690519

namespace A128014

/-- `A063886(n-and(1, n))` -/
def P18283116681860690519.Spec : Prop :=
  ∀ n, P18283116681860690519.a n = A128014 n

end A128014

/-! ## A128014.P15344030208872012142

`A081668(n-and(1, n))`
-/

namespace A128014.P15344030208872012142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081668 (n - Nat.land 1 n)

end

end A128014.P15344030208872012142

namespace A128014

/-- `A081668(n-and(1, n))` -/
def P15344030208872012142.Spec : Prop :=
  ∀ n, P15344030208872012142.a n = A128014 n

end A128014

/-! ## A128014.P17181304744846358750

`A126869(n-and(1, n))`
-/

namespace A128014.P17181304744846358750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126869 (n - Nat.land 1 n)

end

end A128014.P17181304744846358750

namespace A128014

/-- `A126869(n-and(1, n))` -/
def P17181304744846358750.Spec : Prop :=
  ∀ n, P17181304744846358750.a n = A128014 n

end A128014

/-! ## A128014.P18362006755758525531

`A126930(n-and(1, n))`
-/

namespace A128014.P18362006755758525531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126930 (n - Nat.land 1 n)

end

end A128014.P18362006755758525531

namespace A128014

/-- `A126930(n-and(1, n))` -/
def P18362006755758525531.Spec : Prop :=
  ∀ n, P18362006755758525531.a n = A128014 n

end A128014

/-! ## A128014.P12617269971223926289

`A001405(2*floor(n/2))`
-/

namespace A128014.P12617269971223926289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (2 * ⌊(n : ℚ) / 2⌋).toNat

end

end A128014.P12617269971223926289

namespace A128014

/-- `A001405(2*floor(n/2))` -/
def P12617269971223926289.Spec : Prop :=
  ∀ n, P12617269971223926289.a n = A128014 n

end A128014

/-! ## A128014.P12422045360110393280

`A047074(A109613(n))`
-/

namespace A128014.P12422045360110393280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047074 (A109613 n).toNat

end

end A128014.P12422045360110393280

namespace A128014

/-- `A047074(A109613(n))` -/
def P12422045360110393280.Spec : Prop :=
  ∀ n, P12422045360110393280.a n = A128014 n

end A128014

/-! ## A128014.P1076585324120971698

`A126869(A052928(n))`
-/

namespace A128014.P1076585324120971698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126869 (A052928 n).toNat

end

end A128014.P1076585324120971698

namespace A128014

/-- `A126869(A052928(n))` -/
def P1076585324120971698.Spec : Prop :=
  ∀ n, P1076585324120971698.a n = A128014 n

end A128014

/-!
# A128015: Binomial coefficients C(2n+1,n) repeated.

The programs for A128015, the canonical program `A128015.P10514109544123234359` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128015 has offset 0).

The definition of A128015 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A128015.P10514109544123234359

`A001700(floor(n/2))`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A128015

/-- `A001700(floor(n/2))` -/
def P10514109544123234359.Spec : Prop :=
  ∀ n, P10514109544123234359.a n = A128015 n

theorem P10514109544123234359.correct : P10514109544123234359.Spec := by
  intro n
  simp only [A128015]

end A128015

/-! ## A128015.P4186914863931134188

`abs(Δ[4/(1/n+1)*a(n-2)])` with `a(0)=0, a(1)=1`
-/

namespace A128015.P4186914863931134188
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  4 / (1 / (n : ℚ) + 1) * f1 (n - 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A128015.P4186914863931134188

namespace A128015

/-- `abs(Δ[4/(1/n+1)*a(n-2)])` -/
def P4186914863931134188.Spec : Prop :=
  ∀ n, P4186914863931134188.a n = (A128015 n : ℚ)

end A128015

/-! ## A128015.P9881154853390411747

`A001405(or(1, n))`
-/

namespace A128015.P9881154853390411747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (Nat.lor 1 n)

end

end A128015.P9881154853390411747

namespace A128015

/-- `A001405(or(1, n))` -/
def P9881154853390411747.Spec : Prop :=
  ∀ n, P9881154853390411747.a n = A128015 n

end A128015

/-! ## A128015.P14615871983039091311

`A002661(or(1, n))`
-/

namespace A128015.P14615871983039091311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002661 (Nat.lor 1 n)

end

end A128015.P14615871983039091311

namespace A128015

/-- `A002661(or(1, n))` -/
def P14615871983039091311.Spec : Prop :=
  ∀ n, P14615871983039091311.a n = A128015 n

end A128015

/-! ## A128015.P17249406561842345889

`A037952(or(1, n))`
-/

namespace A128015.P17249406561842345889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037952 (Nat.lor 1 n)

end

end A128015.P17249406561842345889

namespace A128015

/-- `A037952(or(1, n))` -/
def P17249406561842345889.Spec : Prop :=
  ∀ n, P17249406561842345889.a n = A128015 n

end A128015

/-! ## A128015.P9154763926053580073

`A057977(or(1, n))`
-/

namespace A128015.P9154763926053580073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057977 (Nat.lor 1 n)

end

end A128015.P9154763926053580073

namespace A128015

/-- `A057977(or(1, n))` -/
def P9154763926053580073.Spec : Prop :=
  ∀ n, P9154763926053580073.a n = A128015 n

end A128015

/-! ## A128015.P15942290070203113917

`A063549(or(1, n))`
-/

namespace A128015.P15942290070203113917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063549 (Nat.lor 1 n)

end

end A128015.P15942290070203113917

namespace A128015

/-- `A063549(or(1, n))` -/
def P15942290070203113917.Spec : Prop :=
  ∀ n, P15942290070203113917.a n = A128015 n

end A128015

/-! ## A128015.P3538802045954539383

`A138364(or(1, n))`
-/

namespace A128015.P3538802045954539383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138364 (Nat.lor 1 n)

end

end A128015.P3538802045954539383

namespace A128015

/-- `A138364(or(1, n))` -/
def P3538802045954539383.Spec : Prop :=
  ∀ n, P3538802045954539383.a n = A128015 n

end A128015

/-! ## A128015.P4719572616911899947

`abs(Δ[A138364(n)])`
-/

namespace A128015.P4719572616911899947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138364 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A128015.P4719572616911899947

namespace A128015

/-- `abs(Δ[A138364(n)])` -/
def P4719572616911899947.Spec : Prop :=
  ∀ n, P4719572616911899947.a n = A128015 n

end A128015

/-! ## A128015.P6211132277308127898

`A128014(n+2)/2`
-/

namespace A128015.P6211132277308127898
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128014 (n + 2) : ℚ) / 2

end

end A128015.P6211132277308127898

namespace A128015

/-- `A128014(n+2)/2` -/
def P6211132277308127898.Spec : Prop :=
  ∀ n, P6211132277308127898.a n = (A128015 n : ℚ)

end A128015

/-! ## A128015.P7380557269920223426

`A014495(or(1, n))+1`
-/

namespace A128015.P7380557269920223426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014495 (Nat.lor 1 n) + 1

end

end A128015.P7380557269920223426

namespace A128015

/-- `A014495(or(1, n))+1` -/
def P7380557269920223426.Spec : Prop :=
  ∀ n, P7380557269920223426.a n = A128015 n

end A128015

/-! ## A128015.P14145572298899939954

`A210736(or(1, n)+1)`
-/

namespace A128015.P14145572298899939954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210736 (Nat.lor 1 n + 1)

end

end A128015.P14145572298899939954

namespace A128015

/-- `A210736(or(1, n)+1)` -/
def P14145572298899939954.Spec : Prop :=
  ∀ n, P14145572298899939954.a n = A128015 n

end A128015

/-! ## A128015.P15465372712648443907

`A214282(or(1, n)+1)`
-/

namespace A128015.P15465372712648443907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214282 (Nat.lor 1 n + 1)

end

end A128015.P15465372712648443907

namespace A128015

/-- `A214282(or(1, n)+1)` -/
def P15465372712648443907.Spec : Prop :=
  ∀ n, P15465372712648443907.a n = A128015 n

end A128015

/-! ## A128015.P616555299237092384

`A366108(or(1, n+2))`
-/

namespace A128015.P616555299237092384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366108 (Nat.lor 1 (n + 2))

end

end A128015.P616555299237092384

namespace A128015

/-- `A366108(or(1, n+2))` -/
def P616555299237092384.Spec : Prop :=
  ∀ n, P616555299237092384.a n = A128015 n

end A128015

/-! ## A128015.P2013206325265268912

`A210736(gcd(2, n)+n)`
-/

namespace A128015.P2013206325265268912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210736 (Nat.gcd 2 n + n)

end

end A128015.P2013206325265268912

namespace A128015

/-- `A210736(gcd(2, n)+n)` -/
def P2013206325265268912.Spec : Prop :=
  ∀ n, P2013206325265268912.a n = A128015 n

end A128015

/-! ## A128015.P7944884210560835352

`A088218(∑[char[2*n]])`
-/

namespace A128015.P7944884210560835352
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088218 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A128015.P7944884210560835352

namespace A128015

/-- `A088218(∑[char[2*n]])` -/
def P7944884210560835352.Spec : Prop :=
  ∀ n, P7944884210560835352.a n = A128015 n

end A128015

/-! ## A128015.P5571207270033038814

`abs(Δ[n*A090192(n)])`
-/

namespace A128015.P5571207270033038814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A090192 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A128015.P5571207270033038814

namespace A128015

/-- `abs(Δ[n*A090192(n)])` -/
def P5571207270033038814.Spec : Prop :=
  ∀ n, P5571207270033038814.a n = A128015 n

end A128015

/-! ## A128015.P3556022683969066600

`abs(Δ[n*A097331(n)])`
-/

namespace A128015.P3556022683969066600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A097331 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A128015.P3556022683969066600

namespace A128015

/-- `abs(Δ[n*A097331(n)])` -/
def P3556022683969066600.Spec : Prop :=
  ∀ n, P3556022683969066600.a n = A128015 n

end A128015

/-! ## A128015.P5682895404444402575

`abs(Δ[n*A105523(n)])`
-/

namespace A128015.P5682895404444402575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A105523 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A128015.P5682895404444402575

namespace A128015

/-- `abs(Δ[n*A105523(n)])` -/
def P5682895404444402575.Spec : Prop :=
  ∀ n, P5682895404444402575.a n = A128015 n

end A128015

/-! ## A128015.P9554136884158306702

`abs(Δ[n*A210628(n)])`
-/

namespace A128015.P9554136884158306702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A210628 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A128015.P9554136884158306702

namespace A128015

/-- `abs(Δ[n*A210628(n)])` -/
def P9554136884158306702.Spec : Prop :=
  ∀ n, P9554136884158306702.a n = A128015 n

end A128015

/-!
# A128016: Expansion of (1+x+x^2+x^3)/(1-x^2+x^4).

The programs for A128016, the canonical program `A128016.P7651571022388199392` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128016 has offset 0).

The definition of A128016 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+x+x^2+x^3)/(1-x^2+x^4))` (program `A128016.P7651571022388199392`, by `A128016.P7651571022388199392.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A128016.P7651571022388199392

`ogf((1+x+x^2+x^3)/(1-x^2+x^4))`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A128016

/-- `ogf((1+x+x^2+x^3)/(1-x^2+x^4))` -/
def P7651571022388199392.Spec : Prop :=
  ∀ n, P7651571022388199392.a n = A128016 n

theorem P7651571022388199392.correct : P7651571022388199392.Spec := by
  intro n
  simp only [A128016]

end A128016

/-!
# A128017: Expansion of (1+2x+x^2-x^3)/(1-x^2+x^4).

The programs for A128017, the canonical program `A128017.P6923186691845878313` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128017 has offset 0).

The definition of A128017 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+2x+x^2-x^3)/(1-x^2+x^4))` (program `A128017.P6923186691845878313`, by `A128017.P6923186691845878313.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A128017.P6923186691845878313

`ogf((1+2x+x^2-x^3)/(1-x^2+x^4))`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A128017

/-- `ogf((1+2x+x^2-x^3)/(1-x^2+x^4))` -/
def P6923186691845878313.Spec : Prop :=
  ∀ n, P6923186691845878313.a n = A128017 n

theorem P6923186691845878313.correct : P6923186691845878313.Spec := by
  intro n
  simp only [A128017]

end A128017

/-!
# A128018: Expansion of (1-4*x)/(1-2*x+4*x^2).

The programs for A128018, the canonical program `A128018.P9858109523429586609` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128018 has offset 0).

The definition of A128018 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-4x)/(1-2x+4x^2))` (program `A128018.P9858109523429586609`, by `A128018.P9858109523429586609.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A128018.P9858109523429586609

`ogf((1-4x)/(1-2x+4x^2))`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A128018

/-- `ogf((1-4x)/(1-2x+4x^2))` -/
def P9858109523429586609.Spec : Prop :=
  ∀ n, P9858109523429586609.a n = A128018 n

theorem P9858109523429586609.correct : P9858109523429586609.Spec := by
  intro n
  simp only [A128018]

end A128018

/-! ## A128018.P8491788308704242621

`2^n*A057079(n+2)`
-/

namespace A128018.P8491788308704242621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A057079 (n + 2)

end

end A128018.P8491788308704242621

namespace A128018

/-- `2^n*A057079(n+2)` -/
def P8491788308704242621.Spec : Prop :=
  ∀ n, P8491788308704242621.a n = A128018 n

end A128018

/-! ## A128018.P12307869601582667206

`A138340(n)/2^n`
-/

namespace A128018.P12307869601582667206
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138340 n : ℚ) / (2 ^ n : ℚ)

end

end A128018.P12307869601582667206

namespace A128018

/-- `A138340(n)/2^n` -/
def P12307869601582667206.Spec : Prop :=
  ∀ n, P12307869601582667206.a n = (A128018 n : ℚ)

end A128018

/-! ## A128018.P1641508979215985828

`(-2)^∑[n%3]`
-/

namespace A128018.P1641508979215985828
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-2) ^ (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A128018.P1641508979215985828

namespace A128018

/-- `(-2)^∑[n%3]` -/
def P1641508979215985828.Spec : Prop :=
  ∀ n, P1641508979215985828.a n = A128018 n

end A128018

/-! ## A128018.P252047428120974864

`∏[(-2)^((n+3)%3)]`
-/

namespace A128018.P252047428120974864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-2) ^ ((n + 3) % 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A128018.P252047428120974864

namespace A128018

/-- `∏[(-2)^((n+3)%3)]` -/
def P252047428120974864.Spec : Prop :=
  ∀ n, P252047428120974864.a n = A128018 n

end A128018

/-! ## A128018.P12096506236007748241

`∏[dr(6*(n+1))-5]`
-/

namespace A128018.P12096506236007748241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.digitalRoot (6 * (n + 1) : ℤ) : ℤ) - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A128018.P12096506236007748241

namespace A128018

/-- `∏[dr(6*(n+1))-5]` -/
def P12096506236007748241.Spec : Prop :=
  ∀ n, P12096506236007748241.a n = A128018 n

end A128018

/-! ## A128018.P6000164605775916771

`∏[2-4/a(n-1)]` with `a(0)=1`
-/

namespace A128018.P6000164605775916771
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  2 - 4 / f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A128018.P6000164605775916771

namespace A128018

/-- `∏[2-4/a(n-1)]` -/
def P6000164605775916771.Spec : Prop :=
  ∀ n, P6000164605775916771.a n = (A128018 n : ℚ)

end A128018

/-! ## A128018.P7380517540823508559

`∏[Δ[ceil(atan(Δ[lcm(3, n)])+n)]]`
-/

namespace A128018.P7380517540823508559
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 3 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.arctan ((f3 (n + 1) : ℤ) - (f3 n : ℤ) : ℝ) + (n : ℝ)⌉

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A128018.P7380517540823508559

namespace A128018

/-- `∏[Δ[ceil(atan(Δ[lcm(3, n)])+n)]]` -/
def P7380517540823508559.Spec : Prop :=
  ∀ n, P7380517540823508559.a n = A128018 n

end A128018

/-! ## A128018.P15135174857280502774

`(-2)^∑[floor(a(n-3))]` with `a(0)=0, a(1)=1, a(2)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A128018.P15135174857280502774
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-2) ^ (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A128018.P15135174857280502774

namespace A128018

/-- `(-2)^∑[floor(a(n-3))]` -/
def P15135174857280502774.Spec : Prop :=
  ∀ n, P15135174857280502774.a n = A128018 n

end A128018

/-! ## A128018.P14304604171348884092

`(4-3*(n+1)%3)*a(n-1)` with `a(0)=1`
-/

namespace A128018.P14304604171348884092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (4 - ((3 * ((n + 1) % 3) : ℕ) : ℤ)) * a (n - 1)

end

end A128018.P14304604171348884092

namespace A128018

/-- `(4-3*(n+1)%3)*a(n-1)` -/
def P14304604171348884092.Spec : Prop :=
  ∀ n, P14304604171348884092.a n = A128018 n

end A128018

/-! ## A128018.P3207992531757444650

`2*(a(n-1)-2*a(n-2))` with `a(0)=1, a(1)=-2`
-/

namespace A128018.P3207992531757444650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -2] fun n a =>
  2 * (a (n - 1) - 2 * a (n - 2))

end

end A128018.P3207992531757444650

namespace A128018

/-- `2*(a(n-1)-2*a(n-2))` -/
def P3207992531757444650.Spec : Prop :=
  ∀ n, P3207992531757444650.a n = A128018 n

end A128018

/-! ## A128018.P12677932861427509344

`(-2)^∑[a(n-3)^a(n-1)]` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A128018.P12677932861427509344
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2] fun n f1 =>
  f1 (n - 3) ^ f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-2) ^ (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A128018.P12677932861427509344

namespace A128018

/-- `(-2)^∑[a(n-3)^a(n-1)]` -/
def P12677932861427509344.Spec : Prop :=
  ∀ n, P12677932861427509344.a n = A128018 n

end A128018

/-! ## A128018.P6154770276021889364

`(-2)^floor(n+1-a(n-2)/a(n-1))` with `a(0)=1, a(1)=-2`
-/

namespace A128018.P6154770276021889364
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, -2] fun n a =>
  (-2 : ℚ) ^ (⌊(n + 1 : ℚ) - a (n - 2) / a (n - 1)⌋ : ℤ)

end

end A128018.P6154770276021889364

namespace A128018

/-- `(-2)^floor(n+1-a(n-2)/a(n-1))` -/
def P6154770276021889364.Spec : Prop :=
  ∀ n, P6154770276021889364.a n = (A128018 n : ℚ)

end A128018

/-! ## A128018.P3298137391736042069

`A138230(n+1)`
-/

namespace A128018.P3298137391736042069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138230 (n + 1)

end

end A128018.P3298137391736042069

namespace A128018

/-- `A138230(n+1)` -/
def P3298137391736042069.Spec : Prop :=
  ∀ n, P3298137391736042069.a n = A128018 n

end A128018

/-! ## A128018.P16977804728840108092

`A157240(n)-1`
-/

namespace A128018.P16977804728840108092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157240 n - 1

end

end A128018.P16977804728840108092

namespace A128018

/-- `A157240(n)-1` -/
def P16977804728840108092.Spec : Prop :=
  ∀ n, P16977804728840108092.a n = A128018 n

end A128018

/-! ## A128018.P15606296635225209120

`Δ[Δ[A157241(n)]]`
-/

namespace A128018.P15606296635225209120
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157241 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A128018.P15606296635225209120

namespace A128018

/-- `Δ[Δ[A157241(n)]]` -/
def P15606296635225209120.Spec : Prop :=
  ∀ n, P15606296635225209120.a n = A128018 n

end A128018

/-! ## A128018.P9085407456139571872

`∏[Δ[A004482(n)]]`
-/

namespace A128018.P9085407456139571872
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004482 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A128018.P9085407456139571872

namespace A128018

/-- `∏[Δ[A004482(n)]]` -/
def P9085407456139571872.Spec : Prop :=
  ∀ n, P9085407456139571872.a n = A128018 n

end A128018

/-! ## A128018.P10956489129598119109

`Δ[A088138(n+1)]`
-/

namespace A128018.P10956489129598119109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088138 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A128018.P10956489129598119109

namespace A128018

/-- `Δ[A088138(n+1)]` -/
def P10956489129598119109.Spec : Prop :=
  ∀ n, P10956489129598119109.a n = A128018 n

end A128018

/-! ## A128018.P11275497420266631270

`∏[A132954(4*n)]`
-/

namespace A128018.P11275497420266631270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132954 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A128018.P11275497420266631270

namespace A128018

/-- `∏[A132954(4*n)]` -/
def P11275497420266631270.Spec : Prop :=
  ∀ n, P11275497420266631270.a n = A128018 n

end A128018

/-!
# A128019: Expansion of (1 - 3x)/(1 + 3*x^2).

The programs for A128019, the canonical program `A128019.P9974341756969450580` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128019 has offset 0).

The definition of A128019 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-3x)/(1+3x^2))` (program `A128019.P9974341756969450580`, by `A128019.P9974341756969450580.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A128019.P9974341756969450580

`ogf((1-3x)/(1+3x^2))`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A128019

/-- `ogf((1-3x)/(1+3x^2))` -/
def P9974341756969450580.Spec : Prop :=
  ∀ n, P9974341756969450580.a n = A128019 n

theorem P9974341756969450580.correct : P9974341756969450580.Spec := by
  intro n
  simp only [A128019]

end A128019

/-! ## A128019.P10078292121407156019

`(-3)^ceil(n/2)`
-/

namespace A128019.P10078292121407156019
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-3 : ℚ) ^ (⌈(n : ℚ) / 2⌉ : ℤ)

end

end A128019.P10078292121407156019

namespace A128019

/-- `(-3)^ceil(n/2)` -/
def P10078292121407156019.Spec : Prop :=
  ∀ n, P10078292121407156019.a n = (A128019 n : ℚ)

end A128019

/-! ## A128019.P855558383440576069

`∏[(-3)^(n%2)]`
-/

namespace A128019.P855558383440576069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-3) ^ (n % 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A128019.P855558383440576069

namespace A128019

/-- `∏[(-3)^(n%2)]` -/
def P855558383440576069.Spec : Prop :=
  ∀ n, P855558383440576069.a n = A128019 n

end A128019

/-! ## A128019.P1783357173010570948

`∏[(-3)^and(1, n)]`
-/

namespace A128019.P1783357173010570948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-3) ^ Nat.land 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A128019.P1783357173010570948

namespace A128019

/-- `∏[(-3)^and(1, n)]` -/
def P1783357173010570948.Spec : Prop :=
  ∀ n, P1783357173010570948.a n = A128019 n

end A128019

/-! ## A128019.P17576917270596481658

`∏[1-4*and(1, n)]`
-/

namespace A128019.P17576917270596481658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (4 * Nat.land 1 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A128019.P17576917270596481658

namespace A128019

/-- `∏[1-4*and(1, n)]` -/
def P17576917270596481658.Spec : Prop :=
  ∀ n, P17576917270596481658.a n = A128019 n

end A128019

/-! ## A128019.P4831969263151295820

`∏[4*gcd(2, n)-7]`
-/

namespace A128019.P4831969263151295820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * Nat.gcd 2 n : ℤ) - 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A128019.P4831969263151295820

namespace A128019

/-- `∏[4*gcd(2, n)-7]` -/
def P4831969263151295820.Spec : Prop :=
  ∀ n, P4831969263151295820.a n = A128019 n

end A128019

/-! ## A128019.P17149664144049783689

`∏[2-5^and(1, n)]`
-/

namespace A128019.P17149664144049783689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (5 ^ Nat.land 1 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A128019.P17149664144049783689

namespace A128019

/-- `∏[2-5^and(1, n)]` -/
def P17149664144049783689.Spec : Prop :=
  ∀ n, P17149664144049783689.a n = A128019 n

end A128019

/-! ## A128019.P16496667959729045469

`∏[floor(tan(gcd(4, 2*n)))]`
-/

namespace A128019.P16496667959729045469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.tan (Nat.gcd 4 (2 * n) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A128019.P16496667959729045469

namespace A128019

/-- `∏[floor(tan(gcd(4, 2*n)))]` -/
def P16496667959729045469.Spec : Prop :=
  ∀ n, P16496667959729045469.a n = A128019 n

end A128019

/-! ## A128019.P8733885791367277197

`∏[1-((2*n)%4)²]`
-/

namespace A128019.P8733885791367277197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (((2 * n % 4) ^ 2 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A128019.P8733885791367277197

namespace A128019

/-- `∏[1-((2*n)%4)²]` -/
def P8733885791367277197.Spec : Prop :=
  ∀ n, P8733885791367277197.a n = A128019 n

end A128019

/-! ## A128019.P6088610075045475062

`∏[-(a(n-1)+2)]` with `a(0)=1`
-/

namespace A128019.P6088610075045475062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  -(f1 (n - 1) + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A128019.P6088610075045475062

namespace A128019

/-- `∏[-(a(n-1)+2)]` -/
def P6088610075045475062.Spec : Prop :=
  ∀ n, P6088610075045475062.a n = A128019 n

end A128019

/-! ## A128019.P8043205606442106254

`∏[-3/a(n-1)]` with `a(0)=1`
-/

namespace A128019.P8043205606442106254
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  -(3 / f1 (n - 1))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A128019.P8043205606442106254

namespace A128019

/-- `∏[-3/a(n-1)]` -/
def P8043205606442106254.Spec : Prop :=
  ∀ n, P8043205606442106254.a n = (A128019 n : ℚ)

end A128019

/-! ## A128019.P17142215684646361536

`∏[-or(2, a(n-1))]` with `a(0)=1`
-/

namespace A128019.P17142215684646361536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  -Int.lor 2 (f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A128019.P17142215684646361536

namespace A128019

/-- `∏[-or(2, a(n-1))]` -/
def P17142215684646361536.Spec : Prop :=
  ∀ n, P17142215684646361536.a n = A128019 n

end A128019

/-! ## A128019.P17063170872264502554

`∏[xor(2, -a(n-1))]` with `a(0)=1`
-/

namespace A128019.P17063170872264502554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  Int.xor 2 (-f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A128019.P17063170872264502554

namespace A128019

/-- `∏[xor(2, -a(n-1))]` -/
def P17063170872264502554.Spec : Prop :=
  ∀ n, P17063170872264502554.a n = A128019 n

end A128019

/-! ## A128019.P632383497385271219

`∏[-or(2, -(-1)^n)]`
-/

namespace A128019.P632383497385271219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.lor 2 (-((-1) ^ n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A128019.P632383497385271219

namespace A128019

/-- `∏[-or(2, -(-1)^n)]` -/
def P632383497385271219.Spec : Prop :=
  ∀ n, P632383497385271219.a n = A128019 n

end A128019

/-! ## A128019.P13112688488713867446

`∏[xor(1, n)-xor(1, n+1)]`
-/

namespace A128019.P13112688488713867446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.xor 1 n : ℤ) - (Nat.xor 1 (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A128019.P13112688488713867446

namespace A128019

/-- `∏[xor(1, n)-xor(1, n+1)]` -/
def P13112688488713867446.Spec : Prop :=
  ∀ n, P13112688488713867446.a n = A128019 n

end A128019

/-! ## A128019.P8033135544925964893

`9*a(n-4)` with `a(0)=1, a(1)=-3, a(2)=-3, a(3)=9`
-/

namespace A128019.P8033135544925964893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -3, -3, 9] fun n a =>
  9 * a (n - 4)

end

end A128019.P8033135544925964893

namespace A128019

/-- `9*a(n-4)` -/
def P8033135544925964893.Spec : Prop :=
  ∀ n, P8033135544925964893.a n = A128019 n

end A128019

/-! ## A128019.P1336127582615311231

`∏[∏[1/a(n-1)]-4]` with `a(0)=5`
-/

namespace A128019.P1336127582615311231
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.rec [5] fun n f2 =>
  1 / f2 (n - 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j - 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A128019.P1336127582615311231

namespace A128019

/-- `∏[∏[1/a(n-1)]-4]` -/
def P1336127582615311231.Spec : Prop :=
  ∀ n, P1336127582615311231.a n = (A128019 n : ℚ)

end A128019

/-! ## A128019.P11688958712958196318

`floor((-3)^∑[1-a(n-1)])` with `a(0)=0`
-/

namespace A128019.P11688958712958196318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  1 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(-3 : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j : ℤ)⌋

end

end A128019.P11688958712958196318

namespace A128019

/-- `floor((-3)^∑[1-a(n-1)])` -/
def P11688958712958196318.Spec : Prop :=
  ∀ n, P11688958712958196318.a n = A128019 n

end A128019

/-! ## A128019.P8633470583363673879

`∏[2*xor(1, n)-1-2*n]`
-/

namespace A128019.P8633470583363673879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * Nat.xor 1 n : ℤ) - 1 - (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A128019.P8633470583363673879

namespace A128019

/-- `∏[2*xor(1, n)-1-2*n]` -/
def P8633470583363673879.Spec : Prop :=
  ∀ n, P8633470583363673879.a n = A128019 n

end A128019

/-! ## A128019.P5503410960736559595

`∏[a(n-1)+a(n-1)²-5]` with `a(0)=1`
-/

namespace A128019.P5503410960736559595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) + (f1 (n - 1) ^ 2 - 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A128019.P5503410960736559595

namespace A128019

/-- `∏[a(n-1)+a(n-1)²-5]` -/
def P5503410960736559595.Spec : Prop :=
  ∀ n, P5503410960736559595.a n = A128019 n

end A128019

/-!
# A128020: a(n) = the multiple of n which is > (sum{k=1 to n-1} a(k)) and is <= (n + sum{k=1 to n-1} a(k)).

The programs for A128020, there is no canonical definition to state claims against.
-/

/-! ## A128020.P6934285133362660771

`Δ[a(n-1)+n*ceil(a(n-1)/n)]` with `a(0)=1`
-/

namespace A128020.P6934285133362660771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) + (n : ℤ) * ⌈(f1 (n - 1) : ℚ) / (n : ℚ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A128020.P6934285133362660771

/-! ## A128020.P5702895815397669093

`Δ[2*a(n-1)-a(n-1)%n+n]` with `a(0)=0`
-/

namespace A128020.P5702895815397669093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  2 * f1 (n - 1) - Int.tmod (f1 (n - 1)) (n : ℤ) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A128020.P5702895815397669093

/-! ## A128020.P1222827617678383353

`(n+1)*A128021(n+1)`
-/

namespace A128020.P1222827617678383353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A128021 (n + 1)

end

end A128020.P1222827617678383353

/-! ## A128020.P1377917190256596105

`A128021(n+1)*A387051(n)`
-/

namespace A128020.P1377917190256596105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128021 (n + 1) * A387051 n

end

end A128020.P1377917190256596105

/-! ## A128020.P6839757328825983466

`A128021(A328399(2*n))*A328399(2*n)`
-/

namespace A128020.P6839757328825983466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128021 (A328399 (2 * n)).toNat * A328399 (2 * n)

end

end A128020.P6839757328825983466

/-!
# A128021: a(n) = A128020(n)/n.

The programs for A128021, there is no canonical definition to state claims against.
-/

/-! ## A128021.P1025845547110046841

`A128020(n+1)/(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A128021.P1025845547110046841
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128020 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A128021.P1025845547110046841

/-! ## A128021.P4450602770814915677

`Δ[a(n-1)+n*ceil(a(n-1)/n)]/(n+1)` with `a(0)=1`
-/

namespace A128021.P4450602770814915677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) + (n : ℤ) * ⌈(f1 (n - 1) : ℚ) / (n : ℚ)⌉

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (n + 1 : ℚ)

end

end A128021.P4450602770814915677

/-! ## A128021.P275926183245434106

`A264749(Δ[2*a(n-1)-a(n-1)%n+n])` with `a(0)=0`
-/

namespace A128021.P275926183245434106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  2 * f1 (n - 1) - Int.tmod (f1 (n - 1)) (n : ℤ) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264749 (f1 (n + 1) - f1 n).toNat

end

end A128021.P275926183245434106

/-! ## A128021.P8702236058636327167

`A264749(A128020(n+1))`
-/

namespace A128021.P8702236058636327167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264749 (A128020 (n + 1)).toNat

end

end A128021.P8702236058636327167

/-! ## A128021.P15612967345683751592

`A138194(ceil(sqrt(A037737(n+1))))`
-/

namespace A128021.P15612967345683751592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138194 ⌈Real.sqrt (A037737 (n + 1) : ℝ)⌉.toNat

end

end A128021.P15612967345683751592

/-!
# A128022: a(1)=1, a(n) = the multiple of n which is >= (sum{k=1 to n-1} a(k)) and is < (n + sum{k=1 to n-1} a(k)).

The programs for A128022, the canonical program `A128022.P7102108194243671855` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128022 has offset 1).

The definition of A128022 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A128022.P7102108194243671855

`Δ[a(n-1)+n*ceil(a(n-1)/n)]` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A128022

/-- `Δ[a(n-1)+n*ceil(a(n-1)/n)]` -/
def P7102108194243671855.Spec : Prop :=
  ∀ n, P7102108194243671855.a n = A128022 (n + 1)

theorem P7102108194243671855.correct : P7102108194243671855.Spec := by
  intro n
  simp only [A128022, Nat.add_sub_cancel]

end A128022

/-! ## A128022.P12680608033119412726

`abs(Δ[2*a(n-1)-a(n-1)%n+n])` with `a(0)=1, a(1)=0`
-/

namespace A128022.P12680608033119412726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  2 * f1 (n - 1) - Int.tmod (f1 (n - 1)) (n : ℤ) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A128022.P12680608033119412726

namespace A128022

/-- `abs(Δ[2*a(n-1)-a(n-1)%n+n])` -/
def P12680608033119412726.Spec : Prop :=
  ∀ n, P12680608033119412726.a n = A128022 (n + 1)

end A128022

/-! ## A128022.P12700364432838894931

`(n+1)*A128023(n+1)`
-/

namespace A128022.P12700364432838894931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A128023 (n + 1)

end

end A128022.P12700364432838894931

namespace A128022

/-- `(n+1)*A128023(n+1)` -/
def P12700364432838894931.Spec : Prop :=
  ∀ n, P12700364432838894931.a n = A128022 (n + 1)

end A128022

/-! ## A128022.P13902694683197913646

`-xor(n, -1)*A128023(A328399(2*n))`
-/

namespace A128022.P13902694683197913646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(Int.xor (n : ℤ) (-1) * A128023 (A328399 (2 * n)).toNat)

end

end A128022.P13902694683197913646

namespace A128022

/-- `-xor(n, -1)*A128023(A328399(2*n))` -/
def P13902694683197913646.Spec : Prop :=
  ∀ n, P13902694683197913646.a n = A128022 (n + 1)

end A128022

/-! ## A128022.P1988898505029873401

`A128023(A328399(2*n))*A328399(2*n)`
-/

namespace A128022.P1988898505029873401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128023 (A328399 (2 * n)).toNat * A328399 (2 * n)

end

end A128022.P1988898505029873401

namespace A128022

/-- `A128023(A328399(2*n))*A328399(2*n)` -/
def P1988898505029873401.Spec : Prop :=
  ∀ n, P1988898505029873401.a n = A128022 (n + 1)

end A128022

/-!
# A128023: a(n) = A128022(n)/n.

The programs for A128023, the canonical program `A128023.P1388865192342252309` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128023 has offset 1).

The definition of A128023 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A128022, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A128023.P1388865192342252309

`A128022(n+1)/(n+1)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A128023

/-- `A128022(n+1)/(n+1)` -/
def P1388865192342252309.Spec : Prop :=
  ∀ n, P1388865192342252309.a n = (A128023 (n + 1) : ℚ)

end A128023

/-! ## A128023.P6953542647619177548

`Δ[a(n-1)+n*ceil(a(n-1)/n)]/(n+1)` with `a(0)=0, a(1)=1`
-/

namespace A128023.P6953542647619177548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 (n - 1) + (n : ℤ) * ⌈(f1 (n - 1) : ℚ) / (n : ℚ)⌉

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (n + 1 : ℚ)

end

end A128023.P6953542647619177548

namespace A128023

/-- `Δ[a(n-1)+n*ceil(a(n-1)/n)]/(n+1)` -/
def P6953542647619177548.Spec : Prop :=
  ∀ n, P6953542647619177548.a n = (A128023 (n + 1) : ℚ)

end A128023

/-! ## A128023.P3756976271956935543

`A195177(2*A141602(n+1)-1)`
-/

namespace A128023.P3756976271956935543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195177 (2 * A141602 (n + 1) - 1).toNat

end

end A128023.P3756976271956935543

namespace A128023

/-- `A195177(2*A141602(n+1)-1)` -/
def P3756976271956935543.Spec : Prop :=
  ∀ n, P3756976271956935543.a n = A128023 (n + 1)

end A128023

/-! ## A128023.P1158967618588513684

`A195177(A141602(n+1)+A141602(n+1)-1)`
-/

namespace A128023.P1158967618588513684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195177 (A141602 (n + 1) + (A141602 (n + 1) - 1)).toNat

end

end A128023.P1158967618588513684

namespace A128023

/-- `A195177(A141602(n+1)+A141602(n+1)-1)` -/
def P1158967618588513684.Spec : Prop :=
  ∀ n, P1158967618588513684.a n = A128023 (n + 1)

end A128023

/-! ## A128023.P16998460335100421961

`round(A004768(A000225(n))/A004768(n))`
-/

namespace A128023.P16998460335100421961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A004768 (A000225 n).toNat : ℚ) / (A004768 n : ℚ))

end

end A128023.P16998460335100421961

namespace A128023

/-- `round(A004768(A000225(n))/A004768(n))` -/
def P16998460335100421961.Spec : Prop :=
  ∀ n, P16998460335100421961.a n = A128023 (n + 1)

end A128023

/-!
# A128024: Numbers k such that (7^k - 3^k)/4 is prime.

The programs for A128024, there is no canonical definition to state claims against.
-/

/-! ## A128024.P2258124924273051922

`A006530((n+1)*C(2*n+1, n)²+n+2)`
-/

namespace A128024.P2258124924273051922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 ((n + 1) * Nat.choose (2 * n + 1) n ^ 2 + (n + 2))

end

end A128024.P2258124924273051922

/-!
# A128026: Numbers k such that (10^k - 3^k)/7 is prime.

The programs for A128026, there is no canonical definition to state claims against.
-/

/-! ## A128026.P16007319057445029099

`p?[∑[or(1, A268598(n))]]`
-/

namespace A128026.P16007319057445029099
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A268598 n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A128026.P16007319057445029099

/-!
# A128027: Numbers k such that (11^k - 3^k)/8 is prime.

The programs for A128027, there is no canonical definition to state claims against.
-/

/-! ## A128027.P11393442661821018926

`p?[A252658(n+1)-A000096(n)]`
-/

namespace A128027.P11393442661821018926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252658 (n + 1) - A000096 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A128027.P11393442661821018926

/-!
# A128028: Numbers k such that (13^k - 3^k)/10 is prime.

The programs for A128028, there is no canonical definition to state claims against.
-/

/-! ## A128028.P16013712499902908707

`A380333(2^n+A373671(n+1)^n)`
-/

namespace A128028.P16013712499902908707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380333 ((2 ^ n : ℤ) + A373671 (n + 1) ^ n).toNat

end

end A128028.P16013712499902908707

/-!
# A128029: Numbers k such that (14^k - 3^k)/11 is prime.

The programs for A128029, there is no canonical definition to state claims against.
-/

/-! ## A128029.P14978578788841913793

`A127450(A000058(n)+n)`
-/

namespace A128029.P14978578788841913793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127450 (A000058 n + (n : ℤ)).toNat

end

end A128029.P14978578788841913793

/-!
# A128031: Numbers k such that (17^k - 3^k)/14 is prime.

The programs for A128031, there is no canonical definition to state claims against.
-/

/-! ## A128031.P4596675523050497505

`A191067(A191301(n)+A010052(n+3))`
-/

namespace A128031.P4596675523050497505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191067 (A191301 n + A010052 (n + 3)).toNat

end

end A128031.P4596675523050497505

/-!
# A128034: a(0)=a(1)=1. a(n) = the multiple of n which is > a(n-1)+a(n-2) and is <= a(n-1)+a(n-2)+n.

The programs for A128034, the canonical program `A128034.P5651212946608155009` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128034 has offset 0).

The definition of A128034 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A128034.P5651212946608155009

`n*(1+floor((a(n-1)+a(n-2))/n))` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A128034

/-- `n*(1+floor((a(n-1)+a(n-2))/n))` -/
def P5651212946608155009.Spec : Prop :=
  ∀ n, P5651212946608155009.a n = A128034 n

theorem P5651212946608155009.correct : P5651212946608155009.Spec := by
  intro n
  simp only [A128034]

end A128034

/-! ## A128034.P9287802399724018414

`a(n-1)-(a(n-1)+a(n-2))%n+a(n-2)+n` with `a(0)=1, a(1)=1`
-/

namespace A128034.P9287802399724018414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) - Int.tmod (a (n - 1) + a (n - 2)) (n : ℤ) + (a (n - 2) + (n : ℤ))

end

end A128034.P9287802399724018414

namespace A128034

/-- `a(n-1)-(a(n-1)+a(n-2))%n+a(n-2)+n` -/
def P9287802399724018414.Spec : Prop :=
  ∀ n, P9287802399724018414.a n = A128034 n

end A128034

/-! ## A128034.P5956482726411458371

`A028310(n)*A121900(A329758(2*(n+1)))`
-/

namespace A128034.P5956482726411458371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n * A121900 (A329758 (2 * (n + 1))).toNat

end

end A128034.P5956482726411458371

namespace A128034

/-- `A028310(n)*A121900(A329758(2*(n+1)))` -/
def P5956482726411458371.Spec : Prop :=
  ∀ n, P5956482726411458371.a n = A128034 n

end A128034

/-! ## A128034.P11183388444677724463

`A028310(n*A204553(A001792(n)))`
-/

namespace A128034.P11183388444677724463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 ((n : ℤ) * A204553 (A001792 n).toNat).toNat

end

end A128034.P11183388444677724463

namespace A128034

/-- `A028310(n*A204553(A001792(n)))` -/
def P11183388444677724463.Spec : Prop :=
  ∀ n, P11183388444677724463.a n = A128034 n

end A128034

/-! ## A128034.P4605506697753679249

`A304231(A225391(n))`
-/

namespace A128034.P4605506697753679249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304231 (A225391 n).toNat

end

end A128034.P4605506697753679249

namespace A128034

/-- `A304231(A225391(n))` -/
def P4605506697753679249.Spec : Prop :=
  ∀ n, P4605506697753679249.a n = A128034 n

end A128034

/-!
# A128035: a(0)=a(1)=1. a(n) = the multiple of n which is >= a(n-1)+a(n-2) and is < a(n-1)+a(n-2)+n.

The programs for A128035, the canonical program `A128035.P8379925601659622755` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128035 has offset 0).

The definition of A128035 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A128035.P8379925601659622755

`n*ceil((a(n-1)+a(n-2))/n)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A128035

/-- `n*ceil((a(n-1)+a(n-2))/n)` -/
def P8379925601659622755.Spec : Prop :=
  ∀ n, P8379925601659622755.a n = A128035 n

theorem P8379925601659622755.correct : P8379925601659622755.Spec := by
  intro n
  simp only [A128035]

end A128035

/-! ## A128035.P10643011763149701191

`A028310(n*A000194(A190162(n)))`
-/

namespace A128035.P10643011763149701191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 ((n : ℤ) * A000194 (A190162 n).toNat).toNat

end

end A128035.P10643011763149701191

namespace A128035

/-- `A028310(n*A000194(A190162(n)))` -/
def P10643011763149701191.Spec : Prop :=
  ∀ n, P10643011763149701191.a n = A128035 n

end A128035

/-! ## A128035.P490051783887914222

`A000007(n)+n*A000194(A190162(n))`
-/

namespace A128035.P490051783887914222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (n : ℤ) * A000194 (A190162 n).toNat

end

end A128035.P490051783887914222

namespace A128035

/-- `A000007(n)+n*A000194(A190162(n))` -/
def P490051783887914222.Spec : Prop :=
  ∀ n, P490051783887914222.a n = A128035 n

end A128035

/-! ## A128035.P14337659237934303774

`A151933(n)+n*A000194(A190162(n))`
-/

namespace A128035.P14337659237934303774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n + (n : ℤ) * A000194 (A190162 n).toNat

end

end A128035.P14337659237934303774

namespace A128035

/-- `A151933(n)+n*A000194(A190162(n))` -/
def P14337659237934303774.Spec : Prop :=
  ∀ n, P14337659237934303774.a n = A128035 n

end A128035

/-! ## A128035.P18085741115563793417

`A007318(∑[n]+1)*A000194(A190162(n))`
-/

namespace A128035.P18085741115563793417
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j + 1) * A000194 (A190162 n).toNat

end

end A128035.P18085741115563793417

namespace A128035

/-- `A007318(∑[n]+1)*A000194(A190162(n))` -/
def P18085741115563793417.Spec : Prop :=
  ∀ n, P18085741115563793417.a n = A128035 n

end A128035

/-!
# A128039: Numbers n such that 1 - Sum_{k=1..n-1} A001223(k)*(-1)^k = 0.

The programs for A128039, there is no canonical definition to state claims against.
-/

/-! ## A128039.P9642497435482224358

`eq[3, A330547(n+1)]+1`
-/

namespace A128039.P9642497435482224358
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330547 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A128039.P9642497435482224358

/-! ## A128039.P7584053814497625999

`eq[3, A330547(A028310(n))]`
-/

namespace A128039.P7584053814497625999
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330547 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A128039.P7584053814497625999

/-! ## A128039.P7538522411369047250

`A020725(eq[3, A330547(n+1)])`
-/

namespace A128039.P7538522411369047250
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330547 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A128039.P7538522411369047250

/-! ## A128039.P1588229721098852672

`A065475(eq[3, A330547(n+1)])`
-/

namespace A128039.P1588229721098852672
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330547 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A128039.P1588229721098852672

/-! ## A128039.P7006677534984960233

`eq[A082455(n), A086530(n+1)]`
-/

namespace A128039.P7006677534984960233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082455 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086530 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A128039.P7006677534984960233

/-!
# A128040: a(n) = product of the primes which are <= the n-th squarefree positive integer. a(n) also is the LCM of the first n squarefree positive integers.

The programs for A128040, there is no canonical definition to state claims against.
-/

/-! ## A128040.P5970546461845031131

`lcm(a(n-1), record[∏{p}[n, #]])` with `a(0)=1`
-/

namespace A128040.P5970546461845031131
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lcm (a (n - 1)) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A128040.P5970546461845031131

/-! ## A128040.P16315591328984133286

`∏[A372112(n+1)]`
-/

namespace A128040.P16315591328984133286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372112 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A128040.P16315591328984133286

/-! ## A128040.P12193505634868816660

`A034386(record[∏{p}[n, #]])`
-/

namespace A128040.P12193505634868816660
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034386 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A128040.P12193505634868816660

/-! ## A128040.P5399895812540469571

`A034386(eq[n, ∏{p}[n, #]])`
-/

namespace A128040.P5399895812540469571
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034386 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A128040.P5399895812540469571

/-! ## A128040.P3770741602863816625

`∏[A014963(record[∏{p}[n, #]])]`
-/

namespace A128040.P3770741602863816625
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), p

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A128040.P3770741602863816625

/-!
# A128041: Triangle read by columns: number of n-node (unlabeled) graphs with girth k, for n >= 3, k >= 3.

The programs for A128041, there is no canonical definition to state claims against.
-/

/-! ## A128041.P7410431446213917582

`A144886(n+1)-A213185(A000699(n))`
-/

namespace A128041.P7410431446213917582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144886 (n + 1) - A213185 (A000699 n).toNat

end

end A128041.P7410431446213917582

/-! ## A128041.P785265230344322297

`A144885(n+1)-A300067(A217033(n))`
-/

namespace A128041.P785265230344322297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144885 (n + 1) - A300067 (A217033 n).toNat

end

end A128041.P785265230344322297

/-! ## A128041.P10619825629564291259

`A144885(A024649(n+1))-A025466(A000262(n))`
-/

namespace A128041.P10619825629564291259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144885 (A024649 (n + 1)).toNat - A025466 (A000262 n).toNat

end

end A128041.P10619825629564291259

/-!
# A128043: a(n) = (n^3 + n)*6^n.

The programs for A128043, the canonical program `A128043.P14865577018167597184` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128043 has offset 1).

The definition of A128043 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `((n+1)^3+n+1)*6^(n+1)` (program `A128043.P14865577018167597184`, by `A128043.P14865577018167597184.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A128043.P14865577018167597184

`((n+1)^3+n+1)*6^(n+1)`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A128043

/-- `((n+1)^3+n+1)*6^(n+1)` -/
def P14865577018167597184.Spec : Prop :=
  ∀ n, (P14865577018167597184.a n : ℤ) = A128043 (n + 1)

theorem P14865577018167597184.correct : P14865577018167597184.Spec := by
  intro n
  simp only [A128043, Nat.add_sub_cancel]

end A128043

/-! ## A128043.P4916653170092344009

`A128989(n+1)+A116164(n+1)`
-/

namespace A128043.P4916653170092344009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128989 (n + 1) + A116164 (n + 1)

end

end A128043.P4916653170092344009

namespace A128043

/-- `A128989(n+1)+A116164(n+1)` -/
def P4916653170092344009.Spec : Prop :=
  ∀ n, P4916653170092344009.a n = A128043 (n + 1)

end A128043

/-! ## A128043.P12090153492515694361

`A129006(n+1)-A128800(n+1)`
-/

namespace A128043.P12090153492515694361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129006 (n + 1) - A128800 (n + 1)

end

end A128043.P12090153492515694361

namespace A128043

/-- `A129006(n+1)-A128800(n+1)` -/
def P12090153492515694361.Spec : Prop :=
  ∀ n, P12090153492515694361.a n = A128043 (n + 1)

end A128043

/-! ## A128043.P18050572649998612869

`lcm(A036290(n+1), A119635(n+1))`
-/

namespace A128043.P18050572649998612869
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A036290 (n + 1)) (A119635 (n + 1))

end

end A128043.P18050572649998612869

namespace A128043

/-- `lcm(A036290(n+1), A119635(n+1))` -/
def P18050572649998612869.Spec : Prop :=
  ∀ n, (P18050572649998612869.a n : ℤ) = A128043 (n + 1)

end A128043

/-! ## A128043.P9240891313261360817

`A128989(n+1)+A129006(n+1)/(n+1)`
-/

namespace A128043.P9240891313261360817
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128989 (n + 1) : ℚ) + (A129006 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A128043.P9240891313261360817

namespace A128043

/-- `A128989(n+1)+A129006(n+1)/(n+1)` -/
def P9240891313261360817.Spec : Prop :=
  ∀ n, P9240891313261360817.a n = (A128043 (n + 1) : ℚ)

end A128043

/-! ## A128043.P5457203845732853938

`lcm(A119635(2*n+1-n), A121607(n+1))`
-/

namespace A128043.P5457203845732853938
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A119635 (2 * n + 1 - n)) (A121607 (n + 1))

end

end A128043.P5457203845732853938

namespace A128043

/-- `lcm(A119635(2*n+1-n), A121607(n+1))` -/
def P5457203845732853938.Spec : Prop :=
  ∀ n, (P5457203845732853938.a n : ℤ) = A128043 (n + 1)

end A128043

/-! ## A128043.P9807623910703426272

`A121607(n+1)*A127369(n+1)/A119635(n+1)`
-/

namespace A128043.P9807623910703426272
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A121607 (n + 1) * A127369 (n + 1) : ℚ) / (A119635 (n + 1) : ℚ)

end

end A128043.P9807623910703426272

namespace A128043

/-- `A121607(n+1)*A127369(n+1)/A119635(n+1)` -/
def P9807623910703426272.Spec : Prop :=
  ∀ n, P9807623910703426272.a n = (A128043 (n + 1) : ℚ)

end A128043

/-! ## A128043.P2294303597559173415

`A121607(n+1)*A128048(n+1)/A127369(n+1)`
-/

namespace A128043.P2294303597559173415
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A121607 (n + 1) * A128048 (n + 1) : ℚ) / (A127369 (n + 1) : ℚ)

end

end A128043.P2294303597559173415

namespace A128043

/-- `A121607(n+1)*A128048(n+1)/A127369(n+1)` -/
def P2294303597559173415.Spec : Prop :=
  ∀ n, P2294303597559173415.a n = (A128043 (n + 1) : ℚ)

end A128043

/-!
# A128044: a(n) = numerator of b(n), where b(1) = 1, b(n) = Sum_{k=1..n-1} b(n-k) * H(k); H(k) = Sum_{j=1..k} 1/j, the k-th harmonic number.

The programs for A128044, there is no canonical definition to state claims against.
-/

/-! ## A128044.P900283144955890923

`A076934(A094525(n)*A305306(n))`
-/

namespace A128044.P900283144955890923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076934 (A094525 n * A305306 n).toNat

end

end A128044.P900283144955890923

/-! ## A128044.P5278055715558389261

`A076934(A305306(n)*A329312(n+1))`
-/

namespace A128044.P5278055715558389261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076934 (A305306 n * A329312 (n + 1)).toNat

end

end A128044.P5278055715558389261

/-!
# A128045: a(n) = denominator of b(n), where b(1) = 1, b(n) = Sum_{k=1..n-1} b(n-k) * H(k); H(k) = Sum_{j=1..k} 1/j, the k-th harmonic number.

The programs for A128045, there is no canonical definition to state claims against.
-/

/-! ## A128045.P2279421176585112266

`A143965(record[A219924(2*n)])`
-/

namespace A128045.P2279421176585112266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219924 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143965 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A128045.P2279421176585112266

/-! ## A128045.P19902592430703427

`A072811(A368412(n)+A000666(n))`
-/

namespace A128045.P19902592430703427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072811 (A368412 n + A000666 n).toNat

end

end A128045.P19902592430703427

/-! ## A128045.P3538633875236999113

`A051801(A000930(n)*A001095(n))`
-/

namespace A128045.P3538633875236999113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051801 (A000930 n * A001095 n).toNat

end

end A128045.P3538633875236999113

/-!
# A128046: Triangle read by rows: inverse of the lower triangular matrix (1/1; 1/1, 1/3; 1/1, 1/3, 1/5; ...).

The programs for A128046, there is no canonical definition to state claims against.
-/

/-! ## A128046.P12955885253164468530

`Δ[-Δ[(comp[∑[n]]-n-2)²]]`
-/

namespace A128046.P12955885253164468530
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n : ℤ) - (n : ℤ) - 2) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A128046.P12955885253164468530

/-! ## A128046.P16667509725471750319

`tan(Δ[acot(Δ[(1-round(sqrt(2*n+1)))²])])`
-/

namespace A128046.P16667509725471750319
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - SequenceMachineLib.roundAway (Real.sqrt (2 * n + 1 : ℝ))) ^ 2

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (f2 (n + 1) - f2 n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tan (f1 (n + 1) - f1 n)

end

end A128046.P16667509725471750319

/-! ## A128046.P3174202613994199261

`-Δ[A127775(n+1)]`
-/

namespace A128046.P3174202613994199261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127775 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(f1 (n + 1) - f1 n)

end

end A128046.P3174202613994199261

/-! ## A128046.P17505378550955047224

`-Δ[abs(Δ[A061579(n)])]`
-/

namespace A128046.P17505378550955047224
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061579 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(f1 (n + 1) - f1 n)

end

end A128046.P17505378550955047224

/-! ## A128046.P302859689424431155

`-Δ[Δ[A003056(n)²]]`
-/

namespace A128046.P302859689424431155
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(f1 (n + 1) - f1 n)

end

end A128046.P302859689424431155

/-! ## A128046.P17389509973715022328

`A131507(n)*A167374(n)`
-/

namespace A128046.P17389509973715022328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131507 n * A167374 n

end

end A128046.P17389509973715022328

/-! ## A128046.P4825971703953637860

`A137695(n+1)*A167374(n)`
-/

namespace A128046.P4825971703953637860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137695 (n + 1) * A167374 n

end

end A128046.P4825971703953637860

/-! ## A128046.P14056054014580005517

`A127775(n+1)-A127775(n+2)`
-/

namespace A128046.P14056054014580005517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127775 (n + 1) - A127775 (n + 2)

end

end A128046.P14056054014580005517

/-! ## A128046.P12912897528576697779

`A127899(n+1)+A051340(n)-A051340(n+1)`
-/

namespace A128046.P12912897528576697779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127899 (n + 1) + (A051340 n - A051340 (n + 1))

end

end A128046.P12912897528576697779

/-!
# A128047: Binomial transform of A128046.

The programs for A128047, there is no canonical definition to state claims against.
-/

/-! ## A128047.P8074159427328128370

`A141692(n)+A127951(A077168(n))`
-/

namespace A128047.P8074159427328128370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141692 n + A127951 (A077168 n).toNat

end

end A128047.P8074159427328128370

/-! ## A128047.P12127901410223959332

`A127951(A077168(n))-A141692(A061579(n))`
-/

namespace A128047.P12127901410223959332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127951 (A077168 n).toNat - A141692 (A061579 n).toNat

end

end A128047.P12127901410223959332

/-!
# A128048: a(n) = (n^3+n)*8^n.

The programs for A128048, the canonical program `A128048.P94914982982816563` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128048 has offset 1).

The definition of A128048 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `((n+1)^3+n+1)*8^(n+1)` (program `A128048.P94914982982816563`, by `A128048.P94914982982816563.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A128048.P94914982982816563

`((n+1)^3+n+1)*8^(n+1)`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A128048

/-- `((n+1)^3+n+1)*8^(n+1)` -/
def P94914982982816563.Spec : Prop :=
  ∀ n, (P94914982982816563.a n : ℤ) = A128048 (n + 1)

theorem P94914982982816563.correct : P94914982982816563.Spec := by
  intro n
  simp only [A128048, Nat.add_sub_cancel]

end A128048

/-! ## A128048.P4314684995621779357

`A128991(n+1)+A129008(n+1)-A128967(n+1)`
-/

namespace A128048.P4314684995621779357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128991 (n + 1) + (A129008 (n + 1) - A128967 (n + 1))

end

end A128048.P4314684995621779357

namespace A128048

/-- `A128991(n+1)+A129008(n+1)-A128967(n+1)` -/
def P4314684995621779357.Spec : Prop :=
  ∀ n, P4314684995621779357.a n = A128048 (n + 1)

end A128048

/-! ## A128048.P188863049191267936

`A127369(n+1)²/A119635(n+1)`
-/

namespace A128048.P188863049191267936
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127369 (n + 1) ^ 2 : ℚ) / (A119635 (n + 1) : ℚ)

end

end A128048.P188863049191267936

namespace A128048

/-- `A127369(n+1)²/A119635(n+1)` -/
def P188863049191267936.Spec : Prop :=
  ∀ n, P188863049191267936.a n = (A128048 (n + 1) : ℚ)

end A128048

/-! ## A128048.P13700293696171803820

`A119635(n+1)*A129008(n+1)/A129002(n+1)`
-/

namespace A128048.P13700293696171803820
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A119635 (n + 1) * A129008 (n + 1) : ℚ) / (A129002 (n + 1) : ℚ)

end

end A128048.P13700293696171803820

namespace A128048

/-- `A119635(n+1)*A129008(n+1)/A129002(n+1)` -/
def P13700293696171803820.Spec : Prop :=
  ∀ n, P13700293696171803820.a n = (A128048 (n + 1) : ℚ)

end A128048

/-! ## A128048.P6982799116507115607

`A127369(n+1)*A128043(n+1)/A121607(n+1)`
-/

namespace A128048.P6982799116507115607
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127369 (n + 1) * A128043 (n + 1) : ℚ) / (A121607 (n + 1) : ℚ)

end

end A128048.P6982799116507115607

namespace A128048

/-- `A127369(n+1)*A128043(n+1)/A121607(n+1)` -/
def P6982799116507115607.Spec : Prop :=
  ∀ n, P6982799116507115607.a n = (A128048 (n + 1) : ℚ)

end A128048

/-!
# A128049: Least number k>0 such that abs((3^k - (3-n)^k)/n) is prime, or 0 if no such prime exists.

The programs for A128049, there is no canonical definition to state claims against.
-/

/-! ## A128049.P5736445097616234432

`A331779(3*A001060(n))`
-/

namespace A128049.P5736445097616234432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331779 (3 * A001060 n).toNat

end

end A128049.P5736445097616234432

/-! ## A128049.P10179254127659161703

`xor(1, A260453(A022118(n)))`
-/

namespace A128049.P10179254127659161703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A260453 (A022118 n).toNat)

end

end A128049.P10179254127659161703

/-! ## A128049.P10497294194121699080

`A082844(n+1)*A097325(A255499(n))`
-/

namespace A128049.P10497294194121699080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082844 (n + 1) * A097325 (A255499 n).toNat

end

end A128049.P10497294194121699080

/-! ## A128049.P14653085575775174637

`A097325(n)*A099774(A346096(n+1))`
-/

namespace A128049.P14653085575775174637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097325 n * A099774 (A346096 (n + 1)).toNat

end

end A128049.P14653085575775174637

/-! ## A128049.P9230227536657701966

`A099774(A346096(n+1))%A123932(n)`
-/

namespace A128049.P9230227536657701966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A099774 (A346096 (n + 1)).toNat) (A123932 n)

end

end A128049.P9230227536657701966

/-!
# A128050: Position of start of first occurrence of prime(n) after the decimal point in expansion of golden ratio phi.

The programs for A128050, there is no canonical definition to state claims against.
-/

/-! ## A128050.P14160603716887840494

`A088577(Δ[A007504(n)])-1`
-/

namespace A128050.P14160603716887840494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088577 (f1 (n + 1) - f1 n).toNat - 1

end

end A128050.P14160603716887840494

/-! ## A128050.P11980319737793741401

`A088577(A000040(n+1))-1`
-/

namespace A128050.P11980319737793741401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088577 (A000040 (n + 1)).toNat - 1

end

end A128050.P11980319737793741401

/-! ## A128050.P5071105970170576296

`A088577(∑[A054541(n+1)])-1`
-/

namespace A128050.P5071105970170576296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088577 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - 1

end

end A128050.P5071105970170576296

/-! ## A128050.P68847199263057832

`A088577(record[A006530(n+2)])-1`
-/

namespace A128050.P68847199263057832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088577 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat - 1

end

end A128050.P68847199263057832

/-! ## A128050.P16908178051646978559

`A088577(record[A014963(n+2)])-1`
-/

namespace A128050.P16908178051646978559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088577 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat - 1

end

end A128050.P16908178051646978559

/-! ## A128050.P16739562385085902863

`A088577(record[A020639(n+2)])-1`
-/

namespace A128050.P16739562385085902863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088577 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat - 1

end

end A128050.P16739562385085902863

/-!
# A128051: a(n) = (n^3 + n)*7^n.

The programs for A128051, the canonical program `A128051.P17154078098800671309` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128051 has offset 1).

The definition of A128051 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `((n+1)^3+n+1)*7^(n+1)` (program `A128051.P17154078098800671309`, by `A128051.P17154078098800671309.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A128051.P17154078098800671309

`((n+1)^3+n+1)*7^(n+1)`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A128051

/-- `((n+1)^3+n+1)*7^(n+1)` -/
def P17154078098800671309.Spec : Prop :=
  ∀ n, (P17154078098800671309.a n : ℤ) = A128051 (n + 1)

theorem P17154078098800671309.correct : P17154078098800671309.Spec := by
  intro n
  simp only [A128051, Nat.add_sub_cancel]

end A128051

/-! ## A128051.P9802280673051086882

`lcm((n+1)²+1, A036293(n+1))`
-/

namespace A128051.P9802280673051086882
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((n + 1) ^ 2 + 1 : ℤ) (A036293 (n + 1))

end

end A128051.P9802280673051086882

namespace A128051

/-- `lcm((n+1)²+1, A036293(n+1))` -/
def P9802280673051086882.Spec : Prop :=
  ∀ n, (P9802280673051086882.a n : ℤ) = A128051 (n + 1)

end A128051

/-! ## A128051.P16838025002443041085

`A128990(n+1)+A116165(n+1)`
-/

namespace A128051.P16838025002443041085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128990 (n + 1) + A116165 (n + 1)

end

end A128051.P16838025002443041085

namespace A128051

/-- `A128990(n+1)+A116165(n+1)` -/
def P16838025002443041085.Spec : Prop :=
  ∀ n, P16838025002443041085.a n = A128051 (n + 1)

end A128051

/-! ## A128051.P9541499267314370095

`A129007(n+1)-A128801(n+1)`
-/

namespace A128051.P9541499267314370095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129007 (n + 1) - A128801 (n + 1)

end

end A128051.P9541499267314370095

namespace A128051

/-- `A129007(n+1)-A128801(n+1)` -/
def P9541499267314370095.Spec : Prop :=
  ∀ n, P9541499267314370095.a n = A128051 (n + 1)

end A128051

/-! ## A128051.P638198014692124578

`A129007(n+1)-7*A116165(n)`
-/

namespace A128051.P638198014692124578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129007 (n + 1) - 7 * A116165 n

end

end A128051.P638198014692124578

namespace A128051

/-- `A129007(n+1)-7*A116165(n)` -/
def P638198014692124578.Spec : Prop :=
  ∀ n, P638198014692124578.a n = A128051 (n + 1)

end A128051

/-! ## A128051.P15257718124418894997

`A119635(n+1)*A129007(n+1)/A129002(n+1)`
-/

namespace A128051.P15257718124418894997
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A119635 (n + 1) * A129007 (n + 1) : ℚ) / (A129002 (n + 1) : ℚ)

end

end A128051.P15257718124418894997

namespace A128051

/-- `A119635(n+1)*A129007(n+1)/A129002(n+1)` -/
def P15257718124418894997.Spec : Prop :=
  ∀ n, P15257718124418894997.a n = (A128051 (n + 1) : ℚ)

end A128051

/-!
# A128052: a(n) = (F(2*n-1) + F(2*n+1))*(5/6 - cos(2*Pi*n/3)/3), where F(n) = Fibonacci(n).

The programs for A128052, the canonical program `A128052.P5404848554641062887` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128052 has offset 0).

The definition of A128052 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A128052.P5404848554641062887

`18*a(n-3)-a(n-6)` with `a(0)=1, a(1)=3, a(2)=7, a(3)=9, a(4)=47, a(5)=123`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A128052

/-- `18*a(n-3)-a(n-6)` -/
def P5404848554641062887.Spec : Prop :=
  ∀ n, P5404848554641062887.a n = A128052 n

theorem P5404848554641062887.correct : P5404848554641062887.Spec := by
  intro n
  simp only [A128052]

end A128052

/-! ## A128052.P13328852750296136329

`lcm(2, A071618(n))+1`
-/

namespace A128052.P13328852750296136329
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A071618 n) + 1

end

end A128052.P13328852750296136329

namespace A128052

/-- `lcm(2, A071618(n))+1` -/
def P13328852750296136329.Spec : Prop :=
  ∀ n, (P13328852750296136329.a n : ℤ) = A128052 n

end A128052

/-! ## A128052.P15248043582208545976

`A219233(n)/A281727(n)`
-/

namespace A128052.P15248043582208545976
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A219233 n : ℚ) / (A281727 n : ℚ)

end

end A128052.P15248043582208545976

namespace A128052

/-- `A219233(n)/A281727(n)` -/
def P15248043582208545976.Spec : Prop :=
  ∀ n, P15248043582208545976.a n = (A128052 n : ℚ)

end A128052

/-! ## A128052.P7338214138290216322

`A005248(n)/gcd(2, A000045(n))`
-/

namespace A128052.P7338214138290216322
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005248 n : ℚ) / (Int.gcd 2 (A000045 n) : ℚ)

end

end A128052.P7338214138290216322

namespace A128052

/-- `A005248(n)/gcd(2, A000045(n))` -/
def P7338214138290216322.Spec : Prop :=
  ∀ n, P7338214138290216322.a n = (A128052 n : ℚ)

end A128052

/-! ## A128052.P18201385260944985262

`A005248(n)/gcd(10, A001254(n))`
-/

namespace A128052.P18201385260944985262
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005248 n : ℚ) / (Int.gcd 10 (A001254 n) : ℚ)

end

end A128052.P18201385260944985262

namespace A128052

/-- `A005248(n)/gcd(10, A001254(n))` -/
def P18201385260944985262.Spec : Prop :=
  ∀ n, P18201385260944985262.a n = (A128052 n : ℚ)

end A128052

/-! ## A128052.P11278283793505690341

`A000032(2*n)/A131534(n+1)`
-/

namespace A128052.P11278283793505690341
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000032 (2 * n) : ℚ) / (A131534 (n + 1) : ℚ)

end

end A128052.P11278283793505690341

namespace A128052

/-- `A000032(2*n)/A131534(n+1)` -/
def P11278283793505690341.Spec : Prop :=
  ∀ n, P11278283793505690341.a n = (A128052 n : ℚ)

end A128052

/-! ## A128052.P54876675406338059

`A000032(2*n)/A101825(n+2)`
-/

namespace A128052.P54876675406338059
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000032 (2 * n) : ℚ) / (A101825 (n + 2) : ℚ)

end

end A128052.P54876675406338059

namespace A128052

/-- `A000032(2*n)/A101825(n+2)` -/
def P54876675406338059.Spec : Prop :=
  ∀ n, P54876675406338059.a n = (A128052 n : ℚ)

end A128052

/-! ## A128052.P15232372637339938232

`A000032(2*n)/(2-A011655(n))`
-/

namespace A128052.P15232372637339938232
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000032 (2 * n) : ℚ) / (2 - A011655 n : ℚ)

end

end A128052.P15232372637339938232

namespace A128052

/-- `A000032(2*n)/(2-A011655(n))` -/
def P15232372637339938232.Spec : Prop :=
  ∀ n, P15232372637339938232.a n = (A128052 n : ℚ)

end A128052

/-! ## A128052.P1521459888158064104

`A000032(2*n)/(A079979(2*n)+1)`
-/

namespace A128052.P1521459888158064104
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000032 (2 * n) : ℚ) / (A079979 (2 * n) + 1 : ℚ)

end

end A128052.P1521459888158064104

namespace A128052

/-- `A000032(2*n)/(A079979(2*n)+1)` -/
def P1521459888158064104.Spec : Prop :=
  ∀ n, P1521459888158064104.a n = (A128052 n : ℚ)

end A128052

/-! ## A128052.P6385307532329938674

`A000032(2*n)/(2-and(1, A000032(n)))`
-/

namespace A128052.P6385307532329938674
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000032 (2 * n) : ℚ) / (2 - Int.land 1 (A000032 n) : ℚ)

end

end A128052.P6385307532329938674

namespace A128052

/-- `A000032(2*n)/(2-and(1, A000032(n)))` -/
def P6385307532329938674.Spec : Prop :=
  ∀ n, P6385307532329938674.a n = (A128052 n : ℚ)

end A128052

/-! ## A128052.P14821768656291733138

`A000032(2*n)/A000005(gcd(n, n+3))`
-/

namespace A128052.P14821768656291733138
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000032 (2 * n) : ℚ) / (A000005 (Nat.gcd n (n + 3)) : ℚ)

end

end A128052.P14821768656291733138

namespace A128052

/-- `A000032(2*n)/A000005(gcd(n, n+3))` -/
def P14821768656291733138.Spec : Prop :=
  ∀ n, P14821768656291733138.a n = (A128052 n : ℚ)

end A128052

/-! ## A128052.P6173693171373469001

`A000032(2*n)/A000010(gcd(n-3, 2*n))`
-/

namespace A128052.P6173693171373469001
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000032 (2 * n) : ℚ) / (A000010 (Int.gcd ((n : ℤ) - 3) (2 * n : ℤ)) : ℚ)

end

end A128052.P6173693171373469001

namespace A128052

/-- `A000032(2*n)/A000010(gcd(n-3, 2*n))` -/
def P6173693171373469001.Spec : Prop :=
  ∀ n, P6173693171373469001.a n = (A128052 n : ℚ)

end A128052

/-! ## A128052.P4637971048826247411

`A005248(n)/gcd(A005013(n), A005248(n))`
-/

namespace A128052.P4637971048826247411
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005248 n : ℚ) / (Int.gcd (A005013 n) (A005248 n) : ℚ)

end

end A128052.P4637971048826247411

namespace A128052

/-- `A005248(n)/gcd(A005013(n), A005248(n))` -/
def P4637971048826247411.Spec : Prop :=
  ∀ n, P4637971048826247411.a n = (A128052 n : ℚ)

end A128052

/-! ## A128052.P16447234343950232018

`A000032(2*n)/(A267208(n+2)+A267208(n+1))`
-/

namespace A128052.P16447234343950232018
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000032 (2 * n) : ℚ) / (A267208 (n + 2) + A267208 (n + 1) : ℚ)

end

end A128052.P16447234343950232018

namespace A128052

/-- `A000032(2*n)/(A267208(n+2)+A267208(n+1))` -/
def P16447234343950232018.Spec : Prop :=
  ∀ n, P16447234343950232018.a n = (A128052 n : ℚ)

end A128052

/-! ## A128052.P11892866075098397272

`A000032(2*n)/gcd(A000032(2*n), A006355(n+1))`
-/

namespace A128052.P11892866075098397272
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000032 (2 * n) : ℚ) / (Int.gcd (A000032 (2 * n)) (A006355 (n + 1)) : ℚ)

end

end A128052.P11892866075098397272

namespace A128052

/-- `A000032(2*n)/gcd(A000032(2*n), A006355(n+1))` -/
def P11892866075098397272.Spec : Prop :=
  ∀ n, P11892866075098397272.a n = (A128052 n : ℚ)

end A128052

/-! ## A128052.P284567978565657267

`A000032(2*n)/(A004772(2*(n+1))-A004772(2*n+1))`
-/

namespace A128052.P284567978565657267
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000032 (2 * n) : ℚ) / (A004772 (2 * (n + 1)) - A004772 (2 * n + 1) : ℚ)

end

end A128052.P284567978565657267

namespace A128052

/-- `A000032(2*n)/(A004772(2*(n+1))-A004772(2*n+1))` -/
def P284567978565657267.Spec : Prop :=
  ∀ n, P284567978565657267.a n = (A128052 n : ℚ)

end A128052

/-! ## A128052.P14666440154878340807

`A000032(2*n)/(A047306(2*(n+1))-A047306(2*n+1))`
-/

namespace A128052.P14666440154878340807
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000032 (2 * n) : ℚ) / (A047306 (2 * (n + 1)) - A047306 (2 * n + 1) : ℚ)

end

end A128052.P14666440154878340807

namespace A128052

/-- `A000032(2*n)/(A047306(2*(n+1))-A047306(2*n+1))` -/
def P14666440154878340807.Spec : Prop :=
  ∀ n, P14666440154878340807.a n = (A128052 n : ℚ)

end A128052

/-! ## A128052.P5196760654456154920

`A061084(2*n+1)/gcd(A061084(2*n+1), A061084(n+1))`
-/

namespace A128052.P5196760654456154920
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061084 (2 * n + 1) : ℚ) / (Int.gcd (A061084 (2 * n + 1)) (A061084 (n + 1)) : ℚ)

end

end A128052.P5196760654456154920

namespace A128052

/-- `A061084(2*n+1)/gcd(A061084(2*n+1), A061084(n+1))` -/
def P5196760654456154920.Spec : Prop :=
  ∀ n, P5196760654456154920.a n = (A128052 n : ℚ)

end A128052

/-! ## A128052.P7453247788558688168

`A179132(n+1)+A179132(n+1)-A179131(n+1)`
-/

namespace A128052.P7453247788558688168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179132 (n + 1) + (A179132 (n + 1) - A179131 (n + 1))

end

end A128052.P7453247788558688168

namespace A128052

/-- `A179132(n+1)+A179132(n+1)-A179131(n+1)` -/
def P7453247788558688168.Spec : Prop :=
  ∀ n, P7453247788558688168.a n = A128052 n

end A128052

/-!
# A128053: a(n)=A128056(n)/A128055(n).

The programs for A128053, the canonical program `A128053.P4874709391304098829` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128053 has offset 0).

The definition of A128053 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A128056, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A128053.P4874709391304098829

`A128056(n)/A128055(n)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A128053

/-- `A128056(n)/A128055(n)` -/
def P4874709391304098829.Spec : Prop :=
  ∀ n, P4874709391304098829.a n = (A128053 n : ℚ)

end A128053

/-! ## A128053.P7781827512165403859

`(-1)^∑[n]*A128052(ceil(n/2))`
-/

namespace A128053.P7781827512165403859
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (∑ j ∈ Finset.range (n + 1), f1 j) * A128052 ⌈(n : ℚ) / 2⌉.toNat

end

end A128053.P7781827512165403859

namespace A128053

/-- `(-1)^∑[n]*A128052(ceil(n/2))` -/
def P7781827512165403859.Spec : Prop :=
  ∀ n, P7781827512165403859.a n = A128053 n

end A128053

/-! ## A128053.P5517705404890396331

`A128052(A059169(2*n+1))/(-1)^∑[n]`
-/

namespace A128053.P5517705404890396331
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128052 (A059169 (2 * n + 1)).toNat : ℚ) / ((-1) ^ (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A128053.P5517705404890396331

namespace A128053

/-- `A128052(A059169(2*n+1))/(-1)^∑[n]` -/
def P5517705404890396331.Spec : Prop :=
  ∀ n, P5517705404890396331.a n = (A128053 n : ℚ)

end A128053

/-! ## A128053.P7259071768574778342

`A128056(n)/gcd(A000079(n), A128056(n))`
-/

namespace A128053.P7259071768574778342
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128056 n : ℚ) / (Int.gcd (A000079 n) (A128056 n) : ℚ)

end

end A128053.P7259071768574778342

namespace A128053

/-- `A128056(n)/gcd(A000079(n), A128056(n))` -/
def P7259071768574778342.Spec : Prop :=
  ∀ n, P7259071768574778342.a n = (A128053 n : ℚ)

end A128053

/-! ## A128053.P6007031200717690210

`A011782(n)*A219233(A110654(n))/A128055(n)`
-/

namespace A128053.P6007031200717690210
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011782 n * A219233 (A110654 n).toNat : ℚ) / (A128055 n : ℚ)

end

end A128053.P6007031200717690210

namespace A128053

/-- `A011782(n)*A219233(A110654(n))/A128055(n)` -/
def P6007031200717690210.Spec : Prop :=
  ∀ n, P6007031200717690210.a n = (A128053 n : ℚ)

end A128053

/-!
# A128054: List the nonnegative integers where multiples of 6 occur twice and numbers of the form 6k+4 are omitted.

The programs for A128054, the canonical program `A128054.P15946044345595632024` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128054 has offset 0).

The definition of A128054 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A128054.P15946044345595632024

`a(n-6)+6` with `a(0)=0, a(1)=0, a(2)=1, a(3)=2, a(4)=3, a(5)=5`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A128054

/-- `a(n-6)+6` -/
def P15946044345595632024.Spec : Prop :=
  ∀ n, (P15946044345595632024.a n : ℤ) = A128054 n

theorem P15946044345595632024.correct : P15946044345595632024.Spec := by
  intro n
  simp only [A128054]

end A128054

/-! ## A128054.P7955659862344294448

`n-((n%6)^4)%5`
-/

namespace A128054.P7955659862344294448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (((n % 6) ^ 4 % 5 : ℕ) : ℤ)

end

end A128054.P7955659862344294448

namespace A128054

/-- `n-((n%6)^4)%5` -/
def P7955659862344294448.Spec : Prop :=
  ∀ n, P7955659862344294448.a n = A128054 n

end A128054

/-! ## A128054.P6444889094355491076

`n-ceil(n/2)²%3`
-/

namespace A128054.P6444889094355491076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - Int.tmod (⌈(n : ℚ) / 2⌉ ^ 2) 3

end

end A128054.P6444889094355491076

namespace A128054

/-- `n-ceil(n/2)²%3` -/
def P6444889094355491076.Spec : Prop :=
  ∀ n, P6444889094355491076.a n = A128054 n

end A128054

/-! ## A128054.P14777851444634701965

`n-floor(atan((n+1)%6))`
-/

namespace A128054.P14777851444634701965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ⌊Real.arctan (((n + 1) % 6 : ℕ) : ℝ)⌋

end

end A128054.P14777851444634701965

namespace A128054

/-- `n-floor(atan((n+1)%6))` -/
def P14777851444634701965.Spec : Prop :=
  ∀ n, P14777851444634701965.a n = A128054 n

end A128054

/-! ## A128054.P13120267815829154594

`-ceil(n/2)²%3+n`
-/

namespace A128054.P13120267815829154594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (-(⌈(n : ℚ) / 2⌉ ^ 2)) 3 + (n : ℤ)

end

end A128054.P13120267815829154594

namespace A128054

/-- `-ceil(n/2)²%3+n` -/
def P13120267815829154594.Spec : Prop :=
  ∀ n, P13120267815829154594.a n = A128054 n

end A128054

/-! ## A128054.P15298390840752427164

`n-round(sqrt(∑[lcm(2, n)]%3))`
-/

namespace A128054.P15298390840752427164
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - SequenceMachineLib.roundAway (Real.sqrt (((∑ j ∈ Finset.range (n + 1), f1 j) % 3 : ℕ) : ℝ))

end

end A128054.P15298390840752427164

namespace A128054

/-- `n-round(sqrt(∑[lcm(2, n)]%3))` -/
def P15298390840752427164.Spec : Prop :=
  ∀ n, P15298390840752427164.a n = A128054 n

end A128054

/-! ## A128054.P5479193428423972672

`n-1-floor(sin((n-1)%6))`
-/

namespace A128054.P5479193428423972672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1 - ⌊Real.sin (Int.tmod ((n : ℤ) - 1) 6 : ℝ)⌋

end

end A128054.P5479193428423972672

namespace A128054

/-- `n-1-floor(sin((n-1)%6))` -/
def P5479193428423972672.Spec : Prop :=
  ∀ n, P5479193428423972672.a n = A128054 n

end A128054

/-! ## A128054.P14057060525855049724

`n+1-Δ[∪[2*n+1, 5*n]]`
-/

namespace A128054.P14057060525855049724
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = x) ∨ ∃ j, f3 j = x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A128054.P14057060525855049724

namespace A128054

/-- `n+1-Δ[∪[2*n+1, 5*n]]` -/
def P14057060525855049724.Spec : Prop :=
  ∀ n, P14057060525855049724.a n = A128054 n

end A128054

/-! ## A128054.P5173165571131499739

`n-A131719(n)`
-/

namespace A128054.P5173165571131499739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A131719 n

end

end A128054.P5173165571131499739

namespace A128054

/-- `n-A131719(n)` -/
def P5173165571131499739.Spec : Prop :=
  ∀ n, P5173165571131499739.a n = A128054 n

end A128054

/-! ## A128054.P17729614250642606478

`∑[1-A163817(n)]`
-/

namespace A128054.P17729614250642606478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A163817 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A128054.P17729614250642606478

namespace A128054

/-- `∑[1-A163817(n)]` -/
def P17729614250642606478.Spec : Prop :=
  ∀ n, P17729614250642606478.a n = A128054 n

end A128054

/-! ## A128054.P4864561311189711348

`n-abs(A131720(n))`
-/

namespace A128054.P4864561311189711348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - |A131720 n|

end

end A128054.P4864561311189711348

namespace A128054

/-- `n-abs(A131720(n))` -/
def P4864561311189711348.Spec : Prop :=
  ∀ n, P4864561311189711348.a n = A128054 n

end A128054

/-! ## A128054.P7103622442593632842

`n-∑[A134667(n)]`
-/

namespace A128054.P7103622442593632842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134667 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A128054.P7103622442593632842

namespace A128054

/-- `n-∑[A134667(n)]` -/
def P7103622442593632842.Spec : Prop :=
  ∀ n, P7103622442593632842.a n = A128054 n

end A128054

/-! ## A128054.P10820315728433607108

`n-and(1, A076118(n))`
-/

namespace A128054.P10820315728433607108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - Int.land 1 (A076118 n)

end

end A128054.P10820315728433607108

namespace A128054

/-- `n-and(1, A076118(n))` -/
def P10820315728433607108.Spec : Prop :=
  ∀ n, P10820315728433607108.a n = A128054 n

end A128054

/-! ## A128054.P1130316627716855367

`n-and(1, A110569(n))`
-/

namespace A128054.P1130316627716855367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - Int.land 1 (A110569 n)

end

end A128054.P1130316627716855367

namespace A128054

/-- `n-and(1, A110569(n))` -/
def P1130316627716855367.Spec : Prop :=
  ∀ n, P1130316627716855367.a n = A128054 n

end A128054

/-! ## A128054.P17110762693027992811

`n-abs(∑[A110161(n)])`
-/

namespace A128054.P17110762693027992811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110161 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A128054.P17110762693027992811

namespace A128054

/-- `n-abs(∑[A110161(n)])` -/
def P17110762693027992811.Spec : Prop :=
  ∀ n, P17110762693027992811.a n = A128054 n

end A128054

/-! ## A128054.P6354652544194193937

`n-abs(A131736(n+1))`
-/

namespace A128054.P6354652544194193937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - |A131736 (n + 1)|

end

end A128054.P6354652544194193937

namespace A128054

/-- `n-abs(A131736(n+1))` -/
def P6354652544194193937.Spec : Prop :=
  ∀ n, P6354652544194193937.a n = A128054 n

end A128054

/-! ## A128054.P49646054131763000

`A096284(n+3)-2+n`
-/

namespace A128054.P49646054131763000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096284 (n + 3) - 2 + (n : ℤ)

end

end A128054.P49646054131763000

namespace A128054

/-- `A096284(n+3)-2+n` -/
def P49646054131763000.Spec : Prop :=
  ∀ n, P49646054131763000.a n = A128054 n

end A128054

/-! ## A128054.P1492565974383275158

`n-and(1, A295515(n+1))`
-/

namespace A128054.P1492565974383275158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - Int.land 1 (A295515 (n + 1))

end

end A128054.P1492565974383275158

namespace A128054

/-- `n-and(1, A295515(n+1))` -/
def P1492565974383275158.Spec : Prop :=
  ∀ n, P1492565974383275158.a n = A128054 n

end A128054

/-! ## A128054.P7000305513062020001

`A061800(n)-A110568(n)`
-/

namespace A128054.P7000305513062020001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061800 n - A110568 n

end

end A128054.P7000305513062020001

namespace A128054

/-- `A061800(n)-A110568(n)` -/
def P7000305513062020001.Spec : Prop :=
  ∀ n, P7000305513062020001.a n = A128054 n

end A128054

/-! ## A128054.P13514882024177131834

`A047504(n+1)-A099480(n)`
-/

namespace A128054.P13514882024177131834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047504 (n + 1) - A099480 n

end

end A128054.P13514882024177131834

namespace A128054

/-- `A047504(n+1)-A099480(n)` -/
def P13514882024177131834.Spec : Prop :=
  ∀ n, P13514882024177131834.a n = A128054 n

end A128054

/-!
# A128055: a(n) = 2^A128054(n).

The programs for A128055, the canonical program `A128055.P2008874094036097807` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128055 has offset 0).

The definition of A128055 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A128055.P2008874094036097807

`2^A128054(n)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A128055

/-- `2^A128054(n)` -/
def P2008874094036097807.Spec : Prop :=
  ∀ n, P2008874094036097807.a n = (A128055 n : ℚ)

end A128055

/-! ## A128055.P2471547309967519176

`2^(n-(n%6)²²%5)`
-/

namespace A128055.P2471547309967519176
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - ((((n % 6) ^ 2) ^ 2 % 5 : ℕ) : ℤ) : ℤ)

end

end A128055.P2471547309967519176

namespace A128055

/-- `2^(n-(n%6)²²%5)` -/
def P2471547309967519176.Spec : Prop :=
  ∀ n, P2471547309967519176.a n = (A128055 n : ℚ)

end A128055

/-! ## A128055.P15567321604747016033

`2^(n-floor(atan((n+1)%6)))`
-/

namespace A128055.P15567321604747016033
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - ⌊Real.arctan (((n + 1) % 6 : ℕ) : ℝ)⌋ : ℤ)

end

end A128055.P15567321604747016033

namespace A128055

/-- `2^(n-floor(atan((n+1)%6)))` -/
def P15567321604747016033.Spec : Prop :=
  ∀ n, P15567321604747016033.a n = (A128055 n : ℚ)

end A128055

/-! ## A128055.P92997881599833117

`2^(n-A131719(n))`
-/

namespace A128055.P92997881599833117
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - A131719 n : ℤ)

end

end A128055.P92997881599833117

namespace A128055

/-- `2^(n-A131719(n))` -/
def P92997881599833117.Spec : Prop :=
  ∀ n, P92997881599833117.a n = (A128055 n : ℚ)

end A128055

/-! ## A128055.P5345017128892084605

`2^(n-A131735(n+1))`
-/

namespace A128055.P5345017128892084605
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - A131735 (n + 1) : ℤ)

end

end A128055.P5345017128892084605

namespace A128055

/-- `2^(n-A131735(n+1))` -/
def P5345017128892084605.Spec : Prop :=
  ∀ n, P5345017128892084605.a n = (A128055 n : ℚ)

end A128055

/-! ## A128055.P2615299002783908005

`2^(n-and(1, A104862(n)))`
-/

namespace A128055.P2615299002783908005
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - Int.land 1 (A104862 n) : ℤ)

end

end A128055.P2615299002783908005

namespace A128055

/-- `2^(n-and(1, A104862(n)))` -/
def P2615299002783908005.Spec : Prop :=
  ∀ n, P2615299002783908005.a n = (A128055 n : ℚ)

end A128055

/-! ## A128055.P5408327692708399837

`2^(A095130(n+2)+n-1)`
-/

namespace A128055.P5408327692708399837
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A095130 (n + 2) + ((n : ℤ) - 1) : ℤ)

end

end A128055.P5408327692708399837

namespace A128055

/-- `2^(A095130(n+2)+n-1)` -/
def P5408327692708399837.Spec : Prop :=
  ∀ n, P5408327692708399837.a n = (A128055 n : ℚ)

end A128055

/-! ## A128055.P865714282214256388

`2^(A096284(n+3)+n-2)`
-/

namespace A128055.P865714282214256388
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A096284 (n + 3) + ((n : ℤ) - 2) : ℤ)

end

end A128055.P865714282214256388

namespace A128055

/-- `2^(A096284(n+3)+n-2)` -/
def P865714282214256388.Spec : Prop :=
  ∀ n, P865714282214256388.a n = (A128055 n : ℚ)

end A128055

/-! ## A128055.P6496368447557203676

`2^(n-and(1, A000032(∑[and(1, n)])))`
-/

namespace A128055.P6496368447557203676
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - Int.land 1 (A000032 (∑ j ∈ Finset.range (n + 1), f1 j)) : ℤ)

end

end A128055.P6496368447557203676

namespace A128055

/-- `2^(n-and(1, A000032(∑[and(1, n)])))` -/
def P6496368447557203676.Spec : Prop :=
  ∀ n, P6496368447557203676.a n = (A128055 n : ℚ)

end A128055

/-! ## A128055.P97311282040602789

`A000079(A128054(n))`
-/

namespace A128055.P97311282040602789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A128054 n).toNat

end

end A128055.P97311282040602789

namespace A128055

/-- `A000079(A128054(n))` -/
def P97311282040602789.Spec : Prop :=
  ∀ n, P97311282040602789.a n = A128055 n

end A128055

/-! ## A128055.P5401439777620619843

`A011782(A128054(n)+1)`
-/

namespace A128055.P5401439777620619843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A128054 n + 1).toNat

end

end A128055.P5401439777620619843

namespace A128055

/-- `A011782(A128054(n)+1)` -/
def P5401439777620619843.Spec : Prop :=
  ∀ n, P5401439777620619843.a n = A128055 n

end A128055

/-! ## A128055.P15136693457348292252

`A011782(1-A131719(n)+n)`
-/

namespace A128055.P15136693457348292252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (1 - A131719 n + (n : ℤ)).toNat

end

end A128055.P15136693457348292252

namespace A128055

/-- `A011782(1-A131719(n)+n)` -/
def P15136693457348292252.Spec : Prop :=
  ∀ n, P15136693457348292252.a n = A128055 n

end A128055

/-! ## A128055.P16983326054800439032

`A011782(1-(A131719(n)-n))`
-/

namespace A128055.P16983326054800439032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (1 - (A131719 n - (n : ℤ))).toNat

end

end A128055.P16983326054800439032

namespace A128055

/-- `A011782(1-(A131719(n)-n))` -/
def P16983326054800439032.Spec : Prop :=
  ∀ n, P16983326054800439032.a n = A128055 n

end A128055

/-! ## A128055.P15730156596928333870

`2^(n-A000045(∑[A128834(n)]))`
-/

namespace A128055.P15730156596928333870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128834 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - A000045 (∑ j ∈ Finset.range (n + 1), f1 j).toNat : ℤ)

end

end A128055.P15730156596928333870

namespace A128055

/-- `2^(n-A000045(∑[A128834(n)]))` -/
def P15730156596928333870.Spec : Prop :=
  ∀ n, P15730156596928333870.a n = (A128055 n : ℚ)

end A128055

/-! ## A128055.P16014077814259251319

`A011782(n+1-A131735(n+1))`
-/

namespace A128055.P16014077814259251319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 ((n + 1 : ℤ) - A131735 (n + 1)).toNat

end

end A128055.P16014077814259251319

namespace A128055

/-- `A011782(n+1-A131735(n+1))` -/
def P16014077814259251319.Spec : Prop :=
  ∀ n, P16014077814259251319.a n = A128055 n

end A128055

/-! ## A128055.P4911776550662766045

`A131577(A096284(n+3)-1+n)`
-/

namespace A128055.P4911776550662766045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 (A096284 (n + 3) - 1 + (n : ℤ)).toNat

end

end A128055.P4911776550662766045

namespace A128055

/-- `A131577(A096284(n+3)-1+n)` -/
def P4911776550662766045.Spec : Prop :=
  ∀ n, P4911776550662766045.a n = A128055 n

end A128055

/-! ## A128055.P6458509523690498873

`A000079(n+1-A000034(A295515(n+1)))`
-/

namespace A128055.P6458509523690498873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 ((n + 1 : ℤ) - A000034 (A295515 (n + 1)).toNat).toNat

end

end A128055.P6458509523690498873

namespace A128055

/-- `A000079(n+1-A000034(A295515(n+1)))` -/
def P6458509523690498873.Spec : Prop :=
  ∀ n, P6458509523690498873.a n = A128055 n

end A128055

/-! ## A128055.P4267319627167561239

`A000079(n)/A000034(A295515(n+1))`
-/

namespace A128055.P4267319627167561239
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000079 n : ℚ) / (A000034 (A295515 (n + 1)).toNat : ℚ)

end

end A128055.P4267319627167561239

namespace A128055

/-- `A000079(n)/A000034(A295515(n+1))` -/
def P4267319627167561239.Spec : Prop :=
  ∀ n, P4267319627167561239.a n = (A128055 n : ℚ)

end A128055

/-! ## A128055.P4636875038483676948

`gcd(A000079(n), A128056(n))`
-/

namespace A128055.P4636875038483676948
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000079 n) (A128056 n)

end

end A128055.P4636875038483676948

namespace A128055

/-- `gcd(A000079(n), A128056(n))` -/
def P4636875038483676948.Spec : Prop :=
  ∀ n, (P4636875038483676948.a n : ℤ) = A128055 n

end A128055

/-! ## A128055.P1266419183200439644

`A128056(n)/A128053(n)`
-/

namespace A128055.P1266419183200439644
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128056 n : ℚ) / (A128053 n : ℚ)

end

end A128055.P1266419183200439644

namespace A128055

/-- `A128056(n)/A128053(n)` -/
def P1266419183200439644.Spec : Prop :=
  ∀ n, P1266419183200439644.a n = (A128055 n : ℚ)

end A128055

/-!
# A128056: Hankel transform of A128057.

The programs for A128056, the canonical program `A128056.P4683975455215267477` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128056 has offset 0).

The definition of A128056 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 126 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A128056.P4683975455215267477

`A011782(n)*A219233(A110654(n))`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A128056

/-- `A011782(n)*A219233(A110654(n))` -/
def P4683975455215267477.Spec : Prop :=
  ∀ n, P4683975455215267477.a n = A128056 n

theorem P4683975455215267477.correct : P4683975455215267477.Spec := by
  intro n
  simp only [A128056]

end A128056

/-! ## A128056.P11042688399063334216

`2^(n-(n%6)²²%5)*A128053(n)`
-/

namespace A128056.P11042688399063334216
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - ((((n % 6) ^ 2) ^ 2 % 5 : ℕ) : ℤ) : ℤ) * (A128053 n : ℚ)

end

end A128056.P11042688399063334216

namespace A128056

/-- `2^(n-(n%6)²²%5)*A128053(n)` -/
def P11042688399063334216.Spec : Prop :=
  ∀ n, P11042688399063334216.a n = (A128056 n : ℚ)

end A128056

/-! ## A128056.P16458110402139350820

`A128053(n)*A128055(n)`
-/

namespace A128056.P16458110402139350820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128053 n * A128055 n

end

end A128056.P16458110402139350820

namespace A128056

/-- `A128053(n)*A128055(n)` -/
def P16458110402139350820.Spec : Prop :=
  ∀ n, P16458110402139350820.a n = A128056 n

end A128056

/-! ## A128056.P11139085123319231213

`2^A128054(n)*A128053(n)`
-/

namespace A128056.P11139085123319231213
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A128054 n : ℤ) * (A128053 n : ℚ)

end

end A128056.P11139085123319231213

namespace A128056

/-- `2^A128054(n)*A128053(n)` -/
def P11139085123319231213.Spec : Prop :=
  ∀ n, P11139085123319231213.a n = (A128056 n : ℚ)

end A128056

/-! ## A128056.P237054750612214638

`2^(n-A131719(n))*A128053(n)`
-/

namespace A128056.P237054750612214638
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - A131719 n : ℤ) * (A128053 n : ℚ)

end

end A128056.P237054750612214638

namespace A128056

/-- `2^(n-A131719(n))*A128053(n)` -/
def P237054750612214638.Spec : Prop :=
  ∀ n, P237054750612214638.a n = (A128056 n : ℚ)

end A128056

/-!
# A128057: Expansion of (1+x)/sqrt(1+4x^2).

The programs for A128057, the canonical program `A128057.P8641986801379024060` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128057 has offset 0).

The definition of A128057 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 335 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A128057.P8641986801379024060

`A057077(n)*A128014(n)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A128057

/-- `A057077(n)*A128014(n)` -/
def P8641986801379024060.Spec : Prop :=
  ∀ n, P8641986801379024060.a n = A128057 n

theorem P8641986801379024060.correct : P8641986801379024060.Spec := by
  intro n
  simp only [A128057]

end A128057

/-! ## A128057.P2244687824995321156

`A008619(n)*A090192(or(1, n))`
-/

namespace A128057.P2244687824995321156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n * A090192 (Nat.lor 1 n)

end

end A128057.P2244687824995321156

namespace A128057

/-- `A008619(n)*A090192(or(1, n))` -/
def P2244687824995321156.Spec : Prop :=
  ∀ n, P2244687824995321156.a n = A128057 n

end A128057

/-! ## A128057.P6860017489029056813

`A008619(n)*A168491(floor(n/2))`
-/

namespace A128057.P6860017489029056813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n * A168491 ⌊(n : ℚ) / 2⌋.toNat

end

end A128057.P6860017489029056813

namespace A128057

/-- `A008619(n)*A168491(floor(n/2))` -/
def P6860017489029056813.Spec : Prop :=
  ∀ n, P6860017489029056813.a n = A128057 n

end A128057

/-! ## A128057.P4948023438132397307

`A000984(A004526(n))*A057077(n)`
-/

namespace A128057.P4948023438132397307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 (A004526 n).toNat * A057077 n

end

end A128057.P4948023438132397307

namespace A128057

/-- `A000984(A004526(n))*A057077(n)` -/
def P4948023438132397307.Spec : Prop :=
  ∀ n, P4948023438132397307.a n = A128057 n

end A128057

/-! ## A128057.P2249629022906681455

`A287479(n+1)/A108411(n)*A128014(n)`
-/

namespace A128057.P2249629022906681455
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A287479 (n + 1) : ℚ) / (A108411 n : ℚ) * (A128014 n : ℚ)

end

end A128057.P2249629022906681455

namespace A128057

/-- `A287479(n+1)/A108411(n)*A128014(n)` -/
def P2249629022906681455.Spec : Prop :=
  ∀ n, P2249629022906681455.a n = (A128057 n : ℚ)

end A128057

/-! ## A128057.P3421830923035650642

`A056040(n)/A009001(n)`
-/

namespace A128057.P3421830923035650642
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056040 n : ℚ) / (A009001 n : ℚ)

end

end A128057.P3421830923035650642

namespace A128057

/-- `A056040(n)/A009001(n)` -/
def P3421830923035650642.Spec : Prop :=
  ∀ n, P3421830923035650642.a n = (A128057 n : ℚ)

end A128057

/-! ## A128057.P7396433686312955536

`A331552(n)/A043547(n+1)`
-/

namespace A128057.P7396433686312955536
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A331552 n : ℚ) / (A043547 (n + 1) : ℚ)

end

end A128057.P7396433686312955536

namespace A128057

/-- `A331552(n)/A043547(n+1)` -/
def P7396433686312955536.Spec : Prop :=
  ∀ n, P7396433686312955536.a n = (A128057 n : ℚ)

end A128057

/-! ## A128057.P5463035049471410115

`A304940(n)/A141125(n)`
-/

namespace A128057.P5463035049471410115
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A304940 n : ℚ) / (A141125 n : ℚ)

end

end A128057.P5463035049471410115

namespace A128057

/-- `A304940(n)/A141125(n)` -/
def P5463035049471410115.Spec : Prop :=
  ∀ n, P5463035049471410115.a n = (A128057 n : ℚ)

end A128057

/-! ## A128057.P1249798222966579574

`A130595(∑[2*n*∑[(-1)^n]])`
-/

namespace A128057.P1249798222966579574
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130595 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A128057.P1249798222966579574

namespace A128057

/-- `A130595(∑[2*n*∑[(-1)^n]])` -/
def P1249798222966579574.Spec : Prop :=
  ∀ n, P1249798222966579574.a n = A128057 n

end A128057

/-! ## A128057.P6692366220334451536

`A091917(2*A110660(n))`
-/

namespace A128057.P6692366220334451536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091917 (2 * A110660 n).toNat

end

end A128057.P6692366220334451536

namespace A128057

/-- `A091917(2*A110660(n))` -/
def P6692366220334451536.Spec : Prop :=
  ∀ n, P6692366220334451536.a n = A128057 n

end A128057

/-! ## A128057.P11001741438286277476

`A007318(2*A110660(n))*A057077(n)`
-/

namespace A128057.P11001741438286277476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (2 * A110660 n).toNat * A057077 n

end

end A128057.P11001741438286277476

namespace A128057

/-- `A007318(2*A110660(n))*A057077(n)` -/
def P11001741438286277476.Spec : Prop :=
  ∀ n, P11001741438286277476.a n = A128057 n

end A128057

/-! ## A128057.P17783229728641997752

`A158208(A084265(n))`
-/

namespace A128057.P17783229728641997752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158208 (A084265 n).toNat

end

end A128057.P17783229728641997752

namespace A128057

/-- `A158208(A084265(n))` -/
def P17783229728641997752.Spec : Prop :=
  ∀ n, P17783229728641997752.a n = A128057 n

end A128057

/-!
# A128058: Expansion of 1/((1-x)sqrt(1-2x+5x^2)).

The programs for A128058, the canonical program `A128058.P8782829189957341793` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128058 has offset 0).

The definition of A128058 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 288 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A128058.P8782829189957341793

`∑[A098331(n)]`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A128058

/-- `∑[A098331(n)]` -/
def P8782829189957341793.Spec : Prop :=
  ∀ n, P8782829189957341793.a n = A128058 n

theorem P8782829189957341793.correct : P8782829189957341793.Spec := by
  intro n
  simp only [A128058]

end A128058

/-! ## A128058.P4356026085770438485

`∑[A104506(n)-Δ[A104507(n)]]`
-/

namespace A128058.P4356026085770438485
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104507 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104506 n - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A128058.P4356026085770438485

namespace A128058

/-- `∑[A104506(n)-Δ[A104507(n)]]` -/
def P4356026085770438485.Spec : Prop :=
  ∀ n, P4356026085770438485.a n = A128058 n

end A128058

/-! ## A128058.P1256288781202807252

`a(n-1)+A098331(n)+A000007(n)` with `a(0)=1`
-/

namespace A128058.P1256288781202807252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A098331 n + A000007 n)

end

end A128058.P1256288781202807252

namespace A128058

/-- `a(n-1)+A098331(n)+A000007(n)` -/
def P1256288781202807252.Spec : Prop :=
  ∀ n, P1256288781202807252.a n = A128058 n

end A128058

/-! ## A128058.P14158311264412378601

`∑[A104506(n)+A104507(n)-A104507(n+1)]`
-/

namespace A128058.P14158311264412378601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104506 n + (A104507 n - A104507 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A128058.P14158311264412378601

namespace A128058

/-- `∑[A104506(n)+A104507(n)-A104507(n+1)]` -/
def P14158311264412378601.Spec : Prop :=
  ∀ n, P14158311264412378601.a n = A128058 n

end A128058

/-! ## A128058.P17868191591158369376

`∑[Δ[A102840(n)]/(n+1)]`
-/

namespace A128058.P17868191591158369376
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102840 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A128058.P17868191591158369376

namespace A128058

/-- `∑[Δ[A102840(n)]/(n+1)]` -/
def P17868191591158369376.Spec : Prop :=
  ∀ n, P17868191591158369376.a n = (A128058 n : ℚ)

end A128058

/-! ## A128058.P6890463087528304891

`∑[A098337(n)/A000079(n)]`
-/

namespace A128058.P6890463087528304891
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098337 n : ℚ) / (A000079 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A128058.P6890463087528304891

namespace A128058

/-- `∑[A098337(n)/A000079(n)]` -/
def P6890463087528304891.Spec : Prop :=
  ∀ n, P6890463087528304891.a n = (A128058 n : ℚ)

end A128058

/-! ## A128058.P7780605004027963566

`∑[A084610(∑[2*n])]`
-/

namespace A128058.P7780605004027963566
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084610 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A128058.P7780605004027963566

namespace A128058

/-- `∑[A084610(∑[2*n])]` -/
def P7780605004027963566.Spec : Prop :=
  ∀ n, P7780605004027963566.a n = A128058 n

end A128058

/-!
# A128059: a(n) = numerator((2*n-1)^2/(2*(2*n)!)).

The programs for A128059, the canonical program `A128059.P6275643782124807022` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128059 has offset 0).

The definition of A128059 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5002 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A128059.P16973466942586130390

`2*n-A128060(n)`
-/

namespace A128059.P16973466942586130390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A128060 n

end

end A128059.P16973466942586130390

namespace A128059

/-- `2*n-A128060(n)` -/
def P16973466942586130390.Spec : Prop :=
  ∀ n, P16973466942586130390.a n = A128059 n

end A128059

/-! ## A128059.P4715292693226829420

`A060747(n)/A128060(n)`
-/

namespace A128059.P4715292693226829420
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060747 n : ℚ) / (A128060 n : ℚ)

end

end A128059.P4715292693226829420

namespace A128059

/-- `A060747(n)/A128060(n)` -/
def P4715292693226829420.Spec : Prop :=
  ∀ n, P4715292693226829420.a n = (A128059 n : ℚ)

end A128059

/-! ## A128059.P17607074547417934723

`gcd(A060747(n), A159482(n+1))`
-/

namespace A128059.P17607074547417934723
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A060747 n) (A159482 (n + 1))

end

end A128059.P17607074547417934723

namespace A128059

/-- `gcd(A060747(n), A159482(n+1))` -/
def P17607074547417934723.Spec : Prop :=
  ∀ n, (P17607074547417934723.a n : ℤ) = A128059 n

end A128059

/-! ## A128059.P5156767856167941501

`A369033(2*n+1-A201219(2*n+1))`
-/

namespace A128059.P5156767856167941501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369033 ((2 * n + 1 : ℤ) - A201219 (2 * n + 1)).toNat

end

end A128059.P5156767856167941501

namespace A128059

/-- `A369033(2*n+1-A201219(2*n+1))` -/
def P5156767856167941501.Spec : Prop :=
  ∀ n, P5156767856167941501.a n = A128059 n

end A128059

/-! ## A128059.P6275643782124807022

`A110560(A325168(n+1))`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A128059

/-- `A110560(A325168(n+1))` -/
def P6275643782124807022.Spec : Prop :=
  ∀ n, P6275643782124807022.a n = A128059 n

theorem P6275643782124807022.correct : P6275643782124807022.Spec := by
  intro n
  simp only [A128059]

end A128059

/-! ## A128059.P183496708925053026

`A089026(abs(1-2*n))`
-/

namespace A128059.P183496708925053026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089026 |1 - (2 * n : ℤ)|.toNat

end

end A128059.P183496708925053026

namespace A128059

/-- `A089026(abs(1-2*n))` -/
def P183496708925053026.Spec : Prop :=
  ∀ n, P183496708925053026.a n = A128059 n

end A128059

/-! ## A128059.P15350586761911111642

`A166260(abs(1-2*n))+1`
-/

namespace A128059.P15350586761911111642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166260 |1 - (2 * n : ℤ)|.toNat + 1

end

end A128059.P15350586761911111642

namespace A128059

/-- `A166260(abs(1-2*n))+1` -/
def P15350586761911111642.Spec : Prop :=
  ∀ n, P15350586761911111642.a n = A128059 n

end A128059

/-! ## A128059.P18034577225020082091

`or(1, A089026(abs(1-n)+n))`
-/

namespace A128059.P18034577225020082091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A089026 (|1 - (n : ℤ)| + (n : ℤ)).toNat)

end

end A128059.P18034577225020082091

namespace A128059

/-- `or(1, A089026(abs(1-n)+n))` -/
def P18034577225020082091.Spec : Prop :=
  ∀ n, P18034577225020082091.a n = A128059 n

end A128059

/-! ## A128059.P541036431495965541

`A014973(2*(n-1)%(n+1)+1)`
-/

namespace A128059.P541036431495965541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014973 (2 * Int.tmod ((n : ℤ) - 1) (n + 1 : ℤ) + 1).toNat

end

end A128059.P541036431495965541

namespace A128059

/-- `A014973(2*(n-1)%(n+1)+1)` -/
def P541036431495965541.Spec : Prop :=
  ∀ n, P541036431495965541.a n = A128059 n

end A128059

/-! ## A128059.P8198603518350648325

`A014973(n-(2-n)%(n+1)+1)`
-/

namespace A128059.P8198603518350648325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014973 ((n : ℤ) - Int.tmod (2 - (n : ℤ)) (n + 1 : ℤ) + 1).toNat

end

end A128059.P8198603518350648325

namespace A128059

/-- `A014973(n-(2-n)%(n+1)+1)` -/
def P8198603518350648325.Spec : Prop :=
  ∀ n, P8198603518350648325.a n = A128059 n

end A128059

/-! ## A128059.P7854069764914329915

`A014973(2*A028310(n)-1)`
-/

namespace A128059.P7854069764914329915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014973 (2 * A028310 n - 1).toNat

end

end A128059.P7854069764914329915

namespace A128059

/-- `A014973(2*A028310(n)-1)` -/
def P7854069764914329915.Spec : Prop :=
  ∀ n, P7854069764914329915.a n = A128059 n

end A128059

/-! ## A128059.P11199826045730977050

`A020639(A089026(abs(1-n)+n))`
-/

namespace A128059.P11199826045730977050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A089026 (|1 - (n : ℤ)| + (n : ℤ)).toNat).toNat

end

end A128059.P11199826045730977050

namespace A128059

/-- `A020639(A089026(abs(1-n)+n))` -/
def P11199826045730977050.Spec : Prop :=
  ∀ n, P11199826045730977050.a n = A128059 n

end A128059

/-! ## A128059.P7224317366084366631

`A110560(A289207(2*n))`
-/

namespace A128059.P7224317366084366631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110560 (A289207 (2 * n)).toNat

end

end A128059.P7224317366084366631

namespace A128059

/-- `A110560(A289207(2*n))` -/
def P7224317366084366631.Spec : Prop :=
  ∀ n, P7224317366084366631.a n = A128059 n

end A128059

/-! ## A128059.P2505391748298465535

`A028310(A243485(2*n+1)/2)`
-/

namespace A128059.P2505391748298465535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.roundAway ((A243485 (2 * n + 1) : ℚ) / 2)).toNat

end

end A128059.P2505391748298465535

namespace A128059

/-- `A028310(A243485(2*n+1)/2)` -/
def P2505391748298465535.Spec : Prop :=
  ∀ n, P2505391748298465535.a n = A128059 n

end A128059

/-! ## A128059.P4967258893671688551

`A028310(A294345(2*n+1)/2)`
-/

namespace A128059.P4967258893671688551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.roundAway ((A294345 (2 * n + 1) : ℚ) / 2)).toNat

end

end A128059.P4967258893671688551

namespace A128059

/-- `A028310(A294345(2*n+1)/2)` -/
def P4967258893671688551.Spec : Prop :=
  ∀ n, P4967258893671688551.a n = A128059 n

end A128059

/-! ## A128059.P15125520804895792457

`A014963(A323309(abs(1-2*n)))`
-/

namespace A128059.P15125520804895792457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A323309 |1 - (2 * n : ℤ)|.toNat).toNat

end

end A128059.P15125520804895792457

namespace A128059

/-- `A014963(A323309(abs(1-2*n)))` -/
def P15125520804895792457.Spec : Prop :=
  ∀ n, P15125520804895792457.a n = A128059 n

end A128059

/-! ## A128059.P2085824749312458128

`A103517(A338768(2*n+1))-A338768(2*n+1)`
-/

namespace A128059.P2085824749312458128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (A338768 (2 * n + 1)).toNat - A338768 (2 * n + 1)

end

end A128059.P2085824749312458128

namespace A128059

/-- `A103517(A338768(2*n+1))-A338768(2*n+1)` -/
def P2085824749312458128.Spec : Prop :=
  ∀ n, P2085824749312458128.a n = A128059 n

end A128059

/-! ## A128059.P3862766485734036132

`A219964(A004273(n))`
-/

namespace A128059.P3862766485734036132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219964 (A004273 n).toNat

end

end A128059.P3862766485734036132

namespace A128059

/-- `A219964(A004273(n))` -/
def P3862766485734036132.Spec : Prop :=
  ∀ n, P3862766485734036132.a n = A128059 n

end A128059

/-! ## A128059.P17358367421239185989

`A219964(eq[n, A026741(n)])`
-/

namespace A128059.P17358367421239185989
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219964 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A128059.P17358367421239185989

namespace A128059

/-- `A219964(eq[n, A026741(n)])` -/
def P17358367421239185989.Spec : Prop :=
  ∀ n, P17358367421239185989.a n = A128059 n

end A128059

/-! ## A128059.P18251583961256884987

`A219964(eq[n, A106609(n)])`
-/

namespace A128059.P18251583961256884987
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106609 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219964 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A128059.P18251583961256884987

namespace A128059

/-- `A219964(eq[n, A106609(n)])` -/
def P18251583961256884987.Spec : Prop :=
  ∀ n, P18251583961256884987.a n = A128059 n

end A128059

/-!
# A128060: a(n) = 2*n - numerator((2*n-1)^2/(2*(2*n)!)).

The programs for A128060, the canonical program `A128060.P14869908255004425999` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128060 has offset 0).

The definition of A128060 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A128059, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A128060.P14869908255004425999

`2*n-A128059(n)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A128060

/-- `2*n-A128059(n)` -/
def P14869908255004425999.Spec : Prop :=
  ∀ n, P14869908255004425999.a n = A128060 n

theorem P14869908255004425999.correct : P14869908255004425999.Spec := by
  intro n
  simp only [A128060]

end A128060

/-! ## A128060.P13604048409706571638

`A060747(n)/A128059(n)`
-/

namespace A128060.P13604048409706571638
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060747 n : ℚ) / (A128059 n : ℚ)

end

end A128060.P13604048409706571638

namespace A128060

/-- `A060747(n)/A128059(n)` -/
def P13604048409706571638.Spec : Prop :=
  ∀ n, P13604048409706571638.a n = (A128060 n : ℚ)

end A128060

/-! ## A128060.P13420397517049257579

`A005408(n)-(A128059(n)+1)`
-/

namespace A128060.P13420397517049257579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n - (A128059 n + 1)

end

end A128060.P13420397517049257579

namespace A128060

/-- `A005408(n)-(A128059(n)+1)` -/
def P13420397517049257579.Spec : Prop :=
  ∀ n, P13420397517049257579.a n = A128060 n

end A128060

/-! ## A128060.P15906466254215947869

`n-(A128059(n)+A001489(n))`
-/

namespace A128060.P15906466254215947869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A128059 n + A001489 n)

end

end A128060.P15906466254215947869

namespace A128060

/-- `n-(A128059(n)+A001489(n))` -/
def P15906466254215947869.Spec : Prop :=
  ∀ n, P15906466254215947869.a n = A128060 n

end A128060

/-! ## A128060.P15398827443359796275

`2*n-A089026(abs(1-2*n))`
-/

namespace A128060.P15398827443359796275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A089026 |1 - (2 * n : ℤ)|.toNat

end

end A128060.P15398827443359796275

namespace A128060

/-- `2*n-A089026(abs(1-2*n))` -/
def P15398827443359796275.Spec : Prop :=
  ∀ n, P15398827443359796275.a n = A128060 n

end A128060

/-! ## A128060.P10738632366835234339

`n-A089026(abs(1-n)+n)+n`
-/

namespace A128060.P10738632366835234339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A089026 (|1 - (n : ℤ)| + (n : ℤ)).toNat + (n : ℤ)

end

end A128060.P10738632366835234339

namespace A128060

/-- `n-A089026(abs(1-n)+n)+n` -/
def P10738632366835234339.Spec : Prop :=
  ∀ n, P10738632366835234339.a n = A128060 n

end A128060

/-! ## A128060.P17059985363914268593

`n-(A166260(abs(1-2*n))+1)+n`
-/

namespace A128060.P17059985363914268593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A166260 |1 - (2 * n : ℤ)|.toNat + 1) + (n : ℤ)

end

end A128060.P17059985363914268593

namespace A128060

/-- `n-(A166260(abs(1-2*n))+1)+n` -/
def P17059985363914268593.Spec : Prop :=
  ∀ n, P17059985363914268593.a n = A128060 n

end A128060

/-! ## A128060.P16372219635301563071

`2*n-A014973(2*(n-1)%(n+1)+1)`
-/

namespace A128060.P16372219635301563071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A014973 (2 * Int.tmod ((n : ℤ) - 1) (n + 1 : ℤ) + 1).toNat

end

end A128060.P16372219635301563071

namespace A128060

/-- `2*n-A014973(2*(n-1)%(n+1)+1)` -/
def P16372219635301563071.Spec : Prop :=
  ∀ n, P16372219635301563071.a n = A128060 n

end A128060

/-! ## A128060.P13054232272116631405

`2*n-(2*n-floor(atan(n)))^A061358(2*n+1)`
-/

namespace A128060.P13054232272116631405
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n : ℚ) - ((2 * n : ℤ) - ⌊Real.arctan (n : ℝ)⌋ : ℚ) ^ (A061358 (2 * n + 1) : ℤ)

end

end A128060.P13054232272116631405

namespace A128060

/-- `2*n-(2*n-floor(atan(n)))^A061358(2*n+1)` -/
def P13054232272116631405.Spec : Prop :=
  ∀ n, P13054232272116631405.a n = (A128060 n : ℚ)

end A128060

/-! ## A128060.P13189737338663952705

`2*n-A219964(comp[2*(n+1)])`
-/

namespace A128060.P13189737338663952705
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A219964 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A128060.P13189737338663952705

namespace A128060

/-- `2*n-A219964(comp[2*(n+1)])` -/
def P13189737338663952705.Spec : Prop :=
  ∀ n, P13189737338663952705.a n = A128060 n

end A128060

/-!
# A128062: a(n) = denominator of b(n), where sum{m>=0} b(m)*x^m/m! = x/(sum{m>=1} H(m) x^m/ m!) = exp(-x)*x/(sum{m>=1} x^m (-1)^(m+1)/(m!*m)). (H(m) = sum{k=1 to m} 1/k.).

The programs for A128062, there is no canonical definition to state claims against.
-/

/-! ## A128062.P13989164070896966111

`A091137(n)^(A249909(n)+1)/n!`
-/

namespace A128062.P13989164070896966111
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091137 n : ℚ) ^ (A249909 n + 1 : ℤ) / (Nat.factorial n : ℚ)

end

end A128062.P13989164070896966111

/-! ## A128062.P18100388929743467845

`lcm(A132097(n), A330104(A261049(n)))`
-/

namespace A128062.P18100388929743467845
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A132097 n) (A330104 (A261049 n).toNat)

end

end A128062.P18100388929743467845

/-!
# A128063: Hankel transform of A115962.

The programs for A128063, the canonical program `A128063.P15460615406075581206` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128063 has offset 0).

The definition of A128063 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A128063.P15460615406075581206

`2^n*A099443(n+2)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A128063

/-- `2^n*A099443(n+2)` -/
def P15460615406075581206.Spec : Prop :=
  ∀ n, P15460615406075581206.a n = A128063 n

theorem P15460615406075581206.correct : P15460615406075581206.Spec := by
  intro n
  simp only [A128063]

end A128063

/-! ## A128063.P15528587769099800887

`2^n*A163812(n+3)`
-/

namespace A128063.P15528587769099800887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A163812 (n + 3)

end

end A128063.P15528587769099800887

namespace A128063

/-- `2^n*A163812(n+3)` -/
def P15528587769099800887.Spec : Prop :=
  ∀ n, P15528587769099800887.a n = A128063 n

end A128063

/-! ## A128063.P5022377865131646949

`2^n*A330025(n+3)`
-/

namespace A128063.P5022377865131646949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A330025 (n + 3)

end

end A128063.P5022377865131646949

namespace A128063

/-- `2^n*A330025(n+3)` -/
def P5022377865131646949.Spec : Prop :=
  ∀ n, P5022377865131646949.a n = A128063 n

end A128063

/-! ## A128063.P6009081169258835357

`2^(n-1)*A305029(n+3)`
-/

namespace A128063.P6009081169258835357
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A305029 (n + 3) : ℚ)

end

end A128063.P6009081169258835357

namespace A128063

/-- `2^(n-1)*A305029(n+3)` -/
def P6009081169258835357.Spec : Prop :=
  ∀ n, P6009081169258835357.a n = (A128063 n : ℚ)

end A128063

/-! ## A128063.P6793772452254779945

`A099443(n+2)*A000079(n)`
-/

namespace A128063.P6793772452254779945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099443 (n + 2) * A000079 n

end

end A128063.P6793772452254779945

namespace A128063

/-- `A099443(n+2)*A000079(n)` -/
def P6793772452254779945.Spec : Prop :=
  ∀ n, P6793772452254779945.a n = A128063 n

end A128063

/-! ## A128063.P9012386437115411375

`(A253262(n+1)-A253262(n))*A000079(n)`
-/

namespace A128063.P9012386437115411375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A253262 (n + 1) - A253262 n) * A000079 n

end

end A128063.P9012386437115411375

namespace A128063

/-- `(A253262(n+1)-A253262(n))*A000079(n)` -/
def P9012386437115411375.Spec : Prop :=
  ∀ n, P9012386437115411375.a n = A128063 n

end A128063

/-!
# A128064: Triangle T with T(n,n)=n, T(n,n-1)=-(n-1) and otherwise T(n,k)=0; 0

The programs for A128064, the canonical program `A128064.P17736054850047196674` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128064 has offset 1).

The definition of A128064 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A128064.P17736054850047196674

`A002260(n+1)*A167374(n)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A128064

/-- `A002260(n+1)*A167374(n)` -/
def P17736054850047196674.Spec : Prop :=
  ∀ n, P17736054850047196674.a n = A128064 (n + 1)

theorem P17736054850047196674.correct : P17736054850047196674.Spec := by
  intro n
  simp only [A128064, Nat.add_sub_cancel]

end A128064

/-! ## A128064.P12266196428037648967

`A001057(A132774(n+1))`
-/

namespace A128064.P12266196428037648967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A132774 (n + 1)).toNat

end

end A128064.P12266196428037648967

namespace A128064

/-- `A001057(A132774(n+1))` -/
def P12266196428037648967.Spec : Prop :=
  ∀ n, P12266196428037648967.a n = A128064 (n + 1)

end A128064

/-! ## A128064.P4878068019052374348

`A127648(n)-A132440(n)`
-/

namespace A128064.P4878068019052374348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127648 n - A132440 n

end

end A128064.P4878068019052374348

namespace A128064

/-- `A127648(n)-A132440(n)` -/
def P4878068019052374348.Spec : Prop :=
  ∀ n, P4878068019052374348.a n = A128064 (n + 1)

end A128064

/-! ## A128064.P17511062947540272261

`A051340(n)*A132013(n)`
-/

namespace A128064.P17511062947540272261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051340 n * A132013 n

end

end A128064.P17511062947540272261

namespace A128064

/-- `A051340(n)*A132013(n)` -/
def P17511062947540272261.Spec : Prop :=
  ∀ n, P17511062947540272261.a n = A128064 (n + 1)

end A128064

/-! ## A128064.P5248419188851152149

`A130266(n)*A132013(n)`
-/

namespace A128064.P5248419188851152149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130266 n * A132013 n

end

end A128064.P5248419188851152149

namespace A128064

/-- `A130266(n)*A132013(n)` -/
def P5248419188851152149.Spec : Prop :=
  ∀ n, P5248419188851152149.a n = A128064 (n + 1)

end A128064

/-! ## A128064.P1574864983361908808

`A113125(n)*A167374(n)`
-/

namespace A128064.P1574864983361908808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113125 n * A167374 n

end

end A128064.P1574864983361908808

namespace A128064

/-- `A113125(n)*A167374(n)` -/
def P1574864983361908808.Spec : Prop :=
  ∀ n, P1574864983361908808.a n = A128064 (n + 1)

end A128064

/-! ## A128064.P13016117359447330013

`A113126(n)*A167374(n)`
-/

namespace A128064.P13016117359447330013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113126 n * A167374 n

end

end A128064.P13016117359447330013

namespace A128064

/-- `A113126(n)*A167374(n)` -/
def P13016117359447330013.Spec : Prop :=
  ∀ n, P13016117359447330013.a n = A128064 (n + 1)

end A128064

/-! ## A128064.P4641093489716396803

`A167374(n)*A296612(n)`
-/

namespace A128064.P4641093489716396803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167374 n * A296612 n

end

end A128064.P4641093489716396803

namespace A128064

/-- `A167374(n)*A296612(n)` -/
def P4641093489716396803.Spec : Prop :=
  ∀ n, P4641093489716396803.a n = A128064 (n + 1)

end A128064

/-! ## A128064.P13856233367294406712

`A127701(n+1)-A132681(n)`
-/

namespace A128064.P13856233367294406712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127701 (n + 1) - A132681 n

end

end A128064.P13856233367294406712

namespace A128064

/-- `A127701(n+1)-A132681(n)` -/
def P13856233367294406712.Spec : Prop :=
  ∀ n, P13856233367294406712.a n = A128064 (n + 1)

end A128064

/-! ## A128064.P14900762408137978327

`A128132(n+1)-A218234(n)`
-/

namespace A128064.P14900762408137978327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128132 (n + 1) - A218234 n

end

end A128064.P14900762408137978327

namespace A128064

/-- `A128132(n+1)-A218234(n)` -/
def P14900762408137978327.Spec : Prop :=
  ∀ n, P14900762408137978327.a n = A128064 (n + 1)

end A128064

/-! ## A128064.P14129405092707751316

`A004070(n)*A128132(n+1)`
-/

namespace A128064.P14129405092707751316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004070 n * A128132 (n + 1)

end

end A128064.P14129405092707751316

namespace A128064

/-- `A004070(n)*A128132(n+1)` -/
def P14129405092707751316.Spec : Prop :=
  ∀ n, P14129405092707751316.a n = A128064 (n + 1)

end A128064

/-! ## A128064.P16810175519821503055

`A007318(n)*A128132(n+1)`
-/

namespace A128064.P16810175519821503055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A128132 (n + 1)

end

end A128064.P16810175519821503055

namespace A128064

/-- `A007318(n)*A128132(n+1)` -/
def P16810175519821503055.Spec : Prop :=
  ∀ n, P16810175519821503055.a n = A128064 (n + 1)

end A128064

/-! ## A128064.P8297681564389132348

`A026725(n)*A128132(n+1)`
-/

namespace A128064.P8297681564389132348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026725 n * A128132 (n + 1)

end

end A128064.P8297681564389132348

namespace A128064

/-- `A026725(n)*A128132(n+1)` -/
def P8297681564389132348.Spec : Prop :=
  ∀ n, P8297681564389132348.a n = A128064 (n + 1)

end A128064

/-! ## A128064.P14639983304360270007

`A026736(n)*A128132(n+1)`
-/

namespace A128064.P14639983304360270007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026736 n * A128132 (n + 1)

end

end A128064.P14639983304360270007

namespace A128064

/-- `A026736(n)*A128132(n+1)` -/
def P14639983304360270007.Spec : Prop :=
  ∀ n, P14639983304360270007.a n = A128064 (n + 1)

end A128064

/-! ## A128064.P7482107733702585217

`A026758(n)*A128132(n+1)`
-/

namespace A128064.P7482107733702585217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026758 n * A128132 (n + 1)

end

end A128064.P7482107733702585217

namespace A128064

/-- `A026758(n)*A128132(n+1)` -/
def P7482107733702585217.Spec : Prop :=
  ∀ n, P7482107733702585217.a n = A128064 (n + 1)

end A128064

/-! ## A128064.P16900780303989848461

`A026769(n)*A128132(n+1)`
-/

namespace A128064.P16900780303989848461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026769 n * A128132 (n + 1)

end

end A128064.P16900780303989848461

namespace A128064

/-- `A026769(n)*A128132(n+1)` -/
def P16900780303989848461.Spec : Prop :=
  ∀ n, P16900780303989848461.a n = A128064 (n + 1)

end A128064

/-! ## A128064.P15446209072955581924

`A027948(n)*A128132(n+1)`
-/

namespace A128064.P15446209072955581924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027948 n * A128132 (n + 1)

end

end A128064.P15446209072955581924

namespace A128064

/-- `A027948(n)*A128132(n+1)` -/
def P15446209072955581924.Spec : Prop :=
  ∀ n, P15446209072955581924.a n = A128064 (n + 1)

end A128064

/-! ## A128064.P18423986908612754296

`A003056(n+1)*A167374(n)`
-/

namespace A128064.P18423986908612754296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (n + 1) * A167374 n

end

end A128064.P18423986908612754296

namespace A128064

/-- `A003056(n+1)*A167374(n)` -/
def P18423986908612754296.Spec : Prop :=
  ∀ n, P18423986908612754296.a n = A128064 (n + 1)

end A128064

/-! ## A128064.P11953848036626043217

`A077028(n)*A128132(n+1)`
-/

namespace A128064.P11953848036626043217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077028 n * A128132 (n + 1)

end

end A128064.P11953848036626043217

namespace A128064

/-- `A077028(n)*A128132(n+1)` -/
def P11953848036626043217.Spec : Prop :=
  ∀ n, P11953848036626043217.a n = A128064 (n + 1)

end A128064

/-! ## A128064.P15851157578509423218

`A214292((n+1)*A097806(n))`
-/

namespace A128064.P15851157578509423218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214292 ((n + 1 : ℤ) * A097806 n).toNat

end

end A128064.P15851157578509423218

namespace A128064

/-- `A214292((n+1)*A097806(n))` -/
def P15851157578509423218.Spec : Prop :=
  ∀ n, P15851157578509423218.a n = A128064 (n + 1)

end A128064

/-!
# A128065: Binomial transform of A128064.

The programs for A128065, the canonical program `A128065.P6617849873532730236` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128065 has offset 1).

The definition of A128065 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A128065.P13799104670909334529

`(n+2-(∑[char[∑[n]]]²-n))*A007318(n)`
-/

namespace A128065.P13799104670909334529
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2 : ℤ) - ((((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - (n : ℤ))) * A007318 n

end

end A128065.P13799104670909334529

namespace A128065

/-- `(n+2-(∑[char[∑[n]]]²-n))*A007318(n)` -/
def P13799104670909334529.Spec : Prop :=
  ∀ n, P13799104670909334529.a n = A128065 (n + 1)

end A128065

/-! ## A128065.P16416939277519181131

`A103406(n)-A216973(n)`
-/

namespace A128065.P16416939277519181131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103406 n - A216973 n

end

end A128065.P16416939277519181131

namespace A128065

/-- `A103406(n)-A216973(n)` -/
def P16416939277519181131.Spec : Prop :=
  ∀ n, P16416939277519181131.a n = A128065 (n + 1)

end A128065

/-! ## A128065.P6617849873532730236

`A007318(n)*A127948(n)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A128065

/-- `A007318(n)*A127948(n)` -/
def P6617849873532730236.Spec : Prop :=
  ∀ n, P6617849873532730236.a n = A128065 (n + 1)

theorem P6617849873532730236.correct : P6617849873532730236.Spec := by
  intro n
  simp only [A128065, Nat.add_sub_cancel]

end A128065

/-! ## A128065.P14042709976674663082

`A128710(n)-A093375(n+1)`
-/

namespace A128065.P14042709976674663082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128710 n - A093375 (n + 1)

end

end A128065.P14042709976674663082

namespace A128065

/-- `A128710(n)-A093375(n+1)` -/
def P14042709976674663082.Spec : Prop :=
  ∀ n, P14042709976674663082.a n = A128065 (n + 1)

end A128065

/-! ## A128065.P10668683685804239878

`A002260(n+1)*A156644(n)`
-/

namespace A128065.P10668683685804239878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A156644 n

end

end A128065.P10668683685804239878

namespace A128065

/-- `A002260(n+1)*A156644(n)` -/
def P10668683685804239878.Spec : Prop :=
  ∀ n, P10668683685804239878.a n = A128065 (n + 1)

end A128065

/-! ## A128065.P11526761299282931172

`(A002262(n)+1)*A156644(n)`
-/

namespace A128065.P11526761299282931172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002262 n + 1) * A156644 n

end

end A128065.P11526761299282931172

namespace A128065

/-- `(A002262(n)+1)*A156644(n)` -/
def P11526761299282931172.Spec : Prop :=
  ∀ n, P11526761299282931172.a n = A128065 (n + 1)

end A128065

/-! ## A128065.P17542232673962356104

`A097808(n)*A140756(n+1)`
-/

namespace A128065.P17542232673962356104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097808 n * A140756 (n + 1)

end

end A128065.P17542232673962356104

namespace A128065

/-- `A097808(n)*A140756(n+1)` -/
def P17542232673962356104.Spec : Prop :=
  ∀ n, P17542232673962356104.a n = A128065 (n + 1)

end A128065

/-! ## A128065.P4799385115269564936

`2*A103406(n)-A003506(n+1)`
-/

namespace A128065.P4799385115269564936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A103406 n - A003506 (n + 1)

end

end A128065.P4799385115269564936

namespace A128065

/-- `2*A103406(n)-A003506(n+1)` -/
def P4799385115269564936.Spec : Prop :=
  ∀ n, P4799385115269564936.a n = A128065 (n + 1)

end A128065

/-! ## A128065.P5406736607655785019

`A003506(n+1)-2*A216973(n)`
-/

namespace A128065.P5406736607655785019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003506 (n + 1) - 2 * A216973 n

end

end A128065.P5406736607655785019

namespace A128065

/-- `A003506(n+1)-2*A216973(n)` -/
def P5406736607655785019.Spec : Prop :=
  ∀ n, P5406736607655785019.a n = A128065 (n + 1)

end A128065

/-! ## A128065.P9874770400690185329

`A007318(n)+A103406(n)-A093375(n+1)`
-/

namespace A128065.P9874770400690185329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + (A103406 n - A093375 (n + 1))

end

end A128065.P9874770400690185329

namespace A128065

/-- `A007318(n)+A103406(n)-A093375(n+1)` -/
def P9874770400690185329.Spec : Prop :=
  ∀ n, P9874770400690185329.a n = A128065 (n + 1)

end A128065

/-! ## A128065.P10190019068665414109

`A007318(n+1)-Δ[A103406(n)]`
-/

namespace A128065.P10190019068665414109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103406 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (n + 1) - (f1 (n + 1) - f1 n)

end

end A128065.P10190019068665414109

namespace A128065

/-- `A007318(n+1)-Δ[A103406(n)]` -/
def P10190019068665414109.Spec : Prop :=
  ∀ n, P10190019068665414109.a n = A128065 (n + 1)

end A128065

/-! ## A128065.P13154691236891967975

`A007318(n+1)+A103406(n)-A103406(n+1)`
-/

namespace A128065.P13154691236891967975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (n + 1) + (A103406 n - A103406 (n + 1))

end

end A128065.P13154691236891967975

namespace A128065

/-- `A007318(n+1)+A103406(n)-A103406(n+1)` -/
def P13154691236891967975.Spec : Prop :=
  ∀ n, P13154691236891967975.a n = A128065 (n + 1)

end A128065

/-! ## A128065.P2477467333483546345

`A141692(n)+A007318(n)`
-/

namespace A128065.P2477467333483546345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141692 n + A007318 n

end

end A128065.P2477467333483546345

namespace A128065

/-- `A141692(n)+A007318(n)` -/
def P2477467333483546345.Spec : Prop :=
  ∀ n, P2477467333483546345.a n = A128065 (n + 1)

end A128065

/-! ## A128065.P10890234604708440676

`A141692(n)+abs(A108086(n))`
-/

namespace A128065.P10890234604708440676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141692 n + |A108086 n|

end

end A128065.P10890234604708440676

namespace A128065

/-- `A141692(n)+abs(A108086(n))` -/
def P10890234604708440676.Spec : Prop :=
  ∀ n, P10890234604708440676.a n = A128065 (n + 1)

end A128065

/-! ## A128065.P10932245783639988762

`A141692(n)+abs(A130595(n))`
-/

namespace A128065.P10932245783639988762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141692 n + |A130595 n|

end

end A128065.P10932245783639988762

namespace A128065

/-- `A141692(n)+abs(A130595(n))` -/
def P10932245783639988762.Spec : Prop :=
  ∀ n, P10932245783639988762.a n = A128065 (n + 1)

end A128065

/-! ## A128065.P10489983073985880107

`A141692(n)+sqrt(A008459(n))`
-/

namespace A128065.P10489983073985880107
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A141692 n : ℝ) + Real.sqrt (A008459 n : ℝ)

end

end A128065.P10489983073985880107

namespace A128065

/-- `A141692(n)+sqrt(A008459(n))` -/
def P10489983073985880107.Spec : Prop :=
  ∀ n, P10489983073985880107.a n = (A128065 (n + 1) : ℝ)

end A128065

/-! ## A128065.P15272809926974603410

`A152905(2*n)+A141692(n)`
-/

namespace A128065.P15272809926974603410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152905 (2 * n) + A141692 n

end

end A128065.P15272809926974603410

namespace A128065

/-- `A152905(2*n)+A141692(n)` -/
def P15272809926974603410.Spec : Prop :=
  ∀ n, P15272809926974603410.a n = A128065 (n + 1)

end A128065

/-!
# A128066: Numbers k such that (3^k + 4^k)/7 is prime.

The programs for A128066, there is no canonical definition to state claims against.
-/

/-! ## A128066.P4053514994948529393

`A184805(∑[A027193(∏{e}[n, n*#+1])])`
-/

namespace A128066.P4053514994948529393
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027193 (∏ p ∈ Nat.primeFactors (f2 n), (n * Nat.factorization (f2 n) p + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184805 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A128066.P4053514994948529393

/-! ## A128066.P14449946463288341368

`A003629(record[A262813(6*(∑[n²]+n²)+1)])`
-/

namespace A128066.P14449946463288341368
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262813 (6 * (∑ j ∈ Finset.range (n + 1), f2 j + n ^ 2) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003629 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A128066.P14449946463288341368

/-!
# A128067: Numbers k such that (3^k + 7^k)/10 is prime.

The programs for A128067, there is no canonical definition to state claims against.
-/

/-! ## A128067.P7600342768611037249

`p?[xor(A144287(n+1), A167934(n))]`
-/

namespace A128067.P7600342768611037249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A144287 (n + 1)) (A167934 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A128067.P7600342768611037249

/-!
# A128069: Numbers k such that (3^k + 10^k)/13 is prime.

The programs for A128069, there is no canonical definition to state claims against.
-/

/-! ## A128069.P2407667261289566278

`p?[C(A205302(2*n+1), (n+1)/∏{p}[n+1, #])]`
-/

namespace A128069.P2407667261289566278
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A205302 (2 * n + 1)).toNat (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A128069.P2407667261289566278

/-! ## A128069.P7417294393224002898

`p?[A205302(n+1)*A287492(n)]`
-/

namespace A128069.P7417294393224002898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205302 (n + 1) * A287492 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A128069.P7417294393224002898

/-!
# A128072: Numbers k such that (3^k + 14^k)/17 is prime.

The programs for A128072, there is no canonical definition to state claims against.
-/

/-! ## A128072.P15325550625281378799

`p?[xor(A054877(n), A322058(n))]`
-/

namespace A128072.P15325550625281378799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A054877 n) (A322058 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A128072.P15325550625281378799

/-!
# A128074: a(n) = (n^3+n)*9^n.

The programs for A128074, the canonical program `A128074.P3953472624472269561` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128074 has offset 0).

The definition of A128074 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n^3+n)*9^n` (program `A128074.P3953472624472269561`, by `A128074.P3953472624472269561.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A128074.P3953472624472269561

`(n^3+n)*9^n`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A128074

/-- `(n^3+n)*9^n` -/
def P3953472624472269561.Spec : Prop :=
  ∀ n, (P3953472624472269561.a n : ℤ) = A128074 n

theorem P3953472624472269561.correct : P3953472624472269561.Spec := by
  intro n
  simp only [A128074]

end A128074

/-! ## A128074.P16898614860153718284

`lcm(n²+1, n*A001019(n))`
-/

namespace A128074.P16898614860153718284
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n ^ 2 + 1 : ℤ) ((n : ℤ) * A001019 n)

end

end A128074.P16898614860153718284

namespace A128074

/-- `lcm(n²+1, n*A001019(n))` -/
def P16898614860153718284.Spec : Prop :=
  ∀ n, (P16898614860153718284.a n : ℤ) = A128074 n

end A128074

/-! ## A128074.P6149419237366698172

`A158749(n)+A128795(n)`
-/

namespace A128074.P6149419237366698172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158749 n + A128795 n

end

end A128074.P6149419237366698172

namespace A128074

/-- `A158749(n)+A128795(n)` -/
def P6149419237366698172.Spec : Prop :=
  ∀ n, P6149419237366698172.a n = A128074 n

end A128074

/-! ## A128074.P5026404888105827802

`lcm(A002522(n), A158749(n))`
-/

namespace A128074.P5026404888105827802
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A002522 n) (A158749 n)

end

end A128074.P5026404888105827802

namespace A128074

/-- `lcm(A002522(n), A158749(n))` -/
def P5026404888105827802.Spec : Prop :=
  ∀ n, (P5026404888105827802.a n : ℤ) = A128074 n

end A128074

/-! ## A128074.P2806711066078054214

`A128788(n)+A128795(n)-A128803(n)`
-/

namespace A128074.P2806711066078054214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128788 n + (A128795 n - A128803 n)

end

end A128074.P2806711066078054214

namespace A128074

/-- `A128788(n)+A128795(n)-A128803(n)` -/
def P2806711066078054214.Spec : Prop :=
  ∀ n, P2806711066078054214.a n = A128074 n

end A128074

/-! ## A128074.P14819803253621684863

`A158749(n)+A000290(n)*A158749(n)`
-/

namespace A128074.P14819803253621684863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158749 n + A000290 n * A158749 n

end

end A128074.P14819803253621684863

namespace A128074

/-- `A158749(n)+A000290(n)*A158749(n)` -/
def P14819803253621684863.Spec : Prop :=
  ∀ n, P14819803253621684863.a n = A128074 n

end A128074

/-!
# A128076: Triangle T(n,k) = 2*n-k, read by rows.

The programs for A128076, the canonical program `A128076.P748054847711115254` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128076 has offset 1).

The definition of A128076 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A128076.P748054847711115254

`(round(sqrt(2*(n+1)))²+3*round(sqrt(2*(n+1)))-2*(n+1))/2`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A128076

/-- `(round(sqrt(2*(n+1)))²+3*round(sqrt(2*(n+1)))-2*(n+1))/2` -/
def P748054847711115254.Spec : Prop :=
  ∀ n, P748054847711115254.a n = (A128076 (n + 1) : ℚ)

end A128076

/-! ## A128076.P10851101561241223458

`C(∑[char[∑[n]]]+2, 2)-(n+2)`
-/

namespace A128076.P10851101561241223458
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j + 2) 2 : ℤ) - (n + 2 : ℤ)

end

end A128076.P10851101561241223458

namespace A128076

/-- `C(∑[char[∑[n]]]+2, 2)-(n+2)` -/
def P10851101561241223458.Spec : Prop :=
  ∀ n, P10851101561241223458.a n = A128076 (n + 1)

end A128076

/-! ## A128076.P14091263293042345629

`C(comp[∑[n]]+1-n, 2)-n-2`
-/

namespace A128076.P14091263293042345629
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1 : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ) - 2

end

end A128076.P14091263293042345629

namespace A128076

/-- `C(comp[∑[n]]+1-n, 2)-n-2` -/
def P14091263293042345629.Spec : Prop :=
  ∀ n, P14091263293042345629.a n = A128076 (n + 1)

end A128076

/-! ## A128076.P14479074147314944173

`(C(∑[char[∑[n]]]+2, 2)+1)%(n+3)`
-/

namespace A128076.P14479074147314944173
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j + 2) 2 + 1) % (n + 3)

end

end A128076.P14479074147314944173

namespace A128076

/-- `(C(∑[char[∑[n]]]+2, 2)+1)%(n+3)` -/
def P14479074147314944173.Spec : Prop :=
  ∀ n, (P14479074147314944173.a n : ℤ) = A128076 (n + 1)

end A128076

/-! ## A128076.P4613293851484419469

`eq[1, floor(2*sqrt(n))%2]-2*(n+1)`
-/

namespace A128076.P4613293851484419469
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊2 * Real.sqrt (n : ℝ)⌋ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - (2 * (n + 1) : ℤ)

end

end A128076.P4613293851484419469

namespace A128076

/-- `eq[1, floor(2*sqrt(n))%2]-2*(n+1)` -/
def P4613293851484419469.Spec : Prop :=
  ∀ n, P4613293851484419469.a n = A128076 (n + 1)

end A128076

/-! ## A128076.P10907853161909726125

`∑[2*char[∑[n]]]-1-(n-C(∑[char[∑[n]]], 2))`
-/

namespace A128076.P10907853161909726125
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (if ∃ j, f2 j = n then 1 else 0)

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

open Classical in
def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f5 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1 - ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f4 j) 2 : ℤ))

end

end A128076.P10907853161909726125

namespace A128076

/-- `∑[2*char[∑[n]]]-1-(n-C(∑[char[∑[n]]], 2))` -/
def P10907853161909726125.Spec : Prop :=
  ∀ n, P10907853161909726125.a n = A128076 (n + 1)

end A128076

/-! ## A128076.P17631468534932890225

`A294317(n)+1`
-/

namespace A128076.P17631468534932890225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294317 n + 1

end

end A128076.P17631468534932890225

namespace A128076

/-- `A294317(n)+1` -/
def P17631468534932890225.Spec : Prop :=
  ∀ n, P17631468534932890225.a n = A128076 (n + 1)

end A128076

/-! ## A128076.P12015217303333266919

`A294317(comp[∑[n]])`
-/

namespace A128076.P12015217303333266919
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294317 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A128076.P12015217303333266919

namespace A128076

/-- `A294317(comp[∑[n]])` -/
def P12015217303333266919.Spec : Prop :=
  ∀ n, P12015217303333266919.a n = A128076 (n + 1)

end A128076

/-! ## A128076.P5141160419453777316

`floor(log2(A130329(n)))+1`
-/

namespace A128076.P5141160419453777316
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A130329 n).toNat + 1

end

end A128076.P5141160419453777316

namespace A128076

/-- `floor(log2(A130329(n)))+1` -/
def P5141160419453777316.Spec : Prop :=
  ∀ n, (P5141160419453777316.a n : ℤ) = A128076 (n + 1)

end A128076

/-! ## A128076.P1106315772830442943

`A025581(n)+∑[char[∑[n]]]`
-/

namespace A128076.P1106315772830442943
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A128076.P1106315772830442943

namespace A128076

/-- `A025581(n)+∑[char[∑[n]]]` -/
def P1106315772830442943.Spec : Prop :=
  ∀ n, P1106315772830442943.a n = A128076 (n + 1)

end A128076

/-! ## A128076.P7177073460386788445

`A377809(n+1)-(n+1)`
-/

namespace A128076.P7177073460386788445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377809 (n + 1) - (n + 1 : ℤ)

end

end A128076.P7177073460386788445

namespace A128076

/-- `A377809(n+1)-(n+1)` -/
def P7177073460386788445.Spec : Prop :=
  ∀ n, P7177073460386788445.a n = A128076 (n + 1)

end A128076

/-! ## A128076.P17966554418380333260

`A217575(n+1)-Δ[n²]`
-/

namespace A128076.P17966554418380333260
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217575 (n + 1) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A128076.P17966554418380333260

namespace A128076

/-- `A217575(n+1)-Δ[n²]` -/
def P17966554418380333260.Spec : Prop :=
  ∀ n, P17966554418380333260.a n = A128076 (n + 1)

end A128076

/-! ## A128076.P1009286731523119117

`A063657(n+1)-2*(n+1)`
-/

namespace A128076.P1009286731523119117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063657 (n + 1) - (2 * (n + 1) : ℤ)

end

end A128076.P1009286731523119117

namespace A128076

/-- `A063657(n+1)-2*(n+1)` -/
def P1009286731523119117.Spec : Prop :=
  ∀ n, P1009286731523119117.a n = A128076 (n + 1)

end A128076

/-! ## A128076.P5751083459522533626

`A094727(A038722(n+1))`
-/

namespace A128076.P5751083459522533626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094727 (A038722 (n + 1)).toNat

end

end A128076.P5751083459522533626

namespace A128076

/-- `A094727(A038722(n+1))` -/
def P5751083459522533626.Spec : Prop :=
  ∀ n, P5751083459522533626.a n = A128076 (n + 1)

end A128076

/-! ## A128076.P4660628577403362080

`A094727(A061579(n)+1)`
-/

namespace A128076.P4660628577403362080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094727 (A061579 n + 1).toNat

end

end A128076.P4660628577403362080

namespace A128076

/-- `A094727(A061579(n)+1)` -/
def P4660628577403362080.Spec : Prop :=
  ∀ n, P4660628577403362080.a n = A128076 (n + 1)

end A128076

/-! ## A128076.P16567921996733011259

`A114751(A056023(n+1))`
-/

namespace A128076.P16567921996733011259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114751 (A056023 (n + 1)).toNat

end

end A128076.P16567921996733011259

namespace A128076

/-- `A114751(A056023(n+1))` -/
def P16567921996733011259.Spec : Prop :=
  ∀ n, P16567921996733011259.a n = A128076 (n + 1)

end A128076

/-! ## A128076.P6686947456244940953

`A008619(2*A294317(n))`
-/

namespace A128076.P6686947456244940953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * A294317 n).toNat

end

end A128076.P6686947456244940953

namespace A128076

/-- `A008619(2*A294317(n))` -/
def P6686947456244940953.Spec : Prop :=
  ∀ n, P6686947456244940953.a n = A128076 (n + 1)

end A128076

/-! ## A128076.P2539532793272528086

`A099375(n)+A002262(n)`
-/

namespace A128076.P2539532793272528086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n + A002262 n

end

end A128076.P2539532793272528086

namespace A128076

/-- `A099375(n)+A002262(n)` -/
def P2539532793272528086.Spec : Prop :=
  ∀ n, P2539532793272528086.a n = A128076 (n + 1)

end A128076

/-! ## A128076.P16511799750477791682

`A131507(n)-A002262(n)`
-/

namespace A128076.P16511799750477791682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131507 n - A002262 n

end

end A128076.P16511799750477791682

namespace A128076

/-- `A131507(n)-A002262(n)` -/
def P16511799750477791682.Spec : Prop :=
  ∀ n, P16511799750477791682.a n = A128076 (n + 1)

end A128076

/-! ## A128076.P15801159008739450730

`A131413(n)-A003056(n)`
-/

namespace A128076.P15801159008739450730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131413 n - A003056 n

end

end A128076.P15801159008739450730

namespace A128076

/-- `A131413(n)-A003056(n)` -/
def P15801159008739450730.Spec : Prop :=
  ∀ n, P15801159008739450730.a n = A128076 (n + 1)

end A128076

/-!
# A128077: A128064 * A002260.

The programs for A128077, the canonical program `A128077.P8263080623395383439` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128077 has offset 1).

The definition of A128077 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A128077.P6776634478555403444

`abs(A128078(n+1))`
-/

namespace A128077.P6776634478555403444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A128078 (n + 1)|

end

end A128077.P6776634478555403444

namespace A128077

/-- `abs(A128078(n+1))` -/
def P6776634478555403444.Spec : Prop :=
  ∀ n, P6776634478555403444.a n = A128077 (n + 1)

end A128077

/-! ## A128077.P8263080623395383439

`A002260(n+1)*A051340(n)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A128077

/-- `A002260(n+1)*A051340(n)` -/
def P8263080623395383439.Spec : Prop :=
  ∀ n, P8263080623395383439.a n = A128077 (n + 1)

theorem P8263080623395383439.correct : P8263080623395383439.Spec := by
  intro n
  simp only [A128077, Nat.add_sub_cancel]

end A128077

/-! ## A128077.P12792453648358322618

`(A002262(n)+1)*A051340(n)`
-/

namespace A128077.P12792453648358322618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002262 n + 1) * A051340 n

end

end A128077.P12792453648358322618

namespace A128077

/-- `(A002262(n)+1)*A051340(n)` -/
def P12792453648358322618.Spec : Prop :=
  ∀ n, P12792453648358322618.a n = A128077 (n + 1)

end A128077

/-! ## A128077.P2697321433786207125

`A133819(n+1)/A128227(n)`
-/

namespace A128077.P2697321433786207125
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A133819 (n + 1) : ℚ) / (A128227 n : ℚ)

end

end A128077.P2697321433786207125

namespace A128077

/-- `A133819(n+1)/A128227(n)` -/
def P2697321433786207125.Spec : Prop :=
  ∀ n, P2697321433786207125.a n = (A128077 (n + 1) : ℚ)

end A128077

/-! ## A128077.P11119092704245842701

`gcd(A000038(n), A128078(n+1))`
-/

namespace A128077.P11119092704245842701
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A128078 (n + 1))

end

end A128077.P11119092704245842701

namespace A128077

/-- `gcd(A000038(n), A128078(n+1))` -/
def P11119092704245842701.Spec : Prop :=
  ∀ n, (P11119092704245842701.a n : ℤ) = A128077 (n + 1)

end A128077

/-! ## A128077.P15537848538070870992

`gcd(A048151(n+1), A105020(n))`
-/

namespace A128077.P15537848538070870992
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A048151 (n + 1)) (A105020 n)

end

end A128077.P15537848538070870992

namespace A128077

/-- `gcd(A048151(n+1), A105020(n))` -/
def P15537848538070870992.Spec : Prop :=
  ∀ n, (P15537848538070870992.a n : ℤ) = A128077 (n + 1)

end A128077

/-! ## A128077.P1767476111911356195

`lcm(A020985(n), A128078(n+1))`
-/

namespace A128077.P1767476111911356195
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A128078 (n + 1))

end

end A128077.P1767476111911356195

namespace A128077

/-- `lcm(A020985(n), A128078(n+1))` -/
def P1767476111911356195.Spec : Prop :=
  ∀ n, (P1767476111911356195.a n : ℤ) = A128077 (n + 1)

end A128077

/-! ## A128077.P1200693071837134785

`A002260(n+1)²/A128227(n)`
-/

namespace A128077.P1200693071837134785
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002260 (n + 1) ^ 2 : ℚ) / (A128227 n : ℚ)

end

end A128077.P1200693071837134785

namespace A128077

/-- `A002260(n+1)²/A128227(n)` -/
def P1200693071837134785.Spec : Prop :=
  ∀ n, P1200693071837134785.a n = (A128077 (n + 1) : ℚ)

end A128077

/-! ## A128077.P1385184501441572177

`Δ[A063656(n)]*A002260(n+1)`
-/

namespace A128077.P1385184501441572177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063656 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A002260 (n + 1)

end

end A128077.P1385184501441572177

namespace A128077

/-- `Δ[A063656(n)]*A002260(n+1)` -/
def P1385184501441572177.Spec : Prop :=
  ∀ n, P1385184501441572177.a n = A128077 (n + 1)

end A128077

/-! ## A128077.P2053003115553493927

`A127733(n+1)+A048151(n+1)`
-/

namespace A128077.P2053003115553493927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127733 (n + 1) + A048151 (n + 1)

end

end A128077.P2053003115553493927

namespace A128077

/-- `A127733(n+1)+A048151(n+1)` -/
def P2053003115553493927.Spec : Prop :=
  ∀ n, P2053003115553493927.a n = A128077 (n + 1)

end A128077

/-! ## A128077.P2400995177895424141

`A075362(n+1)-A079904(n+1)`
-/

namespace A128077.P2400995177895424141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075362 (n + 1) - A079904 (n + 1)

end

end A128077.P2400995177895424141

namespace A128077

/-- `A075362(n+1)-A079904(n+1)` -/
def P2400995177895424141.Spec : Prop :=
  ∀ n, P2400995177895424141.a n = A128077 (n + 1)

end A128077

/-! ## A128077.P11012401898152521755

`A128078(n+1)*A154990(n+1)`
-/

namespace A128077.P11012401898152521755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128078 (n + 1) * A154990 (n + 1)

end

end A128077.P11012401898152521755

namespace A128077

/-- `A128078(n+1)*A154990(n+1)` -/
def P11012401898152521755.Spec : Prop :=
  ∀ n, P11012401898152521755.a n = A128077 (n + 1)

end A128077

/-! ## A128077.P923040910012299663

`A002260(n+1)^A035214(n+1)`
-/

namespace A128077.P923040910012299663
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002260 (n + 1) : ℚ) ^ (A035214 (n + 1) : ℤ)

end

end A128077.P923040910012299663

namespace A128077

/-- `A002260(n+1)^A035214(n+1)` -/
def P923040910012299663.Spec : Prop :=
  ∀ n, P923040910012299663.a n = (A128077 (n + 1) : ℚ)

end A128077

/-! ## A128077.P14413637745392241687

`gcd(A075362(n+1), A127735(n+1))`
-/

namespace A128077.P14413637745392241687
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A075362 (n + 1)) (A127735 (n + 1))

end

end A128077.P14413637745392241687

namespace A128077

/-- `gcd(A075362(n+1), A127735(n+1))` -/
def P14413637745392241687.Spec : Prop :=
  ∀ n, (P14413637745392241687.a n : ℤ) = A128077 (n + 1)

end A128077

/-! ## A128077.P13492085688883679604

`(A132128(n+1)-n)*A002260(n+1)`
-/

namespace A128077.P13492085688883679604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A132128 (n + 1) - (n : ℤ)) * A002260 (n + 1)

end

end A128077.P13492085688883679604

namespace A128077

/-- `(A132128(n+1)-n)*A002260(n+1)` -/
def P13492085688883679604.Spec : Prop :=
  ∀ n, P13492085688883679604.a n = A128077 (n + 1)

end A128077

/-! ## A128077.P11182667817488075834

`A002260(n+1)²/A002260(A122797(n+1))`
-/

namespace A128077.P11182667817488075834
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002260 (n + 1) ^ 2 : ℚ) / (A002260 (A122797 (n + 1)).toNat : ℚ)

end

end A128077.P11182667817488075834

namespace A128077

/-- `A002260(n+1)²/A002260(A122797(n+1))` -/
def P11182667817488075834.Spec : Prop :=
  ∀ n, P11182667817488075834.a n = (A128077 (n + 1) : ℚ)

end A128077

/-! ## A128077.P6324621263243196187

`(A101447(n)-A141387(n))²/(A010054(n+1)+A002260(n+2)-1)`
-/

namespace A128077.P6324621263243196187
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A101447 n - A141387 n) ^ 2 : ℚ) / (A010054 (n + 1) + (A002260 (n + 2) - 1) : ℚ)

end

end A128077.P6324621263243196187

namespace A128077

/-- `(A101447(n)-A141387(n))²/(A010054(n+1)+A002260(n+2)-1)` -/
def P6324621263243196187.Spec : Prop :=
  ∀ n, P6324621263243196187.a n = (A128077 (n + 1) : ℚ)

end A128077

/-! ## A128077.P337230835291150804

`(a(n-1)+1)^(Δ[char[∑[n]]]+1)` with `a(0)=1`
-/

namespace A128077.P337230835291150804
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (a (n - 1) + 1) ^ ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 1 : ℤ)

end

end A128077.P337230835291150804

namespace A128077

/-- `(a(n-1)+1)^(Δ[char[∑[n]]]+1)` -/
def P337230835291150804.Spec : Prop :=
  ∀ n, P337230835291150804.a n = (A128077 (n + 1) : ℚ)

end A128077

/-! ## A128077.P13910642650458283246

`(1-C(∑[char[∑[n]]], 2)+n)^Δ[comp[∑[n]]]`
-/

namespace A128077.P13910642650458283246
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

open Classical in
def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f5 j ≠ x) n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) + (n : ℤ) : ℚ) ^ ((f4 (n + 1) : ℤ) - (f4 n : ℤ) : ℤ)

end

end A128077.P13910642650458283246

namespace A128077

/-- `(1-C(∑[char[∑[n]]], 2)+n)^Δ[comp[∑[n]]]` -/
def P13910642650458283246.Spec : Prop :=
  ∀ n, P13910642650458283246.a n = (A128077 (n + 1) : ℚ)

end A128077

/-! ## A128077.P17414012768708385080

`abs((1-C(∑[char[∑[n]]], 2)+n)^(Δ[char[∑[n]]]+1))`
-/

namespace A128077.P17414012768708385080
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

open Classical in
def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f5 j = n then 1 else 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) + (n : ℤ) : ℚ) ^ ((f4 (n + 1) : ℤ) - (f4 n : ℤ) + 1 : ℤ)|

end

end A128077.P17414012768708385080

namespace A128077

/-- `abs((1-C(∑[char[∑[n]]], 2)+n)^(Δ[char[∑[n]]]+1))` -/
def P17414012768708385080.Spec : Prop :=
  ∀ n, P17414012768708385080.a n = (A128077 (n + 1) : ℚ)

end A128077

/-!
# A128078: A002260 * A128064.

The programs for A128078, the canonical program `A128078.P385746566403988126` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128078 has offset 1).

The definition of A128078 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A128078.P385746566403988126

`A127733(n+1)-A048151(n+1)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A128078

/-- `A127733(n+1)-A048151(n+1)` -/
def P385746566403988126.Spec : Prop :=
  ∀ n, P385746566403988126.a n = A128078 (n + 1)

theorem P385746566403988126.correct : P385746566403988126.Spec := by
  intro n
  simp only [A128078, Nat.add_sub_cancel]

end A128078

/-! ## A128078.P1055664451136389831

`A128077(n+1)*A154990(n+1)`
-/

namespace A128078.P1055664451136389831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128077 (n + 1) * A154990 (n + 1)

end

end A128078.P1055664451136389831

namespace A128078

/-- `A128077(n+1)*A154990(n+1)` -/
def P1055664451136389831.Spec : Prop :=
  ∀ n, P1055664451136389831.a n = A128078 (n + 1)

end A128078

/-! ## A128078.P920697629248101059

`Δ[A099375(n)/2]*A002260(n+1)`
-/

namespace A128078.P920697629248101059
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099375 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * (A002260 (n + 1) : ℚ)

end

end A128078.P920697629248101059

namespace A128078

/-- `Δ[A099375(n)/2]*A002260(n+1)` -/
def P920697629248101059.Spec : Prop :=
  ∀ n, P920697629248101059.a n = (A128078 (n + 1) : ℚ)

end A128078

/-! ## A128078.P5438871255168300516

`2*A127773(n+1)-A002260(n+1)`
-/

namespace A128078.P5438871255168300516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A127773 (n + 1) - A002260 (n + 1)

end

end A128078.P5438871255168300516

namespace A128078

/-- `2*A127773(n+1)-A002260(n+1)` -/
def P5438871255168300516.Spec : Prop :=
  ∀ n, P5438871255168300516.a n = A128078 (n + 1)

end A128078

/-! ## A128078.P7721758441650796211

`Δ[A014370(n+1)-A002260(n+1)²]`
-/

namespace A128078.P7721758441650796211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014370 (n + 1) - A002260 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A128078.P7721758441650796211

namespace A128078

/-- `Δ[A014370(n+1)-A002260(n+1)²]` -/
def P7721758441650796211.Spec : Prop :=
  ∀ n, P7721758441650796211.a n = A128078 (n + 1)

end A128078

/-! ## A128078.P15103144692710322872

`A002260(n+2)-Δ[A002260(n+1)²]`
-/

namespace A128078.P15103144692710322872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 2) - (f1 (n + 1) - f1 n)

end

end A128078.P15103144692710322872

namespace A128078

/-- `A002260(n+2)-Δ[A002260(n+1)²]` -/
def P15103144692710322872.Spec : Prop :=
  ∀ n, P15103144692710322872.a n = A128078 (n + 1)

end A128078

/-! ## A128078.P6188655491228996769

`Δ[A002260(A038722(n+1))]*A002260(n+1)`
-/

namespace A128078.P6188655491228996769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A038722 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A002260 (n + 1)

end

end A128078.P6188655491228996769

namespace A128078

/-- `Δ[A002260(A038722(n+1))]*A002260(n+1)` -/
def P6188655491228996769.Spec : Prop :=
  ∀ n, P6188655491228996769.a n = A128078 (n + 1)

end A128078

/-! ## A128078.P2071758726203720764

`(1-C(∑[char[∑[n]]], 2)+n)*Δ[C(comp[∑[n]]-n, 2)-n]`
-/

namespace A128078.P2071758726203720764
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

open Classical in
def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f5 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) + (n : ℤ)) * (f4 (n + 1) - f4 n)

end

end A128078.P2071758726203720764

namespace A128078

/-- `(1-C(∑[char[∑[n]]], 2)+n)*Δ[C(comp[∑[n]]-n, 2)-n]` -/
def P2071758726203720764.Spec : Prop :=
  ∀ n, P2071758726203720764.a n = A128078 (n + 1)

end A128078

/-! ## A128078.P8466835308056238561

`(1-(C(∑[char[∑[n]]], 2)-n))*Δ[C(comp[∑[n]]-n, 2)-n]`
-/

namespace A128078.P8466835308056238561
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

open Classical in
def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f5 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - ((Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) - (n : ℤ))) * (f4 (n + 1) - f4 n)

end

end A128078.P8466835308056238561

namespace A128078

/-- `(1-(C(∑[char[∑[n]]], 2)-n))*Δ[C(comp[∑[n]]-n, 2)-n]` -/
def P8466835308056238561.Spec : Prop :=
  ∀ n, P8466835308056238561.a n = A128078 (n + 1)

end A128078

/-! ## A128078.P1629221969790794203

`(1-C(∑[char[∑[n]]], 2)+n)*Δ[A025581(n)]`
-/

namespace A128078.P1629221969790794203
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) + (n : ℤ)) * (f4 (n + 1) - f4 n)

end

end A128078.P1629221969790794203

namespace A128078

/-- `(1-C(∑[char[∑[n]]], 2)+n)*Δ[A025581(n)]` -/
def P1629221969790794203.Spec : Prop :=
  ∀ n, P1629221969790794203.a n = A128078 (n + 1)

end A128078

/-! ## A128078.P2875765938508410386

`A127648(n)²-A002262(n+1)`
-/

namespace A128078.P2875765938508410386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127648 n ^ 2 - A002262 (n + 1)

end

end A128078.P2875765938508410386

namespace A128078

/-- `A127648(n)²-A002262(n+1)` -/
def P2875765938508410386.Spec : Prop :=
  ∀ n, P2875765938508410386.a n = A128078 (n + 1)

end A128078

/-! ## A128078.P7806687326039300858

`Δ[A025581(n)]*A002260(n+1)`
-/

namespace A128078.P7806687326039300858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A002260 (n + 1)

end

end A128078.P7806687326039300858

namespace A128078

/-- `Δ[A025581(n)]*A002260(n+1)` -/
def P7806687326039300858.Spec : Prop :=
  ∀ n, P7806687326039300858.a n = A128078 (n + 1)

end A128078

/-! ## A128078.P9689957250589632420

`Δ[A004736(n+1)]*A002260(n+1)`
-/

namespace A128078.P9689957250589632420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A002260 (n + 1)

end

end A128078.P9689957250589632420

namespace A128078

/-- `Δ[A004736(n+1)]*A002260(n+1)` -/
def P9689957250589632420.Spec : Prop :=
  ∀ n, P9689957250589632420.a n = A128078 (n + 1)

end A128078

/-! ## A128078.P15568465631931971555

`(A132118(n+1)-n)*Δ[val(A118586(n+1), 2)]`
-/

namespace A128078.P15568465631931971555
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A118586 (n + 1)).toNat 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A132118 (n + 1) - (n : ℤ)) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A128078.P15568465631931971555

namespace A128078

/-- `(A132118(n+1)-n)*Δ[val(A118586(n+1), 2)]` -/
def P15568465631931971555.Spec : Prop :=
  ∀ n, P15568465631931971555.a n = A128078 (n + 1)

end A128078

/-! ## A128078.P15419041030789749421

`abs(A140756(n+1))*Δ[A004202(n+1)-(2*n+1)]`
-/

namespace A128078.P15419041030789749421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004202 (n + 1) - (2 * n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A140756 (n + 1)| * (f1 (n + 1) - f1 n)

end

end A128078.P15419041030789749421

namespace A128078

/-- `abs(A140756(n+1))*Δ[A004202(n+1)-(2*n+1)]` -/
def P15419041030789749421.Spec : Prop :=
  ∀ n, P15419041030789749421.a n = A128078 (n + 1)

end A128078

/-! ## A128078.P9076592028090847252

`sqrt(A133819(n+1))*Δ[A004202(n+1)-(2*n+1)]`
-/

namespace A128078.P9076592028090847252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004202 (n + 1) - (2 * n + 1 : ℤ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A133819 (n + 1) : ℝ) * (f1 (n + 1) - f1 n : ℝ)

end

end A128078.P9076592028090847252

namespace A128078

/-- `sqrt(A133819(n+1))*Δ[A004202(n+1)-(2*n+1)]` -/
def P9076592028090847252.Spec : Prop :=
  ∀ n, P9076592028090847252.a n = (A128078 (n + 1) : ℝ)

end A128078

/-! ## A128078.P15239824855372123707

`(A132118(n+1)-n)*Δ[A004202(n+1)-(2*n+1)]`
-/

namespace A128078.P15239824855372123707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004202 (n + 1) - (2 * n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A132118 (n + 1) - (n : ℤ)) * (f1 (n + 1) - f1 n)

end

end A128078.P15239824855372123707

namespace A128078

/-- `(A132118(n+1)-n)*Δ[A004202(n+1)-(2*n+1)]` -/
def P15239824855372123707.Spec : Prop :=
  ∀ n, P15239824855372123707.a n = A128078 (n + 1)

end A128078

/-! ## A128078.P13035204334806661759

`(A025581(n+1)-A025581(n))*A002260(n+1)`
-/

namespace A128078.P13035204334806661759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A025581 (n + 1) - A025581 n) * A002260 (n + 1)

end

end A128078.P13035204334806661759

namespace A128078

/-- `(A025581(n+1)-A025581(n))*A002260(n+1)` -/
def P13035204334806661759.Spec : Prop :=
  ∀ n, P13035204334806661759.a n = A128078 (n + 1)

end A128078

/-! ## A128078.P8439717106351884727

`A075362(n+1)+A004736(n+2)-A075362(n+2)`
-/

namespace A128078.P8439717106351884727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075362 (n + 1) + (A004736 (n + 2) - A075362 (n + 2))

end

end A128078.P8439717106351884727

namespace A128078

/-- `A075362(n+1)+A004736(n+2)-A075362(n+2)` -/
def P8439717106351884727.Spec : Prop :=
  ∀ n, P8439717106351884727.a n = A128078 (n + 1)

end A128078

/-! ## A128078.P8288625299834007480

`A133819(n+1)+A002260(n+2)-A133819(n+2)`
-/

namespace A128078.P8288625299834007480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133819 (n + 1) + (A002260 (n + 2) - A133819 (n + 2))

end

end A128078.P8288625299834007480

namespace A128078

/-- `A133819(n+1)+A002260(n+2)-A133819(n+2)` -/
def P8288625299834007480.Spec : Prop :=
  ∀ n, P8288625299834007480.a n = A128078 (n + 1)

end A128078

/-!
# A128079: a(n) = Sum_{k=0..n} A000984(k)*A001263(n+1,k+1), where A000984 is the central binomial coefficients and A001263 is the Narayana triangle.

The programs for A128079, there is no canonical definition to state claims against.
-/

/-! ## A128079.P6958455644116639223

`((n+3)²*A005802(n+1)-(n-3)*(n+1)*A005802(n))/12`
-/

namespace A128079.P6958455644116639223
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n + 3) ^ 2 : ℤ) * A005802 (n + 1) - ((n : ℤ) - 3) * ((n + 1 : ℤ) * A005802 n) : ℚ) / 12

end

end A128079.P6958455644116639223

/-! ## A128079.P8119195181343437311

`A394446(∑[2*n])`
-/

namespace A128079.P8119195181343437311
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394446 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A128079.P8119195181343437311

/-! ## A128079.P9413465948469652194

`A136046(n)/A000108(n)`
-/

namespace A128079.P9413465948469652194
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A136046 n : ℚ) / (A000108 n : ℚ)

end

end A128079.P9413465948469652194

/-! ## A128079.P15282893147741961604

`A136046(n)/A342982(∑[n])`
-/

namespace A128079.P15282893147741961604
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A136046 n : ℚ) / (A342982 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A128079.P15282893147741961604

/-! ## A128079.P17100465395113717142

`record[A138543(n)]/A000108(n)`
-/

namespace A128079.P17100465395113717142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138543 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (A000108 n : ℚ)

end

end A128079.P17100465395113717142

/-!
# A128080: Triangle, read by rows of n(n-1)+1 terms, of coefficients of q in the q-analog of the odd double factorials: T(n,k) = [q^k] Product_{j=1..n} (1-q^(2j-1))/(1-q) for n>0, with T(0,0)=1.

The programs for A128080, there is no canonical definition to state claims against.
-/

/-! ## A128080.P2219877741175208389

`A161123(lt[0, A161123(n)])`
-/

namespace A128080.P2219877741175208389
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161123 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161123 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A128080.P2219877741175208389

/-! ## A128080.P11984037923436601693

`filter[A161123(n), A145568(#)]`
-/

namespace A128080.P11984037923436601693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161123 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145568 (f1 j).toNat = 1) n)

end

end A128080.P11984037923436601693

/-! ## A128080.P15697750506601839749

`filter[A161123(n), A168181(#)]`
-/

namespace A128080.P15697750506601839749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161123 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168181 (f1 j).toNat = 1) n)

end

end A128080.P15697750506601839749

/-! ## A128080.P15128670719385046388

`filter[A161123(n), A368916(#)]`
-/

namespace A128080.P15128670719385046388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161123 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A368916 (f1 j).toNat = 1) n)

end

end A128080.P15128670719385046388

/-!
# A128081: Central coefficients of q in the q-analog of the odd double factorials: a(n) = [q^(n(n-1)/2)] Product_{j=1..n} (1-q^(2j-1))/(1-q).

The programs for A128081, there is no canonical definition to state claims against.
-/

/-! ## A128081.P7024470351375245863

`A128080(∑[(1-n)²]+n-1)`
-/

namespace A128081.P7024470351375245863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128080 (∑ j ∈ Finset.range (n + 1), f1 j + ((n : ℤ) - 1)).toNat

end

end A128081.P7024470351375245863

/-! ## A128081.P1062153006354073072

`or(1, A057354(A201197(n)))`
-/

namespace A128081.P1062153006354073072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A057354 (A201197 n).toNat)

end

end A128081.P1062153006354073072

/-! ## A128081.P15560590867544994445

`A064877(A076324(n+1))+1`
-/

namespace A128081.P15560590867544994445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064877 (A076324 (n + 1)).toNat + 1

end

end A128081.P15560590867544994445

/-!
# A128082: A diagonal of the triangle A128080 of coefficients of q in the q-analog of the odd double factorials: a(n) = A128080(n+1,n).

The programs for A128082, there is no canonical definition to state claims against.
-/

/-! ## A128082.P9941788185479081607

`A128080(A064999(n))`
-/

namespace A128082.P9941788185479081607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128080 (A064999 n).toNat

end

end A128082.P9941788185479081607

/-! ## A128082.P17218028107485849898

`A128080(A005408(∑[∑[n]]))`
-/

namespace A128082.P17218028107485849898
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128080 (A005408 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A128082.P17218028107485849898

/-! ## A128082.P3223989577135345488

`A128080(∑[A002378(n)]+1)`
-/

namespace A128082.P3223989577135345488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128080 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A128082.P3223989577135345488

/-! ## A128082.P12095750594865600421

`A128080(A006527(n)+1+n)`
-/

namespace A128082.P12095750594865600421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128080 (A006527 n + 1 + (n : ℤ)).toNat

end

end A128082.P12095750594865600421

/-! ## A128082.P6854996591533871247

`A128080(∑[A028310(∑[2*n])])`
-/

namespace A128082.P6854996591533871247
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128080 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A128082.P6854996591533871247

/-!
# A128083: Sum of squared coefficients of q in the q-analog of the odd double factorials.

The programs for A128083, there is no canonical definition to state claims against.
-/

/-! ## A128083.P17148981872764323093

`or(comp[2*(n+1)], A000010(comp[2*(n+1)]!))`
-/

namespace A128083.P17148981872764323093
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) (A000010 (Nat.factorial (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)))

end

end A128083.P17148981872764323093

/-!
# A128084: Triangle, read by rows of n^2+1 terms, of coefficients of q in the q-analog of the even double factorials: T(n,k) = [q^k] Product_{j=1..n} (1-q^(2j))/(1-q) for n>0, with T(0,0)=1.

The programs for A128084, there is no canonical definition to state claims against.
-/

/-! ## A128084.P15763697851761119099

`A131823(A247760(n+1)%A182729(3*n+4))`
-/

namespace A128084.P15763697851761119099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131823 (Int.tmod (A247760 (n + 1)) (A182729 (3 * n + 4))).toNat

end

end A128084.P15763697851761119099

/-! ## A128084.P13752450241766127487

`A131823(A247760(n+1))%A319487(3*n+5)`
-/

namespace A128084.P13752450241766127487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A131823 (A247760 (n + 1)).toNat) (A319487 (3 * n + 5))

end

end A128084.P13752450241766127487

/-! ## A128084.P13341302938503667870

`A131823(lt[A131814(2*n+1), A131850(n+1)])`
-/

namespace A128084.P13341302938503667870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131814 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131850 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131823 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A128084.P13341302938503667870

/-!
# A128085: Central coefficients of q in the q-analog of the even double factorials: a(n) = [q^([n^2/2])] Product_{j=1..n} (1-q^(2j))/(1-q).

The programs for A128085, there is no canonical definition to state claims against.
-/

/-! ## A128085.P5039016479435347013

`A128084(A006527(n)+A004525(n))`
-/

namespace A128085.P5039016479435347013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128084 (A006527 n + A004525 n).toNat

end

end A128085.P5039016479435347013

/-! ## A128085.P3628494065522477226

`A128084(A006527(n)+A004526(n))`
-/

namespace A128085.P3628494065522477226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128084 (A006527 n + A004526 n).toNat

end

end A128085.P3628494065522477226

/-! ## A128085.P15980815197570584440

`A128084(A065033(n)+A006527(n))`
-/

namespace A128085.P15980815197570584440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128084 (A065033 n + A006527 n).toNat

end

end A128085.P15980815197570584440

/-! ## A128085.P6791431636452352182

`A128084(n-(A004525(n)-A006527(n)))`
-/

namespace A128085.P6791431636452352182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128084 ((n : ℤ) - (A004525 n - A006527 n)).toNat

end

end A128085.P6791431636452352182

/-! ## A128085.P12640688614892533198

`A128084(n-(A004526(n)-A006527(n)))`
-/

namespace A128085.P12640688614892533198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128084 ((n : ℤ) - (A004526 n - A006527 n)).toNat

end

end A128085.P12640688614892533198

/-!
# A128086: A diagonal of the triangle A128084 of coefficients of q in the q-analog of the even double factorials: a(n) = A128084(n,n).

The programs for A128086, there is no canonical definition to state claims against.
-/

/-! ## A128086.P791916443487145057

`A128084(∑[n²])`
-/

namespace A128086.P791916443487145057
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128084 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A128086.P791916443487145057

/-! ## A128086.P15096908466249991069

`lcm(1-4/2, A128084(A000330(n)))`
-/

namespace A128086.P15096908466249991069
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.roundAway (1 - (4 : ℚ) / 2)) (A128084 (A000330 n).toNat)

end

end A128086.P15096908466249991069

/-! ## A128086.P6215685280393574226

`or(A000007(n), A128084(A000330(n)))`
-/

namespace A128086.P6215685280393574226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A128084 (A000330 n).toNat)

end

end A128086.P6215685280393574226

/-! ## A128086.P13806197952160364499

`A014963(32*n+14)*A128084(A000330(n))`
-/

namespace A128086.P13806197952160364499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (32 * n + 14) * A128084 (A000330 n).toNat

end

end A128086.P13806197952160364499

/-! ## A128086.P15306551560070343672

`A128084(A000330(n))%A000032(A000040(n+4))`
-/

namespace A128086.P15306551560070343672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A128084 (A000330 n).toNat) (A000032 (A000040 (n + 4)).toNat)

end

end A128086.P15306551560070343672

/-!
# A128088: a(n) = Sum_{k=0..n} A000108(k)*A001263(n+1,k+1), where A000108 is the Catalan numbers and A001263 is the Narayana triangle.

The programs for A128088, there is no canonical definition to state claims against.
-/

/-! ## A128088.P11413153238753441890

`(n+1)*A005802(n)`
-/

namespace A128088.P11413153238753441890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A005802 n

end

end A128088.P11413153238753441890

/-! ## A128088.P10398956314353723932

`(n+1)*Δ[A246138(n+1)]`
-/

namespace A128088.P10398956314353723932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246138 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f1 (n + 1) - f1 n)

end

end A128088.P10398956314353723932

/-! ## A128088.P15134871760981131819

`A005802(n)*A008619(2*n)`
-/

namespace A128088.P15134871760981131819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005802 n * A008619 (2 * n)

end

end A128088.P15134871760981131819

/-! ## A128088.P1606687769625492180

`(n+1)*(A246138(n+2)-A246138(n+1))`
-/

namespace A128088.P1606687769625492180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A246138 (n + 2) - A246138 (n + 1))

end

end A128088.P1606687769625492180

/-! ## A128088.P17523767219679975052

`A005802(n)*A008624(A016825(n))`
-/

namespace A128088.P17523767219679975052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005802 n * A008624 (A016825 n).toNat

end

end A128088.P17523767219679975052

/-! ## A128088.P17058083217604299159

`A245067(n)/A000108(n)`
-/

namespace A128088.P17058083217604299159
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A245067 n : ℚ) / (A000108 n : ℚ)

end

end A128088.P17058083217604299159

/-!
# A128089: Denominators in inverse of triangle A128078 by rows, n * each term in n-th row of A126615.

The programs for A128089, there is no canonical definition to state claims against.
-/

/-! ## A128089.P6327325428197458754

`∑[char[∑[n]]]*A126615(n+1)`
-/

namespace A128089.P6327325428197458754
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A126615 (n + 1)

end

end A128089.P6327325428197458754

/-! ## A128089.P8411743503789511646

`A128219(n+1)*A128228(n+1)`
-/

namespace A128089.P8411743503789511646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128219 (n + 1) * A128228 (n + 1)

end

end A128089.P8411743503789511646

/-! ## A128089.P16845425234248583626

`A002260(n+2)*A075362(n+1)`
-/

namespace A128089.P16845425234248583626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 2) * A075362 (n + 1)

end

end A128089.P16845425234248583626

/-! ## A128089.P11477248781665415956

`A075362(n+1)*A128227(comp[∑[n]])`
-/

namespace A128089.P11477248781665415956
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075362 (n + 1) * A128227 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A128089.P11477248781665415956

/-! ## A128089.P3216619921896720142

`A002260(n+2)*A079904(comp[∑[n]])`
-/

namespace A128089.P3216619921896720142
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 2) * A079904 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A128089.P3216619921896720142

/-! ## A128089.P9926461303296200813

`sqrt(A133819(n+2))*A075362(n+1)`
-/

namespace A128089.P9926461303296200813
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A133819 (n + 2) : ℝ) * (A075362 (n + 1) : ℝ)

end

end A128089.P9926461303296200813

/-! ## A128089.P983533340237829753

`Δ[A014370(n+1)]*A075362(n+1)`
-/

namespace A128089.P983533340237829753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A075362 (n + 1)

end

end A128089.P983533340237829753

/-! ## A128089.P1394696949697697462

`(A048151(n+1)+1)*A075362(n+1)`
-/

namespace A128089.P1394696949697697462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A048151 (n + 1) + 1) * A075362 (n + 1)

end

end A128089.P1394696949697697462

/-! ## A128089.P13137959052927022834

`A000005(A059268(n+1))*A075362(n+1)`
-/

namespace A128089.P13137959052927022834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A059268 (n + 1)).toNat * A075362 (n + 1)

end

end A128089.P13137959052927022834

/-! ## A128089.P12959590923719897854

`A126615(n+1)+A003056(n)*A126615(n+1)`
-/

namespace A128089.P12959590923719897854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126615 (n + 1) + A003056 n * A126615 (n + 1)

end

end A128089.P12959590923719897854

/-!
# A128090: Denominators in inverse of A128077, numerators = 1.

The programs for A128090, there is no canonical definition to state claims against.
-/

/-! ## A128090.P3541937563732088514

`(A127648(n)-A003056(n))*A093995(n+1)`
-/

namespace A128090.P3541937563732088514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A127648 n - A003056 n) * A093995 (n + 1)

end

end A128090.P3541937563732088514

/-! ## A128090.P5728803347258260873

`(A127648(n)-A003056(n))*∑[A010054(n)]²`
-/

namespace A128090.P5728803347258260873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A127648 n - A003056 n) * (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A128090.P5728803347258260873

/-! ## A128090.P658980383392089624

`(A127648(n)-A003056(n))*A002024(n+1)²`
-/

namespace A128090.P658980383392089624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A127648 n - A003056 n) * A002024 (n + 1) ^ 2

end

end A128090.P658980383392089624

/-! ## A128090.P11459440511232315525

`(A127648(n)-A117707(n))*A002024(n+1)²`
-/

namespace A128090.P11459440511232315525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A127648 n - A117707 n) * A002024 (n + 1) ^ 2

end

end A128090.P11459440511232315525

/-! ## A128090.P17482290702031490137

`(A127648(n)-A003056(n))*A000005(A098355(n))²`
-/

namespace A128090.P17482290702031490137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A127648 n - A003056 n) * A000005 (A098355 n).toNat ^ 2

end

end A128090.P17482290702031490137

/-!
# A128091: Row sums of unsigned A128090.

The programs for A128091, the canonical program `A128091.P11153367906362083789` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128091 has offset 1).

The definition of A128091 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A128091.P2556145495538725601

`(n+1)²*((n+1)²-2*(n+1)+2)`
-/

namespace A128091.P2556145495538725601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * (((n + 1) ^ 2 : ℤ) - (2 * (n + 1) : ℤ) + 2)

end

end A128091.P2556145495538725601

namespace A128091

/-- `(n+1)²*((n+1)²-2*(n+1)+2)` -/
def P2556145495538725601.Spec : Prop :=
  ∀ n, P2556145495538725601.a n = A128091 (n + 1)

theorem P2556145495538725601.correct : P2556145495538725601.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A128091, Nat.add_sub_cancel, A128091.P2556145495538725601.a, A128091.P11153367906362083789.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A128091, Nat.add_sub_cancel, A128091.P2556145495538725601.a, A128091.P11153367906362083789.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A128091

/-! ## A128091.P11153367906362083789

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=1, a(1)=8, a(2)=45, a(3)=160, a(4)=425`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A128091

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P11153367906362083789.Spec : Prop :=
  ∀ n, P11153367906362083789.a n = A128091 (n + 1)

theorem P11153367906362083789.correct : P11153367906362083789.Spec := by
  intro n
  simp only [A128091, Nat.add_sub_cancel]

end A128091

/-! ## A128091.P15313556677727092143

`n*A045991(n+1)+(n+1)²`
-/

namespace A128091.P15313556677727092143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A045991 (n + 1) + ((n + 1) ^ 2 : ℤ)

end

end A128091.P15313556677727092143

namespace A128091

/-- `n*A045991(n+1)+(n+1)²` -/
def P15313556677727092143.Spec : Prop :=
  ∀ n, P15313556677727092143.a n = A128091 (n + 1)

end A128091

/-! ## A128091.P4166243958180209405

`((n+1)/cos(atan(n)))²`
-/

namespace A128091.P4166243958180209405
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℝ) / Real.cos (Real.arctan (n : ℝ))) ^ 2

end

end A128091.P4166243958180209405

namespace A128091

/-- `((n+1)/cos(atan(n)))²` -/
def P4166243958180209405.Spec : Prop :=
  ∀ n, P4166243958180209405.a n = (A128091 (n + 1) : ℝ)

end A128091

/-! ## A128091.P10697711560003701750

`((n+1)/sin(acot(n)))²`
-/

namespace A128091.P10697711560003701750
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℝ) / Real.sin (SequenceMachineLib.acot (n : ℝ))) ^ 2

end

end A128091.P10697711560003701750

namespace A128091

/-- `((n+1)/sin(acot(n)))²` -/
def P10697711560003701750.Spec : Prop :=
  ∀ n, P10697711560003701750.a n = (A128091 (n + 1) : ℝ)

end A128091

/-! ## A128091.P9733922508508853484

`((n+1)/sin(acot(n)))^2`
-/

namespace A128091.P9733922508508853484
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℝ) / Real.sin (SequenceMachineLib.acot (n : ℝ))) ^ 2

end

end A128091.P9733922508508853484

namespace A128091

/-- `((n+1)/sin(acot(n)))^2` -/
def P9733922508508853484.Spec : Prop :=
  ∀ n, P9733922508508853484.a n = (A128091 (n + 1) : ℝ)

end A128091

/-! ## A128091.P5596311586742003593

`or(1, ∑[2*n])²-n²`
-/

namespace A128091.P5596311586742003593
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℤ) - (n ^ 2 : ℤ)

end

end A128091.P5596311586742003593

namespace A128091

/-- `or(1, ∑[2*n])²-n²` -/
def P5596311586742003593.Spec : Prop :=
  ∀ n, P5596311586742003593.a n = A128091 (n + 1)

end A128091

/-! ## A128091.P1994356210238724685

`xor(1, ∑[2*n])²-n²`
-/

namespace A128091.P1994356210238724685
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.xor 1 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℤ) - (n ^ 2 : ℤ)

end

end A128091.P1994356210238724685

namespace A128091

/-- `xor(1, ∑[2*n])²-n²` -/
def P1994356210238724685.Spec : Prop :=
  ∀ n, P1994356210238724685.a n = A128091 (n + 1)

end A128091

/-! ## A128091.P3584874151108047346

`(n+1)²+lcm(n, n+1)²`
-/

namespace A128091.P3584874151108047346
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2 + Nat.lcm n (n + 1) ^ 2

end

end A128091.P3584874151108047346

namespace A128091

/-- `(n+1)²+lcm(n, n+1)²` -/
def P3584874151108047346.Spec : Prop :=
  ∀ n, (P3584874151108047346.a n : ℤ) = A128091 (n + 1)

end A128091

/-! ## A128091.P17763958777275509902

`ceil((n+2)/acot(n)^3)+n²`
-/

namespace A128091.P17763958777275509902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 2 : ℝ) / SequenceMachineLib.acot (n : ℝ) ^ 3⌉ + (n ^ 2 : ℤ)

end

end A128091.P17763958777275509902

namespace A128091

/-- `ceil((n+2)/acot(n)^3)+n²` -/
def P17763958777275509902.Spec : Prop :=
  ∀ n, P17763958777275509902.a n = A128091 (n + 1)

end A128091

/-! ## A128091.P4333157219100905754

`(C(n+1, n)²-n)²-n²`
-/

namespace A128091.P4333157219100905754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.choose (n + 1) n ^ 2 : ℤ) - (n : ℤ)) ^ 2 - (n ^ 2 : ℤ)

end

end A128091.P4333157219100905754

namespace A128091

/-- `(C(n+1, n)²-n)²-n²` -/
def P4333157219100905754.Spec : Prop :=
  ∀ n, P4333157219100905754.a n = A128091 (n + 1)

end A128091

/-! ## A128091.P13925354501706247421

`∑[a(n-1)+2]²-n²` with `a(0)=1, a(1)=2`
-/

namespace A128091.P13925354501706247421
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - (n ^ 2 : ℤ)

end

end A128091.P13925354501706247421

namespace A128091

/-- `∑[a(n-1)+2]²-n²` -/
def P13925354501706247421.Spec : Prop :=
  ∀ n, P13925354501706247421.a n = A128091 (n + 1)

end A128091

/-! ## A128091.P14085464836416179903

`lcm(∑[2*n]+1, ∑[2*n])+n+1`
-/

namespace A128091.P14085464836416179903
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (∑ j ∈ Finset.range (n + 1), f1 j + 1) (∑ j ∈ Finset.range (n + 1), f2 j) + (n + 1)

end

end A128091.P14085464836416179903

namespace A128091

/-- `lcm(∑[2*n]+1, ∑[2*n])+n+1` -/
def P14085464836416179903.Spec : Prop :=
  ∀ n, (P14085464836416179903.a n : ℤ) = A128091 (n + 1)

end A128091

/-! ## A128091.P12278738396709411185

`∑[a(n-1)+2]/(n+1)^(-2)` with `a(0)=1, a(1)=1`
-/

namespace A128091.P12278738396709411185
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (n + 1 : ℚ) ^ (-2 : ℤ)

end

end A128091.P12278738396709411185

namespace A128091

/-- `∑[a(n-1)+2]/(n+1)^(-2)` -/
def P12278738396709411185.Spec : Prop :=
  ∀ n, P12278738396709411185.a n = (A128091 (n + 1) : ℚ)

end A128091

/-! ## A128091.P5501475456452959218

`∑[A061804(n)+1]`
-/

namespace A128091.P5501475456452959218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061804 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A128091.P5501475456452959218

namespace A128091

/-- `∑[A061804(n)+1]` -/
def P5501475456452959218.Spec : Prop :=
  ∀ n, P5501475456452959218.a n = A128091 (n + 1)

end A128091

/-! ## A128091.P3592063456456849620

`A165563(n)+n²`
-/

namespace A128091.P3592063456456849620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165563 n + (n ^ 2 : ℤ)

end

end A128091.P3592063456456849620

namespace A128091

/-- `A165563(n)+n²` -/
def P3592063456456849620.Spec : Prop :=
  ∀ n, P3592063456456849620.a n = A128091 (n + 1)

end A128091

/-! ## A128091.P5028298876905333923

`Δ[A054620(n)]+n`
-/

namespace A128091.P5028298876905333923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054620 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n : ℤ)

end

end A128091.P5028298876905333923

namespace A128091

/-- `Δ[A054620(n)]+n` -/
def P5028298876905333923.Spec : Prop :=
  ∀ n, P5028298876905333923.a n = A128091 (n + 1)

end A128091

/-! ## A128091.P4152534751754959776

`∑[2*A061317(n)+1]`
-/

namespace A128091.P4152534751754959776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A061317 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A128091.P4152534751754959776

namespace A128091

/-- `∑[2*A061317(n)+1]` -/
def P4152534751754959776.Spec : Prop :=
  ∀ n, P4152534751754959776.a n = A128091 (n + 1)

end A128091

/-! ## A128091.P7388767513014764356

`A219086(n)+∑[n+1]`
-/

namespace A128091.P7388767513014764356
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219086 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A128091.P7388767513014764356

namespace A128091

/-- `A219086(n)+∑[n+1]` -/
def P7388767513014764356.Spec : Prop :=
  ∀ n, P7388767513014764356.a n = A128091 (n + 1)

end A128091

/-! ## A128091.P13851634941203444984

`∑[n*A005899(n)+1]`
-/

namespace A128091.P13851634941203444984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A005899 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A128091.P13851634941203444984

namespace A128091

/-- `∑[n*A005899(n)+1]` -/
def P13851634941203444984.Spec : Prop :=
  ∀ n, P13851634941203444984.a n = A128091 (n + 1)

end A128091

/-!
# A128092: a(n) = largest multiple of n which is <= 2^n.

The programs for A128092, the canonical program `A128092.P6436350869765391509` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128092 has offset 1).

The definition of A128092 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A128092.P6436350869765391509

`(n+1)*floor(2^(n+1)/(n+1))`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A128092

/-- `(n+1)*floor(2^(n+1)/(n+1))` -/
def P6436350869765391509.Spec : Prop :=
  ∀ n, P6436350869765391509.a n = A128092 (n + 1)

theorem P6436350869765391509.correct : P6436350869765391509.Spec := by
  intro n
  simp only [A128092, Nat.add_sub_cancel]

end A128092

/-! ## A128092.P9705216584840786006

`2^(n+1)-(2^(n+1))%(n+1)`
-/

namespace A128092.P9705216584840786006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) - ((2 ^ (n + 1) % (n + 1) : ℕ) : ℤ)

end

end A128092.P9705216584840786006

namespace A128092

/-- `2^(n+1)-(2^(n+1))%(n+1)` -/
def P9705216584840786006.Spec : Prop :=
  ∀ n, P9705216584840786006.a n = A128092 (n + 1)

end A128092

/-! ## A128092.P13256941349389411077

`-2^(n+1)%(n+1)+2^(n+1)`
-/

namespace A128092.P13256941349389411077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (-(2 ^ (n + 1) : ℤ)) (n + 1 : ℤ) + (2 ^ (n + 1) : ℤ)

end

end A128092.P13256941349389411077

namespace A128092

/-- `-2^(n+1)%(n+1)+2^(n+1)` -/
def P13256941349389411077.Spec : Prop :=
  ∀ n, P13256941349389411077.a n = A128092 (n + 1)

end A128092

/-! ## A128092.P16959105347583782109

`2^(n+1)-A015910(n+1)`
-/

namespace A128092.P16959105347583782109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) - A015910 (n + 1)

end

end A128092.P16959105347583782109

namespace A128092

/-- `2^(n+1)-A015910(n+1)` -/
def P16959105347583782109.Spec : Prop :=
  ∀ n, P16959105347583782109.a n = A128092 (n + 1)

end A128092

/-! ## A128092.P9445084788341376090

`-xor(n, -1)*A000799(n+1)`
-/

namespace A128092.P9445084788341376090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(Int.xor (n : ℤ) (-1) * A000799 (n + 1))

end

end A128092.P9445084788341376090

namespace A128092

/-- `-xor(n, -1)*A000799(n+1)` -/
def P9445084788341376090.Spec : Prop :=
  ∀ n, P9445084788341376090.a n = A128092 (n + 1)

end A128092

/-! ## A128092.P10783968783754052473

`A162214(n+1)+A099894(n)`
-/

namespace A128092.P10783968783754052473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162214 (n + 1) + A099894 n

end

end A128092.P10783968783754052473

namespace A128092

/-- `A162214(n+1)+A099894(n)` -/
def P10783968783754052473.Spec : Prop :=
  ∀ n, P10783968783754052473.a n = A128092 (n + 1)

end A128092

/-! ## A128092.P14827965694712166092

`A000225(n+1)+A048298(n+1)-A082495(n+1)`
-/

namespace A128092.P14827965694712166092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (n + 1) + (A048298 (n + 1) - A082495 (n + 1))

end

end A128092.P14827965694712166092

namespace A128092

/-- `A000225(n+1)+A048298(n+1)-A082495(n+1)` -/
def P14827965694712166092.Spec : Prop :=
  ∀ n, P14827965694712166092.a n = A128092 (n + 1)

end A128092

/-! ## A128092.P4805465296908646346

`A000079(n+1)+A048298(n+1)-A357531(n+1)`
-/

namespace A128092.P4805465296908646346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1) + (A048298 (n + 1) - A357531 (n + 1))

end

end A128092.P4805465296908646346

namespace A128092

/-- `A000079(n+1)+A048298(n+1)-A357531(n+1)` -/
def P4805465296908646346.Spec : Prop :=
  ∀ n, P4805465296908646346.a n = A128092 (n + 1)

end A128092

/-! ## A128092.P15032871892892603083

`A000799(n+1)*A082894(n+1)/A065482(n+1)`
-/

namespace A128092.P15032871892892603083
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000799 (n + 1) * A082894 (n + 1) : ℚ) / (A065482 (n + 1) : ℚ)

end

end A128092.P15032871892892603083

namespace A128092

/-- `A000799(n+1)*A082894(n+1)/A065482(n+1)` -/
def P15032871892892603083.Spec : Prop :=
  ∀ n, P15032871892892603083.a n = (A128092 (n + 1) : ℚ)

end A128092

/-! ## A128092.P17800869326145755075

`A000799(n+1)*A128093(n+1)/A053638(n+1)`
-/

namespace A128092.P17800869326145755075
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000799 (n + 1) * A128093 (n + 1) : ℚ) / (A053638 (n + 1) : ℚ)

end

end A128092.P17800869326145755075

namespace A128092

/-- `A000799(n+1)*A128093(n+1)/A053638(n+1)` -/
def P17800869326145755075.Spec : Prop :=
  ∀ n, P17800869326145755075.a n = (A128092 (n + 1) : ℚ)

end A128092

/-! ## A128092.P2524031511728738801

`A000799(n+1)*A162214(n+1)/A082482(n+1)`
-/

namespace A128092.P2524031511728738801
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000799 (n + 1) * A162214 (n + 1) : ℚ) / (A082482 (n + 1) : ℚ)

end

end A128092.P2524031511728738801

namespace A128092

/-- `A000799(n+1)*A162214(n+1)/A082482(n+1)` -/
def P2524031511728738801.Spec : Prop :=
  ∀ n, P2524031511728738801.a n = (A128092 (n + 1) : ℚ)

end A128092

/-!
# A128093: a(n) = smallest multiple of n which is >= 2^n.

The programs for A128093, the canonical program `A128093.P6640138818566681951` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128093 has offset 1).

The definition of A128093 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A128093.P6640138818566681951

`(n+1)*ceil(2^(n+1)/(n+1))`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A128093

/-- `(n+1)*ceil(2^(n+1)/(n+1))` -/
def P6640138818566681951.Spec : Prop :=
  ∀ n, P6640138818566681951.a n = A128093 (n + 1)

theorem P6640138818566681951.correct : P6640138818566681951.Spec := by
  intro n
  simp only [A128093, Nat.add_sub_cancel]

end A128093

/-! ## A128093.P7094810449919379316

`A162214(n+1)+1+n`
-/

namespace A128093.P7094810449919379316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162214 (n + 1) + 1 + (n : ℤ)

end

end A128093.P7094810449919379316

namespace A128093

/-- `A162214(n+1)+1+n` -/
def P7094810449919379316.Spec : Prop :=
  ∀ n, P7094810449919379316.a n = A128093 (n + 1)

end A128093

/-! ## A128093.P291610368897607976

`A082493(n+1)+2^(n+1)`
-/

namespace A128093.P291610368897607976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082493 (n + 1) + (2 ^ (n + 1) : ℤ)

end

end A128093.P291610368897607976

namespace A128093

/-- `A082493(n+1)+2^(n+1)` -/
def P291610368897607976.Spec : Prop :=
  ∀ n, P291610368897607976.a n = A128093 (n + 1)

end A128093

/-! ## A128093.P12708331439908499912

`∑[A000051(n)]-A082495(n+1)`
-/

namespace A128093.P12708331439908499912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A082495 (n + 1)

end

end A128093.P12708331439908499912

namespace A128093

/-- `∑[A000051(n)]-A082495(n+1)` -/
def P12708331439908499912.Spec : Prop :=
  ∀ n, P12708331439908499912.a n = A128093 (n + 1)

end A128093

/-! ## A128093.P14920623925767228497

`A052944(n+1)-A082495(n+1)`
-/

namespace A128093.P14920623925767228497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052944 (n + 1) - A082495 (n + 1)

end

end A128093.P14920623925767228497

namespace A128093

/-- `A052944(n+1)-A082495(n+1)` -/
def P14920623925767228497.Spec : Prop :=
  ∀ n, P14920623925767228497.a n = A128093 (n + 1)

end A128093

/-! ## A128093.P2139107721532167330

`A126646(n)-A082495(n+1)+1+n`
-/

namespace A128093.P2139107721532167330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n - A082495 (n + 1) + 1 + (n : ℤ)

end

end A128093.P2139107721532167330

namespace A128093

/-- `A126646(n)-A082495(n+1)+1+n` -/
def P2139107721532167330.Spec : Prop :=
  ∀ n, P2139107721532167330.a n = A128093 (n + 1)

end A128093

/-! ## A128093.P6328300757999106818

`A053638(n+1)+n*A053638(n+1)`
-/

namespace A128093.P6328300757999106818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053638 (n + 1) + (n : ℤ) * A053638 (n + 1)

end

end A128093.P6328300757999106818

namespace A128093

/-- `A053638(n+1)+n*A053638(n+1)` -/
def P6328300757999106818.Spec : Prop :=
  ∀ n, P6328300757999106818.a n = A128093 (n + 1)

end A128093

/-!
# A128094: Number of sequences s of length n, with s[1]=1, s[2]=1, s[3]=1, s[k-1] <=s[k] <= s[k-1]+s[k-2]+s[k-3] (s is called a sub-tribonacci sequence of length n).

The programs for A128094, there is no canonical definition to state claims against.
-/

/-! ## A128094.P2071220768840667556

`A028310(A332257(n)+A022908(n+1))`
-/

namespace A128094.P2071220768840667556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A332257 n + A022908 (n + 1)).toNat

end

end A128094.P2071220768840667556

/-! ## A128094.P9945102894157098429

`A055876(n+1)+A000720(A055897(n+1))`
-/

namespace A128094.P9945102894157098429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055876 (n + 1) + A000720 (A055897 (n + 1)).toNat

end

end A128094.P9945102894157098429

/-!
# A128095: Triangle read by rows: T(n,k) is the number of peakless Motzkin paths of length n and having k steps that touch the x-axis (1<=k<=n).

The programs for A128095, there is no canonical definition to state claims against.
-/

/-! ## A128095.P9831272621413646512

`A007895(A215771(n)*A256223(n))`
-/

namespace A128095.P9831272621413646512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 (A215771 n * A256223 n).toNat

end

end A128095.P9831272621413646512

/-! ## A128095.P4951027801949244282

`A092234(A211183(n))`
-/

namespace A128095.P4951027801949244282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092234 (A211183 n).toNat

end

end A128095.P4951027801949244282

/-! ## A128095.P6067354438462470331

`A176725(A342500(n+1))`
-/

namespace A128095.P6067354438462470331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176725 (A342500 (n + 1)).toNat

end

end A128095.P6067354438462470331

/-! ## A128095.P11191659742963948776

`∑{e}[A062510(A264428(n)), #]`
-/

namespace A128095.P11191659742963948776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062510 (A264428 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A128095.P11191659742963948776

/-! ## A128095.P11531820130638807759

`A066517(A113103(n))`
-/

namespace A128095.P11531820130638807759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066517 (A113103 n).toNat

end

end A128095.P11531820130638807759

/-!
# A128096: Number of steps that touch the x-axis in all peakless Motzkin paths of length n.

The programs for A128096, there is no canonical definition to state claims against.
-/

/-! ## A128096.P12746020247108638891

`A166297(n+2)+Δ[A089735(n)]`
-/

namespace A128096.P12746020247108638891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089735 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166297 (n + 2) + (f1 (n + 1) - f1 n)

end

end A128096.P12746020247108638891

/-! ## A128096.P11477276298105484744

`2*A188460(n)-A247911(A188460(n))`
-/

namespace A128096.P11477276298105484744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A188460 n - A247911 (A188460 n).toNat

end

end A128096.P11477276298105484744

/-! ## A128096.P17942975641703790845

`A185283(A190587(n)²)`
-/

namespace A128096.P17942975641703790845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185283 (A190587 n ^ 2).toNat

end

end A128096.P17942975641703790845

/-! ## A128096.P1188532249196319435

`∑[A026819(∑[A149967(n)])]`
-/

namespace A128096.P1188532249196319435
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149967 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026819 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A128096.P1188532249196319435

/-!
# A128097: Triangle read by rows: T(n,k) is the number of Motzkin paths of length n and having k steps that touch the x-axis (1<=k<=n).

The programs for A128097, there is no canonical definition to state claims against.
-/

/-! ## A128097.P13599063306756970188

`A208343(n+1)*A268073(A119502(n))`
-/

namespace A128097.P13599063306756970188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208343 (n + 1) * A268073 (A119502 n).toNat

end

end A128097.P13599063306756970188

/-! ## A128097.P8610016367134108027

`A101080(A250120(n)*A350258(n))`
-/

namespace A128097.P8610016367134108027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101080 (A250120 n * A350258 n).toNat

end

end A128097.P8610016367134108027

/-! ## A128097.P4384316891067265197

`A369376(A002858(2*(n+1))*A369381(n))`
-/

namespace A128097.P4384316891067265197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369376 (A002858 (2 * (n + 1)) * A369381 n).toNat

end

end A128097.P4384316891067265197

/-! ## A128097.P1478435409003546675

`A139351(A324563(n)*A359041(2*n+3))`
-/

namespace A128097.P1478435409003546675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139351 (A324563 n * A359041 (2 * n + 3)).toNat

end

end A128097.P1478435409003546675

/-!
# A128098: Number of steps that touch the x-axis in all Motzkin paths of length n.

The programs for A128098, there is no canonical definition to state claims against.
-/

/-! ## A128098.P6610313812160432483

`∑[∑[A100196(A151095(n))]]`
-/

namespace A128098.P6610313812160432483
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (A151095 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A128098.P6610313812160432483

/-! ## A128098.P9524599034769715388

`∑[A054846(A289846(2*n))]`
-/

namespace A128098.P9524599034769715388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054846 (A289846 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A128098.P9524599034769715388

/-! ## A128098.P5008351407208231641

`∑[A340764(∑[A060557(n+1)])]`
-/

namespace A128098.P5008351407208231641
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060557 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340764 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A128098.P5008351407208231641

/-!
# A128099: Triangle read by rows: T(n,k) is the number of ways to tile a 3 X n rectangle with k pieces of 2 X 2 tiles and 3n-4k pieces of 1 X 1 tiles (0 <= k <= floor(n/2)).

The programs for A128099, the canonical program `A128099.P4870284722196018582` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128099 has offset 0).

The definition of A128099 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A128099.P4870284722196018582

`A000079(A055087(n))*A011973(n)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A128099

/-- `A000079(A055087(n))*A011973(n)` -/
def P4870284722196018582.Spec : Prop :=
  ∀ n, P4870284722196018582.a n = A128099 n

theorem P4870284722196018582.correct : P4870284722196018582.Spec := by
  intro n
  simp only [A128099]

end A128099

/-! ## A128099.P10605747743362919168

`A115139(n+1)*A122803(A055087(n))`
-/

namespace A128099.P10605747743362919168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115139 (n + 1) * A122803 (A055087 n).toNat

end

end A128099.P10605747743362919168

namespace A128099

/-- `A115139(n+1)*A122803(A055087(n))` -/
def P10605747743362919168.Spec : Prop :=
  ∀ n, P10605747743362919168.a n = A128099 n

end A128099

/-! ## A128099.P13676547261194457080

`A011973(n)*A059268(A091018(n))`
-/

namespace A128099.P13676547261194457080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011973 n * A059268 (A091018 n).toNat

end

end A128099.P13676547261194457080

namespace A128099

/-- `A011973(n)*A059268(A091018(n))` -/
def P13676547261194457080.Spec : Prop :=
  ∀ n, P13676547261194457080.a n = A128099 n

end A128099

/-! ## A128099.P13435532961216429548

`A013609(A091018(n))`
-/

namespace A128099.P13435532961216429548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013609 (A091018 n).toNat

end

end A128099.P13435532961216429548

namespace A128099

/-- `A013609(A091018(n))` -/
def P13435532961216429548.Spec : Prop :=
  ∀ n, P13435532961216429548.a n = A128099 n

end A128099

/-! ## A128099.P3663941556774912163

`A013609(A056536(n+1)-1)`
-/

namespace A128099.P3663941556774912163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013609 (A056536 (n + 1) - 1).toNat

end

end A128099.P3663941556774912163

namespace A128099

/-- `A013609(A056536(n+1)-1)` -/
def P3663941556774912163.Spec : Prop :=
  ∀ n, P3663941556774912163.a n = A128099 n

end A128099

/-! ## A128099.P4409636749362308188

`A013611(A091018(n))/A000079(A055087(n))`
-/

namespace A128099.P4409636749362308188
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013611 (A091018 n).toNat : ℚ) / (A000079 (A055087 n).toNat : ℚ)

end

end A128099.P4409636749362308188

namespace A128099

/-- `A013611(A091018(n))/A000079(A055087(n))` -/
def P4409636749362308188.Spec : Prop :=
  ∀ n, P4409636749362308188.a n = (A128099 n : ℚ)

end A128099

/-! ## A128099.P18294802087541200420

`A013609(A066182(A056536(n+1)))`
-/

namespace A128099.P18294802087541200420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013609 (A066182 (A056536 (n + 1)).toNat).toNat

end

end A128099.P18294802087541200420

namespace A128099

/-- `A013609(A066182(A056536(n+1)))` -/
def P18294802087541200420.Spec : Prop :=
  ∀ n, P18294802087541200420.a n = A128099 n

end A128099

/-! ## A128099.P13495172877638739752

`A038207(A061579(A056536(n+1)-1))`
-/

namespace A128099.P13495172877638739752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038207 (A061579 (A056536 (n + 1) - 1).toNat).toNat

end

end A128099.P13495172877638739752

namespace A128099

/-- `A038207(A061579(A056536(n+1)-1))` -/
def P13495172877638739752.Spec : Prop :=
  ∀ n, P13495172877638739752.a n = A128099 n

end A128099

/-! ## A128099.P13555270356043543433

`A006519(A245178(n+1))*A011973(n)`
-/

namespace A128099.P13555270356043543433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (A245178 (n + 1)).toNat * A011973 n

end

end A128099.P13555270356043543433

namespace A128099

/-- `A006519(A245178(n+1))*A011973(n)` -/
def P13555270356043543433.Spec : Prop :=
  ∀ n, P13555270356043543433.a n = A128099 n

end A128099

/-! ## A128099.P8046042269862843080

`abs(A305098(n))`
-/

namespace A128099.P8046042269862843080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A305098 n|

end

end A128099.P8046042269862843080

namespace A128099

/-- `abs(A305098(n))` -/
def P8046042269862843080.Spec : Prop :=
  ∀ n, P8046042269862843080.a n = A128099 n

end A128099

