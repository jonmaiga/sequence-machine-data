import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B013.C000
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

/-!
# A130902: a(n) is the number of binary strings of length n such that there exist 4 or more ones in a subsequence of length 5 or less.

The programs for A130902, the canonical program `A130902.P6544811352786063406` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130902 has offset 0).

The definition of A130902 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A130902.P6544811352786063406

`2^(n+1)-A125513(n+1)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A130902

/-- `2^(n+1)-A125513(n+1)` -/
def P6544811352786063406.Spec : Prop :=
  ∀ n, P6544811352786063406.a n = A130902 n

theorem P6544811352786063406.correct : P6544811352786063406.Spec := by
  intro n
  simp only [A130902]

end A130902

/-! ## A130902.P2737918012076954833

`and(-A125513(n+1), A126646(n))`
-/

namespace A130902.P2737918012076954833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A125513 (n + 1)) (A126646 n)

end

end A130902.P2737918012076954833

namespace A130902

/-- `and(-A125513(n+1), A126646(n))` -/
def P2737918012076954833.Spec : Prop :=
  ∀ n, P2737918012076954833.a n = A130902 n

end A130902

/-! ## A130902.P17899895772315446701

`and(-A125513(n+1), ∑[A000079(n)])`
-/

namespace A130902.P17899895772315446701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A125513 (n + 1)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A130902.P17899895772315446701

namespace A130902

/-- `and(-A125513(n+1), ∑[A000079(n)])` -/
def P17899895772315446701.Spec : Prop :=
  ∀ n, P17899895772315446701.a n = A130902 n

end A130902

/-! ## A130902.P2828938785819152159

`and(-A125513(n+1), A000225(n+1))`
-/

namespace A130902.P2828938785819152159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A125513 (n + 1)) (A000225 (n + 1))

end

end A130902.P2828938785819152159

namespace A130902

/-- `and(-A125513(n+1), A000225(n+1))` -/
def P2828938785819152159.Spec : Prop :=
  ∀ n, P2828938785819152159.a n = A130902 n

end A130902

/-! ## A130902.P540091943134716336

`A118646(n+1)+A118647(n+1)-A125513(n+1)`
-/

namespace A130902.P540091943134716336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118646 (n + 1) + (A118647 (n + 1) - A125513 (n + 1))

end

end A130902.P540091943134716336

namespace A130902

/-- `A118646(n+1)+A118647(n+1)-A125513(n+1)` -/
def P540091943134716336.Spec : Prop :=
  ∀ n, P540091943134716336.a n = A130902 n

end A130902

/-! ## A130902.P10772995185400284504

`A120118(n+1)+A131283(n+1)-A125513(n+1)`
-/

namespace A130902.P10772995185400284504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120118 (n + 1) + (A131283 (n + 1) - A125513 (n + 1))

end

end A130902.P10772995185400284504

namespace A130902

/-- `A120118(n+1)+A131283(n+1)-A125513(n+1)` -/
def P10772995185400284504.Spec : Prop :=
  ∀ n, P10772995185400284504.a n = A130902 n

end A130902

/-!
# A130903: Bad primes (version 2). Primes not in A028388.

The programs for A130903, there is no canonical definition to state claims against.
-/

/-! ## A130903.P11740455804730852895

`p?[comp[A028388(n+1)]]`
-/

namespace A130903.P11740455804730852895
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028388 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A130903.P11740455804730852895

/-! ## A130903.P14581955004677606425

`A105792(∑[A155100(n)!])`
-/

namespace A130903.P14581955004677606425
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A155100 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105792 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A130903.P14581955004677606425

/-! ## A130903.P2395876516226595227

`A000040(lt[A289501(n), A188449(3*n+5)])`
-/

namespace A130903.P2395876516226595227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289501 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188449 (3 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A130903.P2395876516226595227

/-!
# A130904: Numbers n such that the trajectory of the map n -> (n + lpf(n)) / 2 reaches 3, where lpf(n) is the least prime factor of n (A020639).

The programs for A130904, there is no canonical definition to state claims against.
-/

/-! ## A130904.P17415158163933910037

`eq[3, A177980(n+2)]+2`
-/

namespace A130904.P17415158163933910037
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177980 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A130904.P17415158163933910037

/-! ## A130904.P14604828680542303799

`eq[3, A177980(n-(2*a(n-1))%2)]` with `a(0)=0, a(1)=0`
-/

namespace A130904.P14604828680542303799
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n f2 =>
  A177980 ((n : ℤ) - Int.tmod (2 * f2 (n - 1)) 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A130904.P14604828680542303799

/-! ## A130904.P12330367604295793104

`eq[3, A177980(A233583(n+1))]`
-/

namespace A130904.P12330367604295793104
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177980 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A130904.P12330367604295793104

/-! ## A130904.P8195577620705847011

`A009056(eq[3, A177980(n+2)])`
-/

namespace A130904.P8195577620705847011
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177980 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009056 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A130904.P8195577620705847011

/-!
# A130905: Expansion of e.g.f. exp(x^2 / 2) / (1 - x).

The programs for A130905, the canonical program `A130905.P6014670558448957439` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130905 has offset 0).

The definition of A130905 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A130905.P6014670558448957439

`n*a(n-1)+(n-1)*a(n-2)-(n-2)*(n-1)*a(n-3)` with `a(0)=1, a(1)=1, a(2)=3`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A130905

/-- `n*a(n-1)+(n-1)*a(n-2)-(n-2)*(n-1)*a(n-3)` -/
def P6014670558448957439.Spec : Prop :=
  ∀ n, P6014670558448957439.a n = A130905 n

theorem P6014670558448957439.correct : P6014670558448957439.Spec := by
  intro n
  simp only [A130905]

end A130905

/-! ## A130905.P100662975746276871

`∏[n+1-(n-2)/a(n-2)]` with `a(0)=1, a(1)=1`
-/

namespace A130905.P100662975746276871
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  (n + 1 : ℚ) - ((n : ℤ) - 2 : ℚ) / f1 (n - 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A130905.P100662975746276871

namespace A130905

/-- `∏[n+1-(n-2)/a(n-2)]` -/
def P100662975746276871.Spec : Prop :=
  ∀ n, P100662975746276871.a n = (A130905 n : ℚ)

end A130905

/-! ## A130905.P16128436216749077050

`A123023(n)+n*a(n-1)` with `a(0)=1`
-/

namespace A130905.P16128436216749077050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A123023 n + (n : ℤ) * a (n - 1)

end

end A130905.P16128436216749077050

namespace A130905

/-- `A123023(n)+n*a(n-1)` -/
def P16128436216749077050.Spec : Prop :=
  ∀ n, P16128436216749077050.a n = A130905 n

end A130905

/-! ## A130905.P4256878336546493550

`n*a(n-1)-A123022(n+3)` with `a(0)=1`
-/

namespace A130905.P4256878336546493550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) * a (n - 1) - A123022 (n + 3)

end

end A130905.P4256878336546493550

namespace A130905

/-- `n*a(n-1)-A123022(n+3)` -/
def P4256878336546493550.Spec : Prop :=
  ∀ n, P4256878336546493550.a n = A130905 n

end A130905

/-! ## A130905.P740776742942873795

`2*A193385(n)-A000266(n)`
-/

namespace A130905.P740776742942873795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A193385 n - A000266 n

end

end A130905.P740776742942873795

namespace A130905

/-- `2*A193385(n)-A000266(n)` -/
def P740776742942873795.Spec : Prop :=
  ∀ n, P740776742942873795.a n = A130905 n

end A130905

/-!
# A130906: Expansion of e.g.f. exp(x^3/3!)/(1-x).

The programs for A130906, there is no canonical definition to state claims against.
-/

/-! ## A130906.P14777343805834809763

`A002265(A000090(n))+n!`
-/

namespace A130906.P14777343805834809763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A000090 n).toNat + (Nat.factorial n : ℤ)

end

end A130906.P14777343805834809763

/-! ## A130906.P8412062210794675712

`A002265(A000090(n))+A000142(n)`
-/

namespace A130906.P8412062210794675712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A000090 n).toNat + A000142 n

end

end A130906.P8412062210794675712

/-! ## A130906.P8051089338427872737

`A109497(A288965(n)+A000108(n))`
-/

namespace A130906.P8051089338427872737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109497 (A288965 n + A000108 n).toNat

end

end A130906.P8051089338427872737

/-!
# A130907: E.g.f.: exp(x+x^2/2)/(1-x).

The programs for A130907, the canonical program `A130907.P9964875772534998549` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130907 has offset 0).

The definition of A130907 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A130907.P9964875772534998549

`(n+1)*a(n-1)-(n-2)*(n-1)*a(n-3)` with `a(0)=1, a(1)=2, a(2)=6`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A130907

/-- `(n+1)*a(n-1)-(n-2)*(n-1)*a(n-3)` -/
def P9964875772534998549.Spec : Prop :=
  ∀ n, P9964875772534998549.a n = A130907 n

theorem P9964875772534998549.correct : P9964875772534998549.Spec := by
  intro n
  simp only [A130907]

end A130907

/-! ## A130907.P5028090538834037101

`A000085(n)+n*a(n-1)` with `a(0)=1`
-/

namespace A130907.P5028090538834037101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000085 n + (n : ℤ) * a (n - 1)

end

end A130907.P5028090538834037101

namespace A130907

/-- `A000085(n)+n*a(n-1)` -/
def P5028090538834037101.Spec : Prop :=
  ∀ n, P5028090538834037101.a n = A130907 n

end A130907

/-! ## A130907.P14722731310898475894

`A099020(∑[n])+n*a(n-1)` with `a(0)=1`
-/

namespace A130907.P14722731310898475894
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A099020 (∑ j ∈ Finset.range (n + 1), f1 j) + (n : ℤ) * a (n - 1)

end

end A130907.P14722731310898475894

namespace A130907

/-- `A099020(∑[n])+n*a(n-1)` -/
def P14722731310898475894.Spec : Prop :=
  ∀ n, P14722731310898475894.a n = A130907 n

end A130907

/-! ## A130907.P4611597680859932043

`A013989(n)/(n+1)+n*a((2*n)%(n+1))` with `a(0)=1`
-/

namespace A130907.P4611597680859932043
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A013989 n : ℚ) / (n + 1 : ℚ) + (n : ℚ) * a (2 * n % (n + 1))

end

end A130907.P4611597680859932043

namespace A130907

/-- `A013989(n)/(n+1)+n*a((2*n)%(n+1))` -/
def P4611597680859932043.Spec : Prop :=
  ∀ n, P4611597680859932043.a n = (A130907 n : ℚ)

end A130907

/-! ## A130907.P11863279868797406854

`n!*∑[A000085(n)/A000142(n)]`
-/

namespace A130907.P11863279868797406854
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000085 n : ℚ) / (A000142 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A130907.P11863279868797406854

namespace A130907

/-- `n!*∑[A000085(n)/A000142(n)]` -/
def P11863279868797406854.Spec : Prop :=
  ∀ n, P11863279868797406854.a n = (A130907 n : ℚ)

end A130907

/-! ## A130907.P13704694082269990899

`A182222(∑[n])+n*a(n-1)` with `a(0)=1`
-/

namespace A130907.P13704694082269990899
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A182222 (∑ j ∈ Finset.range (n + 1), f1 j) + (n : ℤ) * a (n - 1)

end

end A130907.P13704694082269990899

namespace A130907

/-- `A182222(∑[n])+n*a(n-1)` -/
def P13704694082269990899.Spec : Prop :=
  ∀ n, P13704694082269990899.a n = A130907 n

end A130907

/-!
# A130908: E.g.f.: exp(x+x^2/2!+x^3/3!)/(1-x).

The programs for A130908, there is no canonical definition to state claims against.
-/

/-! ## A130908.P15074718203061759759

`A001680(n)+n*a(n-1)` with `a(0)=1`
-/

namespace A130908.P15074718203061759759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A001680 n + (n : ℤ) * a (n - 1)

end

end A130908.P15074718203061759759

/-! ## A130908.P1802174525251559661

`A022290(A340450(n))`
-/

namespace A130908.P1802174525251559661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022290 (A340450 n).toNat

end

end A130908.P1802174525251559661

/-!
# A130909: Period 16: repeat [0, 1, 2, ..., 15]; a(n) = n mod 16.

The programs for A130909, the canonical program `A130909.P12845635538270466454` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130909 has offset 0).

The definition of A130909 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A130909.P12845635538270466454

`n%16`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A130909

/-- `n%16` -/
def P12845635538270466454.Spec : Prop :=
  ∀ n, (P12845635538270466454.a n : ℤ) = A130909 n

theorem P12845635538270466454.correct : P12845635538270466454.Spec := by
  intro n
  simp only [A130909]

end A130909

/-!
# A130910: Partial sums of A130909.

The programs for A130910, the canonical program `A130910.P16449647640407660421` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130910 has offset 0).

The definition of A130910 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A130910.P16449647640407660421

`∑[n%16]`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A130910

/-- `∑[n%16]` -/
def P16449647640407660421.Spec : Prop :=
  ∀ n, (P16449647640407660421.a n : ℤ) = A130910 n

theorem P16449647640407660421.correct : P16449647640407660421.Spec := by
  intro n
  simp only [A130910]

end A130910

/-! ## A130910.P8072874610623410847

`∑[and(15, n)]`
-/

namespace A130910.P8072874610623410847
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 15 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130910.P8072874610623410847

namespace A130910

/-- `∑[and(15, n)]` -/
def P8072874610623410847.Spec : Prop :=
  ∀ n, (P8072874610623410847.a n : ℤ) = A130910 n

end A130910

/-! ## A130910.P8591277733095146085

`∑[or(n, -16)+16]`
-/

namespace A130910.P8591277733095146085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (-16) + 16

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130910.P8591277733095146085

namespace A130910

/-- `∑[or(n, -16)+16]` -/
def P8591277733095146085.Spec : Prop :=
  ∀ n, P8591277733095146085.a n = A130910 n

end A130910

/-! ## A130910.P15555112931324296147

`∑[15-or(15, n)+n]`
-/

namespace A130910.P15555112931324296147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  15 - (Nat.lor 15 n : ℤ) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130910.P15555112931324296147

namespace A130910

/-- `∑[15-or(15, n)+n]` -/
def P15555112931324296147.Spec : Prop :=
  ∀ n, P15555112931324296147.a n = A130910 n

end A130910

/-! ## A130910.P11820946264235807044

`∑[15-(or(15, n)-n)]`
-/

namespace A130910.P11820946264235807044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  15 - ((Nat.lor 15 n : ℤ) - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130910.P11820946264235807044

namespace A130910

/-- `∑[15-(or(15, n)-n)]` -/
def P11820946264235807044.Spec : Prop :=
  ∀ n, P11820946264235807044.a n = A130910 n

end A130910

/-! ## A130910.P7374691875387823068

`∑[A130909(n)]`
-/

namespace A130910.P7374691875387823068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130909 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130910.P7374691875387823068

namespace A130910

/-- `∑[A130909(n)]` -/
def P7374691875387823068.Spec : Prop :=
  ∀ n, P7374691875387823068.a n = A130910 n

end A130910

/-!
# A130911: a(n) is the number of primes with odd binary weight among the first n primes minus the number with an even binary weight.

The programs for A130911, the canonical program `A130911.P12693574123707460580` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130911 has offset 1).

The definition of A130911 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A130911.P12693574123707460580

`∑[1-2*A200244(n+1)]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A130911

/-- `∑[1-2*A200244(n+1)]` -/
def P12693574123707460580.Spec : Prop :=
  ∀ n, P12693574123707460580.a n = A130911 (n + 1)

theorem P12693574123707460580.correct : P12693574123707460580.Spec := by
  intro n
  simp only [A130911, Nat.add_sub_cancel]

end A130911

/-! ## A130911.P7412590394863503989

`∑[2*A200246(n+1)-1]`
-/

namespace A130911.P7412590394863503989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A200246 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130911.P7412590394863503989

namespace A130911

/-- `∑[2*A200246(n+1)-1]` -/
def P7412590394863503989.Spec : Prop :=
  ∀ n, P7412590394863503989.a n = A130911 (n + 1)

