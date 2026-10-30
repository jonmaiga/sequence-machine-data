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
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C040
import Seq.B000.C043
import Seq.B000.C046
import Seq.B000.C048
import Seq.B000.C049
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
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A164900: a(2n) = 4*n*(n+1) + 3; a(2n+1) = 2*n*(n+2) + 3.

The programs for A164900, the canonical program `A164900.P15313924035354000303` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164900 has offset 0).

The definition of A164900 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A164900.P15387859163163922071

`ogf((3+3x+2x^2+3x^4+x^5)/(1-3x^2+3x^4-x^6))`
-/

namespace A164900.P15387859163163922071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 3, 2, 0, 3, 1] [1, 0, -3, 0, 3, 0, -1] n

end

end A164900.P15387859163163922071

namespace A164900

/-- `ogf((3+3x+2x^2+3x^4+x^5)/(1-3x^2+3x^4-x^6))` -/
def P15387859163163922071.Spec : Prop :=
  ∀ n, P15387859163163922071.a n = A164900 n

end A164900

/-! ## A164900.P15313924035354000303

`((-1)^n+3)*(n²+2*n+3)/4`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A164900

/-- `((-1)^n+3)*(n²+2*n+3)/4` -/
def P15313924035354000303.Spec : Prop :=
  ∀ n, P15313924035354000303.a n = (A164900 n : ℚ)

end A164900

/-! ## A164900.P437279614660565010

`lcm(2, ∑[or(1, n)])+1`
-/

namespace A164900.P437279614660565010
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A164900.P437279614660565010

namespace A164900

/-- `lcm(2, ∑[or(1, n)])+1` -/
def P437279614660565010.Spec : Prop :=
  ∀ n, (P437279614660565010.a n : ℤ) = A164900 n

end A164900

/-! ## A164900.P9175748151792634066

`gcd(2, n)*∑[or(1, n)]+1`
-/

namespace A164900.P9175748151792634066
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n * (∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A164900.P9175748151792634066

namespace A164900

/-- `gcd(2, n)*∑[or(1, n)]+1` -/
def P9175748151792634066.Spec : Prop :=
  ∀ n, (P9175748151792634066.a n : ℤ) = A164900 n

end A164900

/-! ## A164900.P8461527980272073689

`((1+n)²+2)/(1+n%2)`
-/

namespace A164900.P8461527980272073689
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((1 + n) ^ 2 + 2 : ℚ) / ((1 + n % 2 : ℕ) : ℚ)

end

end A164900.P8461527980272073689

namespace A164900

/-- `((1+n)²+2)/(1+n%2)` -/
def P8461527980272073689.Spec : Prop :=
  ∀ n, P8461527980272073689.a n = (A164900 n : ℚ)

end A164900

/-! ## A164900.P1912632831611980786

`lcm(n+1, (n+1)²+2)/(n+1)`
-/

namespace A164900.P1912632831611980786
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm (n + 1) ((n + 1) ^ 2 + 2) : ℚ) / (n + 1 : ℚ)

end

end A164900.P1912632831611980786

namespace A164900

/-- `lcm(n+1, (n+1)²+2)/(n+1)` -/
def P1912632831611980786.Spec : Prop :=
  ∀ n, P1912632831611980786.a n = (A164900 n : ℚ)

end A164900

/-! ## A164900.P10010593017355820502

`a(n-2)+4*n/a(n-1)%n` with `a(0)=3, a(1)=3`
-/

namespace A164900.P10010593017355820502
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [3, 3] fun n a =>
  a (n - 2) + 4 * ((n : ℚ) / (Int.tmod (SequenceMachineLib.roundAway (a (n - 1))) (n : ℤ) : ℚ))

end

end A164900.P10010593017355820502

namespace A164900

/-- `a(n-2)+4*n/a(n-1)%n` -/
def P10010593017355820502.Spec : Prop :=
  ∀ n, P10010593017355820502.a n = (A164900 n : ℚ)

end A164900

/-! ## A164900.P14502461667463089632

`lcm(2, ∑[A109613(n)])+1`
-/

namespace A164900.P14502461667463089632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A164900.P14502461667463089632

namespace A164900

/-- `lcm(2, ∑[A109613(n)])+1` -/
def P14502461667463089632.Spec : Prop :=
  ∀ n, (P14502461667463089632.a n : ℤ) = A164900 n

end A164900

/-! ## A164900.P14905331518932014942

`A186424(n)+3-a(n-1)` with `a(0)=3`
-/

namespace A164900.P14905331518932014942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A186424 n + (3 - a (n - 1))

end

end A164900.P14905331518932014942

namespace A164900

/-- `A186424(n)+3-a(n-1)` -/
def P14905331518932014942.Spec : Prop :=
  ∀ n, P14905331518932014942.a n = A164900 n

end A164900

/-! ## A164900.P12539800151289201709

`A165747(n)+A087420(n+1)`
-/

namespace A164900.P12539800151289201709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165747 n + A087420 (n + 1)

end

end A164900.P12539800151289201709

namespace A164900

/-- `A165747(n)+A087420(n+1)` -/
def P12539800151289201709.Spec : Prop :=
  ∀ n, P12539800151289201709.a n = A164900 n

end A164900

/-! ## A164900.P5720963572605305268

`A087420(n+1)-A060747(n)`
-/

namespace A164900.P5720963572605305268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087420 (n + 1) - A060747 n

end

end A164900.P5720963572605305268

namespace A164900

/-- `A087420(n+1)-A060747(n)` -/
def P5720963572605305268.Spec : Prop :=
  ∀ n, P5720963572605305268.a n = A164900 n

end A164900

/-! ## A164900.P13833474280813160448

`Δ[2*A235355(n)]+1`
-/

namespace A164900.P13833474280813160448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A235355 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A164900.P13833474280813160448

namespace A164900

/-- `Δ[2*A235355(n)]+1` -/
def P13833474280813160448.Spec : Prop :=
  ∀ n, P13833474280813160448.a n = A164900 n

end A164900

/-! ## A164900.P10170903635789917593

`2*A147685(n+1)+1`
-/

namespace A164900.P10170903635789917593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A147685 (n + 1) + 1

end

end A164900.P10170903635789917593

namespace A164900

/-- `2*A147685(n+1)+1` -/
def P10170903635789917593.Spec : Prop :=
  ∀ n, P10170903635789917593.a n = A164900 n

end A164900

/-! ## A164900.P4593403296586900464

`or(1, A129194(n+1)+1)`
-/

namespace A164900.P4593403296586900464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A129194 (n + 1) + 1)

end

end A164900.P4593403296586900464

namespace A164900

/-- `or(1, A129194(n+1)+1)` -/
def P4593403296586900464.Spec : Prop :=
  ∀ n, P4593403296586900464.a n = A164900 n

end A164900

/-! ## A164900.P7633458920126665934

`A066830(n+2)-A022998(n)`
-/

namespace A164900.P7633458920126665934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066830 (n + 2) - A022998 n

end

end A164900.P7633458920126665934

namespace A164900

/-- `A066830(n+2)-A022998(n)` -/
def P7633458920126665934.Spec : Prop :=
  ∀ n, P7633458920126665934.a n = A164900 n

end A164900

/-! ## A164900.P7159893513099671027

`Δ[A007494(n)+Δ[A002620(n)²]]`
-/

namespace A164900.P7159893513099671027
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 n + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A164900.P7159893513099671027

namespace A164900

/-- `Δ[A007494(n)+Δ[A002620(n)²]]` -/
def P7159893513099671027.Spec : Prop :=
  ∀ n, P7159893513099671027.a n = A164900 n

end A164900

/-! ## A164900.P12095965731780278740

`A129194(n+1)+A000034(n+1)`
-/

namespace A164900.P12095965731780278740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129194 (n + 1) + A000034 (n + 1)

end

end A164900.P12095965731780278740

namespace A164900

/-- `A129194(n+1)+A000034(n+1)` -/
def P12095965731780278740.Spec : Prop :=
  ∀ n, P12095965731780278740.a n = A164900 n

end A164900

/-! ## A164900.P16790845635258369127

`A129194(n+1)+A040001(n+2)`
-/

namespace A164900.P16790845635258369127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129194 (n + 1) + A040001 (n + 2)

end

end A164900.P16790845635258369127

namespace A164900

/-- `A129194(n+1)+A040001(n+2)` -/
def P16790845635258369127.Spec : Prop :=
  ∀ n, P16790845635258369127.a n = A164900 n

end A164900

/-! ## A164900.P8474853004243095396

`A000265((n+1)²+2)`
-/

namespace A164900.P8474853004243095396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 ((n + 1) ^ 2 + 2)

end

end A164900.P8474853004243095396

namespace A164900

/-- `A000265((n+1)²+2)` -/
def P8474853004243095396.Spec : Prop :=
  ∀ n, P8474853004243095396.a n = A164900 n

end A164900

/-! ## A164900.P13684633293793000489

`A339913(A005893(n+1))`
-/

namespace A164900.P13684633293793000489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339913 (A005893 (n + 1)).toNat

end

end A164900.P13684633293793000489

namespace A164900

/-- `A339913(A005893(n+1))` -/
def P13684633293793000489.Spec : Prop :=
  ∀ n, P13684633293793000489.a n = A164900 n

end A164900

/-!
# A164901: a(1)=1, a(2) = 2. For n >=3, a(n) = the smallest integer > a(n-1) that is coprime to every sum of any two distinct earlier terms of this sequence.

The programs for A164901, the canonical program `A164901.P6900817320331422055` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164901 has offset 1).

The definition of A164901 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 906 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A164901.P6900817320331422055

`A151800(A065170(a(n-1)-2)+1)` with `a(0)=1, a(1)=2, a(2)=4`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A164901

/-- `A151800(A065170(a(n-1)-2)+1)` -/
def P6900817320331422055.Spec : Prop :=
  ∀ n, P6900817320331422055.a n = A164901 (n + 1)

theorem P6900817320331422055.correct : P6900817320331422055.Spec := by
  intro n
  simp only [A164901, Nat.add_sub_cancel]

end A164901

/-! ## A164901.P10172048133432566410

`record[A002034(A164903(n+1))]`
-/

namespace A164901.P10172048133432566410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002034 (A164903 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A164901.P10172048133432566410

namespace A164901

/-- `record[A002034(A164903(n+1))]` -/
def P10172048133432566410.Spec : Prop :=
  ∀ n, P10172048133432566410.a n = A164901 (n + 1)

end A164901

/-! ## A164901.P9450484590941862568

`∩[A046022(n+1), A164903(n+1)]`
-/

namespace A164901.P9450484590941862568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164903 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A164901.P9450484590941862568

namespace A164901

/-- `∩[A046022(n+1), A164903(n+1)]` -/
def P9450484590941862568.Spec : Prop :=
  ∀ n, (P9450484590941862568.a n : ℤ) = A164901 (n + 1)

end A164901

/-! ## A164901.P3752362994895115799

`∩[A062972(n+1), A164903(n+1)]`
-/

namespace A164901.P3752362994895115799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164903 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A164901.P3752362994895115799

namespace A164901

/-- `∩[A062972(n+1), A164903(n+1)]` -/
def P3752362994895115799.Spec : Prop :=
  ∀ n, (P3752362994895115799.a n : ℤ) = A164901 (n + 1)

end A164901

/-! ## A164901.P1894717214308832078

`∩[A067126(n+1), A164903(n+1)]`
-/

namespace A164901.P1894717214308832078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164903 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A164901.P1894717214308832078

namespace A164901

/-- `∩[A067126(n+1), A164903(n+1)]` -/
def P1894717214308832078.Spec : Prop :=
  ∀ n, (P1894717214308832078.a n : ℤ) = A164901 (n + 1)

end A164901

/-!
# A164902: Those positive integers that occur at least once as a sum of any two distinct terms of sequence A164901.

The programs for A164902, there is no canonical definition to state claims against.
-/

/-! ## A164902.P16331957780134431400

`comp[A164903(n+1)-1]+1`
-/

namespace A164902.P16331957780134431400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164903 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A164902.P16331957780134431400

/-! ## A164902.P4130226135458968851

`comp[A023443(A164903(n+1))]+1`
-/

namespace A164902.P4130226135458968851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A164903 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A164902.P4130226135458968851

/-! ## A164902.P16517057624304903459

`eq[char[A164903(n+1)], A151933(n)]`
-/

namespace A164902.P16517057624304903459
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164903 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A164902.P16517057624304903459

/-! ## A164902.P8659812500273355644

`eq[char[A164903(n+1)], A151622(n)]`
-/

namespace A164902.P8659812500273355644
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164903 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151622 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A164902.P8659812500273355644

/-! ## A164902.P17657337374278826783

`A318916(A263085(n+2))`
-/

namespace A164902.P17657337374278826783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318916 (A263085 (n + 2)).toNat

end

end A164902.P17657337374278826783

/-!
# A164903: Those positive integers that do not occur as a sum of any two distinct terms of sequence A164901.

The programs for A164903, there is no canonical definition to state claims against.
-/

/-! ## A164903.P13361555334941730589

`eq[char[A164902(n+1)], A151933(n)]`
-/

namespace A164903.P13361555334941730589
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164902 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A164903.P13361555334941730589

/-! ## A164903.P13017280885632518428

`eq[char[A164902(n+1)], A151622(n)]`
-/

namespace A164903.P13017280885632518428
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164902 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151622 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A164903.P13017280885632518428

/-! ## A164903.P16049436703387614130

`∑[A103120(A059479(2*(n+1))+10)]`
-/

namespace A164903.P16049436703387614130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103120 (A059479 (2 * (n + 1)) + 10).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164903.P16049436703387614130

/-! ## A164903.P15988263326644341668

`lt[A004144(A366661(n+1)), A366661(2*n+1)]`
-/

namespace A164903.P15988263326644341668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004144 (A366661 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366661 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A164903.P15988263326644341668

/-! ## A164903.P12161162625328646960

`∑[A329313(A326875(2*(n+2))+2)]`
-/

namespace A164903.P12161162625328646960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329313 (A326875 (2 * (n + 2)) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164903.P12161162625328646960

/-!
# A164904: a(n) is the number of palindromic structures using a maximum of ten different symbols.

The programs for A164904, there is no canonical definition to state claims against.
-/

/-! ## A164904.P9728912873640051662

`A164864(ceil(n/2))`
-/

namespace A164904.P9728912873640051662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164864 ⌈(n : ℚ) / 2⌉.toNat

end

end A164904.P9728912873640051662

/-! ## A164904.P12742774899913308002

`gcd(A000038(n), A164864(A110654(n)))`
-/

namespace A164904.P12742774899913308002
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A164864 (A110654 n).toNat)

end

end A164904.P12742774899913308002

/-! ## A164904.P6208346967611176655

`A164864(A065033(n))^log2(A040000(n))`
-/

namespace A164904.P6208346967611176655
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A164864 (A065033 n).toNat : ℝ) ^ (Real.logb 2 (A040000 n : ℝ))

end

end A164904.P6208346967611176655

/-! ## A164904.P15083722351878131244

`A164864(A065033(n))%A111642(n)`
-/

namespace A164904.P15083722351878131244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A164864 (A065033 n).toNat) (A111642 n)

end

end A164904.P15083722351878131244

/-! ## A164904.P8816349078423882439

`A196777(A191834(n+1))+A164864(A065033(n))`
-/

namespace A164904.P8816349078423882439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196777 (A191834 (n + 1)).toNat + A164864 (A065033 n).toNat

end

end A164904.P8816349078423882439

/-! ## A164904.P1271944624616694274

`A001222(A007686(n+1))*A164864(A110654(n))`
-/

namespace A164904.P1271944624616694274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A007686 (n + 1)).toNat * A164864 (A110654 n).toNat

end

end A164904.P1271944624616694274

/-!
# A164905: Primes from composite numbers by prefixing with 1.

The programs for A164905, there is no canonical definition to state claims against.
-/

/-! ## A164905.P11029101172476629392

`A070277(record[A238333(n+2)])`
-/

namespace A164905.P11029101172476629392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238333 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070277 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A164905.P11029101172476629392

/-! ## A164905.P10267803856059594668

`p?[A354114(A002808(n+1))]`
-/

namespace A164905.P10267803856059594668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354114 (A002808 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A164905.P10267803856059594668

/-! ## A164905.P2193627686931255290

`p?[A354114(A005381(n+1))]`
-/

namespace A164905.P2193627686931255290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354114 (A005381 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A164905.P2193627686931255290

/-! ## A164905.P15412735060175536205

`p?[A354114(A018252(n+1))]`
-/

namespace A164905.P15412735060175536205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354114 (A018252 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A164905.P15412735060175536205

/-! ## A164905.P6677605895863629055

`p?[A354114(A065090(n+1))]`
-/

namespace A164905.P6677605895863629055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354114 (A065090 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A164905.P6677605895863629055

/-!
# A164907: a(n) = (3*3^n - (-1)^n)/2.

The programs for A164907, the canonical program `A164907.P5530758451428404576` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164907 has offset 0).

The definition of A164907 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(3*3^n-(-1)^n)/2` (program `A164907.P1332574597559688211`, by `A164907.P1332574597559688211.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A164907.P3911506052679061906

`ogf((1+3x)/(1-2x-3x^2))`
-/

namespace A164907.P3911506052679061906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3] [1, -2, -3] n

end

end A164907.P3911506052679061906

namespace A164907

/-- `ogf((1+3x)/(1-2x-3x^2))` -/
def P3911506052679061906.Spec : Prop :=
  ∀ n, P3911506052679061906.a n = A164907 n

end A164907

/-! ## A164907.P5530758451428404576

`2*a(n-1)+3*a(n-2)` with `a(0)=1, a(1)=5`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A164907

/-- `2*a(n-1)+3*a(n-2)` -/
def P5530758451428404576.Spec : Prop :=
  ∀ n, (P5530758451428404576.a n : ℤ) = A164907 n

theorem P5530758451428404576.correct : P5530758451428404576.Spec := by
  intro n
  simp only [A164907]

end A164907

/-! ## A164907.P1332574597559688211

`(3*3^n-(-1)^n)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A164907.P1332574597559688211
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 * 3 ^ n : ℤ) - (-1) ^ n : ℚ) / 2

end

end A164907.P1332574597559688211

namespace A164907

/-- `(3*3^n-(-1)^n)/2` -/
def P1332574597559688211.Spec : Prop :=
  ∀ n, P1332574597559688211.a n = (A164907 n : ℚ)

theorem P1332574597559688211.correct : P1332574597559688211.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A164907, Nat.add_sub_cancel, A164907.P1332574597559688211.a, A164907.P5530758451428404576.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A164907, Nat.add_sub_cancel, A164907.P1332574597559688211.a, A164907.P5530758451428404576.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A164907

/-! ## A164907.P15041375678907459788

`or(1, ∑[3^n])`
-/

namespace A164907.P15041375678907459788
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A164907.P15041375678907459788

namespace A164907

/-- `or(1, ∑[3^n])` -/
def P15041375678907459788.Spec : Prop :=
  ∀ n, (P15041375678907459788.a n : ℤ) = A164907 n

end A164907

/-! ## A164907.P5674277962348303877

`∑[3^n]+n%2`
-/

namespace A164907.P5674277962348303877
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n % 2

end

end A164907.P5674277962348303877

namespace A164907

/-- `∑[3^n]+n%2` -/
def P5674277962348303877.Spec : Prop :=
  ∀ n, (P5674277962348303877.a n : ℤ) = A164907 n

end A164907

/-! ## A164907.P2206461080640385120

`∑[3^n]+and(1, n)`
-/

namespace A164907.P2206461080640385120
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Nat.land 1 n

end

end A164907.P2206461080640385120

namespace A164907

/-- `∑[3^n]+and(1, n)` -/
def P2206461080640385120.Spec : Prop :=
  ∀ n, (P2206461080640385120.a n : ℤ) = A164907 n

end A164907

/-! ## A164907.P667757395369427992

`xor(and(1, n), ∑[3^n])`
-/

namespace A164907.P667757395369427992
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (Nat.land 1 n) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A164907.P667757395369427992

namespace A164907

/-- `xor(and(1, n), ∑[3^n])` -/
def P667757395369427992.Spec : Prop :=
  ∀ n, (P667757395369427992.a n : ℤ) = A164907 n

end A164907

/-! ## A164907.P16684888274994536688

`2*(3^n-a(n-1)/2)` with `a(0)=1`
-/

namespace A164907.P16684888274994536688
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  2 * ((3 ^ n : ℚ) - a (n - 1) / 2)

end

end A164907.P16684888274994536688

namespace A164907

/-- `2*(3^n-a(n-1)/2)` -/
def P16684888274994536688.Spec : Prop :=
  ∀ n, P16684888274994536688.a n = (A164907 n : ℚ)

end A164907

/-! ## A164907.P6780506382943272635

`3^n+3^n-a(n-1)` with `a(0)=1`
-/

namespace A164907.P6780506382943272635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (3 ^ n : ℤ) + ((3 ^ n : ℤ) - a (n - 1))

end

end A164907.P6780506382943272635

namespace A164907

/-- `3^n+3^n-a(n-1)` -/
def P6780506382943272635.Spec : Prop :=
  ∀ n, P6780506382943272635.a n = A164907 n

end A164907

/-! ## A164907.P1701162936265357015

`3^n-(a(n-1)-3^n)` with `a(0)=1`
-/

namespace A164907.P1701162936265357015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (3 ^ n : ℤ) - (a (n - 1) - (3 ^ n : ℤ))

end

end A164907.P1701162936265357015

namespace A164907

/-- `3^n-(a(n-1)-3^n)` -/
def P1701162936265357015.Spec : Prop :=
  ∀ n, P1701162936265357015.a n = A164907 n

end A164907

/-! ## A164907.P13297063803389331135

`∑{#}[floor((n+1)/2), C(n+1, 2*#)*4^#]`
-/

namespace A164907.P13297063803389331135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℚ) / 2⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, Nat.choose (n + 1) (2 * k) * 4 ^ k

end

end A164907.P13297063803389331135

namespace A164907

/-- `∑{#}[floor((n+1)/2), C(n+1, 2*#)*4^#]` -/
def P13297063803389331135.Spec : Prop :=
  ∀ n, (P13297063803389331135.a n : ℤ) = A164907 n

end A164907

/-! ## A164907.P4691148144324861135

`A046717(n+1)`
-/

namespace A164907.P4691148144324861135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046717 (n + 1)

end

end A164907.P4691148144324861135

namespace A164907

/-- `A046717(n+1)` -/
def P4691148144324861135.Spec : Prop :=
  ∀ n, P4691148144324861135.a n = A164907 n

end A164907

/-! ## A164907.P7911185428525367064

`A080925(n+1)`
-/

namespace A164907.P7911185428525367064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080925 (n + 1)

end

end A164907.P7911185428525367064

namespace A164907

/-- `A080925(n+1)` -/
def P7911185428525367064.Spec : Prop :=
  ∀ n, P7911185428525367064.a n = A164907 n

end A164907

/-! ## A164907.P12294779879279304253

`∑[A105723(n)]+1`
-/

namespace A164907.P12294779879279304253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105723 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A164907.P12294779879279304253

namespace A164907

/-- `∑[A105723(n)]+1` -/
def P12294779879279304253.Spec : Prop :=
  ∀ n, P12294779879279304253.a n = A164907 n

end A164907

/-! ## A164907.P14194370453424003235

`4*A039300(n)-3`
-/

namespace A164907.P14194370453424003235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A039300 n - 3

end

end A164907.P14194370453424003235

namespace A164907

/-- `4*A039300(n)-3` -/
def P14194370453424003235.Spec : Prop :=
  ∀ n, P14194370453424003235.a n = A164907 n

end A164907

/-! ## A164907.P4419198079905042944

`A378796(n+1)-n`
-/

namespace A164907.P4419198079905042944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378796 (n + 1) - (n : ℤ)

end

end A164907.P4419198079905042944

namespace A164907

/-- `A378796(n+1)-n` -/
def P4419198079905042944.Spec : Prop :=
  ∀ n, P4419198079905042944.a n = A164907 n

end A164907

/-! ## A164907.P5800677142833587377

`record[A080925(abs(1-n))]`
-/

namespace A164907.P5800677142833587377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080925 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A164907.P5800677142833587377

namespace A164907

/-- `record[A080925(abs(1-n))]` -/
def P5800677142833587377.Spec : Prop :=
  ∀ n, P5800677142833587377.a n = A164907 n

end A164907

/-! ## A164907.P13934199072650195852

`abs(2-A165553(n+1))`
-/

namespace A164907.P13934199072650195852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A165553 (n + 1)|

end

end A164907.P13934199072650195852

namespace A164907

/-- `abs(2-A165553(n+1))` -/
def P13934199072650195852.Spec : Prop :=
  ∀ n, P13934199072650195852.a n = A164907 n

end A164907

/-! ## A164907.P3531554678955473281

`2*A122983(n+1)-1`
-/

namespace A164907.P3531554678955473281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A122983 (n + 1) - 1

end

end A164907.P3531554678955473281

namespace A164907

/-- `2*A122983(n+1)-1` -/
def P3531554678955473281.Spec : Prop :=
  ∀ n, P3531554678955473281.a n = A164907 n

end A164907

/-! ## A164907.P13541787474213988613

`A140298(A047233(n+1))`
-/

namespace A164907.P13541787474213988613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140298 (A047233 (n + 1)).toNat

end

end A164907.P13541787474213988613

namespace A164907

/-- `A140298(A047233(n+1))` -/
def P13541787474213988613.Spec : Prop :=
  ∀ n, P13541787474213988613.a n = A164907 n

end A164907

/-!
# A164908: a(n) = (3*4^n - 0^n)/2.

The programs for A164908, the canonical program `A164908.P12007200972243363222` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164908 has offset 0).

The definition of A164908 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(3*4^n-0^n)/2` (program `A164908.P7039722243233321175`, by `A164908.P7039722243233321175.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A164908.P13575470244778352429

`ogf((1+2x)/(1-4x))`
-/

namespace A164908.P13575470244778352429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2] [1, -4] n

end

end A164908.P13575470244778352429

namespace A164908

/-- `ogf((1+2x)/(1-4x))` -/
def P13575470244778352429.Spec : Prop :=
  ∀ n, P13575470244778352429.a n = A164908 n

end A164908

/-! ## A164908.P12007200972243363222

