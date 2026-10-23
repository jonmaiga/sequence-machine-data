import SequenceMachineLib.Basic
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C038
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
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
# A369300: Expansion of (1/x) * Series_Reversion( x * (1-x)^2 * (1-x^3)^3 ).

The programs for A369300, there is no canonical definition to state claims against.
-/

/-! ## A369300.P6830500090586602265

`A369269(n)+A356325(A206957(n+1))`
-/

namespace A369300.P6830500090586602265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369269 n + A356325 (A206957 (n + 1)).toNat

end

end A369300.P6830500090586602265

/-! ## A369300.P1659340425289429651

`xor(A025444(A186724(2*(n+1))), A369269(n))`
-/

namespace A369300.P1659340425289429651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A025444 (A186724 (2 * (n + 1))).toNat) (A369269 n)

end

end A369300.P1659340425289429651

/-!
# A369303: a(1) = 1, a(2) = 2; for n > 2, a(n) is the smallest unused number whose string value contains the comma transform (cf. A367360) of the previous two terms.

The programs for A369303, there is no canonical definition to state claims against.
-/

/-! ## A369303.P17534396610939907307

`eq[n, A182287(A265902(n))]`
-/

namespace A369303.P17534396610939907307
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182287 (A265902 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A369303.P17534396610939907307

/-! ## A369303.P16128717577853786161

`∩[A087815(n+1), A089604(n)]`
-/

namespace A369303.P16128717577853786161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087815 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089604 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369303.P16128717577853786161

/-! ## A369303.P6630461592677331640

`∩[A089604(n), A091529(n+1)]`
-/

namespace A369303.P6630461592677331640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089604 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091529 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369303.P6630461592677331640

/-!
# A369304: Numbers k for which the polynomial (x-1)^3*(x+1)^k has more than one zero coefficient.

The programs for A369304, the canonical program `A369304.P7205746176651439708` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A369304 has offset 1).

The definition of A369304 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A369304.P7205746176651439708

`∑[(n+2)*gcd(2, n)]-1`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A369304

/-- `∑[(n+2)*gcd(2, n)]-1` -/
def P7205746176651439708.Spec : Prop :=
  ∀ n, P7205746176651439708.a n = A369304 (n + 1)

theorem P7205746176651439708.correct : P7205746176651439708.Spec := by
  intro n
  simp only [A369304, Nat.add_sub_cancel]

end A369304

/-! ## A369304.P2028077035201522490

`∑[∑[4*(n+1)]/a(n-1)]` with `a(0)=3, a(1)=3`
-/

namespace A369304.P2028077035201522490
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.rec [3, 3] fun n f1 =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ) / f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A369304.P2028077035201522490

namespace A369304

/-- `∑[∑[4*(n+1)]/a(n-1)]` -/
def P2028077035201522490.Spec : Prop :=
  ∀ n, P2028077035201522490.a n = (A369304 (n + 1) : ℚ)

end A369304

/-! ## A369304.P10774437565853497604

`∑[∑[a(n-1)+4]/a(n-1)]-1` with `a(0)=4`
-/

namespace A369304.P10774437565853497604
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [4] fun n f2 =>
  f2 (n - 1) + 4

def f1 : ℕ → ℚ := SequenceMachineLib.rec [4] fun n f1 =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ) / f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A369304.P10774437565853497604

namespace A369304

/-- `∑[∑[a(n-1)+4]/a(n-1)]-1` -/
def P10774437565853497604.Spec : Prop :=
  ∀ n, P10774437565853497604.a n = (A369304 (n + 1) : ℚ)

end A369304

/-! ## A369304.P8585050305438343571

`∑[A059029(n+1)]+n`
-/

namespace A369304.P8585050305438343571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059029 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A369304.P8585050305438343571

namespace A369304

/-- `∑[A059029(n+1)]+n` -/
def P8585050305438343571.Spec : Prop :=
  ∀ n, P8585050305438343571.a n = A369304 (n + 1)

end A369304

/-! ## A369304.P10537982833239982387

`A133146(n+1)-2+n`
-/

namespace A369304.P10537982833239982387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133146 (n + 1) - 2 + (n : ℤ)

end

end A369304.P10537982833239982387

namespace A369304

/-- `A133146(n+1)-2+n` -/
def P10537982833239982387.Spec : Prop :=
  ∀ n, P10537982833239982387.a n = A369304 (n + 1)

end A369304

/-! ## A369304.P6746081499876278620

`A042964(n+1)+A014255(n)`
-/

namespace A369304.P6746081499876278620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042964 (n + 1) + A014255 n

end

end A369304.P6746081499876278620

namespace A369304

/-- `A042964(n+1)+A014255(n)` -/
def P6746081499876278620.Spec : Prop :=
  ∀ n, P6746081499876278620.a n = A369304 (n + 1)

end A369304

/-! ## A369304.P14410736664539032737

`A047398(n+1)+A032438(n)`
-/

namespace A369304.P14410736664539032737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047398 (n + 1) + A032438 n

end

end A369304.P14410736664539032737

namespace A369304

/-- `A047398(n+1)+A032438(n)` -/
def P14410736664539032737.Spec : Prop :=
  ∀ n, P14410736664539032737.a n = A369304 (n + 1)

end A369304

/-! ## A369304.P15108157711108764047

`A257083(n)+A047235(n+1)`
-/

namespace A369304.P15108157711108764047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257083 n + A047235 (n + 1)

end

end A369304.P15108157711108764047

namespace A369304

/-- `A257083(n)+A047235(n+1)` -/
def P15108157711108764047.Spec : Prop :=
  ∀ n, P15108157711108764047.a n = A369304 (n + 1)

end A369304

/-! ## A369304.P18196111457100826359

`A165718(n+1)+A144065(n)`
-/

namespace A369304.P18196111457100826359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165718 (n + 1) + A144065 n

end

end A369304.P18196111457100826359

namespace A369304

/-- `A165718(n+1)+A144065(n)` -/
def P18196111457100826359.Spec : Prop :=
  ∀ n, P18196111457100826359.a n = A369304 (n + 1)

end A369304

/-! ## A369304.P2361115422415291165

`A397108(n)+A047621(n+1)`
-/

namespace A369304.P2361115422415291165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397108 n + A047621 (n + 1)

end

end A369304.P2361115422415291165

namespace A369304

/-- `A397108(n)+A047621(n+1)` -/
def P2361115422415291165.Spec : Prop :=
  ∀ n, P2361115422415291165.a n = A369304 (n + 1)

end A369304

/-! ## A369304.P10030202757510825678

`A047270(n+1)+A001082(n+1)`
-/

namespace A369304.P10030202757510825678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047270 (n + 1) + A001082 (n + 1)

end

end A369304.P10030202757510825678

namespace A369304

/-- `A047270(n+1)+A001082(n+1)` -/
def P10030202757510825678.Spec : Prop :=
  ∀ n, P10030202757510825678.a n = A369304 (n + 1)

end A369304

/-! ## A369304.P7128080845196197087

`A271713(n+1)+A047241(n+1)`
-/

namespace A369304.P7128080845196197087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271713 (n + 1) + A047241 (n + 1)

end

end A369304.P7128080845196197087

namespace A369304

/-- `A271713(n+1)+A047241(n+1)` -/
def P7128080845196197087.Spec : Prop :=
  ∀ n, P7128080845196197087.a n = A369304 (n + 1)

end A369304

/-! ## A369304.P5568250635405154454

`A271723(n+1)+A047238(n+1)`
-/

namespace A369304.P5568250635405154454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271723 (n + 1) + A047238 (n + 1)

end

end A369304.P5568250635405154454

namespace A369304

/-- `A271723(n+1)+A047238(n+1)` -/
def P5568250635405154454.Spec : Prop :=
  ∀ n, P5568250635405154454.a n = A369304 (n + 1)

end A369304

/-! ## A369304.P11127225368377705462

`A309805(n+1)+A047211(n+1)`
-/

namespace A369304.P11127225368377705462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309805 (n + 1) + A047211 (n + 1)

end

end A369304.P11127225368377705462

namespace A369304

/-- `A309805(n+1)+A047211(n+1)` -/
def P11127225368377705462.Spec : Prop :=
  ∀ n, P11127225368377705462.a n = A369304 (n + 1)

end A369304

/-! ## A369304.P6507506170236499604

`A079326(n+2)+A014616(n+1)`
-/

namespace A369304.P6507506170236499604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079326 (n + 2) + A014616 (n + 1)

end

end A369304.P6507506170236499604

namespace A369304

/-- `A079326(n+2)+A014616(n+1)` -/
def P6507506170236499604.Spec : Prop :=
  ∀ n, P6507506170236499604.a n = A369304 (n + 1)

end A369304

/-! ## A369304.P13957506454739948851

`A164097(n+1)-A001082(n+1)`
-/

namespace A369304.P13957506454739948851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164097 (n + 1) - A001082 (n + 1)

end

end A369304.P13957506454739948851

namespace A369304

/-- `A164097(n+1)-A001082(n+1)` -/
def P13957506454739948851.Spec : Prop :=
  ∀ n, P13957506454739948851.a n = A369304 (n + 1)

end A369304

/-! ## A369304.P11644758705752893546

`A287057(n+1)-A036666(n+1)`
-/

namespace A369304.P11644758705752893546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287057 (n + 1) - A036666 (n + 1)

end

end A369304.P11644758705752893546

namespace A369304

/-- `A287057(n+1)-A036666(n+1)` -/
def P11644758705752893546.Spec : Prop :=
  ∀ n, P11644758705752893546.a n = A369304 (n + 1)

end A369304

/-! ## A369304.P8833813283763153490

`A034856(n+1)+2*A008805(n)`
-/

namespace A369304.P8833813283763153490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034856 (n + 1) + 2 * A008805 n

end

end A369304.P8833813283763153490

namespace A369304

/-- `A034856(n+1)+2*A008805(n)` -/
def P8833813283763153490.Spec : Prop :=
  ∀ n, P8833813283763153490.a n = A369304 (n + 1)

end A369304

/-! ## A369304.P1150917134233329058

`A257083(n)+2*A001651(n+1)`
-/

namespace A369304.P1150917134233329058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257083 n + 2 * A001651 (n + 1)

end

end A369304.P1150917134233329058

namespace A369304

/-- `A257083(n)+2*A001651(n+1)` -/
def P1150917134233329058.Spec : Prop :=
  ∀ n, P1150917134233329058.a n = A369304 (n + 1)

end A369304

/-! ## A369304.P5498265109914351599

`A028552(n+1)-A008619(n+1)²`
-/

namespace A369304.P5498265109914351599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028552 (n + 1) - A008619 (n + 1) ^ 2

end

end A369304.P5498265109914351599

namespace A369304

/-- `A028552(n+1)-A008619(n+1)²` -/
def P5498265109914351599.Spec : Prop :=
  ∀ n, P5498265109914351599.a n = A369304 (n + 1)

end A369304

/-!
# A369306: The number of cubefree divisors d of n such that n/d is also cubefree.

The programs for A369306, the canonical program `A369306.P7838133556568546041` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A369306 has offset 1).

The definition of A369306 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A369306.P10735132230479055484

`∑{d}[n+1, A008683(#)*A341343((n+1)/#)]`
-/

namespace A369306.P10735132230479055484
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A341343 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A369306.P10735132230479055484

namespace A369306

/-- `∑{d}[n+1, A008683(#)*A341343((n+1)/#)]` -/
def P10735132230479055484.Spec : Prop :=
  ∀ n, P10735132230479055484.a n = A369306 (n + 1)

end A369306

/-! ## A369306.P2903757138762930312

`∑{d}[n+1, A056624(#)*A307425((n+1)/#)]`
-/

namespace A369306.P2903757138762930312
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056624 d * A307425 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A369306.P2903757138762930312

namespace A369306

/-- `∑{d}[n+1, A056624(#)*A307425((n+1)/#)]` -/
def P2903757138762930312.Spec : Prop :=
  ∀ n, P2903757138762930312.a n = A369306 (n + 1)

end A369306

/-! ## A369306.P7838133556568546041

`∑{d}[n+1, A212793(#)*A212793((n+1)/#)]`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A369306

/-- `∑{d}[n+1, A212793(#)*A212793((n+1)/#)]` -/
def P7838133556568546041.Spec : Prop :=
  ∀ n, P7838133556568546041.a n = A369306 (n + 1)

theorem P7838133556568546041.correct : P7838133556568546041.Spec := by
  intro n
  simp only [A369306, Nat.add_sub_cancel]

end A369306

/-! ## A369306.P13871444472138647856

`gcd(∏{e}[n+1, 7*#+1], A037289(n+1))`
-/

