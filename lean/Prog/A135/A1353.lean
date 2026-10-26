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
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C040
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C011
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A135300: Positive X-values of solutions to the equation 1!*X^4 - 2!*(X + 1)^3 + 3!*(X + 2)^2 - (4^2)*(X + 3) + 5^2 = Y^3.

The programs for A135300, the canonical program `A135300.P18309040235703697740` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135300 has offset 1).

The definition of A135300 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A135300.P18309040235703697740

`record[abs(1-n^3)]`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A135300

/-- `record[abs(1-n^3)]` -/
def P18309040235703697740.Spec : Prop :=
  ∀ n, P18309040235703697740.a n = A135300 (n + 1)

theorem P18309040235703697740.correct : P18309040235703697740.Spec := by
  intro n
  simp only [A135300, Nat.add_sub_cancel]

end A135300

/-! ## A135300.P14009390635472587813

`sqrt(record[(1-n^3)²])`
-/

namespace A135300.P14009390635472587813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n ^ 3 : ℤ)) ^ 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℝ)

end

end A135300.P14009390635472587813

namespace A135300

/-- `sqrt(record[(1-n^3)²])` -/
def P14009390635472587813.Spec : Prop :=
  ∀ n, P14009390635472587813.a n = (A135300 (n + 1) : ℝ)

end A135300

/-! ## A135300.P14267055562858238630

`∑[Δ[n^3]-char[1]]`
-/

namespace A135300.P14267055562858238630
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) - ((if ∃ j, f3 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135300.P14267055562858238630

namespace A135300

/-- `∑[Δ[n^3]-char[1]]` -/
def P14267055562858238630.Spec : Prop :=
  ∀ n, P14267055562858238630.a n = A135300 (n + 1)

end A135300

/-! ## A135300.P16977756694825501157

`floor((n+1)^3-sin(n)²)`
-/

namespace A135300.P16977756694825501157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n + 1) ^ 3 : ℝ) - Real.sin (n : ℝ) ^ 2⌋

end

end A135300.P16977756694825501157

namespace A135300

/-- `floor((n+1)^3-sin(n)²)` -/
def P16977756694825501157.Spec : Prop :=
  ∀ n, P16977756694825501157.a n = A135300 (n + 1)

end A135300

/-! ## A135300.P7592165429932421069

`(n+1)^3-ceil(sin(n)²)`
-/

namespace A135300.P7592165429932421069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 3 : ℤ) - ⌈Real.sin (n : ℝ) ^ 2⌉

end

end A135300.P7592165429932421069

namespace A135300

/-- `(n+1)^3-ceil(sin(n)²)` -/
def P7592165429932421069.Spec : Prop :=
  ∀ n, P7592165429932421069.a n = A135300 (n + 1)

end A135300

/-! ## A135300.P4384852842297895973

`round((n+1)^3-atan(atan(n)))`
-/

namespace A135300.P4384852842297895973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((n + 1) ^ 3 : ℝ) - Real.arctan (Real.arctan (n : ℝ)))

end

end A135300.P4384852842297895973

namespace A135300

/-- `round((n+1)^3-atan(atan(n)))` -/
def P4384852842297895973.Spec : Prop :=
  ∀ n, P4384852842297895973.a n = A135300 (n + 1)

end A135300

/-! ## A135300.P4347751120982043321

`(n+1)^3-floor(atan(n+1))`
-/

namespace A135300.P4347751120982043321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 3 : ℤ) - ⌊Real.arctan (n + 1 : ℝ)⌋

end

end A135300.P4347751120982043321

namespace A135300

/-- `(n+1)^3-floor(atan(n+1))` -/
def P4347751120982043321.Spec : Prop :=
  ∀ n, P4347751120982043321.a n = A135300 (n + 1)

end A135300

/-! ## A135300.P6416698716417031296

`ceil((n+1)^3-atan(n+1))`
-/

namespace A135300.P6416698716417031296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n + 1) ^ 3 : ℝ) - Real.arctan (n + 1 : ℝ)⌉

end

end A135300.P6416698716417031296

namespace A135300

/-- `ceil((n+1)^3-atan(n+1))` -/
def P6416698716417031296.Spec : Prop :=
  ∀ n, P6416698716417031296.a n = A135300 (n + 1)

end A135300

/-! ## A135300.P6891048448822648229

`(n+1)^3-(1-floor(acot(n)))`
-/

namespace A135300.P6891048448822648229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 3 : ℤ) - (1 - ⌊SequenceMachineLib.acot (n : ℝ)⌋)

end

end A135300.P6891048448822648229

namespace A135300

/-- `(n+1)^3-(1-floor(acot(n)))` -/
def P6891048448822648229.Spec : Prop :=
  ∀ n, P6891048448822648229.a n = A135300 (n + 1)

end A135300

/-! ## A135300.P746645266873207860

`(n+1)^3-n²%(n+1)`
-/

namespace A135300.P746645266873207860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 3 : ℤ) - ((n ^ 2 % (n + 1) : ℕ) : ℤ)

end

end A135300.P746645266873207860

namespace A135300

/-- `(n+1)^3-n²%(n+1)` -/
def P746645266873207860.Spec : Prop :=
  ∀ n, P746645266873207860.a n = A135300 (n + 1)

end A135300

/-! ## A135300.P14301496307284512651

`ceil((n+1)^3-acot(acot(n+1)))`
-/

namespace A135300.P14301496307284512651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n + 1) ^ 3 : ℝ) - SequenceMachineLib.acot (SequenceMachineLib.acot (n + 1 : ℝ))⌉

end

end A135300.P14301496307284512651

namespace A135300

/-- `ceil((n+1)^3-acot(acot(n+1)))` -/
def P14301496307284512651.Spec : Prop :=
  ∀ n, P14301496307284512651.a n = A135300 (n + 1)

end A135300

/-! ## A135300.P12838940122751301476

`(n+1)^3-gcd(n, a(n-1))` with `a(0)=1`
-/

namespace A135300.P12838940122751301476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((n + 1) ^ 3 : ℤ) - (Int.gcd (n : ℤ) (a (n - 1)) : ℤ)

end

end A135300.P12838940122751301476

namespace A135300

/-- `(n+1)^3-gcd(n, a(n-1))` -/
def P12838940122751301476.Spec : Prop :=
  ∀ n, P12838940122751301476.a n = A135300 (n + 1)

end A135300

/-! ## A135300.P12883914932310924796

`record[n*(n²-2)]+2*n+1`
-/

namespace A135300.P12883914932310924796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((n ^ 2 : ℤ) - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (2 * n + 1 : ℤ)

end

end A135300.P12883914932310924796

namespace A135300

/-- `record[n*(n²-2)]+2*n+1` -/
def P12883914932310924796.Spec : Prop :=
  ∀ n, P12883914932310924796.a n = A135300 (n + 1)

end A135300

/-! ## A135300.P10247060377250767792

`(n+1)^3-a(floor(1/(n+1)))` with `a(0)=1`
-/

namespace A135300.P10247060377250767792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((n + 1) ^ 3 : ℤ) - a ⌊1 / (n + 1 : ℚ)⌋.toNat

end

end A135300.P10247060377250767792

namespace A135300

/-- `(n+1)^3-a(floor(1/(n+1)))` -/
def P10247060377250767792.Spec : Prop :=
  ∀ n, P10247060377250767792.a n = A135300 (n + 1)

end A135300

/-! ## A135300.P4004783909348601347

`(n+1)^3-((-1)^a(n-1))²` with `a(0)=1`
-/

namespace A135300.P4004783909348601347
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1] fun n a =>
  ((n + 1) ^ 3 : ℝ) - ((-1 : ℝ) ^ (a (n - 1))) ^ 2

end

end A135300.P4004783909348601347

namespace A135300

/-- `(n+1)^3-((-1)^a(n-1))²` -/
def P4004783909348601347.Spec : Prop :=
  ∀ n, P4004783909348601347.a n = (A135300 (n + 1) : ℝ)

end A135300

/-! ## A135300.P5334998263208619968

`(n+1)*(n+1)²-a(n-1)/floor(a(n-1))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A135300.P5334998263208619968
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  ((n + 1) * (n + 1) ^ 2 : ℚ) - a (n - 1) / (⌊a (n - 1)⌋ : ℚ)

end

end A135300.P5334998263208619968

namespace A135300

/-- `(n+1)*(n+1)²-a(n-1)/floor(a(n-1))` -/
def P5334998263208619968.Spec : Prop :=
  ∀ n, P5334998263208619968.a n = (A135300 (n + 1) : ℚ)

end A135300

/-! ## A135300.P12910000180249208713

`A184628(n+1)-1`
-/

namespace A135300.P12910000180249208713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184628 (n + 1) - 1

end

end A135300.P12910000180249208713

namespace A135300

/-- `A184628(n+1)-1` -/
def P12910000180249208713.Spec : Prop :=
  ∀ n, P12910000180249208713.a n = A135300 (n + 1)

end A135300

/-! ## A135300.P4223790587394649726

`A057428(n)+(n+1)^3`
-/

namespace A135300.P4223790587394649726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + ((n + 1) ^ 3 : ℤ)

end

end A135300.P4223790587394649726

namespace A135300

/-- `A057428(n)+(n+1)^3` -/
def P4223790587394649726.Spec : Prop :=
  ∀ n, P4223790587394649726.a n = A135300 (n + 1)

end A135300

/-! ## A135300.P1063272219921428592

`(n+1)^3-A057427(n)`
-/

namespace A135300.P1063272219921428592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 3 : ℤ) - A057427 n

end

end A135300.P1063272219921428592

namespace A135300

/-- `(n+1)^3-A057427(n)` -/
def P1063272219921428592.Spec : Prop :=
  ∀ n, P1063272219921428592.a n = A135300 (n + 1)

end A135300

/-!
# A135301: a(1)=1, a(n)=a(n-1)+n^0 if n odd, a(n)=a(n-1)+ n^2 if n is even.

The programs for A135301, the canonical program `A135301.P7812665825989209999` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135301 has offset 1).

The definition of A135301 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A135301.P7812665825989209999

`((2*(n+1)+1)*((n+1)²+n+1+3)+3*((n+1)²+n+1-1)*(-1)^(n+1))/12`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A135301

/-- `((2*(n+1)+1)*((n+1)²+n+1+3)+3*((n+1)²+n+1-1)*(-1)^(n+1))/12` -/
def P7812665825989209999.Spec : Prop :=
  ∀ n, P7812665825989209999.a n = (A135301 (n + 1) : ℚ)

end A135301

/-! ## A135301.P15287070625580431680

`∑[(n*n%2+1)²]`
-/

namespace A135301.P15287070625580431680
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n * (n % 2) + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135301.P15287070625580431680

namespace A135301

/-- `∑[(n*n%2+1)²]` -/
def P15287070625580431680.Spec : Prop :=
  ∀ n, (P15287070625580431680.a n : ℤ) = A135301 (n + 1)

end A135301

/-! ## A135301.P3961839631979469302

`∑[(lcm(2, n)+1-n)²]`
-/

namespace A135301.P3961839631979469302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.lcm 2 n : ℤ) + (1 - (n : ℤ))) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135301.P3961839631979469302

namespace A135301

/-- `∑[(lcm(2, n)+1-n)²]` -/
def P3961839631979469302.Spec : Prop :=
  ∀ n, P3961839631979469302.a n = A135301 (n + 1)

end A135301

/-! ## A135301.P11643669501436250390

`∑[(n*and(1, n)+1)²]`
-/

namespace A135301.P11643669501436250390
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n * Nat.land 1 n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135301.P11643669501436250390

namespace A135301

/-- `∑[(n*and(1, n)+1)²]` -/
def P11643669501436250390.Spec : Prop :=
  ∀ n, (P11643669501436250390.a n : ℤ) = A135301 (n + 1)

end A135301

/-! ## A135301.P9758929652737924805

`∑[((n+1)^and(1, n))²]`
-/

namespace A135301.P9758929652737924805
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ Nat.land 1 n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135301.P9758929652737924805

namespace A135301

/-- `∑[((n+1)^and(1, n))²]` -/
def P9758929652737924805.Spec : Prop :=
  ∀ n, (P9758929652737924805.a n : ℤ) = A135301 (n + 1)

end A135301

/-! ## A135301.P6352456112045398623

`∑[C(n+1, and(1, n))²]`
-/

namespace A135301.P6352456112045398623
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) (Nat.land 1 n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135301.P6352456112045398623

namespace A135301

/-- `∑[C(n+1, and(1, n))²]` -/
def P6352456112045398623.Spec : Prop :=
  ∀ n, (P6352456112045398623.a n : ℤ) = A135301 (n + 1)

end A135301

/-! ## A135301.P12392631333729986423

`∑[C(n+1, or(1, n))²]`
-/

namespace A135301.P12392631333729986423
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) (Nat.lor 1 n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135301.P12392631333729986423

namespace A135301

/-- `∑[C(n+1, or(1, n))²]` -/
def P12392631333729986423.Spec : Prop :=
  ∀ n, (P12392631333729986423.a n : ℤ) = A135301 (n + 1)

end A135301

/-! ## A135301.P2918800633597286937

`∑[(n+1)^Δ[or(1, n)]]`
-/

namespace A135301.P2918800633597286937
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ ((f2 (n + 1) : ℤ) - (f2 n : ℤ) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135301.P2918800633597286937

namespace A135301

/-- `∑[(n+1)^Δ[or(1, n)]]` -/
def P2918800633597286937.Spec : Prop :=
  ∀ n, P2918800633597286937.a n = (A135301 (n + 1) : ℚ)

end A135301

/-! ## A135301.P2169861214191695532

`∑[(n+1)^((2*n)%4)]`
-/

namespace A135301.P2169861214191695532
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ (2 * n % 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135301.P2169861214191695532

namespace A135301

/-- `∑[(n+1)^((2*n)%4)]` -/
def P2169861214191695532.Spec : Prop :=
  ∀ n, (P2169861214191695532.a n : ℤ) = A135301 (n + 1)

end A135301

/-! ## A135301.P7285382506448668567

`∑[(n+1)^(2*and(1, n))]`
-/

namespace A135301.P7285382506448668567
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ (2 * Nat.land 1 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135301.P7285382506448668567

namespace A135301

/-- `∑[(n+1)^(2*and(1, n))]` -/
def P7285382506448668567.Spec : Prop :=
  ∀ n, (P7285382506448668567.a n : ℤ) = A135301 (n + 1)

end A135301

/-! ## A135301.P9858014402355025682

`∑[C(n+1, n²%2)²]`
-/

namespace A135301.P9858014402355025682
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) (n ^ 2 % 2) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135301.P9858014402355025682

namespace A135301

/-- `∑[C(n+1, n²%2)²]` -/
def P9858014402355025682.Spec : Prop :=
  ∀ n, (P9858014402355025682.a n : ℤ) = A135301 (n + 1)

end A135301

/-! ## A135301.P15902880692819112266

`∑[gcd(n+1, xor(1, n²))²]`
-/

namespace A135301.P15902880692819112266
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (n + 1) (Nat.xor 1 (n ^ 2)) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135301.P15902880692819112266

namespace A135301

/-- `∑[gcd(n+1, xor(1, n²))²]` -/
def P15902880692819112266.Spec : Prop :=
  ∀ n, (P15902880692819112266.a n : ℤ) = A135301 (n + 1)

end A135301

/-! ## A135301.P10759223413888104331

`∑[gcd((n+1)², log2(gcd(2, n)))]`
-/

namespace A135301.P10759223413888104331
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n + 1) ^ 2 : ℤ) (SequenceMachineLib.roundAway (Real.logb 2 (Nat.gcd 2 n : ℝ)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135301.P10759223413888104331

namespace A135301

/-- `∑[gcd((n+1)², log2(gcd(2, n)))]` -/
def P10759223413888104331.Spec : Prop :=
  ∀ n, (P10759223413888104331.a n : ℤ) = A135301 (n + 1)

end A135301

/-! ## A135301.P13747139521056478436

`∑[(xor(1, n+2)%(n+2))²]`
-/

namespace A135301.P13747139521056478436
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.xor 1 (n + 2) % (n + 2)) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135301.P13747139521056478436

namespace A135301

/-- `∑[(xor(1, n+2)%(n+2))²]` -/
def P13747139521056478436.Spec : Prop :=
  ∀ n, (P13747139521056478436.a n : ℤ) = A135301 (n + 1)

end A135301

/-! ## A135301.P6901081700119999604

`∑[(C(n, a(n-1))+1)²]` with `a(0)=1`
-/

namespace A135301.P6901081700119999604
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  (Nat.choose n (f1 (n - 1)) + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135301.P6901081700119999604

namespace A135301

/-- `∑[(C(n, a(n-1))+1)²]` -/
def P6901081700119999604.Spec : Prop :=
  ∀ n, (P6901081700119999604.a n : ℤ) = A135301 (n + 1)

end A135301

/-! ## A135301.P5654870335973506490

`∑[(n+1)^(4-gcd(4, 2*n))]`
-/

namespace A135301.P5654870335973506490
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (4 - (Nat.gcd 4 (2 * n) : ℤ) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135301.P5654870335973506490

namespace A135301

/-- `∑[(n+1)^(4-gcd(4, 2*n))]` -/
def P5654870335973506490.Spec : Prop :=
  ∀ n, P5654870335973506490.a n = (A135301 (n + 1) : ℚ)

end A135301

/-! ## A135301.P4266262630535069794

`∑[(a(n-2)%(2*n))²]` with `a(0)=1, a(1)=4`
-/

namespace A135301.P4266262630535069794
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n f1 =>
  (f1 (n - 2) % (2 * n)) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135301.P4266262630535069794

namespace A135301

/-- `∑[(a(n-2)%(2*n))²]` -/
def P4266262630535069794.Spec : Prop :=
  ∀ n, (P4266262630535069794.a n : ℤ) = A135301 (n + 1)

end A135301

/-! ## A135301.P12958017943405538767

`∑[(n+1)^C(2, a(n-1))]` with `a(0)=1`
-/

namespace A135301.P12958017943405538767
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  (n + 1) ^ Nat.choose 2 (f1 (n - 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135301.P12958017943405538767

namespace A135301

/-- `∑[(n+1)^C(2, a(n-1))]` -/
def P12958017943405538767.Spec : Prop :=
  ∀ n, (P12958017943405538767.a n : ℤ) = A135301 (n + 1)

end A135301

/-! ## A135301.P743702964157282960

`∑[(n+1)^and(2, n+1+n)]`
-/

namespace A135301.P743702964157282960
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ Nat.land 2 (n + 1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135301.P743702964157282960

namespace A135301

/-- `∑[(n+1)^and(2, n+1+n)]` -/
def P743702964157282960.Spec : Prop :=
  ∀ n, (P743702964157282960.a n : ℤ) = A135301 (n + 1)

end A135301

/-! ## A135301.P5075240786515611120

`∑[(n+1)^(xor(1, n+1)-n)]`
-/

namespace A135301.P5075240786515611120
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ ((Nat.xor 1 (n + 1) : ℤ) - (n : ℤ) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135301.P5075240786515611120

namespace A135301

/-- `∑[(n+1)^(xor(1, n+1)-n)]` -/
def P5075240786515611120.Spec : Prop :=
  ∀ n, P5075240786515611120.a n = (A135301 (n + 1) : ℚ)

end A135301

/-!
# A135302: Square array of numbers A(n,k) (n>=0, k>=0) of transitive reflexive early confluent binary relations R on n labeled elements where |{y : xRy}| <= k for all x, read by antidiagonals.

The programs for A135302, there is no canonical definition to state claims against.
-/

/-! ## A135302.P16672643605102534003

`A028444(A108934(n))`
-/

namespace A135302.P16672643605102534003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028444 (A108934 n).toNat

end

end A135302.P16672643605102534003

/-! ## A135302.P16140322452422301992

`A028444(A108947(n))`
-/

namespace A135302.P16140322452422301992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028444 (A108947 n).toNat

end

end A135302.P16140322452422301992

/-! ## A135302.P5873748054250032968

`A090894(A108947(n)²)`
-/

namespace A135302.P5873748054250032968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090894 (A108947 n ^ 2).toNat

end

end A135302.P5873748054250032968

/-! ## A135302.P11035926529309157705

`A090894(A108947(n)^2)`
-/

namespace A135302.P11035926529309157705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090894 (A108947 n ^ 2).toNat

end

end A135302.P11035926529309157705

/-! ## A135302.P8290406010994857231

`A090894(A108934(n)^A000120(n))`
-/

namespace A135302.P8290406010994857231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090894 (SequenceMachineLib.roundAway ((A108934 n : ℚ) ^ (A000120 n : ℤ))).toNat

end

end A135302.P8290406010994857231

/-!
# A135303: a(n) = phi(2*n+1)/(2*A003558(n)), where phi = A000010.

The programs for A135303, there is no canonical definition to state claims against.
-/

/-! ## A135303.P6743727659520652643

`A000010(2*(n+1)+1)/(2*A003558(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A135303.P6743727659520652643
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (2 * (n + 1) + 1) : ℚ) / (2 * A003558 (n + 1) : ℚ)

end

end A135303.P6743727659520652643

/-! ## A135303.P6288885835019325359

`A072451(n+2)/A003558(n+1)`
-/

namespace A135303.P6288885835019325359
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A072451 (n + 2) : ℚ) / (A003558 (n + 1) : ℚ)

end

end A135303.P6288885835019325359

/-! ## A135303.P5386596305411690485

`A037225(n+1)/A005843(A003558(n+1))`
-/

namespace A135303.P5386596305411690485
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A037225 (n + 1) : ℚ) / (A005843 (A003558 (n + 1)).toNat : ℚ)

end

end A135303.P5386596305411690485

/-! ## A135303.P2931438424651558009

`A110654(A037225(n+1)/A003558(n+1))`
-/

namespace A135303.P2931438424651558009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (SequenceMachineLib.roundAway ((A037225 (n + 1) : ℚ) / (A003558 (n + 1) : ℚ))).toNat

end

end A135303.P2931438424651558009

/-! ## A135303.P16982700859252047175

`A304529(A037225(n+1)/A003558(n+1))`
-/

namespace A135303.P16982700859252047175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304529 (SequenceMachineLib.roundAway ((A037225 (n + 1) : ℚ) / (A003558 (n + 1) : ℚ))).toNat

end

end A135303.P16982700859252047175

/-! ## A135303.P1694008525035349390

`A023022(2*n+3)/A003558(n+1)`
-/

namespace A135303.P1694008525035349390
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A023022 (2 * n + 3) : ℚ) / (A003558 (n + 1) : ℚ)

end

end A135303.P1694008525035349390

/-! ## A135303.P12394339028411599992

`(A332436(n+1)+A332435(n+1))/A003558(n+1)`
-/

namespace A135303.P12394339028411599992
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A332436 (n + 1) + A332435 (n + 1) : ℚ) / (A003558 (n + 1) : ℚ)

end

end A135303.P12394339028411599992

/-!
# A135304: Maximal size of conflict-avoiding code of length 2n+1.

The programs for A135304, there is no canonical definition to state claims against.
-/

/-! ## A135304.P14457577186533383914

`∑[A361460(n+2)]%A088214(n+1)`
-/

namespace A135304.P14457577186533383914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361460 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A088214 (n + 1))

end

end A135304.P14457577186533383914

/-! ## A135304.P859626534662540766

`A008616(p?[A080513(A121149(n))])`
-/

namespace A135304.P859626534662540766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 (A121149 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A135304.P859626534662540766

/-! ## A135304.P13195661022137841475

`A034888(A079979(A000032(n))+n)`
-/

namespace A135304.P13195661022137841475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034888 (A079979 (A000032 n).toNat + (n : ℤ)).toNat

end

end A135304.P13195661022137841475

/-! ## A135304.P16133042717780468690

`A337690(A000032(n))+A034888(n)`
-/

namespace A135304.P16133042717780468690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337690 (A000032 n).toNat + A034888 n

end

end A135304.P16133042717780468690

/-! ## A135304.P17643505038589929537

`∑[A123594(A019586(n+1)*A353579(n+1)+3)]+1`
-/

namespace A135304.P17643505038589929537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123594 (A019586 (n + 1) * A353579 (n + 1) + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A135304.P17643505038589929537

/-!
# A135307: Number of Dyck paths of semilength n that do not contain the string UDDU.

The programs for A135307, there is no canonical definition to state claims against.
-/

/-! ## A135307.P14143780844073628430

`A135306(A033638(n))`
-/

namespace A135307.P14143780844073628430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135306 (A033638 n).toNat

end

end A135307.P14143780844073628430

/-! ## A135307.P13312771764460760230

`A135306(A002620(n)+1)`
-/

namespace A135307.P13312771764460760230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135306 (A002620 n + 1).toNat

end

end A135307.P13312771764460760230

/-! ## A135307.P3028868657230992072

`A135306(∑[A004526(n)]+1)`
-/

namespace A135307.P3028868657230992072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135306 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A135307.P3028868657230992072

/-! ## A135307.P13157961124494805435

`A135306(∑[A008619(n)]-n)`
-/

namespace A135307.P13157961124494805435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135306 (∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)).toNat

end

end A135307.P13157961124494805435

/-! ## A135307.P8063744559475788892

`A135306(A008619(A008619(n²)))`
-/

namespace A135307.P8063744559475788892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135306 (A008619 (A008619 (n ^ 2)).toNat).toNat

end

end A135307.P8063744559475788892

/-!
# A135308: Triangle read by rows: T(n,k) = the number of Dyck paths of semilength n with k DUUU's.

The programs for A135308, there is no canonical definition to state claims against.
-/

/-! ## A135308.P11529213480317990519

`A114492(n)-A185284(A000124(n))`
-/

namespace A135308.P11529213480317990519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114492 n - A185284 (A000124 n).toNat

end

end A135308.P11529213480317990519

/-! ## A135308.P13285203184116207629

`A114492(n)-A185284(A007590(n))`
-/

namespace A135308.P13285203184116207629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114492 n - A185284 (A007590 n).toNat

end

end A135308.P13285203184116207629

/-! ## A135308.P13441773611524557122

`A114492(n)-A185284(A016825(n))`
-/

namespace A135308.P13441773611524557122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114492 n - A185284 (A016825 n).toNat

end

end A135308.P13441773611524557122

/-! ## A135308.P11589004293215300998

`A114492(n)-A189661(A052899(n))`
-/

namespace A135308.P11589004293215300998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114492 n - A189661 (A052899 n).toNat

end

end A135308.P11589004293215300998

/-! ## A135308.P546213441010858492

`A114492(n)-A137579(A119002(n))`
-/

namespace A135308.P546213441010858492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114492 n - A137579 (A119002 n).toNat

end

end A135308.P546213441010858492

/-!
# A135309: Triangle read by rows: T(n,k) is the number of Dyck paths of semilength n having k UUUU's starting at level 0.

The programs for A135309, there is no canonical definition to state claims against.
-/

/-! ## A135309.P6872249261191745353

`A135331(n)-A079978(A000800(n))`
-/

namespace A135309.P6872249261191745353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135331 n - A079978 (A000800 n).toNat

end

end A135309.P6872249261191745353

/-! ## A135309.P15097514093335363388

`A135331(n)-A154103(A002663(n))`
-/

namespace A135309.P15097514093335363388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135331 n - A154103 (A002663 n).toNat

end

end A135309.P15097514093335363388

/-! ## A135309.P14551585131422984169

`A135331(n)-A178798(A000676(n))`
-/

namespace A135309.P14551585131422984169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135331 n - A178798 (A000676 n).toNat

end

end A135309.P14551585131422984169

/-! ## A135309.P5545658636697451548

`A135331(n)-A188300(A005183(n))`
-/

namespace A135309.P5545658636697451548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135331 n - A188300 (A005183 n).toNat

end

end A135309.P5545658636697451548

/-! ## A135309.P15002328960532572915

`A135331(n)-A178798(A027416(n))`
-/

namespace A135309.P15002328960532572915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135331 n - A178798 (A027416 n).toNat

end

end A135309.P15002328960532572915

/-!
# A135310: Number of Dyck paths of semilength n having no UUUU's starting at level 0.

The programs for A135310, there is no canonical definition to state claims against.
-/

/-! ## A135310.P5329234444173715124

`A135309(∑[A110655(n)])`
-/

namespace A135310.P5329234444173715124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135309 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A135310.P5329234444173715124

/-! ## A135310.P1733704085502108192

`A135309(∑[A300763(n)])`
-/

namespace A135310.P1733704085502108192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300763 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135309 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A135310.P1733704085502108192

/-! ## A135310.P15221210405690304280

`A135309(A004526(∑[A008619(n)]))`
-/

namespace A135310.P15221210405690304280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135309 (A004526 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A135310.P15221210405690304280

/-! ## A135310.P17867964981102993117

`A135309(∑[A008679(A016777(n))])`
-/

namespace A135310.P17867964981102993117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008679 (A016777 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135309 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A135310.P17867964981102993117

/-! ## A135310.P8867765325615165023

`A135309(∑[A004526(A080513(n))])`
-/

namespace A135310.P8867765325615165023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A080513 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135309 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A135310.P8867765325615165023

/-!
# A135311: A greedy sequence of prime offsets.

The programs for A135311, there is no canonical definition to state claims against.
-/

/-! ## A135311.P16401357036503734045

`A020498(n+1)-1`
-/

namespace A135311.P16401357036503734045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020498 (n + 1) - 1

end

end A135311.P16401357036503734045

/-! ## A135311.P14734297470129908689

`A210537(n+1)-3`
-/

namespace A135311.P14734297470129908689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210537 (n + 1) - 3

end

end A135311.P14734297470129908689

/-! ## A135311.P5147172149855846990

`xor(and(1, A004767(n)), A020498(n+1))`
-/

namespace A135311.P5147172149855846990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (Int.land 1 (A004767 n)) (A020498 (n + 1))

end

end A135311.P5147172149855846990

/-! ## A135311.P10354489539434175361

`xor(and(1, A002143(n+1)), A020498(n+1))`
-/

namespace A135311.P10354489539434175361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (Int.land 1 (A002143 (n + 1))) (A020498 (n + 1))

end

end A135311.P10354489539434175361

/-! ## A135311.P13658854193389825206

`xor(and(1, A002144(n+1)), A020498(n+1))`
-/

namespace A135311.P13658854193389825206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (Int.land 1 (A002144 (n + 1))) (A020498 (n + 1))

end

end A135311.P13658854193389825206

/-! ## A135311.P3918928500312339992

`xor(and(1, A002145(n+1)), A020498(n+1))`
-/

namespace A135311.P3918928500312339992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (Int.land 1 (A002145 (n + 1))) (A020498 (n + 1))

end

end A135311.P3918928500312339992

/-! ## A135311.P1072496782947033687

`xor(and(1, A004614(n+1)), A020498(n+1))`
-/

namespace A135311.P1072496782947033687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (Int.land 1 (A004614 (n + 1))) (A020498 (n + 1))

end

end A135311.P1072496782947033687

/-! ## A135311.P8394757740851513724

`A004442(A020498(n+1))`
-/

namespace A135311.P8394757740851513724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A020498 (n + 1)).toNat

end

end A135311.P8394757740851513724

/-! ## A135311.P13274645782465883090

`A023445(A210537(n+1))`
-/

namespace A135311.P13274645782465883090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023445 (A210537 (n + 1)).toNat

end

end A135311.P13274645782465883090

/-! ## A135311.P10942647312920371572

`A015238(A020498(n+1)+1)%A020498(n+1)`
-/

namespace A135311.P10942647312920371572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A015238 (A020498 (n + 1) + 1).toNat) (A020498 (n + 1))

end

end A135311.P10942647312920371572

/-! ## A135311.P17156123971034130782

`and(A020498(n+1), A158525(n+4))`
-/

namespace A135311.P17156123971034130782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A020498 (n + 1)) (A158525 (n + 4))

end

end A135311.P17156123971034130782

/-! ## A135311.P12296141441306386605

`and(A002446(n), A020498(n+1))`
-/

namespace A135311.P12296141441306386605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A002446 n) (A020498 (n + 1))

end

end A135311.P12296141441306386605

/-! ## A135311.P8950708287360106437

`and(A005367(n), A020498(n+1))`
-/

namespace A135311.P8950708287360106437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A005367 n) (A020498 (n + 1))

end

end A135311.P8950708287360106437

/-! ## A135311.P5434748818385787044

`and(A020498(n+1), A286778(n))`
-/

namespace A135311.P5434748818385787044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A020498 (n + 1)) (A286778 n)

end