end A130911

/-! ## A130911.P17723331626127899176

`2*A200247(n+1)-(n+1)`
-/

namespace A130911.P17723331626127899176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A200247 (n + 1) - (n + 1 : ℤ)

end

end A130911.P17723331626127899176

namespace A130911

/-- `2*A200247(n+1)-(n+1)` -/
def P17723331626127899176.Spec : Prop :=
  ∀ n, P17723331626127899176.a n = A130911 (n + 1)

end A130911

/-! ## A130911.P8258646471830844283

`n+1-2*A200245(n+1)`
-/

namespace A130911.P8258646471830844283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - 2 * A200245 (n + 1)

end

end A130911.P8258646471830844283

namespace A130911

/-- `n+1-2*A200245(n+1)` -/
def P8258646471830844283.Spec : Prop :=
  ∀ n, P8258646471830844283.a n = A130911 (n + 1)

end A130911

/-! ## A130911.P9088494835839715147

`1-A005843(A200245(n+1))+n`
-/

namespace A130911.P9088494835839715147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A005843 (A200245 (n + 1)).toNat + (n : ℤ)

end

end A130911.P9088494835839715147

namespace A130911

/-- `1-A005843(A200245(n+1))+n` -/
def P9088494835839715147.Spec : Prop :=
  ∀ n, P9088494835839715147.a n = A130911 (n + 1)

end A130911

/-! ## A130911.P16758939106051143517

`A200247(n+1)-A200245(n+1)`
-/

namespace A130911.P16758939106051143517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200247 (n + 1) - A200245 (n + 1)

end

end A130911.P16758939106051143517

namespace A130911

/-- `A200247(n+1)-A200245(n+1)` -/
def P16758939106051143517.Spec : Prop :=
  ∀ n, P16758939106051143517.a n = A130911 (n + 1)

end A130911

/-! ## A130911.P12800609024747113212

`∑[A200246(n+1)-A200244(n+1)]`
-/

namespace A130911.P12800609024747113212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200246 (n + 1) - A200244 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130911.P12800609024747113212

namespace A130911

/-- `∑[A200246(n+1)-A200244(n+1)]` -/
def P12800609024747113212.Spec : Prop :=
  ∀ n, P12800609024747113212.a n = A130911 (n + 1)

end A130911

/-! ## A130911.P7937704417494525917

`∑[A200246(n+1)]-A200245(n+1)`
-/

namespace A130911.P7937704417494525917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200246 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A200245 (n + 1)

end

end A130911.P7937704417494525917

namespace A130911

/-- `∑[A200246(n+1)]-A200245(n+1)` -/
def P7937704417494525917.Spec : Prop :=
  ∀ n, P7937704417494525917.a n = A130911 (n + 1)

end A130911

/-! ## A130911.P9383400757157285364

`A200247(n+1)-∑[A200244(n+1)]`
-/

namespace A130911.P9383400757157285364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200244 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200247 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130911.P9383400757157285364

namespace A130911

/-- `A200247(n+1)-∑[A200244(n+1)]` -/
def P9383400757157285364.Spec : Prop :=
  ∀ n, P9383400757157285364.a n = A130911 (n + 1)

end A130911

/-! ## A130911.P4753710971729701228

`∑[A249024(and(a(n-1), A200244(n+1)))]` with `a(0)=1`
-/

namespace A130911.P4753710971729701228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A249024 (Int.land (f1 (n - 1)) (A200244 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130911.P4753710971729701228

namespace A130911

/-- `∑[A249024(and(a(n-1), A200244(n+1)))]` -/
def P4753710971729701228.Spec : Prop :=
  ∀ n, P4753710971729701228.a n = A130911 (n + 1)

end A130911

/-! ## A130911.P9012790314542809195

`a(n-1)-A106400(A000040(n+1))` with `a(0)=1`
-/

namespace A130911.P9012790314542809195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - A106400 (A000040 (n + 1)).toNat

end

end A130911.P9012790314542809195

namespace A130911

/-- `a(n-1)-A106400(A000040(n+1))` -/
def P9012790314542809195.Spec : Prop :=
  ∀ n, P9012790314542809195.a n = A130911 (n + 1)

end A130911

/-!
# A130912: Fermat quotients, mod p: ((2^(p-1) - 1)/p) mod p = A007663(n) mod p.

The programs for A130912, there is no canonical definition to state claims against.
-/

/-! ## A130912.P7265221036495791241

`floor(A196202(n+2)/A065091(n+1))`
-/

namespace A130912.P7265221036495791241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A196202 (n + 2) : ℚ) / (A065091 (n + 1) : ℚ)⌋

end

end A130912.P7265221036495791241

/-! ## A130912.P9964351777393198170

`floor(A196202(n+2)/A000040(n+2))`
-/

namespace A130912.P9964351777393198170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A196202 (n + 2) : ℚ) / (A000040 (n + 2) : ℚ)⌋

end

end A130912.P9964351777393198170

/-! ## A130912.P18322845725740739218

`floor(A196202(n+2)/sqrt(A001248(n+2)))`
-/

namespace A130912.P18322845725740739218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A196202 (n + 2) : ℝ) / Real.sqrt (A001248 (n + 2) : ℝ)⌋

end

end A130912.P18322845725740739218

/-! ## A130912.P9542286476108019932

`round(A196202(A000027(n+2))/A000040(n+2))`
-/

namespace A130912.P9542286476108019932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A196202 (A000027 (n + 2)).toNat : ℚ) / (A000040 (n + 2) : ℚ))

end

end A130912.P9542286476108019932

/-! ## A130912.P3288860876120937235

`(A001917(n+2)*A002323(n+2))%A045344(n+1)`
-/

namespace A130912.P3288860876120937235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001917 (n + 2) * A002323 (n + 2)) (A045344 (n + 1))

end

end A130912.P3288860876120937235

/-! ## A130912.P2725706416793577690

`A178844(n+2)`
-/

namespace A130912.P2725706416793577690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178844 (n + 2)

end

end A130912.P2725706416793577690

/-! ## A130912.P3675282715037877471

`A007663(n+2)%p?[A004273(n)]`
-/

namespace A130912.P3675282715037877471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007663 (n + 2)) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A130912.P3675282715037877471

/-! ## A130912.P8956582001623135855

`A304214(n+2)-1`
-/

namespace A130912.P8956582001623135855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304214 (n + 2) - 1

end

end A130912.P8956582001623135855

/-! ## A130912.P6481300477490727291

`A023443(A304214(n+2))`
-/

namespace A130912.P6481300477490727291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A304214 (n + 2)).toNat

end

end A130912.P6481300477490727291

/-!
# A130914: The number of Kekulé structures of the rhombus-shaped benzenoid hydrocarbons.

The programs for A130914, there is no canonical definition to state claims against.
-/

/-! ## A130914.P14504624792938726199

`A000984(n+1)-A289901(A119502(n+1))`
-/

namespace A130914.P14504624792938726199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 (n + 1) - A289901 (A119502 (n + 1)).toNat

end

end A130914.P14504624792938726199

/-! ## A130914.P2180334197812388891

`A000984(n+1)-A230730(A059870(2*n+1))`
-/

namespace A130914.P2180334197812388891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 (n + 1) - A230730 (A059870 (2 * n + 1)).toNat

end

end A130914.P2180334197812388891

/-! ## A130914.P13660160872106710194

`A001405(2*(n+1))-A127683(A113370(n+2))`
-/

namespace A130914.P13660160872106710194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (2 * (n + 1)) - A127683 (A113370 (n + 2)).toNat

end

end A130914.P13660160872106710194

/-! ## A130914.P17322578496399533295

`A051920(2*(n+1))-A351568(A051920(2*(n+1)))`
-/

namespace A130914.P17322578496399533295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051920 (2 * (n + 1)) - A351568 (A051920 (2 * (n + 1))).toNat

end

end A130914.P17322578496399533295

/-!
# A130915: Number of permutations in the symmetric group S_n in which cycle lengths are odd and greater than 1.

The programs for A130915, the canonical program `A130915.P16080440858605120676` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130915 has offset 0).

The definition of A130915 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A130915.P16080440858605120676

`(n-1)*(n-2)*(a(n-2)+a(n-3))` with `a(0)=1, a(1)=0, a(2)=0`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A130915

/-- `(n-1)*(n-2)*(a(n-2)+a(n-3))` -/
def P16080440858605120676.Spec : Prop :=
  ∀ n, P16080440858605120676.a n = A130915 n

theorem P16080440858605120676.correct : P16080440858605120676.Spec := by
  intro n
  simp only [A130915]

end A130915

/-! ## A130915.P17058709848513742924

`A365980(n)/A245554(A365969(n))`
-/

namespace A130915.P17058709848513742924
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A365980 n : ℚ) / (A245554 (A365969 n).toNat : ℚ)

end

end A130915.P17058709848513742924

namespace A130915

/-- `A365980(n)/A245554(A365969(n))` -/
def P17058709848513742924.Spec : Prop :=
  ∀ n, P17058709848513742924.a n = (A130915 n : ℚ)

end A130915

/-! ## A130915.P3501630786277811138

`A365980(n)/A051064(A005960(n+1))`
-/

namespace A130915.P3501630786277811138
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A365980 n : ℚ) / (A051064 (A005960 (n + 1)).toNat : ℚ)

end

end A130915.P3501630786277811138

namespace A130915

/-- `A365980(n)/A051064(A005960(n+1))` -/
def P3501630786277811138.Spec : Prop :=
  ∀ n, P3501630786277811138.a n = (A130915 n : ℚ)

end A130915

/-! ## A130915.P6918292399912083914

`A365980(n)/A066099(A001764(n))`
-/

namespace A130915.P6918292399912083914
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A365980 n : ℚ) / (A066099 (A001764 n).toNat : ℚ)

end

end A130915.P6918292399912083914

namespace A130915

/-- `A365980(n)/A066099(A001764(n))` -/
def P6918292399912083914.Spec : Prop :=
  ∀ n, P6918292399912083914.a n = (A130915 n : ℚ)

end A130915

/-!
# A130916: a(n) = smallest integer >= n which has only prime factors 2, 3 and 5.

The programs for A130916, there is no canonical definition to state claims against.
-/

/-! ## A130916.P10656891725405810105

`A051037(A301506(5*n)+1)`
-/

namespace A130916.P10656891725405810105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051037 (A301506 (5 * n) + 1).toNat

end

end A130916.P10656891725405810105

/-! ## A130916.P5010099751245620082

`A051037(∑[char[A051037(n+1)]]+1)`
-/

namespace A130916.P5010099751245620082
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051037 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051037 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A130916.P5010099751245620082

/-!
# A130917: a(n) is the sum of the digital roots of all of the previous terms.

The programs for A130917, the canonical program `A130917.P9588545672520067047` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130917 has offset 1).

The definition of A130917 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A130917.P9588545672520067047

`∑[dr(2*a(n-1))]` with `a(0)=1, a(1)=0, a(2)=1`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A130917

/-- `∑[dr(2*a(n-1))]` -/
def P9588545672520067047.Spec : Prop :=
  ∀ n, (P9588545672520067047.a n : ℤ) = A130917 (n + 1)

theorem P9588545672520067047.correct : P9588545672520067047.Spec := by
  intro n
  simp only [A130917, Nat.add_sub_cancel]

end A130917

/-! ## A130917.P1424926114654680170

`a(n-1)+dr(a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A130917.P1424926114654680170
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) + SequenceMachineLib.digitalRoot (a (n - 1) : ℤ)

end

end A130917.P1424926114654680170

namespace A130917

/-- `a(n-1)+dr(a(n-1))` -/
def P1424926114654680170.Spec : Prop :=
  ∀ n, (P1424926114654680170.a n : ℤ) = A130917 (n + 1)

end A130917

/-! ## A130917.P2315742582787491016

`a(n-1)+a(n-1)%9` with `a(0)=1, a(1)=1`
-/

namespace A130917.P2315742582787491016
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) + a (n - 1) % 9

end

end A130917.P2315742582787491016

namespace A130917

/-- `a(n-1)+a(n-1)%9` -/
def P2315742582787491016.Spec : Prop :=
  ∀ n, (P2315742582787491016.a n : ℤ) = A130917 (n + 1)

end A130917

/-! ## A130917.P9782049501752890032

`dr(a(n-1))-floor(-a(n-1))` with `a(0)=1, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A130917.P9782049501752890032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  (SequenceMachineLib.digitalRoot (a (n - 1)) : ℤ) - (-a (n - 1))

end

end A130917.P9782049501752890032

namespace A130917

/-- `dr(a(n-1))-floor(-a(n-1))` -/
def P9782049501752890032.Spec : Prop :=
  ∀ n, P9782049501752890032.a n = A130917 (n + 1)

end A130917

/-! ## A130917.P10310229862920374936

`A007612(or(n, char[n^14]))`
-/

namespace A130917.P10310229862920374936
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 14

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007612 (Nat.lor n (if ∃ j, f1 j = n then 1 else 0))

end

end A130917.P10310229862920374936

namespace A130917

/-- `A007612(or(n, char[n^14]))` -/
def P10310229862920374936.Spec : Prop :=
  ∀ n, P10310229862920374936.a n = A130917 (n + 1)

end A130917

/-! ## A130917.P849631832495941362

`A007612(ceil(abs(sin(1)-n)))`
-/

namespace A130917.P849631832495941362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007612 ⌈|Real.sin (1 : ℝ) - (n : ℝ)|⌉.toNat

end

end A130917.P849631832495941362

namespace A130917

/-- `A007612(ceil(abs(sin(1)-n)))` -/
def P849631832495941362.Spec : Prop :=
  ∀ n, P849631832495941362.a n = A130917 (n + 1)

end A130917

/-! ## A130917.P8128834048669722393

`A007612(n^ceil(abs(sin(n))))`
-/

namespace A130917.P8128834048669722393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007612 (SequenceMachineLib.roundAway ((n : ℚ) ^ (⌈|Real.sin (n : ℝ)|⌉ : ℤ))).toNat

end

end A130917.P8128834048669722393

namespace A130917

/-- `A007612(n^ceil(abs(sin(n))))` -/
def P8128834048669722393.Spec : Prop :=
  ∀ n, P8128834048669722393.a n = A130917 (n + 1)

end A130917

/-! ## A130917.P14967422067217993251

`A154529(n)+a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A130917.P14967422067217993251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A154529 n + a (n - 1)

end

end A130917.P14967422067217993251

namespace A130917

/-- `A154529(n)+a(n-1)` -/
def P14967422067217993251.Spec : Prop :=
  ∀ n, P14967422067217993251.a n = A130917 (n + 1)

end A130917

/-! ## A130917.P15357217202003213180

`A029898(n-1)+a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A130917.P15357217202003213180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A029898 (n - 1) + a (n - 1)

end

end A130917.P15357217202003213180

namespace A130917

/-- `A029898(n-1)+a(n-1)` -/
def P15357217202003213180.Spec : Prop :=
  ∀ n, P15357217202003213180.a n = A130917 (n + 1)

end A130917

/-! ## A130917.P18109249722578609364

`A153130(n-2)+a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A130917.P18109249722578609364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A153130 (n - 2) + a (n - 1)

end

end A130917.P18109249722578609364

namespace A130917

/-- `A153130(n-2)+a(n-1)` -/
def P18109249722578609364.Spec : Prop :=
  ∀ n, P18109249722578609364.a n = A130917 (n + 1)

end A130917

/-! ## A130917.P7583335059707580117

`A007612(A028310(n))`
-/

namespace A130917.P7583335059707580117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007612 (A028310 n).toNat

end

end A130917.P7583335059707580117

namespace A130917

/-- `A007612(A028310(n))` -/
def P7583335059707580117.Spec : Prop :=
  ∀ n, P7583335059707580117.a n = A130917 (n + 1)

end A130917

/-! ## A130917.P10030894843158016695

`A007612(A000007(n)+n)`
-/

namespace A130917.P10030894843158016695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007612 (A000007 n + (n : ℤ)).toNat

end

end A130917.P10030894843158016695

namespace A130917

/-- `A007612(A000007(n)+n)` -/
def P10030894843158016695.Spec : Prop :=
  ∀ n, P10030894843158016695.a n = A130917 (n + 1)

end A130917

/-! ## A130917.P12730107948259871344

`A007612(A019590(n+2)+n)`
-/

namespace A130917.P12730107948259871344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007612 (A019590 (n + 2) + (n : ℤ)).toNat

end

end A130917.P12730107948259871344

namespace A130917

/-- `A007612(A019590(n+2)+n)` -/
def P12730107948259871344.Spec : Prop :=
  ∀ n, P12730107948259871344.a n = A130917 (n + 1)

end A130917

/-! ## A130917.P2245980292060891764

`A146501(n+2)+a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A130917.P2245980292060891764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A146501 (n + 2) + a (n - 1)