`4*a(n-1)` with `a(0)=1, a(1)=6`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A164908

/-- `4*a(n-1)` -/
def P12007200972243363222.Spec : Prop :=
  ∀ n, (P12007200972243363222.a n : ℤ) = A164908 n

theorem P12007200972243363222.correct : P12007200972243363222.Spec := by
  intro n
  simp only [A164908]

end A164908

/-! ## A164908.P15838881486687911866

`floor(6*4^(n-1))`
-/

namespace A164908.P15838881486687911866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊6 * (4 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

end

end A164908.P15838881486687911866

namespace A164908

/-- `floor(6*4^(n-1))` -/
def P15838881486687911866.Spec : Prop :=
  ∀ n, P15838881486687911866.a n = A164908 n

end A164908

/-! ## A164908.P7039722243233321175

`(3*4^n-0^n)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A164908.P7039722243233321175
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 * 4 ^ n : ℤ) - (0 ^ n : ℤ) : ℚ) / 2

end

end A164908.P7039722243233321175

namespace A164908

/-- `(3*4^n-0^n)/2` -/
def P7039722243233321175.Spec : Prop :=
  ∀ n, P7039722243233321175.a n = (A164908 n : ℚ)

theorem P7039722243233321175.correct : P7039722243233321175.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A164908, Nat.add_sub_cancel, A164908.P7039722243233321175.a, A164908.P12007200972243363222.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      simp only [A164908, Nat.add_sub_cancel, A164908.P7039722243233321175.a, A164908.P12007200972243363222.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 1 < m + 2 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A164908

/-! ## A164908.P6986479451873264865

`record[4*T(n-1,k-1)]` with `a(0)=1, a(1)=6`
-/

namespace A164908.P6986479451873264865
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 6] fun n f1 =>
  4 * SequenceMachineLib.triUpLeft f1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A164908.P6986479451873264865

namespace A164908

/-- `record[4*T(n-1,k-1)]` -/
def P6986479451873264865.Spec : Prop :=
  ∀ n, (P6986479451873264865.a n : ℤ) = A164908 n

end A164908

/-! ## A164908.P14665446064272384174

`Δ[lcm(2, 4^n)/2]`
-/

namespace A164908.P14665446064272384174
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 (4 ^ n) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A164908.P14665446064272384174

namespace A164908

/-- `Δ[lcm(2, 4^n)/2]` -/
def P14665446064272384174.Spec : Prop :=
  ∀ n, P14665446064272384174.a n = (A164908 n : ℚ)

end A164908

/-! ## A164908.P2562433556729188351

`Δ[or(4, ceil(4^n/2))]`
-/

namespace A164908.P2562433556729188351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 4 ⌈(4 ^ n : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A164908.P2562433556729188351

namespace A164908

/-- `Δ[or(4, ceil(4^n/2))]` -/
def P2562433556729188351.Spec : Prop :=
  ∀ n, P2562433556729188351.a n = A164908 n

end A164908

/-! ## A164908.P9126195860129006349

`Δ[xor(4, ceil(4^n/2))]`
-/

namespace A164908.P9126195860129006349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 4 ⌈(4 ^ n : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A164908.P9126195860129006349

namespace A164908

/-- `Δ[xor(4, ceil(4^n/2))]` -/
def P9126195860129006349.Spec : Prop :=
  ∀ n, P9126195860129006349.a n = A164908 n

end A164908

/-! ## A164908.P7799943507417497958

`abs(∏[-a(n-1)])` with `a(0)=1, a(1)=6, a(2)=4`
-/

namespace A164908.P7799943507417497958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 6, 4] fun n f1 =>
  -f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∏ j ∈ Finset.range (n + 1), f1 j|

end

end A164908.P7799943507417497958

namespace A164908

/-- `abs(∏[-a(n-1)])` -/
def P7799943507417497958.Spec : Prop :=
  ∀ n, P7799943507417497958.a n = A164908 n

end A164908

/-! ## A164908.P1610804825750952717

`record[2^n*3^(n%2)]`
-/

namespace A164908.P1610804825750952717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n * 3 ^ (n % 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A164908.P1610804825750952717

namespace A164908

/-- `record[2^n*3^(n%2)]` -/
def P1610804825750952717.Spec : Prop :=
  ∀ n, (P1610804825750952717.a n : ℤ) = A164908 n

end A164908

/-! ## A164908.P2305156129222208031

`a(n-1)/(1/2)²` with `a(0)=1, a(1)=6`
-/

namespace A164908.P2305156129222208031
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 6] fun n a =>
  a (n - 1) / ((1 : ℚ) / 2) ^ 2

end

end A164908.P2305156129222208031

namespace A164908

/-- `a(n-1)/(1/2)²` -/
def P2305156129222208031.Spec : Prop :=
  ∀ n, P2305156129222208031.a n = (A164908 n : ℚ)

end A164908

/-! ## A164908.P15677684511882562880

`record[2^n*(2*and(1, n)+1)]`
-/

namespace A164908.P15677684511882562880
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n * (2 * Nat.land 1 n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A164908.P15677684511882562880

namespace A164908

/-- `record[2^n*(2*and(1, n)+1)]` -/
def P15677684511882562880.Spec : Prop :=
  ∀ n, (P15677684511882562880.a n : ℤ) = A164908 n

end A164908

/-! ## A164908.P14435810268518488692

`a(n-1)+floor(a(n-1)+a(n-1)+a(n-1)+2/a(n-1))` with `a(0)=1`
-/

namespace A164908.P14435810268518488692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + ⌊(a (n - 1) : ℚ) + ((a (n - 1) : ℚ) + ((a (n - 1) : ℚ) + 2 / (a (n - 1) : ℚ)))⌋

end

end A164908.P14435810268518488692

namespace A164908

/-- `a(n-1)+floor(a(n-1)+a(n-1)+a(n-1)+2/a(n-1))` -/
def P14435810268518488692.Spec : Prop :=
  ∀ n, P14435810268518488692.a n = A164908 n

end A164908

/-! ## A164908.P2201240241447364051

`Δ[A081294(n)]`
-/

namespace A164908.P2201240241447364051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081294 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A164908.P2201240241447364051

namespace A164908

/-- `Δ[A081294(n)]` -/
def P2201240241447364051.Spec : Prop :=
  ∀ n, P2201240241447364051.a n = A164908 n

end A164908

/-! ## A164908.P3666465082220931965

`record[A081631(n)]`
-/

namespace A164908.P3666465082220931965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081631 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A164908.P3666465082220931965

namespace A164908

/-- `record[A081631(n)]` -/
def P3666465082220931965.Spec : Prop :=
  ∀ n, P3666465082220931965.a n = A164908 n

end A164908

/-! ## A164908.P13781251793051548811

`A003945(2*n)`
-/

namespace A164908.P13781251793051548811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003945 (2 * n)

end

end A164908.P13781251793051548811

namespace A164908

/-- `A003945(2*n)` -/
def P13781251793051548811.Spec : Prop :=
  ∀ n, P13781251793051548811.a n = A164908 n

end A164908

/-! ## A164908.P11930986993678972318

`A122756(2*n)`
-/

namespace A164908.P11930986993678972318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122756 (2 * n)

end

end A164908.P11930986993678972318

namespace A164908

/-- `A122756(2*n)` -/
def P11930986993678972318.Spec : Prop :=
  ∀ n, P11930986993678972318.a n = A164908 n

end A164908

/-! ## A164908.P1492327529988839156

`A280370(2*n)`
-/

namespace A164908.P1492327529988839156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280370 (2 * n)

end

end A164908.P1492327529988839156

namespace A164908

/-- `A280370(2*n)` -/
def P1492327529988839156.Spec : Prop :=
  ∀ n, P1492327529988839156.a n = A164908 n

end A164908

/-! ## A164908.P9965352210903460796

`A282005(2*n)`
-/

namespace A164908.P9965352210903460796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282005 (2 * n)

end

end A164908.P9965352210903460796

namespace A164908

/-- `A282005(2*n)` -/
def P9965352210903460796.Spec : Prop :=
  ∀ n, P9965352210903460796.a n = A164908 n

end A164908

/-! ## A164908.P2090475262350793439

`A074323(4*n)`
-/

namespace A164908.P2090475262350793439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074323 (4 * n)

end

end A164908.P2090475262350793439

namespace A164908

/-- `A074323(4*n)` -/
def P2090475262350793439.Spec : Prop :=
  ∀ n, P2090475262350793439.a n = A164908 n

end A164908

/-!
# A164910: Partial sums of A088748.

The programs for A164910, the canonical program `A164910.P1632267053222193330` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164910 has offset 1).

The definition of A164910 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A173318, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A164910.P1632267053222193330

`n+1+A173318(n)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A164910

/-- `n+1+A173318(n)` -/
def P1632267053222193330.Spec : Prop :=
  ∀ n, P1632267053222193330.a n = A164910 (n + 1)

theorem P1632267053222193330.correct : P1632267053222193330.Spec := by
  intro n
  simp only [A164910, Nat.add_sub_cancel]

end A164910

/-! ## A164910.P2682858334176015941

`∑[a(floor(n/2))+∑[n]%2]` with `a(0)=1`
-/

namespace A164910.P2682858334176015941
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 ⌊(n : ℚ) / 2⌋.toNat + (∑ j ∈ Finset.range (n + 1), f2 j) % 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164910.P2682858334176015941

namespace A164910

/-- `∑[a(floor(n/2))+∑[n]%2]` -/
def P2682858334176015941.Spec : Prop :=
  ∀ n, (P2682858334176015941.a n : ℤ) = A164910 (n + 1)

end A164910

/-! ## A164910.P16016011539092899147

`∑[∑[Δ[xor(n, 2*n-1)]%2]]`
-/

namespace A164910.P16016011539092899147
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ((2 * n : ℤ) - 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f3 (n + 1) - f3 n) 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164910.P16016011539092899147

namespace A164910

/-- `∑[∑[Δ[xor(n, 2*n-1)]%2]]` -/
def P16016011539092899147.Spec : Prop :=
  ∀ n, P16016011539092899147.a n = A164910 (n + 1)

end A164910

/-! ## A164910.P12844827467920546356

`∑[a(n-1-and(n, 2*n))+1]` with `a(0)=1`
-/

namespace A164910.P12844827467920546356
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 ((n : ℤ) - 1 - (Nat.land n (2 * n) : ℤ)).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164910.P12844827467920546356

namespace A164910

/-- `∑[a(n-1-and(n, 2*n))+1]` -/
def P12844827467920546356.Spec : Prop :=
  ∀ n, (P12844827467920546356.a n : ℤ) = A164910 (n + 1)

end A164910

/-! ## A164910.P4075764020095626924

`∑[∑{e}[2*a(n-1-and(n, 2*n)), #]]` with `a(0)=2`
-/

namespace A164910.P4075764020095626924
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f2 =>
  2 * f2 ((n : ℤ) - 1 - (Nat.land n (2 * n) : ℤ)).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164910.P4075764020095626924

namespace A164910

/-- `∑[∑{e}[2*a(n-1-and(n, 2*n)), #]]` -/
def P4075764020095626924.Spec : Prop :=
  ∀ n, (P4075764020095626924.a n : ℤ) = A164910 (n + 1)

end A164910

/-! ## A164910.P17671159372248899275

`∑[2*∑[char[and(n, n-1)+n]]-1-n]`
-/

namespace A164910.P17671159372248899275
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) ((n : ℤ) - 1) + (n : ℤ)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * (∑ j ∈ Finset.range (n + 1), f2 j) : ℕ) : ℤ) - 1 - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164910.P17671159372248899275

namespace A164910

/-- `∑[2*∑[char[and(n, n-1)+n]]-1-n]` -/
def P17671159372248899275.Spec : Prop :=
  ∀ n, P17671159372248899275.a n = A164910 (n + 1)

end A164910

/-! ## A164910.P16611026126307107635

`∑[A088748(n)]`
-/

namespace A164910.P16611026126307107635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088748 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164910.P16611026126307107635

namespace A164910

/-- `∑[A088748(n)]` -/
def P16611026126307107635.Spec : Prop :=
  ∀ n, P16611026126307107635.a n = A164910 (n + 1)

end A164910

/-! ## A164910.P4577852085883045682

`∑[∑[A121238(n)]]`
-/

namespace A164910.P4577852085883045682
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121238 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164910.P4577852085883045682

namespace A164910

/-- `∑[∑[A121238(n)]]` -/
def P4577852085883045682.Spec : Prop :=
  ∀ n, P4577852085883045682.a n = A164910 (n + 1)

end A164910

/-! ## A164910.P1832264790859809987

`∑[A005811(n)+1]`
-/

namespace A164910.P1832264790859809987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164910.P1832264790859809987

namespace A164910

/-- `∑[A005811(n)+1]` -/
def P1832264790859809987.Spec : Prop :=
  ∀ n, P1832264790859809987.a n = A164910 (n + 1)

end A164910

/-! ## A164910.P3777428482781456985

`∑[A136004(n)-3]`
-/

namespace A164910.P3777428482781456985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136004 n - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164910.P3777428482781456985

namespace A164910

/-- `∑[A136004(n)-3]` -/
def P3777428482781456985.Spec : Prop :=
  ∀ n, P3777428482781456985.a n = A164910 (n + 1)

end A164910

/-! ## A164910.P624109444773043824

`∑[∑[A112347(n)]+1]`
-/

namespace A164910.P624109444773043824
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112347 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164910.P624109444773043824

namespace A164910

/-- `∑[∑[A112347(n)]+1]` -/
def P624109444773043824.Spec : Prop :=
  ∀ n, P624109444773043824.a n = A164910 (n + 1)

end A164910

/-! ## A164910.P14030008352394910024

`∑[a(A035327(n))+1]` with `a(0)=1`
-/

namespace A164910.P14030008352394910024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (A035327 n).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164910.P14030008352394910024

namespace A164910

/-- `∑[a(A035327(n))+1]` -/
def P14030008352394910024.Spec : Prop :=
  ∀ n, (P14030008352394910024.a n : ℤ) = A164910 (n + 1)

end A164910

/-! ## A164910.P2934184038024562767

`∑[A088743(n+1)-n]`
-/

namespace A164910.P2934184038024562767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088743 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164910.P2934184038024562767

namespace A164910

/-- `∑[A088743(n+1)-n]` -/
def P2934184038024562767.Spec : Prop :=
  ∀ n, P2934184038024562767.a n = A164910 (n + 1)

end A164910

/-! ## A164910.P11675005357926055413

`∑[1-A236840(n)+n]`
-/

namespace A164910.P11675005357926055413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A236840 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164910.P11675005357926055413

namespace A164910

/-- `∑[1-A236840(n)+n]` -/
def P11675005357926055413.Spec : Prop :=
  ∀ n, P11675005357926055413.a n = A164910 (n + 1)

end A164910

/-! ## A164910.P17435112686232493952

`∑[n+1-2*A255070(n)]`
-/

namespace A164910.P17435112686232493952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - 2 * A255070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164910.P17435112686232493952

namespace A164910

/-- `∑[n+1-2*A255070(n)]` -/
def P17435112686232493952.Spec : Prop :=
  ∀ n, P17435112686232493952.a n = A164910 (n + 1)

end A164910

/-! ## A164910.P16771478285989109525

`∑[a(n-A006257(n))+1]` with `a(0)=1`
-/

namespace A164910.P16771478285989109525
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 ((n : ℤ) - A006257 n).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164910.P16771478285989109525

namespace A164910

/-- `∑[a(n-A006257(n))+1]` -/
def P16771478285989109525.Spec : Prop :=
  ∀ n, (P16771478285989109525.a n : ℤ) = A164910 (n + 1)

end A164910

/-! ## A164910.P3904150583586923144

`a(n-1)+A037834(n)+2` with `a(0)=1`
-/

namespace A164910.P3904150583586923144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A037834 n + 2)

end

end A164910.P3904150583586923144

namespace A164910

/-- `a(n-1)+A037834(n)+2` -/
def P3904150583586923144.Spec : Prop :=
  ∀ n, P3904150583586923144.a n = A164910 (n + 1)

end A164910

/-! ## A164910.P12311217576890071575

`∑[A000005(2^A005811(n))]`
-/

namespace A164910.P12311217576890071575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A005811 n : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164910.P12311217576890071575

namespace A164910

/-- `∑[A000005(2^A005811(n))]` -/
def P12311217576890071575.Spec : Prop :=
  ∀ n, P12311217576890071575.a n = A164910 (n + 1)

end A164910

/-! ## A164910.P468003902652386165

`∑[∑[A134824(A089309(n))]+1]`
-/

namespace A164910.P468003902652386165
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 (A089309 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164910.P468003902652386165

namespace A164910

/-- `∑[∑[A134824(A089309(n))]+1]` -/
def P468003902652386165.Spec : Prop :=
  ∀ n, P468003902652386165.a n = A164910 (n + 1)

end A164910

/-!
# A164912: Dual EKG: a(n) = A008619(A064413(n) - 1).

The programs for A164912, there is no canonical definition to state claims against.
-/

/-! ## A164912.P9931327439152061150

`ceil(A064413(n+1)/2)`
-/

namespace A164912.P9931327439152061150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A064413 (n + 1) : ℚ) / 2⌉

end

end A164912.P9931327439152061150

/-! ## A164912.P10508193051175326226

`A008619(A064413(n+1)-1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A164912.P10508193051175326226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A064413 (n + 1) - 1).toNat

end

end A164912.P10508193051175326226

/-! ## A164912.P15364935127818019328

`ceil(Δ[A065057(n)]/2)`
-/

namespace A164912.P15364935127818019328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (n + 1) - f1 n : ℚ) / 2⌉

end

end A164912.P15364935127818019328

/-! ## A164912.P18255359350093892555

`ceil(sqrt(A104125(1+n))/2)`
-/

namespace A164912.P18255359350093892555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A104125 (1 + n) : ℝ) / 2⌉

end

end A164912.P18255359350093892555

/-! ## A164912.P17947743751174252664

`ceil((n+1+A065519(n+1))/2)`
-/

namespace A164912.P17947743751174252664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n + 1 : ℤ) + A065519 (n + 1) : ℚ) / 2⌉

end

end A164912.P17947743751174252664

/-! ## A164912.P3114429658271622166

`round(A064413(floor(acot(n))+n+1)/2)`
-/

namespace A164912.P3114429658271622166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A064413 (⌊SequenceMachineLib.acot (n : ℝ)⌋ + (n + 1 : ℤ)).toNat : ℚ) / 2)

end

end A164912.P3114429658271622166

/-! ## A164912.P13984755335784422367

`ceil(∑[A064426(A028310(n))]/2)`
-/

namespace A164912.P13984755335784422367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064426 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2⌉

end

end A164912.P13984755335784422367

/-! ## A164912.P2129767520263084929

`round(A064413(n+1)/A040000(n))`
-/

namespace A164912.P2129767520263084929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A064413 (n + 1) : ℚ) / (A040000 n : ℚ))

end

end A164912.P2129767520263084929

/-! ## A164912.P1433870652866170639

`(A195376(n+1)+A064413(n+1))/2`
-/

namespace A164912.P1433870652866170639
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A195376 (n + 1) + A064413 (n + 1) : ℚ) / 2

end

end A164912.P1433870652866170639

/-! ## A164912.P5151687679143454815

`floor((A247004(2*n+1)+A064413(n+1))/2)`
-/

namespace A164912.P5151687679143454815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A247004 (2 * n + 1) + A064413 (n + 1) : ℚ) / 2⌋

end

end A164912.P5151687679143454815

/-! ## A164912.P1551264183819595932

`A065033(A064413(n+1))`
-/

namespace A164912.P1551264183819595932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A064413 (n + 1)).toNat

end

end A164912.P1551264183819595932

/-! ## A164912.P9975831086457766202

`A004526(A064413(n+1)+1)`
-/

namespace A164912.P9975831086457766202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A064413 (n + 1) + 1).toNat

end

end A164912.P9975831086457766202

/-! ## A164912.P9234001656701831715

`A123108(A064413(n+1)+1)`
-/

namespace A164912.P9234001656701831715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A064413 (n + 1) + 1).toNat

end

end A164912.P9234001656701831715

/-! ## A164912.P15057288564738152569

`A004526(A065519(n+1)+n)+1`
-/

namespace A164912.P15057288564738152569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A065519 (n + 1) + (n : ℤ)).toNat + 1

end

end A164912.P15057288564738152569

/-! ## A164912.P3831446121119558360

`(A109613(A064413(n+1)+1)-1)/2`
-/

namespace A164912.P3831446121119558360
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109613 (A064413 (n + 1) + 1).toNat - 1 : ℚ) / 2

end

end A164912.P3831446121119558360

/-! ## A164912.P9060582983554744600

`A246277(A064413(n+1)+A064413(n+1)%2)`
-/

namespace A164912.P9060582983554744600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246277 (A064413 (n + 1) + Int.tmod (A064413 (n + 1)) 2).toNat

end

end A164912.P9060582983554744600

/-! ## A164912.P3423417334254158703

`A002265(2*(A064413(n+1)+1))`
-/

namespace A164912.P3423417334254158703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * (A064413 (n + 1) + 1)).toNat

end

end A164912.P3423417334254158703

/-! ## A164912.P6652282801165801031

`A008624(2*A064413(n+1)+1)`
-/

namespace A164912.P6652282801165801031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (2 * A064413 (n + 1) + 1).toNat

end

end A164912.P6652282801165801031

/-! ## A164912.P15792326398106346053

`A008624(A064413(n+1)+A064413(n+1)+1)`
-/

namespace A164912.P15792326398106346053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (A064413 (n + 1) + (A064413 (n + 1) + 1)).toNat

end

end A164912.P15792326398106346053

/-! ## A164912.P5459540116719654774

`A002265(A064413(n+1)+A064413(n+1)+2)`
-/

namespace A164912.P5459540116719654774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A064413 (n + 1) + (A064413 (n + 1) + 2)).toNat

end

end A164912.P5459540116719654774

/-!
# A164913: Expansion of x/(1-9*x-11*x^2+10*x^3).

The programs for A164913, the canonical program `A164913.P7062682899277527173` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164913 has offset 1).

The definition of A164913 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-9x-11x^2+10x^3))` (program `A164913.P7062682899277527173`, by `A164913.P7062682899277527173.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A164913.P7062682899277527173

`ogf(1/(1-9x-11x^2+10x^3))`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A164913

/-- `ogf(1/(1-9x-11x^2+10x^3))` -/
def P7062682899277527173.Spec : Prop :=
  ∀ n, P7062682899277527173.a n = A164913 (n + 1)

theorem P7062682899277527173.correct : P7062682899277527173.Spec := by
  intro n
  simp only [A164913, Nat.add_sub_cancel]

end A164913

/-! ## A164913.P1347918298381188895

`9*a(n-1)+11*a(n-2)-10*a(n-3)` with `a(0)=1, a(1)=9, a(2)=92`
-/

namespace A164913.P1347918298381188895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 9, 92] fun n a =>
  9 * a (n - 1) + 11 * a (n - 2) - 10 * a (n - 3)

end

end A164913.P1347918298381188895

namespace A164913

/-- `9*a(n-1)+11*a(n-2)-10*a(n-3)` -/
def P1347918298381188895.Spec : Prop :=
  ∀ n, P1347918298381188895.a n = A164913 (n + 1)

end A164913

/-! ## A164913.P14404907582035783881

`10*a(n-1)-Δ[A119282(n)]` with `a(0)=1`
-/

namespace A164913.P14404907582035783881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119282 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  10 * a (n - 1) - (f1 (n + 1) - f1 n)

end

end A164913.P14404907582035783881

namespace A164913

/-- `10*a(n-1)-Δ[A119282(n)]` -/
def P14404907582035783881.Spec : Prop :=
  ∀ n, P14404907582035783881.a n = A164913 (n + 1)

end A164913

/-! ## A164913.P15922718261678297017

`10*a(n-1)+A000045(n+1)*A033999(n)` with `a(0)=1`
-/

namespace A164913.P15922718261678297017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  10 * a (n - 1) + A000045 (n + 1) * A033999 n

end

end A164913.P15922718261678297017

namespace A164913

/-- `10*a(n-1)+A000045(n+1)*A033999(n)` -/
def P15922718261678297017.Spec : Prop :=
  ∀ n, P15922718261678297017.a n = A164913 (n + 1)

end A164913

/-!
# A164914: a(n) = A164853(n+1)/A164853(n).

The programs for A164914, the canonical program `A164914.P18106484241584199065` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164914 has offset 1).

The definition of A164914 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A164853, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A164914.P18106484241584199065

`A164853(n+2)/A164853(n+1)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A164914

/-- `A164853(n+2)/A164853(n+1)` -/
def P18106484241584199065.Spec : Prop :=
  ∀ n, P18106484241584199065.a n = (A164914 (n + 1) : ℚ)

end A164914

/-! ## A164914.P7248796350883291445

`A265576(A140570(n+2))`
-/

namespace A164914.P7248796350883291445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265576 (A140570 (n + 2)).toNat

end

end A164914.P7248796350883291445

namespace A164914

/-- `A265576(A140570(n+2))` -/
def P7248796350883291445.Spec : Prop :=
  ∀ n, P7248796350883291445.a n = A164914 (n + 1)

end A164914

/-! ## A164914.P2131211264406429753

`A014963(lcm(2, A001358(n+2))/2)`
-/

namespace A164914.P2131211264406429753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (SequenceMachineLib.roundAway ((Int.lcm 2 (A001358 (n + 2)) : ℚ) / 2)).toNat

end

end A164914.P2131211264406429753

namespace A164914

/-- `A014963(lcm(2, A001358(n+2))/2)` -/
def P2131211264406429753.Spec : Prop :=
  ∀ n, P2131211264406429753.a n = A164914 (n + 1)

end A164914

/-! ## A164914.P12895902914813157026

`A014963(A000265(A001358(n+2)))`
-/

namespace A164914.P12895902914813157026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A000265 (A001358 (n + 2)).toNat).toNat

end

end A164914.P12895902914813157026

namespace A164914

/-- `A014963(A000265(A001358(n+2)))` -/
def P12895902914813157026.Spec : Prop :=
  ∀ n, P12895902914813157026.a n = A164914 (n + 1)

end A164914

/-! ## A164914.P17821961458027675993

`A014963(A000265(Δ[A062198(n+1)]))`
-/