end A135311.P5434748818385787044

/-! ## A135311.P16629269525236269167

`and(A020498(n+1), A143960(n+1))`
-/

namespace A135311.P16629269525236269167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A020498 (n + 1)) (A143960 (n + 1))

end

end A135311.P16629269525236269167

/-! ## A135311.P17573074351139621823

`and(A020498(n+1), A170940(n+1))`
-/

namespace A135311.P17573074351139621823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A020498 (n + 1)) (A170940 (n + 1))

end

end A135311.P17573074351139621823

/-!
# A135312: Number of transitive reflexive binary relations R on n labeled elements where |{y : xRy}| <= 2 for all x.

The programs for A135312, there is no canonical definition to state claims against.
-/

/-! ## A135312.P6371350278516918713

`A135302(∑[n+2]+3)`
-/

namespace A135312.P6371350278516918713
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135302 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A135312.P6371350278516918713

/-! ## A135312.P9078056784834219395

`abs(1-A135302(A340266(n+1)))+1`
-/

namespace A135312.P9078056784834219395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A135302 (A340266 (n + 1)).toNat| + 1

end

end A135312.P9078056784834219395

/-! ## A135312.P12734621147783911121

`gcd(A000038(n), A135302(A340266(n+1)))`
-/

namespace A135312.P12734621147783911121
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A135302 (A340266 (n + 1)).toNat)

end

end A135312.P12734621147783911121

/-! ## A135312.P9153906761325489111

`A135302(A340266(n+1))+A000038(n+1)`
-/

namespace A135312.P9153906761325489111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135302 (A340266 (n + 1)).toNat + A000038 (n + 1)

end

end A135312.P9153906761325489111

/-! ## A135312.P4257444407668659295

`A135302(A340266(n+1))%A198011(n+1)`
-/

namespace A135312.P4257444407668659295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A135302 (A340266 (n + 1)).toNat) (A198011 (n + 1))

end

end A135312.P4257444407668659295

/-! ## A135312.P6671516043236902433

`A135313(∑[char[1]+n]+1)+1`
-/

namespace A135312.P6671516043236902433
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135313 (∑ j ∈ Finset.range (n + 1), f1 j + 1) + 1

end

end A135312.P6671516043236902433

/-! ## A135312.P6870487315643000133

`A135313(A133263(n))+1-val((4*n)²+1, 2)`
-/

namespace A135312.P6870487315643000133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135313 (A133263 n).toNat + 1 - (SequenceMachineLib.valuation ((4 * n) ^ 2 + 1) 2 : ℤ)

end

end A135312.P6870487315643000133

/-! ## A135312.P16352722411897213436

`A135429(n)-A135458(n)`
-/

namespace A135312.P16352722411897213436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135429 n - A135458 n

end

end A135312.P16352722411897213436

/-!
# A135313: Triangle of numbers T(n,k) (n>=0, n>=k>=0) of transitive reflexive early confluent binary relations R on n labeled elements where k=max_{x}(|{y : xRy}|), read by rows.

The programs for A135313, there is no canonical definition to state claims against.
-/

/-! ## A135313.P18026820094763908087

`A005555(A319501(n))-A008284(n+1)`
-/

namespace A135313.P18026820094763908087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005555 (A319501 n).toNat - A008284 (n + 1)

end

end A135313.P18026820094763908087

/-! ## A135313.P8432860571909181914

`A127299(A270882(n))`
-/

namespace A135313.P8432860571909181914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127299 (A270882 n).toNat

end

end A135313.P8432860571909181914

/-! ## A135313.P11379957417603028193

`A194188(A267480(n)+1)`
-/

namespace A135313.P11379957417603028193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194188 (A267480 n + 1).toNat

end

end A135313.P11379957417603028193

/-! ## A135313.P6782359678732913528

`A063691(3^A229223(n))`
-/

namespace A135313.P6782359678732913528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063691 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A229223 n : ℤ))).toNat

end

end A135313.P6782359678732913528

/-! ## A135313.P3794721699045440123

`∑{d}[A270882(n), A319849(#)]`
-/

namespace A135313.P3794721699045440123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270882 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A319849 d

end

end A135313.P3794721699045440123

/-!
# A135314: a(n) = 7^n*6^(n^2).

The programs for A135314, the canonical program `A135314.P8722177318563518593` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135314 has offset 0).

The definition of A135314 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `7^n*6^n²` (program `A135314.P8722177318563518593`, by `A135314.P8722177318563518593.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A135314.P8722177318563518593

`7^n*6^n²`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A135314

/-- `7^n*6^n²` -/
def P8722177318563518593.Spec : Prop :=
  ∀ n, (P8722177318563518593.a n : ℤ) = A135314 n

theorem P8722177318563518593.correct : P8722177318563518593.Spec := by
  intro n
  simp only [A135314]

end A135314

/-! ## A135314.P2972792533532524537

`lcm(6^n², 7^n)`
-/

namespace A135314.P2972792533532524537
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (6 ^ n ^ 2) (7 ^ n)

end

end A135314.P2972792533532524537

namespace A135314

/-- `lcm(6^n², 7^n)` -/
def P2972792533532524537.Spec : Prop :=
  ∀ n, (P2972792533532524537.a n : ℤ) = A135314 n

end A135314

/-! ## A135314.P1555754877398191308

`∏[36*a(n-1)]` with `a(0)=1, a(1)=42`
-/

namespace A135314.P1555754877398191308
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 42] fun n f1 =>
  36 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A135314.P1555754877398191308

namespace A135314

/-- `∏[36*a(n-1)]` -/
def P1555754877398191308.Spec : Prop :=
  ∀ n, (P1555754877398191308.a n : ℤ) = A135314 n

end A135314

/-! ## A135314.P7865512178779695223

`∏[A003949(2*n)]`
-/

namespace A135314.P7865512178779695223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003949 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A135314.P7865512178779695223

namespace A135314

/-- `∏[A003949(2*n)]` -/
def P7865512178779695223.Spec : Prop :=
  ∀ n, P7865512178779695223.a n = A135314 n

end A135314

/-!
# A135315: 

The programs for A135315, there is no canonical definition to state claims against.
-/

/-! ## A135315.P12775257147751744811

`Δ[(-7)^n]^n`
-/

namespace A135315.P12775257147751744811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-7) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ n

end

end A135315.P12775257147751744811

/-! ## A135315.P11842565856742579996

`lcm(8^n, (7^n)^n)`
-/

namespace A135315.P11842565856742579996
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (8 ^ n) ((7 ^ n) ^ n)

end

end A135315.P11842565856742579996

/-! ## A135315.P15532208761945662469

`∏[A003950(2*n)]`
-/

namespace A135315.P15532208761945662469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003950 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A135315.P15532208761945662469

/-!
# A135316: Primes in A023108(n); or Lychrel primes.

The programs for A135316, there is no canonical definition to state claims against.
-/

/-! ## A135316.P4775775088915639374

`p?[A023108(n+1)]`
-/

namespace A135316.P4775775088915639374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023108 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A135316.P4775775088915639374

/-! ## A135316.P18257296924060527365

`p?[record[A023108(A052938(n))]]`
-/

namespace A135316.P18257296924060527365
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023108 (A052938 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A135316.P18257296924060527365

/-! ## A135316.P10490254633991968886

`p?[record[A023108(A242112(n))]]`
-/

namespace A135316.P10490254633991968886
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023108 (A242112 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A135316.P10490254633991968886

/-! ## A135316.P3852287173814792214

`p?[record[A023108(A291766(n))]]`
-/

namespace A135316.P3852287173814792214
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023108 (A291766 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A135316.P3852287173814792214

/-! ## A135316.P14140334304299219150

`filter[A023108(n+1), A010051(#)]`
-/

namespace A135316.P14140334304299219150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023108 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A135316.P14140334304299219150

/-! ## A135316.P15108887280098495976

`filter[A023108(n+1), A323152(#)]`
-/

namespace A135316.P15108887280098495976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023108 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323152 (f1 j).toNat = 1) n)

end

end A135316.P15108887280098495976

/-! ## A135316.P14128245429258061410

`filter[A023108(n+1), A323153(#)]`
-/

namespace A135316.P14128245429258061410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023108 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A135316.P14128245429258061410

/-! ## A135316.P625618146783149849

`filter[A023108(n+1), A351957(#)]`
-/

namespace A135316.P625618146783149849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023108 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A351957 (f1 j).toNat = 1) n)

end

end A135316.P625618146783149849

/-! ## A135316.P13371536039370885179

`filter[A023108(n+1), A174275(#)]`
-/

namespace A135316.P13371536039370885179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023108 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A174275 (f1 j).toNat = 1) n)

end

end A135316.P13371536039370885179

/-!
# A135317: Let h(2*n, 1) = 2*n and h(2*n, m) = h(2*n, m-1) + 2 * d(2*n, m) for m > 1, where d(2*n, m) = (least multiple of m not less than h(2*n, m-1)) - h(2*n, m-1). Then d(2*n, m) is eventually 2-periodic as a function of m, and a(n) is defined as d(2*n, 2*m+1) for large m.

The programs for A135317, there is no canonical definition to state claims against.
-/

/-! ## A135317.P3086855470571395032

`A319573(A252448(2*n+1))`
-/

namespace A135317.P3086855470571395032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319573 (A252448 (2 * n + 1)).toNat

end

end A135317.P3086855470571395032

/-!
# A135318: The Kentucky-2 sequence: a(n) = a(n-2) + 2*a(n-4), with a[0..3] = [1, 1, 1, 2].

The programs for A135318, the canonical program `A135318.P10650517794508722738` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135318 has offset 0).

The definition of A135318 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-2)+2*a(n-4)` (program `A135318.P10650517794508722738`, by `A135318.P10650517794508722738.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A135318.P10650517794508722738

`a(n-2)+2*a(n-4)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=2`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A135318

/-- `a(n-2)+2*a(n-4)` -/
def P10650517794508722738.Spec : Prop :=
  ∀ n, (P10650517794508722738.a n : ℤ) = A135318 n

theorem P10650517794508722738.correct : P10650517794508722738.Spec := by
  intro n
  simp only [A135318]

end A135318

/-! ## A135318.P7742696694122002935

`A112387(n+(-1)^n)`
-/

namespace A135318.P7742696694122002935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112387 ((n : ℤ) + (-1) ^ n).toNat

end

end A135318.P7742696694122002935

namespace A135318

/-- `A112387(n+(-1)^n)` -/
def P7742696694122002935.Spec : Prop :=
  ∀ n, P7742696694122002935.a n = A135318 n

end A135318

/-! ## A135318.P16279076388328209030

`(2^floor(n/2)*(5-(-1)^n)+(-1)^floor(n/2)*(1+(-1)^n))/6`
-/

namespace A135318.P16279076388328209030
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ) * (5 - (-1) ^ n : ℚ) + (-1 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ) * (1 + (-1) ^ n : ℚ)) / 6

end

end A135318.P16279076388328209030

namespace A135318

/-- `(2^floor(n/2)*(5-(-1)^n)+(-1)^floor(n/2)*(1+(-1)^n))/6` -/
def P16279076388328209030.Spec : Prop :=
  ∀ n, P16279076388328209030.a n = (A135318 n : ℚ)

end A135318

/-! ## A135318.P14859928633483296605

`ogf((1+x+x^3)/(1-x^2-2x^4))`
-/

namespace A135318.P14859928633483296605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 0, 1] [1, 0, -1, 0, -2] n

end

end A135318.P14859928633483296605

namespace A135318

/-- `ogf((1+x+x^3)/(1-x^2-2x^4))` -/
def P14859928633483296605.Spec : Prop :=
  ∀ n, P14859928633483296605.a n = A135318 n

end A135318

/-! ## A135318.P7344081659292607118

`a(n-4)+a(n-2)+a(n-4)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=2`
-/

namespace A135318.P7344081659292607118
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1, 2] fun n a =>
  a (n - 4) + (a (n - 2) + a (n - 4))

end

end A135318.P7344081659292607118

namespace A135318

/-- `a(n-4)+a(n-2)+a(n-4)` -/
def P7344081659292607118.Spec : Prop :=
  ∀ n, (P7344081659292607118.a n : ℤ) = A135318 n

end A135318

/-! ## A135318.P10368995041463702055

`a(n-1)+a(n-1)-A133684(n)` with `a(0)=1`
-/

namespace A135318.P10368995041463702055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (a (n - 1) - A133684 n)

end

end A135318.P10368995041463702055

namespace A135318

/-- `a(n-1)+a(n-1)-A133684(n)` -/
def P10368995041463702055.Spec : Prop :=
  ∀ n, P10368995041463702055.a n = A135318 n

end A135318

/-! ## A135318.P17667986803834958778

`∑[A001045(floor(n²/(2*n+1)))]+1`
-/

namespace A135318.P17667986803834958778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 ⌊(n ^ 2 : ℚ) / (2 * n + 1 : ℚ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A135318.P17667986803834958778

namespace A135318

/-- `∑[A001045(floor(n²/(2*n+1)))]+1` -/
def P17667986803834958778.Spec : Prop :=
  ∀ n, P17667986803834958778.a n = A135318 n

end A135318

/-! ## A135318.P18051650536003245423

`A375476(A007494(n))`
-/

namespace A135318.P18051650536003245423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375476 (A007494 n).toNat

end

end A135318.P18051650536003245423

namespace A135318

/-- `A375476(A007494(n))` -/
def P18051650536003245423.Spec : Prop :=
  ∀ n, P18051650536003245423.a n = A135318 n

end A135318

/-! ## A135318.P12924263866608954339

`A375476(A267528(n+1))`
-/

namespace A135318.P12924263866608954339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375476 (A267528 (n + 1)).toNat

end

end A135318.P12924263866608954339

namespace A135318

/-- `A375476(A267528(n+1))` -/
def P12924263866608954339.Spec : Prop :=
  ∀ n, P12924263866608954339.a n = A135318 n

end A135318

/-! ## A135318.P2948098372585295262

`A375476(A294732(n+2))`
-/

namespace A135318.P2948098372585295262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375476 (A294732 (n + 2)).toNat

end

end A135318.P2948098372585295262

namespace A135318

/-- `A375476(A294732(n+2))` -/
def P2948098372585295262.Spec : Prop :=
  ∀ n, P2948098372585295262.a n = A135318 n

end A135318

/-! ## A135318.P11968750356608503636

`A230096(n)+A133684(n)`
-/

namespace A135318.P11968750356608503636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230096 n + A133684 n

end

end A135318.P11968750356608503636

namespace A135318

/-- `A230096(n)+A133684(n)` -/
def P11968750356608503636.Spec : Prop :=
  ∀ n, P11968750356608503636.a n = A135318 n

end A135318

/-! ## A135318.P6352380498822618735

`∑[A328284(A008619(n+3))]`
-/

namespace A135318.P6352380498822618735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328284 (A008619 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135318.P6352380498822618735

namespace A135318

/-- `∑[A328284(A008619(n+3))]` -/
def P6352380498822618735.Spec : Prop :=
  ∀ n, P6352380498822618735.a n = A135318 n

end A135318

/-! ## A135318.P8337276632419658222

`A133684(A109613(n+1))+A133684(n)`
-/

namespace A135318.P8337276632419658222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133684 (A109613 (n + 1)).toNat + A133684 n

end

end A135318.P8337276632419658222

namespace A135318

/-- `A133684(A109613(n+1))+A133684(n)` -/
def P8337276632419658222.Spec : Prop :=
  ∀ n, P8337276632419658222.a n = A135318 n

end A135318

/-! ## A135318.P11382442180723765553

`A133684(A063196(n+2))+A133684(n)`
-/

namespace A135318.P11382442180723765553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133684 (A063196 (n + 2)).toNat + A133684 n

end

end A135318.P11382442180723765553

namespace A135318

/-- `A133684(A063196(n+2))+A133684(n)` -/
def P11382442180723765553.Spec : Prop :=
  ∀ n, P11382442180723765553.a n = A135318 n

end A135318

/-! ## A135318.P11087904849848659886

`A056594(n+1)+A133684(n+1)+A133684(n)`
-/

namespace A135318.P11087904849848659886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (n + 1) + (A133684 (n + 1) + A133684 n)

end

end A135318.P11087904849848659886

namespace A135318

/-- `A056594(n+1)+A133684(n+1)+A133684(n)` -/
def P11087904849848659886.Spec : Prop :=
  ∀ n, P11087904849848659886.a n = A135318 n

end A135318

/-! ## A135318.P3860651525184722500

`A029744(n)-a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A135318.P3860651525184722500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A029744 n - a (n - 2)

end

end A135318.P3860651525184722500

namespace A135318

/-- `A029744(n)-a(n-2)` -/
def P3860651525184722500.Spec : Prop :=
  ∀ n, P3860651525184722500.a n = A135318 n

end A135318

/-! ## A135318.P10277894893685402768

`gcd(A112387(n+1), A131575(n))`
-/

namespace A135318.P10277894893685402768
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A112387 (n + 1)) (A131575 n)

end

end A135318.P10277894893685402768

namespace A135318

/-- `gcd(A112387(n+1), A131575(n))` -/
def P10277894893685402768.Spec : Prop :=
  ∀ n, (P10277894893685402768.a n : ℤ) = A135318 n

end A135318

/-! ## A135318.P13150463457472670882

`A112387(n+1)+A016116(n)-A016116(n+1)`
-/

namespace A135318.P13150463457472670882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112387 (n + 1) + (A016116 n - A016116 (n + 1))

end

end A135318.P13150463457472670882

namespace A135318

/-- `A112387(n+1)+A016116(n)-A016116(n+1)` -/
def P13150463457472670882.Spec : Prop :=
  ∀ n, P13150463457472670882.a n = A135318 n

end A135318

/-! ## A135318.P315416200926443174

`A356050(n)-A230096(n+1)`
-/

namespace A135318.P315416200926443174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356050 n - A230096 (n + 1)

end

end A135318.P315416200926443174

namespace A135318

/-- `A356050(n)-A230096(n+1)` -/
def P315416200926443174.Spec : Prop :=
  ∀ n, P315416200926443174.a n = A135318 n

end A135318

/-! ## A135318.P11733832154420026577

`floor(∑[2*a(n-2)]/3)` with `a(0)=3, a(1)=1, a(2)=1`
-/

namespace A135318.P11733832154420026577
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 1, 1] fun n f1 =>
  2 * f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 3⌋

end

end A135318.P11733832154420026577

namespace A135318

/-- `floor(∑[2*a(n-2)]/3)` -/
def P11733832154420026577.Spec : Prop :=
  ∀ n, P11733832154420026577.a n = A135318 n

end A135318

/-!
# A135319: a(n) is the first digit after the decimal point in the decimal expansion of log_10(n), i.e., of the Briggsian logarithm of n.

The programs for A135319, there is no canonical definition to state claims against.
-/

/-! ## A135319.P11948455632666939822

`floor(log(77)*log(n+1))%10`
-/

namespace A135319.P11948455632666939822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊Real.log (77 : ℝ) * Real.log (n + 1 : ℝ)⌋ 10

end

end A135319.P11948455632666939822

/-! ## A135319.P13822736681290614365

`∏{digits}[floor(10/log2(10)*log2(n+1)), #]`
-/

namespace A135319.P13822736681290614365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊10 / Real.logb 2 (10 : ℝ) * Real.logb 2 (n + 1 : ℝ)⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).prod

end

end A135319.P13822736681290614365

/-! ## A135319.P4951181195300634404

`dr(floor(10/log2(10)*log2(n+1))%10)`
-/

namespace A135319.P4951181195300634404
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (Int.tmod ⌊10 / Real.logb 2 (10 : ℝ) * Real.logb 2 (n + 1 : ℝ)⌋ 10)

end

end A135319.P4951181195300634404

/-! ## A135319.P190702317365114582

`abs(-floor(10/log2(10)*log2(n+1))%10)`
-/

namespace A135319.P190702317365114582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (-⌊10 / Real.logb 2 (10 : ℝ) * Real.logb 2 (n + 1 : ℝ)⌋) 10|

end

end A135319.P190702317365114582

/-! ## A135319.P17184390470539171656

`dr(∏{digits}[A004219(n+1), #])`
-/

namespace A135319.P17184390470539171656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004219 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot ((((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).prod : ℕ) : ℤ)

end

end A135319.P17184390470539171656

/-! ## A135319.P11656823697388634074

`A007954(floor(10/log2(10)*log2(n+1)))`
-/

namespace A135319.P11656823697388634074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 ⌊10 / Real.logb 2 (10 : ℝ) * Real.logb 2 (n + 1 : ℝ)⌋.toNat

end

end A135319.P11656823697388634074

/-! ## A135319.P6021713768248336764

`A349315(floor(10/log2(10)*log2(n+1)))-1`
-/

namespace A135319.P6021713768248336764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349315 ⌊10 / Real.logb 2 (10 : ℝ) * Real.logb 2 (n + 1 : ℝ)⌋.toNat - 1

end

end A135319.P6021713768248336764

/-! ## A135319.P1456227983120012114

`A373102(A239504(n+1))`
-/

namespace A135319.P1456227983120012114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373102 (A239504 (n + 1)).toNat

end

end A135319.P1456227983120012114

/-! ## A135319.P14208477883393438046

`A008960(A004219(n+1)^3)`
-/

namespace A135319.P14208477883393438046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008960 (A004219 (n + 1) ^ 3).toNat

end

end A135319.P14208477883393438046

/-! ## A135319.P9891016950288485046

`A010879(floor(A004222(n+1)/10))`
-/

namespace A135319.P9891016950288485046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 ⌊(A004222 (n + 1) : ℚ) / 10⌋.toNat

end

end A135319.P9891016950288485046

/-!
# A135320: 

The programs for A135320, there is no canonical definition to state claims against.
-/

/-! ## A135320.P11664513533185873139

`(9*8^n)^n`
-/

namespace A135320.P11664513533185873139
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (9 * 8 ^ n) ^ n

end

end A135320.P11664513533185873139

/-! ## A135320.P5646256829931005217

`lcm(9^n, (8^n)^n)`
-/

namespace A135320.P5646256829931005217
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (9 ^ n) ((8 ^ n) ^ n)

end

end A135320.P5646256829931005217

/-! ## A135320.P16256892683813479707

`∏[A003951(2*n)]`
-/

namespace A135320.P16256892683813479707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003951 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A135320.P16256892683813479707

/-!
# A135321: 

The programs for A135321, there is no canonical definition to state claims against.
-/

/-! ## A135321.P2149239403382138031

`(10*9^n)^n`
-/

namespace A135321.P2149239403382138031
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (10 * 9 ^ n) ^ n

end

end A135321.P2149239403382138031

/-! ## A135321.P4859293463794104940

`lcm(9^n², 10^n)`
-/

namespace A135321.P4859293463794104940
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (9 ^ n ^ 2) (10 ^ n)

end

end A135321.P4859293463794104940

/-! ## A135321.P737958147390705161

`∏[A003952(2*n)]`
-/

namespace A135321.P737958147390705161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003952 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A135321.P737958147390705161

/-!
# A135322: a(n) = gcd(n!, binomial(2n,n)).

The programs for A135322, the canonical program `A135322.P4441070387960604847` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135322 has offset 0).

The definition of A135322 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `gcd(n!, C(2*n, n))` (program `A135322.P4441070387960604847`, by `A135322.P4441070387960604847.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A135322.P4441070387960604847

`gcd(n!, C(2*n, n))`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A135322

/-- `gcd(n!, C(2*n, n))` -/
def P4441070387960604847.Spec : Prop :=
  ∀ n, (P4441070387960604847.a n : ℤ) = A135322 n

theorem P4441070387960604847.correct : P4441070387960604847.Spec := by
  intro n
  simp only [A135322]

end A135322

/-! ## A135322.P17508792323229128620

`gcd(A000984(n), A366368(n))`
-/

namespace A135322.P17508792323229128620
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000984 n) (A366368 n)

end

end A135322.P17508792323229128620

namespace A135322

/-- `gcd(A000984(n), A366368(n))` -/
def P17508792323229128620.Spec : Prop :=
  ∀ n, (P17508792323229128620.a n : ℤ) = A135322 n

end A135322

/-! ## A135322.P16630121354458398907

`gcd(A014200(n)!, A210736(A005408(n)))`
-/

namespace A135322.P16630121354458398907
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.factorial (A014200 n).toNat : ℤ) (A210736 (A005408 n).toNat)

end

end A135322.P16630121354458398907

namespace A135322

/-- `gcd(A014200(n)!, A210736(A005408(n)))` -/
def P16630121354458398907.Spec : Prop :=
  ∀ n, (P16630121354458398907.a n : ℤ) = A135322 n

end A135322

/-! ## A135322.P16626611838807432905

`gcd((1-and(2, n))*n!, A007318(∑[4*n]))`
-/

namespace A135322.P16626611838807432905
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((1 - (Nat.land 2 n : ℤ)) * (Nat.factorial n : ℤ)) (A007318 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A135322.P16626611838807432905

namespace A135322

/-- `gcd((1-and(2, n))*n!, A007318(∑[4*n]))` -/
def P16626611838807432905.Spec : Prop :=
  ∀ n, (P16626611838807432905.a n : ℤ) = A135322 n

end A135322

/-! ## A135322.P12381261786644536863

`gcd(A000142(n), A263931(n))`
-/

namespace A135322.P12381261786644536863
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000142 n) (A263931 n)

end

end A135322.P12381261786644536863

namespace A135322

/-- `gcd(A000142(n), A263931(n))` -/
def P12381261786644536863.Spec : Prop :=
  ∀ n, (P12381261786644536863.a n : ℤ) = A135322 n

end A135322

/-! ## A135322.P5416975546820041059

`gcd(A007318(A046092(n)), A133942(n))`
-/

namespace A135322.P5416975546820041059
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007318 (A046092 n).toNat) (A133942 n)

end

end A135322.P5416975546820041059

namespace A135322

/-- `gcd(A007318(A046092(n)), A133942(n))` -/
def P5416975546820041059.Spec : Prop :=
  ∀ n, (P5416975546820041059.a n : ℤ) = A135322 n

end A135322

/-! ## A135322.P4188432753220547941

`gcd(1-A038507(n), A001405(A005843(n)))`
-/

namespace A135322.P4188432753220547941
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (1 - A038507 n) (A001405 (A005843 n).toNat)

end

end A135322.P4188432753220547941

namespace A135322

/-- `gcd(1-A038507(n), A001405(A005843(n)))` -/
def P4188432753220547941.Spec : Prop :=
  ∀ n, (P4188432753220547941.a n : ℤ) = A135322 n

end A135322

/-! ## A135322.P13939892651690066109

`gcd((n+1)*A000108(n), n*n!)`
-/

namespace A135322.P13939892651690066109
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n + 1 : ℤ) * A000108 n) (n * Nat.factorial n : ℤ)

end

end A135322.P13939892651690066109

namespace A135322

/-- `gcd((n+1)*A000108(n), n*n!)` -/
def P13939892651690066109.Spec : Prop :=
  ∀ n, (P13939892651690066109.a n : ℤ) = A135322 n

end A135322

/-! ## A135322.P5017318378740310942

`gcd(lcm(2, A000984(n)), A002868(n))`
-/

namespace A135322.P5017318378740310942
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Int.lcm 2 (A000984 n) : ℤ) (A002868 n)

end

end A135322.P5017318378740310942

namespace A135322

/-- `gcd(lcm(2, A000984(n)), A002868(n))` -/
def P5017318378740310942.Spec : Prop :=
  ∀ n, (P5017318378740310942.a n : ℤ) = A135322 n

end A135322

/-!
# A135323: a(1)=1, a(n) = Sum_{p=prime, p|n} a(n/p)*p.

The programs for A135323, the canonical program `A135323.P6195842534897767785` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135323 has offset 1).

The definition of A135323 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008480, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A135323.P6195842534897767785

`(n+1)*A008480(n+1)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A135323

/-- `(n+1)*A008480(n+1)` -/
def P6195842534897767785.Spec : Prop :=
  ∀ n, P6195842534897767785.a n = A135323 (n + 1)

theorem P6195842534897767785.correct : P6195842534897767785.Spec := by
  intro n
  simp only [A135323, Nat.add_sub_cancel]

end A135323

/-! ## A135323.P7496977916630295003

`(n+1)*∑{e}[n+1, #]!/∏{e}[n+1, #!]`
-/

namespace A135323.P7496977916630295003
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((Nat.factorial (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), Nat.factorial (Nat.factorization (f2 n) p) : ℕ) : ℚ))

end

end A135323.P7496977916630295003

namespace A135323

/-- `(n+1)*∑{e}[n+1, #]!/∏{e}[n+1, #!]` -/
def P7496977916630295003.Spec : Prop :=
  ∀ n, P7496977916630295003.a n = (A135323 (n + 1) : ℚ)

end A135323

/-! ## A135323.P9293298781058471653

`abs((n+1)*A355939(n+1))`
-/

namespace A135323.P9293298781058471653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n + 1 : ℤ) * A355939 (n + 1)|

end

end A135323.P9293298781058471653

namespace A135323

/-- `abs((n+1)*A355939(n+1))` -/
def P9293298781058471653.Spec : Prop :=
  ∀ n, P9293298781058471653.a n = A135323 (n + 1)

end A135323

/-! ## A135323.P10095421847404577819

`(n+1)*(A335447(n+1)+1)`
-/

namespace A135323.P10095421847404577819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A335447 (n + 1) + 1)

end

end A135323.P10095421847404577819

namespace A135323

/-- `(n+1)*(A335447(n+1)+1)` -/
def P10095421847404577819.Spec : Prop :=
  ∀ n, P10095421847404577819.a n = A135323 (n + 1)

theorem P10095421847404577819.correct : P10095421847404577819.Spec := by
  intro n
  simp only [A135323, Nat.add_sub_cancel, A135323.P10095421847404577819.a, A135323.P6195842534897767785.a, A008480, A008480.P11368251790691963799.a, A335447, A335447.P7231323323693740438.a, A355939, A355939.P3567040578845444235.f1, A355939.P3567040578845444235.f2, A355939.P3567040578845444235.f3, A355939.P3567040578845444235.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A135323

/-! ## A135323.P5037854769401726057

`(n+1)*A001222(n+1)!/∏{e}[n+1, #!]`
-/

namespace A135323.P5037854769401726057
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((Nat.factorial (A001222 (n + 1)).toNat : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), Nat.factorial (Nat.factorization (f1 n) p) : ℕ) : ℚ))

end

end A135323.P5037854769401726057

namespace A135323

/-- `(n+1)*A001222(n+1)!/∏{e}[n+1, #!]` -/
def P5037854769401726057.Spec : Prop :=
  ∀ n, P5037854769401726057.a n = (A135323 (n + 1) : ℚ)

end A135323

/-! ## A135323.P5662860927063148113

`(n+1)*A050382(A101296(n+1))`
-/

namespace A135323.P5662860927063148113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A050382 (A101296 (n + 1)).toNat

end

end A135323.P5662860927063148113

namespace A135323

/-- `(n+1)*A050382(A101296(n+1))` -/
def P5662860927063148113.Spec : Prop :=
  ∀ n, P5662860927063148113.a n = A135323 (n + 1)

end A135323

/-! ## A135323.P12123563018584813955

`(n+1)*A028310(A168324(n+1))`
-/

namespace A135323.P12123563018584813955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A028310 (A168324 (n + 1)).toNat

end

end A135323.P12123563018584813955

namespace A135323

/-- `(n+1)*A028310(A168324(n+1))` -/
def P12123563018584813955.Spec : Prop :=
  ∀ n, P12123563018584813955.a n = A135323 (n + 1)

end A135323

/-! ## A135323.P14978495176304485099

`(n+1)*A318762(A181819(n+1))`
-/

namespace A135323.P14978495176304485099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A318762 (A181819 (n + 1)).toNat

end

end A135323.P14978495176304485099

namespace A135323

/-- `(n+1)*A318762(A181819(n+1))` -/
def P14978495176304485099.Spec : Prop :=
  ∀ n, P14978495176304485099.a n = A135323 (n + 1)

end A135323

/-! ## A135323.P1337329846167177993

`(n+1)*A321648(A329607(n+1))`
-/

namespace A135323.P1337329846167177993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A321648 (A329607 (n + 1)).toNat

end

end A135323.P1337329846167177993

namespace A135323

/-- `(n+1)*A321648(A329607(n+1))` -/
def P1337329846167177993.Spec : Prop :=
  ∀ n, P1337329846167177993.a n = A135323 (n + 1)

end A135323