end

end A130917.P2245980292060891764

namespace A130917

/-- `A146501(n+2)+a(n-1)` -/
def P2245980292060891764.Spec : Prop :=
  ∀ n, P2245980292060891764.a n = A130917 (n + 1)

end A130917

/-! ## A130917.P8192908630054243094

`A064806(a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A130917.P8192908630054243094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A064806 (a (n - 1)).toNat

end

end A130917.P8192908630054243094

namespace A130917

/-- `A064806(a(n-1))` -/
def P8192908630054243094.Spec : Prop :=
  ∀ n, P8192908630054243094.a n = A130917 (n + 1)

end A130917

/-! ## A130917.P12162409762267659246

`A010878(a(n-1))+a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A130917.P12162409762267659246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A010878 (a (n - 1)).toNat + a (n - 1)

end

end A130917.P12162409762267659246

namespace A130917

/-- `A010878(a(n-1))+a(n-1)` -/
def P12162409762267659246.Spec : Prop :=
  ∀ n, P12162409762267659246.a n = A130917 (n + 1)

end A130917

/-! ## A130917.P11348127557457361628

`A010888(a(n-1))+a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A130917.P11348127557457361628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A010888 (a (n - 1)).toNat + a (n - 1)

end

end A130917.P11348127557457361628

namespace A130917

/-- `A010888(a(n-1))+a(n-1)` -/
def P11348127557457361628.Spec : Prop :=
  ∀ n, P11348127557457361628.a n = A130917 (n + 1)

end A130917

/-! ## A130917.P10478631591149167455

`A070692(a(n-1))+a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A130917.P10478631591149167455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A070692 (a (n - 1)).toNat + a (n - 1)

end

end A130917.P10478631591149167455

namespace A130917

/-- `A070692(a(n-1))+a(n-1)` -/
def P10478631591149167455.Spec : Prop :=
  ∀ n, P10478631591149167455.a n = A130917 (n + 1)

end A130917

/-! ## A130917.P15071359698895022951

`A277547(a(n-1))+a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A130917.P15071359698895022951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A277547 (a (n - 1)).toNat + a (n - 1)

end

end A130917.P15071359698895022951

namespace A130917

/-- `A277547(a(n-1))+a(n-1)` -/
def P15071359698895022951.Spec : Prop :=
  ∀ n, P15071359698895022951.a n = A130917 (n + 1)

end A130917

/-! ## A130917.P6465582285752900438

`∑[dr(ceil((-2)^(n-2)))]`
-/

namespace A130917.P6465582285752900438
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot ⌈(-2 : ℚ) ^ ((n : ℤ) - 2 : ℤ)⌉

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130917.P6465582285752900438

namespace A130917

/-- `∑[dr(ceil((-2)^(n-2)))]` -/
def P6465582285752900438.Spec : Prop :=
  ∀ n, (P6465582285752900438.a n : ℤ) = A130917 (n + 1)

end A130917

/-!
# A130918: Simple self-inverse permutation of natural numbers: List each block of A000108(n) numbers from A014137(n-1) to A014138(n-1) in reverse order.

The programs for A130918, the canonical program `A130918.P18394397597512307276` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130918 has offset 0).

The definition of A130918 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A130918.P16044434158323321493

`A057162(A082852(n))-A082853(n)`
-/

namespace A130918.P16044434158323321493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057162 (A082852 n).toNat - A082853 n

end

end A130918.P16044434158323321493

namespace A130918

/-- `A057162(A082852(n))-A082853(n)` -/
def P16044434158323321493.Spec : Prop :=
  ∀ n, P16044434158323321493.a n = A130918 n

end A130918

/-! ## A130918.P13005112828992224982

`A057162(n-A082853(n))-A082853(n)`
-/

namespace A130918.P13005112828992224982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057162 ((n : ℤ) - A082853 n).toNat - A082853 n

end

end A130918.P13005112828992224982

namespace A130918

/-- `A057162(n-A082853(n))-A082853(n)` -/
def P13005112828992224982.Spec : Prop :=
  ∀ n, P13005112828992224982.a n = A130918 n

end A130918

/-! ## A130918.P6558590657530040553

`A057163(n-A082853(n))-A082853(n)`
-/

namespace A130918.P6558590657530040553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 ((n : ℤ) - A082853 n).toNat - A082853 n

end

end A130918.P6558590657530040553

namespace A130918

/-- `A057163(n-A082853(n))-A082853(n)` -/
def P6558590657530040553.Spec : Prop :=
  ∀ n, P6558590657530040553.a n = A130918 n

end A130918

/-! ## A130918.P4669110336746900077

`A057505(n-A082853(n))-A082853(n)`
-/

namespace A130918.P4669110336746900077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057505 ((n : ℤ) - A082853 n).toNat - A082853 n

end

end A130918.P4669110336746900077

namespace A130918

/-- `A057505(n-A082853(n))-A082853(n)` -/
def P4669110336746900077.Spec : Prop :=
  ∀ n, P4669110336746900077.a n = A130918 n

end A130918

/-! ## A130918.P8704594421245902133

`A057506(n-A082853(n))-A082853(n)`
-/

namespace A130918.P8704594421245902133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057506 ((n : ℤ) - A082853 n).toNat - A082853 n

end

end A130918.P8704594421245902133

namespace A130918

/-- `A057506(n-A082853(n))-A082853(n)` -/
def P8704594421245902133.Spec : Prop :=
  ∀ n, P8704594421245902133.a n = A130918 n

end A130918

/-! ## A130918.P3378171065084712185

`A074682(n-A082853(n))-A082853(n)`
-/

namespace A130918.P3378171065084712185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074682 ((n : ℤ) - A082853 n).toNat - A082853 n

end

end A130918.P3378171065084712185

namespace A130918

/-- `A074682(n-A082853(n))-A082853(n)` -/
def P3378171065084712185.Spec : Prop :=
  ∀ n, P3378171065084712185.a n = A130918 n

end A130918

/-! ## A130918.P7612976431758640003

`A082358(n-A082853(n))-A082853(n)`
-/

namespace A130918.P7612976431758640003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082358 ((n : ℤ) - A082853 n).toNat - A082853 n

end

end A130918.P7612976431758640003

namespace A130918

/-- `A082358(n-A082853(n))-A082853(n)` -/
def P7612976431758640003.Spec : Prop :=
  ∀ n, P7612976431758640003.a n = A130918 n

end A130918

/-! ## A130918.P18394397597512307276

`A072795(1-A082854(n)+n)-A082854(n)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A130918

/-- `A072795(1-A082854(n)+n)-A082854(n)` -/
def P18394397597512307276.Spec : Prop :=
  ∀ n, P18394397597512307276.a n = A130918 n

theorem P18394397597512307276.correct : P18394397597512307276.Spec := by
  intro n
  simp only [A130918]

end A130918

/-! ## A130918.P4424975285666770979

`eq[1, A072800(n)%4]-A005408(A082853(n))`
-/

namespace A130918.P4424975285666770979
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072800 n) 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - A005408 (A082853 n).toNat

end

end A130918.P4424975285666770979

namespace A130918

/-- `eq[1, A072800(n)%4]-A005408(A082853(n))` -/
def P4424975285666770979.Spec : Prop :=
  ∀ n, P4424975285666770979.a n = A130918 n

end A130918

/-! ## A130918.P11534188581049902896

`A082852(A072795(n))-A082854(n)`
-/

namespace A130918.P11534188581049902896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082852 (A072795 n).toNat - A082854 n

end

end A130918.P11534188581049902896

namespace A130918

/-- `A082852(A072795(n))-A082854(n)` -/
def P11534188581049902896.Spec : Prop :=
  ∀ n, P11534188581049902896.a n = A130918 n

end A130918

/-!
# A130921: Signature permutation of a Catalan automorphism: composition of automorphisms *A074684 and *A057164.

The programs for A130921, there is no canonical definition to state claims against.
-/

/-! ## A130921.P3589875689980772455

`A074684(A057164(n))`
-/

namespace A130921.P3589875689980772455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074684 (A057164 n).toNat

end

end A130921.P3589875689980772455

/-! ## A130921.P11102484072291299844

`A085169(A069888(n))`
-/

namespace A130921.P11102484072291299844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085169 (A069888 n).toNat

end

end A130921.P11102484072291299844

/-! ## A130921.P2552911843662133695

`A085161(A074684(n))`
-/

namespace A130921.P2552911843662133695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085161 (A074684 n).toNat

end

end A130921.P2552911843662133695

/-! ## A130921.P14916011606530082480

`A057164(A125982(n))`
-/

namespace A130921.P14916011606530082480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057164 (A125982 n).toNat

end

end A130921.P14916011606530082480

/-! ## A130921.P6405280581392167244

`A074684(A057505(A057163(n)))`
-/

namespace A130921.P6405280581392167244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074684 (A057505 (A057163 n).toNat).toNat

end

end A130921.P6405280581392167244

/-! ## A130921.P15194255107165238750

`A085174(A085161(A085169(n)))`
-/

namespace A130921.P15194255107165238750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085174 (A085161 (A085169 n).toNat).toNat

end

end A130921.P15194255107165238750

/-! ## A130921.P12302700959071137125

`A074684(A127292(A127289(n)))`
-/

namespace A130921.P12302700959071137125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074684 (A127292 (A127289 n).toNat).toNat

end

end A130921.P12302700959071137125

/-! ## A130921.P8367130883421989716

`A085175(A085160(A074684(A085160(A085159(n)))))`
-/

namespace A130921.P8367130883421989716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085175 (A085160 (A074684 (A085160 (A085159 n).toNat).toNat).toNat).toNat

end

end A130921.P8367130883421989716

/-! ## A130921.P7346004907481792504

`A085175(A085160(A074684(A085175(A085175(n)))))`
-/

namespace A130921.P7346004907481792504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085175 (A085160 (A074684 (A085175 (A085175 n).toNat).toNat).toNat).toNat

end

end A130921.P7346004907481792504

/-!
# A130922: Signature permutation of a Catalan automorphism: composition of automorphisms *A057164 and *A074683.

The programs for A130922, there is no canonical definition to state claims against.
-/

/-! ## A130922.P919361383234916470

`A057164(A074683(n))`
-/

namespace A130922.P919361383234916470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057164 (A074683 n).toNat

end

end A130922.P919361383234916470

/-! ## A130922.P1187609527076959358

`A069888(A085170(n))`
-/

namespace A130922.P1187609527076959358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069888 (A085170 n).toNat

end

end A130922.P1187609527076959358

/-! ## A130922.P9101092674816317123

`A074683(A085161(n))`
-/

namespace A130922.P9101092674816317123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074683 (A085161 n).toNat

end

end A130922.P9101092674816317123

/-! ## A130922.P3725709656665250052

`A125981(A057164(n))`
-/

namespace A130922.P3725709656665250052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125981 (A057164 n).toNat

end

end A130922.P3725709656665250052

/-! ## A130922.P3363369113218368772

`A125981(A057505(A057163(n)))`
-/

namespace A130922.P3363369113218368772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125981 (A057505 (A057163 n).toNat).toNat

end

end A130922.P3363369113218368772

/-! ## A130922.P13706762706366009645

`A125981(A057163(A057506(n)))`
-/

namespace A130922.P13706762706366009645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125981 (A057163 (A057506 n).toNat).toNat

end

end A130922.P13706762706366009645

/-! ## A130922.P7984189028392752435

`A074683(A130921(A074683(2*n-n)))`
-/

namespace A130922.P7984189028392752435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074683 (A130921 (A074683 (2 * n - n)).toNat).toNat

end

end A130922.P7984189028392752435

/-! ## A130922.P16498552819504315675

`A127292(A127289(A074683(A127292(A127291(n)))))`
-/

namespace A130922.P16498552819504315675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127292 (A127289 (A074683 (A127292 (A127291 n).toNat).toNat).toNat).toNat

end

end A130922.P16498552819504315675

/-! ## A130922.P969433434305024560

`A057505(A122348(n))`
-/

namespace A130922.P969433434305024560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057505 (A122348 n).toNat

end

end A130922.P969433434305024560

/-! ## A130922.P9915498775028151134

`A085170(A126320(n))`
-/

namespace A130922.P9915498775028151134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085170 (A126320 n).toNat

end

end A130922.P9915498775028151134

/-!
# A130923: Signature permutation of a Catalan automorphism: Inverse FORK-transform of automorphism *A120705.

The programs for A130923, there is no canonical definition to state claims against.
-/

/-! ## A130923.P12705377987793794053

`A057163(A130925(A057163(n)))`
-/

namespace A130923.P12705377987793794053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A130925 (A057163 n).toNat).toNat

end

end A130923.P12705377987793794053

/-! ## A130923.P18126243041429945107

`A120706(A130926(A120705(n)))`
-/

namespace A130923.P18126243041429945107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120706 (A130926 (A120705 n).toNat).toNat

end

end A130923.P18126243041429945107

/-! ## A130923.P15674037417697646936

`A130342(A130365(n)%A061273(n))`
-/

namespace A130923.P15674037417697646936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130342 (Int.tmod (A130365 n) (A061273 n)).toNat

end

end A130923.P15674037417697646936

/-! ## A130923.P13656588862820030310

`A130342(A130365(n))%A122270(n+1)`
-/

namespace A130923.P13656588862820030310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A130342 (A130365 n).toNat) (A122270 (n + 1))

end

end A130923.P13656588862820030310

/-! ## A130923.P12677648596907752642

`A069770(A130992(n)%A122292(3*n+1))`
-/

namespace A130923.P12677648596907752642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069770 (Int.tmod (A130992 n) (A122292 (3 * n + 1))).toNat

end

end A130923.P12677648596907752642

/-!
# A130924: Signature permutation of a Catalan automorphism: Inverse KROF-transform of automorphism *A120706.

The programs for A130924, there is no canonical definition to state claims against.
-/

/-! ## A130924.P2778937170751634350

`A057163(A130926(A057163(n)))`
-/

namespace A130924.P2778937170751634350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A130926 (A057163 n).toNat).toNat

end

end A130924.P2778937170751634350

/-! ## A130924.P7012189682344753385

`A120706(A130925(A120705(n)))`
-/

namespace A130924.P7012189682344753385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120706 (A130925 (A120705 n).toNat).toNat

end

end A130924.P7012189682344753385

/-! ## A130924.P9641514458230870221

`A122318(A069770(n)%A072847(n+1))`
-/

namespace A130924.P9641514458230870221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122318 (Int.tmod (A069770 n) (A072847 (n + 1))).toNat

end

end A130924.P9641514458230870221

/-! ## A130924.P274159145163958826

`A130366(A130341(n)%A072847(n+1))`
-/

namespace A130924.P274159145163958826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130366 (Int.tmod (A130341 n) (A072847 (n + 1))).toNat

end

end A130924.P274159145163958826

/-! ## A130924.P17951582594866449732

`A122318(A069770(n))%A164772(n+1)`
-/

namespace A130924.P17951582594866449732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A122318 (A069770 n).toNat) (A164772 (n + 1))

end

end A130924.P17951582594866449732

/-!
# A130925: Signature permutation of a Catalan automorphism: Inverse FORK-transform of automorphism *A120706.

The programs for A130925, there is no canonical definition to state claims against.
-/

/-! ## A130925.P12652635316067919945

`A057163(A130923(A057163(n)))`
-/