namespace A369306.P13871444472138647856
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((∏ p ∈ Nat.primeFactors (f1 n), (7 * Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) (A037289 (n + 1))

end

end A369306.P13871444472138647856

namespace A369306

/-- `gcd(∏{e}[n+1, 7*#+1], A037289(n+1))` -/
def P13871444472138647856.Spec : Prop :=
  ∀ n, (P13871444472138647856.a n : ℤ) = A369306 (n + 1)

end A369306

/-! ## A369306.P13430079689204939341

`∏{e}[n+1, #+1]/A323436(∏{e}[n+1, #!])`
-/

namespace A369306.P13430079689204939341
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℚ) / (A323436 (∏ p ∈ Nat.primeFactors (f2 n), Nat.factorial (Nat.factorization (f2 n) p)) : ℚ)

end

end A369306.P13430079689204939341

namespace A369306

/-- `∏{e}[n+1, #+1]/A323436(∏{e}[n+1, #!])` -/
def P13430079689204939341.Spec : Prop :=
  ∀ n, P13430079689204939341.a n = (A369306 (n + 1) : ℚ)

end A369306

/-!
# A369307: The number of exponentially odd divisors d of n such that n/d is also exponentially odd.

The programs for A369307, the canonical program `A369307.P4586267227378045470` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A369307 has offset 1).

The definition of A369307 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A369307.P4586267227378045470

`∑{d}[n+1, A295316(#)*A295316((n+1)/#)]`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A369307

/-- `∑{d}[n+1, A295316(#)*A295316((n+1)/#)]` -/
def P4586267227378045470.Spec : Prop :=
  ∀ n, P4586267227378045470.a n = A369307 (n + 1)

theorem P4586267227378045470.correct : P4586267227378045470.Spec := by
  intro n
  simp only [A369307, Nat.add_sub_cancel]

end A369307

/-! ## A369307.P3072027939001715499

`∏{e}[n+1, A128428(A138265(#+3))]`
-/

namespace A369307.P3072027939001715499
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A128428 (A138265 (Nat.factorization (f1 n) p + 3)).toNat

end

end A369307.P3072027939001715499

namespace A369307

/-- `∏{e}[n+1, A128428(A138265(#+3))]` -/
def P3072027939001715499.Spec : Prop :=
  ∀ n, P3072027939001715499.a n = A369307 (n + 1)

end A369307

/-! ## A369307.P15304439755628891700

`∏{e}[(n+1)*∏{p}[n+1, #²], A036497(#)]`
-/

namespace A369307.P15304439755628891700
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∏ p ∈ Nat.primeFactors (f2 n), p ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A036497 (Nat.factorization (f1 n) p)

end

end A369307.P15304439755628891700

namespace A369307

/-- `∏{e}[(n+1)*∏{p}[n+1, #²], A036497(#)]` -/
def P15304439755628891700.Spec : Prop :=
  ∀ n, P15304439755628891700.a n = A369307 (n + 1)

end A369307

/-! ## A369307.P9194026127151302227

`A387960(A270436(n+1))`
-/

namespace A369307.P9194026127151302227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387960 (A270436 (n + 1)).toNat

end

end A369307.P9194026127151302227

namespace A369307

/-- `A387960(A270436(n+1))` -/
def P9194026127151302227.Spec : Prop :=
  ∀ n, P9194026127151302227.a n = A369307 (n + 1)

end A369307

/-! ## A369307.P31955051337934840

`gcd(A191488(n), A354825(n+1))`
-/

namespace A369307.P31955051337934840
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A191488 n) (A354825 (n + 1))

end

end A369307.P31955051337934840

namespace A369307

/-- `gcd(A191488(n), A354825(n+1))` -/
def P31955051337934840.Spec : Prop :=
  ∀ n, (P31955051337934840.a n : ℤ) = A369307 (n + 1)

end A369307

/-! ## A369307.P12505994028480746556

`∏{e}[n+1, A121337(A032051(#-1))]`
-/

namespace A369307.P12505994028480746556
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A121337 (A032051 (Nat.factorization (f1 n) p - 1)).toNat

end

end A369307.P12505994028480746556

namespace A369307

/-- `∏{e}[n+1, A121337(A032051(#-1))]` -/
def P12505994028480746556.Spec : Prop :=
  ∀ n, P12505994028480746556.a n = A369307 (n + 1)

end A369307

/-! ## A369307.P305260611349811106

`A323308(A227324(n+1))`
-/

namespace A369307.P305260611349811106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323308 (A227324 (n + 1)).toNat

end

end A369307.P305260611349811106

namespace A369307

/-- `A323308(A227324(n+1))` -/
def P305260611349811106.Spec : Prop :=
  ∀ n, P305260611349811106.a n = A369307 (n + 1)

end A369307

/-!
# A369308: The number of square divisors d of n such that n/d is also a square.

The programs for A369308, the canonical program `A369308.P10334454097414286885` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A369308 has offset 1).

The definition of A369308 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A369308.P10334454097414286885

`Δ[A113215(n)]`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A369308

/-- `Δ[A113215(n)]` -/
def P10334454097414286885.Spec : Prop :=
  ∀ n, P10334454097414286885.a n = A369308 (n + 1)

theorem P10334454097414286885.correct : P10334454097414286885.Spec := by
  intro n
  simp only [A369308, Nat.add_sub_cancel]

end A369308

/-! ## A369308.P1351002683974442062

`Δ[A006218(floor(sqrt(n)))]`
-/

namespace A369308.P1351002683974442062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 (Nat.sqrt n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A369308.P1351002683974442062

namespace A369308

/-- `Δ[A006218(floor(sqrt(n)))]` -/
def P1351002683974442062.Spec : Prop :=
  ∀ n, P1351002683974442062.a n = A369308 (n + 1)

end A369308

/-! ## A369308.P14835420474069820505

`Δ[A054519(floor(sqrt(n)))]`
-/

namespace A369308.P14835420474069820505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 (Nat.sqrt n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A369308.P14835420474069820505

namespace A369308

/-- `Δ[A054519(floor(sqrt(n)))]` -/
def P14835420474069820505.Spec : Prop :=
  ∀ n, P14835420474069820505.a n = A369308 (n + 1)

end A369308

/-! ## A369308.P4557123750372651274

`∏{e}[n+1, A027656(#)]`
-/

namespace A369308.P4557123750372651274
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A027656 (Nat.factorization (f1 n) p)

end

end A369308.P4557123750372651274

namespace A369308

/-- `∏{e}[n+1, A027656(#)]` -/
def P4557123750372651274.Spec : Prop :=
  ∀ n, P4557123750372651274.a n = A369308 (n + 1)

end A369308

/-! ## A369308.P17197812380612574060

`A130209(A056536(n+1))`
-/

namespace A369308.P17197812380612574060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130209 (A056536 (n + 1)).toNat

end

end A369308.P17197812380612574060

namespace A369308

/-- `A130209(A056536(n+1))` -/
def P17197812380612574060.Spec : Prop :=
  ∀ n, P17197812380612574060.a n = A369308 (n + 1)

end A369308

/-! ## A369308.P13813429566211613723

`A130209(A064788(n+1))`
-/

namespace A369308.P13813429566211613723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130209 (A064788 (n + 1)).toNat

end

end A369308.P13813429566211613723

namespace A369308

/-- `A130209(A064788(n+1))` -/
def P13813429566211613723.Spec : Prop :=
  ∀ n, P13813429566211613723.a n = A369308 (n + 1)

end A369308

/-! ## A369308.P16795042192050436663

`A130209(A259549(n+1))`
-/

namespace A369308.P16795042192050436663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130209 (A259549 (n + 1)).toNat

end

end A369308.P16795042192050436663

namespace A369308

/-- `A130209(A259549(n+1))` -/
def P16795042192050436663.Spec : Prop :=
  ∀ n, P16795042192050436663.a n = A369308 (n + 1)

end A369308

/-! ## A369308.P15121445425781729683

`A113215(n+1)-A113215(n)`
-/

namespace A369308.P15121445425781729683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113215 (n + 1) - A113215 n

end

end A369308.P15121445425781729683

namespace A369308

/-- `A113215(n+1)-A113215(n)` -/
def P15121445425781729683.Spec : Prop :=
  ∀ n, P15121445425781729683.a n = A369308 (n + 1)

theorem P15121445425781729683.correct : P15121445425781729683.Spec := by
  intro n
  simp only [A369308, Nat.add_sub_cancel, A369308.P15121445425781729683.a, A369308.P10334454097414286885.f1, A369308.P10334454097414286885.a, SequenceMachineLib.memo_apply]

end A369308

/-! ## A369308.P17295620729488559496

`Δ[A000196(n)]*A046951(n+1)`
-/

namespace A369308.P17295620729488559496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A046951 (n + 1)

end

end A369308.P17295620729488559496

namespace A369308

/-- `Δ[A000196(n)]*A046951(n+1)` -/
def P17295620729488559496.Spec : Prop :=
  ∀ n, P17295620729488559496.a n = A369308 (n + 1)

end A369308

/-! ## A369308.P14238746920423986373

`char[A005563(n)]*A046951(n+1)`
-/

namespace A369308.P14238746920423986373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005563 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A046951 (n + 1)

end

end A369308.P14238746920423986373

namespace A369308

/-- `char[A005563(n)]*A046951(n+1)` -/
def P14238746920423986373.Spec : Prop :=
  ∀ n, P14238746920423986373.a n = A369308 (n + 1)

end A369308

/-! ## A369308.P2221328100057579732

`A010052(n+1)*A046951(n+1)`
-/

namespace A369308.P2221328100057579732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (n + 1) * A046951 (n + 1)

end

end A369308.P2221328100057579732

namespace A369308

/-- `A010052(n+1)*A046951(n+1)` -/
def P2221328100057579732.Spec : Prop :=
  ∀ n, P2221328100057579732.a n = A369308 (n + 1)

end A369308

/-! ## A369308.P284811443142737574

`A010052(n+1)*A332712(n+1)`
-/

namespace A369308.P284811443142737574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (n + 1) * A332712 (n + 1)

end

end A369308.P284811443142737574

namespace A369308

/-- `A010052(n+1)*A332712(n+1)` -/
def P284811443142737574.Spec : Prop :=
  ∀ n, P284811443142737574.a n = A369308 (n + 1)

end A369308

/-! ## A369308.P4460691668763327834

`A010052(n+1)*A389887(n+1)`
-/

namespace A369308.P4460691668763327834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (n + 1) * A389887 (n + 1)

end

end A369308.P4460691668763327834

namespace A369308

/-- `A010052(n+1)*A389887(n+1)` -/
def P4460691668763327834.Spec : Prop :=
  ∀ n, P4460691668763327834.a n = A369308 (n + 1)

end A369308

/-! ## A369308.P2461473311064761346

`(2-A275437(n))*A332712(n+1)`
-/

namespace A369308.P2461473311064761346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A275437 n) * A332712 (n + 1)

end

end A369308.P2461473311064761346

namespace A369308

/-- `(2-A275437(n))*A332712(n+1)` -/
def P2461473311064761346.Spec : Prop :=
  ∀ n, P2461473311064761346.a n = A369308 (n + 1)

end A369308

/-! ## A369308.P5791791926341419629

`A397549(n+1)%A161841(n+1)`
-/

namespace A369308.P5791791926341419629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A397549 (n + 1)) (A161841 (n + 1))

end

end A369308.P5791791926341419629

namespace A369308

/-- `A397549(n+1)%A161841(n+1)` -/
def P5791791926341419629.Spec : Prop :=
  ∀ n, P5791791926341419629.a n = A369308 (n + 1)

end A369308

/-! ## A369308.P8088468031001825081

`∑{d}[n+1, A008836(#)*A046951((n+1)/#)]`
-/

namespace A369308.P8088468031001825081
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008836 d * A046951 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A369308.P8088468031001825081

namespace A369308

/-- `∑{d}[n+1, A008836(#)*A046951((n+1)/#)]` -/
def P8088468031001825081.Spec : Prop :=
  ∀ n, P8088468031001825081.a n = A369308 (n + 1)

end A369308

/-! ## A369308.P14864417417670434202

`∑{d}[n+1, A124315(#)*A158522((n+1)/#)]`
-/

namespace A369308.P14864417417670434202
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A124315 d * A158522 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A369308.P14864417417670434202

namespace A369308

/-- `∑{d}[n+1, A124315(#)*A158522((n+1)/#)]` -/
def P14864417417670434202.Spec : Prop :=
  ∀ n, P14864417417670434202.a n = A369308 (n + 1)

end A369308

/-! ## A369308.P5842850851183087573

`∑{d}[n+1, A000005(#)*A329484((n+1)/#)]`
-/

namespace A369308.P5842850851183087573
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d * A329484 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A369308.P5842850851183087573

namespace A369308

/-- `∑{d}[n+1, A000005(#)*A329484((n+1)/#)]` -/
def P5842850851183087573.Spec : Prop :=
  ∀ n, P5842850851183087573.a n = A369308 (n + 1)