/-! ## A135323.P4332843051647339823

`(n+1)*A168324(n+1)^A168324(A053644(n+1))`
-/

namespace A135323.P4332843051647339823
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * (A168324 (n + 1) : ℚ) ^ (A168324 (A053644 (n + 1)).toNat : ℤ)

end

end A135323.P4332843051647339823

namespace A135323

/-- `(n+1)*A168324(n+1)^A168324(A053644(n+1))` -/
def P4332843051647339823.Spec : Prop :=
  ∀ n, P4332843051647339823.a n = (A135323 (n + 1) : ℚ)

end A135323

/-! ## A135323.P12596364516979803327

`A008480(A052938(2*n))*A052938(2*n)`
-/

namespace A135323.P12596364516979803327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008480 (A052938 (2 * n)).toNat * A052938 (2 * n)

end

end A135323.P12596364516979803327

namespace A135323

/-- `A008480(A052938(2*n))*A052938(2*n)` -/
def P12596364516979803327.Spec : Prop :=
  ∀ n, P12596364516979803327.a n = A135323 (n + 1)

end A135323

/-! ## A135323.P12810178513444513404

`A008480(A028242(2*n))*A028242(2*n)`
-/

namespace A135323.P12810178513444513404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008480 (A028242 (2 * n)).toNat * A028242 (2 * n)

end

end A135323.P12810178513444513404

namespace A135323

/-- `A008480(A028242(2*n))*A028242(2*n)` -/
def P12810178513444513404.Spec : Prop :=
  ∀ n, P12810178513444513404.a n = A135323 (n + 1)

end A135323

/-! ## A135323.P9162217209945329267

`A008480(A029579(2*n))*A029579(2*n)`
-/

namespace A135323.P9162217209945329267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008480 (A029579 (2 * n)).toNat * A029579 (2 * n)

end

end A135323.P9162217209945329267

namespace A135323

/-- `A008480(A029579(2*n))*A029579(2*n)` -/
def P9162217209945329267.Spec : Prop :=
  ∀ n, P9162217209945329267.a n = A135323 (n + 1)

end A135323

/-! ## A135323.P3343967469566000772

`(n+1)*A251683(∑[A001222(n+1)]+1)`
-/

namespace A135323.P3343967469566000772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A251683 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A135323.P3343967469566000772

namespace A135323

/-- `(n+1)*A251683(∑[A001222(n+1)]+1)` -/
def P3343967469566000772.Spec : Prop :=
  ∀ n, P3343967469566000772.a n = A135323 (n + 1)

end A135323

/-! ## A135323.P3058066967947890979

`(n+1)*A298941(A087560(n+1))`
-/

namespace A135323.P3058066967947890979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A298941 (A087560 (n + 1)).toNat

end

end A135323.P3058066967947890979

namespace A135323

/-- `(n+1)*A298941(A087560(n+1))` -/
def P3058066967947890979.Spec : Prop :=
  ∀ n, P3058066967947890979.a n = A135323 (n + 1)

end A135323

/-! ## A135323.P12612262833118575864

`(n+1)*A325392(A003961(n+1))`
-/

namespace A135323.P12612262833118575864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A325392 (A003961 (n + 1)).toNat

end

end A135323.P12612262833118575864

namespace A135323

/-- `(n+1)*A325392(A003961(n+1))` -/
def P12612262833118575864.Spec : Prop :=
  ∀ n, P12612262833118575864.a n = A135323 (n + 1)

end A135323

/-! ## A135323.P931548016786864225

`(n+1)*A325392(A332818(n+1))`
-/

namespace A135323.P931548016786864225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A325392 (A332818 (n + 1)).toNat

end

end A135323.P931548016786864225

namespace A135323

/-- `(n+1)*A325392(A332818(n+1))` -/
def P931548016786864225.Spec : Prop :=
  ∀ n, P931548016786864225.a n = A135323 (n + 1)

end A135323

/-! ## A135323.P8298296589986125744

`(n+1)*A325392(A064988(n+1))`
-/

namespace A135323.P8298296589986125744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A325392 (A064988 (n + 1)).toNat

end

end A135323.P8298296589986125744

namespace A135323

/-- `(n+1)*A325392(A064988(n+1))` -/
def P8298296589986125744.Spec : Prop :=
  ∀ n, P8298296589986125744.a n = A135323 (n + 1)

end A135323

/-! ## A135323.P16896754011681373671

`(n+1)*A168324(A045965(n+1))`
-/

namespace A135323.P16896754011681373671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A168324 (A045965 (n + 1)).toNat

end

end A135323.P16896754011681373671

namespace A135323

/-- `(n+1)*A168324(A045965(n+1))` -/
def P16896754011681373671.Spec : Prop :=
  ∀ n, P16896754011681373671.a n = A135323 (n + 1)

end A135323

/-! ## A135323.P9207809594027858237

`(n+1)*A206487(A046523(n+1))`
-/

namespace A135323.P9207809594027858237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A206487 (A046523 (n + 1)).toNat

end

end A135323.P9207809594027858237

namespace A135323

/-- `(n+1)*A206487(A046523(n+1))` -/
def P9207809594027858237.Spec : Prop :=
  ∀ n, P9207809594027858237.a n = A135323 (n + 1)

end A135323

/-!
# A135327: Number of genus-surfaces with n vertices.

The programs for A135327, there is no canonical definition to state claims against.
-/

/-! ## A135327.P11366745636495735900

`A057716((a(n-1)-floor(-a(n-2)))²)` with `a(0)=1, a(1)=0, a(2)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A135327.P11366745636495735900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1] fun n a =>
  A057716 ((a (n - 1) - (-a (n - 2))) ^ 2).toNat

end

end A135327.P11366745636495735900

/-! ## A135327.P9986649303119668939

`A057716((a(n-1)-ceil(-a(n-2)))²)` with `a(0)=1, a(1)=0, a(2)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A135327.P9986649303119668939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1] fun n a =>
  A057716 ((a (n - 1) - (-a (n - 2))) ^ 2).toNat

end

end A135327.P9986649303119668939

/-!
# A135329: Triangle read by rows: T(n,k) is the number of Dyck paths of semilength n having k DDUU's starting at level 2.

The programs for A135329, there is no canonical definition to state claims against.
-/

/-! ## A135329.P6995588578965832664

`A135331(n^A122055(n))+char[8]`
-/

namespace A135329.P6995588578965832664
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135331 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A122055 n : ℤ))).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A135329.P6995588578965832664

/-! ## A135329.P16608789173728461443

`char[8]+A135331(n)^A136579(n)!`
-/

namespace A135329.P16608789173728461443
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + A135331 n ^ Nat.factorial (A136579 n).toNat

end

end A135329.P16608789173728461443

/-! ## A135329.P16261022729028113756

`char[8]+A135331(n)%p?[A039900(n)]`
-/

namespace A135329.P16261022729028113756
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039900 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + Int.tmod (A135331 n) (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n))

end

end A135329.P16261022729028113756

/-! ## A135329.P14296342056749281331

`A178798(A036052(n))+A114463(n)`
-/

namespace A135329.P14296342056749281331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178798 (A036052 n).toNat + A114463 n

end

end A135329.P14296342056749281331

/-! ## A135329.P6688617930982580287

`A122840(A106640(n))+A114463(n)`
-/

namespace A135329.P6688617930982580287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122840 (A106640 n).toNat + A114463 n

end

end A135329.P6688617930982580287

/-!
# A135331: Triangle read by rows: T(n,k) is the number of Dyck paths of semilength n having k DUUU's starting at level 1.

The programs for A135331, there is no canonical definition to state claims against.
-/

/-! ## A135331.P2027729116972692676

`A135309(n)+A079978(A000800(n))`
-/

namespace A135331.P2027729116972692676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135309 n + A079978 (A000800 n).toNat

end

end A135331.P2027729116972692676

/-! ## A135331.P9194064718492513663

`A178798(A000676(n))+A135309(n)`
-/

namespace A135331.P9194064718492513663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178798 (A000676 n).toNat + A135309 n

end

end A135331.P9194064718492513663

/-! ## A135331.P12286767292694624045

`A188300(A005183(n))+A135309(n)`
-/

namespace A135331.P12286767292694624045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188300 (A005183 n).toNat + A135309 n

end

end A135331.P12286767292694624045

/-! ## A135331.P8479204606456375355

`A178798(A027416(n))+A135309(n)`
-/

namespace A135331.P8479204606456375355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178798 (A027416 n).toNat + A135309 n

end

end A135331.P8479204606456375355

/-! ## A135331.P17616534525504091559

`A135309(n)+A083892(A176954(n))`
-/

namespace A135331.P17616534525504091559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135309 n + A083892 (A176954 n).toNat

end

end A135331.P17616534525504091559

/-!
# A135332: a(1)=1; for n>1, a(n) = a(n-1) + n^0 if n odd, a(n) = a(n-1) + n^3 if n is even.

The programs for A135332, the canonical program `A135332.P1977559669595929591` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135332 has offset 1).

The definition of A135332 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A135332.P8918392860159707485

`∑[(n+1)^(3*n%2)]`
-/

namespace A135332.P8918392860159707485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ (3 * (n % 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135332.P8918392860159707485

namespace A135332

/-- `∑[(n+1)^(3*n%2)]` -/
def P8918392860159707485.Spec : Prop :=
  ∀ n, (P8918392860159707485.a n : ℤ) = A135332 (n + 1)

end A135332

/-! ## A135332.P1977559669595929591

`∑[(lcm(2, n)-(n-1))^3]`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A135332

/-- `∑[(lcm(2, n)-(n-1))^3]` -/
def P1977559669595929591.Spec : Prop :=
  ∀ n, P1977559669595929591.a n = A135332 (n + 1)

theorem P1977559669595929591.correct : P1977559669595929591.Spec := by
  intro n
  simp only [A135332, Nat.add_sub_cancel]

end A135332

/-! ## A135332.P14296219535901352778

`∑[(n*and(1, n)+1)^3]`
-/

namespace A135332.P14296219535901352778
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n * Nat.land 1 n + 1) ^ 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135332.P14296219535901352778

namespace A135332

/-- `∑[(n*and(1, n)+1)^3]` -/
def P14296219535901352778.Spec : Prop :=
  ∀ n, (P14296219535901352778.a n : ℤ) = A135332 (n + 1)

end A135332

/-! ## A135332.P13144404394308599820

`∑[((n+1)^and(1, n))^3]`
-/

namespace A135332.P13144404394308599820
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ Nat.land 1 n) ^ 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135332.P13144404394308599820

namespace A135332

/-- `∑[((n+1)^and(1, n))^3]` -/
def P13144404394308599820.Spec : Prop :=
  ∀ n, (P13144404394308599820.a n : ℤ) = A135332 (n + 1)

end A135332

/-! ## A135332.P1888058676457136233

`∑[(n+1)^xor(2, gcd(2, n))]`
-/

namespace A135332.P1888058676457136233
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ Nat.xor 2 (Nat.gcd 2 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135332.P1888058676457136233

namespace A135332

/-- `∑[(n+1)^xor(2, gcd(2, n))]` -/
def P1888058676457136233.Spec : Prop :=
  ∀ n, (P1888058676457136233.a n : ℤ) = A135332 (n + 1)

end A135332

/-! ## A135332.P17004145612397098723

`∑[C(n+1, or(1, n))^3]`
-/

namespace A135332.P17004145612397098723
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) (Nat.lor 1 n) ^ 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135332.P17004145612397098723

namespace A135332

/-- `∑[C(n+1, or(1, n))^3]` -/
def P17004145612397098723.Spec : Prop :=
  ∀ n, (P17004145612397098723.a n : ℤ) = A135332 (n + 1)

end A135332

/-! ## A135332.P1401372250638581500

`∑[((n+1)^3)^((n+2)%2)]`
-/

namespace A135332.P1401372250638581500
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 3) ^ ((n + 2) % 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135332.P1401372250638581500

namespace A135332

/-- `∑[((n+1)^3)^((n+2)%2)]` -/
def P1401372250638581500.Spec : Prop :=
  ∀ n, (P1401372250638581500.a n : ℤ) = A135332 (n + 1)

end A135332

/-! ## A135332.P11629319059339851501

`∑[(n+1)^C(3, a(n-1))]` with `a(0)=1`
-/

namespace A135332.P11629319059339851501
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  (n + 1) ^ Nat.choose 3 (f1 (n - 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135332.P11629319059339851501

namespace A135332

/-- `∑[(n+1)^C(3, a(n-1))]` -/
def P11629319059339851501.Spec : Prop :=
  ∀ n, (P11629319059339851501.a n : ℤ) = A135332 (n + 1)

end A135332

/-! ## A135332.P16524025186417252100

`∑[(n+1)^(3*char[2*n+1])]`
-/

namespace A135332.P16524025186417252100
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ (3 * (if ∃ j, f2 j = n then 1 else 0))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135332.P16524025186417252100

namespace A135332

/-- `∑[(n+1)^(3*char[2*n+1])]` -/
def P16524025186417252100.Spec : Prop :=
  ∀ n, (P16524025186417252100.a n : ℤ) = A135332 (n + 1)

end A135332

/-! ## A135332.P10431868765624844740

`A140145(n+1)-A110660(n)`
-/

namespace A135332.P10431868765624844740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140145 (n + 1) - A110660 n

end

end A135332.P10431868765624844740

namespace A135332

/-- `A140145(n+1)-A110660(n)` -/
def P10431868765624844740.Spec : Prop :=
  ∀ n, P10431868765624844740.a n = A135332 (n + 1)

theorem P10431868765624844740.correct : P10431868765624844740.Spec := by
  intro n
  simp only [A135332, Nat.add_sub_cancel, A135332.P10431868765624844740.a, A135332.P1977559669595929591.f1, A135332.P1977559669595929591.a, A110660, A110660.P9226895399142348914.a, A140145, A140145.P3233202726742133382.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A135332

/-! ## A135332.P17035192993937058708

`A135099(n+1)+A135301(n+1)-A135095(n+1)`
-/

namespace A135332.P17035192993937058708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135099 (n + 1) + (A135301 (n + 1) - A135095 (n + 1))

end

end A135332.P17035192993937058708

namespace A135332

/-- `A135099(n+1)+A135301(n+1)-A135095(n+1)` -/
def P17035192993937058708.Spec : Prop :=
  ∀ n, P17035192993937058708.a n = A135332 (n + 1)

theorem P17035192993937058708.correct : P17035192993937058708.Spec := by
  intro n
  simp only [A135332, Nat.add_sub_cancel, A135332.P17035192993937058708.a, A135332.P1977559669595929591.f1, A135332.P1977559669595929591.a, A135095, A135095.P10057371440882505783.f1, A135095.P10057371440882505783.a, A135099, A135099.P2545427094916164131.a, A135301, A135301.P7812665825989209999.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A135332

/-! ## A135332.P557173285149352863

`A135276(n+1)+A140145(n+1)-A000217(n+1)`
-/

namespace A135332.P557173285149352863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135276 (n + 1) + (A140145 (n + 1) - A000217 (n + 1))

end

end A135332.P557173285149352863

namespace A135332

/-- `A135276(n+1)+A140145(n+1)-A000217(n+1)` -/
def P557173285149352863.Spec : Prop :=
  ∀ n, P557173285149352863.a n = A135332 (n + 1)

end A135332

/-! ## A135332.P1819706640045611605

`A135276(n+1)+A140149(n+1)-A136047(n+1)`
-/

namespace A135332.P1819706640045611605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135276 (n + 1) + (A140149 (n + 1) - A136047 (n + 1))

end

end A135332.P1819706640045611605

namespace A135332

/-- `A135276(n+1)+A140149(n+1)-A136047(n+1)` -/
def P1819706640045611605.Spec : Prop :=
  ∀ n, P1819706640045611605.a n = A135332 (n + 1)

end A135332

/-!
# A135333: Triangle read by rows: T(n,k) is the number of Dyck paths of semilength n having k DUDU's starting at level 1.

The programs for A135333, there is no canonical definition to state claims against.
-/

/-! ## A135333.P5085875481192935546

`A229829(A299755(C(n, ceil(n/2))))`
-/

namespace A135333.P5085875481192935546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229829 (A299755 (Nat.choose n ⌈(n : ℚ) / 2⌉.toNat)).toNat

end

end A135333.P5085875481192935546

/-! ## A135333.P13173230062417012576

`A246188(n)+A185284(A000124(n))`
-/

namespace A135333.P13173230062417012576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246188 n + A185284 (A000124 n).toNat

end

end A135333.P13173230062417012576

/-! ## A135333.P14173353423832924622

`A246188(n)+A102683(A097297(n))`
-/

namespace A135333.P14173353423832924622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246188 n + A102683 (A097297 n).toNat

end

end A135333.P14173353423832924622

/-! ## A135333.P7474999334331520451

`A246188(n)+A144193(A167934(n))`
-/

namespace A135333.P7474999334331520451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246188 n + A144193 (A167934 n).toNat

end

end A135333.P7474999334331520451

/-! ## A135333.P13740063879333483765

`A246188(n)+A025469(A323229(n))`
-/

namespace A135333.P13740063879333483765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246188 n + A025469 (A323229 n).toNat

end

end A135333.P13740063879333483765

/-!
# A135334: Number of Dyck paths of semilength n having no UDDU's starting at level 1.

The programs for A135334, there is no canonical definition to state claims against.
-/

/-! ## A135334.P15461021681234131808

`A135328(floor((n/2)²)+1)`
-/

namespace A135334.P15461021681234131808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135328 (⌊((n : ℚ) / 2) ^ 2⌋ + 1).toNat

end

end A135334.P15461021681234131808

/-! ## A135334.P4770719062572569762

`A035929(n+1)+a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A135334.P4770719062572569762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A035929 (n + 1) + a (n - 1)

end

end A135334.P4770719062572569762

/-! ## A135334.P2152404052732465591

`A000007(n)-A182486(n+2)`
-/

namespace A135334.P2152404052732465591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n - A182486 (n + 2)

end

end A135334.P2152404052732465591

/-! ## A135334.P10985750953280204062

`∑[A035929(n+1)]-A057427(n)`
-/

namespace A135334.P10985750953280204062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035929 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A057427 n

end

end A135334.P10985750953280204062

/-! ## A135334.P7546342083954660422

`∑[A035929(n+1)]-A048993(C(2, n²))`
-/

namespace A135334.P7546342083954660422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035929 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A048993 (Nat.choose 2 (n ^ 2))

end

end A135334.P7546342083954660422

/-! ## A135334.P6185490426863260531

`∑[A035929(n+1)]-A001221(A001316(n))`
-/

namespace A135334.P6185490426863260531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035929 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A001221 (A001316 n).toNat

end

end A135334.P6185490426863260531

/-!
# A135335: Number of Dyck paths of semilength n having no DDUU's starting at level 2.

The programs for A135335, there is no canonical definition to state claims against.
-/

/-! ## A135335.P15158262730912846168

`A135337(n)+A036646(A032555(n+1)+1)`
-/

namespace A135335.P15158262730912846168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135337 n + A036646 (A032555 (n + 1) + 1).toNat

end

end A135335.P15158262730912846168

/-! ## A135335.P214202861160695794

`A055679(A134927(n)+2)`
-/

namespace A135335.P214202861160695794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055679 (A134927 n + 2).toNat

end

end A135335.P214202861160695794

/-! ## A135335.P1853940947057468470

`A056172(A134927(n)+3)`
-/

namespace A135335.P1853940947057468470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056172 (A134927 n + 3).toNat

end

end A135335.P1853940947057468470

/-!
# A135336: Number of Dyck paths of semilength n with no UUDU's starting at level 0.

The programs for A135336, the canonical program `A135336.P8279202122990715746` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135336 has offset 0).

The definition of A135336 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A135336.P11204405112626335011

`∑[A065600(∑[n])]`
-/

namespace A135336.P11204405112626335011
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065600 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135336.P11204405112626335011

namespace A135336

/-- `∑[A065600(∑[n])]` -/
def P11204405112626335011.Spec : Prop :=
  ∀ n, P11204405112626335011.a n = A135336 n

end A135336

/-! ## A135336.P8279202122990715746

`∑[A000957(n+1)]`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A135336

/-- `∑[A000957(n+1)]` -/
def P8279202122990715746.Spec : Prop :=
  ∀ n, P8279202122990715746.a n = A135336 n

theorem P8279202122990715746.correct : P8279202122990715746.Spec := by
  intro n
  simp only [A135336]

end A135336

/-! ## A135336.P1252492702066911899

`∑[abs(A064310(n+1))]`
-/

namespace A135336.P1252492702066911899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A064310 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135336.P1252492702066911899

namespace A135336

/-- `∑[abs(A064310(n+1))]` -/
def P1252492702066911899.Spec : Prop :=
  ∀ n, P1252492702066911899.a n = A135336 n

end A135336

/-! ## A135336.P4364991091221301430

`∑[abs(A126983(n+1))]`
-/

namespace A135336.P4364991091221301430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A126983 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135336.P4364991091221301430

namespace A135336

/-- `∑[abs(A126983(n+1))]` -/
def P4364991091221301430.Spec : Prop :=
  ∀ n, P4364991091221301430.a n = A135336 n

end A135336

/-! ## A135336.P7067511096585910971

`A000958(n)+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A135336.P7067511096585910971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A000958 n + a (n - 2)

end

end A135336.P7067511096585910971

namespace A135336

/-- `A000958(n)+a(n-2)` -/
def P7067511096585910971.Spec : Prop :=
  ∀ n, P7067511096585910971.a n = A135336 n

end A135336

/-! ## A135336.P993386355667568904

`A193215(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A135336.P993386355667568904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A193215 (n + 1) - a (n - 1)

end

end A135336.P993386355667568904

namespace A135336

/-- `A193215(n+1)-a(n-1)` -/
def P993386355667568904.Spec : Prop :=
  ∀ n, P993386355667568904.a n = A135336 n

end A135336

/-! ## A135336.P13015254353708044151

`A104629(n-2)+a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A135336.P13015254353708044151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A104629 (n - 2) + a (n - 1)

end

end A135336.P13015254353708044151

namespace A135336

/-- `A104629(n-2)+a(n-1)` -/
def P13015254353708044151.Spec : Prop :=
  ∀ n, P13015254353708044151.a n = A135336 n

end A135336

/-! ## A135336.P14383200937236606271

`∑[(A000108(n)-a(n-1))/2]` with `a(0)=1`
-/

namespace A135336.P14383200937236606271
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  ((A000108 n : ℚ) - f1 (n - 1)) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135336.P14383200937236606271

namespace A135336

/-- `∑[(A000108(n)-a(n-1))/2]` -/
def P14383200937236606271.Spec : Prop :=
  ∀ n, P14383200937236606271.a n = (A135336 n : ℚ)

end A135336

/-! ## A135336.P17663399413963633831

`A000108(n)+1-A289589(n)`
-/

namespace A135336.P17663399413963633831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n + (1 - A289589 n)

end

end A135336.P17663399413963633831

namespace A135336

/-- `A000108(n)+1-A289589(n)` -/
def P17663399413963633831.Spec : Prop :=
  ∀ n, P17663399413963633831.a n = A135336 n

theorem P17663399413963633831.correct : P17663399413963633831.Spec := by
  intro n
  simp only [A135336, Nat.add_sub_cancel, A135336.P17663399413963633831.a, A135336.P8279202122990715746.f1, A135336.P8279202122990715746.a, A000108, A000108.P17551949696095299361.a, A000957, A000957.P17024256012114130201.a, A289589, A289589.P10535227749720856808.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A135336

/-! ## A135336.P10476141129893153586

`A024718(n)-A014301(n+1)`
-/

namespace A135336.P10476141129893153586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024718 n - A014301 (n + 1)

end

end A135336.P10476141129893153586

namespace A135336

/-- `A024718(n)-A014301(n+1)` -/
def P10476141129893153586.Spec : Prop :=
  ∀ n, P10476141129893153586.a n = A135336 n

end A135336

/-! ## A135336.P10956333116023153852

`∑[A026641(n)-A014301(n+1)]`
-/

namespace A135336.P10956333116023153852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026641 n - A014301 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135336.P10956333116023153852

namespace A135336

/-- `∑[A026641(n)-A014301(n+1)]` -/
def P10956333116023153852.Spec : Prop :=
  ∀ n, P10956333116023153852.a n = A135336 n

end A135336

/-! ## A135336.P5253606515915075241

`∑[A191526(2*n)-A014301(n+1)]`
-/

namespace A135336.P5253606515915075241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191526 (2 * n) - A014301 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135336.P5253606515915075241

namespace A135336

/-- `∑[A191526(2*n)-A014301(n+1)]` -/
def P5253606515915075241.Spec : Prop :=
  ∀ n, P5253606515915075241.a n = A135336 n

end A135336

/-! ## A135336.P11391114684331381129

`∑[A014300(n+1)-2*A014301(n+1)]`
-/

namespace A135336.P11391114684331381129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014300 (n + 1) - 2 * A014301 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135336.P11391114684331381129

namespace A135336

/-- `∑[A014300(n+1)-2*A014301(n+1)]` -/
def P11391114684331381129.Spec : Prop :=
  ∀ n, P11391114684331381129.a n = A135336 n

end A135336

/-! ## A135336.P12192887428634212118

`∑[A191526(2*n+1)-A072547(n+2)]`
-/

namespace A135336.P12192887428634212118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191526 (2 * n + 1) - A072547 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135336.P12192887428634212118

namespace A135336

/-- `∑[A191526(2*n+1)-A072547(n+2)]` -/
def P12192887428634212118.Spec : Prop :=
  ∀ n, P12192887428634212118.a n = A135336 n

end A135336

/-! ## A135336.P12325351911774301981

`A024718(n+1)-Δ[A307354(n)]`
-/

namespace A135336.P12325351911774301981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307354 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024718 (n + 1) - (f1 (n + 1) - f1 n)

end

end A135336.P12325351911774301981

namespace A135336

/-- `A024718(n+1)-Δ[A307354(n)]` -/
def P12325351911774301981.Spec : Prop :=
  ∀ n, P12325351911774301981.a n = A135336 n

end A135336

/-! ## A135336.P13038864331703561752

`A024718(n+1)-A026641(n+1)`
-/

namespace A135336.P13038864331703561752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024718 (n + 1) - A026641 (n + 1)

end

end A135336.P13038864331703561752

namespace A135336

/-- `A024718(n+1)-A026641(n+1)` -/
def P13038864331703561752.Spec : Prop :=
  ∀ n, P13038864331703561752.a n = A135336 n

end A135336

/-! ## A135336.P13575240178127199469

`A306409(n+1)+1-A120305(n+1)`
-/

namespace A135336.P13575240178127199469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306409 (n + 1) + (1 - A120305 (n + 1))

end

end A135336.P13575240178127199469

namespace A135336

/-- `A306409(n+1)+1-A120305(n+1)` -/
def P13575240178127199469.Spec : Prop :=
  ∀ n, P13575240178127199469.a n = A135336 n

end A135336

/-! ## A135336.P11798327938941839361

`∑[A191526(2*n+1)-Δ[A112556(n+1)]]`
-/

namespace A135336.P11798327938941839361
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112556 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191526 (2 * n + 1) - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135336.P11798327938941839361

namespace A135336

/-- `∑[A191526(2*n+1)-Δ[A112556(n+1)]]` -/
def P11798327938941839361.Spec : Prop :=
  ∀ n, P11798327938941839361.a n = A135336 n

end A135336

/-! ## A135336.P461929030624384313

`A006134(n)+A120305(n)-A306409(n+1)`
-/

namespace A135336.P461929030624384313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006134 n + (A120305 n - A306409 (n + 1))

end

end A135336.P461929030624384313

namespace A135336

/-- `A006134(n)+A120305(n)-A306409(n+1)` -/
def P461929030624384313.Spec : Prop :=
  ∀ n, P461929030624384313.a n = A135336 n

end A135336

/-! ## A135336.P9859946857620431865

`A307354(n)+A307354(n)-A306409(n+1)`
-/

namespace A135336.P9859946857620431865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307354 n + (A307354 n - A306409 (n + 1))

end

end A135336.P9859946857620431865

namespace A135336

/-- `A307354(n)+A307354(n)-A306409(n+1)` -/
def P9859946857620431865.Spec : Prop :=
  ∀ n, P9859946857620431865.a n = A135336 n

end A135336

/-!
# A135337: Number of Dyck paths of semilength n with no DUUU's starting at level 1.

The programs for A135337, there is no canonical definition to state claims against.
-/

/-! ## A135337.P17566036572142378199

`A000007(n)+Δ[A059019(n)]`
-/

namespace A135337.P17566036572142378199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059019 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (f1 (n + 1) - f1 n)

end

end A135337.P17566036572142378199

/-! ## A135337.P12815638829802515865

`Δ[A059019(n)+A057427(n)]`
-/

namespace A135337.P12815638829802515865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059019 n + A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A135337.P12815638829802515865

/-! ## A135337.P17482708780873804845

`Δ[A059019(n)+A005171(2*(n+1))]`
-/

namespace A135337.P17482708780873804845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059019 n + A005171 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A135337.P17482708780873804845

/-! ## A135337.P7019399707014557835

`Δ[A178334(A178334(n)²)+A059019(n)]`
-/

namespace A135337.P7019399707014557835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 (A178334 n ^ 2).toNat + A059019 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A135337.P7019399707014557835

/-! ## A135337.P2864069960985807517

`Δ[A059019(n)%A000344(n+2)]`
-/

namespace A135337.P2864069960985807517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A059019 n) (A000344 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A135337.P2864069960985807517

/-! ## A135337.P2578922330432541484

`Δ[A059019(n)%A000302(n)]`
-/

namespace A135337.P2578922330432541484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A059019 n) (A000302 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A135337.P2578922330432541484

/-! ## A135337.P11256320822462827922

`Δ[A151934(A151934(n))+A059019(n)]`
-/

namespace A135337.P11256320822462827922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151934 (A151934 n).toNat + A059019 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A135337.P11256320822462827922

/-! ## A135337.P16959099037417813498

`Δ[A059019(n)*A151934(A151934(n)²)]`
-/

namespace A135337.P16959099037417813498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059019 n * A151934 (A151934 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A135337.P16959099037417813498

/-!
# A135339: Number of Dyck paths of semilength n having no DUDU's starting at level 1.

The programs for A135339, there is no canonical definition to state claims against.
-/

/-! ## A135339.P13996466758931246005

`A120588(n)+A065600(A179865(n+1))`
-/

namespace A135339.P13996466758931246005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120588 n + A065600 (A179865 (n + 1)).toNat

end

end A135339.P13996466758931246005

/-! ## A135339.P17946661145652809740

`A135333(A022856(n+2))`
-/

namespace A135339.P17946661145652809740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135333 (A022856 (n + 2)).toNat

end

end A135339.P17946661145652809740

/-! ## A135339.P12507595133699537810

`A135333(A133263(n)-A004280(n+1))`
-/

namespace A135339.P12507595133699537810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135333 (A133263 n - A004280 (n + 1)).toNat

end

end A135339.P12507595133699537810

/-! ## A135339.P7918716273406787505

`A167422(n)-A167772(A000124(n))`
-/

namespace A135339.P7918716273406787505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167422 n - A167772 (A000124 n).toNat

end

end A135339.P7918716273406787505

/-! ## A135339.P14650812195057992139

`A167422(n)-A167772(A342939(n+1))`
-/

namespace A135339.P14650812195057992139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167422 n - A167772 (A342939 (n + 1)).toNat

end

end A135339.P14650812195057992139

/-!
# A135341: Number of unlabeled toroidal cores having n vertices.

The programs for A135341, there is no canonical definition to state claims against.
-/

/-! ## A135341.P16413934767681969406

`A262855(A225202(n+1))+A262855(n)`
-/

namespace A135341.P16413934767681969406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262855 (A225202 (n + 1)).toNat + A262855 n

end

end A135341.P16413934767681969406

/-! ## A135341.P10481583290624095721

`A000161(A084642(n)+A072671(n))`
-/

namespace A135341.P10481583290624095721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000161 (A084642 n + A072671 n).toNat

end

end A135341.P10481583290624095721

/-! ## A135341.P5337117219821219785

`and(A022934(A100536(3*n+4)), A253517(n+1))`
-/

namespace A135341.P5337117219821219785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A022934 (A100536 (3 * n + 4)).toNat) (A253517 (n + 1))

end

end A135341.P5337117219821219785

/-! ## A135341.P9087238054133814566

`val(A235186(A238495(n+1)), 8)`
-/

namespace A135341.P9087238054133814566
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A235186 (A238495 (n + 1)).toNat).toNat 8

end

end A135341.P9087238054133814566

/-! ## A135341.P16303840890123505371

`A073490(A179646(n+2)-A072467(2*(n+2)))`
-/

namespace A135341.P16303840890123505371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073490 (A179646 (n + 2) - A072467 (2 * (n + 2))).toNat

end

end A135341.P16303840890123505371

/-!
# A135342: Number of distinct means of nonempty subsets of {1,...,n}.

The programs for A135342, the canonical program `A135342.P3343036869715606017` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135342 has offset 1).

The definition of A135342 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A135342.P3343036869715606017

`2*a(n-1)-a(n-2)+A000010(n)` with `a(0)=1, a(1)=3, a(2)=5`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A135342

/-- `2*a(n-1)-a(n-2)+A000010(n)` -/
def P3343036869715606017.Spec : Prop :=
  ∀ n, P3343036869715606017.a n = A135342 (n + 1)

theorem P3343036869715606017.correct : P3343036869715606017.Spec := by
  intro n
  simp only [A135342, Nat.add_sub_cancel]

end A135342

/-! ## A135342.P1877772564324240433

`or(1, A005598(n))`
-/

namespace A135342.P1877772564324240433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A005598 n)

end

end A135342.P1877772564324240433

namespace A135342

/-- `or(1, A005598(n))` -/
def P1877772564324240433.Spec : Prop :=
  ∀ n, P1877772564324240433.a n = A135342 (n + 1)

end A135342

/-! ## A135342.P5450123242006607743

`2*A049703(n)+1`
-/

namespace A135342.P5450123242006607743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049703 n + 1

end

end A135342.P5450123242006607743

namespace A135342

/-- `2*A049703(n)+1` -/
def P5450123242006607743.Spec : Prop :=
  ∀ n, P5450123242006607743.a n = A135342 (n + 1)

end A135342

/-! ## A135342.P3643166472306559569

`or(1, A103116(n)+1)`
-/

namespace A135342.P3643166472306559569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A103116 n + 1)

end

end A135342.P3643166472306559569

namespace A135342

/-- `or(1, A103116(n)+1)` -/
def P3643166472306559569.Spec : Prop :=
  ∀ n, P3643166472306559569.a n = A135342 (n + 1)

end A135342

/-! ## A135342.P9378538742633279463

`∑[lcm(2, A002088(n))]+1`
-/

namespace A135342.P9378538742633279463
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A002088 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A135342.P9378538742633279463

namespace A135342

/-- `∑[lcm(2, A002088(n))]+1` -/
def P9378538742633279463.Spec : Prop :=
  ∀ n, (P9378538742633279463.a n : ℤ) = A135342 (n + 1)

end A135342

/-! ## A135342.P18057671594373485862

`or(1, A049688(n)+1-n)`
-/

namespace A135342.P18057671594373485862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A049688 n + (1 - (n : ℤ)))

end

end A135342.P18057671594373485862

namespace A135342

/-- `or(1, A049688(n)+1-n)` -/
def P18057671594373485862.Spec : Prop :=
  ∀ n, P18057671594373485862.a n = A135342 (n + 1)

end A135342

/-! ## A135342.P5317769749649271683

`A092249(n)+a(n-1)` with `a(0)=1, a(1)=3`
-/

namespace A135342.P5317769749649271683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  A092249 n + a (n - 1)

end

end A135342.P5317769749649271683

namespace A135342

/-- `A092249(n)+a(n-1)` -/
def P5317769749649271683.Spec : Prop :=
  ∀ n, P5317769749649271683.a n = A135342 (n + 1)

end A135342

/-! ## A135342.P8578441270990790684

`∑[A000010(n)+a(n-1)]` with `a(0)=1, a(1)=2, a(2)=2`
-/

namespace A135342.P8578441270990790684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 2] fun n f1 =>
  A000010 n + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135342.P8578441270990790684