namespace A130925.P12652635316067919945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A130923 (A057163 n).toNat).toNat

end

end A130925.P12652635316067919945

/-! ## A130925.P17408894868043638008

`A120705(A130924(A120706(n)))`
-/

namespace A130925.P17408894868043638008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120705 (A130924 (A120706 n).toNat).toNat

end

end A130925.P17408894868043638008

/-! ## A130925.P14433866573486043125

`A069770(A130345(n)%A248526(n))`
-/

namespace A130925.P14433866573486043125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069770 (Int.tmod (A130345 n) (A248526 n)).toNat

end

end A130925.P14433866573486043125

/-! ## A130925.P7123907436969997563

`A122350(A122323(n)%A248526(n))`
-/

namespace A130925.P7123907436969997563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122350 (Int.tmod (A122323 n) (A248526 n)).toNat

end

end A130925.P7123907436969997563

/-! ## A130925.P9159978911282040852

`A122350(A122323(n))%A092005(n+1)`
-/

namespace A130925.P9159978911282040852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A122350 (A122323 n).toNat) (A092005 (n + 1))

end

end A130925.P9159978911282040852

/-!
# A130926: Signature permutation of a Catalan automorphism: Inverse KROF-transform of automorphism *A120705.

The programs for A130926, there is no canonical definition to state claims against.
-/

/-! ## A130926.P4926106608833648813

`A057163(A130924(A057163(n)))`
-/

namespace A130926.P4926106608833648813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A130924 (A057163 n).toNat).toNat

end

end A130926.P4926106608833648813

/-! ## A130926.P17286645886628494524

`A120705(A130923(A120706(n)))`
-/

namespace A130926.P17286645886628494524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120705 (A130923 (A120706 n).toNat).toNat

end

end A130926.P17286645886628494524

/-! ## A130926.P9863053533742580322

`A130346(A069770(n)%A097984(n+1))`
-/

namespace A130926.P9863053533742580322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130346 (Int.tmod (A069770 n) (A097984 (n + 1))).toNat

end

end A130926.P9863053533742580322

/-! ## A130926.P6365924657570376083

`A130346(A069770(n))%A176878(n+1)`
-/

namespace A130926.P6365924657570376083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A130346 (A069770 n).toNat) (A176878 (n + 1))

end

end A130926.P6365924657570376083

/-! ## A130926.P1374410977999286794

`A130346(A069770(n))+A000007(A175840(n))`
-/

namespace A130926.P1374410977999286794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130346 (A069770 n).toNat + A000007 (A175840 n).toNat

end

end A130926.P1374410977999286794

/-!
# A130927: Signature permutation of a Catalan automorphism: row 16 of A130400.

The programs for A130927, there is no canonical definition to state claims against.
-/

/-! ## A130927.P13145978049289816846

`A057163(A130928(A057163(n)))`
-/

namespace A130927.P13145978049289816846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A130928 (A057163 n).toNat).toNat

end

end A130927.P13145978049289816846

/-! ## A130927.P6924357735043015862

`A130956(A122304(n))-A249832(A193845(n))`
-/

namespace A130927.P6924357735043015862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130956 (A122304 n).toNat - A249832 (A193845 n).toNat

end

end A130927.P6924357735043015862

/-! ## A130927.P3523726911110996625

`A130956(A122304(n))+A000035(A194435(n))`
-/

namespace A130927.P3523726911110996625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130956 (A122304 n).toNat + A000035 (A194435 n).toNat

end

end A130927.P3523726911110996625

/-! ## A130927.P12929545647760568340

`A014963(A128253(n+1))*A130956(A122304(n))`
-/

namespace A130927.P12929545647760568340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A128253 (n + 1)).toNat * A130956 (A122304 n).toNat

end

end A130927.P12929545647760568340

/-! ## A130927.P10405537514673251687

`A239145(n)^A151810(n)*A130956(A122304(n))`
-/

namespace A130927.P10405537514673251687
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A239145 n : ℚ) ^ (A151810 n : ℤ) * (A130956 (A122304 n).toNat : ℚ)

end

end A130927.P10405537514673251687

/-! ## A130927.P13235939899311618881

`A130956(A122304(n))*A151810(A151810(n))`
-/

namespace A130927.P13235939899311618881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130956 (A122304 n).toNat * A151810 (A151810 n).toNat

end

end A130927.P13235939899311618881

/-!
# A130928: Signature permutation of a Catalan automorphism: row 20 of A130401.

The programs for A130928, there is no canonical definition to state claims against.
-/

/-! ## A130928.P16122738371983889818

`A057163(A130927(A057163(n)))`
-/

namespace A130928.P16122738371983889818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A130927 (A057163 n).toNat).toNat

end

end A130928.P16122738371983889818

/-! ## A130928.P12658184513611716466

`A089867(A121657(n+1)*A130959(n))`
-/

namespace A130928.P12658184513611716466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089867 (A121657 (n + 1) * A130959 n).toNat

end

end A130928.P12658184513611716466

/-! ## A130928.P4518930290878385785

`A089868(A121657(n+1)*A130959(n))`
-/

namespace A130928.P4518930290878385785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089868 (A121657 (n + 1) * A130959 n).toNat

end

end A130928.P4518930290878385785

/-! ## A130928.P17930322071400992032

`A130953(A333221(n+1)%A161807(2*(n+1)))`
-/

namespace A130928.P17930322071400992032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130953 (Int.tmod (A333221 (n + 1)) (A161807 (2 * (n + 1)))).toNat

end

end A130928.P17930322071400992032

/-!
# A130929: Signature permutation of a Catalan automorphism: row 18 of A130400.

The programs for A130929, there is no canonical definition to state claims against.
-/

/-! ## A130929.P11564068074664621651

`A057163(A130932(A057163(n)))`
-/

namespace A130929.P11564068074664621651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A130932 (A057163 n).toNat).toNat

end

end A130929.P11564068074664621651

/-! ## A130929.P583546013005116061

`A071655(comp[-A013144(n)])`
-/

namespace A130929.P583546013005116061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A013144 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071655 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A130929.P583546013005116061

/-! ## A130929.P14381372144535624090

`A071655(comp[30-A248553(n+1)])`
-/

namespace A130929.P14381372144535624090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  30 - A248553 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071655 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A130929.P14381372144535624090

/-! ## A130929.P7833391353804905084

`A071655(comp[A042915(3*floor(n*ϕ²+ϕ)-n)])`
-/

namespace A130929.P7833391353804905084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042915 (3 * ⌊(n : ℝ) * Real.goldenRatio ^ 2 + Real.goldenRatio⌋ - (n : ℤ)).toNat

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071655 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A130929.P7833391353804905084

/-! ## A130929.P8642226255325659533

`A071655(comp[A044567(n+1)-A156711(n+1)])`
-/

namespace A130929.P8642226255325659533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044567 (n + 1) - A156711 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071655 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A130929.P8642226255325659533

/-!
# A130930: Signature permutation of a Catalan automorphism: row 13 of A130401.

The programs for A130930, there is no canonical definition to state claims against.
-/

/-! ## A130930.P3678129966733989201

`A057163(A130931(A057163(n)))`
-/

namespace A130930.P3678129966733989201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A130931 (A057163 n).toNat).toNat

end

end A130930.P3678129966733989201

/-! ## A130930.P13112679810179209811

`A131160(A131148(n)%A131197(2*(n+1)))`
-/

namespace A130930.P13112679810179209811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131160 (Int.tmod (A131148 n) (A131197 (2 * (n + 1)))).toNat

end

end A130930.P13112679810179209811

/-! ## A130930.P15647558439842310000

`A057502(n)+A004530(A344959(3*n+2))`
-/

namespace A130930.P15647558439842310000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057502 n + A004530 (A344959 (3 * n + 2)).toNat

end

end A130930.P15647558439842310000

/-! ## A130930.P18233032652220812392

`A057502(n)+A000122(A000009(3*n+4))`
-/

namespace A130930.P18233032652220812392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057502 n + A000122 (A000009 (3 * n + 4)).toNat

end

end A130930.P18233032652220812392

/-! ## A130930.P3328306577087847824

`A131160(A131148(n))%A316470(3*(n+1))`
-/

namespace A130930.P3328306577087847824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A131160 (A131148 n).toNat) (A316470 (3 * (n + 1)))

end

end A130930.P3328306577087847824

/-!
# A130931: Signature permutation of a Catalan automorphism: row 19 of A130400.

The programs for A130931, there is no canonical definition to state claims against.
-/

/-! ## A130931.P12477993871464103328

`A057163(A130930(A057163(n)))`
-/

namespace A130931.P12477993871464103328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A130930 (A057163 n).toNat).toNat

end

end A130931.P12477993871464103328

/-! ## A130931.P1701775123014696011

`A130962(n)-A286688(A153901(n))`
-/

namespace A130931.P1701775123014696011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130962 n - A286688 (A153901 n).toNat

end

end A130931.P1701775123014696011

/-! ## A130931.P3174962196329484826

`A130962(n)-A185284(A122332(n+3))`
-/

namespace A130931.P3174962196329484826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130962 n - A185284 (A122332 (n + 3)).toNat

end

end A130931.P3174962196329484826

/-! ## A130931.P2256855911776431176

`A130962(n)-A005369(A161208(A007064(n+1)))`
-/

namespace A130931.P2256855911776431176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130962 n - A005369 (A161208 (A007064 (n + 1)).toNat).toNat

end

end A130931.P2256855911776431176

/-!
# A130932: Signature permutation of a Catalan automorphism: row 14 of A130401.

The programs for A130932, there is no canonical definition to state claims against.
-/

/-! ## A130932.P10772074881739061433

`A057163(A130929(A057163(n)))`
-/

namespace A130932.P10772074881739061433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A130929 (A057163 n).toNat).toNat

end

end A130932.P10772074881739061433

/-! ## A130932.P15477640002132543516

`A131006(A073287(n)%A103915(n))`
-/

namespace A130932.P15477640002132543516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131006 (Int.tmod (A073287 n) (A103915 n)).toNat

end

end A130932.P15477640002132543516

/-! ## A130932.P11453570454516752965

`A131006(A122311(n)%A103915(n))`
-/

namespace A130932.P11453570454516752965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131006 (Int.tmod (A122311 n) (A103915 n)).toNat

end

end A130932.P11453570454516752965

/-! ## A130932.P16867806071538852952

`A131006(A130986(n)%A103915(n))`
-/

namespace A130932.P16867806071538852952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131006 (Int.tmod (A130986 n) (A103915 n)).toNat

end

end A130932.P16867806071538852952

/-! ## A130932.P9674364267726347729

`A131006(A073287(n))%A057973(n+1)`
-/

namespace A130932.P9674364267726347729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A131006 (A073287 n).toNat) (A057973 (n + 1))

end

end A130932.P9674364267726347729

/-!
# A130933: Signature permutation of a Catalan automorphism: row 20 of A130400.

The programs for A130933, there is no canonical definition to state claims against.
-/

/-! ## A130933.P68426548507378096

`A057163(A130934(A057163(n)))`
-/

namespace A130933.P68426548507378096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A130934 (A057163 n).toNat).toNat

end

end A130933.P68426548507378096

/-! ## A130933.P5412091493613271813

`A130365(comp[A152185(3*n+2)])`
-/

namespace A130933.P5412091493613271813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152185 (3 * n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130365 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A130933.P5412091493613271813

/-! ## A130933.P14717549380101314061

`A130365(comp[A208542(3*∑{d}[n+1, #])])`
-/

namespace A130933.P14717549380101314061
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208542 (3 * (∑ d ∈ Nat.divisors (f2 n), d))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130365 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A130933.P14717549380101314061

/-! ## A130933.P7188485833536002663

`A130365(A178688(n+1)!+n-1)`
-/

namespace A130933.P7188485833536002663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130365 ((Nat.factorial (A178688 (n + 1)).toNat : ℤ) + ((n : ℤ) - 1)).toNat

end

end A130933.P7188485833536002663

/-! ## A130933.P15265397630087544442

`A344245(A058343(n)!)+A130365(n)`
-/

namespace A130933.P15265397630087544442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344245 (Nat.factorial (A058343 n).toNat + 20) + A130365 n

end

end A130933.P15265397630087544442

/-!
# A130934: Signature permutation of a Catalan automorphism: row 16 of A130401.

The programs for A130934, there is no canonical definition to state claims against.
-/

/-! ## A130934.P13127203558766570764

`A057163(A130933(A057163(n)))`
-/

namespace A130934.P13127203558766570764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A130933 (A057163 n).toNat).toNat

end

end A130934.P13127203558766570764

/-! ## A130934.P2128725092866951568

`xor(A025469(A055257(n)), A130965(n))`
-/

namespace A130934.P2128725092866951568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A025469 (A055257 n).toNat) (A130965 n)

end

end A130934.P2128725092866951568

/-! ## A130934.P14300622690746763850

`A324678(A324690(n))+A130965(n)`
-/

namespace A130934.P14300622690746763850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324678 (A324690 n).toNat + A130965 n

end

end A130934.P14300622690746763850

/-! ## A130934.P2170886887456950477

`A130965(n)-A025466(A234020(n+1))`
-/

namespace A130934.P2170886887456950477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130965 n - A025466 (A234020 (n + 1)).toNat

end

end A130934.P2170886887456950477

/-! ## A130934.P5457838147710240883

`A130965(n)-A151755(A000212(n))`
-/

namespace A130934.P5457838147710240883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130965 n - A151755 (A000212 n).toNat

end

end A130934.P5457838147710240883

/-!
# A130935: Signature permutation of a Catalan automorphism: row 2 of A130402.

The programs for A130935, there is no canonical definition to state claims against.
-/

/-! ## A130935.P1368083555392854664

`A130941(A073288(n))`
-/

namespace A130935.P1368083555392854664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130941 (A073288 n).toNat

end

end A130935.P1368083555392854664

/-! ## A130935.P12650513004682781019

`A069787(A057161(A069787(A069768(n))))`
-/

namespace A130935.P12650513004682781019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069787 (A057161 (A069787 (A069768 n).toNat).toNat).toNat

end

end A130935.P12650513004682781019

/-! ## A130935.P13748176462695457743

`A057506(A057162(A057508(A057505(A057162(n)))))`
-/

namespace A130935.P13748176462695457743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057506 (A057162 (A057508 (A057505 (A057162 n).toNat).toNat).toNat).toNat

end

end A130935.P13748176462695457743

/-! ## A130935.P9351439834875909040

`A069787(A069767(A069787(A069768(A057508(n)))))`
-/

namespace A130935.P9351439834875909040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069787 (A069767 (A069787 (A069768 (A057508 n).toNat).toNat).toNat).toNat

end

end A130935.P9351439834875909040

/-!
# A130936: Signature permutation of a Catalan automorphism: row 2 of A130403.

The programs for A130936, there is no canonical definition to state claims against.
-/

/-! ## A130936.P12682210552257681701

`A073289(A130942(n))`
-/

namespace A130936.P12682210552257681701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073289 (A130942 n).toNat

end

end A130936.P12682210552257681701

/-! ## A130936.P17352744129421804142

`A057161(A069787(A069768(A069787(n))))`
-/

namespace A130936.P17352744129421804142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057161 (A069787 (A069768 (A069787 n).toNat).toNat).toNat

end

end A130936.P17352744129421804142

/-! ## A130936.P16141580259241664906

`A057508(A057161(A057506(A057161(A057505(n)))))`
-/

namespace A130936.P16141580259241664906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057508 (A057161 (A057506 (A057161 (A057505 n).toNat).toNat).toNat).toNat

end

end A130936.P16141580259241664906

/-!
# A130939: Signature permutation of a Catalan automorphism: row 5 of A130402.

The programs for A130939, there is no canonical definition to state claims against.
-/

/-! ## A130939.P11614401913402384530

`A130992(A131152(A130352(A089856(A089856(n)))))`
-/

namespace A130939.P11614401913402384530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130992 (A131152 (A130352 (A089856 (A089856 n).toNat).toNat).toNat).toNat

end

end A130939.P11614401913402384530

/-! ## A130939.P18164468914807825857

`A122317(A130351(A089856(n)))`
-/