namespace A164914.P17821961458027675993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062198 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A000265 (f1 (n + 1) - f1 n).toNat).toNat

end

end A164914.P17821961458027675993

namespace A164914

/-- `A014963(A000265(Δ[A062198(n+1)]))` -/
def P17821961458027675993.Spec : Prop :=
  ∀ n, P17821961458027675993.a n = A164914 (n + 1)

end A164914

/-! ## A164914.P12349508616383357257

`A014963(A060819(A075818(n+2)))`
-/

namespace A164914.P12349508616383357257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A060819 (A075818 (n + 2)).toNat).toNat

end

end A164914.P12349508616383357257

namespace A164914

/-- `A014963(A060819(A075818(n+2)))` -/
def P12349508616383357257.Spec : Prop :=
  ∀ n, P12349508616383357257.a n = A164914 (n + 1)

end A164914

/-! ## A164914.P4040597403157016255

`A014963(A004526(lcm(2, A001358(n+2))))`
-/

namespace A164914.P4040597403157016255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A004526 (Int.lcm 2 (A001358 (n + 2)))).toNat

end

end A164914.P4040597403157016255

namespace A164914

/-- `A014963(A004526(lcm(2, A001358(n+2))))` -/
def P4040597403157016255.Spec : Prop :=
  ∀ n, P4040597403157016255.a n = A164914 (n + 1)

end A164914

/-! ## A164914.P16979594792844067315

`A014963(A176570(n+2))`
-/

namespace A164914.P16979594792844067315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A176570 (n + 2)).toNat

end

end A164914.P16979594792844067315

namespace A164914

/-- `A014963(A176570(n+2))` -/
def P16979594792844067315.Spec : Prop :=
  ∀ n, P16979594792844067315.a n = A164914 (n + 1)

end A164914

/-! ## A164914.P3348492855081805290

`ratio[A164853(n+1)]`
-/

namespace A164914.P3348492855081805290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164853 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A164914.P3348492855081805290

namespace A164914

/-- `ratio[A164853(n+1)]` -/
def P3348492855081805290.Spec : Prop :=
  ∀ n, P3348492855081805290.a n = (A164914 (n + 1) : ℚ)

end A164914

/-!
# A164916: Denominators of a BBP series for Pi/4.

The programs for A164916, there is no canonical definition to state claims against.
-/

/-! ## A164916.P1716082691189730787

`A023900(A003200(n)*A138261(n+2))`
-/

namespace A164916.P1716082691189730787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023900 (A003200 n * A138261 (n + 2)).toNat

end

end A164916.P1716082691189730787

/-!
# A164917: Smallest number of steps to reach prime(n) by applying the map x->A060308(x) starting from any member of A164368.

The programs for A164917, there is no canonical definition to state claims against.
-/

/-! ## A164917.P4665311277196671374

`A089263(record[and(2*n, -n)])%A132300(n+5)`
-/

namespace A164917.P4665311277196671374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (2 * n : ℤ) (-(n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A089263 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat) (A132300 (n + 5))

end

end A164917.P4665311277196671374

/-!
# A164919: Number of simple connected cubic nonhamiltonian graphs on 2n nodes.

The programs for A164919, there is no canonical definition to state claims against.
-/

/-! ## A164919.P5684694025343674370

`A088183(A352659(n)+1)`
-/

namespace A164919.P5684694025343674370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088183 (A352659 n + 1).toNat

end

end A164919.P5684694025343674370

/-! ## A164919.P6098400571762274000

`A059995(A140966(n)+A020120(n))`
-/

namespace A164919.P6098400571762274000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (A140966 n + A020120 n).toNat

end

end A164919.P6098400571762274000

/-! ## A164919.P3321149053985066440

`A376966(n+1)+A376965(A376955(n))`
-/

namespace A164919.P3321149053985066440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376966 (n + 1) + A376965 (A376955 n).toNat

end

end A164919.P3321149053985066440

/-!
# A164921: a(1)=0, a(2)=1. For n >=3, a(n) = the smallest integer > a(n-1) that is coprime to every sum of any two distinct earlier terms of this sequence.

The programs for A164921, the canonical program `A164921.P12966913102758247233` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164921 has offset 1).

The definition of A164921 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2773 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A164921.P12966913102758247233

`A151800(2+a(n-1))` with `a(0)=0, a(1)=1, a(2)=2`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A164921

/-- `A151800(2+a(n-1))` -/
def P12966913102758247233.Spec : Prop :=
  ∀ n, P12966913102758247233.a n = A164921 (n + 1)

theorem P12966913102758247233.correct : P12966913102758247233.Spec := by
  intro n
  simp only [A164921, Nat.add_sub_cancel]

end A164921

/-! ## A164921.P6760856039566401324

`A151800(A007429(a(n-1)))` with `a(0)=0, a(1)=1`
-/

namespace A164921.P6760856039566401324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A151800 (A007429 (a (n - 1)).toNat).toNat

end

end A164921.P6760856039566401324

namespace A164921

/-- `A151800(A007429(a(n-1)))` -/
def P6760856039566401324.Spec : Prop :=
  ∀ n, P6760856039566401324.a n = A164921 (n + 1)

end A164921

/-! ## A164921.P4517581019498340042

`A066168(a(n-1))` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A164921.P4517581019498340042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  A066168 (a (n - 1)).toNat

end

end A164921.P4517581019498340042

namespace A164921

/-- `A066168(a(n-1))` -/
def P4517581019498340042.Spec : Prop :=
  ∀ n, P4517581019498340042.a n = A164921 (n + 1)

end A164921

/-! ## A164921.P7652876262352537989

`A007918(a(n-1)+3)` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A164921.P7652876262352537989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  A007918 (a (n - 1) + 3).toNat

end

end A164921.P7652876262352537989

namespace A164921

/-- `A007918(a(n-1)+3)` -/
def P7652876262352537989.Spec : Prop :=
  ∀ n, P7652876262352537989.a n = A164921 (n + 1)

end A164921

/-! ## A164921.P3908503453496021350

`A007918(A007430(a(n-1)))` with `a(0)=0, a(1)=1`
-/

namespace A164921.P3908503453496021350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A007918 (A007430 (a (n - 1)).toNat).toNat

end

end A164921.P3908503453496021350

namespace A164921

/-- `A007918(A007430(a(n-1)))` -/
def P3908503453496021350.Spec : Prop :=
  ∀ n, P3908503453496021350.a n = A164921 (n + 1)

end A164921

/-! ## A164921.P2354136708253451517

`A151800(A060648(a(n-1)))` with `a(0)=0, a(1)=1`
-/

namespace A164921.P2354136708253451517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A151800 (A060648 (a (n - 1)).toNat).toNat

end

end A164921.P2354136708253451517

namespace A164921

/-- `A151800(A060648(a(n-1)))` -/
def P2354136708253451517.Spec : Prop :=
  ∀ n, P2354136708253451517.a n = A164921 (n + 1)

end A164921

/-! ## A164921.P139024897311355033

`A151800(A191161(a(n-1)))` with `a(0)=0, a(1)=1`
-/

namespace A164921.P139024897311355033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A151800 (A191161 (a (n - 1)).toNat).toNat

end

end A164921.P139024897311355033

namespace A164921

/-- `A151800(A191161(a(n-1)))` -/
def P139024897311355033.Spec : Prop :=
  ∀ n, P139024897311355033.a n = A164921 (n + 1)

end A164921

/-! ## A164921.P8676801855295140850

`record[A007918(n)-A014681(A117909(n))]`
-/

namespace A164921.P8676801855295140850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 n - A014681 (A117909 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A164921.P8676801855295140850

namespace A164921

/-- `record[A007918(n)-A014681(A117909(n))]` -/
def P8676801855295140850.Spec : Prop :=
  ∀ n, P8676801855295140850.a n = A164921 (n + 1)

end A164921

/-! ## A164921.P3656604512800848906

`record[and(A051698(n), A092487(n+1))]`
-/

namespace A164921.P3656604512800848906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A051698 n) (A092487 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A164921.P3656604512800848906

namespace A164921

/-- `record[and(A051698(n), A092487(n+1))]` -/
def P3656604512800848906.Spec : Prop :=
  ∀ n, P3656604512800848906.a n = A164921 (n + 1)

end A164921

/-! ## A164921.P17663081522796841387

`eq[char[A151800(3*n+1)], A003415(n)]`
-/

namespace A164921.P17663081522796841387
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (3 * n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A164921.P17663081522796841387

namespace A164921

/-- `eq[char[A151800(3*n+1)], A003415(n)]` -/
def P17663081522796841387.Spec : Prop :=
  ∀ n, (P17663081522796841387.a n : ℤ) = A164921 (n + 1)

end A164921

/-! ## A164921.P13177582495042255125

`record[A007918(A175856(n+1))%A007918(n)]`
-/

namespace A164921.P13177582495042255125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007918 (A175856 (n + 1)).toNat) (A007918 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A164921.P13177582495042255125

namespace A164921

/-- `record[A007918(A175856(n+1))%A007918(n)]` -/
def P13177582495042255125.Spec : Prop :=
  ∀ n, P13177582495042255125.a n = A164921 (n + 1)

end A164921

/-! ## A164921.P13935404577948632528

`A151800(A321348(a(n-1)))` with `a(0)=0, a(1)=1`
-/

namespace A164921.P13935404577948632528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A151800 (A321348 (a (n - 1)).toNat).toNat

end

end A164921.P13935404577948632528

namespace A164921

/-- `A151800(A321348(a(n-1)))` -/
def P13935404577948632528.Spec : Prop :=
  ∀ n, P13935404577948632528.a n = A164921 (n + 1)

end A164921

/-! ## A164921.P2435373382689083430

`A007918(A003415(lcm(3, a(n-1))))` with `a(0)=0, a(1)=1`
-/

namespace A164921.P2435373382689083430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A007918 (A003415 (Int.lcm 3 (a (n - 1)))).toNat

end

end A164921.P2435373382689083430

namespace A164921

/-- `A007918(A003415(lcm(3, a(n-1))))` -/
def P2435373382689083430.Spec : Prop :=
  ∀ n, P2435373382689083430.a n = A164921 (n + 1)

end A164921

/-! ## A164921.P14886238239362166277

`A159477(a(n-1)+3)` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A164921.P14886238239362166277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  A159477 (a (n - 1) + 3).toNat

end

end A164921.P14886238239362166277

namespace A164921

/-- `A159477(a(n-1)+3)` -/
def P14886238239362166277.Spec : Prop :=
  ∀ n, P14886238239362166277.a n = A164921 (n + 1)

end A164921

/-!
# A164922: Those positive integers that occur at least once as a sum of any two distinct terms of sequence A164921.

The programs for A164922, there is no canonical definition to state claims against.
-/

/-! ## A164922.P16401884724010149455

`comp[A164923(n+1)-1]+1`
-/

namespace A164922.P16401884724010149455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164923 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A164922.P16401884724010149455

/-! ## A164922.P15029171384765633846

`comp[A023443(A164923(n+1))]+1`
-/

namespace A164922.P15029171384765633846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A164923 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A164922.P15029171384765633846

/-! ## A164922.P14339068599159817780

`eq[char[A164923(n+1)], A151933(n)]`
-/

namespace A164922.P14339068599159817780
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164923 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A164922.P14339068599159817780

/-! ## A164922.P13462748998342634980

`lt[char[A164923(n+1)]*A187829(n+1), n]`
-/

namespace A164922.P13462748998342634980
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164923 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A187829 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A164922.P13462748998342634980

/-! ## A164922.P3924158340607353591

`lt[A033567(n), A216252(A236267(n))]`
-/

namespace A164922.P3924158340607353591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033567 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216252 (A236267 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A164922.P3924158340607353591

/-!
# A164923: Those positive integers that do not occur as a sum of any two distinct terms of sequence A164921.

The programs for A164923, there is no canonical definition to state claims against.
-/

/-! ## A164923.P9815255983559361188

`eq[char[A164922(n+1)], A151933(n)]`
-/

namespace A164923.P9815255983559361188
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164922 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A164923.P9815255983559361188

/-! ## A164923.P5361588667034068512

`lt[A216252(A236267(n)), A033567(n)]`
-/

namespace A164923.P5361588667034068512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216252 (A236267 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033567 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A164923.P5361588667034068512

/-! ## A164923.P12586362668180897956

`lt[A105806(A105770(2*(n+1))), A105782(n)]`
-/

namespace A164923.P12586362668180897956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105806 (A105770 (2 * (n + 1))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105782 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A164923.P12586362668180897956

/-!
# A164924: Denominators of Egyptian fraction for Pi/4 whose partial sums are the convergents.

The programs for A164924, there is no canonical definition to state claims against.
-/

/-! ## A164924.P2253009293741774944

`A153239(A074600(n))*A335837(n)`
-/

namespace A164924.P2253009293741774944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153239 (A074600 n).toNat * A335837 n

end

end A164924.P2253009293741774944

/-!
# A164925: Array, binomial(j-i,j), read by rising antidiagonals.

The programs for A164925, the canonical program `A164925.P8432119740919332270` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164925 has offset 0).

The definition of A164925 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A164925.P8432119740919332270

`A109466(A061579(n-A003056(n)))`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A164925

/-- `A109466(A061579(n-A003056(n)))` -/
def P8432119740919332270.Spec : Prop :=
  ∀ n, P8432119740919332270.a n = A164925 n

theorem P8432119740919332270.correct : P8432119740919332270.Spec := by
  intro n
  simp only [A164925]

end A164925

/-! ## A164925.P16486771142143882439

`A097807(A061579(n))*A320508(n)`
-/

namespace A164925.P16486771142143882439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 (A061579 n).toNat * A320508 n

end

end A164925.P16486771142143882439

namespace A164925

/-- `A097807(A061579(n))*A320508(n)` -/
def P16486771142143882439.Spec : Prop :=
  ∀ n, P16486771142143882439.a n = A164925 n

end A164925

/-! ## A164925.P13186622650496266814

`A109466(((n+1)²%A007401(n+2))%(n+1))`
-/

namespace A164925.P13186622650496266814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109466 (Int.tmod (Int.tmod ((n + 1) ^ 2 : ℤ) (A007401 (n + 2))) (n + 1 : ℤ)).toNat

end

end A164925.P13186622650496266814

namespace A164925

/-- `A109466(((n+1)²%A007401(n+2))%(n+1))` -/
def P13186622650496266814.Spec : Prop :=
  ∀ n, P13186622650496266814.a n = A164925 n

end A164925

/-! ## A164925.P8625888429828729671

`A109466((A007401(n+2)*A007401(n+1))%(n+1))`
-/

namespace A164925.P8625888429828729671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109466 (Int.tmod (A007401 (n + 2) * A007401 (n + 1)) (n + 1 : ℤ)).toNat

end

end A164925.P8625888429828729671

namespace A164925

/-- `A109466((A007401(n+2)*A007401(n+1))%(n+1))` -/
def P8625888429828729671.Spec : Prop :=
  ∀ n, P8625888429828729671.a n = A164925 n

end A164925

/-! ## A164925.P2429196671760017023

`A004718(A059268(n))*A320508(n)`
-/

namespace A164925.P2429196671760017023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004718 (A059268 n).toNat * A320508 n

end

end A164925.P2429196671760017023

namespace A164925

/-- `A004718(A059268(n))*A320508(n)` -/
def P2429196671760017023.Spec : Prop :=
  ∀ n, P2429196671760017023.a n = A164925 n

end A164925

/-!
# A164926: Least prime p such that x^2+x+p produces primes for x=0..n-1 and composite for x=n.

The programs for A164926, there is no canonical definition to state claims against.
-/

/-! ## A164926.P18077255517342053303

`A381878(A153273(n+2))`
-/

namespace A164926.P18077255517342053303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381878 (A153273 (n + 2)).toNat

end

end A164926.P18077255517342053303

/-!
# A164927: Sum of the odd prime divisors of numbers with all odd prime divisors of the form 4k+1.

The programs for A164927, there is no canonical definition to state claims against.
-/

/-! ## A164927.P12428261186619263729

`A005069(lt[A005085(n+1), A005069(n+1)]+1)`
-/

namespace A164927.P12428261186619263729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005085 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005069 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005069 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1)

end

end A164927.P12428261186619263729

/-! ## A164927.P10492695304133144810

`A005078(lt[A005085(n+1), A005078(n+1)]+1)`
-/

namespace A164927.P10492695304133144810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005085 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005078 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005078 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1)

end

end A164927.P10492695304133144810

/-! ## A164927.P15684621592787372171

`A005078(A065331(n+1)*A221265(n+1))`
-/

namespace A164927.P15684621592787372171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005078 (A065331 (n + 1) * A221265 (n + 1)).toNat

end

end A164927.P15684621592787372171

/-! ## A164927.P5650401835275390137

`A005078(A072438(n+1)*A221265(n+1))`
-/

namespace A164927.P5650401835275390137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005078 (A072438 (n + 1) * A221265 (n + 1)).toNat

end

end A164927.P5650401835275390137

/-! ## A164927.P229792896416790818

`A005078(A221265(n+1))+A000038(A036561(n))`
-/

namespace A164927.P229792896416790818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005078 (A221265 (n + 1)).toNat + A000038 (A036561 n).toNat

end

end A164927.P229792896416790818

/-! ## A164927.P9638121014032924362

`A005078(A221265(n+1))%A156119(A028310(n))`
-/

namespace A164927.P9638121014032924362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005078 (A221265 (n + 1)).toNat) (A156119 (A028310 n).toNat)

end

end A164927.P9638121014032924362

/-! ## A164927.P17871086000932975003

`A005078(A221265(n+1))+A000038(A208527(n+1))`
-/

namespace A164927.P17871086000932975003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005078 (A221265 (n + 1)).toNat + A000038 (A208527 (n + 1)).toNat

end

end A164927.P17871086000932975003

/-! ## A164927.P17262373206051041652

`A185245(A067924(n+1))+A005078(A221265(n+1))`
-/

namespace A164927.P17262373206051041652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185245 (A067924 (n + 1)).toNat + A005078 (A221265 (n + 1)).toNat

end

end A164927.P17262373206051041652

/-! ## A164927.P14107042713440884952

`A014963(A089967(n+1))*A005078(A221265(n+1))`
-/

namespace A164927.P14107042713440884952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A089967 (n + 1)).toNat * A005078 (A221265 (n + 1)).toNat

end

end A164927.P14107042713440884952

/-!
# A164928: Sum of the odd prime divisors of numbers whose odd prime divisors are all of the form 4k+3.

The programs for A164928, there is no canonical definition to state claims against.
-/

/-! ## A164928.P3151437371248168173

`A005069(A221264(n+1)%A156119(n+1))`
-/

namespace A164928.P3151437371248168173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005069 (Int.tmod (A221264 (n + 1)) (A156119 (n + 1))).toNat

end

end A164928.P3151437371248168173

/-! ## A164928.P17894960734558068487

`A005069(A221264(n+1)²)`
-/

namespace A164928.P17894960734558068487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005069 (A221264 (n + 1) ^ 2).toNat

end

end A164928.P17894960734558068487

/-! ## A164928.P5249711557378387314

`A005082(A221264(n+1)²)`
-/

namespace A164928.P5249711557378387314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005082 (A221264 (n + 1) ^ 2).toNat

end

end A164928.P5249711557378387314

/-! ## A164928.P4055960918264789099

`A005069(A221264(n+1)^A262438(n))`
-/

namespace A164928.P4055960918264789099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005069 (SequenceMachineLib.roundAway ((A221264 (n + 1) : ℚ) ^ (A262438 n : ℤ))).toNat

end

end A164928.P4055960918264789099

/-! ## A164928.P6959971573161691651

`A005082(A221264(n+1)^A262438(n))`
-/

namespace A164928.P6959971573161691651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005082 (SequenceMachineLib.roundAway ((A221264 (n + 1) : ℚ) ^ (A262438 n : ℤ))).toNat

end

end A164928.P6959971573161691651

/-! ## A164928.P258331648886591187

`A005069(A221264(n+1)*A221264(n+1))`
-/

namespace A164928.P258331648886591187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005069 (A221264 (n + 1) * A221264 (n + 1)).toNat

end

end A164928.P258331648886591187

/-!
# A164929: Sum of odd prime divisors of numbers with all odd prime divisors of the form 6k+1.

The programs for A164929, there is no canonical definition to state claims against.
-/

/-! ## A164929.P1645119540612860979

`p?[A110665(A093395(n+3))]`
-/

namespace A164929.P1645119540612860979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110665 (A093395 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A164929.P1645119540612860979

/-! ## A164929.P5965873168357025667

`p?[A248909(A093395(n+4))]`
-/

namespace A164929.P5965873168357025667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248909 (A093395 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A164929.P5965873168357025667

/-! ## A164929.P1027733994641213840

`p?[C((n+1)/2^val(n+1, 2), ((n+1)/2^val(n+1, 2))%6)]`
-/

namespace A164929.P1027733994641213840
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat (Int.tmod (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))) 6).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A164929.P1027733994641213840

/-! ## A164929.P14271265736870567274

`p?[C((n+1)/(or(n, n+1)-n), ((n+1)/xor(n, or(n, n+1)))%6)]`
-/

namespace A164929.P14271265736870567274
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((Nat.lor n (n + 1) : ℤ) - (n : ℤ) : ℚ))).toNat (Int.tmod (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Nat.xor n (Nat.lor n (n + 1)) : ℚ))) 6).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A164929.P14271265736870567274

/-!
# A164930: Sum of odd prime divisors of numbers with all odd prime divisors of the form 6k+5.

The programs for A164930, there is no canonical definition to state claims against.
-/

/-! ## A164930.P17552606859505052009

`p?[A140214(n+1)-A103709(n+1)]`
-/

namespace A164930.P17552606859505052009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140214 (n + 1) - A103709 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A164930.P17552606859505052009

/-! ## A164930.P15277808654989125997

`p?[C(A170825(n+1), A143201(n+1))]`
-/