namespace A135342

/-- `∑[A000010(n)+a(n-1)]` -/
def P8578441270990790684.Spec : Prop :=
  ∀ n, P8578441270990790684.a n = A135342 (n + 1)

end A135342

/-! ## A135342.P10780020523920589243

`A057427(n)+A005598(n)`
-/

namespace A135342.P10780020523920589243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + A005598 n

end

end A135342.P10780020523920589243

namespace A135342

/-- `A057427(n)+A005598(n)` -/
def P10780020523920589243.Spec : Prop :=
  ∀ n, P10780020523920589243.a n = A135342 (n + 1)

end A135342

/-! ## A135342.P11419170556974409889

`A005598(n)-A057428(n)`
-/

namespace A135342.P11419170556974409889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005598 n - A057428 n

end

end A135342.P11419170556974409889

namespace A135342

/-- `A005598(n)-A057428(n)` -/
def P11419170556974409889.Spec : Prop :=
  ∀ n, P11419170556974409889.a n = A135342 (n + 1)

end A135342

/-! ## A135342.P13635988763323771470

`A005598(n)+n/A028310(n)`
-/

namespace A135342.P13635988763323771470
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005598 n : ℚ) + (n : ℚ) / (A028310 n : ℚ)

end

end A135342.P13635988763323771470

namespace A135342

/-- `A005598(n)+n/A028310(n)` -/
def P13635988763323771470.Spec : Prop :=
  ∀ n, P13635988763323771470.a n = (A135342 (n + 1) : ℚ)

end A135342

/-! ## A135342.P9806664806210540514

`∑[A049643(n)+1]-A004273(n)`
-/

namespace A135342.P9806664806210540514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049643 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A004273 n

end

end A135342.P9806664806210540514

namespace A135342

/-- `∑[A049643(n)+1]-A004273(n)` -/
def P9806664806210540514.Spec : Prop :=
  ∀ n, P9806664806210540514.a n = A135342 (n + 1)

end A135342

/-! ## A135342.P10538618299518720938

`∑[A002088(A000010(n+1)%2+n)]`
-/

namespace A135342.P10538618299518720938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 (Int.tmod (A000010 (n + 1)) 2 + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135342.P10538618299518720938

namespace A135342

/-- `∑[A002088(A000010(n+1)%2+n)]` -/
def P10538618299518720938.Spec : Prop :=
  ∀ n, P10538618299518720938.a n = A135342 (n + 1)

end A135342

/-! ## A135342.P11413382672120466046

`A001468(n)+A005598(n)-A114986(n)`
-/

namespace A135342.P11413382672120466046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001468 n + (A005598 n - A114986 n)

end

end A135342.P11413382672120466046

namespace A135342

/-- `A001468(n)+A005598(n)-A114986(n)` -/
def P11413382672120466046.Spec : Prop :=
  ∀ n, P11413382672120466046.a n = A135342 (n + 1)

end A135342

/-! ## A135342.P6221667191415890248

`A327474(n+1)-1`
-/

namespace A135342.P6221667191415890248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327474 (n + 1) - 1

end

end A135342.P6221667191415890248

namespace A135342

/-- `A327474(n+1)-1` -/
def P6221667191415890248.Spec : Prop :=
  ∀ n, P6221667191415890248.a n = A135342 (n + 1)

end A135342

/-! ## A135342.P10790619641724401325

`A020639(A005574(n+1))+A005598(n)-1`
-/

namespace A135342.P10790619641724401325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A005574 (n + 1)).toNat + (A005598 n - 1)

end

end A135342.P10790619641724401325

namespace A135342

/-- `A020639(A005574(n+1))+A005598(n)-1` -/
def P10790619641724401325.Spec : Prop :=
  ∀ n, P10790619641724401325.a n = A135342 (n + 1)

end A135342

/-! ## A135342.P12749800229559753133

`A103116(n)+A036453(2*n+1)`
-/

namespace A135342.P12749800229559753133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103116 n + A036453 (2 * n + 1)

end

end A135342.P12749800229559753133

namespace A135342

/-- `A103116(n)+A036453(2*n+1)` -/
def P12749800229559753133.Spec : Prop :=
  ∀ n, P12749800229559753133.a n = A135342 (n + 1)

end A135342

/-! ## A135342.P17118680575730814750

`∑[A049643(n)]+2-A123108(2*n)`
-/

namespace A135342.P17118680575730814750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049643 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2 - A123108 (2 * n)

end

end A135342.P17118680575730814750

namespace A135342

/-- `∑[A049643(n)]+2-A123108(2*n)` -/
def P17118680575730814750.Spec : Prop :=
  ∀ n, P17118680575730814750.a n = A135342 (n + 1)

end A135342

/-!
# A135343: a(n) = 3*a(n-1) + 4*a(n-2) - a(n-3) + 3*a(n-4) + 4*a(n-5).

The programs for A135343, the canonical program `A135343.P2873041742685565448` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135343 has offset 0).

The definition of A135343 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-1)+4*a(n-2)-a(n-3)+3*a(n-4)+4*a(n-5)` (program `A135343.P2873041742685565448`, by `A135343.P2873041742685565448.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A135343.P2873041742685565448

`3*a(n-1)+4*a(n-2)-a(n-3)+3*a(n-4)+4*a(n-5)` with `a(0)=1, a(1)=3, a(2)=12, a(3)=51, a(4)=205`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A135343

/-- `3*a(n-1)+4*a(n-2)-a(n-3)+3*a(n-4)+4*a(n-5)` -/
def P2873041742685565448.Spec : Prop :=
  ∀ n, P2873041742685565448.a n = A135343 n

theorem P2873041742685565448.correct : P2873041742685565448.Spec := by
  intro n
  simp only [A135343]

end A135343

/-! ## A135343.P2830649538930916799

`ogf((1-x+4x^3)/(1-4x+x^3-4x^4))`
-/

namespace A135343.P2830649538930916799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, 0, 4] [1, -4, 0, 1, -4] n

end

end A135343.P2830649538930916799

namespace A135343

/-- `ogf((1-x+4x^3)/(1-4x+x^3-4x^4))` -/
def P2830649538930916799.Spec : Prop :=
  ∀ n, P2830649538930916799.a n = A135343 n

end A135343

/-! ## A135343.P3511515760762049053

`A132353(n)+A099621(n)`
-/

namespace A135343.P3511515760762049053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132353 n + A099621 n

end

end A135343.P3511515760762049053

namespace A135343

/-- `A132353(n)+A099621(n)` -/
def P3511515760762049053.Spec : Prop :=
  ∀ n, P3511515760762049053.a n = A135343 n

end A135343

/-! ## A135343.P565674765605295193

`A135345(n)-A128834(n)`
-/

namespace A135343.P565674765605295193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135345 n - A128834 n

end

end A135343.P565674765605295193

namespace A135343

/-- `A135345(n)-A128834(n)` -/
def P565674765605295193.Spec : Prop :=
  ∀ n, P565674765605295193.a n = A135343 n

end A135343

/-! ## A135343.P2320706971823809306

`A135345(n)+A010892(n+2)`
-/

namespace A135343.P2320706971823809306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135345 n + A010892 (n + 2)

end

end A135343.P2320706971823809306

namespace A135343

/-- `A135345(n)+A010892(n+2)` -/
def P2320706971823809306.Spec : Prop :=
  ∀ n, P2320706971823809306.a n = A135343 n

end A135343

/-! ## A135343.P18223219601611035175

`A260192(2*n+1)+A135345(n)`
-/

namespace A135343.P18223219601611035175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260192 (2 * n + 1) + A135345 n

end

end A135343.P18223219601611035175

namespace A135343

/-- `A260192(2*n+1)+A135345(n)` -/
def P18223219601611035175.Spec : Prop :=
  ∀ n, P18223219601611035175.a n = A135343 n

end A135343

/-! ## A135343.P7633368476561897943

`A007910(2*n)-A131531(n+1)`
-/

namespace A135343.P7633368476561897943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007910 (2 * n) - A131531 (n + 1)

end

end A135343.P7633368476561897943

namespace A135343

/-- `A007910(2*n)-A131531(n+1)` -/
def P7633368476561897943.Spec : Prop :=
  ∀ n, P7633368476561897943.a n = A135343 n

end A135343

/-! ## A135343.P79305707347652739

`A092220(n)+∑[A122117(n)-A092220(n)]`
-/

namespace A135343.P79305707347652739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122117 n - A092220 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092220 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135343.P79305707347652739

namespace A135343

/-- `A092220(n)+∑[A122117(n)-A092220(n)]` -/
def P79305707347652739.Spec : Prop :=
  ∀ n, P79305707347652739.a n = A135343 n

end A135343

/-! ## A135343.P12705259862804662108

`A135345(n)-(A131531(n+1)+A131531(n+2))`
-/

namespace A135343.P12705259862804662108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135345 n - (A131531 (n + 1) + A131531 (n + 2))

end

end A135343.P12705259862804662108

namespace A135343

/-- `A135345(n)-(A131531(n+1)+A131531(n+2))` -/
def P12705259862804662108.Spec : Prop :=
  ∀ n, P12705259862804662108.a n = A135343 n

end A135343

/-!
# A135344: a(n) = 3*a(n-1) - a(n-3) + 3*a(n-4), with initial values 1,1,1,1.

The programs for A135344, the canonical program `A135344.P16179221624097811256` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135344 has offset 0).

The definition of A135344 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-1)-a(n-3)+3*a(n-4)` (program `A135344.P16179221624097811256`, by `A135344.P16179221624097811256.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A135344.P16179221624097811256

`3*a(n-1)-a(n-3)+3*a(n-4)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A135344

/-- `3*a(n-1)-a(n-3)+3*a(n-4)` -/
def P16179221624097811256.Spec : Prop :=
  ∀ n, P16179221624097811256.a n = A135344 n

theorem P16179221624097811256.correct : P16179221624097811256.Spec := by
  intro n
  simp only [A135344]

end A135344

/-! ## A135344.P4893897195064789605

`ogf((-1+2x+2x^2+x^3)/(-1+3x-x^3+3x^4))`
-/

namespace A135344.P4893897195064789605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, -2, -1] [1, -3, 0, 1, -3] n

end

end A135344.P4893897195064789605

namespace A135344

/-- `ogf((-1+2x+2x^2+x^3)/(-1+3x-x^3+3x^4))` -/
def P4893897195064789605.Spec : Prop :=
  ∀ n, P4893897195064789605.a n = A135344 n

end A135344

/-! ## A135344.P8286908173310725907

`3*(a(n-1)+a(n-4))-a(n-3)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1`
-/

namespace A135344.P8286908173310725907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 1] fun n a =>
  3 * (a (n - 1) + a (n - 4)) - a (n - 3)

end

end A135344.P8286908173310725907

namespace A135344

/-- `3*(a(n-1)+a(n-4))-a(n-3)` -/
def P8286908173310725907.Spec : Prop :=
  ∀ n, P8286908173310725907.a n = A135344 n

end A135344

/-! ## A135344.P820278056973759081

`4*A133409(n)+1`
-/

namespace A135344.P820278056973759081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A133409 n + 1

end

end A135344.P820278056973759081

namespace A135344

/-- `4*A133409(n)+1` -/
def P820278056973759081.Spec : Prop :=
  ∀ n, P820278056973759081.a n = A135344 n

end A135344

/-! ## A135344.P16815296434984909064

`Δ[A163810(n+2)+A133405(n)]`
-/

namespace A135344.P16815296434984909064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163810 (n + 2) + A133405 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A135344.P16815296434984909064

namespace A135344

/-- `Δ[A163810(n+2)+A133405(n)]` -/
def P16815296434984909064.Spec : Prop :=
  ∀ n, P16815296434984909064.a n = A135344 n

end A135344

/-! ## A135344.P12851278302643673337

`or(1, A178703(A000007(n)-1+n))`
-/

namespace A135344.P12851278302643673337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A178703 (A000007 n - 1 + (n : ℤ)).toNat)

end

end A135344.P12851278302643673337

namespace A135344

/-- `or(1, A178703(A000007(n)-1+n))` -/
def P12851278302643673337.Spec : Prop :=
  ∀ n, P12851278302643673337.a n = A135344 n

end A135344

/-! ## A135344.P13668706799668055797

`Δ[A133405(n)-A163810(n)]-A163810(n)`
-/

namespace A135344.P13668706799668055797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133405 n - A163810 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A163810 n

end

end A135344.P13668706799668055797

namespace A135344

/-- `Δ[A133405(n)-A163810(n)]-A163810(n)` -/
def P13668706799668055797.Spec : Prop :=
  ∀ n, P13668706799668055797.a n = A135344 n

end A135344

/-! ## A135344.P4954675461660510849

`A133409(n+1)+A133409(n)+A088911(n)`
-/

namespace A135344.P4954675461660510849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133409 (n + 1) + (A133409 n + A088911 n)

end

end A135344.P4954675461660510849

namespace A135344

/-- `A133409(n+1)+A133409(n)+A088911(n)` -/
def P4954675461660510849.Spec : Prop :=
  ∀ n, P4954675461660510849.a n = A135344 n

end A135344

/-! ## A135344.P15990040557655869298

`A133405(n+1)+A010892(n)-A133405(n)`
-/

namespace A135344.P15990040557655869298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133405 (n + 1) + (A010892 n - A133405 n)

end

end A135344.P15990040557655869298

namespace A135344

/-- `A133405(n+1)+A010892(n)-A133405(n)` -/
def P15990040557655869298.Spec : Prop :=
  ∀ n, P15990040557655869298.a n = A135344 n

end A135344

/-! ## A135344.P12601537833526113109

`4*floor(3^n/56)+1`
-/

namespace A135344.P12601537833526113109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * ⌊(3 ^ n : ℚ) / 56⌋ + 1

end

end A135344.P12601537833526113109

namespace A135344

/-- `4*floor(3^n/56)+1` -/
def P12601537833526113109.Spec : Prop :=
  ∀ n, P12601537833526113109.a n = A135344 n

end A135344

/-! ## A135344.P7328874115512795592

`or(1, floor(3^(n+1)/42))`
-/

namespace A135344.P7328874115512795592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ⌊(3 ^ (n + 1) : ℚ) / 42⌋

end

end A135344.P7328874115512795592

namespace A135344

/-- `or(1, floor(3^(n+1)/42))` -/
def P7328874115512795592.Spec : Prop :=
  ∀ n, P7328874115512795592.a n = A135344 n

end A135344

/-!
# A135345: a(n) = 3*a(n-1) + 4*a(n-2) - a(n-3) + 3*a(n-4) + 4*a(n-5).

The programs for A135345, the canonical program `A135345.P17329968289940061990` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135345 has offset 0).

The definition of A135345 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-1)+4*a(n-2)-a(n-3)+3*a(n-4)+4*a(n-5)` (program `A135345.P17329968289940061990`, by `A135345.P17329968289940061990.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A135345.P17329968289940061990

`3*a(n-1)+4*a(n-2)-a(n-3)+3*a(n-4)+4*a(n-5)` with `a(0)=1, a(1)=4, a(2)=13, a(3)=51, a(4)=204`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A135345

/-- `3*a(n-1)+4*a(n-2)-a(n-3)+3*a(n-4)+4*a(n-5)` -/
def P17329968289940061990.Spec : Prop :=
  ∀ n, P17329968289940061990.a n = A135345 n

theorem P17329968289940061990.correct : P17329968289940061990.Spec := by
  intro n
  simp only [A135345]

end A135345

/-! ## A135345.P17738685528065328883

`ogf((1-3x^2)/(1-4x+x^3-4x^4))`
-/

namespace A135345.P17738685528065328883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, -3] [1, -4, 0, 1, -4] n

end

end A135345.P17738685528065328883

namespace A135345

/-- `ogf((1-3x^2)/(1-4x+x^3-4x^4))` -/
def P17738685528065328883.Spec : Prop :=
  ∀ n, P17738685528065328883.a n = A135345 n

end A135345

/-! ## A135345.P16530734003694586494

`A132868(n)+A099621(n)`
-/

namespace A135345.P16530734003694586494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132868 n + A099621 n

end

end A135345.P16530734003694586494

namespace A135345

/-- `A132868(n)+A099621(n)` -/
def P16530734003694586494.Spec : Prop :=
  ∀ n, P16530734003694586494.a n = A135345 n

end A135345

/-! ## A135345.P5850365969619110954

`A135343(n)+A128834(n)`
-/

namespace A135345.P5850365969619110954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135343 n + A128834 n

end

end A135345.P5850365969619110954

namespace A135345

/-- `A135343(n)+A128834(n)` -/
def P5850365969619110954.Spec : Prop :=
  ∀ n, P5850365969619110954.a n = A135345 n

end A135345

/-! ## A135345.P10274625644330044555

`∑[A122117(n)+A092220(n)]`
-/

namespace A135345.P10274625644330044555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122117 n + A092220 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135345.P10274625644330044555

namespace A135345

/-- `∑[A122117(n)+A092220(n)]` -/
def P10274625644330044555.Spec : Prop :=
  ∀ n, P10274625644330044555.a n = A135345 n

end A135345

/-! ## A135345.P11600313312019181144

`A135343(n)-A010892(n+2)`
-/

namespace A135345.P11600313312019181144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135343 n - A010892 (n + 2)

end

end A135345.P11600313312019181144

namespace A135345

/-- `A135343(n)-A010892(n+2)` -/
def P11600313312019181144.Spec : Prop :=
  ∀ n, P11600313312019181144.a n = A135345 n

end A135345

/-! ## A135345.P1991499719176883933

`A131531(n+2)+A007910(2*n)`
-/

namespace A135345.P1991499719176883933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131531 (n + 2) + A007910 (2 * n)

end

end A135345.P1991499719176883933

namespace A135345

/-- `A131531(n+2)+A007910(2*n)` -/
def P1991499719176883933.Spec : Prop :=
  ∀ n, P1991499719176883933.a n = A135345 n

end A135345

/-! ## A135345.P2866136976804936618

`A135343(n)-A260192(2*n+1)`
-/

namespace A135345.P2866136976804936618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135343 n - A260192 (2 * n + 1)

end

end A135345.P2866136976804936618

namespace A135345

/-- `A135343(n)-A260192(2*n+1)` -/
def P2866136976804936618.Spec : Prop :=
  ∀ n, P2866136976804936618.a n = A135345 n

end A135345

/-! ## A135345.P9934869260249531265

`A131531(n+1)+A135343(n)+A131531(n+2)`
-/

namespace A135345.P9934869260249531265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131531 (n + 1) + (A135343 n + A131531 (n + 2))

end

end A135345.P9934869260249531265

namespace A135345

/-- `A131531(n+1)+A135343(n)+A131531(n+2)` -/
def P9934869260249531265.Spec : Prop :=
  ∀ n, P9934869260249531265.a n = A135345 n

end A135345

/-! ## A135345.P11755470714915549933

`4^(n+1)-A135343(n+1)`
-/

namespace A135345.P11755470714915549933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ (n + 1) : ℤ) - A135343 (n + 1)

end

end A135345.P11755470714915549933

namespace A135345

/-- `4^(n+1)-A135343(n+1)` -/
def P11755470714915549933.Spec : Prop :=
  ∀ n, P11755470714915549933.a n = A135345 n

end A135345

/-!
# A135346: a(0)=1. a(n) = Sum_{k=1..n} a(n-d(k)), where d(k) = A000005(k) (the number of positive divisors of k).

The programs for A135346, there is no canonical definition to state claims against.
-/

/-! ## A135346.P16767820421262074714

`A180004(A185195(n!))`
-/

namespace A135346.P16767820421262074714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180004 (A185195 (Nat.factorial n)).toNat

end

end A135346.P16767820421262074714

/-! ## A135346.P15125809835501945705

`A064174(A056239(n!)+2)`
-/

namespace A135346.P15125809835501945705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064174 (A056239 (Nat.factorial n) + 2).toNat

end

end A135346.P15125809835501945705

/-! ## A135346.P1638498059558171856

`xor(∑[A236567(n+1)], A321994(n+1))`
-/

namespace A135346.P1638498059558171856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236567 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (∑ j ∈ Finset.range (n + 1), f1 j) (A321994 (n + 1))

end

end A135346.P1638498059558171856

/-! ## A135346.P8178013243085746470

`A064174(∑[∑[A001222(5^n)%2]]+1)`
-/

namespace A135346.P8178013243085746470
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001222 (5 ^ n)) 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064174 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A135346.P8178013243085746470

/-!
# A135348: Total sum of squares of number of distinct parts in all partitions of n.

The programs for A135348, there is no canonical definition to state claims against.
-/

/-! ## A135348.P17157842381794914962

`A093695(n)+A000070(n)`
-/

namespace A135348.P17157842381794914962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093695 n + A000070 n

end

end A135348.P17157842381794914962

/-! ## A135348.P1017044864900186950

`A093695(n)+∑[A000041(n)]`
-/

namespace A135348.P1017044864900186950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093695 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135348.P1017044864900186950

/-! ## A135348.P17466122672198581287

`A093695(n+1)+A087787(n)`
-/

namespace A135348.P17466122672198581287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093695 (n + 1) + A087787 n

end

end A135348.P17466122672198581287

/-! ## A135348.P8964508540157103944

`A014153(n)-A024786(n+1)`
-/

namespace A135348.P8964508540157103944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014153 n - A024786 (n + 1)

end

end A135348.P8964508540157103944

/-! ## A135348.P10531582354672058770

`A103650(n+2)+A103628(n)`
-/

namespace A135348.P10531582354672058770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103650 (n + 2) + A103628 n

end

end A135348.P10531582354672058770

/-! ## A135348.P14350016287070975096

`A000097(n)+A093695(n)/2`
-/

namespace A135348.P14350016287070975096
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000097 n : ℚ) + (A093695 n : ℚ) / 2

end

end A135348.P14350016287070975096

/-! ## A135348.P1681111995094891738

`∑[∑[A182712(n)+A087787(n)]]`
-/

namespace A135348.P1681111995094891738
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182712 n + A087787 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135348.P1681111995094891738

/-! ## A135348.P15173362080534048772

`∑[A000070(n)]-A024786(n+1)`
-/

namespace A135348.P15173362080534048772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A024786 (n + 1)

end

end A135348.P15173362080534048772

/-! ## A135348.P14667946384531680899

`∑[∑[A000041(n)]]-A024786(n+1)`
-/

namespace A135348.P14667946384531680899
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A024786 (n + 1)

end

end A135348.P14667946384531680899

/-! ## A135348.P4064444213594631317

`A000097(n)+A000097(n)-A000070(n)`
-/

namespace A135348.P4064444213594631317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000097 n + (A000097 n - A000070 n)

end

end A135348.P4064444213594631317

/-! ## A135348.P3303575006291312935

`A093694(n)+A093695(n)-A096541(n)`
-/

namespace A135348.P3303575006291312935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093694 n + (A093695 n - A096541 n)

end

end A135348.P3303575006291312935

/-! ## A135348.P1897261161753714865

`A000097(n)+A000097(n)-∑[A000041(n)]`
-/

namespace A135348.P1897261161753714865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000097 n + (A000097 n - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A135348.P1897261161753714865

/-! ## A135348.P8236041071594295198

`A006128(n+1)+A093695(n)-A096541(n+1)`
-/

namespace A135348.P8236041071594295198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006128 (n + 1) + (A093695 n - A096541 (n + 1))

end

end A135348.P8236041071594295198

/-! ## A135348.P11707949622510108006

`A316861(n+1)+A000097(n)-A116646(n+1)`
-/

namespace A135348.P11707949622510108006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316861 (n + 1) + (A000097 n - A116646 (n + 1))

end

end A135348.P11707949622510108006

/-! ## A135348.P2266411912843767913

`∑[A024786(n+1)]+A000097(n)-A024786(n+1)`
-/

namespace A135348.P2266411912843767913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024786 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A000097 n - A024786 (n + 1))

end

end A135348.P2266411912843767913

/-! ## A135348.P11729755189313625726

`2*A000097(n)-A000070(n)`
-/

namespace A135348.P11729755189313625726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000097 n - A000070 n

end

end A135348.P11729755189313625726

/-! ## A135348.P2261253199110502145

`2*A000097(n)-∑[A000041(n)]`
-/

namespace A135348.P2261253199110502145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000097 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135348.P2261253199110502145

/-! ## A135348.P920154055881949865

`3*A000097(n)-A000291(n)`
-/

namespace A135348.P920154055881949865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A000097 n - A000291 n

end

end A135348.P920154055881949865

/-! ## A135348.P14890146351475061688

`A093695(n)+A025065(2*n)`
-/

namespace A135348.P14890146351475061688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093695 n + A025065 (2 * n)

end

end A135348.P14890146351475061688

/-! ## A135348.P12067907546310879400

`A100824(2*n+1)+A093695(n)`
-/

namespace A135348.P12067907546310879400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100824 (2 * n + 1) + A093695 n

end

end A135348.P12067907546310879400

/-!
# A135349: a(n) = 6^n*5^(n^2).

The programs for A135349, the canonical program `A135349.P7816841023831191229` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135349 has offset 0).

The definition of A135349 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6^n*5^n²` (program `A135349.P7816841023831191229`, by `A135349.P7816841023831191229.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A135349.P7816841023831191229

`6^n*5^n²`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A135349

/-- `6^n*5^n²` -/
def P7816841023831191229.Spec : Prop :=
  ∀ n, (P7816841023831191229.a n : ℤ) = A135349 n

theorem P7816841023831191229.correct : P7816841023831191229.Spec := by
  intro n
  simp only [A135349]

end A135349

/-! ## A135349.P6631532239572624147

`lcm((5^n)^n, 6^n)`
-/

namespace A135349.P6631532239572624147
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm ((5 ^ n) ^ n) (6 ^ n)

end

end A135349.P6631532239572624147

namespace A135349

/-- `lcm((5^n)^n, 6^n)` -/
def P6631532239572624147.Spec : Prop :=
  ∀ n, (P6631532239572624147.a n : ℤ) = A135349 n

end A135349

/-! ## A135349.P8657784922653957781

`∏[A003948(2*n)]`
-/

namespace A135349.P8657784922653957781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003948 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A135349.P8657784922653957781

namespace A135349

/-- `∏[A003948(2*n)]` -/
def P8657784922653957781.Spec : Prop :=
  ∀ n, P8657784922653957781.a n = A135349 n

end A135349

/-!
# A135350: a(n) = 2*a(n-1) - a(n-3) + 2*a(n-4).

The programs for A135350, the canonical program `A135350.P10445912154973198463` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135350 has offset 0).

The definition of A135350 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)-a(n-3)+2*a(n-4)` (program `A135350.P10445912154973198463`, by `A135350.P10445912154973198463.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A135350.P10445912154973198463

`2*a(n-1)-a(n-3)+2*a(n-4)` with `a(0)=0, a(1)=1, a(2)=3, a(3)=8`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A135350

/-- `2*a(n-1)-a(n-3)+2*a(n-4)` -/
def P10445912154973198463.Spec : Prop :=
  ∀ n, P10445912154973198463.a n = A135350 n

theorem P10445912154973198463.correct : P10445912154973198463.Spec := by
  intro n
  simp only [A135350]

end A135350

/-! ## A135350.P2148495439781590405

`1/9*(2*(-1)^(n+1)+2^(n+3)+3*A117373(n+1))`
-/

namespace A135350.P2148495439781590405
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 9 * (2 * (-1) ^ (n + 1) + (2 ^ (n + 3) : ℤ) + 3 * A117373 (n + 1) : ℚ)

end

end A135350.P2148495439781590405

namespace A135350

/-- `1/9*(2*(-1)^(n+1)+2^(n+3)+3*A117373(n+1))` -/
def P2148495439781590405.Spec : Prop :=
  ∀ n, P2148495439781590405.a n = (A135350 n : ℚ)

end A135350

/-! ## A135350.P3271671191344122770

`2^n-a(n-3)` with `a(0)=0, a(1)=1, a(2)=3`
-/

namespace A135350.P3271671191344122770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 3] fun n a =>
  (2 ^ n : ℤ) - a (n - 3)

end

end A135350.P3271671191344122770

namespace A135350

/-- `2^n-a(n-3)` -/
def P3271671191344122770.Spec : Prop :=
  ∀ n, P3271671191344122770.a n = A135350 n

end A135350

/-! ## A135350.P16911701320382893118

`ogf((x+x^2+2x^3)/(1-2x+x^3-2x^4))`
-/

namespace A135350.P16911701320382893118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 1, 2] [1, -2, 0, 1, -2] n

end

end A135350.P16911701320382893118

namespace A135350

/-- `ogf((x+x^2+2x^3)/(1-2x+x^3-2x^4))` -/
def P16911701320382893118.Spec : Prop :=
  ∀ n, P16911701320382893118.a n = A135350 n

end A135350

/-! ## A135350.P6192376757234909920

`∑[record[A133511(n)]]`
-/

namespace A135350.P6192376757234909920
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133511 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135350.P6192376757234909920

namespace A135350

/-- `∑[record[A133511(n)]]` -/
def P6192376757234909920.Spec : Prop :=
  ∀ n, P6192376757234909920.a n = A135350 n

end A135350

/-! ## A135350.P18344661386686467310

`∑[A133511(n+2)]+1`
-/

namespace A135350.P18344661386686467310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133511 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A135350.P18344661386686467310

namespace A135350

/-- `∑[A133511(n+2)]+1` -/
def P18344661386686467310.Spec : Prop :=
  ∀ n, P18344661386686467310.a n = A135350 n

end A135350

/-! ## A135350.P15994415275875873145

`∑[∑[A135259(n+1)]]+1`
-/

namespace A135350.P15994415275875873145
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135259 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A135350.P15994415275875873145

namespace A135350

/-- `∑[∑[A135259(n+1)]]+1` -/
def P15994415275875873145.Spec : Prop :=
  ∀ n, P15994415275875873145.a n = A135350 n

end A135350

/-! ## A135350.P8226081910102506523

`A275788(n)+A113405(n)`
-/

namespace A135350.P8226081910102506523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275788 n + A113405 n

end

end A135350.P8226081910102506523

namespace A135350

/-- `A275788(n)+A113405(n)` -/
def P8226081910102506523.Spec : Prop :=
  ∀ n, P8226081910102506523.a n = A135350 n

end A135350

/-! ## A135350.P4727958293085650213

`A135440(n)-A135261(n)`
-/

namespace A135350.P4727958293085650213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135440 n - A135261 n

end

end A135350.P4727958293085650213

namespace A135350

/-- `A135440(n)-A135261(n)` -/
def P4727958293085650213.Spec : Prop :=
  ∀ n, P4727958293085650213.a n = A135350 n

end A135350

/-! ## A135350.P9852935342947349827

`A131666(n+3)-A010892(n)`
-/

namespace A135350.P9852935342947349827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131666 (n + 3) - A010892 n

end

end A135350.P9852935342947349827

namespace A135350

/-- `A131666(n+3)-A010892(n)` -/
def P9852935342947349827.Spec : Prop :=
  ∀ n, P9852935342947349827.a n = A135350 n

end A135350

/-! ## A135350.P15787536703032382233

`A113405(n+3)-A130151(n)`
-/

namespace A135350.P15787536703032382233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113405 (n + 3) - A130151 n

end

end A135350.P15787536703032382233

namespace A135350

/-- `A113405(n+3)-A130151(n)` -/
def P15787536703032382233.Spec : Prop :=
  ∀ n, P15787536703032382233.a n = A135350 n

end A135350

/-! ## A135350.P2373717281566487376

`∑[record[A135259(n)+A133513(n)]]`
-/

namespace A135350.P2373717281566487376
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135259 n + A133513 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135350.P2373717281566487376

namespace A135350

/-- `∑[record[A135259(n)+A133513(n)]]` -/
def P2373717281566487376.Spec : Prop :=
  ∀ n, P2373717281566487376.a n = A135350 n

end A135350

/-! ## A135350.P10243090803574180251

`∑[A131708(n)]+2*A113405(n)`
-/

namespace A135350.P10243090803574180251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131708 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2 * A113405 n

end

end A135350.P10243090803574180251

namespace A135350

/-- `∑[A131708(n)]+2*A113405(n)` -/
def P10243090803574180251.Spec : Prop :=
  ∀ n, P10243090803574180251.a n = A135350 n

end A135350

/-! ## A135350.P15351489129552494999

`A133511(n+1)+A078008(n+1)`
-/

namespace A135350.P15351489129552494999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133511 (n + 1) + A078008 (n + 1)

end

end A135350.P15351489129552494999

namespace A135350

/-- `A133511(n+1)+A078008(n+1)` -/
def P15351489129552494999.Spec : Prop :=
  ∀ n, P15351489129552494999.a n = A135350 n

end A135350

/-! ## A135350.P4892477687315785962

`A133511(n+1)+2*A001045(n)`
-/

namespace A135350.P4892477687315785962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133511 (n + 1) + 2 * A001045 n

end

end A135350.P4892477687315785962

namespace A135350

/-- `A133511(n+1)+2*A001045(n)` -/
def P4892477687315785962.Spec : Prop :=
  ∀ n, P4892477687315785962.a n = A135350 n

end A135350

/-! ## A135350.P18007569025151254046

`A024495(n+1)+2*A113405(n)`
-/

namespace A135350.P18007569025151254046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024495 (n + 1) + 2 * A113405 n

end

end A135350.P18007569025151254046

namespace A135350

/-- `A024495(n+1)+2*A113405(n)` -/
def P18007569025151254046.Spec : Prop :=
  ∀ n, P18007569025151254046.a n = A135350 n

end A135350

/-! ## A135350.P16582243797461497066

`A131666(n+1)+2*A024495(n)`
-/

namespace A135350.P16582243797461497066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131666 (n + 1) + 2 * A024495 n

end

end A135350.P16582243797461497066

namespace A135350

/-- `A131666(n+1)+2*A024495(n)` -/
def P16582243797461497066.Spec : Prop :=
  ∀ n, P16582243797461497066.a n = A135350 n

end A135350

/-! ## A135350.P10809831723505777199

`A131090(n+3)+A092220(n+2)`
-/

namespace A135350.P10809831723505777199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131090 (n + 3) + A092220 (n + 2)

end

end A135350.P10809831723505777199

namespace A135350

/-- `A131090(n+3)+A092220(n+2)` -/
def P10809831723505777199.Spec : Prop :=
  ∀ n, P10809831723505777199.a n = A135350 n

end A135350

/-! ## A135350.P14090895108211555456

`A153234(n+3)+1-A088911(n)`
-/

namespace A135350.P14090895108211555456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153234 (n + 3) + (1 - A088911 n)

end

end A135350.P14090895108211555456

namespace A135350

/-- `A153234(n+3)+1-A088911(n)` -/
def P14090895108211555456.Spec : Prop :=
  ∀ n, P14090895108211555456.a n = A135350 n

end A135350

/-! ## A135350.P11682738286558503676

`A153234(n+3)+A088911(n+3)`
-/

namespace A135350.P11682738286558503676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153234 (n + 3) + A088911 (n + 3)

end

end A135350.P11682738286558503676

namespace A135350

/-- `A153234(n+3)+A088911(n+3)` -/
def P11682738286558503676.Spec : Prop :=
  ∀ n, P11682738286558503676.a n = A135350 n

end A135350

/-!
# A135351: a(n) = (2^n + 3 - 7*(-1)^n + 3*0^n)/6; or a(0) = 0 and for n > 0, a(n) = A005578(n-1) - (-1)^n.

The programs for A135351, the canonical program `A135351.P13529426972979399874` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135351 has offset 0).

The definition of A135351 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2^n+3-7*(-1)^n+3*0^n)/6` (program `A135351.P14522610851365047926`, by `A135351.P14522610851365047926.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A135351.P14522610851365047926

`(2^n+3-7*(-1)^n+3*0^n)/6`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A135351.P14522610851365047926
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 ^ n + 3 : ℤ) - 7 * (-1) ^ n + (3 * 0 ^ n : ℤ) : ℚ) / 6

end

end A135351.P14522610851365047926

namespace A135351

/-- `(2^n+3-7*(-1)^n+3*0^n)/6` -/
def P14522610851365047926.Spec : Prop :=
  ∀ n, P14522610851365047926.a n = (A135351 n : ℚ)

theorem P14522610851365047926.correct : P14522610851365047926.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A135351, Nat.add_sub_cancel, A135351.P14522610851365047926.a, A135351.P13529426972979399874.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      simp only [A135351, Nat.add_sub_cancel, A135351.P14522610851365047926.a, A135351.P13529426972979399874.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A135351

/-! ## A135351.P5598677043089293577

`ogf((2x-4x^2+x^3)/(1-2x-x^2+2x^3))`
-/

namespace A135351.P5598677043089293577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, -4, 1] [1, -2, -1, 2] n

end

end A135351.P5598677043089293577

namespace A135351

/-- `ogf((2x-4x^2+x^3)/(1-2x-x^2+2x^3))` -/
def P5598677043089293577.Spec : Prop :=
  ∀ n, P5598677043089293577.a n = A135351 n

end A135351

/-! ## A135351.P6811643932058524295

`a(n-2)+2^(n-3)` with `a(0)=0, a(1)=2, a(2)=0`
-/

namespace A135351.P6811643932058524295
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 2, 0] fun n a =>
  a (n - 2) + (2 : ℚ) ^ ((n : ℤ) - 3 : ℤ)

end

end A135351.P6811643932058524295

namespace A135351

/-- `a(n-2)+2^(n-3)` -/
def P6811643932058524295.Spec : Prop :=
  ∀ n, P6811643932058524295.a n = (A135351 n : ℚ)

end A135351

/-! ## A135351.P16292310349228311044

`or(2^(n-3), a(n-2))` with `a(0)=0, a(1)=2, a(2)=0`
-/

namespace A135351.P16292310349228311044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 0] fun n a =>
  Int.lor (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - 3 : ℤ))) (a (n - 2))

end

end A135351.P16292310349228311044

namespace A135351

/-- `or(2^(n-3), a(n-2))` -/
def P16292310349228311044.Spec : Prop :=
  ∀ n, P16292310349228311044.a n = A135351 n

end A135351

/-! ## A135351.P2755738944392651647

`xor(2^(n-3), a(n-2))` with `a(0)=0, a(1)=2, a(2)=0`
-/

namespace A135351.P2755738944392651647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 0] fun n a =>
  Int.xor (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - 3 : ℤ))) (a (n - 2))

end

end A135351.P2755738944392651647

namespace A135351

/-- `xor(2^(n-3), a(n-2))` -/
def P2755738944392651647.Spec : Prop :=
  ∀ n, P2755738944392651647.a n = A135351 n

end A135351

/-! ## A135351.P6241245438495147998

`∑[floor(2^(n-3)-a(n-1))]` with `a(0)=0, a(1)=2`
-/

namespace A135351.P6241245438495147998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  ⌊(2 : ℚ) ^ ((n : ℤ) - 3 : ℤ) - (f1 (n - 1) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135351.P6241245438495147998

namespace A135351

/-- `∑[floor(2^(n-3)-a(n-1))]` -/
def P6241245438495147998.Spec : Prop :=
  ∀ n, P6241245438495147998.a n = A135351 n

end A135351

/-! ## A135351.P15972204208959216231

`2*a(n-2)+a(n-1)-1` with `a(0)=0, a(1)=2, a(2)=0`
-/

namespace A135351.P15972204208959216231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 0] fun n a =>
  2 * a (n - 2) + (a (n - 1) - 1)

end

end A135351.P15972204208959216231

namespace A135351

/-- `2*a(n-2)+a(n-1)-1` -/
def P15972204208959216231.Spec : Prop :=
  ∀ n, P15972204208959216231.a n = A135351 n

theorem P15972204208959216231.correct : P15972204208959216231.Spec := by
  intro n
  simp only [A135351, Nat.add_sub_cancel, A135351.P15972204208959216231.a, A135351.P13529426972979399874.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A135351

/-! ## A135351.P13529426972979399874

`2*a(n-2)-(1-a(n-1))` with `a(0)=0, a(1)=2, a(2)=0`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A135351

/-- `2*a(n-2)-(1-a(n-1))` -/
def P13529426972979399874.Spec : Prop :=
  ∀ n, P13529426972979399874.a n = A135351 n

theorem P13529426972979399874.correct : P13529426972979399874.Spec := by
  intro n
  simp only [A135351]

end A135351

/-! ## A135351.P13535228937788422722

`a(n-2)-1+a(n-1)+a(n-2)` with `a(0)=0, a(1)=2, a(2)=0`
-/

namespace A135351.P13535228937788422722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 0] fun n a =>
  a (n - 2) - 1 + (a (n - 1) + a (n - 2))

end

end A135351.P13535228937788422722

namespace A135351

/-- `a(n-2)-1+a(n-1)+a(n-2)` -/
def P13535228937788422722.Spec : Prop :=
  ∀ n, P13535228937788422722.a n = A135351 n

theorem P13535228937788422722.correct : P13535228937788422722.Spec := by
  intro n
  simp only [A135351, Nat.add_sub_cancel, A135351.P13535228937788422722.a, A135351.P13529426972979399874.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A135351

/-! ## A135351.P15672648073793329903

`floor(a(n-1)-(1-a(n-2)-a(n-2)))` with `a(0)=0, a(1)=2, a(2)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A135351.P15672648073793329903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 0] fun n a =>
  a (n - 1) - (1 - a (n - 2) - a (n - 2))

end

end A135351.P15672648073793329903

namespace A135351

/-- `floor(a(n-1)-(1-a(n-2)-a(n-2)))` -/
def P15672648073793329903.Spec : Prop :=
  ∀ n, P15672648073793329903.a n = A135351 n

end A135351

/-! ## A135351.P13717680612970246995

`∑[A155980(n)]`
-/

namespace A135351.P13717680612970246995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155980 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135351.P13717680612970246995

namespace A135351

/-- `∑[A155980(n)]` -/
def P13717680612970246995.Spec : Prop :=
  ∀ n, P13717680612970246995.a n = A135351 n

end A135351

/-! ## A135351.P11558856890113386309

`A166444(n)+1-a(n-1)` with `a(0)=0`
-/

namespace A135351.P11558856890113386309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A166444 n + (1 - a (n - 1))

end

end A135351.P11558856890113386309

namespace A135351

/-- `A166444(n)+1-a(n-1)` -/
def P11558856890113386309.Spec : Prop :=
  ∀ n, P11558856890113386309.a n = A135351 n

end A135351

/-! ## A135351.P18186061801752084314

`A011782(n-1)-a(n-1)+1` with `a(0)=0`
-/

namespace A135351.P18186061801752084314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A011782 (n - 1) - a (n - 1) + 1

end

end A135351.P18186061801752084314

namespace A135351

/-- `A011782(n-1)-a(n-1)+1` -/
def P18186061801752084314.Spec : Prop :=
  ∀ n, P18186061801752084314.a n = A135351 n

end A135351

/-! ## A135351.P14352931660429067100

`xor(A052997(n), A284353(n))`
-/

namespace A135351.P14352931660429067100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A052997 n) (A284353 n)

end

end A135351.P14352931660429067100

namespace A135351

/-- `xor(A052997(n), A284353(n))` -/
def P14352931660429067100.Spec : Prop :=
  ∀ n, P14352931660429067100.a n = A135351 n

end A135351

/-! ## A135351.P2797471211366664097

`A000079(n)+A062510(n)-A052997(n)`
-/

namespace A135351.P2797471211366664097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n + (A062510 n - A052997 n)

end

end A135351.P2797471211366664097

namespace A135351

/-- `A000079(n)+A062510(n)-A052997(n)` -/
def P2797471211366664097.Spec : Prop :=
  ∀ n, P2797471211366664097.a n = A135351 n

end A135351

/-! ## A135351.P1787004162584471071

`A083582(n)-A087940(n+1)`
-/

namespace A135351.P1787004162584471071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083582 n - A087940 (n + 1)

end

end A135351.P1787004162584471071

namespace A135351

/-- `A083582(n)-A087940(n+1)` -/
def P1787004162584471071.Spec : Prop :=
  ∀ n, P1787004162584471071.a n = A135351 n

end A135351

/-! ## A135351.P7552080791345975574

`A054135(n+1)-A290604(n)`
-/

namespace A135351.P7552080791345975574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054135 (n + 1) - A290604 n

end

end A135351.P7552080791345975574

namespace A135351

/-- `A054135(n+1)-A290604(n)` -/
def P7552080791345975574.Spec : Prop :=
  ∀ n, P7552080791345975574.a n = A135351 n

end A135351

/-! ## A135351.P16389951506988780886

`A340627(n)-(A052997(n)+A048573(n))`
-/

namespace A135351.P16389951506988780886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340627 n - (A052997 n + A048573 n)

end

end A135351.P16389951506988780886

namespace A135351

/-- `A340627(n)-(A052997(n)+A048573(n))` -/
def P16389951506988780886.Spec : Prop :=
  ∀ n, P16389951506988780886.a n = A135351 n

end A135351

/-! ## A135351.P15213116696745797233

`A084639(n+1)-(A084640(n)+A084214(n))`
-/

namespace A135351.P15213116696745797233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084639 (n + 1) - (A084640 n + A084214 n)

end

end A135351.P15213116696745797233

namespace A135351

/-- `A084639(n+1)-(A084640(n)+A084214(n))` -/
def P15213116696745797233.Spec : Prop :=
  ∀ n, P15213116696745797233.a n = A135351 n

end A135351

/-! ## A135351.P17529900176103038271

`A156202(n+1)%A052997(n)`
-/

namespace A135351.P17529900176103038271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A156202 (n + 1)) (A052997 n)

end

end A135351.P17529900176103038271

namespace A135351

/-- `A156202(n+1)%A052997(n)` -/
def P17529900176103038271.Spec : Prop :=
  ∀ n, P17529900176103038271.a n = A135351 n

end A135351

/-!
# A135352: Period 5: repeat [1,2,2,1,3].

The programs for A135352, the canonical program `A135352.P5619766079478661864` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135352 has offset 1).