namespace A130939.P18164468914807825857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122317 (A130351 (A089856 n).toNat).toNat

end

end A130939.P18164468914807825857

/-! ## A130939.P9416559211923197662

`A122317(A089856(A130352(n)))`
-/

namespace A130939.P9416559211923197662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122317 (A089856 (A130352 n).toNat).toNat

end

end A130939.P9416559211923197662

/-! ## A130939.P14768898297956327926

`A089856(A130991(A130352(A089856(A131151(n)))))`
-/

namespace A130939.P14768898297956327926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089856 (A130991 (A130352 (A089856 (A131151 n).toNat).toNat).toNat).toNat

end

end A130939.P14768898297956327926

/-!
# A130940: Signature permutation of a Catalan automorphism: row 5 of A130403.

The programs for A130940, there is no canonical definition to state claims against.
-/

/-! ## A130940.P10150033326935708319

`A131152(A130352(A130991(A089856(A089856(n)))))`
-/

namespace A130940.P10150033326935708319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131152 (A130352 (A130991 (A089856 (A089856 n).toNat).toNat).toNat).toNat

end

end A130940.P10150033326935708319

/-! ## A130940.P490785775380073627

`A130351(A089856(A122318(n)))`
-/

namespace A130940.P490785775380073627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130351 (A089856 (A122318 n).toNat).toNat

end

end A130940.P490785775380073627

/-! ## A130940.P1118707817939226483

`A130939(A130939(A130939(n))%A266988(n+1))`
-/

namespace A130940.P1118707817939226483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130939 (Int.tmod (A130939 (A130939 n).toNat) (A266988 (n + 1))).toNat

end

end A130940.P1118707817939226483

/-!
# A130942: Signature permutation of a Catalan automorphism: row 4 of A130403.

The programs for A130942, there is no canonical definition to state claims against.
-/

/-! ## A130942.P13292257275989972974

`A073288(A130936(n))`
-/

namespace A130942.P13292257275989972974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073288 (A130936 n).toNat

end

end A130942.P13292257275989972974

/-! ## A130942.P11996061402941363772

`A130391(comp[∑[A130408(3*n+2)]])`
-/

namespace A130942.P11996061402941363772
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130408 (3 * n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130391 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A130942.P11996061402941363772

/-! ## A130942.P13851085599430955354

`A130391(n)+A121373((2*n+3)²)`
-/

namespace A130942.P13851085599430955354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130391 n + A121373 ((2 * n + 3) ^ 2)

end

end A130942.P13851085599430955354

/-! ## A130942.P12504224424661489922

`A130391(n)-A010815((2*n+3)²)`
-/

namespace A130942.P12504224424661489922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130391 n - A010815 ((2 * n + 3) ^ 2)

end

end A130942.P12504224424661489922

/-!
# A130943: Signature permutation of a Catalan automorphism: row 7 of A130402.

The programs for A130943, there is no canonical definition to state claims against.
-/

/-! ## A130943.P8685039262254638233

`A122304(n)+A130342(n)-A089850(n)`
-/

namespace A130943.P8685039262254638233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122304 n + (A130342 n - A089850 n)

end

end A130943.P8685039262254638233

/-! ## A130943.P13200698610897792814

`A122342(n)-Δ[A349236(A078429(n+1))]`
-/

namespace A130943.P13200698610897792814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349236 (A078429 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122342 n - (f1 (n + 1) - f1 n)

end

end A130943.P13200698610897792814

/-! ## A130943.P10808640199307036495

`A073289(A122302(A122302(n)))`
-/

namespace A130943.P10808640199307036495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073289 (A122302 (A122302 n).toNat).toNat

end

end A130943.P10808640199307036495

/-! ## A130943.P7789869343574813011

`A130342(A122303(A089850(n)))`
-/

namespace A130943.P7789869343574813011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130342 (A122303 (A089850 n).toNat).toNat

end

end A130943.P7789869343574813011

/-! ## A130943.P17913025092100717985

`A130342(A089850(A122304(n)))`
-/

namespace A130943.P17913025092100717985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130342 (A089850 (A122304 n).toNat).toNat

end

end A130943.P17913025092100717985

/-! ## A130943.P13620321535073181226

`A089863(A089863(A122354(A154450(A089863(n)))))`
-/

namespace A130943.P13620321535073181226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089863 (A089863 (A122354 (A154450 (A089863 n).toNat).toNat).toNat).toNat

end

end A130943.P13620321535073181226

/-! ## A130943.P10714898046898491795

`A122353(A154450(A089859(A122354(A122354(n)))))`
-/

namespace A130943.P10714898046898491795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122353 (A154450 (A089859 (A122354 (A122354 n).toNat).toNat).toNat).toNat

end

end A130943.P10714898046898491795

/-!
# A130944: Signature permutation of a Catalan automorphism: row 7 of A130403.

The programs for A130944, there is no canonical definition to state claims against.
-/

/-! ## A130944.P7266537527389612050

`A122353(A089863(A154454(n)))`
-/

namespace A130944.P7266537527389612050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122353 (A089863 (A154454 n).toNat).toNat

end

end A130944.P7266537527389612050

/-!
# A130947: Signature permutation of a Catalan automorphism: row 9 of A130402.

The programs for A130947, there is no canonical definition to state claims against.
-/

/-! ## A130947.P14568558384339340034

`A089851(A122309(A130344(n)))`
-/

namespace A130947.P14568558384339340034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089851 (A122309 (A130344 n).toNat).toNat

end

end A130947.P14568558384339340034

/-! ## A130947.P12766954461327890250

`A335520(A027082(n))+A130382(n)`
-/

namespace A130947.P12766954461327890250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335520 (A027082 n).toNat + A130382 n

end

end A130947.P12766954461327890250

/-!
# A130949: Signature permutation of a Catalan automorphism: row 10 of A130402.

The programs for A130949, there is no canonical definition to state claims against.
-/

/-! ## A130949.P9528276204081480088

`A089852(A130345(A122307(n)))`
-/

namespace A130949.P9528276204081480088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089852 (A130345 (A122307 n).toNat).toNat

end

end A130949.P9528276204081480088

/-! ## A130949.P8811913209065168997

`A122307(A089852(A130346(n)))`
-/

namespace A130949.P8811913209065168997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122307 (A089852 (A130346 n).toNat).toNat

end

end A130949.P8811913209065168997

/-!
# A130950: Signature permutation of a Catalan automorphism: row 10 of A130403.

The programs for A130950, there is no canonical definition to state claims against.
-/

/-! ## A130950.P11500582691211940027

`A122308(A130346(A089852(n)))`
-/

namespace A130950.P11500582691211940027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122308 (A130346 (A089852 n).toNat).toNat

end

end A130950.P11500582691211940027

/-!
# A130953: Signature permutation of a Catalan automorphism: row 13 of A130402.

The programs for A130953, there is no canonical definition to state claims against.
-/

/-! ## A130953.P340868609866084609

`A089867(A130396(n)*A152847(n))`
-/

namespace A130953.P340868609866084609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089867 (A130396 n * A152847 n).toNat

end

end A130953.P340868609866084609

/-! ## A130953.P12714587041596881962

`A089868(A130396(n)*A152847(n))`
-/

namespace A130953.P12714587041596881962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089868 (A130396 n * A152847 n).toNat

end

end A130953.P12714587041596881962

/-! ## A130953.P3327403481288413902

`A089869(A130396(n)*A152847(n))`
-/

namespace A130953.P3327403481288413902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089869 (A130396 n * A152847 n).toNat

end

end A130953.P3327403481288413902

/-! ## A130953.P11172315879504862161

`A089870(A130396(n)*A152847(n))`
-/

namespace A130953.P11172315879504862161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089870 (A130396 n * A152847 n).toNat

end

end A130953.P11172315879504862161

/-! ## A130953.P9805635021243231556

`A089867(A130396(n)^A152847(n))`
-/

namespace A130953.P9805635021243231556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089867 (SequenceMachineLib.roundAway ((A130396 n : ℚ) ^ (A152847 n : ℤ))).toNat

end

end A130953.P9805635021243231556

/-!
# A130954: Signature permutation of a Catalan automorphism: row 18 of A130403.

The programs for A130954, there is no canonical definition to state claims against.
-/

/-! ## A130954.P18400092273034595593

`A130395(A089868(n))%A273048(n+2)`
-/

namespace A130954.P18400092273034595593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A130395 (A089868 n).toNat) (A273048 (n + 2))

end

end A130954.P18400092273034595593

/-! ## A130954.P18020167517974151216

`A000120(A329562(n))*A130395(A089868(n))`
-/

namespace A130954.P18020167517974151216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A329562 n).toNat * A130395 (A089868 n).toNat

end

end A130954.P18020167517974151216

/-! ## A130954.P16674579602802426686

`A130395(A089868(n))%A002148(A028896(n))`
-/

namespace A130954.P16674579602802426686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A130395 (A089868 n).toNat) (A002148 (A028896 n).toNat)

end

end A130954.P16674579602802426686

/-! ## A130954.P7806386576743978815

`A130395(A089868(n))-A154272(A273048(n+2)+1)`
-/

namespace A130954.P7806386576743978815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130395 (A089868 n).toNat - A154272 (A273048 (n + 2) + 1).toNat

end

end A130954.P7806386576743978815

/-! ## A130954.P2903932159485238223

`A130395(lcm(A089867(n), A089868(n)))`
-/

namespace A130954.P2903932159485238223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130395 (Int.lcm (A089867 n) (A089868 n))

end

end A130954.P2903932159485238223

/-!
# A130955: Signature permutation of a Catalan automorphism: row 14 of A130402.

The programs for A130955, there is no canonical definition to state claims against.
-/

/-! ## A130955.P322613736340184016

`A089867(A121657(n+1)*A130394(n))`
-/

namespace A130955.P322613736340184016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089867 (A121657 (n + 1) * A130394 n).toNat

end

end A130955.P322613736340184016

/-! ## A130955.P12332125955107853867

`A089868(A121657(n+1)*A130394(n))`
-/

namespace A130955.P12332125955107853867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089868 (A121657 (n + 1) * A130394 n).toNat

end

end A130955.P12332125955107853867

/-! ## A130955.P15019694265603827357

`A089869(A121657(n+1)*A130394(n))`
-/

namespace A130955.P15019694265603827357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089869 (A121657 (n + 1) * A130394 n).toNat

end

end A130955.P15019694265603827357

/-! ## A130955.P15537879030763616181

`A130394(n)+A074290(A289453(n))`
-/

namespace A130955.P15537879030763616181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130394 n + A074290 (A289453 n).toNat

end

end A130955.P15537879030763616181

/-!
# A130956: Signature permutation of a Catalan automorphism: row 19 of A130403.

The programs for A130956, there is no canonical definition to state claims against.
-/

/-! ## A130956.P14987069719911294582

`A130927(A122303(n))+A000007(A028330(n))`
-/

namespace A130956.P14987069719911294582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130927 (A122303 n).toNat + A000007 (A028330 n).toNat

end

end A130956.P14987069719911294582

/-! ## A130956.P4114251113137547626

`A130927(A122303(n))+A000007(A224380(n+1))`
-/

namespace A130956.P4114251113137547626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130927 (A122303 n).toNat + A000007 (A224380 (n + 1)).toNat

end

end A130956.P4114251113137547626

/-! ## A130956.P538465152678974304

`A130927(A122303(n))+A037213(A341447(n+1))`
-/

namespace A130956.P538465152678974304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130927 (A122303 n).toNat + A037213 (A341447 (n + 1)).toNat

end

end A130956.P538465152678974304

/-! ## A130956.P4895372140106174342

`A130927(A122303(n))+A037213(A341448(n+1))`
-/

namespace A130956.P4895372140106174342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130927 (A122303 n).toNat + A037213 (A341448 (n + 1)).toNat

end

end A130956.P4895372140106174342

/-!
# A130957: Signature permutation of a Catalan automorphism: row 15 of A130402.

The programs for A130957, there is no canonical definition to state claims against.
-/

/-! ## A130957.P3120458571564694254

`A089850(A073287(A073287(A069768(A089850(n)))))`
-/

namespace A130957.P3120458571564694254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089850 (A073287 (A073287 (A069768 (A089850 n).toNat).toNat).toNat).toNat

end

end A130957.P3120458571564694254

/-! ## A130957.P16092961096162781968

`A073287(A089854(A073287(A069768(A089854(n)))))`
-/

namespace A130957.P16092961096162781968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073287 (A089854 (A073287 (A069768 (A089854 n).toNat).toNat).toNat).toNat

end

end A130957.P16092961096162781968

/-! ## A130957.P16361466855806510365

`A089850(A069768(A089850(A130342(A130342(n)))))`
-/

namespace A130957.P16361466855806510365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089850 (A069768 (A089850 (A130342 (A130342 n).toNat).toNat).toNat).toNat

end

end A130957.P16361466855806510365

/-! ## A130957.P7698550715301415707

`A089863(A130359(A130359(A131160(A089863(n)))))`
-/

namespace A130957.P7698550715301415707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089863 (A130359 (A130359 (A131160 (A089863 n).toNat).toNat).toNat).toNat

end

end A130957.P7698550715301415707

/-! ## A130957.P16035239208294686989

`A131000(A122282(n))%A263241(n+2)`
-/

namespace A130957.P16035239208294686989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A131000 (A122282 n).toNat) (A263241 (n + 2))

end

end A130957.P16035239208294686989

/-!
# A130958: Signature permutation of a Catalan automorphism: row 21 of A130403.

The programs for A130958, there is no canonical definition to state claims against.
-/

/-! ## A130958.P13020555763319507900

`A131160(A089863(A130359(A089863(A130360(n)))))`
-/

namespace A130958.P13020555763319507900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131160 (A089863 (A130359 (A089863 (A130360 n).toNat).toNat).toNat).toNat

end

end A130958.P13020555763319507900

/-! ## A130958.P11324392622701974773

`A089859(A131159(A089859(A130999(A130999(n)))))`
-/

namespace A130958.P11324392622701974773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089859 (A131159 (A089859 (A130999 (A130999 n).toNat).toNat).toNat).toNat

end

end A130958.P11324392622701974773

/-! ## A130958.P11632269039315999687

`A069767(A089864(n))%A122227(n)`
-/

namespace A130958.P11632269039315999687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A069767 (A089864 n).toNat) (A122227 n)

end

end A130958.P11632269039315999687

/-! ## A130958.P13128231712905234940

`A089864(A154458(n))%A122227(n)`
-/

namespace A130958.P13128231712905234940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A089864 (A154458 n).toNat) (A122227 n)

end

end A130958.P13128231712905234940

/-! ## A130958.P1219863114076887985

`A130341(A129604(n)%A122227(n))`
-/

namespace A130958.P1219863114076887985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130341 (Int.tmod (A129604 n) (A122227 n)).toNat

end

end A130958.P1219863114076887985

/-! ## A130958.P8874738906851985942

`A089864(A154458(n))/A122227(n)^A151909(n)`
-/

namespace A130958.P8874738906851985942
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089864 (A154458 n).toNat : ℚ) / (A122227 n : ℚ) ^ (A151909 n : ℤ)

end

end A130958.P8874738906851985942

/-! ## A130958.P2211017226039157016

`A069767(A089864(n)%(A098162(n+1)+1))`
-/

namespace A130958.P2211017226039157016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069767 (Int.tmod (A089864 n) (A098162 (n + 1) + 1)).toNat

end

end A130958.P2211017226039157016

/-! ## A130958.P9290150351850660504

`A089864(A154458(n)+C(n, A214837(n+1)))`
-/

namespace A130958.P9290150351850660504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089864 (A154458 n + (Nat.choose n (A214837 (n + 1)).toNat : ℤ)).toNat

end

end A130958.P9290150351850660504

/-!
# A130959: Signature permutation of a Catalan automorphism: row 16 of A130402.

The programs for A130959, there is no canonical definition to state claims against.
-/

/-! ## A130959.P5712978752488900665

`A089867(A121657(n+1)*A130928(n))`
-/

namespace A130959.P5712978752488900665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089867 (A121657 (n + 1) * A130928 n).toNat