namespace A164930.P15277808654989125997
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A170825 (n + 1)).toNat (A143201 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A164930.P15277808654989125997

/-! ## A164930.P781682864547489742

`p?[A140210(A140211(n+1))*A170825(n+1)]`
-/

namespace A164930.P781682864547489742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140210 (A140211 (n + 1)).toNat * A170825 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A164930.P781682864547489742

/-! ## A164930.P11451145053178096528

`p?[A170825(A098902(n+1)²)]`
-/

namespace A164930.P11451145053178096528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170825 (A098902 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A164930.P11451145053178096528

/-!
# A164931: n times the n-th noncomposite.

The programs for A164931, the canonical program `A164931.P11447713035022642152` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164931 has offset 1).

The definition of A164931 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A164931.P11447713035022642152

`(n+1)*A008578(n+1)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A164931

/-- `(n+1)*A008578(n+1)` -/
def P11447713035022642152.Spec : Prop :=
  ∀ n, P11447713035022642152.a n = A164931 (n + 1)

theorem P11447713035022642152.correct : P11447713035022642152.Spec := by
  intro n
  simp only [A164931, Nat.add_sub_cancel]

end A164931

/-! ## A164931.P10866142304871917497

`∑[A092929(n+1)]`
-/

namespace A164931.P10866142304871917497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092929 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164931.P10866142304871917497

namespace A164931

/-- `∑[A092929(n+1)]` -/
def P10866142304871917497.Spec : Prop :=
  ∀ n, P10866142304871917497.a n = A164931 (n + 1)

end A164931

/-! ## A164931.P10639633344217262174

`A008578(1+n)*(n+1)`
-/

namespace A164931.P10639633344217262174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (1 + n) * (n + 1 : ℤ)

end

end A164931.P10639633344217262174

namespace A164931

/-- `A008578(1+n)*(n+1)` -/
def P10639633344217262174.Spec : Prop :=
  ∀ n, P10639633344217262174.a n = A164931 (n + 1)

theorem P10639633344217262174.correct : P10639633344217262174.Spec := by
  intro n
  simp only [A164931, Nat.add_sub_cancel, A164931.P10639633344217262174.a, A164931.P11447713035022642152.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A164931

/-! ## A164931.P3045943333687587843

`(n+1)*(A028815(n)-1)`
-/

namespace A164931.P3045943333687587843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A028815 n - 1)

end

end A164931.P3045943333687587843

namespace A164931

/-- `(n+1)*(A028815(n)-1)` -/
def P3045943333687587843.Spec : Prop :=
  ∀ n, P3045943333687587843.a n = A164931 (n + 1)

theorem P3045943333687587843.correct : P3045943333687587843.Spec := by
  intro n
  simp only [A164931, Nat.add_sub_cancel, A164931.P3045943333687587843.a, A164931.P11447713035022642152.a, A008578, A008578.P3639467937083264764.a, A028815, A028815.P810525423351225743.a, A158611, A158611.P9275629407611603775.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A164931

/-! ## A164931.P12068936559770528344

`(n+1)*sqrt(A280076(n+1))`
-/

namespace A164931.P12068936559770528344
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) * Real.sqrt (A280076 (n + 1) : ℝ)

end

end A164931.P12068936559770528344

namespace A164931

/-- `(n+1)*sqrt(A280076(n+1))` -/
def P12068936559770528344.Spec : Prop :=
  ∀ n, P12068936559770528344.a n = (A164931 (n + 1) : ℝ)

end A164931

/-! ## A164931.P7407634999636797714

`(n+1)*record[A259153(n+1)]`
-/

namespace A164931.P7407634999636797714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259153 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A164931.P7407634999636797714

namespace A164931

/-- `(n+1)*record[A259153(n+1)]` -/
def P7407634999636797714.Spec : Prop :=
  ∀ n, P7407634999636797714.a n = A164931 (n + 1)

end A164931

/-! ## A164931.P11231655516787589063

`(n+1)/2*A001747(n+1)`
-/

namespace A164931.P11231655516787589063
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 2 * (A001747 (n + 1) : ℚ)

end

end A164931.P11231655516787589063

namespace A164931

/-- `(n+1)/2*A001747(n+1)` -/
def P11231655516787589063.Spec : Prop :=
  ∀ n, P11231655516787589063.a n = (A164931 (n + 1) : ℚ)

theorem P11231655516787589063.correct : P11231655516787589063.Spec := by
  intro n
  simp only [A164931, Nat.add_sub_cancel, A164931.P11231655516787589063.a, A164931.P11447713035022642152.a, A001747, A001747.P198467477273308856.a, A008578, A008578.P3639467937083264764.a, A158611, A158611.P9275629407611603775.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A164931

/-! ## A164931.P1024272885118245710

`(n+1)/3*A112773(n+1)`
-/

namespace A164931.P1024272885118245710
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 3 * (A112773 (n + 1) : ℚ)

end

end A164931.P1024272885118245710

namespace A164931

/-- `(n+1)/3*A112773(n+1)` -/
def P1024272885118245710.Spec : Prop :=
  ∀ n, P1024272885118245710.a n = (A164931 (n + 1) : ℚ)

theorem P1024272885118245710.correct : P1024272885118245710.Spec := by
  intro n
  simp only [A164931, Nat.add_sub_cancel, A164931.P1024272885118245710.a, A164931.P11447713035022642152.a, A008578, A008578.P3639467937083264764.a, A112773, A112773.P44553575666953962.a, A158611, A158611.P9275629407611603775.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A164931

/-! ## A164931.P1942645512493501194

`(n+1)*(A167136(n+1)-n)`
-/

namespace A164931.P1942645512493501194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A167136 (n + 1) - (n : ℤ))

end

end A164931.P1942645512493501194

namespace A164931

/-- `(n+1)*(A167136(n+1)-n)` -/
def P1942645512493501194.Spec : Prop :=
  ∀ n, P1942645512493501194.a n = A164931 (n + 1)

theorem P1942645512493501194.correct : P1942645512493501194.Spec := by
  intro n
  simp only [A164931, Nat.add_sub_cancel, A164931.P1942645512493501194.a, A164931.P11447713035022642152.a, A008578, A008578.P3639467937083264764.a, A167136, A167136.P17162096113252504066.a, A158611, A158611.P9275629407611603775.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A164931

/-! ## A164931.P823030122328150337

`(n+1)*(A162177(n+1)+n+1)`
-/

namespace A164931.P823030122328150337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A162177 (n + 1) + (n + 1 : ℤ))

end

end A164931.P823030122328150337

namespace A164931

/-- `(n+1)*(A162177(n+1)+n+1)` -/
def P823030122328150337.Spec : Prop :=
  ∀ n, P823030122328150337.a n = A164931 (n + 1)

theorem P823030122328150337.correct : P823030122328150337.Spec := by
  intro n
  simp only [A164931, Nat.add_sub_cancel, A164931.P823030122328150337.a, A164931.P11447713035022642152.a, A008578, A008578.P3639467937083264764.a, A162177, A162177.P8282933836838632122.a, A158611, A158611.P9275629407611603775.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A164931

/-! ## A164931.P13402936662535197636

`(n+1)*(A090178(n+1)-(n+1))`
-/

namespace A164931.P13402936662535197636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A090178 (n + 1) - (n + 1 : ℤ))

end

end A164931.P13402936662535197636

namespace A164931

/-- `(n+1)*(A090178(n+1)-(n+1))` -/
def P13402936662535197636.Spec : Prop :=
  ∀ n, P13402936662535197636.a n = A164931 (n + 1)

theorem P13402936662535197636.correct : P13402936662535197636.Spec := by
  intro n
  simp only [A164931, Nat.add_sub_cancel, A164931.P13402936662535197636.a, A164931.P11447713035022642152.a, A008578, A008578.P3639467937083264764.a, A090178, A090178.P3922482968985292774.a, A158611, A158611.P9275629407611603775.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A164931

/-! ## A164931.P13604828509809840573

`(n+1)*A000040(gcd(n, a(n-1)))` with `a(0)=1`
-/

namespace A164931.P13604828509809840573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n + 1 : ℤ) * A000040 (Int.gcd (n : ℤ) (a (n - 1)))

end

end A164931.P13604828509809840573

namespace A164931

/-- `(n+1)*A000040(gcd(n, a(n-1)))` -/
def P13604828509809840573.Spec : Prop :=
  ∀ n, P13604828509809840573.a n = A164931 (n + 1)

end A164931

/-! ## A164931.P9820722716755409328

`Δ[a(n-1)+n*A000040(n-1)]` with `a(0)=0, a(1)=1`
-/

namespace A164931.P9820722716755409328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 (n - 1) + (n : ℤ) * A000040 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A164931.P9820722716755409328

namespace A164931

/-- `Δ[a(n-1)+n*A000040(n-1)]` -/
def P9820722716755409328.Spec : Prop :=
  ∀ n, P9820722716755409328.a n = A164931 (n + 1)

end A164931

/-! ## A164931.P15280396304144110187

`(n+1)*A000040(C(n-1, a(n-1))+n)` with `a(0)=1`
-/

namespace A164931.P15280396304144110187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n + 1 : ℤ) * A000040 (Nat.choose ((n : ℤ) - 1).toNat (a (n - 1)).toNat + n)

end

end A164931.P15280396304144110187

namespace A164931

/-- `(n+1)*A000040(C(n-1, a(n-1))+n)` -/
def P15280396304144110187.Spec : Prop :=
  ∀ n, P15280396304144110187.a n = A164931 (n + 1)

end A164931

/-! ## A164931.P15231282242568654238

`A372054(n)+A057428(n)`
-/

namespace A164931.P15231282242568654238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372054 n + A057428 n

end

end A164931.P15231282242568654238

namespace A164931

/-- `A372054(n)+A057428(n)` -/
def P15231282242568654238.Spec : Prop :=
  ∀ n, P15231282242568654238.a n = A164931 (n + 1)

end A164931

/-! ## A164931.P9422546248937682927

`A372054(n)-A057427(n)`
-/

namespace A164931.P9422546248937682927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372054 n - A057427 n

end

end A164931.P9422546248937682927

namespace A164931

/-- `A372054(n)-A057427(n)` -/
def P9422546248937682927.Spec : Prop :=
  ∀ n, P9422546248937682927.a n = A164931 (n + 1)

end A164931

/-! ## A164931.P5862751285940604053

`(n+1)*A158611(n+2)`
-/

namespace A164931.P5862751285940604053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A158611 (n + 2)

end

end A164931.P5862751285940604053

namespace A164931

/-- `(n+1)*A158611(n+2)` -/
def P5862751285940604053.Spec : Prop :=
  ∀ n, P5862751285940604053.a n = A164931 (n + 1)

end A164931

/-! ## A164931.P1717352066439070830

`(n+1)*Δ[A175965(n+1)]`
-/

namespace A164931.P1717352066439070830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175965 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f1 (n + 1) - f1 n)

end

end A164931.P1717352066439070830

namespace A164931

/-- `(n+1)*Δ[A175965(n+1)]` -/
def P1717352066439070830.Spec : Prop :=
  ∀ n, P1717352066439070830.a n = A164931 (n + 1)

end A164931

/-! ## A164931.P11918716922309427439

`(n+1)*(A173137(n+2)-(n+2))`
-/

namespace A164931.P11918716922309427439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A173137 (n + 2) - (n + 2 : ℤ))

end

end A164931.P11918716922309427439

namespace A164931

/-- `(n+1)*(A173137(n+2)-(n+2))` -/
def P11918716922309427439.Spec : Prop :=
  ∀ n, P11918716922309427439.a n = A164931 (n + 1)

theorem P11918716922309427439.correct : P11918716922309427439.Spec := by
  intro n
  simp only [A164931, Nat.add_sub_cancel, A164931.P11918716922309427439.a, A164931.P11447713035022642152.a, A008578, A008578.P3639467937083264764.a, A173137, A173137.P14698543260873224992.a, A000027, A000027.P10331202704469894836.a, A158611, A158611.P9275629407611603775.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A164931

/-! ## A164931.P9592170990965395767

`(n+1)*record[A028691(n+1)]`
-/

namespace A164931.P9592170990965395767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028691 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A164931.P9592170990965395767

namespace A164931

/-- `(n+1)*record[A028691(n+1)]` -/
def P9592170990965395767.Spec : Prop :=
  ∀ n, P9592170990965395767.a n = A164931 (n + 1)

end A164931

/-! ## A164931.P6084748099287241437

`(n+1)*record[2*n+1-∑{d}[n, #]]`
-/

namespace A164931.P6084748099287241437
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - ((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A164931.P6084748099287241437

namespace A164931

/-- `(n+1)*record[2*n+1-∑{d}[n, #]]` -/
def P6084748099287241437.Spec : Prop :=
  ∀ n, P6084748099287241437.a n = A164931 (n + 1)

end A164931

/-!
# A164932: Prime numbers in which the sum of the largest digit and the smallest digit is also a prime.

The programs for A164932, there is no canonical definition to state claims against.
-/

/-! ## A164932.P10294554643273040907

`∪[A006530(A091939(n+1)²), A162658(n+1)]`
-/

namespace A164932.P10294554643273040907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A091939 (n + 1) ^ 2).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162658 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A164932.P10294554643273040907

/-! ## A164932.P14742241317708006915

`or(A088136(n+1), A281116(A046717(n)))`
-/

namespace A164932.P14742241317708006915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A088136 (n + 1)) (A281116 (A046717 n).toNat)

end

end A164932.P14742241317708006915

/-! ## A164932.P12410318931819614354

`or(A091367(n+1), A384916(A340920(n)))`
-/

namespace A164932.P12410318931819614354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A091367 (n + 1)) (A384916 (A340920 n).toNat)

end

end A164932.P12410318931819614354

/-! ## A164932.P17974988147857725695

`or(A034363(A363740(n+1)), A088136(n+1))`
-/

namespace A164932.P17974988147857725695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A034363 (A363740 (n + 1)).toNat) (A088136 (n + 1))

end

end A164932.P17974988147857725695

/-! ## A164932.P17360722258236617436

`or(A091367(n+1), A117546(A008957(2*n+3)))`
-/

namespace A164932.P17360722258236617436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A091367 (n + 1)) (A117546 (A008957 (2 * n + 3)).toNat)

end

end A164932.P17360722258236617436

/-!
# A164933: Word structures of length n using a 10-ary alphabet, including a special character, which may occur in the leftmost word position only if n=1.

The programs for A164933, there is no canonical definition to state claims against.
-/

/-! ## A164933.P17808914729803910668

`A019590(n+1)+Δ[A164864(n)]`
-/

namespace A164933.P17808914729803910668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164864 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019590 (n + 1) + (f1 (n + 1) - f1 n)

end

end A164933.P17808914729803910668

/-! ## A164933.P630107536798957504

`Δ[A164864(n)]+A008683(A253909(n))`
-/

namespace A164933.P630107536798957504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164864 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + A008683 (A253909 n).toNat

end

end A164933.P630107536798957504

/-! ## A164933.P2867369229508466756

`A000035(A053158(n+1))+Δ[A164864(n)]`
-/

namespace A164933.P2867369229508466756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164864 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A053158 (n + 1)).toNat + (f1 (n + 1) - f1 n)

end

end A164933.P2867369229508466756

/-! ## A164933.P10290517284663785891

`A000035(A062354(n+1))+Δ[A164864(n)]`
-/

namespace A164933.P10290517284663785891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164864 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A062354 (n + 1)).toNat + (f1 (n + 1) - f1 n)

end

end A164933.P10290517284663785891

/-! ## A164933.P8261870655394261865

`A010054(A008527(n))+Δ[A164864(n)]`
-/

namespace A164933.P8261870655394261865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164864 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (A008527 n).toNat + (f1 (n + 1) - f1 n)

end

end A164933.P8261870655394261865

/-!
# A164934: Number of different ways to select 3 disjoint subsets from {1..n} with equal element sum.

The programs for A164934, there is no canonical definition to state claims against.
-/

/-! ## A164934.P1319427523932265957

`A000196(floor(n!/10))`
-/

namespace A164934.P1319427523932265957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 ⌊(Nat.factorial n : ℚ) / 10⌋.toNat

end

end A164934.P1319427523932265957

/-! ## A164934.P13131716443959974991

`floor(A221839(n+1)/7)`
-/

namespace A164934.P13131716443959974991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A221839 (n + 1) : ℚ) / 7⌋

end

end A164934.P13131716443959974991

/-! ## A164934.P18160834898256001537

`A168201(A050242(n))`
-/

namespace A164934.P18160834898256001537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168201 (A050242 n).toNat

end

end A164934.P18160834898256001537

/-! ## A164934.P7027038598561401815

`A073750(A340333(n))`
-/

namespace A164934.P7027038598561401815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073750 (A340333 n).toNat

end

end A164934.P7027038598561401815

/-! ## A164934.P6822446188747953024

`A122311(A309302(n))`
-/

namespace A164934.P6822446188747953024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122311 (A309302 n).toNat

end

end A164934.P6822446188747953024

/-!
# A164937: Near-repdigit primes.

The programs for A164937, there is no canonical definition to state claims against.
-/

/-! ## A164937.P15959933588465194214

`∩[A030291(n+1), A210666(n+1)]`
-/

namespace A164937.P15959933588465194214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030291 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210666 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A164937.P15959933588465194214

/-! ## A164937.P14306583412667878487

`∩[A210666(n+1), A235154(n+1)]`
-/

namespace A164937.P14306583412667878487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210666 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235154 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A164937.P14306583412667878487

/-! ## A164937.P15919841753513682288

`∩[A182051(n+1), A210666(n+1)]`
-/

namespace A164937.P15919841753513682288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182051 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210666 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A164937.P15919841753513682288

/-! ## A164937.P5944684879353744992

`p?[A210666(n+1)]`
-/

namespace A164937.P5944684879353744992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210666 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A164937.P5944684879353744992

/-! ## A164937.P3531226420317890396

`p?[A000034(2*n)*A210666(A008619(2*n))]`
-/

namespace A164937.P3531226420317890396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n) * A210666 (A008619 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A164937.P3531226420317890396

/-! ## A164937.P617140358298647534

`p?[A000034(n)²*A210666(A008619(n))]`
-/

namespace A164937.P617140358298647534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n ^ 2 * A210666 (A008619 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A164937.P617140358298647534

/-! ## A164937.P12514820110231388533

`∩[A000040(n+1), A210666(n+1)]`
-/

namespace A164937.P12514820110231388533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210666 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A164937.P12514820110231388533

/-! ## A164937.P8591983905171839187

`∩[A004139(n+1), A210666(n+1)]`
-/

namespace A164937.P8591983905171839187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210666 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A164937.P8591983905171839187

/-! ## A164937.P16263461502120552790

`∩[A006005(n+1), A210666(n+1)]`
-/

namespace A164937.P16263461502120552790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210666 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A164937.P16263461502120552790

/-! ## A164937.P2093346607103140101

`∩[A008578(n+1), A210666(n+1)]`
-/

namespace A164937.P2093346607103140101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210666 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A164937.P2093346607103140101

/-! ## A164937.P15418509037274760554

`∩[A045319(n+1), A210666(n+1)]`
-/

namespace A164937.P15418509037274760554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210666 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A164937.P15418509037274760554

/-! ## A164937.P4365394537506591337

`∩[A045344(n+1), A210666(n+1)]`
-/

namespace A164937.P4365394537506591337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210666 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A164937.P4365394537506591337

/-! ## A164937.P14430648291286049382

`∩[A046022(n+1), A210666(n+1)]`
-/

namespace A164937.P14430648291286049382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210666 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A164937.P14430648291286049382

/-! ## A164937.P14091331121647359796

`∩[A049573(n+1), A210666(n+1)]`
-/

namespace A164937.P14091331121647359796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049573 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210666 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A164937.P14091331121647359796

/-! ## A164937.P17640558638040080087

`∩[A051948(n+1), A210666(n+1)]`
-/

namespace A164937.P17640558638040080087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210666 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A164937.P17640558638040080087

/-! ## A164937.P11451761100371663578

`∩[A053813(n+1), A210666(n+1)]`
-/

namespace A164937.P11451761100371663578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210666 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A164937.P11451761100371663578

/-! ## A164937.P2041420847409897579

`∩[A054723(n+1), A210666(n+1)]`
-/

namespace A164937.P2041420847409897579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054723 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210666 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A164937.P2041420847409897579

/-! ## A164937.P1210199412194320254

`∩[A065091(n+1), A210666(n+1)]`
-/

namespace A164937.P1210199412194320254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210666 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A164937.P1210199412194320254

/-! ## A164937.P7989158559918828726

`∩[A066050(n+1), A210666(n+1)]`
-/

namespace A164937.P7989158559918828726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066050 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210666 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A164937.P7989158559918828726

/-! ## A164937.P16797105344445662402

`∩[A066542(n+1), A210666(n+1)]`
-/

namespace A164937.P16797105344445662402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066542 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210666 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A164937.P16797105344445662402

/-!
# A164938: a(n) = (n^5 - n)/10, which is always an integer.

The programs for A164938, the canonical program `A164938.P1069292342534480461` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164938 has offset 1).

The definition of A164938 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A164938.anchor (n : ℕ) : (A164938 (n + 1) : ℚ) = (((n + 1) ^ 5 : ℤ) - (n + 1 : ℤ) : ℚ) / 10` in `Proof.A164.A164938`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A164938.P1069292342534480461

`((n+1)^5-(n+1))/10`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A164938

/-- `((n+1)^5-(n+1))/10` -/
def P1069292342534480461.Spec : Prop :=
  ∀ n, P1069292342534480461.a n = (A164938 (n + 1) : ℚ)

end A164938

/-! ## A164938.P976465454891762801

`ogf((3x+6x^2+3x^3)/(1-6x+15x^2-20x^3+15x^4-6x^5+x^6))`
-/

namespace A164938.P976465454891762801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 3, 6, 3] [1, -6, 15, -20, 15, -6, 1] n

end

end A164938.P976465454891762801

namespace A164938

/-- `ogf((3x+6x^2+3x^3)/(1-6x+15x^2-20x^3+15x^4-6x^5+x^6))` -/
def P976465454891762801.Spec : Prop :=
  ∀ n, P976465454891762801.a n = A164938 (n + 1)

end A164938

/-! ## A164938.P16793879662559771979

`∑[C(1+∑[2*n], 2)]`
-/

namespace A164938.P16793879662559771979
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (1 + ∑ j ∈ Finset.range (n + 1), f2 j) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164938.P16793879662559771979

namespace A164938

/-- `∑[C(1+∑[2*n], 2)]` -/
def P16793879662559771979.Spec : Prop :=
  ∀ n, (P16793879662559771979.a n : ℤ) = A164938 (n + 1)

end A164938

/-! ## A164938.P5793477914541155805

`a(n-1)+C(n²+1+n, 2)` with `a(0)=0`
-/

namespace A164938.P5793477914541155805
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + Nat.choose (n ^ 2 + 1 + n) 2

end

end A164938.P5793477914541155805

namespace A164938

/-- `a(n-1)+C(n²+1+n, 2)` -/
def P5793477914541155805.Spec : Prop :=
  ∀ n, (P5793477914541155805.a n : ℤ) = A164938 (n + 1)

end A164938

/-! ## A164938.P10136032843310967632

`a(n-1)+(n²+1+n)*∑[n]` with `a(0)=0`
-/

namespace A164938.P10136032843310967632
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (n ^ 2 + 1 + n) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A164938.P10136032843310967632

namespace A164938

/-- `a(n-1)+(n²+1+n)*∑[n]` -/
def P10136032843310967632.Spec : Prop :=
  ∀ n, (P10136032843310967632.a n : ℤ) = A164938 (n + 1)

end A164938

/-! ## A164938.P2848187601881817591

`∑[A110450(n)]`
-/

namespace A164938.P2848187601881817591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110450 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164938.P2848187601881817591

namespace A164938

/-- `∑[A110450(n)]` -/
def P2848187601881817591.Spec : Prop :=
  ∀ n, P2848187601881817591.a n = A164938 (n + 1)

end A164938

/-! ## A164938.P10140813467902942467

`∑[∑[A061317(n)]]`
-/

namespace A164938.P10140813467902942467
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061317 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164938.P10140813467902942467

namespace A164938

/-- `∑[∑[A061317(n)]]` -/
def P10140813467902942467.Spec : Prop :=
  ∀ n, P10140813467902942467.a n = A164938 (n + 1)

end A164938

/-! ## A164938.P4247225047023625151

`∑[A384288(n)/4]`
-/

namespace A164938.P4247225047023625151
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A384288 n : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164938.P4247225047023625151

namespace A164938

/-- `∑[A384288(n)/4]` -/
def P4247225047023625151.Spec : Prop :=
  ∀ n, P4247225047023625151.a n = (A164938 (n + 1) : ℚ)

end A164938

/-! ## A164938.P6990555380817842686

`A176060(n)+A079547(n+1)`
-/

namespace A164938.P6990555380817842686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176060 n + A079547 (n + 1)

end

end A164938.P6990555380817842686

namespace A164938

/-- `A176060(n)+A079547(n+1)` -/
def P6990555380817842686.Spec : Prop :=
  ∀ n, P6990555380817842686.a n = A164938 (n + 1)

end A164938

/-! ## A164938.P7046130051351938961

`A277935(n+1)+A004302(n)`
-/

namespace A164938.P7046130051351938961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277935 (n + 1) + A004302 n

end

end A164938.P7046130051351938961

namespace A164938

/-- `A277935(n+1)+A004302(n)` -/
def P7046130051351938961.Spec : Prop :=
  ∀ n, P7046130051351938961.a n = A164938 (n + 1)

end A164938

/-! ## A164938.P13035593689302828976

`A086689(n+1)-A187673(n)`
-/

namespace A164938.P13035593689302828976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086689 (n + 1) - A187673 n

end

end A164938.P13035593689302828976

namespace A164938

/-- `A086689(n+1)-A187673(n)` -/
def P13035593689302828976.Spec : Prop :=
  ∀ n, P13035593689302828976.a n = A164938 (n + 1)

end A164938

/-! ## A164938.P3588551898459883353

`A000292(n)+2*A024166(n)`
-/

namespace A164938.P3588551898459883353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 n + 2 * A024166 n

end

end A164938.P3588551898459883353

namespace A164938

/-- `A000292(n)+2*A024166(n)` -/
def P3588551898459883353.Spec : Prop :=
  ∀ n, P3588551898459883353.a n = A164938 (n + 1)

end A164938

/-! ## A164938.P403357519404939877

`A231303(n)+2*A000292(n)`
-/

namespace A164938.P403357519404939877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231303 n + 2 * A000292 n

end

end A164938.P403357519404939877

namespace A164938

/-- `A231303(n)+2*A000292(n)` -/
def P403357519404939877.Spec : Prop :=
  ∀ n, P403357519404939877.a n = A164938 (n + 1)

end A164938

/-! ## A164938.P3843175886689285122

`A372751(n+1)-A061803(n+1)`
-/

namespace A164938.P3843175886689285122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372751 (n + 1) - A061803 (n + 1)

end

end A164938.P3843175886689285122

namespace A164938

/-- `A372751(n+1)-A061803(n+1)` -/
def P3843175886689285122.Spec : Prop :=
  ∀ n, P3843175886689285122.a n = A164938 (n + 1)

end A164938

/-! ## A164938.P11102974847444085256

`A277935(n+1)+A000217(n)*A000292(n)`
-/

namespace A164938.P11102974847444085256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277935 (n + 1) + A000217 n * A000292 n

end

end A164938.P11102974847444085256

namespace A164938

/-- `A277935(n+1)+A000217(n)*A000292(n)` -/
def P11102974847444085256.Spec : Prop :=
  ∀ n, P11102974847444085256.a n = A164938 (n + 1)

end A164938

/-! ## A164938.P18166701092212739843

`A131176(n+1)+1`
-/

namespace A164938.P18166701092212739843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131176 (n + 1) + 1

end

end A164938.P18166701092212739843

namespace A164938

/-- `A131176(n+1)+1` -/
def P18166701092212739843.Spec : Prop :=
  ∀ n, P18166701092212739843.a n = A164938 (n + 1)

end A164938

/-! ## A164938.P13684131384749998350

`∑[3*A006325(n+1)]`
-/

namespace A164938.P13684131384749998350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A006325 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164938.P13684131384749998350

namespace A164938

/-- `∑[3*A006325(n+1)]` -/
def P13684131384749998350.Spec : Prop :=
  ∀ n, P13684131384749998350.a n = A164938 (n + 1)

end A164938

/-! ## A164938.P17484628410158574843

`3*(A131211(n+1)+1)`
-/

namespace A164938.P17484628410158574843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A131211 (n + 1) + 1)

end

end A164938.P17484628410158574843

namespace A164938

/-- `3*(A131211(n+1)+1)` -/
def P17484628410158574843.Spec : Prop :=
  ∀ n, P17484628410158574843.a n = A164938 (n + 1)

end A164938

/-! ## A164938.P8868896527567070081

`A112851(n+1)+A112851(n)`
-/

namespace A164938.P8868896527567070081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112851 (n + 1) + A112851 n

end

end A164938.P8868896527567070081

namespace A164938

/-- `A112851(n+1)+A112851(n)` -/
def P8868896527567070081.Spec : Prop :=
  ∀ n, P8868896527567070081.a n = A164938 (n + 1)

end A164938

/-!
# A164939: These are prime numbers p such that p^3 + p^2 + p + 2 is also prime.

The programs for A164939, there is no canonical definition to state claims against.
-/

/-! ## A164939.P14247596670544806947

`floor(root(A347075(n+1), 3))`
-/

namespace A164939.P14247596670544806947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A347075 (n + 1) : ℝ) ^ (1 / (3 : ℝ))⌋

end

end A164939.P14247596670544806947

/-! ## A164939.P8628855376458484941

`p?[2*A247350(n+1)-1]`
-/

namespace A164939.P8628855376458484941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A247350 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A164939.P8628855376458484941

/-! ## A164939.P8447829151690615923

`A006530(round(root(A347075(n+1), 3)))`
-/

namespace A164939.P8447829151690615923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway ((A347075 (n + 1) : ℝ) ^ (1 / (3 : ℝ)))).toNat

end

end A164939.P8447829151690615923

/-! ## A164939.P17882871230147934971

`p?[A004273(A247350(n+1))]`
-/

namespace A164939.P17882871230147934971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A247350 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A164939.P17882871230147934971

/-! ## A164939.P14147891110079535934

`p?[A005408(A247350(n+1)-1)]`
-/

namespace A164939.P14147891110079535934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A247350 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A164939.P14147891110079535934

/-!
# A164940: Partial sums of A138202.

The programs for A164940, there is no canonical definition to state claims against.
-/

/-! ## A164940.P6204652594030118669

`∑[A138202(n)]`
-/

namespace A164940.P6204652594030118669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138202 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164940.P6204652594030118669

/-! ## A164940.P17692686691373749234

`∑[A005875(n)²]`
-/

namespace A164940.P17692686691373749234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005875 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164940.P17692686691373749234

/-! ## A164940.P6894432314083519754

`∑[A213384(n)²]`
-/

namespace A164940.P6894432314083519754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213384 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164940.P6894432314083519754

/-! ## A164940.P2163093982290942179

`∑[(A084101(n)*A246631(n))²]`
-/

namespace A164940.P2163093982290942179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A084101 n * A246631 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164940.P2163093982290942179

/-! ## A164940.P17807171268806884756

`∑[A005875(n)^A020639(2*(n+1))]`
-/

namespace A164940.P17807171268806884756
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005875 n : ℚ) ^ (A020639 (2 * (n + 1)) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164940.P17807171268806884756

/-! ## A164940.P16406740418025040998

`∑[A014455(2*n)²]`
-/

namespace A164940.P16406740418025040998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014455 (2 * n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164940.P16406740418025040998

/-! ## A164940.P7832567767320150313

`∑[A005875(n)*A014455(2*n)]`
-/

namespace A164940.P7832567767320150313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005875 n * A014455 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164940.P7832567767320150313

/-! ## A164940.P13730458951458328196

`∑[A004015(2*n)²]`
-/

namespace A164940.P13730458951458328196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004015 (2 * n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164940.P13730458951458328196

/-! ## A164940.P17523524729124017632

`∑[A004015(n+n)^2]`
-/

namespace A164940.P17523524729124017632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004015 (n + n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164940.P17523524729124017632

/-! ## A164940.P14137112717067252557

`∑[A004013(4*n)²]`
-/

namespace A164940.P14137112717067252557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004013 (4 * n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164940.P14137112717067252557

/-! ## A164940.P17167619634532869695

`∑[A004013(A008574(n))²]+1`
-/

namespace A164940.P17167619634532869695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004013 (A008574 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A164940.P17167619634532869695

/-! ## A164940.P5044006022041576540

`∑[A212885(4*n)²]`
-/

namespace A164940.P5044006022041576540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212885 (4 * n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164940.P5044006022041576540

/-! ## A164940.P5104466032563755388

`∑[A246631(4*n)²]`
-/

namespace A164940.P5104466032563755388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246631 (4 * n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164940.P5104466032563755388

/-! ## A164940.P15324487867396317814

`∑[A089804(5*n)²]`
-/

namespace A164940.P15324487867396317814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089804 (5 * n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164940.P15324487867396317814

/-! ## A164940.P4427930676665752752

`∑[A014457(A008590(n))²]`
-/

namespace A164940.P4427930676665752752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014457 (A008590 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164940.P4427930676665752752

/-! ## A164940.P9374803918981199927

`∑[A319078(4*n)²]`
-/

namespace A164940.P9374803918981199927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319078 (4 * n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164940.P9374803918981199927

/-! ## A164940.P16826687887468560090

`∑[A005875(n)*A319078(4*n)]`
-/

namespace A164940.P16826687887468560090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005875 n * A319078 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164940.P16826687887468560090

/-! ## A164940.P8784203298888433127

`∑[A014455(2*n)*A319078(4*n)]`
-/

namespace A164940.P8784203298888433127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014455 (2 * n) * A319078 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164940.P8784203298888433127

/-! ## A164940.P17204251055690576901

`∑[A212885(4*n)*A319078(4*n)]`
-/

namespace A164940.P17204251055690576901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212885 (4 * n) * A319078 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164940.P17204251055690576901

/-! ## A164940.P9441419313433726125

`∑[A005925(4*4*n)²]`
-/

namespace A164940.P9441419313433726125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005925 (4 * (4 * n)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164940.P9441419313433726125

/-!
# A164941: a(n) = Sum_{d|n} phi(n/d)^(d-1).

The programs for A164941, the canonical program `A164941.P9658922276367282840` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164941 has offset 1).

The definition of A164941 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A164941.P9658922276367282840

`∑{d}[n+1, A000010((n+1)/#)^(#-1)]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A164941

/-- `∑{d}[n+1, A000010((n+1)/#)^(#-1)]` -/
def P9658922276367282840.Spec : Prop :=
  ∀ n, P9658922276367282840.a n = (A164941 (n + 1) : ℚ)

end A164941

/-! ## A164941.P7501497344812184143

`A126864(A148539(n))+A051953(n+1)`
-/

namespace A164941.P7501497344812184143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126864 (A148539 n).toNat + A051953 (n + 1)

end

end A164941.P7501497344812184143

namespace A164941

/-- `A126864(A148539(n))+A051953(n+1)` -/
def P7501497344812184143.Spec : Prop :=
  ∀ n, P7501497344812184143.a n = A164941 (n + 1)

end A164941

/-! ## A164941.P3497072523366197594

`A094853(A332295(n))+A051953(n+1)`
-/

namespace A164941.P3497072523366197594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094853 (A332295 n).toNat + A051953 (n + 1)

end

end A164941.P3497072523366197594

namespace A164941

/-- `A094853(A332295(n))+A051953(n+1)` -/
def P3497072523366197594.Spec : Prop :=
  ∀ n, P3497072523366197594.a n = A164941 (n + 1)

end A164941

/-! ## A164941.P6314120071336744181

`A329382(A110866(n+1))+A051953(n+1)`
-/

namespace A164941.P6314120071336744181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329382 (A110866 (n + 1)).toNat + A051953 (n + 1)

end

end A164941.P6314120071336744181

namespace A164941

/-- `A329382(A110866(n+1))+A051953(n+1)` -/
def P6314120071336744181.Spec : Prop :=
  ∀ n, P6314120071336744181.a n = A164941 (n + 1)

end A164941

/-!
# A164942: Triangle, read by rows, T(n,k) = (-1)^k*binomial(n, k)*3^(n-k).

The programs for A164942, the canonical program `A164942.P12590566707080083921` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164942 has offset 0).

The definition of A164942 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A164942.P12590566707080083921

`3*T(n-1,k)-T(n-1,k-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A164942

/-- `3*T(n-1,k)-T(n-1,k-1)` -/
def P12590566707080083921.Spec : Prop :=
  ∀ n, P12590566707080083921.a n = A164942 n

theorem P12590566707080083921.correct : P12590566707080083921.Spec := by
  intro n
  simp only [A164942]

end A164942

/-! ## A164942.P16073600017776826727

`(-1)^col(n)*C(row(n), col(n))*3^(row(n)-col(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A164942.P16073600017776826727
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((-1) ^ SequenceMachineLib.triCol n * (Nat.choose (SequenceMachineLib.triRow n) (SequenceMachineLib.triCol n) : ℤ) : ℚ) * (3 : ℚ) ^ ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) : ℤ)

end

end A164942.P16073600017776826727

namespace A164942

/-- `(-1)^col(n)*C(row(n), col(n))*3^(row(n)-col(n))` -/
def P16073600017776826727.Spec : Prop :=
  ∀ n, P16073600017776826727.a n = (A164942 n : ℚ)

end A164942

/-! ## A164942.P6520554503107693821

`T(n-1,k)+T(n-1,k)+T(n-1,k)-T(n-1,k-1)` with `a(0)=1`
-/

namespace A164942.P6520554503107693821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triUp a n + (SequenceMachineLib.triUp a n + (SequenceMachineLib.triUp a n - SequenceMachineLib.triUpLeft a n))

end

end A164942.P6520554503107693821

namespace A164942

/-- `T(n-1,k)+T(n-1,k)+T(n-1,k)-T(n-1,k-1)` -/
def P6520554503107693821.Spec : Prop :=
  ∀ n, P6520554503107693821.a n = A164942 n

theorem P6520554503107693821.correct : P6520554503107693821.Spec := by
  intro n
  simp only [A164942, Nat.add_sub_cancel, A164942.P6520554503107693821.a, A164942.P12590566707080083921.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A164942

/-! ## A164942.P674350026612189842

`A303901(n)/A059268(n)`
-/

namespace A164942.P674350026612189842
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A303901 n : ℚ) / (A059268 n : ℚ)

end

end A164942.P674350026612189842

namespace A164942

/-- `A303901(n)/A059268(n)` -/
def P674350026612189842.Spec : Prop :=
  ∀ n, P674350026612189842.a n = (A164942 n : ℚ)

end A164942

/-! ## A164942.P608611104626014810

`A027465(n)*A033999(A002262(n))`
-/

namespace A164942.P608611104626014810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027465 n * A033999 (A002262 n).toNat

end

end A164942.P608611104626014810

namespace A164942

/-- `A027465(n)*A033999(A002262(n))` -/
def P608611104626014810.Spec : Prop :=
  ∀ n, P608611104626014810.a n = A164942 n

end A164942

/-! ## A164942.P1453126295156445089

`A038220(n)/A122803(A002262(n))`
-/

namespace A164942.P1453126295156445089
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038220 n : ℚ) / (A122803 (A002262 n).toNat : ℚ)

end

end A164942.P1453126295156445089

namespace A164942

/-- `A038220(n)/A122803(A002262(n))` -/
def P1453126295156445089.Spec : Prop :=
  ∀ n, P1453126295156445089.a n = (A164942 n : ℚ)

end A164942

/-! ## A164942.P5429143622908342328

`A027465(n)*A165326(A002260(n+1))`
-/

namespace A164942.P5429143622908342328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027465 n * A165326 (A002260 (n + 1)).toNat

end

end A164942.P5429143622908342328

namespace A164942

/-- `A027465(n)*A165326(A002260(n+1))` -/
def P5429143622908342328.Spec : Prop :=
  ∀ n, P5429143622908342328.a n = A164942 n

end A164942

/-! ## A164942.P16792755848165847400

`A027465(n)*A164677(A158405(n+1))`
-/

namespace A164942.P16792755848165847400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027465 n * A164677 (A158405 (n + 1)).toNat

end

end A164942.P16792755848165847400

namespace A164942

/-- `A027465(n)*A164677(A158405(n+1))` -/
def P16792755848165847400.Spec : Prop :=
  ∀ n, P16792755848165847400.a n = A164942 n

end A164942

/-! ## A164942.P6942381130395073538

`A038255(n)/A038231(n)*A065109(n)`
-/

namespace A164942.P6942381130395073538
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038255 n : ℚ) / (A038231 n : ℚ) * (A065109 n : ℚ)