The definition of A135352 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A135352.P5619766079478661864

`a(n-5)` with `a(0)=1, a(1)=2, a(2)=2, a(3)=1, a(4)=3`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A135352

/-- `a(n-5)` -/
def P5619766079478661864.Spec : Prop :=
  ∀ n, (P5619766079478661864.a n : ℤ) = A135352 (n + 1)

theorem P5619766079478661864.correct : P5619766079478661864.Spec := by
  intro n
  simp only [A135352, Nat.add_sub_cancel]

end A135352

/-!
# A135353: a(n) = 3*a(n-1) - 3*a(n-2) + 2*a(n-3), with a(0) = 2, a(1) = -3, a(2) = 3.

The programs for A135353, the canonical program `A135353.P11685591567736529931` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135353 has offset 0).

The definition of A135353 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-1)-3*a(n-2)+2*a(n-3)` (program `A135353.P11685591567736529931`, by `A135353.P11685591567736529931.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A135353.P11685591567736529931

`3*a(n-1)-3*a(n-2)+2*a(n-3)` with `a(0)=2, a(1)=-3, a(2)=3`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A135353

/-- `3*a(n-1)-3*a(n-2)+2*a(n-3)` -/
def P11685591567736529931.Spec : Prop :=
  ∀ n, P11685591567736529931.a n = A135353 n

theorem P11685591567736529931.correct : P11685591567736529931.Spec := by
  intro n
  simp only [A135353]

end A135353

/-! ## A135353.P13876206452030622369

`8/3*2^n-2/3*cos(π*n/3)-16*sqrt(3)/3*sin(π*n/3)`
-/

namespace A135353.P13876206452030622369
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((8 : ℚ) / 3 * (2 ^ n : ℚ) : ℝ) - ((2 : ℚ) / 3 : ℝ) * Real.cos (Real.pi * (n : ℝ) / 3) - 16 * Real.sqrt (3 : ℝ) / 3 * Real.sin (Real.pi * (n : ℝ) / 3)

end

end A135353.P13876206452030622369

namespace A135353

/-- `8/3*2^n-2/3*cos(π*n/3)-16*sqrt(3)/3*sin(π*n/3)` -/
def P13876206452030622369.Spec : Prop :=
  ∀ n, P13876206452030622369.a n = (A135353 n : ℝ)

end A135353

/-! ## A135353.P4408764999513197066

`2^(n+1)+a(n-1)-a(n-2)` with `a(0)=2, a(1)=-3`
-/

namespace A135353.P4408764999513197066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, -3] fun n a =>
  (2 ^ (n + 1) : ℤ) + (a (n - 1) - a (n - 2))

end

end A135353.P4408764999513197066

namespace A135353

/-- `2^(n+1)+a(n-1)-a(n-2)` -/
def P4408764999513197066.Spec : Prop :=
  ∀ n, P4408764999513197066.a n = A135353 n

end A135353

/-! ## A135353.P14627275531575422415

`3*(a(n-1)-a(n-2))+2*a(n-3)` with `a(0)=2, a(1)=-3, a(2)=3`
-/

namespace A135353.P14627275531575422415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, -3, 3] fun n a =>
  3 * (a (n - 1) - a (n - 2)) + 2 * a (n - 3)

end

end A135353.P14627275531575422415

namespace A135353

/-- `3*(a(n-1)-a(n-2))+2*a(n-3)` -/
def P14627275531575422415.Spec : Prop :=
  ∀ n, P14627275531575422415.a n = A135353 n

theorem P14627275531575422415.correct : P14627275531575422415.Spec := by
  intro n
  simp only [A135353, Nat.add_sub_cancel, A135353.P14627275531575422415.a, A135353.P11685591567736529931.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A135353

/-!
# A135354: a(0)=1, a(n) = largest divisor of n! that is coprime to a(n-1).

The programs for A135354, there is no canonical definition to state claims against.
-/

/-! ## A135354.P662910649057048888

`gcd(A000142(n), A043302(A128918(n)))`
-/

namespace A135354.P662910649057048888
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000142 n) (A043302 (A128918 n).toNat)

end

end A135354.P662910649057048888

/-! ## A135354.P12380736355868677781

`lcm(A049606(A093178(n)), A130479(n))`
-/

namespace A135354.P12380736355868677781
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A049606 (A093178 n).toNat) (A130479 n)

end

end A135354.P12380736355868677781

/-! ## A135354.P6204722779855000671

`gcd(A009006(A187829(n+1)), A099617(n))`
-/

namespace A135354.P6204722779855000671
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A009006 (A187829 (n + 1)).toNat) (A099617 n)

end

end A135354.P6204722779855000671

/-! ## A135354.P15866227956842435613

`lcm(A004732(n), A093178(A099617(n)))`
-/

namespace A135354.P15866227956842435613
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A004732 n) (A093178 (A099617 n).toNat)

end

end A135354.P15866227956842435613

/-! ## A135354.P16988409592204822038

`gcd(A000027(A000142(n)), A128524(n+3))`
-/

namespace A135354.P16988409592204822038
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000027 (A000142 n).toNat) (A128524 (n + 3))

end

end A135354.P16988409592204822038

/-!
# A135355: Semiprimes with digits in ascending order.

The programs for A135355, the canonical program `A135355.P7944071059546346058` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135355 has offset 1).

The definition of A135355 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 131 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A135355.P3376642164090075364

`∩[A009993(n+1), A108634(n+1)]`
-/

namespace A135355.P3376642164090075364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009993 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108634 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A135355.P3376642164090075364

namespace A135355

/-- `∩[A009993(n+1), A108634(n+1)]` -/
def P3376642164090075364.Spec : Prop :=
  ∀ n, (P3376642164090075364.a n : ℤ) = A135355 (n + 1)

end A135355

/-! ## A135355.P6511479254081321517

`∩[A108634(n+1), A179308(n+1)]`
-/

namespace A135355.P6511479254081321517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108634 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179308 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A135355.P6511479254081321517

namespace A135355

/-- `∩[A108634(n+1), A179308(n+1)]` -/
def P6511479254081321517.Spec : Prop :=
  ∀ n, (P6511479254081321517.a n : ℤ) = A135355 (n + 1)

end A135355

/-! ## A135355.P7915757251757514256

`∩[A108634(n+1), A211771(n+1)]`
-/

namespace A135355.P7915757251757514256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108634 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211771 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A135355.P7915757251757514256

namespace A135355

/-- `∩[A108634(n+1), A211771(n+1)]` -/
def P7915757251757514256.Spec : Prop :=
  ∀ n, (P7915757251757514256.a n : ℤ) = A135355 (n + 1)

end A135355

/-! ## A135355.P8596354490780458260

`∩[A009993(n+1), A320969(n+1)]`
-/

namespace A135355.P8596354490780458260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009993 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320969 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A135355.P8596354490780458260

namespace A135355

/-- `∩[A009993(n+1), A320969(n+1)]` -/
def P8596354490780458260.Spec : Prop :=
  ∀ n, (P8596354490780458260.a n : ℤ) = A135355 (n + 1)

end A135355

/-! ## A135355.P7330542762986594440

`∩[A009994(n+1), A320969(n+1)]`
-/

namespace A135355.P7330542762986594440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009994 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320969 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A135355.P7330542762986594440

namespace A135355

/-- `∩[A009994(n+1), A320969(n+1)]` -/
def P7330542762986594440.Spec : Prop :=
  ∀ n, (P7330542762986594440.a n : ℤ) = A135355 (n + 1)

end A135355

/-! ## A135355.P15403196620774397664

`∩[A108634(n+1), A320969(n+1)]`
-/

namespace A135355.P15403196620774397664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108634 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320969 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A135355.P15403196620774397664

namespace A135355

/-- `∩[A108634(n+1), A320969(n+1)]` -/
def P15403196620774397664.Spec : Prop :=
  ∀ n, (P15403196620774397664.a n : ℤ) = A135355 (n + 1)

end A135355

/-! ## A135355.P1305832637275427128

`∩[A211771(n+1), A320969(n+1)]`
-/

namespace A135355.P1305832637275427128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211771 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320969 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A135355.P1305832637275427128

namespace A135355

/-- `∩[A211771(n+1), A320969(n+1)]` -/
def P1305832637275427128.Spec : Prop :=
  ∀ n, (P1305832637275427128.a n : ℤ) = A135355 (n + 1)

end A135355

/-! ## A135355.P12135082414866901798

`filter[A211771(n+1), A064911(#)]`
-/

namespace A135355.P12135082414866901798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211771 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A135355.P12135082414866901798

namespace A135355

/-- `filter[A211771(n+1), A064911(#)]` -/
def P12135082414866901798.Spec : Prop :=
  ∀ n, P12135082414866901798.a n = A135355 (n + 1)

end A135355

/-! ## A135355.P17121008378050728682

`filter[A211771(n+1), A101040(#)]`
-/

namespace A135355.P17121008378050728682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211771 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101040 (f1 j).toNat = 1) n)

end

end A135355.P17121008378050728682

namespace A135355

/-- `filter[A211771(n+1), A101040(#)]` -/
def P17121008378050728682.Spec : Prop :=
  ∀ n, P17121008378050728682.a n = A135355 (n + 1)

end A135355

/-! ## A135355.P7944071059546346058

`filter[A009993(n+2), A064911(#)]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A135355

/-- `filter[A009993(n+2), A064911(#)]` -/
def P7944071059546346058.Spec : Prop :=
  ∀ n, P7944071059546346058.a n = A135355 (n + 1)

theorem P7944071059546346058.correct : P7944071059546346058.Spec := by
  intro n
  simp only [A135355, Nat.add_sub_cancel]

end A135355

/-! ## A135355.P15638981562747768307

`∩[A001358(n+1), A009993(n+1)]`
-/

namespace A135355.P15638981562747768307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009993 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A135355.P15638981562747768307

namespace A135355

/-- `∩[A001358(n+1), A009993(n+1)]` -/
def P15638981562747768307.Spec : Prop :=
  ∀ n, (P15638981562747768307.a n : ℤ) = A135355 (n + 1)

end A135355

/-! ## A135355.P11043727955292456770

`∩[A001358(n+1), A211771(n+1)]`
-/

namespace A135355.P11043727955292456770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211771 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A135355.P11043727955292456770

namespace A135355

/-- `∩[A001358(n+1), A211771(n+1)]` -/
def P11043727955292456770.Spec : Prop :=
  ∀ n, (P11043727955292456770.a n : ℤ) = A135355 (n + 1)

end A135355

/-! ## A135355.P16716753767726716752

`∩[A009993(n+1), A112381(n+1)]`
-/

namespace A135355.P16716753767726716752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009993 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112381 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A135355.P16716753767726716752

namespace A135355

/-- `∩[A009993(n+1), A112381(n+1)]` -/
def P16716753767726716752.Spec : Prop :=
  ∀ n, (P16716753767726716752.a n : ℤ) = A135355 (n + 1)

end A135355

/-! ## A135355.P10089650431642885751

`∩[A112381(n+1), A179308(n+1)]`
-/

namespace A135355.P10089650431642885751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112381 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179308 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A135355.P10089650431642885751

namespace A135355

/-- `∩[A112381(n+1), A179308(n+1)]` -/
def P10089650431642885751.Spec : Prop :=
  ∀ n, (P10089650431642885751.a n : ℤ) = A135355 (n + 1)

end A135355

/-! ## A135355.P9810887224619256446

`∩[A112381(n+1), A211771(n+1)]`
-/

namespace A135355.P9810887224619256446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112381 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211771 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A135355.P9810887224619256446

namespace A135355

/-- `∩[A112381(n+1), A211771(n+1)]` -/
def P9810887224619256446.Spec : Prop :=
  ∀ n, (P9810887224619256446.a n : ℤ) = A135355 (n + 1)

end A135355

/-! ## A135355.P14642455708121257430

`∩[A010784(n+1), A108634(n+1)]`
-/

namespace A135355.P14642455708121257430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010784 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108634 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A135355.P14642455708121257430

namespace A135355

/-- `∩[A010784(n+1), A108634(n+1)]` -/
def P14642455708121257430.Spec : Prop :=
  ∀ n, (P14642455708121257430.a n : ℤ) = A135355 (n + 1)

end A135355

/-! ## A135355.P9869616537974515220

`∩[A108634(n+1), A210441(n+1)]`
-/

namespace A135355.P9869616537974515220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108634 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210441 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A135355.P9869616537974515220

namespace A135355

/-- `∩[A108634(n+1), A210441(n+1)]` -/
def P9869616537974515220.Spec : Prop :=
  ∀ n, (P9869616537974515220.a n : ℤ) = A135355 (n + 1)

end A135355

/-! ## A135355.P3254311146964306292

`∩[A043096(n+1), A108634(n+1)]`
-/

namespace A135355.P3254311146964306292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043096 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108634 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A135355.P3254311146964306292

namespace A135355

/-- `∩[A043096(n+1), A108634(n+1)]` -/
def P3254311146964306292.Spec : Prop :=
  ∀ n, (P3254311146964306292.a n : ℤ) = A135355 (n + 1)

end A135355

/-!
# A135356: Triangle T(n,k) read by rows: coefficients in the recurrence of sequences which equal their n-th differences.

The programs for A135356, the canonical program `A135356.P12448169041983576144` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135356 has offset 1).

The definition of A135356 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A135356.P1032640894803214928

`A097806(n)-Δ[A277078(n)]`
-/

namespace A135356.P1032640894803214928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277078 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097806 n - (f1 (n + 1) - f1 n)

end

end A135356.P1032640894803214928

namespace A135356

/-- `A097806(n)-Δ[A277078(n)]` -/
def P1032640894803214928.Spec : Prop :=
  ∀ n, P1032640894803214928.a n = A135356 (n + 1)

end A135356

/-! ## A135356.P12448169041983576144

`Δ[A130595(n)]*A033999(A002024(n+1))`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A135356

/-- `Δ[A130595(n)]*A033999(A002024(n+1))` -/
def P12448169041983576144.Spec : Prop :=
  ∀ n, P12448169041983576144.a n = A135356 (n + 1)

theorem P12448169041983576144.correct : P12448169041983576144.Spec := by
  intro n
  simp only [A135356, Nat.add_sub_cancel]

end A135356

/-! ## A135356.P292538596366698240

`Δ[A130595(n)]*A165326(A003057(n+2))`
-/

namespace A135356.P292538596366698240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130595 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A165326 (A003057 (n + 2)).toNat

end

end A135356.P292538596366698240

namespace A135356

/-- `Δ[A130595(n)]*A165326(A003057(n+2))` -/
def P292538596366698240.Spec : Prop :=
  ∀ n, P292538596366698240.a n = A135356 (n + 1)

end A135356

/-! ## A135356.P11578066203580263201

`-A091917(A099375(n)+n)`
-/

namespace A135356.P11578066203580263201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A091917 (A099375 n + (n : ℤ)).toNat

end

end A135356.P11578066203580263201

namespace A135356

/-- `-A091917(A099375(n)+n)` -/
def P11578066203580263201.Spec : Prop :=
  ∀ n, P11578066203580263201.a n = A135356 (n + 1)

end A135356

/-! ## A135356.P13888193492806690317

`-A091917(A061579(n)+A002024(n+1))`
-/

namespace A135356.P13888193492806690317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A091917 (A061579 n + A002024 (n + 1)).toNat

end

end A135356.P13888193492806690317

namespace A135356

/-- `-A091917(A061579(n)+A002024(n+1))` -/
def P13888193492806690317.Spec : Prop :=
  ∀ n, P13888193492806690317.a n = A135356 (n + 1)

end A135356

/-! ## A135356.P16361182734454880044

`Δ[A130595(n)]*A130595(A127739(n+1))`
-/

namespace A135356.P16361182734454880044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130595 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A130595 (A127739 (n + 1)).toNat

end

end A135356.P16361182734454880044

namespace A135356

/-- `Δ[A130595(n)]*A130595(A127739(n+1))` -/
def P16361182734454880044.Spec : Prop :=
  ∀ n, P16361182734454880044.a n = A135356 (n + 1)

end A135356

/-! ## A135356.P12084387471666074695

`Δ[A131507(n)-A130595(A061579(n))]`
-/

namespace A135356.P12084387471666074695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131507 n - A130595 (A061579 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A135356.P12084387471666074695

namespace A135356

/-- `Δ[A131507(n)-A130595(A061579(n))]` -/
def P12084387471666074695.Spec : Prop :=
  ∀ n, P12084387471666074695.a n = A135356 (n + 1)

end A135356

/-! ## A135356.P4083437577659087887

`Δ[A111650(n+1)-A130595(A061579(n))]`
-/

namespace A135356.P4083437577659087887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111650 (n + 1) - A130595 (A061579 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A135356.P4083437577659087887

namespace A135356

/-- `Δ[A111650(n+1)-A130595(A061579(n))]` -/
def P4083437577659087887.Spec : Prop :=
  ∀ n, P4083437577659087887.a n = A135356 (n + 1)

end A135356

/-! ## A135356.P987021538649280216

`-A091917(A061579(A014132(n+1)))`
-/

namespace A135356.P987021538649280216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A091917 (A061579 (A014132 (n + 1)).toNat).toNat

end

end A135356.P987021538649280216

namespace A135356

/-- `-A091917(A061579(A014132(n+1)))` -/
def P987021538649280216.Spec : Prop :=
  ∀ n, P987021538649280216.a n = A135356 (n + 1)

end A135356

/-! ## A135356.P14757013266785461840

`A140575(A380649(n+1))`
-/

namespace A135356.P14757013266785461840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140575 (A380649 (n + 1)).toNat

end

end A135356.P14757013266785461840

namespace A135356

/-- `A140575(A380649(n+1))` -/
def P14757013266785461840.Spec : Prop :=
  ∀ n, P14757013266785461840.a n = A135356 (n + 1)

end A135356

/-!
# A135358: Numbers k such that 7^k and 7^(k+1) have the same number of decimal digits.

The programs for A135358, there is no canonical definition to state claims against.
-/

/-! ## A135358.P13202741048894032241

`A070939(A174522(2*n))+A016969(n)`
-/

namespace A135358.P13202741048894032241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A174522 (2 * n)).toNat + A016969 n

end

end A135358.P13202741048894032241

/-! ## A135358.P15033882337838336813

`A348610(A000040(n+1))+A186228(2*n+2)`
-/

namespace A135358.P15033882337838336813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348610 (A000040 (n + 1)).toNat + A186228 (2 * n + 2)

end

end A135358.P15033882337838336813

/-! ## A135358.P15379091150213650372

`A186238(2*n+2)+A057427(A093765(n+1))`
-/

namespace A135358.P15379091150213650372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186238 (2 * n + 2) + A057427 (A093765 (n + 1)).toNat

end

end A135358.P15379091150213650372

/-!
# A135359: a(n) is the smallest nonnegative number k such that n divides 2^k-k.

The programs for A135359, there is no canonical definition to state claims against.
-/

/-! ## A135359.P8358970885175397537

`A072872(n+1)%(n+1)²`
-/

namespace A135359.P8358970885175397537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072872 (n + 1)) ((n + 1) ^ 2 : ℤ)

end

end A135359.P8358970885175397537

/-! ## A135359.P5355521876762463073

`A087156(A072872(n+1))`
-/

namespace A135359.P5355521876762463073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087156 (A072872 (n + 1)).toNat

end

end A135359.P5355521876762463073

/-! ## A135359.P7464126805475660669

`A072872(n+1)-A000007(n)`
-/

namespace A135359.P7464126805475660669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072872 (n + 1) - A000007 n

end

end A135359.P7464126805475660669

/-! ## A135359.P14060421193240774930

`A057427(n)*A072872(n+1)`
-/

namespace A135359.P14060421193240774930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A072872 (n + 1)

end

end A135359.P14060421193240774930

/-! ## A135359.P4103569015691451160

`and(A057428(n), A072872(n+1))`
-/

namespace A135359.P4103569015691451160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057428 n) (A072872 (n + 1))