end

end A130959.P5712978752488900665

/-! ## A130959.P8959068789946090888

`A089868(A121657(n+1)*A130928(n))`
-/

namespace A130959.P8959068789946090888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089868 (A121657 (n + 1) * A130928 n).toNat

end

end A130959.P8959068789946090888

/-! ## A130959.P2226942576682064935

`A089869(A121657(n+1)*A130928(n))`
-/

namespace A130959.P2226942576682064935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089869 (A121657 (n + 1) * A130928 n).toNat

end

end A130959.P2226942576682064935

/-!
# A130960: Signature permutation of a Catalan automorphism: row 20 of A130403.

The programs for A130960, there is no canonical definition to state claims against.
-/

/-! ## A130960.P15179815591132416820

`A130393(A122304(n))%A088048(n+1)`
-/

namespace A130960.P15179815591132416820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A130393 (A122304 n).toNat) (A088048 (n + 1))

end

end A130960.P15179815591132416820

/-! ## A130960.P8480510212064269593

`A130393(A122304(n)%A114872(n+1))`
-/

namespace A130960.P8480510212064269593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130393 (Int.tmod (A122304 n) (A114872 (n + 1))).toNat

end

end A130960.P8480510212064269593

/-! ## A130960.P13462971478810414711

`A130393(A122304(n))-A010051(A088048(n+1)+1)`
-/

namespace A130960.P13462971478810414711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130393 (A122304 n).toNat - A010051 (A088048 (n + 1) + 1).toNat

end

end A130960.P13462971478810414711

/-! ## A130960.P2574511221727193478

`A130393(A122304(n)%A152222(n))`
-/

namespace A130960.P2574511221727193478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130393 (Int.tmod (A122304 n) (A152222 n)).toNat

end

end A130960.P2574511221727193478

/-! ## A130960.P16861709413730511535

`A130393(A122304(n))+C(n+1, A196271(n+1))`
-/

namespace A130960.P16861709413730511535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130393 (A122304 n).toNat + (Nat.choose (n + 1) (A196271 (n + 1)).toNat : ℤ)

end

end A130960.P16861709413730511535

/-! ## A130960.P3937844604238575508

`A014963(A016754(n)+1)*A130393(A122304(n))`
-/

namespace A130960.P3937844604238575508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A016754 n + 1).toNat * A130393 (A122304 n).toNat

end

end A130960.P3937844604238575508

/-!
# A130961: Signature permutation of a Catalan automorphism: row 18 of A130402.

The programs for A130961, there is no canonical definition to state claims against.
-/

/-! ## A130961.P16773274145619493919

`A131006(A131166(A131005(n)))`
-/

namespace A130961.P16773274145619493919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131006 (A131166 (A131005 n).toNat).toNat

end

end A130961.P16773274145619493919

/-! ## A130961.P4138539691288508863

`A131006(A085169(n)^A254730(n+2))`
-/

namespace A130961.P4138539691288508863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131006 (SequenceMachineLib.roundAway ((A085169 n : ℚ) ^ (A254730 (n + 2) : ℤ))).toNat

end

end A130961.P4138539691288508863

/-! ## A130961.P18338314787717217490

`A131006(A073289(n))%A324601(3*n+7)`
-/

namespace A130961.P18338314787717217490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A131006 (A073289 n).toNat) (A324601 (3 * n + 7))

end

end A130961.P18338314787717217490

/-! ## A130961.P15995456274179840193

`A130368(lt[A351005(n+2), 8])`
-/

namespace A130961.P15995456274179840193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351005 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130368 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A130961.P15995456274179840193

/-! ## A130961.P17958537229980203172

`A130368(lt[A336973(n+1), A000040(n+1)])`
-/

namespace A130961.P17958537229980203172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336973 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130368 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A130961.P17958537229980203172

/-!
# A130962: Signature permutation of a Catalan automorphism: row 13 of A130403.

The programs for A130962, there is no canonical definition to state claims against.
-/

/-! ## A130962.P11024279584793679325

`A131006(A131165(A131005(n)))`
-/

namespace A130962.P11024279584793679325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131006 (A131165 (A131005 n).toNat).toNat

end

end A130962.P11024279584793679325

/-! ## A130962.P12638172325663372137

`A130931(n)+A025465(A016922(n))`
-/

namespace A130962.P12638172325663372137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130931 n + A025465 (A016922 n).toNat

end

end A130962.P12638172325663372137

/-! ## A130962.P8843384947226612150

`A286688(A153901(n))+A130931(n)`
-/

namespace A130962.P8843384947226612150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286688 (A153901 n).toNat + A130931 n

end

end A130962.P8843384947226612150

/-! ## A130962.P9459868764895776597

`or(A088434(A147048(n+1)), A130931(n))`
-/

namespace A130962.P9459868764895776597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A088434 (A147048 (n + 1)).toNat) (A130931 n)

end

end A130962.P9459868764895776597

/-! ## A130962.P3292932697412321409

`or(A130931(n), A286688(A078931(n+1)))`
-/

namespace A130962.P3292932697412321409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A130931 n) (A286688 (A078931 (n + 1)).toNat)

end

end A130962.P3292932697412321409

/-!
# A130963: Signature permutation of a Catalan automorphism: row 19 of A130402.

The programs for A130963, there is no canonical definition to state claims against.
-/

/-! ## A130963.P12092272027463342924

`A131004(A131164(A131003(n)))`
-/

namespace A130963.P12092272027463342924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131004 (A131164 (A131003 n).toNat).toNat

end

end A130963.P12092272027463342924

/-! ## A130963.P10851409127043140427

`A007913((5*n+7)²)*A131004(A085169(n))`
-/

namespace A130963.P10851409127043140427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 ((5 * n + 7) ^ 2) * A131004 (A085169 n).toNat

end

end A130963.P10851409127043140427

/-! ## A130963.P5391127214556940827

`A131004(A085169(n))+A000007(A008097(n))`
-/

namespace A130963.P5391127214556940827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131004 (A085169 n).toNat + A000007 (A008097 n).toNat

end

end A130963.P5391127214556940827

/-! ## A130963.P3583872073721579311

`A131004(A085169(n))+A010051(A284636(n+1))`
-/

namespace A130963.P3583872073721579311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131004 (A085169 n).toNat + A010051 (A284636 (n + 1)).toNat

end

end A130963.P3583872073721579311

/-! ## A130963.P8652638333280544581

`A057427(A043028(n+1))*A131004(A085169(n))`
-/

namespace A130963.P8652638333280544581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A043028 (n + 1)).toNat * A131004 (A085169 n).toNat

end

end A130963.P8652638333280544581

/-! ## A130963.P17022834936933244322

`A019433(A126264(n+1))*A131004(A085169(n))`
-/

namespace A130963.P17022834936933244322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019433 (A126264 (n + 1)).toNat * A131004 (A085169 n).toNat

end

end A130963.P17022834936933244322

/-! ## A130963.P3409010098838792530

`A001221(A127973(n))*A131004(A085169(n))`
-/

namespace A130963.P3409010098838792530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A127973 n).toNat * A131004 (A085169 n).toNat

end

end A130963.P3409010098838792530

/-!
# A130964: Signature permutation of a Catalan automorphism: row 14 of A130403.

The programs for A130964, there is no canonical definition to state claims against.
-/

/-! ## A130964.P6498260483031622631

`A131004(A131163(A131003(n)))`
-/

namespace A130964.P6498260483031622631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131004 (A131163 (A131003 n).toNat).toNat

end

end A130964.P6498260483031622631

/-! ## A130964.P12933684670916170499

`A085170(A131003(n))%A020596(A028310(n))`
-/

namespace A130964.P12933684670916170499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A085170 (A131003 n).toNat) (A020596 (A028310 n).toNat)

end

end A130964.P12933684670916170499

/-! ## A130964.P5665124463605122917

`A085170(A131003(n))+A000007(A004914(n+2))`
-/

namespace A130964.P5665124463605122917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085170 (A131003 n).toNat + A000007 (A004914 (n + 2)).toNat

end

end A130964.P5665124463605122917

/-!
# A130965: Signature permutation of a Catalan automorphism: row 20 of A130402.

The programs for A130965, there is no canonical definition to state claims against.
-/

/-! ## A130965.P13877492537788087064

`A131008(A131168(A131007(n)))`
-/

namespace A130965.P13877492537788087064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131008 (A131168 (A131007 n).toNat).toNat

end

end A130965.P13877492537788087064

/-! ## A130965.P17401234865855895060

`A130366(A072089(n)%A089868(2*n+1))`
-/

namespace A130965.P17401234865855895060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130366 (Int.tmod (A072089 n) (A089868 (2 * n + 1))).toNat

end

end A130965.P17401234865855895060

/-! ## A130965.P11409519565649118077

`A130366(A072089(n))%A089869(2*n+1)`
-/

namespace A130965.P11409519565649118077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A130366 (A072089 n).toNat) (A089869 (2 * n + 1))

end

end A130965.P11409519565649118077

/-! ## A130965.P13226946281262691829

`A130366(A072089(n)^A062513(n+1))`
-/

namespace A130965.P13226946281262691829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130366 (SequenceMachineLib.roundAway ((A072089 n : ℚ) ^ (A062513 (n + 1) : ℤ))).toNat

end

end A130965.P13226946281262691829

/-! ## A130965.P9713406772305092025

`A130366(A062513(n+1)²*A072089(n))`
-/

namespace A130965.P9713406772305092025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130366 (A062513 (n + 1) ^ 2 * A072089 n).toNat

end

end A130965.P9713406772305092025

/-!
# A130966: Signature permutation of a Catalan automorphism: row 16 of A130403.

The programs for A130966, there is no canonical definition to state claims against.
-/

/-! ## A130966.P1191863060228758197

`A131008(A131167(A131007(n)))`
-/

namespace A130966.P1191863060228758197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131008 (A131167 (A131007 n).toNat).toNat

end

end A130966.P1191863060228758197

/-! ## A130966.P11433540265115075364

`A072089(A062513(n+1)*A130365(n))`
-/

namespace A130966.P11433540265115075364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072089 (A062513 (n + 1) * A130365 n).toNat

end

end A130966.P11433540265115075364

/-! ## A130966.P4865018825975041618

`A072089(A130365(n)^A062513(n+1))`
-/

namespace A130966.P4865018825975041618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072089 (SequenceMachineLib.roundAway ((A130365 n : ℚ) ^ (A062513 (n + 1) : ℤ))).toNat

end

end A130966.P4865018825975041618

/-! ## A130966.P16380929485095170963

`A072089(A130365(n)%A171812(n+1))`
-/

namespace A130966.P16380929485095170963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072089 (Int.tmod (A130365 n) (A171812 (n + 1))).toNat

end

end A130966.P16380929485095170963

/-! ## A130966.P12709351536140711604

`A072089(lcm(A062513(n+1), A130365(n)))`
-/

namespace A130966.P12709351536140711604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072089 (Int.lcm (A062513 (n + 1)) (A130365 n))

end

end A130966.P12709351536140711604

/-!
# A130967: Number of cycles in range [A014137(n-1)..A014138(n-1)] of permutations A130919/A130920.

The programs for A130967, there is no canonical definition to state claims against.
-/

/-! ## A130967.P1691636698920379636

`A256502(A036765(n))+A032741(n)`
-/

namespace A130967.P1691636698920379636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256502 (A036765 n).toNat + A032741 n

end

end A130967.P1691636698920379636

/-! ## A130967.P1005876576473103594

`A256502(A106466(n)+A036765(n))`
-/

namespace A130967.P1005876576473103594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256502 (A106466 n + A036765 n).toNat

end

end A130967.P1005876576473103594

/-! ## A130967.P8453146511126048255

`A024417(A258308(n)+A025474(n+1))`
-/

namespace A130967.P8453146511126048255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024417 (A258308 n + A025474 (n + 1)).toNat

end

end A130967.P8453146511126048255

/-! ## A130967.P13768167389686039249

`A235682(A048674(n+1))+A210344(n)`
-/

namespace A130967.P13768167389686039249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235682 (A048674 (n + 1)).toNat + A210344 n

end

end A130967.P13768167389686039249

/-!
# A130969: Number of cycles in range [A014137(n-1)..A014138(n-1)] of permutations A130935/A130936.

The programs for A130969, there is no canonical definition to state claims against.
-/

/-! ## A130969.P6112400648015824340

`A337821(A000111(n))+A032200(n+1)`
-/

namespace A130969.P6112400648015824340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337821 (A000111 n).toNat + A032200 (n + 1)

end

end A130969.P6112400648015824340

/-! ## A130969.P6200793839342517918

`A338915(A184974(n))+A032200(n+1)`
-/

namespace A130969.P6200793839342517918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338915 (A184974 n).toNat + A032200 (n + 1)

end

end A130969.P6200793839342517918

/-! ## A130969.P12962165293114527551

`A033743(A233587(n+1))+A032200(n+1)`
-/

namespace A130969.P12962165293114527551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033743 (A233587 (n + 1)).toNat + A032200 (n + 1)

end

end A130969.P12962165293114527551

/-! ## A130969.P8470211160822489514

`A341620(A007317(n+1))+A032200(n+1)`
-/

namespace A130969.P8470211160822489514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341620 (A007317 (n + 1)).toNat + A032200 (n + 1)

end

end A130969.P8470211160822489514

/-! ## A130969.P2687836232006521617

`A254110(A363465(n+1))+A032200(n+1)`
-/

namespace A130969.P2687836232006521617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254110 (A363465 (n + 1)).toNat + A032200 (n + 1)

end

end A130969.P2687836232006521617

/-!
# A130972: Positions of records in A130971.

The programs for A130972, there is no canonical definition to state claims against.
-/

/-! ## A130972.P16831319665926342192

`A036234(A103149(n+1)-2)`
-/

namespace A130972.P16831319665926342192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (A103149 (n + 1) - 2).toNat

end

end A130972.P16831319665926342192

/-! ## A130972.P4538506091236392299

`A323902(lcm(3, A103149(n+1)))`
-/

namespace A130972.P4538506091236392299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323902 (Int.lcm 3 (A103149 (n + 1)))

end

end A130972.P4538506091236392299

/-! ## A130972.P1679165546516491477

`A000720(A103149(n+1)-2)+1`
-/

namespace A130972.P1679165546516491477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A103149 (n + 1) - 2).toNat + 1

end

end A130972.P1679165546516491477

/-! ## A130972.P307975519677600776

`A003963(A103149(n+1)+A000007(n))`
-/

namespace A130972.P307975519677600776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (A103149 (n + 1) + A000007 n).toNat

end

end A130972.P307975519677600776

/-! ## A130972.P2082317474372159017

`A055396(A103149(n+1)+A000007(n))`
-/

namespace A130972.P2082317474372159017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A103149 (n + 1) + A000007 n).toNat

end

end A130972.P2082317474372159017

/-! ## A130972.P7534619632596329353

`A061395(A103149(n+1)+A000007(n))`
-/

namespace A130972.P7534619632596329353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A103149 (n + 1) + A000007 n).toNat

end

end A130972.P7534619632596329353

/-! ## A130972.P3669697755113227092

`A289508(A103149(n+1)+A000007(n))`
-/

namespace A130972.P3669697755113227092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289508 (A103149 (n + 1) + A000007 n).toNat

end

end A130972.P3669697755113227092

/-! ## A130972.P4906674828287908029

`A000720(A103149(n+1)-A000007(n))`
-/

namespace A130972.P4906674828287908029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A103149 (n + 1) - A000007 n).toNat

end

end A130972.P4906674828287908029

/-! ## A130972.P11434341455627051356

`A003963(A103149(n+1)-A000038(n))`
-/

namespace A130972.P11434341455627051356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (A103149 (n + 1) - A000038 n).toNat

end

end A130972.P11434341455627051356

/-! ## A130972.P9383279966547594256

`A026233(A103149(n+1)-A000007(n))`
-/

namespace A130972.P9383279966547594256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026233 (A103149 (n + 1) - A000007 n).toNat

end

end A130972.P9383279966547594256

/-!
# A130973: Number of primes between successive pairs of twin primes, for a(n) > 0.