end A369308

/-! ## A369308.P8687283636613223056

`∑{d}[n+1, A056624(#)*A307420((n+1)/#)]`
-/

namespace A369308.P8687283636613223056
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056624 d * A307420 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A369308.P8687283636613223056

namespace A369308

/-- `∑{d}[n+1, A056624(#)*A307420((n+1)/#)]` -/
def P8687283636613223056.Spec : Prop :=
  ∀ n, P8687283636613223056.a n = A369308 (n + 1)

end A369308

/-! ## A369308.P14000568757890289735

`∑{d}[n+1, A061704(#)*A303915((n+1)/#)]`
-/

namespace A369308.P14000568757890289735
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A061704 d * A303915 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A369308.P14000568757890289735

namespace A369308

/-- `∑{d}[n+1, A061704(#)*A303915((n+1)/#)]` -/
def P14000568757890289735.Spec : Prop :=
  ∀ n, P14000568757890289735.a n = A369308 (n + 1)

end A369308

/-!
# A369309: The number of powerful divisors d of n such that n/d is also powerful.

The programs for A369309, the canonical program `A369309.P724435184133037791` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A369309 has offset 1).

The definition of A369309 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A369309.P724435184133037791

`A190867(n+1)*A197881(n+1)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A369309

/-- `A190867(n+1)*A197881(n+1)` -/
def P724435184133037791.Spec : Prop :=
  ∀ n, P724435184133037791.a n = A369309 (n + 1)

theorem P724435184133037791.correct : P724435184133037791.Spec := by
  intro n
  simp only [A369309, Nat.add_sub_cancel]

end A369309

/-! ## A369309.P5371230140659848147

`A112526(n+1)*A369310(n+1)`
-/

namespace A369309.P5371230140659848147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112526 (n + 1) * A369310 (n + 1)

end

end A369309.P5371230140659848147

namespace A369309

/-- `A112526(n+1)*A369310(n+1)` -/
def P5371230140659848147.Spec : Prop :=
  ∀ n, P5371230140659848147.a n = A369309 (n + 1)

end A369309

/-! ## A369309.P16143620534072046843

`A197881(n+1)*A361430(n+1)`
-/

namespace A369309.P16143620534072046843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197881 (n + 1) * A361430 (n + 1)

end

end A369309.P16143620534072046843

namespace A369309

/-- `A197881(n+1)*A361430(n+1)` -/
def P16143620534072046843.Spec : Prop :=
  ∀ n, P16143620534072046843.a n = A369309 (n + 1)

end A369309

/-! ## A369309.P8133987595006228442

`A361430(n+1)*A365498(n+1)`
-/

namespace A369309.P8133987595006228442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361430 (n + 1) * A365498 (n + 1)

end

end A369309.P8133987595006228442

namespace A369309

/-- `A361430(n+1)*A365498(n+1)` -/
def P8133987595006228442.Spec : Prop :=
  ∀ n, P8133987595006228442.a n = A369309 (n + 1)

end A369309

/-! ## A369309.P14990059632552389713

`lcm(A307423(n+1), A369310(n+1))`
-/

namespace A369309.P14990059632552389713
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A307423 (n + 1)) (A369310 (n + 1))

end

end A369309.P14990059632552389713

namespace A369309

/-- `lcm(A307423(n+1), A369310(n+1))` -/
def P14990059632552389713.Spec : Prop :=
  ∀ n, (P14990059632552389713.a n : ℤ) = A369309 (n + 1)

end A369309

/-! ## A369309.P7853254653063206909

`A355683(n+1)²*A369310(n+1)`
-/

namespace A369309.P7853254653063206909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355683 (n + 1) ^ 2 * A369310 (n + 1)

end

end A369309.P7853254653063206909

namespace A369309

/-- `A355683(n+1)²*A369310(n+1)` -/
def P7853254653063206909.Spec : Prop :=
  ∀ n, P7853254653063206909.a n = A369309 (n + 1)

end A369309

/-! ## A369309.P4492783097581449911

`∑{d}[n+1, A112526(#)*A112526((n+1)/#)]`
-/

namespace A369309.P4492783097581449911
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A112526 d * A112526 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A369309.P4492783097581449911

namespace A369309

/-- `∑{d}[n+1, A112526(#)*A112526((n+1)/#)]` -/
def P4492783097581449911.Spec : Prop :=
  ∀ n, P4492783097581449911.a n = A369309 (n + 1)

end A369309

/-! ## A369309.P14662687602343953295

`∑{d}[n+1, A005361(#)*A363551((n+1)/#)]`
-/

namespace A369309.P14662687602343953295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A005361 d * A363551 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A369309.P14662687602343953295

namespace A369309

/-- `∑{d}[n+1, A005361(#)*A363551((n+1)/#)]` -/
def P14662687602343953295.Spec : Prop :=
  ∀ n, P14662687602343953295.a n = A369309 (n + 1)

end A369309

/-!
# A369310: The number of divisors d of n such that gcd(d, n/d) is a powerful number.

The programs for A369310, the canonical program `A369310.P4588423880105354459` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A369310 has offset 1).

The definition of A369310 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A369310.P8521883818292792981

`∏{e}[n+1, A233583(#)]`
-/

namespace A369310.P8521883818292792981
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A233583 (Nat.factorization (f1 n) p)

end

end A369310.P8521883818292792981

namespace A369310

/-- `∏{e}[n+1, A233583(#)]` -/
def P8521883818292792981.Spec : Prop :=
  ∀ n, P8521883818292792981.a n = A369310 (n + 1)

end A369310

/-! ## A369310.P8824242052071827302

`A000005((n+1)/gcd(n+1, ∏{p}[n+1, #]^3)*∏{p}[n+1, #])`
-/

namespace A369310.P8824242052071827302
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Nat.gcd (n + 1) ((∏ p ∈ Nat.primeFactors (f1 n), p) ^ 3) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ))).toNat

end

end A369310.P8824242052071827302

namespace A369310

/-- `A000005((n+1)/gcd(n+1, ∏{p}[n+1, #]^3)*∏{p}[n+1, #])` -/
def P8824242052071827302.Spec : Prop :=
  ∀ n, P8824242052071827302.a n = A369310 (n + 1)

end A369310

/-! ## A369310.P4588423880105354459

`A190867(n+1)*A365498(n+1)`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A369310

/-- `A190867(n+1)*A365498(n+1)` -/
def P4588423880105354459.Spec : Prop :=
  ∀ n, P4588423880105354459.a n = A369310 (n + 1)

theorem P4588423880105354459.correct : P4588423880105354459.Spec := by
  intro n
  simp only [A369310, Nat.add_sub_cancel]

end A369310

/-! ## A369310.P3194064265738141220

`∑{d}[n+1, A008966(#)*A365333((n+1)/#)]`
-/

namespace A369310.P3194064265738141220
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008966 d * A365333 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A369310.P3194064265738141220

namespace A369310

/-- `∑{d}[n+1, A008966(#)*A365333((n+1)/#)]` -/
def P3194064265738141220.Spec : Prop :=
  ∀ n, P3194064265738141220.a n = A369310 (n + 1)

end A369310

/-! ## A369310.P6369070942116012909

`A000005((n+1)/gcd(n+1, ∏{p}[n+1, #]^3)*A007947(n+1))`
-/

namespace A369310.P6369070942116012909
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Nat.gcd (n + 1) ((∏ p ∈ Nat.primeFactors (f1 n), p) ^ 3) : ℚ) * (A007947 (n + 1) : ℚ))).toNat

end

end A369310.P6369070942116012909

namespace A369310

/-- `A000005((n+1)/gcd(n+1, ∏{p}[n+1, #]^3)*A007947(n+1))` -/
def P6369070942116012909.Spec : Prop :=
  ∀ n, P6369070942116012909.a n = A369310 (n + 1)

end A369310

/-! ## A369310.P17058102033911294277

`A369309(A197863(n+1))`
-/

namespace A369310.P17058102033911294277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369309 (A197863 (n + 1)).toNat

end

end A369310.P17058102033911294277

namespace A369310

/-- `A369309(A197863(n+1))` -/
def P17058102033911294277.Spec : Prop :=
  ∀ n, P17058102033911294277.a n = A369310 (n + 1)

end A369310

/-!
# A369311: Square array A(n, k), n >= 0, k > 0, read by upwards antidiagonals: P(A(n, k)) is the remainder of the polynomial long division of P(n) by P(k) (where P(m) denotes the polynomial over GF(2) whose coefficients are encoded in the binary expansion of the nonnegative integer m).

The programs for A369311, there is no canonical definition to state claims against.
-/

/-! ## A369311.P11381342208974467331

`A048158(n+1)/A161642(A284463(n))`
-/

namespace A369311.P11381342208974467331
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048158 (n + 1) : ℚ) / (A161642 (A284463 n).toNat : ℚ)

end

end A369311.P11381342208974467331

/-! ## A369311.P10206830503424326302

`A048158(n+1)/A046951(A337183(n+2))`
-/

namespace A369311.P10206830503424326302
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048158 (n + 1) : ℚ) / (A046951 (A337183 (n + 2)).toNat : ℚ)

end

end A369311.P10206830503424326302

/-! ## A369311.P10874781221135738216

`A000007(A329323(n+1))*A329314(3*n+1)`
-/

namespace A369311.P10874781221135738216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A329323 (n + 1)).toNat * A329314 (3 * n + 1)

end

end A369311.P10874781221135738216

/-! ## A369311.P12286168431154879619

`A048158(n+1)-A048158(A138066(3*n+2))`
-/

namespace A369311.P12286168431154879619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048158 (n + 1) - A048158 (A138066 (3 * n + 2)).toNat

end

end A369311.P12286168431154879619

/-! ## A369311.P1081027888016369194

`gcd(A048158(n+1), A340599(A121428(n)))`
-/

namespace A369311.P1081027888016369194
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A048158 (n + 1)) (A340599 (A121428 n).toNat)

end

end A369311.P1081027888016369194

/-!
# A369312: Square array A(n, k), n >= 0, k > 0, read by upwards antidiagonals: P(A(n, k)) is the quotient of the polynomial long division of P(n) by P(k) (where P(m) denotes the polynomial over GF(2) whose coefficients are encoded in the binary expansion of the nonnegative integer m).

The programs for A369312, there is no canonical definition to state claims against.
-/

/-! ## A369312.P14366213196222933092

`A025581(n)-A001221(A188644(n))`
-/

namespace A369312.P14366213196222933092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n - A001221 (A188644 n).toNat

end

end A369312.P14366213196222933092

/-! ## A369312.P8771800808737124201

`A010766(n+1)-A257680(A299264(n+1))`
-/

namespace A369312.P8771800808737124201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010766 (n + 1) - A257680 (A299264 (n + 1)).toNat

end

end A369312.P8771800808737124201

/-! ## A369312.P4024793151297225959

`A180969(n)+A156659(A160160(2*(n+1)))`
-/

namespace A369312.P4024793151297225959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180969 n + A156659 (A160160 (2 * (n + 1))).toNat

end

end A369312.P4024793151297225959

/-! ## A369312.P2662249844673824150

`A124764(A388855(n+1))`
-/

namespace A369312.P2662249844673824150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124764 (A388855 (n + 1)).toNat

end

end A369312.P2662249844673824150

/-! ## A369312.P3136562765650590846

`A010766(n+1)-A030308(A245732(n))`
-/

namespace A369312.P3136562765650590846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010766 (n + 1) - A030308 (A245732 n).toNat

end

end A369312.P3136562765650590846

/-!
# A369314: Number of chiral pairs of polyominoes composed of n triangular cells of the hyperbolic regular tiling with Schläfli symbol {3,oo}.

The programs for A369314, there is no canonical definition to state claims against.
-/

/-! ## A369314.P6066655929648418030

`A000207(n+4)-A208355(n+3)`
-/

namespace A369314.P6066655929648418030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000207 (n + 4) - A208355 (n + 3)

end

end A369314.P6066655929648418030

/-! ## A369314.P7242917404236271017

`A001683(n+6)-A000207(n+4)`
-/

namespace A369314.P7242917404236271017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001683 (n + 6) - A000207 (n + 4)

end

end A369314.P7242917404236271017

/-! ## A369314.P6600591961224991050

`(A001683(n+6)-A208355(n+3))/2`
-/

namespace A369314.P6600591961224991050
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001683 (n + 6) - A208355 (n + 3) : ℚ) / 2

end

end A369314.P6600591961224991050

/-!
# A369315: Number of chiral pairs of polyominoes composed of n square cells of the hyperbolic regular tiling with Schläfli symbol {4,oo}.

The programs for A369315, there is no canonical definition to state claims against.
-/

/-! ## A369315.P7677754189264359051

`A005034(n+4)-A005036(n+4)`
-/

namespace A369315.P7677754189264359051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005034 (n + 4) - A005036 (n + 4)