end

end A135359.P4103569015691451160

/-! ## A135359.P17811349700804414341

`A072872(n+1)-C(2, A178242(n))`
-/

namespace A135359.P17811349700804414341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072872 (n + 1) - (Nat.choose 2 (A178242 n).toNat : ℤ)

end

end A135359.P17811349700804414341

/-! ## A135359.P5433552694827228374

`A000931(C(3, n²))*A072872(n+1)`
-/

namespace A135359.P5433552694827228374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 (Nat.choose 3 (n ^ 2)) * A072872 (n + 1)

end

end A135359.P5433552694827228374

/-! ## A135359.P1873305564904456873

`A072872(n+1)+A135366(n+1)-A247248(n+1)`
-/

namespace A135359.P1873305564904456873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072872 (n + 1) + (A135366 (n + 1) - A247248 (n + 1))

end

end A135359.P1873305564904456873

/-! ## A135359.P2443884565011147645

`A000007(A000007(n)*A072872(n+1))*A072872(n+1)`
-/

namespace A135359.P2443884565011147645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A000007 n * A072872 (n + 1)).toNat * A072872 (n + 1)

end

end A135359.P2443884565011147645

/-! ## A135359.P9408530184244781581

`A072872(n+1)-C(n, A135541(n))`
-/

namespace A135359.P9408530184244781581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072872 (n + 1) - (Nat.choose n (A135541 n).toNat : ℤ)

end

end A135359.P9408530184244781581

/-! ## A135359.P5301986435596503470

`and(A072872(n+1), A118883(n+1))`
-/

namespace A135359.P5301986435596503470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A072872 (n + 1)) (A118883 (n + 1))

end

end A135359.P5301986435596503470

/-! ## A135359.P16720949900571868359

`and(1, A278477(n+1))*A072872(n+1)`
-/

namespace A135359.P16720949900571868359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A278477 (n + 1)) * A072872 (n + 1)

end

end A135359.P16720949900571868359

/-! ## A135359.P5444277801249658720

`and(A024036(n), A072872(n+1))`
-/

namespace A135359.P5444277801249658720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A024036 n) (A072872 (n + 1))

end

end A135359.P5444277801249658720

/-! ## A135359.P142603848206539047

`and(A072872(n+1), A130567(n+1))`
-/

namespace A135359.P142603848206539047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A072872 (n + 1)) (A130567 (n + 1))

end

end A135359.P142603848206539047

/-! ## A135359.P5615260832538494024

`and(A072872(n+1), A389172(n+1))`
-/

namespace A135359.P5615260832538494024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A072872 (n + 1)) (A389172 (n + 1))

end

end A135359.P5615260832538494024

/-! ## A135359.P16915260020493038456

`and(A072872(n+1), A198693(n))`
-/

namespace A135359.P16915260020493038456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A072872 (n + 1)) (A198693 n)

end

end A135359.P16915260020493038456

/-! ## A135359.P13781836824536114851

`and(A072872(n+1), A114569(n))`
-/

namespace A135359.P13781836824536114851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A072872 (n + 1)) (A114569 n)

end

end A135359.P13781836824536114851

/-! ## A135359.P8125397395667034349

`and(A072872(n+1), A156760(n))`
-/

namespace A135359.P8125397395667034349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A072872 (n + 1)) (A156760 n)

end

end A135359.P8125397395667034349

/-! ## A135359.P9708271843821317555

`and(A072872(n+1), A198694(n))`
-/

namespace A135359.P9708271843821317555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A072872 (n + 1)) (A198694 n)

end

end A135359.P9708271843821317555

/-! ## A135359.P17917565288098732288

`and(A072872(n+1), A198695(n))`
-/

namespace A135359.P17917565288098732288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A072872 (n + 1)) (A198695 n)

end

end A135359.P17917565288098732288

/-!
# A135360: a(n) = 4*a(n-1) - 6*a(n-2) + 4*a(n-3) for n > 4, with first terms 1, 2, 4, 7.

The programs for A135360, the canonical program `A135360.P7792133165398640351` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135360 has offset 0).

The definition of A135360 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*a(n-1)-6*a(n-2)+4*a(n-3)` (program `A135360.P7792133165398640351`, by `A135360.P7792133165398640351.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A135360.P7792133165398640351

`4*a(n-1)-6*a(n-2)+4*a(n-3)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=7`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A135360

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)` -/
def P7792133165398640351.Spec : Prop :=
  ∀ n, P7792133165398640351.a n = A135360 n

theorem P7792133165398640351.correct : P7792133165398640351.Spec := by
  intro n
  simp only [A135360]

end A135360

/-! ## A135360.P11748896527775117835

`ogf((1-2x+2x^2-x^3)/(1-4x+6x^2-4x^3))`
-/

namespace A135360.P11748896527775117835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, 2, -1] [1, -4, 6, -4] n

end

end A135360.P11748896527775117835

namespace A135360

/-- `ogf((1-2x+2x^2-x^3)/(1-4x+6x^2-4x^3))` -/
def P11748896527775117835.Spec : Prop :=
  ∀ n, P11748896527775117835.a n = A135360 n

end A135360

/-! ## A135360.P8793007849752035052

`2^n-A000749(n)`
-/

namespace A135360.P8793007849752035052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A000749 n

end

end A135360.P8793007849752035052

namespace A135360

/-- `2^n-A000749(n)` -/
def P8793007849752035052.Spec : Prop :=
  ∀ n, P8793007849752035052.a n = A135360 n

end A135360

/-! ## A135360.P18092073792921858609

`A038504(n)+A011782(n)`
-/

namespace A135360.P18092073792921858609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038504 n + A011782 n

end

end A135360.P18092073792921858609

namespace A135360

/-- `A038504(n)+A011782(n)` -/
def P18092073792921858609.Spec : Prop :=
  ∀ n, P18092073792921858609.a n = A135360 n

end A135360

/-! ## A135360.P841857518829484128

`A038503(n)+∑[A038504(n)]`
-/

namespace A135360.P841857518829484128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038503 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135360.P841857518829484128

namespace A135360

/-- `A038503(n)+∑[A038504(n)]` -/
def P841857518829484128.Spec : Prop :=
  ∀ n, P841857518829484128.a n = A135360 n

end A135360

/-! ## A135360.P2851740836278855646

`A038505(n)+∑[A038503(n)]`
-/

namespace A135360.P2851740836278855646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038503 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038505 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135360.P2851740836278855646

namespace A135360

/-- `A038505(n)+∑[A038503(n)]` -/
def P2851740836278855646.Spec : Prop :=
  ∀ n, P2851740836278855646.a n = A135360 n

end A135360

/-! ## A135360.P8816744351463417889

`A038505(n+1)+A038503(n)`
-/

namespace A135360.P8816744351463417889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038505 (n + 1) + A038503 n

end

end A135360.P8816744351463417889

namespace A135360

/-- `A038505(n+1)+A038503(n)` -/
def P8816744351463417889.Spec : Prop :=
  ∀ n, P8816744351463417889.a n = A135360 n

end A135360

/-! ## A135360.P3319142628255984740

`A038505(n)+A038504(n+1)`
-/

namespace A135360.P3319142628255984740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038505 n + A038504 (n + 1)

end

end A135360.P3319142628255984740

namespace A135360

/-- `A038505(n)+A038504(n+1)` -/
def P3319142628255984740.Spec : Prop :=
  ∀ n, P3319142628255984740.a n = A135360 n

end A135360

/-! ## A135360.P14931131336457031320

`A000051(n)-(A000749(n)+1)`
-/

namespace A135360.P14931131336457031320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n - (A000749 n + 1)

end

end A135360.P14931131336457031320

namespace A135360

/-- `A000051(n)-(A000749(n)+1)` -/
def P14931131336457031320.Spec : Prop :=
  ∀ n, P14931131336457031320.a n = A135360 n

end A135360

/-! ## A135360.P12123325001635841891

`A000225(n)+1-A000749(n)`
-/

namespace A135360.P12123325001635841891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n + (1 - A000749 n)

end

end A135360.P12123325001635841891

namespace A135360

/-- `A000225(n)+1-A000749(n)` -/
def P12123325001635841891.Spec : Prop :=
  ∀ n, P12123325001635841891.a n = A135360 n

end A135360

/-! ## A135360.P15177293310530682157

`A137776(2*n)+A011782(n)`
-/

namespace A135360.P15177293310530682157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137776 (2 * n) + A011782 n

end

end A135360.P15177293310530682157

namespace A135360

/-- `A137776(2*n)+A011782(n)` -/
def P15177293310530682157.Spec : Prop :=
  ∀ n, P15177293310530682157.a n = A135360 n

end A135360

/-! ## A135360.P10338555456844377387

`A000079(n)-A138569(2*n)`
-/

namespace A135360.P10338555456844377387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - A138569 (2 * n)

end

end A135360.P10338555456844377387

namespace A135360

/-- `A000079(n)-A138569(2*n)` -/
def P10338555456844377387.Spec : Prop :=
  ∀ n, P10338555456844377387.a n = A135360 n

end A135360

/-! ## A135360.P2538115791420019872

`ceil(A038504(n)+A000079(n)/2)`
-/

namespace A135360.P2538115791420019872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A038504 n : ℚ) + (A000079 n : ℚ) / 2⌉

end

end A135360.P2538115791420019872

namespace A135360

/-- `ceil(A038504(n)+A000079(n)/2)` -/
def P2538115791420019872.Spec : Prop :=
  ∀ n, P2538115791420019872.a n = A135360 n

end A135360

/-! ## A135360.P1935803090601051213

`∑[A038504(n+1)]-A038504(n)`
-/

namespace A135360.P1935803090601051213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038504 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A038504 n

end

end A135360.P1935803090601051213

namespace A135360

/-- `∑[A038504(n+1)]-A038504(n)` -/
def P1935803090601051213.Spec : Prop :=
  ∀ n, P1935803090601051213.a n = A135360 n

end A135360

/-! ## A135360.P10696148751086011983

`A038505(n)+Δ[A038505(n+1)]`
-/

namespace A135360.P10696148751086011983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038505 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038505 n + (f1 (n + 1) - f1 n)

end

end A135360.P10696148751086011983

namespace A135360

/-- `A038505(n)+Δ[A038505(n+1)]` -/
def P10696148751086011983.Spec : Prop :=
  ∀ n, P10696148751086011983.a n = A135360 n

end A135360

/-! ## A135360.P10858733016539173834

`A158780(2*n+1)+A038504(n)`
-/

namespace A135360.P10858733016539173834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158780 (2 * n + 1) + A038504 n

end

end A135360.P10858733016539173834

namespace A135360

/-- `A158780(2*n+1)+A038504(n)` -/
def P10858733016539173834.Spec : Prop :=
  ∀ n, P10858733016539173834.a n = A135360 n

end A135360

/-! ## A135360.P8370567721788810403

`A011782(n+1)-A138569(2*n)`
-/

namespace A135360.P8370567721788810403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (n + 1) - A138569 (2 * n)

end

end A135360.P8370567721788810403

namespace A135360

/-- `A011782(n+1)-A138569(2*n)` -/
def P8370567721788810403.Spec : Prop :=
  ∀ n, P8370567721788810403.a n = A135360 n

end A135360

/-! ## A135360.P8663000428886524103

`A131577(n+1)-A138569(2*n)`
-/

namespace A135360.P8663000428886524103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 (n + 1) - A138569 (2 * n)

end

end A135360.P8663000428886524103

namespace A135360

/-- `A131577(n+1)-A138569(2*n)` -/
def P8663000428886524103.Spec : Prop :=
  ∀ n, P8663000428886524103.a n = A135360 n

end A135360

/-! ## A135360.P10568358758436303676

`A038505(n+2)-A137776(2*n)`
-/

namespace A135360.P10568358758436303676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038505 (n + 2) - A137776 (2 * n)

end

end A135360.P10568358758436303676

namespace A135360

/-- `A038505(n+2)-A137776(2*n)` -/
def P10568358758436303676.Spec : Prop :=
  ∀ n, P10568358758436303676.a n = A135360 n

end A135360

/-! ## A135360.P1653200272803553762

`A158780(2*n+1)+A137776(2*n)`
-/

namespace A135360.P1653200272803553762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158780 (2 * n + 1) + A137776 (2 * n)

end

end A135360.P1653200272803553762

namespace A135360

/-- `A158780(2*n+1)+A137776(2*n)` -/
def P1653200272803553762.Spec : Prop :=
  ∀ n, P1653200272803553762.a n = A135360 n

end A135360

/-!
# A135361: a(n) = a(n-1)^3 + 1 with a(0) = 0.

The programs for A135361, the canonical program `A135361.P12185357490242723337` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135361 has offset 0).

The definition of A135361 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)^3+1` (program `A135361.P12185357490242723337`, by `A135361.P12185357490242723337.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A135361.P12185357490242723337

`a(n-1)^3+1` with `a(0)=0`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A135361

/-- `a(n-1)^3+1` -/
def P12185357490242723337.Spec : Prop :=
  ∀ n, (P12185357490242723337.a n : ℤ) = A135361 n

theorem P12185357490242723337.correct : P12185357490242723337.Spec := by
  intro n
  simp only [A135361]

end A135361

/-! ## A135361.P4506125818253511636

`1-(-a(n-1))^3` with `a(0)=0`
-/

namespace A135361.P4506125818253511636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  1 - (-a (n - 1)) ^ 3

end

end A135361.P4506125818253511636

namespace A135361

/-- `1-(-a(n-1))^3` -/
def P4506125818253511636.Spec : Prop :=
  ∀ n, P4506125818253511636.a n = A135361 n

end A135361

/-! ## A135361.P5833586342026852149

`or(2, a(n-1)^3)-1` with `a(0)=0`
-/

namespace A135361.P5833586342026852149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.lor 2 (a (n - 1) ^ 3) - 1

end

end A135361.P5833586342026852149

namespace A135361

/-- `or(2, a(n-1)^3)-1` -/
def P5833586342026852149.Spec : Prop :=
  ∀ n, P5833586342026852149.a n = A135361 n

end A135361

/-! ## A135361.P463738196519975660

`xor(2, a(n-1)^3)-1` with `a(0)=0`
-/

namespace A135361.P463738196519975660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.xor 2 (a (n - 1) ^ 3) - 1

end

end A135361.P463738196519975660

namespace A135361

/-- `xor(2, a(n-1)^3)-1` -/
def P463738196519975660.Spec : Prop :=
  ∀ n, P463738196519975660.a n = A135361 n

end A135361

/-!
# A135362: Index of the Hecke algebra in its saturation in End(J_0(n)).

The programs for A135362, there is no canonical definition to state claims against.
-/

/-! ## A135362.P11187827091660513125

`A306684(A358991(n+4))^A173018(n)`
-/

namespace A135362.P11187827091660513125
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A306684 (A358991 (n + 4)).toNat : ℚ) ^ (A173018 n : ℤ)

end

end A135362.P11187827091660513125

/-! ## A135362.P9357671864397243943

`A036846(A033461(2*(n+2))%A101281(n)+1)`
-/

namespace A135362.P9357671864397243943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036846 (Int.tmod (A033461 (2 * (n + 2))) (A101281 n) + 1).toNat

end

end A135362.P9357671864397243943

/-! ## A135362.P12288738095022664498

`gcd(A127601(A339367(2*(n+2))), A277759(n))`
-/

namespace A135362.P12288738095022664498
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A127601 (A339367 (2 * (n + 2))).toNat) (A277759 n)

end

end A135362.P12288738095022664498

/-! ## A135362.P11996192963979701891

`A036846(A033461(2*(n+2))+1)%A297570(n+4)`
-/

namespace A135362.P11996192963979701891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A036846 (A033461 (2 * (n + 2)) + 1).toNat) (A297570 (n + 4))

end

end A135362.P11996192963979701891

/-! ## A135362.P16359023786879811877

`A334924((A083847(n+1)+a(n-1))%n+1)` with `a(0)=1`
-/

namespace A135362.P16359023786879811877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A334924 (Int.tmod (A083847 (n + 1) + a (n - 1)) (n : ℤ) + 1).toNat

end

end A135362.P16359023786879811877

/-! ## A135362.P14665606190454675328

`A208879(C(A284272(n), A208879(n)))`
-/

namespace A135362.P14665606190454675328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208879 (Nat.choose (A284272 n).toNat (A208879 n).toNat)

end

end A135362.P14665606190454675328

/-! ## A135362.P11120104890202551056

`gcd(A248558(A278222(n)), A348969(n+1))`
-/

namespace A135362.P11120104890202551056
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A248558 (A278222 n).toNat) (A348969 (n + 1))

end

end A135362.P11120104890202551056

/-! ## A135362.P14917188452688359201

`A014963(gcd(A216718(n+2), A216764(n)))`
-/

namespace A135362.P14917188452688359201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (Int.gcd (A216718 (n + 2)) (A216764 n))

end

end A135362.P14917188452688359201

/-! ## A135362.P2541990826240986047

`2^C(A348890(2*n), 9)`
-/

namespace A135362.P2541990826240986047
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ Nat.choose (A348890 (2 * n)).toNat 9

end

end A135362.P2541990826240986047

/-! ## A135362.P9817354326526838702

`round(atan(A347917(lcm(2, n)+n%2)))`
-/

namespace A135362.P9817354326526838702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.arctan (A347917 (Nat.lcm 2 n + n % 2) : ℝ))

end

end A135362.P9817354326526838702

/-!
# A135363: Sums of two or more consecutive semiprimes.

The programs for A135363, there is no canonical definition to state claims against.
-/

/-! ## A135363.P15936579637891164732

`lt[char[A001358(n+1)], A186336(n)]`
-/

namespace A135363.P15936579637891164732
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186336 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n

end

end A135363.P15936579637891164732

/-! ## A135363.P7118375652473605725

`lt[char[A179312(n+1)], A186336(n)]`
-/

namespace A135363.P7118375652473605725
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179312 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186336 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n

end

end A135363.P7118375652473605725

/-! ## A135363.P412318393903272899

`lt[char[A186621(n+1)+1], A186336(n)]`
-/

namespace A135363.P412318393903272899
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186621 (n + 1) + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186336 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n

end

end A135363.P412318393903272899

/-! ## A135363.P16108951808984952801

`lt[char[A175708(n+1)+1+n], A186336(n)]`
-/

namespace A135363.P16108951808984952801
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175708 (n + 1) + 1 + (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186336 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n

end

end A135363.P16108951808984952801

/-!
# A135364: First column of a triangle - see Comments lines.

The programs for A135364, the canonical program `A135364.P6982887750509220026` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135364 has offset 0).

The definition of A135364 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 274 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A135364.P15359680529372283036

`ogf((1-x-x^2+x^3)/(1-3x+2x^2-x^3))`
-/

namespace A135364.P15359680529372283036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, -1, 1] [1, -3, 2, -1] n

end

end A135364.P15359680529372283036

namespace A135364

/-- `ogf((1-x-x^2+x^3)/(1-3x+2x^2-x^3))` -/
def P15359680529372283036.Spec : Prop :=
  ∀ n, P15359680529372283036.a n = A135364 n

end A135364

/-! ## A135364.P6982887750509220026

`∑[A159347(n)]`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A135364

/-- `∑[A159347(n)]` -/
def P6982887750509220026.Spec : Prop :=
  ∀ n, P6982887750509220026.a n = A135364 n

theorem P6982887750509220026.correct : P6982887750509220026.Spec := by
  intro n
  simp only [A135364]

end A135364

/-! ## A135364.P18097463580580057140

`A137531(n-2)+a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A135364.P18097463580580057140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A137531 (n - 2) + a (n - 1)

end

end A135364.P18097463580580057140

namespace A135364

/-- `A137531(n-2)+a(n-1)` -/
def P18097463580580057140.Spec : Prop :=
  ∀ n, P18097463580580057140.a n = A135364 n

end A135364

/-! ## A135364.P14455906228007621439

`A159347(char[1]+n)+a(n-1)` with `a(0)=1`
-/

namespace A135364.P14455906228007621439
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A159347 ((if ∃ j, f1 j = n then 1 else 0) + n) + a (n - 1)

end

end A135364.P14455906228007621439

namespace A135364

/-- `A159347(char[1]+n)+a(n-1)` -/
def P14455906228007621439.Spec : Prop :=
  ∀ n, P14455906228007621439.a n = A135364 n

end A135364

/-! ## A135364.P8947831438394389045

`∑[A137531(A289207(n))]`
-/

namespace A135364.P8947831438394389045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137531 (A289207 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135364.P8947831438394389045

namespace A135364

/-- `∑[A137531(A289207(n))]` -/
def P8947831438394389045.Spec : Prop :=
  ∀ n, P8947831438394389045.a n = A135364 n

end A135364

/-! ## A135364.P11372693685362318030

`∑[A137531(A004275(n)-n)]`
-/

namespace A135364.P11372693685362318030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137531 (A004275 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135364.P11372693685362318030

namespace A135364

/-- `∑[A137531(A004275(n)-n)]` -/
def P11372693685362318030.Spec : Prop :=
  ∀ n, P11372693685362318030.a n = A135364 n

end A135364

/-! ## A135364.P8723388106354262306

`A034943(n+1)+A034943(n)-A000007(n)`
-/

namespace A135364.P8723388106354262306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034943 (n + 1) + (A034943 n - A000007 n)

end

end A135364.P8723388106354262306

namespace A135364

/-- `A034943(n+1)+A034943(n)-A000007(n)` -/
def P8723388106354262306.Spec : Prop :=
  ∀ n, P8723388106354262306.a n = A135364 n

end A135364

/-! ## A135364.P16553646268206331950

`∑[A159340(n)-A034943(n+2)]`
-/

namespace A135364.P16553646268206331950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159340 n - A034943 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135364.P16553646268206331950

namespace A135364

/-- `∑[A159340(n)-A034943(n+2)]` -/
def P16553646268206331950.Spec : Prop :=
  ∀ n, P16553646268206331950.a n = A135364 n

end A135364

/-! ## A135364.P10692020611001940738

`Δ[Δ[A159347(n)%A159347(n+1)]]`
-/

namespace A135364.P10692020611001940738
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A159347 n) (A159347 (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A135364.P10692020611001940738

namespace A135364

/-- `Δ[Δ[A159347(n)%A159347(n+1)]]` -/
def P10692020611001940738.Spec : Prop :=
  ∀ n, P10692020611001940738.a n = A135364 n

end A135364

/-! ## A135364.P12606496173528413281

`A034943(n+1)+A159328(n+1)-A159329(n+1)`
-/

namespace A135364.P12606496173528413281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034943 (n + 1) + (A159328 (n + 1) - A159329 (n + 1))

end

end A135364.P12606496173528413281

namespace A135364

/-- `A034943(n+1)+A159328(n+1)-A159329(n+1)` -/
def P12606496173528413281.Spec : Prop :=
  ∀ n, P12606496173528413281.a n = A135364 n

end A135364

/-!
# A135365: a(n) = 3*a(n-1) - a(n-3) + 3*a(n-4), with initial values 1,3,9,11.

The programs for A135365, the canonical program `A135365.P11752648547780758598` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135365 has offset 0).

The definition of A135365 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-1)-a(n-3)+3*a(n-4)` (program `A135365.P11752648547780758598`, by `A135365.P11752648547780758598.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A135365.P11752648547780758598

`3*a(n-1)-a(n-3)+3*a(n-4)` with `a(0)=1, a(1)=3, a(2)=9, a(3)=11`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A135365

/-- `3*a(n-1)-a(n-3)+3*a(n-4)` -/
def P11752648547780758598.Spec : Prop :=
  ∀ n, P11752648547780758598.a n = A135365 n

theorem P11752648547780758598.correct : P11752648547780758598.Spec := by
  intro n
  simp only [A135365]

end A135365

/-! ## A135365.P8436362147004355348

`A352016(∑[A144170(n)+A090344(n)])`
-/

namespace A135365.P8436362147004355348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144170 n + A090344 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352016 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A135365.P8436362147004355348

namespace A135365

/-- `A352016(∑[A144170(n)+A090344(n)])` -/
def P8436362147004355348.Spec : Prop :=
  ∀ n, P8436362147004355348.a n = A135365 n

end A135365

/-!
# A135366: a(n) is the smallest nonnegative k such that n divides 2^k + k.

The programs for A135366, there is no canonical definition to state claims against.
-/

/-! ## A135366.P13093538212487771020

`A247248(n+1)%∑[∑[∑[n+1]]]`
-/

namespace A135366.P13093538212487771020
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A247248 (n + 1)) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A135366.P13093538212487771020

/-! ## A135366.P5362752340430166207

`A247248(n+1)-A000007(n)`
-/

namespace A135366.P5362752340430166207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247248 (n + 1) - A000007 n

end

end A135366.P5362752340430166207

/-! ## A135366.P3655810820873329371

`A057427(n)*A247248(n+1)`
-/

namespace A135366.P3655810820873329371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A247248 (n + 1)

end

end A135366.P3655810820873329371

/-! ## A135366.P7909722756069928040

`and(A057428(n), A247248(n+1))`
-/

namespace A135366.P7909722756069928040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057428 n) (A247248 (n + 1))

end

end A135366.P7909722756069928040

/-! ## A135366.P10161723123582383643

`and(1, A000040(n+1))*A247248(n+1)`
-/

namespace A135366.P10161723123582383643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A000040 (n + 1)) * A247248 (n + 1)

end

end A135366.P10161723123582383643

/-! ## A135366.P17259811961491428066

`A247248(n+1)-char[A247212(3*n+2)]`
-/

namespace A135366.P17259811961491428066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247212 (3 * n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247248 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A135366.P17259811961491428066

/-! ## A135366.P16946045448325235643

`A135359(n+1)+A247248(n+1)-A072872(n+1)`
-/

namespace A135366.P16946045448325235643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135359 (n + 1) + (A247248 (n + 1) - A072872 (n + 1))

end

end A135366.P16946045448325235643

/-! ## A135366.P8974432456699238776

`A000007(A000007(n)*A247248(n+1))*A247248(n+1)`
-/

namespace A135366.P8974432456699238776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A000007 n * A247248 (n + 1)).toNat * A247248 (n + 1)

end

end A135366.P8974432456699238776

/-! ## A135366.P11783269153939677869

`and(1, A061712(n+1))*A247248(n+1)`
-/

namespace A135366.P11783269153939677869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A061712 (n + 1)) * A247248 (n + 1)

end

end A135366.P11783269153939677869

/-! ## A135366.P10326131816412224928

`and(A118883(n+1), A247248(n+1))`
-/

namespace A135366.P10326131816412224928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A118883 (n + 1)) (A247248 (n + 1))

end

end A135366.P10326131816412224928

/-! ## A135366.P3863917058441314504

`and(A087522(n), A247248(n+1))`
-/

namespace A135366.P3863917058441314504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A087522 n) (A247248 (n + 1))

end

end A135366.P3863917058441314504

/-! ## A135366.P1785621237507410274

`and(A127582(n), A247248(n+1))`
-/

namespace A135366.P1785621237507410274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A127582 n) (A247248 (n + 1))

end

end A135366.P1785621237507410274

/-! ## A135366.P8573192047148381541

`and(A087323(n), A247248(n+1))`
-/

namespace A135366.P8573192047148381541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A087323 n) (A247248 (n + 1))

end

end A135366.P8573192047148381541

/-! ## A135366.P13213660036117233539

`and(1, A278477(n+1))*A247248(n+1)`
-/

namespace A135366.P13213660036117233539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A278477 (n + 1)) * A247248 (n + 1)

end

end A135366.P13213660036117233539

/-! ## A135366.P14891290642959625526

`and(A024036(n), A247248(n+1))`
-/

namespace A135366.P14891290642959625526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A024036 n) (A247248 (n + 1))

end

end A135366.P14891290642959625526

/-! ## A135366.P2448670328586712470