end

end A164942.P6942381130395073538

namespace A164942

/-- `A038255(n)/A038231(n)*A065109(n)` -/
def P6942381130395073538.Spec : Prop :=
  ∀ n, P6942381130395073538.a n = (A164942 n : ℚ)

end A164942

/-! ## A164942.P10100184335480413217

`A027465(n)*A164948(n)/abs(A164948(n))`
-/

namespace A164942.P10100184335480413217
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027465 n * A164948 n : ℚ) / (|A164948 n| : ℚ)

end

end A164942.P10100184335480413217

namespace A164942

/-- `A027465(n)*A164948(n)/abs(A164948(n))` -/
def P10100184335480413217.Spec : Prop :=
  ∀ n, P10100184335480413217.a n = (A164942 n : ℚ)

end A164942

/-! ## A164942.P8309443977021771002

`A075498(n+1)/A163626(n)*A008279(n)`
-/

namespace A164942.P8309443977021771002
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075498 (n + 1) : ℚ) / (A163626 n : ℚ) * (A008279 n : ℚ)

end

end A164942.P8309443977021771002

namespace A164942

/-- `A075498(n+1)/A163626(n)*A008279(n)` -/
def P8309443977021771002.Spec : Prop :=
  ∀ n, P8309443977021771002.a n = (A164942 n : ℚ)

end A164942

/-! ## A164942.P6073376109618022291

`A027465(n)*A165591(A059268(n))`
-/

namespace A164942.P6073376109618022291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027465 n * A165591 (A059268 n).toNat

end

end A164942.P6073376109618022291

namespace A164942

/-- `A027465(n)*A165591(A059268(n))` -/
def P6073376109618022291.Spec : Prop :=
  ∀ n, P6073376109618022291.a n = A164942 n

end A164942

/-! ## A164942.P16389814002692288738

`A013610(A061579(n))*A309873(A059268(n))`
-/

namespace A164942.P16389814002692288738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013610 (A061579 n).toNat * A309873 (A059268 n).toNat

end

end A164942.P16389814002692288738

namespace A164942

/-- `A013610(A061579(n))*A309873(A059268(n))` -/
def P16389814002692288738.Spec : Prop :=
  ∀ n, P16389814002692288738.a n = A164942 n

end A164942

/-! ## A164942.P2188560639402394736

`A038220(n)/A059268(n)*A004718(A059268(n))`
-/

namespace A164942.P2188560639402394736
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038220 n : ℚ) / (A059268 n : ℚ) * (A004718 (A059268 n).toNat : ℚ)

end

end A164942.P2188560639402394736

namespace A164942

/-- `A038220(n)/A059268(n)*A004718(A059268(n))` -/
def P2188560639402394736.Spec : Prop :=
  ∀ n, P2188560639402394736.a n = (A164942 n : ℚ)

end A164942

/-!
# A164943: Decimal value of the concatenation of first n odd numbers in binary.

The programs for A164943, there is no canonical definition to state claims against.
-/

/-! ## A164943.P2213959866124734273

`a(n-1)*A062383(2*n)+2*n+1` with `a(0)=1`
-/

namespace A164943.P2213959866124734273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A062383 (2 * n) + (2 * n + 1 : ℤ)

end

end A164943.P2213959866124734273

/-!
# A164944: Decimal value of the concatenation of first n even numbers in binary.

The programs for A164944, there is no canonical definition to state claims against.
-/

/-! ## A164944.P12719452355609785252

`2*(a(n-1)*A062383(n+1)+n+1)` with `a(0)=2`
-/

namespace A164944.P12719452355609785252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  2 * (a (n - 1) * A062383 (n + 1) + (n + 1 : ℤ))

end

end A164944.P12719452355609785252

/-! ## A164944.P10288937208144521090

`2*(a(n-1)*A072376(4*(n+1))+n+1)` with `a(0)=2`
-/

namespace A164944.P10288937208144521090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  2 * (a (n - 1) * A072376 (4 * (n + 1)) + (n + 1 : ℤ))

end

end A164944.P10288937208144521090

/-! ## A164944.P3537806471134950727

`2*(a(n-1)*∏[A014963(2*(n+1))]+n+1)` with `a(0)=2`
-/

namespace A164944.P3537806471134950727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  2 * (a (n - 1) * (∏ j ∈ Finset.range (n + 1), f1 j) + (n + 1 : ℤ))

end

end A164944.P3537806471134950727

/-!
# A164948: Fibonacci matrix read by antidiagonals. (Inverse of A136158.)

The programs for A164948, the canonical program `A164948.P9283544943740108968` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164948 has offset 0).

The definition of A164948 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A164948.P9283544943740108968

`3*T(n-1,k)-T(n-1,k-1)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A164948

/-- `3*T(n-1,k)-T(n-1,k-1)` -/
def P9283544943740108968.Spec : Prop :=
  ∀ n, P9283544943740108968.a n = A164948 n

theorem P9283544943740108968.correct : P9283544943740108968.Spec := by
  intro n
  simp only [A164948]

end A164948

/-! ## A164948.P5099957297379803007

`(-1)^col(n)*A136158(C(row(n)+1, 2)+col(n))`
-/

namespace A164948.P5099957297379803007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ SequenceMachineLib.triCol n * A136158 (Nat.choose (SequenceMachineLib.triRow n + 1) 2 + SequenceMachineLib.triCol n)

end

end A164948.P5099957297379803007

namespace A164948

/-- `(-1)^col(n)*A136158(C(row(n)+1, 2)+col(n))` -/
def P5099957297379803007.Spec : Prop :=
  ∀ n, P5099957297379803007.a n = A164948 n

end A164948

/-! ## A164948.P1302952130164924591

`A033999(A002262(n))*A136158(n)`
-/

namespace A164948.P1302952130164924591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A002262 n).toNat * A136158 n

end

end A164948.P1302952130164924591

namespace A164948

/-- `A033999(A002262(n))*A136158(n)` -/
def P1302952130164924591.Spec : Prop :=
  ∀ n, P1302952130164924591.a n = A164948 n

end A164948

/-! ## A164948.P11971882316495494543

`A097807(A061579(n))*A136158(n)`
-/

namespace A164948.P11971882316495494543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 (A061579 n).toNat * A136158 n

end

end A164948.P11971882316495494543

namespace A164948

/-- `A097807(A061579(n))*A136158(n)` -/
def P11971882316495494543.Spec : Prop :=
  ∀ n, P11971882316495494543.a n = A164948 n

end A164948

/-! ## A164948.P14940237895012039245

`A062157(A002260(n+1))*A136158(n)`
-/

namespace A164948.P14940237895012039245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (A002260 (n + 1)).toNat * A136158 n

end

end A164948.P14940237895012039245

namespace A164948

/-- `A062157(A002260(n+1))*A136158(n)` -/
def P14940237895012039245.Spec : Prop :=
  ∀ n, P14940237895012039245.a n = A164948 n

end A164948

/-! ## A164948.P3264058157218099376

`A009531(A158405(n+1))*A136158(n)`
-/

namespace A164948.P3264058157218099376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009531 (A158405 (n + 1)).toNat * A136158 n

end

end A164948.P3264058157218099376

namespace A164948

/-- `A009531(A158405(n+1))*A136158(n)` -/
def P3264058157218099376.Spec : Prop :=
  ∀ n, P3264058157218099376.a n = A164948 n

end A164948

/-! ## A164948.P978759300201790638

`A038207(n)/A065109(n)*A136158(n)`
-/

namespace A164948.P978759300201790638
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038207 n : ℚ) / (A065109 n : ℚ) * (A136158 n : ℚ)

end

end A164948.P978759300201790638

namespace A164948

/-- `A038207(n)/A065109(n)*A136158(n)` -/
def P978759300201790638.Spec : Prop :=
  ∀ n, P978759300201790638.a n = (A164948 n : ℚ)

end A164948

/-! ## A164948.P13016479848548326101

`A009531(A158405(n+1))/A059268(n)*A193731(n)`
-/

namespace A164948.P13016479848548326101
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009531 (A158405 (n + 1)).toNat : ℚ) / (A059268 n : ℚ) * (A193731 n : ℚ)

end

end A164948.P13016479848548326101

namespace A164948

/-- `A009531(A158405(n+1))/A059268(n)*A193731(n)` -/
def P13016479848548326101.Spec : Prop :=
  ∀ n, P13016479848548326101.a n = (A164948 n : ℚ)

end A164948

/-! ## A164948.P9950103407684542745

`A033999(A061885(n))*A136158(n)`
-/

namespace A164948.P9950103407684542745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A061885 n).toNat * A136158 n

end

end A164948.P9950103407684542745

namespace A164948

/-- `A033999(A061885(n))*A136158(n)` -/
def P9950103407684542745.Spec : Prop :=
  ∀ n, P9950103407684542745.a n = A164948 n

end A164948

/-! ## A164948.P10522721980250865249

`A136158(n)*A165591(A059268(n))`
-/

namespace A164948.P10522721980250865249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136158 n * A165591 (A059268 n).toNat

end

end A164948.P10522721980250865249

namespace A164948

/-- `A136158(n)*A165591(A059268(n))` -/
def P10522721980250865249.Spec : Prop :=
  ∀ n, P10522721980250865249.a n = A164948 n

end A164948

/-!
# A164949: Number of different ways to select 4 disjoint subsets from {1..n} with equal element sum.

The programs for A164949, there is no canonical definition to state claims against.
-/

/-! ## A164949.P14144051086906016520

`floor(A319779(n)/(p?[abs(2*n-3)]+1))`
-/

namespace A164949.P14144051086906016520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 * n : ℤ) - 3|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A319779 n : ℚ) / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1 : ℚ)⌋

end

end A164949.P14144051086906016520

/-! ## A164949.P4613554712314335782

`∑[A227370(∑[A239117(n)])]`
-/

namespace A164949.P4613554712314335782
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239117 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227370 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164949.P4613554712314335782

/-! ## A164949.P3286519327703468470

`∑[A312475(n)%A327019(n)]`
-/

namespace A164949.P3286519327703468470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A312475 n) (A327019 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164949.P3286519327703468470

/-! ## A164949.P14990628796584917391

`floor(sqrt(A367411(A367411(2*n))))`
-/

namespace A164949.P14990628796584917391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A367411 (A367411 (2 * n)).toNat)

end

end A164949.P14990628796584917391

/-! ## A164949.P17570081781665823861

`floor(A319721(n)/A282112(n+1))`
-/

namespace A164949.P17570081781665823861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A319721 n : ℚ) / (A282112 (n + 1) : ℚ)⌋

end

end A164949.P17570081781665823861

/-!
# A164952: Primes p with the property: if p/3 is in the interval (p_m, p_(m+1)), where p_m>=3 and p_k is the k-th prime, then the interval (p, 3p_(m+1)) contains a prime.

The programs for A164952, there is no canonical definition to state claims against.
-/

/-! ## A164952.P15813707550929341735

`A057427(A000070(n))*A064989(A164958(n+2))`
-/

namespace A164952.P15813707550929341735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A000070 n).toNat * A064989 (A164958 (n + 2)).toNat

end

end A164952.P15813707550929341735

/-! ## A164952.P6051665323538309696

`A064989(A164958(n+2))*A113061(A002496(n+1))`
-/

namespace A164952.P6051665323538309696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A164958 (n + 2)).toNat * A113061 (A002496 (n + 1)).toNat

end

end A164952.P6051665323538309696

/-! ## A164952.P6225168973332582514

`A057427(A143861(n+1))*A064989(A164958(n+2))`
-/

namespace A164952.P6225168973332582514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A143861 (n + 1)).toNat * A064989 (A164958 (n + 2)).toNat

end

end A164952.P6225168973332582514

/-! ## A164952.P14182737266739705526

`A139637(A164958(n+2))`
-/

namespace A164952.P14182737266739705526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139637 (A164958 (n + 2)).toNat

end

end A164952.P14182737266739705526

/-! ## A164952.P6712107850185364986

`A229609(∑[n+1])`
-/

namespace A164952.P6712107850185364986
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229609 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A164952.P6712107850185364986

/-!
# A164953: Square array read by antidiagonals: a(m,n) = the number of different multisets (in respect to the value of the digits) of lengths of runs in the binary representations of positive integers that contain exactly m 0's and n 1's in binary. (The leftmost digit must be 1 in each binary number.)

The programs for A164953, there is no canonical definition to state claims against.
-/

/-! ## A164953.P716386550796111880

`A117707(A168561(n)+A026681(n+1))`
-/

namespace A164953.P716386550796111880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117707 (A168561 n + A026681 (n + 1)).toNat

end

end A164953.P716386550796111880

/-! ## A164953.P12350831711479668499

`A163352(A168561(n)+A026681(n+1))`
-/

namespace A164953.P12350831711479668499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163352 (A168561 n + A026681 (n + 1)).toNat

end

end A164953.P12350831711479668499

/-! ## A164953.P12910161008012774763

`A274011(floor(A141611(n)/A274701(n+1)))`
-/

namespace A164953.P12910161008012774763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274011 ⌊(A141611 n : ℚ) / (A274701 (n + 1) : ℚ)⌋.toNat

end

end A164953.P12910161008012774763

/-! ## A164953.P11209997844409857176

`A005811(or(A040001(n), A155971(n)))`
-/

namespace A164953.P11209997844409857176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (Int.lor (A040001 n) (A155971 n)).toNat

end

end A164953.P11209997844409857176

/-! ## A164953.P7344701589785759532

`A245908(A249026(n+1))`
-/

namespace A164953.P7344701589785759532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245908 (A249026 (n + 1)).toNat

end

end A164953.P7344701589785759532

/-!
# A164955: Sequence obtained from Fibonacci numbers by taking the factorials of each digit and summing.

The programs for A164955, the canonical program `A164955.P8784047705212146680` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164955 has offset 0).

The definition of A164955 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061602, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A164955.P8784047705212146680

`A061602(A000045(n))`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A164955

/-- `A061602(A000045(n))` -/
def P8784047705212146680.Spec : Prop :=
  ∀ n, P8784047705212146680.a n = A164955 n

theorem P8784047705212146680.correct : P8784047705212146680.Spec := by
  intro n
  simp only [A164955]

end A164955

/-! ## A164955.P1705877906821114850

`∑{digits}[A000045(n), A000142(#)]`
-/

namespace A164955.P1705877906821114850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A000142 x).sum

end

end A164955.P1705877906821114850

namespace A164955

/-- `∑{digits}[A000045(n), A000142(#)]` -/
def P1705877906821114850.Spec : Prop :=
  ∀ n, P1705877906821114850.a n = A164955 n

end A164955

/-! ## A164955.P11618292446395462924

`∑{digits}[A000045(n), A033647(#)]`
-/

namespace A164955.P11618292446395462924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A033647 x).sum

end

end A164955.P11618292446395462924

namespace A164955

/-- `∑{digits}[A000045(n), A033647(#)]` -/
def P11618292446395462924.Spec : Prop :=
  ∀ n, P11618292446395462924.a n = A164955 n

end A164955

/-! ## A164955.P9831631149970780389

`∑{digits}[A001611(n)-1, A000142(#)]`
-/

namespace A164955.P9831631149970780389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A000142 x).sum

end

end A164955.P9831631149970780389

namespace A164955

/-- `∑{digits}[A001611(n)-1, A000142(#)]` -/
def P9831631149970780389.Spec : Prop :=
  ∀ n, P9831631149970780389.a n = A164955 n

end A164955

/-! ## A164955.P6786069610261624134

`∑{digits}[A103609(2*n), A000142(#)]`
-/

namespace A164955.P6786069610261624134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A000142 x).sum

end

end A164955.P6786069610261624134

namespace A164955

/-- `∑{digits}[A103609(2*n), A000142(#)]` -/
def P6786069610261624134.Spec : Prop :=
  ∀ n, P6786069610261624134.a n = A164955 n

end A164955

/-! ## A164955.P4384945194518911321

`∑{digits}[round(ϕ^n/sqrt(5)), #!]`
-/

namespace A164955.P4384945194518911321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.goldenRatio ^ n / Real.sqrt (5 : ℝ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => Nat.factorial x).sum

end

end A164955.P4384945194518911321