end

end A369315.P7677754189264359051

/-! ## A369315.P2629254102393278043

`A005036(n+4)-A047749(n+4)`
-/

namespace A369315.P2629254102393278043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005036 (n + 4) - A047749 (n + 4)

end

end A369315.P2629254102393278043

/-! ## A369315.P14980163352629948362

`(A005034(n+4)-A047749(n+4))/2`
-/

namespace A369315.P14980163352629948362
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005034 (n + 4) - A047749 (n + 4) : ℚ) / 2

end

end A369315.P14980163352629948362

/-!
# A369317: a(n) = A091255(n, n + 1).

The programs for A369317, there is no canonical definition to state claims against.
-/

/-! ## A369317.P4315645960400281397

`A327856(∑[n+2])`
-/

namespace A369317.P4315645960400281397
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327856 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A369317.P4315645960400281397

/-! ## A369317.P8753323386251737663

`A091255(A026393(n+2))`
-/

namespace A369317.P8753323386251737663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091255 (A026393 (n + 2)).toNat

end

end A369317.P8753323386251737663

/-! ## A369317.P18363627437853774445

`A091255(A008805(n)+A002378(n))`
-/

namespace A369317.P18363627437853774445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091255 (A008805 n + A002378 n).toNat

end

end A369317.P18363627437853774445

/-! ## A369317.P12744074807698012614

`A280505(A327856(A000217(n+1)+n+1))`
-/

namespace A369317.P12744074807698012614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280505 (A327856 (A000217 (n + 1) + (n + 1 : ℤ)).toNat).toNat

end

end A369317.P12744074807698012614

/-! ## A369317.P18303719109224256416

`gcd(A120112(2*n+3), A327856(A000217(n+1)+n+1))`
-/

namespace A369317.P18303719109224256416
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A120112 (2 * n + 3)) (A327856 (A000217 (n + 1) + (n + 1 : ℤ)).toNat)

end

end A369317.P18303719109224256416

/-! ## A369317.P12972748852974687909

`A091255(2*(n+1)²)`
-/

namespace A369317.P12972748852974687909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091255 (2 * (n + 1) ^ 2)

end

end A369317.P12972748852974687909

/-! ## A369317.P6535289151755696932

`ceil(ratio[A091255(A058331(n))])`
-/

namespace A369317.P6535289151755696932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091255 (A058331 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌉

end

end A369317.P6535289151755696932

/-! ## A369317.P17009366554162975463

`and(-1, A091255(A058331(n+1)))`
-/

namespace A369317.P17009366554162975463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A091255 (A058331 (n + 1)).toNat)

end

end A369317.P17009366554162975463

/-!
# A369318: Numbers k such that A091255(k, k + 1) <> 1.

The programs for A369318, there is no canonical definition to state claims against.
-/

/-! ## A369318.P8096207244872696209

`lt[1, A369317(n+1)]+1`
-/

namespace A369318.P8096207244872696209
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369317 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A369318.P8096207244872696209

/-! ## A369318.P245270177889225063

`lt[1, A369317(A028310(n))]`
-/

namespace A369318.P245270177889225063
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369317 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A369318.P245270177889225063

/-! ## A369318.P9168937464805590961

`or(A001221(A128336(n+1)), A110087(2*n+1))`
-/

namespace A369318.P9168937464805590961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001221 (A128336 (n + 1)).toNat) (A110087 (2 * n + 1))

end

end A369318.P9168937464805590961

/-! ## A369318.P11495557455426288574

`lt[A357861(A087794(2*(n+2))), A000203(n+1)]`
-/

namespace A369318.P11495557455426288574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357861 (A087794 (2 * (n + 2))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A369318.P11495557455426288574

/-!
# A369320: Lexicographically earliest sequence such that each set of numbers enclosed by a pair of consecutive, equal terms, excluding the endpoints, is distinct.

The programs for A369320, there is no canonical definition to state claims against.
-/

/-! ## A369320.P18076153670118889056

`A329313(A316476(n+1)%A378082(3*n+5))`
-/

namespace A369320.P18076153670118889056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329313 (Int.tmod (A316476 (n + 1)) (A378082 (3 * n + 5))).toNat

end

end A369320.P18076153670118889056

/-! ## A369320.P9570115628186290042

`A107573(n+1)-A000035(A318391(n+4))`
-/

namespace A369320.P9570115628186290042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107573 (n + 1) - A000035 (A318391 (n + 4)).toNat

end

end A369320.P9570115628186290042

/-! ## A369320.P1069987695918360115

`A124768(A320324(n+1)+A028240(n))`
-/

namespace A369320.P1069987695918360115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124768 (A320324 (n + 1) + A028240 n).toNat

end

end A369320.P1069987695918360115

/-! ## A369320.P6774281222824367786

`A000120(lt[A328598(n), A124576(n+1)])`
-/

namespace A369320.P6774281222824367786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328598 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124576 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A369320.P6774281222824367786

/-! ## A369320.P6007588583094789483

`A329312(A010766(n+1)*A320324(n+1))`
-/

namespace A369320.P6007588583094789483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329312 (A010766 (n + 1) * A320324 (n + 1)).toNat

end

end A369320.P6007588583094789483

/-!
# A369321: T(n,k) is the number of length-n weak ascent sequences (prefixed with a zero) with k weak ascents, triangle read by rows.

The programs for A369321, there is no canonical definition to state claims against.
-/

/-! ## A369321.P15835083360531447362

`A122890(n)-A360109(A290337(n+1))`
-/

namespace A369321.P15835083360531447362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122890 n - A360109 (A290337 (n + 1)).toNat

end

end A369321.P15835083360531447362

/-! ## A369321.P15850518348088639566

`A122890(n)-A346619(A128457(n+1))`
-/

namespace A369321.P15850518348088639566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122890 n - A346619 (A128457 (n + 1)).toNat

end

end A369321.P15850518348088639566

/-! ## A369321.P2397686100497686510

`A122890(n)-A185284(A165157(n))`
-/

namespace A369321.P2397686100497686510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122890 n - A185284 (A165157 n).toNat

end

end A369321.P2397686100497686510

/-! ## A369321.P8322288143073250963

`A082861(A340101(n)*A343088(n))`
-/

namespace A369321.P8322288143073250963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082861 (A340101 n * A343088 n).toNat

end

end A369321.P8322288143073250963

/-! ## A369321.P9166652970890515029

`A082861(A343088(n)*A350514(n))`
-/

namespace A369321.P9166652970890515029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082861 (A343088 n * A350514 n).toNat

end

end A369321.P9166652970890515029

/-!
# A369322: a(n) is the number of weak ascent sequences (of any length) with n weak ascents.

The programs for A369322, there is no canonical definition to state claims against.
-/

/-! ## A369322.P7372641485189983719

`A005230(∑[n]+1)`
-/

namespace A369322.P7372641485189983719
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005230 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A369322.P7372641485189983719

/-! ## A369322.P17130812508542189096

`A066777(A179865(n+1))`
-/

namespace A369322.P17130812508542189096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066777 (A179865 (n + 1)).toNat

end

end A369322.P17130812508542189096

/-! ## A369322.P8085297628200137707

`A010052(3*n+2)+A005230(A000124(n))`
-/

namespace A369322.P8085297628200137707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (3 * n + 2) + A005230 (A000124 n).toNat

end

end A369322.P8085297628200137707

/-! ## A369322.P17131557829403161218

`A000629(A075091(2*n+3))*A005230(A000124(n))`
-/

namespace A369322.P17131557829403161218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000629 (A075091 (2 * n + 3)).toNat * A005230 (A000124 n).toNat

end

end A369322.P17131557829403161218

/-! ## A369322.P3653495645868381485

`A096858(A000124(∑[n]))`
-/

namespace A369322.P3653495645868381485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096858 (A000124 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A369322.P3653495645868381485

/-!
# A369323: Lexicographically earliest sequence such that each set of numbers enclosed by a pair of consecutive, equal terms, including the endpoints, is distinct.

The programs for A369323, there is no canonical definition to state claims against.
-/

/-! ## A369323.P11469945734862556517

`A124767(or(A124767(n), A279548(n)))`
-/

namespace A369323.P11469945734862556517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124767 (Int.lor (A124767 n) (A279548 n)).toNat

end

end A369323.P11469945734862556517

/-! ## A369323.P5876019282530893625

`A333632(A001214(n+1)%A270613(n+3))`
-/

namespace A369323.P5876019282530893625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333632 (Int.tmod (A001214 (n + 1)) (A270613 (n + 3))).toNat

end

end A369323.P5876019282530893625

/-! ## A369323.P2485478002562375385

`A115574(A343108(3*(n+1))+A115607(n+1))`
-/

namespace A369323.P2485478002562375385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115574 (A343108 (3 * (n + 1)) + A115607 (n + 1)).toNat

end

end A369323.P2485478002562375385

/-! ## A369323.P3257079530372703902

`A082691(A088314(n)*A100135(n))`
-/

namespace A369323.P3257079530372703902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082691 (A088314 n * A100135 n).toNat

end

end A369323.P3257079530372703902

/-! ## A369323.P10620423627852792633

`A001221(A115761(n+1)+A009116(n))`
-/

namespace A369323.P10620423627852792633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A115761 (n + 1) + A009116 n).toNat

end

end A369323.P10620423627852792633

/-!
# A369324: Array read by ascending antidiagonals: A(n,k) is the number of words of length n on an alphabet [k], avoiding 120 and 210, and sortable by a stack of depth 2, where k >= 0.

The programs for A369324, there is no canonical definition to state claims against.
-/

/-! ## A369324.P10881833762768129035

`A076185(n+1)%2*A004248(n)`
-/

namespace A369324.P10881833762768129035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A076185 (n + 1)) 2 * A004248 n

end

end A369324.P10881833762768129035

/-! ## A369324.P6192833984245469341

`A004248(n)%record[A163639(2*n+1)]`
-/

namespace A369324.P6192833984245469341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163639 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004248 n) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A369324.P6192833984245469341

/-! ## A369324.P14375118594828892212

`A004248(C(A347779(n), (n+1)²)+n)`
-/

namespace A369324.P14375118594828892212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004248 (Nat.choose (A347779 n).toNat ((n + 1) ^ 2) + n)

end

end A369324.P14375118594828892212

/-! ## A369324.P16491366729014424433

`A004248(C(A276543(2*n+1), (n+1)²)+n)`
-/

namespace A369324.P16491366729014424433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004248 (Nat.choose (A276543 (2 * n + 1)).toNat ((n + 1) ^ 2) + n)

end

end A369324.P16491366729014424433

/-! ## A369324.P6677917409364687104

`A004248(n)-A096268(A351017(n))`
-/

namespace A369324.P6677917409364687104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004248 n - A096268 (A351017 n).toNat

end

end A369324.P6677917409364687104

/-!
# A369325: a(n) is the number of words of length n over the alphabet [n], avoiding 120 and 210, and sortable by a stack of depth 2.

The programs for A369325, there is no canonical definition to state claims against.
-/

/-! ## A369325.P16253870010442956797

`A369324(∑[4*n])`
-/

namespace A369325.P16253870010442956797
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369324 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A369325.P16253870010442956797

/-! ## A369325.P5605419782789845956

`record[A369324(A227041(n+1))]`
-/

namespace A369325.P5605419782789845956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369324 (A227041 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A369325.P5605419782789845956

/-!
# A369326: Array read by ascending antidiagonals: A(n,k) is the number of words of length n over the alphabet [k] and sortable by a (2,1)-pop stack of depth 2.

The programs for A369326, there is no canonical definition to state claims against.
-/

/-! ## A369326.P4927026023851403123

`and(A004248(n), A342382(A004248(n)))`
-/

namespace A369326.P4927026023851403123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A004248 n) (A342382 (A004248 n).toNat)

end

end A369326.P4927026023851403123

/-!
# A369327: a(n) is the number of words of length n over the alphabet [n] and sortable by a (2,1)-pop stack of depth 2.

The programs for A369327, there is no canonical definition to state claims against.
-/

/-! ## A369327.P16090030220092914631

`A369326(∑[4*n])`
-/

namespace A369327.P16090030220092914631
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369326 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A369327.P16090030220092914631

/-!
# A369328: Antidiagonal sums of A369326.

The programs for A369328, the canonical program `A369328.P12120128083964010685` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A369328 has offset 0).

The definition of A369328 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A369328.P12120128083964010685

`5*a(n-1)-8*a(n-2)+5*a(n-3)` with `a(0)=1, a(1)=2, a(2)=4`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A369328

/-- `5*a(n-1)-8*a(n-2)+5*a(n-3)` -/
def P12120128083964010685.Spec : Prop :=
  ∀ n, P12120128083964010685.a n = A369328 n

theorem P12120128083964010685.correct : P12120128083964010685.Spec := by
  intro n
  simp only [A369328]