The programs for A130973, the canonical program `A130973.P2346010488408842124` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130973 has offset 1).

The definition of A130973 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8924 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A130973.P15247264039281811407

`Δ[record[A242398(A328576(n))]]`
-/

namespace A130973.P15247264039281811407
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242398 (A328576 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A130973.P15247264039281811407

namespace A130973

/-- `Δ[record[A242398(A328576(n))]]` -/
def P15247264039281811407.Spec : Prop :=
  ∀ n, P15247264039281811407.a n = A130973 (n + 1)

end A130973

/-! ## A130973.P3493938674343568066

`Δ[record[A242398(A331303(n))]]`
-/

namespace A130973.P3493938674343568066
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242398 (A331303 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A130973.P3493938674343568066

namespace A130973

/-- `Δ[record[A242398(A331303(n))]]` -/
def P3493938674343568066.Spec : Prop :=
  ∀ n, P3493938674343568066.a n = A130973 (n + 1)

end A130973

/-! ## A130973.P1328554753305815191

`Δ[record[A242398(A304731(n+1))]]`
-/

namespace A130973.P1328554753305815191
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242398 (A304731 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A130973.P1328554753305815191

namespace A130973

/-- `Δ[record[A242398(A304731(n+1))]]` -/
def P1328554753305815191.Spec : Prop :=
  ∀ n, P1328554753305815191.a n = A130973 (n + 1)

end A130973

/-! ## A130973.P2346010488408842124

`A048614(lt[1, A048614(n+1)+1]+1)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A130973

/-- `A048614(lt[1, A048614(n+1)+1]+1)` -/
def P2346010488408842124.Spec : Prop :=
  ∀ n, P2346010488408842124.a n = A130973 (n + 1)

theorem P2346010488408842124.correct : P2346010488408842124.Spec := by
  intro n
  simp only [A130973, Nat.add_sub_cancel]

end A130973

/-! ## A130973.P1577027215564485641

`A048614(lt[2, A242767(n+2)])`
-/

namespace A130973.P1577027215564485641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242767 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048614 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A130973.P1577027215564485641

namespace A130973

/-- `A048614(lt[2, A242767(n+2)])` -/
def P1577027215564485641.Spec : Prop :=
  ∀ n, P1577027215564485641.a n = A130973 (n + 1)

end A130973

/-! ## A130973.P15435945909882060987

`A055396(p?[A158611(A242767(n+2))])`
-/

namespace A130973.P15435945909882060987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (A242767 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A130973.P15435945909882060987

namespace A130973

/-- `A055396(p?[A158611(A242767(n+2))])` -/
def P15435945909882060987.Spec : Prop :=
  ∀ n, P15435945909882060987.a n = A130973 (n + 1)

end A130973

/-! ## A130973.P8250428513118620373

`Δ[record[A242398(A052938(n))]]`
-/

namespace A130973.P8250428513118620373
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242398 (A052938 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A130973.P8250428513118620373

namespace A130973

/-- `Δ[record[A242398(A052938(n))]]` -/
def P8250428513118620373.Spec : Prop :=
  ∀ n, P8250428513118620373.a n = A130973 (n + 1)

end A130973

/-!
# A130974: Period 6: repeat [1, 1, 1, 3, 3, 3].

The programs for A130974, the canonical program `A130974.P9662238664143962563` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130974 has offset 0).

The definition of A130974 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A130974.P9662238664143962563

`2-(-1)^floor(n/3)`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A130974

/-- `2-(-1)^floor(n/3)` -/
def P9662238664143962563.Spec : Prop :=
  ∀ n, P9662238664143962563.a n = (A130974 n : ℚ)

end A130974

/-!
# A130976: G.f.: 8/(3 + 5*sqrt(1-16*x)).

The programs for A130976, there is no canonical definition to state claims against.
-/

/-! ## A130976.P5480814797985856557

`A121724(2*n)`
-/

namespace A130976.P5480814797985856557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121724 (2 * n)

end

end A130976.P5480814797985856557

/-! ## A130976.P993736564340078102

`record[A121724(C(n, a(n-1)))]` with `a(0)=1`
-/

namespace A130976.P993736564340078102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A121724 (Nat.choose n (f1 (n - 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A130976.P993736564340078102

/-! ## A130976.P8706746543149382883

`record[A121724(A014681(n))]`
-/

namespace A130976.P8706746543149382883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121724 (A014681 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A130976.P8706746543149382883

/-! ## A130976.P2792952695049772586

`record[A121724(A254048(n))]`
-/

namespace A130976.P2792952695049772586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121724 (A254048 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A130976.P2792952695049772586

/-! ## A130976.P8618014159491209197

`or(1, A121724(A005843(n)))`
-/

namespace A130976.P8618014159491209197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A121724 (A005843 n).toNat)

end

end A130976.P8618014159491209197

/-! ## A130976.P2645314073001508578

`record[lcm(A056594(n), A121724(n))]`
-/

namespace A130976.P2645314073001508578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A056594 n) (A121724 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A130976.P2645314073001508578

/-! ## A130976.P17238133445009005686

`record[root(A121724(n), A006519(n+1))]`
-/

namespace A130976.P17238133445009005686
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A121724 n : ℝ) ^ (1 / (A006519 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A130976.P17238133445009005686

/-! ## A130976.P13261000250196956712

`record[root(A121724(n), A340346(n+1))]`
-/

namespace A130976.P13261000250196956712
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A121724 n : ℝ) ^ (1 / (A340346 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A130976.P13261000250196956712

/-! ## A130976.P3700559004937275571

`record[A121724(A008619(A266664(n)))]`
-/

namespace A130976.P3700559004937275571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121724 (A008619 (A266664 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A130976.P3700559004937275571

/-! ## A130976.P6184654332658872204

`record[A183135(A052905(n)-1)]`
-/

namespace A130976.P6184654332658872204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183135 (A052905 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A130976.P6184654332658872204

/-!
# A130977: G.f.: 5/(2 + 3*sqrt(1-20*x)).

The programs for A130977, there is no canonical definition to state claims against.
-/

/-! ## A130977.P2517895240707038282

`A128387(2*n)`
-/

namespace A130977.P2517895240707038282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128387 (2 * n)

end

end A130977.P2517895240707038282

/-! ## A130977.P3482505820475182377

`record[A128387(C(n, a(n-1)))]` with `a(0)=1`
-/

namespace A130977.P3482505820475182377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A128387 (Nat.choose n (f1 (n - 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A130977.P3482505820475182377

/-! ## A130977.P2603339802093710841

`record[A128387(n)/A033999(n)]`
-/

namespace A130977.P2603339802093710841
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128387 n : ℚ) / (A033999 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A130977.P2603339802093710841

/-! ## A130977.P3664138173643625793

`lcm(A000034(n), A128387(A004277(n)))`
-/

namespace A130977.P3664138173643625793
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A128387 (A004277 n).toNat)

end

end A130977.P3664138173643625793

/-! ## A130977.P319945432564805198

`A128387(A004277(n))+A284838(n+1)%2`
-/

namespace A130977.P319945432564805198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128387 (A004277 n).toNat + Int.tmod (A284838 (n + 1)) 2

end

end A130977.P319945432564805198

/-! ## A130977.P15207347378771922143

`A128387(A004277(n))%A264253(n+1)`
-/

namespace A130977.P15207347378771922143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A128387 (A004277 n).toNat) (A264253 (n + 1))

end

end A130977.P15207347378771922143

/-! ## A130977.P11835288496707463836

`record[A128387(A103822(n))]`
-/

namespace A130977.P11835288496707463836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128387 (A103822 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A130977.P11835288496707463836

/-! ## A130977.P8162620999338737540

`A183135(eq[6, A025581(n)])`
-/

namespace A130977.P8162620999338737540
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183135 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A130977.P8162620999338737540

/-! ## A130977.P11714464924638989387

`record[A183135(A052905(n+1)-2)]`
-/

namespace A130977.P11714464924638989387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183135 (A052905 (n + 1) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A130977.P11714464924638989387

/-!
# A130978: G.f.: 12/(5 + 7*sqrt(1-24*x)).

The programs for A130978, there is no canonical definition to state claims against.
-/

/-! ## A130978.P2743716051130978334

`A132373(2*n)`
-/

namespace A130978.P2743716051130978334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132373 (2 * n)

end

end A130978.P2743716051130978334

/-! ## A130978.P8776278495692957057

`record[A132373(n)/(-1)^n]`
-/

namespace A130978.P8776278495692957057
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132373 n : ℚ) / ((-1) ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A130978.P8776278495692957057

/-! ## A130978.P2208969155174003334

`record[A132373((n-1)^(n%2))]`
-/

namespace A130978.P2208969155174003334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132373 (((n : ℤ) - 1) ^ (n % 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A130978.P2208969155174003334

/-! ## A130978.P13033678470048691233

`record[A132373(C(n, a(n-1)))]` with `a(0)=1`
-/

namespace A130978.P13033678470048691233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A132373 (Nat.choose n (f1 (n - 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A130978.P13033678470048691233

/-! ## A130978.P5464724825224896788

`A183135(eq[7, A025581(n)])`
-/

namespace A130978.P5464724825224896788
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183135 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A130978.P5464724825224896788

/-!
# A130979: G.f.: 7/(3 + 4*sqrt(1-28*x)).

The programs for A130979, there is no canonical definition to state claims against.
-/

/-! ## A130979.P16223633871465812776

`A132374(2*n)`
-/

namespace A130979.P16223633871465812776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132374 (2 * n)

end

end A130979.P16223633871465812776

/-! ## A130979.P5839904741838627812

`A059268(A167614(n+1))*A194728(n)`
-/

namespace A130979.P5839904741838627812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 (A167614 (n + 1)).toNat * A194728 n

end

end A130979.P5839904741838627812

/-! ## A130979.P8499279306579173258

`A183135(eq[8, A025581(n)])`
-/

namespace A130979.P8499279306579173258
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183135 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A130979.P8499279306579173258

/-! ## A130979.P9894861187113927009

`A183135(eq[9, A193739(n)])`
-/

namespace A130979.P9894861187113927009
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183135 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A130979.P9894861187113927009

/-! ## A130979.P14365292116321303279

`A183135(A000217(n+9)-9)`
-/

namespace A130979.P14365292116321303279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183135 (A000217 (n + 9) - 9).toNat

end

end A130979.P14365292116321303279

/-! ## A130979.P16016784063827569745

`A183135(A161680(n+10)-9)`
-/

namespace A130979.P16016784063827569745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183135 (A161680 (n + 10) - 9).toNat

end

end A130979.P16016784063827569745

/-! ## A130979.P3718851150944652339

`A183135(eq[9, A004736(n+1)])`
-/

namespace A130979.P3718851150944652339
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183135 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A130979.P3718851150944652339

/-!
# A130980: G.f.: 16/(7 + 9*sqrt(1 - 32*x)).

The programs for A130980, there is no canonical definition to state claims against.
-/

/-! ## A130980.P11042833028788071602

`A132375(2*n)`
-/

namespace A130980.P11042833028788071602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132375 (2 * n)

end

end A130980.P11042833028788071602

/-! ## A130980.P17714879630438430988

`record[A132375(n)/(-1)^n]`
-/

namespace A130980.P17714879630438430988
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132375 n : ℚ) / ((-1) ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A130980.P17714879630438430988

/-! ## A130980.P4448248012891223188

`A183135(eq[9, A025581(n)])`
-/

namespace A130980.P4448248012891223188
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183135 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A130980.P4448248012891223188

/-! ## A130980.P11573870852434876072

`A183135(eq[10, A193739(n)])`
-/

namespace A130980.P11573870852434876072
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183135 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A130980.P11573870852434876072

/-! ## A130980.P17157961081513681176

`A183135(eq[10, A004736(n+1)])`
-/

namespace A130980.P17157961081513681176
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183135 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A130980.P17157961081513681176

/-!
# A130981: Signature permutation of a Catalan automorphism: row 3 of A122287 and A122288.

The programs for A130981, there is no canonical definition to state claims against.
-/

/-! ## A130981.P9491917407163135192

`A069768(A057163(n))`
-/

namespace A130981.P9491917407163135192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069768 (A057163 n).toNat

end

end A130981.P9491917407163135192

/-! ## A130981.P12172008632522087178

`A057163(A069767(n))`
-/

namespace A130981.P12172008632522087178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A069767 n).toNat

end

end A130981.P12172008632522087178

/-! ## A130981.P15902570282402880331

`A073287(A073280(n))`
-/

namespace A130981.P15902570282402880331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073287 (A073280 n).toNat

end

end A130981.P15902570282402880331

/-! ## A130981.P9382050378777400926

`A073280(A073286(n))`
-/

namespace A130981.P9382050378777400926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073280 (A073286 n).toNat

end

end A130981.P9382050378777400926

/-! ## A130981.P1846380300264500116

`A057163(A057508(A057161(n)))`
-/

namespace A130981.P1846380300264500116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A057508 (A057161 n).toNat).toNat

end

end A130981.P1846380300264500116

/-! ## A130981.P292339636153960944

`A057163(A057161(A069769(n)))`
-/

namespace A130981.P292339636153960944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A057161 (A069769 n).toNat).toNat

end

end A130981.P292339636153960944

/-! ## A130981.P3736864299093958244

`A069768(A057506(A057164(n)))`
-/

namespace A130981.P3736864299093958244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069768 (A057506 (A057164 n).toNat).toNat

end

end A130981.P3736864299093958244

/-! ## A130981.P9095017534965679465

`A069768(A057164(A057505(n)))`
-/

namespace A130981.P9095017534965679465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069768 (A057164 (A057505 n).toNat).toNat

end

end A130981.P9095017534965679465

/-! ## A130981.P8190323656161004277

`A069768(A073283(A072796(n)))`
-/

namespace A130981.P8190323656161004277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069768 (A073283 (A072796 n).toNat).toNat

end

end A130981.P8190323656161004277

/-! ## A130981.P17460602439018385188

`A069768(A072796(A073282(n)))`
-/

namespace A130981.P17460602439018385188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069768 (A072796 (A073282 n).toNat).toNat

end

end A130981.P17460602439018385188

/-! ## A130981.P17057644965563123421

`A154456(A057163(A154453(n)))`
-/

namespace A130981.P17057644965563123421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154456 (A057163 (A154453 n).toNat).toNat

end

end A130981.P17057644965563123421

/-! ## A130981.P1139597147592300738

`A057162(A057508(A057162(A057163(A057162(n)))))`
-/

namespace A130981.P1139597147592300738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057162 (A057508 (A057162 (A057163 (A057162 n).toNat).toNat).toNat).toNat

end

end A130981.P1139597147592300738

/-! ## A130981.P10935827953389724956

`A154454(A154451(A154451(A057163(A154456(n)))))`
-/

namespace A130981.P10935827953389724956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154454 (A154451 (A154451 (A057163 (A154456 n).toNat).toNat).toNat).toNat

end

end A130981.P10935827953389724956

/-!
# A130982: Signature permutation of a Catalan automorphism: row 5 of A122287 and A122288.

The programs for A130982, there is no canonical definition to state claims against.
-/

/-! ## A130982.P8845453234076835110

`A131007(A057163(n))`
-/

namespace A130982.P8845453234076835110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131007 (A057163 n).toNat

end

end A130982.P8845453234076835110

/-! ## A130982.P4525515283889260901

`A057163(A131008(n))`
-/

namespace A130982.P4525515283889260901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A131008 n).toNat

end

end A130982.P4525515283889260901

/-! ## A130982.P5410837268925813819

`A131007(A057506(A057164(n)))`
-/

namespace A130982.P5410837268925813819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131007 (A057506 (A057164 n).toNat).toNat

end

end A130982.P5410837268925813819

/-! ## A130982.P8545739611757020536

`A131007(A057164(A057505(n)))`
-/

namespace A130982.P8545739611757020536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131007 (A057164 (A057505 n).toNat).toNat

end

end A130982.P8545739611757020536

/-! ## A130982.P6241279842454785909

`A131007(A069767(A130981(n)))`
-/

namespace A130982.P6241279842454785909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131007 (A069767 (A130981 n).toNat).toNat

end

end A130982.P6241279842454785909

/-!
# A130983: Signature permutation of a Catalan automorphism: row 4 of A122287 and A122288.

The programs for A130983, there is no canonical definition to state claims against.
-/

/-! ## A130983.P14836056502309442875

`A131005(A057163(n))`
-/

namespace A130983.P14836056502309442875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131005 (A057163 n).toNat

end

end A130983.P14836056502309442875

/-! ## A130983.P15612090418748582641

`A057163(A131004(n))`
-/

namespace A130983.P15612090418748582641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A131004 n).toNat

end

end A130983.P15612090418748582641

/-! ## A130983.P9096541137731861564

`A131005(A057506(A057164(n)))`
-/

namespace A130983.P9096541137731861564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131005 (A057506 (A057164 n).toNat).toNat

end

end A130983.P9096541137731861564

/-! ## A130983.P10448793395485928027

`A131005(A057164(A057505(n)))`
-/

namespace A130983.P10448793395485928027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131005 (A057164 (A057505 n).toNat).toNat

end

end A130983.P10448793395485928027

/-! ## A130983.P16370000985591171495

`A131005(A069767(A130981(n)))`
-/

namespace A130983.P16370000985591171495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131005 (A069767 (A130981 n).toNat).toNat

end

end A130983.P16370000985591171495

/-! ## A130983.P1317334268566501271

`A131005(A130984(A131005(n)))`
-/

namespace A130983.P1317334268566501271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131005 (A130984 (A131005 n).toNat).toNat

end

end A130983.P1317334268566501271

/-!
# A130984: Signature permutation of a Catalan automorphism: row 6 of A122287 and A122288.

The programs for A130984, there is no canonical definition to state claims against.
-/

/-! ## A130984.P3112926624609633886

`A131003(A057163(n))`
-/

namespace A130984.P3112926624609633886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131003 (A057163 n).toNat

end

end A130984.P3112926624609633886

/-! ## A130984.P4736183734833129964

`A057163(A131006(n))`
-/

namespace A130984.P4736183734833129964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A131006 n).toNat

end

end A130984.P4736183734833129964

/-! ## A130984.P7783533896596884498

`A131003(A057506(A057164(n)))`
-/

namespace A130984.P7783533896596884498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131003 (A057506 (A057164 n).toNat).toNat

end

end A130984.P7783533896596884498

/-! ## A130984.P12642491894420920657

`A131003(A057164(A057505(n)))`
-/

namespace A130984.P12642491894420920657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131003 (A057164 (A057505 n).toNat).toNat

end

end A130984.P12642491894420920657

/-! ## A130984.P14375010940844329211

`A131003(A069767(A130981(n)))`
-/

namespace A130984.P14375010940844329211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131003 (A069767 (A130981 n).toNat).toNat

end

end A130984.P14375010940844329211

/-! ## A130984.P18021433671830688873

`A131003(A130983(A131003(n)))`
-/

namespace A130984.P18021433671830688873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131003 (A130983 (A131003 n).toNat).toNat

end

end A130984.P18021433671830688873

/-!
# A130985: Signature permutation of a Catalan automorphism: row 7 of A122288.

The programs for A130985, there is no canonical definition to state claims against.
-/

/-! ## A130985.P17769982265405162176

`A082346(A073287(A122349(A122349(A082347(n)))))`
-/

namespace A130985.P17769982265405162176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082346 (A073287 (A122349 (A122349 (A082347 n).toNat).toNat).toNat).toNat

end

end A130985.P17769982265405162176

/-! ## A130985.P16349715753287180486

`A073292(A131000(n))%A122227(n)`
-/

namespace A130985.P16349715753287180486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A073292 (A131000 n).toNat) (A122227 n)

end

end A130985.P16349715753287180486

/-!
# A130986: Signature permutation of a Catalan automorphism: row 7 of A122287.

The programs for A130986, there is no canonical definition to state claims against.
-/

/-! ## A130986.P12153842157005389380

`A069770(A089854(A154454(A069770(A122311(n)))))`
-/

namespace A130986.P12153842157005389380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069770 (A089854 (A154454 (A069770 (A122311 n).toNat).toNat).toNat).toNat

end

end A130986.P12153842157005389380

/-! ## A130986.P285163233478252665

`A122301(A129611(n)%A330859(n))`
-/

namespace A130986.P285163233478252665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122301 (Int.tmod (A129611 n) (A330859 (n + 100))).toNat

end

end A130986.P285163233478252665

/-! ## A130986.P14460734221985069939

`A122301(A154456(n)%A330859(n))`
-/

namespace A130986.P14460734221985069939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122301 (Int.tmod (A154456 n) (A330859 (n + 100))).toNat

end

end A130986.P14460734221985069939

/-! ## A130986.P7040582048408899970

`A000227(A151934(n))*A122301(A154456(n))`
-/

namespace A130986.P7040582048408899970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000227 (A151934 n).toNat * A122301 (A154456 n).toNat

end

end A130986.P7040582048408899970

/-!
# A130990: Signature permutation of a Catalan automorphism: row 11 of A122287.

The programs for A130990, there is no canonical definition to state claims against.
-/

/-! ## A130990.P12167121784183722500

`A178798(A080078(n))+A130993(n)`
-/

namespace A130990.P12167121784183722500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178798 (A080078 n).toNat + A130993 n

end

end A130990.P12167121784183722500

/-! ## A130990.P7072881415024955553

`A178798(A080078(n))+A131150(n)`
-/

namespace A130990.P7072881415024955553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178798 (A080078 n).toNat + A131150 n

end

end A130990.P7072881415024955553

/-! ## A130990.P4613783108262822772

`A178798(A080078(n))+A131153(n)`
-/

namespace A130990.P4613783108262822772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178798 (A080078 n).toNat + A131153 n

end

end A130990.P4613783108262822772

/-! ## A130990.P7539703604765073535

`A130993(n)-A011730(A081123(n))`
-/

namespace A130990.P7539703604765073535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130993 n - A011730 (A081123 n).toNat

end

end A130990.P7539703604765073535

/-! ## A130990.P10831003697583402200

`A131150(n)-A011730(A081123(n))`
-/

namespace A130990.P10831003697583402200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131150 n - A011730 (A081123 n).toNat

end

end A130990.P10831003697583402200

/-!
# A130991: Signature permutation of a Catalan automorphism: row 10 of A122288.

The programs for A130991, there is no canonical definition to state claims against.
-/

/-! ## A130991.P13849291351312004521

`A089856(A130992(A089856(n)))`
-/

namespace A130991.P13849291351312004521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089856 (A130992 (A089856 n).toNat).toNat

end

end A130991.P13849291351312004521

/-! ## A130991.P11489315030092533424

`A131151(n)-A178798(A035363(n))`
-/

namespace A130991.P11489315030092533424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131151 n - A178798 (A035363 n).toNat

end

end A130991.P11489315030092533424

/-! ## A130991.P9763908987557872429

`A131152(n)-A178798(A035363(n))`
-/

namespace A130991.P9763908987557872429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131152 n - A178798 (A035363 n).toNat

end

end A130991.P9763908987557872429

/-!
# A130992: Signature permutation of a Catalan automorphism: row 10 of A122287.

The programs for A130992, there is no canonical definition to state claims against.
-/

/-! ## A130992.P8451102202517587215

`A089856(A130991(A089856(n)))`
-/

namespace A130992.P8451102202517587215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089856 (A130991 (A089856 n).toNat).toNat

end

end A130992.P8451102202517587215

/-! ## A130992.P14001028804558828058

`A340999(A228202(2*n+5))+A122317(n)`
-/

namespace A130992.P14001028804558828058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340999 ((A228202 (2 * n + 5)).toNat + 204) + A122317 n

end

end A130992.P14001028804558828058

/-!
# A130994: Signature permutation of a Catalan automorphism: row 9 of A122287.

The programs for A130994, there is no canonical definition to state claims against.
-/

/-! ## A130994.P14966168918753709486

`A131149(comp[A066090(3*(n+1))²])`
-/

namespace A130994.P14966168918753709486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066090 (3 * (n + 1)) ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131149 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A130994.P14966168918753709486

/-! ## A130994.P4914105923983327729

`A131149(comp[∑[A077363(2*(n+1))]])`
-/

namespace A130994.P4914105923983327729
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077363 (2 * (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131149 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A130994.P4914105923983327729

/-! ## A130994.P582549196023673733

`A130989(comp[A063430(3*n+4)-A007070(2*n+3)])`
-/

namespace A130994.P582549196023673733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063430 (3 * n + 4) - A007070 (2 * n + 3)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130989 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A130994.P582549196023673733

/-! ## A130994.P11434867486620588141

`A345197(A143007(n))+A131149(n)`
-/

namespace A130994.P11434867486620588141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345197 (A143007 n).toNat + A131149 n

end

end A130994.P11434867486620588141

/-!
# A130995: Signature permutation of a Catalan automorphism: row 13 of A122288.

The programs for A130995, there is no canonical definition to state claims against.
-/

/-! ## A130995.P15930436323862001180

`A131164(A073287(n)%A130336(n+1))`
-/

namespace A130995.P15930436323862001180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131164 (Int.tmod (A073287 n) (A130336 (n + 1))).toNat

end

end A130995.P15930436323862001180

/-! ## A130995.P12223691314957277994

`A131164(A122311(n)%A130336(n+1))`
-/

namespace A130995.P12223691314957277994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131164 (Int.tmod (A122311 n) (A130336 (n + 1))).toNat

end

end A130995.P12223691314957277994

/-! ## A130995.P8899505088919095820

`A131155(A122349(n)%A130336(n+1))`
-/

namespace A130995.P8899505088919095820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131155 (Int.tmod (A122349 n) (A130336 (n + 1))).toNat

end

end A130995.P8899505088919095820

/-! ## A130995.P4157030385097375462

`A131164(A130986(n)%A130336(n+1))`
-/

namespace A130995.P4157030385097375462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131164 (Int.tmod (A130986 n) (A130336 (n + 1))).toNat

end

end A130995.P4157030385097375462

/-! ## A130995.P10737420331182132236

`A131141(A131155(n)%A350441(n+1))`
-/

namespace A130995.P10737420331182132236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131141 (Int.tmod (A131155 n) (A350441 (n + 1))).toNat

end

end A130995.P10737420331182132236

/-!
# A130996: Signature permutation of a Catalan automorphism: row 18 of A122287.

The programs for A130996, there is no canonical definition to state claims against.
-/

/-! ## A130996.P12258232124794192666

`A130953(A073288(n)%A090578(n))`
-/

namespace A130996.P12258232124794192666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130953 (Int.tmod (A073288 n) (A090578 n)).toNat

end

end A130996.P12258232124794192666

/-! ## A130996.P7637667504840976139

`A130953(A122282(n)%A090578(n))`
-/

namespace A130996.P7637667504840976139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130953 (Int.tmod (A122282 n) (A090578 n)).toNat

end

end A130996.P7637667504840976139

/-! ## A130996.P6171943036293933320

`A130953(A122282(n))%A000040(A000051(n))`
-/

namespace A130996.P6171943036293933320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A130953 (A122282 n).toNat) (A000040 (A000051 n).toNat)

end

end A130996.P6171943036293933320

/-! ## A130996.P13849655448175176397

`A130363(comp[-a(and(n, n-1))])` with `a(0)=10`
-/

namespace A130996.P13849655448175176397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [10] fun n f1 =>
  -f1 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130363 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A130996.P13849655448175176397

/-! ## A130996.P15385833544990134640

`A089862(A106000(n))`
-/

namespace A130996.P15385833544990134640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089862 (A106000 n).toNat

end

end A130996.P15385833544990134640

/-!
# A130997: Signature permutation of a Catalan automorphism: row 14 of A122288.

The programs for A130997, there is no canonical definition to state claims against.
-/

/-! ## A130997.P4969244411678307622

`A122301(A122346(n))+A032741(A058348(2*n+1))`
-/

namespace A130997.P4969244411678307622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122301 (A122346 n).toNat + A032741 (A058348 (2 * n + 1)).toNat

end

end A130997.P4969244411678307622

/-! ## A130997.P15765145716110197345

`A122301(A122346(n*A278657(n)))`
-/

namespace A130997.P15765145716110197345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122301 (A122346 ((n : ℤ) * A278657 n).toNat).toNat

end

end A130997.P15765145716110197345

/-! ## A130997.P4849683272646062614

`A122354(A122346(n)*A278657(n))`
-/

namespace A130997.P4849683272646062614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122354 (A122346 n * A278657 n).toNat

end

end A130997.P4849683272646062614

/-! ## A130997.P9577378478739487105

`A122301(A130346(n*A278657(n)))`
-/

namespace A130997.P9577378478739487105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122301 (A130346 ((n : ℤ) * A278657 n).toNat).toNat

end

end A130997.P9577378478739487105

/-! ## A130997.P8546386418752286254

`A122301(A130384(n*A278657(n)))`
-/

namespace A130997.P8546386418752286254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122301 (A130384 ((n : ℤ) * A278657 n).toNat).toNat

end

end A130997.P8546386418752286254

/-!
# A130998: Signature permutation of a Catalan automorphism: row 19 of A122287.

The programs for A130998, there is no canonical definition to state claims against.
-/

/-! ## A130998.P9260168509225554611

`A131165(A130376(n))%A345925(3*(n+1))`
-/

namespace A130998.P9260168509225554611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A131165 (A130376 n).toNat) (A345925 (3 * (n + 1)))

end

end A130998.P9260168509225554611

/-! ## A130998.P5994730288882313784

`A130372(A131165(n))%A345925(3*(n+1))`
-/

namespace A130998.P5994730288882313784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A130372 (A131165 n).toNat) (A345925 (3 * (n + 1)))

end

end A130998.P5994730288882313784

/-! ## A130998.P10774956170027389056

`A130372(A127292(n)%A095575(n))`
-/

namespace A130998.P10774956170027389056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130372 (Int.tmod (A127292 n) (A095575 n)).toNat

end

end A130998.P10774956170027389056

/-!
# A130999: Signature permutation of a Catalan automorphism: row 15 of A122288.

The programs for A130999, there is no canonical definition to state claims against.
-/

/-! ## A130999.P5028468071695677594

`A073280(A130360(n))%A049081(A193988(n+1))`
-/

namespace A130999.P5028468071695677594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A073280 (A130360 n).toNat) (A049081 (A193988 (n + 1)).toNat)

end

end A130999.P5028468071695677594

/-! ## A130999.P4986142161866465050

`A073280(A130360(n))+A010051(A050689(n+1))`
-/

namespace A130999.P4986142161866465050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073280 (A130360 n).toNat + A010051 (A050689 (n + 1)).toNat

end

end A130999.P4986142161866465050

/-! ## A130999.P1117867091395223696

`A073280(A130360(n))+A056594(A065393(n+1))`
-/

namespace A130999.P1117867091395223696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073280 (A130360 n).toNat + A056594 (A065393 (n + 1)).toNat

end

end A130999.P1117867091395223696

/-! ## A130999.P13102378831456170292

`A353680(A002618(3*n+5))+A073280(A130360(n))`
-/

namespace A130999.P13102378831456170292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353680 (A002618 (3 * n + 5)).toNat + A073280 (A130360 n).toNat

end

end A130999.P13102378831456170292

/-! ## A130999.P6848025265427890500

`A073280(A130360(n))+A010815(A068228(3*n+4))`
-/

namespace A130999.P6848025265427890500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073280 (A130360 n).toNat + A010815 (A068228 (3 * n + 4)).toNat

end

end A130999.P6848025265427890500

/-! ## A130999.P9623004903797761221

`A073280(A130360(n))%A007304(A067357(n))`
-/

namespace A130999.P9623004903797761221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A073280 (A130360 n).toNat) (A007304 (A067357 n).toNat)

end

end A130999.P9623004903797761221

/-! ## A130999.P15770297967803879880

`A089863(A131000(A089863(n)))`
-/

namespace A130999.P15770297967803879880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089863 (A131000 (A089863 n).toNat).toNat

end

end A130999.P15770297967803879880