namespace A164955

/-- `∑{digits}[round(ϕ^n/sqrt(5)), #!]` -/
def P4384945194518911321.Spec : Prop :=
  ∀ n, (P4384945194518911321.a n : ℤ) = A164955 n

end A164955

/-!
# A164957: Number of reduced words of length n in Coxeter group on 23 generators S_i with relations (S_i)^2 = (S_i S_j)^8 = I.

The programs for A164957, there is no canonical definition to state claims against.
-/

/-! ## A164957.P17111501808705478647

`A165365(A061219(n+1))-Δ[A165939(n)]`
-/

namespace A164957.P17111501808705478647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165939 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165365 (A061219 (n + 1)).toNat - (f1 (n + 1) - f1 n)

end

end A164957.P17111501808705478647

/-! ## A164957.P16680227162894385361

`A165365(A061219(n+1))-Δ[A166417(n)]`
-/

namespace A164957.P16680227162894385361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166417 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165365 (A061219 (n + 1)).toNat - (f1 (n + 1) - f1 n)

end

end A164957.P16680227162894385361

/-! ## A164957.P13212087069099658819

`A165365(A061219(n+1))-Δ[A166610(n)]`
-/

namespace A164957.P13212087069099658819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166610 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165365 (A061219 (n + 1)).toNat - (f1 (n + 1) - f1 n)

end

end A164957.P13212087069099658819

/-!
# A164958: Primes p with the property that if p/3 is in the interval (p_m, p_(m+1)), where p_m>=3 and p_k is the k-th prime, then the interval (3p_m, p) contains a prime.

The programs for A164958, there is no canonical definition to state claims against.
-/

/-! ## A164958.P4773065733211354166

`A169647(record[A073642(n)+A011653(n)])`
-/

namespace A164958.P4773065733211354166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073642 n + A011653 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169647 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A164958.P4773065733211354166

/-! ## A164958.P8847719429829188773

`p?[A067434(A053146(n+1))-n]`
-/

namespace A164958.P8847719429829188773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067434 (A053146 (n + 1)).toNat - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A164958.P8847719429829188773

/-! ## A164958.P15259977656466900619

`or(A242752(n+1), A354578(A242752(n+1)))`
-/

namespace A164958.P15259977656466900619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A242752 (n + 1)) (A354578 (A242752 (n + 1)).toNat)

end

end A164958.P15259977656466900619

/-! ## A164958.P2026997833821548550

`A229610(∑[n+1])`
-/

namespace A164958.P2026997833821548550
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229610 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A164958.P2026997833821548550

/-!
# A164960: The minimum number of steps needed to generate prime(n) under the map x -> A060264(x) starting from any x taken from {2,3} or from A164333.

The programs for A164960, there is no canonical definition to state claims against.
-/

/-! ## A164960.P2940146223078032999

`val(A196871(A187829(n+1)), 4)`
-/

namespace A164960.P2940146223078032999
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A196871 (A187829 (n + 1)).toNat).toNat 4

end

end A164960.P2940146223078032999

/-! ## A164960.P8196772670485126601

`A098862(A134478(n)%A122853(n+1))`
-/

namespace A164960.P8196772670485126601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098862 (Int.tmod (A134478 n) (A122853 (n + 1))).toNat

end

end A164960.P8196772670485126601

/-! ## A164960.P3193888836527470677

`val(A196871(n+1), A010685(A088460(n+1)))`
-/

namespace A164960.P3193888836527470677
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A196871 (n + 1)).toNat (A010685 (A088460 (n + 1)).toNat).toNat

end

end A164960.P3193888836527470677

/-! ## A164960.P5899240903321368719

`A117054(A363537(n+2))`
-/

namespace A164960.P5899240903321368719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117054 (A363537 (n + 2)).toNat

end

end A164960.P5899240903321368719

/-! ## A164960.P13276269007601526943

`A008621(n)%A020639(A041675(n))`
-/

namespace A164960.P13276269007601526943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008621 n) (A020639 (A041675 n).toNat)

end

end A164960.P13276269007601526943

/-!
# A164961: Triangle read by rows: T[n,m] = quadruple factorials A001813(n) * binomials A007318(n,m).

The programs for A164961, the canonical program `A164961.P12747798575645572372` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164961 has offset 0).

The definition of A164961 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A164961.P12747798575645572372

`A085881(C(row(n)+1, 2)+col(n))*2^row(n)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A164961

/-- `A085881(C(row(n)+1, 2)+col(n))*2^row(n)` -/
def P12747798575645572372.Spec : Prop :=
  ∀ n, P12747798575645572372.a n = A164961 n

theorem P12747798575645572372.correct : P12747798575645572372.Spec := by
  intro n
  simp only [A164961]

end A164961

/-! ## A164961.P4497267019751762295

`2*(T(n-1,k-1)+T(n-1,k))*(2*row(n)-1)` with `a(0)=1`
-/

namespace A164961.P4497267019751762295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * (SequenceMachineLib.triUpLeft a n + SequenceMachineLib.triUp a n) * ((2 * SequenceMachineLib.triRow n : ℤ) - 1)

end

end A164961.P4497267019751762295

namespace A164961

/-- `2*(T(n-1,k-1)+T(n-1,k))*(2*row(n)-1)` -/
def P4497267019751762295.Spec : Prop :=
  ∀ n, P4497267019751762295.a n = A164961 n

end A164961

/-! ## A164961.P3054339275361843110

`C(row(n), col(n))*C(2*row(n), row(n))*row(n)!`
-/

namespace A164961.P3054339275361843110
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.triRow n) (SequenceMachineLib.triCol n) * Nat.choose (2 * SequenceMachineLib.triRow n) (SequenceMachineLib.triRow n) * Nat.factorial (SequenceMachineLib.triRow n)

end

end A164961.P3054339275361843110

namespace A164961

/-- `C(row(n), col(n))*C(2*row(n), row(n))*row(n)!` -/
def P3054339275361843110.Spec : Prop :=
  ∀ n, (P3054339275361843110.a n : ℤ) = A164961 n

end A164961

/-! ## A164961.P10128078106840432475

`∑[char[∑[n]]]!*A085880(n)`
-/

namespace A164961.P10128078106840432475
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ) * A085880 n

end

end A164961.P10128078106840432475

namespace A164961

/-- `∑[char[∑[n]]]!*A085880(n)` -/
def P10128078106840432475.Spec : Prop :=
  ∀ n, P10128078106840432475.a n = A164961 n

end A164961

/-! ## A164961.P2232703310125265812

`∑[char[∑[n+1]]]!*A356546(n)`
-/

namespace A164961.P2232703310125265812
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ) * A356546 n

end

end A164961.P2232703310125265812

namespace A164961

/-- `∑[char[∑[n+1]]]!*A356546(n)` -/
def P2232703310125265812.Spec : Prop :=
  ∀ n, P2232703310125265812.a n = A164961 n

end A164961

/-! ## A164961.P10686504544569647302

`∏[char[∑[n+1]]+1]*A085881(n)`
-/

namespace A164961.P10686504544569647302
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A085881 n

end

end A164961.P10686504544569647302

namespace A164961

/-- `∏[char[∑[n+1]]+1]*A085881(n)` -/
def P10686504544569647302.Spec : Prop :=
  ∀ n, P10686504544569647302.a n = A164961 n

end A164961

/-! ## A164961.P13861491251235141139

`A069466(n)*A098361(n)`
-/

namespace A164961.P13861491251235141139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069466 n * A098361 n

end

end A164961.P13861491251235141139

namespace A164961

/-- `A069466(n)*A098361(n)` -/
def P13861491251235141139.Spec : Prop :=
  ∀ n, P13861491251235141139.a n = A164961 n

end A164961

/-! ## A164961.P4218953073032600525

`A085881(n)*A137688(n)`
-/

namespace A164961.P4218953073032600525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085881 n * A137688 n

end

end A164961.P4218953073032600525

namespace A164961

/-- `A085881(n)*A137688(n)` -/
def P4218953073032600525.Spec : Prop :=
  ∀ n, P4218953073032600525.a n = A164961 n

end A164961

/-! ## A164961.P6856132975601110600

`A063007(n)*A357013(n)`
-/

namespace A164961.P6856132975601110600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063007 n * A357013 n

end

end A164961.P6856132975601110600

namespace A164961

/-- `A063007(n)*A357013(n)` -/
def P6856132975601110600.Spec : Prop :=
  ∀ n, P6856132975601110600.a n = A164961 n

end A164961

/-! ## A164961.P4412024061468463799

`lcm(A038208(n), A085881(n))`
-/

namespace A164961.P4412024061468463799
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A038208 n) (A085881 n)

end

end A164961.P4412024061468463799

namespace A164961

/-- `lcm(A038208(n), A085881(n))` -/
def P4412024061468463799.Spec : Prop :=
  ∀ n, (P4412024061468463799.a n : ℤ) = A164961 n

end A164961

/-! ## A164961.P17166799768531711122

`A085880(n)*A130493(n+1)`
-/

namespace A164961.P17166799768531711122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085880 n * A130493 (n + 1)

end

end A164961.P17166799768531711122

namespace A164961

/-- `A085880(n)*A130493(n+1)` -/
def P17166799768531711122.Spec : Prop :=
  ∀ n, P17166799768531711122.a n = A164961 n

end A164961

/-! ## A164961.P720649679665400355

`A156992(n+1)*A168256(n)`
-/

namespace A164961.P720649679665400355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156992 (n + 1) * A168256 n

end

end A164961.P720649679665400355

namespace A164961

/-- `A156992(n+1)*A168256(n)` -/
def P720649679665400355.Spec : Prop :=
  ∀ n, P720649679665400355.a n = A164961 n

end A164961

/-! ## A164961.P5992773854389301123

`A110608(n)*A377660(n)`
-/

namespace A164961.P5992773854389301123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110608 n * A377660 n

end

end A164961.P5992773854389301123

namespace A164961

/-- `A110608(n)*A377660(n)` -/
def P5992773854389301123.Spec : Prop :=
  ∀ n, P5992773854389301123.a n = A164961 n

end A164961

/-! ## A164961.P14609424121345704091

`(2*row(n))!/((row(n)-col(n))!*col(n)!)`
-/

namespace A164961.P14609424121345704091
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (2 * SequenceMachineLib.triRow n) : ℚ) / (Nat.factorial ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ)).toNat * Nat.factorial (SequenceMachineLib.triCol n) : ℚ)

end

end A164961.P14609424121345704091

namespace A164961

/-- `(2*row(n))!/((row(n)-col(n))!*col(n)!)` -/
def P14609424121345704091.Spec : Prop :=
  ∀ n, P14609424121345704091.a n = (A164961 n : ℚ)

end A164961

/-!
# A164965: Cumulative sums of A010892.

The programs for A164965, the canonical program `A164965.P3335458585991084627` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164965 has offset 0).

The definition of A164965 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A164965.P3335458585991084627

`ogf(1/(1-2x+2x^2-x^3))`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A164965

/-- `ogf(1/(1-2x+2x^2-x^3))` -/
def P3335458585991084627.Spec : Prop :=
  ∀ n, P3335458585991084627.a n = A164965 n

theorem P3335458585991084627.correct : P3335458585991084627.Spec := by
  intro n
  simp only [A164965]

end A164965

/-!
# A164968: Naughty primes: primes in which the number of zeros is greater than the number of all other digits.

The programs for A164968, there is no canonical definition to state claims against.
-/

/-! ## A164968.P5103461428731570169

`Δ[A057427(n)*A173029(A028310(n))]`
-/

namespace A164968.P5103461428731570169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A173029 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A164968.P5103461428731570169

/-! ## A164968.P10812138764029760546

`Δ[A173029(A028310(n))*A178334(n)]`
-/

namespace A164968.P10812138764029760546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173029 (A028310 n).toNat * A178334 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A164968.P10812138764029760546

/-! ## A164968.P7583123370659613589

`Δ[A173029(A028310(n))*A211666(n+1)]`
-/

namespace A164968.P7583123370659613589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173029 (A028310 n).toNat * A211666 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A164968.P7583123370659613589

/-! ## A164968.P6369554253753218483

`Δ[A000040(n+1)%2*A173029(A028310(n))]`
-/

namespace A164968.P6369554253753218483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) 2 * A173029 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A164968.P6369554253753218483

/-! ## A164968.P17688559768557171667

`A173029(n+1)-A057427(n)*A173029(A028310(n))`
-/

namespace A164968.P17688559768557171667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173029 (n + 1) - A057427 n * A173029 (A028310 n).toNat

end

end A164968.P17688559768557171667

/-!
# A164971: Theta series of a putative dual-extremal lattice of level 2 and dimension 44.

The programs for A164971, there is no canonical definition to state claims against.
-/

/-! ## A164971.P9965107811773119051

`∏{p}[A034778(2*n+1), #-7]`
-/

namespace A164971.P9965107811773119051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034778 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, ((p : ℤ) - 7)

end

end A164971.P9965107811773119051

/-!
# A164972: Theta series of a dual-extremal lattice of dimension 28 and level 2.

The programs for A164972, there is no canonical definition to state claims against.
-/

/-! ## A164972.P11325769868835487777

`and(3, Δ[n²])*A002520(n)`
-/

namespace A164972.P11325769868835487777
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) * A002520 n

end

end A164972.P11325769868835487777

/-! ## A164972.P12222409271053379191

`A002520(n)*A010684(n)`
-/

namespace A164972.P12222409271053379191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002520 n * A010684 n

end

end A164972.P12222409271053379191

/-! ## A164972.P4933322134856400736

`Δ[A042948(n)]*A002520(n)`
-/

namespace A164972.P4933322134856400736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042948 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A002520 n

end

end A164972.P4933322134856400736

/-! ## A164972.P12610020367576579101

`(2-A033999(n))*A002520(n)`
-/

namespace A164972.P12610020367576579101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A033999 n) * A002520 n

end

end A164972.P12610020367576579101

/-! ## A164972.P4440830883993144171

`A000244(n)%4*A002520(n)`
-/

namespace A164972.P4440830883993144171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000244 n) 4 * A002520 n

end

end A164972.P4440830883993144171

/-!
# A164973: Theta series of a possible dual-extremal lattice of level 2 and dimension 52.

The programs for A164973, there is no canonical definition to state claims against.
-/

/-! ## A164973.P11378662991124180279

`A005893(n)*A290655(A058051(n))`
-/

namespace A164973.P11378662991124180279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005893 n * A290655 (A058051 n).toNat

end

end A164973.P11378662991124180279

/-! ## A164973.P13454765138726392311

`A250120(n)*A339942(A058696(n))`
-/

namespace A164973.P13454765138726392311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n * A339942 (A058696 n).toNat

end

end A164973.P13454765138726392311

/-!
# A164975: Triangle T(n,k) read by rows: T(n,k) = T(n-1,k) + 2*T(n-1,k-1) + T(n-2,k) - T(n-2,k-1), T(n,0) = A000045(n), 0 <= k <= n-1.

The programs for A164975, the canonical program `A164975.P12276792192794280574` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164975 has offset 1).

The definition of A164975 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `T(n-1,k)+2*T(n-1,k-1)+T(n-2,k)-T(n-2,k-1)` (program `A164975.P12276792192794280574`, by `A164975.P12276792192794280574.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A164975.P12276792192794280574

`T(n-1,k)+2*T(n-1,k-1)+T(n-2,k)-T(n-2,k-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A164975

/-- `T(n-1,k)+2*T(n-1,k-1)+T(n-2,k)-T(n-2,k-1)` -/
def P12276792192794280574.Spec : Prop :=
  ∀ n, P12276792192794280574.a n = A164975 (n + 1)

theorem P12276792192794280574.correct : P12276792192794280574.Spec := by
  intro n
  simp only [A164975, Nat.add_sub_cancel]

end A164975

/-! ## A164975.P10787110714698175239

`T(n-1,k-1)+T(n-1,k)+T(n-1,k-1)+T(n-2,k)-T(n-2,k-1)` with `a(0)=1`
-/

namespace A164975.P10787110714698175239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triUpLeft a n + (SequenceMachineLib.triUp a n + SequenceMachineLib.triUpLeft a n + SequenceMachineLib.triUp2 a n - SequenceMachineLib.triUp2Left a n)

end

end A164975.P10787110714698175239

namespace A164975

/-- `T(n-1,k-1)+T(n-1,k)+T(n-1,k-1)+T(n-2,k)-T(n-2,k-1)` -/
def P10787110714698175239.Spec : Prop :=
  ∀ n, P10787110714698175239.a n = A164975 (n + 1)

end A164975

/-! ## A164975.P14264947238635233304

`A209125(n+2)-Δ[A209147(n+1)]`
-/

namespace A164975.P14264947238635233304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209147 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209125 (n + 2) - (f1 (n + 1) - f1 n)

end

end A164975.P14264947238635233304

namespace A164975

/-- `A209125(n+2)-Δ[A209147(n+1)]` -/
def P14264947238635233304.Spec : Prop :=
  ∀ n, P14264947238635233304.a n = A164975 (n + 1)

end A164975

/-! ## A164975.P5855732031996186515

`A209147(n+1)+A209147(n+2)-A207634(n+2)`
-/

namespace A164975.P5855732031996186515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209147 (n + 1) + (A209147 (n + 2) - A207634 (n + 2))

end

end A164975.P5855732031996186515

namespace A164975

/-- `A209147(n+1)+A209147(n+2)-A207634(n+2)` -/
def P5855732031996186515.Spec : Prop :=
  ∀ n, P5855732031996186515.a n = A164975 (n + 1)

end A164975

/-! ## A164975.P1735432533139304114

`A209147(n+1)+A209125(n+2)-A209147(n+2)`
-/

namespace A164975.P1735432533139304114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209147 (n + 1) + (A209125 (n + 2) - A209147 (n + 2))

end

end A164975.P1735432533139304114

namespace A164975

/-- `A209147(n+1)+A209125(n+2)-A209147(n+2)` -/
def P1735432533139304114.Spec : Prop :=
  ∀ n, P1735432533139304114.a n = A164975 (n + 1)

end A164975

/-!
# A164976: Triangle read by rows, expansion of 1/(1-2*y*x-x+x^2-y*x^2).

The programs for A164976, the canonical program `A164976.P17116050421778751765` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164976 has offset 0).

The definition of A164976 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A164976.P17116050421778751765

`2*T(n-1,k-1)-T(n-2,k)+T(n-1,k)+T(n-2,k-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A164976

/-- `2*T(n-1,k-1)-T(n-2,k)+T(n-1,k)+T(n-2,k-1)` -/
def P17116050421778751765.Spec : Prop :=
  ∀ n, P17116050421778751765.a n = A164976 n

theorem P17116050421778751765.correct : P17116050421778751765.Spec := by
  intro n
  simp only [A164976]

end A164976

/-! ## A164976.P17710344645031022334

`T(n-1,k-1)-T(n-2,k)+T(n-1,k-1)+T(n-1,k)+T(n-2,k-1)` with `a(0)=1`
-/

namespace A164976.P17710344645031022334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triUpLeft a n - SequenceMachineLib.triUp2 a n + (SequenceMachineLib.triUpLeft a n + SequenceMachineLib.triUp a n + SequenceMachineLib.triUp2Left a n)

end

end A164976.P17710344645031022334

namespace A164976

/-- `T(n-1,k-1)-T(n-2,k)+T(n-1,k-1)+T(n-1,k)+T(n-2,k-1)` -/
def P17710344645031022334.Spec : Prop :=
  ∀ n, P17710344645031022334.a n = A164976 n

theorem P17710344645031022334.correct : P17710344645031022334.Spec := by
  intro n
  simp only [A164976, Nat.add_sub_cancel, A164976.P17710344645031022334.a, A164976.P17116050421778751765.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A164976

/-!
# A164977: Numbers m such that the set {1..m} has only one nontrivial decomposition into subsets with equal element sum.

The programs for A164977, the canonical program `A164977.P13398499223667780761` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164977 has offset 1).

The definition of A164977 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A164977.P14856453283030777386

`row(A068443(n+1))`
-/

namespace A164977.P14856453283030777386
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triRow (A068443 (n + 1)).toNat

end

end A164977.P14856453283030777386

namespace A164977

/-- `row(A068443(n+1))` -/
def P14856453283030777386.Spec : Prop :=
  ∀ n, (P14856453283030777386.a n : ℤ) = A164977 (n + 1)

end A164977

/-! ## A164977.P13398499223667780761

`∪[A005383(n+1), A077065(n+1)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A164977

/-- `∪[A005383(n+1), A077065(n+1)]` -/
def P13398499223667780761.Spec : Prop :=
  ∀ n, (P13398499223667780761.a n : ℤ) = A164977 (n + 1)

theorem P13398499223667780761.correct : P13398499223667780761.Spec := by
  intro n
  simp only [A164977, Nat.add_sub_cancel]

end A164977

/-! ## A164977.P18124762716294760458

`∪[A077065(n+1), A077068(n+1)-1]`
-/

namespace A164977.P18124762716294760458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077065 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077068 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A164977.P18124762716294760458

namespace A164977

/-- `∪[A077065(n+1), A077068(n+1)-1]` -/
def P18124762716294760458.Spec : Prop :=
  ∀ n, (P18124762716294760458.a n : ℤ) = A164977 (n + 1)

end A164977

/-! ## A164977.P7444465043170917237

`round(sqrt(2*A068443(n+1)))%A104675(n)`
-/

namespace A164977.P7444465043170917237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (2 * A068443 (n + 1) : ℝ))) (A104675 n)

end

end A164977.P7444465043170917237

namespace A164977

/-- `round(sqrt(2*A068443(n+1)))%A104675(n)` -/
def P7444465043170917237.Spec : Prop :=
  ∀ n, P7444465043170917237.a n = A164977 (n + 1)

end A164977

/-! ## A164977.P4877390322090878779

`round(A000038(n+1)+sqrt(2*A068443(n+1)))`
-/

namespace A164977.P4877390322090878779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000038 (n + 1) : ℝ) + Real.sqrt (2 * A068443 (n + 1) : ℝ))

end

end A164977.P4877390322090878779

namespace A164977

/-- `round(A000038(n+1)+sqrt(2*A068443(n+1)))` -/
def P4877390322090878779.Spec : Prop :=
  ∀ n, P4877390322090878779.a n = A164977 (n + 1)

end A164977

/-! ## A164977.P12152524620488690263

`round(A000035(2*n)+sqrt(2*A068443(n+1)))`
-/

namespace A164977.P12152524620488690263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000035 (2 * n) : ℝ) + Real.sqrt (2 * A068443 (n + 1) : ℝ))

end

end A164977.P12152524620488690263

namespace A164977

/-- `round(A000035(2*n)+sqrt(2*A068443(n+1)))` -/
def P12152524620488690263.Spec : Prop :=
  ∀ n, P12152524620488690263.a n = A164977 (n + 1)

end A164977

/-! ## A164977.P9090773989229775786

`round(sqrt(2*A068443(n+1))*A000034(2*n))`
-/

namespace A164977.P9090773989229775786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * A068443 (n + 1) : ℝ) * (A000034 (2 * n) : ℝ))

end

end A164977.P9090773989229775786

namespace A164977

/-- `round(sqrt(2*A068443(n+1))*A000034(2*n))` -/
def P9090773989229775786.Spec : Prop :=
  ∀ n, P9090773989229775786.a n = A164977 (n + 1)

end A164977

/-! ## A164977.P4138723704124818817

`round(sqrt(2*A068443(n+1))*A153284(2*(n+1)))`
-/

namespace A164977.P4138723704124818817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * A068443 (n + 1) : ℝ) * (A153284 (2 * (n + 1)) : ℝ))

end

end A164977.P4138723704124818817

namespace A164977

/-- `round(sqrt(2*A068443(n+1))*A153284(2*(n+1)))` -/
def P4138723704124818817.Spec : Prop :=
  ∀ n, P4138723704124818817.a n = A164977 (n + 1)

end A164977

/-! ## A164977.P3924416474512461600

`A000027(round(sqrt(2*A068443(n+1))))`
-/

namespace A164977.P3924416474512461600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway (Real.sqrt (2 * A068443 (n + 1) : ℝ))).toNat

end

end A164977.P3924416474512461600

namespace A164977

/-- `A000027(round(sqrt(2*A068443(n+1))))` -/
def P3924416474512461600.Spec : Prop :=
  ∀ n, P3924416474512461600.a n = A164977 (n + 1)

end A164977

/-! ## A164977.P6276465907784931742

`∩[A001751(n+2)-1, A001751(n+2)]`
-/

namespace A164977.P6276465907784931742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001751 (n + 2) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001751 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A164977.P6276465907784931742

namespace A164977

/-- `∩[A001751(n+2)-1, A001751(n+2)]` -/
def P6276465907784931742.Spec : Prop :=
  ∀ n, (P6276465907784931742.a n : ℤ) = A164977 (n + 1)

end A164977

/-! ## A164977.P2462249529129659205

`eq[2, A001222(n+1)*A001222(n+2)]+1`
-/

namespace A164977.P2462249529129659205
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) * A001222 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A164977.P2462249529129659205

namespace A164977

/-- `eq[2, A001222(n+1)*A001222(n+2)]+1` -/
def P2462249529129659205.Spec : Prop :=
  ∀ n, (P2462249529129659205.a n : ℤ) = A164977 (n + 1)

end A164977

/-! ## A164977.P746577499023439528

`∩[A215726(n+1), A380101(n+1)]`
-/

namespace A164977.P746577499023439528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215726 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380101 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A164977.P746577499023439528

namespace A164977

/-- `∩[A215726(n+1), A380101(n+1)]` -/
def P746577499023439528.Spec : Prop :=
  ∀ n, (P746577499023439528.a n : ℤ) = A164977 (n + 1)

end A164977

/-! ## A164977.P5286165780450864398

`eq[2, A069904(n+1)]+1`
-/

namespace A164977.P5286165780450864398
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069904 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A164977.P5286165780450864398

namespace A164977

/-- `eq[2, A069904(n+1)]+1` -/
def P5286165780450864398.Spec : Prop :=
  ∀ n, (P5286165780450864398.a n : ℤ) = A164977 (n + 1)

end A164977

/-! ## A164977.P1398986971606865893

`eq[2, A175126(A175126(n))+A001222(n+1)]`
-/

namespace A164977.P1398986971606865893
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175126 (A175126 n).toNat + A001222 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A164977.P1398986971606865893