end A369328

/-! ## A369328.P11524080545295853185

`ogf((1-3x+2x^2)/(1-5x+8x^2-5x^3))`
-/

namespace A369328.P11524080545295853185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -3, 2] [1, -5, 8, -5] n

end

end A369328.P11524080545295853185

namespace A369328

/-- `ogf((1-3x+2x^2)/(1-5x+8x^2-5x^3))` -/
def P11524080545295853185.Spec : Prop :=
  ∀ n, P11524080545295853185.a n = A369328 n

end A369328

/-! ## A369328.P6527141875056548433

`A372883(A025700(n))`
-/

namespace A369328.P6527141875056548433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372883 (A025700 n).toNat

end

end A369328.P6527141875056548433

namespace A369328

/-- `A372883(A025700(n))` -/
def P6527141875056548433.Spec : Prop :=
  ∀ n, P6527141875056548433.a n = A369328 n

end A369328

/-! ## A369328.P6151710654677198568

`A372883(A033638(n+1))`
-/

namespace A369328.P6151710654677198568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372883 (A033638 (n + 1)).toNat

end

end A369328.P6151710654677198568

namespace A369328

/-- `A372883(A033638(n+1))` -/
def P6151710654677198568.Spec : Prop :=
  ∀ n, P6151710654677198568.a n = A369328 n

end A369328

/-! ## A369328.P5965808760086016899

`A372883(∑[∑[A266070(n)]])`
-/

namespace A369328.P5965808760086016899
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266070 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372883 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A369328.P5965808760086016899

namespace A369328

/-- `A372883(∑[∑[A266070(n)]])` -/
def P5965808760086016899.Spec : Prop :=
  ∀ n, P5965808760086016899.a n = A369328 n

end A369328

/-!
# A369329: Numbers whose neighbors have a prime number as their greatest odd divisor.

The programs for A369329, there is no canonical definition to state claims against.
-/

/-! ## A369329.P15201518379966366352

`A275418(A325789(3*n+5)+A072774(n+1))`
-/

namespace A369329.P15201518379966366352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275418 (A325789 (3 * n + 5) + A072774 (n + 1)).toNat

end

end A369329.P15201518379966366352

/-!
# A369330: Number of permutations of (1, 2, ..., n) in which any two adjacent elements differ by a power of 2.

The programs for A369330, there is no canonical definition to state claims against.
-/

/-! ## A369330.P9943465870615524573

`∑{d}[n!, A250479(#)]`
-/

namespace A369330.P9943465870615524573
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A250479 d

end

end A369330.P9943465870615524573

/-! ## A369330.P8225158192636538163

`A123050(A117218(n+1))`
-/

namespace A369330.P8225158192636538163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123050 (A117218 (n + 1)).toNat

end

end A369330.P8225158192636538163

/-! ## A369330.P2253855393424915669

`A118975(A130709(n+1))`
-/

namespace A369330.P2253855393424915669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118975 (A130709 (n + 1)).toNat

end

end A369330.P2253855393424915669

/-!
# A369331: Positive numbers whose decimal expansions are covered by that of prime numbers (without leading zeros).

The programs for A369331, there is no canonical definition to state claims against.
-/

/-! ## A369331.P4996490882538058585

`∪[A034304(n+1), A152242(n+1)]`
-/

namespace A369331.P4996490882538058585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034304 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152242 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A369331.P4996490882538058585

/-! ## A369331.P11273405704488896124

`∪[A152242(n+1), A211683(n+1)]`
-/

namespace A369331.P11273405704488896124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152242 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211683 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A369331.P11273405704488896124

/-! ## A369331.P13144718733029498908

`∪[A152242(n+1), A397220(n+1)]`
-/

namespace A369331.P13144718733029498908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152242 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397220 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A369331.P13144718733029498908

/-! ## A369331.P5485466060730508435

`∪[A034895(A130446(n+1)), A152242(n+1)]`
-/

namespace A369331.P5485466060730508435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034895 (A130446 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152242 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A369331.P5485466060730508435

/-! ## A369331.P12411455099707597194

`∪[A034895(A130446(n+1)), A166504(n+1)]`
-/

namespace A369331.P12411455099707597194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034895 (A130446 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166504 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A369331.P12411455099707597194

/-!
# A369333: Positive integers m such that there exist distinct pairs (a,b) and (c,d) with a <= b, c <= d, and m = a*b*(c+d) = (a+b)*c*d.

The programs for A369333, there is no canonical definition to state claims against.
-/

/-! ## A369333.P1210683202699171714

`A369334(A100793(n))`
-/

namespace A369333.P1210683202699171714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369334 (A100793 n).toNat

end

end A369333.P1210683202699171714

/-! ## A369333.P17505860396281416410

`A369334(A001096(n)+1)`
-/

namespace A369333.P17505860396281416410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369334 (A001096 n + 1).toNat

end

end A369333.P17505860396281416410

/-!
# A369334: Positive integers m such that there exist distinct pairs (a,b) and (c,d) with a <= b, c <= d, gcd(a,b,c,d) = 1, and m = a*b*(c+d) = (a+b)*c*d.

The programs for A369334, there is no canonical definition to state claims against.
-/

/-! ## A369334.P12104394706898262048

`A369333(A038101(n+1))`
-/

namespace A369334.P12104394706898262048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369333 (A038101 (n + 1)).toNat

end

end A369334.P12104394706898262048

/-! ## A369334.P6398142408750424868

`A369333(A073956(n+1))`
-/

namespace A369334.P6398142408750424868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369333 (A073956 (n + 1)).toNat

end

end A369334.P6398142408750424868

/-! ## A369334.P13513143194750002689

`A369333(A029964(n+2))`
-/

namespace A369334.P13513143194750002689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369333 (A029964 (n + 2)).toNat

end

end A369334.P13513143194750002689

/-!
# A369336: Number of n X n Fishburn matrices with entries in the set {0,1,...,n}.

The programs for A369336, there is no canonical definition to state claims against.
-/

/-! ## A369336.P15124959451591867401

`A369415(∑[4*n])`
-/

namespace A369336.P15124959451591867401
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369415 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A369336.P15124959451591867401

/-!
# A369337: Total number of numbers less than each divisor d of n that do not divide d.

The programs for A369337, there is no canonical definition to state claims against.
-/

/-! ## A369337.P11136408680574877969

`∑{d}[n+1, #]-∏{e}[n+1, C(#+2, 2)]`
-/

namespace A369337.P11136408680574877969
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) - ((∏ p ∈ Nat.primeFactors (f2 n), Nat.choose (Nat.factorization (f2 n) p + 2) 2 : ℕ) : ℤ)

end

end A369337.P11136408680574877969

/-! ## A369337.P963159237696208020

`∑{d}[n+1, A049820(#)]`
-/

namespace A369337.P963159237696208020
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A049820 d

end

end A369337.P963159237696208020

/-! ## A369337.P17341136213139981693

`∑{d}[n+1, #-A000005(#)]`
-/

namespace A369337.P17341136213139981693
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ((d : ℤ) - A000005 d)

end

end A369337.P17341136213139981693

/-! ## A369337.P4813483293802398227

`∑{d}[n+1, #]-A007425(n+1)`
-/

namespace A369337.P4813483293802398227
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) - A007425 (n + 1)

end

end A369337.P4813483293802398227

/-! ## A369337.P3151790223425553463

`∑{d}[n+1, #]-A334997(∑[n+2]+4)`
-/

namespace A369337.P3151790223425553463
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) - A334997 (∑ j ∈ Finset.range (n + 1), f2 j + 4)

end

end A369337.P3151790223425553463

/-! ## A369337.P16528009980222602957

`A000203(n+1)-∏{e}[n+1, C(#+2, 2)]`
-/

namespace A369337.P16528009980222602957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - ((∏ p ∈ Nat.primeFactors (f1 n), Nat.choose (Nat.factorization (f1 n) p + 2) 2 : ℕ) : ℤ)

end

end A369337.P16528009980222602957

/-! ## A369337.P11149053731658180713

`A000203(n+1)-A007425(n+1)`
-/

namespace A369337.P11149053731658180713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A007425 (n + 1)

end

end A369337.P11149053731658180713

/-! ## A369337.P17786360102180200434

`A097012(n+1)-A007425(n+1)`
-/

namespace A369337.P17786360102180200434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097012 (n + 1) - A007425 (n + 1)

end

end A369337.P17786360102180200434

/-! ## A369337.P5751148292206531507

`A069913(n+1)-A211779(n+1)`
-/

namespace A369337.P5751148292206531507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069913 (n + 1) - A211779 (n + 1)

end

end A369337.P5751148292206531507

/-!
# A369338: Sum of all the numbers less than each divisor d of n that do not divide d.

The programs for A369338, there is no canonical definition to state claims against.
-/

/-! ## A369338.P237997138723573129

`∑{d}[n+1, A024816(#)]`
-/

namespace A369338.P237997138723573129
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A024816 d

end

end A369338.P237997138723573129

/-! ## A369338.P10669385471697830144

`A007437(n+1)-A007429(n+1)`
-/

namespace A369338.P10669385471697830144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007437 (n + 1) - A007429 (n + 1)

end

end A369338.P10669385471697830144

/-! ## A369338.P16054170741154613818

`A007437(n+1)-A206028(n+1)`
-/

namespace A369338.P16054170741154613818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007437 (n + 1) - A206028 (n + 1)

end

end A369338.P16054170741154613818

/-! ## A369338.P1347347312549385693

`A069153(n+1)-A211779(n+1)`
-/

namespace A369338.P1347347312549385693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069153 (n + 1) - A211779 (n + 1)

end

end A369338.P1347347312549385693

/-! ## A369338.P383186534361121408

`A206029(n+1)-A119616(n+1)`
-/

namespace A369338.P383186534361121408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206029 (n + 1) - A119616 (n + 1)

end

end A369338.P383186534361121408

/-!
# A369339: Number of partitions of n into triangular numbers not greater than sqrt(n).

The programs for A369339, there is no canonical definition to state claims against.
-/

/-! ## A369339.P835358372246355133

`∑[char[3*n]]^A352035(A167661(n))`
-/

namespace A369339.P835358372246355133
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) ^ (A352035 (A167661 n).toNat : ℤ)

end

end A369339.P835358372246355133

/-! ## A369339.P17476599822919821001

`A366145(A336122(n+1))`
-/

namespace A369339.P17476599822919821001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366145 (A336122 (n + 1)).toNat

end

end A369339.P17476599822919821001

/-!
# A369340: Number of partitions of n into squares not greater than sqrt(n).

The programs for A369340, there is no canonical definition to state claims against.
-/

/-! ## A369340.P14302584627105377146

`A000005(A255270(n)^floor(n/4))`
-/

namespace A369340.P14302584627105377146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A255270 n : ℚ) ^ (⌊(n : ℚ) / 4⌋ : ℤ))).toNat

end

end A369340.P14302584627105377146

/-! ## A369340.P11835535835671617455

`A000005(A178487(2*n+1)^A002265(n))`
-/

namespace A369340.P11835535835671617455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A178487 (2 * n + 1) : ℚ) ^ (A002265 n : ℤ))).toNat

end

end A369340.P11835535835671617455

/-! ## A369340.P3395019476164833765

`A007306(A255270(n)^floor(n/4))`
-/

namespace A369340.P3395019476164833765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007306 (SequenceMachineLib.roundAway ((A255270 n : ℚ) ^ (⌊(n : ℚ) / 4⌋ : ℤ))).toNat

end

end A369340.P3395019476164833765

/-!
# A369341: Number of compositions (ordered partitions) of n into triangular numbers not greater than sqrt(n).

The programs for A369341, there is no canonical definition to state claims against.
-/

/-! ## A369341.P12778391905091540247

`A000027(A000930(n*A186729(n)))`
-/

namespace A369341.P12778391905091540247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A000930 ((n : ℤ) * A186729 n).toNat).toNat

end

end A369341.P12778391905091540247

/-! ## A369341.P12103792425958785683

`A000027(A000930(n)^A186729(n))`
-/

namespace A369341.P12103792425958785683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway ((A000930 n : ℚ) ^ (A186729 n : ℤ))).toNat

end

end A369341.P12103792425958785683

/-! ## A369341.P2297593373425920489

`A000930(n%A305632(2*n+1))`
-/

namespace A369341.P2297593373425920489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000930 (Int.tmod (n : ℤ) (A305632 (2 * n + 1))).toNat

end

end A369341.P2297593373425920489

/-!
# A369343: a(n) is the constant term in expansion of Product_{k=1..n} (x^(2*k-1) + 1 + 1/x^(2*k-1)).

The programs for A369343, there is no canonical definition to state claims against.
-/

/-! ## A369343.P11921196745231995846

`A177849(A048771(n))`
-/