`and(A130567(n+1), A247248(n+1))`
-/

namespace A135366.P2448670328586712470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A130567 (n + 1)) (A247248 (n + 1))

end

end A135366.P2448670328586712470

/-! ## A135366.P11977208619812703285

`and(A247248(n+1), A389172(n+1))`
-/

namespace A135366.P11977208619812703285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A247248 (n + 1)) (A389172 (n + 1))

end

end A135366.P11977208619812703285

/-! ## A135366.P2666077588592390931

`and(A198693(n), A247248(n+1))`
-/

namespace A135366.P2666077588592390931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A198693 n) (A247248 (n + 1))

end

end A135366.P2666077588592390931

/-! ## A135366.P8230514032525881653

`and(A114569(n), A247248(n+1))`
-/

namespace A135366.P8230514032525881653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A114569 n) (A247248 (n + 1))

end

end A135366.P8230514032525881653

/-! ## A135366.P5608967169273327896

`and(A156760(n), A247248(n+1))`
-/

namespace A135366.P5608967169273327896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A156760 n) (A247248 (n + 1))

end

end A135366.P5608967169273327896

/-!
# A135367: Not the sum of three perfect powers (assuming 1, but not 0, is a perfect power).

The programs for A135367, there is no canonical definition to state claims against.
-/

/-! ## A135367.P13179155307178948323

`∩[A135393(n+1), A135693(n+1)]`
-/

namespace A135367.P13179155307178948323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135393 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135693 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A135367.P13179155307178948323

/-! ## A135367.P13067255816509550508

`∩[A135578(n+1), A135693(n+1)]`
-/

namespace A135367.P13067255816509550508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135693 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A135367.P13067255816509550508

/-! ## A135367.P866229902795792788

`∩[A135579(n+1), A135693(n+1)]`
-/

namespace A135367.P866229902795792788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135579 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135693 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A135367.P866229902795792788

/-! ## A135367.P5941016333694739488

`lt[n*A282499(n), n]`
-/

namespace A135367.P5941016333694739488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A282499 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A135367.P5941016333694739488

/-! ## A135367.P1673592616198614476

`eq[A000007(n), A282499(n)]`
-/

namespace A135367.P1673592616198614476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282499 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A135367.P1673592616198614476

/-!
# A135368: a(n) = (nextprime(12*n) - previousprime(12*n))/2.

The programs for A135368, the canonical program `A135368.P3412412809127182481` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135368 has offset 1).

The definition of A135368 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A135368.P3412412809127182481

`A166597(12*(n+1))/2`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A135368

/-- `A166597(12*(n+1))/2` -/
def P3412412809127182481.Spec : Prop :=
  ∀ n, P3412412809127182481.a n = (A135368 (n + 1) : ℚ)

end A135368

/-! ## A135368.P5811991992358830906

`A001223(A000720(12*(n+1)))/2`
-/

namespace A135368.P5811991992358830906
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001223 (A000720 (12 * (n + 1))).toNat : ℚ) / 2

end

end A135368.P5811991992358830906

namespace A135368

/-- `A001223(A000720(12*(n+1)))/2` -/
def P5811991992358830906.Spec : Prop :=
  ∀ n, P5811991992358830906.a n = (A135368 (n + 1) : ℚ)

end A135368

/-! ## A135368.P17274302602595487651

`A072680(A008458(n+1)+A008458(n+1))/2`
-/

namespace A135368.P17274302602595487651
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A072680 (A008458 (n + 1) + A008458 (n + 1)).toNat : ℚ) / 2

end

end A135368.P17274302602595487651

namespace A135368

/-- `A072680(A008458(n+1)+A008458(n+1))/2` -/
def P17274302602595487651.Spec : Prop :=
  ∀ n, P17274302602595487651.a n = (A135368 (n + 1) : ℚ)

end A135368

/-! ## A135368.P4114464472898733892

`A116982(3*(n+1))/2`
-/

namespace A135368.P4114464472898733892
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A116982 (3 * (n + 1)) : ℚ) / 2

end

end A135368.P4114464472898733892

namespace A135368

/-- `A116982(3*(n+1))/2` -/
def P4114464472898733892.Spec : Prop :=
  ∀ n, P4114464472898733892.a n = (A135368 (n + 1) : ℚ)

end A135368

/-! ## A135368.P522087846347232418

`A060267(6*(n+1))/2`
-/

namespace A135368.P522087846347232418
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060267 (6 * (n + 1)) : ℚ) / 2

end

end A135368.P522087846347232418

namespace A135368

/-- `A060267(6*(n+1))/2` -/
def P522087846347232418.Spec : Prop :=
  ∀ n, P522087846347232418.a n = (A135368 (n + 1) : ℚ)

end A135368

/-! ## A135368.P17696569718046408968

`A033559(12*(n+1))`
-/

namespace A135368.P17696569718046408968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033559 (12 * (n + 1))

end

end A135368.P17696569718046408968

namespace A135368

/-- `A033559(12*(n+1))` -/
def P17696569718046408968.Spec : Prop :=
  ∀ n, P17696569718046408968.a n = A135368 (n + 1)

end A135368

/-! ## A135368.P10934976885841146011

`A135023(2*(n+1))`
-/

namespace A135368.P10934976885841146011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135023 (2 * (n + 1))

end

end A135368.P10934976885841146011

namespace A135368

/-- `A135023(2*(n+1))` -/
def P10934976885841146011.Spec : Prop :=
  ∀ n, P10934976885841146011.a n = A135368 (n + 1)

end A135368

/-!
# A135370: a(1)=1; then if n even a(n) = n + a(n-1), if n odd a(n) = 2*n + a(n-1).

The programs for A135370, the canonical program `A135370.P6878407678437270503` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135370 has offset 1).

The definition of A135370 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A135370.P6878407678437270503

`a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` with `a(0)=1, a(1)=3, a(2)=9, a(3)=13, a(4)=23`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A135370

/-- `a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` -/
def P6878407678437270503.Spec : Prop :=
  ∀ n, P6878407678437270503.a n = A135370 (n + 1)

theorem P6878407678437270503.correct : P6878407678437270503.Spec := by
  intro n
  simp only [A135370, Nat.add_sub_cancel]

end A135370

/-! ## A135370.P952275381148493877

`2*A001318(n+1)-1`
-/

namespace A135370.P952275381148493877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001318 (n + 1) - 1

end

end A135370.P952275381148493877

namespace A135370

/-- `2*A001318(n+1)-1` -/
def P952275381148493877.Spec : Prop :=
  ∀ n, P952275381148493877.a n = A135370 (n + 1)

end A135370

/-! ## A135370.P17513792865838278954

`∑[lcm(2, n+1)]-1`
-/

namespace A135370.P17513792865838278954
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A135370.P17513792865838278954

namespace A135370

/-- `∑[lcm(2, n+1)]-1` -/
def P17513792865838278954.Spec : Prop :=
  ∀ n, P17513792865838278954.a n = A135370 (n + 1)

end A135370

/-! ## A135370.P5962643610291036395

`∑[(n+1)*gcd(2, n)]-1`
-/

namespace A135370.P5962643610291036395
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * Nat.gcd 2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A135370.P5962643610291036395

namespace A135370

/-- `∑[(n+1)*gcd(2, n)]-1` -/
def P5962643610291036395.Spec : Prop :=
  ∀ n, P5962643610291036395.a n = A135370 (n + 1)

end A135370

/-! ## A135370.P16166818304816204194

`∑[C(xor(1, n), n)+n]+n`
-/

namespace A135370.P16166818304816204194
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.xor 1 n) n + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A135370.P16166818304816204194

namespace A135370

/-- `∑[C(xor(1, n), n)+n]+n` -/
def P16166818304816204194.Spec : Prop :=
  ∀ n, (P16166818304816204194.a n : ℤ) = A135370 (n + 1)

end A135370

/-! ## A135370.P7274963686567724240

`∑[sqrt(lcm(4, record[(1-n)²]))]-1`
-/

namespace A135370.P7274963686567724240
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) ^ 2

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Int.lcm 4 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A135370.P7274963686567724240

namespace A135370

/-- `∑[sqrt(lcm(4, record[(1-n)²]))]-1` -/
def P7274963686567724240.Spec : Prop :=
  ∀ n, P7274963686567724240.a n = (A135370 (n + 1) : ℝ)

end A135370

/-! ## A135370.P7712693442811961670

`∑[Δ[ceil(n/2)²]+n]+n`
-/

namespace A135370.P7712693442811961670
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 2⌉ ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A135370.P7712693442811961670

namespace A135370

/-- `∑[Δ[ceil(n/2)²]+n]+n` -/
def P7712693442811961670.Spec : Prop :=
  ∀ n, P7712693442811961670.a n = A135370 (n + 1)

end A135370

/-! ## A135370.P40512621023344500

`∑[(n+1)*a(∑[(-1)^n])]` with `a(0)=1`
-/

namespace A135370.P40512621023344500
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  (n + 1) * f1 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135370.P40512621023344500

namespace A135370

/-- `∑[(n+1)*a(∑[(-1)^n])]` -/
def P40512621023344500.Spec : Prop :=
  ∀ n, (P40512621023344500.a n : ℤ) = A135370 (n + 1)

end A135370

/-! ## A135370.P6371210729501598216

`∑[4/a(n-1)*∑[n]]` with `a(0)=1, a(1)=2`
-/

namespace A135370.P6371210729501598216
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  4 / f1 (n - 1) * ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135370.P6371210729501598216

namespace A135370

/-- `∑[4/a(n-1)*∑[n]]` -/
def P6371210729501598216.Spec : Prop :=
  ∀ n, P6371210729501598216.a n = (A135370 (n + 1) : ℚ)

end A135370

/-! ## A135370.P12570527231481759922

`∑[C(n+1, a(n-1))+n+1]` with `a(0)=1, a(1)=2`
-/

namespace A135370.P12570527231481759922
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  Nat.choose (n + 1) (f1 (n - 1)) + (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135370.P12570527231481759922

namespace A135370

/-- `∑[C(n+1, a(n-1))+n+1]` -/
def P12570527231481759922.Spec : Prop :=
  ∀ n, (P12570527231481759922.a n : ℤ) = A135370 (n + 1)

end A135370

/-! ## A135370.P3851931552552440414

`∑[(n+1)*∑[floor(a(n-2))]]` with `a(0)=1, a(1)=0, a(2)=1, a(3)=-1`

`floor` is left out, it is the identity on integers.
-/

namespace A135370.P3851931552552440414
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1, -1] fun n f2 =>
  f2 (n - 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135370.P3851931552552440414

namespace A135370

/-- `∑[(n+1)*∑[floor(a(n-2))]]` -/
def P3851931552552440414.Spec : Prop :=
  ∀ n, P3851931552552440414.a n = A135370 (n + 1)

end A135370

/-! ## A135370.P16237874476591279264

`floor((n+2)*(n/2+n)-a(n-1))` with `a(0)=1`
-/

namespace A135370.P16237874476591279264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(n + 2 : ℚ) * ((n : ℚ) / 2 + (n : ℚ)) - (a (n - 1) : ℚ)⌋

end

end A135370.P16237874476591279264

namespace A135370

/-- `floor((n+2)*(n/2+n)-a(n-1))` -/
def P16237874476591279264.Spec : Prop :=
  ∀ n, P16237874476591279264.a n = A135370 (n + 1)

end A135370

/-! ## A135370.P4262185345975692004

`∑[A066043(n+1)]`
-/

namespace A135370.P4262185345975692004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066043 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135370.P4262185345975692004

namespace A135370

/-- `∑[A066043(n+1)]` -/
def P4262185345975692004.Spec : Prop :=
  ∀ n, P4262185345975692004.a n = A135370 (n + 1)

end A135370

/-! ## A135370.P7866254701389175715

`∑[(n+1)*A040001(n)]`
-/

namespace A135370.P7866254701389175715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A040001 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135370.P7866254701389175715

namespace A135370

/-- `∑[(n+1)*A040001(n)]` -/
def P7866254701389175715.Spec : Prop :=
  ∀ n, P7866254701389175715.a n = A135370 (n + 1)

end A135370

/-! ## A135370.P10520899609155345874

`(A164097(n+1)-1)/2`
-/

namespace A135370.P10520899609155345874
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A164097 (n + 1) - 1 : ℚ) / 2

end

end A135370.P10520899609155345874

namespace A135370

/-- `(A164097(n+1)-1)/2` -/
def P10520899609155345874.Spec : Prop :=
  ∀ n, P10520899609155345874.a n = (A135370 (n + 1) : ℚ)

end A135370

/-! ## A135370.P16015418603646876760

`∑[abs((n+1)*A280193(n))]`
-/

namespace A135370.P16015418603646876760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n + 1 : ℤ) * A280193 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135370.P16015418603646876760

namespace A135370

/-- `∑[abs((n+1)*A280193(n))]` -/
def P16015418603646876760.Spec : Prop :=
  ∀ n, P16015418603646876760.a n = A135370 (n + 1)

end A135370

/-! ## A135370.P9501472698544353324

`∑[A103517(A142150(n))+n]`
-/

namespace A135370.P9501472698544353324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (A142150 n).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135370.P9501472698544353324

namespace A135370

/-- `∑[A103517(A142150(n))+n]` -/
def P9501472698544353324.Spec : Prop :=
  ∀ n, P9501472698544353324.a n = A135370 (n + 1)

end A135370

/-! ## A135370.P14331438651567846732

`∪[A144390(n+1), A144391(n+1)]`
-/

namespace A135370.P14331438651567846732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144390 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144391 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A135370.P14331438651567846732

namespace A135370

/-- `∪[A144390(n+1), A144391(n+1)]` -/
def P14331438651567846732.Spec : Prop :=
  ∀ n, (P14331438651567846732.a n : ℤ) = A135370 (n + 1)

end A135370

/-! ## A135370.P1148752889791333588

`∑[(n+1)*A001221(2*A020639(n+1))]`
-/

namespace A135370.P1148752889791333588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A001221 (2 * A020639 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135370.P1148752889791333588

namespace A135370

/-- `∑[(n+1)*A001221(2*A020639(n+1))]` -/
def P1148752889791333588.Spec : Prop :=
  ∀ n, P1148752889791333588.a n = A135370 (n + 1)

end A135370

/-!
# A135371: a(n) = prime(3^(n + 1)) - prime(3^n).

The programs for A135371, the canonical program `A135371.P8902338164796320494` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135371 has offset 0).

The definition of A135371 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(3^(n+1))-A000040(3^n)` (program `A135371.P8902338164796320494`, by `A135371.P8902338164796320494.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A135371.P13299351396268954731

`A038833(n+1)-A038833(n)`
-/

namespace A135371.P13299351396268954731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038833 (n + 1) - A038833 n

end

end A135371.P13299351396268954731

namespace A135371

/-- `A038833(n+1)-A038833(n)` -/
def P13299351396268954731.Spec : Prop :=
  ∀ n, P13299351396268954731.a n = A135371 n

end A135371

/-! ## A135371.P8902338164796320494

`A000040(3^(n+1))-A000040(3^n)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A135371

/-- `A000040(3^(n+1))-A000040(3^n)` -/
def P8902338164796320494.Spec : Prop :=
  ∀ n, P8902338164796320494.a n = A135371 n

theorem P8902338164796320494.correct : P8902338164796320494.Spec := by
  intro n
  simp only [A135371]

end A135371

/-! ## A135371.P4346476328132174382

`Δ[A038833(n)]`
-/

namespace A135371.P4346476328132174382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038833 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A135371.P4346476328132174382

namespace A135371

/-- `Δ[A038833(n)]` -/
def P4346476328132174382.Spec : Prop :=
  ∀ n, P4346476328132174382.a n = A135371 n

end A135371

/-! ## A135371.P8795924759291360821

`Δ[A347000(Δ[A074742(n)])]`
-/

namespace A135371.P8795924759291360821
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074742 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347000 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A135371.P8795924759291360821

namespace A135371

/-- `Δ[A347000(Δ[A074742(n)])]` -/
def P8795924759291360821.Spec : Prop :=
  ∀ n, P8795924759291360821.a n = A135371 n

end A135371

/-! ## A135371.P3095112061074969969

`Δ[A347000(A034856(n+1))]`
-/

namespace A135371.P3095112061074969969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347000 (A034856 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A135371.P3095112061074969969

namespace A135371

/-- `Δ[A347000(A034856(n+1))]` -/
def P3095112061074969969.Spec : Prop :=
  ∀ n, P3095112061074969969.a n = A135371 n

end A135371

/-!
# A135372: Highly composite numbers + 1.

The programs for A135372, there is no canonical definition to state claims against.
-/

/-! ## A135372.P8061097044643282325

`A002182(n+1)+1`
-/

namespace A135372.P8061097044643282325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002182 (n + 1) + 1

end

end A135372.P8061097044643282325

/-! ## A135372.P539292636688029748

`A301413(n+1)*A319865(n+1)+1`
-/

namespace A135372.P539292636688029748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301413 (n + 1) * A319865 (n + 1) + 1

end

end A135372.P539292636688029748

/-! ## A135372.P13505386556551428335

`A002110(A108602(n+1))*A301413(n+1)+1`
-/

namespace A135372.P13505386556551428335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 (A108602 (n + 1)).toNat * A301413 (n + 1) + 1

end

end A135372.P13505386556551428335

/-! ## A135372.P13246348634049086855

`A063072(n+1)+1-A072824(n+1)`
-/

namespace A135372.P13246348634049086855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063072 (n + 1) + (1 - A072824 (n + 1))

end

end A135372.P13246348634049086855

/-! ## A135372.P14249227942980041172

`record[A365901(n+1)+1]`
-/

namespace A135372.P14249227942980041172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365901 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A135372.P14249227942980041172

/-! ## A135372.P6544048725511891278

`A262501(n)+a(n-1)` with `a(0)=2`
-/

namespace A135372.P6544048725511891278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A262501 n + a (n - 1)

end

end A135372.P6544048725511891278

/-! ## A135372.P10107713501028295844

`∑[A262501(A028310(n))]+1`
-/

namespace A135372.P10107713501028295844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262501 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A135372.P10107713501028295844

/-! ## A135372.P17988984631363560319

`A054481(n+2)*A054482(n+2)+1`
-/

namespace A135372.P17988984631363560319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054481 (n + 2) * A054482 (n + 2) + 1

end

end A135372.P17988984631363560319

/-! ## A135372.P6463278879162989151

`∑[A262501(n+1)]+2-A262501(n+1)`
-/

namespace A135372.P6463278879162989151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262501 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (2 - A262501 (n + 1))

end

end A135372.P6463278879162989151

/-! ## A135372.P10658360018188142002

`sqrt(A046952(n+1))+1`
-/

namespace A135372.P10658360018188142002
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A046952 (n + 1) : ℝ) + 1

end

end A135372.P10658360018188142002

/-! ## A135372.P9240795657406927498

`∩[A007416(n+1), A140999(n+1)]+1`
-/

namespace A135372.P9240795657406927498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007416 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140999 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A135372.P9240795657406927498

/-! ## A135372.P17069842173673506522

`A152047(n+1)*A152048(n+1)+1`
-/

namespace A135372.P17069842173673506522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152047 (n + 1) * A152048 (n + 1) + 1

end

end A135372.P17069842173673506522

/-! ## A135372.P4419159878016147778

`∩[A097212(n+1), A181804(n+1)]+1`
-/

namespace A135372.P4419159878016147778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097212 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181804 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A135372.P4419159878016147778

/-! ## A135372.P1514875750410451598

`A025487(A306802(n+1))+1`
-/

namespace A135372.P1514875750410451598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (A306802 (n + 1)).toNat + 1

end

end A135372.P1514875750410451598

/-! ## A135372.P2934340613561003270

`∪[A004778(n+1), A210594(n+1)]+1`
-/

namespace A135372.P2934340613561003270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004778 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210594 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A135372.P2934340613561003270

/-! ## A135372.P553342591206879026

`A061799(A002183(n+1))+1`
-/

namespace A135372.P553342591206879026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061799 (A002183 (n + 1)).toNat + 1

end

end A135372.P553342591206879026

/-! ## A135372.P14802549147838383546

`A324582(n+1)/A324581(n+1)+1`
-/

namespace A135372.P14802549147838383546
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324582 (n + 1) : ℚ) / (A324581 (n + 1) : ℚ) + 1

end

end A135372.P14802549147838383546

/-!
# A135373: a(n) = prime(2^(n + 1)) - prime(2^n).

The programs for A135373, the canonical program `A135373.P14568620069147027798` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135373 has offset 0).

The definition of A135373 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(2^(n+1))-A000040(2^n)` (program `A135373.P14568620069147027798`, by `A135373.P14568620069147027798.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A135373.P14419066441365475261

`A033844(n+1)-A033844(n)`
-/

namespace A135373.P14419066441365475261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033844 (n + 1) - A033844 n

end

end A135373.P14419066441365475261

namespace A135373

/-- `A033844(n+1)-A033844(n)` -/
def P14419066441365475261.Spec : Prop :=
  ∀ n, P14419066441365475261.a n = A135373 n

end A135373

/-! ## A135373.P14568620069147027798

`A000040(2^(n+1))-A000040(2^n)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A135373

/-- `A000040(2^(n+1))-A000040(2^n)` -/
def P14568620069147027798.Spec : Prop :=
  ∀ n, P14568620069147027798.a n = A135373 n

theorem P14568620069147027798.correct : P14568620069147027798.Spec := by
  intro n
  simp only [A135373]

end A135373

/-! ## A135373.P11059565313426972085

`Δ[A018249(n)]`
-/

namespace A135373.P11059565313426972085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018249 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A135373.P11059565313426972085

namespace A135373

/-- `Δ[A018249(n)]` -/
def P11059565313426972085.Spec : Prop :=
  ∀ n, P11059565313426972085.a n = A135373 n

theorem P11059565313426972085.correct : P11059565313426972085.Spec := by
  intro n
  simp only [A135373, Nat.add_sub_cancel, A135373.P11059565313426972085.f1, A135373.P11059565313426972085.a, A135373.P14568620069147027798.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A018249, A018249.P2453322492412683053.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A135373

/-! ## A135373.P9364451541561488245

`Δ[A033844(n)]`
-/

namespace A135373.P9364451541561488245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033844 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A135373.P9364451541561488245

namespace A135373

/-- `Δ[A033844(n)]` -/
def P9364451541561488245.Spec : Prop :=
  ∀ n, P9364451541561488245.a n = A135373 n

end A135373

/-! ## A135373.P14276589432235189395

`Δ[A051440(n)]`
-/

namespace A135373.P14276589432235189395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051440 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A135373.P14276589432235189395

namespace A135373

/-- `Δ[A051440(n)]` -/
def P14276589432235189395.Spec : Prop :=
  ∀ n, P14276589432235189395.a n = A135373 n

theorem P14276589432235189395.correct : P14276589432235189395.Spec := by
  intro n
  simp only [A135373, Nat.add_sub_cancel, A135373.P14276589432235189395.f1, A135373.P14276589432235189395.a, A135373.P14568620069147027798.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A051440, A051440.P8598338040170600768.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A135373

/-!
# A135374: Mersenne numbers with digits sorted in increasing order and zeros suppressed.

The programs for A135374, there is no canonical definition to state claims against.
-/

/-! ## A135374.P13715724503062987133

`A004185(2^(n+1)-1)`
-/

namespace A135374.P13715724503062987133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004185 (2 ^ (n + 1) - 1)

end

end A135374.P13715724503062987133

/-! ## A135374.P435528177377760353

`A070196(∑[2^n])-∑[2^n]`
-/

namespace A135374.P435528177377760353
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070196 (∑ j ∈ Finset.range (n + 1), f1 j) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A135374.P435528177377760353

/-! ## A135374.P12040055660189137165

`∑[2^n]-A193581(∑[2^n])`
-/

namespace A135374.P12040055660189137165
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A193581 (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A135374.P12040055660189137165

/-! ## A135374.P11397064710599551839

`A004086(A004186(∑[2^n]))`
-/

namespace A135374.P11397064710599551839
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A004186 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A135374.P11397064710599551839

/-! ## A135374.P6258788505754441659

`A004185(A126646(n))%A007283(n)`
-/

namespace A135374.P6258788505754441659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004185 (A126646 n).toNat) (A007283 n)

end

end A135374.P6258788505754441659

/-!
# A135376: a(n) is the smallest prime that does not divide n(n+1)/2.

The programs for A135376, there is no canonical definition to state claims against.
-/

/-! ## A135376.P270118477694823720

`A053669(A000217(n+1))`
-/

namespace A135376.P270118477694823720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053669 (A000217 (n + 1)).toNat

end

end A135376.P270118477694823720

/-! ## A135376.P13087614759115845995

`A020639(A219977(n)+A053670(n+1))`
-/

namespace A135376.P13087614759115845995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A219977 n + A053670 (n + 1)).toNat

end

end A135376.P13087614759115845995

/-! ## A135376.P5690771989693741680

`A007918(and(A053670(n+1), A057077(n)))`
-/

namespace A135376.P5690771989693741680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (Int.land (A053670 (n + 1)) (A057077 n)).toNat

end

end A135376.P5690771989693741680

/-! ## A135376.P12423840979906223873

`A053669(A324384(∑[n+1]))`
-/

namespace A135376.P12423840979906223873
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053669 (A324384 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A135376.P12423840979906223873

/-! ## A135376.P12579586706996738869

`A117366(A329900(∑[n+1]))`
-/

namespace A135376.P12579586706996738869
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117366 (A329900 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A135376.P12579586706996738869

/-! ## A135376.P1910077605669978311

`A020639(A328571(∑[n+1]))`
-/

namespace A135376.P1910077605669978311
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A328571 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A135376.P1910077605669978311

/-! ## A135376.P3527842299692660987

`A053669(A328479(∑[n+1]))`
-/

namespace A135376.P3527842299692660987
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053669 (A328479 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A135376.P3527842299692660987

/-! ## A135376.P10856191830404300935

`A000040(gcd(n, n+1)*A257993(∑[n+1]))`
-/

namespace A135376.P10856191830404300935
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 ((Nat.gcd n (n + 1) : ℤ) * A257993 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A135376.P10856191830404300935

/-! ## A135376.P1361541844189741933

`sqrt(A089090(∑[n+1]))`
-/

namespace A135376.P1361541844189741933
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A089090 (∑ j ∈ Finset.range (n + 1), f1 j) : ℝ)

end

end A135376.P1361541844189741933

/-! ## A135376.P9728767653314050276

`A129321(A179865(n+1)+2)`
-/

namespace A135376.P9728767653314050276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129321 (A179865 (n + 1) + 2).toNat

end

end A135376.P9728767653314050276

/-! ## A135376.P11580334994192413000

`A053669(∑[n+1])`
-/

namespace A135376.P11580334994192413000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053669 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A135376.P11580334994192413000

/-! ## A135376.P17227343980925088123

`A214720(∑[n+1])`
-/

namespace A135376.P17227343980925088123
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214720 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A135376.P17227343980925088123

/-! ## A135376.P14394731454352883085

`A071222(∑[n]+n)+1`
-/

namespace A135376.P14394731454352883085
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071222 (∑ j ∈ Finset.range (n + 1), f1 j + n) + 1

end

end A135376.P14394731454352883085

/-! ## A135376.P7843677382695474185

`A079578(∑[n+1])-∑[n+1]`
-/

namespace A135376.P7843677382695474185
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079578 (∑ j ∈ Finset.range (n + 1), f1 j) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A135376.P7843677382695474185

/-! ## A135376.P15648013942191690627

`p?[A004736(n+1)*A053669(n+1)]`
-/

namespace A135376.P15648013942191690627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) * A053669 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A135376.P15648013942191690627

/-! ## A135376.P8563881284338659596

`p?[A002262(n+2)*A053669(n+1)]`
-/

namespace A135376.P8563881284338659596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (n + 2) * A053669 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A135376.P8563881284338659596

/-! ## A135376.P6798913577337955160

`A020639((∑[n+1]+1)*A053670(n+1))`
-/

namespace A135376.P6798913577337955160
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℤ) * A053670 (n + 1)).toNat

end

end A135376.P6798913577337955160

/-!
# A135381: a(n) = high point in trajectory of n under repeated application of powertrain map (see A133500).

The programs for A135381, there is no canonical definition to state claims against.
-/

/-! ## A135381.P14062966635723561787

`A135382(A090106(n+1))`
-/

namespace A135381.P14062966635723561787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135382 (A090106 (n + 1)).toNat

end

end A135381.P14062966635723561787

/-! ## A135381.P6431729278503155985

`A135382(A319150(n)+n)`
-/

namespace A135381.P6431729278503155985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135382 (A319150 n + (n : ℤ)).toNat

end

end A135381.P6431729278503155985

/-! ## A135381.P17327475837331644097

`A135382(n+1)%A075929(n)`
-/

namespace A135381.P17327475837331644097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A135382 (n + 1)) (A075929 n)

end

end A135381.P17327475837331644097

/-! ## A135381.P14042309993624093908

`A135382(n+1)^A390984(n)!`
-/

namespace A135381.P14042309993624093908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135382 (n + 1) ^ Nat.factorial (A390984 n).toNat

end

end A135381.P14042309993624093908

/-! ## A135381.P17838829662604876447

`A135382(n+1)+A000122(A064792(n+1))`
-/

namespace A135381.P17838829662604876447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135382 (n + 1) + A000122 (A064792 (n + 1)).toNat

end

end A135381.P17838829662604876447

/-!
# A135382: Records in A135381.

The programs for A135382, there is no canonical definition to state claims against.
-/

/-! ## A135382.P11593197814888241789

`record[A135381(n)]`
-/

namespace A135382.P11593197814888241789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135381 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A135382.P11593197814888241789

/-! ## A135382.P4740166166417911006

`A135381(A135383(n+1))`
-/

namespace A135382.P4740166166417911006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135381 (A135383 (n + 1)).toNat

end

end A135382.P4740166166417911006

/-!
# A135383: Where records occur in A135381.

The programs for A135383, there is no canonical definition to state claims against.
-/

/-! ## A135383.P3050432708555127538

`lt[A216659(n+2), A118218(n+2)]`
-/

namespace A135383.P3050432708555127538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216659 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118218 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A135383.P3050432708555127538

/-! ## A135383.P17005129946009005433

`lt[A057135(n+1), A000217(∑{d}[n+1, #²])]`
-/

namespace A135383.P17005129946009005433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057135 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (∑ d ∈ Nat.divisors (f3 n), d ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A135383.P17005129946009005433

/-! ## A135383.P1866048800494067898

`lt[A276434(n), A004186(A001359(n+1))]`
-/

namespace A135383.P1866048800494067898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276434 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004186 (A001359 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A135383.P1866048800494067898

/-! ## A135383.P9301056195751845925

`lt[A257849(A055922(n)), A046502(n+1)]`
-/

namespace A135383.P9301056195751845925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257849 (A055922 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046502 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A135383.P9301056195751845925

/-! ## A135383.P1032266576177501299

`lt[A257849(A055922(n)), A046503(n+1)]`
-/

namespace A135383.P1032266576177501299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257849 (A055922 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046503 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A135383.P1032266576177501299

/-!
# A135385: Fixed points of the map m -> powertrain(m) (see A133500 for definition).

The programs for A135385, there is no canonical definition to state claims against.
-/

/-! ## A135385.P17594564274874693476

`A027863(19*(2*a(n-1)-a(n-2)))` with `a(0)=0, a(1)=1, a(2)=2, a(3)=3, a(4)=4, a(5)=5, a(6)=6, a(7)=7, a(8)=8, a(9)=9`
-/

namespace A135385.P17594564274874693476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2, 3, 4, 5, 6, 7, 8, 9] fun n a =>
  A027863 (19 * (2 * a (n - 1) - a (n - 2))).toNat

end

end A135385.P17594564274874693476

/-! ## A135385.P11042948123565898810

`A046469(A140335(n+1)-1)`
-/

namespace A135385.P11042948123565898810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046469 (A140335 (n + 1) - 1).toNat

end

end A135385.P11042948123565898810

/-! ## A135385.P3571686553426832898

`A230571(A282528(n+1))+n`
-/

namespace A135385.P3571686553426832898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230571 (A282528 (n + 1)).toNat + (n : ℤ)

end

end A135385.P3571686553426832898

/-! ## A135385.P16530206578939159407

`A230571(A120434(n+2))+n`
-/

namespace A135385.P16530206578939159407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230571 (A120434 (n + 2)).toNat + (n : ℤ)

end

end A135385.P16530206578939159407

/-! ## A135385.P6332666293984199469

`∩[A046469(n), A084176(n+1)]`
-/

namespace A135385.P6332666293984199469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046469 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084176 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A135385.P6332666293984199469

/-!
# A135387: Triangle read by rows, with (2, 1, 0, 0, 0, ...) in every column.

The programs for A135387, the canonical program `A135387.P17093885749354178616` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135387 has offset 1).

The definition of A135387 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A135387.P16973485746137068349

`C(2, row(n)+1-col(n))`
-/

namespace A135387.P16973485746137068349
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 ((SequenceMachineLib.triRow n + 1 : ℤ) - (SequenceMachineLib.triCol n : ℤ)).toNat

end

end A135387.P16973485746137068349

namespace A135387

/-- `C(2, row(n)+1-col(n))` -/
def P16973485746137068349.Spec : Prop :=
  ∀ n, (P16973485746137068349.a n : ℤ) = A135387 (n + 1)

end A135387

/-! ## A135387.P13804414456529294432

`floor(2/(row(n)-col(n)+1))`
-/

namespace A135387.P13804414456529294432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 / ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1 : ℚ)⌋

end

end A135387.P13804414456529294432

namespace A135387

/-- `floor(2/(row(n)-col(n)+1))` -/
def P13804414456529294432.Spec : Prop :=
  ∀ n, P13804414456529294432.a n = A135387 (n + 1)

end A135387

/-! ## A135387.P12313137870474245400

`C(2, C(comp[∑[n]]-n, 2)-n)`
-/

namespace A135387.P12313137870474245400
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ)).toNat