namespace A164977

/-- `eq[2, A175126(A175126(n))+A001222(n+1)]` -/
def P1398986971606865893.Spec : Prop :=
  ∀ n, (P1398986971606865893.a n : ℤ) = A164977 (n + 1)

end A164977

/-! ## A164977.P12417064836839662703

`eq[2, A069904(A028310(n))]`
-/

namespace A164977.P12417064836839662703
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069904 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A164977.P12417064836839662703

namespace A164977

/-- `eq[2, A069904(A028310(n))]` -/
def P12417064836839662703.Spec : Prop :=
  ∀ n, (P12417064836839662703.a n : ℤ) = A164977 (n + 1)

end A164977

/-! ## A164977.P9752467691983218484

`A020725(eq[2, A069904(n+1)])`
-/

namespace A164977.P9752467691983218484
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069904 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A164977.P9752467691983218484

namespace A164977

/-- `A020725(eq[2, A069904(n+1)])` -/
def P9752467691983218484.Spec : Prop :=
  ∀ n, P9752467691983218484.a n = A164977 (n + 1)

end A164977

/-! ## A164977.P8177387203850286914

`filter[A380101(n+1), A175608(#)]`
-/

namespace A164977.P8177387203850286914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380101 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A175608 (f1 j).toNat = 1) n)

end

end A164977.P8177387203850286914

namespace A164977

/-- `filter[A380101(n+1), A175608(#)]` -/
def P8177387203850286914.Spec : Prop :=
  ∀ n, P8177387203850286914.a n = A164977 (n + 1)

end A164977

/-! ## A164977.P11312171759783460890

`filter[A319450(n+3), A175608(#)]`
-/

namespace A164977.P11312171759783460890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319450 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A175608 (f1 j).toNat = 1) n)

end

end A164977.P11312171759783460890

namespace A164977

/-- `filter[A319450(n+3), A175608(#)]` -/
def P11312171759783460890.Spec : Prop :=
  ∀ n, P11312171759783460890.a n = A164977 (n + 1)

end A164977

/-! ## A164977.P16586877859402403381

`eq[A001651(n+1), A068312(n)]`
-/

namespace A164977.P16586877859402403381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068312 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A164977.P16586877859402403381

namespace A164977

/-- `eq[A001651(n+1), A068312(n)]` -/
def P16586877859402403381.Spec : Prop :=
  ∀ n, (P16586877859402403381.a n : ℤ) = A164977 (n + 1)

end A164977

/-! ## A164977.P18441296535637834248

`eq[A068312(n), A097482(n+1)]`
-/

namespace A164977.P18441296535637834248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068312 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097482 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A164977.P18441296535637834248

namespace A164977

/-- `eq[A068312(n), A097482(n+1)]` -/
def P18441296535637834248.Spec : Prop :=
  ∀ n, (P18441296535637834248.a n : ℤ) = A164977 (n + 1)

end A164977

/-! ## A164977.P9556777992187328963

`eq[2, ∑{e}[∑[n], #]]`
-/

namespace A164977.P9556777992187328963
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A164977.P9556777992187328963

namespace A164977

/-- `eq[2, ∑{e}[∑[n], #]]` -/
def P9556777992187328963.Spec : Prop :=
  ∀ n, (P9556777992187328963.a n : ℤ) = A164977 (n + 1)

end A164977

/-!
# A164978: Number of divisors of n*(n+1)/2 that are >= n.

The programs for A164978, the canonical program `A164978.P13366987902944579037` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164978 has offset 1).

The definition of A164978 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1413 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A164978.P13366987902944579037

`∑{d}[∑[n+1], round(#/(n+1+#))]`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A164978

/-- `∑{d}[∑[n+1], round(#/(n+1+#))]` -/
def P13366987902944579037.Spec : Prop :=
  ∀ n, P13366987902944579037.a n = A164978 (n + 1)

theorem P13366987902944579037.correct : P13366987902944579037.Spec := by
  intro n
  simp only [A164978, Nat.add_sub_cancel]

end A164978

/-! ## A164978.P4501316891185256210

`A334461(∑[n+1])`
-/

namespace A164978.P4501316891185256210
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334461 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A164978.P4501316891185256210

namespace A164978

/-- `A334461(∑[n+1])` -/
def P4501316891185256210.Spec : Prop :=
  ∀ n, P4501316891185256210.a n = A164978 (n + 1)

end A164978

/-! ## A164978.P15538065937052672824

`ceil(A340805(∑[n+1])/2)`
-/

namespace A164978.P15538065937052672824
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A340805 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 2⌉

end

end A164978.P15538065937052672824

namespace A164978

/-- `ceil(A340805(∑[n+1])/2)` -/
def P15538065937052672824.Spec : Prop :=
  ∀ n, P15538065937052672824.a n = A164978 (n + 1)

end A164978

/-! ## A164978.P13668685446025262831

`A334461(∑[n-log2(1/2)])-1-log2(1/2)`
-/

namespace A164978.P13668685446025262831
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A334461 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat - 1 : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ)

end

end A164978.P13668685446025262831

namespace A164978

/-- `A334461(∑[n-log2(1/2)])-1-log2(1/2)` -/
def P13668685446025262831.Spec : Prop :=
  ∀ n, P13668685446025262831.a n = (A164978 (n + 1) : ℝ)

end A164978

/-! ## A164978.P1178412699251739754

`A157271(A340805(∑[n+1]))`
-/

namespace A164978.P1178412699251739754
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (A340805 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A164978.P1178412699251739754

namespace A164978

/-- `A157271(A340805(∑[n+1]))` -/
def P1178412699251739754.Spec : Prop :=
  ∀ n, P1178412699251739754.a n = A164978 (n + 1)

end A164978

/-! ## A164978.P9219113691968046051

`A334461(Δ[A000292(n)])%26`
-/

namespace A164978.P9219113691968046051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A334461 (f1 (n + 1) - f1 n).toNat) 26

end

end A164978.P9219113691968046051

namespace A164978

/-- `A334461(Δ[A000292(n)])%26` -/
def P9219113691968046051.Spec : Prop :=
  ∀ n, P9219113691968046051.a n = A164978 (n + 1)

end A164978

/-! ## A164978.P9448490398324885801

`A334461(A000217(n+1))%23`
-/

namespace A164978.P9448490398324885801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A334461 (A000217 (n + 1)).toNat) 23

end

end A164978.P9448490398324885801

namespace A164978

/-- `A334461(A000217(n+1))%23` -/
def P9448490398324885801.Spec : Prop :=
  ∀ n, P9448490398324885801.a n = A164978 (n + 1)

end A164978

/-! ## A164978.P9304596446103856424

`or(A000007(n), A334461(A000217(n+1)))`
-/

namespace A164978.P9304596446103856424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A334461 (A000217 (n + 1)).toNat)

end

end A164978.P9304596446103856424

namespace A164978

/-- `or(A000007(n), A334461(A000217(n+1)))` -/
def P9304596446103856424.Spec : Prop :=
  ∀ n, P9304596446103856424.a n = A164978 (n + 1)

end A164978

/-! ## A164978.P1666523942626677236

`A033999(n)²*A334461(A000217(n+1))`
-/

namespace A164978.P1666523942626677236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ 2 * A334461 (A000217 (n + 1)).toNat

end

end A164978.P1666523942626677236

namespace A164978

/-- `A033999(n)²*A334461(A000217(n+1))` -/
def P1666523942626677236.Spec : Prop :=
  ∀ n, P1666523942626677236.a n = A164978 (n + 1)

end A164978

/-! ## A164978.P9556129874490754183

`A334461(A000217(n+1))+A000007(n+1)`
-/

namespace A164978.P9556129874490754183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334461 (A000217 (n + 1)).toNat + A000007 (n + 1)

end

end A164978.P9556129874490754183

namespace A164978

/-- `A334461(A000217(n+1))+A000007(n+1)` -/
def P9556129874490754183.Spec : Prop :=
  ∀ n, P9556129874490754183.a n = A164978 (n + 1)

end A164978

/-! ## A164978.P6587599704818855049

`A334461(A000217(n+1))+and(2, A265333(n))`
-/

namespace A164978.P6587599704818855049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334461 (A000217 (n + 1)).toNat + Int.land 2 (A265333 n)

end

end A164978.P6587599704818855049

namespace A164978

/-- `A334461(A000217(n+1))+and(2, A265333(n))` -/
def P6587599704818855049.Spec : Prop :=
  ∀ n, P6587599704818855049.a n = A164978 (n + 1)

end A164978

/-! ## A164978.P12857457917985605329

`A007318(C(2, n))*A334461(A000217(n+1))`
-/

namespace A164978.P12857457917985605329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A334461 (A000217 (n + 1)).toNat

end

end A164978.P12857457917985605329

namespace A164978

/-- `A007318(C(2, n))*A334461(A000217(n+1))` -/
def P12857457917985605329.Spec : Prop :=
  ∀ n, P12857457917985605329.a n = A164978 (n + 1)

end A164978

/-! ## A164978.P14240522981916529716

`ceil(1/A007318(n))*A334461(A000217(n+1))`
-/

namespace A164978.P14240522981916529716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈1 / (A007318 n : ℚ)⌉ * A334461 (A000217 (n + 1)).toNat

end

end A164978.P14240522981916529716

namespace A164978

/-- `ceil(1/A007318(n))*A334461(A000217(n+1))` -/
def P14240522981916529716.Spec : Prop :=
  ∀ n, P14240522981916529716.a n = A164978 (n + 1)

end A164978

/-! ## A164978.P4800148095375998221

`A014963(6*(n+1))*A334461(A000217(n+1))`
-/

namespace A164978.P4800148095375998221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (6 * (n + 1)) * A334461 (A000217 (n + 1)).toNat

end

end A164978.P4800148095375998221

namespace A164978

/-- `A014963(6*(n+1))*A334461(A000217(n+1))` -/
def P4800148095375998221.Spec : Prop :=
  ∀ n, P4800148095375998221.a n = A164978 (n + 1)

end A164978

/-! ## A164978.P10284606078437993717

`A334461(A000217(n+1))+A008683(9*(n+1))`
-/

namespace A164978.P10284606078437993717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334461 (A000217 (n + 1)).toNat + A008683 (9 * (n + 1))

end

end A164978.P10284606078437993717

namespace A164978

/-- `A334461(A000217(n+1))+A008683(9*(n+1))` -/
def P10284606078437993717.Spec : Prop :=
  ∀ n, P10284606078437993717.a n = A164978 (n + 1)

end A164978

/-! ## A164978.P4282324266913071583

`or(1, A288670(n+1))*A334461(A000217(n+1))`
-/

namespace A164978.P4282324266913071583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A288670 (n + 1)) * A334461 (A000217 (n + 1)).toNat

end

end A164978.P4282324266913071583

namespace A164978

/-- `or(1, A288670(n+1))*A334461(A000217(n+1))` -/
def P4282324266913071583.Spec : Prop :=
  ∀ n, P4282324266913071583.a n = A164978 (n + 1)

end A164978

/-! ## A164978.P12799827473147612326

`∑{e}[A154863(n+1), #*A334461(A000217(n+1))]`
-/

namespace A164978.P12799827473147612326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154863 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p : ℤ) * A334461 (A000217 (n + 1)).toNat

end

end A164978.P12799827473147612326

namespace A164978

/-- `∑{e}[A154863(n+1), #*A334461(A000217(n+1))]` -/
def P12799827473147612326.Spec : Prop :=
  ∀ n, P12799827473147612326.a n = A164978 (n + 1)

end A164978

/-! ## A164978.P13207028764181366749

`A001222(A002476(n+1))*A334461(A000217(n+1))`
-/

namespace A164978.P13207028764181366749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A002476 (n + 1)).toNat * A334461 (A000217 (n + 1)).toNat

end

end A164978.P13207028764181366749

namespace A164978

/-- `A001222(A002476(n+1))*A334461(A000217(n+1))` -/
def P13207028764181366749.Spec : Prop :=
  ∀ n, P13207028764181366749.a n = A164978 (n + 1)

end A164978

/-! ## A164978.P13537124064334163324

`A334461(A000217(n+1))*A334461(A334461(n+1))`
-/

namespace A164978.P13537124064334163324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334461 (A000217 (n + 1)).toNat * A334461 (A334461 (n + 1)).toNat

end

end A164978.P13537124064334163324

namespace A164978

/-- `A334461(A000217(n+1))*A334461(A334461(n+1))` -/
def P13537124064334163324.Spec : Prop :=
  ∀ n, P13537124064334163324.a n = A164978 (n + 1)

end A164978

/-!
# A164979: Slowest growing sequence of primes having the semiprime-pairwise property: for any i,j, a(i)+a(j) is semiprime.

The programs for A164979, there is no canonical definition to state claims against.
-/

/-! ## A164979.P174520795617524821

`A114845(n+1)/2`
-/

namespace A164979.P174520795617524821
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A114845 (n + 1) : ℚ) / 2

end

end A164979.P174520795617524821

/-! ## A164979.P3592236822726114987

`(A114845(n+1)*A120402(n+2))%A113875(n+2)`
-/

namespace A164979.P3592236822726114987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A114845 (n + 1) * A120402 (n + 2)) (A113875 (n + 2))

end

end A164979.P3592236822726114987

/-!
# A164980: Number of primes between consecutive terms of A164901.

The programs for A164980, the canonical program `A164980.P4043780184913040080` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164980 has offset 1).

The definition of A164980 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3499 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A164980.P4043780184913040080

`A008624(Δ[A061395(A164901(n+1))])`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A164980

/-- `A008624(Δ[A061395(A164901(n+1))])` -/
def P4043780184913040080.Spec : Prop :=
  ∀ n, P4043780184913040080.a n = A164980 (n + 1)

theorem P4043780184913040080.correct : P4043780184913040080.Spec := by
  intro n
  simp only [A164980, Nat.add_sub_cancel]

end A164980

/-! ## A164980.P18201393928624425012

`A127158(Δ[A055396(A164901(n+1))])`
-/

namespace A164980.P18201393928624425012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A164901 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127158 (f1 (n + 1) - f1 n).toNat

end

end A164980.P18201393928624425012

namespace A164980

/-- `A127158(Δ[A055396(A164901(n+1))])` -/
def P18201393928624425012.Spec : Prop :=
  ∀ n, P18201393928624425012.a n = A164980 (n + 1)

end A164980

/-! ## A164980.P6573286048695973064

`A153639(Δ[A055396(A164901(n+1))])`
-/

namespace A164980.P6573286048695973064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A164901 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153639 (f1 (n + 1) - f1 n).toNat

end

end A164980.P6573286048695973064

namespace A164980

/-- `A153639(Δ[A055396(A164901(n+1))])` -/
def P6573286048695973064.Spec : Prop :=
  ∀ n, P6573286048695973064.a n = A164980 (n + 1)

end A164980

/-! ## A164980.P12325905348415116789

`A307039(A029306(n))%A135373(n)`
-/

namespace A164980.P12325905348415116789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A307039 (A029306 n).toNat) (A135373 n)

end

end A164980.P12325905348415116789

namespace A164980

/-- `A307039(A029306(n))%A135373(n)` -/
def P12325905348415116789.Spec : Prop :=
  ∀ n, P12325905348415116789.a n = A164980 (n + 1)

end A164980

/-! ## A164980.P3891231827049371851

`A059841(A103354(n+1)*A245612(n))`
-/

namespace A164980.P3891231827049371851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A103354 (n + 1) * A245612 n).toNat

end

end A164980.P3891231827049371851

namespace A164980

/-- `A059841(A103354(n+1)*A245612(n))` -/
def P3891231827049371851.Spec : Prop :=
  ∀ n, P3891231827049371851.a n = A164980 (n + 1)

end A164980

/-!
# A164981: A triangle with Pell numbers in the first column.

The programs for A164981, the canonical program `A164981.P5687619475050024583` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164981 has offset 1).

The definition of A164981 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A164981.P5687619475050024583

`2*T(n-1,k)+T(n-1,k-1)+T(n-2,k)-T(n-2,k-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A164981

/-- `2*T(n-1,k)+T(n-1,k-1)+T(n-2,k)-T(n-2,k-1)` -/
def P5687619475050024583.Spec : Prop :=
  ∀ n, P5687619475050024583.a n = A164981 (n + 1)

theorem P5687619475050024583.correct : P5687619475050024583.Spec := by
  intro n
  simp only [A164981, Nat.add_sub_cancel]

end A164981

/-! ## A164981.P4484024570758198880

`T(n-1,k)+T(n-1,k)+T(n-1,k-1)+T(n-2,k)-T(n-2,k-1)` with `a(0)=1`
-/

namespace A164981.P4484024570758198880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triUp a n + (SequenceMachineLib.triUp a n + SequenceMachineLib.triUpLeft a n + SequenceMachineLib.triUp2 a n - SequenceMachineLib.triUp2Left a n)

end

end A164981.P4484024570758198880

namespace A164981

/-- `T(n-1,k)+T(n-1,k)+T(n-1,k-1)+T(n-2,k)-T(n-2,k-1)` -/
def P4484024570758198880.Spec : Prop :=
  ∀ n, P4484024570758198880.a n = A164981 (n + 1)

theorem P4484024570758198880.correct : P4484024570758198880.Spec := by
  intro n
  simp only [A164981, Nat.add_sub_cancel, A164981.P4484024570758198880.a, A164981.P5687619475050024583.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A164981

/-! ## A164981.P15608142791517508971

`A210557(∑[char[∑[n]]]²-n)`
-/

namespace A164981.P15608142791517508971
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210557 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A164981.P15608142791517508971

namespace A164981

/-- `A210557(∑[char[∑[n]]]²-n)` -/
def P15608142791517508971.Spec : Prop :=
  ∀ n, P15608142791517508971.a n = A164981 (n + 1)

end A164981

/-! ## A164981.P5799573583499933260

`A208339(A038722(n+1))-T(n-1,k)` with `a(0)=1`
-/

namespace A164981.P5799573583499933260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A208339 (A038722 (n + 1)).toNat - SequenceMachineLib.triUp a n

end

end A164981.P5799573583499933260

namespace A164981

/-- `A208339(A038722(n+1))-T(n-1,k)` -/
def P5799573583499933260.Spec : Prop :=
  ∀ n, P5799573583499933260.a n = A164981 (n + 1)

end A164981

/-! ## A164981.P2283796850053982562

`A292383(A034444(n+1))+A210557(A038722(n+1))`
-/

namespace A164981.P2283796850053982562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292383 (A034444 (n + 1)).toNat + A210557 (A038722 (n + 1)).toNat

end

end A164981.P2283796850053982562

namespace A164981

/-- `A292383(A034444(n+1))+A210557(A038722(n+1))` -/
def P2283796850053982562.Spec : Prop :=
  ∀ n, P2283796850053982562.a n = A164981 (n + 1)

end A164981

/-! ## A164981.P13283681989713308134

`lcm((-1)^n, A210557(A038722(n+2)+1))`
-/

namespace A164981.P13283681989713308134
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A210557 (A038722 (n + 2) + 1).toNat)

end

end A164981.P13283681989713308134

namespace A164981

/-- `lcm((-1)^n, A210557(A038722(n+2)+1))` -/
def P13283681989713308134.Spec : Prop :=
  ∀ n, (P13283681989713308134.a n : ℤ) = A164981 (n + 1)

end A164981

/-! ## A164981.P4533704007421658143

`A210557(A038722(n+1))%A007283(n)`
-/

namespace A164981.P4533704007421658143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A210557 (A038722 (n + 1)).toNat) (A007283 n)

end

end A164981.P4533704007421658143

namespace A164981

/-- `A210557(A038722(n+1))%A007283(n)` -/
def P4533704007421658143.Spec : Prop :=
  ∀ n, P4533704007421658143.a n = A164981 (n + 1)

end A164981

/-! ## A164981.P3851236629453227045

`A210557(A038722(n+1))+A121373(A007520(n+1))`
-/

namespace A164981.P3851236629453227045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210557 (A038722 (n + 1)).toNat + A121373 (A007520 (n + 1)).toNat

end

end A164981.P3851236629453227045

namespace A164981

/-- `A210557(A038722(n+1))+A121373(A007520(n+1))` -/
def P3851236629453227045.Spec : Prop :=
  ∀ n, P3851236629453227045.a n = A164981 (n + 1)

end A164981

/-! ## A164981.P15164704455101747276

`A105800(A000040(n+1))*A210557(A038722(n+1))`
-/

namespace A164981.P15164704455101747276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105800 (A000040 (n + 1)).toNat * A210557 (A038722 (n + 1)).toNat

end

end A164981.P15164704455101747276

namespace A164981

/-- `A105800(A000040(n+1))*A210557(A038722(n+1))` -/
def P15164704455101747276.Spec : Prop :=
  ∀ n, P15164704455101747276.a n = A164981 (n + 1)

end A164981

/-!
# A164984: Odd (Jacobsthal) triangle.

The programs for A164984, the canonical program `A164984.P13001701114460958198` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164984 has offset 1).

The definition of A164984 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A164984.P13001701114460958198

`T(n-1,k)+T(n-1,k-1)+2*T(n-2,k)+T(n-2,k-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A164984

/-- `T(n-1,k)+T(n-1,k-1)+2*T(n-2,k)+T(n-2,k-1)` -/
def P13001701114460958198.Spec : Prop :=
  ∀ n, (P13001701114460958198.a n : ℤ) = A164984 (n + 1)

theorem P13001701114460958198.correct : P13001701114460958198.Spec := by
  intro n
  simp only [A164984, Nat.add_sub_cancel]

end A164984

/-! ## A164984.P2406249816023555848

`abs(A248810(n))`
-/

namespace A164984.P2406249816023555848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A248810 n|

end

end A164984.P2406249816023555848

namespace A164984

/-- `abs(A248810(n))` -/
def P2406249816023555848.Spec : Prop :=
  ∀ n, P2406249816023555848.a n = A164984 (n + 1)

end A164984

/-! ## A164984.P5164731695086574836

`A038207(n)-T(n-1,k)` with `a(0)=1`
-/

namespace A164984.P5164731695086574836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A038207 n - SequenceMachineLib.triUp a n

end

end A164984.P5164731695086574836

namespace A164984

/-- `A038207(n)-T(n-1,k)` -/
def P5164731695086574836.Spec : Prop :=
  ∀ n, P5164731695086574836.a n = A164984 (n + 1)

end A164984

/-! ## A164984.P638020595155636093

`A097807(n)*A248810(n)`
-/

namespace A164984.P638020595155636093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 n * A248810 n

end

end A164984.P638020595155636093

namespace A164984

/-- `A097807(n)*A248810(n)` -/
def P638020595155636093.Spec : Prop :=
  ∀ n, P638020595155636093.a n = A164984 (n + 1)

end A164984

/-! ## A164984.P13275683422433918948

`gcd(A000038(n), A248810(n))`
-/

namespace A164984.P13275683422433918948
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A248810 n)

end

end A164984.P13275683422433918948

namespace A164984

/-- `gcd(A000038(n), A248810(n))` -/
def P13275683422433918948.Spec : Prop :=
  ∀ n, (P13275683422433918948.a n : ℤ) = A164984 (n + 1)

end A164984

/-! ## A164984.P12023845470638164098

`lcm(A020985(n), A248810(n))`
-/

namespace A164984.P12023845470638164098
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A248810 n)

end

end A164984.P12023845470638164098

namespace A164984

/-- `lcm(A020985(n), A248810(n))` -/
def P12023845470638164098.Spec : Prop :=
  ∀ n, (P12023845470638164098.a n : ℤ) = A164984 (n + 1)

end A164984

/-! ## A164984.P15018571732585609950

`abs(A251634(comp[∑[n]]))`
-/

namespace A164984.P15018571732585609950
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A251634 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)|

end

end A164984.P15018571732585609950

namespace A164984

/-- `abs(A251634(comp[∑[n]]))` -/
def P15018571732585609950.Spec : Prop :=
  ∀ n, P15018571732585609950.a n = A164984 (n + 1)

end A164984

/-! ## A164984.P2616492645418612286

`lcm(-A248810(n), A014963(15*(n+1)))`
-/

namespace A164984.P2616492645418612286
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (-A248810 n) (A014963 (15 * (n + 1)))

end

end A164984.P2616492645418612286

namespace A164984

/-- `lcm(-A248810(n), A014963(15*(n+1)))` -/
def P2616492645418612286.Spec : Prop :=
  ∀ n, (P2616492645418612286.a n : ℤ) = A164984 (n + 1)

end A164984

/-! ## A164984.P4731013524520938111

`∑{d}[A248810(n), A000010(#)]`
-/

namespace A164984.P4731013524520938111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248810 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A164984.P4731013524520938111

namespace A164984

/-- `∑{d}[A248810(n), A000010(#)]` -/
def P4731013524520938111.Spec : Prop :=
  ∀ n, P4731013524520938111.a n = A164984 (n + 1)

end A164984

/-! ## A164984.P7878789302027382923

`∏{d}[A248810(n), A014963(#)]`
-/

namespace A164984.P7878789302027382923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248810 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A014963 d

end

end A164984.P7878789302027382923

namespace A164984

/-- `∏{d}[A248810(n), A014963(#)]` -/
def P7878789302027382923.Spec : Prop :=
  ∀ n, P7878789302027382923.a n = A164984 (n + 1)

end A164984

/-!
# A164985: Denominators of ternary BBP-type series for log(5).

The programs for A164985, the canonical program `A164985.P8862630216365792897` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164985 has offset 0).

The definition of A164985 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 154 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A164985.P8862630216365792897

`record[lcm((n+1)*3^n, and(3, n+1))]`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A164985

/-- `record[lcm((n+1)*3^n, and(3, n+1))]` -/
def P8862630216365792897.Spec : Prop :=
  ∀ n, (P8862630216365792897.a n : ℤ) = A164985 n

theorem P8862630216365792897.correct : P8862630216365792897.Spec := by
  intro n
  simp only [A164985]

end A164985

/-! ## A164985.P14740592025997805687

`record[(n+1)/4^val(n+1, 4)*3^n]`
-/

namespace A164985.P14740592025997805687
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (4 ^ SequenceMachineLib.valuation (n + 1) 4 : ℚ) * (3 ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A164985.P14740592025997805687

namespace A164985

/-- `record[(n+1)/4^val(n+1, 4)*3^n]` -/
def P14740592025997805687.Spec : Prop :=
  ∀ n, P14740592025997805687.a n = (A164985 n : ℚ)

end A164985

/-! ## A164985.P3700784361736593919

`A027471(comp[4*n]+1)`
-/

namespace A164985.P3700784361736593919
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027471 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)