namespace A369343.P11921196745231995846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177849 (A048771 n).toNat

end

end A369343.P11921196745231995846

/-!
# A369344: a(n) is the constant term in expansion of Product_{k=1..n} (x^(k*(k+1)/2) + 1 + 1/x^(k*(k+1)/2)).

The programs for A369344, there is no canonical definition to state claims against.
-/

/-! ## A369344.P12659766682726792343

`A046074(A080190(n))`
-/

namespace A369344.P12659766682726792343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046074 (A080190 n).toNat

end

end A369344.P12659766682726792343

/-! ## A369344.P17562546507279537225

`A046074(A291219(n))`
-/

namespace A369344.P17562546507279537225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046074 (A291219 n).toNat

end

end A369344.P17562546507279537225

/-! ## A369344.P17018025463876314559

`A046074(A293948(n))`
-/

namespace A369344.P17018025463876314559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046074 (A293948 n).toNat

end

end A369344.P17018025463876314559

/-! ## A369344.P1516754235616078475

`A368087(A068013(n))`
-/

namespace A369344.P1516754235616078475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368087 (A068013 n).toNat

end

end A369344.P1516754235616078475

/-! ## A369344.P10071888579496055719

`A183147(A369496(n))`
-/

namespace A369344.P10071888579496055719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183147 (A369496 n).toNat

end

end A369344.P10071888579496055719

/-!
# A369345: a(n) is the constant term in expansion of Product_{k=1..n} (x^(k^3) + 1 + 1/x^(k^3)).

The programs for A369345, there is no canonical definition to state claims against.
-/

/-! ## A369345.P455577877354631742

`A090792(A239117(n))`
-/

namespace A369345.P455577877354631742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090792 (A239117 n).toNat

end

end A369345.P455577877354631742

/-! ## A369345.P16581595697750524687

`A090792(A239118(n+1))`
-/

namespace A369345.P16581595697750524687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090792 (A239118 (n + 1)).toNat

end

end A369345.P16581595697750524687

/-!
# A369347: Numbers whose decimal expansion is quasiperiodic.

The programs for A369347, there is no canonical definition to state claims against.
-/

/-! ## A369347.P12734163860745734892

`A239019(A044923(n+1))`
-/

namespace A369347.P12734163860745734892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239019 (A044923 (n + 1)).toNat

end

end A369347.P12734163860745734892

/-! ## A369347.P3970899070838724079

`A239019(A179797(n+1))`
-/

namespace A369347.P3970899070838724079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239019 (A179797 (n + 1)).toNat

end

end A369347.P3970899070838724079

/-! ## A369347.P4754969291638208314

`A239019(A296873(n+1))`
-/

namespace A369347.P4754969291638208314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239019 (A296873 (n + 1)).toNat

end

end A369347.P4754969291638208314

/-! ## A369347.P6997060381937094937

`A239019(A376668(n+1))`
-/

namespace A369347.P6997060381937094937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239019 (A376668 (n + 1)).toNat

end

end A369347.P6997060381937094937

/-!
# A369348: a(1) = 1; for n > 1, a(n) is the smallest positive number such that a(n) - a(n-1) = sopfr(a(n)) + sopfr(a(n-1)), where sopfr(k) is the sum of the primes dividing k, with repetition.

The programs for A369348, there is no canonical definition to state claims against.
-/

/-! ## A369348.P14193109807115631515

`A175585(A093380(n))`
-/

namespace A369348.P14193109807115631515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175585 (A093380 n).toNat

end

end A369348.P14193109807115631515

/-!
# A369351: The smallest number such that n or more numbers k exist such that a(n) - k = sopfr(a(n)) + sopfr(k), where sopfr(m) is the sum of the primes dividing m, with repetition.

The programs for A369351, there is no canonical definition to state claims against.
-/

/-! ## A369351.P14300253760857621289

`A370091(A029964(n+2))`
-/

namespace A369351.P14300253760857621289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370091 (A029964 (n + 2)).toNat

end

end A369351.P14300253760857621289

/-! ## A369351.P16419783899012061788

`A370091(A259384(n+1)+1)`
-/

namespace A369351.P16419783899012061788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370091 (A259384 (n + 1) + 1).toNat

end

end A369351.P16419783899012061788

/-! ## A369351.P7014303647303969699

`filter[A370091(n+1), A236861(#)]`
-/

namespace A369351.P7014303647303969699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370091 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A236861 (f1 j).toNat = 1) n)

end

end A369351.P7014303647303969699

/-!
# A369352: Numbers k such that there exists a number p where p - k = sopfr(p) + sopfr(k), where sopfr(m) is the sum of the primes dividing m, with repetition.

The programs for A369352, there is no canonical definition to state claims against.
-/

/-! ## A369352.P16793225946428496967

`lt[0, A369349(n+1)]+1`
-/

namespace A369352.P16793225946428496967
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369349 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A369352.P16793225946428496967

/-!
# A369354: The number of terms beyond the first term for the series starting at k(1) = n and then iteratively finding the smallest k(i+1) such that k(i+1) - k(i) = sopfr(k(i+1) + k(i)), where i >= 1 and sopfr(m) is the sum of the primes dividing m, with repetition.

The programs for A369354, there is no canonical definition to state claims against.
-/

/-! ## A369354.P3395738762723332113

`A114220(gcd(n, A328163(3*n+4)))`
-/

namespace A369354.P3395738762723332113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114220 (Int.gcd (n : ℤ) (A328163 (3 * n + 4)))

end

end A369354.P3395738762723332113

/-! ## A369354.P11300294291865808576

`A271269(2*n+1)%A274459(A004766(n+1))`
-/

namespace A369354.P11300294291865808576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A271269 (2 * n + 1)) (A274459 (A004766 (n + 1)).toNat)

end

end A369354.P11300294291865808576

/-! ## A369354.P362710932676959470

`A112378(A112385(n+2)%A017221(n))`
-/

namespace A369354.P362710932676959470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112378 (Int.tmod (A112385 (n + 2)) (A017221 n)).toNat

end

end A369354.P362710932676959470

/-! ## A369354.P3178335604454729059

`and(A029963(A112037(n+2)), A329041(n))`
-/

namespace A369354.P3178335604454729059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A029963 (A112037 (n + 2)).toNat) (A329041 n)

end

end A369354.P3178335604454729059

/-! ## A369354.P11632151483703089879

`A359244(A359215(3*n+2)+A285783(n))`
-/

namespace A369354.P11632151483703089879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359244 (A359215 (3 * n + 2) + A285783 n).toNat

end

end A369354.P11632151483703089879

/-!
# A369359: a(n) is the total semiperimeter over all Motzkin polyominoes of length n.

The programs for A369359, the canonical program `A369359.P11914376555270565853` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A369359 has offset 0).

The definition of A369359 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 212 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A369359.P11914376555270565853

`A225034(n)-A002426(n)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A369359

/-- `A225034(n)-A002426(n)` -/
def P11914376555270565853.Spec : Prop :=
  ∀ n, P11914376555270565853.a n = A369359 n

theorem P11914376555270565853.correct : P11914376555270565853.Spec := by
  intro n
  simp only [A369359]

end A369359

/-! ## A369359.P9015418117533342252

`A225034(n)-A005213(2*n)`
-/

namespace A369359.P9015418117533342252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225034 n - A005213 (2 * n)

end

end A369359.P9015418117533342252

namespace A369359

/-- `A225034(n)-A005213(2*n)` -/
def P9015418117533342252.Spec : Prop :=
  ∀ n, P9015418117533342252.a n = A369359 n

end A369359

/-! ## A369359.P608969474612613092

`A225034(n)-abs(∑[A085455(n)])`
-/

namespace A369359.P608969474612613092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085455 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225034 n - |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A369359.P608969474612613092

namespace A369359

/-- `A225034(n)-abs(∑[A085455(n)])` -/
def P608969474612613092.Spec : Prop :=
  ∀ n, P608969474612613092.a n = A369359 n

end A369359

/-! ## A369359.P11171564034952383996

`A002426(n+1)-A025566(n+1)`
-/

namespace A369359.P11171564034952383996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002426 (n + 1) - A025566 (n + 1)

end

end A369359.P11171564034952383996

namespace A369359

/-- `A002426(n+1)-A025566(n+1)` -/
def P11171564034952383996.Spec : Prop :=
  ∀ n, P11171564034952383996.a n = A369359 n

end A369359

/-! ## A369359.P16760242126603847284

`A225034(n)-(2*A097861(n)+1)`
-/

namespace A369359.P16760242126603847284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225034 n - (2 * A097861 n + 1)

end

end A369359.P16760242126603847284

namespace A369359

/-- `A225034(n)-(2*A097861(n)+1)` -/
def P16760242126603847284.Spec : Prop :=
  ∀ n, P16760242126603847284.a n = A369359 n

end A369359

/-! ## A369359.P17364205045592898727

`A225034(n)-(2*A257520(n)-1)`
-/

namespace A369359.P17364205045592898727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225034 n - (2 * A257520 n - 1)

end

end A369359.P17364205045592898727

namespace A369359

/-- `A225034(n)-(2*A257520(n)-1)` -/
def P17364205045592898727.Spec : Prop :=
  ∀ n, P17364205045592898727.a n = A369359 n

end A369359

/-! ## A369359.P15198519544659842476

`A225034(n)-abs(Δ[n*A099323(n)])`
-/

namespace A369359.P15198519544659842476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A099323 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225034 n - |f1 (n + 1) - f1 n|

end

end A369359.P15198519544659842476

namespace A369359

/-- `A225034(n)-abs(Δ[n*A099323(n)])` -/
def P15198519544659842476.Spec : Prop :=
  ∀ n, P15198519544659842476.a n = A369359 n

end A369359

/-! ## A369359.P16611720091220594332

`A225034(n)-or(1, record[A005213(n+1)])`
-/

namespace A369359.P16611720091220594332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005213 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225034 n - Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A369359.P16611720091220594332

namespace A369359

/-- `A225034(n)-or(1, record[A005213(n+1)])` -/
def P16611720091220594332.Spec : Prop :=
  ∀ n, P16611720091220594332.a n = A369359 n

end A369359

/-! ## A369359.P1363926126131433282

`A225034(n)-(A257520(n)+A097861(n))`
-/

namespace A369359.P1363926126131433282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225034 n - (A257520 n + A097861 n)

end

end A369359.P1363926126131433282

namespace A369359

/-- `A225034(n)-(A257520(n)+A097861(n))` -/
def P1363926126131433282.Spec : Prop :=
  ∀ n, P1363926126131433282.a n = A369359 n

end A369359

/-! ## A369359.P2788679170762314436

`A225034(n)-(A081669(n)-A155559(n))`
-/

namespace A369359.P2788679170762314436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225034 n - (A081669 n - A155559 n)

end

end A369359.P2788679170762314436

namespace A369359

/-- `A225034(n)-(A081669(n)-A155559(n))` -/
def P2788679170762314436.Spec : Prop :=
  ∀ n, P2788679170762314436.a n = A369359 n

end A369359

/-! ## A369359.P739358000120258898

`A225034(n)-(2*A027914(n)-3^n)`
-/

namespace A369359.P739358000120258898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225034 n - (2 * A027914 n - (3 ^ n : ℤ))

end

end A369359.P739358000120258898

namespace A369359

/-- `A225034(n)-(2*A027914(n)-3^n)` -/
def P739358000120258898.Spec : Prop :=
  ∀ n, P739358000120258898.a n = A369359 n

end A369359

/-!
# A369360: a(n) is the number of interior points over all Motzkin polyominoes of length n.

The programs for A369360, the canonical program `A369360.P16251254958251972162` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A369360 has offset 3).

The definition of A369360 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A369360.P16251254958251972162

`(3^(n+3)-3*A002426(n+3))/2-2*A002426(n+2)+2*A001006(n+2)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A369360

/-- `(3^(n+3)-3*A002426(n+3))/2-2*A002426(n+2)+2*A001006(n+2)` -/
def P16251254958251972162.Spec : Prop :=
  ∀ n, P16251254958251972162.a n = (A369360 (n + 3) : ℚ)

end A369360

/-! ## A369360.P258292621780359375

`A382990(n+2)+A382987(n+2)`
-/

namespace A369360.P258292621780359375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382990 (n + 2) + A382987 (n + 2)

end

end A369360.P258292621780359375

namespace A369360

/-- `A382990(n+2)+A382987(n+2)` -/
def P258292621780359375.Spec : Prop :=
  ∀ n, P258292621780359375.a n = A369360 (n + 3)

end A369360

/-!
# A369361: Numbers that are not products of primorials.

The programs for A369361, the canonical program `A369361.P17233019200793958702` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A369361 has offset 1).

The definition of A369361 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9917 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A369361.P9396053219022951451

`lt[A328479(n+1), n]+1`
-/