end

end A135387.P12313137870474245400

namespace A135387

/-- `C(2, C(comp[∑[n]]-n, 2)-n)` -/
def P12313137870474245400.Spec : Prop :=
  ∀ n, (P12313137870474245400.a n : ℤ) = A135387 (n + 1)

end A135387

/-! ## A135387.P16148723956452027739

`C(2, A048494(n))`
-/

namespace A135387.P16148723956452027739
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A048494 n).toNat

end

end A135387.P16148723956452027739

namespace A135387

/-- `C(2, A048494(n))` -/
def P16148723956452027739.Spec : Prop :=
  ∀ n, (P16148723956452027739.a n : ℤ) = A135387 (n + 1)

end A135387

/-! ## A135387.P1845194231203626754

`C(2, A052310(n))`
-/

namespace A135387.P1845194231203626754
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A052310 n).toNat

end

end A135387.P1845194231203626754

namespace A135387

/-- `C(2, A052310(n))` -/
def P1845194231203626754.Spec : Prop :=
  ∀ n, (P1845194231203626754.a n : ℤ) = A135387 (n + 1)

end A135387

/-! ## A135387.P4019970202252420023

`C(2, A052313(n))`
-/

namespace A135387.P4019970202252420023
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A052313 n).toNat

end

end A135387.P4019970202252420023

namespace A135387

/-- `C(2, A052313(n))` -/
def P4019970202252420023.Spec : Prop :=
  ∀ n, (P4019970202252420023.a n : ℤ) = A135387 (n + 1)

end A135387

/-! ## A135387.P16650266530954839101

`C(2, A054453(n))`
-/

namespace A135387.P16650266530954839101
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A054453 n).toNat

end

end A135387.P16650266530954839101

namespace A135387

/-- `C(2, A054453(n))` -/
def P16650266530954839101.Spec : Prop :=
  ∀ n, (P16650266530954839101.a n : ℤ) = A135387 (n + 1)

end A135387

/-! ## A135387.P1851611724037456074

`C(2, A105438(n))`
-/

namespace A135387.P1851611724037456074
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A105438 n).toNat

end

end A135387.P1851611724037456074

namespace A135387

/-- `C(2, A105438(n))` -/
def P1851611724037456074.Spec : Prop :=
  ∀ n, (P1851611724037456074.a n : ℤ) = A135387 (n + 1)

end A135387

/-! ## A135387.P17093885749354178616

`C(2, A106187(n))`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A135387

/-- `C(2, A106187(n))` -/
def P17093885749354178616.Spec : Prop :=
  ∀ n, (P17093885749354178616.a n : ℤ) = A135387 (n + 1)

theorem P17093885749354178616.correct : P17093885749354178616.Spec := by
  intro n
  simp only [A135387, Nat.add_sub_cancel]

end A135387

/-! ## A135387.P373210012017269520

`C(2, A114283(n))`
-/

namespace A135387.P373210012017269520
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A114283 n).toNat

end

end A135387.P373210012017269520

namespace A135387

/-- `C(2, A114283(n))` -/
def P373210012017269520.Spec : Prop :=
  ∀ n, (P373210012017269520.a n : ℤ) = A135387 (n + 1)

end A135387

/-! ## A135387.P15708508368918042233

`C(2, A123486(n))`
-/

namespace A135387.P15708508368918042233
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A123486 n).toNat

end

end A135387.P15708508368918042233

namespace A135387

/-- `C(2, A123486(n))` -/
def P15708508368918042233.Spec : Prop :=
  ∀ n, (P15708508368918042233.a n : ℤ) = A135387 (n + 1)

end A135387

/-! ## A135387.P13002493950200003569

`C(2, A124392(n))`
-/

namespace A135387.P13002493950200003569
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A124392 n).toNat

end

end A135387.P13002493950200003569

namespace A135387

/-- `C(2, A124392(n))` -/
def P13002493950200003569.Spec : Prop :=
  ∀ n, (P13002493950200003569.a n : ℤ) = A135387 (n + 1)

end A135387

/-! ## A135387.P6663144357187852591

`C(2, A126075(n))`
-/

namespace A135387.P6663144357187852591
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A126075 n).toNat

end

end A135387.P6663144357187852591

namespace A135387

/-- `C(2, A126075(n))` -/
def P6663144357187852591.Spec : Prop :=
  ∀ n, (P6663144357187852591.a n : ℤ) = A135387 (n + 1)

end A135387

/-! ## A135387.P3085739508608092851

`C(2, A126125(n))`
-/

namespace A135387.P3085739508608092851
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A126125 n).toNat

end

end A135387.P3085739508608092851

namespace A135387

/-- `C(2, A126125(n))` -/
def P3085739508608092851.Spec : Prop :=
  ∀ n, (P3085739508608092851.a n : ℤ) = A135387 (n + 1)

end A135387

/-! ## A135387.P9547918953151166400

`C(2, A130321(n))`
-/

namespace A135387.P9547918953151166400
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A130321 n).toNat

end

end A135387.P9547918953151166400

namespace A135387

/-- `C(2, A130321(n))` -/
def P9547918953151166400.Spec : Prop :=
  ∀ n, (P9547918953151166400.a n : ℤ) = A135387 (n + 1)

end A135387

/-! ## A135387.P4965374248773151825

`round(acot(A025581(n)))`
-/

namespace A135387.P4965374248773151825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (SequenceMachineLib.acot (A025581 n : ℝ))

end

end A135387.P4965374248773151825

namespace A135387

/-- `round(acot(A025581(n)))` -/
def P4965374248773151825.Spec : Prop :=
  ∀ n, P4965374248773151825.a n = A135387 (n + 1)

end A135387

/-! ## A135387.P18399449215910394451

`C(2, sqrt(A262616(n)))`
-/

namespace A135387.P18399449215910394451
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (SequenceMachineLib.roundAway (Real.sqrt (A262616 n : ℝ))).toNat

end

end A135387.P18399449215910394451

namespace A135387

/-- `C(2, sqrt(A262616(n)))` -/
def P18399449215910394451.Spec : Prop :=
  ∀ n, (P18399449215910394451.a n : ℤ) = A135387 (n + 1)

end A135387

/-! ## A135387.P909183400973536801

`round(2/A099375(n))`
-/

namespace A135387.P909183400973536801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (2 / (A099375 n : ℚ))

end

end A135387.P909183400973536801

namespace A135387

/-- `round(2/A099375(n))` -/
def P909183400973536801.Spec : Prop :=
  ∀ n, P909183400973536801.a n = A135387 (n + 1)

end A135387

/-! ## A135387.P6570618488254077790

`round(2/A130330(n))`
-/

namespace A135387.P6570618488254077790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (2 / (A130330 n : ℚ))

end

end A135387.P6570618488254077790

namespace A135387

/-- `round(2/A130330(n))` -/
def P6570618488254077790.Spec : Prop :=
  ∀ n, P6570618488254077790.a n = A135387 (n + 1)

end A135387

/-! ## A135387.P7577172379608168762

`C(2, A004736(n+1))`
-/

namespace A135387.P7577172379608168762
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A004736 (n + 1)).toNat

end

end A135387.P7577172379608168762

namespace A135387

/-- `C(2, A004736(n+1))` -/
def P7577172379608168762.Spec : Prop :=
  ∀ n, (P7577172379608168762.a n : ℤ) = A135387 (n + 1)

end A135387

/-!
# A135389: Number of walks of length 2*n+2 from origin to (1,1) in a square lattice.

The programs for A135389, the canonical program `A135389.P8667978144181006220` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135389 has offset 0).

The definition of A135389 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A135389.P17463844181015576414

`C(2*n+2, n)*C(2*n+2, n+1)`
-/

namespace A135389.P17463844181015576414
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n + 2) n * Nat.choose (2 * n + 2) (n + 1)

end

end A135389.P17463844181015576414

namespace A135389

/-- `C(2*n+2, n)*C(2*n+2, n+1)` -/
def P17463844181015576414.Spec : Prop :=
  ∀ n, (P17463844181015576414.a n : ℤ) = A135389 n

end A135389

/-! ## A135389.P8667978144181006220

`A001791(n+1)*A000984(n+1)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A135389

/-- `A001791(n+1)*A000984(n+1)` -/
def P8667978144181006220.Spec : Prop :=
  ∀ n, P8667978144181006220.a n = A135389 n

theorem P8667978144181006220.correct : P8667978144181006220.Spec := by
  intro n
  simp only [A135389]

end A135389

/-! ## A135389.P9766968140295246907

`A378070(2*n+3)`
-/

namespace A135389.P9766968140295246907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378070 (2 * n + 3)

end

end A135389.P9766968140295246907

namespace A135389

/-- `A378070(2*n+3)` -/
def P9766968140295246907.Spec : Prop :=
  ∀ n, P9766968140295246907.a n = A135389 n

end A135389

/-! ## A135389.P1902625398868611128

`(n+1)*A000888(n+1)`
-/

namespace A135389.P1902625398868611128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000888 (n + 1)

end

end A135389.P1902625398868611128

namespace A135389

/-- `(n+1)*A000888(n+1)` -/
def P1902625398868611128.Spec : Prop :=
  ∀ n, P1902625398868611128.a n = A135389 n

end A135389

/-! ## A135389.P12918593469777266154

`(n+2)*A145600(n+1)`
-/

namespace A135389.P12918593469777266154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A145600 (n + 1)

end

end A135389.P12918593469777266154

namespace A135389

/-- `(n+2)*A145600(n+1)` -/
def P12918593469777266154.Spec : Prop :=
  ∀ n, P12918593469777266154.a n = A135389 n

end A135389

/-! ## A135389.P9632427014720966871

`(n+2)*A268085(n+1)`
-/

namespace A135389.P9632427014720966871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A268085 (n + 1)

end

end A135389.P9632427014720966871

namespace A135389

/-- `(n+2)*A268085(n+1)` -/
def P9632427014720966871.Spec : Prop :=
  ∀ n, P9632427014720966871.a n = A135389 n

end A135389

/-! ## A135389.P12003247629360143460

`(n+2)*A005559(Δ[n²])`
-/

namespace A135389.P12003247629360143460
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A005559 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A135389.P12003247629360143460

namespace A135389

/-- `(n+2)*A005559(Δ[n²])` -/
def P12003247629360143460.Spec : Prop :=
  ∀ n, P12003247629360143460.a n = A135389 n

end A135389

/-! ## A135389.P12571879801620452289

`2*(n+1)*A125558(n+1)`
-/

namespace A135389.P12571879801620452289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) * A125558 (n + 1)

end

end A135389.P12571879801620452289

namespace A135389

/-- `2*(n+1)*A125558(n+1)` -/
def P12571879801620452289.Spec : Prop :=
  ∀ n, P12571879801620452289.a n = A135389 n

end A135389

/-! ## A135389.P4866779658676375644

`2*A000108(n+1)²*∑[n+1]`
-/

namespace A135389.P4866779658676375644
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A000108 (n + 1) ^ 2 * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))

end

end A135389.P4866779658676375644

namespace A135389

/-- `2*A000108(n+1)²*∑[n+1]` -/
def P4866779658676375644.Spec : Prop :=
  ∀ n, P4866779658676375644.a n = A135389 n

end A135389

/-! ## A135389.P5757747607638583863

`A001700(n)*A162551(n+1)`
-/

namespace A135389.P5757747607638583863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001700 n * A162551 (n + 1)

end

end A135389.P5757747607638583863

namespace A135389

/-- `A001700(n)*A162551(n+1)` -/
def P5757747607638583863.Spec : Prop :=
  ∀ n, P5757747607638583863.a n = A135389 n

end A135389

/-!
# A135390: Number of walks from origin to (1,0,0) in a cubic lattice.

The programs for A135390, there is no canonical definition to state claims against.
-/

/-! ## A135390.P17294420151723847617

`A002896(n+1)/6`
-/

namespace A135390.P17294420151723847617
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002896 (n + 1) : ℚ) / 6

end

end A135390.P17294420151723847617

/-! ## A135390.P10762849891465753841

`Δ[A174516(n)/6]`
-/

namespace A135390.P10762849891465753841
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A174516 n : ℚ) / 6

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A135390.P10762849891465753841

/-! ## A135390.P8583802115495904476

`a(n-1)*ratio[A002896(n)]` with `a(0)=1`
-/

namespace A135390.P8583802115495904476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002896 n

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * ((f1 (n + 1) : ℚ) / (f1 n : ℚ))

end

end A135390.P8583802115495904476

/-! ## A135390.P3542477123563306704

`Δ[n²]*A302181(n)`
-/

namespace A135390.P3542477123563306704
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) * A302181 n

end

end A135390.P3542477123563306704

/-! ## A135390.P16729152820757179255

`A002457(n)*A302181(n)/A000984(n)`
-/

namespace A135390.P16729152820757179255
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002457 n * A302181 n : ℚ) / (A000984 n : ℚ)

end

end A135390.P16729152820757179255

/-!
# A135391: Numbers n such that 9^n and 9^(n+1) have the same number of decimal digits.

The programs for A135391, there is no canonical definition to state claims against.
-/

/-! ## A135391.P6222283483798000012

`A001682(2*n+3)/2`
-/

namespace A135391.P6222283483798000012
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001682 (2 * n + 3) : ℚ) / 2

end

end A135391.P6222283483798000012

/-! ## A135391.P459415345559219187

`Δ[∑[A001682(Δ[n²])]/2]`
-/

namespace A135391.P459415345559219187
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001682 ((f3 (n + 1) : ℤ) - (f3 n : ℤ)).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A135391.P459415345559219187

/-! ## A135391.P10340045187567885443

`∑[A004525(Δ[A001682(2*n+1)])]`
-/

namespace A135391.P10340045187567885443
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001682 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135391.P10340045187567885443

/-! ## A135391.P15691513024520792955

`∑[A004526(Δ[A001682(2*n+1)])]`
-/

namespace A135391.P15691513024520792955
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001682 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135391.P15691513024520792955

/-! ## A135391.P9858879693739104064

`∑[A014682(Δ[A001682(2*n+1)])]`
-/

namespace A135391.P9858879693739104064
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001682 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135391.P9858879693739104064

/-! ## A135391.P16876620314314715098

`A014682(A001682(2*n+1)+Δ[A001682(2*n+1)])`
-/

namespace A135391.P16876620314314715098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001682 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A001682 (2 * n + 1) + (f1 (n + 1) - f1 n)).toNat

end

end A135391.P16876620314314715098

/-! ## A135391.P10602925579121370915

`A110654(A001682(2*n+3))`
-/

namespace A135391.P10602925579121370915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A001682 (2 * n + 3)).toNat

end

end A135391.P10602925579121370915

/-! ## A135391.P3867625224977409325

`record[Δ[A158416(A001682(n+2))]]`
-/

namespace A135391.P3867625224977409325
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158416 (A001682 (n + 2)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A135391.P3867625224977409325

/-! ## A135391.P11280467214206526510

`A004525(A001682(2*n+1)+Δ[A001682(2*n+1)])`
-/

namespace A135391.P11280467214206526510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001682 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A001682 (2 * n + 1) + (f1 (n + 1) - f1 n)).toNat

end

end A135391.P11280467214206526510

/-! ## A135391.P17587101210726524835

`A004526(A001682(2*n+1)+Δ[A001682(2*n+1)])`
-/

namespace A135391.P17587101210726524835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001682 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A001682 (2 * n + 1) + (f1 (n + 1) - f1 n)).toNat

end

end A135391.P17587101210726524835

/-!
# A135392: A triangular sequence from a general proportionality to modular function polynomial triangular function.

The programs for A135392, there is no canonical definition to state claims against.
-/

/-! ## A135392.P3478052867545922183

`A177767(A066181(n+1)+A003057(n+2))`
-/

namespace A135392.P3478052867545922183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177767 (A066181 (n + 1) + A003057 (n + 2)).toNat

end

end A135392.P3478052867545922183

/-! ## A135392.P4305448843748079808

`A199011(n+1)%A001095(n+1)-A103451(n+1)`
-/

namespace A135392.P4305448843748079808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A199011 (n + 1)) (A001095 (n + 1)) - A103451 (n + 1)

end

end A135392.P4305448843748079808

/-!
# A135393: Not the sum of three perfect powers greater than 1.

The programs for A135393, there is no canonical definition to state claims against.
-/

/-! ## A135393.P3613655451520619449

`A135402(lt[A135578(n+1), A264965(3*n)])`
-/

namespace A135393.P3613655451520619449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264965 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135402 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A135393.P3613655451520619449

/-! ## A135393.P1140757246679076019

`∩[A135402(n+1), A167662(n+1)]`
-/

namespace A135393.P1140757246679076019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135402 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167662 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A135393.P1140757246679076019

/-! ## A135393.P7034691465037725301

`A135402(record[n+1-A034438(n+1)])`
-/

namespace A135393.P7034691465037725301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A034438 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135402 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A135393.P7034691465037725301

/-! ## A135393.P6353924970939106053

`record[gcd(A034438(n+1), A135402(n+1))]`
-/

namespace A135393.P6353924970939106053
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A034438 (n + 1)) (A135402 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A135393.P6353924970939106053

/-! ## A135393.P16382497779308710180

`A135402(A322967(∑[A076499(n+1)]))`
-/

namespace A135393.P16382497779308710180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076499 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135402 (A322967 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A135393.P16382497779308710180

/-!
# A135394: Number of walks of length 2*n+2 from origin to (1,1,0) on a cubic lattice.

The programs for A135394, there is no canonical definition to state claims against.
-/

/-! ## A135394.P13519925797507100075

`(n+1)*A302185(2*n+1)`
-/

namespace A135394.P13519925797507100075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A302185 (2 * n + 1)

end

end A135394.P13519925797507100075

/-! ## A135394.P16695356990404781328

`A002896(n+1)-A136045(n+1)`
-/

namespace A135394.P16695356990404781328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002896 (n + 1) - A136045 (n + 1)

end

end A135394.P16695356990404781328

/-! ## A135394.P742487939106767826

`(A002893(n+1)-A086618(n+1))*A000984(n+1)`
-/

namespace A135394.P742487939106767826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002893 (n + 1) - A086618 (n + 1)) * A000984 (n + 1)

end

end A135394.P742487939106767826

/-! ## A135394.P10874902500922977128

`A002896(n+1)-A000984(n+1)*A086618(n+1)`
-/

namespace A135394.P10874902500922977128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002896 (n + 1) - A000984 (n + 1) * A086618 (n + 1)

end

end A135394.P10874902500922977128

/-! ## A135394.P13034672731883239034

`A002939(n+1)*A302178(n)`
-/

namespace A135394.P13034672731883239034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002939 (n + 1) * A302178 n

end

end A135394.P13034672731883239034

/-!
# A135395: Number of walks of length 2*n+3 from origin to (1,1,1) on a cubic lattice.

The programs for A135395, there is no canonical definition to state claims against.
-/

/-! ## A135395.P13558903633640643455

`Δ[3*A128079(n)]*A046212(2*(n+1))`
-/

namespace A135395.P13558903633640643455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A128079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A046212 (2 * (n + 1))

end

end A135395.P13558903633640643455

/-! ## A135395.P1441032518509935366

`Δ[3*A128079(n)]*A037952(2*n+1)*(n+1)`
-/

namespace A135395.P1441032518509935366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A128079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A037952 (2 * n + 1) * (n + 1 : ℤ)

end

end A135395.P1441032518509935366

/-! ## A135395.P2330259078951015933

`A008588(A000292(2*n+1))*A064037(n)`
-/

namespace A135395.P2330259078951015933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008588 (A000292 (2 * n + 1)).toNat * A064037 n

end

end A135395.P2330259078951015933

/-! ## A135395.P13411366447013202407

`A138544(2*n+3)-A138547(2*n+3)`
-/

namespace A135395.P13411366447013202407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138544 (2 * n + 3) - A138547 (2 * n + 3)

end

end A135395.P13411366447013202407

/-!
# A135396: a(n) = Product_{d|n} (n-d)!.

The programs for A135396, there is no canonical definition to state claims against.
-/

/-! ## A135396.P1377015450390148788

`∏{d}[n+1, (1-#+n)!]`
-/

namespace A135396.P1377015450390148788
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), Nat.factorial (1 - (d : ℤ) + (n : ℤ)).toNat

end

end A135396.P1377015450390148788

/-! ## A135396.P10725272600751975355

`∏{d}[n+1, A000142(n+1-#)]`
-/

namespace A135396.P10725272600751975355
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A000142 (n + 1 - d)

end

end A135396.P10725272600751975355

/-! ## A135396.P10922289155044240940

`lcm(n!, A145892(A186526(n)))`
-/

namespace A135396.P10922289155044240940
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (Nat.factorial n : ℤ) (A145892 (A186526 n).toNat)

end

end A135396.P10922289155044240940

/-!
# A135397: a(n) = 2^n * 3^(n^2).

The programs for A135397, the canonical program `A135397.P1689853498056436315` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135397 has offset 0).

The definition of A135397 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^n*3^n²` (program `A135397.P1689853498056436315`, by `A135397.P1689853498056436315.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A135397.P1689853498056436315

`2^n*3^n²`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A135397

/-- `2^n*3^n²` -/
def P1689853498056436315.Spec : Prop :=
  ∀ n, (P1689853498056436315.a n : ℤ) = A135397 n

theorem P1689853498056436315.correct : P1689853498056436315.Spec := by
  intro n
  simp only [A135397]

end A135397

/-! ## A135397.P15190675096878254600

`lcm(2^n, 3^n²)`
-/

namespace A135397.P15190675096878254600
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (2 ^ n) (3 ^ n ^ 2)

end

end A135397.P15190675096878254600

namespace A135397

/-- `lcm(2^n, 3^n²)` -/
def P15190675096878254600.Spec : Prop :=
  ∀ n, (P15190675096878254600.a n : ℤ) = A135397 n

end A135397

/-! ## A135397.P14926931515997913259

`∏[9*a(n-1)]` with `a(0)=1, a(1)=6`
-/

namespace A135397.P14926931515997913259
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 6] fun n f1 =>
  9 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A135397.P14926931515997913259

namespace A135397

/-- `∏[9*a(n-1)]` -/
def P14926931515997913259.Spec : Prop :=
  ∀ n, (P14926931515997913259.a n : ℤ) = A135397 n

end A135397

/-! ## A135397.P16527353484823266059

`abs((3^n/tan(acot(2)))^n)`
-/

namespace A135397.P16527353484823266059
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  |((3 ^ n : ℝ) / Real.tan (SequenceMachineLib.acot (2 : ℝ))) ^ n|

end

end A135397.P16527353484823266059

namespace A135397

/-- `abs((3^n/tan(acot(2)))^n)` -/
def P16527353484823266059.Spec : Prop :=
  ∀ n, P16527353484823266059.a n = (A135397 n : ℝ)

end A135397

/-! ## A135397.P2759699398507315756

`floor((3^n/tan(acot(2)))^n)`
-/

namespace A135397.P2759699398507315756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((3 ^ n : ℝ) / Real.tan (SequenceMachineLib.acot (2 : ℝ))) ^ n⌋

end

end A135397.P2759699398507315756

namespace A135397

/-- `floor((3^n/tan(acot(2)))^n)` -/
def P2759699398507315756.Spec : Prop :=
  ∀ n, P2759699398507315756.a n = A135397 n

end A135397

/-!
# A135398: a(n) = 3^n * 4^(n^2).

The programs for A135398, the canonical program `A135398.P4971928943160922300` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135398 has offset 0).

The definition of A135398 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3^n*4^n²` (program `A135398.P4971928943160922300`, by `A135398.P4971928943160922300.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A135398.P4971928943160922300

`3^n*4^n²`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A135398

/-- `3^n*4^n²` -/
def P4971928943160922300.Spec : Prop :=
  ∀ n, (P4971928943160922300.a n : ℤ) = A135398 n

theorem P4971928943160922300.correct : P4971928943160922300.Spec := by
  intro n
  simp only [A135398]

end A135398

/-! ## A135398.P17492967186140821887

`lcm(3^n, 4^n²)`
-/

namespace A135398.P17492967186140821887
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (3 ^ n) (4 ^ n ^ 2)

end

end A135398.P17492967186140821887

namespace A135398

/-- `lcm(3^n, 4^n²)` -/
def P17492967186140821887.Spec : Prop :=
  ∀ n, (P17492967186140821887.a n : ℤ) = A135398 n

end A135398

/-! ## A135398.P12621560870880118406

`∏[16*a(n-1)]` with `a(0)=1, a(1)=12`
-/

namespace A135398.P12621560870880118406
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 12] fun n f1 =>
  16 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A135398.P12621560870880118406

namespace A135398

/-- `∏[16*a(n-1)]` -/
def P12621560870880118406.Spec : Prop :=
  ∀ n, (P12621560870880118406.a n : ℤ) = A135398 n

end A135398

/-! ## A135398.P12651455218894608925

`abs((-lcm(3, 4^n))^n)`
-/

namespace A135398.P12651455218894608925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(-(Nat.lcm 3 (4 ^ n) : ℤ)) ^ n|

end

end A135398.P12651455218894608925

namespace A135398

/-- `abs((-lcm(3, 4^n))^n)` -/
def P12651455218894608925.Spec : Prop :=
  ∀ n, P12651455218894608925.a n = A135398 n

end A135398

/-! ## A135398.P5863835516921595969

`abs(record[3*(-2)^n]^n)`
-/

namespace A135398.P5863835516921595969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (-2) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) ^ n|

end

end A135398.P5863835516921595969

namespace A135398

/-- `abs(record[3*(-2)^n]^n)` -/
def P5863835516921595969.Spec : Prop :=
  ∀ n, P5863835516921595969.a n = A135398 n

end A135398

/-!
# A135399: a(n) = (-1)^n + (-2)^n + 3^n (-1, -2 and 3 are the roots of the equation x^3 = 7*x + 6).

The programs for A135399, the canonical program `A135399.P6204431308783691333` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135399 has offset 0).

The definition of A135399 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(-1)^n+(-2)^n+3^n` (program `A135399.P6204431308783691333`, by `A135399.P6204431308783691333.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A135399.P6204431308783691333

`(-1)^n+(-2)^n+3^n`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A135399

/-- `(-1)^n+(-2)^n+3^n` -/
def P6204431308783691333.Spec : Prop :=
  ∀ n, P6204431308783691333.a n = A135399 n

theorem P6204431308783691333.correct : P6204431308783691333.Spec := by
  intro n
  simp only [A135399]

end A135399

/-! ## A135399.P4737197063725551649

`(-1)^n+(-2)^n+3^n*--1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A135399.P4737197063725551649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n + (-2) ^ n + (3 ^ n : ℤ) * 1

end

end A135399.P4737197063725551649

namespace A135399

/-- `(-1)^n+(-2)^n+3^n*--1` -/
def P4737197063725551649.Spec : Prop :=
  ∀ n, P4737197063725551649.a n = A135399 n

theorem P4737197063725551649.correct : P4737197063725551649.Spec := by
  intro n
  simp only [A135399, Nat.add_sub_cancel, A135399.P4737197063725551649.a, A135399.P6204431308783691333.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A135399

/-! ## A135399.P9989900523578802964

`ogf((-3+7x^2)/(-1+7x^2+6x^3))`
-/

namespace A135399.P9989900523578802964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 0, -7] [1, 0, -7, -6] n

end

end A135399.P9989900523578802964

namespace A135399

/-- `ogf((-3+7x^2)/(-1+7x^2+6x^3))` -/
def P9989900523578802964.Spec : Prop :=
  ∀ n, P9989900523578802964.a n = A135399 n

end A135399

/-! ## A135399.P17840660276352239225

`Δ[A344747(n+1)+and(1, n)]`
-/

namespace A135399.P17840660276352239225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344747 (n + 1) + (Nat.land 1 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A135399.P17840660276352239225

namespace A135399

/-- `Δ[A344747(n+1)+and(1, n)]` -/
def P17840660276352239225.Spec : Prop :=
  ∀ n, P17840660276352239225.a n = A135399 n

end A135399

/-! ## A135399.P8809550619499908671

`abs(A087451(n)+A033999(n))`
-/

namespace A135399.P8809550619499908671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A087451 n + A033999 n|

end

end A135399.P8809550619499908671

namespace A135399

/-- `abs(A087451(n)+A033999(n))` -/
def P8809550619499908671.Spec : Prop :=
  ∀ n, P8809550619499908671.a n = A135399 n

end A135399

/-! ## A135399.P12101489186672262701

`xor(A087451(n), A153284(n+1))`
-/

namespace A135399.P12101489186672262701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A087451 n) (A153284 (n + 1))

end

end A135399.P12101489186672262701

namespace A135399

/-- `xor(A087451(n), A153284(n+1))` -/
def P12101489186672262701.Spec : Prop :=
  ∀ n, P12101489186672262701.a n = A135399 n

end A135399

/-! ## A135399.P7167673840330272879

`abs(A000051(n)-Δ[A084567(n)])`
-/

namespace A135399.P7167673840330272879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084567 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000051 n - (f1 (n + 1) - f1 n)|

end

end A135399.P7167673840330272879

namespace A135399

/-- `abs(A000051(n)-Δ[A084567(n)])` -/
def P7167673840330272879.Spec : Prop :=
  ∀ n, P7167673840330272879.a n = A135399 n

end A135399

/-! ## A135399.P14315963556903043796

`Δ[A344747(n+1)+A000034(n)]`
-/

namespace A135399.P14315963556903043796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344747 (n + 1) + A000034 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A135399.P14315963556903043796

namespace A135399

/-- `Δ[A344747(n+1)+A000034(n)]` -/
def P14315963556903043796.Spec : Prop :=
  ∀ n, P14315963556903043796.a n = A135399 n

end A135399

/-! ## A135399.P6265663350768072070

`Δ[A344747(n+1)+A000035(n)]`
-/

namespace A135399.P6265663350768072070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344747 (n + 1) + A000035 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A135399.P6265663350768072070

namespace A135399

/-- `Δ[A344747(n+1)+A000035(n)]` -/
def P6265663350768072070.Spec : Prop :=
  ∀ n, P6265663350768072070.a n = A135399 n

end A135399

/-! ## A135399.P10852168366501153219

`Δ[A344747(n+1)+A135481(A135481(n)²)]`
-/

namespace A135399.P10852168366501153219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344747 (n + 1) + A135481 (A135481 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A135399.P10852168366501153219

namespace A135399

/-- `Δ[A344747(n+1)+A135481(A135481(n)²)]` -/
def P10852168366501153219.Spec : Prop :=
  ∀ n, P10852168366501153219.a n = A135399 n

end A135399

/-! ## A135399.P1807036224841784246

`Δ[A344747(n+1)+A135481(n²)]`
-/

namespace A135399.P1807036224841784246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344747 (n + 1) + A135481 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A135399.P1807036224841784246

namespace A135399

/-- `Δ[A344747(n+1)+A135481(n²)]` -/
def P1807036224841784246.Spec : Prop :=
  ∀ n, P1807036224841784246.a n = A135399 n

end A135399