end

end A164985.P3700784361736593919

namespace A164985

/-- `A027471(comp[4*n]+1)` -/
def P3700784361736593919.Spec : Prop :=
  ∀ n, P3700784361736593919.a n = A164985 n

end A164985

/-! ## A164985.P13568800004780530428

`record[3^n*A065883(n+1)]`
-/

namespace A164985.P13568800004780530428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * A065883 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A164985.P13568800004780530428

namespace A164985

/-- `record[3^n*A065883(n+1)]` -/
def P13568800004780530428.Spec : Prop :=
  ∀ n, P13568800004780530428.a n = A164985 n

end A164985

/-! ## A164985.P7167119693798151289

`A211231(A047464(n+1))`
-/

namespace A164985.P7167119693798151289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211231 (A047464 (n + 1)).toNat

end

end A164985.P7167119693798151289

namespace A164985

/-- `A211231(A047464(n+1))` -/
def P7167119693798151289.Spec : Prop :=
  ∀ n, P7167119693798151289.a n = A164985 n

end A164985

/-! ## A164985.P3335287483590817054

`A004396(2*n+1)*A127975(2*n+1)*A127975(2*n)`
-/

namespace A164985.P3335287483590817054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (2 * n + 1) * A127975 (2 * n + 1) * A127975 (2 * n)

end

end A164985.P3335287483590817054

namespace A164985

/-- `A004396(2*n+1)*A127975(2*n+1)*A127975(2*n)` -/
def P3335287483590817054.Spec : Prop :=
  ∀ n, P3335287483590817054.a n = A164985 n

end A164985

/-!
# A164989: Numbers n such that n^6 - n^3 + 1 is prime.

The programs for A164989, there is no canonical definition to state claims against.
-/

/-! ## A164989.P3134060328290180347

`ceil(root(A175170(n+1), 6))`
-/

namespace A164989.P3134060328290180347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A175170 (n + 1) : ℝ) ^ (1 / (6 : ℝ))⌉

end

end A164989.P3134060328290180347

/-! ## A164989.P3786130976321931210

`A000027(round(root(A175170(n+1), 6)))`
-/

namespace A164989.P3786130976321931210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway ((A175170 (n + 1) : ℝ) ^ (1 / (6 : ℝ)))).toNat

end

end A164989.P3786130976321931210

/-! ## A164989.P16342208078812064983

`round(A000007(n+1)+root(A175170(n+1), 6))`
-/

namespace A164989.P16342208078812064983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000007 (n + 1) : ℝ) + (A175170 (n + 1) : ℝ) ^ (1 / (6 : ℝ)))

end

end A164989.P16342208078812064983

/-! ## A164989.P6178290487146983123

`round(root(A175170(n+1), 6))%A004232(n+6)`
-/

namespace A164989.P6178290487146983123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A175170 (n + 1) : ℝ) ^ (1 / (6 : ℝ)))) (A004232 (n + 6))

end

end A164989.P6178290487146983123

/-! ## A164989.P5281571393256868128

`round(root(A175170(n+1), 6))*A014963(12*n+6)`
-/

namespace A164989.P5281571393256868128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A175170 (n + 1) : ℝ) ^ (1 / (6 : ℝ))) * A014963 (12 * n + 6)

end

end A164989.P5281571393256868128

/-! ## A164989.P10631508725199781044

`A028310(round(root(A175170(n+1), 6)))`
-/

namespace A164989.P10631508725199781044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.roundAway ((A175170 (n + 1) : ℝ) ^ (1 / (6 : ℝ)))).toNat

end

end A164989.P10631508725199781044

/-! ## A164989.P13282281294533806665

`A151935(n)!*round(root(A175170(n+1), 6))`
-/

namespace A164989.P13282281294533806665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A151935 n).toNat : ℤ) * SequenceMachineLib.roundAway ((A175170 (n + 1) : ℝ) ^ (1 / (6 : ℝ)))

end

end A164989.P13282281294533806665

/-!
# A164990: Number of square involutions of n.

The programs for A164990, the canonical program `A164990.P7616358503839349732` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164990 has offset 1).

The definition of A164990 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 326 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A164990.P7616358503839349732

`A121285(n)+A100071(n)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A164990

/-- `A121285(n)+A100071(n)` -/
def P7616358503839349732.Spec : Prop :=
  ∀ n, P7616358503839349732.a n = A164990 (n + 1)

theorem P7616358503839349732.correct : P7616358503839349732.Spec := by
  intro n
  simp only [A164990, Nat.add_sub_cancel]

end A164990

/-! ## A164990.P15505064078675803554

`A131352(n)-2*A191386(n)`
-/

namespace A164990.P15505064078675803554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131352 n - 2 * A191386 n

end

end A164990.P15505064078675803554

namespace A164990

/-- `A131352(n)-2*A191386(n)` -/
def P15505064078675803554.Spec : Prop :=
  ∀ n, P15505064078675803554.a n = A164990 (n + 1)

theorem P15505064078675803554.correct : P15505064078675803554.Spec := by
  intro n
  simp only [A164990, Nat.add_sub_cancel, A164990.P15505064078675803554.a, A164990.P7616358503839349732.a, A100071, A100071.P108043524234924627.a, A121285, A121285.P9254393504255520703.a, A131352, A131352.P9148997593822617245.a, A191386, A191386.P5013181058466511668.a, A000034, A000034.P10773112074177680709.a, A004526, A004526.P10084182425416171735.a, A258431, A258431.P10302209761239524539.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A164990

/-! ## A164990.P4067937909318521668

`A045623(n)-A100071(log2(A011782(n)))`
-/

namespace A164990.P4067937909318521668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045623 n - A100071 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat

end

end A164990.P4067937909318521668

namespace A164990

/-- `A045623(n)-A100071(log2(A011782(n)))` -/
def P4067937909318521668.Spec : Prop :=
  ∀ n, P4067937909318521668.a n = A164990 (n + 1)

end A164990

/-! ## A164990.P7786811909233386086

`A045623(n)-A004526(n)*A210736(n)`
-/

namespace A164990.P7786811909233386086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045623 n - A004526 n * A210736 n

end

end A164990.P7786811909233386086

namespace A164990

/-- `A045623(n)-A004526(n)*A210736(n)` -/
def P7786811909233386086.Spec : Prop :=
  ∀ n, P7786811909233386086.a n = A164990 (n + 1)

end A164990

/-! ## A164990.P2125833557634423844

`A131352(n)+2*A191386(n)*A057428(n)`
-/

namespace A164990.P2125833557634423844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131352 n + 2 * A191386 n * A057428 n

end

end A164990.P2125833557634423844

namespace A164990

/-- `A131352(n)+2*A191386(n)*A057428(n)` -/
def P2125833557634423844.Spec : Prop :=
  ∀ n, P2125833557634423844.a n = A164990 (n + 1)

end A164990

/-!
# A164991: Number of triangular involutions of n. A triangular involution is a square involution with at most three faces.

The programs for A164991, the canonical program `A164991.P7991826585228388326` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164991 has offset 1).

The definition of A164991 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A164991.P8863843465060494404

`abs(or(-2^n, A210736(n)))`
-/

namespace A164991.P8863843465060494404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.lor (-(2 ^ n : ℤ)) (A210736 n)|

end

end A164991.P8863843465060494404

namespace A164991

/-- `abs(or(-2^n, A210736(n)))` -/
def P8863843465060494404.Spec : Prop :=
  ∀ n, P8863843465060494404.a n = A164991 (n + 1)

end A164991

/-! ## A164991.P7742716365455977264

`A307768(n)+A210736(n)`
-/

namespace A164991.P7742716365455977264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307768 n + A210736 n

end

end A164991.P7742716365455977264

namespace A164991

/-- `A307768(n)+A210736(n)` -/
def P7742716365455977264.Spec : Prop :=
  ∀ n, P7742716365455977264.a n = A164991 (n + 1)

end A164991

/-! ## A164991.P12983157984835347014

`abs(A155559(n)-A210736(n))`
-/

namespace A164991.P12983157984835347014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A155559 n - A210736 n|

end

end A164991.P12983157984835347014

namespace A164991

/-- `abs(A155559(n)-A210736(n))` -/
def P12983157984835347014.Spec : Prop :=
  ∀ n, P12983157984835347014.a n = A164991 (n + 1)

end A164991

/-! ## A164991.P4038547004951159605

`and(-A210736(n), A255047(n))`
-/

namespace A164991.P4038547004951159605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A210736 n) (A255047 n)

end

end A164991.P4038547004951159605

namespace A164991

/-- `and(-A210736(n), A255047(n))` -/
def P4038547004951159605.Spec : Prop :=
  ∀ n, P4038547004951159605.a n = A164991 (n + 1)

end A164991

/-! ## A164991.P16337835609897477808

`2*A011782(n)-A210736(n)`
-/

namespace A164991.P16337835609897477808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A011782 n - A210736 n

end

end A164991.P16337835609897477808

namespace A164991

/-- `2*A011782(n)-A210736(n)` -/
def P16337835609897477808.Spec : Prop :=
  ∀ n, P16337835609897477808.a n = A164991 (n + 1)

end A164991

/-! ## A164991.P1799365016201881962

`A011782(n)+A307768(n)/2`
-/

namespace A164991.P1799365016201881962
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011782 n : ℚ) + (A307768 n : ℚ) / 2

end

end A164991.P1799365016201881962

namespace A164991

/-- `A011782(n)+A307768(n)/2` -/
def P1799365016201881962.Spec : Prop :=
  ∀ n, P1799365016201881962.a n = (A164991 (n + 1) : ℚ)

end A164991

/-! ## A164991.P7991826585228388326

`ceil(A000079(n)-A063886(n)/2)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A164991

/-- `ceil(A000079(n)-A063886(n)/2)` -/
def P7991826585228388326.Spec : Prop :=
  ∀ n, P7991826585228388326.a n = A164991 (n + 1)

theorem P7991826585228388326.correct : P7991826585228388326.Spec := by
  intro n
  simp only [A164991, Nat.add_sub_cancel]

end A164991

/-! ## A164991.P16491159929408036582

`2*Δ[A131577(n)]-A210736(n)`
-/

namespace A164991.P16491159929408036582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (n + 1) - f1 n) - A210736 n

end

end A164991.P16491159929408036582

namespace A164991

/-- `2*Δ[A131577(n)]-A210736(n)` -/
def P16491159929408036582.Spec : Prop :=
  ∀ n, P16491159929408036582.a n = A164991 (n + 1)

end A164991

/-! ## A164991.P2297290532165899612

`2^n+A000007(n)-A210736(n)`
-/

namespace A164991.P2297290532165899612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) + (A000007 n - A210736 n)

end

end A164991.P2297290532165899612

namespace A164991

/-- `2^n+A000007(n)-A210736(n)` -/
def P2297290532165899612.Spec : Prop :=
  ∀ n, P2297290532165899612.a n = A164991 (n + 1)

end A164991

/-! ## A164991.P13521420044311438720

`ceil(A034008(n+2)-A063886(n)/2)`
-/

namespace A164991.P13521420044311438720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A034008 (n + 2) : ℚ) - (A063886 n : ℚ) / 2⌉

end

end A164991.P13521420044311438720

namespace A164991

/-- `ceil(A034008(n+2)-A063886(n)/2)` -/
def P13521420044311438720.Spec : Prop :=
  ∀ n, P13521420044311438720.a n = A164991 (n + 1)

end A164991

/-! ## A164991.P3878482707159831296

`2*a(n-1)-A210628(log2(A011782(n)))` with `a(0)=1`
-/

namespace A164991.P3878482707159831296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) - A210628 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat

end

end A164991.P3878482707159831296

namespace A164991

/-- `2*a(n-1)-A210628(log2(A011782(n)))` -/
def P3878482707159831296.Spec : Prop :=
  ∀ n, P3878482707159831296.a n = A164991 (n + 1)

end A164991

/-! ## A164991.P13399479027023042557

`A045621(log2(A011782(n)))+A011782(n)`
-/

namespace A164991.P13399479027023042557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045621 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat + A011782 n

end

end A164991.P13399479027023042557

namespace A164991

/-- `A045621(log2(A011782(n)))+A011782(n)` -/
def P13399479027023042557.Spec : Prop :=
  ∀ n, P13399479027023042557.a n = A164991 (n + 1)

end A164991

/-! ## A164991.P11033795407071338809

`Δ[A083318(n)]-A210736(n)`
-/

namespace A164991.P11033795407071338809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A210736 n

end

end A164991.P11033795407071338809

namespace A164991

/-- `Δ[A083318(n)]-A210736(n)` -/
def P11033795407071338809.Spec : Prop :=
  ∀ n, P11033795407071338809.a n = A164991 (n + 1)

end A164991

/-! ## A164991.P12486787557399404797

`A001405(n)+A340567(n)-A340568(n)`
-/

namespace A164991.P12486787557399404797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 n + (A340567 n - A340568 n)

end

end A164991.P12486787557399404797

namespace A164991

/-- `A001405(n)+A340567(n)-A340568(n)` -/
def P12486787557399404797.Spec : Prop :=
  ∀ n, P12486787557399404797.a n = A164991 (n + 1)

end A164991

/-! ## A164991.P5866205588737082469

`A210736(n+1)+A340567(n)-A340568(n)`
-/

namespace A164991.P5866205588737082469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210736 (n + 1) + (A340567 n - A340568 n)

end

end A164991.P5866205588737082469

namespace A164991

/-- `A210736(n+1)+A340567(n)-A340568(n)` -/
def P5866205588737082469.Spec : Prop :=
  ∀ n, P5866205588737082469.a n = A164991 (n + 1)

end A164991

/-! ## A164991.P7173316448710279430

`A307768(n)+A007318(A007590(n))`
-/

namespace A164991.P7173316448710279430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307768 n + A007318 (A007590 n).toNat

end

end A164991.P7173316448710279430

namespace A164991

/-- `A307768(n)+A007318(A007590(n))` -/
def P7173316448710279430.Spec : Prop :=
  ∀ n, P7173316448710279430.a n = A164991 (n + 1)

end A164991

/-! ## A164991.P5242080912201655012

`2*A011782(n)-A007318(A007590(n))`
-/

namespace A164991.P5242080912201655012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A011782 n - A007318 (A007590 n).toNat

end

end A164991.P5242080912201655012

namespace A164991

/-- `2*A011782(n)-A007318(A007590(n))` -/
def P5242080912201655012.Spec : Prop :=
  ∀ n, P5242080912201655012.a n = A164991 (n + 1)

end A164991

/-! ## A164991.P14795044458753334585

`A131577(n+1)-A097805(∑[or(1, n)])`
-/

namespace A164991.P14795044458753334585
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 (n + 1) - A097805 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A164991.P14795044458753334585

namespace A164991

/-- `A131577(n+1)-A097805(∑[or(1, n)])` -/
def P14795044458753334585.Spec : Prop :=
  ∀ n, P14795044458753334585.a n = A164991 (n + 1)

end A164991

/-! ## A164991.P5959352292305392843

`A137688(A000124(n))-A210736(n)`
-/

namespace A164991.P5959352292305392843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137688 (A000124 n).toNat - A210736 n

end

end A164991.P5959352292305392843

namespace A164991

/-- `A137688(A000124(n))-A210736(n)` -/
def P5959352292305392843.Spec : Prop :=
  ∀ n, P5959352292305392843.a n = A164991 (n + 1)

end A164991

/-!
# A164993: a(n) = image of n under the base-3 Kaprekar map n -> (n with digits sorted into descending order) - (n with digits sorted into ascending order).

The programs for A164993, there is no canonical definition to state claims against.
-/

/-! ## A164993.P5871645063671062904

`A055947(A319651(n))`
-/

namespace A164993.P5871645063671062904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055947 (A319651 n).toNat

end

end A164993.P5871645063671062904

/-! ## A164993.P4597414252653274681

`A319651(n)-A038574(n)`
-/

namespace A164993.P4597414252653274681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319651 n - A038574 n

end

end A164993.P4597414252653274681

/-! ## A164993.P14005043803225020426

`A319803(n)-2*A038574(n)`
-/

namespace A164993.P14005043803225020426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319803 n - 2 * A038574 n

end

end A164993.P14005043803225020426

/-! ## A164993.P17104338718944099614

`2*A319651(n)-A319803(n)`
-/

namespace A164993.P17104338718944099614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A319651 n - A319803 n

end

end A164993.P17104338718944099614

/-! ## A164993.P10308299004183386607

`2*A164994(n)`
-/

namespace A164993.P10308299004183386607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A164994 n

end

end A164993.P10308299004183386607

/-! ## A164993.P4732050700314008054

`A005843(A164994(n))`
-/

namespace A164993.P4732050700314008054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A164994 n).toNat

end

end A164993.P4732050700314008054

/-!
# A164994: a(n) = A164993(n)/2.

The programs for A164994, there is no canonical definition to state claims against.
-/

/-! ## A164994.P16610450820448888054

`A164993(n)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A164994.P16610450820448888054
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A164993 n : ℚ) / 2

end

end A164994.P16610450820448888054

/-! ## A164994.P3148581802525331255

`A001281(A164993(n))`
-/

namespace A164994.P3148581802525331255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A164993 n).toNat

end

end A164994.P3148581802525331255

/-! ## A164994.P4867988504742393708

`A004526(A164993(n)+1)`
-/

namespace A164994.P4867988504742393708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A164993 n + 1).toNat

end

end A164994.P4867988504742393708

/-! ## A164994.P4257781555671161680

`A057979(A164993(n)+1)`
-/

namespace A164994.P4257781555671161680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A164993 n + 1).toNat

end

end A164994.P4257781555671161680

/-! ## A164994.P5404179623616742871

`A123108(A164993(n)+1)`
-/

namespace A164994.P5404179623616742871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A164993 n + 1).toNat

end

end A164994.P5404179623616742871

/-! ## A164994.P15333604673715599656

`A002265(2*A164993(n))`
-/

namespace A164994.P15333604673715599656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * A164993 n).toNat

end

end A164994.P15333604673715599656

/-! ## A164994.P12706230290278328457

`A055947(A319651(n))/2`
-/

namespace A164994.P12706230290278328457
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055947 (A319651 n).toNat : ℚ) / 2

end

end A164994.P12706230290278328457

/-! ## A164994.P14341950069097235268

`A064680(lcm(2, A164993(n)))`
-/

namespace A164994.P14341950069097235268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064680 (Int.lcm 2 (A164993 n))

end

end A164994.P14341950069097235268

/-! ## A164994.P4436024348345115812

`A064680(A164993(n)+2)-1`
-/

namespace A164994.P4436024348345115812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064680 (A164993 n + 2).toNat - 1

end

end A164994.P4436024348345115812

/-! ## A164994.P8218861237996701239

`(A319651(n)-A038574(n))/2`
-/

namespace A164994.P8218861237996701239
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A319651 n - A038574 n : ℚ) / 2

end

end A164994.P8218861237996701239

/-! ## A164994.P17146977129280632725

`A319803(n)/2-A038574(n)`
-/

namespace A164994.P17146977129280632725
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A319803 n : ℚ) / 2 - (A038574 n : ℚ)

end

end A164994.P17146977129280632725

/-! ## A164994.P8929928527633819141

`A319651(n)-A319803(n)/2`
-/

namespace A164994.P8929928527633819141
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A319651 n : ℚ) - (A319803 n : ℚ) / 2

end

end A164994.P8929928527633819141

/-! ## A164994.P17915390695023945405

`A004526(A164993(gcd(n, 6*n)))`
-/

namespace A164994.P17915390695023945405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A164993 (Nat.gcd n (6 * n))).toNat

end

end A164994.P17915390695023945405

/-! ## A164994.P2634888924511293576

`A004526(A319651(n)-A038574(n))`
-/

namespace A164994.P2634888924511293576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A319651 n - A038574 n).toNat

end

end A164994.P2634888924511293576

/-! ## A164994.P13792801127217440756

`A064680(A319651(n)-A038574(n))`
-/

namespace A164994.P13792801127217440756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064680 (A319651 n - A038574 n).toNat

end

end A164994.P13792801127217440756

/-! ## A164994.P459348574502214726

`A002265(A164993(n)+A164993(n)+1)`
-/

namespace A164994.P459348574502214726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A164993 n + (A164993 n + 1)).toNat

end

end A164994.P459348574502214726

/-! ## A164994.P1937788576015614250

`A004526(2*A164993(n)-A164993(n))`
-/

namespace A164994.P1937788576015614250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (2 * A164993 n - A164993 n).toNat

end

end A164994.P1937788576015614250

/-! ## A164994.P4195501339513020994

`A002265(2*(A319651(n)-A038574(n)))`
-/

namespace A164994.P4195501339513020994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * (A319651 n - A038574 n)).toNat

end

end A164994.P4195501339513020994

/-! ## A164994.P12942653678263707189

`A064680(2*A164993(n)-A164993(n))`
-/

namespace A164994.P12942653678263707189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064680 (2 * A164993 n - A164993 n).toNat

end

end A164994.P12942653678263707189

/-!
# A164995: Length of preperiodic part of trajectory of n under iteration of the base-3 Kaprekar map in A164993.

The programs for A164995, there is no canonical definition to state claims against.
-/

/-! ## A164995.P9433638898744159549

`A164996(n)-A030597(A016116(n))`
-/

namespace A164995.P9433638898744159549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164996 n - A030597 (A016116 n).toNat

end

end A164995.P9433638898744159549

/-! ## A164995.P2539534082546600420

`A145918(n+1)%A164996(n)`
-/

namespace A164995.P2539534082546600420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A145918 (n + 1)) (A164996 n)

end

end A164995.P2539534082546600420

/-! ## A164995.P7251597431507166624

`A231918(n+1)%A164996(n)`
-/

namespace A164995.P7251597431507166624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A231918 (n + 1)) (A164996 n)

end

end A164995.P7251597431507166624

/-! ## A164995.P8573153960875244043

`A326391(n+1)%A164996(n)`
-/

namespace A164995.P8573153960875244043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A326391 (n + 1)) (A164996 n)

end

end A164995.P8573153960875244043

/-! ## A164995.P16087361804951325089

`A339429(A331910(n+4))%A164996(n)`
-/

namespace A164995.P16087361804951325089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A339429 (A331910 (n + 4)).toNat) (A164996 n)

end

end A164995.P16087361804951325089

/-!
# A164996: (Length of preperiodic part) + (length of cycle) of trajectory of n under iteration of the base-3 Kaprekar map in A164993.

The programs for A164996, there is no canonical definition to state claims against.
-/

/-! ## A164996.P278535297829913995

`A164995(n)+A030597(A016116(n))`
-/

namespace A164996.P278535297829913995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164995 n + A030597 (A016116 n).toNat

end

end A164996.P278535297829913995

/-! ## A164996.P17628765074888598408

`A300826(A178688(n+1))+A164995(n)`
-/

namespace A164996.P17628765074888598408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300826 (A178688 (n + 1)).toNat + A164995 n

end

end A164996.P17628765074888598408

/-! ## A164996.P12805839187922121852

`A164995(n)+A071625(A214617(n+2))`
-/

namespace A164996.P12805839187922121852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164995 n + A071625 (A214617 (n + 2)).toNat

end

end A164996.P12805839187922121852

/-! ## A164996.P13883685569967370466

`A220420(2*n+1)+A164995(n)`
-/

namespace A164996.P13883685569967370466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220420 (2 * n + 1) + A164995 n

end

end A164996.P13883685569967370466

/-! ## A164996.P9444546912290504348

`A164995(n)+A127104(2*n+1)%2`
-/

namespace A164996.P9444546912290504348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164995 n + Int.tmod (A127104 (2 * n + 1)) 2

end

end A164996.P9444546912290504348

/-!
# A164997: Fixed points of the base-3 Kaprekar map A164993.

The programs for A164997, there is no canonical definition to state claims against.
-/

/-! ## A164997.P1439540991475918340

`A165002(eq[1, A165003(1+n)]+1)`
-/

namespace A164997.P1439540991475918340
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165003 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165002 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A164997.P1439540991475918340

/-! ## A164997.P6630677514470328935

`A165002(record[(n+1)/A165003(n+1)])`
-/

namespace A164997.P6630677514470328935
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A165003 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165002 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A164997.P6630677514470328935

/-! ## A164997.P7185603181588762339

`record[(2-A165003(n+1))*A165002(n+1)]`
-/

namespace A164997.P7185603181588762339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A165003 (n + 1)) * A165002 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A164997.P7185603181588762339

/-! ## A164997.P6027791603673114439

`A164998(eq[1, A164999(n+1)]+1)`
-/

namespace A164997.P6027791603673114439
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164999 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164998 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A164997.P6027791603673114439

/-! ## A164997.P17546450573633408838

`A164998(record[(n+1)/A164999(n+1)²])`
-/

namespace A164997.P17546450573633408838
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A164999 (n + 1) ^ 2 : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164998 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A164997.P17546450573633408838

/-! ## A164997.P5101969226840835682

`record[(2-A164999(n+1))*A164998(n+1)]`
-/

namespace A164997.P5101969226840835682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A164999 (n + 1)) * A164998 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A164997.P5101969226840835682

/-!
# A164998: Consider the base-3 Kaprekar map n->K(n) defined in A164993. Sequence gives numbers belonging to cycles, including fixed points.

The programs for A164998, there is no canonical definition to state claims against.
-/

/-! ## A164998.P7991260120833978182

`∪[A164997(n+1), A165000(n+1)]`
-/

namespace A164998.P7991260120833978182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164997 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165000 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A164998.P7991260120833978182

/-! ## A164998.P4580759723270656773

`∪[A165000(n+1), A165002(n+1)]`
-/

namespace A164998.P4580759723270656773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165000 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165002 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A164998.P4580759723270656773

/-! ## A164998.P2367455278161612932

`eq[0, A164995(n)]`
-/

namespace A164998.P2367455278161612932
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164995 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A164998.P2367455278161612932

/-! ## A164998.P16003819272753485000

`eq[A164996(A164993(n)), A164996(n)]`
-/

namespace A164998.P16003819272753485000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164996 (A164993 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164996 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A164998.P16003819272753485000