namespace A369361.P9396053219022951451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328479 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A369361.P9396053219022951451

namespace A369361

/-- `lt[A328479(n+1), n]+1` -/
def P9396053219022951451.Spec : Prop :=
  ∀ n, (P9396053219022951451.a n : ℤ) = A369361 (n + 1)

end A369361

/-! ## A369361.P5164392467931606569

`∪[A056808(n+1), A080259(n+1)]`
-/

namespace A369361.P5164392467931606569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080259 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A369361.P5164392467931606569

namespace A369361

/-- `∪[A056808(n+1), A080259(n+1)]` -/
def P5164392467931606569.Spec : Prop :=
  ∀ n, (P5164392467931606569.a n : ℤ) = A369361 (n + 1)

end A369361

/-! ## A369361.P7084958542753496756

`∪[A071365(n+1), A080259(n+1)]`
-/

namespace A369361.P7084958542753496756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071365 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080259 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A369361.P7084958542753496756

namespace A369361

/-- `∪[A071365(n+1), A080259(n+1)]` -/
def P7084958542753496756.Spec : Prop :=
  ∀ n, (P7084958542753496756.a n : ℤ) = A369361 (n + 1)

end A369361

/-! ## A369361.P18446443211565261858

`lt[1, A064839(n+1)]+1`
-/

namespace A369361.P18446443211565261858
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064839 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A369361.P18446443211565261858

namespace A369361

/-- `lt[1, A064839(n+1)]+1` -/
def P18446443211565261858.Spec : Prop :=
  ∀ n, (P18446443211565261858.a n : ℤ) = A369361 (n + 1)

end A369361

/-! ## A369361.P17233019200793958702

`lt[1, A319627(n+1)]+1`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A369361

/-- `lt[1, A319627(n+1)]+1` -/
def P17233019200793958702.Spec : Prop :=
  ∀ n, (P17233019200793958702.a n : ℤ) = A369361 (n + 1)

theorem P17233019200793958702.correct : P17233019200793958702.Spec := by
  intro n
  simp only [A369361, Nat.add_sub_cancel]

end A369361

/-!
# A369362: Number of free rooted (or pointed) (planar) polyhexes with n cells.

The programs for A369362, there is no canonical definition to state claims against.
-/

/-! ## A369362.P10697883407110475791

`A349536(A149706(n))`
-/

namespace A369362.P10697883407110475791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349536 (A149706 n).toNat

end

end A369362.P10697883407110475791

/-! ## A369362.P1375477786947009594

`A112689(A371795(n+3)+A046633(n))`
-/

namespace A369362.P1375477786947009594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112689 (A371795 (n + 3) + A046633 n).toNat

end

end A369362.P1375477786947009594

/-!
# A369363: Least number of inequivalent cells in a (planar) polyhex with n cells.

The programs for A369363, there is no canonical definition to state claims against.
-/

/-! ## A369363.P2481285192179710962

`A132173(A349917(n+1))`
-/

namespace A369363.P2481285192179710962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132173 (A349917 (n + 1)).toNat

end

end A369363.P2481285192179710962

/-! ## A369363.P2598589939366965627

`A265744(A263659(n+1))`
-/

namespace A369363.P2598589939366965627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265744 (A263659 (n + 1)).toNat

end

end A369363.P2598589939366965627

/-! ## A369363.P2241617743279713696

`A353362(A194712(n+1))`
-/

namespace A369363.P2241617743279713696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353362 (A194712 (n + 1)).toNat

end

end A369363.P2241617743279713696

/-! ## A369363.P16572108235315386413

`A341456(A338691(n+1))`
-/

namespace A369363.P16572108235315386413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341456 (A338691 (n + 1)).toNat

end

end A369363.P16572108235315386413

/-! ## A369363.P11101602320620589373

`A026904(A005097(n+2))`
-/

namespace A369363.P11101602320620589373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026904 (A005097 (n + 2)).toNat

end

end A369363.P11101602320620589373

/-!
# A369365: Number of free rooted (or pointed) polyiamonds with n cells.

The programs for A369365, there is no canonical definition to state claims against.
-/

/-! ## A369365.P14489217346733790524

`A384893(2*n²)`
-/

namespace A369365.P14489217346733790524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384893 (2 * n ^ 2)

end

end A369365.P14489217346733790524

/-! ## A369365.P6558430410228201144

`Δ[A105518(Δ[3^n])]`
-/

namespace A369365.P6558430410228201144
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105518 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A369365.P6558430410228201144

/-! ## A369365.P4720729941799930580

`A349151(ceil(2^(n-1)))`
-/

namespace A369365.P4720729941799930580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349151 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat

end

end A369365.P4720729941799930580

/-!
# A369368: Numerator of the maximum expected number of steps of a random walk on the cells of the hexagonal lattice before it lands on a mined cell, given that all but n cells are mined.

The programs for A369368, there is no canonical definition to state claims against.
-/

/-! ## A369368.P14952714756769925150

`n*A181803(A014137(n))`
-/

namespace A369368.P14952714756769925150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A181803 (A014137 n).toNat

end

end A369368.P14952714756769925150

/-! ## A369368.P7014623146715625339

`n*A342512(A001142(n))`
-/

namespace A369368.P7014623146715625339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A342512 (A001142 n).toNat

end

end A369368.P7014623146715625339

/-!
# A369370: Numerator of the maximum expected number of steps of a random walk on the cells of the triangular lattice before it lands on a mined cell, given that all but n cells are mined.

The programs for A369370, there is no canonical definition to state claims against.
-/

/-! ## A369370.P15447768622506122652

`A265755(A277087(n))+A062157(n)`
-/

namespace A369370.P15447768622506122652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265755 (A277087 n).toNat + A062157 n

end

end A369370.P15447768622506122652

/-! ## A369370.P14931077389019286801

`A345452(A000312(n))%A000984(n)`
-/

namespace A369370.P14931077389019286801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A345452 (A000312 n).toNat) (A000984 n)

end

end A369370.P14931077389019286801

/-!
# A369374: Powerful numbers k that have a primorial kernel and more than 1 distinct prime factor.

The programs for A369374, there is no canonical definition to state claims against.
-/

/-! ## A369374.P2124110487532935099

`∪[A364930(n+1), A369420(n+1)]`
-/

namespace A369374.P2124110487532935099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364930 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369420 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A369374.P2124110487532935099

/-! ## A369374.P8361954040514822646

`∪[A377854(n+1), A380446(n+1)]`
-/

namespace A369374.P8361954040514822646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377854 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380446 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A369374.P8361954040514822646

/-! ## A369374.P2039276942539801038

`∩[A363814(n+1), A387901(n+1)]`
-/

namespace A369374.P2039276942539801038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363814 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387901 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369374.P2039276942539801038

/-! ## A369374.P4415897903920982956

`∩[A055932(n+1), A363169(n+1)]`
-/

namespace A369374.P4415897903920982956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055932 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363169 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369374.P4415897903920982956

/-! ## A369374.P14478300884363583968

`∩[A363169(n+1), A363814(n+1)]`
-/

namespace A369374.P14478300884363583968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363169 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363814 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369374.P14478300884363583968

/-! ## A369374.P5680513907238149897

`∩[A363169(n+1), A387901(n+1)]`
-/

namespace A369374.P5680513907238149897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363169 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387901 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369374.P5680513907238149897

/-! ## A369374.P11210252083952476611

`∩[A055932(n+1), A363216(n+1)]`
-/

namespace A369374.P11210252083952476611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055932 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363216 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369374.P11210252083952476611

/-! ## A369374.P17230814566818015727

`∩[A363216(n+1), A363814(n+1)]`
-/

namespace A369374.P17230814566818015727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363216 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363814 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369374.P17230814566818015727

/-! ## A369374.P209589856818654003

`∩[A363216(n+1), A387901(n+1)]`
-/

namespace A369374.P209589856818654003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363216 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387901 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369374.P209589856818654003

/-! ## A369374.P7225393772028972013

`∩[A363814(n+1), A390010(n+1)]`
-/

namespace A369374.P7225393772028972013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363814 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390010 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369374.P7225393772028972013

/-! ## A369374.P706229364580170332

`∩[A353485(n+1), A363814(n+1)]`
-/

namespace A369374.P706229364580170332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353485 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363814 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369374.P706229364580170332

/-! ## A369374.P10036833042200392014

`∩[A055932(n+1), A286708(n+1)]`
-/

namespace A369374.P10036833042200392014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055932 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286708 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369374.P10036833042200392014

/-! ## A369374.P7650508270714712061

`∩[A286708(n+1), A363814(n+1)]`
-/

namespace A369374.P7650508270714712061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286708 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363814 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369374.P7650508270714712061

/-! ## A369374.P14077800624260718347

`∩[A286708(n+1), A387901(n+1)]`
-/

namespace A369374.P14077800624260718347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286708 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387901 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369374.P14077800624260718347

/-! ## A369374.P2261237123326105902

`∩[A192636(n+1), A363814(n+1)]`
-/

namespace A369374.P2261237123326105902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192636 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363814 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369374.P2261237123326105902

/-! ## A369374.P16598915964313401701

`∩[A001694(n+1), A363814(n+1)]`
-/

namespace A369374.P16598915964313401701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363814 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369374.P16598915964313401701

/-! ## A369374.P7844855259857627863

`∩[A066312(n+1), A363216(n+1)]`
-/

namespace A369374.P7844855259857627863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066312 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363216 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369374.P7844855259857627863

/-! ## A369374.P6418286844445757856

`∩[A066312(n+1), A387901(n+1)]`
-/

namespace A369374.P6418286844445757856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066312 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387901 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369374.P6418286844445757856

/-! ## A369374.P968054838727924763

`∩[A066312(n+1), A390010(n+1)]`
-/

namespace A369374.P968054838727924763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066312 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390010 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369374.P968054838727924763

/-! ## A369374.P15878018841618959147

`∩[A370266(n+1), A387901(n+1)]`
-/

namespace A369374.P15878018841618959147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370266 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387901 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369374.P15878018841618959147

/-!
# A369375: Numbers m such that the Mersenne number 2^m - 1 is a de Polignac number (A006285).

The programs for A369375, there is no canonical definition to state claims against.
-/

/-! ## A369375.P1176243371591814239

`lt[A272143(n+1), 1]+1`
-/

namespace A369375.P1176243371591814239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272143 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A369375.P1176243371591814239

/-! ## A369375.P9641143782342733231

`eq[n*A272143(n+1), A010054(3*n+2)]+1`
-/

namespace A369375.P9641143782342733231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A272143 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (3 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A369375.P9641143782342733231

/-! ## A369375.P9177207268309836652

`A065475(eq[A000007(n), A106821(n+1)])`
-/

namespace A369375.P9177207268309836652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A369375.P9177207268309836652

/-! ## A369375.P219403958959527991

`A065475(eq[A019590(2*n+1), A106821(n+1)])`
-/

namespace A369375.P219403958959527991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019590 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A369375.P219403958959527991

/-! ## A369375.P13408630441707687679

`A065475(eq[A010057(3*n+1), A106821(n+1)])`
-/

namespace A369375.P13408630441707687679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010057 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A369375.P13408630441707687679

/-!
# A369376: a(n) is the number of elements p(j) > j (right displacements) in the n-th permutation in lexicographic order.

The programs for A369376, there is no canonical definition to state claims against.
-/

/-! ## A369376.P13871486453157726361

`A060502(A060126(n))`
-/

namespace A369376.P13871486453157726361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060502 (A060126 n).toNat

end

end A369376.P13871486453157726361

/-! ## A369376.P15764312802301639360

`A060500(A060127(n))`
-/

namespace A369376.P15764312802301639360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060500 (A060127 n).toNat

end

end A369376.P15764312802301639360

/-! ## A369376.P13211045877079724698

`A369377(A056019(n))`
-/

namespace A369376.P13211045877079724698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369377 (A056019 n).toNat

end

end A369376.P13211045877079724698

/-! ## A369376.P17153455297318081970

`A055093(n)-A369377(n)`
-/

namespace A369376.P17153455297318081970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055093 n - A369377 n

end

end A369376.P17153455297318081970

/-! ## A369376.P3826307693164728406

`A055090(n)+A055091(n)-A369377(n)`
-/

namespace A369376.P3826307693164728406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055090 n + (A055091 n - A369377 n)

end

end A369376.P3826307693164728406

/-!
# A369377: a(n) is the number of elements p(j) < j (left displacements) in the n-th permutation in lexicographic order.

The programs for A369377, there is no canonical definition to state claims against.
-/

/-! ## A369377.P11271955964620656025

`A060500(A060126(n))`
-/

namespace A369377.P11271955964620656025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060500 (A060126 n).toNat

end

end A369377.P11271955964620656025

/-! ## A369377.P3235404640612050153

`A060502(A060127(n))`
-/

namespace A369377.P3235404640612050153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060502 (A060127 n).toNat

end

end A369377.P3235404640612050153

/-! ## A369377.P16517329237463306188

`A369376(A056019(n))`
-/

namespace A369377.P16517329237463306188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369376 (A056019 n).toNat

end

end A369377.P16517329237463306188

/-! ## A369377.P3677805081829397251

`A055093(n)-A369376(n)`
-/

namespace A369377.P3677805081829397251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055093 n - A369376 n

end

end A369377.P3677805081829397251

/-! ## A369377.P8568940916155095801

`A056556(8*A198380(n))-A369376(n)`
-/

namespace A369377.P8568940916155095801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056556 (8 * A198380 n).toNat - A369376 n

end

end A369377.P8568940916155095801

/-!
# A369379: Number of Dabbaghian-Wu pandiagonal Latin squares of order 2n+1 with the first row in order.

The programs for A369379, there is no canonical definition to state claims against.
-/

/-! ## A369379.P11869370232157199108

`A368027(n+1)%A000980(n)`
-/

namespace A369379.P11869370232157199108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A368027 (n + 1)) (A000980 n)

end

end A369379.P11869370232157199108

/-!
# A369381: Triangle read by rows: T(n,k) = binomial(n+1,k+1)*Stirling2(n+k,k).

The programs for A369381, there is no canonical definition to state claims against.
-/

/-! ## A369381.P4727930099596173478

`C(A008480(A002981(2*n+3)), A143983(n+1))`
-/

namespace A369381.P4727930099596173478
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A008480 (A002981 (2 * n + 3)).toNat).toNat (A143983 (n + 1)).toNat

end

end A369381.P4727930099596173478

/-!
# A369382: Number of subsets of the integer lattice Z^2 of cardinality n such that there is no monotone lattice path which splits the set in half, up to lattice symmetry.

The programs for A369382, there is no canonical definition to state claims against.
-/

/-! ## A369382.P5129558547071537807

`A335622(A256484(n+1)-A066057(n))`
-/

namespace A369382.P5129558547071537807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335622 (A256484 (n + 1) - A066057 n).toNat

end

end A369382.P5129558547071537807

/-! ## A369382.P10154392679957253581

`A367817(A367783(n+1)^A000688(n+4))`
-/

namespace A369382.P10154392679957253581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367817 (SequenceMachineLib.roundAway ((A367783 (n + 1) : ℚ) ^ (A000688 (n + 4) : ℤ))).toNat

end

end A369382.P10154392679957253581

/-! ## A369382.P5975121148781124098

`A280800(n+1)%A320451(A297582(n+1))`
-/

namespace A369382.P5975121148781124098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A280800 (n + 1)) (A320451 (A297582 (n + 1)).toNat)

end

end A369382.P5975121148781124098

/-! ## A369382.P18397177812102356975

`A121561(A005349(n^(n%2))^A226873(n))`
-/

namespace A369382.P18397177812102356975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121561 (SequenceMachineLib.roundAway ((A005349 (n ^ (n % 2)) : ℚ) ^ (A226873 n : ℤ))).toNat

end

end A369382.P18397177812102356975

/-! ## A369382.P9095500062158459851

`A303975(gcd(A038255(n), A164555(n)))`
-/

namespace A369382.P9095500062158459851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303975 (Int.gcd (A038255 n) (A164555 n))

end

end A369382.P9095500062158459851

/-!
# A369385: The smallest number k that can be partitioned in n ways as the sum of two numbers from A109611.

The programs for A369385, there is no canonical definition to state claims against.
-/

/-! ## A369385.P17908267905718612801

`A307282(A293302(n))+A006995(2*n+1)`
-/

namespace A369385.P17908267905718612801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307282 (A293302 n).toNat + A006995 (2 * n + 1)

end

end A369385.P17908267905718612801

/-!
# A369386: a(n) is the constant term in expansion of Product_{k=1..n} (x^(2*k-1) + 1/x^(2*k-1))^2.

The programs for A369386, there is no canonical definition to state claims against.
-/

/-! ## A369386.P9261001221334612980

`record[A222955(n+1)/A040005(n)]`
-/

namespace A369386.P9261001221334612980
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A222955 (n + 1) : ℚ) / (A040005 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A369386.P9261001221334612980

/-! ## A369386.P5747552615870409588

`record[gcd(A007814(n+2), A222955(n+1))]`
-/

namespace A369386.P5747552615870409588
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007814 (n + 2)) (A222955 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A369386.P5747552615870409588

/-! ## A369386.P6862636354191179231

`A245851((n+1)*(2*n+3))`
-/

namespace A369386.P6862636354191179231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245851 ((n + 1) * (2 * n + 3))

end

end A369386.P6862636354191179231

/-! ## A369386.P10129575582826210995

`∏{e}[A000079(n)², A222955(#)]`
-/

namespace A369386.P10129575582826210995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A222955 (Nat.factorization (f1 n).natAbs p)

end

end A369386.P10129575582826210995

/-! ## A369386.P9184879930703158895

`∏{e}[A000079(2*n), A222955(#)]`
-/

namespace A369386.P9184879930703158895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A222955 (Nat.factorization (f1 n).natAbs p)

end

end A369386.P9184879930703158895

/-!
# A369387: a(n) is the constant term in expansion of Product_{k=1..n} (x^(2*k-1) + 1 + 1/x^(2*k-1))^2.

The programs for A369387, there is no canonical definition to state claims against.
-/

/-! ## A369387.P17502184475334965817

`record[and((-1)^n, A223743(n+1))]`
-/

namespace A369387.P17502184475334965817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((-1) ^ n) (A223743 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A369387.P17502184475334965817

/-! ## A369387.P1049870785260672606

`A223743(A322250(2*n+1))-A000038(n)`
-/

namespace A369387.P1049870785260672606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223743 (A322250 (2 * n + 1)).toNat - A000038 n

end

end A369387.P1049870785260672606

/-!
# A369388: a(n) is the constant term in expansion of Product_{k=1..n} (x^prime(k) + 1 + 1/x^prime(k))^2.

The programs for A369388, there is no canonical definition to state claims against.
-/

/-! ## A369388.P9841452159182852302

`3*A276884(a(n-1))` with `a(0)=1`
-/

namespace A369388.P9841452159182852302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  3 * A276884 (a (n - 1)).toNat

end

end A369388.P9841452159182852302

/-!
# A369389: a(n) is the constant term in expansion of Product_{k=1..n} (x^(k^2) + 1 + 1/x^(k^2))^2.

The programs for A369389, there is no canonical definition to state claims against.
-/

/-! ## A369389.P12035531931016460065

`A233780(A348009(n))`
-/

namespace A369389.P12035531931016460065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233780 (A348009 n).toNat

end

end A369389.P12035531931016460065

/-! ## A369389.P9475811761870972382

`A233970(A274230(n+1)+1)`
-/

namespace A369389.P9475811761870972382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233970 (A274230 (n + 1) + 1).toNat

end

end A369389.P9475811761870972382

/-!
# A369391: Number of nonempty subsets of {1..n} whose elements have a square average.

The programs for A369391, there is no canonical definition to state claims against.
-/

/-! ## A369391.P2371603112301568477

`A369526(∑[n+1]+2)`
-/

namespace A369391.P2371603112301568477
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369526 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A369391.P2371603112301568477

/-!
# A369392: Number of subsets of {2..n} such that the product of the elements plus 1 is a prime.

The programs for A369392, there is no canonical definition to state claims against.
-/

/-! ## A369392.P11400296496942997360

`A104305(A046630(n))`
-/

namespace A369392.P11400296496942997360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104305 (A046630 n).toNat

end

end A369392.P11400296496942997360

/-! ## A369392.P1605367841460689176

`A118766(A107250(n))`
-/

namespace A369392.P1605367841460689176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118766 (A107250 n).toNat

end

end A369392.P1605367841460689176

/-! ## A369392.P14787996242591464863

`A104305(A177874(n))`
-/

namespace A369392.P14787996242591464863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104305 (A177874 n).toNat

end

end A369392.P14787996242591464863

/-! ## A369392.P11577562559555619287

`A332073(A088352(n))`
-/

namespace A369392.P11577562559555619287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332073 (A088352 n).toNat

end

end A369392.P11577562559555619287

/-! ## A369392.P15748790051064746423

`A122154(A022857(n+1))`
-/

namespace A369392.P15748790051064746423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122154 (A022857 (n + 1)).toNat

end

end A369392.P15748790051064746423

/-!
# A369393: a(n) = 2^n*(((n + 1)/2)^n - n!).

The programs for A369393, the canonical program `A369393.P1648837837317554822` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A369393 has offset 0).

The definition of A369393 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A369393.P1648837837317554822

`2^n*(((n+1)/2)^n-n!)`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A369393

/-- `2^n*(((n+1)/2)^n-n!)` -/
def P1648837837317554822.Spec : Prop :=
  ∀ n, P1648837837317554822.a n = (A369393 n : ℚ)

end A369393

/-! ## A369393.P6304815633141861461

`(n+1)^n-A000165(n)`
-/

namespace A369393.P6304815633141861461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ n : ℤ) - A000165 n

end

end A369393.P6304815633141861461

namespace A369393

/-- `(n+1)^n-A000165(n)` -/
def P6304815633141861461.Spec : Prop :=
  ∀ n, P6304815633141861461.a n = A369393 n

end A369393

/-! ## A369393.P17951778834135008057

`(n+1)^n-A006882(2*n)`
-/

namespace A369393.P17951778834135008057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ n : ℤ) - A006882 (2 * n)

end

end A369393.P17951778834135008057

namespace A369393

/-- `(n+1)^n-A006882(2*n)` -/
def P17951778834135008057.Spec : Prop :=
  ∀ n, P17951778834135008057.a n = A369393 n

end A369393

/-! ## A369393.P3424575422410903073

`abs(A000169(n+1)-A000165(n))`
-/

namespace A369393.P3424575422410903073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000169 (n + 1) - A000165 n|

end

end A369393.P3424575422410903073

namespace A369393

/-- `abs(A000169(n+1)-A000165(n))` -/
def P3424575422410903073.Spec : Prop :=
  ∀ n, P3424575422410903073.a n = A369393 n

end A369393

/-! ## A369393.P5668104494744531574

`A000169(n+1)-∏[A004277(n)]`
-/

namespace A369393.P5668104494744531574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000169 (n + 1) - ∏ j ∈ Finset.range (n + 1), f1 j

end

end A369393.P5668104494744531574

namespace A369393

/-- `A000169(n+1)-∏[A004277(n)]` -/
def P5668104494744531574.Spec : Prop :=
  ∀ n, P5668104494744531574.a n = A369393 n

end A369393

/-!
# A369395: AGM transform of the even positive numbers.

The programs for A369395, there is no canonical definition to state claims against.
-/

/-! ## A369395.P8473171889582287180

`Δ[A126646(n)]*A368366(n+1)`
-/

namespace A369395.P8473171889582287180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A368366 (n + 1)

end

end A369395.P8473171889582287180

/-! ## A369395.P9341184858371378427

`2*A368366(n+1)*A000079(n)`
-/

namespace A369395.P9341184858371378427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A368366 (n + 1) * A000079 n

end

end A369395.P9341184858371378427

/-! ## A369395.P14123529799696764240

`Δ[A000225(n+1)]*A368366(n+1)`
-/

namespace A369395.P14123529799696764240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A368366 (n + 1)

end

end A369395.P14123529799696764240

/-! ## A369395.P10795104205514429337

`record[A243071(2*n+1)+1]*A368366(n+1)`
-/

namespace A369395.P10795104205514429337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243071 (2 * n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A368366 (n + 1)

end

end A369395.P10795104205514429337

/-! ## A369395.P1588569571482200043

`(A000169(n+2)-A000165(n+1))*A000312(n+1)`
-/

namespace A369395.P1588569571482200043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000169 (n + 2) - A000165 (n + 1)) * A000312 (n + 1)

end

end A369395.P1588569571482200043

/-!
# A369398: Expansion of (1/x) * Series_Reversion( x / (1+x)^2 * (1-x^3) ).

The programs for A369398, there is no canonical definition to state claims against.
-/

/-! ## A369398.P15205195059842749417

`A369443(n)+A184974(A000045(n))`
-/

namespace A369398.P15205195059842749417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369443 n + A184974 (A000045 n).toNat

end

end A369398.P15205195059842749417

/-! ## A369398.P3967678949848915360

`A369443(n)+A079978(A200731(n))`
-/

namespace A369398.P3967678949848915360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369443 n + A079978 (A200731 n).toNat

end

end A369398.P3967678949848915360

/-! ## A369398.P17407263430709549746

`A369443(n)+A286470(A000272(n))`
-/

namespace A369398.P17407263430709549746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369443 n + A286470 (A000272 n).toNat

end

end A369398.P17407263430709549746

